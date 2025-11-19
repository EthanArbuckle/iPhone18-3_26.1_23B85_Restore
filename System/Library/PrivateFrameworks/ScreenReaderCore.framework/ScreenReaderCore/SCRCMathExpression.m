@interface SCRCMathExpression
+ (Class)_classForExpressionType:(id)a3;
+ (id)mathExpressionWithDictionary:(id)a3;
+ (void)setPathToSegmentOrderingPlist:(id)a3;
- (NSArray)siblings;
- (SCRCMathExpression)initWithDictionary:(id)a3;
- (SCRCMathExpression)parent;
- (id)_scrcBundle;
- (id)arrayWithoutNilsFromFirstChild:(id)a3 secondChild:(id)a4 thirdChild:(id)a5;
- (id)dollarCodeDescription;
- (id)fenceDelimiters;
- (id)latexDescriptionForChildrenJoinedByString:(id)a3;
- (id)latexDescriptionInMathMode:(BOOL)a3;
- (id)latexIdentifierForFenceOperator:(id)a3 isClosingOperator:(BOOL)a4;
- (id)latexIdentifierForIdentifier:(id)a3;
- (id)localizedAttributedStringForKey:(id)a3 treePosition:(id)a4;
- (id)localizedSegmentOrderingForKey:(id)a3;
- (id)localizedStringForKey:(id)a3;
- (id)localizedStringForNumber:(id)a3;
- (id)speakableSegments:(id)a3 withLocalizablePrefix:(id)a4 localizableSuffix:(id)a5;
- (id)speakableSegments:(id)a3 withPrefix:(id)a4 suffix:(id)a5;
- (id)speakableSegmentsWithSpeakingStyle:(int64_t)a3 upToDepth:(unint64_t)a4;
- (id)speakableSegmentsWithSpeakingStyle:(int64_t)a3 upToDepth:(unint64_t)a4 treePosition:(id)a5;
- (id)speakableSegmentsWithSpeakingStyle:(int64_t)a3 upToDepth:(unint64_t)a4 treePosition:(id)a5 localizablePrefix:(id)a6 localizableSuffix:(id)a7;
- (id)speakableSegmentsWithSpeakingStyle:(int64_t)a3 upToDepth:(unint64_t)a4 treePosition:(id)a5 prefix:(id)a6 suffix:(id)a7;
- (id)speakableSummary;
- (unint64_t)maximumDepth;
- (unint64_t)maximumFractionLevelOfSubExpressions;
- (unint64_t)numberOfTables;
- (void)_applyTreePositionOfOriginalSegment:(id)a3 toPrefixedOrSuffixedSegment:(id)a4;
@end

@implementation SCRCMathExpression

+ (id)mathExpressionWithDictionary:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKey:@"AXMType"];
  v6 = [objc_alloc(objc_msgSend(a1 _classForExpressionType:{v5)), "initWithDictionary:", v4}];

  return v6;
}

- (SCRCMathExpression)initWithDictionary:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SCRCMathExpression;
  v5 = [(SCRCMathExpression *)&v9 init];
  if (v5)
  {
    v6 = [v4 objectForKey:@"AXMIsNumberOverride"];
    v7 = v6;
    if (v6)
    {
      LOBYTE(v6) = [v6 BOOLValue];
    }

    v5->_isNumberOverride = v6;
  }

  return v5;
}

- (id)dollarCodeDescription
{
  v3 = [MEMORY[0x277CCAA70] indexPathWithIndex:0];
  v4 = [(SCRCMathExpression *)self dollarCodeDescriptionWithNumberOfOuterRadicals:0 treePosition:v3];

  return v4;
}

- (unint64_t)maximumDepth
{
  v18 = *MEMORY[0x277D85DE8];
  result = self->_cachedMaximumDepth;
  if (!result)
  {
    v4 = [(SCRCMathExpression *)self subExpressions];
    if ([v4 count])
    {
      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v14 = 0u;
      v5 = v4;
      v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = 0;
        v9 = *v14;
        do
        {
          v10 = 0;
          do
          {
            if (*v14 != v9)
            {
              objc_enumerationMutation(v5);
            }

            v11 = [*(*(&v13 + 1) + 8 * v10) maximumDepth];
            if (v11 > v8)
            {
              v8 = v11;
            }

            ++v10;
          }

          while (v7 != v10);
          v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
        }

        while (v7);
        v12 = v8 + 1;
      }

      else
      {
        v12 = 1;
      }
    }

    else
    {
      v12 = 1;
    }

    self->_cachedMaximumDepth = v12;

    return self->_cachedMaximumDepth;
  }

  return result;
}

