@interface UIImage(VideosExtras)
+ (id)imageForPlaceholderURL:()VideosExtras;
@end

@implementation UIImage(VideosExtras)

+ (id)imageForPlaceholderURL:()VideosExtras
{
  absoluteString = [a3 absoluteString];
  lastPathComponent = [absoluteString lastPathComponent];
  if (imageForPlaceholderURL__onceToken != -1)
  {
    +[UIImage(VideosExtras) imageForPlaceholderURL:];
  }

  v5 = [imageForPlaceholderURL____resourceNameMapping objectForKey:lastPathComponent];
  if (v5)
  {
    v6 = [MEMORY[0x1E69DCAB8] vui_videosUIImageNamed:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end