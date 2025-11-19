@interface PKPassTileGroupView
+ (void)extractSupportedVehicleFunction:(id *)a3 action:(id *)a4 forTile:(id)a5 applicationIdentifier:(id)a6 keyIdentifier:(id)a7;
- (CGSize)sizeThatFits:(CGSize)a3;
- (PKPassTileGroupView)init;
- (PKPassTileGroupViewDelegate)delegate;
- (UIEdgeInsets)contentInset;
- (_BYTE)_updateSubviewsAnimated:(_BYTE *)result;
- (double)_populateHandleSizeCachesWithWidth:(double)a3 recompute:;
- (id)passTileViewRequestsBeginSuppressingCardEmulation:(id)a3;
- (void)_displayViewController:(void *)a1;
- (void)_performDisplayAuxiliaryPassInformationItemAction:(void *)a1;
- (void)_performDisplayTileContextAction:(uint64_t)a1;
- (void)_performOpenBusinessChat:(void *)a1;
- (void)_performShareFlightStatus;
- (void)_performViewImageAction:(void *)a3 sourceImageView:;
- (void)_tileViewPinched:(id)a3;
- (void)_tileViewTapped:(id)a3;
- (void)_updateRowItemViews:(void *)a3 withRowItems:(char)a4 isLastRow:(int)a5 animated:;
- (void)layoutIfNeededAnimated:(BOOL)a3;
- (void)layoutSubviews;
- (void)performBatchUpdates:(id)a3 animated:(BOOL)a4;
- (void)setContentInset:(UIEdgeInsets)a3;
- (void)setPass:(id)a3 content:(id)a4 passState:(id)a5 context:(id *)a6 animated:(BOOL)a7;
@end

@implementation PKPassTileGroupView

+ (void)extractSupportedVehicleFunction:(id *)a3 action:(id *)a4 forTile:(id)a5 applicationIdentifier:(id)a6 keyIdentifier:(id)a7
{
  v63 = *MEMORY[0x1E69E9840];
  v11 = a5;
  v12 = a6;
  v13 = a7;
  v14 = v13;
  v15 = 0;
  if (!v11 || !v12)
  {
    v16 = 0;
    goto LABEL_29;
  }

  v16 = 0;
  if (!v13)
  {
LABEL_29:
    v36 = *a3;
    *a3 = 0;

    v37 = *a4;
    *a4 = 0;
    goto LABEL_30;
  }

  v17 = [v11 metadata];
  v18 = [v17 metadataTypeVehicleFunction];
  v16 = [v18 vehicleFunctions];

  if (![v16 count])
  {
    v22 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v57 = v12;
      v58 = 2112;
      v59 = v14;
      _os_log_impl(&dword_1BD026000, v22, OS_LOG_TYPE_DEFAULT, "PKPassTileGroupView: no vehicle functions to check for (%@: %@).", buf, 0x16u);
    }

    v15 = 0;
    goto LABEL_28;
  }

  v19 = MEMORY[0x1E69B8D10];
  v20 = [v11 state];
  v21 = [v20 actions];
  v22 = [v19 effectiveActionForActions:v21];

  v15 = [v22 vehicleFunctionActions];
  if (![v15 count])
  {
    v35 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v57 = v12;
      v58 = 2112;
      v59 = v14;
      _os_log_impl(&dword_1BD026000, v35, OS_LOG_TYPE_DEFAULT, "PKPassTileGroupView: no vehicle function action map for (%@: %@).", buf, 0x16u);
    }

LABEL_28:
    goto LABEL_29;
  }

  v49 = a4;

  v55 = 0;
  v23 = [PKGetClassNFDigitalCarKeySession() vehicleReports:&v55];
  v24 = v55;
  v48 = v23;
  v25 = [v23 objectForKeyedSubscript:v14];
  v50 = v14;
  v47 = v24;
  if (!v25 || v24)
  {
    v26 = PKLogFacilityTypeGetObject();
    if (!os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_39;
    }

    *buf = 138412802;
    v57 = v12;
    v58 = 2112;
    v59 = v14;
    v60 = 2112;
    v61 = v24;
    v34 = "PKPassTileGroupView: failed to fetch vehicle report for (%@: %@) - %@.";
    v38 = v26;
    v39 = 32;
    goto LABEL_38;
  }

  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v26 = v16;
  v27 = [v26 countByEnumeratingWithState:&v51 objects:v62 count:16];
  if (!v27)
  {

LABEL_35:
    v26 = PKLogFacilityTypeGetObject();
    if (!os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_39;
    }

    *buf = 138412546;
    v57 = v12;
    v58 = 2112;
    v59 = v50;
    v34 = "PKPassTileGroupView: failed to identify supported function for (%@: %@).";
    goto LABEL_37;
  }

  v28 = v27;
  v45 = a3;
  v46 = v12;
  v29 = 0;
  v30 = *v52;
  while (2)
  {
    for (i = 0; i != v28; ++i)
    {
      if (*v52 != v30)
      {
        objc_enumerationMutation(v26);
      }

      v32 = *(*(&v51 + 1) + 8 * i);
      if ([v25 isRKEFunctionSupported:{v32, v45, v46, v47}])
      {
        v33 = [v15 objectForKeyedSubscript:v32];
        if (v33)
        {
          v40 = v33;
          v41 = v32;
          a3 = v45;
          v12 = v46;
          goto LABEL_40;
        }

        v29 = 1;
      }
    }

    v28 = [v26 countByEnumeratingWithState:&v51 objects:v62 count:16];
    if (v28)
    {
      continue;
    }

    break;
  }

  a3 = v45;
  v12 = v46;
  if ((v29 & 1) == 0)
  {
    goto LABEL_35;
  }

  v26 = PKLogFacilityTypeGetObject();
  if (!os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_39;
  }

  *buf = 138412546;
  v57 = v46;
  v58 = 2112;
  v59 = v50;
  v34 = "PKPassTileGroupView: failed to map supported function to action for (%@: %@).";
LABEL_37:
  v38 = v26;
  v39 = 22;
LABEL_38:
  _os_log_impl(&dword_1BD026000, v38, OS_LOG_TYPE_DEFAULT, v34, buf, v39);
LABEL_39:
  v40 = 0;
  v41 = 0;
LABEL_40:

  v42 = *a3;
  *a3 = v41;
  v37 = v41;

  v43 = *v49;
  *v49 = v40;
  v44 = v40;

  v14 = v50;
LABEL_30:
}

