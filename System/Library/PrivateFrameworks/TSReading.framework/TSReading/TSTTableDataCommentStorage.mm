@interface TSTTableDataCommentStorage
- (BOOL)isEqual:(id)equal;
- (id)initObjectWithCommentStorage:(id)storage;
- (void)dealloc;
@end

@implementation TSTTableDataCommentStorage

- (id)initObjectWithCommentStorage:(id)storage
{
  v6.receiver = self;
  v6.super_class = TSTTableDataCommentStorage;
  v4 = [(TSTTableDataCommentStorage *)&v6 init];
  if (v4)
  {
    v4->mCommentStorage = storage;
    v4->super.mRefCount = 1;
  }

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    return 1;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  mCommentStorage = self->mCommentStorage;
  v6 = *(equal + 2);

  return [(TSDCommentStorage *)mCommentStorage isEqual:v6];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSTTableDataCommentStorage;
  [(TSTTableDataCommentStorage *)&v3 dealloc];
}

@end