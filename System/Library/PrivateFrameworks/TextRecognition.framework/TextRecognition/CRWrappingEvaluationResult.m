@interface CRWrappingEvaluationResult
- (BOOL)contributesToVerticalSpacing;
- (BOOL)excessiveVerticalDistance;
- (BOOL)similarAngles;
- (BOOL)similarHeights;
- (CGSize)featureInTestSize;
- (CGSize)imageSize;
- (CGSize)lastFeatureSize;
- (CRLineWrappingContext)context;
- (CRWrappingEvaluationResult)initWithTextFeature:(id)a3 context:(id)a4 imageSize:(CGSize)a5 parameters:(id)a6 skipTextComputation:(BOOL)a7;
- (double)eosLMScore;
- (double)lmScore;
- (double)verticalSpacingToHeightRatio;
- (id).cxx_construct;
- (id)_spaceSeparatedTokens:(id)a3;
- (id)description;
- (id)resultByMerging:(id)a3;
- (int64_t)_tokenCountForString:(id)a3;
- (int64_t)caseWrappingScoreUsingCustomConfiguration:(BOOL)a3;
- (int64_t)punctuationWrappingScoreUsingCustomConfiguration:(BOOL)a3;
- (int64_t)textBasedEvaluation;
- (int64_t)textContentWrappingScore;
- (int64_t)tokenCountDiff;
- (int64_t)wordCountWrappingScore;
- (vector<unsigned)featureTokens;
- (void)_computeCharLMScores;
- (void)_computeDDPropertiesWithContext:(id)a3;
- (void)_computeGeometricProperties;
- (void)_computeIsHyphenatedPrefixOfWord:(id)a3;
- (void)_computeLMScoreComputingEOS:(BOOL)a3;
- (void)_computeNoTextWithContext:(id)a3;
- (void)_processDDWithCombinedString:(id)a3 locale:(id)a4 withResultBlock:(id)a5;
- (void)_setParagraphTextWithString:(id)a3 context:(id)a4;
@end

@implementation CRWrappingEvaluationResult

- (CRWrappingEvaluationResult)initWithTextFeature:(id)a3 context:(id)a4 imageSize:(CGSize)a5 parameters:(id)a6 skipTextComputation:(BOOL)a7
{
  height = a5.height;
  width = a5.width;
  v14 = a3;
  v15 = a4;
  v16 = a6;
  v27.receiver = self;
  v27.super_class = CRWrappingEvaluationResult;
  v17 = [(CRWrappingEvaluationResult *)&v27 init];
  p_isa = &v17->super.isa;
  v19 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_featureInTest, a3);
    objc_storeWeak(p_isa + 15, v15);
    objc_storeStrong(p_isa + 14, a6);
    v20 = [v15 locale];
    v21 = [p_isa[11] locale];
    v22 = [v21 languageIdentifier];
    v19->_matchingLocales = [v20 isEqualToString:v22];

    *&v19->_isHyphenatedPrefixOfWord = 256;
    if (v19->_matchingLocales)
    {
      v23 = [v14 text];
      v19->_shouldAllowWhitespaceDelimiter = [v15 shouldAllowWhitespaceDelimiterForString:v23];
    }

    [(CRWrappingEvaluationResult *)v19 _computeGeometricProperties];
    if ([v15 lineCount] && v19->_matchingLocales && !a7)
    {
      [(CRWrappingEvaluationResult *)v19 _computeDDPropertiesWithContext:v15];
      [(CRWrappingEvaluationResult *)v19 _computeNoTextWithContext:v15];
      [(CRWrappingEvaluationResult *)v19 _computeIsHyphenatedPrefixOfWord:v15];
      v24 = [p_isa[11] text];
      v19->_f2StartOfSentence = [v24 _crIsStartOfSentence];
    }

    v19->_imageSize.width = width;
    v19->_imageSize.height = height;
    if (!a7)
    {
      v25 = [v14 text];
      [(CRWrappingEvaluationResult *)v19 _setParagraphTextWithString:v25 context:v15];
    }
  }

  return v19;
}

- (id)resultByMerging:(id)a3
{
  v4 = a3;
  if ([v4 isOversegmented])
  {
    v5 = [(CRWrappingEvaluationResult *)self featureInTest];
    v6 = [v4 featureInTest];
    [v5 mergeWithLine:v6];

    v7 = [CRWrappingEvaluationResult alloc];
    v8 = [(CRWrappingEvaluationResult *)self featureInTest];
    v9 = [(CRWrappingEvaluationResult *)self context];
    [(CRWrappingEvaluationResult *)self imageSize];
    v11 = v10;
    v13 = v12;
    v14 = [(CRWrappingEvaluationResult *)self parameters];
    v15 = [(CRWrappingEvaluationResult *)v7 initWithTextFeature:v8 context:v9 imageSize:v14 parameters:1 skipTextComputation:v11, v13];
  }

  else
  {
    v16 = CROSLogForCategory(0);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *v18 = 0;
      _os_log_impl(&dword_1B40D2000, v16, OS_LOG_TYPE_ERROR, "Unable to merge results that are not due to oversegmentation", v18, 2u);
    }

    v15 = self;
  }

  return v15;
}

- (void)_setParagraphTextWithString:(id)a3 context:(id)a4
{
  v14 = a3;
  v6 = a4;
  if ([v6 lineCount])
  {
    v7 = [v6 text];
    if ([v7 _crEndsWithHyphen])
    {
      isHyphenatedPrefixOfWord = self->_isHyphenatedPrefixOfWord;
    }

    else
    {
      isHyphenatedPrefixOfWord = 0;
    }

    v10 = [v6 text];
    v11 = [v6 locale];
    v12 = [v10 _crStringByAppendingString:v14 locale:v11 mergeHyphenatedWord:isHyphenatedPrefixOfWord allowWhitespaceDelimiter:self->_shouldAllowWhitespaceDelimiter];
    paragraphText = self->_paragraphText;
    self->_paragraphText = v12;
  }

  else
  {
    v9 = v14;
    v10 = self->_paragraphText;
    self->_paragraphText = v9;
  }
}

- (void)_computeNoTextWithContext:(id)a3
{
  v6 = a3;
  v4 = [v6 text];
  self->_contextNoText = [v4 _crContainsText] ^ 1;

  v5 = [(CRLineWrappable *)self->_featureInTest text];
  self->_featureInTestNoText = [v5 _crContainsText] ^ 1;
}

