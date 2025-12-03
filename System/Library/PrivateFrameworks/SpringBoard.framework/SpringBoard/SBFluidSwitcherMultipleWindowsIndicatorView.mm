@interface SBFluidSwitcherMultipleWindowsIndicatorView
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (CGRect)_hitTestBounds;
- (SBFluidSwitcherMultipleWindowsIndicatorView)initWithFrame:(CGRect)frame;
- (id)pointerInteraction:(id)interaction regionForRequest:(id)request defaultRegion:(id)region;
- (id)pointerInteraction:(id)interaction styleForRegion:(id)region;
@end

@implementation SBFluidSwitcherMultipleWindowsIndicatorView

- (SBFluidSwitcherMultipleWindowsIndicatorView)initWithFrame:(CGRect)frame
{
  v9.receiver = self;
  v9.super_class = SBFluidSwitcherMultipleWindowsIndicatorView;
  v3 = [(SBFluidSwitcherMultipleWindowsIndicatorView *)&v9 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x277D755D0] configurationWithPointSize:14.0];
    v5 = [MEMORY[0x277D755B8] systemImageNamed:@"square.fill.on.square.fill" withConfiguration:v4];
    [(SBFluidSwitcherMultipleWindowsIndicatorView *)v3 setAccessibilityTraits:*MEMORY[0x277D76548]];
    [(SBFluidSwitcherMultipleWindowsIndicatorView *)v3 setImage:v5];
    [(SBFluidSwitcherMultipleWindowsIndicatorView *)v3 setUserInteractionEnabled:1];
    v6 = [objc_alloc(MEMORY[0x277D75870]) initWithDelegate:v3];
    pointerInteraction = v3->_pointerInteraction;
    v3->_pointerInteraction = v6;

    [(SBFluidSwitcherMultipleWindowsIndicatorView *)v3 addInteraction:v3->_pointerInteraction];
  }

  return v3;
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  v8.receiver = self;
  v8.super_class = SBFluidSwitcherMultipleWindowsIndicatorView;
  if ([(SBFluidSwitcherMultipleWindowsIndicatorView *)&v8 pointInside:event withEvent:?])
  {
    return 1;
  }

  [(SBFluidSwitcherMultipleWindowsIndicatorView *)self _hitTestBounds];
  v9.x = x;
  v9.y = y;
  return CGRectContainsPoint(v10, v9);
}

- (id)pointerInteraction:(id)interaction regionForRequest:(id)request defaultRegion:(id)region
{
  v6 = MEMORY[0x277D75880];
  regionCopy = region;
  [(SBFluidSwitcherMultipleWindowsIndicatorView *)self _hitTestBounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  identifier = [regionCopy identifier];

  v17 = [v6 regionWithRect:identifier identifier:{v9, v11, v13, v15}];

  return v17;
}

- (id)pointerInteraction:(id)interaction styleForRegion:(id)region
{
  v5 = objc_alloc_init(MEMORY[0x277D758D8]);
  v6 = [objc_alloc(MEMORY[0x277D75B90]) initWithView:self parameters:v5];
  v7 = [MEMORY[0x277D75860] effectWithPreview:v6];
  v8 = MEMORY[0x277D75888];
  [(SBFluidSwitcherMultipleWindowsIndicatorView *)self frame];
  UIRectCenteredRect();
  v9 = [v8 shapeWithRoundedRect:? cornerRadius:?];
  v10 = [MEMORY[0x277D75890] styleWithEffect:v7 shape:v9];

  return v10;
}

- (CGRect)_hitTestBounds
{
  [(SBFluidSwitcherMultipleWindowsIndicatorView *)self bounds];

  UIRectInset();
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

@end