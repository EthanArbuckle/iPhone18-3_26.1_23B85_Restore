@interface SCRCMathSubSuperscriptExpression
- (BOOL)isBaseSubSuperscript;
- (BOOL)isNumber;
- (BOOL)isRangeSubSuperscript;
- (SCRCMathSubSuperscriptExpression)initWithDictionary:(id)dictionary;
- (id)_stringToAddForSuperscript:(id)superscript withPriorDescription:(id)description updatedDescription:(id *)updatedDescription;
- (id)description;
- (id)dollarCodeDescriptionWithNumberOfOuterRadicals:(unint64_t)radicals treePosition:(id)position;
- (id)latexMathModeDescription;
- (id)mathMLString;
- (id)speakableDescriptionWithSpeakingStyle:(int64_t)style arePausesAllowed:(BOOL)allowed;
- (id)speakableSegmentsWithSpeakingStyle:(int64_t)style upToDepth:(unint64_t)depth treePosition:(id)position;
- (id)subExpressions;
- (unint64_t)fractionLevel;
@end

@implementation SCRCMathSubSuperscriptExpression

- (SCRCMathSubSuperscriptExpression)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v13.receiver = self;
  v13.super_class = SCRCMathSubSuperscriptExpression;
  v5 = [(SCRCMathExpression *)&v13 initWithDictionary:dictionaryCopy];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKey:@"AXMBaseObject"];
    v7 = [SCRCMathExpression mathExpressionWithDictionary:v6];
    [(SCRCMathSubSuperscriptExpression *)v5 setBase:v7];

    v8 = [dictionaryCopy objectForKey:@"AXMSubscriptObject"];
    v9 = [SCRCMathExpression mathExpressionWithDictionary:v8];
    [(SCRCMathSubSuperscriptExpression *)v5 setSubscript:v9];

    v10 = [dictionaryCopy objectForKey:@"AXMSuperscriptObject"];
    v11 = [SCRCMathExpression mathExpressionWithDictionary:v10];
    [(SCRCMathSubSuperscriptExpression *)v5 setSuperscript:v11];
  }

  return v5;
}

- (id)description
{
  v9.receiver = self;
  v9.super_class = SCRCMathSubSuperscriptExpression;
  v3 = [(SCRCMathSubSuperscriptExpression *)&v9 description];
  base = [(SCRCMathSubSuperscriptExpression *)self base];
  subscript = [(SCRCMathSubSuperscriptExpression *)self subscript];
  superscript = [(SCRCMathSubSuperscriptExpression *)self superscript];
  v7 = [v3 stringByAppendingFormat:@" - base %@, subscript %@, superscript %@", base, subscript, superscript];

  return v7;
}

