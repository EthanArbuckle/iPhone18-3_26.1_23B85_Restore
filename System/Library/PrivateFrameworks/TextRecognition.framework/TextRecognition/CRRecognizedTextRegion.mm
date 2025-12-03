@interface CRRecognizedTextRegion
- (CRRecognizedTextRegion)initWithType:(unint64_t)type detectedLineRegion:(id)region;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (id)createCharacterSubFeaturesTopWhiteSpacePoints:(id)points bottomWhiteSpacePoints:(id)spacePoints falsePositiveFiltering:(BOOL)filtering;
- (id)createSubregionsForString:(id)string topWhiteSpacePoints:(id)points bottomWhiteSpacePoints:(id)spacePoints hasBoundarySpacePoints:(BOOL)boundarySpacePoints hasCharacterAndWordBoundaries:(BOOL)boundaries tokenPermutation:(id)permutation;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (void)_copyContentsToObject:(void *)object;
@end

@implementation CRRecognizedTextRegion

- (CRRecognizedTextRegion)initWithType:(unint64_t)type detectedLineRegion:(id)region
{
  regionCopy = region;
  v8 = [(CRRecognizedTextRegion *)self init];
  if (v8)
  {
    boundingQuad = [regionCopy boundingQuad];
    boundingQuad = v8->_boundingQuad;
    v8->_boundingQuad = boundingQuad;

    v8->_isCurved = [regionCopy isCurved];
    v8->_layoutDirection = [regionCopy layoutDirection];
    polygon = [regionCopy polygon];
    polygon = v8->_polygon;
    v8->_polygon = polygon;

    v8->_textRegionType = type;
    objc_storeStrong(&v8->_detectedLineRegion, region);
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(CRRecognizedTextRegion);
  if (v4)
  {
    [(CRRecognizedTextRegion *)self _copyContentsToObject:v4];
  }

  return v4;
}

- (void)_copyContentsToObject:(void *)object
{
  if (object)
  {
    v3 = a2;
    boundingQuad = [object boundingQuad];
    [v3 setBoundingQuad:boundingQuad];

    polygon = [object polygon];
    [v3 setPolygon:polygon];

    [v3 setLayoutDirection:{objc_msgSend(object, "layoutDirection")}];
    [v3 setTextRegionType:{objc_msgSend(object, "textRegionType")}];
    text = [object text];
    [v3 setText:text];

    subregions = [object subregions];
    [v3 setSubregions:subregions];

    candidates = [object candidates];
    [v3 setCandidates:candidates];

    [v3 setIsCurved:{objc_msgSend(object, "isCurved")}];
    [object activationProbability];
    [v3 setActivationProbability:?];
    [object confidence];
    [v3 setConfidence:?];
    locale = [object locale];
    [v3 setLocale:locale];

    [v3 setWhitespaceInjected:{objc_msgSend(object, "whitespaceInjected")}];
    detectedLineRegion = [object detectedLineRegion];
    [v3 setDetectedLineRegion:detectedLineRegion];
  }
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(CRMutableRecognizedTextRegion);
  if (v4)
  {
    [(CRRecognizedTextRegion *)self _copyContentsToObject:v4];
  }

  return v4;
}

- (id)createSubregionsForString:(id)string topWhiteSpacePoints:(id)points bottomWhiteSpacePoints:(id)spacePoints hasBoundarySpacePoints:(BOOL)boundarySpacePoints hasCharacterAndWordBoundaries:(BOOL)boundaries tokenPermutation:(id)permutation
{
  boundariesCopy = boundaries;
  boundarySpacePointsCopy = boundarySpacePoints;
  v160[1] = *MEMORY[0x1E69E9840];
  stringCopy = string;
  pointsCopy = points;
  spacePointsCopy = spacePoints;
  permutationCopy = permutation;
  v145 = boundariesCopy;
  v147 = !boundariesCopy;
  v139 = spacePointsCopy;
  if (boundarySpacePointsCopy)
  {
    v18 = [pointsCopy objectAtIndexedSubscript:0];
    [v18 pointValue];
    v20 = v19;
    v22 = v21;
    v23 = [pointsCopy objectAtIndexedSubscript:1];
    [v23 pointValue];
    if (v20 == v25 && v22 == v24)
    {
      v30 = [spacePointsCopy objectAtIndexedSubscript:0];
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

      spacePointsCopy = v139;
    }

    else
    {
      v146 = 0;
    }

    lastObject = [pointsCopy lastObject];
    [lastObject pointValue];
    v41 = v40;
    v43 = v42;
    v44 = [pointsCopy objectAtIndexedSubscript:{objc_msgSend(pointsCopy, "count") - 2}];
    [v44 pointValue];
    v137 = 0;
    if (v41 == v46 && v43 == v45)
    {
      lastObject2 = [spacePointsCopy lastObject];
      [lastObject2 pointValue];
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

      spacePointsCopy = v139;
    }

    if ([pointsCopy count] == 4)
    {
      if (!v146 || !v137)
      {
        goto LABEL_21;
      }
    }

    else if ([spacePointsCopy count] != 4 || !v146 || !v137)
    {
      goto LABEL_21;
    }

    array = [(CRRecognizedTextRegion *)self mutableCopy];
    [array setText:stringCopy];
    [array setSubregions:0];
    [array setCandidates:0];
    [array setTextRegionType:v147];
    v159 = array;
    v28 = MEMORY[0x1E695DEC8];
    v29 = &v159;
LABEL_32:
    v67 = [v28 arrayWithObjects:v29 count:1];
    goto LABEL_59;
  }

  if (![pointsCopy count] || !objc_msgSend(spacePointsCopy, "count"))
  {
    array = [(CRRecognizedTextRegion *)self mutableCopy];
    [array setText:stringCopy];
    [array setCandidates:0];
    [array setSubregions:0];
    [array setTextRegionType:v147];
    v160[0] = array;
    v28 = MEMORY[0x1E695DEC8];
    v29 = v160;
    goto LABEL_32;
  }

  LOBYTE(v137) = 1;
  LOBYTE(v146) = 1;
LABEL_21:
  v141 = boundarySpacePointsCopy;
  array = [MEMORY[0x1E695DF70] array];
  whitespaceCharacterSet = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
  v57 = [stringCopy componentsSeparatedByCharactersInSet:whitespaceCharacterSet];

  v58 = [v57 mutableCopy];
  v59 = v58;
  v132 = permutationCopy;
  if (permutationCopy)
  {
    v130 = v57;
    v143 = array;
    v60 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v58, "count")}];
    v152 = 0u;
    v153 = 0u;
    v154 = 0u;
    v155 = 0u;
    v61 = permutationCopy;
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

    spacePointsCopy = v139;
    array = v143;
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
  if ([pointsCopy count] == v70 && objc_msgSend(spacePointsCopy, "count") == v70)
  {
    v129 = stringCopy;
    v131 = v57;
    v142 = pointsCopy;
    v144 = array;
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
          boundingQuad = [(CRRecognizedTextRegion *)self boundingQuad];
          [boundingQuad topLeft];
          v81 = v80;
          v83 = v82;

          boundingQuad2 = [(CRRecognizedTextRegion *)self boundingQuad];
          [boundingQuad2 bottomLeft];
          v86 = v85;
          v88 = v87;

          v89 = [v142 objectAtIndexedSubscript:v135];
          [v89 pointValue];
          v91 = v90;
          v93 = v92;

          v94 = spacePointsCopy;
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

            v99 = [spacePointsCopy objectAtIndexedSubscript:v134];
            [v99 pointValue];
            v86 = v100;
            v88 = v101;

            boundingQuad3 = [(CRRecognizedTextRegion *)self boundingQuad];
            [boundingQuad3 topRight];
            v91 = v103;
            v93 = v104;

            boundingQuad4 = [(CRRecognizedTextRegion *)self boundingQuad];
            [boundingQuad4 bottomRight];
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

          spacePointsCopy = v139;
          v114 = [v142 objectAtIndexedSubscript:v77];
          [v114 pointValue];
          v91 = v115;
          v93 = v116;

          v94 = v139;
          v95 = v77;
        }

        boundingQuad4 = [v94 objectAtIndexedSubscript:v95];
        [boundingQuad4 pointValue];
