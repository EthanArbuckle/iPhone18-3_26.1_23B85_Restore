@interface PXMemoriesTitleHelper
+ (PXMemoriesTitleHelper)defaultHelper;
- (BOOL)_isTextLongerThanPreferredLine:(id)line range:(_NSRange)range minimumScaleFactor:(double)factor;
- (PXMemoriesTitleHelper)init;
- (id)displayableTextForTitle:(id)title intent:(int64_t)intent;
- (id)titleForDisplayableText:(id)text titleCategory:(int64_t)category options:(unint64_t)options;
@end

@implementation PXMemoriesTitleHelper

- (BOOL)_isTextLongerThanPreferredLine:(id)line range:(_NSRange)range minimumScaleFactor:(double)factor
{
  length = range.length;
  location = range.location;
  lineCopy = line;
  whitespaceCharacterSet = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
  if (length >= 2)
  {
    v11 = length;
    v12 = location;
    while ([whitespaceCharacterSet characterIsMember:{objc_msgSend(lineCopy, "characterAtIndex:", v12)}])
    {
      ++v12;
      if (--v11 <= 1)
      {
        length = 1;
        goto LABEL_11;
      }
    }

    v13 = location + length - 1;
    length = 1;
    while ([whitespaceCharacterSet characterIsMember:{objc_msgSend(lineCopy, "characterAtIndex:", v13)}])
    {
      --v11;
      --v13;
      if (v11 <= 1)
      {
        goto LABEL_11;
      }
    }

    length = v11;
  }

LABEL_11:
  v14 = 1.0 / factor * [(PXMemoriesTitleHelper *)self preferredLineLength]< length;

  return v14;
}

- (id)titleForDisplayableText:(id)text titleCategory:(int64_t)category options:(unint64_t)options
{
  optionsCopy = options;
  textCopy = text;
  v9 = textCopy;
  if (-[PXMemoriesTitleHelper _isTextLongerThanPreferredLine:range:minimumScaleFactor:](self, "_isTextLongerThanPreferredLine:range:minimumScaleFactor:", textCopy, 0, [textCopy length], 1.0))
  {
    if (optionsCopy)
    {
      punctuationCharacterSet = [MEMORY[0x1E696AB08] punctuationCharacterSet];
      v19 = [punctuationCharacterSet mutableCopy];

      whitespaceCharacterSet = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
      [v19 formUnionWithCharacterSet:whitespaceCharacterSet];

      [v19 removeCharactersInString:@"]}"]);
      v48[0] = 0;
      v48[1] = v48;
      v48[2] = 0x2020000000;
      v48[3] = 0;
      v42 = 0;
      v43 = &v42;
      v44 = 0x3032000000;
      v45 = __Block_byref_object_copy_;
      v46 = __Block_byref_object_dispose_;
      v47 = 0;
      v38 = 0;
      v39 = &v38;
      v40 = 0x2020000000;
      v41 = 0;
      v21 = [textCopy length];
      v27 = MEMORY[0x1E69E9820];
      v28 = 3221225472;
      v29 = __71__PXMemoriesTitleHelper_titleForDisplayableText_titleCategory_options___block_invoke_19;
      v30 = &unk_1E7BB5C60;
      v34 = v48;
      v22 = v19;
      v31 = v22;
      v9 = textCopy;
      v32 = v9;
      selfCopy = self;
      v36 = &v38;
      categoryCopy = category;
      v35 = &v42;
      [v9 enumerateSubstringsInRange:0 options:v21 usingBlock:{3, &v27}];
      v23 = v43[5];
      if (v23)
      {
        v24 = v23;

        if (*(v39 + 24) == 1)
        {
          v25 = [(PXMemoriesTitleHelper *)self truncationToken:v27];
          v9 = [v24 stringByAppendingString:v25];
        }

        else
        {
          v9 = v24;
        }
      }

      _Block_object_dispose(&v38, 8);
      _Block_object_dispose(&v42, 8);

      _Block_object_dispose(v48, 8);
    }

    else
    {
      v42 = 0;
      v43 = &v42;
      v44 = 0x2020000000;
      v45 = [textCopy length] >> 1;
      v10 = [textCopy length];
      v49[0] = MEMORY[0x1E69E9820];
      v49[1] = 3221225472;
      v49[2] = __71__PXMemoriesTitleHelper_titleForDisplayableText_titleCategory_options___block_invoke;
      v49[3] = &unk_1E7BB5E58;
      v49[4] = &v42;
      [textCopy enumerateSubstringsInRange:0 options:v10 usingBlock:{3, v49}];
      v11 = v43[3];
      if (v11 < [textCopy length])
      {
        v12 = objc_msgSend(MEMORY[0x1E696AB08], "characterSetWithCharactersInString:", @"([{");
        v13 = v43[3];
        if (v13 >= 2)
        {
          do
          {
            if (![v12 characterIsMember:{objc_msgSend(textCopy, "characterAtIndex:", v13 - 1)}])
            {
              break;
            }

            v14 = v43[3];
            v13 = v14 - 1;
            v43[3] = v14 - 1;
          }

          while (v14 > 2);
        }
      }

      v15 = v43[3];
      v9 = textCopy;
      if (v15 >= 1)
      {
        v9 = textCopy;
        if (v15 < [textCopy length])
        {
          v16 = v43[3];
          softLineBreak = [(PXMemoriesTitleHelper *)self softLineBreak];
          v9 = [textCopy stringByReplacingCharactersInRange:v16 withString:{0, softLineBreak}];
        }
      }

      _Block_object_dispose(&v42, 8);
    }
  }

  return v9;
}