- (BOOL)isRangeSubSuperscript
{
  base = [(SCRCMathSubSuperscriptExpression *)self base];
  if (base && ([(SCRCMathSubSuperscriptExpression *)self subscript], (v4 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v5 = v4;
    superscript = [(SCRCMathSubSuperscriptExpression *)self superscript];

    if (superscript)
    {
      LOBYTE(superscript) = [base canBeUsedWithRange];
    }
  }

  else
  {
    LOBYTE(superscript) = 0;
  }

  return superscript;
}

- (BOOL)isBaseSubSuperscript
{
  base = [(SCRCMathSubSuperscriptExpression *)self base];
  if (!base)
  {
    return 0;
  }

  base2 = base;
  subscript = [(SCRCMathSubSuperscriptExpression *)self subscript];
  if (!subscript)
  {
    canBeUsedWithBase = 0;
LABEL_7:

    return canBeUsedWithBase;
  }

  v6 = subscript;
  superscript = [(SCRCMathSubSuperscriptExpression *)self superscript];

  if (!superscript)
  {
    base2 = [(SCRCMathSubSuperscriptExpression *)self base];
    canBeUsedWithBase = [base2 canBeUsedWithBase];
    goto LABEL_7;
  }

  return 0;
}

- (BOOL)isNumber
{
  if ([(SCRCMathExpression *)self isNumberOverride])
  {
    return 1;
  }

  base = [(SCRCMathSubSuperscriptExpression *)self base];
  isNumber = [base isNumber];

  return isNumber;
}

- (unint64_t)fractionLevel
{
  base = [(SCRCMathSubSuperscriptExpression *)self base];
  fractionLevel = [base fractionLevel];

  return fractionLevel;
}

- (id)subExpressions
{
  base = [(SCRCMathSubSuperscriptExpression *)self base];
  subscript = [(SCRCMathSubSuperscriptExpression *)self subscript];
  superscript = [(SCRCMathSubSuperscriptExpression *)self superscript];
  v6 = [(SCRCMathExpression *)self arrayWithoutNilsFromFirstChild:base secondChild:subscript thirdChild:superscript];

  return v6;
}

- (id)_stringToAddForSuperscript:(id)superscript withPriorDescription:(id)description updatedDescription:(id *)updatedDescription
{
  superscriptCopy = superscript;
  descriptionCopy = description;
  if (![superscriptCopy length])
  {
    v20 = 0;
    goto LABEL_21;
  }

  superscript = [(SCRCMathSubSuperscriptExpression *)self superscript];
  isNumber = [superscript isNumber];

  superscript2 = [(SCRCMathSubSuperscriptExpression *)self superscript];
  v13 = superscript2;
  if (isNumber)
  {
    isInteger = [superscript2 isInteger];

    if (isInteger)
    {
      superscript3 = [(SCRCMathSubSuperscriptExpression *)self superscript];
      integerValue = [superscript3 integerValue];

      if (integerValue == 2)
      {
        scrcContainsPause = [descriptionCopy scrcContainsPause];
        v18 = @"superscript.squared.formatter";
        v19 = @"superscript.squared.with.long.base.formatter";
LABEL_12:
        if (scrcContainsPause)
        {
          v27 = v19;
        }

        else
        {
          v27 = v18;
        }

        v28 = MEMORY[0x277CCA898];
        v29 = [(SCRCMathExpression *)self localizedStringForKey:v27];
LABEL_20:
        v31 = [v28 scrcStringWithFormat:v29, descriptionCopy, v34];

        v20 = 0;
        descriptionCopy = v31;
        goto LABEL_21;
      }

      superscript4 = [(SCRCMathSubSuperscriptExpression *)self superscript];
      integerValue2 = [superscript4 integerValue];

      if (integerValue2 == 3)
      {
        scrcContainsPause = [descriptionCopy scrcContainsPause];
        v18 = @"superscript.cubed.formatter";
        v19 = @"superscript.cubed.with.long.base.formatter";
        goto LABEL_12;
      }
    }

    if ([descriptionCopy scrcContainsPause])
    {
      v30 = @"raised.to.power.with.long.base.formatter";
    }

    else
    {
      v30 = @"raised.to.power.formatter";
    }

    v28 = MEMORY[0x277CCA898];
    v29 = [(SCRCMathExpression *)self localizedStringForKey:v30];
    v34 = superscriptCopy;
    goto LABEL_20;
  }

  isNaturalSuperscript = [superscript2 isNaturalSuperscript];

  if (isNaturalSuperscript)
  {
    v20 = superscriptCopy;
  }

  else
  {
    v22 = MEMORY[0x277CCA898];
    v23 = [(SCRCMathExpression *)self localizedStringForKey:@"generic.superscript.formatter"];
    superscriptCopy = [v22 scrcStringWithFormat:v23, superscriptCopy];

    v20 = [superscriptCopy scrcStringByAddingAttribute:@"kSCRCMathStringAttributeSpeakWithPitchInflection" value:&unk_28763AB68];
  }

LABEL_21:
  if (updatedDescription)
  {
    v32 = descriptionCopy;
    *updatedDescription = descriptionCopy;
  }

  return v20;
}

- (id)speakableDescriptionWithSpeakingStyle:(int64_t)style arePausesAllowed:(BOOL)allowed
{
  allowedCopy = allowed;
  v47 = *MEMORY[0x277D85DE8];
  isRangeSubSuperscript = [(SCRCMathSubSuperscriptExpression *)self isRangeSubSuperscript];
  v8 = isRangeSubSuperscript | [(SCRCMathSubSuperscriptExpression *)self isBaseSubSuperscript];
  v9 = v8 ^ 1;
  base = [(SCRCMathSubSuperscriptExpression *)self base];
  v40 = allowedCopy;
  v11 = [base speakableDescriptionWithSpeakingStyle:style arePausesAllowed:allowedCopy & (v8 ^ 1u)];

  if (![v11 length])
  {
    v12 = [(SCRCMathExpression *)self localizedAttributedStringForKey:@"empty.content"];

    v11 = v12;
  }

  subscript = [(SCRCMathSubSuperscriptExpression *)self subscript];
  v14 = [subscript speakableDescriptionWithSpeakingStyle:style arePausesAllowed:v40 & v9];

  superscript = [(SCRCMathSubSuperscriptExpression *)self superscript];
  v16 = [superscript speakableDescriptionWithSpeakingStyle:style arePausesAllowed:v40 & v9];

  if (v8)
  {
    if (isRangeSubSuperscript)
    {
      v17 = @"range.sub.superscript.formatter";
    }

    else
    {
      v17 = @"base.sub.superscript.formatter";
    }

    v18 = MEMORY[0x277CCA898];
    v19 = [(SCRCMathExpression *)self localizedStringForKey:v17];
    v20 = [v18 scrcStringWithFormat:v19, v11, v14, v16];
  }

  else
  {
    v38 = v16;
    v21 = [(SCRCMathExpression *)self localizedSegmentOrderingForKey:@"SubSuperscript"];
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v22 = [v21 countByEnumeratingWithState:&v42 objects:v46 count:16];
    if (v22)
    {
      v23 = v22;
      selfCopy = self;
      v20 = 0;
      v24 = *v43;
      v25 = 1;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v43 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v27 = *(*(&v42 + 1) + 8 * i);
          if ([v27 isEqualToString:@"base"])
          {
            v28 = v11;
          }

          else if ([v27 isEqualToString:@"subscript"])
          {
            if ([v14 length])
            {
              v29 = MEMORY[0x277CCA898];
              v30 = [(SCRCMathExpression *)selfCopy localizedStringForKey:@"generic.subscript.formatter"];
              v31 = [v29 scrcStringWithFormat:v30, v14];

              v28 = [v31 scrcStringByAddingAttribute:@"kSCRCMathStringAttributeSpeakWithPitchInflection" value:&unk_28763AB80];
            }

            else
            {
              v28 = 0;
            }
          }

          else if ([v27 isEqualToString:@"superscript"])
          {
            v41 = v20;
            v28 = [(SCRCMathSubSuperscriptExpression *)selfCopy _stringToAddForSuperscript:v38 withPriorDescription:v20 updatedDescription:&v41];
            v32 = v41;

            v20 = v32;
          }

          else
          {
            NSLog(&cfstr_AxVoiceoverMat_1.isa, v27);
            v28 = 0;
          }

          if ([v28 length])
          {
            if (v25)
            {
              v33 = v28;
            }

            else
            {
              if (v40)
              {
                [MEMORY[0x277CCA898] scrcPauseString];
              }

              else
              {
                [MEMORY[0x277CCA898] scrcSpaceString];
              }
              v34 = ;
              v35 = [v20 scrcStringByAppendingAttributedString:v34];

              v33 = [v35 scrcStringByAppendingAttributedString:v28];
              v20 = v35;
            }

            v25 = 0;
            v20 = v33;
          }
        }

        v23 = [v21 countByEnumeratingWithState:&v42 objects:v46 count:16];
      }

      while (v23);
    }

    else
    {
      v20 = 0;
    }

    v16 = v38;
  }

  v36 = v20;

  return v20;
}

