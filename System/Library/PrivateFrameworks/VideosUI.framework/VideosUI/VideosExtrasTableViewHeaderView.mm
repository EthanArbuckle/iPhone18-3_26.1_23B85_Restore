@interface VideosExtrasTableViewHeaderView
- (CGSize)intrinsicContentSize;
- (VideosExtrasTableViewHeaderView)initWithReuseIdentifier:(id)identifier;
- (void)configureForHeaderElement:(id)element;
- (void)dealloc;
@end

@implementation VideosExtrasTableViewHeaderView

- (VideosExtrasTableViewHeaderView)initWithReuseIdentifier:(id)identifier
{
  v35.receiver = self;
  v35.super_class = VideosExtrasTableViewHeaderView;
  v3 = [(VideosExtrasTableViewHeaderView *)&v35 initWithReuseIdentifier:identifier];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x1E69DD250]);
    [(VideosExtrasTableViewHeaderView *)v3 frame];
    v5 = [v4 initWithFrame:?];
    [(VideosExtrasTableViewHeaderView *)v3 setBackgroundView:v5];

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v3 selector:sel__dynamicTypeDidChange name:*MEMORY[0x1E69DDC48] object:0];

    textLabel = [(VideosExtrasTableViewHeaderView *)v3 textLabel];
    [textLabel MPU_setAutomaticallyUpdatesTextStyleFontsToPreferredTextStyleFonts:1];

    initForAutolayout = [objc_alloc(MEMORY[0x1E69DD250]) initForAutolayout];
    v9 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.2];
    [initForAutolayout setBackgroundColor:v9];

    contentView = [(VideosExtrasTableViewHeaderView *)v3 contentView];
    [contentView addSubview:initForAutolayout];

    initForAutolayout2 = [objc_alloc(MEMORY[0x1E69DD250]) initForAutolayout];
    v12 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.2];
    [initForAutolayout2 setBackgroundColor:v12];

    contentView2 = [(VideosExtrasTableViewHeaderView *)v3 contentView];
    [contentView2 addSubview:initForAutolayout2];

    v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v15 = MEMORY[0x1E696ACD8];
    contentView3 = [(VideosExtrasTableViewHeaderView *)v3 contentView];
    v17 = *MEMORY[0x1E69DDCE0];
    v18 = *(MEMORY[0x1E69DDCE0] + 8);
    v19 = *(MEMORY[0x1E69DDCE0] + 16);
    v20 = *(MEMORY[0x1E69DDCE0] + 24);
    v21 = [v15 constraintsByAttachingView:initForAutolayout toView:contentView3 alongEdges:11 insets:{*MEMORY[0x1E69DDCE0], v18, v19, v20}];

    v22 = MEMORY[0x1E696ACD8];
    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen scale];
    v25 = [v22 constraintWithItem:initForAutolayout attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:1.0 / v24];

    v26 = MEMORY[0x1E696ACD8];
    contentView4 = [(VideosExtrasTableViewHeaderView *)v3 contentView];
    v28 = [v26 constraintsByAttachingView:initForAutolayout2 toView:contentView4 alongEdges:14 insets:{v17, v18, v19, v20}];

    v29 = MEMORY[0x1E696ACD8];
    mainScreen2 = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen2 scale];
    v32 = [v29 constraintWithItem:initForAutolayout2 attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:1.0 / v31];

    [v14 addObjectsFromArray:v21];
    [v14 addObject:v25];
    [v14 addObjectsFromArray:v28];
    [v14 addObject:v32];
    contentView5 = [(VideosExtrasTableViewHeaderView *)v3 contentView];
    [contentView5 addConstraints:v14];
  }

  return v3;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = VideosExtrasTableViewHeaderView;
  [(VideosExtrasTableViewHeaderView *)&v4 dealloc];
}

- (void)configureForHeaderElement:(id)element
{
  v4 = MEMORY[0x1E69DC888];
  elementCopy = element;
  v6 = [v4 colorWithWhite:0.0 alpha:0.4];
  backgroundView = [(VideosExtrasTableViewHeaderView *)self backgroundView];
  [backgroundView setBackgroundColor:v6];

  textLabel = [(VideosExtrasTableViewHeaderView *)self textLabel];
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [textLabel setBackgroundColor:clearColor];

  v9 = [MEMORY[0x1E69DC888] colorWithWhite:0.4 alpha:1.0];
  [textLabel setTextColor:v9];

  title = [elementCopy title];

  v11 = *MEMORY[0x1E69DDD28];
  v12 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDD28]];
  [textLabel configureForIKTextElement:title fontDescriptor:v12 textStyle:v11 capitalize:1];
}

- (CGSize)intrinsicContentSize
{
  textLabel = [(VideosExtrasTableViewHeaderView *)self textLabel];
  [textLabel intrinsicContentSize];
  v4 = v3;
  v6 = v5;

  v7 = v6 + 15.0;
  v8 = v4;
  result.height = v7;
  result.width = v8;
  return result;
}

@end