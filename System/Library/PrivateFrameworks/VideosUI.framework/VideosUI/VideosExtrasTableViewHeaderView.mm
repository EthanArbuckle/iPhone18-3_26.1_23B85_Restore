@interface VideosExtrasTableViewHeaderView
- (CGSize)intrinsicContentSize;
- (VideosExtrasTableViewHeaderView)initWithReuseIdentifier:(id)a3;
- (void)configureForHeaderElement:(id)a3;
- (void)dealloc;
@end

@implementation VideosExtrasTableViewHeaderView

- (VideosExtrasTableViewHeaderView)initWithReuseIdentifier:(id)a3
{
  v35.receiver = self;
  v35.super_class = VideosExtrasTableViewHeaderView;
  v3 = [(VideosExtrasTableViewHeaderView *)&v35 initWithReuseIdentifier:a3];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x1E69DD250]);
    [(VideosExtrasTableViewHeaderView *)v3 frame];
    v5 = [v4 initWithFrame:?];
    [(VideosExtrasTableViewHeaderView *)v3 setBackgroundView:v5];

    v6 = [MEMORY[0x1E696AD88] defaultCenter];
    [v6 addObserver:v3 selector:sel__dynamicTypeDidChange name:*MEMORY[0x1E69DDC48] object:0];

    v7 = [(VideosExtrasTableViewHeaderView *)v3 textLabel];
    [v7 MPU_setAutomaticallyUpdatesTextStyleFontsToPreferredTextStyleFonts:1];

    v8 = [objc_alloc(MEMORY[0x1E69DD250]) initForAutolayout];
    v9 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.2];
    [v8 setBackgroundColor:v9];

    v10 = [(VideosExtrasTableViewHeaderView *)v3 contentView];
    [v10 addSubview:v8];

    v11 = [objc_alloc(MEMORY[0x1E69DD250]) initForAutolayout];
    v12 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.2];
    [v11 setBackgroundColor:v12];

    v13 = [(VideosExtrasTableViewHeaderView *)v3 contentView];
    [v13 addSubview:v11];

    v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v15 = MEMORY[0x1E696ACD8];
    v16 = [(VideosExtrasTableViewHeaderView *)v3 contentView];
    v17 = *MEMORY[0x1E69DDCE0];
    v18 = *(MEMORY[0x1E69DDCE0] + 8);
    v19 = *(MEMORY[0x1E69DDCE0] + 16);
    v20 = *(MEMORY[0x1E69DDCE0] + 24);
    v21 = [v15 constraintsByAttachingView:v8 toView:v16 alongEdges:11 insets:{*MEMORY[0x1E69DDCE0], v18, v19, v20}];

    v22 = MEMORY[0x1E696ACD8];
    v23 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v23 scale];
    v25 = [v22 constraintWithItem:v8 attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:1.0 / v24];

    v26 = MEMORY[0x1E696ACD8];
    v27 = [(VideosExtrasTableViewHeaderView *)v3 contentView];
    v28 = [v26 constraintsByAttachingView:v11 toView:v27 alongEdges:14 insets:{v17, v18, v19, v20}];

    v29 = MEMORY[0x1E696ACD8];
    v30 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v30 scale];
    v32 = [v29 constraintWithItem:v11 attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:1.0 / v31];

    [v14 addObjectsFromArray:v21];
    [v14 addObject:v25];
    [v14 addObjectsFromArray:v28];
    [v14 addObject:v32];
    v33 = [(VideosExtrasTableViewHeaderView *)v3 contentView];
    [v33 addConstraints:v14];
  }

  return v3;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = VideosExtrasTableViewHeaderView;
  [(VideosExtrasTableViewHeaderView *)&v4 dealloc];
}

- (void)configureForHeaderElement:(id)a3
{
  v4 = MEMORY[0x1E69DC888];
  v5 = a3;
  v6 = [v4 colorWithWhite:0.0 alpha:0.4];
  v7 = [(VideosExtrasTableViewHeaderView *)self backgroundView];
  [v7 setBackgroundColor:v6];

  v13 = [(VideosExtrasTableViewHeaderView *)self textLabel];
  v8 = [MEMORY[0x1E69DC888] clearColor];
  [v13 setBackgroundColor:v8];

  v9 = [MEMORY[0x1E69DC888] colorWithWhite:0.4 alpha:1.0];
  [v13 setTextColor:v9];

  v10 = [v5 title];

  v11 = *MEMORY[0x1E69DDD28];
  v12 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDD28]];
  [v13 configureForIKTextElement:v10 fontDescriptor:v12 textStyle:v11 capitalize:1];
}

- (CGSize)intrinsicContentSize
{
  v2 = [(VideosExtrasTableViewHeaderView *)self textLabel];
  [v2 intrinsicContentSize];
  v4 = v3;
  v6 = v5;

  v7 = v6 + 15.0;
  v8 = v4;
  result.height = v7;
  result.width = v8;
  return result;
}

@end