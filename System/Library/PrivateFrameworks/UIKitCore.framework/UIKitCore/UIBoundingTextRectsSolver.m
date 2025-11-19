@interface UIBoundingTextRectsSolver
@end

@implementation UIBoundingTextRectsSolver

uint64_t __68___UIBoundingTextRectsSolver__calculateRectsUsingTextLayoutManager___block_invoke(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, uint64_t a6, void *a7)
{
  v12 = a7;
  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  v14 = *(*(a1 + 32) + 152);

  if (has_internal_diagnostics)
  {
    if (v14 != v12)
    {
      v18 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_188A29000, v18, OS_LOG_TYPE_FAULT, "Unexpected textContainer in rect enumeration", buf, 2u);
      }
    }
  }

  else if (v14 != v12)
  {
    v19 = *(__UILogGetCategoryCachedImpl("Assert", &_block_invoke___s_category_7) + 8);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v21[0] = 0;
      _os_log_impl(&dword_188A29000, v19, OS_LOG_TYPE_ERROR, "Unexpected textContainer in rect enumeration", v21, 2u);
    }
  }

  v23.origin.x = a2;
  v23.origin.y = a3;
  v23.size.width = a4;
  v23.size.height = a5;
  v24 = CGRectOffset(v23, *(a1 + 48), *(a1 + 56));
  v15 = *(a1 + 40);
  v16 = [MEMORY[0x1E696B098] valueWithCGRect:{v24.origin.x, v24.origin.y, v24.size.width, v24.size.height}];
  [v15 addObject:v16];

  return 1;
}

void __64___UIBoundingTextRectsSolver__calculateRectsUsingLayoutManager___block_invoke(uint64_t a1, void *a2, NSUInteger a3, NSUInteger a4)
{
  v7 = a2;
  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  v9 = *(*(a1 + 32) + 152);
  if (has_internal_diagnostics)
  {
    if (v9 != v7)
    {
      v23 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_188A29000, v23, OS_LOG_TYPE_FAULT, "Unexpected textContainer in rect enumeration", buf, 2u);
      }
    }
  }

  else if (v9 != v7)
  {
    v24 = *(__UILogGetCategoryCachedImpl("Assert", &_block_invoke_2___s_category_0) + 8);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_188A29000, v24, OS_LOG_TYPE_ERROR, "Unexpected textContainer in rect enumeration", buf, 2u);
    }
  }

  v33.location = a3;
  v33.length = a4;
  v10 = NSIntersectionRange(v33, *(a1 + 56));
  if (v10.length > 1 || v10.location == *(a1 + 56) && v10.length == *(a1 + 64))
  {
    goto LABEL_9;
  }

  v11 = *(a1 + 40);
  v12 = [v11 characterRangeForGlyphRange:v10.location actualGlyphRange:{v10.length, 0}];
  if (!v13)
  {
LABEL_10:

    goto LABEL_11;
  }

  v14 = v12;
  v15 = v13;
  v16 = [v11 textStorage];
  v17 = [v16 attributedSubstringFromRange:{v14, v15}];
  v18 = [v17 string];

  v19 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
  v20 = [v18 stringByTrimmingCharactersInSet:v19];
  v21 = [v20 length];

  if (v21)
  {
LABEL_9:
    v22 = *(a1 + 40);
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __64___UIBoundingTextRectsSolver__calculateRectsUsingLayoutManager___block_invoke_5;
    v26[3] = &unk_1E7127870;
    v27 = v22;
    v30 = v10;
    v28 = v7;
    v31 = *(a1 + 72);
    v29 = *(a1 + 48);
    [v27 enumerateEnclosingRectsForGlyphRange:v10.location withinSelectedGlyphRange:v10.length inTextContainer:*(a1 + 56) usingBlock:{*(a1 + 64), v28, v26}];

    v11 = v27;
    goto LABEL_10;
  }

LABEL_11:
}

void __64___UIBoundingTextRectsSolver__calculateRectsUsingLayoutManager___block_invoke_5(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  [*(a1 + 32) boundingRectForGlyphRange:*(a1 + 56) inTextContainer:{*(a1 + 64), *(a1 + 40)}];
  v18.origin.y = v10;
  v18.size.height = v11;
  v15.origin.x = a2;
  v15.origin.y = a3;
  v15.size.width = a4;
  v15.size.height = a5;
  v18.origin.x = a2;
  v18.size.width = a4;
  v16 = CGRectUnion(v15, v18);
  v17 = CGRectOffset(v16, *(a1 + 72), *(a1 + 80));
  v12 = *(a1 + 48);
  v13 = [MEMORY[0x1E696B098] valueWithCGRect:{v17.origin.x, v17.origin.y, v17.size.width, v17.size.height}];
  [v12 addObject:v13];
}

@end