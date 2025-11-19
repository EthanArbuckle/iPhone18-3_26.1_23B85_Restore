@interface NSDateIntervalFormatter(PhotosUICore)
- (__CFString)px_dateTemplateForGranularity:()PhotosUICore abbreviated:onlyCalendarUnit:;
- (id)_px_localizedCapitalizedString:()PhotosUICore;
- (id)_px_substitutions;
- (id)px_attributedStringFromDateInterval:()PhotosUICore defaultAttributes:emphasizedAttributes:;
- (uint64_t)_px_isChineseYearTemplate;
- (uint64_t)px_customizesAttributedString;
@end

@implementation NSDateIntervalFormatter(PhotosUICore)

- (uint64_t)_px_isChineseYearTemplate
{
  v2 = [a1 locale];
  v3 = [v2 languageCode];

  v4 = [a1 dateTemplate];
  if ([v4 isEqualToString:@"y"])
  {
    if ([v3 isEqualToString:@"yue"])
    {
      v5 = 1;
    }

    else
    {
      v5 = [v3 isEqualToString:@"zh"];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_px_substitutions
{
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __58__NSDateIntervalFormatter_PhotosUICore___px_substitutions__block_invoke;
  v13 = &unk_1E7BB81A0;
  v14 = a1;
  v15 = a2;
  if (_px_substitutions_onceToken != -1)
  {
    dispatch_once(&_px_substitutions_onceToken, &v10);
  }

  v3 = [a1 locale];
  v4 = [v3 localeIdentifier];

  v5 = [_px_substitutions_substitutionsByLocaleIdentifier objectForKeyedSubscript:v4];
  if (!v5)
  {
    v6 = _px_substitutions_substitutionsByLocaleIdentifier;
    v7 = [v4 componentsSeparatedByString:@"_"];
    v8 = [v7 firstObject];
    v5 = [v6 objectForKeyedSubscript:v8];
  }

  return v5;
}

- (id)_px_localizedCapitalizedString:()PhotosUICore
{
  v4 = a3;
  if (_px_localizedCapitalizedString__onceToken != -1)
  {
    dispatch_once(&_px_localizedCapitalizedString__onceToken, &__block_literal_global_149);
  }

  v5 = [a1 locale];
  v6 = _px_localizedCapitalizedString__languagesWithCustomCapitalization;
  v7 = [v5 languageCode];
  LOBYTE(v6) = [v6 containsObject:v7];

  if (v6)
  {
    v8 = [v4 mutableCopy];
    if (_px_localizedCapitalizedString__token != -1)
    {
      dispatch_once(&_px_localizedCapitalizedString__token, &__block_literal_global_178);
    }

    v19[0] = 0;
    v19[1] = v19;
    v19[2] = 0x2020000000;
    v20 = 1;
    v9 = [v4 length];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __72__NSDateIntervalFormatter_PhotosUICore___px_localizedCapitalizedString___block_invoke_3;
    v14[3] = &unk_1E7BB8150;
    v18 = v19;
    v10 = v8;
    v15 = v10;
    v16 = v5;
    v17 = v4;
    [v17 enumerateSubstringsInRange:0 options:v9 usingBlock:{3, v14}];
    v11 = v17;
    v12 = v10;

    _Block_object_dispose(v19, 8);
  }

  else
  {
    v12 = v4;
  }

  return v12;
}

- (uint64_t)px_customizesAttributedString
{
  if ([a1 _px_isChineseYearTemplate])
  {
    return 1;
  }

  v3 = [a1 _px_substitutions];
  v2 = [v3 count] != 0;

  return v2;
}

- (id)px_attributedStringFromDateInterval:()PhotosUICore defaultAttributes:emphasizedAttributes:
{
  v8 = a3;
  v65 = a4;
  v9 = a5;
  v10 = [a1 dateTemplate];
  v64 = [a1 locale];
  v11 = [v64 languageCode];
  if (![a1 _px_isChineseYearTemplate] || ((objc_msgSend(a1, "calendar"), v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "startDate"), v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "components:fromDate:", 4, v13), v14 = objc_claimAutoreleasedReturnValue(), v13, objc_msgSend(v8, "endDate"), v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "components:fromDate:", 4, v15), v16 = objc_claimAutoreleasedReturnValue(), v15, v17 = objc_msgSend(v14, "year"), v17 != objc_msgSend(v16, "year")) ? (objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"%li至%li", objc_msgSend(v14, "year"), objc_msgSend(v16, "year")), v18 = objc_claimAutoreleasedReturnValue()) : (v18 = 0), v16, v14, v12, !v18))
  {
    v19 = [a1 stringFromDateInterval:v8];
    v20 = v19;
    v21 = &stru_1F2B87EE0;
    if (v19)
    {
      v21 = v19;
    }

    v18 = v21;
  }

  v22 = [a1 _px_substitutions];
  if ([v22 count])
  {
    v23 = [(__CFString *)v18 mutableCopy];
    v90 = 0;
    v91 = &v90;
    v92 = 0x2020000000;
    v93 = 0;
    v87[0] = MEMORY[0x1E69E9820];
    v87[1] = 3221225472;
    v87[2] = __116__NSDateIntervalFormatter_PhotosUICore__px_attributedStringFromDateInterval_defaultAttributes_emphasizedAttributes___block_invoke;
    v87[3] = &unk_1E7BB8010;
    v24 = v23;
    v88 = v24;
    v89 = &v90;
    [v22 enumerateKeysAndObjectsUsingBlock:v87];
    if (*(v91 + 24) == 1)
    {
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __116__NSDateIntervalFormatter_PhotosUICore__px_attributedStringFromDateInterval_defaultAttributes_emphasizedAttributes___block_invoke_2;
      aBlock[3] = &unk_1E7BB8038;
      v86 = v24;
      v25 = _Block_copy(aBlock);
      v25[2](v25, @"  ", @" ");
      v25[2](v25, @"  ", @" ");
      v25[2](v25, @"  ", @" ");
      v25[2](v25, @"  ", @" ");
    }

    v26 = v24;

    _Block_object_dispose(&v90, 8);
    v18 = v26;
  }

  v27 = [a1 _px_localizedCapitalizedString:v18];

  if ([v10 isEqualToString:@"MMMMy"])
  {
    v62 = v10;
    v60 = v22;
    if (px_attributedStringFromDateInterval_defaultAttributes_emphasizedAttributes__onceToken != -1)
    {
      dispatch_once(&px_attributedStringFromDateInterval_defaultAttributes_emphasizedAttributes__onceToken, &__block_literal_global_15596);
    }

    v28 = [px_attributedStringFromDateInterval_defaultAttributes_emphasizedAttributes__decorationWordsByLanguages objectForKeyedSubscript:v11];
    v82[0] = MEMORY[0x1E69E9820];
    v82[1] = 3221225472;
    v82[2] = __116__NSDateIntervalFormatter_PhotosUICore__px_attributedStringFromDateInterval_defaultAttributes_emphasizedAttributes___block_invoke_4;
    v82[3] = &unk_1E7BB8060;
    v59 = v27;
    v29 = v27;
    v83 = v29;
    v84 = v28;
    v57 = v28;
    v30 = _Block_copy(v82);
    v31 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v29 attributes:v9];
    v77[0] = MEMORY[0x1E69E9820];
    v77[1] = 3221225472;
    v77[2] = __116__NSDateIntervalFormatter_PhotosUICore__px_attributedStringFromDateInterval_defaultAttributes_emphasizedAttributes___block_invoke_5;
    v77[3] = &unk_1E7BB8088;
    v32 = v29;
    v78 = v32;
    v81 = v30;
    v33 = v31;
    v79 = v33;
    v63 = v9;
    v34 = v65;
    v80 = v34;
    v58 = v30;
    v35 = _Block_copy(v77);
    v73[0] = MEMORY[0x1E69E9820];
    v73[1] = 3221225472;
    v73[2] = __116__NSDateIntervalFormatter_PhotosUICore__px_attributedStringFromDateInterval_defaultAttributes_emphasizedAttributes___block_invoke_6;
    v73[3] = &unk_1E7BB80D8;
    v36 = v32;
    v74 = v36;
    v37 = v33;
    v75 = v37;
    v38 = v34;
    v76 = v38;
    v39 = _Block_copy(v73);
    v40 = objc_alloc_init(MEMORY[0x1E696AB78]);
    v41 = [a1 locale];
    [v40 setLocale:v41];

    [v40 setDateFormat:@"y"];
    v42 = [v8 startDate];
    [v40 stringFromDate:v42];
    v44 = v43 = v8;
    v61 = v11;
    v35[2](v35, v44);

    v45 = [v43 endDate];
    v46 = [v40 stringFromDate:v45];
    v35[2](v35, v46);

    v39[2](v39, v57);
    v71[0] = MEMORY[0x1E69E9820];
    v71[1] = 3221225472;
    v71[2] = __116__NSDateIntervalFormatter_PhotosUICore__px_attributedStringFromDateInterval_defaultAttributes_emphasizedAttributes___block_invoke_8;
    v71[3] = &unk_1E7BB8100;
    v72 = v36;
    v47 = _Block_copy(v71);
    v48 = [v37 length];
    v66[0] = MEMORY[0x1E69E9820];
    v66[1] = 3221225472;
    v66[2] = __116__NSDateIntervalFormatter_PhotosUICore__px_attributedStringFromDateInterval_defaultAttributes_emphasizedAttributes___block_invoke_9;
    v66[3] = &unk_1E7BB8128;
    v49 = v38;
    v9 = v63;
    v67 = v49;
    v70 = v47;
    v50 = v37;
    v68 = v50;
    v69 = v63;
    v51 = v47;
    v52 = v48;
    v8 = v43;
    [v50 enumerateAttributesInRange:0 options:v52 usingBlock:{0, v66}];
    v53 = v69;
    v54 = v50;

    v11 = v61;
    v27 = v59;

    v10 = v62;
    v55 = v64;
    v22 = v60;
  }

  else
  {
    v54 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v27 attributes:v9];
    v55 = v64;
  }

  return v54;
}

- (__CFString)px_dateTemplateForGranularity:()PhotosUICore abbreviated:onlyCalendarUnit:
{
  if (a3 == 4)
  {
    v5 = @"y";
  }

  else
  {
    if (a3 == 8)
    {
      v6 = @"MMMMy";
      if (a4)
      {
        v6 = @"MMMy";
      }

      v7 = @"MMM";
      if (!a4)
      {
        v7 = @"MMMM";
      }

      if (a5)
      {
        v6 = v7;
      }
    }

    else
    {
      if (a3 != 16)
      {
        v12 = [MEMORY[0x1E696AAA8] currentHandler];
        [v12 handleFailureInMethod:a2 object:a1 file:@"NSDateIntervalFormatter+PhotosUIFoundation.m" lineNumber:49 description:{@"unsupported granularity %i", a3}];

        abort();
      }

      if (a5)
      {
        v5 = @"d";
        goto LABEL_17;
      }

      v6 = @"dMMMMy";
      if (a4)
      {
        v6 = @"dMMMy";
      }
    }

    v5 = v6;
  }

LABEL_17:

  return v5;
}

@end