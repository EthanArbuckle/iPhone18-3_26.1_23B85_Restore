@interface _UIFlowLayoutSection
- (_UIFlowLayoutItem)addItem;
- (_UIFlowLayoutRow)addRowAtEnd:(void *)a1;
- (_UIFlowLayoutSection)init;
- (double)effectiveFooterFrameWithSectionMarginsApplied;
- (double)effectiveHeaderFrameWithSectionMarginsApplied;
- (double)frameForItemAtIndexPath:(uint64_t)a1;
- (uint64_t)addInvalidatedIndexPath:(uint64_t)a1;
- (uint64_t)computeLayout;
- (void)computeLayoutInRect:(unsigned int)a3 forSection:(void *)a4 invalidating:(CGFloat)a5 invalidationContext:(CGFloat)a6;
- (void)logInvalidSizes;
- (void)logInvalidSizesForHorizontalDirection:(int)a3 warnAboutDelegateValues:;
- (void)setEstimatedSize:(double)a3 forSection:(double)a4;
- (void)setFooterDimension:(double)a3 forSection:;
- (void)setHeaderDimension:(double)a3 forSection:;
- (void)updateEstimatedSizeForSection:(uint64_t)a1;
@end

@implementation _UIFlowLayoutSection

- (_UIFlowLayoutSection)init
{
  v13.receiver = self;
  v13.super_class = _UIFlowLayoutSection;
  v2 = [(_UIFlowLayoutSection *)&v13 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    items = v2->_items;
    v2->_items = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    rows = v2->_rows;
    v2->_rows = v5;

    __asm { FMOV            V0.2D, #10.0 }

    *&v2->_lineSpacing = _Q0;
  }

  return v2;
}

- (uint64_t)computeLayout
{
  v141 = *MEMORY[0x1E69E9840];
  if (!result)
  {
    return result;
  }

  v1 = result;
  WeakRetained = objc_loadWeakRetained((result + 144));
  if (WeakRetained)
  {
    v3 = WeakRetained[97];
  }

  else
  {
    v3 = 0;
  }

  v4 = objc_loadWeakRetained((v1 + 144));
  if (v4)
  {
    v5 = v4[14];
  }

  else
  {
    v5 = 0.0;
  }

  v6 = objc_loadWeakRetained((v1 + 144));
  v7 = v6;
  if (v6)
  {
    v8 = objc_loadWeakRetained(v6 + 15);
  }

  else
  {
    v8 = 0;
  }

  v9 = [v8 collectionView];
  if ([v9 _shouldReverseLayoutDirection])
  {
    v10 = objc_loadWeakRetained((v1 + 144));
    v11 = v10;
    if (v10)
    {
      v12 = objc_loadWeakRetained(v10 + 15);
    }

    else
    {
      v12 = 0;
    }

    v13 = [v12 _wantsRightToLeftHorizontalMirroringIfNeeded];
  }

  else
  {
    v13 = 1;
  }

  if (*(v1 + 88) == 1)
  {
    v14 = *(v1 + 112);
    v15 = *(v1 + 120);
    v16 = (v1 + 344);
    v17 = *(v1 + 128);
    if (v3)
    {
      v18 = *(v1 + 296);
      v19 = *(v1 + 280);
      v20 = v19 + v18;
      *(v1 + 152) = v17 + *(v1 + 288);
      v21 = *(v1 + 256);
      v134 = *(v1 + 248);
      if (v17 > 0.0)
      {
        v22 = objc_loadWeakRetained((v1 + 144));
        if (v22)
        {
          v23 = v22[14];
        }

        else
        {
          v23 = 0;
        }

        *v16 = 0;
        *(v1 + 352) = 0;
        *(v1 + 360) = v17;
        *(v1 + 368) = v23;
LABEL_25:

        goto LABEL_27;
      }
    }

    else
    {
      v18 = *(v1 + 304);
      v19 = *(v1 + 288);
      v20 = v19 + v18;
      *(v1 + 152) = v17 + *(v1 + 280);
      v21 = *(v1 + 248);
      v134 = *(v1 + 256);
      if (v17 > 0.0)
      {
        v22 = objc_loadWeakRetained((v1 + 144));
        if (v22)
        {
          v26 = v22[14];
        }

        else
        {
          v26 = 0;
        }

        v27 = *(v1 + 128);
        *v16 = 0;
        *(v1 + 352) = 0;
        *(v1 + 360) = v26;
        *(v1 + 368) = v27;
        goto LABEL_25;
      }
    }

    v28 = *(MEMORY[0x1E695F058] + 16);
    *v16 = *MEMORY[0x1E695F058];
    *(v1 + 360) = v28;
LABEL_27:
    v5 = v5 - v20;
    v29 = *(v1 + 152);
    v30 = *(v1 + 208);
    if (v30 < 1)
    {
LABEL_81:
      v56 = *(v1 + 136);
      v57 = (v1 + 376);
      if (v3)
      {
        v25 = v29 + *(v1 + 304);
        if (v56 <= 0.0)
        {
          v63 = *(MEMORY[0x1E695F058] + 16);
          *v57 = *MEMORY[0x1E695F058];
          *(v1 + 392) = v63;
        }

        else
        {
          v58 = objc_loadWeakRetained((v1 + 144));
          if (v58)
          {
            v59 = v58[14];
          }

          else
          {
            v59 = 0;
          }

          *(v1 + 376) = v25;
          *(v1 + 384) = 0;
          *(v1 + 392) = v56;
          *(v1 + 400) = v59;

          v25 = v25 + *(v1 + 136);
        }

        v64 = objc_loadWeakRetained((v1 + 144));
        if (v64)
        {
          v65 = v64[14];
        }

        else
        {
          v65 = 0;
        }

        *(v1 + 312) = 0;
        *(v1 + 320) = 0;
        *(v1 + 328) = v25;
        *(v1 + 336) = v65;

        if (*(v1 + 88))
        {
          goto LABEL_171;
        }

        goto LABEL_94;
      }

      v24 = v29 + *(v1 + 296);
      if (v56 <= 0.0)
      {
        v75 = *(MEMORY[0x1E695F058] + 16);
        *v57 = *MEMORY[0x1E695F058];
        *(v1 + 392) = v75;
      }

      else
      {
        v60 = objc_loadWeakRetained((v1 + 144));
        if (v60)
        {
          v61 = v60[14];
        }

        else
        {
          v61 = 0;
        }

        v62 = *(v1 + 136);
        *(v1 + 376) = 0;
        *(v1 + 384) = v24;
        *(v1 + 392) = v61;
        *(v1 + 400) = v62;

        v24 = v24 + *(v1 + 136);
      }

      v76 = objc_loadWeakRetained((v1 + 144));
      if (v76)
      {
        v77 = v76[14];
      }

      else
      {
        v77 = 0;
      }

      *(v1 + 312) = 0;
      *(v1 + 320) = 0;
      *(v1 + 328) = v77;
      *(v1 + 336) = v24;

      if (*(v1 + 88))
      {
        goto LABEL_173;
      }

LABEL_104:
      v25 = v5 - (*(v1 + 288) + *(v1 + 304));
      v69 = *(v1 + 120);
      v78 = *(v1 + 128);
      v68 = *(v1 + 280) + v78;
      v67 = *(v1 + 112);
      v79 = (v1 + 344);
      if (v78 <= 0.0)
      {
        v83 = *(MEMORY[0x1E695F058] + 16);
        *v79 = *MEMORY[0x1E695F058];
        *(v1 + 360) = v83;
      }

      else
      {
        v80 = objc_loadWeakRetained((v1 + 144));
        if (v80)
        {
          v81 = v80[14];
        }

        else
        {
          v81 = 0;
        }

        v82 = *(v1 + 128);
        *v79 = 0;
        *(v1 + 352) = 0;
        *(v1 + 360) = v81;
        *(v1 + 368) = v82;
      }

      v74 = v25;
      goto LABEL_110;
    }

    if (v21 > v5)
    {
      [(_UIFlowLayoutSection *)v1 logInvalidSizesForHorizontalDirection:0 warnAboutDelegateValues:?];
      v30 = *(v1 + 208);
    }

    v31 = v15 + v21;
    v32 = vcvtmd_s64_f64((v15 + v5) / (v15 + v21));
    if (v32 <= 1)
    {
      v32 = 1;
    }

    v33 = v30 / v32;
    *(v1 + 216) = v32;
    *(v1 + 224) = -1;
    v34 = v30 % v32;
    *(v1 + 89) = v30 % v32 != 0;
    if (v30 % v32)
    {
      *(v1 + 224) = v33++;
    }

    v35 = *(v1 + 232);
    if (v35 <= 1)
    {
      if (v35)
      {
        if (v35 == 1)
        {
          *(v1 + 176) = v15;
          v36 = objc_loadWeakRetained((v1 + 144));
          if (v36)
          {
            v37 = v36[14];
          }

          else
          {
            v37 = 0.0;
          }

          *(v1 + 160) = v19 + (v37 - (v18 + v19 + v31 * *(v1 + 216) - v15)) * 0.5;

          *(v1 + 168) = *(v1 + 160);
          goto LABEL_59;
        }

LABEL_48:
        *(v1 + 176) = v15;
        *(v1 + 160) = v19;
        goto LABEL_59;
      }

      *(v1 + 176) = v15;
      *(v1 + 160) = v19;
      v40 = objc_loadWeakRetained((v1 + 144));
      if (v40)
      {
        v43 = v40[14];
      }

      else
      {
        v43 = 0.0;
      }

      v42 = v43 - v19 - (v31 * *(v1 + 216) - v15);
LABEL_52:
      *(v1 + 168) = v42;

      goto LABEL_59;
    }

    if (v35 == 2)
    {
      *(v1 + 176) = v15;
      v44 = objc_loadWeakRetained((v1 + 144));
      if (v44)
      {
        v45 = v44[14];
      }

      else
      {
        v45 = 0.0;
      }

      *(v1 + 160) = v45 - v18 - (v31 * *(v1 + 216) - v15);

      *(v1 + 168) = v18;
    }

    else
    {
      if (v35 != 3)
      {
        goto LABEL_48;
      }

      if (v32 <= 1)
      {
        *(v1 + 176) = v15;
        v38 = objc_loadWeakRetained((v1 + 144));
        v39 = 0.0;
        if (v38)
        {
          v39 = v38[14];
        }

        *(v1 + 160) = v19 + (v39 - v21 - v19 - v18) * 0.5;

        v40 = objc_loadWeakRetained((v1 + 144));
        v41 = 0.0;
        if (v40)
        {
          v41 = v40[14];
        }

        v42 = v18 + (v41 - v21 - v19 - v18) * 0.5;
        goto LABEL_52;
      }

      v46 = objc_loadWeakRetained((v1 + 144));
      if (v46)
      {
        v47 = v46[14];
      }

      else
      {
        v47 = 0.0;
      }

      *(v1 + 176) = (v47 - v19 - v18 - v21 * *(v1 + 216)) / (*(v1 + 216) - 1);

      *(v1 + 160) = v19;
      *(v1 + 168) = v18;
    }

LABEL_59:
    if (*(v1 + 89) != 1)
    {
LABEL_80:
      v29 = v29 + (v14 + v134) * v33 - v14;
      goto LABEL_81;
    }

    v48 = *(v1 + 236);
    if (v48 > 1)
    {
      if (v48 == 2)
      {
        *(v1 + 200) = v15;
        v49 = objc_loadWeakRetained((v1 + 144));
        if (v49)
        {
          v55 = v49[14];
        }

        else
        {
          v55 = 0.0;
        }

        v51 = v55 - v18 - (v31 * v34 - v15);
        goto LABEL_78;
      }

      if (v48 == 3)
      {
        if (v34 <= 1)
        {
          *(v1 + 200) = v15;
          v52 = objc_loadWeakRetained((v1 + 144));
          v53 = 0.0;
          v54 = 0.0;
          if (v52)
          {
            v54 = v52[14];
          }

          *(v1 + 184) = v19 + (v54 - v21 - v19 - v18) * 0.5;

          v49 = objc_loadWeakRetained((v1 + 144));
          if (v49)
          {
            v53 = v49[14];
          }

          *(v1 + 168) = v18 + (v53 - v21 - v19 - v18) * 0.5;
          goto LABEL_79;
        }

        v131 = objc_loadWeakRetained((v1 + 144));
        if (v131)
        {
          v132 = v131[14];
        }

        else
        {
          v132 = 0.0;
        }

        *(v1 + 200) = (v132 - (v31 * v34 - v15) - v19 - v18) / (v34 - 1);

        goto LABEL_74;
      }
    }

    else if (v48 == 1)
    {
      *(v1 + 200) = v15;
      v49 = objc_loadWeakRetained((v1 + 144));
      if (v49)
      {
        v50 = v49[14];
      }

      else
      {
        v50 = 0.0;
      }

      v51 = v19 + (v50 - (v18 + v19 + v31 * v34 - v15)) * 0.5;
LABEL_78:
      *(v1 + 184) = v51;
LABEL_79:

      goto LABEL_80;
    }

    *(v1 + 200) = v15;
LABEL_74:
    *(v1 + 184) = v19;
    goto LABEL_80;
  }

  v24 = 0.0;
  v25 = 0.0;
  if ((v3 & 1) == 0)
  {
    goto LABEL_104;
  }

LABEL_94:
  v24 = v5 - (*(v1 + 280) + *(v1 + 296));
  v67 = *(v1 + 120);
  v66 = *(v1 + 128);
  v68 = *(v1 + 288) + v66;
  v69 = *(v1 + 112);
  v70 = (v1 + 344);
  if (v66 <= 0.0)
  {
    v73 = *(MEMORY[0x1E695F058] + 16);
    *v70 = *MEMORY[0x1E695F058];
    *(v1 + 360) = v73;
  }

  else
  {
    v71 = objc_loadWeakRetained((v1 + 144));
    if (v71)
    {
      v72 = v71[14];
    }

    else
    {
      v72 = 0;
    }

    *v70 = 0;
    *(v1 + 352) = 0;
    *(v1 + 360) = v66;
    *(v1 + 368) = v72;
  }

  v74 = v24;
LABEL_110:
  [*(v1 + 104) removeAllObjects];
  v84 = [*(v1 + 96) count];
  v85 = 1;
  if (v84 < 1)
  {
    v87 = 0;
    v102 = 0;
    v91 = v74;
    goto LABEL_137;
  }

  v86 = v84;
  v133 = v24;
  v135 = v13;
  v87 = 0;
  v88 = 0;
  if (v3)
  {
    v89 = 56;
  }

  else
  {
    v89 = 48;
  }

  v90 = v74;
  v91 = v74;
  v92 = 1;
  do
  {
    v93 = [*(v1 + 96) objectAtIndexedSubscript:{v88, *&v133}];
    v94 = v93;
    if (v93)
    {
      v95 = *(v93 + v89);
    }

    else
    {
      v95 = 0.0;
    }

    if (v95 > v74)
    {
      [(_UIFlowLayoutSection *)v1 logInvalidSizesForHorizontalDirection:1 warnAboutDelegateValues:?];
    }

    if (!v87)
    {
      v87 = [(_UIFlowLayoutSection *)v1 addRowAtEnd:?];
    }

    v96 = v95 > v90;
    v97 = v69 + v95;
    if (!v96)
    {
      [(_UIFlowLayoutRow *)v87 addItem:v94 atEnd:1];
      v100 = v90 - v97;
      goto LABEL_132;
    }

    if (v87)
    {
      *(v87 + 9) = 1;
      if (!v92)
      {
        goto LABEL_130;
      }

      v98 = *(v87 + 40);
    }

    else
    {
      if (!v92)
      {
LABEL_130:
        v92 = 0;
        goto LABEL_131;
      }

      v98 = 0;
    }

    v99 = v98;
    v92 = [v99 count] == 1;

LABEL_131:
    v100 = v74 - v97;
    [(_UIFlowLayoutRow *)v87 layoutRow];
    v101 = [(_UIFlowLayoutSection *)v1 addRowAtEnd:?];

    [(_UIFlowLayoutRow *)v101 addItem:v94 atEnd:1];
    v87 = v101;
    v91 = v90;
LABEL_132:

    ++v88;
    v90 = v100;
  }

  while (v86 != v88);
  if (!v87)
  {
    v85 = 1;
    if (!v92)
    {
      v127 = 0;
      v13 = v135;
      v24 = v133;
      goto LABEL_177;
    }

    v74 = v100;
    v102 = 0;
    v13 = v135;
    v24 = v133;
LABEL_137:
    v86 = v102;
    if ([v86 count] != 1)
    {
      v127 = 1;
      v100 = v74;
      goto LABEL_177;
    }

    if ((v85 & 1) == 0)
    {
      goto LABEL_139;
    }

    goto LABEL_140;
  }

  *(v87 + 20) = *(v1 + 88);
  v13 = v135;
  v24 = v133;
  v85 = 0;
  if (v92)
  {
    v102 = *(v87 + 40);
    v74 = v100;
    goto LABEL_137;
  }

  v127 = 0;
LABEL_177:
  v128 = [*(v1 + 104) count];
  v130 = v100 != v91 || v128 < 2;
  if (v127)
  {
  }

  if (((v85 | v130) & 1) == 0)
  {
LABEL_139:
    *(v87 + 9) = 1;
  }

LABEL_140:
  [(_UIFlowLayoutRow *)v87 layoutRow];
  v138 = 0u;
  v139 = 0u;
  v136 = 0u;
  v137 = 0u;
  v103 = *(v1 + 104);
  v104 = [v103 countByEnumeratingWithState:&v136 objects:v140 count:16];
  if (v104)
  {
    v105 = v104;
    v106 = *v137;
    do
    {
      v107 = 0;
      do
      {
        if (*v137 != v106)
        {
          objc_enumerationMutation(v103);
        }

        v108 = *(*(&v136 + 1) + 8 * v107);
        if (v108)
        {
          v109 = *(v108 + 56);
          v110 = *(v108 + 64);
          if (v3)
          {
            v111 = *(v108 + 56);
          }

          else
          {
            v111 = *(v108 + 64);
          }

          if (v3)
          {
            v112 = v68;
          }

          else
          {
            v112 = 0.0;
          }

          if (v3)
          {
            v113 = 0.0;
          }

          else
          {
            v113 = v68;
          }

          *(v108 + 72) = v112;
          *(v108 + 80) = v113;
          *(v108 + 88) = v109;
          *(v108 + 96) = v110;
        }

        else
        {
          v111 = 0.0;
        }

        v68 = v68 + v67 + v111;
        ++v107;
      }

      while (v105 != v107);
      v114 = [v103 countByEnumeratingWithState:&v136 objects:v140 count:16];
      v105 = v114;
    }

    while (v114);
  }

  v115 = v68 - v67;
  v116 = *(v1 + 136);
  if (v3)
  {
    v25 = v115 + *(v1 + 304);
    if (v116 > 0.0)
    {
      v117 = objc_loadWeakRetained((v1 + 144));
      if (v117)
      {
        v118 = v117[14];
      }

      else
      {
        v118 = 0;
      }

      *(v1 + 376) = v25;
      *(v1 + 384) = 0;
      *(v1 + 392) = v116;
      *(v1 + 400) = v118;

      v25 = v25 + *(v1 + 136);
      goto LABEL_170;
    }

LABEL_169:
    v122 = *(MEMORY[0x1E695F058] + 16);
    *(v1 + 376) = *MEMORY[0x1E695F058];
    *(v1 + 392) = v122;
    goto LABEL_170;
  }

  v24 = v115 + *(v1 + 296);
  if (v116 <= 0.0)
  {
    goto LABEL_169;
  }

  v119 = objc_loadWeakRetained((v1 + 144));
  if (v119)
  {
    v120 = v119[14];
  }

  else
  {
    v120 = 0;
  }

  v121 = *(v1 + 136);
  *(v1 + 376) = 0;
  *(v1 + 384) = v24;
  *(v1 + 392) = v120;
  *(v1 + 400) = v121;

  v24 = v24 + *(v1 + 136);
LABEL_170:
  *(v1 + 312) = 0;
  *(v1 + 320) = 0;
  *(v1 + 328) = v25;
  *(v1 + 336) = v24;

LABEL_171:
  if (!(v13 & 1 | ((v3 & 1) == 0)))
  {
    MaxX = CGRectGetMaxX(*(v1 + 312));
    v124 = MaxX - CGRectGetWidth(*(v1 + 344));
    *(v1 + 344) = v124 - CGRectGetMinX(*(v1 + 344));
    v125 = CGRectGetMaxX(*(v1 + 312));
    v126 = v125 - CGRectGetWidth(*(v1 + 376));
    *(v1 + 376) = v126 - CGRectGetMinX(*(v1 + 376));
  }

LABEL_173:
  result = [*(v1 + 96) count];
  *(v1 + 264) = 0;
  *(v1 + 272) = result;
  return result;
}

- (_UIFlowLayoutItem)addItem
{
  if (a1)
  {
    v2 = objc_alloc_init(_UIFlowLayoutItem);
    v3 = v2;
    if (v2)
    {
      objc_storeWeak(&v2->_section, a1);
    }

    [a1[12] addObject:v3];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (double)frameForItemAtIndexPath:(uint64_t)a1
{
  if (!a1)
  {
    return 0.0;
  }

  v3 = [a2 item];
  v4 = *(a1 + 264);
  v6 = v3 >= v4;
  v5 = v3 - v4;
  v6 = !v6 || v5 >= *(a1 + 272);
  if (v6)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 144));
    v8 = WeakRetained;
    if (WeakRetained)
    {
      v9 = objc_loadWeakRetained(WeakRetained + 15);
    }

    else
    {
      v9 = 0;
    }

    v10 = [v9 collectionView];
    if ([v10 _shouldReverseLayoutDirection])
    {
      v11 = objc_loadWeakRetained((a1 + 144));
      v12 = v11;
      if (v11)
      {
        v13 = objc_loadWeakRetained(v11 + 15);
      }

      else
      {
        v13 = 0;
      }

      v14 = [v13 _wantsRightToLeftHorizontalMirroringIfNeeded];
    }

    else
    {
      v14 = 1;
    }

    v17 = [*(a1 + 96) objectAtIndex:v3];
    if (v17)
    {
      v19 = v17[4];
      v18 = v17[5];
      v21 = v17[6];
      v20 = v17[7];
    }

    else
    {
      v18 = 0.0;
      v21 = 0.0;
      v20 = 0.0;
      v19 = 0.0;
    }

    v22 = *(a1 + 104);
    if (v3 >= *(a1 + 264))
    {
      v42 = [v22 lastObject];
      v24 = v42;
      if (v42)
      {
        v43 = *(v42 + 40);
      }

      else
      {
        v43 = 0;
      }

      v26 = v43;
      v44 = [v26 count];
      if (v44 <= 1)
      {
        v45 = 1;
      }

      else
      {
        v45 = v44;
      }

      v46 = v3 - (*(a1 + 264) + *(a1 + 272));
      v34 = v46 / v45;
      if (v24)
      {
        v30 = v24[9];
        v29 = v24[10];
        v32 = v24[11];
        v31 = v24[12];
      }

      else
      {
        v29 = 0.0;
        v32 = 0.0;
        v31 = 0.0;
        v30 = 0.0;
      }

      v33 = v46 % v45;
      v47 = objc_loadWeakRetained((a1 + 144));
      if (v47)
      {
        v48 = v47[97];

        if (v48 == 1)
        {
          v37 = v30;
          v38 = v29;
          v39 = v32;
          v40 = v31;
          if (!v14)
          {
            goto LABEL_26;
          }

          goto LABEL_37;
        }
      }

      v65.origin.x = v30;
      v65.origin.y = v29;
      v65.size.width = v32;
      v65.size.height = v31;
      v54 = CGRectGetMaxY(v65) + *(a1 + 112);
      v66.origin.x = v30;
      v66.origin.y = v29;
      v66.size.width = v32;
      v66.size.height = v31;
      v51 = v54 + (CGRectGetHeight(v66) + *(a1 + 112)) * v34;
      if (v14)
      {
        goto LABEL_40;
      }
    }

    else
    {
      v23 = [v22 firstObject];
      v24 = v23;
      if (v23)
      {
        v25 = *(v23 + 40);
      }

      else
      {
        v25 = 0;
      }

      v26 = v25;
      v27 = [v26 count];
      v28 = *(a1 + 264) - v3;
      if (v24)
      {
        v30 = v24[9];
        v29 = v24[10];
        v32 = v24[11];
        v31 = v24[12];
      }

      else
      {
        v29 = 0.0;
        v32 = 0.0;
        v31 = 0.0;
        v30 = 0.0;
      }

      v33 = v27 + ~(v28 % v27);
      v34 = vcvtpd_s64_f64(v28 / v27);
      v35 = objc_loadWeakRetained((a1 + 144));
      if (v35)
      {
        v36 = v35[97];

        if (v36 == 1)
        {
          v37 = v30;
          v38 = v29;
          v39 = v32;
          v40 = v31;
          if (v14)
          {
LABEL_26:
            MinX = CGRectGetMinX(*&v37);
            v59.origin.x = v30;
            v59.origin.y = v29;
            v59.size.width = v32;
            v59.size.height = v31;
            v16 = MinX - (CGRectGetWidth(v59) + *(a1 + 120)) * v34;
LABEL_38:
            v50 = *(a1 + 280);
            v61.origin.x = v16;
            v61.origin.y = v18;
            v61.size.width = v21;
            v61.size.height = v20;
            v51 = v50 + (CGRectGetHeight(v61) + *(a1 + 112)) * v33;
            goto LABEL_43;
          }

LABEL_37:
          v49 = CGRectGetMaxX(*&v37) + *(a1 + 120);
          v60.origin.x = v30;
          v60.origin.y = v29;
          v60.size.width = v32;
          v60.size.height = v31;
          v16 = v49 + (CGRectGetWidth(v60) + *(a1 + 120)) * v34;
          goto LABEL_38;
        }
      }

      v62.origin.x = v30;
      v62.origin.y = v29;
      v62.size.width = v32;
      v62.size.height = v31;
      MinY = CGRectGetMinY(v62);
      v63.origin.x = v30;
      v63.origin.y = v29;
      v63.size.width = v32;
      v63.size.height = v31;
      v51 = MinY - (CGRectGetHeight(v63) + *(a1 + 112)) * v34;
      if (v14)
      {
LABEL_40:
        v53 = *(a1 + 288);
        v64.origin.x = v19;
        v64.origin.y = v51;
        v64.size.width = v21;
        v64.size.height = v20;
        v16 = v53 + (CGRectGetWidth(v64) + *(a1 + 120)) * v33;
        goto LABEL_43;
      }
    }

    v67.origin.x = v30;
    v67.origin.y = v29;
    v67.size.width = v32;
    v67.size.height = v31;
    Width = CGRectGetWidth(v67);
    v56 = *(a1 + 288);
    v68.origin.x = v19;
    v68.origin.y = v51;
    v68.size.width = v21;
    v68.size.height = v20;
    v57 = Width - (v56 + (CGRectGetWidth(v68) + *(a1 + 120)) * v33);
    v69.origin.x = v19;
    v69.origin.y = v51;
    v69.size.width = v21;
    v69.size.height = v20;
    v16 = v57 - CGRectGetWidth(v69);
LABEL_43:

    v15 = [*(a1 + 96) objectAtIndexedSubscript:v3];
    if (v15)
    {
      *(v15 + 32) = v16;
      *(v15 + 40) = v51;
      *(v15 + 48) = v21;
      *(v15 + 56) = v20;
      *(v15 + 8) |= 2u;
    }

    goto LABEL_45;
  }

  v15 = [*(a1 + 96) objectAtIndex:v3];
  if (v15)
  {
    v16 = *(v15 + 32);
  }

  else
  {
    v16 = 0.0;
  }

LABEL_45:

  return v16;
}