- (void)_computeIsHyphenatedPrefixOfWord:(id)a3
{
  v4 = a3;
  self->_isHyphenatedPrefixOfWord = 0;
  v14 = v4;
  v5 = [v4 text];
  v6 = [(CRWrappingEvaluationResult *)self _spaceSeparatedTokens:v5];
  v7 = [v6 lastObject];

  if (v7 && [v7 length] >= 3 && objc_msgSend(v7, "_crEndsWithHyphen"))
  {
    v8 = [(CRLineWrappable *)self->_featureInTest text];
    v9 = [(CRWrappingEvaluationResult *)self _spaceSeparatedTokens:v8];
    v10 = [v9 firstObject];

    if (v10 && [v10 length])
    {
      v11 = MEMORY[0x1E696AD60];
      v12 = [v7 substringToIndex:{objc_msgSend(v7, "length") - 1}];
      v13 = [v11 stringWithString:v12];

      [v13 appendString:v10];
      self->_isHyphenatedPrefixOfWord = [v14 isValidWordString:v13];
    }
  }
}

- (void)_computeGeometricProperties
{
  v226 = *MEMORY[0x1E69E9840];
  v3 = [(CRWrappingEvaluationResult *)self context];

  if (v3)
  {
    v221 = [(CRWrappingEvaluationResult *)self featureInTest];
    v4 = [v221 boundingQuad];
    v5 = [v4 denormalizedQuad];
    [v5 size];
    [(CRWrappingEvaluationResult *)self setFeatureInTestSize:?];

    v222 = [(CRWrappingEvaluationResult *)self context];
    v6 = [v222 lineCount];

    if (!v6)
    {
      return;
    }

    v7 = [(CRWrappingEvaluationResult *)self context];
    v223 = [v7 lastFeature];

    v8 = [v223 boundingQuad];
    v9 = [v8 denormalizedQuad];

    [v9 size];
    [(CRWrappingEvaluationResult *)self setLastFeatureSize:?];
    [v9 size];
    v11 = v10;
    v13 = v12;
    [(CRWrappingEvaluationResult *)self featureInTestSize];
    v15 = v14;
    v17 = v16;
    if (v16 <= 0.0)
    {
      v19 = 0.0;
    }

    else
    {
      v8 = [(CRWrappingEvaluationResult *)self context];
      [v8 averageLineHeight];
      v19 = v18 / v17;
      *&v19 = v19;
    }

    [(CRWrappingEvaluationResult *)self setTextHeightRatio:v19];
    if (v17 > 0.0)
    {
    }

    v21 = 0.0;
    if (v11 > 0.0)
    {
      v21 = v15 / v11;
      *&v21 = v15 / v11;
    }

    [(CRWrappingEvaluationResult *)self setTextWidthRatio:v21];
    v22 = [(CRWrappingEvaluationResult *)self context];
    v23 = [v22 lastFeature];
    v24 = [v23 boundingQuad];
    [v24 baselineAngle];
    v26 = v25;
    if (v25 <= 3.14159265)
    {
      if (v25 > -3.14159265)
      {
        goto LABEL_19;
      }

      v27 = 6.28318531;
    }

    else
    {
      v27 = -6.28318531;
    }

    v26 = v26 + v27;
LABEL_19:
    v28 = [(CRWrappingEvaluationResult *)self featureInTest];
    v29 = [v28 boundingQuad];
    [v29 baselineAngle];
    if (v30 <= 3.14159265)
    {
      if (v30 > -3.14159265)
      {
        goto LABEL_24;
      }

      v31 = 6.28318531;
    }

    else
    {
      v31 = -6.28318531;
    }

    v30 = v30 + v31;
LABEL_24:
    v32 = v26 - v30;
    if (v32 <= 3.14159265)
    {
      if (v32 > -3.14159265)
      {
LABEL_29:
        *&v32 = v32;
        [(CRWrappingEvaluationResult *)self setAngleDiff:v32];

        v34 = [v223 boundingQuad];
        v35 = [(CRWrappingEvaluationResult *)self featureInTest];
        v36 = [v35 boundingQuad];

        v37 = [(CRWrappingEvaluationResult *)self context];
        v38 = [v37 lastFeature];
        v39 = [v38 boundingQuad];
        [v39 baselineAngle];
        v41 = v40;
        v42 = [(CRWrappingEvaluationResult *)self featureInTest];
        v43 = [v42 boundingQuad];
        [v43 baselineAngle];
        v45 = (1.0 - v11 / (v11 + v15)) * v44 + v41 * (v11 / (v11 + v15));

        *&v45 = v45;
        LODWORD(v46) = LODWORD(v45);
        v47 = [v34 rotatedAroundNormalizedPoint:0.5 angle:{0.5, v46}];
        v48 = [v47 denormalizedQuad];

        LODWORD(v49) = LODWORD(v45);
        v50 = [v36 rotatedAroundNormalizedPoint:0.5 angle:{0.5, v49}];
        v51 = [v50 denormalizedQuad];

        [v51 topLeft];
        v53 = v52;
        [v48 bottomLeft];
        [(CRWrappingEvaluationResult *)self setVerticalSpacing:v53 - v54];
        [v34 topLeft];
        v56 = v55;
        v58 = v57;
        [v36 topLeft];
        v60 = v59;
        v62 = v61;
        [v34 normalizationSize];
        if (v63 > 0.0)
        {
          v65 = v64 <= 0.0;
          v66 = v56 * v63;
          v67 = v58 * v64;
          v68 = v60 * v63;
          v69 = v62 * v64;
          if (!v65)
          {
            v60 = v68;
            v62 = v69;
            v56 = v66;
            v58 = v67;
          }
        }

        v70 = sqrt((v58 - v62) * (v58 - v62) + (v56 - v60) * (v56 - v60));
        *&v70 = v70;
        [(CRWrappingEvaluationResult *)self setTopDistanceLeft:v70];
        [v34 topRight];
        v72 = v71;
        v74 = v73;
        [v36 topLeft];
        v76 = v75;
        v78 = v77;
        [v34 normalizationSize];
        if (v79 > 0.0 && v80 > 0.0)
        {
          v72 = v72 * v79;
          v74 = v74 * v80;
          v76 = v76 * v79;
          v78 = v78 * v80;
        }

        v81 = sqrt((v74 - v78) * (v74 - v78) + (v72 - v76) * (v72 - v76));
        *&v81 = v81;
        [(CRWrappingEvaluationResult *)self setTopDistanceRight:v81];
        [v34 topRight];
        v83 = v82;
        v85 = v84;
        v86 = [(CRWrappingEvaluationResult *)self featureInTest];
        v87 = [v86 boundingQuad];
        [v87 bottomLeft];
        v89 = v88;
        v91 = v90;
        [v34 normalizationSize];
        if (v92 > 0.0 && v93 > 0.0)
        {
          v83 = v83 * v92;
          v85 = v85 * v93;
          v89 = v89 * v92;
          v91 = v91 * v93;
        }

        v94 = sqrt((v85 - v91) * (v85 - v91) + (v83 - v89) * (v83 - v89));
        *&v94 = v94;
        [(CRWrappingEvaluationResult *)self setTopDistanceRightToBottomLeft:v94];

        [v34 bottomLeft];
        v96 = v95;
        v98 = v97;
        [v36 topLeft];
        v100 = v99;
        v102 = v101;
        [v34 normalizationSize];
        if (v103 > 0.0 && v104 > 0.0)
        {
          v96 = v96 * v103;
          v98 = v98 * v104;
          v100 = v100 * v103;
          v102 = v102 * v104;
        }

        v105 = sqrt((v98 - v102) * (v98 - v102) + (v96 - v100) * (v96 - v100));
        *&v105 = v105;
        [(CRWrappingEvaluationResult *)self setLeftDistance:v105];
        [v34 bottomRight];
        v107 = v106;
        v109 = v108;
        [v36 topRight];
        v111 = v110;
        v113 = v112;
        [v34 normalizationSize];
        if (v114 > 0.0 && v115 > 0.0)
        {
          v107 = v107 * v114;
          v109 = v109 * v115;
          v111 = v111 * v114;
          v113 = v113 * v115;
        }

        v116 = sqrt((v109 - v113) * (v109 - v113) + (v107 - v111) * (v107 - v111));
        *&v116 = v116;
        [(CRWrappingEvaluationResult *)self setRightDistance:v116];
        [v34 midPoint];
        v118 = v117;
        v120 = v119;
        [v36 midPoint];
        v122 = v121;
        v124 = v123;
        [v34 normalizationSize];
        if (v125 > 0.0 && v126 > 0.0)
        {
          v118 = v118 * v125;
          v120 = v120 * v126;
          v122 = v122 * v125;
          v124 = v124 * v126;
        }

        v127 = sqrt((v120 - v124) * (v120 - v124) + (v118 - v122) * (v118 - v122));
        *&v127 = v127;
        [(CRWrappingEvaluationResult *)self setMidDistance:v127];
        [v51 topRight];
        v129 = v128;
        [v48 topLeft];
        v131 = v129 - v130;
        *&v131 = v131;
        [(CRWrappingEvaluationResult *)self setHorizontalOverlap:v131];
        [v51 bottomLeft];
        v133 = v132;
        [v48 topLeft];
        v135 = v133 - v134;
        *&v135 = v133 - v134;
        [(CRWrappingEvaluationResult *)self setVerticalOverlap:v135];
        [v51 topLeft];
        v137 = v136;
        [v48 topRight];
        v139 = v137 - v138;
        *&v139 = v139;
        [(CRWrappingEvaluationResult *)self setXSpace:v139];
        [v48 topRight];
        v141 = v140;
        [v51 bottomLeft];
        v143 = v141 - v142;
        *&v143 = v141 - v142;
        [(CRWrappingEvaluationResult *)self setYSpace:v143];
        if (![(CRWrappingEvaluationResult *)self similarHeights]|| ![(CRWrappingEvaluationResult *)self similarAngles])
        {
          goto LABEL_91;
        }

        [(CRWrappingEvaluationResult *)self topDistanceLeft];
        v145 = v144;
        [(CRWrappingEvaluationResult *)self topDistanceRight];
        if (v145 > v146)
        {
          [(CRWrappingEvaluationResult *)self topDistanceRight];
          v148 = v147;
          [(CRWrappingEvaluationResult *)self topDistanceRightToBottomLeft];
          if (v148 < v149)
          {
            [(CRWrappingEvaluationResult *)self topDistanceRight];
            v151 = v150;
            v152 = [(CRWrappingEvaluationResult *)self parameters];
            [v152 oversegmentedDistanceHeightRatioTolerance];
            v154 = (v13 + v17) * v153 * 0.5;

            if (v154 > v151)
            {
              [(CRWrappingEvaluationResult *)self setIsOversegmented:1];
            }

            v155 = [(CRWrappingEvaluationResult *)self context];
            v156 = [v155 lineCount];

            if (v156 == 1)
            {
              if (-[CRWrappingEvaluationResult isOversegmented](self, "isOversegmented") || (-[CRWrappingEvaluationResult topDistanceRight](self, "topDistanceRight"), v158 = v157, -[CRWrappingEvaluationResult parameters](self, "parameters"), v159 = objc_claimAutoreleasedReturnValue(), [v159 oversegmentedDistanceHeightRatioListItemTolerance], v161 = (v13 + v17) * v160 * 0.5, v159, v161 > v158))
              {
                v162 = [(CRWrappingEvaluationResult *)self context];
                v163 = [v162 text];
                if ([v163 _crIsListItemMarker])
                {
                  v219 = [(CRWrappingEvaluationResult *)self featureInTest];
                  v164 = [v219 text];
                  v165 = [v164 _crContainsText];

                  if (v165)
                  {
                    [(CRWrappingEvaluationResult *)self setOversegmentedListItem:1];
                    [(CRWrappingEvaluationResult *)self setIsOversegmented:1];
                  }
                }

                else
                {
                }
              }
            }
          }
        }

        if ([(CRWrappingEvaluationResult *)self isOversegmented])
        {
          goto LABEL_91;
        }

        [(CRWrappingEvaluationResult *)self verticalSpacing];
        v167 = v166;
        v168 = [(CRWrappingEvaluationResult *)self parameters];
        [v168 verticalSpacingRatioTolerance];
        v170 = v13 * v169;

        if (v167 < v170)
        {
          v171 = [(CRWrappingEvaluationResult *)self context];
          if ([v171 isRTL])
          {
            [(CRWrappingEvaluationResult *)self rightDistance];
          }

          else
          {
            [(CRWrappingEvaluationResult *)self leftDistance];
          }

          v173 = v172;

          v174 = [(CRWrappingEvaluationResult *)self context];
          if ([v174 isRTL])
          {
            [v48 topRight];
            v176 = v175;
            [v51 topLeft];
            v178 = v176 > v177;
          }

          else
          {
            [v48 topLeft];
            v180 = v179;
            [v51 topRight];
            v178 = v180 < v181;
          }

          v182 = [(CRWrappingEvaluationResult *)self parameters];
          [v182 leadingDistanceRatioTolerance];
          v183 = v173;
          v185 = v13 * v184;

          if (v185 > v183)
          {
            goto LABEL_78;
          }

          v186 = [(CRWrappingEvaluationResult *)self context];
          v187 = [v186 lineCount] == 1 && v178;

          if (v187 != 1)
          {
            goto LABEL_79;
          }

          v188 = [(CRWrappingEvaluationResult *)self parameters];
          [v188 newParagraphIndentDistanceRatioTolerance];
          v190 = v13 * v189;

          if (fabs(v183) >= v190)
          {
            goto LABEL_79;
          }

          v191 = [(CRWrappingEvaluationResult *)self context];
          if ([v191 isRTL])
          {
            [v48 topLeft];
            v193 = v192;
            [v51 topLeft];
            v195 = v194;

            if (v193 > v195)
            {
              goto LABEL_78;
            }
          }

          else
          {
            [v48 topRight];
            v197 = v196;
            [v51 topRight];
            v199 = v198;

            if (v197 < v199)
            {
LABEL_78:
              [(CRWrappingEvaluationResult *)self setLeadingAligned:1];
              goto LABEL_79;
            }
          }

          v220 = [(CRWrappingEvaluationResult *)self context];
          v218 = [v220 lastFeature];
          v200 = [v218 text];
          if ([v200 _crStartsWithListItemIndicator])
          {

            goto LABEL_78;
          }

          v217 = [(CRWrappingEvaluationResult *)self context];
          v201 = [v217 lastFeature];
          v202 = [v201 text];
          v203 = [v202 _crStartsWithDigit];

          if (v203)
          {
            goto LABEL_78;
          }
        }

LABEL_79:
        [(CRWrappingEvaluationResult *)self midDistance];
        if (v13 + v17 > v204)
        {
          [(CRWrappingEvaluationResult *)self setCenterAligned:1];
        }

        v205 = [(CRWrappingEvaluationResult *)self context];
        v206 = [v205 lastFeature];
        v207 = [v206 text];
        v208 = [(CRWrappingEvaluationResult *)self _tokenCountForString:v207];

        if (![(CRWrappingEvaluationResult *)self centerAligned])
        {
          v209 = [(CRWrappingEvaluationResult *)self leadingAligned];
          v210 = v208 < 3 || v209;
          if ((v210 & 1) == 0)
          {
            v211 = [(CRWrappingEvaluationResult *)self featureInTest];
            v212 = [v211 text];
            v213 = [v212 length];

            if (v213 >= 3)
            {
              [(CRWrappingEvaluationResult *)self ySpace];
              if (v17 < v214)
              {
                [(CRWrappingEvaluationResult *)self xSpace];
                if (v215 > 0.0)
                {
                  [(CRWrappingEvaluationResult *)self xSpace];
                  if (v11 * 0.25 > v216)
                  {
                    [(CRWrappingEvaluationResult *)self setContinuesToNewColumn:1];
                  }
                }
              }
            }
          }
        }

LABEL_91:

        return;
      }

      v33 = 6.28318531;
    }

    else
    {
      v33 = -6.28318531;
    }

    v32 = v32 + v33;
    goto LABEL_29;
  }

  v20 = CROSLogForCategory(0);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315138;
    v225 = "[CRWrappingEvaluationResult _computeGeometricProperties]";
    _os_log_impl(&dword_1B40D2000, v20, OS_LOG_TYPE_FAULT, "%s: Unexpected nil context", buf, 0xCu);
  }
}

