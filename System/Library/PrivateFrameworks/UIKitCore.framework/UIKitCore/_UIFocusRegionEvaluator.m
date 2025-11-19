@interface _UIFocusRegionEvaluator
+ (CGRect)frameForRegion:(id)a3 inCoordinateSpace:(id)a4;
+ (id)__regionsByEvaluatingOcclusionsForBaseRegions:(id)a3 occludingRegions:(id)a4 baseRegionsCanOccludeEachOther:(BOOL)a5 inSnapshot:(id)a6;
+ (id)_visibleSubregionsWhenRegion:(id)a3 occludedByRegion:(id)a4 inSnapshot:(id)a5;
+ (id)regionsByEvaluatingOcclusionsForRegions:(id)a3 inSnapshot:(id)a4;
+ (id)regionsByOccludingRegions:(id)a3 beneathRegions:(id)a4 inSnapshot:(id)a5;
+ (id)subregionFromRegion:(id)a3 withSnapshotFrame:(CGRect)a4 inSnapshot:(id)a5;
@end

@implementation _UIFocusRegionEvaluator

+ (id)subregionFromRegion:(id)a3 withSnapshotFrame:(CGRect)a4 inSnapshot:(id)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v12 = a3;
  v13 = a5;
  v14 = v13;
  if (v12)
  {
    if (v13)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    [v18 handleFailureInMethod:a2 object:a1 file:@"_UIFocusRegionEvaluator.m" lineNumber:20 description:{@"Invalid parameter not satisfying: %@", @"region"}];

    if (v14)
    {
      goto LABEL_3;
    }
  }

  v19 = [MEMORY[0x1E696AAA8] currentHandler];
  [v19 handleFailureInMethod:a2 object:a1 file:@"_UIFocusRegionEvaluator.m" lineNumber:21 description:{@"Invalid parameter not satisfying: %@", @"snapshot"}];

LABEL_3:
  v15 = [v14 coordinateSpace];
  v16 = [v12 _focusRegionWithAdjustedFrame:v15 coordinateSpace:{x, y, width, height}];

  [v14 _trackSubregion:v16 forRegion:v12];

  return v16;
}

+ (CGRect)frameForRegion:(id)a3 inCoordinateSpace:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (!v7)
  {
    v27 = [MEMORY[0x1E696AAA8] currentHandler];
    [v27 handleFailureInMethod:a2 object:a1 file:@"_UIFocusRegionEvaluator.m" lineNumber:30 description:{@"Invalid parameter not satisfying: %@", @"region"}];

    if (v9)
    {
      goto LABEL_3;
    }

LABEL_8:
    v28 = [MEMORY[0x1E696AAA8] currentHandler];
    [v28 handleFailureInMethod:a2 object:a1 file:@"_UIFocusRegionEvaluator.m" lineNumber:31 description:{@"Invalid parameter not satisfying: %@", @"coordinateSpace"}];

    goto LABEL_3;
  }

  if (!v8)
  {
    goto LABEL_8;
  }

LABEL_3:
  v10 = [v7 regionCoordinateSpace];
  [v7 regionFrame];
  v15 = v11;
  v16 = v12;
  v17 = v13;
  v18 = v14;
  if (v10 && v10 != v9)
  {
    [v9 convertRect:v10 fromCoordinateSpace:{v11, v12, v13, v14}];
    v15 = v19;
    v16 = v20;
    v17 = v21;
    v18 = v22;
  }

  v23 = v15;
  v24 = v16;
  v25 = v17;
  v26 = v18;
  result.size.height = v26;
  result.size.width = v25;
  result.origin.y = v24;
  result.origin.x = v23;
  return result;
}

