@interface _UICollectionViewDataAttributesMap
- (__n128)indexesOfItemsInRect:(float64_t)a3;
- (void)_setItemAttributes:(uint64_t)a3 forGlobalItemIndex:;
- (void)_validateLayoutInRect:(CGFloat)a3;
- (void)initWithCollectionViewData:(void *)a1;
- (void)invalidate;
- (void)pageInLayoutAttributes:(uint64_t)a3 forGlobalItemIndex:;
@end

@implementation _UICollectionViewDataAttributesMap

- (void)invalidate
{
  if (a1)
  {
    v2 = objc_alloc_init(_UICollectionViewRTree);
    v3 = *(a1 + 8);
    *(a1 + 8) = v2;

    v4 = *(MEMORY[0x1E695F058] + 16);
    *(a1 + 48) = *MEMORY[0x1E695F058];
    *(a1 + 64) = v4;
    v5 = *(a1 + 32);
    *(a1 + 32) = 0;

    objc_storeStrong((a1 + 24), *(a1 + 32));
    v6 = *(a1 + 24);

    objc_storeStrong((a1 + 16), v6);
  }
}

- (void)initWithCollectionViewData:(void *)a1
{
  if (!a1)
  {
    return 0;
  }

  v8.receiver = a1;
  v8.super_class = _UICollectionViewDataAttributesMap;
  v3 = objc_msgSendSuper2(&v8, sel_init);
  v4 = v3;
  if (v3)
  {
    v3[5] = a2;
    v5 = objc_alloc_init(_UICollectionViewRTree);
    v6 = v4[1];
    v4[1] = v5;
  }

  return v4;
}

