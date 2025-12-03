@interface NSMutableAttributedString(REMCRMergeableStringDocument_Hashtags)
- (unint64_t)rem_removeHashtagInRange:()REMCRMergeableStringDocument_Hashtags;
- (void)rem_addHashtag:()REMCRMergeableStringDocument_Hashtags range:;
@end

@implementation NSMutableAttributedString(REMCRMergeableStringDocument_Hashtags)

- (void)rem_addHashtag:()REMCRMergeableStringDocument_Hashtags range:
{
  v21 = *MEMORY[0x1E69E9840];
  v8 = a3;
  if (!v8)
  {
    v10 = +[REMLog crdt];
    if (os_log_type_enabled(&v10->super, OS_LOG_TYPE_ERROR))
    {
      v23.location = a4;
      v23.length = a5;
      [NSMutableAttributedString(REMCRMergeableStringDocument_Hashtags) rem_addHashtag:self range:v23];
    }

    goto LABEL_12;
  }

  v9 = [self length];
  if (a4 >= v9)
  {
    a4 = v9;
  }

  if (a4 + a5 > v9)
  {
    a5 = v9 - a4;
  }

  if (a5)
  {
    v10 = objc_alloc_init(TTREMHashtag);
    objectIdentifier = [v8 objectIdentifier];
    [(TTREMHashtag *)v10 setObjectIdentifier:objectIdentifier];

    [self addAttribute:@"_TTREMHashtag" value:v10 range:{a4, a5}];
    v12 = +[REMLog crdt];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v22.location = a4;
      v22.length = a5;
      v13 = NSStringFromRange(v22);
      v15 = 134218498;
      selfCopy = self;
      v17 = 2112;
      v18 = v10;
      v19 = 2112;
      v20 = v13;
      _os_log_impl(&dword_19A0DB000, v12, OS_LOG_TYPE_INFO, "Added TTREMHashtag to this NSMutableAttributedString {self: %p, value: %@, range: %@}", &v15, 0x20u);
    }

LABEL_12:
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (unint64_t)rem_removeHashtagInRange:()REMCRMergeableStringDocument_Hashtags
{
  result = [self length];
  if (a3 >= result)
  {
    v8 = result;
  }

  else
  {
    v8 = a3;
  }

  if (v8 + a4 <= result)
  {
    v9 = a4;
  }

  else
  {
    v9 = result - v8;
  }

  if (v9)
  {

    return [self removeAttribute:@"_TTREMHashtag" range:?];
  }

  return result;
}

- (void)rem_addHashtag:()REMCRMergeableStringDocument_Hashtags range:.cold.1(int a1, NSRange range)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = NSStringFromRange(range);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x1E69E9840];
}

@end