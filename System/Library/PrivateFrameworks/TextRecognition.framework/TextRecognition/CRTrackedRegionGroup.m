@interface CRTrackedRegionGroup
+ (id)groupsFromOutputRegions:(id)a3;
- (BOOL)addGroupRegionIfValid:(id)a3 context:(id)a4;
- (BOOL)addInlineGroupIfValid:(id)a3;
- (CRTrackedRegionGroup)initWithRegion:(id)a3;
- (NSString)description;
- (id)estimatedPerspectiveQuad;
- (void)_commitRegionToGroup:(void *)a3 unionQuad:(void *)a4 totalLineHeight:;
- (void)applyHomographyTransform:(float32x4_t)a3 downscaleRate:(float32x4_t)a4 shouldApply:(float)a5;
- (void)setBoundingQuadHomography:(__n128)a3;
- (void)setOriginalBoundingQuad:(id)a3;
- (void)updateBoundingQuadAfterOCR;
- (void)updatePreviousAssociationQuad;
@end

@implementation CRTrackedRegionGroup

- (CRTrackedRegionGroup)initWithRegion:(id)a3
{
  v4 = a3;
  v29.receiver = self;
  v29.super_class = CRTrackedRegionGroup;
  v5 = [(CRTrackedRegionGroup *)&v29 init];
  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x1E695DF70]);
    v7 = [v4 trackingID];
    v8 = [v6 initWithObjects:{v7, 0}];
    objc_setProperty_atomic(v5, v9, v8, 56);

    v10 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{v4, 0}];
    objc_setProperty_atomic(v5, v11, v10, 64);

    v5->_numberOfLines = [v4 numberOfLines];
    v5->_isInlineGroup = 0;
    objc_setProperty_atomic(v5, v12, 0, 128);
    v13 = [v4 boundingQuad];
    [(CRTrackedRegionGroup *)v5 setBoundingQuad:v13];

    v14 = [v4 boundingQuad];
    [(CRTrackedRegionGroup *)v5 setOriginalBoundingQuad:v14];

    [(CRTrackedRegionGroup *)v5 setBoundingQuadHomography:*MEMORY[0x1E69E9B10], *(MEMORY[0x1E69E9B10] + 16), *(MEMORY[0x1E69E9B10] + 32)];
    [(CRTrackedRegionGroup *)v5 setHomographyGroupID:0];
    [(CRTrackedRegionGroup *)v5 setInitialOrthogonalityScore:1.0];
    [(CRTrackedRegionGroup *)v5 setTrackNeedsReplacement:0];
    v15 = [MEMORY[0x1E696AFB0] UUID];
    objc_setProperty_atomic(v5, v16, v15, 136);

    v17 = [CRVCQuad alloc];
    v18 = [v4 boundingQuad];
    v19 = [v18 denormalizedQuad];
    v21 = [(CRVCQuad *)v17 initWithImageSpaceQuad:v19 uuid:objc_getProperty(v5, v20, 136, 1)];
    objc_setProperty_atomic(v5, v22, v21, 80);

    -[CRTrackedRegionGroup setTextAlignment:](v5, "setTextAlignment:", [v4 textAlignment]);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = [v4 geometryInfo];
      if ([v4 numberOfLines] < 2)
      {
        v24 = 1;
        v5->_isTextLeftJustified = 1;
      }

      else
      {
        v5->_isTextLeftJustified = [v23 isLeftJustified];
        v24 = [v23 isRightJustified];
      }

      v5->_isTextRightJustified = v24;
      v25 = MEMORY[0x1E696AD98];
      [v23 estimatedLineHeight];
      v26 = [v25 numberWithDouble:?];
      objc_setProperty_atomic(v5, v27, v26, 128);
    }

    else
    {
      *&v5->_isTextLeftJustified = 0;
    }

    v5->_groupChildrenAlignment = 0;
    v5->_layoutDirection = [v4 layoutDirection];
  }

  return v5;
}

