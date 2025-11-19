@interface NSWritingToolsEditTracker
- (NSWritingToolsEditTracker)initWithContextRange:(_NSRange)a3;
- (_NSRange)_indirect_adjustRange:(_NSRange)a3 forUUID:(id)a4;
- (_NSRange)adjustRange:(_NSRange)a3;
- (_NSRange)currentContextRange;
- (_NSRange)rangeOfSuggestionWithRange:(_NSRange)a3 UUID:(id)a4 applyDelta:(BOOL)a5;
- (uint64_t)_addRange:(NSUInteger)a3 delta:(uint64_t)a4 uuid:(void *)a5;
- (unint64_t)_adjustLocation:(unint64_t)a3;
- (unint64_t)_adjustRange:(uint64_t)a3 forUUID:(void *)a4;
- (void)_removeRange:(uint64_t)a1;
- (void)addEditForSuggestionWithRange:(_NSRange)a3 lengthDelta:(int64_t)a4 UUID:(id)a5;
- (void)removeEditForSuggestionWithUUID:(id)a3;
@end

@implementation NSWritingToolsEditTracker

- (NSWritingToolsEditTracker)initWithContextRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
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

    v9 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    uuidToEdit = v6->_uuidToEdit;
    v6->_uuidToEdit = v9;
  }

  return v6;
}

- (unint64_t)_adjustLocation:(unint64_t)a3
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
        v12 = [(__NSWritingToolsEdit *)v11 range];
        if (v12 + v13 <= a3)
        {
          if (v11)
          {
            v14 = *(v11 + 8);
            if (v14 <= 0)
            {
              goto LABEL_9;
            }

LABEL_12:
            a3 += v14;
            goto LABEL_13;
          }

          v14 = 0;
LABEL_9:
          if (a3 < -v14)
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

  return a3;
}

- (_NSRange)adjustRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
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

- (uint64_t)_addRange:(NSUInteger)a3 delta:(uint64_t)a4 uuid:(void *)a5
{
  location = a5;
  v10 = location;
  if (a1)
  {
    v34 = location;
    if (a4 <= 0 && a2 + a3 < -a4)
    {
      v32 = [MEMORY[0x1E696AAA8] currentHandler];
      [v32 handleFailureInMethod:sel__addRange_delta_uuid_ object:a1 file:@"NSWritingToolsEditTracker.m" lineNumber:101 description:@"delta exceeds range length"];

      v10 = v34;
    }

    v11 = [*(a1 + 16) objectForKey:v10];

    v10 = v34;
    if (!v11)
    {
      v12.location = *(a1 + 40);
      if (a3)
      {
        v12.length = *(a1 + 48);
        v36.location = a2;
        v36.length = a3;
        length = NSIntersectionRange(v36, v12).length;
        v39.length = *(a1 + 40);
        v37.location = a2;
        v37.length = a3;
        v39.location = 0;
        v14 = NSIntersectionRange(v37, v39).length;
        v40.location = *(a1 + 48) + *(a1 + 40);
        v40.length = ~v40.location;
        v38.location = a2;
        v38.length = a3;
        v15 = NSIntersectionRange(v38, v40);
        location = v15.location;
        if (v15.length && length)
        {
          if (v15.length >= -a4)
          {
            v16 = 0;
          }

          else
          {
            v16 = v15.length;
          }

          v17 = v16 + a4;
          if (a4 < 0)
          {
            a4 = v17;
          }

          else
          {
            a4 = 0;
          }
        }

        v10 = v34;
        if (v14 && length)
        {
          if (length < -a4)
          {
            v18 = a4 + length;
          }

          else
          {
            v18 = 0;
          }

          if (length < -a4)
          {
            v19 = -length;
          }

          else
          {
            v19 = a4;
          }

          if (a4 >= 0)
          {
            v18 = 0;
            v19 = a4;
          }
        }

        else
        {
          if (v14)
          {
            v18 = a4;
          }

          else
          {
            v18 = 0;
          }

          if (v14)
          {
            v19 = 0;
          }

          else
          {
            v19 = a4;
          }

          if (!length && !(v19 | v14) && !v18)
          {
            goto LABEL_53;
          }
        }

        goto LABEL_50;
      }

      v20 = *(a1 + 48);
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
        v18 = 0;
      }

      else
      {
        v18 = a4;
      }

      if (a2 >= v24)
      {
        v22 = 0;
      }

      if (v21 || v22)
      {
        v19 = a4;
      }

      else
      {
        v19 = 0;
      }

      if (a4)
      {
LABEL_50:
        v25 = *(a1 + 48) + v19;
        *(a1 + 40) += v18;
        *(a1 + 48) = v25;
        v26 = [__NSWritingToolsEdit alloc];
        OUTLINED_FUNCTION_0_1();
        v31 = [(__NSWritingToolsEdit *)v27 initWithRange:v28 delta:v29 identifier:v30, v34];
        [*(a1 + 8) addObject:v31];
        if (v34)
        {
          [*(a1 + 16) setObject:v31 forKey:v34];
        }

        v10 = v34;
      }
    }
  }

