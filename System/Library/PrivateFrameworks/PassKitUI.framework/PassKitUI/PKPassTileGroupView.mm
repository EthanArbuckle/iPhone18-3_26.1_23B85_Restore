@interface PKPassTileGroupView
+ (void)extractSupportedVehicleFunction:(id *)function action:(id *)action forTile:(id)tile applicationIdentifier:(id)identifier keyIdentifier:(id)keyIdentifier;
- (CGSize)sizeThatFits:(CGSize)fits;
- (PKPassTileGroupView)init;
- (PKPassTileGroupViewDelegate)delegate;
- (UIEdgeInsets)contentInset;
- (_BYTE)_updateSubviewsAnimated:(_BYTE *)result;
- (double)_populateHandleSizeCachesWithWidth:(double)width recompute:;
- (id)passTileViewRequestsBeginSuppressingCardEmulation:(id)emulation;
- (void)_displayViewController:(void *)controller;
- (void)_performDisplayAuxiliaryPassInformationItemAction:(void *)action;
- (void)_performDisplayTileContextAction:(uint64_t)action;
- (void)_performOpenBusinessChat:(void *)chat;
- (void)_performShareFlightStatus;
- (void)_performViewImageAction:(void *)action sourceImageView:;
- (void)_tileViewPinched:(id)pinched;
- (void)_tileViewTapped:(id)tapped;
- (void)_updateRowItemViews:(void *)views withRowItems:(char)items isLastRow:(int)row animated:;
- (void)layoutIfNeededAnimated:(BOOL)animated;
- (void)layoutSubviews;
- (void)performBatchUpdates:(id)updates animated:(BOOL)animated;
- (void)setContentInset:(UIEdgeInsets)inset;
- (void)setPass:(id)pass content:(id)content passState:(id)state context:(id *)context animated:(BOOL)animated;
@end

@implementation PKPassTileGroupView

+ (void)extractSupportedVehicleFunction:(id *)function action:(id *)action forTile:(id)tile applicationIdentifier:(id)identifier keyIdentifier:(id)keyIdentifier
{
  v63 = *MEMORY[0x1E69E9840];
  tileCopy = tile;
  identifierCopy = identifier;
  keyIdentifierCopy = keyIdentifier;
  v14 = keyIdentifierCopy;
  vehicleFunctionActions = 0;
  if (!tileCopy || !identifierCopy)
  {
    vehicleFunctions = 0;
    goto LABEL_29;
  }

  vehicleFunctions = 0;
  if (!keyIdentifierCopy)
  {
LABEL_29:
    v36 = *function;
    *function = 0;

    v37 = *action;
    *action = 0;
    goto LABEL_30;
  }

  metadata = [tileCopy metadata];
  metadataTypeVehicleFunction = [metadata metadataTypeVehicleFunction];
  vehicleFunctions = [metadataTypeVehicleFunction vehicleFunctions];

  if (![vehicleFunctions count])
  {
    v22 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v57 = identifierCopy;
      v58 = 2112;
      v59 = v14;
      _os_log_impl(&dword_1BD026000, v22, OS_LOG_TYPE_DEFAULT, "PKPassTileGroupView: no vehicle functions to check for (%@: %@).", buf, 0x16u);
    }

    vehicleFunctionActions = 0;
    goto LABEL_28;
  }

  v19 = MEMORY[0x1E69B8D10];
  state = [tileCopy state];
  actions = [state actions];
  v22 = [v19 effectiveActionForActions:actions];

  vehicleFunctionActions = [v22 vehicleFunctionActions];
  if (![vehicleFunctionActions count])
  {
    v35 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v57 = identifierCopy;
      v58 = 2112;
      v59 = v14;
      _os_log_impl(&dword_1BD026000, v35, OS_LOG_TYPE_DEFAULT, "PKPassTileGroupView: no vehicle function action map for (%@: %@).", buf, 0x16u);
    }