- (BOOL)addGroupRegionIfValid:(id)a3 context:(id)a4
{
  v190 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 layoutDirection];
  if (v8 == [(CRTrackedRegionGroup *)self layoutDirection])
  {
    v9 = [(NSMutableArray *)self->_children lastObject];
    [v9 baselineAngle];
    v11 = v10;
    [v6 baselineAngle];
    v13 = v11 - v12;
    if (v13 <= 3.14159265)
    {
      if (v13 > -3.14159265)
      {
        goto LABEL_8;
      }

      v14 = 6.28318531;
    }

    else
    {
      v14 = -6.28318531;
    }

    v13 = v13 + v14;
LABEL_8:
    if (fabs(v13) > 0.34906585)
    {
      v15 = 0;
LABEL_74:

      goto LABEL_75;
    }

    v16 = [v9 geometryInfo];
    v17 = [v6 geometryInfo];
    [v6 baselineAngle];
    v19 = v18;
    v20 = [(CRTrackedRegionGroup *)self boundingQuad];
    [v20 baselineAngle];
    v22 = v21;
    v23 = [(CRTrackedRegionGroup *)self children];
    v24 = [v23 count];
    v25 = __sincos_stret(v19);
    v26 = __sincos_stret(v22);
    v27 = atan2(v25.__sinval + v26.__sinval * v24, v25.__cosval + v26.__cosval * v24);

    v28 = [(CRTrackedRegionGroup *)self boundingQuad];
    v29 = [v6 boundingQuad];
    if (v27 <= 3.14159265)
    {
      HIDWORD(v30) = -1073143301;
      if (v27 > -3.14159265)
      {
        goto LABEL_15;
      }

      v30 = 6.28318531;
    }

    else
    {
      v30 = -6.28318531;
    }

    v27 = v27 + v30;
LABEL_15:
    *&v30 = v27;
    v31 = [v28 unionWithNormalizedQuad:v29 baselineAngle:v30];

    objc_opt_class();
    v184 = v31;
    if (objc_opt_isKindOfClass())
    {
      v32 = -[CRRegionGeometryInfo initFromRegion:layoutDirection:]([CRRegionGeometryInfo alloc], "initFromRegion:layoutDirection:", v9, [v9 layoutDirection]);
      v33 = -[CRRegionGeometryInfo initFromRegion:layoutDirection:]([CRRegionGeometryInfo alloc], "initFromRegion:layoutDirection:", v6, [v6 layoutDirection]);
      v179 = v32;
      v34 = v32;
      v35 = v33;
      v36 = [v34 mutualGeometryInfoWith:?];
      v37 = [v9 geometryInfo];
      v38 = [v6 geometryInfo];
      [v37 estimatedLineHeight];
      v40 = v39;
      v175 = v38;
      [v38 estimatedLineHeight];
      v177 = v41;
      v178 = v37;
      if ([v36 isCenterJustified] && (objc_msgSend(v37, "isLeftJustified") & 1) == 0)
      {
        v42 = [v37 isRightJustified] ^ 1;
      }

      else
      {
        v42 = 0;
      }

      v58 = v35;
      [v36 leftOffsetAlongBaseline];
      v181 = v59;
      [v36 rightOffsetAlongBaseline];
      v171 = v60;
      [v36 leftOffsetAlongBaseline];
      v173 = v61;
      [v16 size];
      v169 = v62;
      [v17 size];
      v167 = v63;
      [v36 rightOffsetAlongBaseline];
      v165 = v64;
      [v16 size];
      v66 = v65;
      [v17 size];
      v68 = v67;
      [v36 leftOffsetAlongBaseline];
      v70 = v69;
      [v16 size];
      v72 = v71;
      [v17 size];
      v74 = v70 / fmin(v72, v73);
      [v36 rightOffsetAlongBaseline];
      v76 = v75;
      [v16 size];
      v78 = v77;
      [v17 size];
      v80 = v79;
      [v36 leftOffsetAlongBaseline];
      v82 = v81;
      v83 = v179;
      [v179 size];
      v85 = fabs(v74) < 1.0 || fabs(-v76 / fmin(v78, v80)) < 1.0;
      v86 = v177 / v40 >= 0.588235294;
      if (v177 / v40 > 1.7)
      {
        v86 = 0;
      }

      v176 = v36;
      if (v42)
      {
        v87 = 1;
      }

      else
      {
        v88 = -v165 / fmax(v66, v68);
        v89 = fabs(v181 / v40) <= 1.6;
        if (fabs(v173 / fmax(v169, v167)) > 0.4)
        {
          v89 = 0;
        }

        v90 = fabs(-v171 / v40) <= 1.6;
        if (fabs(v88) > 0.4)
        {
          v90 = 0;
        }

        v87 = v89 || v90;
      }

      v91 = 0;
      v56 = 0;
      if (v85 && v86 && v87 && fabs((v82 - v84) / v40) <= 1.0)
      {
        v161 = v40;
        v170 = v17;
        v172 = v16;
        v174 = v9;
        [(CRTrackedRegionGroup *)self boundingQuad];
        v93 = v92 = v58;
        v94 = [v93 denormalizedQuad];
        [v94 bottomLeft];
        v96 = v95;
        v98 = v97;

        v99 = [(CRTrackedRegionGroup *)self boundingQuad];
        v100 = [v99 denormalizedQuad];
        [v100 bottomRight];
        v102 = v101;
        v182 = v101;
        v104 = v103;
        v166 = v103;

        [v92 bottomLeft];
        v105 = *MEMORY[0x1E695F060];
        v106 = *(MEMORY[0x1E695F060] + 8);
        v109 = squaredDistanceFromPointToLineDefinedByPoints(v107, v108, v96, v98, v102, v104, *MEMORY[0x1E695F060], v106);
        [v92 bottomRight];
        v162 = squaredDistanceFromPointToLineDefinedByPoints(v110, v111, v96, v98, v102, v104, v105, v106);
        v112 = atan2(v104 - v98, v102 - v96);
        v164 = rotatedPointAroundPoint(v102, v104, v96, v98, v112);
        [v92 bottomLeft];
        v115 = rotatedPointAroundPoint(v113, v114, v96, v98, v112);
        v117 = v116;
        v168 = v92;
        [v92 bottomRight];
        v121 = rotatedPointAroundPoint(v118, v119, v96, v98, v112);
        if (v109 <= v162)
        {
          v122 = v117;
        }

        else
        {
          v122 = v120;
        }

        [v178 estimatedLineHeight];
        v124 = v122 + v123 * -0.2;
        v125 = rotatedPointAroundPoint(v96, v124, v96, v98, -v112);
        v163 = v126;
        v127 = rotatedPointAroundPoint(v164, v124, v96, v98, -v112);
        v129 = [[CRImageSpaceQuad alloc] initWithTopLeft:v96 topRight:v98 bottomRight:v182 bottomLeft:v166, v127, v128, v125, v163];
        v185 = 0u;
        v186 = 0u;
        v187 = 0u;
        v188 = 0u;
        v183 = v7;
        v130 = v7;
        v131 = [v130 countByEnumeratingWithState:&v185 objects:v189 count:16];
        if (v131)
        {
          v132 = v131;
          v133 = *v186;
          while (2)
          {
            for (i = 0; i != v132; ++i)
            {
              if (*v186 != v133)
              {
                objc_enumerationMutation(v130);
              }

              v135 = *(*(&v185 + 1) + 8 * i);
              v136 = [v135 boundingQuad];
              v137 = [v136 denormalizedQuad];
              [v137 bottomLeft];
              v140 = rotatedPointAroundPoint(v138, v139, v96, v98, v112);

              v141 = [v135 boundingQuad];
              v142 = [v141 denormalizedQuad];
              [v142 bottomRight];
              v145 = rotatedPointAroundPoint(v143, v144, v96, v98, v112);

              if ((v140 <= v115 || v140 >= v121) && (v145 <= v115 || v145 >= v121) && (v140 >= v115 || v145 <= v121))
              {
                v149 = [v135 boundingQuad];
                v150 = [v149 denormalizedQuad];
                v151 = [v150 intersectsQuad:v129];

                if (v151)
                {
                  v91 = 0;
                  v56 = 0;
                  v7 = v183;
                  goto LABEL_69;
                }
              }
            }

            v132 = [v130 countByEnumeratingWithState:&v185 objects:v189 count:16];
            if (v132)
            {
              continue;
            }

            break;
          }
        }

        v152 = [(CRTrackedRegionGroup *)self averageLineHeight];
        v7 = v183;
        if (!v152 || (v153 = v152, -[CRTrackedRegionGroup children](self, "children"), v154 = objc_claimAutoreleasedReturnValue(), v155 = [v154 count], v154, v153, v155 == 1))
        {
          v157 = [MEMORY[0x1E696AD98] numberWithDouble:v161];
          if (self)
          {
            objc_setProperty_atomic(self, v156, v157, 128);
          }
        }

        v158 = MEMORY[0x1E696AD98];
        v130 = [(CRTrackedRegionGroup *)self averageLineHeight];
        [v130 doubleValue];
        v56 = [v158 numberWithDouble:{v177 * objc_msgSend(v6, "numberOfLines") + v159 * -[CRTrackedRegionGroup numberOfLines](self, "numberOfLines")}];
        v91 = 1;
LABEL_69:
        v9 = v174;

        v17 = v170;
        v16 = v172;
        v83 = v179;
        v58 = v168;
      }

      if ((v91 & 1) == 0)
      {
        v15 = 0;
        v57 = v184;
        goto LABEL_73;
      }
    }

    else
    {
      v180 = v7;
      v43 = v17;
      v44 = v16;
      v45 = [v31 denormalizedQuad];
      [v45 area];
      v47 = v46;

      v48 = [(CRTrackedRegionGroup *)self boundingQuad];
      v49 = [v48 denormalizedQuad];
      [v49 area];
      v51 = v50;
      v52 = [v6 boundingQuad];
      v53 = [v52 denormalizedQuad];
      [v53 area];
      v55 = v51 + v54;

      v56 = 0;
      if (v47 > v55 * 1.5)
      {
        v15 = 0;
        v16 = v44;
        v17 = v43;
        v7 = v180;
        v57 = v184;
LABEL_73:

        goto LABEL_74;
      }

      v16 = v44;
      v17 = v43;
      v7 = v180;
    }

    v57 = v184;
    [(CRTrackedRegionGroup *)self _commitRegionToGroup:v6 unionQuad:v184 totalLineHeight:v56];
    v15 = 1;
    goto LABEL_73;
  }

  v15 = 0;
