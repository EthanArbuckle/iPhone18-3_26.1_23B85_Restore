@interface PLSearchIndexDateFormatter
- (PLSearchIndexDateFormatter)init;
- (id)_arrangedMonthSymbols;
- (id)_inqNewLocalizedStringFromDate:(id)a3;
- (id)localizedMonthStringsFromDate:(id)a3;
- (id)newLocalizedComponentsFromDate:(id)a3 includeMonth:(BOOL)a4;
- (id)newLocalizedStringFromDate:(id)a3;
- (id)newLocalizedStringFromYear:(id)a3 month:(id)a4;
- (void)_inqSetupDateFormatter;
- (void)_inqUpdateDateFormat:(id)a3;
@end

@implementation PLSearchIndexDateFormatter

- (id)newLocalizedStringFromYear:(id)a3 month:(id)a4
{
  v5 = a3;
  v6 = a4;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__112433;
  v15 = __Block_byref_object_dispose__112434;
  v16 = 0;
  v9 = v5;
  v10 = v6;
  pl_dispatch_sync();
  v7 = v12[5];

  _Block_object_dispose(&v11, 8);
  return v7;
}

void __63__PLSearchIndexDateFormatter_newLocalizedStringFromYear_month___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _inqSetupDateFormatter];
  v2 = *(a1 + 48);
  if (*(a1 + 40))
  {
    if (v2)
    {
      [*(a1 + 32) _inqUpdateDateFormat:*(*(a1 + 32) + 32)];
      v3 = [*(*(a1 + 32) + 16) dateFromString:*(a1 + 40)];
      [*(a1 + 32) _inqUpdateDateFormat:*(*(a1 + 32) + 40)];
      v4 = [*(*(a1 + 32) + 16) dateFromString:*(a1 + 48)];
      v5 = v4;
      if (v3)
      {
        v6 = v4 == 0;
      }

      else
      {
        v6 = 1;
      }

      if (!v6)
      {
        v16 = 0;
        v17 = 0;
        v7 = [MEMORY[0x1E695DEE8] currentCalendar];
        [v7 getEra:0 year:&v17 month:0 day:0 fromDate:v3];
        [v7 getEra:0 year:0 month:&v16 day:0 fromDate:v5];
        v8 = objc_alloc_init(MEMORY[0x1E695DF10]);
        [v8 setYear:v17];
        [v8 setMonth:v16];
        v9 = [v7 dateFromComponents:v8];
        v10 = [*(a1 + 32) _inqNewLocalizedStringFromDate:v9];
        v11 = *(*(a1 + 56) + 8);
        v12 = *(v11 + 40);
        *(v11 + 40) = v10;
      }

      return;
    }

    v2 = *(a1 + 40);
  }

  else if (!v2)
  {
    return;
  }

  v13 = [v2 copy];
  v14 = *(*(a1 + 56) + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = v13;
}

- (id)newLocalizedStringFromDate:(id)a3
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__112433;
  v10 = __Block_byref_object_dispose__112434;
  v11 = 0;
  v5 = a3;
  pl_dispatch_sync();
  v3 = v7[5];

  _Block_object_dispose(&v6, 8);
  return v3;
}

void __57__PLSearchIndexDateFormatter_newLocalizedStringFromDate___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _inqNewLocalizedStringFromDate:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)_inqNewLocalizedStringFromDate:(id)a3
{
  displayFormat = self->_displayFormat;
  v5 = a3;
  [(PLSearchIndexDateFormatter *)self _inqUpdateDateFormat:displayFormat];
  v6 = [(NSDateFormatter *)self->_dateFormatter stringFromDate:v5];

  v7 = [v6 copy];
  return v7;
}

- (id)newLocalizedComponentsFromDate:(id)a3 includeMonth:(BOOL)a4
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__112433;
  v11 = __Block_byref_object_dispose__112434;
  v12 = 0;
  v6 = a3;
  pl_dispatch_sync();
  v4 = v8[5];

  _Block_object_dispose(&v7, 8);
  return v4;
}