- (id)speakableSegmentsWithSpeakingStyle:(int64_t)a3 upToDepth:(unint64_t)a4
{
  v7 = [MEMORY[0x277CCAA70] indexPathWithIndex:0];
  v8 = [(SCRCMathExpression *)self speakableSegmentsWithSpeakingStyle:a3 upToDepth:a4 treePosition:v7];

  return v8;
}

- (id)speakableSegmentsWithSpeakingStyle:(int64_t)a3 upToDepth:(unint64_t)a4 treePosition:(id)a5
{
  v13[1] = *MEMORY[0x277D85DE8];
  v7 = a5;
  v8 = [(SCRCMathExpression *)self speakableDescriptionWithSpeakingStyle:a3];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 mutableCopy];
    [v10 addAttribute:@"kSCRCMathStringAttributeTreePosition" value:v7 range:{0, objc_msgSend(v10, "length")}];
    v13[0] = v10;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)speakableSummary
{
  v3 = [(SCRCMathExpression *)self numberOfTables];
  v4 = v3;
  if (v3)
  {
    if (v3 == 1)
    {
      v5 = @"table.summary.single.formatter";
    }

    else
    {
      v5 = @"table.summary.multiple.formatter";
    }

    v6 = [(SCRCMathExpression *)self localizedStringForKey:v5];
    v4 = [MEMORY[0x277CCACA8] localizedStringWithFormat:v6, v4];
  }

  return v4;
}

- (id)latexDescriptionInMathMode:(BOOL)a3
{
  v4 = [(SCRCMathExpression *)self latexMathModeDescription];
  v5 = v4;
  if (!a3)
  {
    v6 = [v4 stringWithMathIndicators];

    v5 = v6;
  }

  return v5;
}

- (unint64_t)numberOfTables
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [(SCRCMathExpression *)self subExpressions];
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v10;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v5 += [*(*(&v9 + 1) + 8 * i) numberOfTables];
      }

      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_scrcBundle
{
  if (_scrcBundle_onceToken != -1)
  {
    [SCRCMathExpression _scrcBundle];
  }

  v3 = _scrcBundle_ScreenReaderCoreBundle;

  return v3;
}

uint64_t __33__SCRCMathExpression__scrcBundle__block_invoke()
{
  _scrcBundle_ScreenReaderCoreBundle = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.ScreenReaderCore"];

  return MEMORY[0x2821F96F8]();
}

- (id)localizedStringForKey:(id)a3
{
  v4 = a3;
  v5 = [(SCRCMathExpression *)self _scrcBundle];
  v6 = [v5 localizedStringForKey:v4 value:&stru_287632E30 table:@"MathExpressionStrings"];

  return v6;
}

- (id)localizedAttributedStringForKey:(id)a3 treePosition:(id)a4
{
  v15[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v7)
  {
    v14 = @"kSCRCMathStringAttributeTreePosition";
    v15[0] = v7;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];
  }

  else
  {
    v9 = 0;
  }

  v10 = objc_alloc(MEMORY[0x277CCA898]);
  v11 = [(SCRCMathExpression *)self localizedStringForKey:v6];
  v12 = [v10 initWithString:v11 attributes:v9];

  return v12;
}

- (id)localizedStringForNumber:(id)a3
{
  v3 = localizedStringForNumber__onceToken;
  v4 = a3;
  if (v3 != -1)
  {
    [SCRCMathExpression localizedStringForNumber:];
  }

  v5 = [localizedStringForNumber__NumberFormatter stringFromNumber:v4];

  return v5;
}

uint64_t __47__SCRCMathExpression_localizedStringForNumber___block_invoke()
{
  localizedStringForNumber__NumberFormatter = objc_alloc_init(MEMORY[0x277CCABB8]);

  return MEMORY[0x2821F96F8]();
}

