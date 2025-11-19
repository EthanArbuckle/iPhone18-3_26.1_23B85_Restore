@interface CKPackage(BRCItemAdditions)
+ (uint64_t)anchorExistsForArchiverInfo:()BRCItemAdditions;
+ (void)destroyAnchorAndPackageAnchoredAtURL:()BRCItemAdditions;
- (uint64_t)anchorAtURL:()BRCItemAdditions error:;
@end

@implementation CKPackage(BRCItemAdditions)

+ (void)destroyAnchorAndPackageAnchoredAtURL:()BRCItemAdditions
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CFAE68] dataWithContentsOfURL:v3];
  if (v4)
  {
    v5 = [MEMORY[0x277CBC538] descriptionOfAnchor:v4];
    v6 = brc_bread_crumbs();
    v7 = brc_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v10 = 138543874;
      v11 = v3;
      v12 = 2114;
      v13 = v5;
      v14 = 2112;
      v15 = v6;
      _os_log_debug_impl(&dword_223E7A000, v7, OS_LOG_TYPE_DEBUG, "[DEBUG] Destroying anchor %{public}@: %{public}@%@", &v10, 0x20u);
    }

    [MEMORY[0x277CBC538] liftAnchor:v4];
    v8 = [MEMORY[0x277CCAA00] defaultManager];
    [v8 removeItemAtURL:v3 error:0];
  }

  v9 = *MEMORY[0x277D85DE8];
}

+ (uint64_t)anchorExistsForArchiverInfo:()BRCItemAdditions
{
  v3 = MEMORY[0x277CCACA8];
  v4 = a3;
  v5 = [[v3 alloc] initWithData:v4 encoding:4];

  v6 = [MEMORY[0x277CBEBC0] URLWithString:v5];
  v7 = [v6 checkResourceIsReachableAndReturnError:0];

  return v7;
}

- (uint64_t)anchorAtURL:()BRCItemAdditions error:
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = brc_bread_crumbs();
  v8 = brc_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v16 = [a1 packageID];
    v17 = 138412802;
    v18 = v16;
    v19 = 2112;
    v20 = v6;
    v21 = 2112;
    v22 = v7;
    _os_log_debug_impl(&dword_223E7A000, v8, OS_LOG_TYPE_DEBUG, "[DEBUG] Anchoring CKPackageID=%@ at %@%@", &v17, 0x20u);
  }

  [objc_opt_class() destroyAnchorAndPackageAnchoredAtURL:v6];
  v9 = [BRCUserDefaults defaultsForMangledID:0];
  v10 = MEMORY[0x277CBEAA8];
  [v9 packageAnchorExpirationInterval];
  v11 = [v10 dateWithTimeIntervalSinceNow:?];
  v12 = [a1 anchorWithExpirationDate:v11 error:a4];
  v13 = [v12 writeToURL:v6 options:1 error:a4];

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

@end