@interface TSTStrokeSelection
+ (id)strokeSelectionWithMask:(unsigned int)a3;
- (TSTStrokeSelection)initWithArchive:(const void *)a3 unarchiver:(id)a4;
- (TSTStrokeSelection)initWithStrokeVisibilityMask:(unsigned int)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)saveToArchive:(void *)a3 archiver:(id)a4;
@end

@implementation TSTStrokeSelection

+ (id)strokeSelectionWithMask:(unsigned int)a3
{
  v3 = *&a3;
  v4 = [a1 alloc];
  v8 = objc_msgSend_initWithStrokeVisibilityMask_(v4, v5, v3, v6, v7);

  return v8;
}

- (TSTStrokeSelection)initWithStrokeVisibilityMask:(unsigned int)a3
{
  v5.receiver = self;
  v5.super_class = TSTStrokeSelection;
  result = [(TSTStrokeSelection *)&v5 init];
  if (result)
  {
    result->_mask = a3;
  }

  return result;
}

- (TSTStrokeSelection)initWithArchive:(const void *)a3 unarchiver:(id)a4
{
  v7.receiver = self;
  v7.super_class = TSTStrokeSelection;
  result = [(TSTStrokeSelection *)&v7 init:a3];
  if (result)
  {
    if (*(a3 + 4))
    {
      v6 = (a3 + 24);
    }

    else
    {
      v6 = &unk_2217E0D9C;
    }

    result->_mask = *v6;
  }

  return result;
}

- (void)saveToArchive:(void *)a3 archiver:(id)a4
{
  v6 = objc_msgSend_mask(self, a2, a3, a4, v4);
  *(a3 + 4) |= 1u;
  *(a3 + 6) = v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6 = objc_msgSend_allocWithZone_(TSTStrokeSelection, a2, a3, v3, v4);
  v12 = objc_msgSend_mask(self, v7, v8, v9, v10);

  return objc_msgSend_initWithStrokeVisibilityMask_(v6, v11, v12, v13, v14);
}

@end