- (void)_processDDWithCombinedString:(id)a3 locale:(id)a4 withResultBlock:(id)a5
{
  v39 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v32 = a5;
  v30 = v8;
  v29 = [MEMORY[0x1E6999A90] _crConfigForLocale:a4];
  [MEMORY[0x1E6999A88] scanString:v8 range:0 configuration:{objc_msgSend(v8, "length"), v29}];
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  obj = v35 = 0u;
  v9 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v9)
  {
    v10 = *v35;
LABEL_3:
    v11 = 0;
    while (1)
    {
      if (*v35 != v10)
      {
        objc_enumerationMutation(obj);
      }

      v12 = *(*(&v34 + 1) + 8 * v11);
      if ([v12 category])
      {
        v13 = [v12 urlificationRange];
        v15 = v14;
        v16 = [(CRWrappingEvaluationResult *)self sentencePuncStringToCheck];
        v17 = v13 < [v16 length];

        if (v17)
        {
          if (v13 <= 2)
          {
            v13 = 2;
          }

          v18 = [(CRWrappingEvaluationResult *)self sentencePuncStringToCheck];
          v19 = v13 - 2;
          v20 = v15 + 2;
          if ([v18 length] - v19 < (v15 + 2))
          {
            v21 = [(CRWrappingEvaluationResult *)self sentencePuncStringToCheck];
            v22 = [v21 length];

            v20 = v22 - v19;
          }

          v23 = [v30 substringWithRange:{v19, v20}];
          v24 = [MEMORY[0x1E696AB08] punctuationCharacterSet];
          v25 = [v23 _crContainsCharactersInSet:v24];

          if (v25)
          {
            v26 = [(CRWrappingEvaluationResult *)self sentencePuncStringToCheck];
            v27 = [&stru_1F2BB4348 stringByPaddingToLength:v20 withString:@"-" startingAtIndex:0];
            v28 = [v26 stringByReplacingCharactersInRange:v19 withString:{v20, v27}];
            [(CRWrappingEvaluationResult *)self setSentencePuncStringToCheck:v28];
          }
        }

        v33 = 0;
        v32[2](v32, v12, &v33);
        if (v33)
        {
          break;
        }
      }

      if (v9 == ++v11)
      {
        v9 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
        if (v9)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

- (void)_computeDDPropertiesWithContext:(id)a3
{
  v4 = a3;
  v5 = [v4 text];
  v6 = [v5 _crDDFriendlyTextWithIndexMapping:0];

  v7 = [(CRLineWrappable *)self->_featureInTest text];
  v8 = [v7 _crDDFriendlyTextWithIndexMapping:0];

  if ([(CRWrappingEvaluationResult *)self matchingLocales])
  {
    v9 = [v4 locale];
  }

  else
  {
    v9 = 0;
  }

  [(CRWrappingEvaluationResult *)self setSentencePuncStringToCheck:v6];
  v10 = [v6 stringByAppendingFormat:@"\n%@", v8];
  *&v18 = [v6 length] + 1;
  *(&v18 + 1) = [v8 length];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __62__CRWrappingEvaluationResult__computeDDPropertiesWithContext___block_invoke;
  v16[3] = &unk_1E7BC2EC8;
  v17 = v18;
  v16[4] = self;
  [(CRWrappingEvaluationResult *)self _processDDWithCombinedString:v10 locale:v9 withResultBlock:v16];
  if (-[CRWrappingEvaluationResult multilineDD](self, "multilineDD") || ([MEMORY[0x1E696AB08] decimalDigitCharacterSet], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v10, "_crContainsCharactersInSet:", v11), v11, !v12))
  {
    v13 = v10;
  }

  else
  {
    v13 = [v6 _crStringByAppendingString:v8 locale:v9 appendedStringRange:&v18];

    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __62__CRWrappingEvaluationResult__computeDDPropertiesWithContext___block_invoke_2;
    v14[3] = &unk_1E7BC2EC8;
    v15 = v18;
    v14[4] = self;
    [(CRWrappingEvaluationResult *)self _processDDWithCombinedString:v13 locale:v9 withResultBlock:v14];
  }
}

void __62__CRWrappingEvaluationResult__computeDDPropertiesWithContext___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v12 = v3;
  v15.location = [v3 urlificationRange];
  v15.length = v6;
  v14.location = v4;
  v14.length = v5;
  v7 = NSIntersectionRange(v14, v15);
  if (v7.length)
  {
    v8 = [v12 urlificationRange];
    v9 = *(a1 + 40);
    if (v8 < v9)
    {
      [*(a1 + 32) setMultilineDD:1];
      v9 = *(a1 + 40);
    }

    if (v7.location == v9)
    {
      [*(a1 + 32) setF2BeginsWithDD:1];
      if (v7.length >= *(a1 + 48) - 1)
      {
        [*(a1 + 32) setF2FullyDD:1];
      }
    }
  }

  else
  {
    v10 = [v12 urlificationRange];
    [v12 urlificationRange];
    if (v11 + v10 == *(a1 + 40) - 1)
    {
      [*(a1 + 32) setF1EndsWithDD:1];
    }
  }
}

void __62__CRWrappingEvaluationResult__computeDDPropertiesWithContext___block_invoke_2(uint64_t a1, void *a2)
{
  v6 = a2;
  if ([v6 category] == 4)
  {
    v3 = *(a1 + 40);
    v4 = *(a1 + 48);
    v9.location = [v6 urlificationRange];
    v9.length = v5;
    v8.location = v3;
    v8.length = v4;
    if (NSIntersectionRange(v8, v9).length)
    {
      if ([v6 urlificationRange] < *(a1 + 40))
      {
        [*(a1 + 32) setWrappedDD:1];
      }
    }
  }
}

- (id)description
{
  v24 = MEMORY[0x1E696AEC0];
  v30 = [MEMORY[0x1E696AD98] numberWithBool:self->_matchingLocales];
  v28 = [(CRWrappingEvaluationResult *)self context];
  v29 = [v28 locale];
  v26 = [(CRWrappingEvaluationResult *)self featureInTest];
  v27 = [v26 locale];
  v22 = [(CRWrappingEvaluationResult *)self textContentWrappingScore];
  v21 = [(CRWrappingEvaluationResult *)self caseWrappingScoreUsingCustomConfiguration:1];
  v19 = [(CRWrappingEvaluationResult *)self wordCountWrappingScore];
  v18 = [(CRWrappingEvaluationResult *)self punctuationWrappingScoreUsingCustomConfiguration:1];
  [(CRWrappingEvaluationResult *)self textHeightRatio];
  v4 = v3;
  [(CRWrappingEvaluationResult *)self textWidthRatio];
  v6 = v5;
  [(CRWrappingEvaluationResult *)self angleDiff];
  v8 = v7;
  v25 = [MEMORY[0x1E696AD98] numberWithBool:{-[CRWrappingEvaluationResult isOversegmented](self, "isOversegmented")}];
  v23 = [MEMORY[0x1E696AD98] numberWithBool:{-[CRWrappingEvaluationResult leadingAligned](self, "leadingAligned")}];
  v20 = [MEMORY[0x1E696AD98] numberWithBool:{-[CRWrappingEvaluationResult centerAligned](self, "centerAligned")}];
  v17 = [MEMORY[0x1E696AD98] numberWithBool:{-[CRWrappingEvaluationResult continuesToNewColumn](self, "continuesToNewColumn")}];
  v16 = [(CRWrappingEvaluationResult *)self paragraphText];
  v15 = [MEMORY[0x1E696AD98] numberWithBool:{-[CRWrappingEvaluationResult lmScoreSet](self, "lmScoreSet")}];
  [(CRWrappingEvaluationResult *)self cachedLMScore];
  v10 = v9;
  v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[CRWrappingEvaluationResult eosLMScoreSet](self, "eosLMScoreSet")}];
  [(CRWrappingEvaluationResult *)self cachedEOSLMScore];
  v13 = [v24 stringWithFormat:@"{\nmatchingLocales:\t%@ -(%@/%@)\ntextContentWrappingScore/caseScore/wcScore/puncScore:\t%ld/%ld/%ld/%ld\ntextHeightRatio/textWidthRatio/angleDiff:\t%f/%f/%f\noverSegmented/leadingAligned/centerAligned/newColumn:\t%@/%@/%@/%@\ntext:%@\nlmScoreSet/lmScore/eosScoreSet/eosLMScore:%@/%.4f/%@/%.4f\n}", v30, v29, v27, v22, v21, v19, v18, v4, v6, v8, v25, v23, v20, v17, v16, v15, v10, v11, v12];

  return v13;
}

