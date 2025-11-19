@interface SiriUITextTemplateView
- (SiriUITextTemplateView)initWithDataSource:(id)a3;
- (void)_setupDisclosureButton;
- (void)layoutDetailText;
- (void)layoutSubviews;
- (void)reloadData;
- (void)setupDisclosureIndicator;
@end

@implementation SiriUITextTemplateView

- (SiriUITextTemplateView)initWithDataSource:(id)a3
{
  v5.receiver = self;
  v5.super_class = SiriUITextTemplateView;
  v3 = [(SiriUILabelStackTemplateView *)&v5 initWithDataSource:a3];
  [(SiriUITextTemplateView *)v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  return v3;
}

- (void)layoutSubviews
{
  v9.receiver = self;
  v9.super_class = SiriUITextTemplateView;
  [(SiriUITextTemplateView *)&v9 layoutSubviews];
  [(SiriUITextTemplateView *)self bounds];
  x = v10.origin.x;
  y = v10.origin.y;
  width = v10.size.width;
  height = v10.size.height;
  disclosureButton = self->_disclosureButton;
  v8 = CGRectGetWidth(v10);
  v11.origin.x = x;
  v11.origin.y = y;
  v11.size.width = width;
  v11.size.height = height;
  [(UIButton *)disclosureButton setFrame:0.0, 0.0, v8, CGRectGetHeight(v11)];
}

- (void)setupDisclosureIndicator
{
  v3 = objc_alloc(MEMORY[0x277D755E8]);
  v4 = MEMORY[0x277D755B8];
  v5 = [MEMORY[0x277D75348] siriui_platterGlyphColor];
  v6 = [v4 siriui_semiTransparentChevronImageWithColor:v5 allowNaturalLayout:0];
  v7 = [v3 initWithImage:v6];
  chevronView = self->_chevronView;
  self->_chevronView = v7;

  [(UIImageView *)self->_chevronView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIImageView *)self->_chevronView setContentMode:4];
  [(SiriUILabelStackTemplateView *)self insertTrailingView:self->_chevronView withMargins:0.0, -7.0, 0.0, 0.0];
  v9 = self->_chevronView;
  LODWORD(v10) = 1144750080;

  [(UIImageView *)v9 setContentHuggingPriority:0 forAxis:v10];
}

- (void)_setupDisclosureButton
{
  v3 = objc_alloc_init(MEMORY[0x277D75220]);
  disclosureButton = self->_disclosureButton;
  self->_disclosureButton = v3;

  [(UIButton *)self->_disclosureButton setTranslatesAutoresizingMaskIntoConstraints:0];
  [(SiriUITextTemplateView *)self addSubview:self->_disclosureButton];
  v5 = [(UIButton *)self->_disclosureButton siriui_pinToSuperviewWithEdgeInsets:*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)];
}

- (void)layoutDetailText
{
  v3 = [(SiriUIBaseTemplateView *)self dataSource];
  v4 = [v3 detailText];
  v5 = [v4 length];

  if (v5 && !self->_detailTextLabel)
  {
    v6 = [MEMORY[0x277D756B8] siriui_configuredBodyLabel];
    detailTextLabel = self->_detailTextLabel;
    self->_detailTextLabel = v6;

    [(UILabel *)self->_detailTextLabel setUseSecondaryTextColor];
    [(UILabel *)self->_detailTextLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v8) = 1144750080;
    [(UILabel *)self->_detailTextLabel setContentHuggingPriority:0 forAxis:v8];
    LODWORD(v9) = 1132068864;
    [(UILabel *)self->_detailTextLabel setContentCompressionResistancePriority:0 forAxis:v9];
    [(UILabel *)self->_detailTextLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v10 = self->_detailTextLabel;
    v11 = [(SiriUIBaseTemplateView *)self dataSource];
    v12 = [v11 detailText];
    [(UILabel *)v10 setText:v12];

    [(UILabel *)self->_detailTextLabel sizeToFit];
    v13 = self->_detailTextLabel;
    v14 = *MEMORY[0x277D768C8];
    v15 = *(MEMORY[0x277D768C8] + 8);
    v16 = *(MEMORY[0x277D768C8] + 16);
    v17 = *(MEMORY[0x277D768C8] + 24);

    [(SiriUILabelStackTemplateView *)self insertTrailingView:v13 withMargins:v14, v15, v16, v17];
  }
}

- (void)reloadData
{
  v5.receiver = self;
  v5.super_class = SiriUITextTemplateView;
  [(SiriUILabelStackTemplateView *)&v5 reloadData];
  [(SiriUITextTemplateView *)self layoutDetailText];
  v3 = [(SiriUIBaseTemplateView *)self dataSource];
  v4 = [v3 showsDisclosureIndicator];

  if (v4)
  {
    [(SiriUITextTemplateView *)self setupDisclosureIndicator];
    [(SiriUITextTemplateView *)self _setupDisclosureButton];
  }
}

@end