- (id)localizedSegmentOrderingForKey:(id)a3
{
  v4 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__SCRCMathExpression_localizedSegmentOrderingForKey___block_invoke;
  block[3] = &unk_279B715F0;
  block[4] = self;
  if (localizedSegmentOrderingForKey__onceToken != -1)
  {
    dispatch_once(&localizedSegmentOrderingForKey__onceToken, block);
  }

  if (_PathToSegmentOrderingPlist)
  {
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:?];
  }

  else
  {
    v5 = localizedSegmentOrderingForKey__SegmentOrderings;
  }

  v6 = v5;
  v7 = [v5 objectForKey:v4];

  return v7;
}

void __53__SCRCMathExpression_localizedSegmentOrderingForKey___block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x277CBEAC0];
  v5 = [*(a1 + 32) _scrcBundle];
  v2 = [v5 pathForResource:@"MathExpressionSegmentOrdering" ofType:@"plist"];
  v3 = [v1 dictionaryWithContentsOfFile:v2];
  v4 = localizedSegmentOrderingForKey__SegmentOrderings;
  localizedSegmentOrderingForKey__SegmentOrderings = v3;
}

- (NSArray)siblings
{
  v2 = [(SCRCMathExpression *)self parent];
  v3 = [v2 children];

  return v3;
}

- (id)arrayWithoutNilsFromFirstChild:(id)a3 secondChild:(id)a4 thirdChild:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [MEMORY[0x277CBEB18] arrayWithCapacity:3];
  v11 = v10;
  if (v7)
  {
    [v10 addObject:v7];
  }

  if (v8)
  {
    [v11 addObject:v8];
  }

  if (v9)
  {
    [v11 addObject:v9];
  }

  return v11;
}

- (void)_applyTreePositionOfOriginalSegment:(id)a3 toPrefixedOrSuffixedSegment:(id)a4
{
  v7 = a3;
  v5 = a4;
  if ([v7 length])
  {
    v6 = [v7 attribute:@"kSCRCMathStringAttributeTreePosition" atIndex:0 effectiveRange:0];
    if (v6)
    {
      [v5 addAttribute:@"kSCRCMathStringAttributeTreePosition" value:v6 range:{0, objc_msgSend(v5, "length")}];
    }
  }
}

- (id)speakableSegmentsWithSpeakingStyle:(int64_t)a3 upToDepth:(unint64_t)a4 treePosition:(id)a5 localizablePrefix:(id)a6 localizableSuffix:(id)a7
{
  v12 = a7;
  v13 = a5;
  v14 = [(SCRCMathExpression *)self localizedAttributedStringForKey:a6];
  v15 = [(SCRCMathExpression *)self localizedAttributedStringForKey:v12];

  v16 = [(SCRCMathExpression *)self speakableSegmentsWithSpeakingStyle:a3 upToDepth:a4 treePosition:v13 prefix:v14 suffix:v15];

  return v16;
}

- (id)speakableSegmentsWithSpeakingStyle:(int64_t)a3 upToDepth:(unint64_t)a4 treePosition:(id)a5 prefix:(id)a6 suffix:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = [(SCRCMathExpression *)self speakableSegmentsWithSpeakingStyle:a3 upToDepth:a4 treePosition:a5];
  v15 = [(SCRCMathExpression *)self speakableSegments:v14 withPrefix:v13 suffix:v12];

  return v15;
}

- (id)speakableSegments:(id)a3 withLocalizablePrefix:(id)a4 localizableSuffix:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [(SCRCMathExpression *)self localizedAttributedStringForKey:a4];
  v11 = [(SCRCMathExpression *)self localizedAttributedStringForKey:v8];

  v12 = [(SCRCMathExpression *)self speakableSegments:v9 withPrefix:v10 suffix:v11];

  return v12;
}

