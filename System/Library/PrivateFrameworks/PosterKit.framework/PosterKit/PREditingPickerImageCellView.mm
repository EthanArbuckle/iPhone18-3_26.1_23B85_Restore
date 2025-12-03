@interface PREditingPickerImageCellView
- (PREditingPickerImageCellView)initWithFrame:(CGRect)frame;
- (void)_configureWithSystemImage:(id)image;
- (void)configureWithSystemImageNamed:(id)named;
- (void)configureWithSystemImageNamed:(id)named configuration:(id)configuration;
@end

@implementation PREditingPickerImageCellView

- (PREditingPickerImageCellView)initWithFrame:(CGRect)frame
{
  v27[5] = *MEMORY[0x1E69E9840];
  v26.receiver = self;
  v26.super_class = PREditingPickerImageCellView;
  v3 = [(PREditingPickerCellView *)&v26 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    contentImageView = v3->_contentImageView;
    v3->_contentImageView = v4;

    LODWORD(v6) = 1144750080;
    [(UIImageView *)v3->_contentImageView setContentCompressionResistancePriority:0 forAxis:v6];
    LODWORD(v7) = 1144750080;
    [(UIImageView *)v3->_contentImageView setContentCompressionResistancePriority:1 forAxis:v7];
    [(UIImageView *)v3->_contentImageView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(PREditingPickerImageCellView *)v3 addSubview:v3->_contentImageView];
    v19 = MEMORY[0x1E696ACD8];
    topAnchor = [(UIImageView *)v3->_contentImageView topAnchor];
    topAnchor2 = [(PREditingPickerImageCellView *)v3 topAnchor];
    v23 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:9.0];
    v27[0] = v23;
    bottomAnchor = [(UIImageView *)v3->_contentImageView bottomAnchor];
    bottomAnchor2 = [(PREditingPickerImageCellView *)v3 bottomAnchor];
    v20 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-9.0];
    v27[1] = v20;
    centerXAnchor = [(UIImageView *)v3->_contentImageView centerXAnchor];
    centerXAnchor2 = [(PREditingPickerImageCellView *)v3 centerXAnchor];
    v9 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v27[2] = v9;
    leadingAnchor = [(UIImageView *)v3->_contentImageView leadingAnchor];
    leadingAnchor2 = [(PREditingPickerImageCellView *)v3 leadingAnchor];
    v12 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:9.0];
    v27[3] = v12;
    trailingAnchor = [(UIImageView *)v3->_contentImageView trailingAnchor];
    trailingAnchor2 = [(PREditingPickerImageCellView *)v3 trailingAnchor];
    v15 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-9.0];
    v27[4] = v15;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:5];
    [v19 activateConstraints:v16];
  }

  return v3;
}

- (void)configureWithSystemImageNamed:(id)named
{
  v4 = [MEMORY[0x1E69DCAB8] _systemImageNamed:named];
  [(PREditingPickerImageCellView *)self _configureWithSystemImage:v4];
}

- (void)configureWithSystemImageNamed:(id)named configuration:(id)configuration
{
  v5 = [MEMORY[0x1E69DCAB8] _systemImageNamed:named withConfiguration:configuration];
  [(PREditingPickerImageCellView *)self _configureWithSystemImage:v5];
}

- (void)_configureWithSystemImage:(id)image
{
  v4 = MEMORY[0x1E69DC888];
  imageCopy = image;
  labelColor = [v4 labelColor];
  v7 = [imageCopy imageWithTintColor:labelColor renderingMode:1];

  [(UIImageView *)self->_contentImageView setImage:v7];
}

@end