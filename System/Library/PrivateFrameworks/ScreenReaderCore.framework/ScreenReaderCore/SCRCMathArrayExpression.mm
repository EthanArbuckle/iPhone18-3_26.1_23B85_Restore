@interface SCRCMathArrayExpression
- (SCRCMathArrayExpression)initWithDictionary:(id)a3;
- (id)childSpeakableSegmentsWithSpeakingStyle:(int64_t)a3 upToDepth:(unint64_t)a4 parentTreePosition:(id)a5 childIndex:(unint64_t *)a6;
- (id)children;
- (id)description;
- (id)mathMLString;
- (id)prefixForChildAtIndex:(unint64_t)a3;
- (id)speakableDescriptionWithSpeakingStyle:(int64_t)a3 arePausesAllowed:(BOOL)a4;
- (id)speakableSegmentsWithSpeakingStyle:(int64_t)a3 upToDepth:(unint64_t)a4 treePosition:(id)a5;
- (id)suffixForChildAtIndex:(unint64_t)a3;
@end

@implementation SCRCMathArrayExpression

- (SCRCMathArrayExpression)initWithDictionary:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v21.receiver = self;
  v21.super_class = SCRCMathArrayExpression;
  v5 = [(SCRCMathExpression *)&v21 initWithDictionary:v4];
  if (v5)
  {
    v6 = [v4 objectForKey:@"AXMChildren"];
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
  v4 = [(SCRCMathArrayExpression *)self children];
  v5 = [v3 stringByAppendingFormat:@" - children %@", v4];

  return v5;
}

- (id)children
{
  v2 = [(NSArray *)self->_children copy];

  return v2;
}

- (id)speakableDescriptionWithSpeakingStyle:(int64_t)a3 arePausesAllowed:(BOOL)a4
{
  v4 = a4;
  v23 = *MEMORY[0x277D85DE8];
  v7 = [MEMORY[0x277CCAB48] scrcString];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = [(SCRCMathArrayExpression *)self children];
  v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v18 + 1) + 8 * i);
        if ((v12 & 1) == 0)
        {
          if (v4)
          {
            [MEMORY[0x277CCA898] scrcPauseString];
          }

          else
          {
            [MEMORY[0x277CCA898] scrcSpaceString];
          }
          v15 = ;
          [v7 appendAttributedString:v15];
        }

        v16 = [v14 speakableDescriptionWithSpeakingStyle:a3 arePausesAllowed:v4];
        [v7 appendAttributedString:v16];

        v12 = 0;
      }

      v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
      v12 = 0;
    }

    while (v10);
  }

  return v7;
}

- (id)childSpeakableSegmentsWithSpeakingStyle:(int64_t)a3 upToDepth:(unint64_t)a4 parentTreePosition:(id)a5 childIndex:(unint64_t *)a6
{
  v9 = *a6;
  v10 = a5;
  v11 = [(SCRCMathArrayExpression *)self children];
  v12 = [v11 objectAtIndex:v9];

  v13 = [v10 indexPathByAddingIndex:v9];

  v14 = [(SCRCMathArrayExpression *)self prefixForChildAtIndex:v9];
  v15 = [(SCRCMathArrayExpression *)self suffixForChildAtIndex:v9];
  v16 = [v12 speakableSegmentsWithSpeakingStyle:a3 upToDepth:a4 treePosition:v13 prefix:v14 suffix:v15];

  return v16;
}

- (id)speakableSegmentsWithSpeakingStyle:(int64_t)a3 upToDepth:(unint64_t)a4 treePosition:(id)a5
{
  v8 = a5;
  if (a4)
  {
    v9 = a4 - 1;
    if (a4 == 1)
    {
      v19.receiver = self;
      v19.super_class = SCRCMathArrayExpression;
      a4 = [(SCRCMathExpression *)&v19 speakableSegmentsWithSpeakingStyle:a3 upToDepth:1 treePosition:v8];
    }

    else
    {
      a4 = [MEMORY[0x277CBEB18] array];
      v10 = [(SCRCMathArrayExpression *)self children];
      v11 = [v10 count];

      for (i = 0; i < v11; ++i)
      {
        v12 = [(SCRCMathArrayExpression *)self childSpeakableSegmentsWithSpeakingStyle:a3 upToDepth:v9 parentTreePosition:v8 childIndex:&i];
        [a4 addObjectsFromArray:v12];
      }

      v13 = [a4 count];
      if (v13 - 1 >= 0)
      {
        v14 = v13;
        do
        {
          v15 = [a4 objectAtIndex:--v14];
          v16 = [v15 length];

          if (!v16)
          {
            [a4 removeObjectAtIndex:v14];
          }
        }

        while (v14 > 0);
      }
    }
  }

  return a4;
}

- (id)mathMLString
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCAB68] string];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [(SCRCMathArrayExpression *)self children];
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v14 + 1) + 8 * i) mathMLString];
        [v3 appendString:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v10 = [(SCRCMathArrayExpression *)self mathMLTag];
  v11 = [(SCRCMathArrayExpression *)self mathMLAttributes];
  v12 = [v3 stringWrappedInMathMLTag:v10 withAttributes:v11];

  return v12;
}

- (id)prefixForChildAtIndex:(unint64_t)a3
{
  v4 = [(SCRCMathArrayExpression *)self localizablePrefixForChildAtIndex:a3];
  v5 = [(SCRCMathExpression *)self localizedAttributedStringForKey:v4];

  return v5;
}

- (id)suffixForChildAtIndex:(unint64_t)a3
{
  v4 = [(SCRCMathArrayExpression *)self localizableSuffixForChildAtIndex:a3];
  v5 = [(SCRCMathExpression *)self localizedAttributedStringForKey:v4];

  return v5;
}

@end