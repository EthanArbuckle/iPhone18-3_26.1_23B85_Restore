@interface GQDBGObjectPlaceholder
- (void)dealloc;
@end

@implementation GQDBGObjectPlaceholder

- (void)dealloc
{
  mContentType = self->mContentType;
  if (mContentType)
  {
    free(mContentType);
  }

  v4.receiver = self;
  v4.super_class = GQDBGObjectPlaceholder;
  [(GQDBGPlaceholder *)&v4 dealloc];
}

@end