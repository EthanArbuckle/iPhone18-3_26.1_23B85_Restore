@interface NSWritingToolsEditTracker
- (NSWritingToolsEditTracker)initWithContextRange:(_NSRange)range;
- (_NSRange)_indirect_adjustRange:(_NSRange)range forUUID:(id)d;
- (_NSRange)adjustRange:(_NSRange)range;
- (_NSRange)currentContextRange;
- (_NSRange)rangeOfSuggestionWithRange:(_NSRange)range UUID:(id)d applyDelta:(BOOL)delta;
- (uint64_t)_addRange:(NSUInteger)range delta:(uint64_t)delta uuid:(void *)uuid;
- (unint64_t)_adjustLocation:(unint64_t)location;
- (unint64_t)_adjustRange:(uint64_t)range forUUID:(void *)d;
- (void)_removeRange:(uint64_t)range;
- (void)addEditForSuggestionWithRange:(_NSRange)range lengthDelta:(int64_t)delta UUID:(id)d;
- (void)removeEditForSuggestionWithUUID:(id)d;
@end

@implementation NSWritingToolsEditTracker

- (NSWritingToolsEditTracker)initWithContextRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v12.receiver = self;
  v12.super_class = NSWritingToolsEditTracker;
  v5 = [(NSWritingToolsEditTracker *)&v12 init];
  v6 = v5;
  if (v5)
  {
    v5->_currentContextRange.location = location;
    v5->_currentContextRange.length = length;
    v5->_contextRange.location = location;
    v5->_contextRange.length = length;
    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    edits = v6->_edits;
    v6->_edits = v7;

    strongToStrongObjectsMapTable = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    uuidToEdit = v6->_uuidToEdit;
    v6->_uuidToEdit = strongToStrongObjectsMapTable;
  }

  return v6;
}

- (unint64_t)_adjustLocation:(unint64_t)location
{
  v22 = *MEMORY[0x1E69E9840];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = self->_edits;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      v10 = 0;
      do
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v17 + 1) + 8 * v10);
        range = [(__NSWritingToolsEdit *)v11 range];
        if (range + v13 <= location)
        {
          if (v11)
          {
            v14 = *(v11 + 8);
            if (v14 <= 0)
            {
              goto LABEL_9;
            }

LABEL_12:
            location += v14;
            goto LABEL_13;
          }

          v14 = 0;
LABEL_9:
          if (location < -v14)
          {
            [(NSWritingToolsEditTracker *)a2 _adjustLocation:?];
            if (v11)
            {
              goto LABEL_11;
            }
          }

          else if (v11)
          {
LABEL_11:
            v14 = *(v11 + 8);
            goto LABEL_12;
          }

          v14 = 0;
          goto LABEL_12;
        }

LABEL_13:
        ++v10;
      }

      while (v8 != v10);
      v15 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
      v8 = v15;
    }

    while (v15);
  }

  return location;
}

- (_NSRange)adjustRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v7 = [(NSWritingToolsEditTracker *)self _adjustLocation:?];
  v8 = [(NSWritingToolsEditTracker *)self _adjustLocation:location + length];
  v9 = v8 - v7;
  if (v8 < v7)
  {
    [(NSWritingToolsEditTracker *)a2 adjustRange:?];
  }

  v10 = v7;
  v11 = v9;
  result.length = v11;
  result.location = v10;
  return result;
}

- (_NSRange)currentContextRange
{
  objc_copyStruct(v4, &self->_currentContextRange, 16, 1, 0);
  v2 = v4[0];
  v3 = v4[1];
  result.length = v3;
  result.location = v2;
  return result;
}

