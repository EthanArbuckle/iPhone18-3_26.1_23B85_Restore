@interface NSFileHandle(Availability)
+ (id)uarpCreateFileHandleForWritingToURL:()Availability error:;
@end

@implementation NSFileHandle(Availability)

+ (id)uarpCreateFileHandleForWritingToURL:()Availability error:
{
  v5 = a3;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  path = [v5 path];
  v8 = [defaultManager fileExistsAtPath:path];

  if (v8)
  {
    path2 = [v5 path];
    v10 = [defaultManager removeItemAtPath:path2 error:a4];

    if (!v10)
    {
      goto LABEL_5;
    }
  }

  path3 = [v5 path];
  v12 = [defaultManager createFileAtPath:path3 contents:0 attributes:0];

  if (v12)
  {
    v13 = [MEMORY[0x277CCA9F8] fileHandleForWritingToURL:v5 error:a4];
  }

  else
  {
LABEL_5:
    v13 = 0;
  }

  return v13;
}

@end