- (void)_validateLayoutInRect:(CGFloat)a3
{
  v110 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v10 = *(a1 + 48);
    v11 = *(a1 + 56);
    v13 = *(a1 + 64);
    v12 = *(a1 + 72);
    v111.origin.x = v10;
    v111.origin.y = v11;
    v111.size.width = v13;
    v111.size.height = v12;
    v133.origin.x = a2;
    v133.origin.y = a3;
    v133.size.width = a4;
    v133.size.height = a5;
    if (CGRectContainsRect(v111, v133))
    {
      CategoryCachedImpl = __UILogGetCategoryCachedImpl("UICollectionViewAttrMap", &_MergedGlobals_1258);
      if ((*CategoryCachedImpl & 1) == 0)
      {
        return;
      }

      v15 = *(CategoryCachedImpl + 8);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v112.origin.x = a2;
        v112.origin.y = a3;
        v112.size.width = a4;
        v112.size.height = a5;
        v16 = NSStringFromCGRect(v112);
        v113.origin.x = v10;
        v113.origin.y = v11;
        v113.size.width = v13;
        v113.size.height = v12;
        v17 = NSStringFromCGRect(v113);
        *buf = 134218498;
        *&buf[4] = a1;
        v102 = 2112;
        v103 = v16;
        v104 = 2112;
        v105 = v17;
        _os_log_impl(&dword_188A29000, v15, OS_LOG_TYPE_ERROR, "_rTreeValidate: map: %p; returning early because query rect is within valid rect. query: %@. validRect: %@", buf, 0x20u);
      }

      goto LABEL_75;
    }

    v18 = *(a1 + 40);
    v15 = v18;
    if (!v18)
    {
LABEL_75:

      return;
    }

    *rect = v10;
    WeakRetained = objc_loadWeakRetained(v18 + 1);
    v20 = WeakRetained;
    if (!WeakRetained)
    {
      goto LABEL_74;
    }

    v84 = WeakRetained;
    [WeakRetained _visibleBounds];
    v83 = v21;
    v23 = v22;
    v24 = *(a1 + 40);
    v89 = v11;
    v90 = v12;
    v88 = v13;
    v82 = v23;
    if (v23 > 0.0 && ((IsValid = CGFloatIsValid(), v83 > 0.0) ? (v26 = IsValid) : (v26 = 0), v26 == 1 && (CGFloatIsValid() & 1) != 0))
    {
      [(UICollectionViewData *)v24 _validateContentSize];
      if (v24)
      {
        v27 = v24[10];
        v28 = v24[11];
      }

      else
      {
        v28 = 0.0;
        v27 = 0.0;
      }

      v92 = v27;
      v114.origin.x = a2;
      v114.origin.y = a3;
      v114.size.width = a4;
      v114.size.height = a5;
      MinX = CGRectGetMinX(v114);
      v115.origin.x = v82 * floor(a2 / v82);
      rect[1] = *&v115.origin.x;
      v115.origin.y = a3;
      v115.size.width = a4;
      v115.size.height = a5;
      v30 = v82 * ceil((a4 + MinX - CGRectGetMinX(v115)) / v82);
      *&v116.origin.x = rect[1];
      v116.origin.y = a3;
      v116.size.width = v30;
      v116.size.height = a5;
      if (CGRectGetMaxX(v116) > v92 && (dyld_program_sdk_at_least() & 1) == 0)
      {
        *&v117.origin.x = rect[1];
        v117.origin.y = a3;
        v117.size.width = v30;
        v117.size.height = a5;
        v30 = v30 - (CGRectGetMaxX(v117) - v92);
      }

      v118.origin.x = a2;
      v118.origin.y = a3;
      v118.size.width = a4;
      v118.size.height = a5;
      MinY = CGRectGetMinY(v118);
      v119.origin.y = v83 * floor(a3 / v83);
      *&v119.origin.x = rect[1];
      y = v119.origin.y;
      v119.size.width = v30;
      v119.size.height = a5;
      v31 = v83 * ceil((a5 + MinY - CGRectGetMinY(v119)) / v83);
      *&v120.origin.x = rect[1];
      v120.origin.y = y;
      v120.size.width = v30;
      v120.size.height = v31;
      if (CGRectGetMaxY(v120) <= v28 || (dyld_program_sdk_at_least() & 1) != 0)
      {
        v32 = v30;
        v33 = *&rect[1];
        v34 = v31;
      }

      else
      {
        *&v125.origin.x = rect[1];
        v125.origin.y = y;
        v125.size.width = v30;
        v125.size.height = v31;
        v34 = v31 - (CGRectGetMaxY(v125) - v28);
        v32 = v30;
        v33 = *&rect[1];
      }

      v35 = y;
    }

    else
    {
      v34 = a5;
      v32 = a4;
      v35 = a3;
      v33 = a2;
    }

    *&rect[1] = v33;
    v121.origin.x = v33;
    v121.origin.y = v35;
    v121.size.width = v32;
    v121.size.height = v34;
    IsEmpty = CGRectIsEmpty(v121);
    v37 = rect[0];
    v38 = v90;
    if (IsEmpty)
    {
      v40 = v88;
      v39 = v89;
      if (CGRectIsEmpty(*&v37))
      {
        v41 = __UILogGetCategoryCachedImpl("UICollectionViewAttrMap", &qword_1ED4A00C0);
        v20 = v84;
        if (*v41)
        {
          v42 = *(v41 + 8);
          if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
          {
            v122.origin.x = a2;
            v122.origin.y = a3;
            v122.size.width = a4;
            v122.size.height = a5;
            v43 = NSStringFromCGRect(v122);
            *&v123.origin.x = rect[0];
            v123.origin.y = v89;
            v123.size.width = v88;
            v123.size.height = v90;
            v44 = NSStringFromCGRect(v123);
            *buf = 134218498;
            *&buf[4] = a1;
            v102 = 2112;
            v103 = v43;
            v104 = 2112;
            v105 = v44;
            _os_log_impl(&dword_188A29000, v42, OS_LOG_TYPE_ERROR, "_rTreeValidate: map: %p; returning early because query & currently valid rects are both empty. queryRect: %@. validRect: %@", buf, 0x20u);
          }

          goto LABEL_73;
        }

LABEL_74:

        goto LABEL_75;
      }
    }

    v45 = v32;
    *&v134.origin.x = rect[1];
    v46 = v35;
    v134.origin.y = v35;
    v134.size.width = v45;
    v134.size.height = v34;
    v124 = CGRectUnion(*(a1 + 48), v134);
    v85 = v124.origin.y;
    x = v124.origin.x;
    height = v124.size.height;
    width = v124.size.width;
    *&v124.origin.x = rect[1];
    v124.origin.y = v35;
    v124.size.width = v45;
    v124.size.height = v34;
    *&v135.origin.x = rect[0];
    v135.origin.y = v89;
    v135.size.width = v88;
    v135.size.height = v90;
    if (CGRectIntersectsRect(v124, v135) && (width != v88 ? (v47 = height == v90) : (v47 = 1), v47 && (height <= v83 * 5.0 ? (v48 = width > v82 * 5.0) : (v48 = 1), !v48)))
    {
      v49 = __UILogGetCategoryCachedImpl("UICollectionViewAttrMap", &qword_1ED4A00C8);
      if (*v49)
      {
        v77 = *(v49 + 8);
        if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
        {
          v129.origin.x = a2;
          v129.origin.y = a3;
          v129.size.width = a4;
          v129.size.height = a5;
          v78 = NSStringFromCGRect(v129);
          *&v130.origin.x = rect[1];
          v130.size.height = v34;
          v130.origin.y = v35;
          v130.size.width = v45;
          v79 = NSStringFromCGRect(v130);
          *&v131.origin.x = rect[0];
          v131.size.width = v88;
          v131.origin.y = v89;
          v131.size.height = v90;
          v80 = NSStringFromCGRect(v131);
          v132.origin.y = v85;
          v132.origin.x = x;
          v132.size.height = height;
          v132.size.width = width;
          v81 = NSStringFromCGRect(v132);
          *buf = 134219010;
          *&buf[4] = a1;
          v102 = 2112;
          v103 = v78;
          v104 = 2112;
          v105 = v79;
          v106 = 2112;
          v107 = v80;
          v108 = 2112;
          v109 = v81;
          _os_log_impl(&dword_188A29000, v77, OS_LOG_TYPE_ERROR, "_rTreeValidate: map: %p; for query: %@, fault rect (%@) intersects with valid rect (%@). Using union (%@)", buf, 0x34u);
        }

        v46 = v35;
      }

      if (dyld_program_sdk_at_least())
      {
        *&v50.f64[0] = rect[1];
        v51.f64[0] = v45;
        [(_UICollectionViewRTree *)*(a1 + 8) removeAttributesWithFramesIntersectingFrame:v50, v46, v51, v34];
      }
    }

    else
    {
      v52 = __UILogGetCategoryCachedImpl("UICollectionViewAttrMap", &qword_1ED4A00D0);
      if (*v52)
      {
        v73 = *(v52 + 8);
        if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
        {
          v126.origin.x = a2;
          v126.origin.y = a3;
          v126.size.width = a4;
          v126.size.height = a5;
          v74 = NSStringFromCGRect(v126);
          *&v127.origin.x = rect[0];
          v127.size.width = v88;
          v127.origin.y = v89;
          v127.size.height = v90;
          v75 = NSStringFromCGRect(v127);
          *&v128.origin.x = rect[1];
          v128.size.height = v34;
          v128.origin.y = v35;
          v128.size.width = v45;
          v76 = NSStringFromCGRect(v128);
          *buf = 134218754;
          *&buf[4] = a1;
          v102 = 2112;
          v103 = v74;
          v104 = 2112;
          v105 = v75;
          v106 = 2112;
          v107 = v76;
          _os_log_impl(&dword_188A29000, v73, OS_LOG_TYPE_ERROR, "_rTreeValidate: map: %p; Reinitialising rTree for query: %@; currentValidLayoutRect: %@; fault rect: %@.", buf, 0x2Au);

          v46 = v35;
        }
      }

      v53 = objc_alloc_init(_UICollectionViewRTree);
      v54 = *(a1 + 8);
      *(a1 + 8) = v53;

      v85 = v46;
      x = *&rect[1];
      height = v34;
      width = v45;
    }

    *(a1 + 48) = x;
    *(a1 + 56) = v85;
    *(a1 + 64) = width;
    *(a1 + 72) = height;
    [(UICollectionViewData *)v15 _layoutAttributesForElementsInRectForMapping:v46, v45, v34];
    v97 = 0u;
    v98 = 0u;
    *&rect[3] = 0u;
    v42 = v96 = 0u;
    v55 = [v42 countByEnumeratingWithState:&rect[3] objects:v100 count:16];
    if (!v55)
    {
LABEL_72:

      LOBYTE(v15[12].isa) &= ~1u;
LABEL_73:

      v20 = v84;
      goto LABEL_74;
    }

    v56 = *v96;