- (int64_t)textContentWrappingScore
{
  if ([(CRWrappingEvaluationResult *)self multilineDD])
  {
    return -10;
  }

  if ([(CRWrappingEvaluationResult *)self wrappedDD]|| [(CRWrappingEvaluationResult *)self oversegmentedListItem]|| [(CRWrappingEvaluationResult *)self isHyphenatedPrefixOfWord])
  {
    return 10;
  }

  if (![(CRWrappingEvaluationResult *)self contextNoText]&& ![(CRWrappingEvaluationResult *)self featureInTestNoText])
  {
    v5 = [(CRWrappingEvaluationResult *)self featureInTest];
    v6 = [v5 text];
    if ([v6 _crIsProgrammingStatement])
    {
    }

    else
    {
      v7 = [(CRWrappingEvaluationResult *)self context];
      v8 = [v7 lastFeature];
      v9 = [v8 text];
      v10 = [v9 _crIsProgrammingStatement];

      if ((v10 & 1) == 0 && ![(CRWrappingEvaluationResult *)self f2StartOfSentence])
      {
        if (![(CRWrappingEvaluationResult *)self f1EndsWithDD]|| ![(CRWrappingEvaluationResult *)self f2BeginsWithDD])
        {
          if ([(CRWrappingEvaluationResult *)self f2FullyDD])
          {
            return -2;
          }

          v11 = [(CRWrappingEvaluationResult *)self featureInTest];
          v12 = [v11 text];
          if ([v12 length] <= 1)
          {
          }

          else
          {
            v13 = [(CRWrappingEvaluationResult *)self context];
            v14 = [v13 lastFeature];
            v15 = [v14 text];
            v16 = [v15 length];

            if (v16 > 1)
            {
              return 0;
            }
          }
        }

        return -6;
      }
    }

    return -10;
  }

  v3 = -2;
  if ([(CRWrappingEvaluationResult *)self contextNoText]&& [(CRWrappingEvaluationResult *)self featureInTestNoText])
  {
    return -10;
  }

  return v3;
}