LABEL_75:

  return v15;
}

- (void)_commitRegionToGroup:(void *)a3 unionQuad:(void *)a4 totalLineHeight:
{
  v93 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a4;
  if (!a1)
  {
    goto LABEL_88;
  }

  v9 = a3;
  [a1 setBoundingQuad:v9];
  [a1 setOriginalBoundingQuad:v9];
  [a1 setBoundingQuadHomography:{*MEMORY[0x1E69E9B10], *(MEMORY[0x1E69E9B10] + 16), *(MEMORY[0x1E69E9B10] + 32)}];
  v10 = [a1 vcQuad];
  v11 = [v9 denormalizedQuad];

  [v10 updateWithQuad:v11];
  v12 = [a1 regionTrackingIDs];
  v13 = [v7 trackingID];
  [v12 addObject:v13];

  v14 = [a1 children];
  [v14 addObject:v7];

  if (([a1 isInlineGroup] & 1) == 0)
  {
    v15 = [v7 numberOfLines];
    *(a1 + 72) = [a1 numberOfLines] + v15;
  }

  if (v8)
  {
    v16 = MEMORY[0x1E696AD98];
    [v8 doubleValue];
    v18 = [v16 numberWithDouble:{v17 / objc_msgSend(a1, "numberOfLines")}];
    objc_setProperty_atomic(a1, v19, v18, 128);
  }

  v20 = CROSLogForCategory(4);
  v21 = @"-";
  v22 = @"L";
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    v23 = [a1 numberOfLines];
    v24 = [a1 children];
    v25 = [v24 count];
    if (*(a1 + 10))
    {
      v26 = @"L";
    }

    else
    {
      v26 = @"-";
    }

    if (*(a1 + 11))
    {
      v27 = @"R";
    }

    else
    {
      v27 = @"-";
    }

    *v84 = 134218754;
    *&v84[4] = v23;
    v85 = 2048;
    v86 = v25;
    v87 = 2112;
    v88 = v26;
    v89 = 2112;
    v90 = v27;
    _os_log_impl(&dword_1B40D2000, v20, OS_LOG_TYPE_DEBUG, "ALIGNMENT: %ld line(s) %ld child(ren)\t%@-%@", v84, 0x2Au);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([v7 numberOfLines] < 2)
    {
      v34 = 0;
    }

    else
    {
      v28 = [v7 geometryInfo];
      v29 = [v28 isCenterJustified];
      v30 = CROSLogForCategory(4);
      v31 = os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG);
      if (v29)
      {
        if (v31)
        {
          if (*(a1 + 10))
          {
            v32 = @"L";
          }

          else
          {
            v32 = @"-";
          }

          if (*(a1 + 11))
          {
            v33 = @"R";
          }

          else
          {
            v33 = @"-";
          }

          *v84 = 138412546;
          *&v84[4] = v32;
          v85 = 2112;
          v86 = v33;
          _os_log_impl(&dword_1B40D2000, v30, OS_LOG_TYPE_DEBUG, "  ALIGNMENT: multiline: C before: %@-%@", v84, 0x16u);
        }

        if (*(a1 + 10) & 1) != 0 && (*(a1 + 11))
        {
          [a1 setTextAlignment:1];
        }

        v34 = 0;
      }

      else
      {
        if (v31)
        {
          if ([v28 isLeftJustified])
          {
            v35 = @"L";
          }

          else
          {
            v35 = @"-";
          }

          if ([v28 isRightJustified])
          {
            v36 = @"R";
          }

          else
          {
            v36 = @"-";
          }

          v37 = *(a1 + 11);
          if (*(a1 + 10))
          {
            v38 = @"L";
          }

          else
          {
            v38 = @"-";
          }

          *v84 = 138413058;
          if (v37)
          {
            v39 = @"R";
          }

          else
          {
            v39 = @"-";
          }

          *&v84[4] = v35;
          v85 = 2112;
          v86 = v36;
          v87 = 2112;
          v88 = v38;
          v89 = 2112;
          v90 = v39;
          _os_log_impl(&dword_1B40D2000, v30, OS_LOG_TYPE_DEBUG, "  ALIGNMENT: multiline: %@-%@ before: %@-%@", v84, 0x2Au);
        }

        if ([v28 isLeftJustified])
        {
          v34 = [v28 isRightJustified];
        }

        else
        {
          v34 = 0;
        }

        if (*(a1 + 10))
        {
          v40 = [v28 isLeftJustified];
        }

        else
        {
          v40 = 0;
        }

        *(a1 + 10) = v40;
        if (*(a1 + 11))
        {
          v41 = [v28 isRightJustified];
        }

        else
        {
          v41 = 0;
        }

        *(a1 + 11) = v41;
      }
    }

    if (*(a1 + 10) & 1) != 0 || (*(a1 + 11))
    {
      v42 = [a1 children];
      v43 = [a1 boundingQuad];
      [v43 baselineAngle];
      v44 = [CRParagraphOutputRegion paragraphWithLines:v42 confidence:2 baselineAngle:?];

      v45 = [v44 geometryInfo];
      *(a1 + 144) = [v44 textAlignment];
      v46 = CROSLogForCategory(4);
      if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
      {
        v47 = *(a1 + 144);
        if (*(a1 + 10))
        {
          v48 = @"L";
        }

        else
        {
          v48 = @"-";
        }

        if (*(a1 + 11))
        {
          v49 = @"R";
        }

        else
        {
          v49 = @"-";
        }

        *v84 = 134218498;
        *&v84[4] = v47;
        v85 = 2112;
        v86 = v48;
        v87 = 2112;
        v88 = v49;
        _os_log_impl(&dword_1B40D2000, v46, OS_LOG_TYPE_DEBUG, "  ALIGNMENT: SETGROUP %ld   %@-%@", v84, 0x20u);
      }

      if (*(a1 + 10))
      {
        v50 = [v45 isLeftJustified];
      }

      else
      {
        v50 = 0;
      }

      *(a1 + 10) = v50;
      if (*(a1 + 11))
      {
        v51 = [v45 isRightJustified];
      }

      else
      {
        v51 = 0;
      }

      *(a1 + 11) = v51;
    }
  }

  else
  {
    v34 = 0;
  }

  v52 = [a1 numberOfLines];
  v53 = [a1 children];
  v54 = [v53 count];

  if (v52 == v54)
  {
    v55 = CROSLogForCategory(4);
    if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
    {
      v56 = [a1 textAlignment];
      v57 = *(a1 + 144);
      *v84 = 134218240;
      *&v84[4] = v56;
      v85 = 2048;
      v86 = v57;
      _os_log_impl(&dword_1B40D2000, v55, OS_LOG_TYPE_DEBUG, "ALIGNMENT: inherit group children alignment %ld->%ld", v84, 0x16u);
    }

    goto LABEL_77;
  }

  v68 = [a1 numberOfLines];
  v69 = v68 - [v7 numberOfLines];
  v70 = [a1 children];
  v71 = [v70 count] - 1;

  if (v69 != v71)
  {
    v80 = [a1 textAlignment];
    if (v80 != [v7 textAlignment] && !((objc_msgSend(v7, "numberOfLines") < 2) | v34 & 1))
    {
      [a1 setTextAlignment:0];
      v81 = CROSLogForCategory(4);
      if (os_log_type_enabled(v81, OS_LOG_TYPE_DEBUG))
      {
        *v84 = 0;
        _os_log_impl(&dword_1B40D2000, v81, OS_LOG_TYPE_DEBUG, "ALIGNMENT: mixed alignments", v84, 2u);
      }
    }

    goto LABEL_79;
  }

  v72 = *(a1 + 144);
  if (v72 == [v7 textAlignment])
  {
    v73 = CROSLogForCategory(4);
    if (os_log_type_enabled(v73, OS_LOG_TYPE_DEBUG))
    {
      v74 = [a1 textAlignment];
      v75 = [v7 textAlignment];
      *v84 = 134218240;
      *&v84[4] = v74;
      v85 = 2048;
      v86 = v75;
      _os_log_impl(&dword_1B40D2000, v73, OS_LOG_TYPE_DEBUG, "ALIGNMENT: inherit new region's alignment (same children+text alignment) %ld->%ld", v84, 0x16u);
    }

    [a1 setTextAlignment:{objc_msgSend(v7, "textAlignment")}];
  }

  if (((*(a1 + 11) ^ *(a1 + 10)) & 1) != 0 && ![a1 textAlignment])
  {
    v76 = CROSLogForCategory(4);
    v77 = os_log_type_enabled(v76, OS_LOG_TYPE_DEBUG);
    if (!v34)
    {
      if (v77)
      {
        v82 = [a1 textAlignment];
        v83 = [v7 textAlignment];
        *v84 = 134218240;
        *&v84[4] = v82;
        v85 = 2048;
        v86 = v83;
        _os_log_impl(&dword_1B40D2000, v76, OS_LOG_TYPE_DEBUG, "ALIGNMENT: inherit new region's alignment (text L^R and unknown) %ld->%ld", v84, 0x16u);
      }

      v58 = [v7 textAlignment];
      goto LABEL_78;
    }

    if (v77)
    {
      v78 = [a1 textAlignment];
      v79 = *(a1 + 144);
      *v84 = 134218240;
      *&v84[4] = v78;
      v85 = 2048;
      v86 = v79;
      _os_log_impl(&dword_1B40D2000, v76, OS_LOG_TYPE_DEBUG, "ALIGNMENT: inherit group children alignment %ld->%ld", v84, 0x16u);
    }

LABEL_77:
    v58 = *(a1 + 144);
LABEL_78:
    [a1 setTextAlignment:v58];
  }

