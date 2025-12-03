@interface RUIModernHeaderView
- (RUIModernHeaderView)initWithTitle:(id)title detailText:(id)text icon:(id)icon;
- (double)headerHeightForWidth:(double)width inView:(id)view;
- (double)iconToHeaderLabelPadding;
- (double)topPadding;
- (void)setDetailText:(id)text attributes:(id)attributes;
- (void)setIconImage:(id)image;
- (void)setSubHeaderText:(id)text baseURL:(id)l attributes:(id)attributes;
- (void)setText:(id)text baseURL:(id)l attributes:(id)attributes;
- (void)updateDetailText;
@end

@implementation RUIModernHeaderView

- (RUIModernHeaderView)initWithTitle:(id)title detailText:(id)text icon:(id)icon
{
  textCopy = text;
  v17.receiver = self;
  v17.super_class = RUIModernHeaderView;
  v10 = [(RUIModernHeaderView *)&v17 initWithTitle:title detailText:textCopy icon:icon];
  v11 = v10;
  if (v10)
  {
    headerLabel = [(RUIModernHeaderView *)v10 headerLabel];
    [headerLabel _setHyphenationFactor:0.0];

    objc_storeStrong(&v11->_detailText, text);
    v13 = +[RUIPlatform isSolariumEnabled];
    v14 = 60.0;
    if (v13)
    {
      v14 = 80.0;
    }

    v11->_iconHeight = v14;
    v16.receiver = v11;
    v16.super_class = RUIModernHeaderView;
    [(RUIModernHeaderView *)&v16 setAllowFullWidthIcon:1];
  }

  return v11;
}

- (double)topPadding
{
  v2 = +[RUIPlatform isSolariumEnabled];
  result = 10.0;
  if (v2)
  {
    return 12.0;
  }

  return result;
}

- (double)iconToHeaderLabelPadding
{
  v2 = +[RUIPlatform isSolariumEnabled];
  result = 40.0;
  if (!v2)
  {
    return 10.0;
  }

  return result;
}

- (double)headerHeightForWidth:(double)width inView:(id)view
{
  LODWORD(v4) = 1148846080;
  LODWORD(v5) = 1112014848;
  [(RUIModernHeaderView *)self systemLayoutSizeFittingSize:view withHorizontalFittingPriority:width verticalFittingPriority:*(MEMORY[0x277D76C78] + 8), v4, v5];
  return v6;
}

- (void)setText:(id)text baseURL:(id)l attributes:(id)attributes
{
  objc_storeStrong(&self->_detailText, text);
  lCopy = l;
  [(RUIModernHeaderView *)self setBaseURL:lCopy];

  [(RUIModernHeaderView *)self updateDetailText];
}

- (void)setDetailText:(id)text attributes:(id)attributes
{
  if (_isInternalInstall())
  {
    v4 = _RUILoggingFacility();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_21B93D000, v4, OS_LOG_TYPE_DEFAULT, "Detail text is not supported with setupAssistant-style title headers", v5, 2u);
    }
  }
}

- (void)setSubHeaderText:(id)text baseURL:(id)l attributes:(id)attributes
{
  objc_storeStrong(&self->_subHeaderText, text);
  lCopy = l;
  [(RUIModernHeaderView *)self setBaseURL:lCopy];

  [(RUIModernHeaderView *)self updateDetailText];
}

- (void)setIconImage:(id)image
{
  v3.receiver = self;
  v3.super_class = RUIModernHeaderView;
  [(RUIModernHeaderView *)&v3 setIcon:image accessibilityLabel:0];
}

- (void)updateDetailText
{
  v3 = 576;
  if ([(NSString *)self->_detailText length]&& [(NSString *)self->_subHeaderText length])
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@\n\n%@", self->_detailText, self->_subHeaderText];
  }

  else
  {
    if (![(NSString *)self->_detailText length])
    {
      v3 = 584;
      if (![(NSString *)self->_subHeaderText length])
      {
        v5 = 0;
        goto LABEL_8;
      }
    }

    v4 = *(&self->super.super.super.super.isa + v3);
  }

  v5 = v4;
LABEL_8:
  v8.receiver = self;
  v8.super_class = RUIModernHeaderView;
  [(RUIModernHeaderView *)&v8 setDetailText:v5];
  detailLabel = [(RUIModernHeaderView *)self detailLabel];
  baseURL = [(RUIModernHeaderView *)self baseURL];
  [detailLabel setMarkdown:v5 baseURL:baseURL];
}

@end