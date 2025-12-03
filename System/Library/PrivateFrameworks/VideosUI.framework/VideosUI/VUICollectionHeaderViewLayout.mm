@interface VUICollectionHeaderViewLayout
- (VUICollectionHeaderViewLayout)init;
@end

@implementation VUICollectionHeaderViewLayout

- (VUICollectionHeaderViewLayout)init
{
  v14.receiver = self;
  v14.super_class = VUICollectionHeaderViewLayout;
  v2 = [(TVViewLayout *)&v14 init];
  if (v2)
  {
    v3 = objc_alloc_init(VUITextLayout);
    [(VUITextLayout *)v3 setTextStyle:2];
    [(VUITextLayout *)v3 setFontWeight:10];
    [(VUITextLayout *)v3 setNumberOfLines:2];
    [(VUITextLayout *)v3 setMinimumScaleFactor:0.67];
    vui_primaryTextColor = [MEMORY[0x1E69DC888] vui_primaryTextColor];
    [(VUITextLayout *)v3 setColor:vui_primaryTextColor];

    titleTextLayout = v2->_titleTextLayout;
    v2->_titleTextLayout = v3;
    v6 = v3;

    v7 = objc_alloc_init(VUITextLayout);
    [(VUITextLayout *)v7 setTextStyle:14];
    [(VUITextLayout *)v7 setNumberOfLines:2];
    [(VUITextLayout *)v7 setMinimumScaleFactor:0.67];
    systemGrayColor = [MEMORY[0x1E69DC888] systemGrayColor];
    [(VUITextLayout *)v7 setColor:systemGrayColor];

    subtitleTextLayout = v2->_subtitleTextLayout;
    v2->_subtitleTextLayout = v7;
    v10 = v7;

    v11 = objc_opt_new();
    [v11 setScaleMode:1];
    imageViewLayout = v2->_imageViewLayout;
    v2->_imageViewLayout = v11;
  }

  return v2;
}

@end