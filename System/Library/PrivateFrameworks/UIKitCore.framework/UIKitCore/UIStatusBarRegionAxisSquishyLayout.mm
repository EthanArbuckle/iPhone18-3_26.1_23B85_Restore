@interface UIStatusBarRegionAxisSquishyLayout
@end

@implementation UIStatusBarRegionAxisSquishyLayout

void __100___UIStatusBarRegionAxisSquishyLayout_constraintsForDisplayItems_layoutGuides_inContainerItem_axis___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v42 = a2;
  v5 = [v42 layoutItem];
  v6 = [*(a1 + 32) containsObject:v42];
  if (a3)
  {
    v7 = [*(a1 + 40) objectAtIndexedSubscript:a3 - 1];
    v8 = [v7 layoutItem];
  }

  v9 = *(*(*(a1 + 80) + 8) + 24);
  if (v9 && ([*(a1 + 32) objectAtIndexedSubscript:v9 - 1], v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "layoutItem"), v11 = objc_claimAutoreleasedReturnValue(), v10, v11))
  {
    if (*(*(a1 + 48) + 24) == -1.0)
    {
      goto LABEL_19;
    }

    v12 = objc_alloc_init(UILayoutGuide);
    v13 = *(a1 + 56);
    v14 = MEMORY[0x1E69977A0];
    v16 = *(a1 + 104);
    v15 = *(a1 + 112);
    v17 = 0.0;
    if ((v6 & 1) == 0)
    {
      [v5 _ui_bounds];
      v17 = v18 * 0.5 + *(*(a1 + 48) + 24) * 0.5 * *(a1 + 120);
    }

    v19 = [v14 constraintWithItem:v5 attribute:v16 relatedBy:0 toItem:v12 attribute:v15 multiplier:1.0 constant:v17];
    [v13 addObject:v19];

    v20 = *(a1 + 56);
    v21 = [MEMORY[0x1E69977A0] constraintWithItem:v12 attribute:*(a1 + 104) relatedBy:0 toItem:v11 attribute:*(a1 + 112) multiplier:1.0 constant:0.0];
    [v20 addObject:v21];

    v22 = *(a1 + 56);
    v23 = [MEMORY[0x1E69977A0] constraintWithItem:v12 attribute:*(a1 + 128) relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:*(*(a1 + 48) + 24) * *(a1 + 120)];
    [v22 addObject:v23];

    v24 = *(*(a1 + 88) + 8);
    v25 = *(v24 + 40);
    if (v25)
    {
      v26 = *(a1 + 56);
      v27 = [MEMORY[0x1E69977A0] constraintWithItem:v12 attribute:*(a1 + 128) relatedBy:0 toItem:v25 attribute:*(a1 + 128) multiplier:1.0 constant:0.0];
      [v26 addObject:v27];

      v24 = *(*(a1 + 88) + 8);
      v28 = *(v24 + 40);
    }

    else
    {
      v28 = 0;
    }

    *(v24 + 40) = v12;
    v31 = v12;

    v33 = 64;
  }

  else
  {
    if (*(a1 + 96) == 1.0)
    {
      v29 = 1;
    }

    else
    {
      v29 = -1;
    }

    v30 = [MEMORY[0x1E69977A0] constraintWithItem:v5 attribute:*(a1 + 104) relatedBy:v29 toItem:*(a1 + 72) attribute:*(a1 + 104) multiplier:1.0 constant:0.0];
    v31 = v30;
    LODWORD(v32) = 1111752704;
    if (*(*(a1 + 48) + 8))
    {
      *&v32 = 749.0;
    }

    [(UILayoutGuide *)v30 setPriority:v32];
    v11 = 0;
    v33 = 56;
  }

  [*(a1 + v33) addObject:v31];

LABEL_19:
  if (v6)
  {
    ++*(*(*(a1 + 80) + 8) + 24);
    if (![v42 dynamicallyHidden])
    {
      WeakRetained = objc_loadWeakRetained((*(a1 + 48) + 72));

      if (!WeakRetained)
      {
        goto LABEL_30;
      }

      v36 = objc_loadWeakRetained((*(a1 + 48) + 72));
      [v36 updateDisplayItem:v42 toScale:*(a1 + 136)];
      goto LABEL_29;
    }

    [v42 setDynamicallyHidden:0];
    v34 = objc_loadWeakRetained((*(a1 + 48) + 72));

    if (!v34)
    {
      goto LABEL_30;
    }

    v35 = objc_loadWeakRetained((*(a1 + 48) + 72));
    v36 = v35;
    v37 = *(a1 + 136);
    v38 = v42;
    v39 = 0;
LABEL_26:
    [v35 updateDisplayItem:v38 toDynamicallyHidden:v39 scale:v37];
LABEL_29:

    goto LABEL_30;
  }

  if (([v42 dynamicallyHidden] & 1) == 0)
  {
    [v42 setDynamicallyHidden:1];
    v40 = objc_loadWeakRetained((*(a1 + 48) + 72));

    if (v40)
    {
      v35 = objc_loadWeakRetained((*(a1 + 48) + 72));
      v36 = v35;
      v37 = *(a1 + 136);
      v38 = v42;
      v39 = 1;
      goto LABEL_26;
    }
  }

LABEL_30:
}

@end