@interface UITextStorageDraggableGeometry
@end

@implementation UITextStorageDraggableGeometry

void __71___UITextStorageDraggableGeometry_textRangesForAttachmentsInTextRange___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 24));
    v8 = [WeakRetained _textRangeFromNSRange:{a3, a4}];

    [*(a1 + 40) addObject:v8];
  }
}

void __71___UITextStorageDraggableGeometry_textRangesForAttachmentsInTextRange___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 24));
    v8 = [WeakRetained _textRangeFromNSRange:{a3, a4}];

    [*(a1 + 40) addObject:v8];
  }
}

void __77___UITextStorageDraggableGeometry_textRangeForAttachmentInTextRange_atPoint___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 24));
    obj = [WeakRetained _textRangeFromNSRange:{a3, a4}];

    v10 = objc_loadWeakRetained((*(a1 + 32) + 24));
    LODWORD(a3) = UITextRangeContainsPointInViewWithSlop(v10, obj, *(a1 + 48), *(a1 + 56), 0.0);

    if (a3)
    {
      objc_storeStrong((*(*(a1 + 40) + 8) + 40), obj);
      *a5 = 1;
    }
  }
}

void __77___UITextStorageDraggableGeometry_textRangeForAttachmentInTextRange_atPoint___block_invoke_2(uint64_t a1, uint64_t a2, NSUInteger a3, NSUInteger a4, _BYTE *a5)
{
  v13 = a3;
  v14 = a4;
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 32));
    ExtendAttributedRangeForAttribute(WeakRetained, a3, a4, *off_1E70EC960, &v13);

    v10 = objc_loadWeakRetained((*(a1 + 32) + 24));
    v11 = [v10 _textRangeFromNSRange:{v13, v14}];

    v12 = objc_loadWeakRetained((*(a1 + 32) + 24));
    LODWORD(WeakRetained) = UITextRangeContainsPointInViewWithSlop(v12, v11, *(a1 + 48), *(a1 + 56), 4.0);

    if (WeakRetained)
    {
      objc_storeStrong((*(*(a1 + 40) + 8) + 40), v11);
      *a5 = 1;
    }
  }
}

void __64___UITextStorageDraggableGeometry_draggableObjectsForTextRange___block_invoke(id *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  if (v7 && [off_1E70ECBA8 _attachmentHasImage:v7])
  {
    WeakRetained = objc_loadWeakRetained(a1[4] + 3);
    v9 = [WeakRetained _textRangeFromNSRange:{a3, a4}];

    v10 = [off_1E70ECBA8 _imageFromAttachment:v7];
    v11 = [objc_alloc(MEMORY[0x1E696ACA0]) initWithObject:v10];
    v12 = [UITextDraggableObject draggableObjectWithItemProvider:v11 fromRange:v9];
    v13 = [a1[4] _targetedPreviewProviderForImage:v10 inRange:v9];
    [v12 setTargetedPreviewProvider:v13];

    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __64___UITextStorageDraggableGeometry_draggableObjectsForTextRange___block_invoke_2;
    v15[3] = &unk_1E7124560;
    v14 = v10;
    v16 = v14;
    [v12 setPreviewProvider:v15];
    [a1[5] addObject:v12];
    if (([a1[6] containsObject:v9] & 1) == 0)
    {
      [a1[6] addObject:v9];
    }
  }
}

UIDragPreview *__64___UITextStorageDraggableGeometry_draggableObjectsForTextRange___block_invoke_2(uint64_t a1)
{
  v1 = [[UIImageView alloc] initWithImage:*(a1 + 32)];
  v2 = [[UIDragPreview alloc] initWithView:v1];

  return v2;
}

