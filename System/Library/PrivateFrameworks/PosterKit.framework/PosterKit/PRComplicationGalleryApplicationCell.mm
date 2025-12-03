@interface PRComplicationGalleryApplicationCell
- (PRComplicationGalleryApplicationCell)initWithFrame:(CGRect)frame;
- (void)setSeparatorVisible:(BOOL)visible;
@end

@implementation PRComplicationGalleryApplicationCell

- (PRComplicationGalleryApplicationCell)initWithFrame:(CGRect)frame
{
  v47[4] = *MEMORY[0x1E69E9840];
  v45.receiver = self;
  v45.super_class = PRComplicationGalleryApplicationCell;
  v3 = [(PRComplicationGalleryApplicationCell *)&v45 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    contentView = [(PRComplicationGalleryApplicationCell *)v3 contentView];
    v6 = objc_alloc_init(PRComplicationGalleryApplicationTitleView);
    titleView = v4->_titleView;
    v4->_titleView = v6;

    [contentView addSubview:v4->_titleView];
    [(PRComplicationGalleryApplicationTitleView *)v4->_titleView setTranslatesAutoresizingMaskIntoConstraints:0];
    v33 = MEMORY[0x1E696ACD8];
    leadingAnchor = [(PRComplicationGalleryApplicationTitleView *)v4->_titleView leadingAnchor];
    leadingAnchor2 = [contentView leadingAnchor];
    v38 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v47[0] = v38;
    trailingAnchor = [(PRComplicationGalleryApplicationTitleView *)v4->_titleView trailingAnchor];
    trailingAnchor2 = [contentView trailingAnchor];
    v8 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v47[1] = v8;
    topAnchor = [(PRComplicationGalleryApplicationTitleView *)v4->_titleView topAnchor];
    v44 = contentView;
    topAnchor2 = [contentView topAnchor];
    v11 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v47[2] = v11;
    bottomAnchor = [(PRComplicationGalleryApplicationTitleView *)v4->_titleView bottomAnchor];
    bottomAnchor2 = [contentView bottomAnchor];
    v14 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
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
    leadingAnchor3 = [(UIView *)v4->_separatorView leadingAnchor];
    titleLabelLeadingAnchor = [(PRComplicationGalleryApplicationTitleView *)v4->_titleView titleLabelLeadingAnchor];
    v39 = [leadingAnchor3 constraintEqualToAnchor:titleLabelLeadingAnchor];
    v46[0] = v39;
    trailingAnchor3 = [(UIView *)v4->_separatorView trailingAnchor];
    trailingAnchor4 = [v44 trailingAnchor];
    v21 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    v46[1] = v21;
    bottomAnchor3 = [(UIView *)v4->_separatorView bottomAnchor];
    bottomAnchor4 = [v44 bottomAnchor];
    v24 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
    v46[2] = v24;
    heightAnchor = [(UIView *)v4->_separatorView heightAnchor];
    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen scale];
    v28 = [heightAnchor constraintEqualToConstant:1.0 / v27];
    v46[3] = v28;
    v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v46 count:4];
    [v35 activateConstraints:v29];

    v30 = objc_alloc_init(MEMORY[0x1E69DD250]);
    tertiarySystemFillColor = [MEMORY[0x1E69DC888] tertiarySystemFillColor];
    [v30 setBackgroundColor:tertiarySystemFillColor];

    [(PRComplicationGalleryApplicationCell *)v4 setSelectedBackgroundView:v30];
  }

  return v4;
}

- (void)setSeparatorVisible:(BOOL)visible
{
  if (self->_separatorVisible != visible)
  {
    self->_separatorVisible = visible;
    [(UIView *)self->_separatorView setHidden:!visible];
  }
}

@end