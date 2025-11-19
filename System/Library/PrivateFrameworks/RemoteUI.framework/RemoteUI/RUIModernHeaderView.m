@interface RUIModernHeaderView
- (RUIModernHeaderView)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5;
- (double)headerHeightForWidth:(double)a3 inView:(id)a4;
- (double)iconToHeaderLabelPadding;
- (double)topPadding;
- (void)setDetailText:(id)a3 attributes:(id)a4;
- (void)setIconImage:(id)a3;
- (void)setSubHeaderText:(id)a3 baseURL:(id)a4 attributes:(id)a5;
- (void)setText:(id)a3 baseURL:(id)a4 attributes:(id)a5;
- (void)updateDetailText;
@end

@implementation RUIModernHeaderView

- (RUIModernHeaderView)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5
{
  v9 = a4;
  v17.receiver = self;
  v17.super_class = RUIModernHeaderView;
  v10 = [(RUIModernHeaderView *)&v17 initWithTitle:a3 detailText:v9 icon:a5];
  v11 = v10;
  if (v10)
  {
    v12 = [(RUIModernHeaderView *)v10 headerLabel];
    [v12 _setHyphenationFactor:0.0];

    objc_storeStrong(&v11->_detailText, a4);
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

- (double)headerHeightForWidth:(double)a3 inView:(id)a4
{
  LODWORD(v4) = 1148846080;
  LODWORD(v5) = 1112014848;
  [(RUIModernHeaderView *)self systemLayoutSizeFittingSize:a4 withHorizontalFittingPriority:a3 verticalFittingPriority:*(MEMORY[0x277D76C78] + 8), v4, v5];
  return v6;
}

- (void)setText:(id)a3 baseURL:(id)a4 attributes:(id)a5
{
  objc_storeStrong(&self->_detailText, a3);
  v7 = a4;
  [(RUIModernHeaderView *)self setBaseURL:v7];

  [(RUIModernHeaderView *)self updateDetailText];
}

- (void)setDetailText:(id)a3 attributes:(id)a4
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

- (void)setSubHeaderText:(id)a3 baseURL:(id)a4 attributes:(id)a5
{
  objc_storeStrong(&self->_subHeaderText, a3);
  v7 = a4;
  [(RUIModernHeaderView *)self setBaseURL:v7];

  [(RUIModernHeaderView *)self updateDetailText];
}

- (void)setIconImage:(id)a3
{
  v3.receiver = self;
  v3.super_class = RUIModernHeaderView;
  [(RUIModernHeaderView *)&v3 setIcon:a3 accessibilityLabel:0];
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
  v6 = [(RUIModernHeaderView *)self detailLabel];
  v7 = [(RUIModernHeaderView *)self baseURL];
  [v6 setMarkdown:v5 baseURL:v7];
}

@end