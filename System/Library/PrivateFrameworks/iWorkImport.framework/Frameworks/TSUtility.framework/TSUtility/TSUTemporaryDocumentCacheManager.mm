@interface TSUTemporaryDocumentCacheManager
+ (id)baseDirectoryURL;
+ (id)sharedManager;
- (id)newDirectoryForDocumentUUID:(id)a3;
- (id)newDirectoryWithFilename:(id)a3;
@end

@implementation TSUTemporaryDocumentCacheManager

+ (id)baseDirectoryURL
{
  v2 = [MEMORY[0x277CCAA00] defaultManager];
  v6 = 0;
  v3 = [v2 URLForDirectory:13 inDomain:1 appropriateForURL:0 create:1 error:&v6];

  if (v3)
  {
    v4 = [v3 URLByAppendingPathComponent:@"DocumentCaches"];
  }

  else
  {
    if (TSUDefaultCat_init_token != -1)
    {
      sub_277114514();
    }

    v4 = 0;
  }

  return v4;
}

+ (id)sharedManager
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2770BCD84;
  block[3] = &unk_27A701A20;
  block[4] = a1;
  if (qword_280A63D70 != -1)
  {
    dispatch_once(&qword_280A63D70, block);
  }

  v2 = qword_280A63D68;

  return v2;
}

- (id)newDirectoryForDocumentUUID:(id)a3
{
  v4 = [a3 UUIDString];
  v5 = [(TSUTemporaryDocumentCacheManager *)self newDirectoryWithFilename:v4];

  return v5;
}

- (id)newDirectoryWithFilename:(id)a3
{
  v4.receiver = self;
  v4.super_class = TSUTemporaryDocumentCacheManager;
  return [(TSUTemporaryDirectoryManager *)&v4 newDirectoryWithFilename:a3];
}

@end