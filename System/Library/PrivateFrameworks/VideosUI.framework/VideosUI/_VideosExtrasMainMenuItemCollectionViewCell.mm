@interface _VideosExtrasMainMenuItemCollectionViewCell
+ (id)_createLabelInCell:(id)cell;
- (CGSize)sizeThatFits:(CGSize)fits;
- (_VideosExtrasMainMenuItemCollectionViewCell)initWithFrame:(CGRect)frame;
- (void)dealloc;
- (void)safeAreaInsetsDidChange;
- (void)setSelected:(BOOL)selected;
@end

@implementation _VideosExtrasMainMenuItemCollectionViewCell

+ (id)_createLabelInCell:(id)cell
{
  cellCopy = cell;
  v4 = objc_alloc(MEMORY[0x1E69DCC10]);
  v5 = [v4 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v5 MPU_setAutomaticallyUpdatesTextStyleFontsToPreferredTextStyleFonts:1];
  if (cellCopy)
  {
    contentView = [cellCopy contentView];
    [contentView addSubview:v5];
    v7 = [MEMORY[0x1E696ACD8] constraintsByAttachingView:v5 toView:contentView alongEdges:10 insets:{*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)}];
    v8 = MEMORY[0x1E696ACD8];
    keyWindow = [*MEMORY[0x1E69DDA98] keyWindow];
    [keyWindow safeAreaInsets];
    v11 = [v8 constraintWithItem:v5 attribute:10 relatedBy:0 toItem:contentView attribute:10 multiplier:1.0 constant:v10 * -0.5];
    [cellCopy setTextLabelConstraint:v11];

    textLabelConstraint = [cellCopy textLabelConstraint];
    v13 = [v7 arrayByAddingObject:textLabelConstraint];
    [contentView addConstraints:v13];
  }

  return v5;
}

- (_VideosExtrasMainMenuItemCollectionViewCell)initWithFrame:(CGRect)frame
{
  v14.receiver = self;
  v14.super_class = _VideosExtrasMainMenuItemCollectionViewCell;
  v3 = [(_VideosExtrasMainMenuItemCollectionViewCell *)&v14 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    contentView = [(_VideosExtrasMainMenuItemCollectionViewCell *)v3 contentView];
    v6 = [objc_opt_class() _createLabelInCell:v4];
    textLabel = v4->_textLabel;
    v4->_textLabel = v6;

    layer = [contentView layer];
    [layer setAllowsGroupOpacity:0];

    layer2 = [contentView layer];
    [layer2 setAllowsGroupBlending:0];

    layer3 = [(_VideosExtrasMainMenuItemCollectionViewCell *)v4 layer];
    [layer3 setAllowsGroupOpacity:0];

    layer4 = [(_VideosExtrasMainMenuItemCollectionViewCell *)v4 layer];
    [layer4 setAllowsGroupBlending:0];

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v4 selector:sel__dynamicTypeChanged name:*MEMORY[0x1E69DDC48] object:0];
  }

  return v4;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = _VideosExtrasMainMenuItemCollectionViewCell;
  [(_VideosExtrasMainMenuItemCollectionViewCell *)&v4 dealloc];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(UILabel *)self->_textLabel sizeThatFits:fits.width, fits.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)safeAreaInsetsDidChange
{
  textLabelConstraint = [(_VideosExtrasMainMenuItemCollectionViewCell *)self textLabelConstraint];
  [(_VideosExtrasMainMenuItemCollectionViewCell *)self safeAreaInsets];
  [textLabelConstraint setConstant:v3 * -0.5];
}

- (void)setSelected:(BOOL)selected
{
  selectedCopy = selected;
  v10.receiver = self;
  v10.super_class = _VideosExtrasMainMenuItemCollectionViewCell;
  [(_VideosExtrasMainMenuItemCollectionViewCell *)&v10 setSelected:?];
  if (selectedCopy)
  {
    textLabel = self->_textLabel;
    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    [(UILabel *)textLabel setTextColor:whiteColor];

    layer = [(UILabel *)self->_textLabel layer];
    layer2 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979D40]];
    [layer setCompositingFilter:layer2];
  }

  else
  {
    layer = +[VideosExtrasNavigationBarButton textDodgeColor];
    [(UILabel *)self->_textLabel setTextColor:layer];
    layer2 = [(UILabel *)self->_textLabel layer];
    v9 = +[VideosExtrasNavigationBarButton textFilter];
    [layer2 setCompositingFilter:v9];
  }
}

@end