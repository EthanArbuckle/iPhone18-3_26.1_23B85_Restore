@interface PUIPosterSnapshotCacheRecord
@end

@implementation PUIPosterSnapshotCacheRecord

void __60___PUIPosterSnapshotCacheRecord_bundleInfoKeyToColumnLookup__block_invoke(uint64_t a1)
{
  v24 = objc_opt_new();
  v2 = [*(a1 + 32) pf_sqliteCodingDescriptor];
  v3 = [v2 columnForName:@"_snapshotLevelSets"];
  [v24 setObject:v3 forKeyedSubscript:@"PUIPosterSnapshotBundleInfoKeySnapshotLevels"];

  v4 = [v2 columnForName:@"_assetSize"];
  [v24 setObject:v4 forKeyedSubscript:@"PUIPosterSnapshotBundleInfoKeyAssetSize"];

  v5 = [v2 columnForName:@"_persistenceScale"];
  [v24 setObject:v5 forKeyedSubscript:@"PUIPosterSnapshotBundleInfoKeyPersistenceScale"];

  v6 = [v2 columnForName:@"_snapshotScale"];
  [v24 setObject:v6 forKeyedSubscript:@"PUIPosterSnapshotBundleInfoKeyScale"];

  v7 = [v2 columnForName:@"_userInterfaceStyle"];
  [v24 setObject:v7 forKeyedSubscript:@"PUIPosterSnapshotBundleInfoKeyUserInterfaceStyle"];

  v8 = [v2 columnForName:@"_interfaceOrientation"];
  [v24 setObject:v8 forKeyedSubscript:@"PUIPosterSnapshotBundleInfoKeyInterfaceOrientation"];

  v9 = [v2 columnForName:@"_deviceOrientation"];
  [v24 setObject:v9 forKeyedSubscript:@"PUIPosterSnapshotBundleInfoKeyDeviceInterfaceOrientation"];

  v10 = [v2 columnForName:@"_posterUUID"];
  [v24 setObject:v10 forKeyedSubscript:@"PUIPosterSnapshotBundleInfoKeyPosterUUID"];

  v11 = [v2 columnForName:@"_posterVersion"];
  [v24 setObject:v11 forKeyedSubscript:@"PUIPosterSnapshotBundleInfoKeyPosterVersion"];

  v12 = [v2 columnForName:@"_snapshotDefinitionIdentifier"];
  [v24 setObject:v12 forKeyedSubscript:@"PUIPosterSnapshotBundleInfoKeySnapshotDefinitionIdentifier"];

  v13 = [v2 columnForName:@"_hasColorStatistics"];
  [v24 setObject:v13 forKeyedSubscript:@"PUIPosterSnapshotBundleInfoKeyContainsColorStatistics"];

  v14 = [v2 columnForName:@"_snapshotBundleVersion"];
  [v24 setObject:v14 forKeyedSubscript:@"PUIPosterSnapshotBundleInfoKeySnapshotBundleVersion"];

  v15 = [v2 columnForName:@"_snapshotEpoch"];
  [v24 setObject:v15 forKeyedSubscript:@"PUIPosterSnapshotBundleInfoKeySnapshotEpoch"];

  v16 = [v2 columnForName:@"_dateCreated"];
  [v24 setObject:v16 forKeyedSubscript:@"PUIPosterSnapshotBundleInfoKeyDateCreated"];

  v17 = [v2 columnForName:@"_snapshotBundleUUID"];
  [v24 setObject:v17 forKeyedSubscript:@"PUIPosterSnapshotBundleInfoKeySnapshotBundleUUID"];

  v18 = [v2 columnForName:@"_accessibilityContrast"];
  [v24 setObject:v18 forKeyedSubscript:@"PUIPosterSnapshotBundleInfoKeySnapshotAccessibilityContrast"];

  v19 = [v2 columnForName:@"_posterProvider"];
  [v24 setObject:v19 forKeyedSubscript:@"PUIPosterSnapshotBundleInfoKeyPosterProvider"];

  v20 = [v2 columnForName:@"_salientContentRectangle"];
  [v24 setObject:v20 forKeyedSubscript:@"PUIPosterSnapshotBundleInfoKeySaliencyRect"];

  v21 = [v2 columnForName:@"_contentOcclusionRectangles"];
  [v24 setObject:v21 forKeyedSubscript:@"PUIPosterSnapshotBundleInfoKeyOcclusionRects"];

  v22 = [v24 copy];
  v23 = bundleInfoKeyToColumnLookup_bundleInfoKeyToColumnLookup;
  bundleInfoKeyToColumnLookup_bundleInfoKeyToColumnLookup = v22;
}