+ (id)_visibleSubregionsWhenRegion:(id)a3 occludedByRegion:(id)a4 inSnapshot:(id)a5
{
  v88[1] = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (v9)
  {
    if (v10)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v58 = [MEMORY[0x1E696AAA8] currentHandler];
    [v58 handleFailureInMethod:a2 object:a1 file:@"_UIFocusRegionEvaluator.m" lineNumber:48 description:{@"Invalid parameter not satisfying: %@", @"occludedRegion"}];

    if (v10)
    {
      goto LABEL_3;
    }
  }

  v59 = [MEMORY[0x1E696AAA8] currentHandler];
  [v59 handleFailureInMethod:a2 object:a1 file:@"_UIFocusRegionEvaluator.m" lineNumber:49 description:{@"Invalid parameter not satisfying: %@", @"occludingRegion"}];

LABEL_3:
  if (v9 == v10)
  {
    v60 = [MEMORY[0x1E696AAA8] currentHandler];
    [v60 handleFailureInMethod:a2 object:a1 file:@"_UIFocusRegionEvaluator.m" lineNumber:50 description:{@"Invalid parameter not satisfying: %@", @"occludedRegion != occludingRegion"}];

    if (v11)
    {
      goto LABEL_5;
    }
  }

  else if (v11)
  {
    goto LABEL_5;
  }

  v61 = [MEMORY[0x1E696AAA8] currentHandler];
  [v61 handleFailureInMethod:a2 object:a1 file:@"_UIFocusRegionEvaluator.m" lineNumber:51 description:{@"Invalid parameter not satisfying: %@", @"snapshot"}];

LABEL_5:
  [v11 snapshotFrameForRegion:v9];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  [v11 snapshotFrameForRegion:v10];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v90.origin.x = v13;
  v86 = v17;
  v87 = v15;
  v90.origin.y = v15;
  v90.size.width = v17;
  rect = v19;
  v90.size.height = v19;
  if (CGRectIsNull(v90) || (v91.origin.x = v21, v91.origin.y = v23, v91.size.width = v25, v91.size.height = v27, CGRectIsNull(v91)) || ((v76 = v13, v92.origin.x = v13, v92.size.width = v17, v92.origin.y = v15, v92.size.height = v19, v93 = CGRectStandardize(v92), v28 = v93.origin.x, v29 = v93.origin.y, v30 = v93.size.width, v31 = v93.size.height, v70 = v23, v72 = v21, v93.origin.x = v21, v93.origin.y = v23, v74 = v25, v93.size.width = v25, v93.size.height = v27, v94 = CGRectStandardize(v93), v32 = v94.origin.x, v33 = v94.origin.y, v34 = v94.size.width, v35 = v94.size.height, v80 = v29, v82 = v28, v94.origin.x = v28, v94.origin.y = v29, v78 = v30, v94.size.width = v30, v36 = v31, v37 = v32, v94.size.height = v36, v38 = CGRectGetMinX(v94) + 0.0001, v95.origin.x = v37, v95.origin.y = v33, v95.size.width = v34, v95.size.height = v35, v38 <= CGRectGetMaxX(v95)) ? (v96.origin.y = v80, v96.origin.x = v28, v96.size.width = v78, v96.size.height = v36, v40 = CGRectGetMaxX(v96) + -0.0001, v97.origin.x = v37, v97.origin.y = v33, v97.size.width = v34, v97.size.height = v35, v39 = v40 >= CGRectGetMinX(v97)) : (v39 = 0), (v98.origin.y = v80, v98.origin.x = v28, v98.size.width = v78, v98.size.height = v36, v41 = CGRectGetMinY(v98) + 0.0001, v99.origin.x = v37, v99.origin.y = v33, v99.size.width = v34, v99.size.height = v35, v41 > CGRectGetMaxY(v99)) || ((v100.origin.y = v80, v100.origin.x = v82, v100.size.width = v78, v100.size.height = v36, v42 = CGRectGetMaxY(v100) + -0.0001, v101.origin.x = v37, v101.origin.y = v33, v101.size.width = v34, v101.size.height = v35, v42 >= CGRectGetMinY(v101)) ? (v43 = v39) : (v43 = 0), !v43)))
  {
    v88[0] = v9;
    v44 = [MEMORY[0x1E695DEC8] arrayWithObjects:v88 count:1];
  }

  else
  {
    v44 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v102.origin.x = v76;
    v102.origin.y = v87;
    v102.size.width = v86;
    v102.size.height = rect;
    v122.origin.y = v70;
    v122.origin.x = v72;
    v122.size.width = v74;
    v122.size.height = v27;
    v103 = CGRectIntersection(v102, v122);
    x = v103.origin.x;
    y = v103.origin.y;
    width = v103.size.width;
    height = v103.size.height;
    v123.origin.x = v76;
    v123.origin.y = v87;
    v123.size.width = v86;
    v123.size.height = rect;
    if (!CGRectEqualToRect(v103, v123))
    {
      v104.origin.x = x;
      v104.origin.y = y;
      v104.size.width = width;
      v104.size.height = height;
      MinX = CGRectGetMinX(v104);
      v105.origin.x = v76;
      v105.origin.y = v87;
      v105.size.width = v86;
      v105.size.height = rect;
      MinY = CGRectGetMinY(v105);
      v106.origin.x = x;
      v106.origin.y = y;
      v106.size.width = width;
      v106.size.height = height;
      v77 = CGRectGetWidth(v106);
      v107.origin.x = x;
      v107.origin.y = y;
      v107.size.width = width;
      v107.size.height = height;
      v71 = CGRectGetMinY(v107);
      v108.origin.x = v76;
      v108.origin.y = v87;
      v108.size.width = v86;
      v108.size.height = rect;
      v68 = CGRectGetMinY(v108);
      v109.origin.x = x;
      v109.origin.y = y;
      v109.size.width = width;
      v109.size.height = height;
      v49 = CGRectGetMinX(v109);
      v110.size.height = rect;
      v83 = v49;
      v110.origin.x = v76;
      v110.origin.y = v87;
      v110.size.width = v86;
      v81 = v83 - CGRectGetMinX(v110);
      v111.origin.x = v76;
      v111.origin.y = v87;
      v111.size.width = v86;
      v111.size.height = rect;
      v79 = CGRectGetHeight(v111);
      v112.origin.x = x;
      v112.origin.y = y;
      v112.size.width = width;
      v112.size.height = height;
      v67 = CGRectGetMinX(v112);
      v113.origin.x = x;
      v113.origin.y = y;
      v113.size.width = width;
      v113.size.height = height;
      MaxY = CGRectGetMaxY(v113);
      v114.origin.x = x;
      v114.origin.y = y;
      v114.size.width = width;
      v114.size.height = height;
      v84 = CGRectGetWidth(v114);
      v115.origin.x = v76;
      v115.origin.y = v87;
      v115.size.width = v86;
      v115.size.height = rect;
      v73 = CGRectGetMaxY(v115);
      v116.origin.x = x;
      v116.origin.y = y;
      v116.size.width = width;
      v116.size.height = height;
      v69 = CGRectGetMaxY(v116);
      v117.origin.x = x;
      v117.origin.y = y;
      v117.size.width = width;
      v117.size.height = height;
      MaxX = CGRectGetMaxX(v117);
      v118.origin.x = v76;
      v118.origin.y = v87;
      v118.size.width = v86;
      v118.size.height = rect;
      v62 = CGRectGetMinY(v118);
      v119.origin.x = v76;
      v119.origin.y = v87;
      v119.size.width = v86;
      v119.size.height = rect;
      v75 = CGRectGetMaxX(v119);
      v120.origin.x = x;
      v120.origin.y = y;
      v120.size.width = width;
      v120.size.height = height;
      v50 = CGRectGetMaxX(v120);
      v121.origin.x = v76;
      v121.origin.y = v87;
      v121.size.width = v86;
      v121.size.height = rect;
      v51 = CGRectGetHeight(v121);
      if (v77 > 0.0 && v71 - v68 > 0.0)
      {
        v52 = [a1 subregionFromRegion:v9 withSnapshotFrame:v11 inSnapshot:{MinX, MinY, v77, v71 - v68}];
        [v44 addObject:v52];
      }

      if (v81 > 0.0 && v79 > 0.0)
      {
        v53 = [a1 subregionFromRegion:v9 withSnapshotFrame:v11 inSnapshot:{v76, v87, v81, v79}];
        [v44 addObject:v53];
      }

      v54 = v75 - v50;
      if (v84 > 0.0 && v73 - v69 > 0.0)
      {
        v55 = [a1 subregionFromRegion:v9 withSnapshotFrame:v11 inSnapshot:{v67, MaxY, v84, v73 - v69}];
        [v44 addObject:v55];
      }

      if (v54 > 0.0 && v51 > 0.0)
      {
        v56 = [a1 subregionFromRegion:v9 withSnapshotFrame:v11 inSnapshot:{MaxX, v62, v54, v51}];
        [v44 addObject:v56];
      }
    }

    [v11 _trackOccludingRegion:v10 forRegion:v9];
  }

  return v44;
}

