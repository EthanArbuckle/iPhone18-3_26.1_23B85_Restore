@interface SBMenuBarBackgroundVariableBlurView
- (SBMenuBarBackgroundVariableBlurView)initWithDelegate:(id)delegate;
- (SBMenuBarBackgroundVariableBlurViewDelegate)delegate;
- (void)layoutSubviews;
@end

@implementation SBMenuBarBackgroundVariableBlurView

- (SBMenuBarBackgroundVariableBlurView)initWithDelegate:(id)delegate
{
  v15[1] = *MEMORY[0x277D85DE8];
  delegateCopy = delegate;
  v14.receiver = self;
  v14.super_class = SBMenuBarBackgroundVariableBlurView;
  v5 = [(SBMenuBarBackgroundVariableBlurView *)&v14 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, delegateCopy);
    layer = [(SBMenuBarBackgroundVariableBlurView *)v6 layer];
    [layer setAllowsHitTesting:0];
    [(SBMenuBarBackgroundVariableBlurView *)v6 setUserInteractionEnabled:0];
    v8 = objc_alloc_init(MEMORY[0x277CD9ED0]);
    gradientMaskLayer = v6->_gradientMaskLayer;
    v6->_gradientMaskLayer = v8;

    [(CALayer *)v6->_gradientMaskLayer setAllowsHitTesting:0];
    [(CALayer *)v6->_gradientMaskLayer setName:@"gradientMask"];
    [layer addSublayer:v6->_gradientMaskLayer];
    v10 = [MEMORY[0x277D755B8] imageNamed:@"menuBarVariableBlurGradient"];
    -[CALayer setContents:](v6->_gradientMaskLayer, "setContents:", [v10 CGImage]);
    [(CALayer *)v6->_gradientMaskLayer setContentsCenter:0.25, 0.0, 0.5, 1.0];
    v11 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA638]];
    [v11 setValue:&unk_283371180 forKey:*MEMORY[0x277CDA4F0]];
    [v11 setValue:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277CDA4C8]];
    [v11 setValue:@"gradientMask" forKey:*MEMORY[0x277CDA530]];
    v15[0] = v11;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
    [layer setFilters:v12];
  }

  return v6;
}

- (void)layoutSubviews
{
  v12.receiver = self;
  v12.super_class = SBMenuBarBackgroundVariableBlurView;
  [(SBMenuBarBackgroundVariableBlurView *)&v12 layoutSubviews];
  [(SBMenuBarBackgroundVariableBlurView *)self bounds];
  x = v13.origin.x;
  y = v13.origin.y;
  width = v13.size.width;
  height = v13.size.height;
  gradientMaskLayer = self->_gradientMaskLayer;
  MidX = CGRectGetMidX(v13);
  v14.origin.x = x;
  v14.origin.y = y;
  v14.size.width = width;
  v14.size.height = height;
  [(CALayer *)gradientMaskLayer setPosition:MidX, CGRectGetMidY(v14)];
  v9 = self->_gradientMaskLayer;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained desiredBlurWidth];
  [(CALayer *)v9 setBounds:0.0, 0.0, v11, height];
}

- (SBMenuBarBackgroundVariableBlurViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end