LABEL_79:
  v59 = CROSLogForCategory(4);
  if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
  {
    v60 = [a1 numberOfLines];
    v61 = [a1 children];
    v62 = [v61 count];
    if ((*(a1 + 10) & 1) == 0)
    {
      v22 = @"-";
    }

    if (*(a1 + 11))
    {
      v21 = @"R";
    }

    v63 = [a1 textAlignment];
    *v84 = 134219010;
    *&v84[4] = v60;
    v85 = 2048;
    v86 = v62;
    v87 = 2112;
    v88 = v22;
    v89 = 2112;
    v90 = v21;
    v91 = 2048;
    v92 = v63;
    _os_log_impl(&dword_1B40D2000, v59, OS_LOG_TYPE_DEBUG, "ALIGNMENT: DONE %ld line(s) %ld child(ren)\t%@-%@\t%ld", v84, 0x34u);
  }

  v64 = CROSLogForCategory(4);
  if (os_log_type_enabled(v64, OS_LOG_TYPE_DEBUG))
  {
    v65 = [a1 children];
    v66 = [v65 lastObject];
    v67 = [v66 text];
    *v84 = 138412290;
    *&v84[4] = v67;
    _os_log_impl(&dword_1B40D2000, v64, OS_LOG_TYPE_DEBUG, "*  ALIGNMENT: DONE %@", v84, 0xCu);
  }

LABEL_88:
}

- (BOOL)addInlineGroupIfValid:(id)a3
{
  v4 = a3;
  v5 = [v4 layoutDirection];
  if (v5 == [(CRTrackedRegionGroup *)self layoutDirection])
  {
    v6 = [v4 children];
    v7 = [v6 lastObject];

    v8 = [(NSMutableArray *)self->_children lastObject];
    [v8 baselineAngle];
    v10 = v9;
    [v7 baselineAngle];
    v12 = v10 - v11;
    if (v12 <= 3.14159265)
    {
      if (v12 > -3.14159265)
      {
        goto LABEL_8;
      }

      v13 = 6.28318531;
    }

    else
    {
      v13 = -6.28318531;
    }

    v12 = v12 + v13;
LABEL_8:
    if (fabs(v12) > 0.34906585)
    {
      LOBYTE(v14) = 0;
LABEL_25:

      goto LABEL_26;
    }

    v15 = -[CRRegionGeometryInfo initFromRegion:layoutDirection:]([CRRegionGeometryInfo alloc], "initFromRegion:layoutDirection:", v8, [v8 layoutDirection]);
    v16 = -[CRRegionGeometryInfo initFromRegion:layoutDirection:]([CRRegionGeometryInfo alloc], "initFromRegion:layoutDirection:", v7, [v7 layoutDirection]);
    v17 = [v15 mutualGeometryInfoWith:v16];
    [v15 estimatedLineHeight];
    v19 = v18;
    [v16 estimatedLineHeight];
    v21 = v20;
    [v17 inlineSpacingAlongBaseline];
    v23 = v22 / v19;
    [v17 leftOffsetAlongBaseline];
    v25 = v21 / v19 >= 0.588235294;
    if (v21 / v19 > 1.7)
    {
      v25 = 0;
    }

    v26 = v23 >= -0.5;
    if (v23 > 0.3)
    {
      v26 = 0;
    }

    v27 = v25 && v26;
    if (fabs(v24 / v19) <= 0.3)
    {
      v14 = v27;
    }

    else
    {
      v14 = 0;
    }

    if (!v14)
    {
LABEL_24:

      goto LABEL_25;
    }

    v48 = v15;
    [v7 baselineAngle];
    v29 = v28;
    v30 = [(CRTrackedRegionGroup *)self boundingQuad];
    [v30 baselineAngle];
    v32 = v31;
    v33 = [(CRTrackedRegionGroup *)self children];
    v34 = [v33 count];
    v35 = __sincos_stret(v29);
    v36 = __sincos_stret(v32);
    v37 = atan2(v35.__sinval + v36.__sinval * v34, v35.__cosval + v36.__cosval * v34);

    v38 = [(CRTrackedRegionGroup *)self boundingQuad];
    v39 = [v7 boundingQuad];
    if (v37 <= 3.14159265)
    {
      HIDWORD(v40) = -1073143301;
      if (v37 > -3.14159265)
      {
LABEL_23:
        *&v40 = v37;
        v41 = [v38 unionWithNormalizedQuad:v39 baselineAngle:v40];

        v42 = MEMORY[0x1E696AD98];
        v15 = v48;
        [v48 estimatedLineHeight];
        v44 = v43;
        [v16 estimatedLineHeight];
        v46 = [v42 numberWithDouble:v44 + v45];
        [(CRTrackedRegionGroup *)self _commitRegionToGroup:v7 unionQuad:v41 totalLineHeight:v46];

        goto LABEL_24;
      }

      v40 = 6.28318531;
    }

    else
    {
      v40 = -6.28318531;
    }

    v37 = v37 + v40;
    goto LABEL_23;
  }

  LOBYTE(v14) = 0;
LABEL_26:

  return v14;
}

