@interface CRTrackedRegionGroup
+ (id)groupsFromOutputRegions:(id)regions;
- (BOOL)addGroupRegionIfValid:(id)valid context:(id)context;
- (BOOL)addInlineGroupIfValid:(id)valid;
- (CRTrackedRegionGroup)initWithRegion:(id)region;
- (NSString)description;
- (id)estimatedPerspectiveQuad;
- (void)_commitRegionToGroup:(void *)group unionQuad:(void *)quad totalLineHeight:;
- (void)applyHomographyTransform:(float32x4_t)transform downscaleRate:(float32x4_t)rate shouldApply:(float)apply;
- (void)setBoundingQuadHomography:(__n128)homography;
- (void)setOriginalBoundingQuad:(id)quad;
- (void)updateBoundingQuadAfterOCR;
- (void)updatePreviousAssociationQuad;
@end

@implementation CRTrackedRegionGroup

- (CRTrackedRegionGroup)initWithRegion:(id)region
{
  regionCopy = region;
  v29.receiver = self;
  v29.super_class = CRTrackedRegionGroup;
  v5 = [(CRTrackedRegionGroup *)&v29 init];
  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x1E695DF70]);
    trackingID = [regionCopy trackingID];
    v8 = [v6 initWithObjects:{trackingID, 0}];
    objc_setProperty_atomic(v5, v9, v8, 56);

    v10 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{regionCopy, 0}];
    objc_setProperty_atomic(v5, v11, v10, 64);

    v5->_numberOfLines = [regionCopy numberOfLines];
    v5->_isInlineGroup = 0;
    objc_setProperty_atomic(v5, v12, 0, 128);
    boundingQuad = [regionCopy boundingQuad];
    [(CRTrackedRegionGroup *)v5 setBoundingQuad:boundingQuad];

    boundingQuad2 = [regionCopy boundingQuad];
    [(CRTrackedRegionGroup *)v5 setOriginalBoundingQuad:boundingQuad2];

    [(CRTrackedRegionGroup *)v5 setBoundingQuadHomography:*MEMORY[0x1E69E9B10], *(MEMORY[0x1E69E9B10] + 16), *(MEMORY[0x1E69E9B10] + 32)];
    [(CRTrackedRegionGroup *)v5 setHomographyGroupID:0];
    [(CRTrackedRegionGroup *)v5 setInitialOrthogonalityScore:1.0];
    [(CRTrackedRegionGroup *)v5 setTrackNeedsReplacement:0];
    uUID = [MEMORY[0x1E696AFB0] UUID];
    objc_setProperty_atomic(v5, v16, uUID, 136);

    v17 = [CRVCQuad alloc];
    boundingQuad3 = [regionCopy boundingQuad];
    denormalizedQuad = [boundingQuad3 denormalizedQuad];
    v21 = [(CRVCQuad *)v17 initWithImageSpaceQuad:denormalizedQuad uuid:objc_getProperty(v5, v20, 136, 1)];
    objc_setProperty_atomic(v5, v22, v21, 80);

    -[CRTrackedRegionGroup setTextAlignment:](v5, "setTextAlignment:", [regionCopy textAlignment]);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      geometryInfo = [regionCopy geometryInfo];
      if ([regionCopy numberOfLines] < 2)
      {
        isRightJustified = 1;
        v5->_isTextLeftJustified = 1;
      }

      else
      {
        v5->_isTextLeftJustified = [geometryInfo isLeftJustified];
        isRightJustified = [geometryInfo isRightJustified];
      }

      v5->_isTextRightJustified = isRightJustified;
      v25 = MEMORY[0x1E696AD98];
      [geometryInfo estimatedLineHeight];
      v26 = [v25 numberWithDouble:?];
      objc_setProperty_atomic(v5, v27, v26, 128);
    }

    else
    {
      *&v5->_isTextLeftJustified = 0;
    }

    v5->_groupChildrenAlignment = 0;
    v5->_layoutDirection = [regionCopy layoutDirection];
  }

  return v5;
}

