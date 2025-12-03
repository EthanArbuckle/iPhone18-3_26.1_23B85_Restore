@interface NSMutableAttributedString(REMCRMergeableStringDocument_Styling)
- (void)rem_setFontHint:()REMCRMergeableStringDocument_Styling isOn:inRange:;
- (void)rem_setUnderline:()REMCRMergeableStringDocument_Styling inRange:;
@end

@implementation NSMutableAttributedString(REMCRMergeableStringDocument_Styling)

- (void)rem_setFontHint:()REMCRMergeableStringDocument_Styling isOn:inRange:
{
  v24 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v25.length = [self length];
    v25.location = 0;
    v27.location = a5;
    v27.length = a6;
    v11 = NSIntersectionRange(v25, v27);
    if (v11.length && v11.location != 0x7FFFFFFFFFFFFFFFLL)
    {
      [self beginEditing];
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __96__NSMutableAttributedString_REMCRMergeableStringDocument_Styling__rem_setFontHint_isOn_inRange___block_invoke;
      v16[3] = &unk_1E75089D8;
      v17 = a4;
      v16[4] = self;
      v16[5] = a3;
      [self enumerateAttributesInRange:v11.location options:v11.length usingBlock:{0x100000, v16}];
      [self endEditing];
      v12 = +[REMLog crdt];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = NSStringFromRange(v11);
        *buf = 134218498;
        selfCopy = self;
        v20 = 2048;
        v21 = a3;
        v22 = 2112;
        v23 = v13;
        _os_log_impl(&dword_19A0DB000, v12, OS_LOG_TYPE_INFO, "Added REMTTFontHint to this NSMutableAttributedString {self: %p, hint: %lu, range: %@}", buf, 0x20u);
      }
    }
  }

  else
  {
    v14 = +[REMLog crdt];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v26.location = a5;
      v26.length = a6;
      [NSMutableAttributedString(REMCRMergeableStringDocument_Styling) rem_setFontHint:self isOn:v26 inRange:v14];
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)rem_setUnderline:()REMCRMergeableStringDocument_Styling inRange:
{
  v21 = *MEMORY[0x1E69E9840];
  v22.length = [self length];
  v22.location = 0;
  v23.location = a4;
  v23.length = a5;
  v9 = NSIntersectionRange(v22, v23);
  if (v9.length && v9.location != 0x7FFFFFFFFFFFFFFFLL)
  {
    [self beginEditing];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __92__NSMutableAttributedString_REMCRMergeableStringDocument_Styling__rem_setUnderline_inRange___block_invoke;
    v13[3] = &unk_1E7508A00;
    v14 = a3;
    v13[4] = self;
    [self enumerateAttributesInRange:v9.location options:v9.length usingBlock:{0x100000, v13}];
    [self endEditing];
    v10 = +[REMLog crdt];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = NSStringFromRange(v9);
      *buf = 134218498;
      selfCopy = self;
      v17 = 1024;
      v18 = a3;
      v19 = 2112;
      v20 = v11;
      _os_log_impl(&dword_19A0DB000, v10, OS_LOG_TYPE_INFO, "Added REMTTUnderline to this NSMutableAttributedString {self: %p, value: %d, range: %@}", buf, 0x1Cu);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)rem_setFontHint:()REMCRMergeableStringDocument_Styling isOn:inRange:.cold.1(uint64_t a1, NSRange range, NSObject *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = NSStringFromRange(range);
  v7 = 134218242;
  v8 = a1;
  v9 = 2112;
  v10 = v5;
  _os_log_error_impl(&dword_19A0DB000, a3, OS_LOG_TYPE_ERROR, "Invalid 0 value provided when trying to -rem_setFontHint:isOn:range: to this NSMutableAttributedString {self: %p, range: %@}", &v7, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

@end