void __74__PLSearchIndexDateFormatter_newLocalizedComponentsFromDate_includeMonth___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _inqSetupDateFormatter];
  [*(a1 + 32) _inqUpdateDateFormat:*(*(a1 + 32) + 56)];
  v8 = [*(*(a1 + 32) + 16) stringFromDate:*(a1 + 40)];
  v2 = [v8 componentsSeparatedByString:@"-"];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if ([*(*(*(a1 + 48) + 8) + 40) count] == 2)
  {
    if (*(a1 + 56))
    {
      goto LABEL_6;
    }

    v5 = [*(*(*(a1 + 48) + 8) + 40) subarrayWithRange:{1, 1}];
  }

  else
  {
    v5 = 0;
  }

  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

LABEL_6:
}

- (id)localizedMonthStringsFromDate:(id)a3
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__112433;
  v10 = __Block_byref_object_dispose__112434;
  v11 = 0;
  v5 = a3;
  pl_dispatch_sync();
  v3 = v7[5];

  _Block_object_dispose(&v6, 8);

  return v3;
}

void __60__PLSearchIndexDateFormatter_localizedMonthStringsFromDate___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _inqSetupDateFormatter];
  v2 = [*(*(a1 + 32) + 16) calendar];
  v3 = [v2 component:8 fromDate:*(a1 + 40)];

  if (v3 >= 1 && v3 - 1 < [*(*(a1 + 32) + 64) count])
  {
    v4 = [*(*(a1 + 32) + 64) objectAtIndex:v3 - 1];
    v5 = *(*(a1 + 48) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
  }
}

- (void)_inqUpdateDateFormat:(id)a3
{
  v7 = a3;
  if (!v7)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"PLSearchIndexDateFormatter.m" lineNumber:155 description:@"expect valid format"];
  }

  v5 = [(NSDateFormatter *)self->_dateFormatter dateFormat];
  if (v5 != v7 && ([v5 isEqualToString:v7] & 1) == 0)
  {
    [(NSDateFormatter *)self->_dateFormatter setDateFormat:v7];
  }
}

- (void)_inqSetupDateFormatter
{
  if (!self->_dateFormatter)
  {
    v3 = objc_alloc_init(MEMORY[0x1E696AB78]);
    dateFormatter = self->_dateFormatter;
    self->_dateFormatter = v3;
  }

  if (!self->_dateRangeFormatter)
  {
    v5 = [[PLDateRangeFormatter alloc] initWithPreset:2];
    dateRangeFormatter = self->_dateRangeFormatter;
    self->_dateRangeFormatter = v5;
  }

  if (!self->_didSetupLocaleAndFormats)
  {
    v24 = +[PLSearchIndexConfiguration locale];
    [(NSDateFormatter *)self->_dateFormatter setLocale:v24];
    [(PLDateRangeFormatter *)self->_dateRangeFormatter setLocale:v24];
    v7 = [objc_alloc(MEMORY[0x1E695DFE8]) initWithName:@"UTC"];
    [(NSDateFormatter *)self->_dateFormatter setTimeZone:v7];
    v8 = [MEMORY[0x1E695DEE8] currentCalendar];
    v9 = [v8 copy];

    [v9 setTimeZone:v7];
    [(NSDateFormatter *)self->_dateFormatter setCalendar:v9];
    v10 = [objc_opt_class() yearFormatForLocale:v24];
    v11 = [objc_opt_class() monthFormatForLocale:v24];
    v12 = [MEMORY[0x1E696AB78] dateFormatFromTemplate:@"LLLLy" options:0 locale:v24];
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@%@", v11, @"-", v10];
    v14 = [v10 copy];
    yearFormat = self->_yearFormat;
    self->_yearFormat = v14;

    v16 = [v11 copy];
    monthFormat = self->_monthFormat;
    self->_monthFormat = v16;

    v18 = [v12 copy];
    displayFormat = self->_displayFormat;
    self->_displayFormat = v18;

    v20 = [v13 copy];
    parseFormat = self->_parseFormat;
    self->_parseFormat = v20;

    v22 = [(PLSearchIndexDateFormatter *)self _arrangedMonthSymbols];
    monthSymbols = self->_monthSymbols;
    self->_monthSymbols = v22;

    self->_didSetupLocaleAndFormats = 1;
  }
}

