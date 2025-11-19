@interface UITextKit2LayoutController
@end

@implementation UITextKit2LayoutController

uint64_t __87___UITextKit2LayoutController_coordinateSystemCompatibilityFor2022AndEarlierSDKEnabled__block_invoke()
{
  objc_opt_class();
  result = objc_opt_respondsToSelector();
  if (result)
  {
    result = [objc_opt_class() coordinateSystemCompatibilityFor2022AndEarlierSDKEnabled];
    coordinateSystemCompatibilityFor2022AndEarlierSDKEnabled_coordinateSystemCompatibilityFor2022AndEarlierSDKEnabled = result;
  }

  return result;
}

uint64_t __52___UITextKit2LayoutController_extraLineFragmentRect__block_invoke(uint64_t a1, double a2, double a3, double a4, double a5, uint64_t a6, void *a7)
{
  v8 = *(*(a1 + 32) + 8);
  v8[4] = a2;
  v8[5] = a3;
  v8[6] = a4;
  v8[7] = a5;
  *(*(*(a1 + 32) + 8) + 32) = 0;
  [a7 size];
  *(*(*(a1 + 32) + 8) + 48) = v9;
  return 1;
}

void __96___UITextKit2LayoutController__visualSelectionRangeForExtent_forPoint_fromPosition_inDirection___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 textRanges];
  [v2 addObjectsFromArray:v3];
}

uint64_t __109___UITextKit2LayoutController_insertionRectForPosition_typingAttributes_placeholderAttachment_textContainer___block_invoke(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v5 = *(*(a1 + 32) + 8);
  v5[4] = a2;
  v5[5] = a3;
  v5[6] = a4;
  v5[7] = a5;
  return 1;
}

uint64_t __109___UITextKit2LayoutController_insertionRectForPosition_typingAttributes_placeholderAttachment_textContainer___block_invoke_76(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [off_1E70ECBF0 alloc];
  v5 = [v3 textElement];

  v6 = [v5 elementRange];
  v7 = [v6 endLocation];
  v8 = [v4 initWithLocation:v7];
  v9 = *(*(a1 + 32) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  return 0;
}

uint64_t __109___UITextKit2LayoutController_insertionRectForPosition_typingAttributes_placeholderAttachment_textContainer___block_invoke_2(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v5 = *(*(a1 + 32) + 8);
  v5[4] = a2;
  v5[5] = a3;
  v5[6] = a4;
  v5[7] = a5;
  return 0;
}

uint64_t __64___UITextKit2LayoutController_attributesAtPosition_inDirection___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    v14 = a1[8];
    v15 = a1[4];
    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    [v13 handleFailureInMethod:v14 object:v15 file:@"_UITextKit2LayoutController.m" lineNumber:471 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"element", v17}];
LABEL_6:

    goto LABEL_3;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    v18 = a1[8];
    v19 = a1[4];
    v20 = objc_opt_class();
    v17 = NSStringFromClass(v20);
    v21 = MEMORY[0x1E696AEC0];
    v22 = v3;
    v23 = objc_opt_class();
    v24 = NSStringFromClass(v23);
    v25 = [v21 stringWithFormat:@"<%@: %p>", v24, v22];

    [v13 handleFailureInMethod:v18 object:v19 file:@"_UITextKit2LayoutController.m" lineNumber:471 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"element", v17, v25}];
    goto LABEL_6;
  }

LABEL_3:
  v4 = [v3 elementRange];
  v5 = a1[5];
  v6 = [v4 location];
  v7 = [v5 offsetFromLocation:v6 toLocation:a1[6]];

  v8 = [v3 attributedString];
  v9 = _UITextAttributesAtIndexWithDirection(v8, v7, a1[9]);
  v10 = *(a1[7] + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

  return 0;
}