- (BOOL)addGroupRegionIfValid:(id)valid context:(id)context
{
  v190 = *MEMORY[0x1E69E9840];
  validCopy = valid;
  contextCopy = context;
  layoutDirection = [validCopy layoutDirection];
  if (layoutDirection == [(CRTrackedRegionGroup *)self layoutDirection])
  {
    lastObject = [(NSMutableArray *)self->_children lastObject];
    [lastObject baselineAngle];
    v11 = v10;
    [validCopy baselineAngle];
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

    geometryInfo = [lastObject geometryInfo];
    geometryInfo2 = [validCopy geometryInfo];
    [validCopy baselineAngle];
    v19 = v18;
    boundingQuad = [(CRTrackedRegionGroup *)self boundingQuad];
    [boundingQuad baselineAngle];
    v22 = v21;
    children = [(CRTrackedRegionGroup *)self children];
    v24 = [children count];
    v25 = __sincos_stret(v19);
    v26 = __sincos_stret(v22);
    v27 = atan2(v25.__sinval + v26.__sinval * v24, v25.__cosval + v26.__cosval * v24);

    boundingQuad2 = [(CRTrackedRegionGroup *)self boundingQuad];
    boundingQuad3 = [validCopy boundingQuad];
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
    v31 = [boundingQuad2 unionWithNormalizedQuad:boundingQuad3 baselineAngle:v30];

    objc_opt_class();
    v184 = v31;
    if (objc_opt_isKindOfClass())
    {
      v32 = -[CRRegionGeometryInfo initFromRegion:layoutDirection:]([CRRegionGeometryInfo alloc], "initFromRegion:layoutDirection:", lastObject, [lastObject layoutDirection]);
      v33 = -[CRRegionGeometryInfo initFromRegion:layoutDirection:]([CRRegionGeometryInfo alloc], "initFromRegion:layoutDirection:", validCopy, [validCopy layoutDirection]);
      v179 = v32;
      v34 = v32;
      v35 = v33;
      v36 = [v34 mutualGeometryInfoWith:?];
      geometryInfo3 = [lastObject geometryInfo];
      geometryInfo4 = [validCopy geometryInfo];
      [geometryInfo3 estimatedLineHeight];
      v40 = v39;
      v175 = geometryInfo4;
      [geometryInfo4 estimatedLineHeight];
      v177 = v41;
      v178 = geometryInfo3;
      if ([v36 isCenterJustified] && (objc_msgSend(geometryInfo3, "isLeftJustified") & 1) == 0)
      {
        v42 = [geometryInfo3 isRightJustified] ^ 1;
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
      [geometryInfo size];
      v169 = v62;
      [geometryInfo2 size];
      v167 = v63;
      [v36 rightOffsetAlongBaseline];
      v165 = v64;
      [geometryInfo size];
      v66 = v65;
      [geometryInfo2 size];
      v68 = v67;
      [v36 leftOffsetAlongBaseline];
      v70 = v69;
      [geometryInfo size];
      v72 = v71;
      [geometryInfo2 size];
      v74 = v70 / fmin(v72, v73);
      [v36 rightOffsetAlongBaseline];
      v76 = v75;
      [geometryInfo size];
      v78 = v77;
      [geometryInfo2 size];
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
        v170 = geometryInfo2;
        v172 = geometryInfo;
        v174 = lastObject;
        [(CRTrackedRegionGroup *)self boundingQuad];
        v93 = v92 = v58;
        denormalizedQuad = [v93 denormalizedQuad];
        [denormalizedQuad bottomLeft];
        v96 = v95;
        v98 = v97;

        boundingQuad4 = [(CRTrackedRegionGroup *)self boundingQuad];
        denormalizedQuad2 = [boundingQuad4 denormalizedQuad];
        [denormalizedQuad2 bottomRight];
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
        v163 = [[CRImageSpaceQuad alloc] initWithTopLeft:v96 topRight:v98 bottomRight:v182 bottomLeft:v166, v127, v128, v125, v163];
        v185 = 0u;
        v186 = 0u;
        v187 = 0u;
        v188 = 0u;
        v183 = contextCopy;
        averageLineHeight2 = contextCopy;
        v131 = [averageLineHeight2 countByEnumeratingWithState:&v185 objects:v189 count:16];
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
                objc_enumerationMutation(averageLineHeight2);
              }

              v135 = *(*(&v185 + 1) + 8 * i);
              boundingQuad5 = [v135 boundingQuad];
              denormalizedQuad3 = [boundingQuad5 denormalizedQuad];
              [denormalizedQuad3 bottomLeft];
              v140 = rotatedPointAroundPoint(v138, v139, v96, v98, v112);

              boundingQuad6 = [v135 boundingQuad];
              denormalizedQuad4 = [boundingQuad6 denormalizedQuad];
              [denormalizedQuad4 bottomRight];
              v145 = rotatedPointAroundPoint(v143, v144, v96, v98, v112);

              if ((v140 <= v115 || v140 >= v121) && (v145 <= v115 || v145 >= v121) && (v140 >= v115 || v145 <= v121))
              {
                boundingQuad7 = [v135 boundingQuad];
                denormalizedQuad5 = [boundingQuad7 denormalizedQuad];
                v151 = [denormalizedQuad5 intersectsQuad:v163];

                if (v151)
                {
                  v91 = 0;
                  v56 = 0;
                  contextCopy = v183;
                  goto LABEL_69;
                }
              }
            }

            v132 = [averageLineHeight2 countByEnumeratingWithState:&v185 objects:v189 count:16];
            if (v132)
            {
              continue;
            }

            break;
          }
        }

        averageLineHeight = [(CRTrackedRegionGroup *)self averageLineHeight];
        contextCopy = v183;
        if (!averageLineHeight || (v153 = averageLineHeight, -[CRTrackedRegionGroup children](self, "children"), v154 = objc_claimAutoreleasedReturnValue(), v155 = [v154 count], v154, v153, v155 == 1))
        {
          v157 = [MEMORY[0x1E696AD98] numberWithDouble:v161];
          if (self)
          {
            objc_setProperty_atomic(self, v156, v157, 128);
          }
        }

        v158 = MEMORY[0x1E696AD98];
        averageLineHeight2 = [(CRTrackedRegionGroup *)self averageLineHeight];
        [averageLineHeight2 doubleValue];
        v56 = [v158 numberWithDouble:{v177 * objc_msgSend(validCopy, "numberOfLines") + v159 * -[CRTrackedRegionGroup numberOfLines](self, "numberOfLines")}];
        v91 = 1;
