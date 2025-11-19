@interface UITextKit1LayoutController
@end

@implementation UITextKit1LayoutController

uint64_t __49___UITextKit1LayoutController__textStorageLength__block_invoke(uint64_t a1, void *a2)
{
  result = [a2 length];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void __83___UITextKit1LayoutController_textRangeForLineEnclosingPosition_effectiveAffinity___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 textStorage];
  v5 = [v4 length];

  if (v5)
  {
    v6 = [*(a1 + 40) offset];
    if (v6 == v5)
    {
      v7 = v5 - 1;
    }

    else
    {
      v7 = v6;
    }

    v8 = [v3 glyphIndexForCharacterAtIndex:v7];
    v33 = 0;
    v34 = 0;
    [v3 lineFragmentRectForGlyphAtIndex:v8 effectiveRange:&v33];
    v9 = [v3 characterRangeForGlyphRange:v33 actualGlyphRange:{v34, 0}];
    v11 = v10;
    if (v7 == v9)
    {
      if (v8)
      {
        v12 = *(a1 + 56) == 1;
      }

      else
      {
        v12 = 0;
      }

      v13 = v7;
      if (v12)
      {
        [v3 lineFragmentRectForGlyphAtIndex:v8 - 1 effectiveRange:&v33];
        v13 = [v3 characterRangeForGlyphRange:v33 actualGlyphRange:{v34, 0}];
        v11 = v14;
      }
    }

    else
    {
      v13 = v9;
    }

    v20 = [v3 textStorage];
    v21 = [v20 string];
    v22 = [v21 substringWithRange:{v13, v11}];
    v23 = [MEMORY[0x1E696AB08] newlineCharacterSet];
    v24 = [v22 rangeOfCharacterFromSet:v23 options:4];
    v26 = v25;

    if (v24 + v13 + v26 == v13 + v11)
    {
      v27 = v26;
    }

    else
    {
      v27 = 0;
    }

    v28 = v11 - v27;
    if (v24 + v13 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v29 = v11;
    }

    else
    {
      v29 = v28;
    }

    v30 = [*(a1 + 32) textRangeForCharacterRange:{v13, v29}];
    v31 = *(*(a1 + 48) + 8);
    v32 = *(v31 + 40);
    *(v31 + 40) = v30;
  }

  else
  {
    v15 = *(a1 + 32);
    v16 = [v15 beginningOfDocument];
    v17 = [v15 emptyTextRangeAtPosition:v16];
    v18 = *(*(a1 + 48) + 8);
    v19 = *(v18 + 40);
    *(v18 + 40) = v17;
  }
}

