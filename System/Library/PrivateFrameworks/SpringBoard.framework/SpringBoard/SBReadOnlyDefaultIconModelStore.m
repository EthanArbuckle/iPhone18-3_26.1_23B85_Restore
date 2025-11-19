@interface SBReadOnlyDefaultIconModelStore
- (id)loadCurrentIconState:(id *)a3;
- (id)loadDesiredIconState:(id *)a3;
@end

@implementation SBReadOnlyDefaultIconModelStore

- (id)loadCurrentIconState:(id *)a3
{
  v4 = +[SBDefaultIconModelStore sharedInstance];
  v5 = [v4 loadCurrentIconState:a3];

  return v5;
}

- (id)loadDesiredIconState:(id *)a3
{
  v4 = +[SBDefaultIconModelStore sharedInstance];
  v5 = [v4 loadDesiredIconState:a3];

  return v5;
}

@end