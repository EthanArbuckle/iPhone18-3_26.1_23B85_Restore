@interface _UIFocusScrollOffsetResolverDifferential
- (CGPoint)contentOffsetForScrollRequest:(id)a3;
@end

@implementation _UIFocusScrollOffsetResolverDifferential

- (CGPoint)contentOffsetForScrollRequest:(id)a3
{
  v3 = a3;
  v4 = [v3 environmentScrollableContainer];
  v5 = [v4 scrollableContainer];

  v6 = [v3 focusItemInfo];
  [v3 focusItemFrame];
  v62 = v8;
  v63 = v7;
  v60 = v10;
  v61 = v9;
  v11 = [v3 focusMovement];
  v12 = [v11 heading];

  [v3 targetContentOffset];
  v58 = v13;
  v59 = v14;
  [v3 originatingBounds];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v23 = -80.0;
  if (v12)
  {
    v24 = -80.0;
  }

  else
  {
    v24 = -10.0;
  }

  if ((v12 & 4) != 0)
  {
    v25 = -80.0;
  }

  else
  {
    v25 = -10.0;
  }

  v55 = v25;
  v56 = v24;
  if ((v12 & 2) != 0)
  {
    v26 = -80.0;
  }

  else
  {
    v26 = -10.0;
  }

  if ((v12 & 8) == 0)
  {
    v23 = -10.0;
  }

  v53 = v23;
  v54 = v26;
  v27 = [v5 __isKindOfUIScrollView];
  v28 = 0.0;
  v29 = 0.0;
  v30 = 0.0;
  v31 = 0.0;
  if (v27)
  {
    [v5 safeAreaInsets];
  }

  v32 = v16 + v29;
  v57 = v18;
  v33 = v18 + v28;
  v34 = v20 - (v29 + v31);
  v35 = v22 - (v28 + v30);
  v72.origin.x = v16 + v29;
  v72.origin.y = v33;
  v72.size.width = v34;
  v72.size.height = v35;
  if (CGRectGetWidth(v72) > 160.0)
  {
    v20 = v34;
    v16 = v32;
  }

  v73.origin.x = v32;
  v73.origin.y = v33;
  v73.size.width = v34;
  v73.size.height = v35;
  Height = CGRectGetHeight(v73);
  v37 = Height <= 160.0;
  if (Height <= 160.0)
  {
    v38 = v22;
  }

  else
  {
    v38 = v35;
  }

  v39 = v16;
  if (v37)
  {
    v40 = v57;
  }

  else
  {
    v40 = v33;
  }

  v41 = v38;
  v74.origin.x = v39;
  v74.origin.y = v40;
  v74.size.width = v20;
  v74.size.height = v41;
  v76.origin.x = v63;
  v76.origin.y = v62;
  v76.size.width = v61;
  v76.size.height = v60;
  if (CGRectContainsRect(v74, v76) || (v75.origin.x = v63, v75.origin.y = v62, v75.size.width = v61, v75.size.height = v60, v77.origin.x = v39, v77.origin.y = v40, v77.size.width = v20, v77.size.height = v41, CGRectContainsRect(v75, v77)))
  {
    v42 = _UIAXAdjustContentOffsetForDifferentialScrollingIfNecessary(v5, v6, v58, v59);
    v44 = v43;
  }

  else
  {
    CanScrollX = _UIFocusItemScrollableContainerCanScrollX(v5);
    CanScrollY = _UIFocusItemScrollableContainerCanScrollY(v5);
    v65 = 0;
    v66 = &v65;
    v67 = 0x3010000000;
    v68 = "";
    v69 = v58;
    v70 = v59;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __74___UIFocusScrollOffsetResolverDifferential_contentOffsetForScrollRequest___block_invoke;
    aBlock[3] = &unk_1E7123458;
    *&aBlock[5] = v39;
    *&aBlock[6] = v40;
    *&aBlock[7] = v20;
    *&aBlock[8] = v41;
    *&aBlock[9] = v63;
    *&aBlock[10] = v62;
    *&aBlock[11] = v61;
    *&aBlock[12] = v60;
    *&aBlock[13] = v63 + -10.0;
    *&aBlock[14] = v62 + -10.0;
    *&aBlock[15] = v61 + 20.0;
    *&aBlock[16] = v60 + 20.0;
    *&aBlock[17] = v63 + v55;
    *&aBlock[18] = v62 + v56;
    *&aBlock[19] = v61 - (v55 + v53);
    *&aBlock[20] = v60 - (v56 + v54);
    *&aBlock[21] = v58 - v39;
    *&aBlock[22] = v59 - v40;
    aBlock[4] = &v65;
    v47 = _Block_copy(aBlock);
    v48 = v47;
    if (CanScrollX)
    {
      (*(v47 + 2))(v47, 1);
    }

    if (CanScrollY)
    {
      v48[2](v48, 2);
    }

    v42 = _UIAXAdjustContentOffsetForDifferentialScrollingIfNecessary(v5, v6, v66[4], v66[5]);
    v44 = v49;
    v50 = v66;
    v66[4] = v42;
    v50[5] = v49;

    _Block_object_dispose(&v65, 8);
  }

  v51 = v42;
  v52 = v44;
  result.y = v52;
  result.x = v51;
  return result;
}

@end