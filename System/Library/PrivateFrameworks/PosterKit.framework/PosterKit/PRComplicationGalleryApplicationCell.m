@interface PRComplicationGalleryApplicationCell
- (PRComplicationGalleryApplicationCell)initWithFrame:(CGRect)a3;
- (void)setSeparatorVisible:(BOOL)a3;
@end

@implementation PRComplicationGalleryApplicationCell

- (PRComplicationGalleryApplicationCell)initWithFrame:(CGRect)a3
{
  v47[4] = *MEMORY[0x1E69E9840];
  v45.receiver = self;
  v45.super_class = PRComplicationGalleryApplicationCell;
  v3 = [(PRComplicationGalleryApplicationCell *)&v45 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = [(PRComplicationGalleryApplicationCell *)v3 contentView];
    v6 = objc_alloc_init(PRComplicationGalleryApplicationTitleView);
    titleView = v4->_titleView;
    v4->_titleView = v6;

    [v5 addSubview:v4->_titleView];
    [(PRComplicationGalleryApplicationTitleView *)v4->_titleView setTranslatesAutoresizingMaskIntoConstraints:0];
    v33 = MEMORY[0x1E696ACD8];
    v42 = [(PRComplicationGalleryApplicationTitleView *)v4->_titleView leadingAnchor];
    v40 = [v5 leadingAnchor];
    v38 = [v42 constraintEqualToAnchor:v40];
    v47[0] = v38;
    v36 = [(PRComplicationGalleryApplicationTitleView *)v4->_titleView trailingAnchor];
    v34 = [v5 trailingAnchor];
    v8 = [v36 constraintEqualToAnchor:v34];
    v47[1] = v8;
    v9 = [(PRComplicationGalleryApplicationTitleView *)v4->_titleView topAnchor];
    v44 = v5;
    v10 = [v5 topAnchor];
    v11 = [v9 constraintEqualToAnchor:v10];
    v47[2] = v11;
    v12 = [(PRComplicationGalleryApplicationTitleView *)v4->_titleView bottomAnchor];
    v13 = [v5 bottomAnchor];
    v14 = [v12 constraintEqualToAnchor:v13];
    v47[3] = v14;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v47 count:4];
    [v33 activateConstraints:v15];

    [(PRComplicationGalleryApplicationTitleView *)v4->_titleView setContentInsets:12.0, 27.0, 12.0, 27.0];
    v16 = objc_alloc_init(MEMORY[0x1E69DD250]);
    separatorView = v4->_separatorView;
    v4->_separatorView = v16;

    [(UIView *)v4->_separatorView setTranslatesAutoresizingMaskIntoConstraints:0];
    v18 = v4->_separatorView;
    v19 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.1];
    [(UIView *)v18 setBackgroundColor:v19];

    [(PRComplicationGalleryApplicationCell *)v4 setSeparatorVisible:1];
    [v44 addSubview:v4->_separatorView];
    v35 = MEMORY[0x1E696ACD8];
    v43 = [(UIView *)v4->_separatorView leadingAnchor];
    v41 = [(PRComplicationGalleryApplicationTitleView *)v4->_titleView titleLabelLeadingAnchor];
    v39 = [v43 constraintEqualToAnchor:v41];
    v46[0] = v39;
    v37 = [(UIView *)v4->_separatorView trailingAnchor];
    v20 = [v44 trailingAnchor];
    v21 = [v37 constraintEqualToAnchor:v20];
    v46[1] = v21;
    v22 = [(UIView *)v4->_separatorView bottomAnchor];
    v23 = [v44 bottomAnchor];
    v24 = [v22 constraintEqualToAnchor:v23];
    v46[2] = v24;
    v25 = [(UIView *)v4->_separatorView heightAnchor];
    v26 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v26 scale];
    v28 = [v25 constraintEqualToConstant:1.0 / v27];
    v46[3] = v28;
    v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v46 count:4];
    [v35 activateConstraints:v29];

    v30 = objc_alloc_init(MEMORY[0x1E69DD250]);
    v31 = [MEMORY[0x1E69DC888] tertiarySystemFillColor];
    [v30 setBackgroundColor:v31];

    [(PRComplicationGalleryApplicationCell *)v4 setSelectedBackgroundView:v30];
  }

  return v4;
}

- (void)setSeparatorVisible:(BOOL)a3
{
  if (self->_separatorVisible != a3)
  {
    self->_separatorVisible = a3;
    [(UIView *)self->_separatorView setHidden:!a3];
  }
}

@end