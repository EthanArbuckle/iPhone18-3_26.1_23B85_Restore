@interface _TVShelfLayoutHelper
- (CGRect)frameForHeaderInSection:(int64_t)a3;
- (CGRect)frameForItemAtIndexPath:(id)a3;
- (UIEdgeInsets)insetForSection:(int64_t)a3;
- (_TVShelfLayoutHelper)initWithShelfViewLayout:(id)a3;
- (_TVShelfViewLayout)shelfViewLayout;
- (void)_compute;
- (void)_freeBuffers;
- (void)dealloc;
@end

@implementation _TVShelfLayoutHelper

- (_TVShelfLayoutHelper)initWithShelfViewLayout:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = _TVShelfLayoutHelper;
  v5 = [(_TVShelfLayoutHelper *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_shelfViewLayout, v4);
    [(_TVShelfLayoutHelper *)v6 _compute];
  }

  return v6;
}

- (void)dealloc
{
  [(_TVShelfLayoutHelper *)self _freeBuffers];
  v3.receiver = self;
  v3.super_class = _TVShelfLayoutHelper;
  [(_TVShelfLayoutHelper *)&v3 dealloc];
}

- (CGRect)frameForHeaderInSection:(int64_t)a3
{
  p_x = MEMORY[0x277CBF3A0];
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
  p_top = MEMORY[0x277D768C8];
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
    p_x = MEMORY[0x277CBF3A0];
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
  v132 = *MEMORY[0x277D85DE8];
  v127 = [(_TVShelfLayoutHelper *)self shelfViewLayout];
  v3 = [v127 collectionView];
  v4 = [v3 dataSource];
  v5 = [v3 delegate];
  if ([v5 conformsToProtocol:&unk_287E801C8])
  {
    v6 = [v3 delegate];
  }

  else
  {
    v6 = 0;
  }

  v7 = objc_opt_respondsToSelector();
  v114 = objc_opt_respondsToSelector();
  v129 = objc_opt_respondsToSelector();
  v113 = objc_opt_respondsToSelector();
  [v3 bounds];
  v9 = v8;
  [v3 contentInset];
  v11 = v10;
  v13 = v12;
  [v127 itemSize];
  v15 = v14;
  v17 = v16;
  v18 = [v127 rowCount];
  if (v18 <= 1)
  {
    v19 = 1;
  }

  else
  {
    v19 = v18;
  }

  v20 = [v127 prominentSectionIndex];
  v120 = v4;
  if (v7)
  {
    v21 = [v4 numberOfSectionsInCollectionView:v3];
  }

  else
  {
    v21 = 1;
  }

  [v127 minimumInteritemSpacing];
  v115 = v22;
  [v127 minimumLineSpacing];
  v24 = v23;
  v25 = malloc_type_calloc(v21 + 1, 8uLL, 0x100004000313F17uLL);
  v26 = v25;
  v126 = v6;
  count = v21;
  v119 = v25;
  v109 = v11;
  v110 = v9;
  v108 = v13;
  if (v21 < 1)
  {
    v111 = 0;
    v25[v21] = 0;
    v57 = malloc_type_calloc(v19, 8uLL, 0x100004000313F17uLL);
    v117 = 0;
    v118 = 0;
    v122 = 0.0;
    v58 = 0.0;
    v124 = 0.0;
  }

  else
  {
    v112 = v20;
    v27 = 0;
    for (i = 0; i != v21; ++i)
    {
      v29 = [v4 collectionView:v3 numberOfItemsInSection:i];
      v26[i] = v27;
      v27 += v29;
    }

    v26[v21] = v27;
    if (v27 <= 0)
    {
      v111 = 0;
    }

    else
    {
      v111 = malloc_type_calloc(v27, 0x20uLL, 0x1000040E0EAB150uLL);
    }

    v30 = malloc_type_calloc(v21, 0x20uLL, 0x1000040E0EAB150uLL);
    v31 = malloc_type_calloc(v21, 0x20uLL, 0x1000040E0EAB150uLL);
    v57 = malloc_type_calloc(v19, 8uLL, 0x100004000313F17uLL);
    v32 = 0;
    v124 = 0.0;
    v117 = v31;
    v118 = v30;
    v33 = v31;
    v121 = v30;
    v34 = v111;
    v58 = 0.0;
    v122 = 0.0;
    v35 = v126;
    v128 = v3;
    do
    {
      v36 = [v120 collectionView:v3 numberOfItemsInSection:v32];
      if (v36)
      {
        v37 = v36;
        if (v113)
        {
          [v35 collectionView:v128 layout:v127 insetForSectionAtIndex:v32];
        }

        else
        {
          [v127 sectionInset];
        }

        v42 = v38;
        v43 = v39;
        v44 = v40;
        v45 = v41;
        if (v114)
        {
          [v35 collectionView:v128 layout:v127 referenceSizeForHeaderInSection:v32];
        }

        else
        {
          [v127 headerReferenceSize];
        }

        v33->top = v42;
        v33->left = v43;
        v33->bottom = v44;
        v33->right = v45;
        ++v33;
        v121->size.width = v46;
        v121->size.height = v47;
        ++v121;
        v48 = v124;
        if (v124 < v42)
        {
          v48 = v42;
        }

        v124 = v48;
        v49 = v122;
        if (v122 < v44)
        {
          v49 = v44;
        }

        v122 = v49;
        if (v58 < v47)
        {
          v58 = v47;
        }

        if (v37 < 1)
        {
          v21 = count;
        }

        else
        {
          v116 = v33;
          v50 = 0;
          v52 = v112 == 0x7FFFFFFFFFFFFFFFLL || v32 == v112;
          do
          {
            v53 = [MEMORY[0x277CCAA70] indexPathForItem:v50 inSection:v32];
            v54 = v15;
            v55 = v17;
            if (v129)
            {
              [v126 collectionView:v128 layout:v127 sizeForItemAtIndexPath:{v53, v15, v17}];
            }

            if ((*&v54 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v55 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
            {
              v56 = TVMLKitLogObject;
              if (os_log_type_enabled(TVMLKitLogObject, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v131 = v53;
                _os_log_impl(&dword_26CD9A000, v56, OS_LOG_TYPE_DEFAULT, "shelf cell size not finite for %@, skipping", buf, 0xCu);
              }
            }

            else
            {
              v34->size.width = v54;
              v34->size.height = v55;
              if (v52)
              {
                v57[v50 % v19] = fmax(v57[v50 % v19], v55);
              }
            }

            ++v50;
            ++v34;
          }

          while (v37 != v50);
          v35 = v126;
          v21 = count;
          v33 = v116;
        }
      }

      ++v32;
      v3 = v128;
    }

    while (v32 != v21);
    v20 = v112;
  }

  v59 = 0.0;
  v60 = 0.0;
  if (v19 >= 1)
  {
    v61 = v57;
    v62 = v19;
    do
    {
      v63 = *v61++;
      v60 = v60 + v63;
      --v62;
    }

    while (v62);
  }

  if (v58 > 0.0)
  {
    [v127 headerBottomMargin];
  }

  v125 = v58;
  if (v21 >= 1)
  {
    v64 = 0;
    v65 = v60 + v24 * (v19 - 1);
    v66 = v58 + v124 + v59;
    v67 = 0.0;
    v68 = 0.0;
    while (1)
    {
      v69 = [v120 collectionView:v3 numberOfItemsInSection:v64];
      if (v69)
      {
        v70 = v119[v64];
        v72 = v20 == 0x7FFFFFFFFFFFFFFFLL || v64 == v20;
        v73 = &v117[v64];
        right = v73->right;
        v75 = v67 + v73->left;
        p_x = &v118[v64].origin.x;
        *p_x = v75;
        p_x[1] = v124;
        if (v69 >= 1)
        {
          v77 = 0;
          p_height = &v111[v70].size.height;
          while (1)
          {
            v79 = v77 <= 0 ? 0.0 : v115;
            if (v72)
            {
              v80 = fmin(v19, (v69 - v77));
            }

            else
            {
              v81 = v77;
              if (v69 > v77)
              {
                v82 = (p_height + 32 * v77);
                v83 = 0.0;
                v81 = v77;
                while (1)
                {
                  v84 = v81 <= v77 ? 0.0 : v24;
                  v83 = v83 + v84 + *v82;
                  if (v81 > v77 && v83 > v65)
                  {
                    break;
                  }

                  ++v81;
                  v82 += 4;
                  if (v69 == v81)
                  {
                    v81 = v69;
                    break;
                  }
                }
              }

              v80 = v81 - v77;
            }

            v85 = v80 + v77;
            if (v80 < 1)
            {
              v89 = 0.0;
              v87 = 0.0;
            }

            else
            {
              v86 = (p_height + 32 * v77);
              v87 = 0.0;
              v88 = v77;
              v89 = 0.0;
              do
              {
                v90 = v86;
                if (v72)
                {
                  v90 = &v57[v88 % v19];
                }

                v87 = v87 + *v90;
                v89 = fmax(v89, *(v86 - 1));
                ++v88;
                v86 += 4;
              }

              while (v88 < v85);
            }

            v91 = v75 + v79;
            v92 = v24;
            if (!v72)
            {
              v92 = 0.0;
              if (v80 > 1)
              {
                break;
              }
            }

            v93 = v66;
            if (v80 >= 1)
            {
              goto LABEL_93;
            }

LABEL_99:
            v68 = fmax(v68, v93 - v66);
            v75 = v91 + v89;
            v77 = v85;
            if (v85 >= v69)
            {
              v98 = *p_x;
              goto LABEL_102;
            }
          }

          v92 = floor((v65 - v87) / (v80 - 1));
LABEL_93:
          v94 = (p_height + 32 * v77);
          v95 = v77;
          v93 = v66;
          do
          {
            if (v95 > v77)
            {
              v93 = v92 + v93;
            }

            v96 = v94;
            if (v72)
            {
              v96 = &v57[v95 % v19];
            }

            v97 = *v96;
            *(v94 - 3) = v91 + floor((v89 - *(v94 - 1)) * 0.5);
            *(v94 - 2) = v93;
            v93 = v93 + v97;
            ++v95;
            v94 += 4;
          }

          while (v95 < v85);
          goto LABEL_99;
        }

        v98 = v75;
LABEL_102:
        v99 = v110 - (v109 + v108);
        if (v75 >= v99 || v64 != v21 - 1)
        {
          v99 = v75;
        }

        v101 = p_x[2];
        v102 = v98 + v101;
        if (v102 > v99)
        {
          p_x[2] = v101 - (v102 - v99);
        }

        v67 = right + v75;
      }

      if (++v64 == count)
      {
        goto LABEL_113;
      }
    }
  }

  v68 = 0.0;
LABEL_113:
  if (v19 < 1)
  {
    v107 = 1;
    v105 = v126;
  }

  else
  {
    v103 = 0;
    v104 = 0.0;
    v105 = v126;
    while (1)
    {
      v106 = v103 ? v24 : 0.0;
      v104 = v104 + v106 + v57[v103];
      if (v104 >= v68)
      {
        break;
      }

      if (v19 == ++v103)
      {
        v103 = v19;
        break;
      }
    }

    v107 = v103 + 1;
  }

  free(v57);
  [(_TVShelfLayoutHelper *)self _freeBuffers];
  self->_sectionCount = count;
  self->_sectionOffsets = v119;
  self->_cellFrames = v111;
  self->_headerFrames = v118;
  self->_sectionInsets = v117;
  self->_actualRowCount = v107;
  self->_tallestInsetTop = v124;
  self->_tallestInsetBottom = v122;
  self->_tallestHeaderHeight = v125;
  self->_tallestColumnHeight = v68;
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

- (_TVShelfViewLayout)shelfViewLayout
{
  WeakRetained = objc_loadWeakRetained(&self->_shelfViewLayout);

  return WeakRetained;
}

@end