- (int64_t)caseWrappingScoreUsingCustomConfiguration:(BOOL)a3
{
  v3 = a3;
  v30 = *MEMORY[0x1E69E9840];
  v5 = [(CRWrappingEvaluationResult *)self context];

  if (v5)
  {
    if (![(CRWrappingEvaluationResult *)self multilineDD])
    {
      v6 = [(CRWrappingEvaluationResult *)self context];
      v7 = [v6 shouldConsiderLetterCase];

      if (v7)
      {
        v8 = [(CRWrappingEvaluationResult *)self context];
        v9 = [v8 lastFeature];
        v10 = [v9 text];
        v11 = [(CRWrappingEvaluationResult *)self _spaceSeparatedTokens:v10];
        v12 = [v11 lastObject];

        v13 = [(CRWrappingEvaluationResult *)self featureInTest];
        v14 = [v13 text];
        v15 = [(CRWrappingEvaluationResult *)self _spaceSeparatedTokens:v14];
        v16 = [v15 firstObject];

        if (-[CRWrappingEvaluationResult f1EndsWithDD](self, "f1EndsWithDD") || -[CRWrappingEvaluationResult f2BeginsWithDD](self, "f2BeginsWithDD") || (-[CRWrappingEvaluationResult featureInTest](self, "featureInTest"), v17 = objc_claimAutoreleasedReturnValue(), [v17 text], v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "_crStartsWithLowercase"), v18, v17, !v19))
        {
          if ([v12 _crIsAllCaps] && objc_msgSend(v16, "_crIsAllCaps") && !-[CRWrappingEvaluationResult f1EndsWithDD](self, "f1EndsWithDD") && !-[CRWrappingEvaluationResult f2BeginsWithDD](self, "f2BeginsWithDD"))
          {
            v21 = 6;
          }

          else
          {
            v24 = [v12 _crIsAllCaps];
            if (v24 != [v16 _crIsAllCaps] && objc_msgSend(v12, "_crContainsText") && objc_msgSend(v16, "_crContainsText") && objc_msgSend(v12, "length") >= 2 && objc_msgSend(v16, "length") > 1)
            {
              v21 = -6;
            }

            else
            {
              if (![(CRWrappingEvaluationResult *)self contextNoText]&& ![(CRWrappingEvaluationResult *)self featureInTestNoText])
              {
                v25 = [(CRWrappingEvaluationResult *)self featureInTest];
                v26 = [v25 text];
                if ([v26 _crStartsWithUppercase])
                {
                  v27 = [v16 isEqualToString:@"I"];

                  if ((v27 & 1) == 0 && ([v12 _crStartsWithUppercase] & 1) == 0)
                  {
                    if ([(CRWrappingEvaluationResult *)self f2BeginsWithDD])
                    {
                      v21 = 0;
                    }

                    else
                    {
                      v21 = -2;
                    }

                    goto LABEL_34;
                  }
                }

                else
                {
                }
              }

              v21 = 0;
            }
          }
        }

        else if (v3)
        {
          v20 = [(CRWrappingEvaluationResult *)self parameters];
          v21 = [v20 caseWrappingScoreWithNoCapitalization];
        }

        else
        {
          v21 = 10;
        }

LABEL_34:

        return v21;
      }
    }
  }

  else
  {
    v22 = CROSLogForCategory(0);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
    {
      v28 = 136315138;
      v29 = "[CRWrappingEvaluationResult caseWrappingScoreUsingCustomConfiguration:]";
      _os_log_impl(&dword_1B40D2000, v22, OS_LOG_TYPE_FAULT, "%s: Unexpected nil context", &v28, 0xCu);
    }
  }

  return 0;
}