- (void)logInvalidSizesForHorizontalDirection:(int)a3 warnAboutDelegateValues:
{
  NSLog(&cfstr_TheBehaviorOfT.isa);
  if (a2)
  {
    NSLog(&cfstr_TheItemHeightM.isa);
  }

  else
  {
    NSLog(&cfstr_TheItemWidthMu.isa);
  }

  if (a3)
  {
    NSLog(&cfstr_PleaseCheckThe.isa);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 144));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v9 = objc_loadWeakRetained(WeakRetained + 15);
  }

  else
  {
    v9 = 0;
  }

  v8 = [v9 collectionView];
  NSLog(&cfstr_TheRelevantUic.isa, v9, v8);

  NSLog(&cfstr_MakeASymbolicB_0.isa);
  UICollectionViewFlowLayoutBreakForInvalidSizes(v9);
}

- (_UIFlowLayoutRow)addRowAtEnd:(void *)a1
{
  v4 = objc_alloc_init(_UIFlowLayoutRow);
  v5 = v4;
  if (v4)
  {
    objc_storeWeak(&v4->_section, a1);
  }

  v6 = a1[13];
  if (a2)
  {
    [v6 addObject:v5];
  }

  else
  {
    [v6 insertObject:v5 atIndex:0];
  }

  return v5;
}