void __109___UITextKit1LayoutController_insertionRectForPosition_typingAttributes_placeholderAttachment_textContainer___block_invoke(uint64_t a1, void *a2)
{
  v76 = a2;
  v3 = [v76 textStorage];
  v4 = *(*(*(a1 + 56) + 8) + 24);
  if (v4 < [v3 length] && objc_msgSend(v3, "length"))
  {
    v5 = *(a1 + 32);
    if (v5 && ([v5 bounds], CGRectIsEmpty(v78)) && (objc_msgSend(v3, "string"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "characterAtIndex:", *(*(*(a1 + 56) + 8) + 24)), v6, v7 == 65532))
    {
      v8 = *(*(a1 + 56) + 8);
      v9 = *(v8 + 24);
      v10 = v76;
      if (v9)
      {
        *(v8 + 24) = v9 - 1;
      }

      v11 = 1;
    }

    else
    {
      v11 = 0;
      v10 = v76;
    }

    v22 = [v10 glyphIndexForCharacterAtIndex:*(*(*(a1 + 56) + 8) + 24)];
    [v76 lineFragmentRectForGlyphAtIndex:v22 effectiveRange:0];
    x = v23;
    y = v24;
    width = v25;
    height = v26;
    v27 = [v76 textContainerForGlyphAtIndex:v22 effectiveRange:0];
    v28 = *(*(a1 + 64) + 8);
    v29 = *(v28 + 40);
    *(v28 + 40) = v27;

    goto LABEL_27;
  }

  x = *MEMORY[0x1E695F050];
  y = *(MEMORY[0x1E695F050] + 8);
  width = *(MEMORY[0x1E695F050] + 16);
  height = *(MEMORY[0x1E695F050] + 24);
  v16 = *(*(*(a1 + 56) + 8) + 24);
  if (v16 != [v3 length])
  {
LABEL_26:
    v11 = 0;
    goto LABEL_27;
  }

  if ([v3 length])
  {
    v17 = [v76 glyphIndexForCharacterAtIndex:{objc_msgSend(v3, "length") - 1}];
    [v76 lineFragmentRectForGlyphAtIndex:v17 effectiveRange:0];
    x = v18;
    y = v19;
    width = v20;
    height = v21;
  }

  else
  {
    v17 = 0;
  }

  if ([v3 length])
  {
    [v76 extraLineFragmentRect];
    if (CGRectIsEmpty(v79))
    {
      v30 = [v76 textContainerForGlyphAtIndex:v17 effectiveRange:0];
      v31 = *(*(a1 + 64) + 8);
      v32 = *(v31 + 40);
      *(v31 + 40) = v30;
    }

    else
    {
      v49 = [v76 extraLineFragmentTextContainer];
      v50 = *(*(a1 + 64) + 8);
      v51 = *(v50 + 40);
      *(v50 + 40) = v49;

      [*(*(*(a1 + 64) + 8) + 40) setAttributesForExtraLineFragment:*(a1 + 40)];
      [v76 extraLineFragmentRect];
      x = v52;
      y = v53;
      width = v54;
      height = v55;
    }

    goto LABEL_26;
  }

  v33 = [v76 textContainers];
  v34 = [v33 firstObject];
  [v76 boundingRectForGlyphRange:0 inTextContainer:{0, v34}];

  v35 = [v76 extraLineFragmentTextContainer];
  v36 = *(*(a1 + 64) + 8);
  v37 = *(v36 + 40);
  *(v36 + 40) = v35;

  [*(*(*(a1 + 64) + 8) + 40) setAttributesForExtraLineFragment:*(a1 + 40)];
  [v76 extraLineFragmentRect];
  x = v80.origin.x;
  y = v80.origin.y;
  width = v80.size.width;
  height = v80.size.height;
  if (!CGRectIsEmpty(v80) && *(*(*(a1 + 64) + 8) + 40))
  {
    goto LABEL_26;
  }

  v38 = [v76 textContainers];
  v39 = [v38 firstObject];
  v40 = *(*(a1 + 64) + 8);
  v41 = *(v40 + 40);
  *(v40 + 40) = v39;

  v42 = [*(*(*(a1 + 64) + 8) + 40) textView];
  [v42 bounds];
  x = v43;
  y = v44;

  v45 = [*(a1 + 40) objectForKey:*off_1E70EC918];
  if (!v45)
  {
    [off_1E70ECC18 defaultFontSize];
    v45 = [off_1E70ECC18 systemFontOfSize:?];
  }

  v46 = [*(a1 + 40) objectForKey:*off_1E70EC988];
  v47 = [v46 _ui_resolvedTextAlignment];

  if (v47 == 1)
  {
    [*(*(*(a1 + 64) + 8) + 40) size];
    x = v73 * 0.5;
  }

  else if (v47 == 2)
  {
    [*(*(*(a1 + 64) + 8) + 40) size];
    x = v48;
  }

  [v45 lineHeight];
  height = v74;

  v11 = 0;
  width = height;
LABEL_27:
  v56 = [v76 getLineFragmentInsertionPointsForCharacterAtIndex:*(*(*(a1 + 56) + 8) + 24) alternatePositions:0 inDisplayOrder:0 positions:0 characterIndexes:0];
  if (v56)
  {
    v57 = 8 * v56;
    v58 = malloc_type_malloc(8 * v56, 0x100004000313F17uLL);
    v59 = malloc_type_malloc(v57, 0x100004000313F17uLL);
    v60 = [v76 getLineFragmentInsertionPointsForCharacterAtIndex:*(*(*(a1 + 56) + 8) + 24) alternatePositions:0 inDisplayOrder:0 positions:v58 characterIndexes:v59];
    v61 = 0;
    if (v60)
    {
      while (1)
      {
        v62 = v59[v61];
        if (v62 >= *(*(*(a1 + 56) + 8) + 24))
        {
          break;
        }

        if (v61 && v59[v61 - 1] > v62)
        {
          v75 = [MEMORY[0x1E696AAA8] currentHandler];
          [v75 handleFailureInMethod:*(a1 + 80) object:*(a1 + 48) file:@"_UITextKit1LayoutController.m" lineNumber:333 description:@"Insertion points aren't ordered by character position"];
        }

        if (v60 == ++v61)
        {
          v61 = v60;
          break;
        }
      }
    }

    v64 = v61 + ((v60 - 1 > v61) & *(a1 + 88));
    if (v60 > v64)
    {
      v65 = *(*(a1 + 72) + 8);
      v65[4] = x;
      v65[5] = y;
      v65[6] = width;
      v65[7] = height;
      v66 = [*(*(*(a1 + 64) + 8) + 40) layoutOrientation];
      if (v66)
      {
        v67 = y;
      }

      else
      {
        v67 = x;
      }

      v68 = 40;
      if (!v66)
      {
        v68 = 32;
      }

      *(*(*(a1 + 72) + 8) + v68) = v58[v64] + v67;
    }

    free(v58);
    free(v59);
  }

  else
  {
    v63 = *(*(a1 + 72) + 8);
    v63[4] = x;
    v63[5] = y;
    v63[6] = width;
    v63[7] = height;
  }

  if (*(*(*(a1 + 56) + 8) + 24))
  {
    v69 = 0;
  }

  else
  {
    v69 = v11;
  }

  v70 = [*(*(*(a1 + 64) + 8) + 40) layoutOrientation];
  v71 = *(*(a1 + 72) + 8);
  if (v70)
  {
    *(v71 + 56) = 0x4000000000000000;
    if (v69)
    {
      goto LABEL_53;
    }

    v72 = 40;
  }

  else
  {
    *(v71 + 48) = 0x4000000000000000;
    if (v69)
    {
      goto LABEL_53;
    }

    v72 = 32;
  }

  *(*(*(a1 + 72) + 8) + v72) = *(*(*(a1 + 72) + 8) + v72) + -1.0;
LABEL_53:
}

