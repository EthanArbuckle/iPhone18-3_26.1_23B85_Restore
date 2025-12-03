@interface ATSPDSAppInFocus
- (BOOL)collectToFile:(ktrace_file *)file startDate:(id)date endDate:(id)endDate error:(id *)error;
- (BOOL)configureWithLogger:(id)logger machine:(ktrace_machine *)machine options:(id)options dataCategories:(id)categories error:(id *)error;
@end

@implementation ATSPDSAppInFocus

- (BOOL)collectToFile:(ktrace_file *)file startDate:(id)date endDate:(id)endDate error:(id *)error
{
  dateCopy = date;
  endDateCopy = endDate;
  v9 = dateCopy;
  v10 = endDateCopy;
  if (objc_opt_class())
  {
    v11 = objc_alloc_init(NSMutableArray);
    v12 = BiomeLibrary();
    v13 = [v12 App];
    inFocus = [v13 InFocus];
    publisher = [inFocus publisher];

    v56 = 0;
    v57 = &v56;
    v58 = 0x2020000000;
    v59 = 0;
    v50 = 0;
    v51 = &v50;
    v52 = 0x3032000000;
    v53 = sub_15E8;
    v54 = sub_15F8;
    v55 = 0;
    v49[0] = _NSConcreteStackBlock;
    v49[1] = 3221225472;
    v49[2] = sub_1600;
    v49[3] = &unk_41C0;
    v49[4] = &v56;
    v49[5] = &v50;
    v45[0] = _NSConcreteStackBlock;
    v45[1] = 3221225472;
    v45[2] = sub_1714;
    v45[3] = &unk_41E8;
    v46 = v9;
    v47 = v10;
    v16 = v11;
    v48 = v16;
    v17 = [publisher sinkWithCompletion:v49 receiveInput:v45];
    if (v57[3])
    {
      v18 = sub_16D0();
      if (os_signpost_enabled(v18))
      {
        v19 = [v16 count];
        *buf = 134217984;
        v62 = v19;
        _os_signpost_emit_with_name_impl(&dword_0, v18, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "AppInFocusIntervalReadSuccess", "Successfully read back %llu app in-focus intervals", buf, 0xCu);
      }

      v20 = v16;
      v21 = 0;
    }

    else
    {
      v21 = v51[5];
      v22 = v21;
      v20 = 0;
    }

    _Block_object_dispose(&v50, 8);
    _Block_object_dispose(&v56, 8);
  }

  else
  {
    v21 = 0;
    v20 = 0;
  }

  v23 = v21;
  v24 = v23;
  if (v20)
  {
    v25 = objc_alloc_init(NSMutableArray);
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v26 = v20;
    v27 = [v26 countByEnumeratingWithState:&v41 objects:v60 count:16];
    if (v27)
    {
      v28 = *v42;
      do
      {
        for (i = 0; i != v27; i = i + 1)
        {
          if (*v42 != v28)
          {
            objc_enumerationMutation(v26);
          }

          jsonDictST = [*(*(&v41 + 1) + 8 * i) jsonDictST];
          if (jsonDictST)
          {
            [v25 addObject:jsonDictST];
          }
        }

        v27 = [v26 countByEnumeratingWithState:&v41 objects:v60 count:16];
      }

      while (v27);
    }

    v40 = 0;
    v31 = [NSJSONSerialization dataWithJSONObject:v25 options:0 error:&v40];
    v32 = v40;
    v33 = v32;
    v34 = v31 != 0;
    if (v31)
    {
      v35 = v31;
      [v31 bytes];
      [v31 length];
      ktrace_file_append_chunk();
    }

    else if (error)
    {
      v37 = v32;
      *error = v33;
    }
  }

  else if (error)
  {
    v36 = v23;
    v34 = 0;
    *error = v24;
  }

  else
  {
    v34 = 0;
  }

  return v34;
}

- (BOOL)configureWithLogger:(id)logger machine:(ktrace_machine *)machine options:(id)options dataCategories:(id)categories error:(id *)error
{
  categoriesCopy = categories;
  if ([options count])
  {
    if (error)
    {
      v10 = @"AppInFocus passive data source takes no options at this time";
      v11 = 1;
LABEL_7:
      v12 = [NSString stringWithFormat:v10];
      *error = [NSError errorWithCode:v11 description:v12];

      LOBYTE(error) = 0;
    }
  }

  else
  {
    if (![categoriesCopy count])
    {
      LOBYTE(error) = 1;
      goto LABEL_9;
    }

    if (error)
    {
      v11 = 0;
      v10 = @"AppInFocus passive data source  has no data categories at this time";
      goto LABEL_7;
    }
  }

LABEL_9:

  return error;
}

@end