- (int64_t)wordCountWrappingScore
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = [(CRWrappingEvaluationResult *)self context];

  if (!v3)
  {
    v14 = CROSLogForCategory(0);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      v20 = 136315138;
      v21 = "[CRWrappingEvaluationResult wordCountWrappingScore]";
      _os_log_impl(&dword_1B40D2000, v14, OS_LOG_TYPE_FAULT, "%s: Unexpected nil context", &v20, 0xCu);
    }

    return 0;
  }

  v4 = [(CRWrappingEvaluationResult *)self context];
  v5 = [v4 usesWordTokens];

  if (!v5)
  {
    return 0;
  }

  v6 = [(CRWrappingEvaluationResult *)self context];
  v7 = [v6 lastFeature];
  v8 = [v7 text];
  v9 = [(CRWrappingEvaluationResult *)self _tokenCountForString:v8];

  v10 = [(CRWrappingEvaluationResult *)self featureInTest];
  v11 = [v10 text];
  v12 = [(CRWrappingEvaluationResult *)self _tokenCountForString:v11];

  if (v9 != 1 || v12 < 3)
  {
    if (v12 == 1)
    {
      v15 = [(CRWrappingEvaluationResult *)self featureInTest];
      v16 = [v15 text];
      if ([v16 _crEndsWithEOS])
      {

        return 6;
      }

      v17 = [(CRWrappingEvaluationResult *)self featureInTest];
      v18 = [v17 text];
      v19 = [v18 _crEndsWithClosingPunctuation];

      if (v19)
      {
        return 6;
      }
    }

    return 0;
  }

  if ([(CRWrappingEvaluationResult *)self isOversegmented])
  {
    return 0;
  }

  else
  {
    return -2;
  }
}

