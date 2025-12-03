@interface SCRCMathArrayExpression
- (SCRCMathArrayExpression)initWithDictionary:(id)dictionary;
- (id)childSpeakableSegmentsWithSpeakingStyle:(int64_t)style upToDepth:(unint64_t)depth parentTreePosition:(id)position childIndex:(unint64_t *)index;
- (id)children;
- (id)description;
- (id)mathMLString;
- (id)prefixForChildAtIndex:(unint64_t)index;
- (id)speakableDescriptionWithSpeakingStyle:(int64_t)style arePausesAllowed:(BOOL)allowed;
- (id)speakableSegmentsWithSpeakingStyle:(int64_t)style upToDepth:(unint64_t)depth treePosition:(id)position;
- (id)suffixForChildAtIndex:(unint64_t)index;
@end

@implementation SCRCMathArrayExpression

- (SCRCMathArrayExpression)initWithDictionary:(id)dictionary
{
  v23 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v21.receiver = self;
  v21.super_class = SCRCMathArrayExpression;
  v5 = [(SCRCMathExpression *)&v21 initWithDictionary:dictionaryCopy];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKey:@"AXMChildren"];
    v7 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v6, "count")}];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v17 objects:v22 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v18;
      do
      {
        v12 = 0;
        do
        {
          if (*v18 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [SCRCMathExpression mathExpressionWithDictionary:*(*(&v17 + 1) + 8 * v12), v17];
          v14 = v13;
          if (v13)
          {
            [v13 setParent:v5];
            [(NSArray *)v7 addObject:v14];
          }

          ++v12;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v17 objects:v22 count:16];
      }

      while (v10);
    }

    children = v5->_children;
    v5->_children = v7;
  }

  return v5;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = SCRCMathArrayExpression;
  v3 = [(SCRCMathArrayExpression *)&v7 description];
  children = [(SCRCMathArrayExpression *)self children];
  v5 = [v3 stringByAppendingFormat:@" - children %@", children];

  return v5;
}

- (id)children
{
  v2 = [(NSArray *)self->_children copy];

  return v2;
}

- (id)speakableDescriptionWithSpeakingStyle:(int64_t)style arePausesAllowed:(BOOL)allowed
{
  allowedCopy = allowed;
  v23 = *MEMORY[0x277D85DE8];
  scrcString = [MEMORY[0x277CCAB48] scrcString];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  children = [(SCRCMathArrayExpression *)self children];
  v9 = [children countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    v12 = 1;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(children);
        }

        v14 = *(*(&v18 + 1) + 8 * i);
        if ((v12 & 1) == 0)
        {
          if (allowedCopy)
          {
            [MEMORY[0x277CCA898] scrcPauseString];
          }

          else
          {
            [MEMORY[0x277CCA898] scrcSpaceString];
          }
          v15 = ;
          [scrcString appendAttributedString:v15];
        }

        v16 = [v14 speakableDescriptionWithSpeakingStyle:style arePausesAllowed:allowedCopy];
        [scrcString appendAttributedString:v16];

        v12 = 0;
      }

      v10 = [children countByEnumeratingWithState:&v18 objects:v22 count:16];
      v12 = 0;
    }

    while (v10);
  }

  return scrcString;
}

- (id)childSpeakableSegmentsWithSpeakingStyle:(int64_t)style upToDepth:(unint64_t)depth parentTreePosition:(id)position childIndex:(unint64_t *)index
{
  v9 = *index;
  positionCopy = position;
  children = [(SCRCMathArrayExpression *)self children];
  v12 = [children objectAtIndex:v9];

  v13 = [positionCopy indexPathByAddingIndex:v9];

  v14 = [(SCRCMathArrayExpression *)self prefixForChildAtIndex:v9];
  v15 = [(SCRCMathArrayExpression *)self suffixForChildAtIndex:v9];
  v16 = [v12 speakableSegmentsWithSpeakingStyle:style upToDepth:depth treePosition:v13 prefix:v14 suffix:v15];

  return v16;
}

- (id)speakableSegmentsWithSpeakingStyle:(int64_t)style upToDepth:(unint64_t)depth treePosition:(id)position
{
  positionCopy = position;
  if (depth)
  {
    v9 = depth - 1;
    if (depth == 1)
    {
      v19.receiver = self;
      v19.super_class = SCRCMathArrayExpression;
      depth = [(SCRCMathExpression *)&v19 speakableSegmentsWithSpeakingStyle:style upToDepth:1 treePosition:positionCopy];
    }

    else
    {
      depth = [MEMORY[0x277CBEB18] array];
      children = [(SCRCMathArrayExpression *)self children];
      v11 = [children count];

      for (i = 0; i < v11; ++i)
      {
        v12 = [(SCRCMathArrayExpression *)self childSpeakableSegmentsWithSpeakingStyle:style upToDepth:v9 parentTreePosition:positionCopy childIndex:&i];
        [depth addObjectsFromArray:v12];
      }

      v13 = [depth count];
      if (v13 - 1 >= 0)
      {
        v14 = v13;
        do
        {
          v15 = [depth objectAtIndex:--v14];
          v16 = [v15 length];

          if (!v16)
          {
            [depth removeObjectAtIndex:v14];
          }
        }

        while (v14 > 0);
      }
    }
  }

  return depth;
}

- (id)mathMLString
{
  v19 = *MEMORY[0x277D85DE8];
  string = [MEMORY[0x277CCAB68] string];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  children = [(SCRCMathArrayExpression *)self children];
  v5 = [children countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(children);
        }

        mathMLString = [*(*(&v14 + 1) + 8 * i) mathMLString];
        [string appendString:mathMLString];
      }

      v6 = [children countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  mathMLTag = [(SCRCMathArrayExpression *)self mathMLTag];
  mathMLAttributes = [(SCRCMathArrayExpression *)self mathMLAttributes];
  v12 = [string stringWrappedInMathMLTag:mathMLTag withAttributes:mathMLAttributes];

  return v12;
}

- (id)prefixForChildAtIndex:(unint64_t)index
{
  v4 = [(SCRCMathArrayExpression *)self localizablePrefixForChildAtIndex:index];
  v5 = [(SCRCMathExpression *)self localizedAttributedStringForKey:v4];

  return v5;
}

- (id)suffixForChildAtIndex:(unint64_t)index
{
  v4 = [(SCRCMathArrayExpression *)self localizableSuffixForChildAtIndex:index];
  v5 = [(SCRCMathExpression *)self localizedAttributedStringForKey:v4];

  return v5;
}

@end