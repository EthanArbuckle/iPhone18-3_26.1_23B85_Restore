@interface PREditorSlidingTitleTransition
- (PREditorSlidingTitleTransition)initWithSourceTitleViewController:(id)a3 destinationTitleViewController:(id)a4;
- (void)cleanUp;
@end

@implementation PREditorSlidingTitleTransition

- (PREditorSlidingTitleTransition)initWithSourceTitleViewController:(id)a3 destinationTitleViewController:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = PREditorSlidingTitleTransition;
  v9 = [(PREditorSlidingTitleTransition *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_sourceTitleViewController, a3);
    objc_storeStrong(&v10->_destinationTitleViewController, a4);
    v11 = [v8 view];
    [v11 setHidden:0];

    v12 = [v7 view];
    [v12 setHidden:0];
  }

  return v10;
}

- (void)cleanUp
{
  v9 = [(PREditorSlidingTitleTransition *)self sourceTitleViewController];
  v3 = [(PREditorSlidingTitleTransition *)self destinationTitleViewController];
  v4 = [v9 view];
  v5 = [v4 layer];
  v6 = [(PREditorSlidingTitleTransition *)self animationKey];
  [v5 removeAnimationForKey:v6];

  v7 = [v3 view];
  [v7 setHidden:0];

  if (v9 != v3)
  {
    v8 = [v9 view];
    [v8 setHidden:1];
  }
}

@end