LABEL_45:
    v57 = 0;
    while (1)
    {
      if (*v96 != v56)
      {
        objc_enumerationMutation(v42);
      }

      v58 = *(rect[4] + 8 * v57);
      if (v58 && (v59 = *(v58 + 72), (v59 & 8) != 0))
      {
        v63 = 32;
        if ((v59 & 2) == 0)
        {
          v63 = 24;
        }

        if (v59)
        {
          v64 = 16;
        }

        else
        {
          v64 = v63;
        }

        v65 = *(a1 + v64);
        if (!v65)
        {
          v69 = [MEMORY[0x1E695DF70] arrayWithObject:*(rect[4] + 8 * v57)];
          v70 = *(a1 + v64);
          *(a1 + v64) = v69;
LABEL_69:

          goto LABEL_70;
        }

        [v65 addObject:*(rect[4] + 8 * v57)];
      }

      else
      {
        v60 = [(UICollectionViewLayoutAttributes *)*(rect[4] + 8 * v57) __indexPath];
        v61 = v60;
        if (v58 && (v58[288] & 1) != 0)
        {
          if (![(UICollectionViewData *)v15 _isIndexPathValid:v60 validateItemCounts:0])
          {
            v70 = *(__UILogGetCategoryCachedImpl("CollectionView", &qword_1ED4A00D8) + 8);
            if (!os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_69;
            }

LABEL_68:
            v71 = v15[2].isa;
            v72 = [(UICollectionViewData *)v15 dataSourceCountsDescription];
            *buf = 138412802;
            *&buf[4] = v58;
            v102 = 2112;
            v103 = v71;
            v104 = 2112;
            v105 = v72;
            _os_log_impl(&dword_188A29000, v70, OS_LOG_TYPE_ERROR, "Received layout attributes with an invalid index path. Attributes will be ignored. Attributes: %@; layout: %@; data source counts: %@", buf, 0x20u);

            goto LABEL_69;
          }

          *buf = 0;
          v99 = 0;
          [v61 ui_getSectionIndex:buf itemIndex:&v99];
          v66 = [(UICollectionViewData *)v15 numberOfItemsBeforeSection:?];
          v67 = v99;
          [(_UICollectionViewDataAttributesMap *)a1 _setItemAttributes:v58 forGlobalItemIndex:v99 + v66];
          [(UICollectionViewData *)v15 _attributesMapDidPageInAttributes:v58 globalItemIndex:v67 + v66, v68];
        }

        else
        {
          if ([v60 section] >= (v15[14].isa - v15[13].isa) >> 3 && objc_msgSend(v61, "item") != 0x7FFFFFFFFFFFFFFFLL)
          {
            v70 = *(__UILogGetCategoryCachedImpl("CollectionView", &unk_1ED4A00E0) + 8);
            if (!os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_69;
            }

            goto LABEL_68;
          }

          [(UICollectionViewData *)v15 _attributesMapDidPageInAttributes:v58 globalItemIndex:0x7FFFFFFFFFFFFFFFuLL, v62];
        }
      }

LABEL_70:
      if (v55 == ++v57)
      {
        v55 = [v42 countByEnumeratingWithState:&rect[3] objects:v100 count:16];
        if (!v55)
        {
          goto LABEL_72;
        }

        goto LABEL_45;
      }
    }
  }
}

