@interface NSAttributedString(REMCRMergeableStringDocument_Hashtags)
- (REMTTHashtag)rem_hashtagAtIndex:()REMCRMergeableStringDocument_Hashtags effectiveRange:wantsLongestEffectiveRange:inRange:;
- (uint64_t)rem_hashtagAtIndex:()REMCRMergeableStringDocument_Hashtags effectiveRange:;
- (void)rem_enumerateHashtagInRange:()REMCRMergeableStringDocument_Hashtags options:usingBlock:;
@end

@implementation NSAttributedString(REMCRMergeableStringDocument_Hashtags)

- (uint64_t)rem_hashtagAtIndex:()REMCRMergeableStringDocument_Hashtags effectiveRange:
{
  string = [self string];
  v8 = [string length];

  return [self rem_hashtagAtIndex:a3 effectiveRange:a4 wantsLongestEffectiveRange:0 inRange:{0, v8}];
}

- (REMTTHashtag)rem_hashtagAtIndex:()REMCRMergeableStringDocument_Hashtags effectiveRange:wantsLongestEffectiveRange:inRange:
{
  if ([self length])
  {
    if (a5)
    {
      [self attribute:@"_TTREMHashtag" atIndex:a3 longestEffectiveRange:a4 inRange:{a6, a7}];
    }

    else
    {
      [self attribute:@"_TTREMHashtag" atIndex:a3 effectiveRange:a4];
    }
    v14 = ;
    v15 = objc_opt_class();
    v16 = REMDynamicCast(v15, v14);
    if (v16)
    {
      v17 = [REMTTHashtag alloc];
      objectIdentifier = [v16 objectIdentifier];
      v19 = [(REMTTHashtag *)v17 initWithObjectIdentifier:objectIdentifier];
    }

    else
    {
      if (v14)
      {
        v20 = +[REMLog crdt];
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          [NSAttributedString(REMCRMergeableStringDocument_Hashtags) rem_hashtagAtIndex:v14 effectiveRange:a4 wantsLongestEffectiveRange:? inRange:?];
        }
      }

      v19 = 0;
    }

    v13 = v19;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)rem_enumerateHashtagInRange:()REMCRMergeableStringDocument_Hashtags options:usingBlock:
{
  v10 = a6;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __108__NSAttributedString_REMCRMergeableStringDocument_Hashtags__rem_enumerateHashtagInRange_options_usingBlock___block_invoke;
  v12[3] = &unk_1E75085E0;
  v13 = v10;
  v11 = v10;
  [self enumerateAttribute:@"_TTREMHashtag" inRange:a3 options:a4 usingBlock:{a5, v12}];
}

- (void)rem_hashtagAtIndex:()REMCRMergeableStringDocument_Hashtags effectiveRange:wantsLongestEffectiveRange:inRange:.cold.1(uint64_t a1, NSRange *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = NSStringFromRange(*a2);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x1E69E9840];
}

@end