LABEL_69:
        lastObject = v174;

        geometryInfo2 = v170;
        geometryInfo = v172;
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
      v180 = contextCopy;
      v43 = geometryInfo2;
      v44 = geometryInfo;
      denormalizedQuad6 = [v31 denormalizedQuad];
      [denormalizedQuad6 area];
      v47 = v46;

      boundingQuad8 = [(CRTrackedRegionGroup *)self boundingQuad];
      denormalizedQuad7 = [boundingQuad8 denormalizedQuad];
      [denormalizedQuad7 area];
      v51 = v50;
      boundingQuad9 = [validCopy boundingQuad];
      denormalizedQuad8 = [boundingQuad9 denormalizedQuad];
      [denormalizedQuad8 area];
      v55 = v51 + v54;

      v56 = 0;
      if (v47 > v55 * 1.5)
      {
        v15 = 0;
        geometryInfo = v44;
        geometryInfo2 = v43;
        contextCopy = v180;
        v57 = v184;
LABEL_73:

        goto LABEL_74;
      }

      geometryInfo = v44;
      geometryInfo2 = v43;
      contextCopy = v180;
    }

    v57 = v184;
    [(CRTrackedRegionGroup *)self _commitRegionToGroup:validCopy unionQuad:v184 totalLineHeight:v56];
    v15 = 1;
    goto LABEL_73;
  }

  v15 = 0;
LABEL_75:

  return v15;
}

