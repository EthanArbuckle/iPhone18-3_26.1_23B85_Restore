@interface SiriUIDetailLabelComponentView
+ (id)viewForComponent:(id)component;
- (void)addSubviewsForComponentModel:(id)model;
@end

@implementation SiriUIDetailLabelComponentView

+ (id)viewForComponent:(id)component
{
  componentCopy = component;
  v5 = [self alloc];
  v6 = [v5 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v6 addSubviewsForComponentModel:componentCopy];

  return v6;
}

- (void)addSubviewsForComponentModel:(id)model
{
  modelCopy = model;
  style = [modelCopy style];
  if (style > 1)
  {
    if (style == 2)
    {
      siriui_configuredSubheadLabel = [MEMORY[0x277D756B8] siriui_configuredSubheadLabel];
      goto LABEL_11;
    }

    if (style == 3)
    {
      siriui_configuredSubheadLabel = [MEMORY[0x277D756B8] siriui_configuredCaptionLabel];
      goto LABEL_11;
    }
  }

  else
  {
    if (!style)
    {
      siriui_configuredSubheadLabel = [MEMORY[0x277D756B8] siriui_configuredHeadlineLabel];
      goto LABEL_11;
    }

    if (style == 1)
    {
      siriui_configuredSubheadLabel = [MEMORY[0x277D756B8] siriui_configuredBodyLabel];
LABEL_11:
      mainLabel = self->_mainLabel;
      self->_mainLabel = siriui_configuredSubheadLabel;
    }
  }

  v7 = self->_mainLabel;
  if (v7)
  {
    [(UILabel *)v7 setTranslatesAutoresizingMaskIntoConstraints:0];
    v8 = self->_mainLabel;
    text = [modelCopy text];
    [(UILabel *)v8 setText:text];

    [(SiriUIDetailLabelComponentView *)self addSubview:self->_mainLabel];
  }

  siriui_configuredBodyLabel = [MEMORY[0x277D756B8] siriui_configuredBodyLabel];
  detailLabel = self->_detailLabel;
  self->_detailLabel = siriui_configuredBodyLabel;

  [(UILabel *)self->_detailLabel setUseSecondaryTextColor];
  [(SiriUIDetailLabelComponentView *)self addSubview:self->_detailLabel];
  LODWORD(v12) = 1132068864;
  [(UILabel *)self->_mainLabel setContentCompressionResistancePriority:0 forAxis:v12];
  v13 = self->_detailLabel;
  detailText = [modelCopy detailText];
  [(UILabel *)v13 setText:detailText];

  if (self->_detailLabel)
  {
    [(SiriUIDetailLabelComponentView *)self addSubview:?];
    [(UILabel *)self->_detailLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v15 = [(UILabel *)self->_detailLabel siriui_centerVerticallyWithItem:self->_mainLabel withMargin:0.0];
  }

  v16 = [(UILabel *)self->_mainLabel siriui_pinToSuperviewWithEdgeInsets:*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)];
  v17 = [v16 objectForKeyedSubscript:&unk_287A0D3B8];
  [(SiriUIDetailLabelComponentView *)self removeConstraint:v17];

  v18 = [(UILabel *)self->_mainLabel siriui_pinTrailingToLeadingEdgeOf:self->_detailLabel withMargin:0.0];
  v19 = [(UILabel *)self->_detailLabel siriui_pinTrailingToTrailingEdgeOf:self withMargin:0.0];
}

@end