- (id)_arrangedMonthSymbols
{
  v54[6] = *MEMORY[0x1E69E9840];
  v3 = [(NSDateFormatter *)self->_dateFormatter monthSymbols];
  v54[0] = v3;
  v4 = [(NSDateFormatter *)self->_dateFormatter shortMonthSymbols];
  v54[1] = v4;
  v5 = [(NSDateFormatter *)self->_dateFormatter veryShortMonthSymbols];
  v54[2] = v5;
  v6 = [(NSDateFormatter *)self->_dateFormatter standaloneMonthSymbols];
  v54[3] = v6;
  v7 = [(NSDateFormatter *)self->_dateFormatter shortStandaloneMonthSymbols];
  v54[4] = v7;
  v8 = [(NSDateFormatter *)self->_dateFormatter veryShortStandaloneMonthSymbols];
  v54[5] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v54 count:6];

  v10 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_112463];
  v11 = [v9 filteredArrayUsingPredicate:v10];

  v36 = [MEMORY[0x1E695DF70] array];
  v37 = v11;
  v12 = [v11 firstObject];
  v13 = [v12 count];

  v35 = v13;
  if (v13)
  {
    v14 = 0;
    do
    {
      v15 = [MEMORY[0x1E695DF70] array];
      v47 = 0u;
      v48 = 0u;
      v49 = 0u;
      v50 = 0u;
      v16 = v37;
      v17 = [v16 countByEnumeratingWithState:&v47 objects:v53 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v48;
        do
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v48 != v19)
            {
              objc_enumerationMutation(v16);
            }

            v21 = [*(*(&v47 + 1) + 8 * i) objectAtIndexedSubscript:v14];
            [v15 addObject:v21];
          }

          v18 = [v16 countByEnumeratingWithState:&v47 objects:v53 count:16];
        }

        while (v18);
      }

      v38 = v14;

      [v15 sortUsingComparator:&__block_literal_global_11];
      v22 = [MEMORY[0x1E695DF70] array];
      v43 = 0u;
      v44 = 0u;
      v45 = 0u;
      v46 = 0u;
      v23 = v15;
      v24 = [v23 countByEnumeratingWithState:&v43 objects:v52 count:16];
      if (v24)
      {
        v25 = v24;
        v26 = *v44;
        do
        {
          for (j = 0; j != v25; ++j)
          {
            if (*v44 != v26)
            {
              objc_enumerationMutation(v23);
            }

            v28 = *(*(&v43 + 1) + 8 * j);
            v39 = 0u;
            v40 = 0u;
            v41 = 0u;
            v42 = 0u;
            v29 = v22;
            v30 = [v29 countByEnumeratingWithState:&v39 objects:v51 count:16];
            if (v30)
            {
              v31 = v30;
              v32 = *v40;
              while (2)
              {
                for (k = 0; k != v31; ++k)
                {
                  if (*v40 != v32)
                  {
                    objc_enumerationMutation(v29);
                  }

                  if ([*(*(&v39 + 1) + 8 * k) hasPrefix:v28])
                  {

                    goto LABEL_25;
                  }
                }

                v31 = [v29 countByEnumeratingWithState:&v39 objects:v51 count:16];
                if (v31)
                {
                  continue;
                }

                break;
              }
            }

            [v29 addObject:v28];
LABEL_25:
            ;
          }

          v25 = [v23 countByEnumeratingWithState:&v43 objects:v52 count:16];
        }

        while (v25);
      }

      [v36 addObject:v22];
      v14 = v38 + 1;
    }

    while (v38 + 1 != v35);
  }

  return v36;
}

uint64_t __51__PLSearchIndexDateFormatter__arrangedMonthSymbols__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 length];
  if (v6 <= [v5 length])
  {
    v8 = [v4 length];
    v7 = v8 < [v5 length];
  }

  else
  {
    v7 = -1;
  }

  return v7;
}

BOOL __51__PLSearchIndexDateFormatter__arrangedMonthSymbols__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E695DFD8];
  v3 = a2;
  v4 = [v2 setWithArray:v3];
  v5 = [v4 count];
  v6 = [v3 count];

  return v5 == v6;
}

- (PLSearchIndexDateFormatter)init
{
  v6.receiver = self;
  v6.super_class = PLSearchIndexDateFormatter;
  v2 = [(PLSearchIndexDateFormatter *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create(0, 0);
    queue = v2->_queue;
    v2->_queue = v3;
  }

  return v2;
}

@end