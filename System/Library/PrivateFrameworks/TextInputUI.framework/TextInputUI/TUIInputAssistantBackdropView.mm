@interface TUIInputAssistantBackdropView
- (TUIInputAssistantBackdropView)initWithFrame:(CGRect)frame;
- (double)contentCornerRadius;
- (id)effectsFor:(id)for;
- (void)_setRenderConfig:(id)config;
- (void)layoutSubviews;
- (void)setContentCornerRadius:(double)radius;
- (void)updateVisualStyle:(id)style;
@end

@implementation TUIInputAssistantBackdropView

- (void)updateVisualStyle:(id)style
{
  styleCopy = style;
  v5 = [(TUIInputAssistantBackdropView *)self effectsFor:styleCopy];
  [(UIVisualEffectView *)self->_contentView setBackgroundEffects:v5];

  layer = [(TUIInputAssistantBackdropView *)self layer];
  LODWORD(self) = [styleCopy lightKeyboard];

  if (self)
  {
    blackColor = [MEMORY[0x1E69DC888] blackColor];
    [layer setShadowColor:{objc_msgSend(blackColor, "CGColor")}];

    [layer setShadowRadius:15.0];
    LODWORD(v7) = 1045220557;
    [layer setShadowOpacity:v7];
    [layer setShadowOffset:{0.0, 4.0}];
  }

  else
  {
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [layer setShadowColor:{objc_msgSend(clearColor, "CGColor")}];
  }
}

- (void)_setRenderConfig:(id)config
{
  v5.receiver = self;
  v5.super_class = TUIInputAssistantBackdropView;
  configCopy = config;
  [(TUIInputAssistantBackdropView *)&v5 _setRenderConfig:configCopy];
  [(TUIInputAssistantBackdropView *)self updateVisualStyle:configCopy, v5.receiver, v5.super_class];
}

- (id)effectsFor:(id)for
{
  v14[2] = *MEMORY[0x1E69E9840];
  forCopy = for;
  if ([forCopy animatedBackground])
  {
    v4 = objc_alloc(MEMORY[0x1E69DD568]);
    mEMORY[0x1E69DD578] = [MEMORY[0x1E69DD578] sharedLight];
    v6 = [v4 initWithLightSource:mEMORY[0x1E69DD578]];
    v14[0] = v6;
    v7 = [MEMORY[0x1E69DC730] effectWithStyle:10];
    v14[1] = v7;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:2];
  }

  else
  {
    if ([forCopy lightKeyboard])
    {
      mEMORY[0x1E69DD578] = [MEMORY[0x1E69DC730] effectWithStyle:13];
      v13 = mEMORY[0x1E69DD578];
      v9 = MEMORY[0x1E695DEC8];
      v10 = &v13;
    }

    else
    {
      mEMORY[0x1E69DD578] = [MEMORY[0x1E69DC730] effectWithStyle:18];
      v12 = mEMORY[0x1E69DD578];
      v9 = MEMORY[0x1E695DEC8];
      v10 = &v12;
    }

    v8 = [v9 arrayWithObjects:v10 count:1];
  }

  return v8;
}

- (double)contentCornerRadius
{
  layer = [(UIVisualEffectView *)self->_contentView layer];
  [layer cornerRadius];
  v4 = v3;

  return v4;
}

- (void)setContentCornerRadius:(double)radius
{
  layer = [(TUIInputAssistantBackdropView *)self layer];
  v5 = *MEMORY[0x1E69796E8];
  [layer setCornerCurve:*MEMORY[0x1E69796E8]];
  [layer setCornerRadius:radius];
  layer2 = [(UIVisualEffectView *)self->_contentView layer];
  [layer2 setCornerCurve:v5];
  [layer2 setCornerRadius:radius];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = TUIInputAssistantBackdropView;
  [(TUIInputAssistantBackdropView *)&v3 layoutSubviews];
  [(TUIInputAssistantBackdropView *)self bounds];
  [(UIVisualEffectView *)self->_contentView setFrame:?];
}

- (TUIInputAssistantBackdropView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v14.receiver = self;
  v14.super_class = TUIInputAssistantBackdropView;
  v7 = [(TUIInputAssistantBackdropView *)&v14 initWithFrame:?];
  if (v7)
  {
    v8 = [objc_alloc(MEMORY[0x1E69DD298]) initWithFrame:{x, y, width, height}];
    contentView = v7->_contentView;
    v7->_contentView = v8;

    layer = [(UIVisualEffectView *)v7->_contentView layer];
    [layer setBorderWidth:1.0 / TUIScreenScaleForView(v7)];
    systemFillColor = [MEMORY[0x1E69DC888] systemFillColor];
    [layer setBorderColor:{objc_msgSend(systemFillColor, "CGColor")}];

    [layer setMasksToBounds:1];
    [(TUIInputAssistantBackdropView *)v7 addSubview:v7->_contentView];
    _inheritedRenderConfig = [(TUIInputAssistantBackdropView *)v7 _inheritedRenderConfig];
    [(TUIInputAssistantBackdropView *)v7 updateVisualStyle:_inheritedRenderConfig];
    [(TUIInputAssistantBackdropView *)v7 setUserInteractionEnabled:0];
    [(TUIInputAssistantBackdropView *)v7 setAccessibilityIdentifier:@"InputAssistantBackdrop"];
  }

  return v7;
}

@end