- (id)speakableSegmentsWithSpeakingStyle:(int64_t)style upToDepth:(unint64_t)depth treePosition:(id)position
{
  v99 = *MEMORY[0x277D85DE8];
  positionCopy = position;
  if (depth)
  {
    v9 = depth - 1;
    if (depth == 1)
    {
      v93.receiver = self;
      v93.super_class = SCRCMathSubSuperscriptExpression;
      array = [(SCRCMathExpression *)&v93 speakableSegmentsWithSpeakingStyle:style upToDepth:1 treePosition:positionCopy];
      goto LABEL_72;
    }

    array = [MEMORY[0x277CBEB18] array];
    isRangeSubSuperscript = [(SCRCMathSubSuperscriptExpression *)self isRangeSubSuperscript];
    isBaseSubSuperscript = [(SCRCMathSubSuperscriptExpression *)self isBaseSubSuperscript];
    v13 = @"SubSuperscript";
    if (isBaseSubSuperscript)
    {
      v13 = @"BaseSubSuperscript";
    }

    v69 = isRangeSubSuperscript;
    if (isRangeSubSuperscript)
    {
      v14 = @"RangeSubSuperscript";
    }

    else
    {
      v14 = v13;
    }

    [(SCRCMathExpression *)self localizedSegmentOrderingForKey:v14];
    v89 = 0u;
    v90 = 0u;
    v91 = 0u;
    obj = v92 = 0u;
    v79 = [obj countByEnumeratingWithState:&v89 objects:v98 count:16];
    if (v79)
    {
      v15 = isRangeSubSuperscript || isBaseSubSuperscript;
      v16 = @"segment.subscript.prefix";
      v78 = *v90;
      v17 = @"segment.subscript.suffix";
      if (isBaseSubSuperscript)
      {
        v16 = @"segment.base.subscript.prefix";
        v17 = @"segment.base.subscript.suffix";
      }

      if (isRangeSubSuperscript)
      {
        v18 = @"segment.range.subscript.prefix";
      }

      else
      {
        v18 = v16;
      }

      if (isRangeSubSuperscript)
      {
        v17 = @"segment.range.subscript.suffix";
      }

      v70 = v17;
      v71 = v18;
      styleCopy = style;
      selfCopy = self;
      v74 = v9;
      v75 = positionCopy;
      do
      {
        v19 = 0;
        do
        {
          if (*v90 != v78)
          {
            objc_enumerationMutation(obj);
          }

          v80 = v19;
          v20 = *(*(&v89 + 1) + 8 * v19);
          if ([v20 isEqualToString:@"base"])
          {
            base = [(SCRCMathSubSuperscriptExpression *)self base];

            if (base)
            {
              base2 = [(SCRCMathSubSuperscriptExpression *)self base];
              v23 = [positionCopy indexPathByAddingIndex:0];
              v24 = [base2 speakableSegmentsWithSpeakingStyle:style upToDepth:v9 treePosition:v23];
              [array addObjectsFromArray:v24];
LABEL_68:

              goto LABEL_69;
            }
          }

          if ([v20 isEqualToString:@"subscript"])
          {
            subscript = [(SCRCMathSubSuperscriptExpression *)self subscript];

            if (subscript)
            {
              v26 = [positionCopy indexPathByAddingIndex:1];
              subscript2 = [(SCRCMathSubSuperscriptExpression *)self subscript];
              v28 = v26;
              v29 = [subscript2 speakableSegmentsWithSpeakingStyle:style upToDepth:v9 treePosition:v26 localizablePrefix:v71 localizableSuffix:v70];

              v87 = 0u;
              v88 = 0u;
              v85 = 0u;
              v86 = 0u;
              v24 = v29;
              v30 = [v24 countByEnumeratingWithState:&v85 objects:v97 count:16];
              if (v30)
              {
                v31 = v30;
                v32 = *v86;
                do
                {
                  for (i = 0; i != v31; ++i)
                  {
                    if (*v86 != v32)
                    {
                      objc_enumerationMutation(v24);
                    }

                    v34 = *(*(&v85 + 1) + 8 * i);
                    v35 = v34;
                    if (!v15)
                    {
                      v36 = [v34 scrcStringByAddingAttribute:@"kSCRCMathStringAttributeSpeakWithPitchInflection" value:&unk_28763AB80];

                      v35 = v36;
                    }

                    [array addObject:v35];
                  }

                  v31 = [v24 countByEnumeratingWithState:&v85 objects:v97 count:16];
                }

                while (v31);
                v23 = v24;
                style = styleCopy;
                self = selfCopy;
                v9 = v74;
              }

              else
              {
                v23 = v24;
              }

              base2 = v28;
              positionCopy = v75;
              goto LABEL_68;
            }
          }

          if ([v20 isEqualToString:@"superscript"])
          {
            superscript = [(SCRCMathSubSuperscriptExpression *)self superscript];

            if (superscript)
            {
              v38 = [positionCopy indexPathByAddingIndex:2];
              superscript2 = [(SCRCMathSubSuperscriptExpression *)self superscript];
              v40 = superscript2;
              v76 = v38;
              if (v69)
              {
                styleCopy3 = style;
                v42 = v9;
                v43 = v38;
                v44 = @"segment.range.superscript.prefix";
                v45 = @"segment.range.superscript.suffix";
                goto LABEL_54;
              }

              isNumber = [superscript2 isNumber];

              superscript3 = [(SCRCMathSubSuperscriptExpression *)self superscript];
              v48 = superscript3;
              if (isNumber)
              {
                isInteger = [superscript3 isInteger];

                v9 = v74;
                if (!isInteger)
                {
                  goto LABEL_53;
                }

                superscript4 = [(SCRCMathSubSuperscriptExpression *)self superscript];
                integerValue = [superscript4 integerValue];

                if (integerValue == 2)
                {
                  v40 = [(SCRCMathExpression *)self localizedAttributedStringForKey:@"segment.superscript.squared" treePosition:v76];
                  v96 = v40;
                  v52 = MEMORY[0x277CBEA60];
                  v53 = &v96;
                  goto LABEL_52;
                }

                superscript5 = [(SCRCMathSubSuperscriptExpression *)self superscript];
                integerValue2 = [superscript5 integerValue];

                if (integerValue2 == 3)
                {
                  v40 = [(SCRCMathExpression *)self localizedAttributedStringForKey:@"segment.superscript.cubed" treePosition:v76];
                  v95 = v40;
                  v52 = MEMORY[0x277CBEA60];
                  v53 = &v95;
LABEL_52:
                  v56 = [v52 arrayWithObjects:v53 count:1];
                }

                else
                {
LABEL_53:
                  superscript2 = [(SCRCMathSubSuperscriptExpression *)self superscript];
                  v40 = superscript2;
                  styleCopy3 = style;
                  v42 = v74;
                  v43 = v76;
                  v44 = @"segment.raised.to.power.prefix";
                  v45 = @"segment.raised.to.power.suffix";
LABEL_54:
                  v56 = [superscript2 speakableSegmentsWithSpeakingStyle:styleCopy3 upToDepth:v42 treePosition:v43 localizablePrefix:v44 localizableSuffix:v45];
                }

LABEL_55:
                v57 = v56;
                v58 = 0;
              }

              else
              {
                isNaturalSuperscript = [superscript3 isNaturalSuperscript];

                superscript6 = [(SCRCMathSubSuperscriptExpression *)self superscript];
                v40 = superscript6;
                if (isNaturalSuperscript)
                {
                  v9 = v74;
                  v56 = [superscript6 speakableSegmentsWithSpeakingStyle:style upToDepth:v74 treePosition:v76];
                  goto LABEL_55;
                }

                v9 = v74;
                v57 = [superscript6 speakableSegmentsWithSpeakingStyle:style upToDepth:v74 treePosition:v76 localizablePrefix:@"segment.superscript.prefix" localizableSuffix:@"segment.superscript.suffix"];
                v58 = 1;
              }

              v83 = 0u;
              v84 = 0u;
              v81 = 0u;
              v82 = 0u;
              v24 = v57;
              v61 = [v24 countByEnumeratingWithState:&v81 objects:v94 count:16];
              if (v61)
              {
                v62 = v61;
                v63 = *v82;
                do
                {
                  for (j = 0; j != v62; ++j)
                  {
                    if (*v82 != v63)
                    {
                      objc_enumerationMutation(v24);
                    }

                    v65 = *(*(&v81 + 1) + 8 * j);
                    v66 = v65;
                    if (v58)
                    {
                      v67 = [v65 scrcStringByAddingAttribute:@"kSCRCMathStringAttributeSpeakWithPitchInflection" value:&unk_28763AB68];

                      v66 = v67;
                    }

                    [array addObject:v66];
                  }

                  v62 = [v24 countByEnumeratingWithState:&v81 objects:v94 count:16];
                }

                while (v62);
                v23 = v24;
                v9 = v74;
                positionCopy = v75;
                style = styleCopy;
                self = selfCopy;
              }

              else
              {
                v23 = v24;
                self = selfCopy;
              }

              base2 = v76;
              goto LABEL_68;
            }
          }

LABEL_69:
          v19 = v80 + 1;
        }

        while (v80 + 1 != v79);
        v79 = [obj countByEnumeratingWithState:&v89 objects:v98 count:16];
      }

      while (v79);
    }
  }

  else
  {
    array = 0;
  }

LABEL_72:

  return array;
}