- (__n128)indexesOfItemsInRect:(float64_t)a3
{
  v5 = a1;
  if (a1)
  {
    if (CGRectIsNull(*&a2) || (v30.origin.x = a2, v30.origin.y = a3, v30.size.width = a4, v30.size.height = a5, CGRectIsEmpty(v30)) || (v31.origin.x = a2, v31.origin.y = a3, v31.size.width = a4, v31.size.height = a5, CGRectIsInfinite(v31)))
    {
      v5 = +[_UIFastIndexSet indexSet];
    }

    else
    {
      v11 = +[_UIMutableFastIndexSet indexSet];
      v25 = 0;
      v26 = &v25;
      v27 = 0x2020000000;
      v28 = 0x7FFFFFFFFFFFFFFFLL;
      v21 = 0;
      v22 = &v21;
      v23 = 0x2020000000;
      v24 = 0x7FFFFFFFFFFFFFFFLL;
      v12 = v5->n128_i64[1];
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __59___UICollectionViewDataAttributesMap_indexesOfItemsInRect___block_invoke;
      v17[3] = &unk_1E711EB40;
      v19 = &v21;
      v20 = &v25;
      v5 = v11;
      v18 = v5;
      v13.f64[0] = a2;
      v14.f64[0] = a4;
      [(_UICollectionViewRTree *)v12 enumerateAttributesWithFramesIntersectingFrame:v17 withBlock:v13, a3, v14, a5];
      v16 = v26[3];
      if (v16 != 0x7FFFFFFFFFFFFFFFLL)
      {
        [(_UIMutableFastIndexSet *)v5 addIndexesInRange:v16, v22[3] - v16, v15];
      }

      _Block_object_dispose(&v21, 8);
      _Block_object_dispose(&v25, 8);
    }
  }

  return v5;
}

