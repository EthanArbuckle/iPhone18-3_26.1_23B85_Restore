@interface TSCH3DArray2D
+ (id)array2D;
+ (id)array2DWithSize:(const void *)a3;
- (BOOL)hasObjectAtIndex:(const void *)a3;
- (TSCH3DArray2D)initWithSize:(const void *)a3;
- (id)firstObject;
- (id)objectAtIndex:(const void *)a3;
- (void)resize:(const void *)a3;
- (void)setObject:(id)a3 atIndex:(const void *)a4;
@end

@implementation TSCH3DArray2D

+ (id)array2DWithSize:(const void *)a3
{
  v4 = [a1 alloc];
  v9 = objc_msgSend_initWithSize_(v4, v5, v6, v7, v8, a3);

  return v9;
}

+ (id)array2D
{
  v7 = 0;
  v5 = objc_msgSend_array2DWithSize_(a1, a2, v2, v3, v4, &v7);

  return v5;
}

- (TSCH3DArray2D)initWithSize:(const void *)a3
{
  v12.receiver = self;
  v12.super_class = TSCH3DArray2D;
  v4 = [(TSCH3DArray2D *)&v12 init];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    elements = v4->_elements;
    v4->_elements = v5;

    objc_msgSend_resize_(v4, v7, v8, v9, v10, a3);
  }

  return v4;
}

- (void)resize:(const void *)a3
{
  objc_msgSend_removeAllObjects(self->_elements, a2, v3, v4, v5);
  v12 = *a3;
  v13 = *(a3 + 1) * *a3;
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
    v12 = *a3;
  }

  self->_size.var0.var0 = v12;
  self->_size.var1.var0 = *(a3 + 1);
}

- (BOOL)hasObjectAtIndex:(const void *)a3
{
  v6 = objc_msgSend_objectAtIndex_(self, a2, v3, v4, v5, a3);
  v11 = objc_msgSend_null(MEMORY[0x277CBEB68], v7, v8, v9, v10);
  isEqual = objc_msgSend_isEqual_(v6, v12, v13, v14, v15, v11);

  return isEqual ^ 1;
}

- (void)setObject:(id)a3 atIndex:(const void *)a4
{
  v32 = a3;
  var0 = self->_size.var0.var0;
  v8 = *a4;
  v7 = *(a4 + 1);
  v14 = objc_msgSend_count(self->_elements, v9, v10, v11, v12);
  for (i = v8 + var0 * v7; v14 <= i; ++v14)
  {
    elements = self->_elements;
    v20 = objc_msgSend_null(MEMORY[0x277CBEB68], v13, v15, v16, v17);
    objc_msgSend_addObject_(elements, v21, v22, v23, v24, v20);
  }

  v25 = self->_elements;
  v26 = self->_size.var0.var0;
  v27 = v32;
  v30 = a4;
  v28 = *a4;
  v29 = v30[1];
  if (!v32)
  {
    v27 = objc_msgSend_null(MEMORY[0x277CBEB68], v13, v15, v16, v17);
  }

  objc_msgSend_replaceObjectAtIndex_withObject_(v25, v13, v15, v16, v17, v28 + v26 * v29, v27);
  v31 = v32;
  if (!v32)
  {

    v31 = 0;
  }
}

- (id)objectAtIndex:(const void *)a3
{
  v7 = *a3 + self->_size.var0.var0 * *(a3 + 1);
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