@interface UISearchBarFieldEditor
@end

@implementation UISearchBarFieldEditor

uint64_t __41___UISearchBarFieldEditor_layoutSubviews__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _applyCorrectTextContainerSize];
  v2 = *(a1 + 32);

  return [v2 _updateTokenViews];
}

void __50___UISearchBarFieldEditor_selectionRectsForRange___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) _textLayoutController];
  v5 = [v4 characterRangeForTextRange:*(a1 + 40) clippedToDocument:1];
  v7 = v6;

  v8 = [*(a1 + 32) _textLayoutController];
  v9 = [v8 characterRangesForTextRange:*(a1 + 40) clippedToDocument:1];

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __50___UISearchBarFieldEditor_selectionRectsForRange___block_invoke_2;
  v16[3] = &unk_1E70F8380;
  v17 = v3;
  v20 = v5;
  v21 = v7;
  v15 = *(a1 + 32);
  v10 = *(&v15 + 1);
  v11 = *(a1 + 48);
  v12 = *(a1 + 56);
  *&v13 = v11;
  *(&v13 + 1) = v12;
  v18 = v15;
  v19 = v13;
  v14 = v3;
  [v9 enumerateObjectsUsingBlock:v16];
}

void __50___UISearchBarFieldEditor_selectionRectsForRange___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 rangeValue];
  v5 = v4;
  v6 = *(a1 + 32);
  v7 = *off_1E70EC8C8;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __50___UISearchBarFieldEditor_selectionRectsForRange___block_invoke_3;
  v13[3] = &unk_1E70F8358;
  v16 = *(a1 + 72);
  v12 = *(a1 + 40);
  v8 = *(&v12 + 1);
  v9 = *(a1 + 56);
  v10 = *(a1 + 64);
  *&v11 = v9;
  *(&v11 + 1) = v10;
  v14 = v12;
  v15 = v11;
  [v6 enumerateAttribute:v7 inRange:v3 options:v5 usingBlock:{0, v13}];
}

void __50___UISearchBarFieldEditor_selectionRectsForRange___block_invoke_3(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v76 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3 + a4;
  v9 = *(a1 + 64);
  v10 = *(a1 + 72) + v9;
  v11 = v7;
  objc_opt_class();
  v64 = a3 + a4;
  if (objc_opt_isKindOfClass())
  {
    v12 = [v11 _viewProvider];
    if (v12 || ([*(a1 + 32) _textLayoutController], v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v13, "ensureLayoutForRange:", *(a1 + 40)), v13, objc_msgSend(v11, "_viewProvider"), (v12 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v14 = v12;
      v15 = v64 == v10;
      v16 = a3 == v9;
      v17 = [v12 view];
      [*(a1 + 48) addObject:v17];
      v18 = *(a1 + 32);
      [v17 selectionBounds];
      [v18 convertRect:v17 fromView:?];
      v19 = [_UIMutableTextSelectionRect selectionRectWithRect:*(a1 + 32) fromView:?];
      v20 = +[UIKeyboardInputModeController sharedInputModeController];
      v21 = [v20 currentInputMode];
      [v19 setWritingDirection:{objc_msgSend(v21, "isDefaultRightToLeft")}];

      [v19 setContainsStart:v16];
      [v19 setContainsEnd:v15];
      [v19 _setDrawsOwnHighlight:1];
      [*(a1 + 56) addObject:v19];

      goto LABEL_36;
    }

    if (os_variant_has_internal_diagnostics())
    {
      v60 = __UIFaultDebugAssertLog();
      if (!os_log_type_enabled(v60, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_41;
      }

      v61 = [v11 token];
      *buf = 138412290;
      v75 = v61;
      _os_log_fault_impl(&dword_188A29000, v60, OS_LOG_TYPE_FAULT, "UIKit problem. Missing viewProvider for search token: %@", buf, 0xCu);
    }

    else
    {
      v59 = *(__UILogGetCategoryCachedImpl("Assert", &_block_invoke___s_category) + 8);
      if (!os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_36;
      }

      v60 = v59;
      v61 = [v11 token];
      *buf = 138412290;
      v75 = v61;
      _os_log_impl(&dword_188A29000, v60, OS_LOG_TYPE_ERROR, "UIKit problem. Missing viewProvider for search token: %@", buf, 0xCu);
    }

LABEL_41:
    goto LABEL_36;
  }

  v63 = v11;
  v22 = [*(a1 + 32) _textLayoutController];
  v23 = [v22 textRangeForCharacterRange:{a3, a4}];

  v72.receiver = *(a1 + 32);
  v72.super_class = _UISearchBarFieldEditor;
  v62 = v23;
  v24 = objc_msgSendSuper2(&v72, sel_selectionRectsForRange_, v23);
  v66 = [MEMORY[0x1E695DF70] array];
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  obj = v24;
  v25 = [obj countByEnumeratingWithState:&v68 objects:v73 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v69;
    do
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v69 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v29 = *(*(&v68 + 1) + 8 * i);
        [v29 rect];
        Width = CGRectGetWidth(v77);
        if ((a3 == v9 || ![v29 containsStart] || Width != 0.0) && (v8 == v10 || !objc_msgSend(v29, "containsEnd") || Width != 0.0))
        {
          [v29 rect];
          v32 = v31;
          v34 = v33;
          v36 = v35;
          v38 = v37;
          if ([*(a1 + 48) count])
          {
            v39 = [*(a1 + 48) firstObject];
            v40 = [*(a1 + 32) textInputView];
            [v39 bounds];
            [v40 convertRect:v39 fromView:?];
            recta = v34;
            v41 = v36;
            v42 = v32;
            v44 = v43;
            v46 = v45;
            v48 = v47;
            v50 = v49;

            v8 = v64;
            v78.origin.x = v44;
            v78.origin.y = v46;
            v78.size.width = v48;
            v78.size.height = v50;
            MinY = CGRectGetMinY(v78);
            v79.origin.x = v42;
            v79.origin.y = recta;
            v79.size.width = v41;
            v79.size.height = v38;
            v52 = CGRectGetMinY(v79);
            if (MinY >= v52)
            {
              v53 = v52;
            }

            else
            {
              v53 = MinY;
            }

            v80.origin.x = v44;
            v32 = v42;
            v36 = v41;
            v34 = v53;
            v80.origin.y = v46;
            v80.size.width = v48;
            v80.size.height = v50;
            Height = CGRectGetHeight(v80);
            v81.origin.x = v32;
            v81.origin.y = v34;
            v81.size.width = v36;
            v81.size.height = v38;
            v55 = CGRectGetHeight(v81);
            if (Height >= v55)
            {
              v38 = Height;
            }

            else
            {
              v38 = v55;
            }
          }

          v56 = [_UIMutableTextSelectionRect selectionRectWithRect:*(a1 + 32) fromView:v32, v34, v36, v38];
          [v56 setWritingDirection:{objc_msgSend(v29, "writingDirection")}];
          if (a3 == v9)
          {
            v57 = [v29 containsStart];
          }

          else
          {
            v57 = 0;
          }

          [v56 setContainsStart:v57];
          if (v8 == v10)
          {
            v58 = [v29 containsEnd];
          }

          else
          {
            v58 = 0;
          }

          [v56 setContainsEnd:v58];
          [v66 addObject:v56];
        }
      }

      v26 = [obj countByEnumeratingWithState:&v68 objects:v73 count:16];
    }

    while (v26);
  }

  [*(a1 + 56) addObjectsFromArray:v66];
  v11 = v63;
LABEL_36:
}

@end