- (PKPassTileGroupView)init
{
  v6.receiver = self;
  v6.super_class = PKPassTileGroupView;
  v2 = [(PKPassTileGroupView *)&v6 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    itemViewsByRows = v2->_itemViewsByRows;
    v2->_itemViewsByRows = v3;

    v2->_maximumRows = 1;
  }

  return v2;
}

- (double)_populateHandleSizeCachesWithWidth:(double)a3 recompute:
{
  if (!a1)
  {
    return 0.0;
  }

  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v3 = *(a1 + 504);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __68__PKPassTileGroupView__populateHandleSizeCachesWithWidth_recompute___block_invoke;
  v8[3] = &unk_1E8015790;
  *&v8[7] = a3;
  v9 = a2;
  v8[4] = a1;
  v8[5] = &v10;
  v8[6] = &v14;
  [v3 enumerateObjectsUsingBlock:v8];
  v4 = v11[3];
  v5 = (v4 - 1);
  if (v4 <= 1)
  {
    v5 = 0.0;
  }

  v6 = v15[3] + v5 * 8.0;
  v15[3] = v6;
  _Block_object_dispose(&v10, 8);
  _Block_object_dispose(&v14, 8);
  return v6;
}

void __68__PKPassTileGroupView__populateHandleSizeCachesWithWidth_recompute___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 count])
  {
    if (*(*(a1 + 32) + 480) == 1)
    {
      v4 = [v3 firstObject];
      v5 = v4;
      if (v4)
      {
        v6 = *(v4 + 16);
      }

      else
      {
        v6 = 0;
      }

      v7 = v6;

      v8 = [v7 content];

      v9 = [v8 metadata];
      [v9 preferredStyle];
    }

    v18 = 0;
    v19 = &v18;
    v20 = 0x2020000000;
    v21 = 0;
    v14 = 0;
    v15 = &v14;
    v16 = 0x2020000000;
    v17 = 0;
    PKFloatRoundToPixel();
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __68__PKPassTileGroupView__populateHandleSizeCachesWithWidth_recompute___block_invoke_2;
    v12[3] = &unk_1E8015740;
    v13 = *(a1 + 64);
    v12[6] = v10;
    v12[4] = &v18;
    v12[5] = &v14;
    [v3 enumerateObjectsUsingBlock:v12];
    if (*(v15 + 24) == 1)
    {
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __68__PKPassTileGroupView__populateHandleSizeCachesWithWidth_recompute___block_invoke_3;
      v11[3] = &unk_1E8015768;
      v11[4] = &v18;
      [v3 enumerateObjectsUsingBlock:v11];
    }

    ++*(*(*(a1 + 40) + 8) + 24);
    *(*(*(a1 + 48) + 8) + 24) = v19[3] + *(*(*(a1 + 48) + 8) + 24);
    _Block_object_dispose(&v14, 8);
    _Block_object_dispose(&v18, 8);
  }
}

void __68__PKPassTileGroupView__populateHandleSizeCachesWithWidth_recompute___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v14 = v3;
  if (v3)
  {
    v4 = v3[2];
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  v6 = v5;
  if (*(a1 + 56) == 1)
  {
    [v5 sizeThatFits:{*(a1 + 48), 1.79769313e308}];
  }

  else
  {
    [v5 frame];
    v7 = v9;
    v8 = v10;
  }

  if (v14)
  {
    *(v14 + 3) = v7;
    v14[4] = v8;
  }

  v11 = *(*(a1 + 32) + 8);
  v12 = *(v11 + 24);
  if (v12 != 0.0 && v12 != v8)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    v11 = *(*(a1 + 32) + 8);
    v12 = *(v11 + 24);
  }

  *(v11 + 24) = fmax(v12, v8);
}

double __68__PKPassTileGroupView__populateHandleSizeCachesWithWidth_recompute___block_invoke_3(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    result = *(*(*(a1 + 32) + 8) + 24);
    *(a2 + 32) = result;
  }

  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  if ([(NSArray *)self->_content count:a3.width])
  {
    v5 = [(PKPassTileGroupView *)self _populateHandleSizeCachesWithWidth:width - (self->_contentInset.left + self->_contentInset.right) recompute:?];
  }

  else
  {
    width = *MEMORY[0x1E695F060];
    v5 = *(MEMORY[0x1E695F060] + 8);
  }

  v6 = width;
  result.height = v5;
  result.width = v6;
  return result;
}

