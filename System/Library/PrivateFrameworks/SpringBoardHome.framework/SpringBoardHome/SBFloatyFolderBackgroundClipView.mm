@interface SBFloatyFolderBackgroundClipView
- (SBFloatyFolderBackgroundClipView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation SBFloatyFolderBackgroundClipView

- (void)layoutSubviews
{
  backgroundView = self->_backgroundView;
  [(SBFloatyFolderBackgroundClipView *)self bounds];

  [(SBFolderBackgroundView *)backgroundView setFrame:?];
}

- (SBFloatyFolderBackgroundClipView)initWithFrame:(CGRect)frame
{
  v8.receiver = self;
  v8.super_class = SBFloatyFolderBackgroundClipView;
  v3 = [(SBFloatyFolderBackgroundClipView *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(SBFolderBackgroundView);
    backgroundView = v3->_backgroundView;
    v3->_backgroundView = v4;

    [(SBFloatyFolderBackgroundClipView *)v3 addSubview:v3->_backgroundView];
    v6 = objc_alloc_init(MEMORY[0x1E69DD820]);
    [(SBFloatyFolderBackgroundClipView *)v3 _setBackground:v6];

    [(SBFloatyFolderBackgroundClipView *)v3 setClipsToBounds:1];
    +[SBFloatyFolderView defaultCornerRadius];
    [(SBFloatyFolderBackgroundClipView *)v3 setCornerRadius:?];
  }

  return v3;
}

@end