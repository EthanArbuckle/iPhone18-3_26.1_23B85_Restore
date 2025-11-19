@interface SiriUISelectionTemplateView
- (SiriUISelectionTemplateView)initWithDataSource:(id)a3;
- (void)layoutSubviews;
- (void)reloadData;
@end

@implementation SiriUISelectionTemplateView

- (SiriUISelectionTemplateView)initWithDataSource:(id)a3
{
  v13.receiver = self;
  v13.super_class = SiriUISelectionTemplateView;
  v3 = [(SiriUISettingTemplateView *)&v13 initWithDataSource:a3];
  if (v3)
  {
    v4 = [MEMORY[0x277D755B8] systemImageNamed:@"checkmark"];
    v5 = [MEMORY[0x277D75348] siriui_platterTextColor];
    v6 = [v4 _flatImageWithColor:v5];
    v7 = [v6 imageFlippedForRightToLeftLayoutDirection];

    v8 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v7];
    checkmarkImageView = v3->_checkmarkImageView;
    v3->_checkmarkImageView = v8;

    v10 = [MEMORY[0x277D75220] buttonWithType:0];
    selectionButton = v3->_selectionButton;
    v3->_selectionButton = v10;

    [(SiriUISelectionTemplateView *)v3 addSubview:v3->_checkmarkImageView];
    [(SiriUISelectionTemplateView *)v3 addSubview:v3->_selectionButton];
    [(SiriUISelectionTemplateView *)v3 reloadData];
  }

  return v3;
}

- (void)reloadData
{
  v4.receiver = self;
  v4.super_class = SiriUISelectionTemplateView;
  [(SiriUISettingTemplateView *)&v4 reloadData];
  v3 = [(SiriUIBaseTemplateView *)self dataSource];
  -[UIImageView setHidden:](self->_checkmarkImageView, "setHidden:", [v3 selected] ^ 1);
}

- (void)layoutSubviews
{
  v13.receiver = self;
  v13.super_class = SiriUISelectionTemplateView;
  [(SiriUISettingTemplateView *)&v13 layoutSubviews];
  [(SiriUISelectionTemplateView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(SiriUIBaseTemplateView *)self templatedSuperview];
  [v11 templatedContentMargins];

  v12 = [(SiriUISelectionTemplateView *)self semanticContentAttribute];
  [(UIImageView *)self->_checkmarkImageView sizeThatFits:v8, v10];
  if (v12 != 4)
  {
    v14.origin.x = v4;
    v14.origin.y = v6;
    v14.size.width = v8;
    v14.size.height = v10;
    CGRectGetWidth(v14);
    [(UIImageView *)self->_checkmarkImageView frame];
    CGRectGetWidth(v15);
  }

  UIRectCenteredYInRect();
  [(UIImageView *)self->_checkmarkImageView setFrame:?];
  [(UIButton *)self->_selectionButton setFrame:v4, v6, v8, v10];
}

@end