void __64___UITextStorageDraggableGeometry_draggableObjectsForTextRange___block_invoke_3(id *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  if (v7)
  {
    v8 = v7;
    WeakRetained = objc_loadWeakRetained(a1[4] + 3);
    v10 = [WeakRetained _textRangeFromNSRange:{a3, a4}];

    if ([a1[5] containsObject:v10])
    {
LABEL_13:

      return;
    }

    v36 = 0;
    v37 = &v36;
    v38 = 0x3010000000;
    v39 = "";
    v40 = a3;
    v41 = a4;
    v11 = objc_loadWeakRetained(a1[4] + 3);
    v12 = [v10 start];
    v13 = [v11 _rangeOfSentenceEnclosingPosition:v12];

    v14 = objc_loadWeakRetained(a1[4] + 4);
    v15 = objc_loadWeakRetained(a1[4] + 3);
    v16 = [v15 _nsrangeForTextRange:v13];
    v18 = v17;
    v19 = *off_1E70EC960;
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __64___UITextStorageDraggableGeometry_draggableObjectsForTextRange___block_invoke_4;
    v33[3] = &unk_1E71245B0;
    v8 = v8;
    v34 = v8;
    v35 = &v36;
    [v14 enumerateAttribute:v19 inRange:v16 options:v18 usingBlock:{0, v33}];

    v20 = objc_loadWeakRetained(a1[4] + 4);
    v21 = [v20 attributedSubstringFromRange:{v37[4], v37[5]}];
    v22 = [v21 string];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = [MEMORY[0x1E695DFF8] URLWithString:v8 encodingInvalidCharacters:0];

      v8 = v23;
    }

    if ([a1[4] _isActualLink:v8])
    {
      v24 = [objc_alloc(MEMORY[0x1E696ACA0]) initWithObject:v8];
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __64___UITextStorageDraggableGeometry_draggableObjectsForTextRange___block_invoke_5;
      aBlock[3] = &unk_1E71245D8;
      v31 = v8;
      v32 = v22;
      v25 = _Block_copy(aBlock);

      if (!v24)
      {
        goto LABEL_12;
      }
    }

    else
    {
      if (![v22 length])
      {
        v25 = 0;
        v24 = 0;
        goto LABEL_12;
      }

      v24 = [objc_alloc(MEMORY[0x1E696ACA0]) initWithObject:v22];
      v25 = 0;
      if (!v24)
      {
LABEL_12:

        _Block_object_dispose(&v36, 8);
        goto LABEL_13;
      }
    }

    v26 = objc_loadWeakRetained(a1[4] + 3);
    v27 = [v26 _textRangeFromNSRange:{v37[4], v37[5]}];

    v28 = [UITextDraggableObject draggableObjectWithItemProvider:v24 fromRange:v10];
    v29 = [a1[4] _targetedPreviewProviderForTextInRange:v27 dismissing:0 overrideLifting:&__block_literal_global_588];
    [v28 setTargetedPreviewProvider:v29];

    [v28 setPreviewProvider:v25];
    [a1[6] addObject:v28];
    [a1[5] addObject:v10];

    goto LABEL_12;
  }
}

uint64_t __64___UITextStorageDraggableGeometry_draggableObjectsForTextRange___block_invoke_4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  if (*(result + 32) == a2)
  {
    v5 = *(*(result + 40) + 8);
    *(v5 + 32) = a3;
    *(v5 + 40) = a4;
    *a5 = 1;
  }

  return result;
}

uint64_t __64___UITextStorageDraggableGeometry_draggableObjectsForTextRange___block_invoke_7(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((v4 + 24));
  v8 = [v6 start];

  v9 = [v5 start];

  v10 = [WeakRetained comparePosition:v8 toPosition:v9];
  return v10;
}

uint64_t __64___UITextStorageDraggableGeometry_draggableObjectsForTextRange___block_invoke_8(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((v3 + 24));
  v6 = [WeakRetained _nsrangeForTextRange:v4];
  v8 = v7;

  v9 = a1[5];
  v10 = v6 - a1[6];

  return [v9 deleteCharactersInRange:{v10, v8}];
}

void __66___UITextStorageDraggableGeometry_attributedStringsForTextRanges___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      v8 = 0;
      do
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v15 + 1) + 8 * v8);
        WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 24));
        v11 = [WeakRetained _nsrangeForTextRange:{v9, v15}];
        v13 = v12;

        v14 = [v3 attributedSubstringFromRange:{v11, v13}];
        if (v14)
        {
          [*(a1 + 48) addObject:v14];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }
}

