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
    alignments = [v3 alignments];
    v5 = [alignments safari_mapObjectsUsingBlock:&__block_literal_global_71];

    v6 = objc_alloc(MEMORY[0x1E6985418]);
    identifier = [v3 identifier];
    v8 = [v6 initWithIdentifier:identifier tokens:v5];
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
    identifier = [self identifier];
    [v4 setUniqueID:identifier];
  }

  if (objc_opt_respondsToSelector())
  {
    tokens = [self tokens];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __79___WKTextManipulationItem_SafariSharedExtras__safari_updateTranslationRequest___block_invoke;
    v8[3] = &unk_1E82899E8;
    v8[4] = self;
    v7 = [tokens safari_mapObjectsUsingBlock:v8];

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
      identifier = [self identifier];
      identifier2 = [v6 identifier];
      if ([identifier isEqualToString:identifier2])
      {
        tokens = [self tokens];
        v11 = [tokens count];
        tokens2 = [v6 tokens];
        v13 = [tokens2 count];

        if (v11 == v13)
        {
          v19 = 0;
          v20 = &v19;
          v21 = 0x2020000000;
          v22 = 1;
          tokens3 = [self tokens];
          tokens4 = [v6 tokens];
          v17[0] = MEMORY[0x1E69E9820];
          v17[1] = 3221225472;
          v17[2] = __105___WKTextManipulationItem_SafariSharedExtras__safari_isEqualToManipulationItem_includingContentEquality___block_invoke;
          v17[3] = &unk_1E8289A10;
          v18 = a4;
          v17[4] = &v19;
          [tokens3 safari_enumerateZippedValuesWithArray:tokens4 withBlock:v17];

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

  v7 = [self isEqualToTextManipulationItem:v6 includingContentEquality:a4];
LABEL_9:

  return v7 & 1;
}

- (id)safari_debugDescription
{
  if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
  {
    v2 = [self debugDescription];
  }

  else
  {
    v2 = [self _safari_descriptionPreservingPrivacy:0];
  }

  return v2;
}

- (id)safari_privacyPreservingDescription
{
  if (objc_opt_respondsToSelector())
  {
    [self description];
  }

  else
  {
    [self _safari_descriptionPreservingPrivacy:1];
  }
  v2 = ;

  return v2;
}

- (id)_safari_descriptionPreservingPrivacy:()SafariSharedExtras
{
  tokens = [self tokens];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __84___WKTextManipulationItem_SafariSharedExtras___safari_descriptionPreservingPrivacy___block_invoke;
  v16[3] = &__block_descriptor_33_e44___NSString_16__0___WKTextManipulationToken_8l;
  v17 = a3;
  v6 = [tokens safari_mapObjectsUsingBlock:v16];

  v7 = MEMORY[0x1E696AEC0];
  v8 = [v6 componentsJoinedByString:{@", \n\t"}];
  v9 = [v7 stringWithFormat:@"[\n\t%@\n]", v8];

  v10 = MEMORY[0x1E696AD60];
  v11 = objc_opt_class();
  identifier = [self identifier];
  v13 = [v10 stringWithFormat:@"<%@: %p identifier = %@ tokens = %@>", v11, self, identifier, v9];;

  v14 = [v13 copy];

  return v14;
}

- (id)safari_dictionaryRepresentation
{
  tokens = [self tokens];
  v3 = [tokens safari_mapObjectsUsingBlock:&__block_literal_global_40];

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  identifier = [self identifier];
  v6 = identifier;
  if (identifier)
  {
    v7 = identifier;
  }

  else
  {
    v7 = &stru_1F4646D10;
  }

  [dictionary setObject:v7 forKeyedSubscript:@"paragraphIdentifier"];

  if (v3)
  {
    v8 = v3;
  }

  else
  {
    v8 = MEMORY[0x1E695E0F0];
  }

  [dictionary setObject:v8 forKeyedSubscript:@"tokens"];
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v10 = [standardUserDefaults BOOLForKey:*MEMORY[0x1E69C96D8]];

  if (v10)
  {
    v11 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(self, "isSubframe")}];
    [dictionary setObject:v11 forKeyedSubscript:@"isInSubframe"];

    v12 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(self, "isCrossSiteSubframe")}];
    [dictionary setObject:v12 forKeyedSubscript:@"isInCrossSiteSubframe"];
  }

  return dictionary;
}

- (__CFString)safari_jsonRepresentation
{
  v2 = MEMORY[0x1E696ACB0];
  safari_dictionaryRepresentation = [self safari_dictionaryRepresentation];
  v9 = 0;
  v4 = [v2 dataWithJSONObject:safari_dictionaryRepresentation options:3 error:&v9];
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
  selfCopy = self;
  v4 = objc_opt_class();
  safari_privacyPreservingDescription = [a2 safari_privacyPreservingDescription];
  v6 = 138543618;
  v7 = v4;
  v8 = 2114;
  v9 = safari_privacyPreservingDescription;
  _os_log_error_impl(&dword_1C6968000, selfCopy, OS_LOG_TYPE_ERROR, "Failed to generate JSON version of %{public}@: %{public}@", &v6, 0x16u);
}

@end