- (void)logInvalidSizes
{
  WeakRetained = objc_loadWeakRetained((a1 + 144));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v3 = *(WeakRetained + 97);
  }

  else
  {
    v3 = 0;
  }

  [(_UIFlowLayoutSection *)a1 logInvalidSizesForHorizontalDirection:1 warnAboutDelegateValues:?];
}

- (void)setHeaderDimension:(double)a3 forSection:
{
  if (a1)
  {
    v4 = a3 - *(a1 + 128);
    *(a1 + 128) = a3;
    if (v4 != 0.0)
    {
      v6 = *(a1 + 328);
      v7 = *(a1 + 336);
      WeakRetained = objc_loadWeakRetained((a1 + 144));
      if (WeakRetained)
      {
        v9 = WeakRetained[97];

        v10 = v4 + v7;
        if (v9)
        {
          v6 = v4 + v6;
          v10 = v7;
        }
      }

      else
      {
        v10 = v4 + v7;
      }

      [(_UIFlowLayoutSection *)a1 setEstimatedSize:a2 forSection:v6, v10];
    }
  }
}

- (void)setEstimatedSize:(double)a3 forSection:(double)a4
{
  if (a1)
  {
    if (*(a1 + 328) == a3 && *(a1 + 336) == a4)
    {
      *(a1 + 328) = a3;
      *(a1 + 336) = a4;
    }

    else
    {
      WeakRetained = objc_loadWeakRetained((a1 + 144));
      v10 = WeakRetained;
      if (WeakRetained && *(WeakRetained + 97) == 1)
      {
        v11 = a3 - CGRectGetWidth(*(a1 + 312));
      }

      else
      {
        v11 = a4 - CGRectGetHeight(*(a1 + 312));
      }

      *(a1 + 328) = a3;
      *(a1 + 336) = a4;
      v12 = objc_loadWeakRetained((a1 + 144));
      [(_UIFlowLayoutInfo *)v12 didUpdateSizeForSection:a2 withDelta:v11];
    }
  }
}

- (void)setFooterDimension:(double)a3 forSection:
{
  if (a1)
  {
    v4 = a3 - *(a1 + 136);
    *(a1 + 136) = a3;
    if (v4 != 0.0)
    {
      v6 = *(a1 + 328);
      v7 = *(a1 + 336);
      WeakRetained = objc_loadWeakRetained((a1 + 144));
      if (WeakRetained)
      {
        v9 = WeakRetained[97];

        v10 = v4 + v7;
        if (v9)
        {
          v6 = v4 + v6;
          v10 = v7;
        }
      }

      else
      {
        v10 = v4 + v7;
      }

      [(_UIFlowLayoutSection *)a1 setEstimatedSize:a2 forSection:v6, v10];
    }
  }
}

