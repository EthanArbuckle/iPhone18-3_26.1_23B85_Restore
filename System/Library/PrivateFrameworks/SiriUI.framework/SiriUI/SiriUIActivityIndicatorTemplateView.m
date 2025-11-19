@interface SiriUIActivityIndicatorTemplateView
- (SiriUIActivityIndicatorTemplateView)initWithDataSource:(id)a3;
- (void)layoutSubviews;
- (void)reloadData;
@end

@implementation SiriUIActivityIndicatorTemplateView

- (SiriUIActivityIndicatorTemplateView)initWithDataSource:(id)a3
{
  v12.receiver = self;
  v12.super_class = SiriUIActivityIndicatorTemplateView;
  v3 = [(SiriUIBaseTemplateView *)&v12 initWithDataSource:a3];
  if (v3)
  {
    v4 = [MEMORY[0x277D756B8] siriui_configuredBodyLabel];
    detailTextLabel = v3->_detailTextLabel;
    v3->_detailTextLabel = v4;

    [(UILabel *)v3->_detailTextLabel setUseSecondaryTextColor];
    v6 = v3->_detailTextLabel;
    v7 = [(SiriUIBaseTemplateView *)v3 dataSource];
    v8 = [v7 detailText];
    [(UILabel *)v6 setText:v8];

    [(SiriUIActivityIndicatorTemplateView *)v3 addSubview:v3->_detailTextLabel];
    v9 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
    spinnerView = v3->_spinnerView;
    v3->_spinnerView = v9;

    [(UIActivityIndicatorView *)v3->_spinnerView startAnimating];
    [(SiriUIActivityIndicatorTemplateView *)v3 addSubview:v3->_spinnerView];
  }

  return v3;
}

- (void)layoutSubviews
{
  v18.receiver = self;
  v18.super_class = SiriUIActivityIndicatorTemplateView;
  [(SiriUIActivityIndicatorTemplateView *)&v18 layoutSubviews];
  [(SiriUIActivityIndicatorTemplateView *)self bounds];
  v4 = v3;
  v6 = v5;
  [(UILabel *)self->_detailTextLabel sizeToFit];
  [(UILabel *)self->_detailTextLabel frame];
  [(UILabel *)self->_detailTextLabel setFrame:v7 * -0.5 + v4 * 0.5, v6 * 0.5];
  [(UIActivityIndicatorView *)self->_spinnerView sizeToFit];
  [(UIActivityIndicatorView *)self->_spinnerView frame];
  v9 = v8;
  v11 = v10;
  v12 = [(UILabel *)self->_detailTextLabel text];
  v13 = [v12 length];

  if (v13)
  {
    [(UILabel *)self->_detailTextLabel frame];
    v15 = v14 - v11 + -10.0;
  }

  else
  {
    v15 = v11 * -0.5 + v6 * 0.5;
  }

  [(UIActivityIndicatorView *)self->_spinnerView setFrame:v9 * -0.5 + v4 * 0.5, v15, v9, v11];
  spinnerView = self->_spinnerView;
  CGAffineTransformMakeScale(&v17, 1.5, 1.5);
  [(UIActivityIndicatorView *)spinnerView setTransform:&v17];
}

- (void)reloadData
{
  v6.receiver = self;
  v6.super_class = SiriUIActivityIndicatorTemplateView;
  [(SiriUIBaseTemplateView *)&v6 reloadData];
  detailTextLabel = self->_detailTextLabel;
  v4 = [(SiriUIBaseTemplateView *)self dataSource];
  v5 = [v4 detailText];
  [(UILabel *)detailTextLabel setText:v5];
}

@end