@interface PFVideoExport
+ (id)singlePassExportItemForAssetAtFileURL:(id)l destinationURL:(id)rL targetFileSize:(unint64_t)size error:(id *)error;
@end

@implementation PFVideoExport

+ (id)singlePassExportItemForAssetAtFileURL:(id)l destinationURL:(id)rL targetFileSize:(unint64_t)size error:(id *)error
{
  v9 = MEMORY[0x1E696AC08];
  rLCopy = rL;
  lCopy = l;
  defaultManager = [v9 defaultManager];
  path = [lCopy path];
  v20 = 0;
  v14 = [defaultManager attributesOfItemAtPath:path error:&v20];
  v15 = v20;

  v16 = [MEMORY[0x1E6987E28] assetWithURL:lCopy];

  v17 = objc_opt_new();
  [v17 setDestinationFileURL:rLCopy];

  [v17 setTargetOutputFileSize:size];
  [v17 setTargetOutputMediaDataSize:{size - 4 * objc_msgSend(v16, "moovAtomSize")}];
  [v17 setInputAsset:v16];
  if ([v17 preflight])
  {
    v18 = v17;
  }

  else if (error)
  {
    [MEMORY[0x1E696ABC0] errorWithDomain:@"PFVideoExportErrorDomain" code:2 userInfo:0];
    *error = v18 = 0;
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

@end