- (void)_commitRegionToGroup:(void *)group unionQuad:(void *)quad totalLineHeight:
{
  v93 = *MEMORY[0x1E69E9840];
  v7 = a2;
  quadCopy = quad;
  if (!self)
  {
    goto LABEL_88;
  }

  groupCopy = group;
  [self setBoundingQuad:groupCopy];
  [self setOriginalBoundingQuad:groupCopy];
  [self setBoundingQuadHomography:{*MEMORY[0x1E69E9B10], *(MEMORY[0x1E69E9B10] + 16), *(MEMORY[0x1E69E9B10] + 32)}];
  vcQuad = [self vcQuad];
  denormalizedQuad = [groupCopy denormalizedQuad];

  [vcQuad updateWithQuad:denormalizedQuad];
  regionTrackingIDs = [self regionTrackingIDs];
  trackingID = [v7 trackingID];
  [regionTrackingIDs addObject:trackingID];

  children = [self children];
  [children addObject:v7];

  if (([self isInlineGroup] & 1) == 0)
  {
    numberOfLines = [v7 numberOfLines];
    *(self + 72) = [self numberOfLines] + numberOfLines;
  }

  if (quadCopy)
  {
    v16 = MEMORY[0x1E696AD98];
    [quadCopy doubleValue];
    v18 = [v16 numberWithDouble:{v17 / objc_msgSend(self, "numberOfLines")}];
    objc_setProperty_atomic(self, v19, v18, 128);
  }

  v20 = CROSLogForCategory(4);
  v21 = @"-";
  v22 = @"L";
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    numberOfLines2 = [self numberOfLines];
    children2 = [self children];
    v25 = [children2 count];
    if (*(self + 10))
    {
      v26 = @"L";
    }

    else
    {
      v26 = @"-";
    }

    if (*(self + 11))
    {
      v27 = @"R";
    }

    else
    {
      v27 = @"-";
    }

    *v84 = 134218754;
    *&v84[4] = numberOfLines2;
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
      isRightJustified = 0;
    }

    else
    {
      geometryInfo = [v7 geometryInfo];
      isCenterJustified = [geometryInfo isCenterJustified];
      v30 = CROSLogForCategory(4);
      v31 = os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG);
      if (isCenterJustified)
      {
        if (v31)
        {
          if (*(self + 10))
          {
            v32 = @"L";
          }

          else
          {
            v32 = @"-";
          }

          if (*(self + 11))
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

        if (*(self + 10) & 1) != 0 && (*(self + 11))
        {
          [self setTextAlignment:1];
        }

        isRightJustified = 0;
      }

      else
      {
        if (v31)
        {
          if ([geometryInfo isLeftJustified])
          {
            v35 = @"L";
          }

          else
          {
            v35 = @"-";
          }

          if ([geometryInfo isRightJustified])
          {
            v36 = @"R";
          }

          else
          {
            v36 = @"-";
          }

          v37 = *(self + 11);
          if (*(self + 10))
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

        if ([geometryInfo isLeftJustified])
        {
          isRightJustified = [geometryInfo isRightJustified];
        }

        else
        {
          isRightJustified = 0;
        }

        if (*(self + 10))
        {
          isLeftJustified = [geometryInfo isLeftJustified];
        }

        else
        {
          isLeftJustified = 0;
        }

        *(self + 10) = isLeftJustified;
        if (*(self + 11))
        {
          isRightJustified2 = [geometryInfo isRightJustified];
        }

        else
        {
          isRightJustified2 = 0;
        }

        *(self + 11) = isRightJustified2;
      }
    }

    if (*(self + 10) & 1) != 0 || (*(self + 11))
    {
      children3 = [self children];
      boundingQuad = [self boundingQuad];
      [boundingQuad baselineAngle];
      v44 = [CRParagraphOutputRegion paragraphWithLines:children3 confidence:2 baselineAngle:?];

      geometryInfo2 = [v44 geometryInfo];
      *(self + 144) = [v44 textAlignment];
      v46 = CROSLogForCategory(4);
      if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
      {
        v47 = *(self + 144);
        if (*(self + 10))
        {
          v48 = @"L";
        }

        else
        {
          v48 = @"-";
        }

        if (*(self + 11))
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

      if (*(self + 10))
      {
        isLeftJustified2 = [geometryInfo2 isLeftJustified];
      }

      else
      {
        isLeftJustified2 = 0;
      }

      *(self + 10) = isLeftJustified2;
      if (*(self + 11))
      {
        isRightJustified3 = [geometryInfo2 isRightJustified];
      }

      else
      {
        isRightJustified3 = 0;
      }

      *(self + 11) = isRightJustified3;
    }
  }

  else
  {
    isRightJustified = 0;
  }

  numberOfLines3 = [self numberOfLines];
  children4 = [self children];
  v54 = [children4 count];

  if (numberOfLines3 == v54)
  {
    v55 = CROSLogForCategory(4);
    if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
    {
      textAlignment = [self textAlignment];
      v57 = *(self + 144);
      *v84 = 134218240;
      *&v84[4] = textAlignment;
      v85 = 2048;
      v86 = v57;
      _os_log_impl(&dword_1B40D2000, v55, OS_LOG_TYPE_DEBUG, "ALIGNMENT: inherit group children alignment %ld->%ld", v84, 0x16u);
    }

    goto LABEL_77;
  }

  numberOfLines4 = [self numberOfLines];
  v69 = numberOfLines4 - [v7 numberOfLines];
  children5 = [self children];
  v71 = [children5 count] - 1;

  if (v69 != v71)
  {
    textAlignment2 = [self textAlignment];
    if (textAlignment2 != [v7 textAlignment] && !((objc_msgSend(v7, "numberOfLines") < 2) | isRightJustified & 1))
    {
      [self setTextAlignment:0];
      v81 = CROSLogForCategory(4);
      if (os_log_type_enabled(v81, OS_LOG_TYPE_DEBUG))
      {
        *v84 = 0;
        _os_log_impl(&dword_1B40D2000, v81, OS_LOG_TYPE_DEBUG, "ALIGNMENT: mixed alignments", v84, 2u);
      }
    }

    goto LABEL_79;
  }

  v72 = *(self + 144);
  if (v72 == [v7 textAlignment])
  {
    v73 = CROSLogForCategory(4);
    if (os_log_type_enabled(v73, OS_LOG_TYPE_DEBUG))
    {
      textAlignment3 = [self textAlignment];
      textAlignment4 = [v7 textAlignment];
      *v84 = 134218240;
      *&v84[4] = textAlignment3;
      v85 = 2048;
      v86 = textAlignment4;
      _os_log_impl(&dword_1B40D2000, v73, OS_LOG_TYPE_DEBUG, "ALIGNMENT: inherit new region's alignment (same children+text alignment) %ld->%ld", v84, 0x16u);
    }

    [self setTextAlignment:{objc_msgSend(v7, "textAlignment")}];
  }

  if (((*(self + 11) ^ *(self + 10)) & 1) != 0 && ![self textAlignment])
  {
    v76 = CROSLogForCategory(4);
    v77 = os_log_type_enabled(v76, OS_LOG_TYPE_DEBUG);
    if (!isRightJustified)
    {
      if (v77)
      {
        textAlignment5 = [self textAlignment];
        textAlignment6 = [v7 textAlignment];
        *v84 = 134218240;
        *&v84[4] = textAlignment5;
        v85 = 2048;
        v86 = textAlignment6;
        _os_log_impl(&dword_1B40D2000, v76, OS_LOG_TYPE_DEBUG, "ALIGNMENT: inherit new region's alignment (text L^R and unknown) %ld->%ld", v84, 0x16u);
      }

      textAlignment7 = [v7 textAlignment];
      goto LABEL_78;
    }

    if (v77)
    {
      textAlignment8 = [self textAlignment];
      v79 = *(self + 144);
      *v84 = 134218240;
      *&v84[4] = textAlignment8;
      v85 = 2048;
      v86 = v79;
      _os_log_impl(&dword_1B40D2000, v76, OS_LOG_TYPE_DEBUG, "ALIGNMENT: inherit group children alignment %ld->%ld", v84, 0x16u);
    }

LABEL_77:
    textAlignment7 = *(self + 144);
LABEL_78:
    [self setTextAlignment:textAlignment7];
  }

LABEL_79:
  v59 = CROSLogForCategory(4);
  if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
  {
    numberOfLines5 = [self numberOfLines];
    children6 = [self children];
    v62 = [children6 count];
    if ((*(self + 10) & 1) == 0)
    {
      v22 = @"-";
    }

    if (*(self + 11))
    {
      v21 = @"R";
    }

    textAlignment9 = [self textAlignment];
    *v84 = 134219010;
    *&v84[4] = numberOfLines5;
    v85 = 2048;
    v86 = v62;
    v87 = 2112;
    v88 = v22;
    v89 = 2112;
    v90 = v21;
    v91 = 2048;
    v92 = textAlignment9;
    _os_log_impl(&dword_1B40D2000, v59, OS_LOG_TYPE_DEBUG, "ALIGNMENT: DONE %ld line(s) %ld child(ren)\t%@-%@\t%ld", v84, 0x34u);
  }

  v64 = CROSLogForCategory(4);
  if (os_log_type_enabled(v64, OS_LOG_TYPE_DEBUG))
  {
    children7 = [self children];
    lastObject = [children7 lastObject];
    text = [lastObject text];
    *v84 = 138412290;
    *&v84[4] = text;
    _os_log_impl(&dword_1B40D2000, v64, OS_LOG_TYPE_DEBUG, "*  ALIGNMENT: DONE %@", v84, 0xCu);
  }

LABEL_88:
}

