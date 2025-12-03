@interface SCROBrailleUIView
+ (id)visibleView;
+ (void)dismissAll;
- (SCROBrailleUIView)initWithIdentifier:(id)identifier;
- (void)dismiss;
@end

@implementation SCROBrailleUIView

+ (id)visibleView
{
  v2 = +[SCROBrailleUIDisplayManager sharedManager];
  visibleView = [v2 visibleView];

  return visibleView;
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

- (SCROBrailleUIView)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = SCROBrailleUIView;
  v6 = [(SCROBrailleUIView *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_identifier, identifier);
  }

  return v7;
}

@end