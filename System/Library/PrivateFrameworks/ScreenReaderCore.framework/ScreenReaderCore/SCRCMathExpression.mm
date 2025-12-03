@interface SCRCMathExpression
+ (Class)_classForExpressionType:(id)type;
+ (id)mathExpressionWithDictionary:(id)dictionary;
+ (void)setPathToSegmentOrderingPlist:(id)plist;
- (NSArray)siblings;
- (SCRCMathExpression)initWithDictionary:(id)dictionary;
- (SCRCMathExpression)parent;
- (id)_scrcBundle;
- (id)arrayWithoutNilsFromFirstChild:(id)child secondChild:(id)secondChild thirdChild:(id)thirdChild;
- (id)dollarCodeDescription;
- (id)fenceDelimiters;
- (id)latexDescriptionForChildrenJoinedByString:(id)string;
- (id)latexDescriptionInMathMode:(BOOL)mode;
- (id)latexIdentifierForFenceOperator:(id)operator isClosingOperator:(BOOL)closingOperator;
- (id)latexIdentifierForIdentifier:(id)identifier;
- (id)localizedAttributedStringForKey:(id)key treePosition:(id)position;
- (id)localizedSegmentOrderingForKey:(id)key;
- (id)localizedStringForKey:(id)key;
- (id)localizedStringForNumber:(id)number;
- (id)speakableSegments:(id)segments withLocalizablePrefix:(id)prefix localizableSuffix:(id)suffix;
- (id)speakableSegments:(id)segments withPrefix:(id)prefix suffix:(id)suffix;
- (id)speakableSegmentsWithSpeakingStyle:(int64_t)style upToDepth:(unint64_t)depth;
- (id)speakableSegmentsWithSpeakingStyle:(int64_t)style upToDepth:(unint64_t)depth treePosition:(id)position;
- (id)speakableSegmentsWithSpeakingStyle:(int64_t)style upToDepth:(unint64_t)depth treePosition:(id)position localizablePrefix:(id)prefix localizableSuffix:(id)suffix;
- (id)speakableSegmentsWithSpeakingStyle:(int64_t)style upToDepth:(unint64_t)depth treePosition:(id)position prefix:(id)prefix suffix:(id)suffix;
- (id)speakableSummary;
- (unint64_t)maximumDepth;
- (unint64_t)maximumFractionLevelOfSubExpressions;
- (unint64_t)numberOfTables;
- (void)_applyTreePositionOfOriginalSegment:(id)segment toPrefixedOrSuffixedSegment:(id)suffixedSegment;
@end

@implementation SCRCMathExpression

+ (id)mathExpressionWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy objectForKey:@"AXMType"];
  v6 = [objc_alloc(objc_msgSend(self _classForExpressionType:{v5)), "initWithDictionary:", dictionaryCopy}];

  return v6;
}

