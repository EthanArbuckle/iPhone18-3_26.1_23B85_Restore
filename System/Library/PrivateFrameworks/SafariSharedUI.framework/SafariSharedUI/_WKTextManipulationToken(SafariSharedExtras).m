@interface _WKTextManipulationToken(SafariSharedExtras)
+ (id)safari_tokenWithTranslationAlignmentRepresentation:()SafariSharedExtras;
- (__CFString)safari_jsonRepresentation;
- (id)_safari_descriptionPreservingPrivacy:()SafariSharedExtras;
- (id)safari_debugDescription;
- (id)safari_dictionaryRepresentation;
- (id)safari_privacyPreservingDescription;
- (id)safari_privacyPreservingMetadata;
- (id)safari_translationRangeRepresentation;
- (uint64_t)safari_isEqualToManipulationToken:()SafariSharedExtras includingContentEquality:;
@end

@implementation _WKTextManipulationToken(SafariSharedExtras)

+ (id)safari_tokenWithTranslationAlignmentRepresentation:()SafariSharedExtras
{
  v3 = a3;
  if (get_LTAlignmentClass())
  {
    v4 = objc_alloc_init(MEMORY[0x1E6985420]);
    v5 = [v3 identifier];
    [v4 setIdentifier:v5];

    v6 = [v3 text];
    [v4 setContent:v6];

    [v4 setExcluded:{objc_msgSend(v3, "shouldTranslate") ^ 1}];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)safari_translationRangeRepresentation
{
  v2 = objc_alloc(get_LTTranslationRangeClass());
  v3 = [a1 identifier];
  v4 = v3;
  v5 = &stru_1F4646D10;
  if (v3)
  {
    v6 = v3;
  }

  else
  {
    v6 = &stru_1F4646D10;
  }

  v7 = [a1 content];
  v8 = v7;
  if (v7)
  {
    v5 = v7;
  }

  v9 = [v2 initWithIdentifier:v6 text:v5 shouldTranslate:{objc_msgSend(a1, "isExcluded") ^ 1}];

  if (objc_opt_respondsToSelector())
  {
    v10 = [a1 safari_privacyPreservingMetadata];
    [v9 setMetaInfo:v10];
  }

  return v9;
}

- (uint64_t)safari_isEqualToManipulationToken:()SafariSharedExtras includingContentEquality:
{
  v6 = a3;
  if (objc_opt_respondsToSelector())
  {
    v7 = [a1 isEqualToTextManipulationToken:v6 includingContentEquality:a4];
  }

  else if (v6)
  {
    v8 = [a1 identifier];
    v9 = [v6 identifier];
    v10 = WBSIsEqual();

    LODWORD(v8) = [a1 isExcluded];
    v11 = v8 ^ [v6 isExcluded];
    if (a4)
    {
      v12 = [a1 content];
      v13 = [v6 content];
      v14 = WBSIsEqual();
    }

    else
    {
      v14 = 1;
    }

    v7 = v10 & v14 & (v11 ^ 1u);
  }

  else
  {
    v7 = 0;
  }

  return v7;
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
  v5 = MEMORY[0x1E696AD60];
  v6 = objc_opt_class();
  v7 = [a1 identifier];
  v8 = [v5 stringWithFormat:@"<%@: %p identifier = %@; isExcluded = %i", v6, a1, v7, objc_msgSend(a1, "isExcluded")];;

  v9 = [a1 content];
  v10 = v9;
  if (a3)
  {
    [v8 appendFormat:@"; content length = %lu", objc_msgSend(v9, "length")];
  }

  else
  {
    [v8 appendFormat:@"; content = %@", v9];
  }

  [v8 appendString:@">"];
  v11 = [v8 copy];

  return v11;
}

- (id)safari_privacyPreservingMetadata
{
  v13[2] = *MEMORY[0x1E69E9840];
  if (objc_opt_respondsToSelector())
  {
    v2 = [a1 userInfo];
    v12[0] = @"_WKTextManipulationTokenUserInfoTagNameKey";
    v12[1] = @"_WKTextManipulationTokenUserInfoRoleAttributeKey";
    v13[0] = @"tagName";
    v13[1] = @"roleAttribute";
    v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:2];
    v4 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v3, "count")}];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __80___WKTextManipulationToken_SafariSharedExtras__safari_privacyPreservingMetadata__block_invoke;
    v9[3] = &unk_1E8289AB8;
    v10 = v2;
    v11 = v4;
    v5 = v4;
    v6 = v2;
    [v3 enumerateKeysAndObjectsUsingBlock:v9];
    v7 = [v5 copy];
  }

  else
  {
    v7 = MEMORY[0x1E695E0F8];
  }

  return v7;
}

- (id)safari_dictionaryRepresentation
{
  v17[3] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695DF90];
  v16[0] = @"identifier";
  v3 = [a1 identifier];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = &stru_1F4646D10;
  }

  v17[0] = v5;
  v16[1] = @"shouldTranslate";
  v6 = [a1 isExcluded];
  v7 = MEMORY[0x1E695E118];
  if (v6)
  {
    v7 = MEMORY[0x1E695E110];
  }

  v17[1] = v7;
  v16[2] = @"text";
  v8 = [a1 content];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = &stru_1F4646D10;
  }

  v17[2] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:3];
  v12 = [v2 dictionaryWithDictionary:v11];

  v13 = [a1 safari_privacyPreservingMetadata];
  if ([v13 count])
  {
    [v12 setObject:v13 forKeyedSubscript:@"metadata"];
  }

  v14 = [v12 copy];

  return v14;
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

@end