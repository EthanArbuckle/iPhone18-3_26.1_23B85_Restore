@interface _UICollectionViewSubviewRouterBookmark
+ (_UICollectionViewSubviewRouterBookmark)bookmarkForUncontrolledSubview;
- (id)description;
@end

@implementation _UICollectionViewSubviewRouterBookmark

+ (_UICollectionViewSubviewRouterBookmark)bookmarkForUncontrolledSubview
{
  objc_opt_self();
  v0 = objc_alloc_init(_UICollectionViewSubviewRouterBookmark);
  if (v0)
  {
    v0->_count = 1;
    v0->_orderMode = -10000;
  }

  return v0;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  if (!self)
  {
    count = 0;
    goto LABEL_8;
  }

  count = self->_count;
  orderMode = self->_orderMode;
  if ((orderMode & 0x8000000000000000) == 0)
  {
    if (orderMode == 1)
    {
      v7 = @"Above Container";
      goto LABEL_12;
    }

    if (orderMode)
    {
LABEL_9:
      v8 = [MEMORY[0x1E696AAA8] currentHandler];
      v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString * _Nonnull _UICollectionViewSubviewOrderModeToString(_UICollectionViewSubviewOrderMode)"];
      [v8 handleFailureInFunction:v9 file:@"_UICollectionViewSubviewRouter.m" lineNumber:539 description:{@"Unknown order mode: %ld", orderMode}];

      v7 = &stru_1EFB14550;
      goto LABEL_12;
    }

LABEL_8:
    v7 = @"Container";
    goto LABEL_12;
  }

  if (orderMode != -10000)
  {
    if (orderMode == -1)
    {
      v7 = @"Below Container";
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  v7 = @"Uncontrolled";
LABEL_12:
  v10 = [v3 stringWithFormat:@"<%@: %p count = %ld; orderMode = %@;", v4, self, count, v7];;
  if (self)
  {
    if (self->_orderMode == -10000)
    {
      goto LABEL_16;
    }

    zIndex = self->_zIndex;
  }

  else
  {
    zIndex = 0;
  }

  v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@" zIndex = %ld", zIndex];
  v13 = [v10 stringByAppendingString:v12];

  v10 = v13;
LABEL_16:
  v14 = [v10 stringByAppendingString:@">"];

  return v14;
}

@end