uint64_t __76___UITextKit2LayoutController_enumerateTextLineFragmentsInRange_usingBlock___block_invoke(uint64_t a1, void *a2)
{
  v43 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v40 = 0;
  [v3 rangeInElement];
  v32 = v31 = a1;
  v4 = [*(a1 + 32) textRangeByIntersectingWithTextRange:v32];
  v5 = v4;
  if (v4 && ![v4 isEmpty])
  {
    v7 = *(a1 + 40);
    v8 = [v32 location];
    v9 = [v5 location];
    v36[0] = [v7 offsetFromLocation:v8 toLocation:v9];

    v10 = *(v31 + 40);
    v11 = [v32 location];
    v28 = v5;
    v12 = [v5 endLocation];
    v13 = [v10 offsetFromLocation:v11 toLocation:v12];

    v38 = 0u;
    v39 = 0u;
    *&v36[1] = 0u;
    v37 = 0u;
    v29 = v3;
    obj = [v3 textLineFragments];
    v35 = [obj countByEnumeratingWithState:&v36[1] objects:v42 count:16];
    if (v35)
    {
      v14 = 0;
      range2 = v13 - v36[0];
      v33 = *v37;
LABEL_6:
      v15 = 0;
      while (1)
      {
        if (*v37 != v33)
        {
          objc_enumerationMutation(obj);
        }

        [*(v36[2] + 8 * v15) characterRange];
        length = v44.length;
        v44.location = v14;
        v45.location = v36[0];
        v45.length = range2;
        v17 = NSIntersectionRange(v44, v45);
        if (v17.length)
        {
          v18 = *(v31 + 40);
          v19 = [v32 location];
          v20 = [v18 locationFromLocation:v19 withOffset:v17.location];

          v21 = [*(v31 + 40) locationFromLocation:v20 withOffset:v17.length];
          v22 = [[off_1E70ECBF0 alloc] initWithLocation:v20 endLocation:v21];
          v23 = *(v31 + 56);
          v24 = *(*(v31 + 48) + 48);
          v41 = v22;
          v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v41 count:1];
          v26 = [_UITextKitTextRange rangeWithTextContentManager:v24 textRanges:v25 affinity:0];
          (*(v23 + 16))(v23, v26, &v40);

          LOBYTE(v23) = v40;
          if (v23)
          {
            break;
          }
        }

        v14 += length;
        if (v35 == ++v15)
        {
          v35 = [obj countByEnumeratingWithState:&v36[1] objects:v42 count:16];
          if (v35)
          {
            goto LABEL_6;
          }

          break;
        }
      }
    }

    v6 = v40 ^ 1;
    v5 = v28;
    v3 = v29;
  }

  else
  {
    v6 = 0;
    v40 = 1;
  }

  return v6 & 1;
}

BOOL __87___UITextKit2LayoutController_enumerateTextSegmentsInRange_inTextContainer_usingBlock___block_invoke(uint64_t a1)
{
  v2 = 0;
  (*(*(a1 + 32) + 16))();
  return (v2 & 1) == 0;
}

void __87___UITextKit2LayoutController_selectionRectsForRange_fromView_forContainerPassingTest___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 56);
  v5 = [v3 location];
  *(*(*(a1 + 72) + 8) + 24) = [v4 baseWritingDirectionAtLocation:v5];

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __87___UITextKit2LayoutController_selectionRectsForRange_fromView_forContainerPassingTest___block_invoke_2;
  aBlock[3] = &unk_1E710AAB0;
  v6 = *(a1 + 40);
  v7 = *(a1 + 64);
  v8 = *(a1 + 48);
  v22 = *(a1 + 80);
  *&v9 = *(a1 + 56);
  *(&v9 + 1) = v7;
  *&v10 = v6;
  *(&v10 + 1) = v8;
  v20 = v10;
  v21 = v9;
  v23 = *(a1 + 88);
  v11 = _Block_copy(aBlock);
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 40));
  v13 = [WeakRetained customRenderController];
  if (!v13)
  {

    goto LABEL_5;
  }

  v14 = v13;
  v15 = objc_loadWeakRetained((*(a1 + 32) + 40));
  v16 = [v15 _customRenderControllerPermitsTextSegmentEnumeration];

  if (!v16)
  {
LABEL_5:
    [*(*(a1 + 32) + 56) enumerateTextSegmentsInRange:v3 type:*(a1 + 104) options:*(a1 + 112) usingBlock:v11];
    goto LABEL_6;
  }

  v17 = objc_loadWeakRetained((*(a1 + 32) + 40));
  v18 = [v17 customRenderController];
  [v18 enumerateTextSegmentsInRange:v3 type:*(a1 + 104) options:*(a1 + 112) textLayoutManager:*(*(a1 + 32) + 56) usingBlock:v11];

