@interface _UIVisualEffectDifferenceEngine
- (NSArray)merged;
- (id)describeMergeTable;
- (id)description;
- (id)mergeSource:(id)source andDestination:(id)destination;
- (void)_calculate;
- (void)_calculateLCSSTable;
- (void)_calculateMerge;
- (void)_calculatePrefixAndSuffix;
- (void)_reset;
- (void)dealloc;
- (void)setDestination:(id)destination;
- (void)setSource:(id)source;
@end

@implementation _UIVisualEffectDifferenceEngine

- (void)_reset
{
  merged = self->_merged;
  self->_merged = 0;

  free(self->_mergeTable);
  self->_mergeTable = 0;
}

- (void)_calculate
{
  v3 = [(NSArray *)self->_source count];
  self->_innerSourceCount = v3;
  self->_sourceCount = v3;
  v4 = [(NSArray *)self->_destination count];
  self->_innerDestinationCount = v4;
  self->_destinationCount = v4;
  [(_UIVisualEffectDifferenceEngine *)self _calculatePrefixAndSuffix];
  [(_UIVisualEffectDifferenceEngine *)self _calculateLCSSTable];

  [(_UIVisualEffectDifferenceEngine *)self _calculateMerge];
}

- (void)_calculatePrefixAndSuffix
{
  self->_prefixCount = 0;
  self->_suffixCount = 0;
  sourceCount = self->_sourceCount;
  if (sourceCount && self->_destinationCount)
  {
    if (sourceCount < 1)
    {
      prefixCount = 0;
    }

    else
    {
      prefixCount = 0;
      do
      {
        if (prefixCount >= self->_destinationCount)
        {
          break;
        }

        v5 = [(NSArray *)self->_source objectAtIndexedSubscript:?];
        v6 = [(NSArray *)self->_destination objectAtIndexedSubscript:self->_prefixCount];
        v7 = [v5 isSameTypeOfEffect:v6];

        prefixCount = self->_prefixCount;
        if (!v7)
        {
          break;
        }

        self->_prefixCount = ++prefixCount;
      }

      while (prefixCount < self->_sourceCount);
    }

    innerSourceCount = self->_innerSourceCount;
    innerDestinationCount = self->_innerDestinationCount;
    v10 = innerDestinationCount - prefixCount;
    v11 = innerSourceCount - prefixCount;
    self->_innerSourceCount = innerSourceCount - prefixCount;
    self->_innerDestinationCount = innerDestinationCount - prefixCount;
    if (innerSourceCount != prefixCount && innerDestinationCount != prefixCount)
    {
      suffixCount = self->_suffixCount;
      while (suffixCount < v11 && suffixCount < v10)
      {
        v15 = [(NSArray *)self->_source objectAtIndexedSubscript:self->_sourceCount + ~suffixCount];
        v16 = [(NSArray *)self->_destination objectAtIndexedSubscript:self->_destinationCount + ~self->_suffixCount];
        v17 = [v15 isSameTypeOfEffect:v16];

        suffixCount = self->_suffixCount;
        v11 = self->_innerSourceCount;
        if ((v17 & 1) == 0)
        {
          v10 = self->_innerDestinationCount;
          break;
        }

        self->_suffixCount = ++suffixCount;
        v10 = self->_innerDestinationCount;
      }

      self->_innerSourceCount = v11 - suffixCount;
      self->_innerDestinationCount = v10 - suffixCount;
    }
  }
}