- (double)effectiveHeaderFrameWithSectionMarginsApplied
{
  if (!a1)
  {
    return 0.0;
  }

  v2 = *(a1 + 344);
  WeakRetained = objc_loadWeakRetained((a1 + 144));
  if (WeakRetained && (v4 = WeakRetained[97], WeakRetained, v4 == 1))
  {
    CGRectGetHeight(*(a1 + 344));
  }

  else
  {
    v2 = *(a1 + 288);
    CGRectGetWidth(*(a1 + 344));
  }

  return v2;
}

- (double)effectiveFooterFrameWithSectionMarginsApplied
{
  if (!a1)
  {
    return 0.0;
  }

  v2 = *(a1 + 376);
  WeakRetained = objc_loadWeakRetained((a1 + 144));
  if (WeakRetained && (v4 = WeakRetained[97], WeakRetained, v4 == 1))
  {
    CGRectGetHeight(*(a1 + 376));
  }

  else
  {
    v2 = *(a1 + 288);
    CGRectGetWidth(*(a1 + 376));
  }

  return v2;
}

- (uint64_t)addInvalidatedIndexPath:(uint64_t)a1
{
  v4 = *(a1 + 80);
  if (!v4)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v6 = *(a1 + 80);
    *(a1 + 80) = v5;

    v4 = *(a1 + 80);
  }

  return [v4 addObject:a2];
}

- (void)computeLayoutInRect:(unsigned int)a3 forSection:(void *)a4 invalidating:(CGFloat)a5 invalidationContext:(CGFloat)a6
{
  v377 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return;
  }

  v12 = a1;
  v360 = 0u;
  v361 = 0u;
  v362 = 0u;
  v363 = 0u;
  obj = *(a1 + 80);
  v350 = v12;
  v325 = [obj countByEnumeratingWithState:&v360 objects:v371 count:16];
  if (v325)
  {
    v323 = *v361;
    v346 = (v12 + 112);
    v339 = (v12 + 40);
    v342 = (v12 + 32);
    v337 = (v12 + 120);
    do
    {
      v13 = 0;
      do
      {
        if (*v361 != v323)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v360 + 1) + 8 * v13);
        v15 = [*(v12 + 96) objectAtIndexedSubscript:{objc_msgSend(v14, "item")}];
        v16 = v15;
        if (v15)
        {
          WeakRetained = objc_loadWeakRetained((v15 + 24));
        }

        else
        {
          WeakRetained = 0;
        }

        v333 = v16;
        v18 = WeakRetained;
        *&v367.origin.x = MEMORY[0x1E69E9820];
        *&v367.origin.y = 3221225472;
        *&v367.size.width = __61___UIFlowLayoutSection_sizeChangedForItem_atIndexPath_inRow___block_invoke;
        *&v367.size.height = &unk_1E7100298;
        v368 = v12;
        v19 = objc_loadWeakRetained((v12 + 144));
        v329 = v13;
        if (v19)
        {
          v20 = v19[97];
        }

        else
        {
          v20 = 0;
        }

        v21 = [*(v12 + 104) indexOfObject:v18];
        v331 = v18;
        if (v18)
        {
          v22 = *(v18 + 5);
        }

        else
        {
          v22 = 0;
        }

        v335 = v22;
        v23 = [*(v12 + 104) count];
        v24 = objc_loadWeakRetained((v12 + 144));
        v25 = v24;
        if (v24)
        {
          v26 = objc_loadWeakRetained(v24 + 15);
        }

        else
        {
          v26 = 0;
        }

        v27 = [v26 collectionView];
        if ([v27 _shouldReverseLayoutDirection])
        {
          v28 = objc_loadWeakRetained((v12 + 144));
          v29 = v28;
          if (v28)
          {
            v30 = objc_loadWeakRetained(v28 + 15);
          }

          else
          {
            v30 = 0;
          }

          rect = [v30 _wantsRightToLeftHorizontalMirroringIfNeeded];

          v12 = v350;
        }

        else
        {
          rect = 1;
        }

        if (v23 >= 1)
        {
          if (!v21)
          {
            v52 = [v14 item];
            v53 = [v335 indexOfObject:v333];
            v54 = *(v12 + 264);
            if (v52 - v53 == v54)
            {
              if (v54)
              {
                v55 = [v335 count];
                v56 = *(v12 + 272) - v55;
                *(v12 + 264) += v55;
                *(v12 + 272) = v56;
                if (v331)
                {
                  v57 = v331[7];
                  v58 = v331[8];
                  if (v20)
                  {
                    goto LABEL_49;
                  }

LABEL_58:
                  v379.origin.x = *(v12 + 16);
                  v379.origin.y = *(v12 + 24) + v58 + *(v12 + 112);
                  *(v12 + 24) = v379.origin.y;
                  v379.size.width = *(v12 + 32);
                  v379.size.height = *(v12 + 40);
                  Height = CGRectGetHeight(v379);
                  v64 = v346;
                  v57 = v58;
                  v65 = v339;
                }

                else
                {
                  v58 = 0.0;
                  v57 = 0.0;
                  if ((v20 & 1) == 0)
                  {
                    goto LABEL_58;
                  }

LABEL_49:
                  v59 = *(v12 + 120);
                  v60 = v57 - v59;
                  v61 = v57 + v59;
                  v62 = -v60;
                  if (!rect)
                  {
                    v61 = v62;
                  }

                  v378.origin.y = *(v12 + 24);
                  v378.origin.x = *(v12 + 16) + v61;
                  *(v12 + 16) = v378.origin.x;
                  v378.size.width = *(v12 + 32);
                  v378.size.height = *(v12 + 40);
                  Height = CGRectGetWidth(v378);
                  v64 = v337;
                  v65 = v342;
                }

                *v65 = fmax(Height - (v57 + *v64), 0.0);
                memset(&remainder, 0, sizeof(remainder));
                v365 = 0u;
                v366 = 0u;
                if (v331)
                {
                  v66 = *(v331 + 5);
                }

                else
                {
                  v66 = 0;
                }

                v67 = v66;
                v68 = [v67 countByEnumeratingWithState:&remainder objects:&slice count:16];
                if (v68)
                {
                  v69 = v68;
                  v70 = **&remainder.size.width;
                  do
                  {
                    for (i = 0; i != v69; ++i)
                    {
                      if (**&remainder.size.width != v70)
                      {
                        objc_enumerationMutation(v67);
                      }

                      v72 = *(*&remainder.origin.y + 8 * i);
                      if (v72)
                      {
                        *(v72 + 8) |= 2u;
                        objc_storeWeak((v72 + 24), 0);
                      }

                      (*&v367.size.width)(&v367, v72);
                    }

                    v69 = [v67 countByEnumeratingWithState:&remainder objects:&slice count:16];
                  }

                  while (v69);
                }

                [*(v12 + 104) removeObjectAtIndex:0];
                goto LABEL_71;
              }
            }
          }

          while (v23 > v21)
          {
            v31 = [*(v12 + 104) objectAtIndexedSubscript:--v23];
            v32 = v31;
            if (v31)
            {
              v33 = *(v31 + 40);
            }

            else
            {
              v33 = 0;
            }

            v34 = v33;
            *(v12 + 272) -= [v34 count];

            v35 = *(v12 + 16);
            v36 = *(v12 + 24);
            v37 = *(v12 + 32);
            v38 = *(v12 + 40);
            if (v20)
            {
              Width = CGRectGetWidth(*&v35);
              if (v32)
              {
                v40 = 7;
                v41 = v337;
                v42 = v342;
                goto LABEL_30;
              }

              v50 = v337;
              v51 = v342;
LABEL_44:
              v43 = 0;
              *v51 = fmax(Width - (*v50 + 0.0), 0.0);
              memset(&remainder, 0, sizeof(remainder));
              v365 = 0u;
              v366 = 0u;
            }

            else
            {
              Width = CGRectGetHeight(*&v35);
              if (!v32)
              {
                v50 = v346;
                v51 = v339;
                goto LABEL_44;
              }

              v40 = 8;
              v41 = v346;
              v42 = v339;
LABEL_30:
              *v42 = fmax(Width - (*&v32[v40] + *v41), 0.0);
              v365 = 0u;
              v366 = 0u;
              memset(&remainder, 0, sizeof(remainder));
              v43 = v32[5];
            }

            v44 = v43;
            v45 = [v44 countByEnumeratingWithState:&remainder objects:&slice count:16];
            if (v45)
            {
              v46 = v45;
              v47 = **&remainder.size.width;
              do
              {
                for (j = 0; j != v46; ++j)
                {
                  if (**&remainder.size.width != v47)
                  {
                    objc_enumerationMutation(v44);
                  }

                  v49 = *(*&remainder.origin.y + 8 * j);
                  if (v49)
                  {
                    *(v49 + 8) |= 2u;
                    objc_storeWeak((v49 + 24), 0);
                  }

                  (*&v367.size.width)(&v367, v49);
                }

                v46 = [v44 countByEnumeratingWithState:&remainder objects:&slice count:16];
              }

              while (v46);
            }

            v12 = v350;
            [*(v350 + 104) removeObjectAtIndex:v23];

            continue;
          }
        }

LABEL_71:

        v13 = v329 + 1;
      }

      while (v329 + 1 != v325);
      v73 = [obj countByEnumeratingWithState:&v360 objects:v371 count:16];
      v325 = v73;
    }

    while (v73);
  }

  [*(v12 + 80) removeAllObjects];
  if (!CGRectIsEmpty(*(v12 + 48)))
  {
    v417.origin.x = a5;
    v417.origin.y = a6;
    v417.size.width = a7;
    v417.size.height = a8;
    if (CGRectIntersectsRect(*(v12 + 48), v417) && !CGRectContainsRect(*(v12 + 16), *(v12 + 48)))
    {
      v74 = *(v12 + 48);
      v75 = *(v12 + 56);
      v76 = *(v12 + 64);
      v77 = *(v12 + 72);
      v78 = *(MEMORY[0x1E695F058] + 16);
      *(v12 + 48) = *MEMORY[0x1E695F058];
      *(v12 + 64) = v78;
      [(_UIFlowLayoutSection *)v12 computeLayoutInRect:a2 forSection:a3 invalidating:a4 invalidationContext:v74, v75, v76, v77];
    }
  }

  v79 = objc_loadWeakRetained((v12 + 144));
  if (!v79)
  {
    memset(&remainder, 0, sizeof(remainder));
LABEL_86:
    v385.origin.x = a5;
    v385.origin.y = a6;
    v385.size.width = a7;
    v385.size.height = a8;
    MaxY = CGRectGetMaxY(v385);
    if (MaxY > CGRectGetMaxY(*(v12 + 16)))
    {
      v386.origin.x = a5;
      v386.origin.y = a6;
      v386.size.width = a7;
      v386.size.height = a8;
      MinY = CGRectGetMinY(v386);
      if (MinY < CGRectGetMinY(*(v12 + 16)))
      {
        memset(&slice, 0, sizeof(slice));
        v98 = CGRectGetMinY(*(v12 + 16));
        v387.origin.x = a5;
        v387.origin.y = a6;
        v387.size.width = a7;
        v387.size.height = a8;
        v99 = v98 - CGRectGetMinY(v387);
        v388.origin.x = a5;
        v388.origin.y = a6;
        v388.size.width = a7;
        v388.size.height = a8;
        CGRectDivide(v388, &slice, &remainder, v99, CGRectMinYEdge);
        v85 = a4;
        v86 = a2;
        v87 = a3;
        [(_UIFlowLayoutSection *)v12 computeLayoutInRect:a2 forSection:a3 invalidating:a4 invalidationContext:slice.origin.x, slice.origin.y, slice.size.width, slice.size.height];
        memset(&v367, 0, sizeof(v367));
        v389.origin.x = a5;
        v389.origin.y = a6;
        v389.size.width = a7;
        v389.size.height = a8;
        v100 = CGRectGetMaxY(v389);
        v89 = v100 - CGRectGetMaxY(*(v12 + 16));
        v90 = a5;
        v91 = a6;
        v92 = a7;
        v93 = a8;
        v94 = CGRectMaxYEdge;
        goto LABEL_89;
      }
    }

    v95 = 0;
    goto LABEL_91;
  }

  v80 = v79[97];

  memset(&remainder, 0, sizeof(remainder));
  if (v80 != 1)
  {
    goto LABEL_86;
  }

  v380.origin.x = a5;
  v380.origin.y = a6;
  v380.size.width = a7;
  v380.size.height = a8;
  MaxX = CGRectGetMaxX(v380);
  if (MaxX > CGRectGetMaxX(*(v12 + 16)))
  {
    v381.origin.x = a5;
    v381.origin.y = a6;
    v381.size.width = a7;
    v381.size.height = a8;
    MinX = CGRectGetMinX(v381);
    if (MinX < CGRectGetMinX(*(v12 + 16)))
    {
      memset(&slice, 0, sizeof(slice));
      v83 = CGRectGetMinX(*(v12 + 16));
      v382.origin.x = a5;
      v382.origin.y = a6;
      v382.size.width = a7;
      v382.size.height = a8;
      v84 = v83 - CGRectGetMinX(v382);
      v383.origin.x = a5;
      v383.origin.y = a6;
      v383.size.width = a7;
      v383.size.height = a8;
      CGRectDivide(v383, &slice, &remainder, v84, CGRectMinXEdge);
      v85 = a4;
      v86 = a2;
      v87 = a3;
      [(_UIFlowLayoutSection *)v12 computeLayoutInRect:a2 forSection:a3 invalidating:a4 invalidationContext:slice.origin.x, slice.origin.y, slice.size.width, slice.size.height];
      memset(&v367, 0, sizeof(v367));
      v384.origin.x = a5;
      v384.origin.y = a6;
      v384.size.width = a7;
      v384.size.height = a8;
      v88 = CGRectGetMaxX(v384);
      v89 = v88 - CGRectGetMaxX(*(v12 + 16));
      v90 = a5;
      v91 = a6;
      v92 = a7;
      v93 = a8;
      v94 = CGRectMaxXEdge;
LABEL_89:
      CGRectDivide(*&v90, &remainder, &v367, v89, v94);
      [(_UIFlowLayoutSection *)v12 computeLayoutInRect:v86 forSection:v87 invalidating:v85 invalidationContext:v367.origin.x, v367.origin.y, v367.size.width, v367.size.height];
      return;
    }
  }

  v95 = 1;
