@interface SUManifestBuilder
+ (id)manifestFromDescriptor:(id)descriptor;
@end

@implementation SUManifestBuilder

+ (id)manifestFromDescriptor:(id)descriptor
{
  sepDigest = [descriptor sepDigest];
  rsepDigest = [descriptor rsepDigest];
  sepTBMDigest = [descriptor sepTBMDigest];
  rsepTBMDigest = [descriptor rsepTBMDigest];
  SULogInfo(@"sepDigest = %@", v8, v9, v10, v11, v12, v13, v14, sepDigest);
  SULogInfo(@"rsepDigest = %@", v15, v16, v17, v18, v19, v20, v21, rsepDigest);
  SULogInfo(@"sepTBMDigest = %@", v22, v23, v24, v25, v26, v27, v28, sepTBMDigest);
  SULogInfo(@"rsepTBMDigest = %@", v29, v30, v31, v32, v33, v34, v35, rsepTBMDigest);
  if (sepDigest && rsepDigest)
  {
    SULogInfo(@"building pre-manifest", v36, v37, v38, v39, v40, v41, v42, v45);
    result = buildPreManifest(sepDigest, sepTBMDigest, rsepDigest, rsepTBMDigest);
    if (result)
    {
      return result;
    }

    v44 = @"failed to create required pre-manifest";
  }

  else
  {
    v46 = sepDigest;
    v44 = @"manifest required and missing one of sepDigest (%@) or rsepDigest(%@)";
  }

  SULogInfo(v44, v36, v37, v38, v39, v40, v41, v42, v46);
  return 0;
}

@end