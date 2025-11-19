@interface CRLayoutList
+ (id)_groupGeometryInfoForGroup:(id)a3;
+ (id)listsWithRegionGroups:(id)a3;
- (CRLayoutList)initWithItems:(id)a3 layoutDirection:(unint64_t)a4;
@end

@implementation CRLayoutList

- (CRLayoutList)initWithItems:(id)a3 layoutDirection:(unint64_t)a4
{
  v6 = a3;
  v10.receiver = self;
  v10.super_class = CRLayoutList;
  v7 = [(CRLayoutList *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(CRLayoutList *)v7 setItems:v6];
    v8->_layoutDirection = a4;
  }

  return v8;
}

+ (id)listsWithRegionGroups:(id)a3
{
  v134 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v111 = objc_opt_new();
  v4 = objc_opt_new();
  v129 = 0u;
  v130 = 0u;
  v131 = 0u;
  v132 = 0u;
  obj = v3;
  v119 = [obj countByEnumeratingWithState:&v129 objects:v133 count:16];
  if (v119)
  {
    v5 = 0;
    v127 = 0;
    v128 = 0;
    v6 = 0;
    v125 = 0;
    v118 = 0;
    v115 = *v130;
    v7 = 0.0;
    v8 = 1.0;
    v126 = 1;
    v9 = 0.0;
    v120 = v4;
    while (1)
    {
      v10 = 0;
      v110 = v5;
      do
      {
        if (*v130 != v115)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v129 + 1) + 8 * v10);
        v12 = [a1 _groupGeometryInfoForGroup:v11];
        v13 = [[CRLayoutListItem alloc] initWithGroup:v11];
        if (!v128)
        {
          v128 = [v11 layoutDirection];
        }

        v14 = [v4 count];
        if (v13)
        {
          v15 = 1;
        }

        else
        {
          v15 = v14 == 0;
        }

        v16 = !v15;
        if (!v14)
        {
          LOBYTE(v16) = 0;
          v43 = 0;
          goto LABEL_66;
        }

        v17 = [(CRLayoutListItem *)v13 boundingQuad];
        [v17 baselineAngle];
        v19 = vabdd_f64(v18, v9);

        v20 = v6;
        v21 = [v125 firstSubregion];
        v22 = [v12 firstSubregion];
        v23 = [v21 mutualGeometryInfoWith:v22];

        v123 = v20;
        v24 = [v20 lastSubregion];
        v25 = v12;
        v26 = [v12 firstSubregion];
        v27 = [v24 mutualGeometryInfoWith:v26];

        [v23 leadingOffsetAlongBaseline];
        v29 = v28 / v7;
        [v27 leadingOffsetAlongBaseline];
        v31 = v30;
        v121 = v27;
        [v27 leadingOffsetAlongBaseline];
        v33 = v32;
        v34 = [v125 firstSubregion];
        [v34 estimatedLineHeight];
        v36 = v33 / v35;

        v37 = fabs(v29);
        v38 = v127;
        if (v37 >= v8)
        {
          v38 = v127 + 1;
        }

        v127 = v38;
        if (v37 < v8)
        {
          v39 = v126 + 1;
        }

        else
        {
          v39 = 1;
        }

        if (v13)
        {
          v113 = v19;
          v114 = v9;
          v117 = v39;
          v112 = v36;
          if (v118 == v125)
          {
            v12 = v25;
            v42 = v23;
          }

          else
          {
            v40 = [v118 firstSubregion];
            v12 = v25;
            v41 = [v25 firstSubregion];
            v42 = [v40 mutualGeometryInfoWith:v41];
          }

          v64 = v7;
          v65 = fabs(v31 / v7);
          [v23 leadingOffsetAlongBaseline];
          v67 = v66;
          v68 = [v12 firstSubregion];
          [v68 estimatedLineHeight];
          v70 = v69;

          [v42 leadingOffsetAlongBaseline];
          v122 = v71;
          v72 = [v12 firstSubregion];
          [v72 estimatedLineHeight];
          v74 = v73;

          v77 = v65 >= v8 && v127 != 0 && v126 < 2;
          v78 = [v120 lastObject];
          v79 = [v78 canBeSucceededByListItem:v13];

          v80 = [v11 layoutDirection];
          v81 = [v125 firstSubregion];
          [v81 estimatedLineHeight];
          v83 = v82;

          v84 = [v12 firstSubregion];
          [v84 estimatedLineHeight];
          v86 = v85;

          v87 = v86 / v83 > 1.5 || v83 / v86 > 1.5;
          v8 = 1.0;
          if (v65 < 1.0)
          {
            v88 = v67 / v70 > 8.0;
LABEL_53:
            v7 = v64;
            v89 = v112;
          }

          else
          {
            if (v37 > 2.0)
            {
              v88 = 1;
              goto LABEL_53;
            }

            v89 = v112;
            v88 = fabs(v122 / v74) >= 2.0 && v37 > 1.0;
            v7 = v64;
          }

          LOBYTE(v16) = 0;
          v90 = v113 > 0.34906585 || v77;
          v43 = v90 | (v87 || v88 || v89 > 4.0) | v79 ^ 1 | (v128 != v80);
          v9 = v114;
LABEL_64:

          v4 = v120;
          v39 = v117;
          goto LABEL_65;
        }

        if (v16)
        {
          v117 = v39;
          v44 = v37 < v8;
          v45 = [v125 firstSubregion];
          v12 = v25;
          v46 = [v25 lastSubregion];
          v42 = [v45 mutualGeometryInfoWith:v46];

          [v42 leadingOffsetAlongBaseline];
          v48 = v47;
          v49 = [v125 firstSubregion];
          [v49 estimatedLineHeight];
          v51 = v48 / v50;

          v52 = [v12 isCenterJustified];
          v53 = [v12 firstSubregion];
          [v53 estimatedLineHeight];
          v55 = v54;

          v56 = [v123 lastSubregion];
          [v56 estimatedLineHeight];
          v58 = v57;

          v59 = v55 / v58 >= 0.5;
          if (v55 / v58 > 1.5)
          {
            v59 = 0;
          }

          v60 = v51 >= 0.5;
          if (v51 > 8.0)
          {
            v60 = 0;
          }

          v61 = v44 & ~v52;
          if (v19 > 0.34906585)
          {
            v61 = 0;
          }

          v62 = v61 & (v59 && v60);
          if (v36 <= 3.0)
          {
            v16 = v62;
          }

          else
          {
            v16 = 0;
          }

          if (v16 == 1)
          {
            v63 = v12;

            v13 = [v120 lastObject];
            [(CRLayoutListItem *)v13 appendGroup:v11];
            [v120 removeLastObject];
            v43 = 0;
            v123 = v63;
          }

          else
          {
            v43 = 0;
            v13 = 0;
          }

          goto LABEL_64;
        }

        v43 = 0;
        v13 = 0;
        v4 = v120;
        v12 = v25;
LABEL_65:

        v126 = v39;
        v6 = v123;
LABEL_66:
        v91 = [obj count];
        v92 = [v4 count];
        if (v13)
        {
          v93 = v5 == v91 - 1;
        }

        else
        {
          v93 = 1;
        }

        v94 = v93;
        v95 = v94 | v43;
        if (v92)
        {
          v96 = v95;
        }

        else
        {
          v96 = 0;
        }

        if (v13)
        {
          if (v96 & 1 | (v5 == 0))
          {
            v97 = v12;

            [v97 size];
            v7 = v98;
            v126 = 1;
            v127 = 0;
            v118 = v97;
          }

          if ((v16 & 1) == 0)
          {
            v99 = v12;

            v125 = v99;
          }

          v100 = v12;

          v101 = [(CRLayoutListItem *)v13 boundingQuad];
          [v101 baselineAngle];
          v9 = v102;

          [v100 size];
          if (v103 > v7)
          {
            v7 = v103;
          }

          if ((v43 & 1) == 0)
          {
            [v4 addObject:v13];
          }

          v6 = v100;
        }

        if (v96)
        {
          if ([v4 count] >= 2)
          {
            v104 = [CRLayoutList alloc];
            v105 = v6;
            v106 = [v4 copy];
            v107 = [(CRLayoutList *)v104 initWithItems:v106 layoutDirection:v128];

            v6 = v105;
            [v111 addObject:v107];
          }

          [v4 removeAllObjects];
          v128 = 0;
        }

        if (v13 != 0 && (v43 & 1) != 0)
        {
          [v4 addObject:v13];
        }

        ++v5;

        ++v10;
      }

      while (v119 != v10);
      v5 = v119 + v110;
      v119 = [obj countByEnumeratingWithState:&v129 objects:v133 count:16];
      if (!v119)
      {
        goto LABEL_95;
      }
    }
  }

  v6 = 0;
  v125 = 0;
  v118 = 0;
LABEL_95:

  v108 = v111;
  return v111;
}

+ (id)_groupGeometryInfoForGroup:(id)a3
{
  v3 = a3;
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 geometryInfo];
  }

  else
  {
    v4 = [[CRRegionGroupGeometryInfo alloc] initFromRegionGroup:v3];
  }

  v5 = v4;

  return v5;
}

@end