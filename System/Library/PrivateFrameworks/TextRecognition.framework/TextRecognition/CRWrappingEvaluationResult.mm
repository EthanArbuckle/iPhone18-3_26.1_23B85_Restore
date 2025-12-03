@interface CRWrappingEvaluationResult
- (BOOL)contributesToVerticalSpacing;
- (BOOL)excessiveVerticalDistance;
- (BOOL)similarAngles;
- (BOOL)similarHeights;
- (CGSize)featureInTestSize;
- (CGSize)imageSize;
- (CGSize)lastFeatureSize;
- (CRLineWrappingContext)context;
- (CRWrappingEvaluationResult)initWithTextFeature:(id)feature context:(id)context imageSize:(CGSize)size parameters:(id)parameters skipTextComputation:(BOOL)computation;
- (double)eosLMScore;
- (double)lmScore;
- (double)verticalSpacingToHeightRatio;
- (id).cxx_construct;
- (id)_spaceSeparatedTokens:(id)tokens;
- (id)description;
- (id)resultByMerging:(id)merging;
- (int64_t)_tokenCountForString:(id)string;
- (int64_t)caseWrappingScoreUsingCustomConfiguration:(BOOL)configuration;
- (int64_t)punctuationWrappingScoreUsingCustomConfiguration:(BOOL)configuration;
- (int64_t)textBasedEvaluation;
- (int64_t)textContentWrappingScore;
- (int64_t)tokenCountDiff;
- (int64_t)wordCountWrappingScore;
- (vector<unsigned)featureTokens;
- (void)_computeCharLMScores;
- (void)_computeDDPropertiesWithContext:(id)context;
- (void)_computeGeometricProperties;
- (void)_computeIsHyphenatedPrefixOfWord:(id)word;
- (void)_computeLMScoreComputingEOS:(BOOL)s;
- (void)_computeNoTextWithContext:(id)context;
- (void)_processDDWithCombinedString:(id)string locale:(id)locale withResultBlock:(id)block;
- (void)_setParagraphTextWithString:(id)string context:(id)context;
@end

@implementation CRWrappingEvaluationResult

- (CRWrappingEvaluationResult)initWithTextFeature:(id)feature context:(id)context imageSize:(CGSize)size parameters:(id)parameters skipTextComputation:(BOOL)computation
{
  height = size.height;
  width = size.width;
  featureCopy = feature;
  contextCopy = context;
  parametersCopy = parameters;
  v27.receiver = self;
  v27.super_class = CRWrappingEvaluationResult;
  v17 = [(CRWrappingEvaluationResult *)&v27 init];
  p_isa = &v17->super.isa;
  v19 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_featureInTest, feature);
    objc_storeWeak(p_isa + 15, contextCopy);
    objc_storeStrong(p_isa + 14, parameters);
    locale = [contextCopy locale];
    locale2 = [p_isa[11] locale];
    languageIdentifier = [locale2 languageIdentifier];
    v19->_matchingLocales = [locale isEqualToString:languageIdentifier];

    *&v19->_isHyphenatedPrefixOfWord = 256;
    if (v19->_matchingLocales)
    {
      text = [featureCopy text];
      v19->_shouldAllowWhitespaceDelimiter = [contextCopy shouldAllowWhitespaceDelimiterForString:text];
    }

    [(CRWrappingEvaluationResult *)v19 _computeGeometricProperties];
    if ([contextCopy lineCount] && v19->_matchingLocales && !computation)
    {
      [(CRWrappingEvaluationResult *)v19 _computeDDPropertiesWithContext:contextCopy];
      [(CRWrappingEvaluationResult *)v19 _computeNoTextWithContext:contextCopy];
      [(CRWrappingEvaluationResult *)v19 _computeIsHyphenatedPrefixOfWord:contextCopy];
      text2 = [p_isa[11] text];
      v19->_f2StartOfSentence = [text2 _crIsStartOfSentence];
    }

    v19->_imageSize.width = width;
    v19->_imageSize.height = height;
    if (!computation)
    {
      text3 = [featureCopy text];
      [(CRWrappingEvaluationResult *)v19 _setParagraphTextWithString:text3 context:contextCopy];
    }
  }

  return v19;
}

- (id)resultByMerging:(id)merging
{
  mergingCopy = merging;
  if ([mergingCopy isOversegmented])
  {
    featureInTest = [(CRWrappingEvaluationResult *)self featureInTest];
    featureInTest2 = [mergingCopy featureInTest];
    [featureInTest mergeWithLine:featureInTest2];

    v7 = [CRWrappingEvaluationResult alloc];
    featureInTest3 = [(CRWrappingEvaluationResult *)self featureInTest];
    context = [(CRWrappingEvaluationResult *)self context];
    [(CRWrappingEvaluationResult *)self imageSize];
    v11 = v10;
    v13 = v12;
    parameters = [(CRWrappingEvaluationResult *)self parameters];
    selfCopy = [(CRWrappingEvaluationResult *)v7 initWithTextFeature:featureInTest3 context:context imageSize:parameters parameters:1 skipTextComputation:v11, v13];
  }

  else
  {
    v16 = CROSLogForCategory(0);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *v18 = 0;
      _os_log_impl(&dword_1B40D2000, v16, OS_LOG_TYPE_ERROR, "Unable to merge results that are not due to oversegmentation", v18, 2u);
    }

    selfCopy = self;
  }

  return selfCopy;
}