- (void)pageInLayoutAttributes:(uint64_t)a3 forGlobalItemIndex:
{
  if (a1)
  {
    if (!a2)
    {
      v6 = [MEMORY[0x1E696AAA8] currentHandler];
      [v6 handleFailureInMethod:sel_pageInLayoutAttributes_forGlobalItemIndex_ object:a1 file:@"_UICollectionViewDataAttributesMap.mm" lineNumber:93 description:{@"Invalid parameter not satisfying: %@", @"layoutAttributes != nil"}];
    }

    [(_UICollectionViewDataAttributesMap *)a1 _setItemAttributes:a2 forGlobalItemIndex:a3];
  }
}

- (void)_setItemAttributes:(uint64_t)a3 forGlobalItemIndex:
{
  [a2 frame];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = *(a1 + 8);
  v18 = a3;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  LOBYTE(a3) = [(_UICollectionViewRTree *)v14 insertFrame:v6 forElement:v8, v10, v12];

  if ((a3 & 1) == 0)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    v23.origin.x = v7;
    v23.origin.y = v9;
    v23.size.width = v11;
    v23.size.height = v13;
    v16 = NSStringFromCGRect(v23);
    v17 = [(_UIHomeAffordanceObservationRecord *)*(a1 + 40) observer];
    [v15 handleFailureInMethod:sel__setItemAttributes_forGlobalItemIndex_ object:a1 file:@"_UICollectionViewDataAttributesMap.mm" lineNumber:104 description:{@"UICollectionView received layout attributes with invalid frame (%@). Layout attributes: %@. Collection view: %@.", v16, a2, v17}];
  }
}

@end