@interface TSDCheckableTableViewCell
- (TSDCheckableTableViewCell)initWithReuseIdentifier:(id)identifier showsCheckboxOnRight:(BOOL)right;
- (TSDCheckableTableViewCell)initWithReuseIdentifier:(id)identifier showsCheckboxOnRight:(BOOL)right style:(int64_t)style;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setChecked:(BOOL)checked;
- (void)setCheckmarkImage:(id)image forState:(unint64_t)state;
- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated;
- (void)setImage:(id)image forState:(unint64_t)state;
@end

@implementation TSDCheckableTableViewCell

- (TSDCheckableTableViewCell)initWithReuseIdentifier:(id)identifier showsCheckboxOnRight:(BOOL)right
{
  v8.receiver = self;
  v8.super_class = TSDCheckableTableViewCell;
  v5 = [(TSDCheckableTableViewCell *)&v8 initWithStyle:0 reuseIdentifier:identifier];
  v6 = v5;
  if (v5)
  {
    v5->mShowsCheckboxOnRight = right;
    if (!right)
    {
      [-[TSDCheckableTableViewCell imageView](v5 "imageView")];
      [-[TSDCheckableTableViewCell imageView](v6 "imageView")];
    }
  }

  return v6;
}

- (TSDCheckableTableViewCell)initWithReuseIdentifier:(id)identifier showsCheckboxOnRight:(BOOL)right style:(int64_t)style
{
  v9.receiver = self;
  v9.super_class = TSDCheckableTableViewCell;
  v6 = [(TSDCheckableTableViewCell *)&v9 initWithStyle:style reuseIdentifier:identifier];
  v7 = v6;
  if (v6)
  {
    v6->mShowsCheckboxOnRight = right;
    if (!right)
    {
      [-[TSDCheckableTableViewCell imageView](v6 "imageView")];
      [-[TSDCheckableTableViewCell imageView](v7 "imageView")];
    }
  }

  return v7;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSDCheckableTableViewCell;
  [(TSDCheckableTableViewCell *)&v3 dealloc];
}

- (void)setCheckmarkImage:(id)image forState:(unint64_t)state
{
  if (self->mShowsCheckboxOnRight)
  {
    mCheckmarkImageView = self->mCheckmarkImageView;
    if (!mCheckmarkImageView)
    {
      mCheckmarkImageView = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:image];
      self->mCheckmarkImageView = mCheckmarkImageView;
    }
  }

  else
  {
    mCheckmarkImageView = [(TSDCheckableTableViewCell *)self imageView];
  }

  if (state == 1)
  {

    [(UIImageView *)mCheckmarkImageView setHighlightedImage:image];
  }

  else if (state)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDCheckableTableViewCell setCheckmarkImage:forState:]"];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDCheckableTableViewCell.m"];

    [currentHandler handleFailureInFunction:v9 file:v10 lineNumber:79 description:@"Setting checkmark image for unsupported state"];
  }

  else
  {

    [(UIImageView *)mCheckmarkImageView setImage:image];
  }
}

- (void)setImage:(id)image forState:(unint64_t)state
{
  mImageButton = self->mImageButton;
  if (!mImageButton)
  {
    v8 = [MEMORY[0x277D75220] buttonWithType:0];
    self->mImageButton = v8;
    [(UIButton *)v8 setUserInteractionEnabled:0];
    [(UIButton *)self->mImageButton setClipsToBounds:1];
    [(UIButton *)self->mImageButton setContentHorizontalAlignment:1];
    [-[TSDCheckableTableViewCell contentView](self "contentView")];
    mImageButton = self->mImageButton;
  }

  [(UIButton *)mImageButton setImage:image forState:state];
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = TSDCheckableTableViewCell;
  [(TSDCheckableTableViewCell *)&v4 layoutSubviews];
  [-[TSDCheckableTableViewCell contentView](self "contentView")];
  v3 = TSDRectWithSize();
  if (!self->mShowsCheckboxOnRight)
  {
    v3 = v3 + 32.0;
  }

  [(UIButton *)self->mImageButton setFrame:v3];
}

- (void)setChecked:(BOOL)checked
{
  checkedCopy = checked;
  self->mChecked = checked;
  if (![(TSDCheckableTableViewCell *)self showsCheckboxOnRight])
  {
    imageView = [(TSDCheckableTableViewCell *)self imageView];
    goto LABEL_5;
  }

  if (self->mCheckmarkImageView)
  {
    [(TSDCheckableTableViewCell *)self setAccessoryView:?];
    imageView = [(TSDCheckableTableViewCell *)self accessoryView];
LABEL_5:

    [imageView setHidden:!checkedCopy];
    return;
  }

  if (checkedCopy)
  {
    v6 = 3;
  }

  else
  {
    v6 = 0;
  }

  [(TSDCheckableTableViewCell *)self setAccessoryType:v6];
}

- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated
{
  animatedCopy = animated;
  highlightedCopy = highlighted;
  v13.receiver = self;
  v13.super_class = TSDCheckableTableViewCell;
  [TSDCheckableTableViewCell setHighlighted:sel_setHighlighted_animated_ animated:?];
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __53__TSDCheckableTableViewCell_setHighlighted_animated___block_invoke;
  v10 = &unk_279D483F0;
  selfCopy = self;
  v12 = highlightedCopy;
  if (animatedCopy)
  {
    [MEMORY[0x277D75D18] animateWithDuration:&v7 animations:0.2];
  }

  else
  {
    [(UIButton *)self->mImageButton setHighlighted:highlightedCopy, v7, v8, v9, v10];
    [(UIImageView *)selfCopy->mCheckmarkImageView setHighlighted:v12];
  }
}

uint64_t __53__TSDCheckableTableViewCell_setHighlighted_animated___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 1024) setHighlighted:*(a1 + 40)];
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 1032);

  return [v3 setHighlighted:v2];
}

@end