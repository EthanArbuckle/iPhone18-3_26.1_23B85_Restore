@interface SBReadOnlyDefaultIconModelStore
- (id)loadCurrentIconState:(id *)state;
- (id)loadDesiredIconState:(id *)state;
@end

@implementation SBReadOnlyDefaultIconModelStore

- (id)loadCurrentIconState:(id *)state
{
  v4 = +[SBDefaultIconModelStore sharedInstance];
  v5 = [v4 loadCurrentIconState:state];

  return v5;
}

- (id)loadDesiredIconState:(id *)state
{
  v4 = +[SBDefaultIconModelStore sharedInstance];
  v5 = [v4 loadDesiredIconState:state];

  return v5;
}

@end