- (uint64_t)_addRange:(NSUInteger)range delta:(uint64_t)delta uuid:(void *)uuid
{
  location = uuid;
  v10 = location;
  if (self)
  {
    v34 = location;
    if (delta <= 0 && a2 + range < -delta)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel__addRange_delta_uuid_ object:self file:@"NSWritingToolsEditTracker.m" lineNumber:101 description:@"delta exceeds range length"];

      v10 = v34;
    }

    v11 = [*(self + 16) objectForKey:v10];

    v10 = v34;
    if (!v11)
    {
      v12.location = *(self + 40);
      if (range)
      {
        v12.length = *(self + 48);
        v36.location = a2;
        v36.length = range;
        length = NSIntersectionRange(v36, v12).length;
        v39.length = *(self + 40);
        v37.location = a2;
        v37.length = range;
        v39.location = 0;
        v14 = NSIntersectionRange(v37, v39).length;
        v40.location = *(self + 48) + *(self + 40);
        v40.length = ~v40.location;
        v38.location = a2;
        v38.length = range;
        v15 = NSIntersectionRange(v38, v40);
        location = v15.location;
        if (v15.length && length)
        {
          if (v15.length >= -delta)
          {
            v16 = 0;
          }

          else
          {
            v16 = v15.length;
          }

          v17 = v16 + delta;
          if (delta < 0)
          {
            delta = v17;
          }

          else
          {
            delta = 0;
          }
        }

        v10 = v34;
        if (v14 && length)
        {
          if (length < -delta)
          {
            deltaCopy5 = delta + length;
          }

          else
          {
            deltaCopy5 = 0;
          }

          if (length < -delta)
          {
            deltaCopy6 = -length;
          }

          else
          {
            deltaCopy6 = delta;
          }

          if (delta >= 0)
          {
            deltaCopy5 = 0;
            deltaCopy6 = delta;
          }
        }

        else
        {
          if (v14)
          {
            deltaCopy5 = delta;
          }

          else
          {
            deltaCopy5 = 0;
          }

          if (v14)
          {
            deltaCopy6 = 0;
          }

          else
          {
            deltaCopy6 = delta;
          }

          if (!length && !(deltaCopy6 | v14) && !deltaCopy5)
          {
            goto LABEL_53;
          }
        }

        goto LABEL_50;
      }

      v20 = *(self + 48);
      v21 = a2 == v12.location;
      if (v20)
      {
        v21 = 0;
      }

      v22 = a2 > v12.location;
      v23 = a2 > v12.location || v21;
      v24 = v20 + v12.location;
      if (v23)
      {
        deltaCopy5 = 0;
      }

      else
      {
        deltaCopy5 = delta;
      }

      if (a2 >= v24)
      {
        v22 = 0;
      }

      if (v21 || v22)
      {
        deltaCopy6 = delta;
      }

      else
      {
        deltaCopy6 = 0;
      }

      if (delta)
      {
LABEL_50:
        v25 = *(self + 48) + deltaCopy6;
        *(self + 40) += deltaCopy5;
        *(self + 48) = v25;
        v26 = [__NSWritingToolsEdit alloc];
        OUTLINED_FUNCTION_0_1();
        v31 = [(__NSWritingToolsEdit *)v27 initWithRange:v28 delta:v29 identifier:v30, v34];
        [*(self + 8) addObject:v31];
        if (v34)
        {
          [*(self + 16) setObject:v31 forKey:v34];
        }

        v10 = v34;
      }
    }
  }

LABEL_53:

  return MEMORY[0x1EEE66BB8](location, v10);
}

- (void)_removeRange:(uint64_t)range
{
  v3 = a2;
  v4 = v3;
  if (range)
  {
    if (!v3)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      OUTLINED_FUNCTION_0_1();
      [v15 handleFailureInMethod:@"uuid" object:? file:? lineNumber:? description:?];
    }

    v5 = [*(range + 16) objectForKey:v4];
    if (v5)
    {
      objc_copyStruct(&dest, v5 + 3, 16, 1, 0);
      v6 = dest;
      v7 = v5[1];
      [*(range + 16) removeObjectForKey:v4];
      v8 = [*(range + 8) indexOfObject:v5];
      v9 = [*(range + 8) count];
      if (v8 < v9)
      {
        v10 = v9;
        [*(range + 8) removeObjectAtIndex:v8];
        v11 = v10 - 1;
        if (v8 < v11)
        {
          do
          {
            v12 = [*(range + 8) objectAtIndexedSubscript:v8];
            if (v12)
            {
              v13 = v12[3];
              if (v6 < v13)
              {
                v12[3] = v13 - v7;
              }
            }

            ++v8;
          }

          while (v11 != v8);
        }
      }

      *(range + 48) -= v7;
    }
  }
}