- (void)layoutSubviews
{
  v66 = *MEMORY[0x1E69E9840];
  v64.receiver = self;
  v64.super_class = PKPassTileGroupView;
  [(PKPassTileGroupView *)&v64 layoutSubviews];
  [(PKPassTileGroupView *)self bounds];
  left = self->_contentInset.left;
  right = self->_contentInset.right;
  v6 = v3 - (left + right);
  v8 = v7 - (self->_contentInset.top + self->_contentInset.bottom);
  v9 = self->_boundsSize.height != v8 || self->_boundsSize.width != v6;
  self->_boundsSize.width = v6;
  self->_boundsSize.height = v8;
  [(PKPassTileGroupView *)self _populateHandleSizeCachesWithWidth:v9 recompute:v3 - (left + right)];
  v10 = [(PKPassTileGroupView *)self _shouldReverseLayoutDirection];
  if (v10)
  {
    v11 = CGRectMaxXEdge;
  }

  else
  {
    v11 = CGRectMinXEdge;
  }

  PKSizeAlignedInRect();
  memset(&v62, 0, sizeof(v62));
  remainder.origin.x = v12;
  remainder.origin.y = v13;
  remainder.size.width = v14;
  remainder.size.height = v15;
  v53 = [(NSMutableArray *)self->_itemViewsByRows count];
  if (v53)
  {
    v16 = 0;
    v56 = v10;
    v17 = (v10 ^ 1);
    do
    {
      v18 = [(NSMutableArray *)self->_itemViewsByRows objectAtIndexedSubscript:v16];
      v19 = [v18 count];
      if (v19)
      {
        v20 = v19;
        v54 = v18;
        v55 = v16;
        v60 = 0u;
        v61 = 0u;
        v58 = 0u;
        v59 = 0u;
        v21 = v18;
        v22 = [v21 countByEnumeratingWithState:&v58 objects:v65 count:16];
        if (v22)
        {
          v23 = v22;
          v24 = *v59;
          v25 = 0.0;
          do
          {
            v26 = 0;
            do
            {
              if (*v59 != v24)
              {
                objc_enumerationMutation(v21);
              }

              v27 = *(*(&v58 + 1) + 8 * v26);
              if (v27)
              {
                v28 = *(v27 + 32);
              }

              else
              {
                v28 = 0.0;
              }

              v25 = fmax(v28, v25);
              ++v26;
            }

            while (v23 != v26);
            v29 = [v21 countByEnumeratingWithState:&v58 objects:v65 count:16];
            v23 = v29;
          }

          while (v29);
        }

        else
        {
          v25 = 0.0;
        }

        memset(&slice, 0, sizeof(slice));
        CGRectDivide(remainder, &slice, &remainder, v25, CGRectMinYEdge);
        CGRectDivide(remainder, &v62, &remainder, 8.0, CGRectMinYEdge);
        v30 = 0;
        do
        {
          v31 = [v21 objectAtIndexedSubscript:v30];
          v32 = v31;
          if (v31)
          {
            v33 = *(v31 + 8);
            v34 = *(v31 + 16);
          }

          else
          {
            v33 = 0;
            v34 = 0;
          }

          v35 = 0.5;
          if (v20 == 1)
          {
            v35 = v17;
          }

          if (v30)
          {
            v36 = v35;
          }

          else
          {
            v36 = v56;
          }

          v37 = v34;
          v38 = [v37 layer];
          [v38 anchorPoint];
          v41 = v40;
          v42 = v39;
          if (v36 != v40 || v39 != 0.0)
          {
            [v38 bounds];
            v44 = v43;
            v46 = v45;
            [v38 position];
            v48 = v47;
            v50 = v49;
            [v38 setAnchorPoint:{v36, 0.0}];
            if ((v33 & 1) == 0)
            {
              [v38 setPosition:{v48 - v41 * v44 + v36 * v44, v50 - v42 * v46 + v46 * 0.0}];
            }
          }

          if (v32)
          {
            v51 = *(v32 + 24);
          }

          else
          {
            v51 = 0.0;
          }

          CGRectDivide(slice, &v62, &slice, v51, v11);
          PKSizeAlignedInRect();
          v52 = self->_animated & ~v33;
          [v37 pkui_setFrame:v52 & 1 animated:?];
          [v37 layoutIfNeededAnimated:v52 & 1];

          if (v32)
          {
            *(v32 + 8) = 0;
          }

          CGRectDivide(slice, &v62, &slice, 8.0, v11);

          ++v30;
          --v20;
        }

        while (v20);
        v18 = v54;
        v16 = v55;
      }

      ++v16;
    }

    while (v16 != v53);
  }
}

- (void)performBatchUpdates:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (v6)
  {
    v7 = v6;
    if (self->_deferringUpdate)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"PKPassTileGroupView recursive batch updates are not supported."];
      v6 = v7;
    }

    self->_deferringUpdate = 1;
    v6[2]();
    self->_deferringUpdate = 0;
    if (self->_deferredSubviewUpdate)
    {
      self->_deferredSubviewUpdate = 0;
      [(PKPassTileGroupView *)self _updateSubviewsAnimated:v4];
    }

    else
    {
      [(PKPassTileGroupView *)self layoutIfNeededAnimated:v4];
    }

    v6 = v7;
  }
}

- (_BYTE)_updateSubviewsAnimated:(_BYTE *)result
{
  if (result)
  {
    v2 = result;
    if (result[521] == 1)
    {
      result[522] = 1;
    }

    else
    {
      [result layoutIfNeeded];
      *(v2 + 424) = *MEMORY[0x1E695F060];
      v4 = [*(v2 + 61) count];
      v5 = [*(v2 + 63) count];
      if (v4)
      {
        for (i = 0; i != v4; ++i)
        {
          if (i >= v5 || ([*(v2 + 63) objectAtIndexedSubscript:i], (v7 = objc_claimAutoreleasedReturnValue()) == 0))
          {
            v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
            [*(v2 + 63) addObject:v7];
          }

          v8 = [*(v2 + 61) objectAtIndexedSubscript:i];
          [(PKPassTileGroupView *)v2 _updateRowItemViews:v7 withRowItems:v8 isLastRow:v4 - 1 == i animated:a2];
        }
      }

      if (v4 < v5)
      {
        v9 = MEMORY[0x1E695E0F0];
        do
        {
          v10 = [*(v2 + 63) objectAtIndexedSubscript:v4];
          [(PKPassTileGroupView *)v2 _updateRowItemViews:v10 withRowItems:v9 isLastRow:0 animated:a2];

          ++v4;
        }

        while (v5 != v4);
      }

      [v2 setNeedsLayout];

      return [v2 layoutIfNeededAnimated:a2];
    }
  }

  return result;
}

- (void)layoutIfNeededAnimated:(BOOL)a3
{
  self->_animated = a3;
  [(PKPassTileGroupView *)self layoutIfNeeded];
  self->_animated = 0;
}

