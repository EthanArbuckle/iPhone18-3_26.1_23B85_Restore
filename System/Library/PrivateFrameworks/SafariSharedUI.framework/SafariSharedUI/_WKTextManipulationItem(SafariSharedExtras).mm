@interface _WKTextManipulationItem(SafariSharedExtras)
+ (id)safari_textManipulationItemWithTranslationResult:()SafariSharedExtras;
- (__CFString)safari_jsonRepresentation;
- (id)_safari_descriptionPreservingPrivacy:()SafariSharedExtras;
- (id)safari_debugDescription;
- (id)safari_dictionaryRepresentation;
- (id)safari_privacyPreservingDescription;
- (uint64_t)safari_isEqualToManipulationItem:()SafariSharedExtras includingContentEquality:;
- (void)safari_jsonRepresentation;
- (void)safari_updateTranslationRequest:()SafariSharedExtras;
@end

@implementation _WKTextManipulationItem(SafariSharedExtras)

+ (id)safari_textManipulationItemWithTranslationResult:()SafariSharedExtras
{
  v3 = a3;
  if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
  {
    v4 = [v3 alignments];
    v5 = [v4 safari_mapObjectsUsingBlock:&__block_literal_global_71];

    v6 = objc_alloc(MEMORY[0x1E6985418]);
    v7 = [v3 identifier];
    v8 = [v6 initWithIdentifier:v7 tokens:v5];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)safari_updateTranslationRequest:()SafariSharedExtras
{
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    v5 = [a1 identifier];
    [v4 setUniqueID:v5];
  }

  if (objc_opt_respondsToSelector())
  {
    v6 = [a1 tokens];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __79___WKTextManipulationItem_SafariSharedExtras__safari_updateTranslationRequest___block_invoke;
    v8[3] = &unk_1E82899E8;
    v8[4] = a1;
    v7 = [v6 safari_mapObjectsUsingBlock:v8];

    [v4 setRanges:v7];
  }
}

- (uint64_t)safari_isEqualToManipulationItem:()SafariSharedExtras includingContentEquality:
{
  v6 = a3;
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    if (v6)
    {
      v8 = [a1 identifier];
      v9 = [v6 identifier];
      if ([v8 isEqualToString:v9])
      {
        v10 = [a1 tokens];
        v11 = [v10 count];
        v12 = [v6 tokens];
        v13 = [v12 count];

        if (v11 == v13)
        {
          v19 = 0;
          v20 = &v19;
          v21 = 0x2020000000;
          v22 = 1;
          v14 = [a1 tokens];
          v15 = [v6 tokens];
          v17[0] = MEMORY[0x1E69E9820];
          v17[1] = 3221225472;
          v17[2] = __105___WKTextManipulationItem_SafariSharedExtras__safari_isEqualToManipulationItem_includingContentEquality___block_invoke;
          v17[3] = &unk_1E8289A10;
          v18 = a4;
          v17[4] = &v19;
          [v14 safari_enumerateZippedValuesWithArray:v15 withBlock:v17];

          v7 = *(v20 + 24);
          _Block_object_dispose(&v19, 8);
          goto LABEL_9;
        }
      }

      else
      {
      }
    }

    v7 = 0;
    goto LABEL_9;
  }

  v7 = [a1 isEqualToTextManipulationItem:v6 includingContentEquality:a4];
LABEL_9:

  return v7 & 1;
}

- (id)safari_debugDescription
{
  if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
  {
    v2 = [a1 debugDescription];
  }

  else
  {
    v2 = [a1 _safari_descriptionPreservingPrivacy:0];
  }

  return v2;
}

- (id)safari_privacyPreservingDescription
{
  if (objc_opt_respondsToSelector())
  {
    [a1 description];
  }

  else
  {
    [a1 _safari_descriptionPreservingPrivacy:1];
  }
  v2 = ;

  return v2;
}

- (id)_safari_descriptionPreservingPrivacy:()SafariSharedExtras
{
  v5 = [a1 tokens];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __84___WKTextManipulationItem_SafariSharedExtras___safari_descriptionPreservingPrivacy___block_invoke;
  v16[3] = &__block_descriptor_33_e44___NSString_16__0___WKTextManipulationToken_8l;
  v17 = a3;
  v6 = [v5 safari_mapObjectsUsingBlock:v16];

  v7 = MEMORY[0x1E696AEC0];
  v8 = [v6 componentsJoinedByString:{@", \n\t"}];
  v9 = [v7 stringWithFormat:@"[\n\t%@\n]", v8];

  v10 = MEMORY[0x1E696AD60];
  v11 = objc_opt_class();
  v12 = [a1 identifier];
  v13 = [v10 stringWithFormat:@"<%@: %p identifier = %@ tokens = %@>", v11, a1, v12, v9];;

  v14 = [v13 copy];

  return v14;
}

- (id)safari_dictionaryRepresentation
{
  v2 = [a1 tokens];
  v3 = [v2 safari_mapObjectsUsingBlock:&__block_literal_global_40];

  v4 = [MEMORY[0x1E695DF90] dictionary];
  v5 = [a1 identifier];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = &stru_1F4646D10;
  }

  [v4 setObject:v7 forKeyedSubscript:@"paragraphIdentifier"];

  if (v3)
  {
    v8 = v3;
  }

  else
  {
    v8 = MEMORY[0x1E695E0F0];
  }

  [v4 setObject:v8 forKeyedSubscript:@"tokens"];
  v9 = [MEMORY[0x1E695E000] standardUserDefaults];
  v10 = [v9 BOOLForKey:*MEMORY[0x1E69C96D8]];

  if (v10)
  {
    v11 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(a1, "isSubframe")}];
    [v4 setObject:v11 forKeyedSubscript:@"isInSubframe"];

    v12 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(a1, "isCrossSiteSubframe")}];
    [v4 setObject:v12 forKeyedSubscript:@"isInCrossSiteSubframe"];
  }

  return v4;
}

- (__CFString)safari_jsonRepresentation
{
  v2 = MEMORY[0x1E696ACB0];
  v3 = [a1 safari_dictionaryRepresentation];
  v9 = 0;
  v4 = [v2 dataWithJSONObject:v3 options:3 error:&v9];
  v5 = v9;

  if (v4)
  {
    v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v4 encoding:4];
  }

  else
  {
    v7 = WBS_LOG_CHANNEL_PREFIXTranslation();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(_WKTextManipulationItem(SafariSharedExtras) *)v7 safari_jsonRepresentation];
    }

    v6 = &stru_1F4646D10;
  }

  return v6;
}

- (void)safari_jsonRepresentation
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = objc_opt_class();
  v5 = [a2 safari_privacyPreservingDescription];
  v6 = 138543618;
  v7 = v4;
  v8 = 2114;
  v9 = v5;
  _os_log_error_impl(&dword_1C6968000, v3, OS_LOG_TYPE_ERROR, "Failed to generate JSON version of %{public}@: %{public}@", &v6, 0x16u);
}

@end