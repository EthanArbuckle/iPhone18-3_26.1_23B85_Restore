@interface PlistReader
+ (id)plistReaderWithResourcePath:(id)a3;
- (PlistReader)initWithPlist:(id)a3;
@end

@implementation PlistReader

+ (id)plistReaderWithResourcePath:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E696AC08] defaultManager];
  if (![v4 fileExistsAtPath:v3])
  {
    goto LABEL_9;
  }

  if ([v3 hasSuffix:@".mdplist"])
  {

LABEL_5:
    v6 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:v3];
    v4 = v6;
    if (v6)
    {
      v7 = *MEMORY[0x1E695E480];
      [v6 bytes];
      [v4 length];
      v8 = _MDPlistContainerCreateWithBytes();
      if (v8)
      {
        v9 = v8;
        v10 = _MDPlistContainerCopyRootObject();
        CFRelease(v9);
        if (v10)
        {
          v11 = [[PlistReader alloc] initWithPlist:v10];

LABEL_10:
          goto LABEL_11;
        }
      }
    }

LABEL_9:
    v11 = 0;
    goto LABEL_10;
  }

  v5 = [v3 hasSuffix:@".factors"];

  if (v5)
  {
    goto LABEL_5;
  }

  v11 = 0;
LABEL_11:

  return v11;
}

- (PlistReader)initWithPlist:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PlistReader;
  v6 = [(PlistReader *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_plist, a3);
  }

  return v7;
}

@end