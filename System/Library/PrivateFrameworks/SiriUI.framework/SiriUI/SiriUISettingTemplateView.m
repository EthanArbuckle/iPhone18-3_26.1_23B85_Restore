@interface SiriUISettingTemplateView
- (SiriUISettingTemplateView)initWithDataSource:(id)a3;
- (void)layoutSubviews;
- (void)reloadData;
@end

@implementation SiriUISettingTemplateView

- (SiriUISettingTemplateView)initWithDataSource:(id)a3
{
  v9.receiver = self;
  v9.super_class = SiriUISettingTemplateView;
  v3 = [(SiriUIBaseTemplateView *)&v9 initWithDataSource:a3];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277D756B8]);
    textLabel = v3->_textLabel;
    v3->_textLabel = v4;

    v6 = v3->_textLabel;
    v7 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
    [(UILabel *)v6 setFont:v7];

    [(SiriUISettingTemplateView *)v3 addSubview:v3->_textLabel];
  }

  return v3;
}

- (void)reloadData
{
  v6.receiver = self;
  v6.super_class = SiriUISettingTemplateView;
  [(SiriUIBaseTemplateView *)&v6 reloadData];
  v3 = [(SiriUIBaseTemplateView *)self dataSource];
  textLabel = self->_textLabel;
  v5 = [v3 text];
  [(UILabel *)textLabel setText:v5];

  [(SiriUISettingTemplateView *)self setNeedsLayout];
}

- (void)layoutSubviews
{
  v13.receiver = self;
  v13.super_class = SiriUISettingTemplateView;
  [(SiriUISettingTemplateView *)&v13 layoutSubviews];
  [(SiriUISettingTemplateView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(SiriUIBaseTemplateView *)self templatedSuperview];
  [v11 templatedContentMargins];

  v12 = [(SiriUISettingTemplateView *)self semanticContentAttribute];
  [(UILabel *)self->_textLabel sizeThatFits:v8, v10];
  if (v12 == 4)
  {
    v14.origin.x = v4;
    v14.origin.y = v6;
    v14.size.width = v8;
    v14.size.height = v10;
    CGRectGetWidth(v14);
  }

  UIRectCenteredYInRect();
  [(UILabel *)self->_textLabel setFrame:?];
}

@end