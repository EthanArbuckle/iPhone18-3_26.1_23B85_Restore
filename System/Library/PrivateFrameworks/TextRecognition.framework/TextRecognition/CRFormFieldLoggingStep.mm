@interface CRFormFieldLoggingStep
- (id)process:(id)process externalFields:(id)fields document:(id)document options:(id)options;
- (void)_logField:(id)field index:(unint64_t)index subIndex:(unint64_t)subIndex;
@end

@implementation CRFormFieldLoggingStep

- (void)_logField:(id)field index:(unint64_t)index subIndex:(unint64_t)subIndex
{
  v65 = *MEMORY[0x1E69E9840];
  fieldCopy = field;
  if ([fieldCopy fieldType] == 1)
  {
    v8 = +[CRFormContentTypeUtilities shortStringFromContentType:](CRFormContentTypeUtilities, "shortStringFromContentType:", [fieldCopy textContentType]);
    [fieldCopy suggestedLineHeight];
    v10 = v9;
    maxCharacterCount = [fieldCopy maxCharacterCount];
  }

  else
  {
    maxCharacterCount = 0;
    v8 = &stru_1F2BB4348;
    v10 = 0;
  }

  v38 = v8;
  v12 = CRCastAsClass<CRFormFieldOutputRegion>(fieldCopy);
  v13 = v12;
  v14 = &stru_1F2BB4348;
  if (v12)
  {
    indexInGlobalOrder = [v12 indexInGlobalOrder];
    labelRegion = [v13 labelRegion];
    text = [labelRegion text];
    v37 = [text length];

    labelRegion2 = [v13 labelRegion];
    text2 = [labelRegion2 text];
    v20 = text2;
    if (text2)
    {
      v21 = text2;
    }

    else
    {
      v21 = &stru_1F2BB4348;
    }

    v14 = v21;
  }

  else
  {
    v37 = 0;
    indexInGlobalOrder = 0x7FFFFFFFFFFFFFFFLL;
  }

  v22 = indexInGlobalOrder;
  if (subIndex)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu-%lu", index, subIndex];
  }

  else
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu", index];
  }
  v23 = ;
  v24 = maxCharacterCount;
  v25 = CROSLogForCategory(6);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
  {
    boundingQuad = [fieldCopy boundingQuad];
    [boundingQuad topLeft];
    v27 = v26;
    boundingQuad2 = [fieldCopy boundingQuad];
    [boundingQuad2 topLeft];
    v29 = v28;
    boundingQuad3 = [fieldCopy boundingQuad];
    [boundingQuad3 size];
    v32 = v31;
    boundingQuad4 = [fieldCopy boundingQuad];
    [boundingQuad4 size];
    *buf = 138415363;
    v40 = v23;
    v41 = 2048;
    v42 = v27;
    v43 = 2048;
    v44 = v29;
    v45 = 2048;
    v46 = v32;
    v47 = 2048;
    v48 = v34;
    v49 = 2048;
    fieldType = [fieldCopy fieldType];
    v51 = 2048;
    fieldSource = [fieldCopy fieldSource];
    v53 = 2113;
    v54 = v38;
    v55 = 2117;
    v56 = v14;
    v57 = 2048;
    v58 = v37;
    v59 = 2048;
    v60 = v22;
    v61 = 2048;
    v62 = v10;
    v63 = 2048;
    v64 = v24;
    _os_log_impl(&dword_1B40D2000, v25, OS_LOG_TYPE_DEBUG, "Final result #%@ x:%5.3f y:%5.3f w:%5.3f h:%5.3f type:%lu source:%lu contentType:%{private}@ label:'%{sensitive}@' labelLength:%lu globalOrder:%ld lineHeight:%5.3f charCount:%lu.", buf, 0x84u);
  }
}

- (id)process:(id)process externalFields:(id)fields document:(id)document options:(id)options
{
  v70 = *MEMORY[0x1E69E9840];
  processCopy = process;
  fieldsCopy = fields;
  v9 = CROSLogForCategory(6);
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_INFO);

  if (v10)
  {
    v40 = fieldsCopy;
    v11 = CROSLogForCategory(6);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134217984;
      v62 = [processCopy count];
      _os_log_impl(&dword_1B40D2000, v11, OS_LOG_TYPE_DEBUG, "CRFormPostProcessor: CRFormFieldLoggingStep is running (#input:%lu).", buf, 0xCu);
    }

    v45 = [MEMORY[0x1E695DF70] arrayWithArray:fieldsCopy];
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    obj = processCopy;
    v12 = [obj countByEnumeratingWithState:&v54 objects:v69 count:16];
    if (v12)
    {
      v13 = *v55;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v55 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v54 + 1) + 8 * i);
          v16 = CROSLogForCategory(6);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
          {
            indexInGlobalOrder = [v15 indexInGlobalOrder];
            v18 = [v45 count];
            fieldSource = [v15 fieldSource];
            v20 = [v15 debugDescription];
            v21 = v20;
            uTF8String = [v20 UTF8String];
            *buf = 134218754;
            v62 = indexInGlobalOrder;
            v63 = 2048;
            v64 = v18;
            v65 = 2048;
            v66 = fieldSource;
            v67 = 2080;
            v68 = uTF8String;
            _os_log_impl(&dword_1B40D2000, v16, OS_LOG_TYPE_DEBUG, "Inserting field with index %ld in array with size %ld: source %ld, %s", buf, 0x2Au);
          }

          [v45 insertObject:v15 atIndex:{objc_msgSend(v15, "indexInGlobalOrder")}];
        }

        v12 = [obj countByEnumeratingWithState:&v54 objects:v69 count:16];
      }

      while (v12);
    }

    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    obja = v45;
    v23 = [obja countByEnumeratingWithState:&v50 objects:v60 count:16];
    if (v23)
    {
      v24 = 0;
      v42 = *v51;
      do
      {
        for (j = 0; j != v23; ++j)
        {
          if (*v51 != v42)
          {
            objc_enumerationMutation(obja);
          }

          v59 = *(*(&v50 + 1) + 8 * j);
          v26 = v59;
          v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v59 count:{1, v40}];
          v28 = CRCastAsClass<CRFormFieldOutputRegion>(v26);
          v29 = v28;
          if (v28)
          {
            formFieldRegions = [v28 formFieldRegions];
            v31 = [formFieldRegions count] == 0;

            if (!v31)
            {
              formFieldRegions2 = [v29 formFieldRegions];
              v33 = [v27 arrayByAddingObjectsFromArray:formFieldRegions2];

              v27 = v33;
            }
          }

          v48 = 0u;
          v49 = 0u;
          v46 = 0u;
          v47 = 0u;
          v34 = v27;
          v35 = [v34 countByEnumeratingWithState:&v46 objects:v58 count:16];
          if (v35)
          {
            v36 = 0;
            v37 = *v47;
            do
            {
              for (k = 0; k != v35; ++k)
              {
                if (*v47 != v37)
                {
                  objc_enumerationMutation(v34);
                }

                [(CRFormFieldLoggingStep *)self _logField:*(*(&v46 + 1) + 8 * k) index:v24 subIndex:v36++];
              }

              v35 = [v34 countByEnumeratingWithState:&v46 objects:v58 count:16];
            }

            while (v35);
          }

          ++v24;
        }

        v23 = [obja countByEnumeratingWithState:&v50 objects:v60 count:16];
      }

      while (v23);
    }

    fieldsCopy = v40;
  }

  return processCopy;
}

@end