- (void)_calculateLCSSTable
{
  innerSourceCount = self->_innerSourceCount;
  if (innerSourceCount)
  {
    innerDestinationCount = self->_innerDestinationCount;
    if (innerDestinationCount)
    {
      self->_mergeTable = malloc_type_calloc(innerDestinationCount * innerSourceCount, 8uLL, 0x100004000313F17uLL);
      if (self->_innerDestinationCount >= 1)
      {
        v5 = 0;
        v15 = 0;
        v6 = 0;
        v7 = 0;
        v8 = -8;
        do
        {
          v9 = v6;
          v6 = [(NSArray *)self->_destination objectAtIndexedSubscript:self->_prefixCount + v7];

          if (self->_innerSourceCount >= 1)
          {
            v10 = 0;
            do
            {
              v11 = v15;
              v15 = [(NSArray *)self->_source objectAtIndexedSubscript:v10 + self->_prefixCount];

              if ([v15 isSameTypeOfEffect:v6])
              {
                v12 = self->_innerSourceCount;
                if (v7 && v10 && v10 <= v12 && v7 <= self->_innerDestinationCount)
                {
                  v13 = *(&self->_mergeTable[v10 - 1] + v8 * v12) + 1;
                }

                else
                {
                  v13 = 1;
                }
              }

              else
              {
                v13 = 0;
                v12 = self->_innerSourceCount;
                if (v7 && v10 < v12)
                {
                  if (v7 <= self->_innerDestinationCount)
                  {
                    v13 = *(&self->_mergeTable[v10] + v8 * v12);
                  }

                  else
                  {
                    v13 = 0;
                  }
                }

                v14 = 0;
                if (v10 && v10 <= v12)
                {
                  if (v7 >= self->_innerDestinationCount)
                  {
                    v14 = 0;
                  }

                  else
                  {
                    v14 = *(&self->_mergeTable[v10 - 1] + v5 * v12);
                  }
                }

                if (v14 > v13)
                {
                  v13 = v14;
                }
              }

              *(&self->_mergeTable[v10++] + v5 * v12) = v13;
            }

            while (v10 < self->_innerSourceCount);
          }

          ++v7;
          v5 += 8;
          v8 += 8;
        }

        while (v7 < self->_innerDestinationCount);
      }
    }
  }
}