- (id)estimatedPerspectiveQuad
{
  v236 = *MEMORY[0x1E69E9840];
  if ([(CRTrackedRegionGroup *)self isInlineGroup])
  {
    goto LABEL_22;
  }

  v3 = [(CRTrackedRegionGroup *)self children];
  v4 = [v3 firstObject];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    goto LABEL_22;
  }

  v6 = [(CRTrackedRegionGroup *)self numberOfLines];
  v7 = 0;
  if (self && v6 >= 2)
  {
    if (self->_isTextLeftJustified || self->_isTextRightJustified)
    {
      v225 = [MEMORY[0x1E695DF70] array];
      v230 = 0u;
      v231 = 0u;
      v232 = 0u;
      v233 = 0u;
      v8 = self;
      v9 = [(CRTrackedRegionGroup *)self children];
      v10 = [v9 countByEnumeratingWithState:&v230 objects:v235 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = 0;
        v13 = 0;
        v14 = 0;
        v15 = *v231;
        v16 = *MEMORY[0x1E695EFF8];
        v17 = *(MEMORY[0x1E695EFF8] + 8);
        v18 = 1.79769313e308;
        v19 = 2.22507386e-308;
        do
        {
          v20 = 0;
          v222 = v12;
          do
          {
            if (*v231 != v15)
            {
              objc_enumerationMutation(v9);
            }

            v21 = *(*(&v230 + 1) + 8 * v20);
            v22 = [v21 children];
            [v225 addObjectsFromArray:v22];

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [v21 topBottomEdgesQuad];
            }

            else
            {
              [v21 boundingQuad];
            }
            v23 = ;
            [v23 topLeft];
            v25 = v24;
            v27 = v26;
            v28 = [(CRTrackedRegionGroup *)v8 boundingQuad];
            [v28 baselineAngle];
            rotatedPointAroundPoint(v25, v27, v16, v17, v29);
            v31 = v30;

            if (v31 < v18)
            {
              v14 = v12;
              v18 = v31;
            }

            if (v31 > v19)
            {
              v13 = v12;
              v19 = v31;
            }

            ++v12;

            ++v20;
          }

          while (v11 != v20);
          v12 = v11 + v222;
          v11 = [v9 countByEnumeratingWithState:&v230 objects:v235 count:16];
        }

        while (v11);
      }

      else
      {
        v14 = 0;
        v13 = 0;
      }

      v33 = v8;
      isTextLeftJustified = v8->_isTextLeftJustified;
      isTextRightJustified = v8->_isTextRightJustified;
      if (!isTextLeftJustified && !isTextRightJustified)
      {
        v7 = 0;
LABEL_65:

        goto LABEL_23;
      }

      v36 = [(CRTrackedRegionGroup *)v33 children];
      v37 = [v36 objectAtIndexedSubscript:v14];
      v38 = [v37 boundingQuad];
      v39 = [v38 denormalizedQuad];
      [v39 topLeft];
      v41 = v40;
      v43 = v42;

      v44 = [(CRTrackedRegionGroup *)v33 children];
      v45 = [v44 objectAtIndexedSubscript:v14];
      v46 = [v45 boundingQuad];
      v47 = [v46 denormalizedQuad];
      [v47 topRight];
      v217 = v48;
      v215 = v49;

      v50 = [(CRTrackedRegionGroup *)v33 children];
      v51 = [v50 objectAtIndexedSubscript:v13];
      v52 = [v51 boundingQuad];
      v53 = [v52 denormalizedQuad];
      [v53 bottomLeft];
      v55 = v54;
      v57 = v56;

      v58 = [(CRTrackedRegionGroup *)v33 children];
      v59 = [v58 objectAtIndexedSubscript:v13];
      v60 = [v59 boundingQuad];
      v61 = [v60 denormalizedQuad];
      [v61 bottomRight];
      v63 = v62;
      v65 = v64;

      v66 = [(CRTrackedRegionGroup *)v33 children];
      v67 = [v66 objectAtIndexedSubscript:v14];
      objc_opt_class();
      LOBYTE(v60) = objc_opt_isKindOfClass();

      if (v60)
      {
        v68 = [(CRTrackedRegionGroup *)v33 children];
        v69 = [v68 objectAtIndexedSubscript:v14];
        v70 = [v69 topBottomEdgesQuad];
        v71 = [v70 denormalizedQuad];
        [v71 topLeft];
        v41 = v72;
        v43 = v73;

        v74 = [(CRTrackedRegionGroup *)v33 children];
        v75 = [v74 objectAtIndexedSubscript:v14];
        v76 = [v75 topBottomEdgesQuad];
        v77 = [v76 denormalizedQuad];
        [v77 topRight];
        v217 = v78;
        v215 = v79;
      }

      v80 = [(CRTrackedRegionGroup *)v33 children];
      v81 = [v80 objectAtIndexedSubscript:v13];
      objc_opt_class();
      v82 = objc_opt_isKindOfClass();

      v219 = v43;
      if (v82)
      {
        v83 = [(CRTrackedRegionGroup *)v33 children];
        v84 = [v83 objectAtIndexedSubscript:v13];
        v85 = [v84 topBottomEdgesQuad];
        v86 = [v85 denormalizedQuad];
        [v86 bottomLeft];
        v55 = v87;
        v57 = v88;

        v89 = [(CRTrackedRegionGroup *)v33 children];
        v90 = [v89 objectAtIndexedSubscript:v13];
        v91 = [v90 topBottomEdgesQuad];
        v92 = [v91 denormalizedQuad];
        [v92 bottomRight];
        v94 = v93;
        v213 = v95;
      }

      else
      {
        v213 = v65;
        v94 = v63;
      }

      v96 = MEMORY[0x1E695EFF8];
      v97 = [(CRTrackedRegionGroup *)v33 children];
      v98 = [v97 objectAtIndexedSubscript:v14];
      [v98 baselineAngle];
      v100 = v99;

      v101 = [(CRTrackedRegionGroup *)v33 children];
      v102 = [v101 objectAtIndexedSubscript:v13];
      [v102 baselineAngle];
      v104 = v103;

      v105 = __sincos_stret(v100);
      v106 = __sincos_stret(v104);
      v107 = atan2(v105.__sinval + v106.__sinval, v105.__cosval + v106.__cosval);
      v108 = *v96;
      v109 = v96[1];
      v210 = v41;
      v110 = rotatedPointAroundPoint(v41, v219, *v96, v109, v107);
      v203 = v111;
      v204 = v110;
      v112 = rotatedPointAroundPoint(v217, v215, v108, v109, v107);
      v114 = v113;
      v206 = v57;
      v208 = v55;
      v115 = rotatedPointAroundPoint(v55, v57, v108, v109, v107);
      v117 = v116;
      v205 = v94;
      v223 = v108;
      v118 = v108;
      v119 = v109;
      v120 = rotatedPointAroundPoint(v94, v213, v118, v109, v107);
      if (!isTextLeftJustified || isTextRightJustified)
      {
        if (isTextLeftJustified || !isTextRightJustified)
        {
          v129 = v208;
          v126 = v210;
          v128 = v219;
          v130 = v206;
          v123 = v223;
LABEL_47:
          v228 = 0u;
          v229 = 0u;
          v226 = 0u;
          v227 = 0u;
          v133 = [(CRTrackedRegionGroup *)v33 children];
          v134 = [v133 countByEnumeratingWithState:&v226 objects:v234 count:16];
          if (v134)
          {
            v135 = v134;
            v207 = v130;
            v209 = v129;
            v220 = v128;
            v211 = v126;
            v136 = *v227;
            v137 = 1.79769313e308;
            v138 = v123;
            v139 = 2.22507386e-308;
            v140 = v107;
            v141 = v109;
            v142 = v138;
            v143 = v138;
            do
            {
              for (i = 0; i != v135; ++i)
              {
                if (*v227 != v136)
                {
                  objc_enumerationMutation(v133);
                }

                v145 = [*(*(&v226 + 1) + 8 * i) boundingQuad];
                v146 = [v145 denormalizedQuad];
                *&v147 = v140;
                v148 = [v146 rotatedAroundPoint:v223 angle:{v109, v147}];

                [v148 topLeft];
                if (v149 < v137)
                {
                  [v148 topLeft];
                  v137 = v150;
                  v151 = [v145 denormalizedQuad];
                  [v151 topLeft];
                  v143 = v152;
                  v119 = v153;
                }

                [v148 bottomLeft];
                if (v154 < v137)
                {
                  [v148 bottomLeft];
                  v137 = v155;
                  v156 = [v145 denormalizedQuad];
                  [v156 bottomLeft];
                  v143 = v157;
                  v119 = v158;
                }

                [v148 topRight];
                if (v159 > v139)
                {
                  [v148 topRight];
                  v139 = v160;
                  v161 = [v145 denormalizedQuad];
                  [v161 topRight];
                  v142 = v162;
                  v141 = v163;
                }

                [v148 bottomRight];
                if (v164 > v139)
                {
                  [v148 bottomRight];
                  v139 = v165;
                  v166 = [v145 denormalizedQuad];
                  [v166 bottomRight];
                  v142 = v167;
                  v141 = v168;
                }
              }

              v135 = [v133 countByEnumeratingWithState:&v226 objects:v234 count:16];
            }

            while (v135);
            v123 = v142;
            v109 = v141;
            v129 = v209;
            v126 = v211;
            v128 = v220;
            v130 = v207;
          }

          else
          {
            v143 = v123;
          }

          v169 = [[CRImageSpaceQuad alloc] initWithTopLeft:v126 topRight:v128 bottomRight:v217 bottomLeft:v215, v205, v213, v129, v130];
          v170 = [[CRImageSpaceQuad alloc] initWithBoundingBox:0.0, 0.0, 1.0, 1.0];
          [(CRImageSpaceQuad *)v169 homographyFromSelfToQuad:v170];
          v171.i32[3] = 0;
          v172.i32[3] = 0;
          v214 = v172;
          v216 = v171;
          v173.i32[3] = 0;
          v212 = v173;
          [(CRImageSpaceQuad *)v170 homographyFromSelfToQuad:v169];
          v174.i32[3] = 0;
          v175.i32[3] = 0;
          v221 = v175;
          v224 = v174;
          v176.i32[3] = 0;
          v218 = v176;
          v177 = applyHomographyMatrix(v216, v214, v212, v143, v119);
          v178 = applyHomographyMatrix(v216, v214, v212, v123, v109);
          v179 = [[CRImageSpaceQuad alloc] initWithTopLeft:v177 topRight:0.0 bottomRight:v178 bottomLeft:0.0, v178, 1.0, v177, 1.0];
          [(CRImageSpaceQuad *)v179 topLeft];
          v182 = applyHomographyMatrix(v224, v221, v218, v180, v181);
          v184 = v183;
          [(CRImageSpaceQuad *)v179 topRight];
          v187 = applyHomographyMatrix(v224, v221, v218, v185, v186);
          v189 = v188;
          [(CRImageSpaceQuad *)v179 bottomLeft];
          v192 = applyHomographyMatrix(v224, v221, v218, v190, v191);
          v194 = v193;
          [(CRImageSpaceQuad *)v179 bottomRight];
          v197 = applyHomographyMatrix(v224, v221, v218, v195, v196);
          v199 = [[CRImageSpaceQuad alloc] initWithTopLeft:v182 topRight:v184 bottomRight:v187 bottomLeft:v189, v197, v198, v192, v194];
          v200 = [(CRTrackedRegionGroup *)v33 boundingQuad];
          [v200 normalizationSize];
          v7 = [(CRImageSpaceQuad *)v199 normalizedQuadForImageSize:?];

          goto LABEL_65;
        }

        v125 = -v107;
        if (v115 <= v204)
        {
          v201 = v121 + (v121 - v117) / (v120 - v115) * (v204 - v120);
          v123 = v223;
          v129 = rotatedPointAroundPoint(v204, v201, v223, v109, v125);
          v130 = v202;
          v126 = v210;
          v128 = v219;
          goto LABEL_47;
        }

        v123 = v223;
        v126 = rotatedPointAroundPoint(v115, v114 + (v114 - v203) / (v112 - v204) * (v115 - v112), v223, v109, v125);
        v128 = v127;
      }

      else
      {
        v122 = -v107;
        if (v120 <= v112)
        {
          v131 = v121 + (v121 - v117) / (v120 - v115) * (v112 - v120);
          v123 = v223;
          v205 = rotatedPointAroundPoint(v112, v131, v223, v109, v122);
          v213 = v132;
        }

        else
        {
          v123 = v223;
          v217 = rotatedPointAroundPoint(v120, v114 + (v114 - v203) / (v112 - v204) * (v120 - v112), v223, v109, v122);
          v215 = v124;
        }

        v126 = v210;
        v128 = v219;
      }

      v130 = v206;
      v129 = v208;
      goto LABEL_47;
    }

