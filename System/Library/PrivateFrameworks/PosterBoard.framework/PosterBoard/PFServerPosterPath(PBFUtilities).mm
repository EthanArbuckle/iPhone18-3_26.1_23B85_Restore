@interface PFServerPosterPath(PBFUtilities)
- (id)pbf_sha256Hash;
@end

@implementation PFServerPosterPath(PBFUtilities)

- (id)pbf_sha256Hash
{
  v39 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = [MEMORY[0x277CBEB58] set];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v4 = [MEMORY[0x277CCAA00] defaultManager];
  v5 = [a1 instanceURL];
  v6 = [v4 enumeratorAtURL:v5 includingPropertiesForKeys:0 options:8 errorHandler:&__block_literal_global_104];

  v7 = [v6 countByEnumeratingWithState:&v32 objects:v38 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v33;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v33 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v32 + 1) + 8 * i);
        if (([v11 hasDirectoryPath] & 1) == 0 && (objc_msgSend(v11, "pbf_isWithinScratchDirectory") & 1) == 0 && (objc_msgSend(v11, "pbf_isLegacyPosterSnapshot") & 1) == 0)
        {
          v12 = [v11 path];
          v13 = [v12 containsString:@".com.apple.posterkit.provider.contents.configurableOptions.plist"];

          if ((v13 & 1) == 0)
          {
            [v3 addObject:v11];
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v32 objects:v38 count:16];
    }

    while (v8);
  }

  if ([v3 count])
  {
    v14 = [v3 allObjects];
    v15 = [v14 sortedArrayUsingComparator:&__block_literal_global_110];

    memset(&c, 0, sizeof(c));
    CC_SHA256_Init(&c);
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v16 = v15;
    v17 = [v16 countByEnumeratingWithState:&v27 objects:v37 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v28;
      do
      {
        for (j = 0; j != v18; ++j)
        {
          if (*v28 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:*(*(&v27 + 1) + 8 * j) options:8 error:0];
          v22 = [v21 pbf_sha256Hash];

          CC_SHA256_Update(&c, [v22 UTF8String], objc_msgSend(v22, "length"));
        }

        v18 = [v16 countByEnumeratingWithState:&v27 objects:v37 count:16];
      }

      while (v18);
    }

    CC_SHA256_Final(md, &c);
    v23 = [MEMORY[0x277CCAB68] stringWithCapacity:64];
    for (k = 0; k != 32; ++k)
    {
      [v23 appendFormat:@"%02x", md[k]];
    }

    v25 = [MEMORY[0x277CCACA8] stringWithString:v23];
  }

  else
  {
    v25 = 0;
  }

  objc_autoreleasePoolPop(v2);

  return v25;
}

@end