- (void)_updateRowItemViews:(void *)a3 withRowItems:(char)a4 isLastRow:(int)a5 animated:
{
  v80 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v53 = [v8 count];
  v56 = v7;
  v52 = v8;
  v50 = [v7 pk_createArrayByApplyingBlock:&__block_literal_global_60];
  [v8 differenceFromArray:? withOptions:? usingEquivalenceTest:?];
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  obj = v73 = 0u;
  v9 = [obj countByEnumeratingWithState:&v70 objects:v79 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v71;
    v54 = *v71;
    do
    {
      v12 = 0;
      v13 = sel__tileViewTapped_;
      do
      {
        if (*v71 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v70 + 1) + 8 * v12);
        v15 = [v14 index];
        v16 = [v14 changeType];
        if (v16 == 1)
        {
          v23 = [v56 objectAtIndexedSubscript:v15];
          [v56 removeObjectAtIndex:v15];
          if (v23)
          {
            constraintsExceptingSubviewAutoresizingConstraints = v23->super.super.super._constraintsExceptingSubviewAutoresizingConstraints;
          }

          else
          {
            constraintsExceptingSubviewAutoresizingConstraints = 0;
          }

          v26 = constraintsExceptingSubviewAutoresizingConstraints;
          [a1 sendSubviewToBack:v26];
          v27 = v13;
          [(NSMutableArray *)v26 removeTarget:a1 action:v13 forControlEvents:64];
          v69 = 0u;
          v67 = 0u;
          v68 = 0u;
          v66 = 0u;
          v28 = [(NSMutableArray *)v26 gestureRecognizers];
          v29 = [v28 countByEnumeratingWithState:&v66 objects:v78 count:16];
          if (v29)
          {
            v30 = v29;
            v31 = *v67;
            do
            {
              for (i = 0; i != v30; ++i)
              {
                if (*v67 != v31)
                {
                  objc_enumerationMutation(v28);
                }

                [(NSMutableArray *)v26 removeGestureRecognizer:*(*(&v66 + 1) + 8 * i)];
              }

              v30 = [v28 countByEnumeratingWithState:&v66 objects:v78 count:16];
            }

            while (v30);
          }

          v33 = v26;
          v22 = v33;
          if (a5)
          {
            v34 = [(PKPassTileGroupView_ViewHandle *)v33 layer];
            v35 = [MEMORY[0x1E69B92B0] springAnimationWithKeyPath:@"opacity"];
            [v34 opacity];
            [v35 pkui_updateForAdditiveAnimationFromScalar:v36 toScalar:0.0];
            v74.receiver = MEMORY[0x1E69E9820];
            v74.super_class = 3221225472;
            v75 = __RemoveViewFromSuperview_block_invoke;
            v76 = &unk_1E8011D28;
            v77 = v22;
            [v35 pkui_setCompletionHandler:&v74];
            [v34 setOpacity:0.0];
            v37 = [v34 pkui_addAdditiveAnimation:v35];
            [v35 duration];
          }

          else
          {
            [(PKPassTileGroupView_ViewHandle *)v33 removeFromSuperview];
          }

          v11 = v54;

          v13 = v27;
        }

        else
        {
          if (v16)
          {
            goto LABEL_28;
          }

          v17 = objc_alloc_init(PKPassTileView);
          [(PKPassTileView *)v17 setDelegate:a1];
          [(PKPassTileView *)v17 addTarget:a1 action:v13 forControlEvents:64];
          v18 = [objc_alloc(MEMORY[0x1E69DCD80]) initWithTarget:a1 action:sel__tileViewPinched_];
          [(PKPassTileView *)v17 addGestureRecognizer:v18];

          [a1 insertSubview:v17 atIndex:0];
          if (a5)
          {
            v19 = [MEMORY[0x1E69B92B0] springAnimationWithKeyPath:@"opacity"];
            [v19 pkui_updateForAdditiveAnimationFromScalar:0.0 toScalar:1.0];
            v20 = [(PKPassTileView *)v17 layer];
            v21 = [v20 pkui_addAdditiveAnimation:v19];
          }

          v22 = [PKPassTileGroupView_ViewHandle alloc];
          v23 = v17;
          if (v22)
          {
            v74.receiver = v22;
            v74.super_class = PKPassTileGroupView_ViewHandle;
            v24 = objc_msgSendSuper2(&v74, sel_init);
            v22 = v24;
            if (v24)
            {
              v24->_initialLayout = 1;
              objc_storeStrong(&v24->_view, v17);
            }
          }

          [v56 insertObject:v22 atIndex:v15];
        }

LABEL_28:
        ++v12;
      }

      while (v12 != v10);
      v38 = [obj countByEnumeratingWithState:&v70 objects:v79 count:16];
      v10 = v38;
    }

    while (v38);
  }

  v39 = [a1[57] metadata];
  v40 = [v39 metadataTypeHorizontalFlowGroup];
  v41 = [v40 groupStyle];

  if (v53)
  {
    for (j = 0; j != v53; ++j)
    {
      v43 = [v56 objectAtIndexedSubscript:j];
      v44 = v43;
      if (v43)
      {
        v45 = *(v43 + 16);
      }

      else
      {
        v45 = 0;
      }

      v46 = v45;
      v58[0] = MEMORY[0x1E69E9820];
      v58[1] = 3221225472;
      v58[2] = __75__PKPassTileGroupView__updateRowItemViews_withRowItems_isLastRow_animated___block_invoke_3;
      v58[3] = &unk_1E80157F8;
      v47 = v52;
      v65 = a4;
      v59 = v47;
      v60 = a1;
      v61 = v46;
      v62 = j;
      v48 = a5;
      v63 = v53;
      v64 = v41;
      if (v44)
      {
        v48 = a5;
        if (a5)
        {
          v48 = v44[8] ^ 1;
        }
      }

      v49 = v46;
      [v49 performBatchUpdates:v58 animated:v48 & 1];
    }
  }
}

uint64_t __75__PKPassTileGroupView__updateRowItemViews_withRowItems_isLastRow_animated___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a2 + 16);
  }

  else
  {
    v2 = 0;
  }

  return [v2 content];
}

uint64_t __75__PKPassTileGroupView__updateRowItemViews_withRowItems_isLastRow_animated___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 metadata];
  v6 = [v5 identifier];
  v7 = [v4 metadata];

  v8 = [v7 identifier];
  v9 = v6;
  v10 = v8;
  v11 = v10;
  if (v9 == v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = 0;
    if (v9 && v10)
    {
      v12 = [v9 isEqualToString:v10];
    }
  }

  return v12;
}

