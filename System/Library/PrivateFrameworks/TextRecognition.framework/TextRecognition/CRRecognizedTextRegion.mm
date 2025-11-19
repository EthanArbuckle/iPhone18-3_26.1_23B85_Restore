@interface CRRecognizedTextRegion
- (CRRecognizedTextRegion)initWithType:(unint64_t)a3 detectedLineRegion:(id)a4;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
- (id)createCharacterSubFeaturesTopWhiteSpacePoints:(id)a3 bottomWhiteSpacePoints:(id)a4 falsePositiveFiltering:(BOOL)a5;
- (id)createSubregionsForString:(id)a3 topWhiteSpacePoints:(id)a4 bottomWhiteSpacePoints:(id)a5 hasBoundarySpacePoints:(BOOL)a6 hasCharacterAndWordBoundaries:(BOOL)a7 tokenPermutation:(id)a8;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (void)_copyContentsToObject:(void *)a1;
@end

@implementation CRRecognizedTextRegion

- (CRRecognizedTextRegion)initWithType:(unint64_t)a3 detectedLineRegion:(id)a4
{
  v7 = a4;
  v8 = [(CRRecognizedTextRegion *)self init];
  if (v8)
  {
    v9 = [v7 boundingQuad];
    boundingQuad = v8->_boundingQuad;
    v8->_boundingQuad = v9;

    v8->_isCurved = [v7 isCurved];
    v8->_layoutDirection = [v7 layoutDirection];
    v11 = [v7 polygon];
    polygon = v8->_polygon;
    v8->_polygon = v11;

    v8->_textRegionType = a3;
    objc_storeStrong(&v8->_detectedLineRegion, a4);
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(CRRecognizedTextRegion);
  if (v4)
  {
    [(CRRecognizedTextRegion *)self _copyContentsToObject:v4];
  }

  return v4;
}

- (void)_copyContentsToObject:(void *)a1
{
  if (a1)
  {
    v3 = a2;
    v4 = [a1 boundingQuad];
    [v3 setBoundingQuad:v4];

    v5 = [a1 polygon];
    [v3 setPolygon:v5];

    [v3 setLayoutDirection:{objc_msgSend(a1, "layoutDirection")}];
    [v3 setTextRegionType:{objc_msgSend(a1, "textRegionType")}];
    v6 = [a1 text];
    [v3 setText:v6];

    v7 = [a1 subregions];
    [v3 setSubregions:v7];

    v8 = [a1 candidates];
    [v3 setCandidates:v8];

    [v3 setIsCurved:{objc_msgSend(a1, "isCurved")}];
    [a1 activationProbability];
    [v3 setActivationProbability:?];
    [a1 confidence];
    [v3 setConfidence:?];
    v9 = [a1 locale];
    [v3 setLocale:v9];

    [v3 setWhitespaceInjected:{objc_msgSend(a1, "whitespaceInjected")}];
    v10 = [a1 detectedLineRegion];
    [v3 setDetectedLineRegion:v10];
  }
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(CRMutableRecognizedTextRegion);
  if (v4)
  {
    [(CRRecognizedTextRegion *)self _copyContentsToObject:v4];
  }

  return v4;
}

- (id)createSubregionsForString:(id)a3 topWhiteSpacePoints:(id)a4 bottomWhiteSpacePoints:(id)a5 hasBoundarySpacePoints:(BOOL)a6 hasCharacterAndWordBoundaries:(BOOL)a7 tokenPermutation:(id)a8
{
  v9 = a7;
  v10 = a6;
  v160[1] = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a8;
  v145 = v9;
  v147 = !v9;
  v139 = v16;
  if (v10)
  {
    v18 = [v15 objectAtIndexedSubscript:0];
    [v18 pointValue];
    v20 = v19;
    v22 = v21;
    v23 = [v15 objectAtIndexedSubscript:1];
    [v23 pointValue];
    if (v20 == v25 && v22 == v24)
    {
      v30 = [v16 objectAtIndexedSubscript:0];
      [v30 pointValue];
      v32 = v31;
      v34 = v33;
      v35 = [v139 objectAtIndexedSubscript:1];
      [v35 pointValue];
      v37 = v32 == v36;
      if (v34 != v38)
      {
        v37 = 0;
      }

      v146 = v37;

      v16 = v139;
    }

    else
    {
      v146 = 0;
    }

    v39 = [v15 lastObject];
    [v39 pointValue];
    v41 = v40;
    v43 = v42;
    v44 = [v15 objectAtIndexedSubscript:{objc_msgSend(v15, "count") - 2}];
    [v44 pointValue];
    v137 = 0;
    if (v41 == v46 && v43 == v45)
    {
      v47 = [v16 lastObject];
      [v47 pointValue];
      v49 = v48;
      v51 = v50;
      v52 = [v139 objectAtIndexedSubscript:{objc_msgSend(v139, "count") - 2}];
      [v52 pointValue];
      v54 = v49 == v53;
      if (v51 != v55)
      {
        v54 = 0;
      }

      v137 = v54;

      v16 = v139;
    }

    if ([v15 count] == 4)
    {
      if (!v146 || !v137)
      {
        goto LABEL_21;
      }
    }

    else if ([v16 count] != 4 || !v146 || !v137)
    {
      goto LABEL_21;
    }

    v27 = [(CRRecognizedTextRegion *)self mutableCopy];
    [v27 setText:v14];
    [v27 setSubregions:0];
    [v27 setCandidates:0];
    [v27 setTextRegionType:v147];
    v159 = v27;
    v28 = MEMORY[0x1E695DEC8];
    v29 = &v159;
LABEL_32:
    v67 = [v28 arrayWithObjects:v29 count:1];
    goto LABEL_59;
  }

  if (![v15 count] || !objc_msgSend(v16, "count"))
  {
    v27 = [(CRRecognizedTextRegion *)self mutableCopy];
    [v27 setText:v14];
    [v27 setCandidates:0];
    [v27 setSubregions:0];
    [v27 setTextRegionType:v147];
    v160[0] = v27;
    v28 = MEMORY[0x1E695DEC8];
    v29 = v160;
    goto LABEL_32;
  }

  LOBYTE(v137) = 1;
  LOBYTE(v146) = 1;
LABEL_21:
  v141 = v10;
  v27 = [MEMORY[0x1E695DF70] array];
  v56 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
  v57 = [v14 componentsSeparatedByCharactersInSet:v56];

  v58 = [v57 mutableCopy];
  v59 = v58;
  v132 = v17;
  if (v17)
  {
    v130 = v57;
    v143 = v27;
    v60 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v58, "count")}];
    v152 = 0u;
    v153 = 0u;
    v154 = 0u;
    v155 = 0u;
    v61 = v17;
    v62 = [v61 countByEnumeratingWithState:&v152 objects:v158 count:16];
    if (v62)
    {
      v63 = v62;
      v64 = *v153;
      do
      {
        for (i = 0; i != v63; ++i)
        {
          if (*v153 != v64)
          {
            objc_enumerationMutation(v61);
          }

          v66 = [v59 objectAtIndex:{objc_msgSend(*(*(&v152 + 1) + 8 * i), "unsignedIntegerValue")}];
          [v60 addObject:v66];
        }

        v63 = [v61 countByEnumeratingWithState:&v152 objects:v158 count:16];
      }

      while (v63);
    }

    v16 = v139;
    v27 = v143;
    v57 = v130;
  }

  else
  {
    v60 = v58;
  }

  [v60 removeObject:&stru_1F2BB4348];
  v68 = [v60 count];
  v69 = 2;
  if (!v141)
  {
    v69 = -2;
  }

  v70 = v69 + 2 * v68;
  if ([v15 count] == v70 && objc_msgSend(v16, "count") == v70)
  {
    v129 = v14;
    v131 = v57;
    v142 = v15;
    v144 = v27;
    v71 = [v60 count];
    v148 = 0u;
    v149 = 0u;
    v150 = 0u;
    v151 = 0u;
    obj = v60;
    v72 = [obj countByEnumeratingWithState:&v148 objects:v157 count:16];
    if (!v72)
    {
      goto LABEL_56;
    }

    v73 = v72;
    v74 = v141;
    v140 = *v149;
    v134 = 2 * (v71 - (v141 ^ 1)) - 1;
    v75 = 2;
    if (!v141)
    {
      v75 = 0;
    }

    v135 = v75;
    v136 = v71 - (v141 ^ 1);
    while (1)
    {
      v76 = 0;
      v77 = 2 * v74;
      v133 = v73 + v74;
      do
      {
        if (*v149 != v140)
        {
          objc_enumerationMutation(obj);
        }

        v78 = *(*(&v148 + 1) + 8 * v76);
        if (v141 == v74 && v146)
        {
          v79 = [(CRRecognizedTextRegion *)self boundingQuad];
          [v79 topLeft];
          v81 = v80;
          v83 = v82;

          v84 = [(CRRecognizedTextRegion *)self boundingQuad];
          [v84 bottomLeft];
          v86 = v85;
          v88 = v87;

          v89 = [v142 objectAtIndexedSubscript:v135];
          [v89 pointValue];
          v91 = v90;
          v93 = v92;

          v94 = v16;
          v95 = v135;
        }

        else
        {
          if (v136 == v74 && v137)
          {
            v96 = [v142 objectAtIndexedSubscript:v134];
            [v96 pointValue];
            v81 = v97;
            v83 = v98;

            v99 = [v16 objectAtIndexedSubscript:v134];
            [v99 pointValue];
            v86 = v100;
            v88 = v101;

            v102 = [(CRRecognizedTextRegion *)self boundingQuad];
            [v102 topRight];
            v91 = v103;
            v93 = v104;

            v105 = [(CRRecognizedTextRegion *)self boundingQuad];
            [v105 bottomRight];
            goto LABEL_51;
          }

          v108 = [v142 objectAtIndexedSubscript:v77 - 1];
          [v108 pointValue];
          v81 = v109;
          v83 = v110;

          v111 = [v139 objectAtIndexedSubscript:v77 - 1];
          [v111 pointValue];
          v86 = v112;
          v88 = v113;

          v16 = v139;
          v114 = [v142 objectAtIndexedSubscript:v77];
          [v114 pointValue];
          v91 = v115;
          v93 = v116;

          v94 = v139;
          v95 = v77;
        }

        v105 = [v94 objectAtIndexedSubscript:v95];
        [v105 pointValue];
LABEL_51:
        v117 = v106;
        v118 = v107;

        v119 = [(CRRecognizedTextRegion *)self mutableCopy];
        v120 = v119;
        if (v145)
        {
          v121 = [v78 combinedTokenSequenceString];
          [v120 setText:v121];
        }

        else
        {
          [v119 setText:v78];
        }

        [v120 setTextRegionType:v147];
        [v120 setSubregions:0];
        v122 = [CRNormalizedQuad alloc];
        v123 = [(CRRecognizedTextRegion *)self boundingQuad];
        [v123 normalizationSize];
        v126 = [(CRNormalizedQuad *)v122 initWithNormalizedTopLeft:v81 topRight:v83 bottomRight:v91 bottomLeft:v93 size:v117, v118, v86, v88, v124, v125];
        [v120 setBoundingQuad:v126];

        [v120 setPolygon:0];
        [v144 addObject:v120];
        ++v74;

        ++v76;
        v77 += 2;
      }

      while (v73 != v76);
      v73 = [obj countByEnumeratingWithState:&v148 objects:v157 count:16];
      v74 = v133;
      if (!v73)
      {
LABEL_56:

        v27 = v144;
        v67 = [MEMORY[0x1E695DEC8] arrayWithArray:v144];
        v14 = v129;
        v57 = v131;
        v15 = v142;
        goto LABEL_58;
      }
    }
  }

  v127 = [(CRRecognizedTextRegion *)self mutableCopy];
  [v127 setText:v14];
  [v127 setSubregions:0];
  [v127 setCandidates:0];
  [v127 setTextRegionType:v147];
  v156 = v127;
  v67 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v156 count:1];

