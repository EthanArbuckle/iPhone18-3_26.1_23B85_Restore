@interface PSIIntArray
- (PSIIntArray)initWithLabel:(id)label database:(sqlite3 *)database;
- (void)_prepareForNumberOfElements:(unint64_t)elements;
- (void)_unprepare;
- (void)bindElements:(__CFArray *)elements range:(_NSRange)range;
- (void)bindElements:(__CFSet *)elements;
- (void)bindElements:(const int64_t *)elements numberOfElements:(unint64_t)ofElements;
- (void)dealloc;
- (void)unbind;
@end

@implementation PSIIntArray

- (void)unbind
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = sqlite3_intarray_bind();
  if (v3)
  {
    v4 = v3;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v5[0] = 67109120;
      v5[1] = v4;
      _os_log_error_impl(&dword_19BF1F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to unbind int array: %d", v5, 8u);
    }
  }

  if (!self->_freeOnUnprepare)
  {
    [(PSIIntArray *)self _unprepare];
  }
}

- (void)bindElements:(const int64_t *)elements numberOfElements:(unint64_t)ofElements
{
  v7 = *MEMORY[0x1E69E9840];
  v4 = sqlite3_intarray_bind();
  if (v4)
  {
    v5 = v4;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v6[0] = 67109120;
      v6[1] = v5;
      _os_log_error_impl(&dword_19BF1F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to bind int array: %d", v6, 8u);
    }
  }
}

- (void)bindElements:(__CFArray *)elements range:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v11 = *MEMORY[0x1E69E9840];
  [(PSIIntArray *)self _prepareForNumberOfElements:range.length];
  v12.location = location;
  v12.length = length;
  CFArrayGetValues(elements, v12, self->_elementBuffer);
  v8 = sqlite3_intarray_bind();
  if (v8)
  {
    v9 = v8;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v10[0] = 67109120;
      v10[1] = v9;
      _os_log_error_impl(&dword_19BF1F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to bind int array: %d", v10, 8u);
    }
  }
}

- (void)bindElements:(__CFSet *)elements
{
  v8 = *MEMORY[0x1E69E9840];
  [(PSIIntArray *)self _prepareForNumberOfElements:CFSetGetCount(elements)];
  CFSetGetValues(elements, self->_elementBuffer);
  v5 = sqlite3_intarray_bind();
  if (v5)
  {
    v6 = v5;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v7[0] = 67109120;
      v7[1] = v6;
      _os_log_error_impl(&dword_19BF1F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to bind int array: %d", v7, 8u);
    }
  }
}

- (void)_unprepare
{
  p_elementBuffer = &self->_elementBuffer;
  elementBuffer = self->_elementBuffer;
  staticElementBuffer = self->_staticElementBuffer;
  if (elementBuffer)
  {
    v6 = elementBuffer == staticElementBuffer;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    free(elementBuffer);
  }

  *p_elementBuffer = 0;
  p_elementBuffer[1] = 0;
  *(p_elementBuffer + 16) = 0;
}

- (void)_prepareForNumberOfElements:(unint64_t)elements
{
  v4 = 8 * elements;
  elementBuffer = self->_elementBuffer;
  if (elementBuffer)
  {
    if (v4 <= self->_elementBufferSize)
    {
      return;
    }

    if (elementBuffer != self->_staticElementBuffer)
    {
      v6 = malloc_type_realloc(elementBuffer, 8 * elements, 0xBF781ADCuLL);
LABEL_7:
      self->_elementBuffer = v6;
      self->_elementBufferSize = v4;
      return;
    }

LABEL_6:
    v6 = malloc_type_malloc(8 * elements, 0x100004000313F17uLL);
    goto LABEL_7;
  }

  if (v4 >= 0x801)
  {
    goto LABEL_6;
  }

  self->_elementBuffer = self->_staticElementBuffer;
  self->_elementBufferSize = 2048;
}

- (void)dealloc
{
  if (self->_elementBuffer)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_19BF1F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Missing call to unbind or unprepare before deallocating int array", buf, 2u);
    }

    [(PSIIntArray *)self unbind];
    [(PSIIntArray *)self unprepare];
  }

  v3.receiver = self;
  v3.super_class = PSIIntArray;
  [(PSIIntArray *)&v3 dealloc];
}

- (PSIIntArray)initWithLabel:(id)label database:(sqlite3 *)database
{
  v13 = *MEMORY[0x1E69E9840];
  labelCopy = label;
  v10.receiver = self;
  v10.super_class = PSIIntArray;
  v6 = [(PSIIntArray *)&v10 init];
  if (v6)
  {
    [labelCopy UTF8String];
    v7 = sqlite3_intarray_create();
    if (v7)
    {
      v8 = v7;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v12 = v8;
        _os_log_error_impl(&dword_19BF1F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to create int array: %d", buf, 8u);
      }

      v6 = 0;
    }
  }

  return v6;
}

@end