void __75__PKPassTileGroupView__updateRowItemViews_withRowItems_isLastRow_animated___block_invoke_3(uint64_t a1)
{
  v65 = *MEMORY[0x1E69E9840];
  v1 = [*(a1 + 32) objectAtIndexedSubscript:*(a1 + 56)];
  v2 = v1;
  v3 = a1;
  if (*(a1 + 80))
  {
    v4 = *(a1 + 40);
    v5 = *(a1 + 64);
    v6 = *(a1 + 56) + 1;
    v7 = v6 == v5;
    v8 = *(v4 + 528) == 1 && v6 == v5;
    v47 = a1 + 40;
    if (!v8)
    {
      goto LABEL_36;
    }

    [*(v4 + 496) insertObject:v1 atIndex:0];
    if (*(a1 + 40))
    {
      v9 = [MEMORY[0x1E69B8AB0] _createMetadataForType:0 identifier:@"PKPassTileContextMenuTileIdentifier" context:0];
      [v9 setPreferredStyle:1];
      v10 = [MEMORY[0x1E69B8AB8] createResolvedStateWithType:1];
      [v10 setPreferredStyle:5];
      v11 = MEMORY[0x1E69B8AC8];
      v12 = PKLocalizedTicketingString(&cfstr_TileContextMen.isa);
      v13 = [v11 createWithContent:v12];
      [v10 setBody:v13];

      v14 = [MEMORY[0x1E69B8AA8] createWithSymbolName:@"ellipsis" tintColor:14];
      [v10 setIcon:v14];

      v49 = [objc_alloc(MEMORY[0x1E69B8A90]) _initWithMetadata:v9 childTiles:0 stateIdentifier:@"PKPassTileContextMenuTileIdentifier" state:v10 inProgress:0];
      [v49 setAxID:*MEMORY[0x1E69B9970]];
    }

    else
    {
      v49 = 0;
    }

    v15 = *(a1 + 40);
    v46 = *(a1 + 48);
    if (!v15)
    {
LABEL_34:
      [v46 setMenu:{v15, v46}];

      v3 = a1;
      v7 = 1;
      [*(a1 + 48) setShowsMenuAsPrimaryAction:1];
      goto LABEL_37;
    }

    v51 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    val = v15;
    obj = v15[62];
    v53 = [obj countByEnumeratingWithState:&v59 objects:v64 count:16];
    if (!v53)
    {
      goto LABEL_33;
    }

    v52 = *v60;
LABEL_12:
    v16 = 0;
    while (1)
    {
      if (*v60 != v52)
      {
        objc_enumerationMutation(obj);
      }

      v17 = [*(*(&v59 + 1) + 8 * v16) state];
      v18 = MEMORY[0x1E69B8D10];
      v19 = [v17 actions];
      v20 = [v18 effectiveActionForActions:v19];

      if (!v20)
      {
        goto LABEL_31;
      }

      v21 = [v17 icon];
      v22 = [v17 type];
      if (v22 == 1)
      {
        break;
      }

      if (!v22)
      {
        v23 = [v17 stateTypeDefault];
        v55 = [v23 body];
        goto LABEL_20;
      }

      v55 = 0;
      if (v21)
      {
LABEL_21:
        v26 = [v21 image];
        v27 = [MEMORY[0x1E69DC888] tintColor];
        if (v26)
        {
          v28 = [MEMORY[0x1E69DCAB8] imageWithPKImage:v26];
          v29 = [v28 imageWithTintColor:v27];
        }

        else
        {
          v30 = [v21 contextMenuSymbolName];
          v31 = v30;
          if (v30)
          {
            v32 = v30;
          }

          else
          {
            v32 = [v21 symbolName];
          }

          v28 = v32;

          v33 = MEMORY[0x1E69DCAB8];
          v34 = MEMORY[0x1E69DCAD8];
          v63 = v27;
          v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v63 count:1];
          v36 = [v34 configurationWithPaletteColors:v35];
          v29 = [v33 _systemImageNamed:v28 withConfiguration:v36];
        }

        goto LABEL_30;
      }

LABEL_24:
      v29 = 0;
LABEL_30:
      objc_initWeak(&location, val);
      v37 = MEMORY[0x1E69DC628];
      v56[0] = MEMORY[0x1E69E9820];
      v56[1] = 3221225472;
      v56[2] = __35__PKPassTileGroupView__contextMenu__block_invoke;
      v56[3] = &unk_1E80158E8;
      objc_copyWeak(&v57, &location);
      v56[4] = v20;
      v56[5] = val;
      v38 = [v37 actionWithTitle:v55 image:v29 identifier:0 handler:v56];
      [v51 addObject:v38];

      objc_destroyWeak(&v57);
      objc_destroyWeak(&location);

LABEL_31:
      if (v53 == ++v16)
      {
        v53 = [obj countByEnumeratingWithState:&v59 objects:v64 count:16];
        if (!v53)
        {
LABEL_33:

          v15 = [MEMORY[0x1E69DCC60] menuWithChildren:v51];

          goto LABEL_34;
        }

        goto LABEL_12;
      }
    }

    v23 = [v17 stateTypeDefaultV2];
    v24 = [v23 body];
    v25 = [v24 valueTypeText];
    v55 = [v25 content];

LABEL_20:
    if (v21)
    {
      goto LABEL_21;
    }

    goto LABEL_24;
  }

  v7 = 0;
  v47 = a1 + 40;
LABEL_36:
  v49 = v1;
LABEL_37:
  v40 = *(v3 + 48);
  v39 = v3 + 48;
  [v40 setCompact:*(v39 + 16) > 1uLL];
  [*v39 setGroupStyle:*(v39 + 24)];
  [*v39 setPass:*(*(v39 - 8) + 536) passState:*(*(v39 - 8) + 408)];
  [*v39 setContent:v49];
  v41 = *v39;
  WeakRetained = objc_loadWeakRetained((*(v39 - 8) + 544));
  v43 = v39;
  v44 = [WeakRetained customViewProviderForPassTileGroupView:*(v39 - 8)];
  [v41 setCustomViewProvider:v44];

  if (v7)
  {
    v45 = *(*v47 + 528);
  }

  else
  {
    v45 = 0;
  }

  [*v43 setOverflowType:v45];
}

- (void)_performDisplayAuxiliaryPassInformationItemAction:(void *)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = a1[67];
    if (v4)
    {
      v5 = [v4 uniqueID];
      if (v5)
      {
        v6 = v5;
        v7 = [v3 auxiliaryPassInformationIdentifier];
        v8 = [v3 auxiliaryPassInformationItemIdentifier];
        if (!v8)
        {
LABEL_14:

          goto LABEL_15;
        }

        if ((PKRunningInViewService() & 1) != 0 || PKRunningInLockScreenPlugin())
        {
          v9 = objc_alloc_init(MEMORY[0x1E696AF20]);
          [v9 setScheme:*MEMORY[0x1E69BC6E0]];
          [v9 setHost:*MEMORY[0x1E69BC698]];
          v10 = MEMORY[0x1E696AEC0];
          [v3 type];
          v11 = PKPaymentPassActionTypeToString();
          v12 = [v10 stringWithFormat:@"/%@/%@", v6, v11];
          [v9 setPath:v12];

          v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
          if (v7)
          {
            v14 = [MEMORY[0x1E696AF60] queryItemWithName:*MEMORY[0x1E69BC658] value:v7];
            [v13 addObject:v14];
          }

          v15 = [MEMORY[0x1E696AF60] queryItemWithName:*MEMORY[0x1E69BC660] value:v8];
          [v13 addObject:v15];

          v16 = [v13 copy];
          [v9 setQueryItems:v16];

          v17 = [v9 URL];
          if (!v17)
          {
            goto LABEL_13;
          }

          v18 = v17;
          v19 = [objc_alloc(MEMORY[0x1E69B8D10]) _initWithExternalURL:v17 title:0];
          v20 = [a1 window];
          PKPaymentPassActionPerformOpenExternalURL(v19, v20);
        }

        else
        {
          v21 = a1[67];
          if (!v21)
          {
            goto LABEL_14;
          }

          v22 = [v21 secureElementPass];
          if (!v22)
          {
            goto LABEL_14;
          }

          v9 = v22;
          v23 = [v22 auxiliaryPassInformation];
          v13 = v23;
          if (!v23 || ![v23 count])
          {
            goto LABEL_13;
          }

          if (v7)
          {
            v28[0] = MEMORY[0x1E69E9820];
            v28[1] = 3221225472;
            v28[2] = __73__PKPassTileGroupView__performDisplayAuxiliaryPassInformationItemAction___block_invoke;
            v28[3] = &unk_1E8015820;
            v28[4] = v7;
            v24 = [v13 pk_firstObjectPassingTest:v28];
          }

          else
          {
            v24 = [v13 firstObject];
          }

          v18 = v24;
          if (!v24)
          {
            goto LABEL_12;
          }

          v25 = [v24 items];
          v27[0] = MEMORY[0x1E69E9820];
          v27[1] = 3221225472;
          v27[2] = __73__PKPassTileGroupView__performDisplayAuxiliaryPassInformationItemAction___block_invoke_2;
          v27[3] = &unk_1E8015848;
          v27[4] = v8;
          v19 = [v25 pk_firstObjectPassingTest:v27];

          if (v19)
          {
            v26 = [[PKDashboardAuxiliaryPassInformationViewController alloc] initWithItem:v19 forPass:v9];
            [(PKPassTileGroupView *)a1 _displayViewController:v26];
          }
        }

LABEL_12:
LABEL_13:

        goto LABEL_14;
      }
    }
  }