LABEL_91:
  v343 = *(MEMORY[0x1E695F058] + 16);
  *v347 = *MEMORY[0x1E695F058];
  v367.origin = *MEMORY[0x1E695F058];
  v367.size = v343;
  v390.origin.x = a5;
  v390.origin.y = a6;
  v390.size.width = a7;
  v390.size.height = a8;
  v324 = a5;
  if (!CGRectIsEmpty(v390))
  {
    if (CGRectIsEmpty(*(v12 + 16)))
    {
      v367.origin.x = a5;
      v367.origin.y = a6;
      v367.size.width = a7;
      v367.size.height = a8;
      v418.origin.x = a5;
      v418.origin.y = a6;
      v418.size.width = a7;
      v418.size.height = a8;
      v391 = CGRectUnion(*(v12 + 16), v418);
      y = v391.origin.y;
      x = v391.origin.x;
      a7 = v391.size.width;
      a8 = v391.size.height;
      v101 = 1;
      goto LABEL_116;
    }

    v419.origin.x = a5;
    v419.origin.y = a6;
    v419.size.width = a7;
    v419.size.height = a8;
    if (!CGRectContainsRect(*(v12 + 16), v419))
    {
      v420.origin.x = a5;
      v420.origin.y = a6;
      v420.size.width = a7;
      v420.size.height = a8;
      if (CGRectIntersectsRect(*(v12 + 16), v420))
      {
        goto LABEL_103;
      }

      v102 = *(v12 + 16);
      v103 = *(v12 + 24);
      v104 = *(v12 + 32);
      v105 = *(v12 + 40);
      if (v95)
      {
        v106 = CGRectGetMinX(*&v102);
        v392.origin.x = a5;
        v392.origin.y = a6;
        v392.size.width = a7;
        v392.size.height = a8;
        if (v106 == CGRectGetMaxX(v392))
        {
          goto LABEL_103;
        }

        v107 = CGRectGetMaxX(*(v12 + 16));
        v393.origin.x = a5;
        v393.origin.y = a6;
        v393.size.width = a7;
        v393.size.height = a8;
        v108 = CGRectGetMinX(v393);
      }

      else
      {
        v109 = CGRectGetMinY(*&v102);
        v394.origin.x = a5;
        v394.origin.y = a6;
        v394.size.width = a7;
        v394.size.height = a8;
        if (v109 == CGRectGetMaxY(v394))
        {
          goto LABEL_103;
        }

        v107 = CGRectGetMaxY(*(v12 + 16));
        v395.origin.x = a5;
        v395.origin.y = a6;
        v395.size.width = a7;
        v395.size.height = a8;
        v108 = CGRectGetMinY(v395);
      }

      if (v107 != v108)
      {
        *(v12 + 264) = 0;
        *(v12 + 272) = 0;
        [*(v12 + 104) removeAllObjects];
        v101 = 1;
        y = a6;
        x = a5;
        goto LABEL_116;
      }

LABEL_103:
      v421.origin.x = a5;
      v421.origin.y = a6;
      v421.size.width = a7;
      v421.size.height = a8;
      v396 = CGRectUnion(*(v12 + 16), v421);
      y = v396.origin.y;
      x = v396.origin.x;
      v110 = v396.size.width;
      v111 = v396.size.height;
      v112 = a5;
      v113 = a6;
      v114 = a7;
      v115 = a8;
      if (v95)
      {
        v116 = a6;
        v117 = CGRectGetMinX(*&v112);
        if (v117 < CGRectGetMinX(*(v12 + 16)))
        {
          v118 = CGRectGetMinX(*(v12 + 16));
          v397.origin.x = a5;
          v397.origin.y = v116;
          v397.size.width = a7;
          v397.size.height = a8;
          v119 = v118 - CGRectGetMinX(v397);
          v121 = y;
          v120 = x;
          v122 = v110;
          v123 = v111;
          v124 = CGRectMinXEdge;
LABEL_108:
          CGRectDivide(*&v120, &v367, &remainder, v119, v124);
          v101 = 0;
LABEL_115:
          a8 = v111;
          a7 = v110;
          a6 = v116;
          goto LABEL_116;
        }

        v399.origin.x = a5;
        v399.origin.y = v116;
        v399.size.width = a7;
        v399.size.height = a8;
        v127 = CGRectGetMaxX(v399);
        if (v127 > CGRectGetMaxX(*(v12 + 16)))
        {
          v400.origin.x = a5;
          v400.origin.y = v116;
          v400.size.width = a7;
          v400.size.height = a8;
          v128 = CGRectGetMaxX(v400);
          v129 = v128 - CGRectGetMaxX(*(v12 + 16));
          v131 = y;
          v130 = x;
          v132 = v110;
          v133 = v111;
          v134 = CGRectMaxXEdge;
LABEL_113:
          CGRectDivide(*&v130, &v367, &remainder, v129, v134);
        }
      }

      else
      {
        v116 = a6;
        v125 = CGRectGetMinY(*&v112);
        if (v125 < CGRectGetMinY(*(v12 + 16)))
        {
          v126 = CGRectGetMinY(*(v12 + 16));
          v398.origin.x = a5;
          v398.origin.y = v116;
          v398.size.width = a7;
          v398.size.height = a8;
          v119 = v126 - CGRectGetMinY(v398);
          v121 = y;
          v120 = x;
          v122 = v110;
          v123 = v111;
          v124 = CGRectMinYEdge;
          goto LABEL_108;
        }

        v401.origin.x = a5;
        v401.origin.y = v116;
        v401.size.width = a7;
        v401.size.height = a8;
        v135 = CGRectGetMaxY(v401);
        if (v135 > CGRectGetMaxY(*(v12 + 16)))
        {
          v402.origin.x = a5;
          v402.origin.y = v116;
          v402.size.width = a7;
          v402.size.height = a8;
          v136 = CGRectGetMaxY(v402);
          v129 = v136 - CGRectGetMaxY(*(v12 + 16));
          v131 = y;
          v130 = x;
          v132 = v110;
          v133 = v111;
          v134 = CGRectMaxYEdge;
          goto LABEL_113;
        }
      }

      v101 = 1;
      goto LABEL_115;
    }
  }

  v367.origin = *v347;
  v367.size = v343;
  y = *(v12 + 24);
  x = *(v12 + 16);
  v101 = 1;
  a7 = *(v12 + 32);
  a8 = *(v12 + 40);