void __81___UITextKit1LayoutController_textRangeForBounds_inTextContainer_layoutIfNeeded___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 80);
  v4 = *(a1 + 32);
  v6 = *(a1 + 48);
  v5 = *(a1 + 56);
  v8 = *(a1 + 64);
  v7 = *(a1 + 72);
  v9 = a2;
  v10 = v9;
  if (v3 == 1)
  {
    [v9 ensureLayoutForBoundingRect:v4 inTextContainer:{v6, v5, v8, v7}];
    v11 = [v10 glyphRangeForBoundingRect:*(a1 + 32) inTextContainer:{*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72)}];
  }

  else
  {
    v11 = [v9 glyphRangeForBoundingRectWithoutAdditionalLayout:v4 inTextContainer:{v6, v5, v8, v7}];
  }

  v13 = *(*(a1 + 40) + 8);
  *(v13 + 32) = v11;
  *(v13 + 40) = v12;
  v14 = [v10 characterRangeForGlyphRange:*(*(*(a1 + 40) + 8) + 32) actualGlyphRange:{*(*(*(a1 + 40) + 8) + 40), 0}];
  v16 = v15;

  v17 = *(*(a1 + 40) + 8);
  *(v17 + 32) = v14;
  *(v17 + 40) = v16;
}

void __64___UITextKit1LayoutController_attributesAtPosition_inDirection___block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  v5 = _UITextAttributesAtIndexWithDirection(v4, [v3 offset], a1[6]);

  v6 = *(a1[5] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

void __87___UITextKit1LayoutController_selectionRectsForRange_fromView_forContainerPassingTest___block_invoke(uint64_t a1, void *a2)
{
  v37 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v34 = 0;
  v35 = 0;
  v4 = [*(a1 + 32) asRange];
  v6 = [v3 glyphRangeForCharacterRange:v4 actualCharacterRange:{v5, &v34}];
  v22 = [v3 textStorage];
  v7 = v34;
  v8 = v35;
  if (v8 + v7 > [v22 length] || (v9 = v34, v9 == objc_msgSend(v22, "length")))
  {
    v10 = [v3 extraLineFragmentTextContainer];
  }

  else
  {
    v10 = [v3 textContainerForGlyphAtIndex:v6 effectiveRange:0];
  }

  v11 = *(*(a1 + 64) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;

  v23 = [v3 textContainers];
  v13 = [v23 indexOfObjectIdenticalTo:*(*(*(a1 + 64) + 8) + 40)];
  if (v13 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v23 subarrayWithRange:{v13, objc_msgSend(v23, "count") - v13}];
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v14 = v31 = 0u;
    v15 = [v14 countByEnumeratingWithState:&v30 objects:v36 count:16];
    if (v15)
    {
      v16 = *v31;
      v17 = MEMORY[0x1E69E9820];
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v31 != v16)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v30 + 1) + 8 * i);
          if ((*(*(a1 + 56) + 16))())
          {
            [v19 textContainerOrigin];
            v24[0] = v17;
            v24[1] = 3221225472;
            v24[2] = __87___UITextKit1LayoutController_selectionRectsForRange_fromView_forContainerPassingTest___block_invoke_2;
            v24[3] = &unk_1E70F9570;
            v28 = v20;
            v29 = v21;
            v25 = *(a1 + 40);
            v26 = v19;
            v27 = *(a1 + 48);
            [v3 enumerateEnclosingRectsForCharacterRange:v34 withinSelectedCharacterRange:v35 inTextContainer:v34 usingBlock:{v35, v19, v24}];
          }
        }

        v15 = [v14 countByEnumeratingWithState:&v30 objects:v36 count:16];
      }

      while (v15);
    }
  }
}

