@interface TSCH3DArray2D
+ (id)array2D;
+ (id)array2DWithSize:(const void *)size;
- (BOOL)hasObjectAtIndex:(const void *)index;
- (TSCH3DArray2D)initWithSize:(const void *)size;
- (id)firstObject;
- (id)objectAtIndex:(const void *)index;
- (void)resize:(const void *)resize;
- (void)setObject:(id)object atIndex:(const void *)index;
@end

@implementation TSCH3DArray2D

+ (id)array2DWithSize:(const void *)size
{
  v4 = [self alloc];
  v9 = objc_msgSend_initWithSize_(v4, v5, v6, v7, v8, size);

  return v9;
}

+ (id)array2D
{
  v7 = 0;
  v5 = objc_msgSend_array2DWithSize_(self, a2, v2, v3, v4, &v7);

  return v5;
}

- (TSCH3DArray2D)initWithSize:(const void *)size
{
  v12.receiver = self;
  v12.super_class = TSCH3DArray2D;
  v4 = [(TSCH3DArray2D *)&v12 init];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    elements = v4->_elements;
    v4->_elements = v5;

    objc_msgSend_resize_(v4, v7, v8, v9, v10, size);
  }

  return v4;
}

- (void)resize:(const void *)resize
{
  objc_msgSend_removeAllObjects(self->_elements, a2, v3, v4, v5);
  v12 = *resize;
  v13 = *(resize + 1) * *resize;
  if (v13 >= 1)
  {
    do
    {
      elements = self->_elements;
      v15 = objc_msgSend_null(MEMORY[0x277CBEB68], v8, v9, v10, v11);
      objc_msgSend_addObject_(elements, v16, v17, v18, v19, v15);

      --v13;
    }

    while (v13);
    v12 = *resize;
  }

  self->_size.var0.var0 = v12;
  self->_size.var1.var0 = *(resize + 1);
}

- (BOOL)hasObjectAtIndex:(const void *)index
{
  v6 = objc_msgSend_objectAtIndex_(self, a2, v3, v4, v5, index);
  v11 = objc_msgSend_null(MEMORY[0x277CBEB68], v7, v8, v9, v10);
  isEqual = objc_msgSend_isEqual_(v6, v12, v13, v14, v15, v11);

  return isEqual ^ 1;
}

- (void)setObject:(id)object atIndex:(const void *)index
{
  objectCopy = object;
  var0 = self->_size.var0.var0;
  v8 = *index;
  v7 = *(index + 1);
  v14 = objc_msgSend_count(self->_elements, v9, v10, v11, v12);
  for (i = v8 + var0 * v7; v14 <= i; ++v14)
  {
    elements = self->_elements;
    v20 = objc_msgSend_null(MEMORY[0x277CBEB68], v13, v15, v16, v17);
    objc_msgSend_addObject_(elements, v21, v22, v23, v24, v20);
  }

  v25 = self->_elements;
  v26 = self->_size.var0.var0;
  v27 = objectCopy;
  indexCopy = index;
  v28 = *index;
  v29 = indexCopy[1];
  if (!objectCopy)
  {
    v27 = objc_msgSend_null(MEMORY[0x277CBEB68], v13, v15, v16, v17);
  }

  objc_msgSend_replaceObjectAtIndex_withObject_(v25, v13, v15, v16, v17, v28 + v26 * v29, v27);
  v31 = objectCopy;
  if (!objectCopy)
  {

    v31 = 0;
  }
}

- (id)objectAtIndex:(const void *)index
{
  v7 = *index + self->_size.var0.var0 * *(index + 1);
  if (objc_msgSend_count(self->_elements, a2, v3, v4, v5) <= v7)
  {
    objc_msgSend_null(MEMORY[0x277CBEB68], v8, v9, v10, v11);
  }

  else
  {
    objc_msgSend_objectAtIndexedSubscript_(self->_elements, v8, v9, v10, v11, v7);
  }
  v12 = ;

  return v12;
}

- (id)firstObject
{
  v7 = 0;
  v5 = objc_msgSend_objectAtIndex_(self, a2, v2, v3, v4, &v7);

  return v5;
}

@end