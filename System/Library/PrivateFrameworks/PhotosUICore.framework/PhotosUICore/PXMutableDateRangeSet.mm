@interface PXMutableDateRangeSet
- (BOOL)_attemptToAddDateRange:(id)a3 outNextRange:(id *)a4;
- (void)addDateRange:(id)a3;
- (void)removeAllDateRanges;
@end

@implementation PXMutableDateRangeSet

- (void)removeAllDateRanges
{
  v2 = [(PXDateRangeSet *)self _dateRanges];
  [v2 removeAllObjects];
}

- (BOOL)_attemptToAddDateRange:(id)a3 outNextRange:(id *)a4
{
  v36 = *MEMORY[0x1E69E9840];
  v7 = a3;
  if (!a4)
  {
    v30 = [MEMORY[0x1E696AAA8] currentHandler];
    [v30 handleFailureInMethod:a2 object:self file:@"PXDateRangeSet.m" lineNumber:142 description:@"outNextAttempt required"];
  }

  [(PXDateRangeSet *)self _dateRanges];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v8 = v34 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = *v32;
    while (2)
    {
      v13 = 0;
      v14 = v11;
      v11 += v10;
      do
      {
        if (*v32 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v15 = *(*(&v31 + 1) + 8 * v13);
        if ([v7 intersectsRange:{v15, v31}])
        {

          v16 = [v8 objectAtIndex:v14];
          [v8 removeObjectAtIndex:v14];
          [v7 startDate];
          v18 = v17;
          [v16 startDate];
          if (v18 <= v19)
          {
            v20 = v7;
          }

          else
          {
            v20 = v16;
          }

          [v20 startDate];
          v22 = v21;
          [v7 endDate];
          v24 = v23;
          [v16 endDate];
          if (v24 >= v25)
          {
            v26 = v7;
          }

          else
          {
            v26 = v16;
          }

          [v26 endDate];
          *a4 = [[PXDateRange alloc] initWithStartDate:v22 endDate:v27];

          v28 = 0;
          goto LABEL_26;
        }

        if ([v7 isStrictlyBeforeRange:v15])
        {
          v11 = v14;
          goto LABEL_22;
        }

        ++v14;
        ++v13;
      }

      while (v10 != v13);
      v10 = [v8 countByEnumeratingWithState:&v31 objects:v35 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v11 = 0;
  }

LABEL_22:

  if (v11 >= [v8 count])
  {
    [v8 addObject:v7];
  }

  else
  {
    [v8 insertObject:v7 atIndex:v11];
  }

  v28 = 1;
LABEL_26:

  return v28;
}

- (void)addDateRange:(id)a3
{
  v4 = a3;
  v5 = v4;
  do
  {
    v6 = v5;
    v8 = 0;
    v7 = [(PXMutableDateRangeSet *)self _attemptToAddDateRange:v5 outNextRange:&v8];
    v5 = v8;
  }

  while (!v7);
}

@end