- (void)_calculateMerge
{
  array = [MEMORY[0x1E695DF70] array];
  v52 = array;
  if (self->_prefixCount < 1)
  {
    copyForTransitionOut4 = 0;
    v5 = 0;
    v4 = 0;
    prefixCount = 0;
  }

  else
  {
    v4 = 0;
    v5 = 0;
    copyForTransitionOut4 = 0;
    v7 = 0;
    do
    {
      v8 = v5;
      v9 = v4;
      v4 = [(NSArray *)self->_source objectAtIndexedSubscript:v7];

      v5 = [(NSArray *)self->_destination objectAtIndexedSubscript:v7];

      if ([v4 canTransitionToEffect:v5])
      {
        v10 = [v4 copyForTransitionToEffect:v5];
        copyForTransitionOut = copyForTransitionOut4;
      }

      else
      {
        copyForTransitionOut = [v4 copyForTransitionOut];

        [v52 addObject:copyForTransitionOut];
        v10 = [v5 copyWithZone:0];
      }

      copyForTransitionOut4 = v10;

      [v52 addObject:copyForTransitionOut4];
      ++v7;
      prefixCount = self->_prefixCount;
    }

    while (v7 < prefixCount);
    array = v52;
  }

  innerSourceCount = self->_innerSourceCount;
  innerDestinationCount = self->_innerDestinationCount;
  if (innerSourceCount)
  {
    if (innerDestinationCount)
    {
      v15 = prefixCount - 1 + innerSourceCount;
      v16 = innerDestinationCount + prefixCount - 1;
      v17 = [array count];
      v18 = [(NSArray *)self->_source objectAtIndexedSubscript:v15];

      v19 = [(NSArray *)self->_destination objectAtIndexedSubscript:v16];

      while (1)
      {
        while (1)
        {
          if (!(v18 | v19))
          {
            v5 = 0;
            v4 = 0;
            v39 = self->_innerDestinationCount + prefixCount;
            prefixCount += self->_innerSourceCount;
            goto LABEL_60;
          }

          if (v19)
          {
            break;
          }

          if (v18)
          {
            goto LABEL_18;
          }

          v19 = 0;
          v18 = 0;
LABEL_34:
          if (copyForTransitionOut4)
          {
            goto LABEL_49;
          }
        }

        if ([v18 isSameTypeOfEffect:v19])
        {
          if ([v18 canTransitionToEffect:v19])
          {
            copyForTransitionOut2 = [v18 copyForTransitionToEffect:v19];
          }

          else
          {
            v37 = [v19 copyWithZone:0];
            [v52 insertObject:v37 atIndex:v17];

            copyForTransitionOut2 = [v18 copyForTransitionOut];
          }

          copyForTransitionOut3 = copyForTransitionOut2;

          if (v15 < 1)
          {
            v22 = 0;
          }

          else
          {
            v22 = [(NSArray *)self->_source objectAtIndexedSubscript:v15 - 1];
            --v15;
          }

          if (v16 < 1)
          {
            v23 = v19;
LABEL_47:
            v19 = 0;
            goto LABEL_48;
          }

          v38 = [(NSArray *)self->_destination objectAtIndexedSubscript:v16 - 1];
          v23 = v19;
          --v16;
          v19 = v38;
          goto LABEL_48;
        }

        v24 = v16 - 1;
        if (v18)
        {
          v25 = self->_innerSourceCount;
          v26 = v25 * v24;
          v27 = v25 * v24 + v15;
          if ((v27 & 0x8000000000000000) == 0)
          {
            v28 = v25 * v16;
            v29 = self->_innerDestinationCount * v25;
            v30 = v28 + v15;
            v31 = v27 >= v29 || v30 < 1;
            if (!v31 && v30 <= v29)
            {
              mergeTable = self->_mergeTable;
              v34 = mergeTable[v27];
              v35 = mergeTable[v28 - 1 + v15];
              if (v34 < v35)
              {
                if (mergeTable[v26 + v15] < v35)
                {
LABEL_18:
                  copyForTransitionOut3 = [v18 copyForTransitionOut];

                  if (v15 < 1)
                  {
                    v22 = 0;
                    v23 = v18;
                  }

                  else
                  {
                    v22 = [(NSArray *)self->_source objectAtIndexedSubscript:v15 - 1];
                    v23 = v18;
                    --v15;
                  }

                  goto LABEL_48;
                }

                goto LABEL_34;
              }
            }
          }
        }

        copyForTransitionOut3 = [v19 copyWithZone:0];

        if (v16 < 1)
        {
          v23 = v19;
          v22 = v18;
          goto LABEL_47;
        }

        v36 = [(NSArray *)self->_destination objectAtIndexedSubscript:v16 - 1];
        v23 = v19;
        --v16;
        v19 = v36;
        v22 = v18;
LABEL_48:

        copyForTransitionOut4 = copyForTransitionOut3;
        v18 = v22;
        if (copyForTransitionOut3)
        {
LABEL_49:
          [v52 insertObject:copyForTransitionOut4 atIndex:v17];
        }
      }
    }

    if (innerSourceCount >= 1)
    {
      v43 = 0;
      do
      {
        v44 = copyForTransitionOut4;
        v45 = v4;
        v4 = [(NSArray *)self->_source objectAtIndexedSubscript:prefixCount + v43];

        copyForTransitionOut4 = [v4 copyForTransitionOut];
        [v52 addObject:copyForTransitionOut4];
        ++v43;
      }

      while (v43 < self->_innerSourceCount);
      v39 = prefixCount;
      prefixCount += v43;
      goto LABEL_60;
    }
  }

  else if (innerDestinationCount >= 1)
  {
    v40 = 0;
    do
    {
      v41 = copyForTransitionOut4;
      v42 = v5;
      v5 = [(NSArray *)self->_destination objectAtIndexedSubscript:prefixCount + v40];

      copyForTransitionOut4 = [v5 copyWithZone:0];
      [v52 addObject:copyForTransitionOut4];
      ++v40;
    }

    while (v40 < self->_innerDestinationCount);
    v39 = prefixCount + v40;
    goto LABEL_60;
  }

  v39 = prefixCount;
LABEL_60:
  if (self->_suffixCount < 1)
  {
    v49 = copyForTransitionOut4;
    v48 = v5;
    v47 = v4;
  }

  else
  {
    v46 = 0;
    do
    {
      v47 = [(NSArray *)self->_source objectAtIndexedSubscript:prefixCount + v46];

      v48 = [(NSArray *)self->_destination objectAtIndexedSubscript:v39 + v46];

      v49 = [v47 copyForTransitionToEffect:v48];
      [v52 addObject:v49];
      ++v46;
      v4 = v47;
      v5 = v48;
      copyForTransitionOut4 = v49;
    }

    while (v46 < self->_suffixCount);
  }

  v50 = [v52 copy];
  merged = self->_merged;
  self->_merged = v50;
}

