@interface UIImageView(VideosUICore)
+ (id)vui_imageViewWithFrame:()VideosUICore;
+ (id)vui_imageViewWithImage:()VideosUICore;
@end

@implementation UIImageView(VideosUICore)

+ (id)vui_imageViewWithFrame:()VideosUICore
{
  v4 = [objc_alloc(MEMORY[0x277D755E8]) initWithFrame:{a1, a2, a3, a4}];

  return v4;
}

+ (id)vui_imageViewWithImage:()VideosUICore
{
  v3 = MEMORY[0x277D755E8];
  v4 = *MEMORY[0x277CBF3A0];
  v5 = *(MEMORY[0x277CBF3A0] + 8);
  v6 = *(MEMORY[0x277CBF3A0] + 16);
  v7 = *(MEMORY[0x277CBF3A0] + 24);
  v8 = a3;
  v9 = [v3 vui_imageViewWithFrame:{v4, v5, v6, v7}];
  [v9 setImage:v8];

  return v9;
}

@end