void __58___PUIPosterSnapshotCacheRecord_pf_sqliteCodingDescriptor__block_invoke()
{
  v54[11] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E69C5198] UUIDColumnNamed:@"_snapshotBundleUUID" attributes:3];
  v47 = [MEMORY[0x1E69C5198] ISO8601DateColumnNamed:@"_dateCreated" attributes:1];
  v43 = [MEMORY[0x1E69C5198] textColumnNamed:@"_posterProvider" attributes:1];
  v1 = [MEMORY[0x1E69C5198] UUIDColumnNamed:@"_posterUUID" attributes:1];
  v42 = [MEMORY[0x1E69C5198] integerColumnNamed:@"_posterVersion" attributes:1];
  v46 = [MEMORY[0x1E69C5198] textColumnNamed:@"_hardwareIdentifier" attributes:0];
  v45 = [MEMORY[0x1E69C5198] textColumnNamed:@"_snapshotDefinitionIdentifier" attributes:1];
  v44 = [MEMORY[0x1E69C5198] textColumnNamed:@"_bootSessionIdentifier" attributes:1];
  v2 = objc_alloc(MEMORY[0x1E69C5130]);
  v3 = objc_opt_self();
  v4 = objc_opt_self();
  v34 = [v2 initWithTransformedValueClass:v3 transformer:&__block_literal_global_283 reverseValueClass:v4 reverseTransformer:&__block_literal_global_291];

  v41 = [objc_alloc(MEMORY[0x1E69C5198]) initWithColumnName:@"_snapshotLevelSets" type:4 attributes:1 valueTransformer:v34];
  v40 = [MEMORY[0x1E69C5198] integerColumnNamed:@"_snapshotEpoch" attributes:1];
  v39 = [MEMORY[0x1E69C5198] integerColumnNamed:@"_snapshotBundleVersion" attributes:1];
  v5 = objc_alloc(MEMORY[0x1E69C5130]);
  v6 = objc_opt_self();
  v7 = objc_opt_self();
  v33 = [v5 initWithTransformedValueClass:v6 transformer:&__block_literal_global_298 reverseValueClass:v7 reverseTransformer:&__block_literal_global_302];

  v50 = [objc_alloc(MEMORY[0x1E69C5198]) initWithColumnName:@"_assetSize" type:4 attributes:1 valueTransformer:v33];
  v35 = [MEMORY[0x1E69C5198] integerColumnNamed:@"_interfaceOrientation" attributes:1];
  v49 = [MEMORY[0x1E69C5198] integerColumnNamed:@"_deviceOrientation" attributes:1];
  v48 = [MEMORY[0x1E69C5198] integerColumnNamed:@"_userInterfaceStyle" attributes:1];
  v38 = [MEMORY[0x1E69C5198] realColumnNamed:@"_snapshotScale" attributes:1];
  v37 = [MEMORY[0x1E69C5198] realColumnNamed:@"_persistenceScale" attributes:1];
  v31 = [MEMORY[0x1E69C5198] realColumnNamed:@"_hasColorStatistics" attributes:1];
  v36 = [MEMORY[0x1E69C5198] integerColumnNamed:@"_accessibilityContrast" attributes:1];
  v8 = objc_alloc(MEMORY[0x1E69C5130]);
  v9 = objc_opt_self();
  v10 = objc_opt_self();
  v32 = [v8 initWithTransformedValueClass:v9 transformer:&__block_literal_global_305 reverseValueClass:v10 reverseTransformer:&__block_literal_global_308];

  v27 = [objc_alloc(MEMORY[0x1E69C5198]) initWithColumnName:@"_salientContentRectangle" type:4 attributes:0 valueTransformer:v32];
  v11 = objc_alloc(MEMORY[0x1E69C5130]);
  v12 = objc_opt_self();
  v13 = objc_opt_self();
  v29 = [v11 initWithTransformedValueClass:v12 transformer:&__block_literal_global_311 reverseValueClass:v13 reverseTransformer:&__block_literal_global_316];

  v28 = [objc_alloc(MEMORY[0x1E69C5198]) initWithColumnName:@"_contentOcclusionRectangles" type:4 attributes:0 valueTransformer:v29];
  v14 = MEMORY[0x1E69C51A8];
  v30 = v0;
  v54[0] = v0;
  v54[1] = v1;
  v54[2] = v42;
  v54[3] = v43;
  v54[4] = v35;
  v54[5] = v49;
  v54[6] = v48;
  v54[7] = v50;
  v54[8] = v27;
  v54[9] = v28;
  v54[10] = v36;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v54 count:11];
  v16 = [v14 indexNamed:@"poster_query_idx" columns:v15];

  v17 = MEMORY[0x1E69C51A8];
  v53[0] = v40;
  v53[1] = v39;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v53 count:2];
  v19 = [v17 indexNamed:@"poster_version_idx" columns:v18];

  v20 = objc_alloc(MEMORY[0x1E69C5190]);
  v52[0] = v0;
  v52[1] = v47;
  v52[2] = v43;
  v52[3] = v1;
  v52[4] = v42;
  v52[5] = v46;
  v52[6] = v45;
  v52[7] = v44;
  v52[8] = v41;
  v52[9] = v40;
  v52[10] = v39;
  v52[11] = v50;
  v52[12] = v35;
  v52[13] = v49;
  v52[14] = v48;
  v52[15] = v38;
  v52[16] = v37;
  v52[17] = v36;
  v52[18] = v31;
  v52[19] = v27;
  v52[20] = v28;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v52 count:21];
  v22 = MEMORY[0x1E695DFD8];
  v51[0] = v16;
  v51[1] = v19;
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v51 count:2];
  v24 = [v22 setWithArray:v23];
  v25 = [v20 initWithTableName:@"_PUIPosterSnapshotCacheRecord" columns:v21 indices:v24];
  v26 = pf_sqliteCodingDescriptor_sqliteCodingDescriptor;
  pf_sqliteCodingDescriptor_sqliteCodingDescriptor = v25;
}