LABEL_22:
    v7 = 0;
  }

LABEL_23:

  return v7;
}

- (void)setOriginalBoundingQuad:(id)a3
{
  v5 = a3;
  if (self->_originalBoundingQuad != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_originalBoundingQuad, a3);
    Current = CFAbsoluteTimeGetCurrent();
    v5 = v7;
    self->_lastOriginalBoundingQuadUpdateTime = Current;
  }
}

- (void)updatePreviousAssociationQuad
{
  v3 = [(CRTrackedRegionGroup *)self boundingQuad];
  boundingQuadAtOCRDispatch = self->_boundingQuadAtOCRDispatch;
  self->_boundingQuadAtOCRDispatch = v3;

  v5 = MEMORY[0x1E69E9B10];
  v6 = *(MEMORY[0x1E69E9B10] + 16);
  *self->_anon_a0 = *MEMORY[0x1E69E9B10];
  *&self->_anon_a0[16] = v6;
  *&self->_anon_a0[32] = *(v5 + 32);
}

- (void)updateBoundingQuadAfterOCR
{
  v5 = [(CRTrackedRegionGroup *)self boundingQuad];
  v3 = [v5 denormalizedQuad];
  boundingQuadAfterOCR = self->_boundingQuadAfterOCR;
  self->_boundingQuadAfterOCR = v3;
}

