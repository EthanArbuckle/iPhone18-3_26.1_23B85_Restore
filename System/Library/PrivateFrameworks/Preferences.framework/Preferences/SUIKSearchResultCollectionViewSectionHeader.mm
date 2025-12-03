@interface SUIKSearchResultCollectionViewSectionHeader
- (SUIKSearchResultCollectionViewSectionHeader)init;
- (SUIKSearchResultCollectionViewSectionHeader)initWithCoder:(id)coder;
- (SUIKSearchResultCollectionViewSectionHeader)initWithFrame:(CGRect)frame;
- (void)_commonInit;
- (void)applyLayoutAttributes:(id)attributes;
- (void)prepareForReuse;
- (void)setCategoryImage:(id)image;
@end

@implementation SUIKSearchResultCollectionViewSectionHeader

- (SUIKSearchResultCollectionViewSectionHeader)init
{
  v5.receiver = self;
  v5.super_class = SUIKSearchResultCollectionViewSectionHeader;
  v2 = [(SUIKSearchResultCollectionViewSectionHeader *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(SUIKSearchResultCollectionViewSectionHeader *)v2 _commonInit];
  }

  return v3;
}

- (SUIKSearchResultCollectionViewSectionHeader)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = SUIKSearchResultCollectionViewSectionHeader;
  v3 = [(SUIKSearchResultCollectionViewSectionHeader *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(SUIKSearchResultCollectionViewSectionHeader *)v3 _commonInit];
  }

  return v4;
}

- (SUIKSearchResultCollectionViewSectionHeader)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = SUIKSearchResultCollectionViewSectionHeader;
  v3 = [(SUIKSearchResultCollectionViewSectionHeader *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(SUIKSearchResultCollectionViewSectionHeader *)v3 _commonInit];
  }

  return v4;
}

- (void)_commonInit
{
  if (_commonInit_onceToken != -1)
  {
    [SUIKSearchResultCollectionViewSectionHeader _commonInit];
  }

  v3 = objc_alloc(MEMORY[0x1E69DCAE0]);
  v4 = [v3 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  [(SUIKSearchResultCollectionViewSectionHeader *)self setCategoryImageView:v4];

  categoryImageView = [(SUIKSearchResultCollectionViewSectionHeader *)self categoryImageView];
  [categoryImageView setTranslatesAutoresizingMaskIntoConstraints:0];

  categoryImageView2 = [(SUIKSearchResultCollectionViewSectionHeader *)self categoryImageView];
  [(SUIKSearchResultCollectionViewSectionHeader *)self addSubview:categoryImageView2];

  array = [MEMORY[0x1E695DF70] array];
  categoryImageView3 = [(SUIKSearchResultCollectionViewSectionHeader *)self categoryImageView];
  leadingAnchor = [categoryImageView3 leadingAnchor];
  leadingAnchor2 = [(SUIKSearchResultCollectionViewSectionHeader *)self leadingAnchor];
  v10 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [array addObject:v10];

  categoryImageView4 = [(SUIKSearchResultCollectionViewSectionHeader *)self categoryImageView];
  trailingAnchor = [categoryImageView4 trailingAnchor];
  trailingAnchor2 = [(SUIKSearchResultCollectionViewSectionHeader *)self trailingAnchor];
  v14 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [array addObject:v14];

  categoryImageView5 = [(SUIKSearchResultCollectionViewSectionHeader *)self categoryImageView];
  topAnchor = [categoryImageView5 topAnchor];
  topAnchor2 = [(SUIKSearchResultCollectionViewSectionHeader *)self topAnchor];
  v18 = [topAnchor constraintEqualToSystemSpacingBelowAnchor:topAnchor2 multiplier:1.0];
  [array addObject:v18];

  bottomAnchor = [(SUIKSearchResultCollectionViewSectionHeader *)self bottomAnchor];
  categoryImageView6 = [(SUIKSearchResultCollectionViewSectionHeader *)self categoryImageView];
  bottomAnchor2 = [categoryImageView6 bottomAnchor];
  v22 = [bottomAnchor constraintEqualToSystemSpacingBelowAnchor:bottomAnchor2 multiplier:1.0];
  [array addObject:v22];

  lastObject = [array lastObject];
  LODWORD(v24) = 1148829696;
  [lastObject setPriority:v24];

  categoryImageView7 = [(SUIKSearchResultCollectionViewSectionHeader *)self categoryImageView];
  heightAnchor = [categoryImageView7 heightAnchor];
  v27 = [heightAnchor constraintEqualToConstant:*&_commonInit_iconSize_1];
  [array addObject:v27];

  categoryImageView8 = [(SUIKSearchResultCollectionViewSectionHeader *)self categoryImageView];
  widthAnchor = [categoryImageView8 widthAnchor];
  v30 = [widthAnchor constraintEqualToConstant:*&_commonInit_iconSize_0];
  [array addObject:v30];

  [MEMORY[0x1E696ACD8] activateConstraints:array];
}

void __58__SUIKSearchResultCollectionViewSectionHeader__commonInit__block_invoke()
{
  v0 = PSBlankIconImage();
  [v0 size];
  _commonInit_iconSize_0 = v1;
  _commonInit_iconSize_1 = v2;

  v3 = [MEMORY[0x1E69DCC28] subtitleCellConfiguration];
  v4 = _commonInit_cellConfig;
  _commonInit_cellConfig = v3;
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = SUIKSearchResultCollectionViewSectionHeader;
  [(SUIKSearchResultCollectionViewSectionHeader *)&v4 prepareForReuse];
  categoryImageView = [(SUIKSearchResultCollectionViewSectionHeader *)self categoryImageView];
  [categoryImageView setImage:0];
}

- (void)setCategoryImage:(id)image
{
  imageCopy = image;
  categoryImageView = [(SUIKSearchResultCollectionViewSectionHeader *)self categoryImageView];
  [categoryImageView setImage:imageCopy];
}

- (void)applyLayoutAttributes:(id)attributes
{
  v7.receiver = self;
  v7.super_class = SUIKSearchResultCollectionViewSectionHeader;
  attributesCopy = attributes;
  [(SUIKSearchResultCollectionViewSectionHeader *)&v7 applyLayoutAttributes:attributesCopy];
  zIndex = [attributesCopy zIndex];

  layer = [(SUIKSearchResultCollectionViewSectionHeader *)self layer];
  [layer setZPosition:zIndex];
}

@end