id __58___PUIPosterSnapshotCacheRecord_pf_sqliteCodingDescriptor__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 bs_mapNoNulls:&__block_literal_global_286];
  v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v2 options:0 error:0];

  return v3;
}

id __58___PUIPosterSnapshotCacheRecord_pf_sqliteCodingDescriptor__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 sortedLevels];
  v3 = [v2 array];

  return v3;
}

id __58___PUIPosterSnapshotCacheRecord_pf_sqliteCodingDescriptor__block_invoke_4(uint64_t a1, uint64_t a2)
{
  v2 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a2 options:0 error:0];
  v3 = [v2 bs_mapNoNulls:&__block_literal_global_294];

  return v3;
}

PUIPosterLevelSet *__58___PUIPosterSnapshotCacheRecord_pf_sqliteCodingDescriptor__block_invoke_5(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [PUIPosterLevelSet alloc];
  v4 = [MEMORY[0x1E695DFD8] setWithArray:v2];

  v5 = [(PUIPosterLevelSet *)v3 initWithSet:v4];

  return v5;
}

id __58___PUIPosterSnapshotCacheRecord_pf_sqliteCodingDescriptor__block_invoke_6(uint64_t a1, void *a2)
{
  [a2 CGSizeValue];
  v2 = NSStringFromCGSize(v6);
  v3 = [v2 dataUsingEncoding:4];

  return v3;
}

