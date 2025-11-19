@interface NSOrderedSet(WFThreeWayMerging)
+ (id)wf_orderedSetByMergingOrderedSet:()WFThreeWayMerging withOrderedSet:baseOrderedSet:elementComparator:;
@end

@implementation NSOrderedSet(WFThreeWayMerging)

+ (id)wf_orderedSetByMergingOrderedSet:()WFThreeWayMerging withOrderedSet:baseOrderedSet:elementComparator:
{
  v128 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = v13;
  if (v10)
  {
    if (v11)
    {
      goto LABEL_3;
    }

LABEL_60:
    v70 = v14;
    v71 = [MEMORY[0x1E696AAA8] currentHandler];
    [v71 handleFailureInMethod:a2 object:a1 file:@"NSOrderedSet+WFThreeWayMerging.m" lineNumber:40 description:{@"Invalid parameter not satisfying: %@", @"secondOrderedSet"}];

    v14 = v70;
    if (v12)
    {
      goto LABEL_4;
    }

    goto LABEL_61;
  }

  v68 = v13;
  v69 = [MEMORY[0x1E696AAA8] currentHandler];
  [v69 handleFailureInMethod:a2 object:a1 file:@"NSOrderedSet+WFThreeWayMerging.m" lineNumber:39 description:{@"Invalid parameter not satisfying: %@", @"firstOrderedSet"}];

  v14 = v68;
  if (!v11)
  {
    goto LABEL_60;
  }

LABEL_3:
  if (v12)
  {
    goto LABEL_4;
  }

LABEL_61:
  v72 = v14;
  v73 = [MEMORY[0x1E696AAA8] currentHandler];
  [v73 handleFailureInMethod:a2 object:a1 file:@"NSOrderedSet+WFThreeWayMerging.m" lineNumber:41 description:{@"Invalid parameter not satisfying: %@", @"baseOrderedSet"}];

  v14 = v72;
LABEL_4:
  v90 = v14;
  if (v14)
  {
    v15 = [WFThreeWayMergingObjectGraph alloc];
    v16 = v14;
  }

  else
  {
    v74 = [MEMORY[0x1E696AAA8] currentHandler];
    [v74 handleFailureInMethod:a2 object:a1 file:@"NSOrderedSet+WFThreeWayMerging.m" lineNumber:42 description:{@"Invalid parameter not satisfying: %@", @"comparator"}];

    v15 = [WFThreeWayMergingObjectGraph alloc];
    v16 = 0;
  }

  v17 = [(WFThreeWayMergingObjectGraph *)v15 initWithVertexComparator:v16];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __116__NSOrderedSet_WFThreeWayMerging__wf_orderedSetByMergingOrderedSet_withOrderedSet_baseOrderedSet_elementComparator___block_invoke;
  aBlock[3] = &unk_1E837B138;
  v18 = v12;
  v112 = v18;
  v19 = v10;
  v113 = v19;
  v20 = v11;
  v114 = v20;
  v21 = _Block_copy(aBlock);
  v109[0] = MEMORY[0x1E69E9820];
  v109[1] = 3221225472;
  v109[2] = __116__NSOrderedSet_WFThreeWayMerging__wf_orderedSetByMergingOrderedSet_withOrderedSet_baseOrderedSet_elementComparator___block_invoke_2;
  v109[3] = &unk_1E837B160;
  v22 = v21;
  v110 = v22;
  v23 = _Block_copy(v109);
  v104[0] = MEMORY[0x1E69E9820];
  v104[1] = 3221225472;
  v104[2] = __116__NSOrderedSet_WFThreeWayMerging__wf_orderedSetByMergingOrderedSet_withOrderedSet_baseOrderedSet_elementComparator___block_invoke_3;
  v104[3] = &unk_1E837B188;
  v87 = v22;
  v107 = v87;
  v24 = v17;
  v105 = v24;
  v25 = v18;
  v106 = v25;
  v88 = v23;
  v108 = v88;
  v93 = _Block_copy(v104);
  v93[2](v93, v19, v20);
  v93[2](v93, v20, v19);
  v26 = v24;
  v96 = v25;
  v97 = v19;
  v27 = v20;
  if (!v26)
  {
    v75 = [MEMORY[0x1E696AAA8] currentHandler];
    v76 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void WFAddEdgesForTransitiveRelationships(WFThreeWayMergingObjectGraph * _Nonnull __strong, NSOrderedSet * _Nonnull __strong, NSOrderedSet * _Nonnull __strong, NSOrderedSet * _Nonnull __strong)"}];
    [v75 handleFailureInFunction:v76 file:@"NSOrderedSet+WFThreeWayMerging.m" lineNumber:193 description:{@"Invalid parameter not satisfying: %@", @"graph"}];
  }

  if (!v12)
  {
    v77 = [MEMORY[0x1E696AAA8] currentHandler];
    v78 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void WFAddEdgesForTransitiveRelationships(WFThreeWayMergingObjectGraph * _Nonnull __strong, NSOrderedSet * _Nonnull __strong, NSOrderedSet * _Nonnull __strong, NSOrderedSet * _Nonnull __strong)"}];
    [v77 handleFailureInFunction:v78 file:@"NSOrderedSet+WFThreeWayMerging.m" lineNumber:194 description:{@"Invalid parameter not satisfying: %@", @"baseOrderedSet"}];
  }

  if (!v10)
  {
    v79 = [MEMORY[0x1E696AAA8] currentHandler];
    v80 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void WFAddEdgesForTransitiveRelationships(WFThreeWayMergingObjectGraph * _Nonnull __strong, NSOrderedSet * _Nonnull __strong, NSOrderedSet * _Nonnull __strong, NSOrderedSet * _Nonnull __strong)"}];
    [v79 handleFailureInFunction:v80 file:@"NSOrderedSet+WFThreeWayMerging.m" lineNumber:195 description:{@"Invalid parameter not satisfying: %@", @"firstOrderedSet"}];
  }

  if (!v11)
  {
    v81 = [MEMORY[0x1E696AAA8] currentHandler];
    v82 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void WFAddEdgesForTransitiveRelationships(WFThreeWayMergingObjectGraph * _Nonnull __strong, NSOrderedSet * _Nonnull __strong, NSOrderedSet * _Nonnull __strong, NSOrderedSet * _Nonnull __strong)"}];
    [v81 handleFailureInFunction:v82 file:@"NSOrderedSet+WFThreeWayMerging.m" lineNumber:196 description:{@"Invalid parameter not satisfying: %@", @"secondOrderedSet"}];
  }

  v121 = 0u;
  v122 = 0u;
  v119 = 0u;
  v120 = 0u;
  if (v26)
  {
    v28 = v26[2];
  }

  else
  {
    v28 = 0;
  }

  v29 = v28;
  v30 = [v29 countByEnumeratingWithState:&v119 objects:v127 count:16];
  if (v30)
  {
    v31 = *v120;
    do
    {
      v32 = 0;
      do
      {
        if (*v120 != v31)
        {
          objc_enumerationMutation(v29);
        }

        v33 = *(*(&v119 + 1) + 8 * v32);
        v34 = objc_autoreleasePoolPush();
        v35 = v33;
        v36 = v35;
        if (v26)
        {
          if (!v35)
          {
            v45 = [MEMORY[0x1E696AAA8] currentHandler];
            [v45 handleFailureInMethod:sel_directPredecessorsOfVertex_ object:v26 file:@"WFThreeWayMergingObjectGraph.m" lineNumber:95 description:{@"Invalid parameter not satisfying: %@", @"vertex"}];
          }

          v37 = [v26[4] objectForKey:v36];
        }

        else
        {
          v37 = 0;
        }

        v38 = [v37 count] == 0;
        if (v38)
        {
          v39 = WFGetClosestCommonElementForObject(v36, v96, v97, v27, 1);
          if (v39)
          {
            [(WFThreeWayMergingObjectGraph *)v26 addEdgeFromVertex:v39 toVertex:v36];
          }
        }

        v40 = v36;
        v41 = v40;
        if (v26)
        {
          if (!v40)
          {
            v46 = [MEMORY[0x1E696AAA8] currentHandler];
            [v46 handleFailureInMethod:sel_directSuccessorsOfVertex_ object:v26 file:@"WFThreeWayMergingObjectGraph.m" lineNumber:101 description:{@"Invalid parameter not satisfying: %@", @"vertex"}];
          }

          v42 = [v26[3] objectForKey:v41];
        }

        else
        {
          v42 = 0;
        }

        v43 = [v42 count] == 0;
        if (v43)
        {
          v44 = WFGetClosestCommonElementForObject(v41, v96, v97, v27, 0);
          if (v44)
          {
            [(WFThreeWayMergingObjectGraph *)v26 addEdgeFromVertex:v41 toVertex:v44];
          }
        }

        objc_autoreleasePoolPop(v34);
        ++v32;
      }

      while (v30 != v32);
      v47 = [v29 countByEnumeratingWithState:&v119 objects:v127 count:16];
      v30 = v47;
    }

    while (v47);
  }

  v48 = objc_opt_new();
  v99[0] = MEMORY[0x1E69E9820];
  v99[1] = 3221225472;
  v99[2] = __116__NSOrderedSet_WFThreeWayMerging__wf_orderedSetByMergingOrderedSet_withOrderedSet_baseOrderedSet_elementComparator___block_invoke_4;
  v99[3] = &unk_1E837B1D8;
  v100 = v97;
  v101 = v27;
  v102 = v48;
  v103 = v90;
  v92 = v48;
  v85 = v90;
  v84 = v27;
  v83 = v97;
  v94 = v99;
  if (v26)
  {
    v49 = objc_opt_new();
    v126[0] = 0;
    v126[1] = v126;
    v126[2] = 0x2020000000;
    v126[3] = 0;
    v50 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    v51 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    v52 = objc_opt_new();
    *&v119 = MEMORY[0x1E69E9820];
    *(&v119 + 1) = 3221225472;
    *&v120 = __78__WFThreeWayMergingObjectGraph_enumerateStronglyConnectedComponentsWithBlock___block_invoke;
    *(&v120 + 1) = &unk_1E837DC70;
    v53 = v52;
    *&v121 = v53;
    *(&v121 + 1) = v26;
    v98 = v50;
    *&v122 = v98;
    v125 = v126;
    v91 = v51;
    *(&v122 + 1) = v91;
    v86 = v49;
    v123 = v86;
    v124 = v94;
    v54 = _Block_copy(&v119);
    v117 = 0u;
    v118 = 0u;
    v115 = 0u;
    v116 = 0u;
    obj = v26[2];
    v55 = [obj countByEnumeratingWithState:&v115 objects:v127 count:16];
    if (v55)
    {
      v56 = *v116;
      do
      {
        v57 = 0;
        do
        {
          if (*v116 != v56)
          {
            objc_enumerationMutation(obj);
          }

          v58 = *(*(&v115 + 1) + 8 * v57);
          v59 = objc_autoreleasePoolPush();
          v60 = [v98 objectForKey:v58];
          v61 = v60 == 0;

          if (v61)
          {
            v62 = [WFThreeWayMergingObjectGraphComponentEnumerationStackItem initialItemWithVertex:v58];
            [v53 addObject:v62];

            while ([v53 count])
            {
              v63 = objc_autoreleasePoolPush();
              v54[2](v54);
              objc_autoreleasePoolPop(v63);
            }
          }

          objc_autoreleasePoolPop(v59);
          ++v57;
        }

        while (v57 != v55);
        v64 = [obj countByEnumeratingWithState:&v115 objects:v127 count:16];
        v55 = v64;
      }

      while (v64);
    }

    _Block_object_dispose(v126, 8);
  }

  v65 = [a1 orderedSetWithOrderedSet:v92];

  v66 = *MEMORY[0x1E69E9840];

  return v65;
}

@end