LABEL_58:
  v17 = v132;
LABEL_59:

  return v67;
}

- (id)createCharacterSubFeaturesTopWhiteSpacePoints:(id)a3 bottomWhiteSpacePoints:(id)a4 falsePositiveFiltering:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [MEMORY[0x1E695DF70] array];
  v11 = [(CRRecognizedTextRegion *)self text];
  v12 = characterCount(v11);

  if (v8 && v9 && [v8 count] && objc_msgSend(v9, "count"))
  {
    v32[0] = 0;
    v32[1] = v32;
    v32[2] = 0x2020000000;
    v32[3] = 0;
    v13 = [(CRRecognizedTextRegion *)self text];
    v14 = [(CRRecognizedTextRegion *)self text];
    v15 = [v14 length];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __118__CRRecognizedTextRegion_createCharacterSubFeaturesTopWhiteSpacePoints_bottomWhiteSpacePoints_falsePositiveFiltering___block_invoke_2;
    v23[3] = &unk_1E7BC30B8;
    v24 = v8;
    v29 = 2 * v12 - 2;
    v31 = a5;
    v25 = v9;
    v26 = self;
    v28 = v32;
    v30 = v12;
    v16 = v10;
    v27 = v16;
    [v13 enumerateSubstringsInRange:0 options:v15 usingBlock:{2, v23}];

    v17 = [MEMORY[0x1E695DEC8] arrayWithArray:v16];

    _Block_object_dispose(v32, 8);
  }

  else
  {
    v18 = [(CRRecognizedTextRegion *)self text];
    v19 = [(CRRecognizedTextRegion *)self text];
    v20 = [v19 length];
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __118__CRRecognizedTextRegion_createCharacterSubFeaturesTopWhiteSpacePoints_bottomWhiteSpacePoints_falsePositiveFiltering___block_invoke;
    v33[3] = &unk_1E7BC3090;
    v33[4] = self;
    v21 = v10;
    v34 = v21;
    [v18 enumerateSubstringsInRange:0 options:v20 usingBlock:{2, v33}];

    v17 = [MEMORY[0x1E695DEC8] arrayWithArray:v21];
  }

  return v17;
}

