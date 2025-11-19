@interface SUManifestBuilder
+ (id)manifestFromDescriptor:(id)a3;
@end

@implementation SUManifestBuilder

+ (id)manifestFromDescriptor:(id)a3
{
  v4 = [a3 sepDigest];
  v5 = [a3 rsepDigest];
  v6 = [a3 sepTBMDigest];
  v7 = [a3 rsepTBMDigest];
  SULogInfo(@"sepDigest = %@", v8, v9, v10, v11, v12, v13, v14, v4);
  SULogInfo(@"rsepDigest = %@", v15, v16, v17, v18, v19, v20, v21, v5);
  SULogInfo(@"sepTBMDigest = %@", v22, v23, v24, v25, v26, v27, v28, v6);
  SULogInfo(@"rsepTBMDigest = %@", v29, v30, v31, v32, v33, v34, v35, v7);
  if (v4 && v5)
  {
    SULogInfo(@"building pre-manifest", v36, v37, v38, v39, v40, v41, v42, v45);
    result = buildPreManifest(v4, v6, v5, v7);
    if (result)
    {
      return result;
    }

    v44 = @"failed to create required pre-manifest";
  }

  else
  {
    v46 = v4;
    v44 = @"manifest required and missing one of sepDigest (%@) or rsepDigest(%@)";
  }

  SULogInfo(v44, v36, v37, v38, v39, v40, v41, v42, v46);
  return 0;
}

@end