void __64___UITextStorageDraggableGeometry_performSameViewDropOperation___block_invoke(uint64_t a1, void *a2)
{
  v62 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 length];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 24));
  v6 = [*(a1 + 40) targetRange];
  v7 = [WeakRetained _nsrangeForTextRange:v6];
  v9 = v8;

  v48 = v4;
  v66.length = v4 + 1;
  v63.location = v7;
  v63.length = v9;
  v66.location = 0;
  v10 = NSIntersectionRange(v63, v66);
  if ([*(a1 + 40) operation] == 2)
  {
    if (v10.length)
    {
      [v3 deleteCharactersInRange:{v10.location, v10.length}];
    }

    v11 = [*(a1 + 40) text];
    [v3 insertAttributedString:v11 atIndex:v10.location];
  }

  else if ([*(a1 + 40) operation] == 3)
  {
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    obj = [*(a1 + 40) sourceRanges];
    v12 = [obj countByEnumeratingWithState:&v56 objects:v61 count:16];
    if (v12)
    {
      v13 = v12;
      length = 0;
      location = 0;
      v16 = *v57;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          v18 = v3;
          if (*v57 != v16)
          {
            objc_enumerationMutation(obj);
          }

          v19 = *(*(&v56 + 1) + 8 * i);
          v20 = a1;
          v21 = objc_loadWeakRetained((*(a1 + 32) + 24));
          v22 = [v21 _nsrangeForTextRange:v19];
          v24 = v23;

          v67.length = v48 + 1;
          v64.location = v22;
          v64.length = v24;
          v67.location = 0;
          v25 = NSIntersectionRange(v64, v67);
          v3 = v18;
          [v18 addAttribute:@"_UIToBeDeleted" value:MEMORY[0x1E695E118] range:{v25.location, v25.length}];
          if (length)
          {
            v68.location = location;
            v68.length = length;
            v26 = NSUnionRange(v25, v68);
            location = v26.location;
            length = v26.length;
          }

          else
          {
            location = v25.location;
            length = v25.length;
          }

          a1 = v20;
        }

        v13 = [obj countByEnumeratingWithState:&v56 objects:v61 count:16];
      }

      while (v13);
    }

    else
    {
      length = 0;
      location = 0;
    }

    if (v10.length)
    {
      [v3 deleteCharactersInRange:v10.location];
    }

    v27 = [*(a1 + 40) text];
    v28 = [v27 mutableCopy];

    v29 = [v28 length];
    [v28 addAttribute:@"_UIResult" value:MEMORY[0x1E695E118] range:{0, v29}];
    [v3 insertAttributedString:v28 atIndex:v10.location];
    v69.length = [v3 length];
    v65.location = (location - v29) & ~((location - v29) >> 63);
    v65.length = length + 2 * v29;
    v69.location = 0;
    v30 = NSIntersectionRange(v65, v69);
    v31 = MEMORY[0x1E695DF70];
    v32 = [*(a1 + 40) sourceRanges];
    v33 = [v31 arrayWithCapacity:{objc_msgSend(v32, "count")}];

    v54[0] = MEMORY[0x1E69E9820];
    v54[1] = 3221225472;
    v54[2] = __64___UITextStorageDraggableGeometry_performSameViewDropOperation___block_invoke_2;
    v54[3] = &unk_1E70F3050;
    v34 = v33;
    v55 = v34;
    [v3 enumerateAttribute:@"_UIToBeDeleted" inRange:v30.location options:v30.length usingBlock:{0, v54}];
    [v34 sortUsingComparator:&__block_literal_global_26_5];
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v35 = v34;
    v36 = [v35 countByEnumeratingWithState:&v50 objects:v60 count:16];
    if (v36)
    {
      v37 = v36;
      v38 = *v51;
      do
      {
        for (j = 0; j != v37; ++j)
        {
          if (*v51 != v38)
          {
            objc_enumerationMutation(v35);
          }

          v40 = [*(*(&v50 + 1) + 8 * j) rangeValue];
          [v3 deleteCharactersInRange:{v40, v41}];
        }

        v37 = [v35 countByEnumeratingWithState:&v50 objects:v60 count:16];
      }

      while (v37);
    }

    v42 = [v3 length];
    v49[0] = MEMORY[0x1E69E9820];
    v49[1] = 3221225472;
    v49[2] = __64___UITextStorageDraggableGeometry_performSameViewDropOperation___block_invoke_4;
    v49[3] = &unk_1E71246C0;
    v43 = *(a1 + 48);
    v49[4] = *(a1 + 32);
    v49[5] = v43;
    [v3 enumerateAttribute:@"_UIResult" inRange:0 options:v42 usingBlock:{0, v49}];
    v44 = objc_loadWeakRetained((*(a1 + 32) + 24));
    v45 = [v44 _nsrangeForTextRange:*(*(*(a1 + 48) + 8) + 40)];
    [v3 removeAttribute:@"_UIResult" range:{v45, v46}];
  }
}

