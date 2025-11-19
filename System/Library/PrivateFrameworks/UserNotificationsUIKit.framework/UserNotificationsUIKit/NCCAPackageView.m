@interface NCCAPackageView
- (CGSize)sizeThatFits:(CGSize)a3;
- (NCCAPackageView)initWithPackageNamed:(id)a3 inBundle:(id)a4;
- (void)_setupPackageNamed:(id)a3 inBundle:(id)a4;
- (void)layoutSubviews;
- (void)setScale:(double)a3;
- (void)setStateName:(id)a3;
@end

@implementation NCCAPackageView

- (NCCAPackageView)initWithPackageNamed:(id)a3 inBundle:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = NCCAPackageView;
  v8 = [(NCCAPackageView *)&v13 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v9 = v8;
  if (v8)
  {
    v8->_scale = 1.0;
    v10 = objc_alloc_init(MEMORY[0x277D75D18]);
    packageContentView = v9->_packageContentView;
    v9->_packageContentView = v10;

    [(NCCAPackageView *)v9 addSubview:v9->_packageContentView];
    [(NCCAPackageView *)v9 setUserInteractionEnabled:0];
    [(NCCAPackageView *)v9 _setupPackageNamed:v6 inBundle:v7];
  }

  return v9;
}

- (void)setStateName:(id)a3
{
  v5 = [(CALayer *)self->_packageLayer stateWithName:a3];
  LODWORD(v4) = 1.0;
  [(CAStateController *)self->_stateController setState:v5 ofLayer:self->_packageLayer transitionSpeed:v4];
}

- (void)setScale:(double)a3
{
  if (self->_scale != a3)
  {
    self->_scale = a3;
    [(NCCAPackageView *)self setNeedsLayout];
  }
}

- (void)layoutSubviews
{
  v6.receiver = self;
  v6.super_class = NCCAPackageView;
  [(NCCAPackageView *)&v6 layoutSubviews];
  packageContentView = self->_packageContentView;
  [(NCCAPackageView *)self bounds];
  UIRectGetCenter();
  [(UIView *)packageContentView setCenter:?];
  v4 = self->_packageContentView;
  CGAffineTransformMakeScale(&v5, self->_scale, self->_scale);
  [(UIView *)v4 setTransform:&v5];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  scale = self->_scale;
  [(CALayer *)self->_packageLayer bounds:a3.width];
  v5 = scale * CGRectGetHeight(v8);
  v6 = width;
  result.height = v5;
  result.width = v6;
  return result;
}

- (void)_setupPackageNamed:(id)a3 inBundle:(id)a4
{
  v5 = [a4 URLForResource:a3 withExtension:@"ca"];
  v6 = *MEMORY[0x277CDA7F8];
  v19 = 0;
  v7 = [MEMORY[0x277CD9F28] packageWithContentsOfURL:v5 type:v6 options:0 error:&v19];
  v8 = v19;
  package = self->_package;
  self->_package = v7;

  if (v8)
  {
    v10 = *MEMORY[0x277D77DB0];
    if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_ERROR))
    {
      [(NCCAPackageView *)v5 _setupPackageNamed:v8 inBundle:v10];
    }
  }

  [(CALayer *)self->_packageLayer removeFromSuperlayer];
  v11 = [(CAPackage *)self->_package rootLayer];
  [(CALayer *)v11 setGeometryFlipped:[(CAPackage *)self->_package isGeometryFlipped]];
  if ([(NCCAPackageView *)self _shouldReverseLayoutDirection])
  {
    CGAffineTransformMakeScale(&v18, -1.0, 1.0);
    [(CALayer *)v11 setAffineTransform:&v18];
  }

  v12 = [(UIView *)self->_packageContentView layer];
  [v12 addSublayer:v11];

  packageContentView = self->_packageContentView;
  [(CALayer *)v11 bounds];
  [(UIView *)packageContentView setBounds:?];
  packageLayer = self->_packageLayer;
  self->_packageLayer = v11;
  v15 = v11;

  v16 = [objc_alloc(MEMORY[0x277CD9FB8]) initWithLayer:v15];
  stateController = self->_stateController;
  self->_stateController = v16;

  [(NCCAPackageView *)self setNeedsLayout];
}

- (void)_setupPackageNamed:(os_log_t)log inBundle:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138543618;
  v4 = a1;
  v5 = 2114;
  v6 = a2;
  _os_log_error_impl(&dword_21E77E000, log, OS_LOG_TYPE_ERROR, "Cannot load CAPackage from %{public}@: %{public}@", &v3, 0x16u);
}

@end