@interface IMUTITypes
+ (id)UTIByExtension:(id)extension;
+ (id)UTIFromMIMEType:(id)type;
@end

@implementation IMUTITypes

+ (id)UTIByExtension:(id)extension
{
  v3 = MEMORY[0x1E695DEC8];
  extensionCopy = extension;
  v5 = [v3 arrayWithObjects:{@"mov", @"m4v", @"mp4", @"mpv", @"3gp", 0}];
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:{@"m4a", @"mp3", @"m4r", @"aiff", 0}];
  lowercaseString = [extensionCopy lowercaseString];

  if ([lowercaseString isEqualToString:@"pdf"])
  {
    v8 = @"com.adobe.pdf";
  }

  else if ([lowercaseString isEqualToString:@"epub"])
  {
    v8 = @"public.epub";
  }

  else if ([v5 containsObject:lowercaseString])
  {
    v8 = @"public.movie";
  }

  else if ([v6 containsObject:lowercaseString])
  {
    v8 = @"public.audio";
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)UTIFromMIMEType:(id)type
{
  if (!type)
  {
    return 0;
  }

  v3 = [MEMORY[0x1E6982C40] typeWithMIMEType:?];
  if ([v3 conformsToType:*MEMORY[0x1E6982F10]])
  {
    v4 = @"com.adobe.pdf";
  }

  else if ([v3 conformsToType:*MEMORY[0x1E6982D90]])
  {
    v4 = @"public.epub";
  }

  else if ([v3 conformsToType:*MEMORY[0x1E6982EE8]])
  {
    v4 = @"public.movie";
  }

  else if ([v3 conformsToType:*MEMORY[0x1E6982CD0]])
  {
    v4 = @"public.audio";
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end