void __64___UITextStorageDraggableGeometry_performSameViewDropOperation___block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a1 + 32);
    v3 = [MEMORY[0x1E696B098] valueWithRange:?];
    [v2 addObject:v3];
  }
}

uint64_t __64___UITextStorageDraggableGeometry_performSameViewDropOperation___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 rangeValue];
  v6 = [v4 rangeValue];

  if (v5 > v6)
  {
    return -1;
  }

  else
  {
    return v5 < v6;
  }
}

void __64___UITextStorageDraggableGeometry_performSameViewDropOperation___block_invoke_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 24));
    v10 = [WeakRetained _textRangeFromNSRange:{a3, a4}];
    v11 = *(*(a1 + 40) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;

    *a5 = 1;
  }
}

UITargetedDragPreview *__76___UITextStorageDraggableGeometry__targetedPreviewProviderForImage_inRange___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  v5 = *(a1 + 32);
  if (has_internal_diagnostics)
  {
    if (v5)
    {
      goto LABEL_3;
    }

    v39 = __UIFaultDebugAssertLog();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_188A29000, v39, OS_LOG_TYPE_FAULT, "generating a preview for a nil image!", buf, 2u);
    }
  }

  else
  {
    if (v5)
    {
      goto LABEL_3;
    }

    v40 = *(__UILogGetCategoryCachedImpl("Assert", &_block_invoke___s_category_4) + 8);
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      v41[0] = 0;
      _os_log_impl(&dword_188A29000, v40, OS_LOG_TYPE_ERROR, "generating a preview for a nil image!", v41, 2u);
    }
  }

  if (!*(a1 + 32))
  {
    v37 = 0;
    goto LABEL_6;
  }

LABEL_3:
  v6 = [[UIImageView alloc] initWithImage:*(a1 + 32)];
  v7 = *(a1 + 48);
  v8 = *(a1 + 40);
  v9 = v7;
  v10 = [v8 textInputView];
  [v8 _boundingRectForRange:v9];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  if ([v10 isDescendantOfView:v8])
  {
    [v10 convertRect:v8 toView:{v12, v14, v16, v18}];
    v12 = v19;
    v14 = v20;
    v16 = v21;
    v18 = v22;
  }

  [v8 convertRect:v3 toView:{v12, v14, v16, v18}];
  [(UIImageView *)v6 setFrame:?];
  v23 = [UITargetedDragPreview alloc];
  v24 = objc_opt_new();
  v25 = v6;
  v26 = v3;
  v27 = [UIDragPreviewTarget alloc];
  [(UIView *)v25 frame];
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;

  v36 = [(UIPreviewTarget *)v27 initWithContainer:v26 center:v29 + v33 * 0.5, v31 + v35 * 0.5];
  v37 = [(UITargetedDragPreview *)v23 initWithView:v25 parameters:v24 target:v36];

LABEL_6:

  return v37;
}

