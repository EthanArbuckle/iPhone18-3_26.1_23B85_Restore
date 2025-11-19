@interface PXArrayChangeDetails(PXGDecoratingLayout)
- (id)changeDetailsShiftedBy:()PXGDecoratingLayout scaledBy:;
@end

@implementation PXArrayChangeDetails(PXGDecoratingLayout)

- (id)changeDetailsShiftedBy:()PXGDecoratingLayout scaledBy:
{
  if (a4 < 0)
  {
    v28 = [MEMORY[0x277CCA890] currentHandler];
    [v28 handleFailureInMethod:a2 object:a1 file:@"PXGDecoratingLayout.m" lineNumber:1126 description:{@"Invalid parameter not satisfying: %@", @"scale >= 0"}];
  }

  else if (!a4)
  {
    v24 = [objc_opt_class() changeDetailsWithNoChanges];
LABEL_15:
    v25 = v24;
    goto LABEL_20;
  }

  if (([a1 hasIncrementalChanges] & 1) == 0)
  {
    v24 = a1;
    goto LABEL_15;
  }

  v7 = objc_alloc_init(MEMORY[0x277CCAB58]);
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __77__PXArrayChangeDetails_PXGDecoratingLayout__changeDetailsShiftedBy_scaledBy___block_invoke;
  v33[3] = &unk_2782AA030;
  v8 = v7;
  v34 = v8;
  v35 = a4;
  v36 = a3;
  v9 = MEMORY[0x21CEE40A0](v33);
  v10 = [a1 removedIndexes];
  v11 = (v9)[2](v9, v10);

  v12 = [a1 insertedIndexes];
  v32 = (v9)[2](v9, v12);

  v13 = [a1 movesToIndexes];
  v31 = (v9)[2](v9, v13);

  v14 = [a1 changedIndexes];
  v15 = (v9)[2](v9, v14);

  if ([a1 hasMoves])
  {
    v30 = v11;
    v16 = [a1 movesToIndexes];
    v17 = [v16 count];

    v18 = [a1 movesFromIndexes];
    v19 = PXCreateMutableIntegerArrayRef();
    if (v17 >= 1)
    {
      v29 = v8;
      for (i = 0; i != v17; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v18, i);
        if (a4 >= 1)
        {
          v22 = (ValueAtIndex + a3) * a4;
          v23 = a4;
          do
          {
            CFArrayAppendValue(v19, v22++);
            --v23;
          }

          while (v23);
        }
      }

      v8 = v29;
    }

    v11 = v30;
  }

  else
  {
    v19 = 0;
  }

  v25 = [objc_alloc(MEMORY[0x277D3CCC8]) initWithIncrementalChangeDetailsRemovedIndexes:v11 insertedIndexes:v32 movesToIndexes:v31 movesFromIndexes:v19 changedIndexes:v15];
  if (v19)
  {
    CFRelease(v19);
  }

LABEL_20:

  return v25;
}

@end