- (BOOL)addInlineGroupIfValid:(id)valid
{
  validCopy = valid;
  layoutDirection = [validCopy layoutDirection];
  if (layoutDirection == [(CRTrackedRegionGroup *)self layoutDirection])
  {
    children = [validCopy children];
    lastObject = [children lastObject];

    lastObject2 = [(NSMutableArray *)self->_children lastObject];
    [lastObject2 baselineAngle];
    v10 = v9;
    [lastObject baselineAngle];
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

    v15 = -[CRRegionGeometryInfo initFromRegion:layoutDirection:]([CRRegionGeometryInfo alloc], "initFromRegion:layoutDirection:", lastObject2, [lastObject2 layoutDirection]);
    v16 = -[CRRegionGeometryInfo initFromRegion:layoutDirection:]([CRRegionGeometryInfo alloc], "initFromRegion:layoutDirection:", lastObject, [lastObject layoutDirection]);
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
    [lastObject baselineAngle];
    v29 = v28;
    boundingQuad = [(CRTrackedRegionGroup *)self boundingQuad];
    [boundingQuad baselineAngle];
    v32 = v31;
    children2 = [(CRTrackedRegionGroup *)self children];
    v34 = [children2 count];
    v35 = __sincos_stret(v29);
    v36 = __sincos_stret(v32);
    v37 = atan2(v35.__sinval + v36.__sinval * v34, v35.__cosval + v36.__cosval * v34);

    boundingQuad2 = [(CRTrackedRegionGroup *)self boundingQuad];
    boundingQuad3 = [lastObject boundingQuad];
    if (v37 <= 3.14159265)
    {
      HIDWORD(v40) = -1073143301;
      if (v37 > -3.14159265)
      {
LABEL_23:
        *&v40 = v37;
        v41 = [boundingQuad2 unionWithNormalizedQuad:boundingQuad3 baselineAngle:v40];

        v42 = MEMORY[0x1E696AD98];
        v15 = v48;
        [v48 estimatedLineHeight];
        v44 = v43;
        [v16 estimatedLineHeight];
        v46 = [v42 numberWithDouble:v44 + v45];
        [(CRTrackedRegionGroup *)self _commitRegionToGroup:lastObject unionQuad:v41 totalLineHeight:v46];

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

  children = [(CRTrackedRegionGroup *)self children];
  firstObject = [children firstObject];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    goto LABEL_22;
  }

  numberOfLines = [(CRTrackedRegionGroup *)self numberOfLines];
  v7 = 0;
  if (self && numberOfLines >= 2)
  {
    if (self->_isTextLeftJustified || self->_isTextRightJustified)
    {
      array = [MEMORY[0x1E695DF70] array];
      v230 = 0u;
      v231 = 0u;
      v232 = 0u;
      v233 = 0u;
      selfCopy = self;
      children2 = [(CRTrackedRegionGroup *)self children];
      v10 = [children2 countByEnumeratingWithState:&v230 objects:v235 count:16];
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
              objc_enumerationMutation(children2);
            }

            v21 = *(*(&v230 + 1) + 8 * v20);
            children3 = [v21 children];
            [array addObjectsFromArray:children3];

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
            boundingQuad = [(CRTrackedRegionGroup *)selfCopy boundingQuad];
            [boundingQuad baselineAngle];
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
          v11 = [children2 countByEnumeratingWithState:&v230 objects:v235 count:16];
        }

        while (v11);
      }

      else
      {
        v14 = 0;
        v13 = 0;
      }

      v33 = selfCopy;
      isTextLeftJustified = selfCopy->_isTextLeftJustified;
      isTextRightJustified = selfCopy->_isTextRightJustified;
      if (!isTextLeftJustified && !isTextRightJustified)
      {
        v7 = 0;
LABEL_65:

        goto LABEL_23;
      }

      children4 = [(CRTrackedRegionGroup *)v33 children];
      v37 = [children4 objectAtIndexedSubscript:v14];
      boundingQuad2 = [v37 boundingQuad];
      denormalizedQuad = [boundingQuad2 denormalizedQuad];
      [denormalizedQuad topLeft];
      v41 = v40;
      v43 = v42;

      children5 = [(CRTrackedRegionGroup *)v33 children];
      v45 = [children5 objectAtIndexedSubscript:v14];
      boundingQuad3 = [v45 boundingQuad];
      denormalizedQuad2 = [boundingQuad3 denormalizedQuad];
      [denormalizedQuad2 topRight];
      v217 = v48;
      v215 = v49;

      children6 = [(CRTrackedRegionGroup *)v33 children];
      v51 = [children6 objectAtIndexedSubscript:v13];
      boundingQuad4 = [v51 boundingQuad];
      denormalizedQuad3 = [boundingQuad4 denormalizedQuad];
      [denormalizedQuad3 bottomLeft];
      v55 = v54;
      v57 = v56;

      children7 = [(CRTrackedRegionGroup *)v33 children];
      v59 = [children7 objectAtIndexedSubscript:v13];
      boundingQuad5 = [v59 boundingQuad];
      denormalizedQuad4 = [boundingQuad5 denormalizedQuad];
      [denormalizedQuad4 bottomRight];
      v63 = v62;
      v65 = v64;

      children8 = [(CRTrackedRegionGroup *)v33 children];
      v67 = [children8 objectAtIndexedSubscript:v14];
      objc_opt_class();
      LOBYTE(boundingQuad5) = objc_opt_isKindOfClass();

      if (boundingQuad5)
      {
        children9 = [(CRTrackedRegionGroup *)v33 children];
        v69 = [children9 objectAtIndexedSubscript:v14];
        topBottomEdgesQuad = [v69 topBottomEdgesQuad];
        denormalizedQuad5 = [topBottomEdgesQuad denormalizedQuad];
        [denormalizedQuad5 topLeft];
        v41 = v72;
        v43 = v73;

        children10 = [(CRTrackedRegionGroup *)v33 children];
        v75 = [children10 objectAtIndexedSubscript:v14];
        topBottomEdgesQuad2 = [v75 topBottomEdgesQuad];
        denormalizedQuad6 = [topBottomEdgesQuad2 denormalizedQuad];
        [denormalizedQuad6 topRight];
        v217 = v78;
        v215 = v79;
      }

      children11 = [(CRTrackedRegionGroup *)v33 children];
      v81 = [children11 objectAtIndexedSubscript:v13];
      objc_opt_class();
      v82 = objc_opt_isKindOfClass();

      v219 = v43;
      if (v82)
      {
        children12 = [(CRTrackedRegionGroup *)v33 children];
        v84 = [children12 objectAtIndexedSubscript:v13];
        topBottomEdgesQuad3 = [v84 topBottomEdgesQuad];
        denormalizedQuad7 = [topBottomEdgesQuad3 denormalizedQuad];
        [denormalizedQuad7 bottomLeft];
        v55 = v87;
        v57 = v88;

        children13 = [(CRTrackedRegionGroup *)v33 children];
        v90 = [children13 objectAtIndexedSubscript:v13];
        topBottomEdgesQuad4 = [v90 topBottomEdgesQuad];
        denormalizedQuad8 = [topBottomEdgesQuad4 denormalizedQuad];
        [denormalizedQuad8 bottomRight];
        v94 = v93;
        v213 = v95;
      }

      else
      {
        v213 = v65;
        v94 = v63;
      }

      v96 = MEMORY[0x1E695EFF8];
      children14 = [(CRTrackedRegionGroup *)v33 children];
      v98 = [children14 objectAtIndexedSubscript:v14];
      [v98 baselineAngle];
      v100 = v99;

      children15 = [(CRTrackedRegionGroup *)v33 children];
      v102 = [children15 objectAtIndexedSubscript:v13];
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
          children16 = [(CRTrackedRegionGroup *)v33 children];
          v134 = [children16 countByEnumeratingWithState:&v226 objects:v234 count:16];
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
                  objc_enumerationMutation(children16);
                }

                boundingQuad6 = [*(*(&v226 + 1) + 8 * i) boundingQuad];
                denormalizedQuad9 = [boundingQuad6 denormalizedQuad];
                *&v147 = v140;
                v148 = [denormalizedQuad9 rotatedAroundPoint:v223 angle:{v109, v147}];

                [v148 topLeft];
                if (v149 < v137)
                {
                  [v148 topLeft];
                  v137 = v150;
                  denormalizedQuad10 = [boundingQuad6 denormalizedQuad];
                  [denormalizedQuad10 topLeft];
                  v143 = v152;
                  v119 = v153;
                }

                [v148 bottomLeft];
                if (v154 < v137)
                {
                  [v148 bottomLeft];
                  v137 = v155;
                  denormalizedQuad11 = [boundingQuad6 denormalizedQuad];
                  [denormalizedQuad11 bottomLeft];
                  v143 = v157;
                  v119 = v158;
                }

                [v148 topRight];
                if (v159 > v139)
                {
                  [v148 topRight];
                  v139 = v160;
                  denormalizedQuad12 = [boundingQuad6 denormalizedQuad];
                  [denormalizedQuad12 topRight];
                  v142 = v162;
                  v141 = v163;
                }

                [v148 bottomRight];
                if (v164 > v139)
                {
                  [v148 bottomRight];
                  v139 = v165;
                  denormalizedQuad13 = [boundingQuad6 denormalizedQuad];
                  [denormalizedQuad13 bottomRight];
                  v142 = v167;
                  v141 = v168;
                }
              }

              v135 = [children16 countByEnumeratingWithState:&v226 objects:v234 count:16];
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

          v130 = [[CRImageSpaceQuad alloc] initWithTopLeft:v126 topRight:v128 bottomRight:v217 bottomLeft:v215, v205, v213, v129, v130];
          v170 = [[CRImageSpaceQuad alloc] initWithBoundingBox:0.0, 0.0, 1.0, 1.0];
          [(CRImageSpaceQuad *)v130 homographyFromSelfToQuad:v170];
          v171.i32[3] = 0;
          v172.i32[3] = 0;
          v214 = v172;
          v216 = v171;
          v173.i32[3] = 0;
          v212 = v173;
          [(CRImageSpaceQuad *)v170 homographyFromSelfToQuad:v130];
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
          v194 = [[CRImageSpaceQuad alloc] initWithTopLeft:v182 topRight:v184 bottomRight:v187 bottomLeft:v189, v197, v198, v192, v194];
          boundingQuad7 = [(CRTrackedRegionGroup *)v33 boundingQuad];
          [boundingQuad7 normalizationSize];
          v7 = [(CRImageSpaceQuad *)v194 normalizedQuadForImageSize:?];

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