- (id)dollarCodeDescriptionWithNumberOfOuterRadicals:(unint64_t)radicals treePosition:(id)position
{
  positionCopy = position;
  scrcString = [MEMORY[0x277CCAB48] scrcString];
  base = [(SCRCMathSubSuperscriptExpression *)self base];

  if (base)
  {
    base2 = [(SCRCMathSubSuperscriptExpression *)self base];
    v10 = [positionCopy indexPathByAddingIndex:0];
    v11 = [base2 dollarCodeDescriptionWithNumberOfOuterRadicals:radicals treePosition:v10];
    [scrcString appendAttributedString:v11];
  }

  subscript = [(SCRCMathSubSuperscriptExpression *)self subscript];

  if (subscript)
  {
    v13 = [positionCopy indexPathByAddingIndex:1];
    v14 = [MEMORY[0x277CCA898] scrcStringWithDollarCode:@"bs" treePosition:v13];
    [scrcString appendAttributedString:v14];

    subscript2 = [(SCRCMathSubSuperscriptExpression *)self subscript];
    v16 = [subscript2 dollarCodeDescriptionWithNumberOfOuterRadicals:radicals treePosition:v13];
    [scrcString appendAttributedString:v16];

    v17 = [MEMORY[0x277CCA898] scrcStringWithDollarCode:@"be" treePosition:v13];
    [scrcString appendAttributedString:v17];
  }

  superscript = [(SCRCMathSubSuperscriptExpression *)self superscript];

  if (superscript)
  {
    v19 = [positionCopy indexPathByAddingIndex:2];
    v20 = [MEMORY[0x277CCA898] scrcStringWithDollarCode:@"ps" treePosition:v19];
    [scrcString appendAttributedString:v20];

    superscript2 = [(SCRCMathSubSuperscriptExpression *)self superscript];
    v22 = [superscript2 dollarCodeDescriptionWithNumberOfOuterRadicals:radicals treePosition:v19];
    [scrcString appendAttributedString:v22];

    v23 = [MEMORY[0x277CCA898] scrcStringWithDollarCode:@"pe" treePosition:v19];
    [scrcString appendAttributedString:v23];
  }

  return scrcString;
}