- (unint64_t)_adjustRange:(uint64_t)range forUUID:(void *)d
{
  v30 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v8 = dCopy;
  if (self)
  {
    if (!dCopy)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel__adjustRange_forUUID_ object:self file:@"NSWritingToolsEditTracker.m" lineNumber:235 description:{@"Invalid parameter not satisfying: %@", @"uuid"}];
    }

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v9 = *(self + 8);
    v10 = [v9 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v10)
    {
      v12 = v10;
      v13 = *v26;
      v14 = a2;
      do
      {
        v15 = 0;
        do
        {
          if (*v26 != v13)
          {
            objc_enumerationMutation(v9);
          }

          v16 = *(*(&v25 + 1) + 8 * v15);
          if (v16)
          {
            v17 = *(v16 + 8);
            Property = objc_getProperty(*(*(&v25 + 1) + 8 * v15), v11, 16, 1);
          }

          else
          {
            v17 = 0;
            Property = 0;
          }

          if ([Property isEqual:v8])
          {
            goto LABEL_12;
          }

          range = [(__NSWritingToolsEdit *)v16 range];
          if (&v11[range] <= a2)
          {
            a2 += v17;
LABEL_12:
            v14 += v17;
            goto LABEL_13;
          }

          v20 = range <= v14 && &v11[range] > v14;
          if (v20 || (v14 <= range ? (v21 = v14 + range > range) : (v21 = 0), v21))
          {
            a2 = 0x7FFFFFFFFFFFFFFFLL;
            goto LABEL_31;
          }

LABEL_13:
          ++v15;
        }

        while (v12 != v15);
        v22 = [v9 countByEnumeratingWithState:&v25 objects:v29 count:16];
        v12 = v22;
      }

      while (v22);
    }

LABEL_31:
  }

  else
  {
    a2 = 0;
  }

  return a2;
}

- (void)addEditForSuggestionWithRange:(_NSRange)range lengthDelta:(int64_t)delta UUID:(id)d
{
  length = range.length;
  location = range.location;
  dCopy = d;
  v15 = dCopy;
  if (!dCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    OUTLINED_FUNCTION_0_1();
    [v12 handleFailureInMethod:@"uuid" object:? file:? lineNumber:? description:?];

    dCopy = 0;
  }

  [(NSWritingToolsEditTracker *)self _adjustRange:length forUUID:dCopy];
  OUTLINED_FUNCTION_1_1();
  if (v10)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    OUTLINED_FUNCTION_0_1();
    [v14 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
  }

  [(NSWritingToolsEditTracker *)self _addRange:location delta:delta uuid:v15];
}

- (void)removeEditForSuggestionWithUUID:(id)d
{
  dCopy = d;
  v7 = dCopy;
  if (!dCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"NSWritingToolsEditTracker.m" lineNumber:321 description:{@"Invalid parameter not satisfying: %@", @"uuid"}];

    dCopy = 0;
  }

  [(NSWritingToolsEditTracker *)self _removeRange:dCopy];
}

- (_NSRange)rangeOfSuggestionWithRange:(_NSRange)range UUID:(id)d applyDelta:(BOOL)delta
{
  deltaCopy = delta;
  length = range.length;
  location = range.location;
  dCopy = d;
  if (!dCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"NSWritingToolsEditTracker.m" lineNumber:341 description:{@"Invalid parameter not satisfying: %@", @"uuid"}];
  }

  [(NSWritingToolsEditTracker *)self _adjustRange:length forUUID:dCopy];
  OUTLINED_FUNCTION_1_1();
  v11 = v11 || !deltaCopy;
  if (!v11)
  {
    v12 = [(NSMapTable *)self->_uuidToEdit objectForKey:dCopy];
    if (v12)
    {
      location += v12[1];
    }
  }

  v13 = length;
  v14 = location;
  result.length = v14;
  result.location = v13;
  return result;
}

- (_NSRange)_indirect_adjustRange:(_NSRange)range forUUID:(id)d
{
  v4 = [(NSWritingToolsEditTracker *)self _adjustRange:range.length forUUID:d];
  result.length = v5;
  result.location = v4;
  return result;
}

- (void)_adjustLocation:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"NSWritingToolsEditTracker.m" lineNumber:217 description:@"attempting to set range to a negative location."];
}

- (void)adjustRange:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"NSWritingToolsEditTracker.m" lineNumber:294 description:@"attempting to set range to a negative length."];
}

@end