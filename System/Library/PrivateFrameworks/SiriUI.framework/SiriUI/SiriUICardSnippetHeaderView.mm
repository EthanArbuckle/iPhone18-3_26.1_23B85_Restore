@interface SiriUICardSnippetHeaderView
- (CGSize)sizeThatFits:(CGSize)result;
- (UIEdgeInsets)_edgeInsets;
- (void)configureWithTitle:(id)a3;
- (void)layoutSubviews;
@end

@implementation SiriUICardSnippetHeaderView

- (UIEdgeInsets)_edgeInsets
{
  if (SiriUIIsCompactWidth())
  {
    v2 = 16.0;
  }

  else
  {
    v2 = 0.0;
  }

  if (SiriUIIsCompactWidth())
  {
    v3 = 16.0;
  }

  else
  {
    v3 = 0.0;
  }

  v4 = 0.0;
  v5 = 0.0;
  v6 = v2;
  result.right = v3;
  result.bottom = v5;
  result.left = v6;
  result.top = v4;
  return result;
}

- (void)configureWithTitle:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    titleLabel = self->_titleLabel;
    v13 = v5;
    if (!titleLabel)
    {
      v7 = [MEMORY[0x277D60108] label];
      v8 = self->_titleLabel;
      self->_titleLabel = v7;

      v9 = self->_titleLabel;
      v10 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76968]];
      [(SiriSharedUIContentLabel *)v9 setFont:v10];

      v11 = self->_titleLabel;
      v12 = [MEMORY[0x277D75348] siriui_blendEffectColor];
      [(SiriSharedUIContentLabel *)v11 setTextColor:v12];

      [(SiriUICardSnippetHeaderView *)self addSubview:self->_titleLabel];
      [(UIView *)self siriui_setBlendEffectEnabled:1];
      titleLabel = self->_titleLabel;
    }

    v4 = [(SiriSharedUIContentLabel *)titleLabel setText:v13];
    v5 = v13;
  }

  MEMORY[0x2821F96F8](v4, v5);
}

- (CGSize)sizeThatFits:(CGSize)result
{
  v3 = 24.0;
  result.height = v3;
  return result;
}

- (void)layoutSubviews
{
  v29.receiver = self;
  v29.super_class = SiriUICardSnippetHeaderView;
  [(SiriUIReusableHeaderView *)&v29 layoutSubviews];
  [(SiriUICardSnippetHeaderView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(SiriUICardSnippetHeaderView *)self _edgeInsets];
  titleLabel = self->_titleLabel;
  if (titleLabel)
  {
    v16 = v8 - (v12 + v14);
    v17 = v10 - (v11 + v13);
    v18 = v4 + v12;
    v19 = v6 + v11;
    v20 = SiriUIRectForLabelWithDistanceFromBottomToBaseline(titleLabel, v4 + v12, v6 + v11, v16, v17);
    v22 = v21;
    v24 = v23;
    if (SiriUIIsCompactWidth())
    {
      v25 = v16;
    }

    else
    {
      v27 = v22;
      v28 = v24;
      v25 = v16 - (16.0 + 16.0);
      if (SiriLanguageIsRTL())
      {
        v30.origin.x = v18;
        v30.origin.y = v19;
        v30.size.width = v16;
        v30.size.height = v17;
        v26 = CGRectGetWidth(v30) - 16.0;
        v31.origin.x = v20;
        v31.origin.y = v27;
        v31.size.width = v16 - (16.0 + 16.0);
        v31.size.height = v24;
        v20 = v26 - CGRectGetWidth(v31);
        v22 = v27;
      }

      else
      {
        v20 = 16.0;
      }
    }

    [(SiriSharedUIContentLabel *)self->_titleLabel setFrame:v20, v22, v25, v24, *&v27, *&v28];
  }
}

@end