void __87___UITextKit1LayoutController_selectionRectsForRange_fromView_forContainerPassingTest___block_invoke_2(uint64_t a1, double a2, double a3)
{
  v6 = [_UIMutableTextSelectionRect selectionRectWithRect:*(a1 + 32) fromView:a2 + *(a1 + 56), a3 + *(a1 + 64)];
  [v6 setIsVertical:{objc_msgSend(*(a1 + 40), "layoutOrientation") == 1}];
  v4 = +[UIKeyboardInputModeController sharedInputModeController];
  v5 = [v4 currentInputMode];
  [v6 setWritingDirection:{objc_msgSend(v5, "isDefaultRightToLeft")}];

  [*(a1 + 48) addObject:v6];
}

void __65___UITextKit1LayoutController_cursorPositionAtPoint_inContainer___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v30 = 0.0;
  v4 = [v3 glyphIndexForPoint:*(a1 + 32) inTextContainer:&v30 fractionOfDistanceThroughGlyph:{*(a1 + 56), *(a1 + 64)}];
  v29[0] = 0;
  v29[1] = 0;
  if ([v3 numberOfGlyphs])
  {
    [v3 lineFragmentRectForGlyphAtIndex:v4 effectiveRange:v29];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
  }

  else
  {
    v6 = *MEMORY[0x1E695F058];
    v8 = *(MEMORY[0x1E695F058] + 8);
    v10 = *(MEMORY[0x1E695F058] + 16);
    v12 = *(MEMORY[0x1E695F058] + 24);
  }

  v13 = [v3 textStorage];
  v14 = [v13 length];

  v15 = [v3 characterIndexForPoint:*(a1 + 32) inTextContainer:&v30 fractionOfDistanceBetweenInsertionPoints:{*(a1 + 56), *(a1 + 64)}];
  v16 = v30 <= 1.0 && v30 > 0.5;
  v27 = 0;
  v28 = 0;
  v17 = [v3 glyphRangeForCharacterRange:v15 actualCharacterRange:{1, &v27, v30}];
  v18 = v29[0];
  if (v30 == 1.0)
  {
    if (v28 + v27 == v14)
    {
      v19 = [v3 textStorage];
      v20 = [v19 string];
      v21 = [v20 substringWithRange:{v27, v28}];
      if ([v21 _isNewlineOrReturn])
      {
        v31.origin.x = v6;
        v31.origin.y = v8;
        v31.size.width = v10;
        v31.size.height = v12;
        v16 = !CGRectContainsPoint(v31, *(a1 + 56));
      }

      else
      {
        v16 = 1;
      }

      v22 = 0;
      goto LABEL_15;
    }

    if ([v3 propertyForGlyphAtIndex:{v17, v30}] == 2)
    {
      v16 = 0;
      v22 = v17 != v18;
LABEL_15:
      *(*(*(a1 + 40) + 8) + 24) = v22;
    }
  }

  v23 = v30;
  if (v30 <= 0.5 && v17 == v18)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  if (v15 < v14)
  {
    v24 = [v3 rangeOfCharacterClusterAtIndex:v15 type:{3, v23}];
    if (v16)
    {
      v26 = v25;
    }

    else
    {
      v26 = 0;
    }

    v15 = v26 + v24;
  }

  *(*(*(a1 + 48) + 8) + 24) = v15;
}