- (SCRCMathExpression)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v9.receiver = self;
  v9.super_class = SCRCMathExpression;
  v5 = [(SCRCMathExpression *)&v9 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKey:@"AXMIsNumberOverride"];
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
    subExpressions = [(SCRCMathExpression *)self subExpressions];
    if ([subExpressions count])
    {
      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v14 = 0u;
      v5 = subExpressions;
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

            maximumDepth = [*(*(&v13 + 1) + 8 * v10) maximumDepth];
            if (maximumDepth > v8)
            {
              v8 = maximumDepth;
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

- (id)speakableSegmentsWithSpeakingStyle:(int64_t)style upToDepth:(unint64_t)depth
{
  v7 = [MEMORY[0x277CCAA70] indexPathWithIndex:0];
  v8 = [(SCRCMathExpression *)self speakableSegmentsWithSpeakingStyle:style upToDepth:depth treePosition:v7];

  return v8;
}

- (id)speakableSegmentsWithSpeakingStyle:(int64_t)style upToDepth:(unint64_t)depth treePosition:(id)position
{
  v13[1] = *MEMORY[0x277D85DE8];
  positionCopy = position;
  v8 = [(SCRCMathExpression *)self speakableDescriptionWithSpeakingStyle:style];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 mutableCopy];
    [v10 addAttribute:@"kSCRCMathStringAttributeTreePosition" value:positionCopy range:{0, objc_msgSend(v10, "length")}];
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
  numberOfTables = [(SCRCMathExpression *)self numberOfTables];
  v4 = numberOfTables;
  if (numberOfTables)
  {
    if (numberOfTables == 1)
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

- (id)latexDescriptionInMathMode:(BOOL)mode
{
  latexMathModeDescription = [(SCRCMathExpression *)self latexMathModeDescription];
  v5 = latexMathModeDescription;
  if (!mode)
  {
    stringWithMathIndicators = [latexMathModeDescription stringWithMathIndicators];

    v5 = stringWithMathIndicators;
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
  subExpressions = [(SCRCMathExpression *)self subExpressions];
  v3 = [subExpressions countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(subExpressions);
        }

        v5 += [*(*(&v9 + 1) + 8 * i) numberOfTables];
      }

      v4 = [subExpressions countByEnumeratingWithState:&v9 objects:v13 count:16];
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

- (id)localizedStringForKey:(id)key
{
  keyCopy = key;
  _scrcBundle = [(SCRCMathExpression *)self _scrcBundle];
  v6 = [_scrcBundle localizedStringForKey:keyCopy value:&stru_287632E30 table:@"MathExpressionStrings"];

  return v6;
}

- (id)localizedAttributedStringForKey:(id)key treePosition:(id)position
{
  v15[1] = *MEMORY[0x277D85DE8];
  keyCopy = key;
  positionCopy = position;
  v8 = positionCopy;
  if (positionCopy)
  {
    v14 = @"kSCRCMathStringAttributeTreePosition";
    v15[0] = positionCopy;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];
  }

  else
  {
    v9 = 0;
  }

  v10 = objc_alloc(MEMORY[0x277CCA898]);
  v11 = [(SCRCMathExpression *)self localizedStringForKey:keyCopy];
  v12 = [v10 initWithString:v11 attributes:v9];

  return v12;
}

- (id)localizedStringForNumber:(id)number
{
  v3 = localizedStringForNumber__onceToken;
  numberCopy = number;
  if (v3 != -1)
  {
    [SCRCMathExpression localizedStringForNumber:];
  }

  v5 = [localizedStringForNumber__NumberFormatter stringFromNumber:numberCopy];

  return v5;
}

uint64_t __47__SCRCMathExpression_localizedStringForNumber___block_invoke()
{
  localizedStringForNumber__NumberFormatter = objc_alloc_init(MEMORY[0x277CCABB8]);

  return MEMORY[0x2821F96F8]();
}

- (id)localizedSegmentOrderingForKey:(id)key
{
  keyCopy = key;
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
  v7 = [v5 objectForKey:keyCopy];

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
  parent = [(SCRCMathExpression *)self parent];
  children = [parent children];

  return children;
}

- (id)arrayWithoutNilsFromFirstChild:(id)child secondChild:(id)secondChild thirdChild:(id)thirdChild
{
  childCopy = child;
  secondChildCopy = secondChild;
  thirdChildCopy = thirdChild;
  v10 = [MEMORY[0x277CBEB18] arrayWithCapacity:3];
  v11 = v10;
  if (childCopy)
  {
    [v10 addObject:childCopy];
  }

  if (secondChildCopy)
  {
    [v11 addObject:secondChildCopy];
  }

  if (thirdChildCopy)
  {
    [v11 addObject:thirdChildCopy];
  }

  return v11;
}

- (void)_applyTreePositionOfOriginalSegment:(id)segment toPrefixedOrSuffixedSegment:(id)suffixedSegment
{
  segmentCopy = segment;
  suffixedSegmentCopy = suffixedSegment;
  if ([segmentCopy length])
  {
    v6 = [segmentCopy attribute:@"kSCRCMathStringAttributeTreePosition" atIndex:0 effectiveRange:0];
    if (v6)
    {
      [suffixedSegmentCopy addAttribute:@"kSCRCMathStringAttributeTreePosition" value:v6 range:{0, objc_msgSend(suffixedSegmentCopy, "length")}];
    }
  }
}

- (id)speakableSegmentsWithSpeakingStyle:(int64_t)style upToDepth:(unint64_t)depth treePosition:(id)position localizablePrefix:(id)prefix localizableSuffix:(id)suffix
{
  suffixCopy = suffix;
  positionCopy = position;
  v14 = [(SCRCMathExpression *)self localizedAttributedStringForKey:prefix];
  v15 = [(SCRCMathExpression *)self localizedAttributedStringForKey:suffixCopy];

  v16 = [(SCRCMathExpression *)self speakableSegmentsWithSpeakingStyle:style upToDepth:depth treePosition:positionCopy prefix:v14 suffix:v15];

  return v16;
}

- (id)speakableSegmentsWithSpeakingStyle:(int64_t)style upToDepth:(unint64_t)depth treePosition:(id)position prefix:(id)prefix suffix:(id)suffix
{
  suffixCopy = suffix;
  prefixCopy = prefix;
  v14 = [(SCRCMathExpression *)self speakableSegmentsWithSpeakingStyle:style upToDepth:depth treePosition:position];
  v15 = [(SCRCMathExpression *)self speakableSegments:v14 withPrefix:prefixCopy suffix:suffixCopy];

  return v15;
}

- (id)speakableSegments:(id)segments withLocalizablePrefix:(id)prefix localizableSuffix:(id)suffix
{
  suffixCopy = suffix;
  segmentsCopy = segments;
  v10 = [(SCRCMathExpression *)self localizedAttributedStringForKey:prefix];
  v11 = [(SCRCMathExpression *)self localizedAttributedStringForKey:suffixCopy];

  v12 = [(SCRCMathExpression *)self speakableSegments:segmentsCopy withPrefix:v10 suffix:v11];

  return v12;
}

- (id)speakableSegments:(id)segments withPrefix:(id)prefix suffix:(id)suffix
{
  prefixCopy = prefix;
  suffixCopy = suffix;
  v10 = [segments mutableCopy];
  if ([v10 count])
  {
    if ([prefixCopy length])
    {
      v11 = [v10 objectAtIndex:0];
      v12 = [MEMORY[0x277CCAB48] scrcStringWithFormat:@"%@%@", prefixCopy, v11];
      [(SCRCMathExpression *)self _applyTreePositionOfOriginalSegment:v11 toPrefixedOrSuffixedSegment:v12];
      [v10 replaceObjectAtIndex:0 withObject:v12];
    }

    if ([suffixCopy length])
    {
      lastObject = [v10 lastObject];
      suffixCopy = [MEMORY[0x277CCAB48] scrcStringWithFormat:@"%@%@", lastObject, suffixCopy];
      [(SCRCMathExpression *)self _applyTreePositionOfOriginalSegment:lastObject toPrefixedOrSuffixedSegment:suffixCopy];
      [v10 replaceObjectAtIndex:objc_msgSend(v10 withObject:{"count") - 1, suffixCopy}];
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
  subExpressions = [(SCRCMathExpression *)self subExpressions];
  v3 = [subExpressions countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    fractionLevel = 0;
    v6 = *v11;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(subExpressions);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        if ([v8 fractionLevel] > fractionLevel)
        {
          fractionLevel = [v8 fractionLevel];
        }
      }

      v4 = [subExpressions countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  else
  {
    fractionLevel = 0;
  }

  return fractionLevel;
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

- (id)latexIdentifierForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (latexIdentifierForIdentifier__onceToken != -1)
  {
    [SCRCMathExpression latexIdentifierForIdentifier:];
  }

  v4 = [latexIdentifierForIdentifier___IdentifierLookupTable objectForKey:identifierCopy];
  if (!v4)
  {
    v4 = identifierCopy;
  }

  return v4;
}

void __51__SCRCMathExpression_latexIdentifierForIdentifier___block_invoke()
{
  v0 = latexIdentifierForIdentifier___IdentifierLookupTable;
  latexIdentifierForIdentifier___IdentifierLookupTable = &unk_28763AB18;
}

- (id)latexIdentifierForFenceOperator:(id)operator isClosingOperator:(BOOL)closingOperator
{
  closingOperatorCopy = closingOperator;
  operatorCopy = operator;
  fenceDelimiters = [(SCRCMathExpression *)self fenceDelimiters];
  if ([fenceDelimiters containsObject:operatorCopy])
  {
    v8 = MEMORY[0x277CCACA8];
    v9 = [(SCRCMathExpression *)self latexIdentifierForIdentifier:operatorCopy];
    v10 = v9;
    if (closingOperatorCopy)
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
    v11 = [(SCRCMathExpression *)self latexIdentifierForIdentifier:operatorCopy];
  }

  return v11;
}

- (id)latexDescriptionForChildrenJoinedByString:(id)string
{
  v20 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  children = [(SCRCMathExpression *)self children];
  v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(children, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = children;
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

  v13 = [v6 componentsJoinedByString:stringCopy];

  return v13;
}

+ (Class)_classForExpressionType:(id)type
{
  typeCopy = type;
  if (([typeCopy isEqualToString:@"Row"] & 1) != 0 || (objc_msgSend(typeCopy, "isEqualToString:", @"Identifier") & 1) != 0 || (objc_msgSend(typeCopy, "isEqualToString:", @"Operator") & 1) != 0 || (objc_msgSend(typeCopy, "isEqualToString:", @"SubSuperScript") & 1) != 0 || (objc_msgSend(typeCopy, "isEqualToString:", @"Space") & 1) != 0 || (objc_msgSend(typeCopy, "isEqualToString:", @"Text") & 1) != 0 || (objc_msgSend(typeCopy, "isEqualToString:", @"Fraction") & 1) != 0 || (objc_msgSend(typeCopy, "isEqualToString:", @"UnderOver") & 1) != 0 || (objc_msgSend(typeCopy, "isEqualToString:", @"RootOperation") & 1) != 0 || (objc_msgSend(typeCopy, "isEqualToString:", @"TableCell") & 1) != 0 || (objc_msgSend(typeCopy, "isEqualToString:", @"TableRow") & 1) != 0 || (objc_msgSend(typeCopy, "isEqualToString:", @"Table") & 1) != 0 || (objc_msgSend(typeCopy, "isEqualToString:", @"Fenced") & 1) != 0 || (objc_msgSend(typeCopy, "isEqualToString:", @"LongDivision") & 1) != 0 || (objc_msgSend(typeCopy, "isEqualToString:", @"Number") & 1) != 0 || objc_msgSend(typeCopy, "isEqualToString:", @"Multiscript"))
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

+ (void)setPathToSegmentOrderingPlist:(id)plist
{
  plistCopy = plist;
  if (_PathToSegmentOrderingPlist != plistCopy)
  {
    v5 = plistCopy;
    objc_storeStrong(&_PathToSegmentOrderingPlist, plist);
    plistCopy = v5;
  }
}

@end