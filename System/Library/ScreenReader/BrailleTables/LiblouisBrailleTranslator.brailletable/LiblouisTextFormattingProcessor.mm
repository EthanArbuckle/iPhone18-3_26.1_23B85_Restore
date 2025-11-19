@interface LiblouisTextFormattingProcessor
- (id)processText:(id)a3 withFormattingRanges:(id)a4;
@end

@implementation LiblouisTextFormattingProcessor

- (id)processText:(id)a3 withFormattingRanges:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (!v5)
  {
    goto LABEL_51;
  }

  v8 = [v6 boldRanges];
  if (![v8 count])
  {
    v9 = [v7 italicRanges];
    if ([v9 count])
    {

      goto LABEL_5;
    }

    v47 = [v7 underlineRanges];
    v48 = [v47 count];

    if (v48)
    {
      goto LABEL_6;
    }

LABEL_51:
    v10 = 0;
    goto LABEL_52;
  }

LABEL_5:

LABEL_6:
  v10 = +[NSMutableData data];
  if ([v5 length])
  {
    v11 = 0;
    do
    {
      v63 = 0;
      [v10 appendBytes:&v63 length:2];
      ++v11;
    }

    while (v11 < [v5 length]);
  }

  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v50 = v7;
  v12 = [v7 boldRanges];
  v13 = [v12 countByEnumeratingWithState:&v59 objects:v66 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v60;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v60 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [*(*(&v59 + 1) + 8 * i) rangeValue];
        if (v17 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v19 = v17;
          v20 = v18;
          v21 = &v17[v18];
          if (&v17[v18] <= [v5 length])
          {
            v63 = 4;
            if (v19 < v21)
            {
              v22 = 2 * v19;
              do
              {
                [v10 replaceBytesInRange:v22 withBytes:2 length:{&v63, 2}];
                v22 += 2;
                --v20;
              }

              while (v20);
            }
          }
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v59 objects:v66 count:16];
    }

    while (v14);
  }

  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v23 = [v50 italicRanges];
  v24 = [v23 countByEnumeratingWithState:&v55 objects:v65 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v56;
    do
    {
      for (j = 0; j != v25; j = j + 1)
      {
        if (*v56 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = [*(*(&v55 + 1) + 8 * j) rangeValue];
        if (v28 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v30 = v28;
          v31 = v29;
          v32 = &v28[v29];
          if (&v28[v29] <= [v5 length] && v30 < v32)
          {
            v34 = 2 * v30;
            do
            {
              v63 = 0;
              [v10 getBytes:&v63 range:{v34, 2}];
              v63 |= 1u;
              [v10 replaceBytesInRange:v34 withBytes:2 length:{&v63, 2}];
              v34 += 2;
              --v31;
            }

            while (v31);
          }
        }
      }

      v25 = [v23 countByEnumeratingWithState:&v55 objects:v65 count:16];
    }

    while (v25);
  }

  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v35 = [v50 underlineRanges];
  v36 = [v35 countByEnumeratingWithState:&v51 objects:v64 count:16];
  if (v36)
  {
    v37 = v36;
    v38 = *v52;
    do
    {
      for (k = 0; k != v37; k = k + 1)
      {
        if (*v52 != v38)
        {
          objc_enumerationMutation(v35);
        }

        v40 = [*(*(&v51 + 1) + 8 * k) rangeValue];
        if (v40 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v42 = v40;
          v43 = v41;
          v44 = &v40[v41];
          if (&v40[v41] <= [v5 length] && v42 < v44)
          {
            v46 = 2 * v42;
            do
            {
              v63 = 0;
              [v10 getBytes:&v63 range:{v46, 2}];
              v63 |= 2u;
              [v10 replaceBytesInRange:v46 withBytes:2 length:{&v63, 2}];
              v46 += 2;
              --v43;
            }

            while (v43);
          }
        }
      }

      v37 = [v35 countByEnumeratingWithState:&v51 objects:v64 count:16];
    }

    while (v37);
  }

  v7 = v50;
LABEL_52:

  return v10;
}

@end