@interface PXCMMSharePromptStringGenerator
+ (id)_attributedStringWithString:(id)string attributes:(id)attributes boldFont:(id)font boldRange1:(_NSRange)range1 boldRange2:(_NSRange)range2;
+ (id)_stringWithComponentsCount:(unint64_t)count components:(id)components containsOtherPeople:(BOOL)people outBoldRange1:(_NSRange *)range1 outBoldRange2:(_NSRange *)range2;
+ (id)sharePromptStringWithAttributes:(id)attributes boldFont:(id)font lines:(int64_t)lines width:(double)width names:(id)names containsUnverifiedPersons:(BOOL)persons;
@end

@implementation PXCMMSharePromptStringGenerator

+ (id)_stringWithComponentsCount:(unint64_t)count components:(id)components containsOtherPeople:(BOOL)people outBoldRange1:(_NSRange *)range1 outBoldRange2:(_NSRange *)range2
{
  peopleCopy = people;
  componentsCopy = components;
  v14 = [componentsCopy count];
  if (v14 < count)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXCMMSharePromptStringGenerator.m" lineNumber:110 description:{@"Invalid parameter not satisfying: %@", @"count <= totalCount"}];
  }

  v15 = PXLocalizedStringFromTable(@"PXShareWithFriends_QuestionMark", @"PhotosUICore");
  if (count)
  {
    v16 = [MEMORY[0x1E695DF70] arrayWithCapacity:2];
    if (count == 1 || peopleCopy || v14 != count)
    {
      v20 = [componentsCopy subarrayWithRange:{0, count}];
      v18 = [v20 componentsJoinedByString:{@", "}];

      [v16 addObject:v18];
    }

    else
    {
      v17 = [componentsCopy subarrayWithRange:{0, count - 1}];
      v18 = [v17 componentsJoinedByString:{@", "}];

      [v16 addObject:v18];
      lastObject = [componentsCopy lastObject];
      [v16 addObject:lastObject];
    }

    v30 = 0;
    v31 = &v30;
    v32 = 0x3032000000;
    v33 = __Block_byref_object_copy__18739;
    v34 = __Block_byref_object_dispose__18740;
    v35 = 0;
    v21 = v14 != count || peopleCopy;
    v22 = @"PXCMMSuggestionBannerSharePrompt_TwoNames";
    if (count == 1)
    {
      v22 = @"PXCMMSuggestionBannerSharePrompt_OneName";
    }

    if (v21)
    {
      v23 = @"PXCMMSuggestionBannerSharePrompt_Others";
    }

    else
    {
      v23 = v22;
    }

    v24 = PXLocalizedStringFromTable(v23, @"PhotosUICore");
    v25 = v31[5];
    v31[5] = v24;

    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __121__PXCMMSharePromptStringGenerator__stringWithComponentsCount_components_containsOtherPeople_outBoldRange1_outBoldRange2___block_invoke;
    v29[3] = &unk_1E772F098;
    v29[4] = &v30;
    v29[5] = range1;
    v29[6] = range2;
    [v16 enumerateObjectsUsingBlock:v29];
    v26 = v31[5];

    _Block_object_dispose(&v30, 8);
    v15 = v26;
  }

  return v15;
}

void __121__PXCMMSharePromptStringGenerator__stringWithComponentsCount_components_containsOtherPeople_outBoldRange1_outBoldRange2___block_invoke(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v25 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = [*(*(a1[4] + 8) + 40) rangeOfString:@"__PERSON_NAME__"];
  if (v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v17 = v8;
    v18 = [*(*(a1[4] + 8) + 40) stringByReplacingCharactersInRange:v8 withString:{v9, v7}];
    v19 = *(a1[4] + 8);
    v20 = *(v19 + 40);
    *(v19 + 40) = v18;

    if (a3 == 1)
    {
      v21 = a1[6];
      if (!v21)
      {
        goto LABEL_13;
      }
    }

    else
    {
      if (a3)
      {
        goto LABEL_13;
      }

      v21 = a1[5];
      if (!v21)
      {
        goto LABEL_13;
      }
    }

    v22 = [v7 length];
    *v21 = v17;
    v21[1] = v22;
    goto LABEL_13;
  }

  v10 = a1[5];
  if (v10)
  {
    *v10 = xmmword_1A5380D90;
  }

  v11 = a1[6];
  if (v11)
  {
    *v11 = xmmword_1A5380D90;
  }

  v12 = PLSharingGetLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v13 = *(*(a1[4] + 8) + 40);
    v23 = 138412290;
    v24 = v13;
    _os_log_impl(&dword_1A3C1C000, v12, OS_LOG_TYPE_ERROR, "Failed to locate marker string in localized string: %@", &v23, 0xCu);
  }

  v14 = PXLocalizedStringFromTable(@"PXShareWithFriends_QuestionMark", @"PhotosUICore");
  v15 = *(a1[4] + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = v14;

  *a4 = 1;
LABEL_13:
}

