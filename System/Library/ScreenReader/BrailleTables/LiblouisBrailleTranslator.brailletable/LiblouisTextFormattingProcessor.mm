@interface LiblouisTextFormattingProcessor
- (id)processText:(id)text withFormattingRanges:(id)ranges;
@end

@implementation LiblouisTextFormattingProcessor

- (id)processText:(id)text withFormattingRanges:(id)ranges
{
  textCopy = text;
  rangesCopy = ranges;
  v7 = rangesCopy;
  if (!textCopy)
  {
    goto LABEL_51;
  }

  boldRanges = [rangesCopy boldRanges];
  if (![boldRanges count])
  {
    italicRanges = [v7 italicRanges];
    if ([italicRanges count])
    {

      goto LABEL_5;
    }

    underlineRanges = [v7 underlineRanges];
    v48 = [underlineRanges count];

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
  if ([textCopy length])
  {
    v11 = 0;
    do
    {
      v63 = 0;
      [v10 appendBytes:&v63 length:2];
      ++v11;
    }

    while (v11 < [textCopy length]);
  }

  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v50 = v7;
  boldRanges2 = [v7 boldRanges];
  v13 = [boldRanges2 countByEnumeratingWithState:&v59 objects:v66 count:16];
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
          objc_enumerationMutation(boldRanges2);
        }

        rangeValue = [*(*(&v59 + 1) + 8 * i) rangeValue];
        if (rangeValue != 0x7FFFFFFFFFFFFFFFLL)
        {
          v19 = rangeValue;
          v20 = v18;
          v21 = &rangeValue[v18];
          if (&rangeValue[v18] <= [textCopy length])
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

      v14 = [boldRanges2 countByEnumeratingWithState:&v59 objects:v66 count:16];
    }

    while (v14);
  }

  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  italicRanges2 = [v50 italicRanges];
  v24 = [italicRanges2 countByEnumeratingWithState:&v55 objects:v65 count:16];
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
          objc_enumerationMutation(italicRanges2);
        }

        rangeValue2 = [*(*(&v55 + 1) + 8 * j) rangeValue];
        if (rangeValue2 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v30 = rangeValue2;
          v31 = v29;
          v32 = &rangeValue2[v29];
          if (&rangeValue2[v29] <= [textCopy length] && v30 < v32)
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

      v25 = [italicRanges2 countByEnumeratingWithState:&v55 objects:v65 count:16];
    }

    while (v25);
  }

  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  underlineRanges2 = [v50 underlineRanges];
  v36 = [underlineRanges2 countByEnumeratingWithState:&v51 objects:v64 count:16];
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
          objc_enumerationMutation(underlineRanges2);
        }

        rangeValue3 = [*(*(&v51 + 1) + 8 * k) rangeValue];
        if (rangeValue3 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v42 = rangeValue3;
          v43 = v41;
          v44 = &rangeValue3[v41];
          if (&rangeValue3[v41] <= [textCopy length] && v42 < v44)
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

      v37 = [underlineRanges2 countByEnumeratingWithState:&v51 objects:v64 count:16];
    }

    while (v37);
  }

  v7 = v50;
LABEL_52:

  return v10;
}

@end