id __58___PUIPosterSnapshotCacheRecord_pf_sqliteCodingDescriptor__block_invoke_7(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = a2;
  v4 = [[v2 alloc] initWithData:v3 encoding:4];

  v5 = CGSizeFromString(v4);
  v6 = [MEMORY[0x1E696B098] valueWithCGSize:{v5.width, v5.height}];

  return v6;
}

id __58___PUIPosterSnapshotCacheRecord_pf_sqliteCodingDescriptor__block_invoke_9(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = a2;
  v4 = [[v2 alloc] initWithData:v3 encoding:4];

  return v4;
}

id __58___PUIPosterSnapshotCacheRecord_pf_sqliteCodingDescriptor__block_invoke_10(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 allRects];
  v4 = [v3 count];

  if (v4)
  {
    v5 = objc_opt_new();
    v6 = [v2 allRects];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __58___PUIPosterSnapshotCacheRecord_pf_sqliteCodingDescriptor__block_invoke_11;
    v10[3] = &unk_1E7854980;
    v11 = v5;
    v7 = v5;
    [v6 enumerateKeysAndObjectsUsingBlock:v10];

    v8 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v7 options:2 error:0];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void __58___PUIPosterSnapshotCacheRecord_pf_sqliteCodingDescriptor__block_invoke_11(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  [a3 CGRectValue];
  v6 = NSStringFromCGRect(v8);
  [*(a1 + 32) setObject:v6 forKeyedSubscript:v5];
}

PUIPosterContentOcclusionRectSet *__58___PUIPosterSnapshotCacheRecord_pf_sqliteCodingDescriptor__block_invoke_12(uint64_t a1, uint64_t a2)
{
  v2 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a2 options:0 error:0];
  v3 = v2;
  v4 = MEMORY[0x1E695E0F8];
  if (v2)
  {
    v4 = v2;
  }

  v5 = v4;

  v6 = [[PUIPosterContentOcclusionRectSet alloc] initWithNameToRectDictionary:v5];

  return v6;
}

id __44___PUIPosterSnapshotCacheRecord_description__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 40) withName:@"_snapshotBundleUUID"];
  v3 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 56) withName:@"_hardwareIdentifier"];
  v4 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 72) withName:@"_bootSessionIdentifier"];
  v5 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 80) withName:@"_snapshotLevelSets"];
  v6 = *(a1 + 32);
  v7 = [MEMORY[0x1E696B098] valueWithCGSize:{*(*(a1 + 40) + 160), *(*(a1 + 40) + 168)}];
  v8 = [v6 appendObject:v7 withName:@"_assetSize"];

  v9 = [*(a1 + 32) appendInteger:*(*(a1 + 40) + 120) withName:@"_userInterfaceStyle"];
  v10 = [*(a1 + 32) appendDouble:@"_snapshotScale" withName:2 decimalPrecision:*(*(a1 + 40) + 128)];
  v11 = [*(a1 + 32) appendDouble:@"_persistenceScale" withName:2 decimalPrecision:*(*(a1 + 40) + 136)];
  v12 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 8) withName:@"_hasColorStatistics"];
  v13 = [*(a1 + 32) appendInteger:*(*(a1 + 40) + 144) withName:@"_accessibilityContrast"];
  v14 = [*(a1 + 32) appendInteger:*(*(a1 + 40) + 88) withName:@"_snapshotEpoch"];
  v15 = [*(a1 + 32) appendInteger:*(*(a1 + 40) + 96) withName:@"_snapshotBundleVersion"];
  result = CGRectIsInfinite(*(*(a1 + 40) + 176));
  if ((result & 1) == 0)
  {
    result = [*(a1 + 32) appendRect:@"_salientContentRectangle" withName:{*(*(a1 + 40) + 176), *(*(a1 + 40) + 184), *(*(a1 + 40) + 192), *(*(a1 + 40) + 200)}];
  }

  v17 = *(*(a1 + 40) + 152);
  if (v17)
  {
    return [*(a1 + 32) appendObject:v17 withName:@"_contentOcclusionRectangles"];
  }

  return result;
}

@end