+ (id)__regionsByEvaluatingOcclusionsForBaseRegions:(id)a3 occludingRegions:(id)a4 baseRegionsCanOccludeEachOther:(BOOL)a5 inSnapshot:(id)a6
{
  v7 = a5;
  v66 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  if (!v11)
  {
    [MEMORY[0x1E696AAA8] currentHandler];
    v46 = v45 = v10;
    [v46 handleFailureInMethod:a2 object:a1 file:@"_UIFocusRegionEvaluator.m" lineNumber:145 description:{@"Invalid parameter not satisfying: %@", @"occludingRegions"}];

    v10 = v45;
  }

  v47 = v10;
  if (v10)
  {
    v13 = [v10 count];
    v14 = v10;
    if (v13)
    {
      if ([v10 count] != 1 || (v15 = objc_msgSend(v11, "count"), v14 = v10, v15))
      {
        v16 = [MEMORY[0x1E695DF70] array];
        v17 = v10;
        v18 = v16;
        v60 = 0u;
        v61 = 0u;
        v62 = 0u;
        v63 = 0u;
        obj = [v17 reverseObjectEnumerator];
        v51 = [obj countByEnumeratingWithState:&v60 objects:v65 count:16];
        if (!v51)
        {
          goto LABEL_42;
        }

        v50 = *v61;
        v49 = !v7;
        while (1)
        {
          for (i = 0; i != v51; ++i)
          {
            if (*v61 != v50)
            {
              objc_enumerationMutation(obj);
            }

            v54 = *(*(&v60 + 1) + 8 * i);
            v20 = [v11 count];
            if (!v20)
            {
              v36 = 0;
LABEL_36:
              [v18 insertObject:v54 atIndex:0];
              v39 = 0;
              goto LABEL_37;
            }

            v21 = v20;
            v52 = i;
            v22 = 0;
            v55 = 0;
            v23 = 0;
            while (!v22)
            {
              v24 = v54;
LABEL_18:
              v25 = v24;
              v26 = [v11 objectAtIndex:v23];
              v27 = [v12 originalRegionForRegion:v25];
              v28 = [v12 originalRegionForRegion:v26];
              if ([v25 _canBeOccludedByRegionsAbove] && v27 != v28)
              {
                v29 = [a1 _visibleSubregionsWhenRegion:v25 occludedByRegion:v26 inSnapshot:v12];
                v30 = v22;
                v31 = v21;
                v32 = v12;
                v33 = v11;
                v34 = v29;

                v55 = [v34 count] == 0;
                v35 = v34;
                v11 = v33;
                v12 = v32;
                v21 = v31;
                v22 = v35;
              }

              ++v23;

              if (v21 == v23)
              {
                goto LABEL_27;
              }
            }

            if ([v22 count] == 1)
            {
              v24 = [v22 firstObject];
              goto LABEL_18;
            }

            if (v55)
            {
              v36 = 1;
              i = v52;
              goto LABEL_28;
            }

            v37 = [v11 mutableCopy];
            [v37 removeObjectsInRange:{0, v23}];
            v38 = [a1 __regionsByEvaluatingOcclusionsForBaseRegions:v22 occludingRegions:v37 baseRegionsCanOccludeEachOther:0 inSnapshot:v12];

            v55 = 0;
            v22 = v38;
LABEL_27:
            i = v52;
            v36 = v55;
            if (!v22)
            {
              goto LABEL_36;
            }

LABEL_28:
            v58 = 0u;
            v59 = 0u;
            v56 = 0u;
            v57 = 0u;
            v39 = v22;
            v40 = [v39 countByEnumeratingWithState:&v56 objects:v64 count:16];
            if (v40)
            {
              v41 = v40;
              v42 = *v57;
              do
              {
                for (j = 0; j != v41; ++j)
                {
                  if (*v57 != v42)
                  {
                    objc_enumerationMutation(v39);
                  }

                  [v18 insertObject:*(*(&v56 + 1) + 8 * j) atIndex:0];
                }

                v41 = [v39 countByEnumeratingWithState:&v56 objects:v64 count:16];
              }

              while (v41);
            }

LABEL_37:
            if (((v49 | v36) & 1) == 0 && [v54 _canOccludeRegionsBelow])
            {
              [v11 insertObject:v54 atIndex:0];
            }
          }

          v51 = [obj countByEnumeratingWithState:&v60 objects:v65 count:16];
          if (!v51)
          {
LABEL_42:

            goto LABEL_45;
          }
        }
      }
    }
  }

  else
  {
    v14 = MEMORY[0x1E695E0F0];
  }

  v18 = v14;
LABEL_45:

  return v18;
}