+ (id)_attributedStringWithString:(id)string attributes:(id)attributes boldFont:(id)font boldRange1:(_NSRange)range1 boldRange2:(_NSRange)range2
{
  length = range1.length;
  location = range1.location;
  v30[1] = *MEMORY[0x1E69E9840];
  stringCopy = string;
  attributesCopy = attributes;
  fontCopy = font;
  if (stringCopy)
  {
    if (attributesCopy)
    {
      goto LABEL_3;
    }

LABEL_16:
    [MEMORY[0x1E696AAA8] currentHandler];
    v25 = v24 = length;
    [v25 handleFailureInMethod:a2 object:self file:@"PXCMMSharePromptStringGenerator.m" lineNumber:88 description:{@"Invalid parameter not satisfying: %@", @"attributes"}];

    length = v24;
    if (fontCopy)
    {
      goto LABEL_4;
    }

LABEL_17:
    [MEMORY[0x1E696AAA8] currentHandler];
    v27 = v26 = length;
    [v27 handleFailureInMethod:a2 object:self file:@"PXCMMSharePromptStringGenerator.m" lineNumber:89 description:{@"Invalid parameter not satisfying: %@", @"boldFont"}];

    length = v26;
    goto LABEL_4;
  }

  [MEMORY[0x1E696AAA8] currentHandler];
  v23 = v22 = length;
  [v23 handleFailureInMethod:a2 object:self file:@"PXCMMSharePromptStringGenerator.m" lineNumber:87 description:{@"Invalid parameter not satisfying: %@", @"string"}];

  length = v22;
  if (!attributesCopy)
  {
    goto LABEL_16;
  }

LABEL_3:
  if (!fontCopy)
  {
    goto LABEL_17;
  }

LABEL_4:
  v16 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:stringCopy attributes:attributesCopy];
  v17 = v16;
  if (location == 0x7FFFFFFFFFFFFFFFLL && range2.location == 0x7FFFFFFFFFFFFFFFLL)
  {
    v18 = v16;
  }

  else
  {
    v28 = length;
    v29 = *MEMORY[0x1E69DB648];
    v30[0] = fontCopy;
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:&v29 count:1];
    v20 = [v17 mutableCopy];
    v18 = v20;
    if (location != 0x7FFFFFFFFFFFFFFFLL)
    {
      [v20 setAttributes:v19 range:{location, v28}];
    }

    if (range2.location != 0x7FFFFFFFFFFFFFFFLL)
    {
      [v18 setAttributes:v19 range:{range2.location, range2.length}];
    }
  }

  return v18;
}

+ (id)sharePromptStringWithAttributes:(id)attributes boldFont:(id)font lines:(int64_t)lines width:(double)width names:(id)names containsUnverifiedPersons:(BOOL)persons
{
  v47 = *MEMORY[0x1E69E9840];
  attributesCopy = attributes;
  fontCopy = font;
  namesCopy = names;
  if (!attributesCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXCMMSharePromptStringGenerator.m" lineNumber:45 description:{@"Invalid parameter not satisfying: %@", @"attributes"}];

    if (fontCopy)
    {
      goto LABEL_3;
    }

LABEL_29:
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXCMMSharePromptStringGenerator.m" lineNumber:46 description:{@"Invalid parameter not satisfying: %@", @"boldFont"}];

    goto LABEL_3;
  }

  if (!fontCopy)
  {
    goto LABEL_29;
  }

LABEL_3:
  if (width <= 0.0)
  {
    PXAssertGetLog();
  }

  personsCopy = persons;
  linesCopy = lines;
  v18 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(namesCopy, "count")}];
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v38 = namesCopy;
  v19 = namesCopy;
  v20 = [v19 countByEnumeratingWithState:&v42 objects:v46 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = 0;
    v23 = *v43;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v43 != v23)
        {
          objc_enumerationMutation(v19);
        }

        v25 = *(*(&v42 + 1) + 8 * i);
        if ([v25 length])
        {
          [v18 addObject:v25];
        }

        else
        {
          v22 = 1;
        }
      }

      v21 = [v19 countByEnumeratingWithState:&v42 objects:v46 count:16];
    }

    while (v21);
  }

  else
  {
    v22 = 0;
  }

  v26 = [v18 count];
  if (v26 < 0)
  {
    goto LABEL_24;
  }

  v27 = v26;
  v28 = personsCopy | v22;
  while (1)
  {
    v40 = xmmword_1A5380D90;
    *buf = xmmword_1A5380D90;
    v29 = [self _stringWithComponentsCount:v27 components:v18 containsOtherPeople:v28 & 1 outBoldRange1:buf outBoldRange2:&v40];
    v30 = [self _attributedStringWithString:v29 attributes:attributesCopy boldFont:fontCopy boldRange1:*buf boldRange2:{*&buf[8], v40}];
    if (![MEMORY[0x1E69DCC10] px_isTruncatedForAttributedString:v30 forWidth:linesCopy lines:width])
    {
      break;
    }

    if (v27-- <= 0)
    {
      goto LABEL_24;
    }
  }

  if (!v30)
  {
LABEL_24:
    v32 = objc_alloc(MEMORY[0x1E696AAB0]);
    v33 = PXLocalizedStringFromTable(@"PXShareWithFriends_QuestionMark", @"PhotosUICore");
    v30 = [v32 initWithString:v33];
  }

  return v30;
}

@end