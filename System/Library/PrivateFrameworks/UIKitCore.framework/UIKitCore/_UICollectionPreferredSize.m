@interface _UICollectionPreferredSize
+ (double)preferredSizeForOriginalSize:(double)a3 fittingSize:(uint64_t)a4 layoutSize:(void *)a5;
- (double)fittingSize;
- (double)preferredSizeForOriginalSize:(double)a3 layoutSize:(double)a4;
- (id)description;
- (id)initWithOriginalSize:(void *)a3 fittingSize:(double)a4 layoutSize:(double)a5 additionalData:(double)a6;
@end

@implementation _UICollectionPreferredSize

- (double)fittingSize
{
  if (a1)
  {
    return *(a1 + 24);
  }

  else
  {
    return 0.0;
  }
}

+ (double)preferredSizeForOriginalSize:(double)a3 fittingSize:(uint64_t)a4 layoutSize:(void *)a5
{
  objc_opt_self();
  v8 = [a5 widthDimension];
  v9 = [v8 isEstimated];

  if (!v9)
  {
    a3 = a1;
  }

  v10 = [a5 heightDimension];
  [v10 isEstimated];

  return a3;
}

- (id)initWithOriginalSize:(void *)a3 fittingSize:(double)a4 layoutSize:(double)a5 additionalData:(double)a6
{
  if (!a1)
  {
    return 0;
  }

  v16.receiver = a1;
  v16.super_class = _UICollectionPreferredSize;
  v13 = objc_msgSendSuper2(&v16, sel_init);
  v14 = v13;
  if (v13)
  {
    *(v13 + 1) = a4;
    *(v13 + 2) = a5;
    *(v13 + 3) = a6;
    *(v13 + 4) = a7;
    objc_storeStrong(v13 + 5, a2);
    objc_storeStrong(v14 + 7, a3);
    *(v14 + 48) = 0;
  }

  return v14;
}

- (double)preferredSizeForOriginalSize:(double)a3 layoutSize:(double)a4
{
  if (a1)
  {
    return [(_UICollectionPreferredSize *)a3 preferredSizeForOriginalSize:a4 fittingSize:*(a1 + 24) layoutSize:_UICollectionPreferredSize, a2];
  }

  else
  {
    return 0.0;
  }
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = NSStringFromCGSize(self->_originalSize);
  v7 = NSStringFromCGSize(self->_fittingSize);
  v8 = v7;
  if (self->_preferredSizeDirty)
  {
    v9 = @"; DIRTY";
  }

  else
  {
    v9 = &stru_1EFB14550;
  }

  v10 = [v3 stringWithFormat:@"<%@ - %p: original=%@ fitting=%@%@>", v5, self, v6, v7, v9];;

  return v10;
}

@end