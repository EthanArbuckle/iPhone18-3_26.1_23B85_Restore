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
  v2 = [self url];
  if (!v2)
  {
    srcset = [self srcset];
    memset(v5, 0, sizeof(v5));
    if ([srcset countByEnumeratingWithState:v5 objects:v6 count:16])
    {
      v2 = [srcset objectForKey:**(&v5[0] + 1)];
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
  bestURL = [self bestURL];
  path = [bestURL path];
  v5 = [path stringByReplacingOccurrencesOfString:@"/" withString:&stru_1F5DB25C0];
  v6 = [v2 stringByAppendingPathComponent:v5];

  return v6;
}

- (uint64_t)accessoryType
{
  bestURL = [self bestURL];
  absoluteString = [bestURL absoluteString];
  lastPathComponent = [absoluteString lastPathComponent];

  v4 = [lastPathComponent isEqualToString:@"arrow"];
  return v4;
}

- (id)resourceImage
{
  bestURL = [self bestURL];
  absoluteString = [bestURL absoluteString];
  lastPathComponent = [absoluteString lastPathComponent];

  if ([lastPathComponent isEqualToString:@"video"])
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