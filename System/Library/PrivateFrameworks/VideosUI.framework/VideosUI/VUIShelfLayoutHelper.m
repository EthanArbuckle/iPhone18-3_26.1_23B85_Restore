@interface VUIShelfLayoutHelper
- (CGRect)frameForHeaderInSection:(int64_t)a3;
- (CGRect)frameForItemAtIndexPath:(id)a3;
- (UIEdgeInsets)insetForSection:(int64_t)a3;
- (VUIShelfLayoutHelper)initWithShelfViewLayout:(id)a3;
- (VUIShelfViewLayout)shelfViewLayout;
- (void)_compute;
- (void)_freeBuffers;
- (void)dealloc;
@end

@implementation VUIShelfLayoutHelper

- (VUIShelfLayoutHelper)initWithShelfViewLayout:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = VUIShelfLayoutHelper;
  v5 = [(VUIShelfLayoutHelper *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_shelfViewLayout, v4);
    [(VUIShelfLayoutHelper *)v6 _compute];
  }

  return v6;
}

- (void)dealloc
{
  [(VUIShelfLayoutHelper *)self _freeBuffers];
  v3.receiver = self;
  v3.super_class = VUIShelfLayoutHelper;
  [(VUIShelfLayoutHelper *)&v3 dealloc];
}

