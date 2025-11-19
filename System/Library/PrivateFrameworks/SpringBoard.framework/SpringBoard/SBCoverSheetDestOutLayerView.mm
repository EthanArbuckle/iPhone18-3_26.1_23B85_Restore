@interface SBCoverSheetDestOutLayerView
- (SBCoverSheetDestOutLayerView)initWithCoder:(id)a3;
- (SBCoverSheetDestOutLayerView)initWithFrame:(CGRect)a3;
- (void)_setup;
- (void)updatePosition:(CGPoint)a3 forPresentationValue:(BOOL)a4;
@end

@implementation SBCoverSheetDestOutLayerView

- (SBCoverSheetDestOutLayerView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = SBCoverSheetDestOutLayerView;
  v3 = [(SBCoverSheetDestOutLayerView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(SBCoverSheetDestOutLayerView *)v3 _setup];
  }

  return v4;
}

- (SBCoverSheetDestOutLayerView)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = SBCoverSheetDestOutLayerView;
  v3 = [(SBCoverSheetDestOutLayerView *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(SBCoverSheetDestOutLayerView *)v3 _setup];
  }

  return v4;
}

- (void)_setup
{
  v3 = [(SBCoverSheetDestOutLayerView *)self layer];
  v4 = [MEMORY[0x277D75348] blackColor];
  [v3 setBackgroundColor:{objc_msgSend(v4, "cgColor")}];

  v5 = [(SBCoverSheetDestOutLayerView *)self layer];
  [v5 setCornerCurve:*MEMORY[0x277CDA138]];

  v6 = [(SBCoverSheetDestOutLayerView *)self layer];
  v7 = [MEMORY[0x277D759A0] mainScreen];
  v8 = [v7 traitCollection];
  [v8 displayCornerRadius];
  [v6 setCornerRadius:?];

  v9 = [(SBCoverSheetDestOutLayerView *)self layer];
  [v9 setCompositingFilter:@"destOut"];
}

- (void)updatePosition:(CGPoint)a3 forPresentationValue:(BOOL)a4
{
  if (a4)
  {
    v6 = a3;
    v5 = [MEMORY[0x277CCAE60] valueWithBytes:&v6 objCType:"{CGPoint=dd}"];
    [(SBCoverSheetDestOutLayerView *)self _setPresentationValue:v5 forKey:@"position"];
  }

  else
  {

    [(SBCoverSheetDestOutLayerView *)self setCenter:a3.x, a3.y];
  }
}

@end