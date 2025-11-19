@interface SiriSharedUICompactConversationSnippetVibrancyView
- (SiriSharedUICompactConversationSnippetVibrancyView)initWithStyle:(int64_t)a3;
- (int64_t)_blurEffectStyleForVibrancyViewStyle:(int64_t)a3;
- (void)layoutSubviews;
@end

@implementation SiriSharedUICompactConversationSnippetVibrancyView

- (SiriSharedUICompactConversationSnippetVibrancyView)initWithStyle:(int64_t)a3
{
  v15.receiver = self;
  v15.super_class = SiriSharedUICompactConversationSnippetVibrancyView;
  v4 = [(SiriSharedUICompactConversationSnippetVibrancyView *)&v15 init];
  if (v4)
  {
    v5 = [MEMORY[0x277D75348] clearColor];
    [(SiriSharedUICompactConversationSnippetVibrancyView *)v4 setBackgroundColor:v5];

    v6 = [(SiriSharedUICompactConversationSnippetVibrancyView *)v4 _blurEffectStyleForVibrancyViewStyle:a3];
    v7 = MEMORY[0x277D75D00];
    v8 = [MEMORY[0x277D75210] effectWithStyle:v6];
    v9 = [v7 effectForBlurEffect:v8 style:6];

    [(SiriSharedUICompactConversationSnippetVibrancyView *)v4 setUserInteractionEnabled:0];
    v10 = [objc_alloc(MEMORY[0x277D75D68]) initWithEffect:v9];
    visualEffectView = v4->_visualEffectView;
    v4->_visualEffectView = v10;

    [(UIVisualEffectView *)v4->_visualEffectView setUserInteractionEnabled:0];
    v12 = [(UIVisualEffectView *)v4->_visualEffectView contentView];
    v13 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:0.5];
    [v12 setBackgroundColor:v13];

    [(SiriSharedUICompactConversationSnippetVibrancyView *)v4 addSubview:v4->_visualEffectView];
    [(SiriSharedUICompactConversationSnippetVibrancyView *)v4 setClipsToBounds:1];
  }

  return v4;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = SiriSharedUICompactConversationSnippetVibrancyView;
  [(SiriSharedUICompactConversationSnippetVibrancyView *)&v4 layoutSubviews];
  visualEffectView = self->_visualEffectView;
  [(SiriSharedUICompactConversationSnippetVibrancyView *)self bounds];
  [(UIVisualEffectView *)visualEffectView setFrame:?];
}

- (int64_t)_blurEffectStyleForVibrancyViewStyle:(int64_t)a3
{
  if (a3 == 1)
  {
    return 14;
  }

  else
  {
    return 8;
  }
}

@end