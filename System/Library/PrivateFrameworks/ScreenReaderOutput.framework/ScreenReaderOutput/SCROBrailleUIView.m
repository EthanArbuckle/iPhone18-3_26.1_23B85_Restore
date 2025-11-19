@interface SCROBrailleUIView
+ (id)visibleView;
+ (void)dismissAll;
- (SCROBrailleUIView)initWithIdentifier:(id)a3;
- (void)dismiss;
@end

@implementation SCROBrailleUIView

+ (id)visibleView
{
  v2 = +[SCROBrailleUIDisplayManager sharedManager];
  v3 = [v2 visibleView];

  return v3;
}

+ (void)dismissAll
{
  v2 = +[SCROBrailleUIDisplayManager sharedManager];
  [v2 dismissAll];
}

- (void)dismiss
{
  v3 = +[SCROBrailleUIDisplayManager sharedManager];
  [v3 dismissLineForView:self];
}

- (SCROBrailleUIView)initWithIdentifier:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SCROBrailleUIView;
  v6 = [(SCROBrailleUIView *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_identifier, a3);
  }

  return v7;
}

@end