LABEL_51:
        v117 = v106;
        v118 = v107;

        v119 = [(CRRecognizedTextRegion *)self mutableCopy];
        v120 = v119;
        if (v145)
        {
          combinedTokenSequenceString = [v78 combinedTokenSequenceString];
          [v120 setText:combinedTokenSequenceString];
        }

        else
        {
          [v119 setText:v78];
        }

        [v120 setTextRegionType:v147];
        [v120 setSubregions:0];
        v122 = [CRNormalizedQuad alloc];
        boundingQuad5 = [(CRRecognizedTextRegion *)self boundingQuad];
        [boundingQuad5 normalizationSize];
        v125 = [(CRNormalizedQuad *)v122 initWithNormalizedTopLeft:v81 topRight:v83 bottomRight:v91 bottomLeft:v93 size:v117, v118, v86, v88, v124, v125];
        [v120 setBoundingQuad:v125];

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

        array = v144;
        v67 = [MEMORY[0x1E695DEC8] arrayWithArray:v144];
        stringCopy = v129;
        v57 = v131;
        pointsCopy = v142;
        goto LABEL_58;
      }
    }
  }

  v127 = [(CRRecognizedTextRegion *)self mutableCopy];
  [v127 setText:stringCopy];
  [v127 setSubregions:0];
  [v127 setCandidates:0];
  [v127 setTextRegionType:v147];
  v156 = v127;
  v67 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v156 count:1];