LABEL_53:

  return MEMORY[0x1EEE66BB8](location, v10);
}

- (void)_removeRange:(uint64_t)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (!v3)
    {
      v14 = [MEMORY[0x1E696AAA8] currentHandler];
      OUTLINED_FUNCTION_0_1();
      [v15 handleFailureInMethod:@"uuid" object:? file:? lineNumber:? description:?];
    }

    v5 = [*(a1 + 16) objectForKey:v4];
    if (v5)
    {
      objc_copyStruct(&dest, v5 + 3, 16, 1, 0);
      v6 = dest;
      v7 = v5[1];
      [*(a1 + 16) removeObjectForKey:v4];
      v8 = [*(a1 + 8) indexOfObject:v5];
      v9 = [*(a1 + 8) count];
      if (v8 < v9)
      {
        v10 = v9;
        [*(a1 + 8) removeObjectAtIndex:v8];
        v11 = v10 - 1;
        if (v8 < v11)
        {
          do
          {
            v12 = [*(a1 + 8) objectAtIndexedSubscript:v8];
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

      *(a1 + 48) -= v7;
    }
  }
}

- (unint64_t)_adjustRange:(uint64_t)a3 forUUID:(void *)a4
{
  v30 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = v7;
  if (a1)
  {
    if (!v7)
    {
      v24 = [MEMORY[0x1E696AAA8] currentHandler];
      [v24 handleFailureInMethod:sel__adjustRange_forUUID_ object:a1 file:@"NSWritingToolsEditTracker.m" lineNumber:235 description:{@"Invalid parameter not satisfying: %@", @"uuid"}];
    }

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v9 = *(a1 + 8);
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

          v19 = [(__NSWritingToolsEdit *)v16 range];
          if (&v11[v19] <= a2)
          {
            a2 += v17;
LABEL_12:
            v14 += v17;
            goto LABEL_13;
          }

          v20 = v19 <= v14 && &v11[v19] > v14;
          if (v20 || (v14 <= v19 ? (v21 = v14 + a3 > v19) : (v21 = 0), v21))
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

- (void)addEditForSuggestionWithRange:(_NSRange)a3 lengthDelta:(int64_t)a4 UUID:(id)a5
{
  length = a3.length;
  location = a3.location;
  v9 = a5;
  v15 = v9;
  if (!v9)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    OUTLINED_FUNCTION_0_1();
    [v12 handleFailureInMethod:@"uuid" object:? file:? lineNumber:? description:?];

    v9 = 0;
  }

  [(NSWritingToolsEditTracker *)self _adjustRange:length forUUID:v9];
  OUTLINED_FUNCTION_1_1();
  if (v10)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    OUTLINED_FUNCTION_0_1();
    [v14 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
  }

  [(NSWritingToolsEditTracker *)self _addRange:location delta:a4 uuid:v15];
}

- (void)removeEditForSuggestionWithUUID:(id)a3
{
  v5 = a3;
  v7 = v5;
  if (!v5)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"NSWritingToolsEditTracker.m" lineNumber:321 description:{@"Invalid parameter not satisfying: %@", @"uuid"}];

    v5 = 0;
  }

  [(NSWritingToolsEditTracker *)self _removeRange:v5];
}

- (_NSRange)rangeOfSuggestionWithRange:(_NSRange)a3 UUID:(id)a4 applyDelta:(BOOL)a5
{
  v5 = a5;
  length = a3.length;
  location = a3.location;
  v10 = a4;
  if (!v10)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"NSWritingToolsEditTracker.m" lineNumber:341 description:{@"Invalid parameter not satisfying: %@", @"uuid"}];
  }

  [(NSWritingToolsEditTracker *)self _adjustRange:length forUUID:v10];
  OUTLINED_FUNCTION_1_1();
  v11 = v11 || !v5;
  if (!v11)
  {
    v12 = [(NSMapTable *)self->_uuidToEdit objectForKey:v10];
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

- (_NSRange)_indirect_adjustRange:(_NSRange)a3 forUUID:(id)a4
{
  v4 = [(NSWritingToolsEditTracker *)self _adjustRange:a3.length forUUID:a4];
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