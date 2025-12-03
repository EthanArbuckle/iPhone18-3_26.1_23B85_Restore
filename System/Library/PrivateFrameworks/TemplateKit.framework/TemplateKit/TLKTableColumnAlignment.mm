@interface TLKTableColumnAlignment
- (id)description;
- (int64_t)textAlignment;
- (void)setColumnAlignment:(unint64_t)alignment;
- (void)setDataAlignment:(int64_t)alignment;
- (void)setIsEqualWidth:(BOOL)width;
@end

@implementation TLKTableColumnAlignment

- (void)setColumnAlignment:(unint64_t)alignment
{
  if (self->_columnAlignment != alignment)
  {
    self->_columnAlignment = alignment;
    observer = [(TLKObject *)self observer];
    if (observer)
    {
      v5 = observer;
      observer2 = [(TLKObject *)self observer];
      batchUpdateCount = [observer2 batchUpdateCount];

      if (!batchUpdateCount)
      {
        observer3 = [(TLKObject *)self observer];
        [observer3 propertiesDidChange];
      }
    }
  }
}

- (void)setDataAlignment:(int64_t)alignment
{
  if (self->_dataAlignment != alignment)
  {
    self->_dataAlignment = alignment;
    observer = [(TLKObject *)self observer];
    if (observer)
    {
      v5 = observer;
      observer2 = [(TLKObject *)self observer];
      batchUpdateCount = [observer2 batchUpdateCount];

      if (!batchUpdateCount)
      {
        observer3 = [(TLKObject *)self observer];
        [observer3 propertiesDidChange];
      }
    }
  }
}

- (void)setIsEqualWidth:(BOOL)width
{
  if (self->_isEqualWidth != width)
  {
    self->_isEqualWidth = width;
    observer = [(TLKObject *)self observer];
    if (observer)
    {
      v5 = observer;
      observer2 = [(TLKObject *)self observer];
      batchUpdateCount = [observer2 batchUpdateCount];

      if (!batchUpdateCount)
      {
        observer3 = [(TLKObject *)self observer];
        [observer3 propertiesDidChange];
      }
    }
  }
}

- (int64_t)textAlignment
{
  columnAlignment = [(TLKTableColumnAlignment *)self columnAlignment];
  if (columnAlignment == 1)
  {
    return 1;
  }

  else
  {
    return 2 * (columnAlignment == 2);
  }
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v7.receiver = self;
  v7.super_class = TLKTableColumnAlignment;
  v4 = [(TLKTableColumnAlignment *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@ dataAlignment - %d columnAlignment - %d", v4, -[TLKTableColumnAlignment dataAlignment](self, "dataAlignment"), -[TLKTableColumnAlignment columnAlignment](self, "columnAlignment")];

  return v5;
}

@end