- (int64_t)punctuationWrappingScoreUsingCustomConfiguration:(BOOL)a3
{
  v3 = a3;
  v57 = *MEMORY[0x1E69E9840];
  v5 = [(CRWrappingEvaluationResult *)self context];

  if (!v5)
  {
    v12 = CROSLogForCategory(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v56 = "[CRWrappingEvaluationResult punctuationWrappingScoreUsingCustomConfiguration:]";
      _os_log_impl(&dword_1B40D2000, v12, OS_LOG_TYPE_FAULT, "%s: Unexpected nil context", buf, 0xCu);
    }

    return 0;
  }

  v6 = [(CRWrappingEvaluationResult *)self context];
  v7 = [v6 lastFeature];
  v8 = [v7 text];
  if (![v8 _crEndsWithEOS])
  {

LABEL_10:
    v14 = [(CRWrappingEvaluationResult *)self context];
    v15 = [v14 lastFeature];
    v16 = [v15 text];
    v17 = [v16 _crEndsWithMOS];

    if (v17)
    {
      if (!v3)
      {
        return 10;
      }

      v18 = [(CRWrappingEvaluationResult *)self parameters];
      v19 = [v18 punctuationWrappingScoreWithEndingMOS];
      goto LABEL_13;
    }

    if (![(CRWrappingEvaluationResult *)self wrappedDD])
    {
      v20 = [(CRWrappingEvaluationResult *)self context];
      v54 = [v20 lastFeature];
      v53 = [v54 text];
      v21 = [v53 _crStartsWithDigit];
      v22 = v21;
      if (v21)
      {
        v52 = [(CRWrappingEvaluationResult *)self featureInTest];
        v51 = [v52 text];
        if ([v51 _crStartsWithDigit])
        {

          return -6;
        }
      }

      v23 = [(CRWrappingEvaluationResult *)self context];
      v24 = [v23 lastFeature];
      v25 = [v24 text];
      if ([v25 _crEndsWithDigit])
      {
        v26 = [(CRWrappingEvaluationResult *)self featureInTest];
        v27 = [v26 text];
        v28 = [v27 _crEndsWithDigit];

        if (v22)
        {
        }

        if (v28)
        {
          return -6;
        }
      }

      else
      {

        if (v22)
        {
        }
      }
    }

    if (-[CRWrappingEvaluationResult textContentWrappingScore](self, "textContentWrappingScore") < 0 || (-[CRWrappingEvaluationResult sentencePuncStringToCheck](self, "sentencePuncStringToCheck"), v31 = objc_claimAutoreleasedReturnValue(), -[CRWrappingEvaluationResult context](self, "context"), v32 = objc_claimAutoreleasedReturnValue(), v33 = [v31 _crIsSentencePunctuatedIncludingWhitespace:{objc_msgSend(v32, "usesWordTokens")}], v32, v31, !v33))
    {
      v38 = [(CRWrappingEvaluationResult *)self context];
      v39 = [v38 lastFeature];
      v40 = [v39 text];
      v41 = [v40 _crEndsWithClosingPunctuation];

      if (v41)
      {
        return -2;
      }

      else
      {
        return 0;
      }
    }

    v34 = [(CRWrappingEvaluationResult *)self context];
    v35 = [v34 lastFeature];
    v36 = [v35 text];
    v37 = [v36 _crEndsWithClosingPunctuation];

    if (v37)
    {
      return 2;
    }

    if (!v3)
    {
      v18 = [(CRWrappingEvaluationResult *)self context];
      v43 = [v18 lastFeature];
      v44 = [v43 locale];
      v45 = [v44 languageIdentifier];
      if ([CRImageReader languageIsChinese:v45])
      {
        v13 = 2;
      }

      else
      {
        v46 = [(CRWrappingEvaluationResult *)self context];
        v47 = [v46 lastFeature];
        v48 = [v47 locale];
        v49 = [v48 languageIdentifier];
        v50 = [CRImageReader languageIsJapanese:v49];

        if (v50)
        {
          v13 = 2;
        }

        else
        {
          v13 = 10;
        }
      }

      goto LABEL_14;
    }

    v18 = [(CRWrappingEvaluationResult *)self parameters];
    v19 = [v18 punctuationWrappingScoreWithNoClosingPunctuation];
LABEL_13:
    v13 = v19;
LABEL_14:

    return v13;
  }

  v9 = [(CRWrappingEvaluationResult *)self oversegmentedListItem];

  if (v9)
  {
    goto LABEL_10;
  }

  v10 = [(CRWrappingEvaluationResult *)self featureInTest];
  v11 = [v10 text];
  if ([v11 _crStartsWithUppercase])
  {

    return -10;
  }

  v29 = [(CRWrappingEvaluationResult *)self context];
  v30 = [v29 shouldConsiderLetterCase];

  if ((v30 & 1) == 0)
  {
    return -10;
  }

  return -2;
}

- (BOOL)similarHeights
{
  v3 = [(CRWrappingEvaluationResult *)self parameters];
  [v3 heightSimilarityRatio];
  v5 = v4;

  v6 = [(CRWrappingEvaluationResult *)self context];
  v7 = [v6 text];
  if ([v7 length] <= 2)
  {
  }

  else
  {
    v8 = [(CRWrappingEvaluationResult *)self featureInTest];
    v9 = [v8 text];
    v10 = [v9 length];

    if (v10 > 2)
    {
      goto LABEL_6;
    }
  }

  v5 = v5 * 1.5;
LABEL_6:
  [(CRWrappingEvaluationResult *)self textHeightRatio];
  return fabsf(v11 + -1.0) < v5;
}

- (BOOL)similarAngles
{
  v3 = [(CRWrappingEvaluationResult *)self parameters];
  [v3 angleSimilarityThreshold];
  v5 = v4;

  v6 = [(CRWrappingEvaluationResult *)self context];
  v7 = [v6 text];
  if ([v7 length] <= 2)
  {
  }

  else
  {
    v8 = [(CRWrappingEvaluationResult *)self featureInTest];
    v9 = [v8 text];
    v10 = [v9 length];

    if (v10 > 2)
    {
      goto LABEL_6;
    }
  }

  v5 = v5 * 3.0;
LABEL_6:
  [(CRWrappingEvaluationResult *)self angleDiff];
  return fabsf(v11) < v5;
}

- (BOOL)excessiveVerticalDistance
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = [(CRWrappingEvaluationResult *)self context];

  if (!v3)
  {
    v5 = CROSLogForCategory(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      v19 = 136315138;
      v20 = "[CRWrappingEvaluationResult excessiveVerticalDistance]";
      _os_log_impl(&dword_1B40D2000, v5, OS_LOG_TYPE_FAULT, "%s: Unexpected nil context", &v19, 0xCu);
    }

    return 0;
  }

  v4 = [(CRWrappingEvaluationResult *)self context];
  if ([v4 lineCount] < 2)
  {

    return 0;
  }

  v6 = [(CRWrappingEvaluationResult *)self contributesToVerticalSpacing];

  if (!v6)
  {
    return 0;
  }

  [(CRWrappingEvaluationResult *)self verticalSpacingToHeightRatio];
  v8 = v7;
  v9 = [(CRWrappingEvaluationResult *)self parameters];
  [v9 smallestVerticalDistanceHeightRatio];
  if (v8 > v10)
  {
    [(CRWrappingEvaluationResult *)self verticalSpacingToHeightRatio];
    v13 = v16;
  }

  else
  {
    v11 = [(CRWrappingEvaluationResult *)self parameters];
    [v11 smallestVerticalDistanceHeightRatio];
    v13 = v12;
  }

  v17 = [(CRWrappingEvaluationResult *)self parameters];
  [v17 maximumVerticalDistanceGrowthRatio];
  v14 = v13 > v18;

  return v14;
}

- (BOOL)contributesToVerticalSpacing
{
  if ([(CRWrappingEvaluationResult *)self continuesToNewColumn])
  {
    return 0;
  }

  else
  {
    return ![(CRWrappingEvaluationResult *)self isOversegmented];
  }
}

- (double)verticalSpacingToHeightRatio
{
  v3 = [(CRWrappingEvaluationResult *)self context];
  v4 = [v3 lineCount];

  [(CRWrappingEvaluationResult *)self featureInTestSize];
  v6 = v5;
  v7 = [(CRWrappingEvaluationResult *)self context];
  [v7 averageLineHeight];
  v9 = v8;

  v10 = [(CRWrappingEvaluationResult *)self context];
  [v10 averageVerticalSpacing];
  v12 = v11;
  v13 = [(CRWrappingEvaluationResult *)self parameters];
  [v13 smallestVerticalDistanceHeightRatio];
  v14 = (1.0 - 1.0 / (v4 + 1)) * v9 + v6 * (1.0 / (v4 + 1));
  if (v12 <= v14 * v15)
  {
    v16 = [(CRWrappingEvaluationResult *)self parameters];
    [v16 smallestVerticalDistanceHeightRatio];
    v18 = v14 * v19;
  }

  else
  {
    v16 = [(CRWrappingEvaluationResult *)self context];
    [v16 averageVerticalSpacing];
    v18 = v17;
  }

  [(CRWrappingEvaluationResult *)self verticalSpacing];
  return v20 / v18;
}

