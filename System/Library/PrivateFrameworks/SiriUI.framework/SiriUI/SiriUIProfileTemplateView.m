@interface SiriUIProfileTemplateView
- (SiriUIProfileTemplateView)initWithDataSource:(id)a3;
- (int64_t)layoutStyle;
- (void)layoutImage;
- (void)reloadData;
@end

@implementation SiriUIProfileTemplateView

- (SiriUIProfileTemplateView)initWithDataSource:(id)a3
{
  v4.receiver = self;
  v4.super_class = SiriUIProfileTemplateView;
  return [(SiriUILabelStackTemplateView *)&v4 initWithDataSource:a3];
}

- (void)layoutImage
{
  v3 = [(SiriUIBaseTemplateView *)self dataSource];
  v4 = [v3 imageURI];
  if (v4)
  {
    v5 = v4;
    v6 = [v3 imageURI];
    v7 = [v6 length];

    if (v7)
    {
      if ([v3 imageStyleValue])
      {
        v8 = 60.0;
      }

      else
      {
        v8 = 40.0;
      }

      v9 = objc_alloc(MEMORY[0x277D755E8]);
      v10 = [v9 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
      imageView = self->_imageView;
      self->_imageView = v10;

      v12 = [(UIImageView *)self->_imageView siriui_addHeightConstraint:v8];
      v13 = [(UIImageView *)self->_imageView siriui_addWidthConstraint:v8];
      [(UIImageView *)self->_imageView setContentMode:2];
      [(UIImageView *)self->_imageView setTranslatesAutoresizingMaskIntoConstraints:0];
      v14 = [(UIImageView *)self->_imageView layer];
      [v14 setCornerRadius:v8 * 0.5];

      [(UIImageView *)self->_imageView setClipsToBounds:1];
      v15 = [objc_alloc(MEMORY[0x277CBDC70]) initWithStyle:0 diameter:v8];
      v16 = self->_imageView;
      v17 = [v15 silhouetteMonogram];
      [(UIImageView *)v16 setImage:v17];

      v18 = [v3 alignmentValue];
      v19 = self->_imageView;
      if (v18 == 1)
      {
        [(SiriUILabelStackTemplateView *)self insertTopView:self->_imageView];
        v20 = [(UIImageView *)self->_imageView siriui_centerHorizontallyWithItem:self withMargin:0.0];
      }

      else
      {
        v21 = [(SiriUIBaseTemplateView *)self templatedSuperview];
        [v21 templatedContentMargins];
        [(SiriUILabelStackTemplateView *)self insertLeadingView:v19 withMargins:?];
      }

      [(SiriUIProfileTemplateView *)self setNeedsUpdateConstraints];
      objc_initWeak(&location, self);
      v22 = [(SiriUIProfileTemplateView *)self traitCollection];
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __40__SiriUIProfileTemplateView_layoutImage__block_invoke;
      v23[3] = &unk_279C5A188;
      objc_copyWeak(&v24, &location);
      [v3 fetchUIImageForTraitCollection:v22 completion:v23];

      objc_destroyWeak(&v24);
      objc_destroyWeak(&location);
    }
  }
}

void __40__SiriUIProfileTemplateView_layoutImage__block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (v4 && WeakRetained)
  {
    [WeakRetained[67] setImage:v4];
  }
}

- (void)reloadData
{
  v3.receiver = self;
  v3.super_class = SiriUIProfileTemplateView;
  [(SiriUILabelStackTemplateView *)&v3 reloadData];
  [(SiriUIProfileTemplateView *)self layoutImage];
  [(SiriUIProfileTemplateView *)self setNeedsUpdateConstraints];
}

- (int64_t)layoutStyle
{
  v2 = [(SiriUIBaseTemplateView *)self dataSource];
  v3 = [v2 alignmentValue];

  if (v3 == 1)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

@end