LABEL_6:
}

uint64_t __87___UITextKit2LayoutController_selectionRectsForRange_fromView_forContainerPassingTest___block_invoke_2(uint64_t a1, void *a2, void *a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7)
{
  v13 = a2;
  v14 = a3;
  if (([*(a1 + 32) containsObject:v14] & 1) == 0 && !(*(*(a1 + 56) + 16))())
  {
    goto LABEL_12;
  }

  v15 = [v13 location];
  v16 = [*(a1 + 40) start];
  v17 = [v16 location];
  if ([v15 compare:v17] != 1)
  {
    v18 = [*(a1 + 40) start];
    v19 = [v18 location];
    v20 = [v13 endLocation];
    if ([v19 compare:v20] != 1)
    {
      v34 = *(*(*(a1 + 64) + 8) + 24);

      if (v34 == 0x7FFFFFFFFFFFFFFFLL)
      {
        *(*(*(a1 + 64) + 8) + 24) = [*(a1 + 48) count];
      }

      goto LABEL_7;
    }
  }

LABEL_7:
  v21 = [v13 location];
  v22 = [*(a1 + 40) end];
  v23 = [v22 location];
  if ([v21 compare:v23] == 1)
  {
  }

  else
  {
    v24 = [*(a1 + 40) end];
    v25 = [v24 location];
    v26 = [v13 endLocation];
    v27 = [v25 compare:v26];

    if (v27 != 1)
    {
      *(*(*(a1 + 72) + 8) + 24) = [*(a1 + 48) count];
    }
  }

  *(*(*(a1 + 80) + 8) + 24) = [v14 layoutOrientation];
  [v14 lineFragmentPadding];
  v29 = v28;
  [v14 size];
  v37.size.width = v30 - (v29 + v29);
  v35.origin.x = a4;
  v35.origin.y = a5;
  v35.size.width = a6;
  v35.size.height = a7;
  v37.origin.x = v29;
  v37.origin.y = a5;
  v37.size.height = a7;
  v36 = CGRectIntersection(v35, v37);
  v31 = *(a1 + 48);
  v32 = [MEMORY[0x1E696B098] valueWithCGRect:{v36.origin.x, v36.origin.y, v36.size.width, v36.size.height}];
  [v31 addObject:v32];

  [*(a1 + 32) addObject:v14];
LABEL_12:

  return 1;
}

void __87___UITextKit2LayoutController_selectionRectsForRange_fromView_forContainerPassingTest___block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  [a2 CGRectValue];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v16 = [*(a1 + 32) objectAtIndexedSubscript:a3];
  [v16 textContainerOrigin];
  v15 = [_UIMutableTextSelectionRect selectionRectWithRect:*(a1 + 40) fromView:v6 + v13, v8 + v14, v10, v12];
  [v15 setWritingDirection:*(*(*(a1 + 56) + 8) + 24)];
  [v15 setIsVertical:*(*(*(a1 + 64) + 8) + 24) == 1];
  [*(a1 + 48) addObject:v15];
}

void __62___UITextKit2LayoutController_annotationAttribute_atPosition___block_invoke(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, _BYTE *a5)
{
  v7 = [a3 objectForKeyedSubscript:*(a1 + 32)];
  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  *a5 = 1;
}

void __63___UITextKit2LayoutController_addRenderingAttributes_forRange___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) textKit2Ranges];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __63___UITextKit2LayoutController_addRenderingAttributes_forRange___block_invoke_2;
  v10[3] = &unk_1E710AB28;
  v10[4] = *(a1 + 40);
  v11 = v5;
  v12 = v6;
  v8 = v6;
  v9 = v5;
  [v7 enumerateObjectsUsingBlock:v10];
}

