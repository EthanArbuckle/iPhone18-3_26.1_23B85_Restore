@interface GQDBGBodyPlaceholder
- (BOOL)isBlank;
- (void)dealloc;
@end

@implementation GQDBGBodyPlaceholder

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = GQDBGBodyPlaceholder;
  [(GQDBGPlaceholder *)&v3 dealloc];
}

- (BOOL)isBlank
{
  mFrame = self->mFrame;
  if (mFrame)
  {
    return [(GQDWPLayoutFrame *)mFrame isBlank];
  }

  else
  {
    return 1;
  }
}

@end