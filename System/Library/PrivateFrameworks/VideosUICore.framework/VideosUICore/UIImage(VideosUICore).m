@interface UIImage(VideosUICore)
+ (id)vuiImageNamed:()VideosUICore;
+ (id)vuiSystemImageNamed:()VideosUICore withConfiguration:accessibilityDescription:;
- (id)vuiTemplateImage;
- (uint64_t)vuiCGImage;
@end

@implementation UIImage(VideosUICore)

+ (id)vuiImageNamed:()VideosUICore
{
  v3 = a3;
  v4 = MEMORY[0x277D755B8];
  v5 = [MEMORY[0x277CCA8D8] mainBundle];
  v6 = [v4 vuiImageNamed:v3 inBundle:v5];

  if (!v6)
  {
    v7 = MEMORY[0x277D755B8];
    v8 = [MEMORY[0x277CCA8D8] vui_videosUIBundle];
    v6 = [v7 vuiImageNamed:v3 inBundle:v8];
  }

  return v6;
}

+ (id)vuiSystemImageNamed:()VideosUICore withConfiguration:accessibilityDescription:
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [MEMORY[0x277D755B8] systemImageNamed:v7 withConfiguration:v8];
  if (!v10)
  {
    v10 = [MEMORY[0x277D755B8] _systemImageNamed:v7 withConfiguration:v8];
  }

  if (v9)
  {
    [v10 setAccessibilityLabel:v9];
  }

  return v10;
}

- (uint64_t)vuiCGImage
{
  v1 = a1;

  return [v1 CGImage];
}

- (id)vuiTemplateImage
{
  v2 = [a1 accessibilityLabel];
  v3 = [a1 imageWithRenderingMode:2];
  [v3 setAccessibilityLabel:v2];

  return v3;
}

@end