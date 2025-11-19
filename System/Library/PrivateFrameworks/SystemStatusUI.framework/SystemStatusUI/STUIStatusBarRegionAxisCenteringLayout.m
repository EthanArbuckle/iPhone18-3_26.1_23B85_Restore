@interface STUIStatusBarRegionAxisCenteringLayout
- (STUIStatusBarRegionAxisCenteringLayout)init;
- (id)constraintsForDisplayItems:(id)a3 layoutGuides:(id)a4 inContainerItem:(id)a5 axis:(int64_t)a6;
@end

@implementation STUIStatusBarRegionAxisCenteringLayout

- (STUIStatusBarRegionAxisCenteringLayout)init
{
  v8.receiver = self;
  v8.super_class = STUIStatusBarRegionAxisCenteringLayout;
  result = [(STUIStatusBarRegionAxisCenteringLayout *)&v8 init];
  __asm { FMOV            V0.2D, #-1.0 }

  *&result->_interspace = _Q0;
  result->_maxNumberOfItems = 0x7FFFFFFFFFFFFFFFLL;
  return result;
}

- (id)constraintsForDisplayItems:(id)a3 layoutGuides:(id)a4 inContainerItem:(id)a5 axis:(int64_t)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = [v11 count];
  v15 = [MEMORY[0x277CBEB18] array];
  v71 = v13;
  if (v14 == 1)
  {
    v16 = [v11 firstObject];
    v17 = [v16 layoutItem];

    v18 = v17;
    v19 = v18;
    if (a6 == 1)
    {
      v20 = [v18 centerYAnchor];
    }

    else
    {
      if (a6)
      {
        goto LABEL_14;
      }

      v20 = [v18 centerXAnchor];
    }

    v6 = v20;
LABEL_14:

    v34 = v13;
    v35 = v34;
    if (a6 == 1)
    {
      v36 = [v34 centerYAnchor];
    }

    else
    {
      if (a6)
      {
        goto LABEL_19;
      }

      v36 = [v34 centerXAnchor];
    }

    v16 = v36;
LABEL_19:

    v37 = [v6 constraintEqualToAnchor:v16];
    [v15 addObject:v37];

    v38 = v19;
    v39 = v38;
    if (a6 == 1)
    {
      v40 = [v38 topAnchor];
    }

    else
    {
      if (a6)
      {
        goto LABEL_24;
      }

      v40 = [v38 leadingAnchor];
    }

    v6 = v40;
LABEL_24:

    v41 = v35;
    v42 = v41;
    if (a6 == 1)
    {
      v43 = [v41 topAnchor];
    }

    else
    {
      if (a6)
      {
        goto LABEL_29;
      }

      v43 = [v41 leadingAnchor];
    }

    v16 = v43;
LABEL_29:

    v44 = [v6 constraintGreaterThanOrEqualToAnchor:v16];
    [v15 addObject:v44];

    v45 = v39;
    v46 = v45;
    if (a6 == 1)
    {
      v47 = [v45 bottomAnchor];
    }

    else
    {
      if (a6)
      {
        goto LABEL_34;
      }

      v47 = [v45 trailingAnchor];
    }

    v6 = v47;
LABEL_34:

    v48 = v42;
    v49 = v48;
    if (a6 == 1)
    {
      v50 = [v48 bottomAnchor];
    }

    else
    {
      if (a6)
      {
LABEL_39:

        v51 = [v6 constraintLessThanOrEqualToAnchor:v16];
        [v15 addObject:v51];

        goto LABEL_69;
      }

      v50 = [v48 trailingAnchor];
    }

    v16 = v50;
    goto LABEL_39;
  }

  v21 = objc_alloc_init(MEMORY[0x277D756D0]);
  v70 = objc_alloc_init(MEMORY[0x277D756D0]);
  v22 = v83;
  v83[0] = 0;
  v83[1] = v83;
  v83[2] = 0x3032000000;
  v83[3] = __Block_byref_object_copy__4;
  v83[4] = __Block_byref_object_dispose__4;
  v84 = 0;
  v72[0] = MEMORY[0x277D85DD0];
  v72[1] = 3221225472;
  v72[2] = __103__STUIStatusBarRegionAxisCenteringLayout_constraintsForDisplayItems_layoutGuides_inContainerItem_axis___block_invoke;
  v72[3] = &unk_279D38EB0;
  v67 = v15;
  v23 = v15;
  v73 = v23;
  v24 = v21;
  v74 = v24;
  v81 = a6;
  v25 = v13;
  v26 = self;
  v75 = v25;
  v69 = v11;
  v80 = v83;
  v76 = v11;
  v77 = self;
  v27 = v12;
  v78 = v27;
  v82 = v14;
  v28 = v70;
  v79 = v28;
  [v76 enumerateObjectsUsingBlock:v72];
  v29 = v26[2];
  v30 = v24;
  v31 = v30;
  if (v29 != -1.0)
  {
    if (a6 == 1)
    {
      v33 = [v30 heightAnchor];
    }

    else
    {
      if (a6)
      {
        goto LABEL_61;
      }

      v33 = [v30 widthAnchor];
    }

    v14 = v33;
LABEL_61:

    v62 = [v14 constraintEqualToConstant:v26[2]];
    [v23 addObject:v62];

    v63 = v28;
    v64 = v63;
    if (a6 == 1)
    {
      v65 = [v63 heightAnchor];
    }

    else
    {
      if (a6)
      {
LABEL_66:

        v26 = [v14 constraintEqualToConstant:v26[2]];
        [v23 addObject:v26];
        goto LABEL_67;
      }

      v65 = [v63 widthAnchor];
    }

    v14 = v65;
    goto LABEL_66;
  }

  if (a6 == 1)
  {
    v32 = [v30 heightAnchor];
  }

  else
  {
    if (a6)
    {
      goto LABEL_42;
    }

    v32 = [v30 widthAnchor];
  }

  v14 = v32;
LABEL_42:

  v52 = v28;
  v53 = v52;
  if (a6 == 1)
  {
    v54 = [v52 heightAnchor];
  }

  else
  {
    if (a6)
    {
      goto LABEL_47;
    }

    v54 = [v52 widthAnchor];
  }

  v22 = v54;
LABEL_47:

  v55 = [v14 constraintEqualToAnchor:v22];
  [v23 addObject:v55];

  if (v26[1] == -1.0)
  {
    v56 = [v27 lastObject];
    v14 = v56;
    if (a6 == 1)
    {
      v57 = [v56 heightAnchor];
    }

    else
    {
      if (a6)
      {
        goto LABEL_53;
      }

      v57 = [v56 widthAnchor];
    }

    v26 = v57;
LABEL_53:

    v58 = v31;
    v59 = v58;
    if (a6 == 1)
    {
      v60 = [v58 heightAnchor];
    }

    else
    {
      if (a6)
      {
LABEL_58:

        v61 = [v26 constraintEqualToAnchor:v22];
        [v23 addObject:v61];

LABEL_67:
        goto LABEL_68;
      }

      v60 = [v58 widthAnchor];
    }

    v22 = v60;
    goto LABEL_58;
  }

LABEL_68:
  [v27 addObject:{v31, v67}];
  [v27 addObject:v28];

  _Block_object_dispose(v83, 8);
  v11 = v69;
  v15 = v68;
LABEL_69:

  return v15;
}