- (int64_t)tokenCountDiff
{
  v3 = [(CRWrappingEvaluationResult *)self featureInTest];
  v4 = [v3 text];
  v5 = [(CRWrappingEvaluationResult *)self _tokenCountForString:v4];
  v6 = [(CRWrappingEvaluationResult *)self context];
  v7 = [v6 lastFeature];
  v8 = [v7 text];
  v9 = v5 - [(CRWrappingEvaluationResult *)self _tokenCountForString:v8];

  return v9;
}

- (int64_t)textBasedEvaluation
{
  v3 = consolidateWrapScores([(CRWrappingEvaluationResult *)self textContentWrappingScore], [(CRWrappingEvaluationResult *)self caseWrappingScoreUsingCustomConfiguration:1]);
  v4 = consolidateWrapScores(v3, [(CRWrappingEvaluationResult *)self wordCountWrappingScore]);
  v5 = [(CRWrappingEvaluationResult *)self punctuationWrappingScoreUsingCustomConfiguration:1];

  return consolidateWrapScores(v4, v5);
}

- (double)lmScore
{
  if (![(CRWrappingEvaluationResult *)self lmScoreSet])
  {
    [(CRWrappingEvaluationResult *)self _computeLMScoreComputingEOS:0];
  }

  [(CRWrappingEvaluationResult *)self cachedLMScore];
  return result;
}

- (double)eosLMScore
{
  if (![(CRWrappingEvaluationResult *)self eosLMScoreSet])
  {
    [(CRWrappingEvaluationResult *)self _computeLMScoreComputingEOS:1];
  }

  [(CRWrappingEvaluationResult *)self cachedEOSLMScore];
  return result;
}

- (void)_computeLMScoreComputingEOS:(BOOL)a3
{
  v3 = a3;
  v14 = *MEMORY[0x1E69E9840];
  v5 = [(CRWrappingEvaluationResult *)self context];

  if (v5)
  {
    if (v3)
    {
      if ([(CRWrappingEvaluationResult *)self eosLMScoreSet])
      {
        return;
      }
    }

    else if ([(CRWrappingEvaluationResult *)self lmScoreSet])
    {
      return;
    }

    v7 = [(CRWrappingEvaluationResult *)self context];
    v8 = [v7 usesWordTokens];

    if (v8)
    {
      v9 = [(CRWrappingEvaluationResult *)self context];
      v10 = v9;
      if (v3)
      {
        [v9 wordLMScoreByAddingToken:2];
        self->_cachedEOSLMScore = v11;

        [(CRWrappingEvaluationResult *)self setEosLMScoreSet:1];
      }

      else
      {
        [(CRWrappingEvaluationResult *)self featureTokens];
        [v10 wordLMScoreByAddingTokens:&__p];
        self->_cachedLMScore = v12;
        if (__p)
        {
          *(&__p + 1) = __p;
          operator delete(__p);
        }

        [(CRWrappingEvaluationResult *)self setLmScoreSet:1];
      }
    }

    else
    {

      [(CRWrappingEvaluationResult *)self _computeCharLMScores];
    }
  }

  else
  {
    v6 = CROSLogForCategory(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      LODWORD(__p) = 136315138;
      *(&__p + 4) = "[CRWrappingEvaluationResult _computeLMScoreComputingEOS:]";
      _os_log_impl(&dword_1B40D2000, v6, OS_LOG_TYPE_FAULT, "%s: Unexpected nil context", &__p, 0xCu);
    }
  }
}

- (void)_computeCharLMScores
{
  v7 = 0.0;
  v3 = [(CRWrappingEvaluationResult *)self context];
  v4 = [(CRWrappingEvaluationResult *)self featureInTest];
  v5 = [v4 text];
  [v3 charLMScoreByAddingString:v5 eosScore:&v7];
  self->_cachedLMScore = v6;

  self->_cachedEOSLMScore = v7;
  [(CRWrappingEvaluationResult *)self setLmScoreSet:1];
  [(CRWrappingEvaluationResult *)self setEosLMScoreSet:1];
}

- (vector<unsigned)featureTokens
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = [(CRWrappingEvaluationResult *)self context];

  if (v4)
  {
    if (![(CRWrappingEvaluationResult *)self featureTokensSet])
    {
      v5 = [(CRWrappingEvaluationResult *)self context];
      v6 = [v5 usesWordTokens];

      if (v6)
      {
        v7 = [(CRWrappingEvaluationResult *)self context];
        v8 = [(CRWrappingEvaluationResult *)self featureInTest];
        v9 = [v8 text];
        if (v7)
        {
          [v7 tokenizeStringIntoWords:v9];
        }

        else
        {
          __p = 0;
          v13 = 0;
          v14 = 0;
        }

        [(CRWrappingEvaluationResult *)self setCachedFeatureTokens:&__p];
        if (__p)
        {
          v13 = __p;
          operator delete(__p);
        }

        [(CRWrappingEvaluationResult *)self setFeatureTokensSet:1];
      }
    }
  }

  else
  {
    v10 = CROSLogForCategory(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v16 = "[CRWrappingEvaluationResult featureTokens]";
      _os_log_impl(&dword_1B40D2000, v10, OS_LOG_TYPE_FAULT, "%s: Unexpected nil context", buf, 0xCu);
    }
  }

  return [(CRWrappingEvaluationResult *)self cachedFeatureTokens];
}

- (int64_t)_tokenCountForString:(id)a3
{
  v4 = a3;
  v5 = [(CRWrappingEvaluationResult *)self context];
  v6 = [v5 usesWordTokens];

  if (v6)
  {
    v7 = [(CRWrappingEvaluationResult *)self _spaceSeparatedTokens:v4];
    v8 = [v7 count];
  }

  else
  {
    v8 = [v4 length];
  }

  return v8;
}

- (id)_spaceSeparatedTokens:(id)a3
{
  v3 = [a3 componentsSeparatedByString:@" "];

  return v3;
}

- (CGSize)imageSize
{
  objc_copyStruct(v4, &self->_imageSize, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGSize)lastFeatureSize
{
  objc_copyStruct(v4, &self->_lastFeatureSize, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGSize)featureInTestSize
{
  objc_copyStruct(v4, &self->_featureInTestSize, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.height = v3;
  result.width = v2;
  return result;
}

- (CRLineWrappingContext)context
{
  WeakRetained = objc_loadWeakRetained(&self->_context);

  return WeakRetained;
}

- (id).cxx_construct
{
  *(self + 25) = 0;
  *(self + 26) = 0;
  *(self + 27) = 0;
  return self;
}

@end