- (void)_setParagraphTextWithString:(id)string context:(id)context
{
  stringCopy = string;
  contextCopy = context;
  if ([contextCopy lineCount])
  {
    text = [contextCopy text];
    if ([text _crEndsWithHyphen])
    {
      isHyphenatedPrefixOfWord = self->_isHyphenatedPrefixOfWord;
    }

    else
    {
      isHyphenatedPrefixOfWord = 0;
    }

    text2 = [contextCopy text];
    locale = [contextCopy locale];
    v12 = [text2 _crStringByAppendingString:stringCopy locale:locale mergeHyphenatedWord:isHyphenatedPrefixOfWord allowWhitespaceDelimiter:self->_shouldAllowWhitespaceDelimiter];
    paragraphText = self->_paragraphText;
    self->_paragraphText = v12;
  }

  else
  {
    v9 = stringCopy;
    text2 = self->_paragraphText;
    self->_paragraphText = v9;
  }
}

- (void)_computeNoTextWithContext:(id)context
{
  contextCopy = context;
  text = [contextCopy text];
  self->_contextNoText = [text _crContainsText] ^ 1;

  text2 = [(CRLineWrappable *)self->_featureInTest text];
  self->_featureInTestNoText = [text2 _crContainsText] ^ 1;
}

- (void)_computeIsHyphenatedPrefixOfWord:(id)word
{
  wordCopy = word;
  self->_isHyphenatedPrefixOfWord = 0;
  v14 = wordCopy;
  text = [wordCopy text];
  v6 = [(CRWrappingEvaluationResult *)self _spaceSeparatedTokens:text];
  lastObject = [v6 lastObject];

  if (lastObject && [lastObject length] >= 3 && objc_msgSend(lastObject, "_crEndsWithHyphen"))
  {
    text2 = [(CRLineWrappable *)self->_featureInTest text];
    v9 = [(CRWrappingEvaluationResult *)self _spaceSeparatedTokens:text2];
    firstObject = [v9 firstObject];

    if (firstObject && [firstObject length])
    {
      v11 = MEMORY[0x1E696AD60];
      v12 = [lastObject substringToIndex:{objc_msgSend(lastObject, "length") - 1}];
      v13 = [v11 stringWithString:v12];

      [v13 appendString:firstObject];
      self->_isHyphenatedPrefixOfWord = [v14 isValidWordString:v13];
    }
  }
}

