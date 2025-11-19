@interface TUIInputAssistantBackdropView
- (TUIInputAssistantBackdropView)initWithFrame:(CGRect)a3;
- (double)contentCornerRadius;
- (id)effectsFor:(id)a3;
- (void)_setRenderConfig:(id)a3;
- (void)layoutSubviews;
- (void)setContentCornerRadius:(double)a3;
- (void)updateVisualStyle:(id)a3;
@end

@implementation TUIInputAssistantBackdropView

- (void)updateVisualStyle:(id)a3
{
  v4 = a3;
  v5 = [(TUIInputAssistantBackdropView *)self effectsFor:v4];
  [(UIVisualEffectView *)self->_contentView setBackgroundEffects:v5];

  v9 = [(TUIInputAssistantBackdropView *)self layer];
  LODWORD(self) = [v4 lightKeyboard];

  if (self)
  {
    v6 = [MEMORY[0x1E69DC888] blackColor];
    [v9 setShadowColor:{objc_msgSend(v6, "CGColor")}];

    [v9 setShadowRadius:15.0];
    LODWORD(v7) = 1045220557;
    [v9 setShadowOpacity:v7];
    [v9 setShadowOffset:{0.0, 4.0}];
  }

  else
  {
    v8 = [MEMORY[0x1E69DC888] clearColor];
    [v9 setShadowColor:{objc_msgSend(v8, "CGColor")}];
  }
}

- (void)_setRenderConfig:(id)a3
{
  v5.receiver = self;
  v5.super_class = TUIInputAssistantBackdropView;
  v4 = a3;
  [(TUIInputAssistantBackdropView *)&v5 _setRenderConfig:v4];
  [(TUIInputAssistantBackdropView *)self updateVisualStyle:v4, v5.receiver, v5.super_class];
}

- (id)effectsFor:(id)a3
{
  v14[2] = *MEMORY[0x1E69E9840];
  v3 = a3;
  if ([v3 animatedBackground])
  {
    v4 = objc_alloc(MEMORY[0x1E69DD568]);
    v5 = [MEMORY[0x1E69DD578] sharedLight];
    v6 = [v4 initWithLightSource:v5];
    v14[0] = v6;
    v7 = [MEMORY[0x1E69DC730] effectWithStyle:10];
    v14[1] = v7;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:2];
  }

  else
  {
    if ([v3 lightKeyboard])
    {
      v5 = [MEMORY[0x1E69DC730] effectWithStyle:13];
      v13 = v5;
      v9 = MEMORY[0x1E695DEC8];
      v10 = &v13;
    }

    else
    {
      v5 = [MEMORY[0x1E69DC730] effectWithStyle:18];
      v12 = v5;
      v9 = MEMORY[0x1E695DEC8];
      v10 = &v12;
    }

    v8 = [v9 arrayWithObjects:v10 count:1];
  }

  return v8;
}

- (double)contentCornerRadius
{
  v2 = [(UIVisualEffectView *)self->_contentView layer];
  [v2 cornerRadius];
  v4 = v3;

  return v4;
}

- (void)setContentCornerRadius:(double)a3
{
  v7 = [(TUIInputAssistantBackdropView *)self layer];
  v5 = *MEMORY[0x1E69796E8];
  [v7 setCornerCurve:*MEMORY[0x1E69796E8]];
  [v7 setCornerRadius:a3];
  v6 = [(UIVisualEffectView *)self->_contentView layer];
  [v6 setCornerCurve:v5];
  [v6 setCornerRadius:a3];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = TUIInputAssistantBackdropView;
  [(TUIInputAssistantBackdropView *)&v3 layoutSubviews];
  [(TUIInputAssistantBackdropView *)self bounds];
  [(UIVisualEffectView *)self->_contentView setFrame:?];
}

- (TUIInputAssistantBackdropView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v14.receiver = self;
  v14.super_class = TUIInputAssistantBackdropView;
  v7 = [(TUIInputAssistantBackdropView *)&v14 initWithFrame:?];
  if (v7)
  {
    v8 = [objc_alloc(MEMORY[0x1E69DD298]) initWithFrame:{x, y, width, height}];
    contentView = v7->_contentView;
    v7->_contentView = v8;

    v10 = [(UIVisualEffectView *)v7->_contentView layer];
    [v10 setBorderWidth:1.0 / TUIScreenScaleForView(v7)];
    v11 = [MEMORY[0x1E69DC888] systemFillColor];
    [v10 setBorderColor:{objc_msgSend(v11, "CGColor")}];

    [v10 setMasksToBounds:1];
    [(TUIInputAssistantBackdropView *)v7 addSubview:v7->_contentView];
    v12 = [(TUIInputAssistantBackdropView *)v7 _inheritedRenderConfig];
    [(TUIInputAssistantBackdropView *)v7 updateVisualStyle:v12];
    [(TUIInputAssistantBackdropView *)v7 setUserInteractionEnabled:0];
    [(TUIInputAssistantBackdropView *)v7 setAccessibilityIdentifier:@"InputAssistantBackdrop"];
  }

  return v7;
}

@end