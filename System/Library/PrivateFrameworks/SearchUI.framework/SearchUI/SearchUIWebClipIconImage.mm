@interface SearchUIWebClipIconImage
+ (id)convertImage:(id)image ofSize:(CGSize)size withShape:(unint64_t)shape scale:(double)scale;
- (BOOL)isEqual:(id)equal;
- (SearchUIWebClipIconImage)initWithWebClip:(id)clip variant:(unint64_t)variant;
- (id)uniqueIdentifier;
- (unint64_t)hash;
@end

@implementation SearchUIWebClipIconImage

- (SearchUIWebClipIconImage)initWithWebClip:(id)clip variant:(unint64_t)variant
{
  clipCopy = clip;
  identifier = [clipCopy identifier];
  v10.receiver = self;
  v10.super_class = SearchUIWebClipIconImage;
  v8 = [(SearchUIAppIconImage *)&v10 initWithBundleIdentifier:identifier isOnenessApp:0 variant:variant contentType:0];

  if (v8)
  {
    [(SearchUIWebClipIconImage *)v8 setWebClip:clipCopy];
  }

  return v8;
}

+ (id)convertImage:(id)image ofSize:(CGSize)size withShape:(unint64_t)shape scale:(double)scale
{
  v21[1] = *MEMORY[0x1E69E9840];
  if (image)
  {
    height = size.height;
    width = size.width;
    v10 = MEMORY[0x1E69A8988];
    imageCopy = image;
    v12 = [v10 alloc];
    cGImage = [imageCopy CGImage];

    v14 = [v12 initWithCGImage:cGImage scale:scale];
    v15 = objc_alloc(MEMORY[0x1E69A8A00]);
    v21[0] = v14;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
    v17 = [v15 initWithImages:v16];

    v18 = [objc_alloc(MEMORY[0x1E69A8A30]) initWithSize:width scale:{height, scale}];
    [v18 setShape:shape];
    v19 = [objc_opt_class() imageForIcon:v17 descriptor:v18];
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    webClip = [(SearchUIWebClipIconImage *)self webClip];
    identifier = [webClip identifier];
    webClip2 = [equalCopy webClip];
    identifier2 = [webClip2 identifier];
    v9 = [identifier isEqualToString:identifier2];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (unint64_t)hash
{
  webClip = [(SearchUIWebClipIconImage *)self webClip];
  identifier = [webClip identifier];
  v4 = [identifier hash];

  return v4;
}

- (id)uniqueIdentifier
{
  webClip = [(SearchUIWebClipIconImage *)self webClip];
  identifier = [webClip identifier];

  return identifier;
}

@end