LABEL_15:
}

uint64_t __73__PKPassTileGroupView__performDisplayAuxiliaryPassInformationItemAction___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = *(a1 + 32);
  v5 = v3;
  v6 = v4;
  v7 = v6;
  if (v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = 0;
    if (v5 && v6)
    {
      v8 = [v5 isEqualToString:v6];
    }
  }

  return v8;
}

uint64_t __73__PKPassTileGroupView__performDisplayAuxiliaryPassInformationItemAction___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = *(a1 + 32);
  v5 = v3;
  v6 = v4;
  v7 = v6;
  if (v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = 0;
    if (v5 && v6)
    {
      v8 = [v5 isEqualToString:v6];
    }
  }

  return v8;
}

- (void)_displayViewController:(void *)a1
{
  v8 = a2;
  v3 = [a1 pkui_viewControllerFromResponderChain];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 navigationController];
    v6 = v5;
    if (v5)
    {
      [v5 pushViewController:v8 animated:1];
    }

    else
    {
      v7 = [[PKNavigationController alloc] initWithRootViewController:v8];
      [v4 presentViewController:v7 animated:1 completion:0];
    }
  }
}

- (void)_performDisplayTileContextAction:(uint64_t)a1
{
  if (a1)
  {
    v3 = [a2 context];
    WeakRetained = objc_loadWeakRetained((a1 + 544));
    [WeakRetained passTileGroupView:a1 displayTileContext:v3 tile:0 overrideMaximumRows:0];
  }
}

- (void)_performShareFlightStatus
{
  if (a1)
  {
    v8 = [a1 pass];
    v2 = [a1[51] flight];
    v3 = objc_alloc(MEMORY[0x1E69B88D8]);
    v4 = [v8 uniqueID];
    v5 = [v3 initWithFlight:v2 passUniqueIdentifier:v4];

    v6 = [[PKFlightShareComposeViewController alloc] initWithInvitation:v5 delegate:0];
    v7 = [a1 pkui_viewControllerFromResponderChain];
    [v7 presentViewController:v6 animated:0 completion:0];
  }
}

- (void)_performOpenBusinessChat:(void *)a1
{
  v3 = a2;
  if (a1 && +[PKBusinessChatController deviceSupportsBusinessChat])
  {
    v4 = [v3 businessChatIdentifier];
    if (v4)
    {
      v5 = objc_alloc_init(PKBusinessChatController);
      v6 = [[PKBusinessChatEmptyContext alloc] initWithBusinessIdentifier:v4];
      objc_initWeak(&location, a1);
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __48__PKPassTileGroupView__performOpenBusinessChat___block_invoke;
      v7[3] = &unk_1E8013F58;
      objc_copyWeak(&v8, &location);
      v7[4] = a1;
      [(PKBusinessChatController *)v5 openBusinessChatWithContext:v6 completion:v7];
      objc_destroyWeak(&v8);
      objc_destroyWeak(&location);
    }
  }
}

void __48__PKPassTileGroupView__performOpenBusinessChat___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__PKPassTileGroupView__performOpenBusinessChat___block_invoke_2;
  block[3] = &unk_1E8011828;
  objc_copyWeak(&v9, (a1 + 40));
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v9);
}

void __48__PKPassTileGroupView__performOpenBusinessChat___block_invoke_2(void **a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained)
  {
    if (a1[4])
    {
      v5 = WeakRetained;
      v3 = [a1[5] pkui_viewControllerFromResponderChain];
      WeakRetained = v5;
      if (v3)
      {
        v4 = PKAlertForDisplayableErrorWithHandlers(a1[4], 0, 0, 0);
        [v3 presentViewController:v4 animated:1 completion:0];

        WeakRetained = v5;
      }
    }
  }
}

- (void)_performViewImageAction:(void *)a3 sourceImageView:
{
  if (a1)
  {
    v5 = a3;
    v7 = [a2 title];
    v6 = [a1 pkui_viewControllerFromResponderChain];
    [PKTileImagePreviewViewController presentWithImageView:v5 title:v7 presenting:v6];
  }
}