- (void)setOriginalBoundingQuad:(id)quad
{
  quadCopy = quad;
  if (self->_originalBoundingQuad != quadCopy)
  {
    v7 = quadCopy;
    objc_storeStrong(&self->_originalBoundingQuad, quad);
    Current = CFAbsoluteTimeGetCurrent();
    quadCopy = v7;
    self->_lastOriginalBoundingQuadUpdateTime = Current;
  }
}

- (void)updatePreviousAssociationQuad
{
  boundingQuad = [(CRTrackedRegionGroup *)self boundingQuad];
  boundingQuadAtOCRDispatch = self->_boundingQuadAtOCRDispatch;
  self->_boundingQuadAtOCRDispatch = boundingQuad;

  v5 = MEMORY[0x1E69E9B10];
  v6 = *(MEMORY[0x1E69E9B10] + 16);
  *self->_anon_a0 = *MEMORY[0x1E69E9B10];
  *&self->_anon_a0[16] = v6;
  *&self->_anon_a0[32] = *(v5 + 32);
}

- (void)updateBoundingQuadAfterOCR
{
  boundingQuad = [(CRTrackedRegionGroup *)self boundingQuad];
  denormalizedQuad = [boundingQuad denormalizedQuad];
  boundingQuadAfterOCR = self->_boundingQuadAfterOCR;
  self->_boundingQuadAfterOCR = denormalizedQuad;
}

