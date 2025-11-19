@interface TSDCheckableTableViewCell
- (TSDCheckableTableViewCell)initWithReuseIdentifier:(id)a3 showsCheckboxOnRight:(BOOL)a4;
- (TSDCheckableTableViewCell)initWithReuseIdentifier:(id)a3 showsCheckboxOnRight:(BOOL)a4 style:(int64_t)a5;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setChecked:(BOOL)a3;
- (void)setCheckmarkImage:(id)a3 forState:(unint64_t)a4;
- (void)setHighlighted:(BOOL)a3 animated:(BOOL)a4;
- (void)setImage:(id)a3 forState:(unint64_t)a4;
@end

@implementation TSDCheckableTableViewCell

- (TSDCheckableTableViewCell)initWithReuseIdentifier:(id)a3 showsCheckboxOnRight:(BOOL)a4
{
  v8.receiver = self;
  v8.super_class = TSDCheckableTableViewCell;
  v5 = [(TSDCheckableTableViewCell *)&v8 initWithStyle:0 reuseIdentifier:a3];
  v6 = v5;
  if (v5)
  {
    v5->mShowsCheckboxOnRight = a4;
    if (!a4)
    {
      [-[TSDCheckableTableViewCell imageView](v5 "imageView")];
      [-[TSDCheckableTableViewCell imageView](v6 "imageView")];
    }
  }

  return v6;
}

- (TSDCheckableTableViewCell)initWithReuseIdentifier:(id)a3 showsCheckboxOnRight:(BOOL)a4 style:(int64_t)a5
{
  v9.receiver = self;
  v9.super_class = TSDCheckableTableViewCell;
  v6 = [(TSDCheckableTableViewCell *)&v9 initWithStyle:a5 reuseIdentifier:a3];
  v7 = v6;
  if (v6)
  {
    v6->mShowsCheckboxOnRight = a4;
    if (!a4)
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

- (void)setCheckmarkImage:(id)a3 forState:(unint64_t)a4
{
  if (self->mShowsCheckboxOnRight)
  {
    mCheckmarkImageView = self->mCheckmarkImageView;
    if (!mCheckmarkImageView)
    {
      mCheckmarkImageView = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:a3];
      self->mCheckmarkImageView = mCheckmarkImageView;
    }
  }

  else
  {
    mCheckmarkImageView = [(TSDCheckableTableViewCell *)self imageView];
  }

  if (a4 == 1)
  {

    [(UIImageView *)mCheckmarkImageView setHighlightedImage:a3];
  }

  else if (a4)
  {
    v8 = [MEMORY[0x277D6C290] currentHandler];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDCheckableTableViewCell setCheckmarkImage:forState:]"];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDCheckableTableViewCell.m"];

    [v8 handleFailureInFunction:v9 file:v10 lineNumber:79 description:@"Setting checkmark image for unsupported state"];
  }

  else
  {

    [(UIImageView *)mCheckmarkImageView setImage:a3];
  }
}

- (void)setImage:(id)a3 forState:(unint64_t)a4
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

  [(UIButton *)mImageButton setImage:a3 forState:a4];
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

- (void)setChecked:(BOOL)a3
{
  v3 = a3;
  self->mChecked = a3;
  if (![(TSDCheckableTableViewCell *)self showsCheckboxOnRight])
  {
    v5 = [(TSDCheckableTableViewCell *)self imageView];
    goto LABEL_5;
  }

  if (self->mCheckmarkImageView)
  {
    [(TSDCheckableTableViewCell *)self setAccessoryView:?];
    v5 = [(TSDCheckableTableViewCell *)self accessoryView];
LABEL_5:

    [v5 setHidden:!v3];
    return;
  }

  if (v3)
  {
    v6 = 3;
  }

  else
  {
    v6 = 0;
  }

  [(TSDCheckableTableViewCell *)self setAccessoryType:v6];
}

- (void)setHighlighted:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v13.receiver = self;
  v13.super_class = TSDCheckableTableViewCell;
  [TSDCheckableTableViewCell setHighlighted:sel_setHighlighted_animated_ animated:?];
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __53__TSDCheckableTableViewCell_setHighlighted_animated___block_invoke;
  v10 = &unk_279D483F0;
  v11 = self;
  v12 = v5;
  if (v4)
  {
    [MEMORY[0x277D75D18] animateWithDuration:&v7 animations:0.2];
  }

  else
  {
    [(UIButton *)self->mImageButton setHighlighted:v5, v7, v8, v9, v10];
    [(UIImageView *)v11->mCheckmarkImageView setHighlighted:v12];
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