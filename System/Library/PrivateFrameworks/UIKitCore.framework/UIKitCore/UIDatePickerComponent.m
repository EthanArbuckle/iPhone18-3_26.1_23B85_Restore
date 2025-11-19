@interface UIDatePickerComponent
@end

@implementation UIDatePickerComponent

void __100___UIDatePickerComponent_componentsFromDateFormatString_locale_followsSystemHourCycle_desiredUnits___block_invoke(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  if (!_UICalendarUnitIsSupported(*a2))
  {
    return;
  }

  if ((*(a1 + 64) & v4) == 0)
  {
    return;
  }

  v5 = *(*(a1 + 56) + 8);
  v6 = *(v5 + 24);
  if ((v6 & v4) != 0)
  {
    return;
  }

  *(v5 + 24) = v6 | v4;
  v7 = a2[2];
  v8 = a2[3];
  v9 = [*(a1 + 32) substringWithRange:{v7, v8}];
  v10 = _UIDatePickerDateFormatFromTemplate(v9, *(a1 + 40), *(a1 + 88));
  v11 = _UIDateFormatReplaceKoreanYearFormatIfNeeded(v10, *(a1 + 40));

  v12 = *a2;
  v13 = *(a2 + 4);
  if (*a2 == 8)
  {
    v14 = 76;
LABEL_11:
    if (v13 != v14)
    {
      if (v12 == 8)
      {
        v29 = v9;
        v30 = v8;
        v31 = v7;
        v15 = 76;
      }

      else
      {
        v29 = v9;
        v30 = v8;
        v31 = v7;
        if (v12 == 512)
        {
          v15 = 99;
        }

        else
        {
          v15 = 113;
        }
      }

      v16 = v11;
      v17 = [v16 length];
      v18 = malloc_type_calloc(v17, 2uLL, 0x1000040BDFB0063uLL);
      if (v17)
      {
        v19 = 0;
        v20 = 0;
        do
        {
          v21 = [v16 characterAtIndex:v19];
          if (v20 & 1 | (v21 != v15))
          {
            v22 = v21;
          }

          else
          {
            v22 = v13;
          }

          if (v21 == 39)
          {
            v20 ^= 1u;
            v22 = 39;
          }

          v18[v19++] = v22;
        }

        while (v17 != v19);
      }

      v11 = [MEMORY[0x1E696AEC0] stringWithCharacters:v18 length:v17];
      free(v18);

      v8 = v30;
      v7 = v31;
      v9 = v29;
    }

    goto LABEL_26;
  }

  if (v12 == 512)
  {
    v14 = 99;
    goto LABEL_11;
  }

  if (v12 == 2048)
  {
    v14 = 113;
    goto LABEL_11;
  }

LABEL_26:
  v23 = [v11 length];
  if (v23 >= [v9 length] && objc_msgSend(*(a1 + 32), "rangeOfString:", v11) != 0x7FFFFFFFFFFFFFFFLL)
  {
    v24 = v11;

    v9 = v24;
  }

  v32 = _UIDateFormatStripOtherFormatCharacters(v9, *(a2 + 4));

  if ([v32 length])
  {
    v25 = [[_UIDatePickerComponent alloc] _initWithFormatString:v32 calendarUnit:*a2];
    [*(a1 + 48) addObject:v25];
  }

  else
  {
    v25 = [MEMORY[0x1E696AAA8] currentHandler];
    v26 = *(a1 + 72);
    v27 = *(a1 + 80);
    v28 = [*(a1 + 32) substringWithRange:{v7, v8}];
    [v25 handleFailureInMethod:v26 object:v27 file:@"_UIDatePickerComponent.m" lineNumber:223 description:{@"Unable to handle '%@' from '%@'", v28, *(a1 + 32)}];
  }
}

@end