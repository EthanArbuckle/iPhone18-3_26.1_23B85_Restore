@interface SiriUISashHeaderView
+ (id)reuseIdentifier;
- (SiriUISashHeaderView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)setTitleText:(id)a3;
@end

@implementation SiriUISashHeaderView

- (SiriUISashHeaderView)initWithFrame:(CGRect)a3
{
  v11.receiver = self;
  v11.super_class = SiriUISashHeaderView;
  v3 = [(SiriUISashHeaderView *)&v11 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277D756B8]);
    headerLabel = v3->_headerLabel;
    v3->_headerLabel = v4;

    v6 = v3->_headerLabel;
    v7 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76968]];
    [(UILabel *)v6 setFont:v7];

    v8 = v3->_headerLabel;
    v9 = [MEMORY[0x277D75348] siriui_textColor];
    [(UILabel *)v8 setTextColor:v9];

    [(UILabel *)v3->_headerLabel setTextAlignment:0];
    [(UILabel *)v3->_headerLabel setNumberOfLines:1];
    [(SiriUISashHeaderView *)v3 addSubview:v3->_headerLabel];
  }

  return v3;
}

- (void)layoutSubviews
{
  v10.receiver = self;
  v10.super_class = SiriUISashHeaderView;
  [(SiriUISashHeaderView *)&v10 layoutSubviews];
  [(SiriUISashHeaderView *)self bounds];
  v4 = v3;
  v6 = v5 + 16.0;
  v8 = v7 - (16.0 + 16.0);
  [(UILabel *)self->_headerLabel _setLastLineBaselineFrameOriginY:23.0];
  [(UILabel *)self->_headerLabel sizeThatFits:v8, v4];
  headerLabel = self->_headerLabel;
  [(UILabel *)headerLabel frame];
  [(UILabel *)headerLabel setFrame:v6];
}

- (void)setTitleText:(id)a3
{
  [(UILabel *)self->_headerLabel setText:a3];

  [(SiriUISashHeaderView *)self setNeedsLayout];
}

+ (id)reuseIdentifier
{
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  v4 = [v3 stringByAppendingString:@"ReuseIdentifier"];

  return v4;
}

@end