- (void)_computeGeometricProperties
{
  v226 = *MEMORY[0x1E69E9840];
  context = [(CRWrappingEvaluationResult *)self context];

  if (context)
  {
    featureInTest = [(CRWrappingEvaluationResult *)self featureInTest];
    boundingQuad = [featureInTest boundingQuad];
    denormalizedQuad = [boundingQuad denormalizedQuad];
    [denormalizedQuad size];
    [(CRWrappingEvaluationResult *)self setFeatureInTestSize:?];

    context2 = [(CRWrappingEvaluationResult *)self context];
    lineCount = [context2 lineCount];

    if (!lineCount)
    {
      return;
    }

    context3 = [(CRWrappingEvaluationResult *)self context];
    lastFeature = [context3 lastFeature];

    boundingQuad2 = [lastFeature boundingQuad];
    denormalizedQuad2 = [boundingQuad2 denormalizedQuad];

    [denormalizedQuad2 size];
    [(CRWrappingEvaluationResult *)self setLastFeatureSize:?];
    [denormalizedQuad2 size];
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
      boundingQuad2 = [(CRWrappingEvaluationResult *)self context];
      [boundingQuad2 averageLineHeight];
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
    context4 = [(CRWrappingEvaluationResult *)self context];
    lastFeature2 = [context4 lastFeature];
    boundingQuad3 = [lastFeature2 boundingQuad];
    [boundingQuad3 baselineAngle];
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
    featureInTest2 = [(CRWrappingEvaluationResult *)self featureInTest];
    boundingQuad4 = [featureInTest2 boundingQuad];
    [boundingQuad4 baselineAngle];
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

        boundingQuad5 = [lastFeature boundingQuad];
        featureInTest3 = [(CRWrappingEvaluationResult *)self featureInTest];
        boundingQuad6 = [featureInTest3 boundingQuad];

        context5 = [(CRWrappingEvaluationResult *)self context];
        lastFeature3 = [context5 lastFeature];
        boundingQuad7 = [lastFeature3 boundingQuad];
        [boundingQuad7 baselineAngle];
        v41 = v40;
        featureInTest4 = [(CRWrappingEvaluationResult *)self featureInTest];
        boundingQuad8 = [featureInTest4 boundingQuad];
        [boundingQuad8 baselineAngle];
        v45 = (1.0 - v11 / (v11 + v15)) * v44 + v41 * (v11 / (v11 + v15));

        *&v45 = v45;
        LODWORD(v46) = LODWORD(v45);
        v47 = [boundingQuad5 rotatedAroundNormalizedPoint:0.5 angle:{0.5, v46}];
        denormalizedQuad3 = [v47 denormalizedQuad];

        LODWORD(v49) = LODWORD(v45);
        v50 = [boundingQuad6 rotatedAroundNormalizedPoint:0.5 angle:{0.5, v49}];
        denormalizedQuad4 = [v50 denormalizedQuad];

        [denormalizedQuad4 topLeft];
        v53 = v52;
        [denormalizedQuad3 bottomLeft];
        [(CRWrappingEvaluationResult *)self setVerticalSpacing:v53 - v54];
        [boundingQuad5 topLeft];
        v56 = v55;
        v58 = v57;
        [boundingQuad6 topLeft];
        v60 = v59;
        v62 = v61;
        [boundingQuad5 normalizationSize];
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
        [boundingQuad5 topRight];
        v72 = v71;
        v74 = v73;
        [boundingQuad6 topLeft];
        v76 = v75;
        v78 = v77;
        [boundingQuad5 normalizationSize];
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
        [boundingQuad5 topRight];
        v83 = v82;
        v85 = v84;
        featureInTest5 = [(CRWrappingEvaluationResult *)self featureInTest];
        boundingQuad9 = [featureInTest5 boundingQuad];
        [boundingQuad9 bottomLeft];
        v89 = v88;
        v91 = v90;
        [boundingQuad5 normalizationSize];
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

        [boundingQuad5 bottomLeft];
        v96 = v95;
        v98 = v97;
        [boundingQuad6 topLeft];
        v100 = v99;
        v102 = v101;
        [boundingQuad5 normalizationSize];
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
        [boundingQuad5 bottomRight];
        v107 = v106;
        v109 = v108;
        [boundingQuad6 topRight];
        v111 = v110;
        v113 = v112;
        [boundingQuad5 normalizationSize];
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
        [boundingQuad5 midPoint];
        v118 = v117;
        v120 = v119;
        [boundingQuad6 midPoint];
        v122 = v121;
        v124 = v123;
        [boundingQuad5 normalizationSize];
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
        [denormalizedQuad4 topRight];
        v129 = v128;
        [denormalizedQuad3 topLeft];
        v131 = v129 - v130;
        *&v131 = v131;
        [(CRWrappingEvaluationResult *)self setHorizontalOverlap:v131];
        [denormalizedQuad4 bottomLeft];
        v133 = v132;
        [denormalizedQuad3 topLeft];
        v135 = v133 - v134;
        *&v135 = v133 - v134;
        [(CRWrappingEvaluationResult *)self setVerticalOverlap:v135];
        [denormalizedQuad4 topLeft];
        v137 = v136;
        [denormalizedQuad3 topRight];
        v139 = v137 - v138;
        *&v139 = v139;
        [(CRWrappingEvaluationResult *)self setXSpace:v139];
        [denormalizedQuad3 topRight];
        v141 = v140;
        [denormalizedQuad4 bottomLeft];
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
            parameters = [(CRWrappingEvaluationResult *)self parameters];
            [parameters oversegmentedDistanceHeightRatioTolerance];
            v154 = (v13 + v17) * v153 * 0.5;

            if (v154 > v151)
            {
              [(CRWrappingEvaluationResult *)self setIsOversegmented:1];
            }

            context6 = [(CRWrappingEvaluationResult *)self context];
            lineCount2 = [context6 lineCount];

            if (lineCount2 == 1)
            {
              if (-[CRWrappingEvaluationResult isOversegmented](self, "isOversegmented") || (-[CRWrappingEvaluationResult topDistanceRight](self, "topDistanceRight"), v158 = v157, -[CRWrappingEvaluationResult parameters](self, "parameters"), v159 = objc_claimAutoreleasedReturnValue(), [v159 oversegmentedDistanceHeightRatioListItemTolerance], v161 = (v13 + v17) * v160 * 0.5, v159, v161 > v158))
              {
                context7 = [(CRWrappingEvaluationResult *)self context];
                text = [context7 text];
                if ([text _crIsListItemMarker])
                {
                  featureInTest6 = [(CRWrappingEvaluationResult *)self featureInTest];
                  text2 = [featureInTest6 text];
                  _crContainsText = [text2 _crContainsText];

                  if (_crContainsText)
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
        parameters2 = [(CRWrappingEvaluationResult *)self parameters];
        [parameters2 verticalSpacingRatioTolerance];
        v170 = v13 * v169;

        if (v167 < v170)
        {
          context8 = [(CRWrappingEvaluationResult *)self context];
          if ([context8 isRTL])
          {
            [(CRWrappingEvaluationResult *)self rightDistance];
          }

          else
          {
            [(CRWrappingEvaluationResult *)self leftDistance];
          }

          v173 = v172;

          context9 = [(CRWrappingEvaluationResult *)self context];
          if ([context9 isRTL])
          {
            [denormalizedQuad3 topRight];
            v176 = v175;
            [denormalizedQuad4 topLeft];
            v178 = v176 > v177;
          }

          else
          {
            [denormalizedQuad3 topLeft];
            v180 = v179;
            [denormalizedQuad4 topRight];
            v178 = v180 < v181;
          }

          parameters3 = [(CRWrappingEvaluationResult *)self parameters];
          [parameters3 leadingDistanceRatioTolerance];
          v183 = v173;
          v185 = v13 * v184;

          if (v185 > v183)
          {
            goto LABEL_78;
          }

          context10 = [(CRWrappingEvaluationResult *)self context];
          v187 = [context10 lineCount] == 1 && v178;

          if (v187 != 1)
          {
            goto LABEL_79;
          }

          parameters4 = [(CRWrappingEvaluationResult *)self parameters];
          [parameters4 newParagraphIndentDistanceRatioTolerance];
          v190 = v13 * v189;

          if (fabs(v183) >= v190)
          {
            goto LABEL_79;
          }

          context11 = [(CRWrappingEvaluationResult *)self context];
          if ([context11 isRTL])
          {
            [denormalizedQuad3 topLeft];
            v193 = v192;
            [denormalizedQuad4 topLeft];
            v195 = v194;

            if (v193 > v195)
            {
              goto LABEL_78;
            }
          }

          else
          {
            [denormalizedQuad3 topRight];
            v197 = v196;
            [denormalizedQuad4 topRight];
            v199 = v198;

            if (v197 < v199)
            {
LABEL_78:
              [(CRWrappingEvaluationResult *)self setLeadingAligned:1];
              goto LABEL_79;
            }
          }

          context12 = [(CRWrappingEvaluationResult *)self context];
          lastFeature4 = [context12 lastFeature];
          text3 = [lastFeature4 text];
          if ([text3 _crStartsWithListItemIndicator])
          {

            goto LABEL_78;
          }

          context13 = [(CRWrappingEvaluationResult *)self context];
          lastFeature5 = [context13 lastFeature];
          text4 = [lastFeature5 text];
          _crStartsWithDigit = [text4 _crStartsWithDigit];

          if (_crStartsWithDigit)
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

        context14 = [(CRWrappingEvaluationResult *)self context];
        lastFeature6 = [context14 lastFeature];
        text5 = [lastFeature6 text];
        v208 = [(CRWrappingEvaluationResult *)self _tokenCountForString:text5];

        if (![(CRWrappingEvaluationResult *)self centerAligned])
        {
          leadingAligned = [(CRWrappingEvaluationResult *)self leadingAligned];
          v210 = v208 < 3 || leadingAligned;
          if ((v210 & 1) == 0)
          {
            featureInTest7 = [(CRWrappingEvaluationResult *)self featureInTest];
            text6 = [featureInTest7 text];
            v213 = [text6 length];

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

- (void)_processDDWithCombinedString:(id)string locale:(id)locale withResultBlock:(id)block
{
  v39 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  blockCopy = block;
  v30 = stringCopy;
  v29 = [MEMORY[0x1E6999A90] _crConfigForLocale:locale];
  [MEMORY[0x1E6999A88] scanString:stringCopy range:0 configuration:{objc_msgSend(stringCopy, "length"), v29}];
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
        urlificationRange = [v12 urlificationRange];
        v15 = v14;
        sentencePuncStringToCheck = [(CRWrappingEvaluationResult *)self sentencePuncStringToCheck];
        v17 = urlificationRange < [sentencePuncStringToCheck length];

        if (v17)
        {
          if (urlificationRange <= 2)
          {
            urlificationRange = 2;
          }

          sentencePuncStringToCheck2 = [(CRWrappingEvaluationResult *)self sentencePuncStringToCheck];
          v19 = urlificationRange - 2;
          v20 = v15 + 2;
          if ([sentencePuncStringToCheck2 length] - v19 < (v15 + 2))
          {
            sentencePuncStringToCheck3 = [(CRWrappingEvaluationResult *)self sentencePuncStringToCheck];
            v22 = [sentencePuncStringToCheck3 length];

            v20 = v22 - v19;
          }

          v23 = [v30 substringWithRange:{v19, v20}];
          punctuationCharacterSet = [MEMORY[0x1E696AB08] punctuationCharacterSet];
          v25 = [v23 _crContainsCharactersInSet:punctuationCharacterSet];

          if (v25)
          {
            sentencePuncStringToCheck4 = [(CRWrappingEvaluationResult *)self sentencePuncStringToCheck];
            v27 = [&stru_1F2BB4348 stringByPaddingToLength:v20 withString:@"-" startingAtIndex:0];
            v28 = [sentencePuncStringToCheck4 stringByReplacingCharactersInRange:v19 withString:{v20, v27}];
            [(CRWrappingEvaluationResult *)self setSentencePuncStringToCheck:v28];
          }
        }

        v33 = 0;
        blockCopy[2](blockCopy, v12, &v33);
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

- (void)_computeDDPropertiesWithContext:(id)context
{
  contextCopy = context;
  text = [contextCopy text];
  v6 = [text _crDDFriendlyTextWithIndexMapping:0];

  text2 = [(CRLineWrappable *)self->_featureInTest text];
  v8 = [text2 _crDDFriendlyTextWithIndexMapping:0];

  if ([(CRWrappingEvaluationResult *)self matchingLocales])
  {
    locale = [contextCopy locale];
  }

  else
  {
    locale = 0;
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
  [(CRWrappingEvaluationResult *)self _processDDWithCombinedString:v10 locale:locale withResultBlock:v16];
  if (-[CRWrappingEvaluationResult multilineDD](self, "multilineDD") || ([MEMORY[0x1E696AB08] decimalDigitCharacterSet], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v10, "_crContainsCharactersInSet:", v11), v11, !v12))
  {
    v13 = v10;
  }

  else
  {
    v13 = [v6 _crStringByAppendingString:v8 locale:locale appendedStringRange:&v18];

    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __62__CRWrappingEvaluationResult__computeDDPropertiesWithContext___block_invoke_2;
    v14[3] = &unk_1E7BC2EC8;
    v15 = v18;
    v14[4] = self;
    [(CRWrappingEvaluationResult *)self _processDDWithCombinedString:v13 locale:locale withResultBlock:v14];
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
  context = [(CRWrappingEvaluationResult *)self context];
  locale = [context locale];
  featureInTest = [(CRWrappingEvaluationResult *)self featureInTest];
  locale2 = [featureInTest locale];
  textContentWrappingScore = [(CRWrappingEvaluationResult *)self textContentWrappingScore];
  v21 = [(CRWrappingEvaluationResult *)self caseWrappingScoreUsingCustomConfiguration:1];
  wordCountWrappingScore = [(CRWrappingEvaluationResult *)self wordCountWrappingScore];
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
  paragraphText = [(CRWrappingEvaluationResult *)self paragraphText];
  v15 = [MEMORY[0x1E696AD98] numberWithBool:{-[CRWrappingEvaluationResult lmScoreSet](self, "lmScoreSet")}];
  [(CRWrappingEvaluationResult *)self cachedLMScore];
  v10 = v9;
  v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[CRWrappingEvaluationResult eosLMScoreSet](self, "eosLMScoreSet")}];
  [(CRWrappingEvaluationResult *)self cachedEOSLMScore];
  v13 = [v24 stringWithFormat:@"{\nmatchingLocales:\t%@ -(%@/%@)\ntextContentWrappingScore/caseScore/wcScore/puncScore:\t%ld/%ld/%ld/%ld\ntextHeightRatio/textWidthRatio/angleDiff:\t%f/%f/%f\noverSegmented/leadingAligned/centerAligned/newColumn:\t%@/%@/%@/%@\ntext:%@\nlmScoreSet/lmScore/eosScoreSet/eosLMScore:%@/%.4f/%@/%.4f\n}", v30, locale, locale2, textContentWrappingScore, v21, wordCountWrappingScore, v18, v4, v6, v8, v25, v23, v20, v17, paragraphText, v15, v10, v11, v12];

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
    featureInTest = [(CRWrappingEvaluationResult *)self featureInTest];
    text = [featureInTest text];
    if ([text _crIsProgrammingStatement])
    {
    }

    else
    {
      context = [(CRWrappingEvaluationResult *)self context];
      lastFeature = [context lastFeature];
      text2 = [lastFeature text];
      _crIsProgrammingStatement = [text2 _crIsProgrammingStatement];

      if ((_crIsProgrammingStatement & 1) == 0 && ![(CRWrappingEvaluationResult *)self f2StartOfSentence])
      {
        if (![(CRWrappingEvaluationResult *)self f1EndsWithDD]|| ![(CRWrappingEvaluationResult *)self f2BeginsWithDD])
        {
          if ([(CRWrappingEvaluationResult *)self f2FullyDD])
          {
            return -2;
          }

          featureInTest2 = [(CRWrappingEvaluationResult *)self featureInTest];
          text3 = [featureInTest2 text];
          if ([text3 length] <= 1)
          {
          }

          else
          {
            context2 = [(CRWrappingEvaluationResult *)self context];
            lastFeature2 = [context2 lastFeature];
            text4 = [lastFeature2 text];
            v16 = [text4 length];

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

- (int64_t)caseWrappingScoreUsingCustomConfiguration:(BOOL)configuration
{
  configurationCopy = configuration;
  v30 = *MEMORY[0x1E69E9840];
  context = [(CRWrappingEvaluationResult *)self context];

  if (context)
  {
    if (![(CRWrappingEvaluationResult *)self multilineDD])
    {
      context2 = [(CRWrappingEvaluationResult *)self context];
      shouldConsiderLetterCase = [context2 shouldConsiderLetterCase];

      if (shouldConsiderLetterCase)
      {
        context3 = [(CRWrappingEvaluationResult *)self context];
        lastFeature = [context3 lastFeature];
        text = [lastFeature text];
        v11 = [(CRWrappingEvaluationResult *)self _spaceSeparatedTokens:text];
        lastObject = [v11 lastObject];

        featureInTest = [(CRWrappingEvaluationResult *)self featureInTest];
        text2 = [featureInTest text];
        v15 = [(CRWrappingEvaluationResult *)self _spaceSeparatedTokens:text2];
        firstObject = [v15 firstObject];

        if (-[CRWrappingEvaluationResult f1EndsWithDD](self, "f1EndsWithDD") || -[CRWrappingEvaluationResult f2BeginsWithDD](self, "f2BeginsWithDD") || (-[CRWrappingEvaluationResult featureInTest](self, "featureInTest"), v17 = objc_claimAutoreleasedReturnValue(), [v17 text], v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "_crStartsWithLowercase"), v18, v17, !v19))
        {
          if ([lastObject _crIsAllCaps] && objc_msgSend(firstObject, "_crIsAllCaps") && !-[CRWrappingEvaluationResult f1EndsWithDD](self, "f1EndsWithDD") && !-[CRWrappingEvaluationResult f2BeginsWithDD](self, "f2BeginsWithDD"))
          {
            caseWrappingScoreWithNoCapitalization = 6;
          }

          else
          {
            _crIsAllCaps = [lastObject _crIsAllCaps];
            if (_crIsAllCaps != [firstObject _crIsAllCaps] && objc_msgSend(lastObject, "_crContainsText") && objc_msgSend(firstObject, "_crContainsText") && objc_msgSend(lastObject, "length") >= 2 && objc_msgSend(firstObject, "length") > 1)
            {
              caseWrappingScoreWithNoCapitalization = -6;
            }

            else
            {
              if (![(CRWrappingEvaluationResult *)self contextNoText]&& ![(CRWrappingEvaluationResult *)self featureInTestNoText])
              {
                featureInTest2 = [(CRWrappingEvaluationResult *)self featureInTest];
                text3 = [featureInTest2 text];
                if ([text3 _crStartsWithUppercase])
                {
                  v27 = [firstObject isEqualToString:@"I"];

                  if ((v27 & 1) == 0 && ([lastObject _crStartsWithUppercase] & 1) == 0)
                  {
                    if ([(CRWrappingEvaluationResult *)self f2BeginsWithDD])
                    {
                      caseWrappingScoreWithNoCapitalization = 0;
                    }

                    else
                    {
                      caseWrappingScoreWithNoCapitalization = -2;
                    }

                    goto LABEL_34;
                  }
                }

                else
                {
                }
              }

              caseWrappingScoreWithNoCapitalization = 0;
            }
          }
        }

        else if (configurationCopy)
        {
          parameters = [(CRWrappingEvaluationResult *)self parameters];
          caseWrappingScoreWithNoCapitalization = [parameters caseWrappingScoreWithNoCapitalization];
        }

        else
        {
          caseWrappingScoreWithNoCapitalization = 10;
        }

LABEL_34:

        return caseWrappingScoreWithNoCapitalization;
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
  context = [(CRWrappingEvaluationResult *)self context];

  if (!context)
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

  context2 = [(CRWrappingEvaluationResult *)self context];
  usesWordTokens = [context2 usesWordTokens];

  if (!usesWordTokens)
  {
    return 0;
  }

  context3 = [(CRWrappingEvaluationResult *)self context];
  lastFeature = [context3 lastFeature];
  text = [lastFeature text];
  v9 = [(CRWrappingEvaluationResult *)self _tokenCountForString:text];

  featureInTest = [(CRWrappingEvaluationResult *)self featureInTest];
  text2 = [featureInTest text];
  v12 = [(CRWrappingEvaluationResult *)self _tokenCountForString:text2];

  if (v9 != 1 || v12 < 3)
  {
    if (v12 == 1)
    {
      featureInTest2 = [(CRWrappingEvaluationResult *)self featureInTest];
      text3 = [featureInTest2 text];
      if ([text3 _crEndsWithEOS])
      {

        return 6;
      }

      featureInTest3 = [(CRWrappingEvaluationResult *)self featureInTest];
      text4 = [featureInTest3 text];
      _crEndsWithClosingPunctuation = [text4 _crEndsWithClosingPunctuation];

      if (_crEndsWithClosingPunctuation)
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

- (int64_t)punctuationWrappingScoreUsingCustomConfiguration:(BOOL)configuration
{
  configurationCopy = configuration;
  v57 = *MEMORY[0x1E69E9840];
  context = [(CRWrappingEvaluationResult *)self context];

  if (!context)
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

  context2 = [(CRWrappingEvaluationResult *)self context];
  lastFeature = [context2 lastFeature];
  text = [lastFeature text];
  if (![text _crEndsWithEOS])
  {

LABEL_10:
    context3 = [(CRWrappingEvaluationResult *)self context];
    lastFeature2 = [context3 lastFeature];
    text2 = [lastFeature2 text];
    _crEndsWithMOS = [text2 _crEndsWithMOS];

    if (_crEndsWithMOS)
    {
      if (!configurationCopy)
      {
        return 10;
      }

      parameters = [(CRWrappingEvaluationResult *)self parameters];
      punctuationWrappingScoreWithEndingMOS = [parameters punctuationWrappingScoreWithEndingMOS];
      goto LABEL_13;
    }

    if (![(CRWrappingEvaluationResult *)self wrappedDD])
    {
      context4 = [(CRWrappingEvaluationResult *)self context];
      lastFeature3 = [context4 lastFeature];
      text3 = [lastFeature3 text];
      _crStartsWithDigit = [text3 _crStartsWithDigit];
      v22 = _crStartsWithDigit;
      if (_crStartsWithDigit)
      {
        featureInTest = [(CRWrappingEvaluationResult *)self featureInTest];
        text4 = [featureInTest text];
        if ([text4 _crStartsWithDigit])
        {

          return -6;
        }
      }

      context5 = [(CRWrappingEvaluationResult *)self context];
      lastFeature4 = [context5 lastFeature];
      text5 = [lastFeature4 text];
      if ([text5 _crEndsWithDigit])
      {
        featureInTest2 = [(CRWrappingEvaluationResult *)self featureInTest];
        text6 = [featureInTest2 text];
        _crEndsWithDigit = [text6 _crEndsWithDigit];

        if (v22)
        {
        }

        if (_crEndsWithDigit)
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
      context6 = [(CRWrappingEvaluationResult *)self context];
      lastFeature5 = [context6 lastFeature];
      text7 = [lastFeature5 text];
      _crEndsWithClosingPunctuation = [text7 _crEndsWithClosingPunctuation];

      if (_crEndsWithClosingPunctuation)
      {
        return -2;
      }

      else
      {
        return 0;
      }
    }

    context7 = [(CRWrappingEvaluationResult *)self context];
    lastFeature6 = [context7 lastFeature];
    text8 = [lastFeature6 text];
    _crEndsWithClosingPunctuation2 = [text8 _crEndsWithClosingPunctuation];

    if (_crEndsWithClosingPunctuation2)
    {
      return 2;
    }

    if (!configurationCopy)
    {
      parameters = [(CRWrappingEvaluationResult *)self context];
      lastFeature7 = [parameters lastFeature];
      locale = [lastFeature7 locale];
      languageIdentifier = [locale languageIdentifier];
      if ([CRImageReader languageIsChinese:languageIdentifier])
      {
        v13 = 2;
      }

      else
      {
        context8 = [(CRWrappingEvaluationResult *)self context];
        lastFeature8 = [context8 lastFeature];
        locale2 = [lastFeature8 locale];
        languageIdentifier2 = [locale2 languageIdentifier];
        v50 = [CRImageReader languageIsJapanese:languageIdentifier2];

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

    parameters = [(CRWrappingEvaluationResult *)self parameters];
    punctuationWrappingScoreWithEndingMOS = [parameters punctuationWrappingScoreWithNoClosingPunctuation];
LABEL_13:
    v13 = punctuationWrappingScoreWithEndingMOS;
LABEL_14:

    return v13;
  }

  oversegmentedListItem = [(CRWrappingEvaluationResult *)self oversegmentedListItem];

  if (oversegmentedListItem)
  {
    goto LABEL_10;
  }

  featureInTest3 = [(CRWrappingEvaluationResult *)self featureInTest];
  text9 = [featureInTest3 text];
  if ([text9 _crStartsWithUppercase])
  {

    return -10;
  }

  context9 = [(CRWrappingEvaluationResult *)self context];
  shouldConsiderLetterCase = [context9 shouldConsiderLetterCase];

  if ((shouldConsiderLetterCase & 1) == 0)
  {
    return -10;
  }

  return -2;
}

- (BOOL)similarHeights
{
  parameters = [(CRWrappingEvaluationResult *)self parameters];
  [parameters heightSimilarityRatio];
  v5 = v4;

  context = [(CRWrappingEvaluationResult *)self context];
  text = [context text];
  if ([text length] <= 2)
  {
  }

  else
  {
    featureInTest = [(CRWrappingEvaluationResult *)self featureInTest];
    text2 = [featureInTest text];
    v10 = [text2 length];

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
  parameters = [(CRWrappingEvaluationResult *)self parameters];
  [parameters angleSimilarityThreshold];
  v5 = v4;

  context = [(CRWrappingEvaluationResult *)self context];
  text = [context text];
  if ([text length] <= 2)
  {
  }

  else
  {
    featureInTest = [(CRWrappingEvaluationResult *)self featureInTest];
    text2 = [featureInTest text];
    v10 = [text2 length];

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
  context = [(CRWrappingEvaluationResult *)self context];

  if (!context)
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

  context2 = [(CRWrappingEvaluationResult *)self context];
  if ([context2 lineCount] < 2)
  {

    return 0;
  }

  contributesToVerticalSpacing = [(CRWrappingEvaluationResult *)self contributesToVerticalSpacing];

  if (!contributesToVerticalSpacing)
  {
    return 0;
  }

  [(CRWrappingEvaluationResult *)self verticalSpacingToHeightRatio];
  v8 = v7;
  parameters = [(CRWrappingEvaluationResult *)self parameters];
  [parameters smallestVerticalDistanceHeightRatio];
  if (v8 > v10)
  {
    [(CRWrappingEvaluationResult *)self verticalSpacingToHeightRatio];
    v13 = v16;
  }

  else
  {
    parameters2 = [(CRWrappingEvaluationResult *)self parameters];
    [parameters2 smallestVerticalDistanceHeightRatio];
    v13 = v12;
  }

  parameters3 = [(CRWrappingEvaluationResult *)self parameters];
  [parameters3 maximumVerticalDistanceGrowthRatio];
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
  context = [(CRWrappingEvaluationResult *)self context];
  lineCount = [context lineCount];

  [(CRWrappingEvaluationResult *)self featureInTestSize];
  v6 = v5;
  context2 = [(CRWrappingEvaluationResult *)self context];
  [context2 averageLineHeight];
  v9 = v8;

  context3 = [(CRWrappingEvaluationResult *)self context];
  [context3 averageVerticalSpacing];
  v12 = v11;
  parameters = [(CRWrappingEvaluationResult *)self parameters];
  [parameters smallestVerticalDistanceHeightRatio];
  v14 = (1.0 - 1.0 / (lineCount + 1)) * v9 + v6 * (1.0 / (lineCount + 1));
  if (v12 <= v14 * v15)
  {
    parameters2 = [(CRWrappingEvaluationResult *)self parameters];
    [parameters2 smallestVerticalDistanceHeightRatio];
    v18 = v14 * v19;
  }

  else
  {
    parameters2 = [(CRWrappingEvaluationResult *)self context];
    [parameters2 averageVerticalSpacing];
    v18 = v17;
  }

  [(CRWrappingEvaluationResult *)self verticalSpacing];
  return v20 / v18;
}

- (int64_t)tokenCountDiff
{
  featureInTest = [(CRWrappingEvaluationResult *)self featureInTest];
  text = [featureInTest text];
  v5 = [(CRWrappingEvaluationResult *)self _tokenCountForString:text];
  context = [(CRWrappingEvaluationResult *)self context];
  lastFeature = [context lastFeature];
  text2 = [lastFeature text];
  v9 = v5 - [(CRWrappingEvaluationResult *)self _tokenCountForString:text2];

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

- (void)_computeLMScoreComputingEOS:(BOOL)s
{
  sCopy = s;
  v14 = *MEMORY[0x1E69E9840];
  context = [(CRWrappingEvaluationResult *)self context];

  if (context)
  {
    if (sCopy)
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

    context2 = [(CRWrappingEvaluationResult *)self context];
    usesWordTokens = [context2 usesWordTokens];

    if (usesWordTokens)
    {
      context3 = [(CRWrappingEvaluationResult *)self context];
      v10 = context3;
      if (sCopy)
      {
        [context3 wordLMScoreByAddingToken:2];
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
  context = [(CRWrappingEvaluationResult *)self context];
  featureInTest = [(CRWrappingEvaluationResult *)self featureInTest];
  text = [featureInTest text];
  [context charLMScoreByAddingString:text eosScore:&v7];
  self->_cachedLMScore = v6;

  self->_cachedEOSLMScore = v7;
  [(CRWrappingEvaluationResult *)self setLmScoreSet:1];
  [(CRWrappingEvaluationResult *)self setEosLMScoreSet:1];
}

- (vector<unsigned)featureTokens
{
  v17 = *MEMORY[0x1E69E9840];
  context = [(CRWrappingEvaluationResult *)self context];

  if (context)
  {
    if (![(CRWrappingEvaluationResult *)self featureTokensSet])
    {
      context2 = [(CRWrappingEvaluationResult *)self context];
      usesWordTokens = [context2 usesWordTokens];

      if (usesWordTokens)
      {
        context3 = [(CRWrappingEvaluationResult *)self context];
        featureInTest = [(CRWrappingEvaluationResult *)self featureInTest];
        text = [featureInTest text];
        if (context3)
        {
          [context3 tokenizeStringIntoWords:text];
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

- (int64_t)_tokenCountForString:(id)string
{
  stringCopy = string;
  context = [(CRWrappingEvaluationResult *)self context];
  usesWordTokens = [context usesWordTokens];

  if (usesWordTokens)
  {
    v7 = [(CRWrappingEvaluationResult *)self _spaceSeparatedTokens:stringCopy];
    v8 = [v7 count];
  }

  else
  {
    v8 = [stringCopy length];
  }

  return v8;
}

- (id)_spaceSeparatedTokens:(id)tokens
{
  v3 = [tokens componentsSeparatedByString:@" "];

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