void __66___UITextKit1LayoutController_nearestPositionAtPoint_inContainer___block_invoke(double *a1, void *a2)
{
  v3 = *(a1 + 4);
  v4 = a1[6];
  v5 = a1[7];
  v6 = a2;
  v7 = [v6 characterIndexForGlyphAtIndex:{objc_msgSend(v6, "glyphIndexForPoint:inTextContainer:", v3, v4, v5)}];

  *(*(*(a1 + 5) + 8) + 24) = v7;
}

void __76___UITextKit1LayoutController_enumerateTextLineFragmentsInRange_usingBlock___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = [*(a1 + 32) characterRangeForGlyphRange:a3 actualGlyphRange:{a4, 0}];
  v7 = [_UITextKitTextRange rangeWithRange:v5, v6];
  (*(*(a1 + 40) + 16))();
}

void __45___UITextKit1LayoutController_textContainers__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 textContainers];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

uint64_t __67___UITextKit1LayoutController_rangeOfCharacterClusterAtIndex_type___block_invoke(void *a1, void *a2)
{
  result = [a2 rangeOfCharacterClusterAtIndex:a1[5] type:a1[6]];
  v4 = *(a1[4] + 8);
  *(v4 + 32) = result;
  *(v4 + 40) = v5;
  return result;
}

void __70___UITextKit1LayoutController_unionRectForCharacterRange_bottomInset___block_invoke(void *a1, void *a2)
{
  v3 = a1[5];
  v4 = a1[6];
  v5 = a2;
  v6 = [v5 glyphRangeForCharacterRange:v3 actualCharacterRange:{v4, 0}];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __70___UITextKit1LayoutController_unionRectForCharacterRange_bottomInset___block_invoke_2;
  v8[3] = &unk_1E70F96D8;
  v8[4] = a1[4];
  [v5 enumerateLineFragmentsForGlyphRange:v6 usingBlock:{v7, v8}];
}

@end