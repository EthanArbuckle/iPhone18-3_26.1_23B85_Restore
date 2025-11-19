@interface TSCH3DTransforms
+ (id)transforms;
+ (id)transformsWithSize:(tvec2<int>)a3;
- (id)transformAtIndex:(tvec2<int>)a3;
- (void)setTransform:(id)a3 atIndex:(tvec2<int>)a4;
@end

@implementation TSCH3DTransforms

+ (id)transforms
{
  v2 = objc_alloc_init(a1);

  return v2;
}

+ (id)transformsWithSize:(tvec2<int>)a3
{
  v7 = objc_msgSend_transforms(TSCH3DTransforms, a2, v3, v4, v5);
  v8 = *(*&a3 + 4) * *a3.var0.var0;
  v13 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v9, v10, v11, v12, v8);
  v14 = *(v7 + 8);
  *(v7 + 8) = v13;

  *(v7 + 16) = *a3.var0.var0;
  *(v7 + 20) = *(*&a3 + 4);
  v20 = objc_msgSend_transform(TSCH3DTransform, v15, v16, v17, v18);
  if (v8 >= 1)
  {
    do
    {
      objc_msgSend_addObject_(*(v7 + 8), v19, v21, v22, v23, v20);
      --v8;
    }

    while (v8);
  }

  return v7;
}

- (void)setTransform:(id)a3 atIndex:(tvec2<int>)a4
{
  v6 = a3;
  array = self->_array;
  v16 = **&a4;
  v11 = objc_msgSend_arrayIndex_(self, v8, v16, v9, v10, &v16);
  objc_msgSend_replaceObjectAtIndex_withObject_(array, v12, v13, v14, v15, v11, v6);
}

- (id)transformAtIndex:(tvec2<int>)a3
{
  array = self->_array;
  v13 = **&a3;
  v6 = objc_msgSend_arrayIndex_(self, a2, v13, v3, v4, &v13);
  v11 = objc_msgSend_objectAtIndexedSubscript_(array, v7, v8, v9, v10, v6);

  return v11;
}

@end