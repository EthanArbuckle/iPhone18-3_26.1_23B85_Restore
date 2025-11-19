@interface SiriUIMessageContentTemplateView
- (CGSize)_textBalloonViewBoundingSize;
- (SiriUIMessageContentTemplateView)initWithDataSource:(id)a3;
- (double)desiredHeight;
- (void)layoutSubviews;
- (void)reloadData;
- (void)setSemanticContentAttribute:(int64_t)a3;
@end

@implementation SiriUIMessageContentTemplateView

- (SiriUIMessageContentTemplateView)initWithDataSource:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = SiriUIMessageContentTemplateView;
  v5 = [(SiriUIBaseTemplateView *)&v12 initWithDataSource:v4];
  if (v5)
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x2050000000;
    v6 = getCKTextBalloonViewClass_softClass;
    v17 = getCKTextBalloonViewClass_softClass;
    if (!getCKTextBalloonViewClass_softClass)
    {
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __getCKTextBalloonViewClass_block_invoke;
      v13[3] = &unk_279C59F40;
      v13[4] = &v14;
      __getCKTextBalloonViewClass_block_invoke(v13);
      v6 = v15[3];
    }

    v7 = v6;
    _Block_object_dispose(&v14, 8);
    v8 = [v6 alloc];
    v9 = [v8 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    textBalloonView = v5->_textBalloonView;
    v5->_textBalloonView = v9;

    [v5->_textBalloonView setCanUseOpaqueMask:0];
    [v5->_textBalloonView prepareForDisplayIfNeeded];
    [(SiriUIMessageContentTemplateView *)v5 addSubview:v5->_textBalloonView];
    [(SiriUIMessageContentTemplateView *)v5 reloadData];
  }

  return v5;
}

- (void)layoutSubviews
{
  v14.receiver = self;
  v14.super_class = SiriUIMessageContentTemplateView;
  [(SiriUIMessageContentTemplateView *)&v14 layoutSubviews];
  [(SiriUIMessageContentTemplateView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(SiriUIBaseTemplateView *)self templatedSuperview];
  [v11 templatedContentMargins];

  v12 = [(SiriUIMessageContentTemplateView *)self semanticContentAttribute];
  textBalloonView = self->_textBalloonView;
  [(SiriUIMessageContentTemplateView *)self _textBalloonViewBoundingSize];
  [textBalloonView sizeThatFits:?];
  if (v12 != 4)
  {
    v15.origin.x = v4;
    v15.origin.y = v6;
    v15.size.width = v8;
    v15.size.height = v10;
    CGRectGetWidth(v15);
  }

  UIRectCenteredYInRect();
  [self->_textBalloonView setFrame:?];
}

- (void)setSemanticContentAttribute:(int64_t)a3
{
  v4.receiver = self;
  v4.super_class = SiriUIMessageContentTemplateView;
  [(SiriUIMessageContentTemplateView *)&v4 setSemanticContentAttribute:a3];
  [self->_textBalloonView setOrientation:{-[SiriUIMessageContentTemplateView semanticContentAttribute](self, "semanticContentAttribute") != 4}];
  [self->_textBalloonView prepareForDisplayIfNeeded];
}

- (double)desiredHeight
{
  textBalloonView = self->_textBalloonView;
  [(SiriUIMessageContentTemplateView *)self _textBalloonViewBoundingSize];
  [textBalloonView sizeThatFits:?];
  return v3 + 88.0;
}

- (void)reloadData
{
  v17[2] = *MEMORY[0x277D85DE8];
  v15.receiver = self;
  v15.super_class = SiriUIMessageContentTemplateView;
  [(SiriUIBaseTemplateView *)&v15 reloadData];
  v3 = [(SiriUIBaseTemplateView *)self dataSource];
  v4 = [v3 sentStatus];
  textBalloonView = self->_textBalloonView;
  v5 = objc_alloc(MEMORY[0x277CCA898]);
  v6 = [v3 content];
  v16[0] = *MEMORY[0x277D740A8];
  v7 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
  v17[0] = v7;
  v16[1] = *MEMORY[0x277D740C0];
  if (v4)
  {
    v8 = [MEMORY[0x277D75348] whiteColor];
    v9 = 0;
  }

  else
  {
    v8 = [MEMORY[0x277D75348] blackColor];
    v9 = 4;
  }

  if (v6)
  {
    v10 = v6;
  }

  else
  {
    v10 = &stru_2879FFD58;
  }

  v17[1] = v8;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:{2, textBalloonView}];
  v12 = [v5 initWithString:v10 attributes:v11];
  [v14 setAttributedText:v12];

  [self->_textBalloonView setColor:v9];
  [self->_textBalloonView prepareForDisplayIfNeeded];
  [(SiriUIMessageContentTemplateView *)self setNeedsLayout];
}

- (CGSize)_textBalloonViewBoundingSize
{
  [(SiriUIMessageContentTemplateView *)self bounds];
  v4 = v3;
  v6 = v5;
  v7 = [(SiriUIBaseTemplateView *)self templatedSuperview];
  [v7 templatedContentMargins];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v16 = v4 - (v11 + v15);
  v17 = v6 - (v9 + v13);
  result.height = v17;
  result.width = v16;
  return result;
}

@end