LABEL_116:
  v137 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v138 = objc_loadWeakRetained((v12 + 144));
  v139 = 0.0;
  v140 = 0.0;
  if (v138)
  {
    v140 = v138[14];
  }

  v141 = *(v12 + 120);
  v142 = 288;
  if (v95)
  {
    v142 = 280;
  }

  v143 = 304;
  if (v95)
  {
    v143 = 296;
  }

  v144 = *(v12 + v142);
  v145 = *(v12 + v143);
  v356 = 0u;
  v357 = 0u;
  v358 = 0u;
  v359 = 0u;
  v348 = *(v12 + 104);
  v146 = [v348 countByEnumeratingWithState:&v356 objects:v370 count:16];
  v338 = v137;
  if (!v146)
  {
    LOBYTE(v149) = 1;
    LOBYTE(v150) = 1;
    goto LABEL_162;
  }

  v147 = v146;
  v148 = *v357;
  LOBYTE(v149) = 1;
  v150 = 1;
  v340 = *v357;
  do
  {
    v151 = 0;
    v344 = v147;
    do
    {
      if (*v357 != v148)
      {
        objc_enumerationMutation(v348);
      }

      v152 = *(*(&v356 + 1) + 8 * v151);
      if (v152)
      {
        v152 = v152[5];
      }

      v153 = v152;
      v154 = [v153 count] < 2;
      if ((v149 & 1) == 0)
      {
        v149 = 0;
        goto LABEL_156;
      }

      v354 = 0u;
      v355 = 0u;
      v352 = 0u;
      v353 = 0u;
      v155 = v153;
      v156 = [v155 countByEnumeratingWithState:&v352 objects:v369 count:16];
      if (!v156)
      {
        v149 = 1;
        goto LABEL_155;
      }

      v157 = v156;
      v158 = *v353;
LABEL_132:
      v159 = 0;
      while (1)
      {
        if (*v353 != v158)
        {
          objc_enumerationMutation(v155);
        }

        v160 = *(*(&v352 + 1) + 8 * v159);
        if (v95)
        {
          if (v160)
          {
            v161 = v160[4];
            v162 = v160[5];
            v163 = v160[6];
            v164 = v160[7];
          }

          else
          {
            v162 = 0;
            v163 = 0;
            v164 = 0;
            v161 = 0;
          }

          v165 = CGRectGetHeight(*&v161);
        }

        else
        {
          if (v160)
          {
            v166 = v160[4];
            v167 = v160[5];
            v168 = v160[6];
            v169 = v160[7];
          }

          else
          {
            v167 = 0;
            v168 = 0;
            v169 = 0;
            v166 = 0;
          }

          v165 = CGRectGetWidth(*&v166);
        }

        if (v139 != 0.0)
        {
          break;
        }

        v139 = v165;
LABEL_145:
        if (v157 == ++v159)
        {
          v170 = [v155 countByEnumeratingWithState:&v352 objects:v369 count:16];
          v157 = v170;
          if (!v170)
          {
            v149 = 1;
            goto LABEL_153;
          }

          goto LABEL_132;
        }
      }

      if (v139 == v165)
      {
        goto LABEL_145;
      }

      v149 = 0;
LABEL_153:
      v137 = v338;
LABEL_155:

      v148 = v340;
      v147 = v344;
LABEL_156:
      v150 &= v154;

      if ((v150 | v149) != 1)
      {
        LOBYTE(v149) = 0;
        LOBYTE(v150) = 0;
        v12 = v350;
        goto LABEL_162;
      }

      ++v151;
      v12 = v350;
    }

    while (v151 != v147);
    v147 = [v348 countByEnumeratingWithState:&v356 objects:v370 count:16];
  }

  while (v147);
LABEL_162:

  if (CGRectIsEmpty(v367))
  {
    v171 = 0;
    goto LABEL_164;
  }

  v330 = v150;
  v319 = a6;
  v171 = 0;
  v317 = sel_computeLayoutInRect_forSection_invalidating_invalidationContext_;
  v179 = v140 - (v144 + v145);
  v336 = *MEMORY[0x1E695F058];
  recta = *(MEMORY[0x1E695F058] + 8);
  v326 = v141;
  while (2)
  {
    v180 = *(v12 + 264);
    if (!v101)
    {
      if (!v180)
      {
        break;
      }

      if (*(v12 + 272))
      {
        v182 = v180 - 1;
        goto LABEL_192;
      }

LABEL_176:
      v183 = objc_loadWeakRetained((v12 + 144));
      if (v183)
      {
        v184 = v183[97];
      }

      else
      {
        v184 = 0;
      }

      *&slice.origin.x = MEMORY[0x1E69E9820];
      *&slice.origin.y = 3221225472;
      *&slice.size.width = __52___UIFlowLayoutSection_estimatedIndexOfItemAtPoint___block_invoke;
      *&slice.size.height = &unk_1E71002E8;
      v373 = v12;
      v374 = v324;
      v375 = v319;
      v376 = v184 & 1;
      v185 = _Block_copy(&slice);
      v186 = *(v12 + 16);
      v187 = *(v12 + 24);
      v188 = *(v12 + 32);
      v189 = *(v12 + 40);
      if (v184)
      {
        v190 = CGRectGetMinX(*&v186);
        v191 = *(v12 + 16);
        v192 = *(v12 + 24);
        v193 = *(v12 + 32);
        v194 = *(v12 + 40);
        if (v324 < v190)
        {
          v195 = v324 / CGRectGetMinX(*&v191);
LABEL_183:
          v201 = *(v12 + 264);
LABEL_189:
          v182 = (v195 * v201);
LABEL_191:

          goto LABEL_192;
        }

        if (v324 > CGRectGetMaxX(*&v191))
        {
          v202 = v324 - CGRectGetMaxX(*(v12 + 16));
          v203 = CGRectGetMaxX(*(v12 + 312));
          v204 = CGRectGetMaxX(*(v12 + 16));
LABEL_188:
          v195 = v202 / (v203 - v204);
          v201 = (*(v12 + 208) - (*(v12 + 264) + *(v12 + 272)));
          goto LABEL_189;
        }
      }

      else
      {
        v196 = CGRectGetMinY(*&v186);
        v197 = *(v12 + 16);
        v198 = *(v12 + 24);
        v199 = *(v12 + 32);
        v200 = *(v12 + 40);
        if (v319 < v196)
        {
          v195 = v319 / CGRectGetMinY(*&v197);
          goto LABEL_183;
        }

        if (v319 > CGRectGetMaxY(*&v197))
        {
          v202 = v319 - CGRectGetMaxY(*(v12 + 16));
          v203 = CGRectGetMaxY(*(v12 + 312));
          v204 = CGRectGetMaxY(*(v12 + 16));
          goto LABEL_188;
        }
      }

      v182 = v185[2](v185);
      goto LABEL_191;
    }

    v181 = *(v12 + 272);
    v182 = v181 + v180;
    if ((v181 + v180) >= *(v12 + 208))
    {
      break;
    }

    if (!v181)
    {
      goto LABEL_176;
    }

LABEL_192:
    v205 = [(_UIFlowLayoutSection *)v12 addRowAtEnd:v101];
    v206 = v179;
    while (2)
    {
      v207 = [*(v12 + 96) objectAtIndexedSubscript:{v182, v317}];
      v208 = v207;
      if (v207)
      {
        v209 = v207[4];
        v210 = v207[5];
        v211 = v207[6];
        v212 = v207[7];
        if (v95)
        {
          goto LABEL_195;
        }

LABEL_197:
        v213 = CGRectGetWidth(*&v209);
      }

      else
      {
        v210 = 0;
        v211 = 0;
        v212 = 0;
        v209 = 0;
        if (!v95)
        {
          goto LABEL_197;
        }

LABEL_195:
        v213 = CGRectGetHeight(*&v209);
      }

      v214 = v213;
      if (v213 > v179)
      {
        [(_UIFlowLayoutSection *)v12 logInvalidSizes];
      }

      if (v139 == 0.0)
      {
        v139 = v214;
      }

      v149 = (v214 == v139) & v149;
      if (v214 <= v206 || (!v205 ? (v215 = 0) : (v215 = *(v205 + 40)), v216 = v215, v217 = [v216 count], v216, !v217))
      {
        if (v208 && (v208[8] & 2) != 0)
        {
          v218 = [MEMORY[0x1E696AC88] indexPathForItem:v182 inSection:a2];
          [v137 addObject:v218];

          v208[8] &= ~2u;
        }

        v12 = v350;
        ++*(v350 + 272);
        if (v101)
        {
          [(_UIFlowLayoutRow *)v205 addItem:v208 atEnd:1];
          v206 = v206 - (v141 + v214);
          if (++v182 >= *(v350 + 208))
          {
            goto LABEL_216;
          }

          goto LABEL_214;
        }

        --*(v350 + 264);
        [(_UIFlowLayoutRow *)v205 addItem:v208 atEnd:0];
        v206 = v206 - (v141 + v214);
        if (v182 > 0)
        {
          --v182;
LABEL_214:

          continue;
        }

LABEL_216:
        if (v139 > v206)
        {
          v219 = v149;
        }

        else
        {
          v219 = 0;
        }

        if (v330)
        {
          if (v205)
          {
            v220 = *(v205 + 40);
          }

          else
          {
            v220 = 0;
          }

          v221 = v220;
          v222 = [v221 count] == 1;

          v223 = v222 | v219;
          v12 = v350;
          if ((v223 & 1) == 0)
          {
LABEL_223:
            v137 = v338;
            if (v205)
            {
LABEL_235:
              *(v205 + 20) = v149;
              [(_UIFlowLayoutRow *)v205 layoutRow];

              v226 = *(v205 + 56);
              v227 = *(v205 + 64);
              goto LABEL_236;
            }

            goto LABEL_288;
          }
        }

        else if (!v219)
        {
          goto LABEL_223;
        }

        v137 = v338;
        goto LABEL_233;
      }

      break;
    }

    if (v330)
    {
      if (v205)
      {
        v224 = *(v205 + 40);
      }

      else
      {
        v224 = 0;
      }

      v225 = v224;
      v330 = [v225 count] < 2;
    }

    else
    {
      v330 = 0;
    }

    v12 = v350;
LABEL_233:
    if (v205)
    {
      *(v205 + 9) = 1;
      goto LABEL_235;
    }

LABEL_288:
    [(_UIFlowLayoutRow *)v205 layoutRow];

    v227 = 0.0;
    v226 = 0.0;
LABEL_236:
    v349 = v226;
    v228 = [*(v12 + 104) count];
    v229 = v228;
    if (v101)
    {
      v230 = v228 - 2;
      if (v95)
      {
        v341 = a8;
        if (v228 < 2)
        {
          v233 = a7;
          v238 = *(v12 + 128) + *(v12 + 288);
        }

        else
        {
          v231 = [*(v12 + 104) objectAtIndex:v230];
          v232 = v231;
          v233 = a7;
          if (v231)
          {
            v234 = v231[9];
            v235 = v231[10];
            v236 = v231[11];
            v237 = v231[12];
          }

          else
          {
            v235 = 0;
            v236 = 0;
            v237 = 0;
            v234 = 0;
          }

          v238 = CGRectGetMaxX(*&v234) + *(v12 + 112);
        }

        v411.origin.x = v238;
        v411.origin.y = recta;
        v411.size.width = v349;
        v411.size.height = v227;
        v271 = CGRectGetMaxX(v411) + *(v12 + 120);
        v272 = v271 - CGRectGetMinX(v367);
        if (v272 > 0.0)
        {
          v367.origin.x = v272 + v367.origin.x;
          v367.size.width = v367.size.width - v272;
        }

        v412.origin.x = v238;
        v412.origin.y = recta;
        v412.size.width = v349;
        v412.size.height = v227;
        v273 = CGRectGetMaxX(v412) + *(v12 + 120);
        v413.origin.y = y;
        v413.origin.x = x;
        v413.size.width = v233;
        v413.size.height = v341;
        v274 = v273 - CGRectGetMaxX(v413);
        if (v274 > 0.0)
        {
          v233 = v233 + v274;
        }

        v345 = v233;
        v247 = recta;
      }

      else
      {
        v345 = a7;
        if (v228 < 2)
        {
          v255 = a8;
          v247 = *(v12 + 128) + *(v12 + 280);
        }

        else
        {
          v253 = [*(v12 + 104) objectAtIndex:v230];
          v254 = v253;
          v255 = a8;
          if (v253)
          {
            v256 = v253[9];
            v257 = v253[10];
            v258 = v253[11];
            v259 = v253[12];
          }

          else
          {
            v257 = 0;
            v258 = 0;
            v259 = 0;
            v256 = 0;
          }

          v247 = CGRectGetMaxY(*&v256) + *(v12 + 112);
        }

        v414.origin.x = v336;
        v414.origin.y = v247;
        v414.size.width = v349;
        v414.size.height = v227;
        v275 = CGRectGetMaxY(v414) + *(v12 + 112);
        v276 = v275 - CGRectGetMinY(v367);
        if (v276 > 0.0)
        {
          v367.origin.y = v276 + v367.origin.y;
          v367.size.height = v367.size.height - v276;
        }

        v415.origin.x = v336;
        v415.origin.y = v247;
        v415.size.width = v349;
        v415.size.height = v227;
        v277 = CGRectGetMaxY(v415) + *(v12 + 112);
        v416.origin.y = y;
        v416.origin.x = x;
        v416.size.width = v345;
        v416.size.height = v255;
        v278 = v277 - CGRectGetMaxY(v416);
        if (v278 > 0.0)
        {
          v255 = v255 + v278;
        }

        v341 = v255;
        v238 = v336;
      }
    }

    else
    {
      if (v228 <= 1)
      {
        v280 = [MEMORY[0x1E696AAA8] currentHandler];
        [v280 handleFailureInMethod:v317 object:v12 file:@"UIFlowLayoutSupport.m" lineNumber:1087 description:@"UICollectionViewFlowLayout internal error"];
      }

      v239 = [*(v12 + 104) objectAtIndex:v229 - 2];
      v240 = v239;
      if (v95)
      {
        v341 = a8;
        v241 = a7;
        if (v239)
        {
          v242 = v239[9];
          v243 = v239[10];
          v244 = v239[11];
          v245 = v239[12];
        }

        else
        {
          v243 = 0;
          v244 = 0;
          v245 = 0;
          v242 = 0;
        }

        v246 = CGRectGetMinX(*&v242);
        v403.origin.x = v336;
        v403.origin.y = recta;
        v403.size.width = v349;
        v403.size.height = v227;
        v247 = v246 - (CGRectGetWidth(v403) + *(v12 + 120));

        v248 = CGRectGetMaxX(v367);
        v404.origin.x = v336;
        v404.origin.y = v247;
        v404.size.width = v349;
        v404.size.height = v227;
        v249 = v248 - (CGRectGetMinX(v404) + *(v12 + 120));
        if (v249 > 0.0)
        {
          v367.size.width = v367.size.width - v249;
        }

        v405.origin.y = y;
        v250 = x;
        v405.origin.x = x;
        v405.size.width = v241;
        v405.size.height = v341;
        v251 = CGRectGetMinX(v405);
        v238 = v336;
        v406.origin.x = v336;
        v406.origin.y = v247;
        v406.size.width = v349;
        v406.size.height = v227;
        v252 = v251 - (CGRectGetMinX(v406) - *(v12 + 120));
        if (v252 > 0.0)
        {
          v241 = v241 + v252;
        }

        v345 = v241;
        if (v252 > 0.0)
        {
          v250 = x - v252;
        }

        x = v250;
      }

      else
      {
        v345 = a7;
        v260 = a8;
        if (v239)
        {
          v261 = v239[9];
          v262 = v239[10];
          v263 = v239[11];
          v264 = v239[12];
        }

        else
        {
          v262 = 0;
          v263 = 0;
          v264 = 0;
          v261 = 0;
        }

        v265 = CGRectGetMinY(*&v261) + *(v12 + 128);
        v407.origin.x = v336;
        v407.origin.y = recta;
        v407.size.width = v349;
        v407.size.height = v227;
        v247 = v265 - (CGRectGetHeight(v407) + *(v12 + 112));

        v266 = CGRectGetMaxY(v367);
        v408.origin.x = v336;
        v408.origin.y = v247;
        v408.size.width = v349;
        v408.size.height = v227;
        v267 = v266 - (CGRectGetMinY(v408) + *(v12 + 112));
        if (v267 > 0.0)
        {
          v367.size.height = v367.size.height - v267;
        }

        v268 = y;
        v409.origin.x = x;
        v409.origin.y = y;
        v409.size.width = v345;
        v409.size.height = v260;
        v269 = CGRectGetMinY(v409);
        v410.origin.x = v336;
        v410.origin.y = v247;
        v410.size.width = v349;
        v410.size.height = v227;
        v270 = v269 - (CGRectGetMinY(v410) - *(v12 + 112));
        if (v270 > 0.0)
        {
          v260 = v260 + v270;
        }

        v341 = v260;
        if (v270 > 0.0)
        {
          v268 = y - v270;
        }

        y = v268;
        v238 = v336;
      }

      v141 = v326;
    }

    if (v205)
    {
      v279 = *(v205 + 88) != v349;
      if (*(v205 + 96) != v227)
      {
        v279 = 1;
      }

      *(v205 + 72) = v238;
      *(v205 + 80) = v247;
      *(v205 + 88) = v349;
      *(v205 + 96) = v227;
    }

    else
    {
      v279 = v349 != 0.0;
      if (v227 != 0.0)
      {
        v279 = 1;
      }
    }

    v171 |= v279;

    a8 = v341;
    a7 = v345;
    if (!CGRectIsEmpty(v367))
    {
      continue;
    }

    break;
  }

