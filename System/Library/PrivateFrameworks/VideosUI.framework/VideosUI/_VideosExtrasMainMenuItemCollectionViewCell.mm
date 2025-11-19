@interface _VideosExtrasMainMenuItemCollectionViewCell
+ (id)_createLabelInCell:(id)a3;
- (CGSize)sizeThatFits:(CGSize)a3;
- (_VideosExtrasMainMenuItemCollectionViewCell)initWithFrame:(CGRect)a3;
- (void)dealloc;
- (void)safeAreaInsetsDidChange;
- (void)setSelected:(BOOL)a3;
@end

@implementation _VideosExtrasMainMenuItemCollectionViewCell

+ (id)_createLabelInCell:(id)a3
{
  v3 = a3;
  v4 = objc_alloc(MEMORY[0x1E69DCC10]);
  v5 = [v4 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v5 MPU_setAutomaticallyUpdatesTextStyleFontsToPreferredTextStyleFonts:1];
  if (v3)
  {
    v6 = [v3 contentView];
    [v6 addSubview:v5];
    v7 = [MEMORY[0x1E696ACD8] constraintsByAttachingView:v5 toView:v6 alongEdges:10 insets:{*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)}];
    v8 = MEMORY[0x1E696ACD8];
    v9 = [*MEMORY[0x1E69DDA98] keyWindow];
    [v9 safeAreaInsets];
    v11 = [v8 constraintWithItem:v5 attribute:10 relatedBy:0 toItem:v6 attribute:10 multiplier:1.0 constant:v10 * -0.5];
    [v3 setTextLabelConstraint:v11];

    v12 = [v3 textLabelConstraint];
    v13 = [v7 arrayByAddingObject:v12];
    [v6 addConstraints:v13];
  }

  return v5;
}

- (_VideosExtrasMainMenuItemCollectionViewCell)initWithFrame:(CGRect)a3
{
  v14.receiver = self;
  v14.super_class = _VideosExtrasMainMenuItemCollectionViewCell;
  v3 = [(_VideosExtrasMainMenuItemCollectionViewCell *)&v14 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = [(_VideosExtrasMainMenuItemCollectionViewCell *)v3 contentView];
    v6 = [objc_opt_class() _createLabelInCell:v4];
    textLabel = v4->_textLabel;
    v4->_textLabel = v6;

    v8 = [v5 layer];
    [v8 setAllowsGroupOpacity:0];

    v9 = [v5 layer];
    [v9 setAllowsGroupBlending:0];

    v10 = [(_VideosExtrasMainMenuItemCollectionViewCell *)v4 layer];
    [v10 setAllowsGroupOpacity:0];

    v11 = [(_VideosExtrasMainMenuItemCollectionViewCell *)v4 layer];
    [v11 setAllowsGroupBlending:0];

    v12 = [MEMORY[0x1E696AD88] defaultCenter];
    [v12 addObserver:v4 selector:sel__dynamicTypeChanged name:*MEMORY[0x1E69DDC48] object:0];
  }

  return v4;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = _VideosExtrasMainMenuItemCollectionViewCell;
  [(_VideosExtrasMainMenuItemCollectionViewCell *)&v4 dealloc];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(UILabel *)self->_textLabel sizeThatFits:a3.width, a3.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)safeAreaInsetsDidChange
{
  v4 = [(_VideosExtrasMainMenuItemCollectionViewCell *)self textLabelConstraint];
  [(_VideosExtrasMainMenuItemCollectionViewCell *)self safeAreaInsets];
  [v4 setConstant:v3 * -0.5];
}

- (void)setSelected:(BOOL)a3
{
  v3 = a3;
  v10.receiver = self;
  v10.super_class = _VideosExtrasMainMenuItemCollectionViewCell;
  [(_VideosExtrasMainMenuItemCollectionViewCell *)&v10 setSelected:?];
  if (v3)
  {
    textLabel = self->_textLabel;
    v6 = [MEMORY[0x1E69DC888] whiteColor];
    [(UILabel *)textLabel setTextColor:v6];

    v7 = [(UILabel *)self->_textLabel layer];
    v8 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979D40]];
    [v7 setCompositingFilter:v8];
  }

  else
  {
    v7 = +[VideosExtrasNavigationBarButton textDodgeColor];
    [(UILabel *)self->_textLabel setTextColor:v7];
    v8 = [(UILabel *)self->_textLabel layer];
    v9 = +[VideosExtrasNavigationBarButton textFilter];
    [v8 setCompositingFilter:v9];
  }
}

@end