- (void)setPass:(id)a3 content:(id)a4 passState:(id)a5 context:(id *)a6 animated:(BOOL)a7
{
  v7 = a7;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  if (a6->var0)
  {
    [(PKPass *)v13 prearmTiles];
  }

  else
  {
    [(PKPass *)v13 tiles];
  }
  v15 = ;
  if (!v13)
  {
    v13 = v12;
LABEL_8:

    v13 = 0;
    v12 = 0;
    goto LABEL_9;
  }

  if (!v12)
  {
    goto LABEL_8;
  }

LABEL_9:
  v50 = v15;
  if (self->_pass != v12 || !PKEqualObjects() || (v16 = self->_content, v51[0] = MEMORY[0x1E69E9820], v51[1] = 3221225472, v51[2] = __66__PKPassTileGroupView_setPass_content_passState_context_animated___block_invoke, v51[3] = &unk_1E8015870, v52 = v14, v53 = self, [v50 differenceFromArray:v16 withOptions:0 usingEquivalenceTest:v51], v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v17, "hasChanges"), v17, v15 = v50, v52, v18))
  {
    objc_storeStrong(&self->_pass, v12);
    objc_storeStrong(&self->_passState, a5);
    self->_lastPassStateHash = [v14 hash];
    objc_storeStrong(&self->_groupTile, v13);
    objc_storeStrong(&self->_content, v15);
    v19 = [(PKPass *)v13 metadata];
    v20 = [v19 metadataTypeHorizontalFlowGroup];
    self->_columns = [v20 columns];

    v21 = [(PKPass *)v13 maximumRows];
    v22 = [v21 unsignedIntegerValue];

    var2 = a6->var2;
    if (!var2)
    {
      var2 = a6->var1;
      if (v22)
      {
        if (v22 >= var2)
        {
          var1 = a6->var1;
        }

        else
        {
          var1 = v22;
        }

        if (var2)
        {
          var2 = var1;
        }

        else
        {
          var2 = v22;
        }
      }

      else if (!var2)
      {
        var2 = -1;
      }
    }

    self->_maximumRows = var2;
    content = self->_content;
    if (content)
    {
      v26 = [MEMORY[0x1E69B8A90] createTileRowsForTiles:content forceCompact:0 maximumRows:? maximumColumns:?];
    }

    else
    {
      v26 = 0;
    }

    objc_storeStrong(&self->_contentByRows, v26);
    if (content)
    {
    }

    v27 = self->_content;
    if (v27)
    {
      v28 = [(NSArray *)v27 firstObject];
      v29 = [v28 metadata];
      self->_selectable = [v29 isSelectable];
    }

    else
    {
      self->_selectable = 0;
    }

    v30 = [(NSArray *)self->_contentByRows count];
    maximumRows = self->_maximumRows;
    if (v30 >= maximumRows)
    {
      v32 = self->_maximumRows;
    }

    else
    {
      v32 = v30;
    }

    if (v30 > maximumRows)
    {
      v33 = v30;
      v34 = [(PKPassTile *)self->_groupTile metadata];
      v48 = [v34 metadataTypeHorizontalFlowGroup];

      v35 = [v48 groupStyle];
      v36 = 1;
      if (v35 != 1)
      {
        v36 = 2;
      }

      self->_overflowType = v36;
      if ([v48 columns] >= 2 && objc_msgSend(v48, "widthClass") == 1)
      {
        v37 = self->_content;
        if (v37)
        {
          v38 = [MEMORY[0x1E69B8A90] createTileRowsForTiles:v37 forceCompact:1 maximumRows:self->_maximumRows maximumColumns:self->_columns];
          contentByRows = self->_contentByRows;
          self->_contentByRows = v38;

          v40 = [(NSArray *)self->_contentByRows count];
          v33 = v40;
          if (v40 >= self->_maximumRows)
          {
            v32 = self->_maximumRows;
          }

          else
          {
            v32 = v40;
          }
        }
      }

      v41 = [(NSArray *)self->_contentByRows subarrayWithRange:0, v32];
      effectiveContentByRows = self->_effectiveContentByRows;
      self->_effectiveContentByRows = v41;

      if (v33 != v32)
      {
        v43 = [(NSArray *)self->_contentByRows subarrayWithRange:v32, v33 - v32];
        v44 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v54[0] = MEMORY[0x1E69E9820];
        v54[1] = 3221225472;
        v54[2] = __FlattenContentRows_block_invoke;
        v54[3] = &unk_1E8015938;
        v55 = v44;
        v45 = v44;
        [v43 enumerateObjectsUsingBlock:v54];

        v46 = [v45 mutableCopy];
        effectiveDroppedContent = self->_effectiveDroppedContent;
        self->_effectiveDroppedContent = v46;
      }
    }

    else
    {
      self->_overflowType = 0;
      objc_storeStrong(&self->_effectiveContentByRows, self->_contentByRows);
      v48 = self->_effectiveDroppedContent;
      self->_effectiveDroppedContent = 0;
    }

    v14 = v49;

    self->_effectiveSelectable = self->_selectable;
    [(PKPassTileGroupView *)self _updateSubviewsAnimated:v7];
    v15 = v50;
  }
}

BOOL __66__PKPassTileGroupView_setPass_content_passState_context_animated___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = *(*(a1 + 40) + 416);
  v6 = a2;
  v7 = a3;
  v8 = v4;
  if (PKEqualObjects())
  {
    v9 = [v6 state];
    v10 = [v7 state];
    v11 = v9;
    if (v11 == v10)
    {
      if ([v8 hash] == v5)
      {
        v12 = 1;
      }

      else
      {
        v13 = [v11 stateTypeDefaultV2];
        v14 = [v13 title];
        v15 = [v14 valueTypeForeignReference];
        v16 = [v15 foreignReferenceType];

        if (v16)
        {
          v12 = 0;
        }

        else
        {
          v17 = [v13 body];
          v18 = [v17 valueTypeForeignReference];
          v19 = [v18 foreignReferenceType];

          if (v19)
          {
            v12 = 0;
          }

          else
          {
            v23 = [v13 footer];
            v20 = [v23 valueTypeForeignReference];
            v21 = [v20 foreignReferenceType];

            v12 = v21 == 0;
          }
        }
      }
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)setContentInset:(UIEdgeInsets)a3
{
  v3.f64[0] = a3.top;
  v3.f64[1] = a3.left;
  v4.f64[0] = a3.bottom;
  v4.f64[1] = a3.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_contentInset.top, v3), vceqq_f64(*&self->_contentInset.bottom, v4)))) & 1) == 0)
  {
    self->_contentInset = a3;
    [(PKPassTileGroupView *)self setNeedsLayout];
  }
}