- (id)mathMLString
{
  subscript = [(SCRCMathSubSuperscriptExpression *)self subscript];
  if (subscript)
  {
    v4 = subscript;
    superscript = [(SCRCMathSubSuperscriptExpression *)self superscript];

    if (superscript)
    {
      v6 = MEMORY[0x277CCACA8];
      base = [(SCRCMathSubSuperscriptExpression *)self base];
      mathMLString = [base mathMLString];
      subscript2 = [(SCRCMathSubSuperscriptExpression *)self subscript];
      mathMLString2 = [subscript2 mathMLString];
      superscript2 = [(SCRCMathSubSuperscriptExpression *)self superscript];
      mathMLString3 = [superscript2 mathMLString];
      v13 = [v6 stringWithFormat:@"%@%@%@", mathMLString, mathMLString2, mathMLString3];
      v14 = [v13 stringWrappedInMathMLTag:@"msubsup"];

LABEL_9:
      goto LABEL_10;
    }
  }

  subscript3 = [(SCRCMathSubSuperscriptExpression *)self subscript];

  if (subscript3)
  {
    v16 = MEMORY[0x277CCACA8];
    base = [(SCRCMathSubSuperscriptExpression *)self base];
    mathMLString = [base mathMLString];
    subscript2 = [(SCRCMathSubSuperscriptExpression *)self subscript];
    mathMLString2 = [subscript2 mathMLString];
    v17 = [v16 stringWithFormat:@"%@%@", mathMLString, mathMLString2];
    superscript2 = v17;
    v18 = @"msub";
LABEL_8:
    v14 = [v17 stringWrappedInMathMLTag:v18];
    goto LABEL_9;
  }

  superscript3 = [(SCRCMathSubSuperscriptExpression *)self superscript];

  if (superscript3)
  {
    v20 = MEMORY[0x277CCACA8];
    base = [(SCRCMathSubSuperscriptExpression *)self base];
    mathMLString = [base mathMLString];
    subscript2 = [(SCRCMathSubSuperscriptExpression *)self superscript];
    mathMLString2 = [subscript2 mathMLString];
    v17 = [v20 stringWithFormat:@"%@%@", mathMLString, mathMLString2];
    superscript2 = v17;
    v18 = @"msup";
    goto LABEL_8;
  }

  v14 = &stru_287632E30;
LABEL_10:

  return v14;
}

- (id)latexMathModeDescription
{
  v3 = [(SCRCMathExpression *)self->_base latexDescriptionInMathMode:1];
  v4 = [v3 mutableCopy];

  subscript = self->_subscript;
  if (subscript)
  {
    v6 = [(SCRCMathExpression *)subscript latexDescriptionInMathMode:1];
    [v4 appendFormat:@"_{%@}", v6];
  }

  superscript = self->_superscript;
  if (superscript)
  {
    v8 = [(SCRCMathExpression *)superscript latexDescriptionInMathMode:1];
    [v4 appendFormat:@"^{%@}", v8];
  }

  return v4;
}

@end