LABEL_58:
  permutationCopy = v132;
LABEL_59:

  return v67;
}

- (id)createCharacterSubFeaturesTopWhiteSpacePoints:(id)points bottomWhiteSpacePoints:(id)spacePoints falsePositiveFiltering:(BOOL)filtering
{
  pointsCopy = points;
  spacePointsCopy = spacePoints;
  array = [MEMORY[0x1E695DF70] array];
  text = [(CRRecognizedTextRegion *)self text];
  v12 = characterCount(text);

  if (pointsCopy && spacePointsCopy && [pointsCopy count] && objc_msgSend(spacePointsCopy, "count"))
  {
    v32[0] = 0;
    v32[1] = v32;
    v32[2] = 0x2020000000;
    v32[3] = 0;
    text2 = [(CRRecognizedTextRegion *)self text];
    text3 = [(CRRecognizedTextRegion *)self text];
    v15 = [text3 length];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __118__CRRecognizedTextRegion_createCharacterSubFeaturesTopWhiteSpacePoints_bottomWhiteSpacePoints_falsePositiveFiltering___block_invoke_2;
    v23[3] = &unk_1E7BC30B8;
    v24 = pointsCopy;
    v29 = 2 * v12 - 2;
    filteringCopy = filtering;
    v25 = spacePointsCopy;
    selfCopy = self;
    v28 = v32;
    v30 = v12;
    v16 = array;
    v27 = v16;
    [text2 enumerateSubstringsInRange:0 options:v15 usingBlock:{2, v23}];

    v17 = [MEMORY[0x1E695DEC8] arrayWithArray:v16];

    _Block_object_dispose(v32, 8);
  }

  else
  {
    text4 = [(CRRecognizedTextRegion *)self text];
    text5 = [(CRRecognizedTextRegion *)self text];
    v20 = [text5 length];
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __118__CRRecognizedTextRegion_createCharacterSubFeaturesTopWhiteSpacePoints_bottomWhiteSpacePoints_falsePositiveFiltering___block_invoke;
    v33[3] = &unk_1E7BC3090;
    v33[4] = self;
    v21 = array;
    v34 = v21;
    [text4 enumerateSubstringsInRange:0 options:v20 usingBlock:{2, v33}];

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
  text = [(CRRecognizedTextRegion *)self text];
  boundingQuad = [(CRRecognizedTextRegion *)self boundingQuad];
  v6 = [v3 stringWithFormat:@"%@\t%@", text, boundingQuad];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  subregions = [(CRRecognizedTextRegion *)self subregions];
  v8 = [subregions countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(subregions);
        }

        v6 = [v12 stringByAppendingFormat:@"\n\t%@", *(*(&v14 + 1) + 8 * v11)];

        ++v11;
        v12 = v6;
      }

      while (v9 != v11);
      v9 = [subregions countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  return v6;
}

@end