- (void)applyHomographyTransform:(float32x4_t)transform downscaleRate:(float32x4_t)rate shouldApply:(float)apply
{
  transformCopy = transform;
  v44 = a2;
  v58 = *MEMORY[0x1E69E9840];
  v9 = a7;
  boundingQuad = [self boundingQuad];
  denormalizedQuad = [boundingQuad denormalizedQuad];
  *&v12 = apply;
  v13 = [denormalizedQuad applyHomographyTransform:*v44.i64 downscaleRate:{*transformCopy.i64, *rate.i64, v12}];

  [boundingQuad normalizationSize];
  if (v9[2](v9, v13))
  {
    [boundingQuad normalizationSize];
    v14 = [v13 normalizedQuadForImageSize:?];
    [self setBoundingQuad:v14];

    vcQuad = [self vcQuad];
    [vcQuad updateWithQuad:v13];

    originalBoundingQuad = [self originalBoundingQuad];

    if (originalBoundingQuad)
    {
      if (rate.f32[2] != 0.0)
      {
        v17 = 0;
        v18 = *(self + 176);
        v19 = *(self + 192);
        v51 = *(self + 160);
        v52 = v18;
        v53 = v19;
        v54 = 0u;
        v55 = 0u;
        v56 = 0u;
        do
        {
          *(&v54 + v17) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v44, COERCE_FLOAT(*(&v51 + v17))), transformCopy, *(&v51 + v17), 1), rate, *(&v51 + v17), 2);
          v17 += 16;
        }

        while (v17 != 48);
        v20 = 0;
        v21 = v54;
        v22 = v55;
        v23 = v56;
        *(self + 168) = DWORD2(v54);
        *(self + 160) = v21;
        *(self + 184) = DWORD2(v22);
        *(self + 176) = v22;
        *&v21 = 1.0 / *(&v23 + 2);
        v24 = *(self + 176);
        v25 = vmulq_n_f32(*(self + 160), 1.0 / *(&v23 + 2));
        *(self + 168) = v25.i32[2];
        *(self + 200) = DWORD2(v23);
        *(self + 192) = v23;
        *(self + 160) = v25.i64[0];
        v26 = vmulq_n_f32(v24, 1.0 / *(&v23 + 2));
        *(self + 184) = v26.i32[2];
        *(self + 176) = v26.i64[0];
        v27 = *(self + 208);
        v28 = vmulq_n_f32(*(self + 192), *&v21);
        *(self + 200) = v28.i32[2];
        *(self + 192) = v28.i64[0];
        v29 = *(self + 224);
        v30 = *(self + 240);
        v51 = v27;
        v52 = v29;
        v53 = v30;
        v54 = 0u;
        v55 = 0u;
        v56 = 0u;
        do
        {
          *(&v54 + v20) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v44, COERCE_FLOAT(*(&v51 + v20))), transformCopy, *(&v51 + v20), 1), rate, *(&v51 + v20), 2);
          v20 += 16;
        }

        while (v20 != 48);
        v31 = v54;
        v32 = v55;
        v33 = v56;
        *(self + 216) = DWORD2(v54);
        *(self + 232) = DWORD2(v32);
        *(self + 208) = v31;
        *(self + 224) = v32;
        *(self + 248) = DWORD2(v33);
        *(self + 240) = v33;
        *&v31 = 1.0 / *(&v33 + 2);
        v34 = *(self + 240);
        v35 = vmulq_n_f32(*(self + 208), 1.0 / *(&v33 + 2));
        v36 = vmulq_n_f32(*(self + 224), 1.0 / *(&v33 + 2));
        *(self + 216) = v35.i32[2];
        *(self + 232) = v36.i32[2];
        *(self + 208) = v35.i64[0];
        *(self + 224) = v36.i64[0];
        v37 = vmulq_n_f32(v34, *&v31);
        *(self + 248) = v37.i32[2];
        *(self + 240) = v37.i64[0];
      }
    }

    else
    {
      objc_storeStrong((self + 32), boundingQuad);
      *(self + 208) = v44;
      *(self + 224) = transformCopy;
      *(self + 240) = rate;
    }

    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v38 = *(self + 64);
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

          *&v40 = apply;
          [*(*(&v47 + 1) + 8 * i) applyHomographyTransform:&__block_literal_global_14 downscaleRate:*v44.i64 shouldApply:{*transformCopy.i64, *rate.i64, v40, *&v44, *&transformCopy}];
        }

        v41 = [v38 countByEnumeratingWithState:&v47 objects:v57 count:16];
      }

      while (v41);
    }
  }
}

