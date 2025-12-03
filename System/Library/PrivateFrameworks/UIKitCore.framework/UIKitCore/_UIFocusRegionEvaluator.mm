@interface _UIFocusRegionEvaluator
+ (CGRect)frameForRegion:(id)region inCoordinateSpace:(id)space;
+ (id)__regionsByEvaluatingOcclusionsForBaseRegions:(id)regions occludingRegions:(id)occludingRegions baseRegionsCanOccludeEachOther:(BOOL)other inSnapshot:(id)snapshot;
+ (id)_visibleSubregionsWhenRegion:(id)region occludedByRegion:(id)byRegion inSnapshot:(id)snapshot;
+ (id)regionsByEvaluatingOcclusionsForRegions:(id)regions inSnapshot:(id)snapshot;
+ (id)regionsByOccludingRegions:(id)regions beneathRegions:(id)beneathRegions inSnapshot:(id)snapshot;
+ (id)subregionFromRegion:(id)region withSnapshotFrame:(CGRect)frame inSnapshot:(id)snapshot;
@end

@implementation _UIFocusRegionEvaluator

+ (id)subregionFromRegion:(id)region withSnapshotFrame:(CGRect)frame inSnapshot:(id)snapshot
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  regionCopy = region;
  snapshotCopy = snapshot;
  v14 = snapshotCopy;
  if (regionCopy)
  {
    if (snapshotCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIFocusRegionEvaluator.m" lineNumber:20 description:{@"Invalid parameter not satisfying: %@", @"region"}];

    if (v14)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"_UIFocusRegionEvaluator.m" lineNumber:21 description:{@"Invalid parameter not satisfying: %@", @"snapshot"}];

LABEL_3:
  coordinateSpace = [v14 coordinateSpace];
  v16 = [regionCopy _focusRegionWithAdjustedFrame:coordinateSpace coordinateSpace:{x, y, width, height}];

  [v14 _trackSubregion:v16 forRegion:regionCopy];

  return v16;
}

+ (CGRect)frameForRegion:(id)region inCoordinateSpace:(id)space
{
  regionCopy = region;
  spaceCopy = space;
  v9 = spaceCopy;
  if (!regionCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIFocusRegionEvaluator.m" lineNumber:30 description:{@"Invalid parameter not satisfying: %@", @"region"}];

    if (v9)
    {
      goto LABEL_3;
    }

LABEL_8:
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"_UIFocusRegionEvaluator.m" lineNumber:31 description:{@"Invalid parameter not satisfying: %@", @"coordinateSpace"}];

    goto LABEL_3;
  }

  if (!spaceCopy)
  {
    goto LABEL_8;
  }

LABEL_3:
  regionCoordinateSpace = [regionCopy regionCoordinateSpace];
  [regionCopy regionFrame];
  v15 = v11;
  v16 = v12;
  v17 = v13;
  v18 = v14;
  if (regionCoordinateSpace && regionCoordinateSpace != v9)
  {
    [v9 convertRect:regionCoordinateSpace fromCoordinateSpace:{v11, v12, v13, v14}];
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

+ (id)_visibleSubregionsWhenRegion:(id)region occludedByRegion:(id)byRegion inSnapshot:(id)snapshot
{
  v88[1] = *MEMORY[0x1E69E9840];
  regionCopy = region;
  byRegionCopy = byRegion;
  snapshotCopy = snapshot;
  if (regionCopy)
  {
    if (byRegionCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIFocusRegionEvaluator.m" lineNumber:48 description:{@"Invalid parameter not satisfying: %@", @"occludedRegion"}];

    if (byRegionCopy)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"_UIFocusRegionEvaluator.m" lineNumber:49 description:{@"Invalid parameter not satisfying: %@", @"occludingRegion"}];

LABEL_3:
  if (regionCopy == byRegionCopy)
  {
    currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"_UIFocusRegionEvaluator.m" lineNumber:50 description:{@"Invalid parameter not satisfying: %@", @"occludedRegion != occludingRegion"}];

    if (snapshotCopy)
    {
      goto LABEL_5;
    }
  }

  else if (snapshotCopy)
  {
    goto LABEL_5;
  }

  currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler4 handleFailureInMethod:a2 object:self file:@"_UIFocusRegionEvaluator.m" lineNumber:51 description:{@"Invalid parameter not satisfying: %@", @"snapshot"}];

LABEL_5:
  [snapshotCopy snapshotFrameForRegion:regionCopy];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  [snapshotCopy snapshotFrameForRegion:byRegionCopy];
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
    v88[0] = regionCopy;
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
        v52 = [self subregionFromRegion:regionCopy withSnapshotFrame:snapshotCopy inSnapshot:{MinX, MinY, v77, v71 - v68}];
        [v44 addObject:v52];
      }

      if (v81 > 0.0 && v79 > 0.0)
      {
        v53 = [self subregionFromRegion:regionCopy withSnapshotFrame:snapshotCopy inSnapshot:{v76, v87, v81, v79}];
        [v44 addObject:v53];
      }

      v54 = v75 - v50;
      if (v84 > 0.0 && v73 - v69 > 0.0)
      {
        v55 = [self subregionFromRegion:regionCopy withSnapshotFrame:snapshotCopy inSnapshot:{v67, MaxY, v84, v73 - v69}];
        [v44 addObject:v55];
      }

      if (v54 > 0.0 && v51 > 0.0)
      {
        v56 = [self subregionFromRegion:regionCopy withSnapshotFrame:snapshotCopy inSnapshot:{MaxX, v62, v54, v51}];
        [v44 addObject:v56];
      }
    }

    [snapshotCopy _trackOccludingRegion:byRegionCopy forRegion:regionCopy];
  }

  return v44;
}