LABEL_164:
  *(v12 + 16) = x;
  *(v12 + 24) = y;
  *(v12 + 32) = a7;
  *(v12 + 40) = a8;
  *(v12 + 48) = x;
  *(v12 + 56) = y;
  *(v12 + 64) = a7;
  *(v12 + 72) = a8;
  [(_UIFlowLayoutSection *)v12 updateEstimatedSizeForSection:a2];
  v172 = (v12 + 144);
  if (v95)
  {
    v173 = objc_loadWeakRetained(v172);
    if (v173 && (v174 = v173[98], v173, v174 == 1))
    {
      v175 = CGRectGetWidth(*(v12 + 312));
      v176 = *(v12 + 128);
      v177 = v175 - *(v12 + 136);
      v178 = 0.0;
    }

    else
    {
      v290 = CGRectGetWidth(*(v12 + 312));
      v176 = *(v12 + 128);
      v178 = v290 - v176;
      v177 = 0.0;
    }

    v291 = objc_loadWeakRetained((v12 + 144));
    v289 = 0;
    v292 = 0;
    if (v291)
    {
      v292 = v291[14];
    }

    *(v12 + 344) = v178;
    *(v12 + 352) = 0;
    *(v12 + 360) = v176;
    *(v12 + 368) = v292;

    v282 = *(v12 + 136);
    v287 = objc_loadWeakRetained((v12 + 144));
    if (v287)
    {
      v289 = v287[14];
    }

    *(v12 + 376) = v177;
    v288 = 0.0;
  }

  else
  {
    v281 = objc_loadWeakRetained(v172);
    v282 = 0;
    v283 = 0;
    if (v281)
    {
      v283 = v281[14];
    }

    v284 = *(v12 + 128);
    *(v12 + 344) = 0;
    *(v12 + 352) = 0;
    *(v12 + 360) = v283;
    *(v12 + 368) = v284;

    v285 = CGRectGetHeight(*(v12 + 312));
    v286 = *(v12 + 136);
    v287 = objc_loadWeakRetained((v12 + 144));
    if (v287)
    {
      v282 = v287[14];
    }

    v288 = v285 - v286;
    v289 = *(v12 + 136);
    *(v12 + 376) = 0;
  }

  *(v12 + 384) = v288;
  *(v12 + 392) = v282;
  *(v12 + 400) = v289;

  if (a4 && [v137 count])
  {
    [a4 setInvalidateFlowLayoutAttributes:0];
    [a4 setInvalidateFlowLayoutDelegateMetrics:0];
    if (v171)
    {
      v351 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v293 = objc_alloc_init(MEMORY[0x1E695DF70]);
      if (*(v12 + 136) > 0.0)
      {
        v294 = [MEMORY[0x1E696AC88] indexPathForItem:0 inSection:a2];
        [v293 addObject:v294];
      }

      v295 = objc_loadWeakRetained((v12 + 144));
      v296 = v295;
      if (v295)
      {
        v297 = *(v295 + 13);
      }

      else
      {
        v297 = 0;
      }

      v298 = v297;

      v299 = [v298 count];
      v300 = a2 + 1;
      if (a2 + 1 < v299)
      {
        v301 = v299;
        do
        {
          v302 = [v298 objectAtIndexedSubscript:{v300, v317}];
          v303 = v302;
          if (v302)
          {
            v304 = v302[43];
            v305 = v302[44];
            v306 = v302[45];
            v307 = v302[46];
          }

          else
          {
            v305 = 0;
            v306 = 0;
            v307 = 0;
            v304 = 0;
          }

          if (!CGRectIsEmpty(*&v304))
          {
            v308 = [MEMORY[0x1E696AC88] indexPathForItem:0 inSection:v300];
            [v351 addObject:v308];
          }

          if (v303)
          {
            v309 = v303[47];
            v310 = v303[48];
            v311 = v303[49];
            v312 = v303[50];
          }

          else
          {
            v310 = 0;
            v311 = 0;
            v312 = 0;
            v309 = 0;
          }

          if (!CGRectIsEmpty(*&v309))
          {
            v313 = [MEMORY[0x1E696AC88] indexPathForItem:0 inSection:v300];
            [v293 addObject:v313];
          }

          if (v303)
          {
            v314 = v303[33];
            v315 = v303[34];
          }

          else
          {
            v315 = 0;
            v314 = 0;
          }

          if (v314 < v314 + v315)
          {
            do
            {
              v316 = [MEMORY[0x1E696AC88] indexPathForItem:v314 inSection:v300];
              [v338 addObject:v316];

              ++v314;
              --v315;
            }

            while (v315);
          }

          ++v300;
        }

        while (v300 != v301);
      }

      if ([v351 count])
      {
        [a4 invalidateSupplementaryElementsOfKind:@"UICollectionElementKindSectionHeader" atIndexPaths:v351];
      }

      if ([v293 count])
      {
        [a4 invalidateSupplementaryElementsOfKind:@"UICollectionElementKindSectionFooter" atIndexPaths:v293];
      }

      v137 = v338;
    }

    [a4 invalidateItemsAtIndexPaths:{v137, v317}];
  }
}

