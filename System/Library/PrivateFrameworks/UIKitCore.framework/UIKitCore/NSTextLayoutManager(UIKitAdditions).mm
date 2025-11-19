@interface NSTextLayoutManager(UIKitAdditions)
- (double)ui_contentSizeForLastContainerView;
- (id)viewportRangeForTextContainer:()UIKitAdditions;
- (void)ui_ensureLayoutForViewportBoundsAtRange:()UIKitAdditions;
@end

@implementation NSTextLayoutManager(UIKitAdditions)

- (double)ui_contentSizeForLastContainerView
{
  if (dyld_program_sdk_at_least())
  {
    if (qword_1ED4A0748 != -1)
    {
      dispatch_once(&qword_1ED4A0748, &__block_literal_global_3_12);
    }

    if (byte_1ED4A0739)
    {
      v2 = 1;
    }

    else
    {
      if (qword_1ED4A0740 != -1)
      {
        dispatch_once(&qword_1ED4A0740, &__block_literal_global_502);
      }

      v2 = _MergedGlobals_1266;
    }
  }

  else
  {
    v2 = 0;
  }

  v28 = 0;
  v29 = &v28;
  v30 = 0x3010000000;
  v31 = "";
  v3 = MEMORY[0x1E695F060];
  v32 = *MEMORY[0x1E695F060];
  v4 = [a1 textContentManager];
  v5 = [v4 documentRange];
  v6 = [v5 endLocation];

  [a1 usageBoundsForTextContainer];
  x = v33.origin.x;
  y = v33.origin.y;
  width = v33.size.width;
  height = v33.size.height;
  if (CGRectGetWidth(v33) >= 0.00000011920929)
  {
    v12 = 0.0;
    if (([off_1E70ECBD0 coordinateSystemCompatibilityFor2022AndEarlierSDKEnabled] & 1) == 0)
    {
      v13 = [a1 textContainer];
      [v13 lineFragmentPadding];
      v15 = v14;

      v12 = v15 + v15;
    }

    v34.origin.x = x;
    v34.origin.y = y;
    v34.size.width = width;
    v34.size.height = height;
    v29[4] = v12 + CGRectGetWidth(v34);
  }

  else
  {
    v27[0] = 0;
    v27[1] = v27;
    v27[2] = 0x2020000000;
    v27[3] = 0;
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __73__NSTextLayoutManager_UIKitAdditions__ui_contentSizeForLastContainerView__block_invoke;
    v26[3] = &unk_1E711F2B0;
    v26[4] = &v28;
    v26[5] = v27;
    v11 = [a1 enumerateTextLayoutFragmentsFromLocation:v6 options:11 usingBlock:v26];
    _Block_object_dispose(v27, 8);
  }

  v16 = v2 & 1;
  if (v6)
  {
    v17 = [[off_1E70ECBF0 alloc] initWithLocation:v6];
    [a1 ensureLayoutForRange:v17];
    [a1 usageBoundsForTextContainer];
    v29[5] = CGRectGetHeight(v35);
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __73__NSTextLayoutManager_UIKitAdditions__ui_contentSizeForLastContainerView__block_invoke_2;
    v24[3] = &unk_1E711F2D8;
    v25 = v16;
    v24[4] = &v28;
    [a1 enumerateTextSegmentsInRange:v17 type:1 options:1 usingBlock:v24];
  }

  v18 = v29;
  if (v16)
  {
    v19 = v29[5];
    [a1 usageBoundsForTextContainer];
    if (v19 == CGRectGetHeight(v36))
    {
      [a1 estimatedSizeForLastTextContainer];
      v18 = v29;
      if ((*v3 != v20 || v3[1] != v21) && v21 > v29[5])
      {
        v29[4] = v20;
        v18[5] = v21;
      }
    }

    else
    {
      v18 = v29;
    }
  }

  v22 = v18[4];

  _Block_object_dispose(&v28, 8);
  return v22;
}

- (id)viewportRangeForTextContainer:()UIKitAdditions
{
  v3 = [a3 textViewportLayoutController];
  v4 = [v3 viewportRange];

  return v4;
}

- (void)ui_ensureLayoutForViewportBoundsAtRange:()UIKitAdditions
{
  v13 = a3;
  v4 = [v13 endLocation];
  v5 = [a1 textContainerForLocation:v4];
  v6 = [v5 textViewportLayoutController];
  v7 = [v6 viewportRange];

  if ([v7 isNotEmpty] && ((objc_msgSend(v7, "containsRange:", v13) & 1) != 0 || (objc_msgSend(v7, "endLocation"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "isEqual:", v4), v8, v9)))
  {
    v10 = [off_1E70ECBF0 alloc];
    v11 = [v7 location];
    v12 = [v10 initWithLocation:v11 endLocation:v4];

    [a1 ensureLayoutForRange:v12];
  }

  else
  {
    [a1 ensureLayoutForRange:v13];
  }
}

@end