- (void)dealloc
{
  free(self->_mergeTable);
  v3.receiver = self;
  v3.super_class = _UIVisualEffectDifferenceEngine;
  [(_UIVisualEffectDifferenceEngine *)&v3 dealloc];
}

- (void)setSource:(id)source
{
  if (self->_source != source)
  {
    sourceCopy = source;
    [(_UIVisualEffectDifferenceEngine *)self _reset];
    v6 = [sourceCopy copy];

    source = self->_source;
    self->_source = v6;
  }
}

- (void)setDestination:(id)destination
{
  if (self->_destination != destination)
  {
    destinationCopy = destination;
    [(_UIVisualEffectDifferenceEngine *)self _reset];
    v6 = [destinationCopy copy];

    destination = self->_destination;
    self->_destination = v6;
  }
}

- (NSArray)merged
{
  merged = self->_merged;
  if (!merged)
  {
    [(_UIVisualEffectDifferenceEngine *)self _calculate];
    merged = self->_merged;
  }

  return merged;
}

- (id)mergeSource:(id)source andDestination:(id)destination
{
  destinationCopy = destination;
  sourceCopy = source;
  [(_UIVisualEffectDifferenceEngine *)self _reset];
  v8 = [sourceCopy copy];

  source = self->_source;
  self->_source = v8;

  v10 = [destinationCopy copy];
  destination = self->_destination;
  self->_destination = v10;

  [(_UIVisualEffectDifferenceEngine *)self _calculate];
  merged = self->_merged;

  return merged;
}

- (id)describeMergeTable
{
  string = [MEMORY[0x1E696AD60] string];
  if (self->_innerDestinationCount >= 1)
  {
    v4 = 0;
    v5 = 0;
    do
    {
      [string appendFormat:@"{%li", self->_mergeTable[self->_innerSourceCount * v5]];
      innerSourceCount = self->_innerSourceCount;
      if (innerSourceCount >= 2)
      {
        for (i = 1; i < innerSourceCount; ++i)
        {
          [string appendFormat:@", %li", *(&self->_mergeTable[i] + v4 * innerSourceCount)];
          innerSourceCount = self->_innerSourceCount;
        }
      }

      [string appendString:{@"}, \n"}];
      ++v5;
      v4 += 8;
    }

    while (v5 < self->_innerDestinationCount);
  }

  [string appendString:@"}"];

  return string;
}

- (id)description
{
  v10.receiver = self;
  v10.super_class = _UIVisualEffectDifferenceEngine;
  v3 = [(_UIVisualEffectDifferenceEngine *)&v10 description];
  v4 = [v3 mutableCopy];

  [v4 appendFormat:@" prefixLength=%li sourceCount=%li destinationCount=%li suffixCount=%li innerSourceCount=%li innerDestinationCount=%li", self->_prefixCount, self->_sourceCount, self->_destinationCount, self->_suffixCount, self->_innerSourceCount, self->_innerDestinationCount];
  [v4 appendFormat:@"\nSource\n%@", self->_source];
  [v4 appendFormat:@"\nDestination\n%@", self->_destination];
  if (self->_mergeTable)
  {
    [v4 appendString:@"\nLCSS Table\n"];
    if (self->_innerDestinationCount >= 1)
    {
      v5 = 0;
      v6 = 0;
      do
      {
        [v4 appendFormat:@"{%li", self->_mergeTable[self->_innerSourceCount * v6]];
        innerSourceCount = self->_innerSourceCount;
        if (innerSourceCount >= 2)
        {
          for (i = 1; i < innerSourceCount; ++i)
          {
            [v4 appendFormat:@", %li", *(&self->_mergeTable[i] + v5 * innerSourceCount)];
            innerSourceCount = self->_innerSourceCount;
          }
        }

        [v4 appendString:{@"}, \n"}];
        ++v6;
        v5 += 8;
      }

      while (v6 < self->_innerDestinationCount);
    }

    [v4 appendString:@"}"];
  }

  if (self->_merged)
  {
    [v4 appendFormat:@"\nMerged\n%@", self->_merged];
  }

  return v4;
}

@end