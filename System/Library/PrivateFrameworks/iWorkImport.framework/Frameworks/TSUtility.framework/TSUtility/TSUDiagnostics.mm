@interface TSUDiagnostics
+ (id)diagnosticDataDirectory;
@end

@implementation TSUDiagnostics

+ (id)diagnosticDataDirectory
{
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v10 = 0;
  v3 = [defaultManager URLForDirectory:5 inDomain:1 appropriateForURL:0 create:1 error:&v10];
  v4 = v10;
  if (v3)
  {
    v5 = [v3 URLByAppendingPathComponent:@"DiagnosticData" isDirectory:1];
    v9 = v4;
    v6 = [defaultManager createDirectoryAtURL:v5 withIntermediateDirectories:1 attributes:0 error:&v9];
    v7 = v9;

    if ((v6 & 1) == 0 && TSUDefaultCat_init_token != -1)
    {
      sub_2771156AC();
    }
  }

  else
  {
    if (TSUDefaultCat_init_token != -1)
    {
      sub_2771156D4();
    }

    v5 = 0;
    v7 = v4;
  }

  return v5;
}

@end