@interface SBCoverSheetDestOutLayerView
- (SBCoverSheetDestOutLayerView)initWithCoder:(id)coder;
- (SBCoverSheetDestOutLayerView)initWithFrame:(CGRect)frame;
- (void)_setup;
- (void)updatePosition:(CGPoint)position forPresentationValue:(BOOL)value;
@end

@implementation SBCoverSheetDestOutLayerView

- (SBCoverSheetDestOutLayerView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = SBCoverSheetDestOutLayerView;
  v3 = [(SBCoverSheetDestOutLayerView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(SBCoverSheetDestOutLayerView *)v3 _setup];
  }

  return v4;
}

- (SBCoverSheetDestOutLayerView)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = SBCoverSheetDestOutLayerView;
  v3 = [(SBCoverSheetDestOutLayerView *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(SBCoverSheetDestOutLayerView *)v3 _setup];
  }

  return v4;
}

- (void)_setup
{
  layer = [(SBCoverSheetDestOutLayerView *)self layer];
  blackColor = [MEMORY[0x277D75348] blackColor];
  [layer setBackgroundColor:{objc_msgSend(blackColor, "cgColor")}];

  layer2 = [(SBCoverSheetDestOutLayerView *)self layer];
  [layer2 setCornerCurve:*MEMORY[0x277CDA138]];

  layer3 = [(SBCoverSheetDestOutLayerView *)self layer];
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  traitCollection = [mainScreen traitCollection];
  [traitCollection displayCornerRadius];
  [layer3 setCornerRadius:?];

  layer4 = [(SBCoverSheetDestOutLayerView *)self layer];
  [layer4 setCompositingFilter:@"destOut"];
}

- (void)updatePosition:(CGPoint)position forPresentationValue:(BOOL)value
{
  if (value)
  {
    positionCopy = position;
    v5 = [MEMORY[0x277CCAE60] valueWithBytes:&positionCopy objCType:"{CGPoint=dd}"];
    [(SBCoverSheetDestOutLayerView *)self _setPresentationValue:v5 forKey:@"position"];
  }

  else
  {

    [(SBCoverSheetDestOutLayerView *)self setCenter:position.x, position.y];
  }
}

@end