- (void)applyHomographyTransform:(float32x4_t)a3 downscaleRate:(float32x4_t)a4 shouldApply:(float)a5
{
  v45 = a3;
  v44 = a2;
  v58 = *MEMORY[0x1E69E9840];
  v9 = a7;
  v10 = [a1 boundingQuad];
  v11 = [v10 denormalizedQuad];
  *&v12 = a5;
  v13 = [v11 applyHomographyTransform:*v44.i64 downscaleRate:{*v45.i64, *a4.i64, v12}];

  [v10 normalizationSize];
  if (v9[2](v9, v13))
  {
    [v10 normalizationSize];
    v14 = [v13 normalizedQuadForImageSize:?];
    [a1 setBoundingQuad:v14];

    v15 = [a1 vcQuad];
    [v15 updateWithQuad:v13];

    v16 = [a1 originalBoundingQuad];

    if (v16)
    {
      if (a4.f32[2] != 0.0)
      {
        v17 = 0;
        v18 = *(a1 + 176);
        v19 = *(a1 + 192);
        v51 = *(a1 + 160);
        v52 = v18;
        v53 = v19;
        v54 = 0u;
        v55 = 0u;
        v56 = 0u;
        do
        {
          *(&v54 + v17) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v44, COERCE_FLOAT(*(&v51 + v17))), v45, *(&v51 + v17), 1), a4, *(&v51 + v17), 2);
          v17 += 16;
        }

        while (v17 != 48);
        v20 = 0;
        v21 = v54;
        v22 = v55;
        v23 = v56;
        *(a1 + 168) = DWORD2(v54);
        *(a1 + 160) = v21;
        *(a1 + 184) = DWORD2(v22);
        *(a1 + 176) = v22;
        *&v21 = 1.0 / *(&v23 + 2);
        v24 = *(a1 + 176);
        v25 = vmulq_n_f32(*(a1 + 160), 1.0 / *(&v23 + 2));
        *(a1 + 168) = v25.i32[2];
        *(a1 + 200) = DWORD2(v23);
        *(a1 + 192) = v23;
        *(a1 + 160) = v25.i64[0];
        v26 = vmulq_n_f32(v24, 1.0 / *(&v23 + 2));
        *(a1 + 184) = v26.i32[2];
        *(a1 + 176) = v26.i64[0];
        v27 = *(a1 + 208);
        v28 = vmulq_n_f32(*(a1 + 192), *&v21);
        *(a1 + 200) = v28.i32[2];
        *(a1 + 192) = v28.i64[0];
        v29 = *(a1 + 224);
        v30 = *(a1 + 240);
        v51 = v27;
        v52 = v29;
        v53 = v30;
        v54 = 0u;
        v55 = 0u;
        v56 = 0u;
        do
        {
          *(&v54 + v20) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v44, COERCE_FLOAT(*(&v51 + v20))), v45, *(&v51 + v20), 1), a4, *(&v51 + v20), 2);
          v20 += 16;
        }

        while (v20 != 48);
        v31 = v54;
        v32 = v55;
        v33 = v56;
        *(a1 + 216) = DWORD2(v54);
        *(a1 + 232) = DWORD2(v32);
        *(a1 + 208) = v31;
        *(a1 + 224) = v32;
        *(a1 + 248) = DWORD2(v33);
        *(a1 + 240) = v33;
        *&v31 = 1.0 / *(&v33 + 2);
        v34 = *(a1 + 240);
        v35 = vmulq_n_f32(*(a1 + 208), 1.0 / *(&v33 + 2));
        v36 = vmulq_n_f32(*(a1 + 224), 1.0 / *(&v33 + 2));
        *(a1 + 216) = v35.i32[2];
        *(a1 + 232) = v36.i32[2];
        *(a1 + 208) = v35.i64[0];
        *(a1 + 224) = v36.i64[0];
        v37 = vmulq_n_f32(v34, *&v31);
        *(a1 + 248) = v37.i32[2];
        *(a1 + 240) = v37.i64[0];
      }
    }

    else
    {
      objc_storeStrong((a1 + 32), v10);
      *(a1 + 208) = v44;
      *(a1 + 224) = v45;
      *(a1 + 240) = a4;
    }

    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v38 = *(a1 + 64);
    v39 = [v38 countByEnumeratingWithState:&v47 objects:v57 count:16];
    if (v39)
    {
      v41 = v39;
      v42 = *v48;
      do
      {
        for (i = 0; i != v41; ++i)
        {
          if (*v48 != v42)
          {
            objc_enumerationMutation(v38);
          }

          *&v40 = a5;
          [*(*(&v47 + 1) + 8 * i) applyHomographyTransform:&__block_literal_global_14 downscaleRate:*v44.i64 shouldApply:{*v45.i64, *a4.i64, v40, *&v44, *&v45}];
        }

        v41 = [v38 countByEnumeratingWithState:&v47 objects:v57 count:16];
      }

      while (v41);
    }
  }
}

