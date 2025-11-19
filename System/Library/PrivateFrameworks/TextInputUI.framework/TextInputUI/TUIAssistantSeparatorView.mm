@interface TUIAssistantSeparatorView
+ (id)barButtonItem;
- (TUIAssistantSeparatorView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation TUIAssistantSeparatorView

- (void)layoutSubviews
{
  v17.receiver = self;
  v17.super_class = TUIAssistantSeparatorView;
  [(TUIAssistantSeparatorView *)&v17 layoutSubviews];
  [(TUIAssistantSeparatorView *)self bounds];
  v4 = v3;
  v5 = [(TUIAssistantSeparatorView *)self innerSeparatorView];
  [v5 setFrame:{0.0, 0.0, v4, 19.0}];

  v6 = TUIScreenScaleForView(self);
  v7 = [(TUIAssistantSeparatorView *)self innerSeparatorView];
  [v7 frame];
  UIRectCenteredYInRectScale();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = [(TUIAssistantSeparatorView *)self innerSeparatorView];
  [v16 setFrame:{v9, v11, v13, v15}];
}

- (TUIAssistantSeparatorView)initWithFrame:(CGRect)a3
{
  v11.receiver = self;
  v11.super_class = TUIAssistantSeparatorView;
  v3 = [(TUIAssistantSeparatorView *)&v11 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(TUIAssistantSeparatorView *)v3 _setCornerRadius:*&kTUISeparatorCornerRadius];
    v5 = objc_alloc(MEMORY[0x1E69DD250]);
    v6 = [v5 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    [(TUIAssistantSeparatorView *)v4 setInnerSeparatorView:v6];

    v7 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    v8 = [(TUIAssistantSeparatorView *)v4 innerSeparatorView];
    [v8 setBackgroundColor:v7];

    v9 = [(TUIAssistantSeparatorView *)v4 innerSeparatorView];
    [(TUIAssistantSeparatorView *)v4 addSubview:v9];
  }

  return v4;
}

+ (id)barButtonItem
{
  v2 = objc_alloc_init(TUIAssistantSeparatorView);
  v3 = [objc_alloc(MEMORY[0x1E69DC708]) initWithCustomView:v2];
  [v3 setWidth:1.0];

  return v3;
}

@end