+ (id)regionsByEvaluatingOcclusionsForRegions:(id)a3 inSnapshot:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:a1 file:@"_UIFocusRegionEvaluator.m" lineNumber:212 description:{@"Invalid parameter not satisfying: %@", @"regions"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  v14 = [MEMORY[0x1E696AAA8] currentHandler];
  [v14 handleFailureInMethod:a2 object:a1 file:@"_UIFocusRegionEvaluator.m" lineNumber:213 description:{@"Invalid parameter not satisfying: %@", @"snapshot"}];

LABEL_3:
  v10 = [MEMORY[0x1E695DF70] array];
  v11 = [a1 __regionsByEvaluatingOcclusionsForBaseRegions:v7 occludingRegions:v10 baseRegionsCanOccludeEachOther:1 inSnapshot:v9];

  return v11;
}

+ (id)regionsByOccludingRegions:(id)a3 beneathRegions:(id)a4 inSnapshot:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (v9)
  {
    if (v10)
    {
      goto LABEL_3;
    }

LABEL_8:
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:a1 file:@"_UIFocusRegionEvaluator.m" lineNumber:222 description:{@"Invalid parameter not satisfying: %@", @"occludingRegions"}];

    if (v11)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  v15 = [MEMORY[0x1E696AAA8] currentHandler];
  [v15 handleFailureInMethod:a2 object:a1 file:@"_UIFocusRegionEvaluator.m" lineNumber:221 description:{@"Invalid parameter not satisfying: %@", @"regions"}];

  if (!v10)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (v11)
  {
    goto LABEL_4;
  }

LABEL_9:
  v17 = [MEMORY[0x1E696AAA8] currentHandler];
  [v17 handleFailureInMethod:a2 object:a1 file:@"_UIFocusRegionEvaluator.m" lineNumber:223 description:{@"Invalid parameter not satisfying: %@", @"snapshot"}];

LABEL_4:
  v12 = [v10 mutableCopy];
  v13 = [a1 __regionsByEvaluatingOcclusionsForBaseRegions:v9 occludingRegions:v12 baseRegionsCanOccludeEachOther:0 inSnapshot:v11];

  return v13;
}

@end