@interface IKImageElement(VideosExtrasAdditions)
- (id)bestURL;
- (id)cachePath;
- (id)resourceImage;
- (uint64_t)accessoryType;
@end

@implementation IKImageElement(VideosExtrasAdditions)

- (id)bestURL
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = [a1 url];
  if (!v2)
  {
    v3 = [a1 srcset];
    memset(v5, 0, sizeof(v5));
    if ([v3 countByEnumeratingWithState:v5 objects:v6 count:16])
    {
      v2 = [v3 objectForKey:**(&v5[0] + 1)];
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

- (id)cachePath
{
  v2 = NSTemporaryDirectory();
  v3 = [a1 bestURL];
  v4 = [v3 path];
  v5 = [v4 stringByReplacingOccurrencesOfString:@"/" withString:&stru_1F5DB25C0];
  v6 = [v2 stringByAppendingPathComponent:v5];

  return v6;
}

- (uint64_t)accessoryType
{
  v1 = [a1 bestURL];
  v2 = [v1 absoluteString];
  v3 = [v2 lastPathComponent];

  v4 = [v3 isEqualToString:@"arrow"];
  return v4;
}

- (id)resourceImage
{
  v1 = [a1 bestURL];
  v2 = [v1 absoluteString];
  v3 = [v2 lastPathComponent];

  if ([v3 isEqualToString:@"video"])
  {
    v4 = [MEMORY[0x1E69DCAB8] vui_videosUIImageNamed:@"ExtrasPlayGlyph"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end