+ (id)__regionsByEvaluatingOcclusionsForBaseRegions:(id)regions occludingRegions:(id)occludingRegions baseRegionsCanOccludeEachOther:(BOOL)other inSnapshot:(id)snapshot
{
  otherCopy = other;
  v66 = *MEMORY[0x1E69E9840];
  regionsCopy = regions;
  occludingRegionsCopy = occludingRegions;
  snapshotCopy = snapshot;
  if (!occludingRegionsCopy)
  {
    [MEMORY[0x1E696AAA8] currentHandler];
    v46 = v45 = regionsCopy;
    [v46 handleFailureInMethod:a2 object:self file:@"_UIFocusRegionEvaluator.m" lineNumber:145 description:{@"Invalid parameter not satisfying: %@", @"occludingRegions"}];

    regionsCopy = v45;
  }

  v47 = regionsCopy;
  if (regionsCopy)
  {
    v13 = [regionsCopy count];
    v14 = regionsCopy;
    if (v13)
    {
      if ([regionsCopy count] != 1 || (v15 = objc_msgSend(occludingRegionsCopy, "count"), v14 = regionsCopy, v15))
      {
        array = [MEMORY[0x1E695DF70] array];
        v17 = regionsCopy;
        v18 = array;
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
        v49 = !otherCopy;
        while (1)
        {
          for (i = 0; i != v51; ++i)
          {
            if (*v61 != v50)
            {
              objc_enumerationMutation(obj);
            }

            v54 = *(*(&v60 + 1) + 8 * i);
            v20 = [occludingRegionsCopy count];
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
              firstObject = v54;
LABEL_18:
              v25 = firstObject;
              v26 = [occludingRegionsCopy objectAtIndex:v23];
              v27 = [snapshotCopy originalRegionForRegion:v25];
              v28 = [snapshotCopy originalRegionForRegion:v26];
              if ([v25 _canBeOccludedByRegionsAbove] && v27 != v28)
              {
                v29 = [self _visibleSubregionsWhenRegion:v25 occludedByRegion:v26 inSnapshot:snapshotCopy];
                v30 = v22;
                v31 = v21;
                v32 = snapshotCopy;
                v33 = occludingRegionsCopy;
                v34 = v29;

                v55 = [v34 count] == 0;
                v35 = v34;
                occludingRegionsCopy = v33;
                snapshotCopy = v32;
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
              firstObject = [v22 firstObject];
              goto LABEL_18;
            }

            if (v55)
            {
              v36 = 1;
              i = v52;
              goto LABEL_28;
            }

            v37 = [occludingRegionsCopy mutableCopy];
            [v37 removeObjectsInRange:{0, v23}];
            v38 = [self __regionsByEvaluatingOcclusionsForBaseRegions:v22 occludingRegions:v37 baseRegionsCanOccludeEachOther:0 inSnapshot:snapshotCopy];

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
              [occludingRegionsCopy insertObject:v54 atIndex:0];
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

+ (id)regionsByEvaluatingOcclusionsForRegions:(id)regions inSnapshot:(id)snapshot
{
  regionsCopy = regions;
  snapshotCopy = snapshot;
  v9 = snapshotCopy;
  if (regionsCopy)
  {
    if (snapshotCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIFocusRegionEvaluator.m" lineNumber:212 description:{@"Invalid parameter not satisfying: %@", @"regions"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"_UIFocusRegionEvaluator.m" lineNumber:213 description:{@"Invalid parameter not satisfying: %@", @"snapshot"}];

LABEL_3:
  array = [MEMORY[0x1E695DF70] array];
  v11 = [self __regionsByEvaluatingOcclusionsForBaseRegions:regionsCopy occludingRegions:array baseRegionsCanOccludeEachOther:1 inSnapshot:v9];

  return v11;
}

+ (id)regionsByOccludingRegions:(id)regions beneathRegions:(id)beneathRegions inSnapshot:(id)snapshot
{
  regionsCopy = regions;
  beneathRegionsCopy = beneathRegions;
  snapshotCopy = snapshot;
  if (regionsCopy)
  {
    if (beneathRegionsCopy)
    {
      goto LABEL_3;
    }

LABEL_8:
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIFocusRegionEvaluator.m" lineNumber:222 description:{@"Invalid parameter not satisfying: %@", @"occludingRegions"}];

    if (snapshotCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"_UIFocusRegionEvaluator.m" lineNumber:221 description:{@"Invalid parameter not satisfying: %@", @"regions"}];

  if (!beneathRegionsCopy)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (snapshotCopy)
  {
    goto LABEL_4;
  }

LABEL_9:
  currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"_UIFocusRegionEvaluator.m" lineNumber:223 description:{@"Invalid parameter not satisfying: %@", @"snapshot"}];

LABEL_4:
  v12 = [beneathRegionsCopy mutableCopy];
  v13 = [self __regionsByEvaluatingOcclusionsForBaseRegions:regionsCopy occludingRegions:v12 baseRegionsCanOccludeEachOther:0 inSnapshot:snapshotCopy];

  return v13;
}

@end