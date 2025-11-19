@interface PUPhotoPostCommentTextEntryCell
+ (double)heightForWidth:(double)a3;
- (PUPhotoPostCommentTextEntryCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)layoutSubviews;
@end

@implementation PUPhotoPostCommentTextEntryCell

- (void)layoutSubviews
{
  v8.receiver = self;
  v8.super_class = PUPhotoPostCommentTextEntryCell;
  [(PUPhotoPostCommentTextEntryCell *)&v8 layoutSubviews];
  v3 = [(PUPhotoPostCommentTextEntryCell *)self contentView];
  [v3 bounds];
  v5 = v4;
  v7 = v6;

  [(PUPhotoCommentEntryView *)self->_textEntryView setFrame:0.0, 0.0, v5, v7];
}

- (PUPhotoPostCommentTextEntryCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v11.receiver = self;
  v11.super_class = PUPhotoPostCommentTextEntryCell;
  v4 = [(PUPhotoPostCommentTextEntryCell *)&v11 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    [(PUPhotoPostCommentTextEntryCell *)v4 setSelectionStyle:0];
    v6 = [PUPhotoCommentEntryView alloc];
    v7 = [(PUPhotoCommentEntryView *)v6 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    textEntryView = v5->_textEntryView;
    v5->_textEntryView = v7;

    v9 = [(PUPhotoPostCommentTextEntryCell *)v5 contentView];
    [v9 addSubview:v5->_textEntryView];
  }

  return v5;
}

+ (double)heightForWidth:(double)a3
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__PUPhotoPostCommentTextEntryCell_heightForWidth___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (heightForWidth__onceToken != -1)
  {
    dispatch_once(&heightForWidth__onceToken, block);
  }

  v4 = [MEMORY[0x1E69DC668] sharedApplication];
  v5 = [v4 preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v5);

  if (!IsAccessibilityCategory)
  {
    return 54.0;
  }

  result = *&_cachedAccessibilityHeight;
  if (*&_cachedAccessibilityHeight < 0.0)
  {
    v8 = objc_alloc_init(MEMORY[0x1E69DD168]);
    v9 = [MEMORY[0x1E69BE1B8] sharedCache];
    v10 = [v9 commentEntryFont];
    [v8 setFont:v10];

    [v8 setText:@"A"];
    [v8 sizeThatFits:{a3, 0.0}];
    v12 = v11;
    [v8 textContainerInset];
    v14 = v12 + v13;
    [v8 textContainerInset];
    *&_cachedAccessibilityHeight = v14 + v15;

    return *&_cachedAccessibilityHeight;
  }

  return result;
}

void __50__PUPhotoPostCommentTextEntryCell_heightForWidth___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 addObserver:*(a1 + 32) selector:sel_preferredContentSizeDidChange name:*MEMORY[0x1E69DDC48] object:0];
}

@end