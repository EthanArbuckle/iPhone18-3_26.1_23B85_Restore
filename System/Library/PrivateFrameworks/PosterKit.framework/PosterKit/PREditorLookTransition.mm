@interface PREditorLookTransition
- (BOOL)matchesCurrentLook:(id)look destinationLook:(id)destinationLook;
- (NSString)description;
- (PREditorLookTransition)initWithCurrentLook:(id)look destinationLook:(id)destinationLook;
- (void)appendDescriptionToFormatter:(id)formatter;
- (void)cancelInteractiveTransition;
- (void)finishInteractiveTransition;
- (void)updateInteractiveTransition:(double)transition;
@end

@implementation PREditorLookTransition

- (PREditorLookTransition)initWithCurrentLook:(id)look destinationLook:(id)destinationLook
{
  lookCopy = look;
  destinationLookCopy = destinationLook;
  v14.receiver = self;
  v14.super_class = PREditorLookTransition;
  v8 = [(PREditorLookTransition *)&v14 init];
  if (v8)
  {
    v9 = [lookCopy copy];
    currentLook = v8->_currentLook;
    v8->_currentLook = v9;

    v11 = [destinationLookCopy copy];
    destinationLook = v8->_destinationLook;
    v8->_destinationLook = v11;
  }

  return v8;
}

- (BOOL)matchesCurrentLook:(id)look destinationLook:(id)destinationLook
{
  destinationLookCopy = destinationLook;
  lookCopy = look;
  currentLook = [(PREditorLookTransition *)self currentLook];
  v9 = BSEqualObjects();

  if (v9)
  {
    destinationLook = [(PREditorLookTransition *)self destinationLook];
    v11 = BSEqualObjects();
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)updateInteractiveTransition:(double)transition
{
  v5 = fmax(fmin((transition + -0.2) / 0.6, 1.0), 0.0);
  titleStyleTransition = [(PREditorLookTransition *)self titleStyleTransition];
  [titleStyleTransition updateInteractiveTransition:v5];
  titleScrollingTransition = [(PREditorLookTransition *)self titleScrollingTransition];
  [titleScrollingTransition updateInteractiveTransition:transition];
  subtitleStyleTransition = [(PREditorLookTransition *)self subtitleStyleTransition];
  [subtitleStyleTransition updateInteractiveTransition:v5];
  complicationTransition = [(PREditorLookTransition *)self complicationTransition];
  [complicationTransition updateInteractiveTransition:v5];
  lookNameTransition = [(PREditorLookTransition *)self lookNameTransition];
  [lookNameTransition updateInteractiveTransition:transition];
}

- (void)finishInteractiveTransition
{
  titleStyleTransition = [(PREditorLookTransition *)self titleStyleTransition];
  [titleStyleTransition cancelInteractiveTransition];
  titleScrollingTransition = [(PREditorLookTransition *)self titleScrollingTransition];
  [titleScrollingTransition finishInteractiveTransition];
  subtitleStyleTransition = [(PREditorLookTransition *)self subtitleStyleTransition];
  [subtitleStyleTransition finishInteractiveTransition];
  complicationTransition = [(PREditorLookTransition *)self complicationTransition];
  [complicationTransition finishInteractiveTransition];
  lookNameTransition = [(PREditorLookTransition *)self lookNameTransition];
  [lookNameTransition finishInteractiveTransition];
}

- (void)cancelInteractiveTransition
{
  titleStyleTransition = [(PREditorLookTransition *)self titleStyleTransition];
  [titleStyleTransition cancelInteractiveTransition];
  titleScrollingTransition = [(PREditorLookTransition *)self titleScrollingTransition];
  [titleScrollingTransition cancelInteractiveTransition];
  subtitleStyleTransition = [(PREditorLookTransition *)self subtitleStyleTransition];
  [subtitleStyleTransition cancelInteractiveTransition];
  complicationTransition = [(PREditorLookTransition *)self complicationTransition];
  [complicationTransition cancelInteractiveTransition];
  lookNameTransition = [(PREditorLookTransition *)self lookNameTransition];
  [lookNameTransition cancelInteractiveTransition];
}

- (NSString)description
{
  v3 = objc_alloc_init(MEMORY[0x1E698E688]);
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __37__PREditorLookTransition_description__block_invoke;
  v10 = &unk_1E7843070;
  selfCopy = self;
  v12 = v3;
  v4 = v3;
  [v4 appendProem:self block:&v7];
  v5 = [v4 description];

  return v5;
}

- (void)appendDescriptionToFormatter:(id)formatter
{
  formatterCopy = formatter;
  currentLook = [(PREditorLookTransition *)self currentLook];
  v5 = [formatterCopy appendObject:currentLook withName:@"currentLook"];

  destinationLook = [(PREditorLookTransition *)self destinationLook];
  v7 = [formatterCopy appendObject:destinationLook withName:@"destinationLook"];

  titleStyleTransition = [(PREditorLookTransition *)self titleStyleTransition];
  v9 = [formatterCopy appendObject:titleStyleTransition withName:@"titleStyleTransition"];

  titleScrollingTransition = [(PREditorLookTransition *)self titleScrollingTransition];
  v11 = [formatterCopy appendObject:titleScrollingTransition withName:@"titleScrollingTransition"];

  subtitleStyleTransition = [(PREditorLookTransition *)self subtitleStyleTransition];
  v13 = [formatterCopy appendObject:subtitleStyleTransition withName:@"subtitleStyleTransition"];

  lookNameTransition = [(PREditorLookTransition *)self lookNameTransition];
  v15 = [formatterCopy appendObject:lookNameTransition withName:@"lookNameTransition"];
}

@end