- (CGRect)frameForHeaderInSection:(int64_t)a3
{
  p_x = MEMORY[0x1E695F058];
  headerFrames = self->_headerFrames;
  if (headerFrames)
  {
    p_x = &headerFrames[a3].origin.x;
  }

  v5 = *p_x;
  v6 = p_x[1];
  v7 = p_x[2];
  v8 = p_x[3];
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (UIEdgeInsets)insetForSection:(int64_t)a3
{
  p_top = MEMORY[0x1E69DDCE0];
  sectionInsets = self->_sectionInsets;
  if (sectionInsets)
  {
    p_top = &sectionInsets[a3].top;
  }

  v5 = *p_top;
  v6 = p_top[1];
  v7 = p_top[2];
  v8 = p_top[3];
  result.right = v8;
  result.bottom = v7;
  result.left = v6;
  result.top = v5;
  return result;
}

- (CGRect)frameForItemAtIndexPath:(id)a3
{
  cellFrames = self->_cellFrames;
  if (cellFrames)
  {
    sectionOffsets = self->_sectionOffsets;
    v5 = a3;
    v6 = sectionOffsets[[v5 section]];
    v7 = [v5 item];

    p_x = &cellFrames[v6 + v7].origin.x;
  }

  else
  {
    p_x = MEMORY[0x1E695F058];
  }

  v9 = *p_x;
  v10 = p_x[1];
  v11 = p_x[2];
  v12 = p_x[3];
  result.size.height = v12;
  result.size.width = v11;
  result.origin.y = v10;
  result.origin.x = v9;
  return result;
}

- (void)_compute
{
  v2 = self;
  v126 = [(VUIShelfLayoutHelper *)self shelfViewLayout];
  v3 = [v126 collectionView];
  v4 = [v3 dataSource];
  v5 = [v126 delegate];
  v6 = objc_opt_respondsToSelector();
  v113 = objc_opt_respondsToSelector();
  v7 = objc_opt_respondsToSelector();
  v125 = v5;
  v112 = objc_opt_respondsToSelector();
  [v3 vuiBounds];
  v9 = v8;
  [v3 vuiContentInsets];
  v11 = v10;
  v13 = v12;
  [v126 itemSize];
  v15 = v14;
  v17 = v16;
  v18 = [v126 rowCount];
  if (v18 <= 1)
  {
    v19 = 1;
  }

  else
  {
    v19 = v18;
  }

  v111 = [v126 prominentSectionIndex];
  if (v6)
  {
    v20 = [v4 numberOfSectionsInCollectionView:v3];
  }

  else
  {
    v20 = 1;
  }

  [v126 minimumInteritemSpacing];
  v114 = v21;
  [v126 minimumLineSpacing];
  v23 = v22;
  v24 = malloc_type_calloc(v20 + 1, 8uLL, 0x100004000313F17uLL);
  v25 = v24;
  v120 = v24;
  v121 = v4;
  v123 = v20;
  v108 = v11;
  v109 = v9;
  v107 = v13;
  if (v20 < 1)
  {
    v110 = 0;
    v24[v20] = 0;
    v54 = malloc_type_calloc(v19, 8uLL, 0x100004000313F17uLL);
    v118 = 0;
    v119 = 0;
    v122 = 0.0;
    v55 = 0.0;
    v124 = 0.0;
  }

  else
  {
    v26 = 0;
    for (i = 0; i != v20; ++i)
    {
      v28 = [v4 collectionView:v3 numberOfItemsInSection:i];
      v25[i] = v26;
      v26 += v28;
    }

    v25[v20] = v26;
    v106 = v2;
    if (v26 <= 0)
    {
      v110 = 0;
    }

    else
    {
      v110 = malloc_type_calloc(v26, 0x20uLL, 0x1000040E0EAB150uLL);
    }

    v29 = malloc_type_calloc(v20, 0x20uLL, 0x1000040E0EAB150uLL);
    v30 = malloc_type_calloc(v20, 0x20uLL, 0x1000040E0EAB150uLL);
    v54 = malloc_type_calloc(v19, 8uLL, 0x100004000313F17uLL);
    v31 = 0;
    v124 = 0.0;
    v118 = v30;
    v119 = v29;
    v55 = 0.0;
    p_x = &v29->origin.x;
    v122 = 0.0;
    v33 = v110;
    do
    {
      v34 = [v121 collectionView:v3 numberOfItemsInSection:{v31, v106}];
      if (v34)
      {
        v35 = v34;
        if (v112)
        {
          [v125 collectionView:v3 layout:v126 insetForSectionAtIndex:v31];
        }

        else
        {
          [v126 sectionInset];
        }

        v40 = v36;
        v41 = v37;
        v42 = v38;
        v43 = v39;
        if (v113)
        {
          [v125 collectionView:v3 layout:v126 referenceSizeForHeaderInSection:v31];
        }

        else
        {
          [v126 headerReferenceSize];
        }

        v30->top = v40;
        v30->left = v41;
        v30->bottom = v42;
        v30->right = v43;
        ++v30;
        *(p_x + 2) = v44;
        p_x[3] = v45;
        p_x += 4;
        v46 = v124;
        if (v124 < v40)
        {
          v46 = v40;
        }

        v124 = v46;
        v47 = v122;
        if (v122 < v42)
        {
          v47 = v42;
        }

        v122 = v47;
        if (v55 < v45)
        {
          v55 = v45;
        }

        if (v35 < 1)
        {
          v20 = v123;
        }

        else
        {
          v115 = p_x;
          v117 = v30;
          v48 = 0;
          v50 = v111 == 0x7FFFFFFFFFFFFFFFLL || v31 == v111;
          do
          {
            v51 = [MEMORY[0x1E696AC88] indexPathForItem:v48 inSection:v31];
            v52 = v15;
            v53 = v17;
            if (v7)
            {
              [v125 collectionView:v3 layout:v126 sizeForItemAtIndexPath:{v51, v15, v17}];
            }

            v33->size.width = v52;
            v33->size.height = v53;
            if (v50)
            {
              v54[v48 % v19] = fmax(v54[v48 % v19], v53);
            }

            ++v33;

            ++v48;
          }

          while (v35 != v48);
          v20 = v123;
          p_x = v115;
          v30 = v117;
        }
      }

      ++v31;
    }

    while (v31 != v20);
    v2 = v106;
  }

  v56 = 0.0;
  v57 = 0.0;
  if (v19 >= 1)
  {
    v58 = v54;
    v59 = v19;
    do
    {
      v60 = *v58++;
      v57 = v57 + v60;
      --v59;
    }

    while (v59);
  }

  if (v55 > 0.0)
  {
    [v126 headerBottomMargin];
  }

  v116 = v55;
  if (v20 >= 1)
  {
    v61 = 0;
    v62 = v57 + v23 * (v19 - 1);
    v63 = v55 + v124 + v56;
    v64 = 0.0;
    v65 = 0.0;
    while (1)
    {
      v66 = [v121 collectionView:v3 numberOfItemsInSection:{v61, v106}];
      if (v66)
      {
        v67 = v120[v61];
        v69 = v111 == 0x7FFFFFFFFFFFFFFFLL || v61 == v111;
        v70 = &v118[v61];
        right = v70->right;
        v72 = v64 + v70->left;
        v73 = &v119[v61].origin.x;
        *v73 = v72;
        v73[1] = v124;
        if (v66 >= 1)
        {
          v74 = 0;
          p_height = &v110[v67].size.height;
          while (1)
          {
            v76 = v74 <= 0 ? 0.0 : v114;
            if (v69)
            {
              v77 = fmin(v19, (v66 - v74));
            }

            else
            {
              v78 = v74;
              if (v66 > v74)
              {
                v79 = (p_height + 32 * v74);
                v80 = 0.0;
                v78 = v74;
                while (1)
                {
                  v81 = v78 <= v74 ? 0.0 : v23;
                  v80 = v80 + v81 + *v79;
                  if (v78 > v74 && v80 > v62)
                  {
                    break;
                  }

                  ++v78;
                  v79 += 4;
                  if (v66 == v78)
                  {
                    v78 = v66;
                    break;
                  }
                }
              }

              v77 = v78 - v74;
            }

            v82 = v77 + v74;
            if (v77 < 1)
            {
              v86 = 0.0;
              v84 = 0.0;
            }

            else
            {
              v83 = (p_height + 32 * v74);
              v84 = 0.0;
              v85 = v74;
              v86 = 0.0;
              do
              {
                v87 = v83;
                if (v69)
                {
                  v87 = &v54[v85 % v19];
                }

                v84 = v84 + *v87;
                v86 = fmax(v86, *(v83 - 1));
                ++v85;
                v83 += 4;
              }

              while (v85 < v82);
            }

            v88 = v72 + v76;
            v89 = v23;
            if (!v69)
            {
              v89 = 0.0;
              if (v77 > 1)
              {
                break;
              }
            }

            v90 = v63;
            if (v77 >= 1)
            {
              goto LABEL_86;
            }

LABEL_92:
            v65 = fmax(v65, v90 - v63);
            v72 = v88 + v86;
            v74 = v82;
            if (v82 >= v66)
            {
              v95 = *v73;
              goto LABEL_95;
            }
          }

          v89 = floor((v62 - v84) / (v77 - 1));
LABEL_86:
          v91 = (p_height + 32 * v74);
          v92 = v74;
          v90 = v63;
          do
          {
            if (v92 > v74)
            {
              v90 = v89 + v90;
            }

            v93 = v91;
            if (v69)
            {
              v93 = &v54[v92 % v19];
            }

            v94 = *v93;
            *(v91 - 3) = v88 + floor((v86 - *(v91 - 1)) * 0.5);
            *(v91 - 2) = v90;
            v90 = v90 + v94;
            ++v92;
            v91 += 4;
          }

          while (v92 < v82);
          goto LABEL_92;
        }

        v95 = v72;
LABEL_95:
        v96 = v109 - (v108 + v107);
        if (v72 >= v96 || v61 != v20 - 1)
        {
          v96 = v72;
        }

        v98 = v73[2];
        v99 = v95 + v98;
        if (v99 > v96)
        {
          v73[2] = v98 - (v99 - v96);
        }

        v64 = right + v72;
      }

      if (++v61 == v123)
      {
        goto LABEL_106;
      }
    }
  }

  v65 = 0.0;
LABEL_106:
  if (v19 < 1)
  {
    v104 = 1;
    v105 = v123;
    v102 = v120;
  }

  else
  {
    v100 = 0;
    v101 = 0.0;
    v102 = v120;
    while (1)
    {
      v103 = v100 ? v23 : 0.0;
      v101 = v101 + v103 + v54[v100];
      if (v101 >= v65)
      {
        break;
      }

      if (v19 == ++v100)
      {
        v100 = v19;
        break;
      }
    }

    v104 = v100 + 1;
    v105 = v123;
  }

  free(v54);
  [(VUIShelfLayoutHelper *)v2 _freeBuffers];
  v2->_sectionCount = v105;
  v2->_sectionOffsets = v102;
  v2->_cellFrames = v110;
  v2->_headerFrames = v119;
  v2->_sectionInsets = v118;
  v2->_actualRowCount = v104;
  v2->_tallestInsetTop = v124;
  v2->_tallestInsetBottom = v122;
  v2->_tallestHeaderHeight = v116;
  v2->_tallestColumnHeight = v65;
}

- (void)_freeBuffers
{
  sectionOffsets = self->_sectionOffsets;
  if (sectionOffsets)
  {
    free(sectionOffsets);
    self->_sectionOffsets = 0;
  }

  cellFrames = self->_cellFrames;
  if (cellFrames)
  {
    free(cellFrames);
    self->_cellFrames = 0;
  }

  headerFrames = self->_headerFrames;
  if (headerFrames)
  {
    free(headerFrames);
    self->_headerFrames = 0;
  }

  sectionInsets = self->_sectionInsets;
  if (sectionInsets)
  {
    free(sectionInsets);
    self->_sectionInsets = 0;
  }
}

- (VUIShelfViewLayout)shelfViewLayout
{
  WeakRetained = objc_loadWeakRetained(&self->_shelfViewLayout);

  return WeakRetained;
}

@end