uint64_t __71__PXMemoriesTitleHelper_titleForDisplayableText_titleCategory_options___block_invoke(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, _BYTE *a7)
{
  v7 = *(*(result + 32) + 8);
  v8 = *(v7 + 24);
  if (v8 >= a5 && v8 - a5 < a6)
  {
    if (v8 >= a3 + (a4 >> 1))
    {
      v10 = a6;
    }

    else
    {
      v10 = 0;
    }

    *(v7 + 24) = a5 + v10;
    *a7 = 1;
  }

  return result;
}

void __71__PXMemoriesTitleHelper_titleForDisplayableText_titleCategory_options___block_invoke_19(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  v11 = a2;
  if (++*(*(*(a1 + 56) + 8) + 24) >= 2)
  {
    v30 = v11;
    v12 = a5 + a6;
    do
    {
      v13 = v12;
      if (v12 < 2)
      {
        break;
      }

      --v12;
    }

    while (([*(a1 + 32) characterIsMember:{objc_msgSend(*(a1 + 40), "characterAtIndex:", v13 - 1)}] & 1) != 0);
    if (v13 == [*(a1 + 40) length] - 1)
    {
      v14 = v13 + 1;
    }

    else
    {
      v14 = v13;
    }

    v15 = *(a1 + 48);
    v16 = [*(a1 + 40) substringToIndex:v14];
    v17 = [v15 titleForDisplayableText:v16 titleCategory:*(a1 + 80) options:0];

    v18 = v14 < [*(a1 + 40) length];
    v19 = *(*(a1 + 64) + 8);
    v21 = *(v19 + 40);
    v20 = (v19 + 40);
    if (v21)
    {
      v22 = [*(a1 + 48) softLineBreak];
      v23 = [v17 rangeOfString:v22 options:4];
      v25 = v24;

      v26 = [v17 length];
      if (v23 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v27 = v23 + v25;
        v28 = v26 - v27;
        v29 = *(a1 + 48);
        [v29 minimumScaleFactor];
        if ([v29 _isTextLongerThanPreferredLine:v17 range:v27 minimumScaleFactor:v28])
        {
          *a7 = 1;
LABEL_14:

          v11 = v30;
          goto LABEL_15;
        }
      }

      v20 = (*(*(a1 + 64) + 8) + 40);
    }

    objc_storeStrong(v20, v17);
    *(*(*(a1 + 72) + 8) + 24) = v18;
    goto LABEL_14;
  }

LABEL_15:
}

- (id)displayableTextForTitle:(id)title intent:(int64_t)intent
{
  titleCopy = title;
  v7 = titleCopy;
  if (intent <= 2)
  {
    v8 = off_1E7BB5C80[intent];
    softLineBreak = [(PXMemoriesTitleHelper *)self softLineBreak];
    v10 = [titleCopy stringByReplacingOccurrencesOfString:softLineBreak withString:v8];

    v11 = [v10 stringByReplacingOccurrencesOfString:@"\n" withString:v8];

    v7 = [v11 stringByReplacingOccurrencesOfString:@"\u2028" withString:v8];
  }

  return v7;
}

- (PXMemoriesTitleHelper)init
{
  v7.receiver = self;
  v7.super_class = PXMemoriesTitleHelper;
  v2 = [(PXMemoriesTitleHelper *)&v7 init];
  v3 = v2;
  if (v2)
  {
    softLineBreak = v2->_softLineBreak;
    v2->_softLineBreak = @"\n";

    truncationToken = v3->_truncationToken;
    v3->_truncationToken = @"…";

    v3->_preferredLineLength = 11;
    v3->_minimumScaleFactor = 0.600000024;
  }

  return v3;
}

+ (PXMemoriesTitleHelper)defaultHelper
{
  if (defaultHelper_onceToken != -1)
  {
    dispatch_once(&defaultHelper_onceToken, &__block_literal_global_4138);
  }

  v3 = defaultHelper_defaultHelper;

  return v3;
}

uint64_t __38__PXMemoriesTitleHelper_defaultHelper__block_invoke()
{
  defaultHelper_defaultHelper = objc_alloc_init(PXMemoriesTitleHelper);

  return MEMORY[0x1EEE66BB8]();
}

@end