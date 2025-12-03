@interface VSTintedBackgroundButton
- (void)_updateBackgroundImages;
- (void)setBounds:(CGRect)bounds;
- (void)setFrame:(CGRect)frame;
- (void)tintColorDidChange;
@end

@implementation VSTintedBackgroundButton

- (void)_updateBackgroundImages
{
  tintColor = [(VSTintedBackgroundButton *)self tintColor];
  [(VSTintedBackgroundButton *)self bounds];
  [(VSTintedBackgroundButton *)self backgroundRectForBounds:?];
  v5 = v4;
  v7 = v6;
  v8 = [MEMORY[0x277D75208] bezierPathWithRoundedRect:*MEMORY[0x277CBF3A0] cornerRadius:*(MEMORY[0x277CBF3A0] + 8)];
  v9 = [objc_alloc(MEMORY[0x277D75560]) initWithSize:{v5, v7}];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __51__VSTintedBackgroundButton__updateBackgroundImages__block_invoke;
  v22[3] = &unk_279E1AA68;
  v10 = tintColor;
  v23 = v10;
  v11 = v8;
  v24 = v11;
  v12 = [v9 imageWithActions:v22];
  [(VSTintedBackgroundButton *)self setBackgroundImage:v12 forState:0];
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __51__VSTintedBackgroundButton__updateBackgroundImages__block_invoke_2;
  v19 = &unk_279E1AA68;
  v20 = v10;
  v21 = v11;
  v13 = v11;
  v14 = v10;
  v15 = [v9 imageWithActions:&v16];
  [(VSTintedBackgroundButton *)self setBackgroundImage:v15 forState:1, v16, v17, v18, v19];
}

uint64_t __51__VSTintedBackgroundButton__updateBackgroundImages__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setFill];
  v2 = *(a1 + 40);

  return [v2 fill];
}

uint64_t __51__VSTintedBackgroundButton__updateBackgroundImages__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) colorWithAlphaComponent:0.5];
  [v2 setFill];

  v3 = *(a1 + 40);

  return [v3 fill];
}

- (void)setFrame:(CGRect)frame
{
  v4.receiver = self;
  v4.super_class = VSTintedBackgroundButton;
  [(VSTintedBackgroundButton *)&v4 setFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  [(VSTintedBackgroundButton *)self _updateBackgroundImages];
}

- (void)setBounds:(CGRect)bounds
{
  v4.receiver = self;
  v4.super_class = VSTintedBackgroundButton;
  [(VSTintedBackgroundButton *)&v4 setBounds:bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height];
  [(VSTintedBackgroundButton *)self _updateBackgroundImages];
}

- (void)tintColorDidChange
{
  v3.receiver = self;
  v3.super_class = VSTintedBackgroundButton;
  [(VSTintedBackgroundButton *)&v3 tintColorDidChange];
  [(VSTintedBackgroundButton *)self _updateBackgroundImages];
}

@end