- (void)_tileViewTapped:(id)a3
{
  v39 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 content];
  if (v5)
  {
    if ([v4 overflowType] == 2)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained passTileGroupView:self displayTileContext:1 tile:self->_groupTile overrideMaximumRows:1];
    }

    else
    {
      v7 = [v5 state];
      v8 = MEMORY[0x1E69B8D10];
      v9 = [v7 actions];
      v10 = [v8 effectiveActionForActions:v9];

      if (v10)
      {
        v11 = [v5 metadata];
        if ([v5 supportsPaymentPassAction:v10])
        {
          v12 = [v10 type];
          if (v12 > 8)
          {
            if (v12 > 12)
            {
              if (v12 == 13)
              {
                [(PKPassTileGroupView *)&self->super.super.super.isa _performShareFlightStatus];
              }

              else if (v12 == 14)
              {
                [(PKPassTileGroupView *)self _performOpenBusinessChat:v10];
              }
            }

            else if (v12 == 9)
            {
              v25 = [v4 viewImageActionView];
              [(PKPassTileGroupView *)self _performViewImageAction:v10 sourceImageView:v25];
            }

            else if (v12 == 10)
            {
              PKPaymentPassActionPerformOpenAppClip(v10);
            }
          }

          else if (v12 > 6)
          {
            if (v12 == 7)
            {
              [(PKPassTileGroupView *)self _performDisplayAuxiliaryPassInformationItemAction:v10];
            }

            else
            {
              [(PKPassTileGroupView *)self _performDisplayTileContextAction:v10];
            }
          }

          else if (v12 == 3)
          {
            v24 = [(PKPassTileGroupView *)self window];
            PKPaymentPassActionPerformOpenExternalURL(v10, v24);
          }

          else if (v12 == 4)
          {
            v13 = objc_loadWeakRetained(&self->_delegate);
            if ([(PKPass *)self->_pass passType]== PKPassTypeSecureElement)
            {
              v14 = self->_pass;
              if (v14 && v13)
              {
                *v37 = 0;
                *&v37[8] = v37;
                *&v37[16] = 0x2020000000;
                v38 = 0;
                aBlock[0] = MEMORY[0x1E69E9820];
                aBlock[1] = 3221225472;
                aBlock[2] = __39__PKPassTileGroupView__tileViewTapped___block_invoke;
                aBlock[3] = &unk_1E8015898;
                v36 = v37;
                v26 = v4;
                v35 = v26;
                v15 = _Block_copy(aBlock);
                v16 = objc_alloc(MEMORY[0x1E69B8798]);
                v32[0] = MEMORY[0x1E69E9820];
                v32[1] = 3221225472;
                v32[2] = __39__PKPassTileGroupView__tileViewTapped___block_invoke_2;
                v32[3] = &unk_1E8010B50;
                v27 = v15;
                v33 = v27;
                v17 = [v16 initWithBlock:v32];
                v18 = PKLogFacilityTypeGetObject();
                if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&dword_1BD026000, v18, OS_LOG_TYPE_DEFAULT, "PKPassTileGroupView: requesting SE action for PKPaymentPassActionTypeVehicleFunction.", buf, 2u);
                }

                v28[0] = MEMORY[0x1E69E9820];
                v28[1] = 3221225472;
                v28[2] = __39__PKPassTileGroupView__tileViewTapped___block_invoke_130;
                v28[3] = &unk_1E80158C0;
                v19 = v17;
                v29 = v19;
                v20 = v27;
                v30 = v20;
                [v13 passTileGroupView:self executeSEActionForPass:v14 tile:v5 withCompletion:v28];
                if ((*(*&v37[8] + 24) & 1) == 0)
                {
                  [v26 setInActionState:1 animated:1];
                }

                _Block_object_dispose(v37, 8);
              }
            }

            else
            {
              v14 = 0;
            }
          }
        }

        else
        {
          v21 = PKLogFacilityTypeGetObject();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            v22 = [v11 identifier];
            v23 = [v5 stateIdentifier];
            *v37 = 138412546;
            *&v37[4] = v22;
            *&v37[12] = 2112;
            *&v37[14] = v23;
            _os_log_impl(&dword_1BD026000, v21, OS_LOG_TYPE_DEFAULT, "PKPassTileGroupView: ignoring tap on tile (%@: %@) due to unsupported action.", v37, 0x16u);
          }
        }
      }
    }
  }
}

void __39__PKPassTileGroupView__tileViewTapped___block_invoke_2(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__PKPassTileGroupView__tileViewTapped___block_invoke_3;
  block[3] = &unk_1E8010B50;
  v2 = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __39__PKPassTileGroupView__tileViewTapped___block_invoke_130(uint64_t a1)
{
  [*(a1 + 32) invalidate];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (void)_tileViewPinched:(id)a3
{
  v12 = a3;
  [v12 scale];
  v4 = v12;
  if (v5 > 0.0)
  {
    v6 = [v12 view];
    v7 = [v6 content];
    v8 = [v7 state];
    v9 = MEMORY[0x1E69B8D10];
    v10 = [v8 actions];
    v11 = [v9 effectiveActionForActions:v10];

    if ([v11 type] == 9)
    {
      [(PKPassTileGroupView *)self _tileViewTapped:v6];
    }

    v4 = v12;
  }
}

void __35__PKPassTileGroupView__contextMenu__block_invoke(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained)
  {
    v7 = WeakRetained;
    v3 = [a1[4] type];
    if (v3 <= 9)
    {
      if (v3 == 3)
      {
        v5 = a1[4];
        v6 = [a1[5] window];
        PKPaymentPassActionPerformOpenExternalURL(v5, v6);
      }

      else if (v3 == 7)
      {
        [(PKPassTileGroupView *)a1[5] _performDisplayAuxiliaryPassInformationItemAction:?];
      }

      else
      {
        v4 = v3 == 8;
        WeakRetained = v7;
        if (!v4)
        {
          goto LABEL_18;
        }

        [(PKPassTileGroupView *)a1[5] _performDisplayTileContextAction:?];
      }

LABEL_17:
      WeakRetained = v7;
      goto LABEL_18;
    }

    if (v3 == 10)
    {
      PKPaymentPassActionPerformOpenAppClip(a1[4]);
      goto LABEL_17;
    }

    if (v3 == 13)
    {
      [(PKPassTileGroupView *)a1[5] _performShareFlightStatus];
      goto LABEL_17;
    }

    v4 = v3 == 14;
    WeakRetained = v7;
    if (v4)
    {
      [(PKPassTileGroupView *)a1[5] _performOpenBusinessChat:?];
      goto LABEL_17;
    }
  }

LABEL_18:
}

- (id)passTileViewRequestsBeginSuppressingCardEmulation:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = [WeakRetained passTileGroupViewRequestsBeginSuppressingCardEmulation:self];

  return v5;
}

- (UIEdgeInsets)contentInset
{
  top = self->_contentInset.top;
  left = self->_contentInset.left;
  bottom = self->_contentInset.bottom;
  right = self->_contentInset.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (PKPassTileGroupViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end