- (void)updateEstimatedSizeForSection:(uint64_t)a1
{
  v106 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 144));
    if (WeakRetained)
    {
      v5 = WeakRetained[97];
    }

    else
    {
      v5 = 0;
    }

    if ([*(a1 + 96) count])
    {
      if ([*(a1 + 104) count])
      {
        if (v5)
        {
          v100 = 0uLL;
          v101 = 0uLL;
          v98 = 0uLL;
          v99 = 0uLL;
          v6 = *(a1 + 104);
          v7 = [v6 countByEnumeratingWithState:&v98 objects:v105 count:16];
          v8 = 0.0;
          v9 = 0.0;
          if (v7)
          {
            v10 = v7;
            v11 = *v99;
            do
            {
              v12 = 0;
              do
              {
                if (*v99 != v11)
                {
                  objc_enumerationMutation(v6);
                }

                v13 = *(*(&v98 + 1) + 8 * v12);
                if (v13)
                {
                  v14 = v13[9];
                  v15 = v13[10];
                  v16 = v13[11];
                  v17 = v13[12];
                }

                else
                {
                  v15 = 0;
                  v16 = 0;
                  v17 = 0;
                  v14 = 0;
                }

                v9 = v9 + CGRectGetWidth(*&v14) + *(a1 + 112);
                ++v12;
              }

              while (v10 != v12);
              v18 = [v6 countByEnumeratingWithState:&v98 objects:v105 count:16];
              v10 = v18;
            }

            while (v18);
          }

          v19 = v9 * (*(a1 + 208) / *(a1 + 272)) - *(a1 + 112) + *(a1 + 288) + *(a1 + 304) + *(a1 + 128) + *(a1 + 136);
          v20 = objc_loadWeakRetained((a1 + 144));
          v21 = v20;
          if (v20)
          {
            v8 = v20[14];
          }

          v22 = a1;
          v23 = v19;
        }

        else
        {
          v96 = 0uLL;
          v97 = 0uLL;
          v94 = 0uLL;
          v95 = 0uLL;
          v48 = *(a1 + 104);
          v49 = [v48 countByEnumeratingWithState:&v94 objects:v104 count:16];
          if (v49)
          {
            v50 = v49;
            v51 = *v95;
            v8 = 0.0;
            do
            {
              v52 = 0;
              do
              {
                if (*v95 != v51)
                {
                  objc_enumerationMutation(v48);
                }

                v53 = *(*(&v94 + 1) + 8 * v52);
                if (v53)
                {
                  v54 = v53[9];
                  v55 = v53[10];
                  v56 = v53[11];
                  v57 = v53[12];
                }

                else
                {
                  v55 = 0;
                  v56 = 0;
                  v57 = 0;
                  v54 = 0;
                }

                v8 = v8 + CGRectGetHeight(*&v54) + *(a1 + 112);
                ++v52;
              }

              while (v50 != v52);
              v58 = [v48 countByEnumeratingWithState:&v94 objects:v104 count:16];
              v50 = v58;
            }

            while (v58);
          }

          else
          {
            v8 = 0.0;
          }

          v78 = *(a1 + 272);
          if (v78)
          {
            v8 = round(v8 * (*(a1 + 208) / v78)) - *(a1 + 112) + *(a1 + 280) + *(a1 + 296) + *(a1 + 128) + *(a1 + 136);
          }

          v79 = objc_loadWeakRetained((a1 + 144));
          v21 = v79;
          if (v79)
          {
            v23 = v79[14];
          }

          else
          {
            v23 = 0.0;
          }

          v22 = a1;
        }

        v80 = v8;
        goto LABEL_97;
      }

      v29 = objc_loadWeakRetained((a1 + 144));
      if (v5)
      {
        if (v29)
        {
          v30 = v29[14];
        }

        else
        {
          v30 = 0.0;
        }

        v31 = *(a1 + 280);
        v32 = *(a1 + 296);

        v92 = 0u;
        v93 = 0u;
        v90 = 0u;
        v91 = 0u;
        v33 = *(a1 + 96);
        v34 = [v33 countByEnumeratingWithState:&v90 objects:v103 count:16];
        if (v34)
        {
          v35 = v34;
          v36 = 0;
          v37 = v30 - (v31 + v32);
          v38 = *v91;
          v39 = 0.0;
          do
          {
            v40 = 0;
            v41 = v36;
            v36 += v35;
            do
            {
              if (*v91 != v38)
              {
                objc_enumerationMutation(v33);
              }

              v42 = *(*(&v90 + 1) + 8 * v40);
              if (v42)
              {
                v44 = v42[4];
                v43 = v42[5];
                v45 = v42[6];
                v46 = v42[7];
              }

              else
              {
                v43 = 0.0;
                v45 = 0.0;
                v46 = 0.0;
                v44 = 0.0;
              }

              v108.origin.x = v44;
              v108.origin.y = v43;
              v108.size.width = v45;
              v108.size.height = v46;
              if (CGRectGetHeight(v108) > v37)
              {
                v36 = v41;
                goto LABEL_82;
              }

              v109.origin.x = v44;
              v109.origin.y = v43;
              v109.size.width = v45;
              v109.size.height = v46;
              v37 = v37 - (CGRectGetHeight(v109) + *(a1 + 120));
              v110.origin.x = v44;
              v110.origin.y = v43;
              v110.size.width = v45;
              v110.size.height = v46;
              v39 = fmax(v39, CGRectGetWidth(v110));
              ++v41;
              ++v40;
            }

            while (v35 != v40);
            v47 = [v33 countByEnumeratingWithState:&v90 objects:v103 count:16];
            v35 = v47;
          }

          while (v47);
LABEL_82:

          if (v36)
          {
            goto LABEL_89;
          }
        }

        else
        {

          v39 = 0.0;
        }

        [(_UIFlowLayoutSection *)a1 logInvalidSizes];
        v36 = 1;
LABEL_89:
        v81 = *(a1 + 136) + *(a1 + 128) + *(a1 + 304) + *(a1 + 288) + (v39 + *(a1 + 112)) * (*(a1 + 208) / v36) - *(a1 + 112);
        v82 = objc_loadWeakRetained((a1 + 144));
        v21 = v82;
        if (v82)
        {
          v80 = v82[14];
        }

        else
        {
          v80 = 0.0;
        }

        v22 = a1;
        v23 = v81;
LABEL_97:
        [(_UIFlowLayoutSection *)v22 setEstimatedSize:a2 forSection:v23, v80];

        return;
      }

      if (v29)
      {
        v60 = v29[14];
      }

      else
      {
        v60 = 0.0;
      }

      v61 = *(a1 + 288);
      v62 = *(a1 + 304);

      v88 = 0u;
      v89 = 0u;
      v86 = 0u;
      v87 = 0u;
      v63 = *(a1 + 96);
      v64 = [v63 countByEnumeratingWithState:&v86 objects:v102 count:16];
      if (v64)
      {
        v65 = v64;
        v66 = 0;
        v67 = v60 - (v61 + v62);
        v68 = *v87;
        v69 = 0.0;
        do
        {
          v70 = 0;
          v71 = v66;
          v66 += v65;
          do
          {
            if (*v87 != v68)
            {
              objc_enumerationMutation(v63);
            }

            v72 = *(*(&v86 + 1) + 8 * v70);
            if (v72)
            {
              v74 = v72[4];
              v73 = v72[5];
              v75 = v72[6];
              v76 = v72[7];
            }

            else
            {
              v73 = 0.0;
              v75 = 0.0;
              v76 = 0.0;
              v74 = 0.0;
            }

            v111.origin.x = v74;
            v111.origin.y = v73;
            v111.size.width = v75;
            v111.size.height = v76;
            if (CGRectGetWidth(v111) > v67)
            {
              v66 = v71;
              goto LABEL_85;
            }

            v112.origin.x = v74;
            v112.origin.y = v73;
            v112.size.width = v75;
            v112.size.height = v76;
            v67 = v67 - (CGRectGetWidth(v112) + *(a1 + 120));
            v113.origin.x = v74;
            v113.origin.y = v73;
            v113.size.width = v75;
            v113.size.height = v76;
            v69 = fmax(v69, CGRectGetHeight(v113));
            ++v71;
            ++v70;
          }

          while (v65 != v70);
          v77 = [v63 countByEnumeratingWithState:&v86 objects:v102 count:16];
          v65 = v77;
        }

        while (v77);
LABEL_85:

        if (v66)
        {
          goto LABEL_94;
        }
      }

      else
      {

        v69 = 0.0;
      }

      [(_UIFlowLayoutSection *)a1 logInvalidSizes];
      v66 = 1;
LABEL_94:
      v83 = (v69 + *(a1 + 112)) * ceil(*(a1 + 208) / v66) - *(a1 + 112);
      v84 = objc_loadWeakRetained((a1 + 144));
      v21 = v84;
      if (v84)
      {
        v23 = v84[14];
      }

      else
      {
        v23 = 0.0;
      }

      v80 = v83 + *(a1 + 280) + *(a1 + 296) + *(a1 + 128) + *(a1 + 136);
      v22 = a1;
      goto LABEL_97;
    }

    if (v5)
    {
      v24 = *(a1 + 288) + *(a1 + 304) + *(a1 + 128) + *(a1 + 136);
      v25 = objc_loadWeakRetained((a1 + 144));
      v85 = v25;
      if (v25)
      {
        v26 = v25[14];
      }

      else
      {
        v26 = 0.0;
      }

      v27 = a1;
      v28 = v24;
    }

    else
    {
      v59 = objc_loadWeakRetained((a1 + 144));
      v85 = v59;
      if (v59)
      {
        v28 = v59[14];
      }

      else
      {
        v28 = 0.0;
      }

      v26 = *(a1 + 280) + *(a1 + 296) + *(a1 + 128) + *(a1 + 136);
      v27 = a1;
    }

    [(_UIFlowLayoutSection *)v27 setEstimatedSize:a2 forSection:v28, v26];
  }
}

@end