+ (id)groupsFromOutputRegions:(id)a3
{
  v98 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v58 = objc_opt_new();
  v4 = objc_opt_new();
  v61 = [v3 mutableCopy];
  v88 = 0u;
  v89 = 0u;
  v90 = 0u;
  v91 = 0u;
  obj = v3;
  v5 = [obj countByEnumeratingWithState:&v88 objects:v97 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v89;
    v62 = *v89;
    do
    {
      v8 = 0;
      v64 = v6;
      do
      {
        if (*v89 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v88 + 1) + 8 * v8);
        v10 = [v9 trackingID];
        v11 = [v4 objectForKey:v10];

        if (!v11)
        {
          v66 = v8;
          v86 = 0u;
          v87 = 0u;
          v84 = 0u;
          v85 = 0u;
          v12 = v58;
          v13 = [v12 countByEnumeratingWithState:&v84 objects:v96 count:16];
          if (v13)
          {
            v14 = v13;
            v15 = *v85;
            while (2)
            {
              for (i = 0; i != v14; ++i)
              {
                if (*v85 != v15)
                {
                  objc_enumerationMutation(v12);
                }

                v17 = *(*(&v84 + 1) + 8 * i);
                v18 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v12, "count") + objc_msgSend(v61, "count")}];
                [v18 addObjectsFromArray:v61];
                [v18 addObjectsFromArray:v12];
                [v18 removeObject:v9];
                [v18 removeObject:v17];
                if ([v17 addGroupRegionIfValid:v9 context:v18])
                {
                  v22 = [v9 trackingID];
                  [v4 setObject:v17 forKeyedSubscript:v22];

                  [v61 removeObject:v9];
                  goto LABEL_17;
                }
              }

              v14 = [v12 countByEnumeratingWithState:&v84 objects:v96 count:16];
              if (v14)
              {
                continue;
              }

              break;
            }
          }

          v19 = [[CRTrackedRegionGroup alloc] initWithRegion:v9];
          [v12 addObject:v19];

          v20 = [v12 lastObject];
          v21 = [v9 trackingID];
          [v4 setObject:v20 forKeyedSubscript:v21];

          [v61 removeObject:v9];
LABEL_17:
          v7 = v62;
          v6 = v64;
          v8 = v66;
        }

        ++v8;
      }

      while (v8 != v6);
      v6 = [obj countByEnumeratingWithState:&v88 objects:v97 count:16];
    }

    while (v6);
  }

  v63 = objc_opt_new();
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  v23 = v58;
  v24 = [v23 countByEnumeratingWithState:&v80 objects:v95 count:16];
  if (!v24)
  {
    goto LABEL_36;
  }

  v25 = v24;
  v26 = *v81;
  do
  {
    for (j = 0; j != v25; ++j)
    {
      if (*v81 != v26)
      {
        objc_enumerationMutation(v23);
      }

      v28 = *(*(&v80 + 1) + 8 * j);
      if ([v28 numberOfLines] <= 1)
      {
        v29 = [v28 children];
        if ([v29 count] <= 1)
        {

          if (!v28)
          {
            continue;
          }

LABEL_33:
          v28[8] = 1;
          continue;
        }

        v30 = [v28 isInlineGroup];

        if (v28)
        {
          v31 = v30 == 0;
        }

        else
        {
          v31 = 1;
        }

        if (!v31)
        {
          goto LABEL_33;
        }
      }
    }

    v25 = [v23 countByEnumeratingWithState:&v80 objects:v95 count:16];
  }

  while (v25);
LABEL_36:

  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  v32 = v23;
  v33 = [v32 countByEnumeratingWithState:&v76 objects:v94 count:16];
  if (v33)
  {
    v34 = v33;
    v35 = *v77;
    v55 = *v77;
    v56 = v32;
    do
    {
      v36 = 0;
      v57 = v34;
      do
      {
        if (*v77 != v35)
        {
          objc_enumerationMutation(v32);
        }

        v37 = *(*(&v76 + 1) + 8 * v36);
        if ([v37 isInlineGroup])
        {
          v38 = [v37 children];
          v39 = [v38 count];

          if (v39 <= 1)
          {
            v59 = v36;
            v74 = 0u;
            v75 = 0u;
            v72 = 0u;
            v73 = 0u;
            v40 = v32;
            v41 = [v40 countByEnumeratingWithState:&v72 objects:v93 count:16];
            if (v41)
            {
              v42 = v41;
              v43 = *v73;
              v65 = *v73;
              v67 = v40;
              do
              {
                for (k = 0; k != v42; ++k)
                {
                  if (*v73 != v43)
                  {
                    objc_enumerationMutation(v40);
                  }

                  v45 = *(*(&v72 + 1) + 8 * k);
                  v46 = [v45 isInlineGroup];
                  v47 = v37 == v45 || v46 == 0;
                  if (!v47 && [v45 addInlineGroupIfValid:v37])
                  {
                    [v63 addObject:v37];
                    v70 = 0u;
                    v71 = 0u;
                    v68 = 0u;
                    v69 = 0u;
                    v48 = [v37 children];
                    v49 = [v48 countByEnumeratingWithState:&v68 objects:v92 count:16];
                    if (v49)
                    {
                      v50 = v49;
                      v51 = *v69;
                      do
                      {
                        for (m = 0; m != v50; ++m)
                        {
                          if (*v69 != v51)
                          {
                            objc_enumerationMutation(v48);
                          }

                          v53 = [*(*(&v68 + 1) + 8 * m) trackingID];
                          [v4 setObject:v45 forKeyedSubscript:v53];
                        }

                        v50 = [v48 countByEnumeratingWithState:&v68 objects:v92 count:16];
                      }

                      while (v50);
                    }

                    v43 = v65;
                    v40 = v67;
                  }
                }

                v42 = [v40 countByEnumeratingWithState:&v72 objects:v93 count:16];
              }

              while (v42);
            }

            v35 = v55;
            v32 = v56;
            v34 = v57;
            v36 = v59;
          }
        }

        ++v36;
      }

      while (v36 != v34);
      v34 = [v32 countByEnumeratingWithState:&v76 objects:v94 count:16];
    }

    while (v34);
  }

  [v32 removeObjectsInArray:v63];

  return v32;
}

- (NSString)description
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<CRTrackedRegionGroup:\n"];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(CRTrackedRegionGroup *)self children];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v12 + 1) + 8 * i) text];
        [v3 appendFormat:@"  %@\n", v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  [v3 appendString:@">"];
  v10 = [v3 copy];

  return v10;
}

- (void)setBoundingQuadHomography:(__n128)a3
{
  v4[0] = a2;
  v4[1] = a3;
  v4[2] = a4;
  objc_copyStruct((a1 + 208), v4, 48, 1, 0);
}

@end