uint64_t __53___UITextKit2LayoutController_attributedTextInRange___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    v23 = a1[9];
    v24 = a1[4];
    v25 = objc_opt_class();
    v22 = NSStringFromClass(v25);
    v26 = MEMORY[0x1E696AEC0];
    v27 = v3;
    v28 = objc_opt_class();
    v29 = NSStringFromClass(v28);
    v30 = [v26 stringWithFormat:@"<%@: %p>", v29, v27];

    [v18 handleFailureInMethod:v23 object:v24 file:@"_UITextKit2LayoutController.m" lineNumber:797 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"element", v22, v30}];
  }

  else
  {
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    v19 = a1[9];
    v20 = a1[4];
    v21 = objc_opt_class();
    v22 = NSStringFromClass(v21);
    [v18 handleFailureInMethod:v19 object:v20 file:@"_UITextKit2LayoutController.m" lineNumber:797 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"element", v22}];
  }

LABEL_3:
  v4 = [v3 elementRange];
  if ([v4 containsLocation:a1[5]])
  {
    v5 = a1[6];
    v6 = [v4 location];
    v7 = [v5 offsetFromLocation:v6 toLocation:a1[5]];
  }

  else
  {
    v7 = 0;
  }

  v8 = [v4 containsLocation:a1[7]];
  v9 = a1[6];
  v10 = [v4 location];
  if (v8)
  {
    v11 = [v9 offsetFromLocation:v10 toLocation:a1[7]];
  }

  else
  {
    v12 = [v4 endLocation];
    v11 = [v9 offsetFromLocation:v10 toLocation:v12];
  }

  v13 = v11 - v7;
  v14 = a1[8];
  v15 = [v3 attributedString];
  v16 = [v15 attributedSubstringFromRange:{v7, v13}];
  [v14 appendAttributedString:v16];

  return v8 ^ 1u;
}

void __58___UITextKit2LayoutController_annotatedSubstringForRange___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, _BYTE *a5)
{
  v18 = a3;
  v9 = a4;
  v10 = [a2 textContentManager];
  v11 = [*(a1 + 32) textRangeByIntersectingWithTextRange:v9];

  if (v11)
  {
    v12 = *(a1 + 40);
    v13 = [v11 location];
    v14 = [v10 offsetFromLocation:v12 toLocation:v13];

    v15 = *(a1 + 40);
    v16 = [v11 endLocation];
    v17 = [v10 offsetFromLocation:v15 toLocation:v16];

    [*(a1 + 48) setAttributes:v18 range:{v14, v17 - v14}];
  }

  else
  {
    *a5 = 1;
  }
}

uint64_t __75___UITextKit2LayoutController__writingToolsMinimumContextualRangeForRange___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    v15 = a1[8];
    v16 = a1[4];
    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    [v14 handleFailureInMethod:v15 object:v16 file:@"_UITextKit2LayoutController.m" lineNumber:852 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"element", v18}];
LABEL_12:

    goto LABEL_3;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    v19 = a1[8];
    v20 = a1[4];
    v21 = objc_opt_class();
    v18 = NSStringFromClass(v21);
    v22 = MEMORY[0x1E696AEC0];
    v23 = v3;
    v24 = objc_opt_class();
    v25 = NSStringFromClass(v24);
    v26 = [v22 stringWithFormat:@"<%@: %p>", v25, v23];

    [v14 handleFailureInMethod:v19 object:v20 file:@"_UITextKit2LayoutController.m" lineNumber:852 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"element", v18, v26}];
    goto LABEL_12;
  }

LABEL_3:
  v4 = [v3 elementRange];
  v5 = v4;
  v6 = a1[7];
  if (!*(*(v6 + 8) + 40))
  {
    v7 = [v4 containsLocation:a1[5]];
    v6 = a1[7];
    if (v7)
    {
      objc_storeStrong((*(v6 + 8) + 40), v5);
      v6 = a1[7];
    }
  }

  v8 = *(*(v6 + 8) + 40);
  if (v8)
  {
    v9 = [v8 textRangeByFormingUnionWithTextRange:v5];
    v10 = *(a1[7] + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

    v12 = [v5 containsLocation:a1[6]] ^ 1;
  }

  else
  {
    v12 = 1;
  }

  return v12;
}

