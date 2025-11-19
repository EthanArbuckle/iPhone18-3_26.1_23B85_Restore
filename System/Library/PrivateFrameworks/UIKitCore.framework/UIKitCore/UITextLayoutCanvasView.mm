@interface UITextLayoutCanvasView
@end

@implementation UITextLayoutCanvasView

uint64_t __45___UITextLayoutCanvasView__viewportDidLayout__block_invoke(uint64_t a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __45___UITextLayoutCanvasView__viewportDidLayout__block_invoke_2;
  v3[3] = &unk_1E7109BC8;
  v1 = *(a1 + 32);
  v3[4] = *(a1 + 40);
  return [v1 endLayoutWithConsumer:v3];
}

void __45___UITextLayoutCanvasView__viewportDidLayout__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [*(*(a1 + 32) + 424) objectForKey:a2];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __45___UITextLayoutCanvasView__viewportDidLayout__block_invoke_3;
  v9[3] = &unk_1E7109BA0;
  v10 = v6;
  v11 = v5;
  v7 = v5;
  v8 = v6;
  [v8 performChanges:v9];
}

void __70___UITextLayoutCanvasView_setTextEmphasisBackgroundView_withTextView___block_invoke(uint64_t a1, double a2, double a3, double a4, double a5, uint64_t a6, void *a7)
{
  v14 = a7;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v13 = objc_loadWeakRetained((a1 + 40));
  if (v14 && WeakRetained && v13)
  {
    [WeakRetained _updateRenderingSurfaceViewsForTextRange:v14 inTextView:v13 bounds:{a2, a3, a4, a5}];
  }
}

uint64_t __86___UITextLayoutCanvasView__updateRenderingSurfaceViewsForTextRange_inTextView_bounds___block_invoke(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  if (a2)
  {
    *(*(*(result + 32) + 8) + 24) = 1;
    *a5 = 1;
  }

  return result;
}

BOOL __86___UITextLayoutCanvasView__updateRenderingSurfaceViewsForTextRange_inTextView_bounds___block_invoke_2(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = a2;
  [v3 layoutFragmentFrame];
  v5 = v4;
  v7 = v6;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v8 = [v3 anchoredTextAttachments];
  v9 = [v8 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v25;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v25 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v24 + 1) + 8 * i);
        [v3 boundsForTextParagraphAnchoredAttachment:v13];
        v30.origin.x = v5 + v14;
        v30.origin.y = v7 + v15;
        if (CGRectIntersectsRect(v30, *(a1 + 64)))
        {
          v16 = [*(*(a1 + 32) + 424) objectForKey:v13];
          if (!v16)
          {
            v17 = [_UITextParagraphAnchoredAttachmentView alloc];
            WeakRetained = objc_loadWeakRetained((a1 + 56));
            v16 = [(_UITextParagraphAnchoredAttachmentView *)v17 initWithTextLayoutCanvasView:WeakRetained anchoredAttachment:v13];

            [*(*(a1 + 32) + 424) setObject:v16 forKey:v13];
          }

          [(_UITextParagraphAnchoredAttachmentView *)v16 setTextLayoutFragment:v3];
          objc_storeWeak((*(a1 + 32) + 464), v13);
          [*(a1 + 40) addRenderingSurface:v16 key:v13 group:0 placement:1];
          objc_storeWeak((*(a1 + 32) + 464), 0);
          [(UIView *)v16 setNeedsLayout];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v10);
  }

  v19 = [v3 rangeInElement];
  v20 = [v19 location];
  v21 = [*(a1 + 48) endLocation];
  v22 = [v20 compare:v21] == -1;

  return v22;
}

void __61___UITextLayoutCanvasView_textRangeForBounds_layoutIfNeeded___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(*(*(a1 + 32) + 8) + 40);
  v4 = [a2 representedRange];
  v5 = v4;
  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  if (v3)
  {
    v8 = [v4 textRangeByFormingUnionWithTextRange:v7];
    v9 = *(*(a1 + 32) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    v7 = v5;
  }

  else
  {
    *(v6 + 40) = v4;
  }
}

void __61___UITextLayoutCanvasView_textRangeForBounds_layoutIfNeeded___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(*(*(a1 + 32) + 8) + 40);
  v4 = [a2 representedRange];
  v5 = v4;
  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  if (v3)
  {
    v8 = [v4 textRangeByFormingUnionWithTextRange:v7];
    v9 = *(*(a1 + 32) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    v7 = v5;
  }

  else
  {
    *(v6 + 40) = v4;
  }
}

void __50___UITextLayoutCanvasView__performViewportLayout___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 postNotificationName:@"_UITextViewportLayoutControllerWillLayout" object:*(*(a1 + 32) + 408)];
}

void __50___UITextLayoutCanvasView__performViewportLayout___block_invoke_3(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 postNotificationName:@"_UITextViewportLayoutControllerDidLayout" object:*(*(a1 + 32) + 408)];
}

void __65___UITextLayoutCanvasView__supportsLocationForPositionInViewport__block_invoke()
{
  v0 = _UIMainBundleIdentifier();
  if (dyld_program_sdk_at_least() && [v0 isEqualToString:@"com.apple.mobilenotes"])
  {
    _MergedGlobals_13_1 = 1;
  }
}

void __103___UITextLayoutCanvasView_textViewportLayoutController_configureRenderingSurfaceForTextLayoutFragment___block_invoke(double *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v5 = a2;
  [v5 setContainerOrigin:{v3, v4}];
  [v5 setContainerSize:{a1[6], a1[7]}];
  [v5 setClipRect:{a1[8], a1[9], a1[10], a1[11]}];
}

void __103___UITextLayoutCanvasView_textViewportLayoutController_configureRenderingSurfaceForTextLayoutFragment___block_invoke_2(double *a1, void *a2)
{
  v3 = *(a1 + 4);
  v4 = a1[6];
  v5 = a1[7];
  v6 = a1[8];
  v7 = a1[9];
  v8 = a2;
  [v3 didLayoutTextAttachmentView:v8 inFragmentRect:{v4, v5, v6, v7}];
  [*(*(a1 + 5) + 440) addObject:v8];
}

void __64___UITextLayoutCanvasView_invalidateTemporaryAttributesInRange___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 customRenderController];
  [v4 invalidateTemporaryAttributesInRange:v3];
}

@end