- (id)speakableSegments:(id)a3 withPrefix:(id)a4 suffix:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [a3 mutableCopy];
  if ([v10 count])
  {
    if ([v8 length])
    {
      v11 = [v10 objectAtIndex:0];
      v12 = [MEMORY[0x277CCAB48] scrcStringWithFormat:@"%@%@", v8, v11];
      [(SCRCMathExpression *)self _applyTreePositionOfOriginalSegment:v11 toPrefixedOrSuffixedSegment:v12];
      [v10 replaceObjectAtIndex:0 withObject:v12];
    }

    if ([v9 length])
    {
      v13 = [v10 lastObject];
      v14 = [MEMORY[0x277CCAB48] scrcStringWithFormat:@"%@%@", v13, v9];
      [(SCRCMathExpression *)self _applyTreePositionOfOriginalSegment:v13 toPrefixedOrSuffixedSegment:v14];
      [v10 replaceObjectAtIndex:objc_msgSend(v10 withObject:{"count") - 1, v14}];
    }
  }

  return v10;
}

- (unint64_t)maximumFractionLevelOfSubExpressions
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [(SCRCMathExpression *)self subExpressions];
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v11;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        if ([v8 fractionLevel] > v5)
        {
          v5 = [v8 fractionLevel];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)fenceDelimiters
{
  if (fenceDelimiters_onceToken != -1)
  {
    [SCRCMathExpression fenceDelimiters];
  }

  v3 = fenceDelimiters_Delimiters;

  return v3;
}

uint64_t __37__SCRCMathExpression_fenceDelimiters__block_invoke()
{
  fenceDelimiters_Delimiters = [MEMORY[0x277CBEB98] setWithArray:&unk_28763AAE8];

  return MEMORY[0x2821F96F8]();
}

- (id)latexIdentifierForIdentifier:(id)a3
{
  v3 = a3;
  if (latexIdentifierForIdentifier__onceToken != -1)
  {
    [SCRCMathExpression latexIdentifierForIdentifier:];
  }

  v4 = [latexIdentifierForIdentifier___IdentifierLookupTable objectForKey:v3];
  if (!v4)
  {
    v4 = v3;
  }

  return v4;
}

void __51__SCRCMathExpression_latexIdentifierForIdentifier___block_invoke()
{
  v0 = latexIdentifierForIdentifier___IdentifierLookupTable;
  latexIdentifierForIdentifier___IdentifierLookupTable = &unk_28763AB18;
}

- (id)latexIdentifierForFenceOperator:(id)a3 isClosingOperator:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(SCRCMathExpression *)self fenceDelimiters];
  if ([v7 containsObject:v6])
  {
    v8 = MEMORY[0x277CCACA8];
    v9 = [(SCRCMathExpression *)self latexIdentifierForIdentifier:v6];
    v10 = v9;
    if (v4)
    {
      [v8 stringWithFormat:@"\\right%@", v9];
    }

    else
    {
      [v8 stringWithFormat:@"\\left%@", v9];
    }
    v11 = ;
  }

  else
  {
    v11 = [(SCRCMathExpression *)self latexIdentifierForIdentifier:v6];
  }

  return v11;
}

- (id)latexDescriptionForChildrenJoinedByString:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SCRCMathExpression *)self children];
  v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v5, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v15 + 1) + 8 * i) latexDescriptionInMathMode:{0, v15}];
        if (v12)
        {
          [v6 addObject:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  v13 = [v6 componentsJoinedByString:v4];

  return v13;
}

+ (Class)_classForExpressionType:(id)a3
{
  v3 = a3;
  if (([v3 isEqualToString:@"Row"] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"Identifier") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"Operator") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"SubSuperScript") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"Space") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"Text") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"Fraction") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"UnderOver") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"RootOperation") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"TableCell") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"TableRow") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"Table") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"Fenced") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"LongDivision") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"Number") & 1) != 0 || objc_msgSend(v3, "isEqualToString:", @"Multiscript"))
  {
    v4 = objc_opt_class();
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

- (SCRCMathExpression)parent
{
  WeakRetained = objc_loadWeakRetained(&self->_parent);

  return WeakRetained;
}

+ (void)setPathToSegmentOrderingPlist:(id)a3
{
  v4 = a3;
  if (_PathToSegmentOrderingPlist != v4)
  {
    v5 = v4;
    objc_storeStrong(&_PathToSegmentOrderingPlist, a3);
    v4 = v5;
  }
}

@end