uint64_t __90___UITextKit2LayoutController_requestTextGeometryAtPosition_typingAttributes_resultBlock___block_invoke(void *a1, double a2, double a3, double a4, double a5, double a6, uint64_t a7, uint64_t a8)
{
  if (a1[4] != a8)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a1[8] object:a1[5] file:@"_UITextKit2LayoutController.m" lineNumber:909 description:{@"Invalid parameter not satisfying: %@", @"thisTextContainer == textContainer"}];
  }

  v14 = *(a1[6] + 8);
  v14[4] = a2;
  v14[5] = a3;
  v14[6] = a4;
  v14[7] = a5;
  *(*(a1[7] + 8) + 24) = a6;
  return 1;
}

uint64_t __52___UITextKit2LayoutController_boundingRectForRange___block_invoke(uint64_t a1, void *a2, void *a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7)
{
  v13 = a2;
  v14 = a3;
  v15 = *(*(a1 + 32) + 8);
  v18 = *(v15 + 40);
  v16 = (v15 + 40);
  v17 = v18;
  if (!v18)
  {
    objc_storeStrong(v16, a3);
    goto LABEL_5;
  }

  if (v17 == v14)
  {
LABEL_5:
    v21.origin.x = a4;
    v21.origin.y = a5;
    v21.size.width = a6;
    v21.size.height = a7;
    *(*(*(a1 + 40) + 8) + 32) = CGRectUnion(*(*(*(a1 + 40) + 8) + 32), v21);
    v19 = 1;
    goto LABEL_6;
  }

  v19 = 0;
LABEL_6:

  return v19;
}

void __67___UITextKit2LayoutController_rangeOfCharacterClusterAtIndex_type___block_invoke(void *a1, uint64_t a2, void *a3, uint64_t a4, BOOL *a5)
{
  v7 = a3;
  v8 = [*(a1[4] + 56) textContentManager];
  v9 = [v8 documentRange];
  v10 = [v9 location];

  v18 = v7;
  v11 = v8;
  v12 = v10;
  v13 = [v18 location];
  v14 = [v11 offsetFromLocation:v12 toLocation:v13];

  v15 = [v18 endLocation];

  v16 = [v11 offsetFromLocation:v12 toLocation:v15];
  v17 = *(a1[5] + 8);
  *(v17 + 32) = v14;
  *(v17 + 40) = v16 - v14;
  *a5 = *(*(a1[5] + 8) + 40) + *(*(a1[5] + 8) + 32) > a1[6];
}

uint64_t __70___UITextKit2LayoutController_unionRectForCharacterRange_bottomInset___block_invoke(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v6.size.height = a5;
  v6.size.width = a4;
  v6.origin.y = a3;
  v6.origin.x = a2;
  *(*(*(a1 + 32) + 8) + 32) = CGRectUnion(*(*(*(a1 + 32) + 8) + 32), v6);
  return 1;
}

uint64_t __70___UITextKit2LayoutController_unionRectForCharacterRange_bottomInset___block_invoke_2(uint64_t a1, CGFloat a2, CGFloat y, CGFloat a4, CGFloat a5, uint64_t a6, void *a7)
{
  v12 = a7;
  MaxY = CGRectGetMaxY(*(*(*(a1 + 32) + 8) + 32));
  v20.origin.x = a2;
  v20.origin.y = y;
  v20.size.width = a4;
  v20.size.height = a5;
  if (MaxY < CGRectGetMaxY(v20))
  {
    [v12 containerSize];
    width = v14;
    v16 = a5 + *(a1 + 40);
    Height = CGRectGetHeight(*(*(*(a1 + 32) + 8) + 32));
    v18 = *(*(a1 + 32) + 8);
    if (Height <= 0.0)
    {
      v18[1].origin.x = 0.0;
    }

    else
    {
      v22.origin.x = 0.0;
      v22.origin.y = y;
      v22.size.width = width;
      v22.size.height = v16;
      v21 = CGRectUnion(v18[1], v22);
      y = v21.origin.y;
      width = v21.size.width;
      v16 = v21.size.height;
      v18 = *(*(a1 + 32) + 8);
      v18[1].origin.x = v21.origin.x;
    }

    v18[1].origin.y = y;
    v18[1].size.width = width;
    v18[1].size.height = v16;
  }

  return 1;
}

@end