void __118__CRRecognizedTextRegion_createCharacterSubFeaturesTopWhiteSpacePoints_bottomWhiteSpacePoints_falsePositiveFiltering___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 mutableCopy];
  [v5 setTextRegionType:0];
  [v5 setText:v4];

  [*(a1 + 40) addObject:v5];
}

void __118__CRRecognizedTextRegion_createCharacterSubFeaturesTopWhiteSpacePoints_bottomWhiteSpacePoints_falsePositiveFiltering___block_invoke_2(uint64_t a1, void *a2)
{
  v47 = a2;
  if ([*(a1 + 32) count] != *(a1 + 72) || objc_msgSend(*(a1 + 40), "count") != *(a1 + 72))
  {
    v25 = [*(a1 + 48) mutableCopy];
    [v25 setText:v47];
    [v25 setCandidates:0];
    [v25 setSubregions:0];
    [v25 setTextRegionType:0];
LABEL_9:
    [*(a1 + 56) addObject:v25];

    goto LABEL_10;
  }

  if (*(a1 + 88) != 1 || ([MEMORY[0x1E696AB08] _crUnknownScriptCharacterSet], v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_msgSend(v47, "rangeOfCharacterFromSet:", v3), v3, v4 == 0x7FFFFFFFFFFFFFFFLL))
  {
    v5 = *(*(*(a1 + 64) + 8) + 24);
    if (v5)
    {
      v6 = *(a1 + 80) - 1;
      v7 = [*(a1 + 32) objectAtIndexedSubscript:2 * v5 - 1];
      [v7 pointValue];
      v9 = v8;
      v11 = v10;

      v12 = [*(a1 + 40) objectAtIndexedSubscript:2 * *(*(*(a1 + 64) + 8) + 24) - 1];
      [v12 pointValue];
      v14 = v13;
      v16 = v15;

      if (v5 == v6)
      {
        v17 = [*(a1 + 48) boundingQuad];
        [v17 topRight];
        v19 = v18;
        v21 = v20;

        v22 = [*(a1 + 48) boundingQuad];
        [v22 bottomRight];
LABEL_16:
        v40 = v23;
        v41 = v24;

        v25 = [*(a1 + 48) mutableCopy];
        [v25 setTextRegionType:0];
        [v25 setText:v47];
        v42 = [CRNormalizedQuad alloc];
        v43 = [*(a1 + 48) boundingQuad];
        [v43 normalizationSize];
        v46 = [(CRNormalizedQuad *)v42 initWithNormalizedTopLeft:v9 topRight:v11 bottomRight:v19 bottomLeft:v21 size:v40, v41, v14, v16, v44, v45];
        [v25 setBoundingQuad:v46];

        [v25 setPolygon:0];
        goto LABEL_9;
      }

      v37 = [*(a1 + 32) objectAtIndexedSubscript:2 * *(*(*(a1 + 64) + 8) + 24)];
      [v37 pointValue];
      v19 = v38;
      v21 = v39;

      v35 = *(a1 + 40);
      v36 = 2 * *(*(*(a1 + 64) + 8) + 24);
    }

    else
    {
      v26 = [*(a1 + 48) boundingQuad];
      [v26 topLeft];
      v9 = v27;
      v11 = v28;

      v29 = [*(a1 + 48) boundingQuad];
      [v29 bottomLeft];
      v14 = v30;
      v16 = v31;

      v32 = [*(a1 + 32) objectAtIndexedSubscript:*(*(*(a1 + 64) + 8) + 24)];
      [v32 pointValue];
      v19 = v33;
      v21 = v34;

      v35 = *(a1 + 40);
      v36 = *(*(*(a1 + 64) + 8) + 24);
    }

    v22 = [v35 objectAtIndexedSubscript:v36];
    [v22 pointValue];
    goto LABEL_16;
  }

LABEL_10:
  ++*(*(*(a1 + 64) + 8) + 24);
}

- (NSString)description
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(CRRecognizedTextRegion *)self text];
  v5 = [(CRRecognizedTextRegion *)self boundingQuad];
  v6 = [v3 stringWithFormat:@"%@\t%@", v4, v5];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = [(CRRecognizedTextRegion *)self subregions];
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      v11 = 0;
      v12 = v6;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v6 = [v12 stringByAppendingFormat:@"\n\t%@", *(*(&v14 + 1) + 8 * v11)];

        ++v11;
        v12 = v6;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  return v6;
}

@end