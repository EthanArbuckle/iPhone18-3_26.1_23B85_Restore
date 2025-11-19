@interface PREditorLookTransition
- (BOOL)matchesCurrentLook:(id)a3 destinationLook:(id)a4;
- (NSString)description;
- (PREditorLookTransition)initWithCurrentLook:(id)a3 destinationLook:(id)a4;
- (void)appendDescriptionToFormatter:(id)a3;
- (void)cancelInteractiveTransition;
- (void)finishInteractiveTransition;
- (void)updateInteractiveTransition:(double)a3;
@end

@implementation PREditorLookTransition

- (PREditorLookTransition)initWithCurrentLook:(id)a3 destinationLook:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = PREditorLookTransition;
  v8 = [(PREditorLookTransition *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    currentLook = v8->_currentLook;
    v8->_currentLook = v9;

    v11 = [v7 copy];
    destinationLook = v8->_destinationLook;
    v8->_destinationLook = v11;
  }

  return v8;
}

- (BOOL)matchesCurrentLook:(id)a3 destinationLook:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PREditorLookTransition *)self currentLook];
  v9 = BSEqualObjects();

  if (v9)
  {
    v10 = [(PREditorLookTransition *)self destinationLook];
    v11 = BSEqualObjects();
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)updateInteractiveTransition:(double)a3
{
  v5 = fmax(fmin((a3 + -0.2) / 0.6, 1.0), 0.0);
  v10 = [(PREditorLookTransition *)self titleStyleTransition];
  [v10 updateInteractiveTransition:v5];
  v6 = [(PREditorLookTransition *)self titleScrollingTransition];
  [v6 updateInteractiveTransition:a3];
  v7 = [(PREditorLookTransition *)self subtitleStyleTransition];
  [v7 updateInteractiveTransition:v5];
  v8 = [(PREditorLookTransition *)self complicationTransition];
  [v8 updateInteractiveTransition:v5];
  v9 = [(PREditorLookTransition *)self lookNameTransition];
  [v9 updateInteractiveTransition:a3];
}

- (void)finishInteractiveTransition
{
  v7 = [(PREditorLookTransition *)self titleStyleTransition];
  [v7 cancelInteractiveTransition];
  v3 = [(PREditorLookTransition *)self titleScrollingTransition];
  [v3 finishInteractiveTransition];
  v4 = [(PREditorLookTransition *)self subtitleStyleTransition];
  [v4 finishInteractiveTransition];
  v5 = [(PREditorLookTransition *)self complicationTransition];
  [v5 finishInteractiveTransition];
  v6 = [(PREditorLookTransition *)self lookNameTransition];
  [v6 finishInteractiveTransition];
}

- (void)cancelInteractiveTransition
{
  v7 = [(PREditorLookTransition *)self titleStyleTransition];
  [v7 cancelInteractiveTransition];
  v3 = [(PREditorLookTransition *)self titleScrollingTransition];
  [v3 cancelInteractiveTransition];
  v4 = [(PREditorLookTransition *)self subtitleStyleTransition];
  [v4 cancelInteractiveTransition];
  v5 = [(PREditorLookTransition *)self complicationTransition];
  [v5 cancelInteractiveTransition];
  v6 = [(PREditorLookTransition *)self lookNameTransition];
  [v6 cancelInteractiveTransition];
}

- (NSString)description
{
  v3 = objc_alloc_init(MEMORY[0x1E698E688]);
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __37__PREditorLookTransition_description__block_invoke;
  v10 = &unk_1E7843070;
  v11 = self;
  v12 = v3;
  v4 = v3;
  [v4 appendProem:self block:&v7];
  v5 = [v4 description];

  return v5;
}

- (void)appendDescriptionToFormatter:(id)a3
{
  v16 = a3;
  v4 = [(PREditorLookTransition *)self currentLook];
  v5 = [v16 appendObject:v4 withName:@"currentLook"];

  v6 = [(PREditorLookTransition *)self destinationLook];
  v7 = [v16 appendObject:v6 withName:@"destinationLook"];

  v8 = [(PREditorLookTransition *)self titleStyleTransition];
  v9 = [v16 appendObject:v8 withName:@"titleStyleTransition"];

  v10 = [(PREditorLookTransition *)self titleScrollingTransition];
  v11 = [v16 appendObject:v10 withName:@"titleScrollingTransition"];

  v12 = [(PREditorLookTransition *)self subtitleStyleTransition];
  v13 = [v16 appendObject:v12 withName:@"subtitleStyleTransition"];

  v14 = [(PREditorLookTransition *)self lookNameTransition];
  v15 = [v16 appendObject:v14 withName:@"lookNameTransition"];
}

@end