UITargetedDragPreview *__101___UITextStorageDraggableGeometry__targetedPreviewProviderForTextInRange_dismissing_overrideLifting___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 24));
  v7 = [WeakRetained _window];
  v8 = [v5 _window];
  v9 = v8;
  if (v7)
  {
    v10 = v8 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    v11 = 0;
    goto LABEL_29;
  }

  v12 = *(a1 + 48);
  if (v12)
  {
    a3 = (*(v12 + 16))();
  }

  v13 = *(a1 + 32);
  v14 = *(a1 + 40);
  v71 = 0;
  v72[0] = 0;
  [v13 _renderTextInRange:v14 image:v72 boundingRectangles:&v71 forLifting:a3];
  v15 = v72[0];
  v16 = v71;
  v11 = 0;
  if (v15 && v16)
  {
    v70 = v16;
    v69 = [[UIImageView alloc] initWithImage:v15];
    v17 = *(a1 + 40);
    v18 = WeakRetained;
    v19 = v17;
    v20 = [v18 textInputView];
    [v18 _boundingRectForRange:v19];
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v28 = v27;

    if ([v20 isDescendantOfView:v18])
    {
      [v20 convertRect:v18 toView:{v22, v24, v26, v28}];
      v22 = v29;
      v24 = v30;
    }

    v68 = v15;

    [(UIView *)v69 bounds];
    [v18 convertRect:v7 toView:{v22, v24}];
    v32 = v31;
    v34 = v33;
    v36 = v35;
    v38 = v37;
    [v9 convertRect:v7 fromWindow:?];
    [v5 convertRect:v9 fromView:?];
    [(UIImageView *)v69 setFrame:?];
    v39 = [(UIPreviewParameters *)[UIDragPreviewParameters alloc] initWithTextLineRects:v70];
    if (([*(a1 + 32) geometryOptions] & 1) == 0)
    {
      v40 = [v18 backgroundColor];
      if (v40)
      {
        v41 = v40;
        [v18 backgroundColor];
        v43 = v42 = v39;
        v44 = +[UIColor clearColor];

        v10 = v43 == v44;
        v39 = v42;
        if (!v10)
        {
          v45 = [v18 backgroundColor];
LABEL_25:
          v50 = v45;
          [(UIPreviewParameters *)v39 setBackgroundColor:v45];
LABEL_26:
          v46 = v39;
LABEL_27:

          v51 = [UITargetedDragPreview alloc];
          v52 = v69;
          v53 = v5;
          v54 = [UIDragPreviewTarget alloc];
          [(UIView *)v52 frame];
          v56 = v55;
          v58 = v57;
          v60 = v59;
          v62 = v61;

          v63 = [(UIPreviewTarget *)v54 initWithContainer:v53 center:v56 + v60 * 0.5, v58 + v62 * 0.5];
          v11 = [(UITargetedDragPreview *)v51 initWithView:v52 parameters:v46 target:v63];

          v16 = v70;
          v15 = v68;
          goto LABEL_28;
        }
      }

      if (*(a1 + 56) == 1)
      {
        if (*(*(a1 + 32) + 8))
        {
          v46 = v39;
          [(UIPreviewParameters *)v39 setBackgroundColor:?];
        }

        else
        {
          v65 = +[UIColor systemBackgroundColor];
          v46 = v39;
          [(UIPreviewParameters *)v39 setBackgroundColor:v65];
        }

        v66 = *(a1 + 32);
        v50 = *(v66 + 8);
        *(v66 + 8) = 0;
        goto LABEL_27;
      }

      if ([v18 _currentUserInterfaceIdiom] != 6)
      {
        v47 = [v7 createIOSurfaceWithFrame:{v32, v34, v36, v38}];
        if (v47)
        {
          v48 = v47;
          v49 = [[UIImage alloc] initWithIOSurface:v47];
          v50 = v49;
          if (v49)
          {
            [(UIImage *)v49 _calculateEdgeStatistics];
          }

          v67 = [UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:1.0];
          [(UIPreviewParameters *)v39 setBackgroundColor:v67];
          CFRelease(v48);

          goto LABEL_26;
        }
      }
    }

    v45 = +[UIColor systemBackgroundColor];
    goto LABEL_25;
  }

LABEL_28:

LABEL_29:

  return v11;
}

UIDragPreview *__66___UITextStorageDraggableGeometry__previewProviderForTextInRange___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v10 = 0;
  v11 = 0;
  [v2 _renderTextInRange:v1 image:&v11 boundingRectangles:&v10 forLifting:0];
  v3 = v11;
  v4 = v10;
  v5 = v3;
  v6 = [[UIImageView alloc] initWithImage:v5];
  v7 = [(UIPreviewParameters *)[UIDragPreviewParameters alloc] initWithTextLineRects:v4];

  v8 = [[UIDragPreview alloc] initWithView:v6 parameters:v7];

  return v8;
}

@end