void __103__STUIStatusBarRegionAxisCenteringLayout_constraintsForDisplayItems_layoutGuides_inContainerItem_axis___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v84 = a2;
  v6 = [v84 layoutItem];
  if (!a3)
  {
    v19 = *(a1 + 32);
    v20 = *(a1 + 96);
    v21 = *(a1 + 40);
    v22 = v21;
    if (v20 == 1)
    {
      v23 = [v21 topAnchor];
    }

    else
    {
      if (v20)
      {
        goto LABEL_35;
      }

      v23 = [v21 leadingAnchor];
    }

    v3 = v23;
LABEL_35:

    v46 = *(a1 + 96);
    v47 = *(a1 + 48);
    v48 = v47;
    if (v46 == 1)
    {
      v49 = [v47 topAnchor];
    }

    else
    {
      if (v46)
      {
        goto LABEL_40;
      }

      v49 = [v47 leadingAnchor];
    }

    v22 = v49;
LABEL_40:

    v50 = [v3 constraintEqualToAnchor:v22];
    [v19 addObject:v50];

    v51 = *(a1 + 32);
    v52 = *(a1 + 96);
    v53 = *(a1 + 40);
    v17 = v53;
    if (v52 == 1)
    {
      v54 = [v53 bottomAnchor];
    }

    else
    {
      if (v52)
      {
        goto LABEL_45;
      }

      v54 = [v53 trailingAnchor];
    }

    v22 = v54;
LABEL_45:

    v55 = *(a1 + 96);
    v56 = v6;
    v57 = v56;
    if (v55 == 1)
    {
      v58 = [v56 topAnchor];
    }

    else
    {
      if (v55)
      {
LABEL_50:

        v10 = [v22 constraintEqualToAnchor:v17];
        [v51 addObject:v10];
        goto LABEL_85;
      }

      v58 = [v56 leadingAnchor];
    }

    v17 = v58;
    goto LABEL_50;
  }

  v7 = [v84 layoutItem];
  v8 = [*(a1 + 56) objectAtIndexedSubscript:a3 - 1];
  v9 = [v8 layoutItem];

  v10 = *(*(*(a1 + 88) + 8) + 40);
  v11 = objc_alloc_init(MEMORY[0x277D756D0]);
  v12 = *(*(a1 + 88) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v11;

  v14 = *(a1 + 32);
  v15 = *(a1 + 96);
  v16 = v9;
  v17 = v16;
  if (v15 == 1)
  {
    v18 = [v16 bottomAnchor];
  }

  else
  {
    if (v15)
    {
      goto LABEL_10;
    }

    v18 = [v16 trailingAnchor];
  }

  v9 = v18;
LABEL_10:
  v82 = v6;

  v24 = *(a1 + 96);
  v25 = *(*(*(a1 + 88) + 8) + 40);
  v26 = v25;
  if (v24 == 1)
  {
    v27 = [v25 topAnchor];
  }

  else
  {
    if (v24)
    {
      goto LABEL_15;
    }

    v27 = [v25 leadingAnchor];
  }

  v6 = v27;
LABEL_15:

  v28 = [v9 constraintEqualToAnchor:v6];
  [v14 addObject:v28];

  v29 = *(a1 + 32);
  v30 = *(a1 + 96);
  v31 = *(*(*(a1 + 88) + 8) + 40);
  v32 = v31;
  if (v30 == 1)
  {
    v33 = [v31 bottomAnchor];
  }

  else
  {
    if (v30)
    {
      goto LABEL_20;
    }

    v33 = [v31 trailingAnchor];
  }

  v9 = v33;
LABEL_20:

  v34 = *(a1 + 96);
  v35 = v7;
  v22 = v35;
  if (v34 == 1)
  {
    v36 = [v35 topAnchor];
  }

  else
  {
    if (v34)
    {
      goto LABEL_25;
    }

    v36 = [v35 leadingAnchor];
  }

  v32 = v36;
LABEL_25:

  v37 = [v9 constraintEqualToAnchor:v32];
  [v29 addObject:v37];

  if (*(*(a1 + 64) + 8) != -1.0)
  {
    v9 = *(a1 + 32);
    v42 = *(a1 + 96);
    v43 = *(*(*(a1 + 88) + 8) + 40);
    v44 = v43;
    if (v42 == 1)
    {
      v45 = [v43 heightAnchor];
    }

    else
    {
      if (v42)
      {
LABEL_61:

        v40 = [v29 constraintEqualToConstant:*(*(a1 + 64) + 8)];
        [v9 addObject:v40];
        goto LABEL_62;
      }

      v45 = [v43 widthAnchor];
    }

    v29 = v45;
    goto LABEL_61;
  }

  if (!v10)
  {
    goto LABEL_63;
  }

  v9 = *(a1 + 32);
  v38 = *(a1 + 96);
  v39 = *(*(*(a1 + 88) + 8) + 40);
  v40 = v39;
  if (v38 == 1)
  {
    v41 = [v39 heightAnchor];
  }

  else
  {
    if (v38)
    {
      goto LABEL_53;
    }

    v41 = [v39 widthAnchor];
  }

  v29 = v41;
LABEL_53:

  v59 = *(a1 + 96);
  v60 = v10;
  v61 = v60;
  if (v59 == 1)
  {
    v62 = [v60 heightAnchor];
    goto LABEL_57;
  }

  if (!v59)
  {
    v62 = [v60 widthAnchor];
LABEL_57:
    v40 = v62;
  }

  v63 = [v29 constraintEqualToAnchor:v40];
  [v9 addObject:v63];

LABEL_62:
LABEL_63:
  [*(a1 + 72) addObject:{*(*(*(a1 + 88) + 8) + 40), v82}];
  if (*(a1 + 104) - 1 != a3)
  {
    v6 = v83;
    goto LABEL_85;
  }

  v64 = *(a1 + 32);
  v65 = *(a1 + 96);
  v66 = v22;
  v22 = v66;
  if (v65 == 1)
  {
    v67 = [v66 bottomAnchor];
  }

  else
  {
    if (v65)
    {
      goto LABEL_70;
    }

    v67 = [v66 trailingAnchor];
  }

  v29 = v67;
LABEL_70:

  v68 = *(a1 + 96);
  v69 = *(a1 + 80);
  v70 = v69;
  if (v68 == 1)
  {
    v71 = [v69 topAnchor];
  }

  else
  {
    if (v68)
    {
      goto LABEL_75;
    }

    v71 = [v69 leadingAnchor];
  }

  v9 = v71;
LABEL_75:

  v72 = [v29 constraintEqualToAnchor:v9];
  [v64 addObject:v72];

  v73 = *(a1 + 32);
  v74 = *(a1 + 96);
  v75 = *(a1 + 80);
  v76 = v75;
  if (v74 == 1)
  {
    v29 = [v75 bottomAnchor];
    v6 = v83;
  }

  else
  {
    v6 = v83;
    if (!v74)
    {
      v29 = [v75 trailingAnchor];
    }
  }

  v77 = *(a1 + 96);
  v78 = *(a1 + 48);
  v79 = v78;
  if (v77 == 1)
  {
    v80 = [v78 bottomAnchor];
    goto LABEL_83;
  }

  if (!v77)
  {
    v80 = [v78 trailingAnchor];
LABEL_83:
    a1 = v80;
  }

  v81 = [v29 constraintEqualToAnchor:a1];
  [v73 addObject:v81];

LABEL_85:
}

@end