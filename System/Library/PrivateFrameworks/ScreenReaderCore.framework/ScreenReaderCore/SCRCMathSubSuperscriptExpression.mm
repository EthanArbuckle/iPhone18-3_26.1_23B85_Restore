@interface SCRCMathSubSuperscriptExpression
- (BOOL)isBaseSubSuperscript;
- (BOOL)isNumber;
- (BOOL)isRangeSubSuperscript;
- (SCRCMathSubSuperscriptExpression)initWithDictionary:(id)a3;
- (id)_stringToAddForSuperscript:(id)a3 withPriorDescription:(id)a4 updatedDescription:(id *)a5;
- (id)description;
- (id)dollarCodeDescriptionWithNumberOfOuterRadicals:(unint64_t)a3 treePosition:(id)a4;
- (id)latexMathModeDescription;
- (id)mathMLString;
- (id)speakableDescriptionWithSpeakingStyle:(int64_t)a3 arePausesAllowed:(BOOL)a4;
- (id)speakableSegmentsWithSpeakingStyle:(int64_t)a3 upToDepth:(unint64_t)a4 treePosition:(id)a5;
- (id)subExpressions;
- (unint64_t)fractionLevel;
@end

@implementation SCRCMathSubSuperscriptExpression

- (SCRCMathSubSuperscriptExpression)initWithDictionary:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = SCRCMathSubSuperscriptExpression;
  v5 = [(SCRCMathExpression *)&v13 initWithDictionary:v4];
  if (v5)
  {
    v6 = [v4 objectForKey:@"AXMBaseObject"];
    v7 = [SCRCMathExpression mathExpressionWithDictionary:v6];
    [(SCRCMathSubSuperscriptExpression *)v5 setBase:v7];

    v8 = [v4 objectForKey:@"AXMSubscriptObject"];
    v9 = [SCRCMathExpression mathExpressionWithDictionary:v8];
    [(SCRCMathSubSuperscriptExpression *)v5 setSubscript:v9];

    v10 = [v4 objectForKey:@"AXMSuperscriptObject"];
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
  v4 = [(SCRCMathSubSuperscriptExpression *)self base];
  v5 = [(SCRCMathSubSuperscriptExpression *)self subscript];
  v6 = [(SCRCMathSubSuperscriptExpression *)self superscript];
  v7 = [v3 stringByAppendingFormat:@" - base %@, subscript %@, superscript %@", v4, v5, v6];

  return v7;
}