LABEL_28:
    goto LABEL_29;
  }

  actionCopy = action;

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
    v57 = identifierCopy;
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
  v26 = vehicleFunctions;
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
    v57 = identifierCopy;
    v58 = 2112;
    v59 = v50;
    v34 = "PKPassTileGroupView: failed to identify supported function for (%@: %@).";
    goto LABEL_37;
  }

  v28 = v27;
  functionCopy = function;
  v46 = identifierCopy;
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
      if ([v25 isRKEFunctionSupported:{v32, functionCopy, v46, v47}])
      {
        v33 = [vehicleFunctionActions objectForKeyedSubscript:v32];
        if (v33)
        {
          v40 = v33;
          v41 = v32;
          function = functionCopy;
          identifierCopy = v46;
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

  function = functionCopy;
  identifierCopy = v46;
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

  v42 = *function;
  *function = v41;
  v37 = v41;

  v43 = *actionCopy;
  *actionCopy = v40;
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

- (double)_populateHandleSizeCachesWithWidth:(double)width recompute:
{
  if (!self)
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
  v3 = *(self + 504);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __68__PKPassTileGroupView__populateHandleSizeCachesWithWidth_recompute___block_invoke;
  v8[3] = &unk_1E8015790;
  *&v8[7] = width;
  v9 = a2;
  v8[4] = self;
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

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  if ([(NSArray *)self->_content count:fits.width])
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
  _shouldReverseLayoutDirection = [(PKPassTileGroupView *)self _shouldReverseLayoutDirection];
  if (_shouldReverseLayoutDirection)
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
    v56 = _shouldReverseLayoutDirection;
    v17 = (_shouldReverseLayoutDirection ^ 1);
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
          layer = [v37 layer];
          [layer anchorPoint];
          v41 = v40;
          v42 = v39;
          if (v36 != v40 || v39 != 0.0)
          {
            [layer bounds];
            v44 = v43;
            v46 = v45;
            [layer position];
            v48 = v47;
            v50 = v49;
            [layer setAnchorPoint:{v36, 0.0}];
            if ((v33 & 1) == 0)
            {
              [layer setPosition:{v48 - v41 * v44 + v36 * v44, v50 - v42 * v46 + v46 * 0.0}];
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

- (void)performBatchUpdates:(id)updates animated:(BOOL)animated
{
  animatedCopy = animated;
  updatesCopy = updates;
  if (updatesCopy)
  {
    v7 = updatesCopy;
    if (self->_deferringUpdate)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"PKPassTileGroupView recursive batch updates are not supported."];
      updatesCopy = v7;
    }

    self->_deferringUpdate = 1;
    updatesCopy[2]();
    self->_deferringUpdate = 0;
    if (self->_deferredSubviewUpdate)
    {
      self->_deferredSubviewUpdate = 0;
      [(PKPassTileGroupView *)self _updateSubviewsAnimated:animatedCopy];
    }

    else
    {
      [(PKPassTileGroupView *)self layoutIfNeededAnimated:animatedCopy];
    }

    updatesCopy = v7;
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

- (void)layoutIfNeededAnimated:(BOOL)animated
{
  self->_animated = animated;
  [(PKPassTileGroupView *)self layoutIfNeeded];
  self->_animated = 0;
}

- (void)_updateRowItemViews:(void *)views withRowItems:(char)items isLastRow:(int)row animated:
{
  v80 = *MEMORY[0x1E69E9840];
  v7 = a2;
  viewsCopy = views;
  v53 = [viewsCopy count];
  v56 = v7;
  v52 = viewsCopy;
  v50 = [v7 pk_createArrayByApplyingBlock:&__block_literal_global_60];
  [viewsCopy differenceFromArray:? withOptions:? usingEquivalenceTest:?];
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
        index = [v14 index];
        changeType = [v14 changeType];
        if (changeType == 1)
        {
          v23 = [v56 objectAtIndexedSubscript:index];
          [v56 removeObjectAtIndex:index];
          if (v23)
          {
            constraintsExceptingSubviewAutoresizingConstraints = v23->super.super.super._constraintsExceptingSubviewAutoresizingConstraints;
          }

          else
          {
            constraintsExceptingSubviewAutoresizingConstraints = 0;
          }

          v26 = constraintsExceptingSubviewAutoresizingConstraints;
          [self sendSubviewToBack:v26];
          v27 = v13;
          [(NSMutableArray *)v26 removeTarget:self action:v13 forControlEvents:64];
          v69 = 0u;
          v67 = 0u;
          v68 = 0u;
          v66 = 0u;
          gestureRecognizers = [(NSMutableArray *)v26 gestureRecognizers];
          v29 = [gestureRecognizers countByEnumeratingWithState:&v66 objects:v78 count:16];
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
                  objc_enumerationMutation(gestureRecognizers);
                }

                [(NSMutableArray *)v26 removeGestureRecognizer:*(*(&v66 + 1) + 8 * i)];
              }

              v30 = [gestureRecognizers countByEnumeratingWithState:&v66 objects:v78 count:16];
            }

            while (v30);
          }

          v33 = v26;
          v22 = v33;
          if (row)
          {
            layer = [(PKPassTileGroupView_ViewHandle *)v33 layer];
            v35 = [MEMORY[0x1E69B92B0] springAnimationWithKeyPath:@"opacity"];
            [layer opacity];
            [v35 pkui_updateForAdditiveAnimationFromScalar:v36 toScalar:0.0];
            v74.receiver = MEMORY[0x1E69E9820];
            v74.super_class = 3221225472;
            v75 = __RemoveViewFromSuperview_block_invoke;
            v76 = &unk_1E8011D28;
            v77 = v22;
            [v35 pkui_setCompletionHandler:&v74];
            [layer setOpacity:0.0];
            v37 = [layer pkui_addAdditiveAnimation:v35];
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
          if (changeType)
          {
            goto LABEL_28;
          }

          v17 = objc_alloc_init(PKPassTileView);
          [(PKPassTileView *)v17 setDelegate:self];
          [(PKPassTileView *)v17 addTarget:self action:v13 forControlEvents:64];
          v18 = [objc_alloc(MEMORY[0x1E69DCD80]) initWithTarget:self action:sel__tileViewPinched_];
          [(PKPassTileView *)v17 addGestureRecognizer:v18];

          [self insertSubview:v17 atIndex:0];
          if (row)
          {
            v19 = [MEMORY[0x1E69B92B0] springAnimationWithKeyPath:@"opacity"];
            [v19 pkui_updateForAdditiveAnimationFromScalar:0.0 toScalar:1.0];
            layer2 = [(PKPassTileView *)v17 layer];
            v21 = [layer2 pkui_addAdditiveAnimation:v19];
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

          [v56 insertObject:v22 atIndex:index];
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

  metadata = [self[57] metadata];
  metadataTypeHorizontalFlowGroup = [metadata metadataTypeHorizontalFlowGroup];
  groupStyle = [metadataTypeHorizontalFlowGroup groupStyle];

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
      itemsCopy = items;
      v59 = v47;
      selfCopy = self;
      v61 = v46;
      v62 = j;
      rowCopy2 = row;
      v63 = v53;
      v64 = groupStyle;
      if (v44)
      {
        rowCopy2 = row;
        if (row)
        {
          rowCopy2 = v44[8] ^ 1;
        }
      }

      v49 = v46;
      [v49 performBatchUpdates:v58 animated:rowCopy2 & 1];
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

- (void)_performDisplayAuxiliaryPassInformationItemAction:(void *)action
{
  v3 = a2;
  if (action)
  {
    v4 = action[67];
    if (v4)
    {
      uniqueID = [v4 uniqueID];
      if (uniqueID)
      {
        v6 = uniqueID;
        auxiliaryPassInformationIdentifier = [v3 auxiliaryPassInformationIdentifier];
        auxiliaryPassInformationItemIdentifier = [v3 auxiliaryPassInformationItemIdentifier];
        if (!auxiliaryPassInformationItemIdentifier)
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
          if (auxiliaryPassInformationIdentifier)
          {
            v14 = [MEMORY[0x1E696AF60] queryItemWithName:*MEMORY[0x1E69BC658] value:auxiliaryPassInformationIdentifier];
            [v13 addObject:v14];
          }

          v15 = [MEMORY[0x1E696AF60] queryItemWithName:*MEMORY[0x1E69BC660] value:auxiliaryPassInformationItemIdentifier];
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
          window = [action window];
          PKPaymentPassActionPerformOpenExternalURL(v19, window);
        }

        else
        {
          v21 = action[67];
          if (!v21)
          {
            goto LABEL_14;
          }

          secureElementPass = [v21 secureElementPass];
          if (!secureElementPass)
          {
            goto LABEL_14;
          }

          v9 = secureElementPass;
          auxiliaryPassInformation = [secureElementPass auxiliaryPassInformation];
          v13 = auxiliaryPassInformation;
          if (!auxiliaryPassInformation || ![auxiliaryPassInformation count])
          {
            goto LABEL_13;
          }

          if (auxiliaryPassInformationIdentifier)
          {
            v28[0] = MEMORY[0x1E69E9820];
            v28[1] = 3221225472;
            v28[2] = __73__PKPassTileGroupView__performDisplayAuxiliaryPassInformationItemAction___block_invoke;
            v28[3] = &unk_1E8015820;
            v28[4] = auxiliaryPassInformationIdentifier;
            firstObject = [v13 pk_firstObjectPassingTest:v28];
          }

          else
          {
            firstObject = [v13 firstObject];
          }

          v18 = firstObject;
          if (!firstObject)
          {
            goto LABEL_12;
          }

          items = [firstObject items];
          v27[0] = MEMORY[0x1E69E9820];
          v27[1] = 3221225472;
          v27[2] = __73__PKPassTileGroupView__performDisplayAuxiliaryPassInformationItemAction___block_invoke_2;
          v27[3] = &unk_1E8015848;
          v27[4] = auxiliaryPassInformationItemIdentifier;
          v19 = [items pk_firstObjectPassingTest:v27];

          if (v19)
          {
            v26 = [[PKDashboardAuxiliaryPassInformationViewController alloc] initWithItem:v19 forPass:v9];
            [(PKPassTileGroupView *)action _displayViewController:v26];
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

- (void)_displayViewController:(void *)controller
{
  v8 = a2;
  pkui_viewControllerFromResponderChain = [controller pkui_viewControllerFromResponderChain];
  v4 = pkui_viewControllerFromResponderChain;
  if (pkui_viewControllerFromResponderChain)
  {
    navigationController = [pkui_viewControllerFromResponderChain navigationController];
    v6 = navigationController;
    if (navigationController)
    {
      [navigationController pushViewController:v8 animated:1];
    }

    else
    {
      v7 = [[PKNavigationController alloc] initWithRootViewController:v8];
      [v4 presentViewController:v7 animated:1 completion:0];
    }
  }
}

- (void)_performDisplayTileContextAction:(uint64_t)action
{
  if (action)
  {
    context = [a2 context];
    WeakRetained = objc_loadWeakRetained((action + 544));
    [WeakRetained passTileGroupView:action displayTileContext:context tile:0 overrideMaximumRows:0];
  }
}

- (void)_performShareFlightStatus
{
  if (self)
  {
    pass = [self pass];
    flight = [self[51] flight];
    v3 = objc_alloc(MEMORY[0x1E69B88D8]);
    uniqueID = [pass uniqueID];
    v5 = [v3 initWithFlight:flight passUniqueIdentifier:uniqueID];

    v6 = [[PKFlightShareComposeViewController alloc] initWithInvitation:v5 delegate:0];
    pkui_viewControllerFromResponderChain = [self pkui_viewControllerFromResponderChain];
    [pkui_viewControllerFromResponderChain presentViewController:v6 animated:0 completion:0];
  }
}

- (void)_performOpenBusinessChat:(void *)chat
{
  v3 = a2;
  if (chat && +[PKBusinessChatController deviceSupportsBusinessChat])
  {
    businessChatIdentifier = [v3 businessChatIdentifier];
    if (businessChatIdentifier)
    {
      v5 = objc_alloc_init(PKBusinessChatController);
      v6 = [[PKBusinessChatEmptyContext alloc] initWithBusinessIdentifier:businessChatIdentifier];
      objc_initWeak(&location, chat);
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __48__PKPassTileGroupView__performOpenBusinessChat___block_invoke;
      v7[3] = &unk_1E8013F58;
      objc_copyWeak(&v8, &location);
      v7[4] = chat;
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

- (void)_performViewImageAction:(void *)action sourceImageView:
{
  if (self)
  {
    actionCopy = action;
    title = [a2 title];
    pkui_viewControllerFromResponderChain = [self pkui_viewControllerFromResponderChain];
    [PKTileImagePreviewViewController presentWithImageView:actionCopy title:title presenting:pkui_viewControllerFromResponderChain];
  }
}

- (void)setPass:(id)pass content:(id)content passState:(id)state context:(id *)context animated:(BOOL)animated
{
  animatedCopy = animated;
  passCopy = pass;
  contentCopy = content;
  stateCopy = state;
  if (context->var0)
  {
    [(PKPass *)contentCopy prearmTiles];
  }

  else
  {
    [(PKPass *)contentCopy tiles];
  }
  v15 = ;
  if (!contentCopy)
  {
    contentCopy = passCopy;
LABEL_8:

    contentCopy = 0;
    passCopy = 0;
    goto LABEL_9;
  }

  if (!passCopy)
  {
    goto LABEL_8;
  }

LABEL_9:
  v50 = v15;
  if (self->_pass != passCopy || !PKEqualObjects() || (v16 = self->_content, v51[0] = MEMORY[0x1E69E9820], v51[1] = 3221225472, v51[2] = __66__PKPassTileGroupView_setPass_content_passState_context_animated___block_invoke, v51[3] = &unk_1E8015870, v52 = stateCopy, v53 = self, [v50 differenceFromArray:v16 withOptions:0 usingEquivalenceTest:v51], v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v17, "hasChanges"), v17, v15 = v50, v52, v18))
  {
    objc_storeStrong(&self->_pass, passCopy);
    objc_storeStrong(&self->_passState, state);
    self->_lastPassStateHash = [stateCopy hash];
    objc_storeStrong(&self->_groupTile, contentCopy);
    objc_storeStrong(&self->_content, v15);
    metadata = [(PKPass *)contentCopy metadata];
    metadataTypeHorizontalFlowGroup = [metadata metadataTypeHorizontalFlowGroup];
    self->_columns = [metadataTypeHorizontalFlowGroup columns];

    maximumRows = [(PKPass *)contentCopy maximumRows];
    unsignedIntegerValue = [maximumRows unsignedIntegerValue];

    var2 = context->var2;
    if (!var2)
    {
      var2 = context->var1;
      if (unsignedIntegerValue)
      {
        if (unsignedIntegerValue >= var2)
        {
          var1 = context->var1;
        }

        else
        {
          var1 = unsignedIntegerValue;
        }

        if (var2)
        {
          var2 = var1;
        }

        else
        {
          var2 = unsignedIntegerValue;
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
      firstObject = [(NSArray *)v27 firstObject];
      metadata2 = [firstObject metadata];
      self->_selectable = [metadata2 isSelectable];
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
      metadata3 = [(PKPassTile *)self->_groupTile metadata];
      metadataTypeHorizontalFlowGroup2 = [metadata3 metadataTypeHorizontalFlowGroup];

      groupStyle = [metadataTypeHorizontalFlowGroup2 groupStyle];
      v36 = 1;
      if (groupStyle != 1)
      {
        v36 = 2;
      }

      self->_overflowType = v36;
      if ([metadataTypeHorizontalFlowGroup2 columns] >= 2 && objc_msgSend(metadataTypeHorizontalFlowGroup2, "widthClass") == 1)
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
      metadataTypeHorizontalFlowGroup2 = self->_effectiveDroppedContent;
      self->_effectiveDroppedContent = 0;
    }

    stateCopy = v49;

    self->_effectiveSelectable = self->_selectable;
    [(PKPassTileGroupView *)self _updateSubviewsAnimated:animatedCopy];
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

- (void)setContentInset:(UIEdgeInsets)inset
{
  v3.f64[0] = inset.top;
  v3.f64[1] = inset.left;
  v4.f64[0] = inset.bottom;
  v4.f64[1] = inset.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_contentInset.top, v3), vceqq_f64(*&self->_contentInset.bottom, v4)))) & 1) == 0)
  {
    self->_contentInset = inset;
    [(PKPassTileGroupView *)self setNeedsLayout];
  }
}

- (void)_tileViewTapped:(id)tapped
{
  v39 = *MEMORY[0x1E69E9840];
  tappedCopy = tapped;
  content = [tappedCopy content];
  if (content)
  {
    if ([tappedCopy overflowType] == 2)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained passTileGroupView:self displayTileContext:1 tile:self->_groupTile overrideMaximumRows:1];
    }

    else
    {
      state = [content state];
      v8 = MEMORY[0x1E69B8D10];
      actions = [state actions];
      v10 = [v8 effectiveActionForActions:actions];

      if (v10)
      {
        metadata = [content metadata];
        if ([content supportsPaymentPassAction:v10])
        {
          type = [v10 type];
          if (type > 8)
          {
            if (type > 12)
            {
              if (type == 13)
              {
                [(PKPassTileGroupView *)&self->super.super.super.isa _performShareFlightStatus];
              }

              else if (type == 14)
              {
                [(PKPassTileGroupView *)self _performOpenBusinessChat:v10];
              }
            }

            else if (type == 9)
            {
              viewImageActionView = [tappedCopy viewImageActionView];
              [(PKPassTileGroupView *)self _performViewImageAction:v10 sourceImageView:viewImageActionView];
            }

            else if (type == 10)
            {
              PKPaymentPassActionPerformOpenAppClip(v10);
            }
          }

          else if (type > 6)
          {
            if (type == 7)
            {
              [(PKPassTileGroupView *)self _performDisplayAuxiliaryPassInformationItemAction:v10];
            }

            else
            {
              [(PKPassTileGroupView *)self _performDisplayTileContextAction:v10];
            }
          }

          else if (type == 3)
          {
            window = [(PKPassTileGroupView *)self window];
            PKPaymentPassActionPerformOpenExternalURL(v10, window);
          }

          else if (type == 4)
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
                v26 = tappedCopy;
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
                [v13 passTileGroupView:self executeSEActionForPass:v14 tile:content withCompletion:v28];
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
            identifier = [metadata identifier];
            stateIdentifier = [content stateIdentifier];
            *v37 = 138412546;
            *&v37[4] = identifier;
            *&v37[12] = 2112;
            *&v37[14] = stateIdentifier;
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

- (void)_tileViewPinched:(id)pinched
{
  pinchedCopy = pinched;
  [pinchedCopy scale];
  v4 = pinchedCopy;
  if (v5 > 0.0)
  {
    view = [pinchedCopy view];
    content = [view content];
    state = [content state];
    v9 = MEMORY[0x1E69B8D10];
    actions = [state actions];
    v11 = [v9 effectiveActionForActions:actions];

    if ([v11 type] == 9)
    {
      [(PKPassTileGroupView *)self _tileViewTapped:view];
    }

    v4 = pinchedCopy;
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

- (id)passTileViewRequestsBeginSuppressingCardEmulation:(id)emulation
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