@interface PFVideoExport
+ (id)singlePassExportItemForAssetAtFileURL:(id)a3 destinationURL:(id)a4 targetFileSize:(unint64_t)a5 error:(id *)a6;
@end

@implementation PFVideoExport

+ (id)singlePassExportItemForAssetAtFileURL:(id)a3 destinationURL:(id)a4 targetFileSize:(unint64_t)a5 error:(id *)a6
{
  v9 = MEMORY[0x1E696AC08];
  v10 = a4;
  v11 = a3;
  v12 = [v9 defaultManager];
  v13 = [v11 path];
  v20 = 0;
  v14 = [v12 attributesOfItemAtPath:v13 error:&v20];
  v15 = v20;

  v16 = [MEMORY[0x1E6987E28] assetWithURL:v11];

  v17 = objc_opt_new();
  [v17 setDestinationFileURL:v10];

  [v17 setTargetOutputFileSize:a5];
  [v17 setTargetOutputMediaDataSize:{a5 - 4 * objc_msgSend(v16, "moovAtomSize")}];
  [v17 setInputAsset:v16];
  if ([v17 preflight])
  {
    v18 = v17;
  }

  else if (a6)
  {
    [MEMORY[0x1E696ABC0] errorWithDomain:@"PFVideoExportErrorDomain" code:2 userInfo:0];
    *a6 = v18 = 0;
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

@end