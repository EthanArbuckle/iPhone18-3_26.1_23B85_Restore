@interface SearchUIWebClipIconImage
+ (id)convertImage:(id)a3 ofSize:(CGSize)a4 withShape:(unint64_t)a5 scale:(double)a6;
- (BOOL)isEqual:(id)a3;
- (SearchUIWebClipIconImage)initWithWebClip:(id)a3 variant:(unint64_t)a4;
- (id)uniqueIdentifier;
- (unint64_t)hash;
@end

@implementation SearchUIWebClipIconImage

- (SearchUIWebClipIconImage)initWithWebClip:(id)a3 variant:(unint64_t)a4
{
  v6 = a3;
  v7 = [v6 identifier];
  v10.receiver = self;
  v10.super_class = SearchUIWebClipIconImage;
  v8 = [(SearchUIAppIconImage *)&v10 initWithBundleIdentifier:v7 isOnenessApp:0 variant:a4 contentType:0];

  if (v8)
  {
    [(SearchUIWebClipIconImage *)v8 setWebClip:v6];
  }

  return v8;
}

+ (id)convertImage:(id)a3 ofSize:(CGSize)a4 withShape:(unint64_t)a5 scale:(double)a6
{
  v21[1] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    height = a4.height;
    width = a4.width;
    v10 = MEMORY[0x1E69A8988];
    v11 = a3;
    v12 = [v10 alloc];
    v13 = [v11 CGImage];

    v14 = [v12 initWithCGImage:v13 scale:a6];
    v15 = objc_alloc(MEMORY[0x1E69A8A00]);
    v21[0] = v14;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
    v17 = [v15 initWithImages:v16];

    v18 = [objc_alloc(MEMORY[0x1E69A8A30]) initWithSize:width scale:{height, a6}];
    [v18 setShape:a5];
    v19 = [objc_opt_class() imageForIcon:v17 descriptor:v18];
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(SearchUIWebClipIconImage *)self webClip];
    v6 = [v5 identifier];
    v7 = [v4 webClip];
    v8 = [v7 identifier];
    v9 = [v6 isEqualToString:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (unint64_t)hash
{
  v2 = [(SearchUIWebClipIconImage *)self webClip];
  v3 = [v2 identifier];
  v4 = [v3 hash];

  return v4;
}

- (id)uniqueIdentifier
{
  v2 = [(SearchUIWebClipIconImage *)self webClip];
  v3 = [v2 identifier];

  return v3;
}

@end