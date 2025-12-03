@interface SXDateParser
- (id)dateFromString:(id)string;
@end

@implementation SXDateParser

- (id)dateFromString:(id)string
{
  stringCopy = string;
  if (stringCopy)
  {
    v4 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"([0-9]{4})-([01][0-9])-([0-3][0-9])(T([0-2][0-9]):([0-5][0-9]):([0-5][0-9])(Z|([+-])([0-2][0-9]):([0-9][0-9]))?)?" options:1 error:0];
    v5 = objc_alloc_init(MEMORY[0x1E695DF10]);
    v6 = objc_alloc(MEMORY[0x1E695DEE8]);
    v7 = [v6 initWithCalendarIdentifier:*MEMORY[0x1E695D850]];
    [v5 setCalendar:v7];

    v30 = 0;
    v31 = &v30;
    v32 = 0x3032000000;
    v33 = __Block_byref_object_copy__2;
    v34 = __Block_byref_object_dispose__2;
    systemTimeZone = [MEMORY[0x1E695DFE8] systemTimeZone];
    v26 = 0;
    v27 = &v26;
    v28 = 0x2020000000;
    v29 = 0;
    v20 = 0;
    v21 = &v20;
    v22 = 0x3032000000;
    v23 = __Block_byref_object_copy__2;
    v24 = __Block_byref_object_dispose__2;
    v25 = 0;
    v8 = [stringCopy length];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __31__SXDateParser_dateFromString___block_invoke;
    v14[3] = &unk_1E8501A58;
    v15 = stringCopy;
    v17 = &v30;
    v18 = &v20;
    v19 = &v26;
    v9 = v5;
    v16 = v9;
    [v4 enumerateMatchesInString:v15 options:2 range:0 usingBlock:{v8, v14}];
    if ([v9 day] == 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(v9, "month") == 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(v9, "year") == 0x7FFFFFFFFFFFFFFFLL)
    {
      v10 = 0;
    }

    else
    {
      [v9 setTimeZone:v31[5]];
      v12 = [SXParsedDate alloc];
      date = [v9 date];
      v10 = [(SXParsedDate *)v12 initWithDate:date containedTime:*(v27 + 24) timeZone:v21[5]];
    }

    _Block_object_dispose(&v20, 8);
    _Block_object_dispose(&v26, 8);
    _Block_object_dispose(&v30, 8);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void __31__SXDateParser_dateFromString___block_invoke(uint64_t a1, void *a2)
{
  v29 = a2;
  if ([v29 numberOfRanges] >= 2)
  {
    v3 = 1;
    while (1)
    {
      v4 = [v29 rangeAtIndex:v3];
      if (v4 == 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_32;
      }

      v6 = v5;
      if (!v5)
      {
        goto LABEL_32;
      }

      v7 = v4;
      if (v4 + v5 > [*(a1 + 32) length])
      {
        goto LABEL_32;
      }

      v8 = [*(a1 + 32) substringWithRange:{v7, v6}];
      v9 = v8;
      if (v3 == 9)
      {
        break;
      }

      if (v3 == 8)
      {
        v10 = [v8 uppercaseString];
        v11 = [v10 isEqualToString:@"Z"];

        if (!v11)
        {
          goto LABEL_22;
        }

        v12 = MEMORY[0x1E695DFE8];
        v13 = 0;
LABEL_18:
        v25 = [v12 timeZoneForSecondsFromGMT:v13];
        v26 = *(*(a1 + 48) + 8);
        v27 = *(v26 + 40);
        *(v26 + 40) = v25;

        objc_storeStrong((*(*(a1 + 56) + 8) + 40), *(*(*(a1 + 48) + 8) + 40));
        goto LABEL_31;
      }

      if (v3 != 4 || !v8)
      {
LABEL_22:
        v28 = [v9 integerValue];
        if (v3 == 1 && v28)
        {
          [*(a1 + 40) setYear:v28];
        }

        else if (v3 == 2 && v28)
        {
          [*(a1 + 40) setMonth:v28];
        }

        else if (v3 == 3 && v28)
        {
          [*(a1 + 40) setDay:v28];
        }

        else
        {
          switch(v3)
          {
            case 7:
              [*(a1 + 40) setSecond:v28];
              break;
            case 6:
              [*(a1 + 40) setMinute:v28];
              break;
            case 5:
              [*(a1 + 40) setHour:v28];
              break;
          }
        }

        goto LABEL_31;
      }

      *(*(*(a1 + 64) + 8) + 24) = 1;
LABEL_31:

LABEL_32:
      if (++v3 >= [v29 numberOfRanges])
      {
        goto LABEL_40;
      }
    }

    v14 = [v29 rangeAtIndex:10];
    v16 = v15;
    v17 = [v29 rangeAtIndex:11];
    if (v14 == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_31;
    }

    if (!v16)
    {
      goto LABEL_31;
    }

    v19 = v17;
    if (v17 == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_31;
    }

    v20 = v18;
    if (!v18)
    {
      goto LABEL_31;
    }

    v21 = [*(a1 + 32) substringWithRange:{v14, v16}];
    v22 = [v21 integerValue];

    v23 = [*(a1 + 32) substringWithRange:{v19, v20}];
    v24 = [v23 integerValue];

    if ([v9 isEqualToString:@"-"])
    {
      v13 = -60 * (v24 + 60 * v22);
    }

    else
    {
      v13 = 60 * (v24 + 60 * v22);
    }

    v12 = MEMORY[0x1E695DFE8];
    goto LABEL_18;
  }

LABEL_40:
}

@end