- (BOOL)isRangeSubSuperscript
{
  v3 = [(SCRCMathSubSuperscriptExpression *)self base];
  if (v3 && ([(SCRCMathSubSuperscriptExpression *)self subscript], (v4 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v5 = v4;
    v6 = [(SCRCMathSubSuperscriptExpression *)self superscript];

    if (v6)
    {
      LOBYTE(v6) = [v3 canBeUsedWithRange];
    }
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (BOOL)isBaseSubSuperscript
{
  v3 = [(SCRCMathSubSuperscriptExpression *)self base];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = [(SCRCMathSubSuperscriptExpression *)self subscript];
  if (!v5)
  {
    v8 = 0;
LABEL_7:

    return v8;
  }

  v6 = v5;
  v7 = [(SCRCMathSubSuperscriptExpression *)self superscript];

  if (!v7)
  {
    v4 = [(SCRCMathSubSuperscriptExpression *)self base];
    v8 = [v4 canBeUsedWithBase];
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

  v4 = [(SCRCMathSubSuperscriptExpression *)self base];
  v5 = [v4 isNumber];

  return v5;
}

- (unint64_t)fractionLevel
{
  v2 = [(SCRCMathSubSuperscriptExpression *)self base];
  v3 = [v2 fractionLevel];

  return v3;
}

- (id)subExpressions
{
  v3 = [(SCRCMathSubSuperscriptExpression *)self base];
  v4 = [(SCRCMathSubSuperscriptExpression *)self subscript];
  v5 = [(SCRCMathSubSuperscriptExpression *)self superscript];
  v6 = [(SCRCMathExpression *)self arrayWithoutNilsFromFirstChild:v3 secondChild:v4 thirdChild:v5];

  return v6;
}

- (id)_stringToAddForSuperscript:(id)a3 withPriorDescription:(id)a4 updatedDescription:(id *)a5
{
  v8 = a3;
  v9 = a4;
  if (![v8 length])
  {
    v20 = 0;
    goto LABEL_21;
  }

  v10 = [(SCRCMathSubSuperscriptExpression *)self superscript];
  v11 = [v10 isNumber];

  v12 = [(SCRCMathSubSuperscriptExpression *)self superscript];
  v13 = v12;
  if (v11)
  {
    v14 = [v12 isInteger];

    if (v14)
    {
      v15 = [(SCRCMathSubSuperscriptExpression *)self superscript];
      v16 = [v15 integerValue];

      if (v16 == 2)
      {
        v17 = [v9 scrcContainsPause];
        v18 = @"superscript.squared.formatter";
        v19 = @"superscript.squared.with.long.base.formatter";
LABEL_12:
        if (v17)
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
        v31 = [v28 scrcStringWithFormat:v29, v9, v34];

        v20 = 0;
        v9 = v31;
        goto LABEL_21;
      }

      v25 = [(SCRCMathSubSuperscriptExpression *)self superscript];
      v26 = [v25 integerValue];

      if (v26 == 3)
      {
        v17 = [v9 scrcContainsPause];
        v18 = @"superscript.cubed.formatter";
        v19 = @"superscript.cubed.with.long.base.formatter";
        goto LABEL_12;
      }
    }

    if ([v9 scrcContainsPause])
    {
      v30 = @"raised.to.power.with.long.base.formatter";
    }

    else
    {
      v30 = @"raised.to.power.formatter";
    }

    v28 = MEMORY[0x277CCA898];
    v29 = [(SCRCMathExpression *)self localizedStringForKey:v30];
    v34 = v8;
    goto LABEL_20;
  }

  v21 = [v12 isNaturalSuperscript];

  if (v21)
  {
    v20 = v8;
  }

  else
  {
    v22 = MEMORY[0x277CCA898];
    v23 = [(SCRCMathExpression *)self localizedStringForKey:@"generic.superscript.formatter"];
    v24 = [v22 scrcStringWithFormat:v23, v8];

    v20 = [v24 scrcStringByAddingAttribute:@"kSCRCMathStringAttributeSpeakWithPitchInflection" value:&unk_28763AB68];
  }

LABEL_21:
  if (a5)
  {
    v32 = v9;
    *a5 = v9;
  }

  return v20;
}

- (id)speakableDescriptionWithSpeakingStyle:(int64_t)a3 arePausesAllowed:(BOOL)a4
{
  v4 = a4;
  v47 = *MEMORY[0x277D85DE8];
  v7 = [(SCRCMathSubSuperscriptExpression *)self isRangeSubSuperscript];
  v8 = v7 | [(SCRCMathSubSuperscriptExpression *)self isBaseSubSuperscript];
  v9 = v8 ^ 1;
  v10 = [(SCRCMathSubSuperscriptExpression *)self base];
  v40 = v4;
  v11 = [v10 speakableDescriptionWithSpeakingStyle:a3 arePausesAllowed:v4 & (v8 ^ 1u)];

  if (![v11 length])
  {
    v12 = [(SCRCMathExpression *)self localizedAttributedStringForKey:@"empty.content"];

    v11 = v12;
  }

  v13 = [(SCRCMathSubSuperscriptExpression *)self subscript];
  v14 = [v13 speakableDescriptionWithSpeakingStyle:a3 arePausesAllowed:v40 & v9];

  v15 = [(SCRCMathSubSuperscriptExpression *)self superscript];
  v16 = [v15 speakableDescriptionWithSpeakingStyle:a3 arePausesAllowed:v40 & v9];

  if (v8)
  {
    if (v7)
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
      v39 = self;
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
              v30 = [(SCRCMathExpression *)v39 localizedStringForKey:@"generic.subscript.formatter"];
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
            v28 = [(SCRCMathSubSuperscriptExpression *)v39 _stringToAddForSuperscript:v38 withPriorDescription:v20 updatedDescription:&v41];
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

- (id)speakableSegmentsWithSpeakingStyle:(int64_t)a3 upToDepth:(unint64_t)a4 treePosition:(id)a5
{
  v99 = *MEMORY[0x277D85DE8];
  v8 = a5;
  if (a4)
  {
    v9 = a4 - 1;
    if (a4 == 1)
    {
      v93.receiver = self;
      v93.super_class = SCRCMathSubSuperscriptExpression;
      v10 = [(SCRCMathExpression *)&v93 speakableSegmentsWithSpeakingStyle:a3 upToDepth:1 treePosition:v8];
      goto LABEL_72;
    }

    v10 = [MEMORY[0x277CBEB18] array];
    v11 = [(SCRCMathSubSuperscriptExpression *)self isRangeSubSuperscript];
    v12 = [(SCRCMathSubSuperscriptExpression *)self isBaseSubSuperscript];
    v13 = @"SubSuperscript";
    if (v12)
    {
      v13 = @"BaseSubSuperscript";
    }

    v69 = v11;
    if (v11)
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
      v15 = v11 || v12;
      v16 = @"segment.subscript.prefix";
      v78 = *v90;
      v17 = @"segment.subscript.suffix";
      if (v12)
      {
        v16 = @"segment.base.subscript.prefix";
        v17 = @"segment.base.subscript.suffix";
      }

      if (v11)
      {
        v18 = @"segment.range.subscript.prefix";
      }

      else
      {
        v18 = v16;
      }

      if (v11)
      {
        v17 = @"segment.range.subscript.suffix";
      }

      v70 = v17;
      v71 = v18;
      v72 = a3;
      v73 = self;
      v74 = v9;
      v75 = v8;
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
            v21 = [(SCRCMathSubSuperscriptExpression *)self base];

            if (v21)
            {
              v22 = [(SCRCMathSubSuperscriptExpression *)self base];
              v23 = [v8 indexPathByAddingIndex:0];
              v24 = [v22 speakableSegmentsWithSpeakingStyle:a3 upToDepth:v9 treePosition:v23];
              [v10 addObjectsFromArray:v24];
LABEL_68:

              goto LABEL_69;
            }
          }

          if ([v20 isEqualToString:@"subscript"])
          {
            v25 = [(SCRCMathSubSuperscriptExpression *)self subscript];

            if (v25)
            {
              v26 = [v8 indexPathByAddingIndex:1];
              v27 = [(SCRCMathSubSuperscriptExpression *)self subscript];
              v28 = v26;
              v29 = [v27 speakableSegmentsWithSpeakingStyle:a3 upToDepth:v9 treePosition:v26 localizablePrefix:v71 localizableSuffix:v70];

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

                    [v10 addObject:v35];
                  }

                  v31 = [v24 countByEnumeratingWithState:&v85 objects:v97 count:16];
                }

                while (v31);
                v23 = v24;
                a3 = v72;
                self = v73;
                v9 = v74;
              }

              else
              {
                v23 = v24;
              }

              v22 = v28;
              v8 = v75;
              goto LABEL_68;
            }
          }

          if ([v20 isEqualToString:@"superscript"])
          {
            v37 = [(SCRCMathSubSuperscriptExpression *)self superscript];

            if (v37)
            {
              v38 = [v8 indexPathByAddingIndex:2];
              v39 = [(SCRCMathSubSuperscriptExpression *)self superscript];
              v40 = v39;
              v76 = v38;
              if (v69)
              {
                v41 = a3;
                v42 = v9;
                v43 = v38;
                v44 = @"segment.range.superscript.prefix";
                v45 = @"segment.range.superscript.suffix";
                goto LABEL_54;
              }

              v46 = [v39 isNumber];

              v47 = [(SCRCMathSubSuperscriptExpression *)self superscript];
              v48 = v47;
              if (v46)
              {
                v49 = [v47 isInteger];

                v9 = v74;
                if (!v49)
                {
                  goto LABEL_53;
                }

                v50 = [(SCRCMathSubSuperscriptExpression *)self superscript];
                v51 = [v50 integerValue];

                if (v51 == 2)
                {
                  v40 = [(SCRCMathExpression *)self localizedAttributedStringForKey:@"segment.superscript.squared" treePosition:v76];
                  v96 = v40;
                  v52 = MEMORY[0x277CBEA60];
                  v53 = &v96;
                  goto LABEL_52;
                }

                v59 = [(SCRCMathSubSuperscriptExpression *)self superscript];
                v60 = [v59 integerValue];

                if (v60 == 3)
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
                  v39 = [(SCRCMathSubSuperscriptExpression *)self superscript];
                  v40 = v39;
                  v41 = a3;
                  v42 = v74;
                  v43 = v76;
                  v44 = @"segment.raised.to.power.prefix";
                  v45 = @"segment.raised.to.power.suffix";
LABEL_54:
                  v56 = [v39 speakableSegmentsWithSpeakingStyle:v41 upToDepth:v42 treePosition:v43 localizablePrefix:v44 localizableSuffix:v45];
                }

LABEL_55:
                v57 = v56;
                v58 = 0;
              }

              else
              {
                v54 = [v47 isNaturalSuperscript];

                v55 = [(SCRCMathSubSuperscriptExpression *)self superscript];
                v40 = v55;
                if (v54)
                {
                  v9 = v74;
                  v56 = [v55 speakableSegmentsWithSpeakingStyle:a3 upToDepth:v74 treePosition:v76];
                  goto LABEL_55;
                }

                v9 = v74;
                v57 = [v55 speakableSegmentsWithSpeakingStyle:a3 upToDepth:v74 treePosition:v76 localizablePrefix:@"segment.superscript.prefix" localizableSuffix:@"segment.superscript.suffix"];
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

                    [v10 addObject:v66];
                  }

                  v62 = [v24 countByEnumeratingWithState:&v81 objects:v94 count:16];
                }

                while (v62);
                v23 = v24;
                v9 = v74;
                v8 = v75;
                a3 = v72;
                self = v73;
              }

              else
              {
                v23 = v24;
                self = v73;
              }

              v22 = v76;
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
    v10 = 0;
  }

LABEL_72:

  return v10;
}

- (id)dollarCodeDescriptionWithNumberOfOuterRadicals:(unint64_t)a3 treePosition:(id)a4
{
  v6 = a4;
  v7 = [MEMORY[0x277CCAB48] scrcString];
  v8 = [(SCRCMathSubSuperscriptExpression *)self base];

  if (v8)
  {
    v9 = [(SCRCMathSubSuperscriptExpression *)self base];
    v10 = [v6 indexPathByAddingIndex:0];
    v11 = [v9 dollarCodeDescriptionWithNumberOfOuterRadicals:a3 treePosition:v10];
    [v7 appendAttributedString:v11];
  }

  v12 = [(SCRCMathSubSuperscriptExpression *)self subscript];

  if (v12)
  {
    v13 = [v6 indexPathByAddingIndex:1];
    v14 = [MEMORY[0x277CCA898] scrcStringWithDollarCode:@"bs" treePosition:v13];
    [v7 appendAttributedString:v14];

    v15 = [(SCRCMathSubSuperscriptExpression *)self subscript];
    v16 = [v15 dollarCodeDescriptionWithNumberOfOuterRadicals:a3 treePosition:v13];
    [v7 appendAttributedString:v16];

    v17 = [MEMORY[0x277CCA898] scrcStringWithDollarCode:@"be" treePosition:v13];
    [v7 appendAttributedString:v17];
  }

  v18 = [(SCRCMathSubSuperscriptExpression *)self superscript];

  if (v18)
  {
    v19 = [v6 indexPathByAddingIndex:2];
    v20 = [MEMORY[0x277CCA898] scrcStringWithDollarCode:@"ps" treePosition:v19];
    [v7 appendAttributedString:v20];

    v21 = [(SCRCMathSubSuperscriptExpression *)self superscript];
    v22 = [v21 dollarCodeDescriptionWithNumberOfOuterRadicals:a3 treePosition:v19];
    [v7 appendAttributedString:v22];

    v23 = [MEMORY[0x277CCA898] scrcStringWithDollarCode:@"pe" treePosition:v19];
    [v7 appendAttributedString:v23];
  }

  return v7;
}

- (id)mathMLString
{
  v3 = [(SCRCMathSubSuperscriptExpression *)self subscript];
  if (v3)
  {
    v4 = v3;
    v5 = [(SCRCMathSubSuperscriptExpression *)self superscript];

    if (v5)
    {
      v6 = MEMORY[0x277CCACA8];
      v7 = [(SCRCMathSubSuperscriptExpression *)self base];
      v8 = [v7 mathMLString];
      v9 = [(SCRCMathSubSuperscriptExpression *)self subscript];
      v10 = [v9 mathMLString];
      v11 = [(SCRCMathSubSuperscriptExpression *)self superscript];
      v12 = [v11 mathMLString];
      v13 = [v6 stringWithFormat:@"%@%@%@", v8, v10, v12];
      v14 = [v13 stringWrappedInMathMLTag:@"msubsup"];

LABEL_9:
      goto LABEL_10;
    }
  }

  v15 = [(SCRCMathSubSuperscriptExpression *)self subscript];

  if (v15)
  {
    v16 = MEMORY[0x277CCACA8];
    v7 = [(SCRCMathSubSuperscriptExpression *)self base];
    v8 = [v7 mathMLString];
    v9 = [(SCRCMathSubSuperscriptExpression *)self subscript];
    v10 = [v9 mathMLString];
    v17 = [v16 stringWithFormat:@"%@%@", v8, v10];
    v11 = v17;
    v18 = @"msub";
LABEL_8:
    v14 = [v17 stringWrappedInMathMLTag:v18];
    goto LABEL_9;
  }

  v19 = [(SCRCMathSubSuperscriptExpression *)self superscript];

  if (v19)
  {
    v20 = MEMORY[0x277CCACA8];
    v7 = [(SCRCMathSubSuperscriptExpression *)self base];
    v8 = [v7 mathMLString];
    v9 = [(SCRCMathSubSuperscriptExpression *)self superscript];
    v10 = [v9 mathMLString];
    v17 = [v20 stringWithFormat:@"%@%@", v8, v10];
    v11 = v17;
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