+ (id)groupsFromOutputRegions:(id)regions
{
  v98 = *MEMORY[0x1E69E9840];
  regionsCopy = regions;
  v58 = objc_opt_new();
  v4 = objc_opt_new();
  v61 = [regionsCopy mutableCopy];
  v88 = 0u;
  v89 = 0u;
  v90 = 0u;
  v91 = 0u;
  obj = regionsCopy;
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
        trackingID = [v9 trackingID];
        v11 = [v4 objectForKey:trackingID];

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
                  trackingID2 = [v9 trackingID];
                  [v4 setObject:v17 forKeyedSubscript:trackingID2];

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

          lastObject = [v12 lastObject];
          trackingID3 = [v9 trackingID];
          [v4 setObject:lastObject forKeyedSubscript:trackingID3];

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
        children = [v28 children];
        if ([children count] <= 1)
        {

          if (!v28)
          {
            continue;
          }

LABEL_33:
          v28[8] = 1;
          continue;
        }

        isInlineGroup = [v28 isInlineGroup];

        if (v28)
        {
          v31 = isInlineGroup == 0;
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
          children2 = [v37 children];
          v39 = [children2 count];

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
                  isInlineGroup2 = [v45 isInlineGroup];
                  v47 = v37 == v45 || isInlineGroup2 == 0;
                  if (!v47 && [v45 addInlineGroupIfValid:v37])
                  {
                    [v63 addObject:v37];
                    v70 = 0u;
                    v71 = 0u;
                    v68 = 0u;
                    v69 = 0u;
                    children3 = [v37 children];
                    v49 = [children3 countByEnumeratingWithState:&v68 objects:v92 count:16];
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
                            objc_enumerationMutation(children3);
                          }

                          trackingID4 = [*(*(&v68 + 1) + 8 * m) trackingID];
                          [v4 setObject:v45 forKeyedSubscript:trackingID4];
                        }

                        v50 = [children3 countByEnumeratingWithState:&v68 objects:v92 count:16];
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
  children = [(CRTrackedRegionGroup *)self children];
  v5 = [children countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(children);
        }

        text = [*(*(&v12 + 1) + 8 * i) text];
        [v3 appendFormat:@"  %@\n", text];
      }

      v6 = [children countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  [v3 appendString:@">"];
  v10 = [v3 copy];

  return v10;
}

- (void)setBoundingQuadHomography:(__n128)homography
{
  v4[0] = a2;
  v4[1] = homography;
  v4[2] = a4;
  objc_copyStruct((self + 208), v4, 48, 1, 0);
}

@end