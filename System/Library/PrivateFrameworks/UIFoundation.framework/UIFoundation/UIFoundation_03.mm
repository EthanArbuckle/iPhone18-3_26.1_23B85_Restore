void sub_18E7B9250(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose(&a41, 8);
  _Block_object_dispose((v41 - 208), 8);
  _Unwind_Resume(a1);
}

uint64_t *_NSFontAttributeNames()
{
  if (_NSFontAttributeNames_onceToken != -1)
  {
    _NSFontAttributeNames_cold_1();
  }

  return &_NSFontAttributeNames_names;
}

const char *_extensionTokenForPath(__int128 *a1, void *a2)
{
  if (!a2)
  {
    return 0;
  }

  [a2 fileSystemRepresentation];
  v4 = *a1;
  v5 = a1[1];
  result = sandbox_extension_issue_file_to_process();
  if (result)
  {
    return [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:result length:strlen(result) + 1 freeWhenDone:{1, v4, v5}];
  }

  return result;
}

void *_NSReadAttributedStringFromURLOrDataSync(void *a1, void *a2, uint64_t a3, void *a4, void *a5, void *a6)
{
  v12 = dispatch_semaphore_create(0);
  objc_initWeak(&location, v12);
  v13 = objc_loadWeak(&location);
  dispatch_retain(v13);
  v44 = 0;
  v45 = &v44;
  v46 = 0x3052000000;
  v47 = __Block_byref_object_copy__3;
  v48 = __Block_byref_object_dispose__3;
  v49 = 0;
  v38 = 0;
  v39 = &v38;
  v40 = 0x3052000000;
  v41 = __Block_byref_object_copy__3;
  v42 = __Block_byref_object_dispose__3;
  v43 = 0;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3052000000;
  v35 = __Block_byref_object_copy__3;
  v36 = __Block_byref_object_dispose__3;
  v37 = 0;
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = ___NSReadAttributedStringFromURLOrDataSync_block_invoke;
  v30[3] = &unk_1E7266A38;
  v30[4] = &v44;
  v30[5] = &v38;
  v30[6] = &v32;
  objc_copyWeak(&v31, &location);
  v14 = _NSReadAttributedStringFromURLOrDataAsync(a2, a3, a4, v30);
  v15 = [a4 objectForKeyedSubscript:NSTimeoutDocumentOption];
  if (v15)
  {
    [v15 doubleValue];
    v17 = (v16 * 1000000000.0);
  }

  else
  {
    v17 = 60000000000;
  }

  v18 = objc_loadWeak(&location);
  v19 = dispatch_time(0, v17);
  v20 = dispatch_semaphore_wait(v18, v19);
  v21 = objc_loadWeak(&location);
  dispatch_release(v21);
  v22 = v33[5];
  if (v22)
  {
    if (a6)
    {
      *a6 = v22;
    }

    else
    {
    }

LABEL_13:
    a1 = 0;
    goto LABEL_14;
  }

  if (v20)
  {
    v23 = MEMORY[0x1E695DF90];
    v24 = *MEMORY[0x1E696A250];
    v25 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:4097 userInfo:0];
    v26 = [v23 dictionaryWithObject:v25 forKey:*MEMORY[0x1E696AA08]];
    v27 = [a2 path];
    if (v27)
    {
      [v26 setObject:v27 forKeyedSubscript:*MEMORY[0x1E696A368]];
    }

    -[_NSAttributedStringAsyncReadReply cancelWithError:](v14, "cancelWithError:", [MEMORY[0x1E696ABC0] errorWithDomain:v24 code:259 userInfo:v26]);

    goto LABEL_13;
  }

  if (v45[5])
  {
    if (a1)
    {
      [a1 setAttributedString:?];
    }

    else
    {
      a1 = v45[5];
    }

    v29 = v39[5];
    if (a5)
    {
      *a5 = v29;
    }

    else
    {
    }
  }

LABEL_14:
  objc_destroyWeak(&v31);
  _Block_object_dispose(&v32, 8);
  _Block_object_dispose(&v38, 8);
  _Block_object_dispose(&v44, 8);
  objc_destroyWeak(&location);
  return a1;
}

void sub_18E7BB5E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va1, a10);
  va_start(va, a10);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  objc_destroyWeak((v10 + 56));
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v11 - 136), 8);
  objc_destroyWeak((v11 - 88));
  _Unwind_Resume(a1);
}

void ___createAttachmentAndBidiCharSets_block_invoke()
{
  v0 = _attachmentCharSet;
  if (!_attachmentCharSet)
  {
    v0 = [MEMORY[0x1E696AB08] characterSetWithRange:{65532, 1}];
    _attachmentCharSet = v0;
  }

  if (!_nonAttachmentCharSet)
  {
    _nonAttachmentCharSet = [v0 invertedSet];
  }

  v1 = _bidiEmbeddingAndOverrideCharSet;
  if (!_bidiEmbeddingAndOverrideCharSet)
  {
    v1 = [MEMORY[0x1E696AB08] characterSetWithRange:{8234, 5}];
    _bidiEmbeddingAndOverrideCharSet = v1;
  }

  if (!_bidiControlCharacterSet)
  {
    v2 = [v1 mutableCopy];
    [v2 addCharactersInRange:{8206, 2}];
    _bidiControlCharacterSet = [v2 copy];
  }
}

uint64_t __NSAttributedStringFileTypeToDocumentTypeDictionary_block_invoke()
{
  v6 = objc_alloc(MEMORY[0x1E695DF20]);
  v0 = [*MEMORY[0x1E6982F40] identifier];
  v1 = [*MEMORY[0x1E6982F90] identifier];
  v2 = [*MEMORY[0x1E6982F98] identifier];
  v3 = [*MEMORY[0x1E6982DC0] identifier];
  v4 = [*MEMORY[0x1E6982E18] identifier];
  result = [v6 initWithObjectsAndKeys:{@"NSPlainText", v0, @"NSRTF", v1, @"NSRTFD", v2, @"NSRTFD", v3, @"NSHTML", v4, @"NSWebArchive", objc_msgSend(*MEMORY[0x1E6983098], "identifier"), 0}];
  NSAttributedStringFileTypeToDocumentTypeDictionary___fileTypeToDocTypeDict = result;
  return result;
}

void *createOrResetFileHandle(void *a1, uint64_t a2, void *a3, int a4)
{
  v4 = a1;
  if (a1 || (v4 = [a3 objectForKey:@"NSFileHandle"]) != 0)
  {
    [v4 seekToFileOffset:0];
  }

  else
  {
    v8 = [MEMORY[0x1E696AC00] fileHandleForReadingAtPath:a2];
    v4 = v8;
    if (a4 && v8)
    {
      fcntl([v8 fileDescriptor], 48, 1);
    }
  }

  return v4;
}

uint64_t UINibDecoderDecodeSet(void *a1, void *a2)
{
  v16[32] = *MEMORY[0x1E69E9840];
  v2 = (a1[6] + 8 * a1[23]);
  v3 = v2[1];
  if (!v3)
  {
    UINibDecoderDecodeSet_cold_1();
  }

  v6 = *v2;
  v7 = (v3 - 1);
  if (v7 < 0x21)
  {
    v8 = v16;
    if (v3 == 1)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v8 = malloc_type_malloc(8 * v7, 0x80040B8603338uLL);
  }

  v9 = 0;
  v10 = 0;
  v11 = v6 + 1;
  v12 = v3 - 1;
  do
  {
    v13 = UINibDecoderDecodeObjectForValue(a1, a1[7] + 8 * v11, *(a1[8] + v11));
    v8[v9] = v13;
    v10 |= v13 == 0;
    ++v11;
    ++v9;
  }

  while (v12 != v9);
  if (v10)
  {

    v14 = 0;
    goto LABEL_10;
  }

LABEL_9:
  v14 = [a2 initWithObjects:v8 count:v7];
LABEL_10:
  if (v8 != v16)
  {
    free(v8);
  }

  return v14;
}

void sub_18E7BF168(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18E7C02EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18E7C20B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak(&a15);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18E7C2570(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak(&a16);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18E7C2944(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak(&a18);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18E7C51EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18E7C5338(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18E7C5550(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18E7C5F40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

double _NSTextScalingConvertFontPointSize(uint64_t a1, uint64_t a2, double result)
{
  if (a1 != a2)
  {
    return dbl_18E856420[a2 == 1] * result * 100000.0 / 100000.0;
  }

  return result;
}

void sub_18E7C811C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

CFLocaleRef __NSCreateLocaleForPreferredLanguage(CFStringRef localeIdentifier)
{
  v1 = *MEMORY[0x1E695E480];
  CanonicalLocaleIdentifierFromString = CFLocaleCreateCanonicalLocaleIdentifierFromString(*MEMORY[0x1E695E480], localeIdentifier);
  v3 = CFLocaleCreate(v1, CanonicalLocaleIdentifierFromString);
  if (CanonicalLocaleIdentifierFromString)
  {
    CFRelease(CanonicalLocaleIdentifierFromString);
  }

  return v3;
}

void sub_18E7CD7D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18E7CDD20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18E7CDE7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18E7CE0E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v7 + 40));
  _Unwind_Resume(a1);
}

uint64_t __NSTextHighlightShapeProviderHasTypingAttributesOverride(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = [v4 textContentManager];
  v6 = [v5 documentRange];
  v7 = [v6 endLocation];

  v8 = [v4 textSelections];

  v9 = [v8 firstObject];

  v10 = [v9 textRanges];
  v11 = [v10 firstObject];

  v12 = [v3 endLocation];

  if (![v7 isEqual:v12] || (objc_msgSend(v11, "isEmpty") & 1) == 0)
  {

LABEL_8:
    v18 = 0;
    goto LABEL_9;
  }

  v13 = [v11 location];
  v14 = [v13 isEqual:v7];

  if (!v14)
  {
    goto LABEL_8;
  }

  v15 = [v9 typingAttributes];
  if (!v15)
  {
    goto LABEL_8;
  }

  v16 = v15;
  v17 = [v15 objectForKeyedSubscript:@"NSTextHighlightStyle"];

  if (v17)
  {
    goto LABEL_8;
  }

  v18 = 1;
LABEL_9:

  return v18;
}

void sub_18E7CE554(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__56(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_18E7CE870(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t OUTLINED_FUNCTION_10_1(uint64_t a1)
{
  v4 = *(v1 + 64);

  return [v4 addObject:a1];
}

uint64_t OUTLINED_FUNCTION_14_0(uint64_t a1)
{
  v2 = *(a1 + 56);

  return [v2 count];
}

uint64_t _freeExtraData(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 56);
  if (v2)
  {

    v1 = a1;
  }

  v3 = v1[9];
  if (v3)
  {

    v1 = a1;
  }

  v4 = v1[11];
  if (v4)
  {
    CFRelease(v4);
    v1 = a1;
  }

  v5 = v1[12];
  if (v5)
  {
    CFRelease(v5);
    v1 = a1;
  }

  v6 = v1[23];
  if (v6)
  {
    _NSRemoveTextBlocksStartingAtGlyphIndex(v6, 0);

    v1 = a1;
  }

  v7 = v1[25];
  if (v7)
  {

    v1 = a1;
  }

  v8 = v1[52];
  if (v8)
  {

    v1 = a1;
  }

  v9 = v1[53];
  if (v9)
  {

    v1 = a1;
  }

  v10 = v1[54];
  if (v10)
  {

    v1 = a1;
  }

  v11 = v1[55];
  if (v11)
  {

    v1 = a1;
  }

  v12 = v1[64];
  if (v12)
  {
  }

  return MEMORY[0x1EEE66BB8]();
}

uint64_t _NSRemoveTextBlocksStartingAtGlyphIndex(void *a1, unint64_t a2)
{
  v21 = 0;
  result = [a1 count];
  v18 = result;
  if (result)
  {
    v4 = 0;
    do
    {
      v5 = [a1 objectAtIndex:v4];
      v6 = [v5 count];
      v8 = a2;
      v9 = v6 - a2;
      v20.n128_u64[0] = a2;
      v20.n128_u64[1] = v6 - a2;
      if (v6 > a2)
      {
        v10 = v6;
        v11 = a2;
        v8 = a2;
        do
        {
          *&v7 = _NSBlockNumberForIndex(v5, v11, &v20).n128_u64[0];
          if (v5[11] <= v12)
          {
            v13 = v5[4] - v5[3];
          }

          else
          {
            v13 = 0;
          }

          v14 = *(v5[7] + (v5[2] + 8) * (v13 + v12) + 8);
          v15 = v20.n128_u64[0];
          if (v14)
          {
            if (v20.n128_u64[0] >= a2)
            {

              v15 = v20.n128_u64[0];
            }

            else
            {
              v16 = v20.n128_u64[1] + v20.n128_u64[0];
              if (v20.n128_u64[1] + v20.n128_u64[0] > a2)
              {
                v7 = *MEMORY[0x1E696AA80];
                v17 = *(MEMORY[0x1E696AA80] + 16);
                v14[3] = *MEMORY[0x1E696AA80];
                v14[4] = v17;
                v8 = v16;
              }
            }
          }

          v11 = v20.n128_u64[1] + v15;
        }

        while (v20.n128_u64[1] + v15 < v10);
        v9 = v10 - v8;
      }

      result = [v5 replaceElementsInRange:v8 withElement:v9 coalesceRuns:{&v21, 1, *&v7}];
      ++v4;
    }

    while (v4 != v18);
  }

  return result;
}

uint64_t _enableTextViewResizing(uint64_t result)
{
  v1 = *(result + 64);
  if ((v1 & 8) == 0)
  {
    v2 = result;
    if (!*(result + 80) || (v3 = *(result + 80) - 1, (*(result + 80) = v3) == 0))
    {
      *(result + 64) = v1 | 8;
      v4 = [*(result + 32) count];
      result = [*(v2 + 32) count];
      if (result)
      {
        v5 = result;
        for (i = 0; i != v5; ++i)
        {
          result = CFStorageGetValueAtIndex();
          if (*(result + 64))
          {
            result = [v2 _recalculateUsageForTextContainerAtIndex:i];
          }
        }
      }

      if (v4)
      {
        for (j = 0; j != v4; ++j)
        {
          result = CFStorageGetValueAtIndex();
          if ((*(result + 64) & 2) != 0)
          {
            result = [v2 _resizeTextViewForTextContainer:{objc_msgSend(*(v2 + 32), "objectAtIndex:", j)}];
          }
        }
      }

      *(v2 + 64) &= ~8u;
    }
  }

  return result;
}

double _NSTextBlockBoundingRectAtIndex(uint64_t a1, unint64_t a2)
{
  x = *MEMORY[0x1E696AA80];
  y = *(MEMORY[0x1E696AA80] + 8);
  width = *(MEMORY[0x1E696AA80] + 16);
  height = *(MEMORY[0x1E696AA80] + 24);
  v8 = [*(*(a1 + 240) + 184) count];
  if (v8)
  {
    v9 = v8;
    for (i = 0; i != v9; ++i)
    {
      v11 = [*(*(a1 + 240) + 184) objectAtIndex:i];
      v21 = 0uLL;
      _NSBlockNumberForIndex(v11, a2, &v21);
      v13 = 0;
      if (v11[11] <= v12)
      {
        v13 = v11[4] - v11[3];
      }

      v14 = *(v11[7] + (v11[2] + 8) * (v13 + v12) + 8);
      if (v14)
      {
        v15 = v14[6];
        v16 = v14[7];
        v17 = v14[8];
        v18 = v14[9];
        v22.origin.x = v15;
        v22.origin.y = v16;
        v22.size.width = v17;
        v22.size.height = v18;
        if (!NSIsEmptyRect(v22))
        {
          if (v21.n128_u64[0])
          {
            _NSLayoutTreeLineFragmentRectForGlyphAtIndex(a1, v21.n128_u64[0], 0);
            v16 = v16 + v19;
          }

          v23.origin.x = x;
          v23.origin.y = y;
          v23.size.width = width;
          v23.size.height = height;
          if (NSIsEmptyRect(v23))
          {
            height = v18;
            width = v17;
            y = v16;
            x = v15;
          }

          else
          {
            v24.origin.x = v15;
            v24.origin.y = v16;
            v24.size.width = v17;
            v24.size.height = v18;
            v26.origin.x = x;
            v26.origin.y = y;
            v26.size.width = width;
            v26.size.height = height;
            v25 = NSUnionRect(v24, v26);
            x = v25.origin.x;
            y = v25.origin.y;
            width = v25.size.width;
            height = v25.size.height;
          }
        }
      }
    }
  }

  return x;
}

void *_getFirstUnlaid(void *result, void *a2, void *a3)
{
  v5 = result;
  v6 = result[30];
  v7 = *(v6 + 208);
  if (!v7 || (v8 = *(v6 + 240)) == 0)
  {
    result[26] = 0;
    result[27] = 0;
    goto LABEL_9;
  }

  v9 = *(v8 + 56);
  v10 = result[27];
  if (v10 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = *(v7 + 56);
    v13 = 0;
    v14 = 0;
    v12 = 0;
    if (v9 & 1) != 0 && (v11)
    {
      _NSGlyphTreeGetFirstHoleAfterGlyphIndex(result, 0, 0, &v14, 0, &v13);
      _NSLayoutTreeGetFirstHoleAfterGlyphIndex(v5, 0, &v12);
      result = _NSGlyphTreeCharacterIndexForGlyphAtIndex(v5, v12);
      v10 = v14;
      if (v14 > result)
      {
        v5[27] = result;
        v10 = result;
        goto LABEL_20;
      }

LABEL_19:
      v5[26] = v13;
      v5[27] = v10;
      goto LABEL_20;
    }

    if (v11)
    {
      result = _NSGlyphTreeGetFirstHoleAfterGlyphIndex(result, 0, 0, &v14, 0, &v13);
      v10 = v14;
      goto LABEL_19;
    }

    if (v9)
    {
      _NSLayoutTreeGetFirstHoleAfterGlyphIndex(result, 0, &v12);
      result = _NSGlyphTreeCharacterIndexForGlyphAtIndex(v5, v12);
      v10 = result;
      v5[27] = result;
    }

    else
    {
      result = result[1];
      if (result)
      {
        result = [result length];
        v10 = result;
      }

      else
      {
        v10 = 0;
      }

      v5[27] = v10;
    }
  }

LABEL_20:
  if (a3 && v5[26] == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (v9)
    {
      result = [v5 _glyphIndexForCharacterIndex:v10 startOfRange:1 okToFillHoles:0];
      v5[26] = result;
    }

    else
    {
      v14 = 0;
      result = _NSGlyphTreeGetFirstHoleAfterGlyphIndex(v5, 0, 0, 0, 0, &v14);
      v5[26] = v14;
    }
  }

LABEL_9:
  if (a2)
  {
    *a2 = v5[27];
  }

  if (a3)
  {
    *a3 = v5[26];
  }

  return result;
}

void _NSRemoveTextBlocksForGlyphRange(void *a1, unint64_t a2, uint64_t a3)
{
  v21 = 0;
  v17 = [a1 count];
  if (v17)
  {
    v4 = 0;
    v16 = a2 + a3;
    do
    {
      v5 = [a1 objectAtIndex:v4];
      v6 = [v5 count];
      v20 = 0uLL;
      if (v16 <= v6)
      {
        v7 = a3;
      }

      else
      {
        v7 = v6 - a2;
      }

      if (v6 >= v16)
      {
        v8 = a2 + a3;
      }

      else
      {
        v8 = v6;
      }

      v9 = a2;
      if (a2 < v8)
      {
        v10 = a2;
        do
        {
          _NSBlockNumberForIndex(v5, v10, &v20);
          if (v5[11] <= v11)
          {
            v12 = v5[4] - v5[3];
          }

          else
          {
            v12 = 0;
          }

          v13 = *(v5[7] + (v5[2] + 8) * (v12 + v11) + 8);
          if (v13)
          {
            if (a2 <= v20.n128_u64[0])
            {

              v10 = v20.n128_u64[1] + v20.n128_u64[0];
              if (v20.n128_u64[1] + v20.n128_u64[0] > v7 + v9)
              {
                v7 = v20.n128_u64[1] + v20.n128_u64[0] - v9;
              }
            }

            else
            {
              v10 = v20.n128_u64[1] + v20.n128_u64[0];
              if (a2 < v20.n128_u64[1] + v20.n128_u64[0])
              {
                v14 = *(MEMORY[0x1E696AA80] + 16);
                v13[3] = *MEMORY[0x1E696AA80];
                v13[4] = v14;
                if (v9 < v10)
                {
                  v15 = v7 + v9 >= v10;
                  v7 = v7 + v9 - v10;
                  if (v7 == 0 || !v15)
                  {
                    goto LABEL_27;
                  }

                  v9 = v10;
                }
              }
            }
          }

          else
          {
            v10 = v20.n128_u64[1] + v20.n128_u64[0];
          }
        }

        while (v10 < v8);
      }

      if (v7)
      {
        [v5 replaceElementsInRange:v9 withElement:v7 coalesceRuns:{&v21, 1}];
      }

LABEL_27:
      ++v4;
    }

    while (v4 != v17);
  }
}

uint64_t _NSDeleteGlyphRangeFromTextBlocks(void *a1, unint64_t a2, unint64_t a3)
{
  result = [a1 count];
  v15 = result;
  if (result)
  {
    v6 = 0;
    v7 = a2 + a3;
    do
    {
      v8 = [a1 objectAtIndex:{v6, v15}];
      v17.n128_u64[0] = a2;
      v17.n128_u64[1] = a3;
      if (a2 < v7)
      {
        v9 = a2;
        do
        {
          _NSBlockNumberForIndex(v8, v9, &v17);
          if (v8[11] <= v10)
          {
            v11 = v8[4] - v8[3];
          }

          else
          {
            v11 = 0;
          }

          v12 = *(v8[7] + (v8[2] + 8) * (v11 + v10) + 8);
          v13 = v17.n128_u64[0];
          if (v12)
          {
            v14 = a2 > v17.n128_u64[0];
          }

          else
          {
            v14 = 1;
          }

          if (!v14 && v17.n128_u64[1] + v17.n128_u64[0] <= v7)
          {

            v13 = v17.n128_u64[0];
          }

          v9 = v17.n128_u64[1] + v13;
        }

        while (v17.n128_u64[1] + v13 < v7);
      }

      result = [v8 removeElementsInRange:a2 coalesceRuns:{a3, 1}];
      ++v6;
    }

    while (v6 != v15);
  }

  return result;
}

uint64_t _NSInsertGlyphRangeInTextBlocks(void *a1, unint64_t a2, uint64_t a3)
{
  v17 = 0;
  result = [a1 count];
  if (result)
  {
    v7 = result;
    v8 = 0;
    while (1)
    {
      v9 = [a1 objectAtIndex:v8];
      v10 = [v9 count];
      v16 = 0uLL;
      if (a2 >= v10)
      {
        break;
      }

      *&v11 = _NSBlockNumberForIndex(v9, a2, &v16).n128_u64[0];
      if (v9[11] <= v12)
      {
        v13 = v9[4] - v9[3];
      }

      else
      {
        v13 = 0;
      }

      v15 = *(v9[7] + (v9[2] + 8) * (v13 + v12) + 8);
      if (!v15 || v16.n128_u64[0] >= a2 || a2 >= v16.n128_u64[1] + v16.n128_u64[0])
      {
        goto LABEL_12;
      }

      v14 = &v15;
LABEL_13:
      result = [v9 insertElement:v14 range:a2 coalesceRuns:{a3, 1, v11, v15}];
      if (v7 == ++v8)
      {
        return result;
      }
    }

    v15 = 0;
LABEL_12:
    v14 = &v17;
    goto LABEL_13;
  }

  return result;
}

NSLayoutManagerTextBlockHelper *_NSAddTextBlockWithGlyphRange(uint64_t a1, id *a2, uint64_t a3, unint64_t a4, unint64_t a5)
{
  v30 = 0;
  v31 = 0;
  v9 = MEMORY[0x1E696AA80];
  v10 = *a2;
  if (!*a2)
  {
    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    *a2 = v10;
  }

  v11 = *v9;
  v12 = v9[1];
  v13 = v9[2];
  v14 = v9[3];
  v15 = [v10 count];
  if (!v15)
  {
    v18 = v13;
    v19 = v12;
    v20 = v11;
    v21 = v14;
    goto LABEL_20;
  }

  v16 = v15;
  v17 = 0;
  v18 = v13;
  v19 = v12;
  v20 = v11;
  v21 = v14;
  while (1)
  {
    v22 = [*a2 objectAtIndex:v17];
    v29 = 0uLL;
    *&v24 = _NSBlockNumberForIndex(v22, a4, &v29).n128_u64[0];
    v25 = 0;
    if (v22->super._gapBlockIndex <= v23)
    {
      v25 = v22->super._maxBlocks - v22->super._numBlocks;
    }

    v26 = *&v22->super._runs->var1[(v22->super._elementSize + 8) * (v25 + v23)];
    if (!v26)
    {
      break;
    }

    if (*(v26 + 1) == a3)
    {
      if (__PAIR128__(a5, a4) == *&v29)
      {
        return v26;
      }

      v11 = v26[2];
      v12 = v26[3];
      v13 = v26[4];
      v21 = v26[5];
      v20 = v26[6];
      v19 = v26[7];
      v18 = v26[8];
      v14 = v26[9];
      [NSRunStorage replaceElementsInRange:v22 withElement:"replaceElementsInRange:withElement:coalesceRuns:" coalesceRuns:v24];

      _NSBlockNumberForIndex(v22, a4, &v29);
      break;
    }

LABEL_12:
    v22 = 0;
LABEL_16:
    if (++v17 >= v16)
    {
      goto LABEL_17;
    }
  }

  if (v29.n128_u64[0] > a4)
  {
    goto LABEL_12;
  }

  if (a4 + a5 > v29.n128_u64[1] + v29.n128_u64[0])
  {
    v22 = 0;
  }

  if (!v22)
  {
    goto LABEL_16;
  }

LABEL_17:
  if (!v22)
  {
LABEL_20:
    v22 = [(NSRunStorage *)[NSIdRunStorage alloc] initWithElementSize:8 capacity:0];
    [(NSRunStorage *)v22 insertElement:&v30 range:0 coalesceRuns:*(*(*(a1 + 240) + 208) + 8), 1];
    [*a2 addObject:v22];
  }

  v31 = [[NSLayoutManagerTextBlockHelper alloc] initWithTextBlock:a3 layoutRect:v11 boundsRect:v12, v13, v21, v20, v19, v18, v14];
  [(NSRunStorage *)v22 replaceElementsInRange:a4 withElement:a5 coalesceRuns:&v31, 1];
  return v31;
}

__n128 _NSLocateTextBlockAtIndex(void *a1, uint64_t a2, unint64_t a3, __int128 *a4)
{
  v8 = [a1 count];
  if (v8)
  {
    v10 = v8;
    v11 = 0;
    v16 = xmmword_18E856180;
    while (1)
    {
      v12 = [a1 objectAtIndex:v11];
      v17 = xmmword_18E856180;
      result = _NSBlockNumberForIndex(v12, a3, &v17);
      v14 = v12[11] <= v13 ? v12[4] - v12[3] : 0;
      v15 = *(v12[7] + (v12[2] + 8) * (v14 + v13) + 8);
      if (v15)
      {
        if (*(v15 + 8) == a2)
        {
          break;
        }
      }

      if (++v11 >= v10)
      {
        goto LABEL_13;
      }
    }

    result.n128_u64[0] = v17;
    v16 = v17;
LABEL_13:
    if (a4)
    {
      goto LABEL_14;
    }
  }

  else
  {
    result.n128_u64[0] = 0x7FFFFFFFFFFFFFFFLL;
    v16 = xmmword_18E856180;
    if (a4)
    {
LABEL_14:
      result = v16;
      *a4 = v16;
    }
  }

  return result;
}

NSUInteger _glyphIndexForPoint(uint64_t a1, void *a2, double *a3, double a4, double a5)
{
  v143 = 0;
  v142 = 0;
  v10 = *(a1 + 240);
  if (*(v10 + 472) == a2 && a4 == *(v10 + 456) && a5 == *(v10 + 464))
  {
    if (a3)
    {
      *a3 = *(v10 + 488);
    }

    return *(v10 + 480);
  }

  if ([a2 layoutManager] != a1)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"*** NSLayoutManager _glyphIndexForPoint(): given container does not appear in the list of containers for this NSLayoutManager."];
  }

  *(v10 + 472) = a2;
  *(v10 + 456) = a4;
  *(v10 + 464) = a5;
  _NSFastFillAllLayoutHolesForGlyphRange(a1, 0, 1uLL);
  if ((*(*(*(a1 + 240) + 208) + 56) & 2) == 0)
  {
    if (a3)
    {
      *a3 = 0.0;
    }

    goto LABEL_7;
  }

  v145 = 0uLL;
  v144 = 0;
  v12 = [a1 _indexOfFirstGlyphInTextContainer:a2 okToFillHoles:1];
  if (v12 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (a3)
    {
      *a3 = 1.0;
    }

    v13 = *(*(*(a1 + 240) + 208) + 8);
    goto LABEL_12;
  }

  v11 = v12;
  v14 = _NSLayoutTreeLineFragmentRectForGlyphAtIndex(a1, v12, &v145);
  v16 = v15;
  v18 = v17;
  if (v15 > a5)
  {
    v19 = [a1 _blockRangeForGlyphRange:{v145, v14}];
    if (v145 == __PAIR128__(v20, v19))
    {
      if (a3)
      {
        *a3 = 0.0;
      }

      *(v10 + 480) = v11;
      *(v10 + 488) = 0;
      return v11;
    }
  }

  if ((*(a1 + 67) & 0x40) != 0)
  {
    v22 = *(*(*(a1 + 240) + 208) + 8);
    v143.location = 0;
    v143.length = v22;
    [*(a1 + 32) objectAtIndex:{0, v14}];
  }

  else if ([*(a1 + 48) count] > v11)
  {
    *&v21 = _NSBlockNumberForIndex(*(a1 + 48), v11, &v143).n128_u64[0];
  }

  if ((*(a1 + 67) & 0x40) != 0)
  {
    length = v143.length;
    location = v143.location;
  }

  else
  {
    if (*(a1 + 216) == 0x7FFFFFFFFFFFFFFFLL || (v23 = *(a1 + 208), v23 == 0x7FFFFFFFFFFFFFFFLL))
    {
      [a1 getFirstUnlaidCharacterIndex:0 glyphIndex:{&v142, v21}];
      v23 = v142;
    }

    else
    {
      v142 = *(a1 + 208);
    }

    length = v143.length;
    location = v143.location;
    if (v143.length + v143.location > v23)
    {
      length = v23 - v143.location;
      v143.length = v23 - v143.location;
    }
  }

  v140 = a3;
  _NSLayoutTreeLineFragmentRectForGlyphAtIndex(a1, location + length - 1, &v144);
  v28 = v26;
  if (a5 >= v26)
  {
    v32 = v27;
    v33 = a5 < v26 + v27;
    v145 = v144;
    v16 = v26;
  }

  else
  {
    v29 = *(&v145 + 1);
    v30 = v145;
    v31 = v144.location;
    v141 = 0;
    if (a5 < v16 || a5 >= v16 + v18)
    {
      if (v145 != v144.location)
      {
        while (v30 + v29 != v31)
        {
          _NSLayoutTreeLineFragmentRectForGlyphAtIndex(a1, v30 + v29 - 1 + ((v31 - (v30 + v29 - 1)) >> 1), &v141);
          v16 = v54;
          if (a5 >= v54 && a5 < v54 + v55)
          {
            v32 = v55;
            v145 = v141;
            goto LABEL_42;
          }

          if (v54 <= a5)
          {
            v29 = v141.length;
            v30 = v141.location;
          }

          else
          {
            v31 = v141.location;
          }

          if (v30 == v31)
          {
            goto LABEL_41;
          }
        }
      }

      v31 = v30;
LABEL_41:
      _NSLayoutTreeLineFragmentRectForGlyphAtIndex(a1, v31, 0);
      v16 = v34;
      v32 = v35;
      *&v145 = v31;
      *(&v145 + 1) = v29;
    }

    else
    {
      v32 = v18;
    }

LABEL_42:
    v33 = 1;
  }

  if ((*(a1 + 67) & 0x40) != 0)
  {
    _NSFastFillAllLayoutHolesForGlyphRange(a1, v145, *(&v145 + 1));
    _NSLayoutTreeLineFragmentRectForGlyphAtIndex(a1, v145, &v145);
    v16 = v36;
    v32 = v37;
  }

  v38 = MEMORY[0x1E696AA80];
  if (v33 && v145 > v143.location)
  {
    v141 = v145;
    v39 = v145;
    v40 = 0;
    v139 = 0;
    v41 = 0x7FFFFFFFFFFFFFFFLL;
    v42 = 0x7FFFFFFFFFFFFFFFLL;
    do
    {
      v43 = *(a1 + 64);
      if ((v43 & 0x40000000) != 0)
      {
        _NSFastFillAllLayoutHolesForGlyphRange(a1, v39 - 1, 1uLL);
        v39 = v141.location;
        v43 = *(a1 + 64);
      }

      if ((v43 & 0x40000000) != 0)
      {
        v49 = [*(a1 + 32) objectAtIndex:0];
      }

      else
      {
        v44 = v40;
        v45 = v39 - 1;
        if ([*(a1 + 48) count] <= v39 - 1)
        {
          v49 = 0;
        }

        else
        {
          v46 = *(a1 + 48);
          _NSBlockNumberForIndex(v46, v45, 0);
          v48 = 0;
          if (v46[11] <= v47)
          {
            v48 = v46[4] - v46[3];
          }

          v49 = *(v46[7] + (v46[2] + 8) * (v48 + v47) + 8);
        }

        v40 = v44;
      }

      _NSLayoutTreeLineFragmentRectForGlyphAtIndex(a1, v141.location - 1, &v141);
      if (v49 != a2)
      {
        break;
      }

      if (v50 + v51 <= a5)
      {
        if (v42 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v146.location = [a1 _blockRowRangeForGlyphRange:{v141, v50 + v51}];
          v52 = NSIntersectionRange(v146, v143);
          v42 = v52.location;
          v139 = v52.length;
        }

        if (v42 == 0x7FFFFFFFFFFFFFFFLL || !v139 || v141.location <= v42)
        {
          break;
        }
      }

      else if (v50 <= a5)
      {
        if (v41 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v40 = v141.length;
          v41 = v141.location;
        }

        else
        {
          v147.location = v41;
          v147.length = v40;
          v53 = NSUnionRange(v147, v141);
          v41 = v53.location;
          v40 = v53.length;
        }
      }

      v39 = v141.location;
    }

    while (v141.location > v143.location);
    v38 = MEMORY[0x1E696AA80];
  }

  else
  {
    v40 = 0;
    v41 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v57 = 0;
  v58 = *v38;
  v59 = 0x7FFFFFFFFFFFFFFFLL;
  while (1)
  {
    if (v16 <= a5)
    {
      if (v32 + v16 > a5)
      {
        if (v41 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v40 = *(&v145 + 1);
          v41 = v145;
        }

        else
        {
          v149.location = v41;
          v149.length = v40;
          v61 = NSUnionRange(v149, v145);
          v41 = v61.location;
          v40 = v61.length;
        }
      }

      goto LABEL_96;
    }

    if (v59 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v148.location = [a1 _blockRowRangeForGlyphRange:v145];
      v60 = NSIntersectionRange(v148, v143);
      v59 = v60.location;
      v57 = v60.length;
    }

    if (v59 == 0x7FFFFFFFFFFFFFFFLL || !v57 || *(&v145 + 1) + v145 >= v59 + v57)
    {
      break;
    }

LABEL_96:
    v11 = *(&v145 + 1) + v145;
    if (a5 >= v28 || (*(a1 + 67) & 0x40) != 0)
    {
      _NSFastFillAllLayoutHolesForGlyphRange(a1, *(&v145 + 1) + v145, 1uLL);
    }

    if (v11 < *(*(*(a1 + 240) + 208) + 8))
    {
      v62 = _NSLayoutTreeLineFragmentRectForGlyphAtIndex(a1, v11, &v145);
      v16 = v63;
      v32 = v64;
      if ((*(a1 + 67) & 0x40) != 0)
      {
        v68 = [*(a1 + 32) objectAtIndex:{0, v62}];
      }

      else if ([*(a1 + 48) count] <= v11)
      {
        v68 = 0;
      }

      else
      {
        v65 = *(a1 + 48);
        _NSBlockNumberForIndex(v65, v11, 0);
        v67 = 0;
        if (v65[11] <= v66)
        {
          v67 = v65[4] - v65[3];
        }

        v68 = *(v65[7] + (v65[2] + 8) * (v67 + v66) + 8);
      }

      if (v68 == a2)
      {
        continue;
      }
    }

    break;
  }

  if (!v40)
  {
    if (v11 < *(*(*(a1 + 240) + 208) + 8))
    {
      if (v145)
      {
        v141 = 0;
        _NSLayoutTreeLineFragmentRectForGlyphAtIndex(a1, v145 - 1, &v141);
        if (v98 + v99 - a5 <= a5 - v16)
        {
          if (v140)
          {
            *v140 = 1.0;
          }

          v11 = v141.location + v141.length - 1;
          v100 = 1.0;
        }

        else
        {
          if (v140)
          {
            *v140 = 0.0;
          }

          v100 = 0.0;
          v11 = v145;
        }

        *(v10 + 480) = v11;
        *(v10 + 488) = v100;
        return v11;
      }

      if (v140)
      {
        *v140 = 0.0;
      }

LABEL_7:
      v11 = 0;
      *(v10 + 480) = 0;
      *(v10 + 488) = 0;
      return v11;
    }

    v101 = [a1 glyphRangeForTextContainer:a2];
    if (v140)
    {
      *v140 = 1.0;
    }

    v13 = v102 + v101;
LABEL_12:
    v11 = v13 - 1;
    *(v10 + 480) = v13 - 1;
    *(v10 + 488) = 0x3FF0000000000000;
    return v11;
  }

  v150.location = [a1 _blockRowRangeForGlyphRange:{v41, v40}];
  v69 = NSIntersectionRange(v150, v143);
  v70.length = v69.length;
  v71 = v40;
  v72 = v41;
  if (v69.length)
  {
    v70.location = v69.location;
    v151.location = v41;
    v151.length = v40;
    v73 = NSUnionRange(v151, v70);
    v71 = v73.length;
    v72 = v73.location;
  }

  v74 = 10000000.0;
  if (v72 == v41 && v71 == v40 || (v75 = v72 + v71, v72 >= v72 + v71))
  {
    v76 = 0;
  }

  else
  {
    v76 = 0;
    v77 = 0x7FFFFFFFFFFFFFFFLL;
    v74 = 10000000.0;
    do
    {
      v78 = _NSLayoutTreeLineFragmentRectForGlyphAtIndex(a1, v72, &v145);
      v82 = v79 + v81;
      if (a5 >= v79 && a5 < v82)
      {
        if (a4 >= v78)
        {
          v85 = v78 + v80;
          v121 = a4 <= v85;
          v84 = a4 - v85;
          if (v121)
          {
            v84 = 0.0;
          }
        }

        else
        {
          v84 = v78 - a4;
        }

        if (a5 >= v79)
        {
          v86 = 0.0;
          if (a5 > v82)
          {
            v86 = a5 - v82;
          }
        }

        else
        {
          v86 = v79 - a5;
        }

        v87 = sqrt(v86 * v86 + v84 * v84);
        if (v87 <= v74)
        {
          v76 = *(&v145 + 1);
          v77 = v145;
          v74 = v87;
          v58 = v78;
        }
      }

      v72 = *(&v145 + 1) + v145;
    }

    while (*(&v145 + 1) + v145 < v75);
    if (v77 != 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_158;
    }
  }

  v88 = v41 + v40;
  v77 = 0x7FFFFFFFFFFFFFFFLL;
  if (v41 < v41 + v40)
  {
    while (1)
    {
      v89 = _NSLayoutTreeLineFragmentRectForGlyphAtIndex(a1, v41, &v145);
      if (a4 >= v89)
      {
        v94 = v89 + v91;
        v121 = a4 <= v94;
        v93 = a4 - v94;
        if (v121)
        {
          v93 = 0.0;
        }
      }

      else
      {
        v93 = v89 - a4;
      }

      if (a5 >= v90)
      {
        v96 = v90 + v92;
        v95 = 0.0;
        if (a5 > v96)
        {
          v95 = a5 - v96;
        }
      }

      else
      {
        v95 = v90 - a5;
      }

      v97 = sqrt(v95 * v95 + v93 * v93);
      if (v97 == 0.0)
      {
        break;
      }

      if (v97 < v74)
      {
        v74 = v97;
        v76 = *(&v145 + 1);
        v77 = v145;
        v58 = v89;
      }

      v41 = *(&v145 + 1) + v145;
      if (*(&v145 + 1) + v145 >= v88)
      {
        goto LABEL_158;
      }
    }

    v76 = *(&v145 + 1);
    v77 = v145;
    v58 = v89;
  }

LABEL_158:
  v103 = _NSLayoutTreeLineFragmentUsedRectForGlyphAtIndex(a1, v77, &v145);
  v105 = v104;
  [a2 lineFragmentPadding];
  v107 = v103 + v105 - v106;
  v108 = v77 + v76;
  if (v77 >= v77 + v76)
  {
    v113 = 10000000.0;
    v112 = v77;
    v111 = v77;
  }

  else
  {
    v109 = 10000000.0;
    v110 = v77;
    v111 = v77;
    v112 = v77;
    v113 = 10000000.0;
    do
    {
      v114 = _NSGlyphTreeGlyphAtIndex(a1, v110, 0);
      if (!v114)
      {
        goto LABEL_220;
      }

      v115 = v114;
      [a1 locationForGlyphAtIndex:v110];
      v117 = v116;
      if ((*(a1 + 67) & 2) != 0)
      {
        if (_NSGlyphTreeBidiLevelForGlyphAtIndex(a1, v110))
        {
          v118 = 1;
        }

        else
        {
          v118 = 0;
          if (v110 > v77 && v115 == 0xFFFFFF && v110 + 1 >= v108)
          {
            v118 = _NSGlyphTreeBidiLevelForGlyphAtIndex(a1, v110 - 1) & 1;
          }
        }
      }

      else
      {
        v118 = 0;
      }

      v119 = v58 + v117;
      v120 = v58 + v117 - a4;
      if (v58 + v117 <= a4)
      {
        v120 = a4 - (v58 + v117);
      }

      v121 = v119 > v113 || v113 <= a4;
      if (!v121 || (v119 < v113 ? (v122 = 1) : (v122 = v118), (v122 & 1) == 0 && v119 <= a4 || (v123 = v118 ^ 1, ((v118 ^ 1) & 1) == 0) && (v119 > v113 ? (v124 = v119 > a4) : (v124 = 1), !v124)))
      {
        v123 = v118 ^ 1;
        v113 = v58 + v117;
        v111 = v110;
      }

      if (v119 >= v107)
      {
        v125 = 1;
      }

      else
      {
        v125 = v118;
      }

      if ((v125 & 1) == 0 && v119 > a4 || (v119 > v107 ? (v126 = 1) : (v126 = v123), (v126 & 1) == 0 && v119 > a4))
      {
        v107 = v58 + v117;
      }

      v127 = v120 > v109 ? 1 : v118;
      if ((v127 & 1) == 0 && v119 <= a4)
      {
        goto LABEL_221;
      }

      v128 = v120 >= v109 ? 1 : v118;
      if ((v128 & 1) == 0 && v119 > a4)
      {
        goto LABEL_221;
      }

      if (v120 >= v109)
      {
        v118 = 0;
      }

      v129 = v118 != 1 || v119 > a4;
      if (v129 && (v120 > v109 ? (v130 = 1) : (v130 = v123), (v130 & 1) != 0 || v119 <= a4))
      {
LABEL_220:
        v120 = v109;
      }

      else
      {
LABEL_221:
        v112 = v110;
      }

      ++v110;
      v109 = v120;
      --v76;
    }

    while (v76);
  }

  if (v113 > a4)
  {
    *(v10 + 480) = v112;
    v131 = 0.0;
    if ((*(a1 + 67) & 2) != 0)
    {
      v132 = (_NSGlyphTreeBidiLevelForGlyphAtIndex(a1, v112) & 1) == 0;
      v131 = 1.0;
      v133 = 0.0;
LABEL_238:
      if (v132)
      {
        v131 = v133;
      }
    }

    goto LABEL_250;
  }

  if (v107 < a4)
  {
    *(v10 + 480) = v112;
    v131 = 1.0;
    if ((*(a1 + 67) & 2) == 0)
    {
      goto LABEL_250;
    }

    v134 = a1;
    v135 = v112;
LABEL_237:
    v132 = (_NSGlyphTreeBidiLevelForGlyphAtIndex(v134, v135) & 1) == 0;
    v131 = 0.0;
    v133 = 1.0;
    goto LABEL_238;
  }

  *(v10 + 480) = v111;
  v136 = *(a1 + 64);
  if (v113 < v107)
  {
    if (v136 & 0x2000000) != 0 && (_NSGlyphTreeBidiLevelForGlyphAtIndex(a1, v111))
    {
      v137 = v107 - a4;
    }

    else
    {
      v137 = a4 - v113;
    }

    v131 = v137 / (v107 - v113);
    goto LABEL_250;
  }

  v131 = 1.0;
  if ((v136 & 0x2000000) != 0)
  {
    v134 = a1;
    v135 = v111;
    goto LABEL_237;
  }

LABEL_250:
  *(v10 + 488) = v131;
  if (v140)
  {
    *v140 = v131;
  }

  return *(v10 + 480);
}

void sub_18E7D9220(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t ___allocExtraData_block_invoke()
{
  result = [objc_msgSend(MEMORY[0x1E695E000] "standardUserDefaults")];
  __NSUsesDefaultHyphenation = result;
  return result;
}

uint64_t GetNextUrduSequenceFromString(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3010000000;
  v8 = "";
  v9 = a2 + a3;
  v10 = 0;
  CTEnumerateKnownUrduSequencesInString();
  v3 = v6[4];
  _Block_object_dispose(&v5, 8);
  return v3;
}

void sub_18E7DB4CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __GetNextUrduSequenceFromString_block_invoke(uint64_t result, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  *(*(*(result + 32) + 8) + 32) = a2;
  *(*(*(result + 32) + 8) + 40) = a3;
  *a4 = 1;
  return result;
}

Class initUIBezierPath()
{
  __NSGetFrameworkReference(0, 0);
  result = objc_getClass("UIBezierPath");
  classUIBezierPath = result;
  if (!result)
  {
    initUIBezierPath_cold_1();
  }

  getUIBezierPathClass = UIBezierPathFunction;
  return result;
}

uint64_t initUIGraphicsPushContext(uint64_t a1)
{
  v2 = __NSGetFrameworkReference(0, 0);
  v3 = dlsym(v2, "UIGraphicsPushContext");
  softLinkUIGraphicsPushContext[0] = v3;
  if (!v3)
  {
    initUIGraphicsPushContext_cold_1();
  }

  return (v3)(a1);
}

uint64_t initUIGraphicsPopContext()
{
  v0 = __NSGetFrameworkReference(0, 0);
  v1 = dlsym(v0, "UIGraphicsPopContext");
  softLinkUIGraphicsPopContext[0] = v1;
  if (!v1)
  {
    initUIGraphicsPopContext_cold_1();
  }

  return v1();
}

void sub_18E7E4F7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18E7E693C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, id location)
{
  objc_destroyWeak((v27 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18E7E81EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v29 - 160), 8);
  _Block_object_dispose((v29 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_18E7E8C0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  _Block_object_dispose(&a24, 8);
  _Block_object_dispose(&a30, 8);
  _Block_object_dispose((v30 - 136), 8);
  _Unwind_Resume(a1);
}

void sub_18E7E964C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18E7E9AB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

double getWidthOfRuns(const __CTLine *a1, unint64_t a2, uint64_t a3)
{
  GlyphRuns = CTLineGetGlyphRuns(a1);
  v6 = 0.0;
  if (a2 < a2 + a3)
  {
    v7 = GlyphRuns;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v7, a2);
      v10.length = CTRunGetGlyphCount(ValueAtIndex);
      v10.location = 0;
      v6 = v6 + CTRunGetTypographicBounds(ValueAtIndex, v10, 0, 0, 0);
      ++a2;
      --a3;
    }

    while (a3);
  }

  return v6;
}

uint64_t __NSCreateRenderingContextForString(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, char a6, double a7, double a8)
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x3052000000;
  v19 = __Block_byref_object_copy__10;
  v20 = __Block_byref_object_dispose__10;
  v21 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = ____NSCreateRenderingContextForString_block_invoke;
  v10[3] = &unk_1E7267A30;
  v10[4] = a1;
  v10[5] = a2;
  *&v10[7] = a7;
  v10[6] = &v16;
  v10[8] = a3;
  v11 = 0;
  v12 = a6;
  v13 = a4;
  v14 = a5;
  *&v10[9] = a8;
  v15 = 0;
  [NSSingleLineTypesetter performWithSingleLineTypesetterContext:v10];
  v8 = v17[5];
  _Block_object_dispose(&v16, 8);
  return v8;
}

void sub_18E7EDB14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t initSwiftUITextAnimationProviderClass()
{
  v0 = __NSGetFrameworkReference(@"SwiftUI", 0);
  v1 = dlsym(v0, "SwiftUITextAnimationProviderClass");
  softLinkSwiftUITextAnimationProviderClass = v1;
  if (!v1)
  {
    initSwiftUITextAnimationProviderClass_cold_1();
  }

  return v1();
}

void sub_18E7EF1CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, id location, char a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  objc_destroyWeak(&a25);
  objc_destroyWeak(&location);
  _Block_object_dispose(&a30, 8);
  _Block_object_dispose(&a34, 8);
  _Block_object_dispose((v34 - 216), 8);
  _Block_object_dispose((v34 - 184), 8);
  _Unwind_Resume(a1);
}

void sub_18E7F3A34(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x478], 8);
  _Block_object_dispose(&STACK[0x6F0], 8);
  _Block_object_dispose(&STACK[0x738], 8);
  _Block_object_dispose(&STACK[0x758], 8);
  _Unwind_Resume(a1);
}

uint64_t __attributedStringAtKeyframe_block_invoke_2(uint64_t a1, void *a2, unint64_t a3, uint64_t a4)
{
  if (a3 > *(*(*(a1 + 56) + 8) + 24))
  {
    [*(a1 + 32) appendAttributedString:{objc_msgSend(*(a1 + 40), "attributedSubstringFromRange:")}];
    *(*(*(a1 + 56) + 8) + 24) = a3;
  }

  v8 = [*(a1 + 40) attributedSubstringFromRange:{a3, a4}];
  if (a2)
  {
    v9 = [a2 applyKeyframe:*(a1 + 48) toContent:v8];
    if (v9)
    {
      v10 = v9;
      v11 = [v8 length];
      v8 = v10;
      if (v11 != [v10 length])
      {
        __attributedStringAtKeyframe_block_invoke_2_cold_1();
      }
    }
  }

  result = [*(a1 + 32) appendAttributedString:v8];
  *(*(*(a1 + 56) + 8) + 24) = a3 + a4;
  return result;
}

void sub_18E7F4B68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18E7F539C(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);
  objc_sync_exit(v1);
  _Unwind_Resume(a1);
}

void sub_18E7F565C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18E7F5A30(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_18E7F68CC(void *a1)
{
  objc_begin_catch(a1);
  *(v1 + v4) = 0;
  *v2 = xmmword_18E856180;
  *(v1 + v3) = xmmword_18E856180;
  *(v1 + 176) = 0;
  *(v1 + v5) = 0;
  objc_exception_rethrow();
}

void sub_18E7F68FC(_Unwind_Exception *a1)
{
  objc_end_catch();
  objc_sync_exit(v1);
  _Unwind_Resume(a1);
}

void NSTextContentStorageBreakOnEnumerateWhileEditing()
{
  if (NSTextContentStorageBreakOnEnumerateWhileEditing_onceToken != -1)
  {
    NSTextContentStorageBreakOnEnumerateWhileEditing_cold_1();
  }
}

void sub_18E7F7B8C(_Unwind_Exception *a1)
{
  objc_end_catch();
  objc_sync_exit(v1);
  _Unwind_Resume(a1);
}

void sub_18E7F7C04(void *exc_buf, int a2)
{
  if (a2)
  {
    objc_begin_catch(exc_buf);
    JUMPOUT(0x18E7F7B08);
  }

  JUMPOUT(0x18E7F7BCCLL);
}

uint64_t _fastRunStorageElementAtIndex(void *a1, unint64_t a2, __n128 *a3)
{
  _NSBlockNumberForIndex(a1, a2, a3);
  if (a1[11] <= v4)
  {
    v5 = a1[4] - a1[3];
  }

  else
  {
    v5 = 0;
  }

  return a1[7] + (a1[2] + 8) * (v5 + v4) + 8;
}

void __NSTextContentStorageFillAttributedStringWithElementsInIndexRange(NSUInteger a1, NSUInteger a2, NSUInteger a3, void *a4, uint64_t a5, uint64_t a6)
{
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x2020000000;
  v18[3] = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3010000000;
  v15 = "";
  v16 = a5;
  v17 = a6;
  if (a5 + a6 >= [a4 length])
  {
    v10 = a3 - 1;
  }

  else
  {
    v10 = 0x7FFFFFFFFFFFFFFFLL;
  }

  [a4 beginEditing];
  if (a3)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = ____NSTextContentStorageFillAttributedStringWithElementsInIndexRange_block_invoke;
    v11[3] = &unk_1E7267E10;
    v11[4] = a4;
    v11[5] = &v12;
    v11[6] = v18;
    v11[7] = v10;
    __NSTextContentStorageEnumerateCachedElementsInElementIndexRange(a1, a2, a3, v11);
  }

  else
  {
    [a4 replaceCharactersInRange:v13[4] withString:{v13[5], &stru_1F01AD578}];
  }

  [a4 endEditing];
  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(v18, 8);
}

void sub_18E7F86F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

NSUInteger __NSTextContentStorageGetRangeForIndexRange(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v6 = a2 + a3;
  if (a2 + a3 > [*(a1 + 96) count])
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v7 = [objc_msgSend(*objc_msgSend(*(a1 + 96) elementAtIndex:{a2), "elementRange"), "range"}];
  v10 = v9;
  if (a3 == 1)
  {
    return v7;
  }

  v12.location = [objc_msgSend(*objc_msgSend(*(a1 + 96) elementAtIndex:{v6 - 1), "elementRange"), "range"}];
  v12.length = v11;
  v13.location = v7;
  v13.length = v10;

  return NSUnionRange(v13, v12).location;
}

BOOL _NSStringHasRightToLeftBaseWritingDirectionAtIndex(const __CFString *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  SystemEncoding = CFStringGetSystemEncoding();
  if (CFStringGetCStringPtr(a1, SystemEncoding) || CFStringGetCStringPtr(a1, 0x600u))
  {
    return 0;
  }

  v10 = _NSStringImputedBaseWritingDirectionAtIndex(a1, a2, a3, a4);
  if (v10 == NSWritingDirectionNatural)
  {
    v10 = [NSParagraphStyle defaultWritingDirectionForLanguage:0];
  }

  return v10 == NSWritingDirectionRightToLeft;
}

double NSTCIntersectionRect(double result, double a2, double a3, double a4, double a5, double a6, double a7)
{
  if (a3 <= 0.0)
  {
    v7 = result;
  }

  else
  {
    v7 = result + a3;
  }

  if (a7 <= 0.0)
  {
    v8 = a5;
  }

  else
  {
    v8 = a5 + a7;
  }

  if (result < a5 || v7 > v8)
  {
    if (result > a5 || v7 < v8)
    {
      if (result < a5)
      {
        return a5;
      }
    }

    else
    {
      return a5;
    }
  }

  return result;
}

double _NSCalculateContainerOrigin(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11)
{
  v18 = a7 + a11 * 2.0;
  if (v18 >= a3)
  {
    return a1 + a11 - a5;
  }

  v19 = a3 - v18;
  v20 = a9 - (a5 + a7);
  if (v19 + 0.001 >= a5 + v20)
  {
    return a1 + a11;
  }

  v21 = v19 * 0.5;
  if (v19 * 0.5 <= a5 && v21 <= v20)
  {
    return a1 + a11 - a5 + v21;
  }

  result = a1 + a11;
  if (v21 > v20)
  {
    return result - a5 + v19 - v20;
  }

  return result;
}

void *romanString(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD60] string];
  v3 = v2;
  if (a1 <= 0)
  {
    [v2 appendFormat:@"%ld", a1];
    return v3;
  }

  for (i = a1 % 0xFA0uLL; i; i += v5)
  {
    if (i <= 0x3E7)
    {
      if (i <= 0x383)
      {
        if (i <= 0x1F3)
        {
          if (i <= 0x18F)
          {
            if (i <= 0x63)
            {
              if (i <= 0x59)
              {
                if (i <= 0x31)
                {
                  if (i <= 0x27)
                  {
                    if (i <= 9)
                    {
                      if (i == 9)
                      {
                        v8 = @"ix";
                        goto LABEL_32;
                      }

                      if (i <= 4)
                      {
                        if (i == 4)
                        {
                          v8 = @"iv";
LABEL_32:
                          [v3 appendString:v8];
                          return v3;
                        }

                        v5 = -1;
                        v6 = @"i";
                      }

                      else
                      {
                        v5 = -5;
                        v6 = @"v";
                      }
                    }

                    else
                    {
                      v5 = -10;
                      v6 = @"x";
                    }
                  }

                  else
                  {
                    v5 = -40;
                    v6 = @"xl";
                  }
                }

                else
                {
                  v5 = -50;
                  v6 = @"l";
                }
              }

              else
              {
                v5 = -90;
                v6 = @"xc";
              }
            }

            else
            {
              v5 = -100;
              v6 = @"c";
            }
          }

          else
          {
            v5 = -400;
            v6 = @"cd";
          }
        }

        else
        {
          v5 = -500;
          v6 = @"d";
        }
      }

      else
      {
        v5 = -900;
        v6 = @"cm";
      }
    }

    else
    {
      v5 = -1000;
      v6 = @"m";
    }

    [v3 appendString:v6];
  }

  return v3;
}

void *cjkString(unint64_t a1)
{
  v2 = [MEMORY[0x1E696AD60] string];
  v3 = v2;
  if ((a1 & 0x8000000000000000) != 0)
  {
    [v2 appendFormat:@"%ld", a1];
    return v3;
  }

  if (!a1)
  {
    v5 = 38646;
LABEL_13:
    [v3 appendFormat:@"%C", v5];
    return v3;
  }

  v4 = a1 % 0x64;
  if (!(a1 % 0x64))
  {
    [v2 appendString:@"百"];
    return v3;
  }

  if (v4 < 0x14)
  {
    if (v4 < 0xA)
    {
      goto LABEL_11;
    }
  }

  else
  {
    [v2 appendFormat:@"%C", cjk_numerals[a1 % 0x64 / 0xA]];
  }

  [v3 appendFormat:@"%C", 21313];
LABEL_11:
  v6 = a1 % 0x64 % 0xA;
  if (v6)
  {
    v5 = cjk_numerals[v6];
    goto LABEL_13;
  }

  return v3;
}

void *arabicIndicString(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD60] string];
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld", a1];
  v4 = [v3 length];
  if (v4)
  {
    v5 = v4;
    for (i = 0; i != v5; ++i)
    {
      v7 = [v3 characterAtIndex:i];
      if ((v7 - 48) >= 0xA)
      {
        v8 = 0;
      }

      else
      {
        v8 = 1584;
      }

      [v2 appendFormat:@"%C", (v8 + v7)];
    }
  }

  return v2;
}

void *hebrewString(unint64_t a1)
{
  v2 = [MEMORY[0x1E696AD60] string];
  v3 = v2;
  if ((a1 & 0x8000000000000000) != 0)
  {
    [v2 appendFormat:@"%ld", a1];
  }

  else if (a1)
  {
    for (i = a1 % 0x3E8; i; i += v5)
    {
      if (i <= 0x18F)
      {
        if (i <= 0x12B)
        {
          if (i <= 0xC7)
          {
            if (i <= 0x63)
            {
              if (i == 15)
              {
                v9 = @"טו";
LABEL_40:
                [v3 appendFormat:v9, v10];
                break;
              }

              if (i == 16)
              {
                v9 = @"טז";
                goto LABEL_40;
              }

              if (i <= 0x59)
              {
                if (i <= 0x4F)
                {
                  if (i <= 0x45)
                  {
                    if (i <= 0x3B)
                    {
                      if (i <= 0x31)
                      {
                        if (i <= 0x27)
                        {
                          if (i <= 0x1D)
                          {
                            if (i <= 0x13)
                            {
                              if (i <= 9)
                              {
                                [v3 appendFormat:@"%C", (i + 1487)];
                                break;
                              }

                              v5 = -10;
                              v6 = @"י";
                            }

                            else
                            {
                              v5 = -20;
                              v6 = @"כ";
                            }
                          }

                          else
                          {
                            v5 = -30;
                            v6 = @"ל";
                          }
                        }

                        else
                        {
                          v5 = -40;
                          v6 = @"מ";
                        }
                      }

                      else
                      {
                        v5 = -50;
                        v6 = @"נ";
                      }
                    }

                    else
                    {
                      v5 = -60;
                      v6 = @"ס";
                    }
                  }

                  else
                  {
                    v5 = -70;
                    v6 = @"ע";
                  }
                }

                else
                {
                  v5 = -80;
                  v6 = @"פ";
                }
              }

              else
              {
                v5 = -90;
                v6 = @"צ";
              }
            }

            else
            {
              v5 = -100;
              v6 = @"ק";
            }
          }

          else
          {
            v5 = -200;
            v6 = @"ר";
          }
        }

        else
        {
          v5 = -300;
          v6 = @"ש";
        }
      }

      else
      {
        v5 = -400;
        v6 = @"ת";
      }

      [v3 appendString:v6];
    }

    v7 = [v3 length];
    if (v7 >= 2)
    {
      [v3 insertString:@"״" atIndex:v7 - 1];
    }
  }

  else
  {
    [v2 appendString:@"אפס"];
  }

  return v3;
}

void sub_18E7FF464(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18E7FF634(void *a1)
{
  objc_begin_catch(a1);
  if (v1)
  {
    JUMPOUT(0x18E7FF600);
  }

  JUMPOUT(0x18E7FF5F0);
}

double _NSGetUIFoundationVersionNumber()
{
  if (_NSGetUIFoundationVersionNumber_onceToken != -1)
  {
    _NSGetUIFoundationVersionNumber_cold_1();
  }

  return *&_NSGetUIFoundationVersionNumber_UIFoundationVersionNumber;
}

NSUInteger __NSTextRunStorageEnumerateElementsInRange(NSUInteger result, NSUInteger a2, NSUInteger a3, int a4, uint64_t a5)
{
  v5 = a3 - 1;
  if (a4)
  {
    v6 = -1;
  }

  else
  {
    v6 = 1;
  }

  if (a4)
  {
    v7 = -1;
  }

  else
  {
    v7 = a3;
  }

  if (!a4)
  {
    v5 = 0;
  }

  if (v5 != v7)
  {
    v9 = a3;
    v10 = a2;
    v11 = result;
    v12 = v7 + a2;
    v27.location = 0;
    v27.length = 0;
    v13 = a2 + v5;
    v25 = v7 + a2;
    do
    {
      v14 = [*(v11 + 24) pointerToElement:v13 directlyAccessibleElements:&v27];
      if (a4)
      {
        v15.location = v27.location;
        v15.length = v13 - v27.location + 1;
        v27.length = v15.length;
      }

      else
      {
        v15.length = v27.location - v13 + v27.length;
        v27.location = v13;
        v27.length = v15.length;
        v15.location = v13;
      }

      v28.location = v10;
      v28.length = v9;
      v16 = NSIntersectionRange(v15, v28);
      result = v16.location;
      v27 = v16;
      if (v14)
      {
        v17 = v16.length == 0;
      }

      else
      {
        v17 = 1;
      }

      if (!v17)
      {
        v18 = v9;
        v19 = v10;
        v20 = v11;
        if (a4)
        {
          length = -1;
        }

        else
        {
          length = v16.length;
        }

        if (v13 == length + v16.location)
        {
          v22 = v13;
        }

        else
        {
          v23 = v14 + 16 * v13;
          v24 = v16.location - v6 + length;
          do
          {
            if (*(v23 - 16 * v27.location + 8))
            {
              result = (*(a5 + 16))(a5);
            }

            v22 = v13 + v6;
            v23 += 16 * v6;
            v17 = v24 == v13;
            v13 += v6;
          }

          while (!v17);
        }

        v13 = v22;
        v11 = v20;
        v10 = v19;
        v9 = v18;
        v12 = v25;
      }
    }

    while (v13 != v12);
  }

  return result;
}

void sub_18E80134C(_Unwind_Exception *a1)
{
  _Block_object_dispose((v2 - 96), 8);
  objc_sync_exit(v1);
  _Unwind_Resume(a1);
}

uint64_t __NSTextRunStorageGetElementIndexForTextLocation(uint64_t a1, void *a2, int a3)
{
  v6 = [*(a1 + 24) count];
  v7 = *(a1 + 32);
  if (v7)
  {
    if ([a2 compare:{objc_msgSend(v7, "location")}] == -1)
    {
      v30 = a3;
      v10 = 0;
      v6 = *(a1 + 48);
    }

    else
    {
      v8 = [a2 compare:{objc_msgSend(*(a1 + 32), "endLocation")}];
      v9 = *(a1 + 48);
      if (v8 == -1)
      {
        return v9;
      }

      v30 = a3;
      v10 = v9 + 1;
    }
  }

  else
  {
    v30 = a3;
    v10 = 0;
  }

  if (v10 >= v6)
  {
LABEL_40:
    if (v30)
    {
      return v10;
    }

    else
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  v11 = 0;
  v12 = 0;
  v13 = 0x7FFFFFFFFFFFFFFFLL;
  v29 = a2;
  while (1)
  {
    v14 = v6 - v10;
    v9 = (v6 - v10) / 2;
    v31 = v13;
    v32 = v11;
    v15 = v9 - v10;
    if (v9 < v10 || v15 >= v14)
    {
LABEL_22:
      v31 = v13;
      v32 = v11;
      if (v10 > v9 || v15 >= v14)
      {
        goto LABEL_40;
      }

      v22 = -v9;
      while (1)
      {
        if (!v12 || (v23 = v9 - v13, v9 < v13) || v23 >= v32)
        {
          v24 = [*(a1 + 24) pointerToElement:v9 directlyAccessibleElements:{&v31, v29}];
          v13 = v31;
          v12 = v24 + 16 * (v22 + v31);
          v23 = v9 - v31;
        }

        v20 = *(v12 + 16 * v23);
        if (v20)
        {
          break;
        }

        if (v10 <= v9 - 1)
        {
          v25 = ~v10 + v9;
          ++v22;
          --v9;
          if (v25 < v14)
          {
            continue;
          }
        }

        goto LABEL_40;
      }
    }

    else
    {
      v17 = (v6 - v10) / -2;
      while (1)
      {
        if (!v12 || (v18 = v9 - v13, v9 < v13) || v18 >= v32)
        {
          v19 = [*(a1 + 24) pointerToElement:v9 directlyAccessibleElements:{&v31, v29}];
          v13 = v31;
          v12 = v19 + 16 * (v17 + v31);
          v18 = v9 - v31;
        }

        v20 = *(v12 + 16 * v18);
        if (v20)
        {
          break;
        }

        if (v10 <= ++v9)
        {
          --v17;
          if (v9 - v10 < v14)
          {
            continue;
          }
        }

        v11 = v32;
        v15 = v9 - v10;
        goto LABEL_22;
      }
    }

    v11 = v32;
    v26 = [v20 location];
    if ([v29 compare:v26] == -1)
    {
      v6 = v9;
      goto LABEL_39;
    }

    if ([v29 compare:{objc_msgSend(v20, "endLocation")}] == -1)
    {
      break;
    }

    v10 = v9;
LABEL_39:
    if (v10 >= v6)
    {
      goto LABEL_40;
    }
  }

  *(a1 + 48) = v9;
  *(a1 + 32) = v20;
  if (v30)
  {
    v28 = v10;
  }

  else
  {
    v28 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if (v9 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return v28;
  }

  return v9;
}

NSUInteger __NSTextRunStorageGetElementIndexForTextRange(NSUInteger a1, void *a2, char a3)
{
  ElementIndexForTextLocation = __NSTextRunStorageGetElementIndexForTextLocation(a1, [a2 location], 1);
  v7 = *(a1 + 24);
  if (ElementIndexForTextLocation != 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = *[v7 elementAtIndex:ElementIndexForTextLocation];
    v9 = [objc_msgSend(a2 "location")];
    v10 = [objc_msgSend(a2 "endLocation")];
    if (v10)
    {
      v11 = 1;
    }

    else
    {
      v11 = v9 == 1;
    }

    if (!v11)
    {
      return ElementIndexForTextLocation;
    }

    v12 = v10;
    if (v9 == 1)
    {
      v13 = -[NSTextRange initWithLocation:endLocation:]([NSTextRange alloc], "initWithLocation:endLocation:", [v8 location], objc_msgSend(a2, "location"));
      v14 = ElementIndexForTextLocation + 1;
    }

    else
    {
      if (!v10)
      {
        if ((a3 & 1) == 0)
        {
          return ElementIndexForTextLocation;
        }

        v18 = 1;
        v14 = ElementIndexForTextLocation;
        v15 = ElementIndexForTextLocation;
LABEL_34:
        __NSTextRunStorageReleaseElementContentsInRange(a1, v15, v18);
        [*(a1 + 24) removeElementsInRange:{v15, v18}];
        return v14;
      }

      if (v10 == -1)
      {
        if ([objc_msgSend(a2 "endLocation")] != 1)
        {
          goto LABEL_3;
        }

        v13 = -[NSTextRange initWithLocation:endLocation:]([NSTextRange alloc], "initWithLocation:endLocation:", [a2 endLocation], objc_msgSend(v8, "location"));
        v18 = 0;
        v15 = 0x7FFFFFFFFFFFFFFFLL;
        v23 = 1;
        v14 = ElementIndexForTextLocation;
        if (v13)
        {
          goto LABEL_37;
        }

        goto LABEL_32;
      }

      v13 = 0;
      v14 = ElementIndexForTextLocation;
    }

    v15 = 0x7FFFFFFFFFFFFFFFLL;
    if (v12 == 1)
    {
      v16 = __NSTextRunStorageGetElementIndexForTextLocation(a1, [a2 endLocation], 1);
      v17 = *(a1 + 24);
      if (v16 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v16 = [v17 count];
      }

      else
      {
        v20 = [v17 elementAtIndex:v16];
        v21 = *v20;
        if ([objc_msgSend(a2 "endLocation")] == 1)
        {
          if ([objc_msgSend(a2 "endLocation")])
          {
            v22 = -[NSTextRange initWithLocation:endLocation:]([NSTextRange alloc], "initWithLocation:endLocation:", [a2 endLocation], objc_msgSend(v21, "endLocation"));

            *v20 = v22;
          }

          else
          {
            ++v16;
          }
        }
      }

      v18 = v16 - v14;
      if ((v16 - v14) >= 1)
      {
        if (a3)
        {
          v23 = 0;
          v15 = v14;
          if (!v13)
          {
            goto LABEL_32;
          }

LABEL_37:
          v24 = [*(a1 + 24) elementAtIndex:ElementIndexForTextLocation];

          *v24 = v13;
          if ((v23 & 1) == 0)
          {
LABEL_33:
            if (!v18)
            {
              return v14;
            }

            goto LABEL_34;
          }

LABEL_38:
          ElementIndexForTextLocation = v14;
          goto LABEL_3;
        }

        __NSTextRunStorageReleaseElementContentsInRange(a1, v14, v16 - v14);
        if (v18 != 1)
        {
          [*(a1 + 24) removeElementsInRange:{v14 + 1, v18 - 1}];
        }

        v23 = 0;
        v18 = 0;
        v15 = 0x7FFFFFFFFFFFFFFFLL;
        if (v13)
        {
          goto LABEL_37;
        }

LABEL_32:
        if (!v23)
        {
          goto LABEL_33;
        }

        goto LABEL_38;
      }

      v18 = 0;
      v15 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v18 = 0;
    }

    v23 = 1;
    if (v13)
    {
      goto LABEL_37;
    }

    goto LABEL_32;
  }

  ElementIndexForTextLocation = [v7 count];
LABEL_3:
  v25[0] = 0;
  v25[1] = 0;
  [*(a1 + 24) insertElements:v25 count:1 atIndex:ElementIndexForTextLocation];
  return ElementIndexForTextLocation;
}

uint64_t _moveLinesInLayoutManager(void *a1, uint64_t a2, uint64_t a3, int a4, double a5)
{
  v35 = 0;
  v36 = 0;
  result = [a1 isValidGlyphIndex:a2];
  if (result)
  {
    [a1 lineFragmentRectForGlyphAtIndex:a2 effectiveRange:&v35 withoutAdditionalLayout:1];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    [a1 lineFragmentUsedRectForGlyphAtIndex:a2 effectiveRange:0 withoutAdditionalLayout:1];
    result = [a1 setLineFragmentRect:v35 forGlyphRange:v36 usedRect:{v12, v14 + a5, v16, v18, v20, v19 + a5, v21, v22}];
  }

  if (a4)
  {
    result = [a1 isValidGlyphIndex:a2 + a3];
    if (result)
    {
      [a1 lineFragmentRectForGlyphAtIndex:a2 + a3 effectiveRange:&v35 withoutAdditionalLayout:1];
      v24 = v23;
      v26 = v25;
      v28 = v27;
      v30 = v29;
      [a1 lineFragmentUsedRectForGlyphAtIndex:a2 + a3 effectiveRange:0 withoutAdditionalLayout:1];
      return [a1 setLineFragmentRect:v35 forGlyphRange:v36 usedRect:{v24, v26 - a5, v28, v30, v32, v31 - a5, v33, v34}];
    }
  }

  return result;
}

uint64_t _colorValForColor(void *a1)
{
  v1 = [a1 CGColor];
  if (!v1)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v2 = v1;
  ColorSpace = CGColorGetColorSpace(v1);
  CFRetain(v2);
  v4 = *MEMORY[0x1E695F138];
  Name = CGColorSpaceGetName(ColorSpace);
  if (!CFEqual(v4, Name))
  {
    v6 = CGColorSpaceCreateWithName(v4);
    CopyByMatchingToColorSpace = CGColorCreateCopyByMatchingToColorSpace(v6, kCGRenderingIntentDefault, v2, 0);
    if (CopyByMatchingToColorSpace)
    {
      v8 = CopyByMatchingToColorSpace;
      CFRelease(v2);
      v2 = v8;
    }

    CFRelease(v6);
  }

  if (CGColorGetNumberOfComponents(v2) >= 3 && (Components = CGColorGetComponents(v2)) != 0)
  {
    __asm { FMOV            V2.2D, #0.5 }

    v15 = vshl_u32(vmovn_s64(vcvtq_s64_f64(vrndmq_f64(vmlaq_f64(_Q2, vdupq_n_s64(0x406FE00000000000uLL), *Components)))), 0x800000010);
    v16 = v15.i32[1] | v15.i32[0] | vcvtmd_s64_f64(Components[1].f64[0] * 255.0 + 0.5);
  }

  else
  {
    v16 = 0x7FFFFFFFFFFFFFFFLL;
  }

  CFRelease(v2);
  return v16;
}

void sub_18E807A2C(_Unwind_Exception *a1)
{
  objc_end_catch();
  objc_sync_exit(v1);
  _Unwind_Resume(a1);
}

void sub_18E808484(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose((v26 - 192), 8);
  _Block_object_dispose((v26 - 160), 8);
  _Block_object_dispose((v26 - 128), 8);
  _Block_object_dispose((v26 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_18E80C4C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, uint64_t a53, uint64_t a54)
{
  if (a2 == 1)
  {
    objc_begin_catch(exception_object);
    [a51 paragraphGlyphRange];
    NSLog(@"%@: Exception %@ raised during typesetting layout manager %@, glyph range {%lu %lu}. Ignoring...");
    objc_end_catch();
    JUMPOUT(0x18E80BF50);
  }

  _Unwind_Resume(exception_object);
}

__n128 UIRetainedIdentityKeyDictionaryCallbacks@<Q0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  result = *(MEMORY[0x1E695E9D8] + 8);
  *(a1 + 8) = result;
  v2 = MEMORY[0x1E695D768];
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = v2;
  return result;
}

__n128 UIRetainedIdentityValueDictionaryCallbacks@<Q0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  result = *(MEMORY[0x1E695E9E8] + 8);
  *(a1 + 8) = result;
  *(a1 + 24) = MEMORY[0x1E695D768];
  *(a1 + 32) = 0;
  return result;
}

__n128 UIRetainedIdentitySetCallbacks@<Q0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  result = *(MEMORY[0x1E695E9F8] + 8);
  *(a1 + 8) = result;
  v2 = MEMORY[0x1E695D768];
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = v2;
  return result;
}

__n128 UIRetainedIdentityArrayCallbacks@<Q0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  result = *(MEMORY[0x1E695E9C0] + 8);
  *(a1 + 8) = result;
  *(a1 + 24) = MEMORY[0x1E695D768];
  *(a1 + 32) = 0;
  return result;
}

__n128 UIRetainedValueUniquingSetCallbacks@<Q0>(uint64_t a1@<X8>)
{
  v1 = MEMORY[0x1E695E9F8];
  *a1 = 0;
  result = *(v1 + 8);
  *(a1 + 8) = result;
  *(a1 + 24) = MEMORY[0x1E695D768];
  *(a1 + 32) = UICFStrictBoolNumberEqual;
  *(a1 + 40) = MEMORY[0x1E695D788];
  return result;
}

uint64_t UICFStrictBoolNumberEqual(const void *a1, const void *a2)
{
  if (*MEMORY[0x1E695E4D0] == a1 || *MEMORY[0x1E695E4D0] == a2)
  {
    return a1 == a2;
  }

  if (*MEMORY[0x1E695E4C0] == a1 || *MEMORY[0x1E695E4C0] == a2)
  {
    return a1 == a2;
  }

  else
  {
    return CFEqual(a1, a2);
  }
}

void *UIAppendBytesForValueToData(void *result, uint64_t a2)
{
  v2 = *(a2 + 20);
  if (v2 <= 5)
  {
    if (*(a2 + 20) <= 1u)
    {
      if (*(a2 + 20))
      {
        LOWORD(v6) = *(a2 + 24);
        v3 = 2;
      }

      else
      {
        LOBYTE(v6) = *(a2 + 24);
        v3 = 1;
      }

      return [result appendBytes:&v6 length:v3];
    }

    if (v2 != 2)
    {
      if (v2 != 3)
      {
        return result;
      }

      goto LABEL_11;
    }

    goto LABEL_14;
  }

  if (*(a2 + 20) <= 7u)
  {
    if (v2 != 6)
    {
      if (v2 != 7)
      {
        return result;
      }

LABEL_11:
      v6 = *(a2 + 24);
      v3 = 8;
      return [result appendBytes:&v6 length:v3];
    }

    LODWORD(v6) = *(a2 + 24);
LABEL_17:
    v3 = 4;
    return [result appendBytes:&v6 length:v3];
  }

  if (v2 != 8)
  {
    if (v2 != 10)
    {
      return result;
    }

LABEL_14:
    LODWORD(v6) = *(a2 + 24);
    goto LABEL_17;
  }

  v4 = *(a2 + 24);
  v5 = *(a2 + 32);

  return [result appendBytes:v4 length:v5];
}

__CFArray *UICreateOrderedAndStrippedCoderValues(const __CFArray *a1, uint64_t a2)
{
  Count = CFArrayGetCount(a1);
  if (Count >= 2)
  {
    v5 = Count;
    Mutable = CFDictionaryCreateMutable(0, Count, 0, MEMORY[0x1E695E9E8]);
    for (i = 0; i != v5; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1, i);
      CFDictionarySetValue(Mutable, ValueAtIndex, [MEMORY[0x1E696AD98] numberWithInteger:i]);
    }

    MutableCopy = CFArrayCreateMutableCopy(0, v5, a1);
    v15.location = 0;
    v15.length = v5;
    CFArraySortValues(MutableCopy, v15, UIOrderNibCoderValues, Mutable);
    CFRelease(Mutable);
    v10 = [MEMORY[0x1E695DF90] dictionary];
    v11 = 0;
    while (1)
    {
      v12 = CFArrayGetValueAtIndex(MutableCopy, v11);
      if (*(v12 + 4) != -1)
      {
        [v10 removeAllObjects];
      }

      if ([*(v12 + 1) isEqual:a2])
      {
        goto LABEL_11;
      }

      if (![v10 objectForKey:*(v12 + 1)])
      {
        break;
      }

      --v5;
      CFArrayRemoveValueAtIndex(MutableCopy, v11);
LABEL_12:
      if (v11 >= v5)
      {
        return MutableCopy;
      }
    }

    [v10 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithInteger:", v11), *(v12 + 1)}];
LABEL_11:
    ++v11;
    goto LABEL_12;
  }

  return CFRetain(a1);
}

uint64_t UIOrderNibCoderValues(_DWORD *key, _DWORD *a2, CFDictionaryRef theDict)
{
  v5 = key[4];
  v6 = a2[4];
  if (v5 < v6)
  {
    result = -1;
  }

  else
  {
    result = 1;
  }

  if (v5 == v6)
  {
    v9 = [CFDictionaryGetValue(theDict key)];
    v10 = [CFDictionaryGetValue(theDict a2)];
    if (v9 < v10)
    {
      v11 = -1;
    }

    else
    {
      v11 = 1;
    }

    if (v9 == v10)
    {
      return 0;
    }

    else
    {
      return v11;
    }
  }

  return result;
}

void UIWriteArchiveToData(void *a1, int a2, void *a3, void *a4, const __CFArray *a5, uint64_t a6)
{
  v127 = *MEMORY[0x1E69E9840];
  v7 = [MEMORY[0x1E695DFA8] set];
  Count = CFArrayGetCount(a5);
  if (Count >= 1)
  {
    v9 = Count;
    for (i = 0; i != v9; ++i)
    {
      [v7 addObject:{*(CFArrayGetValueAtIndex(a5, i) + 1)}];
    }
  }

  v11 = [MEMORY[0x1E695DF90] dictionary];
  v94 = [MEMORY[0x1E695DF88] data];
  v116 = 0u;
  v117 = 0u;
  v118 = 0u;
  v119 = 0u;
  obj = v7;
  v12 = [v7 countByEnumeratingWithState:&v116 objects:v126 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = 0;
    v15 = *v117;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v117 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v116 + 1) + 8 * j);
        v18 = [v17 UTF8String];
        v19 = strlen(v18);
        UIAppendVInt32ToData(v94, v19);
        [v94 appendBytes:v18 length:v19];
        [v11 setObject:UINumberWithNibArchiveIndex(v14) forKey:v17];
        v14 = (v14 + 1);
      }

      v13 = [obj countByEnumeratingWithState:&v116 objects:v126 count:16];
    }

    while (v13);
  }

  v20 = UICreateOrderedAndStrippedCoderValues(a5, a6);
  v86 = [MEMORY[0x1E695DF88] data];
  v21 = [MEMORY[0x1E695DF90] dictionary];
  v89 = [MEMORY[0x1E695DF90] dictionary];
  v22 = UINumberWithNibArchiveIndex(0);
  v88 = v21;
  [v21 setObject:v22 forKey:UINumberWithNibArchiveIndex(0)];
  theArray = v20;
  v23 = CFArrayGetCount(v20);
  if (v23 < 1)
  {
    v25 = 0;
    v26 = 0;
LABEL_22:
    v35 = UINumberWithNibArchiveIndex(v26);
    [v89 setObject:v35 forKey:UINumberWithNibArchiveIndex(v25)];
    goto LABEL_23;
  }

  v24 = v23;
  v25 = 0;
  v26 = 0;
  for (k = 0; k != v24; ++k)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v20, k);
    v29 = ValueAtIndex[4];
    if (v29 < v25)
    {
      UIWriteArchiveToData_cold_3();
    }

    v30 = ValueAtIndex;
    if (v29 != v25)
    {
      v31 = UINumberWithNibArchiveIndex(k);
      [v88 setObject:v31 forKey:UINumberWithNibArchiveIndex(v29)];
      v32 = UINumberWithNibArchiveIndex(v26);
      [v89 setObject:v32 forKey:UINumberWithNibArchiveIndex(v25)];
      LODWORD(v26) = 0;
      v25 = v29;
    }

    v33 = UINibArchiveIndexFromNumber([v11 objectForKey:*(v30 + 8)]);
    v34 = UIFixedByteLengthForType(*(v30 + 20));
    UIAppendVInt32ToData(v86, v33);
    LOBYTE(v120) = *(v30 + 20);
    [v86 appendBytes:&v120 length:1];
    if (v34 == -1)
    {
      UIAppendVInt32ToData(v86, [v30 byteLength]);
    }

    UIAppendBytesForValueToData(v86, v30);
    v26 = (v26 + 1);
  }

  if (v25 != -1)
  {
    goto LABEL_22;
  }

LABEL_23:
  v36 = [MEMORY[0x1E695DFA0] orderedSet];
  v37 = [objc_msgSend(a3 "allKeys")];
  v112 = 0u;
  v113 = 0u;
  v114 = 0u;
  v115 = 0u;
  v38 = [v37 countByEnumeratingWithState:&v112 objects:v125 count:16];
  if (v38)
  {
    v39 = v38;
    v40 = *v113;
    do
    {
      for (m = 0; m != v39; ++m)
      {
        if (*v113 != v40)
        {
          objc_enumerationMutation(v37);
        }

        [v36 addObject:{objc_msgSend(a3, "objectForKey:", *(*(&v112 + 1) + 8 * m))}];
      }

      v39 = [v37 countByEnumeratingWithState:&v112 objects:v125 count:16];
    }

    while (v39);
  }

  v42 = [MEMORY[0x1E695DF90] dictionary];
  v43 = [objc_msgSend(a4 "allKeys")];
  v108 = 0u;
  v109 = 0u;
  v110 = 0u;
  v111 = 0u;
  v44 = [v43 countByEnumeratingWithState:&v108 objects:v124 count:16];
  if (v44)
  {
    v45 = v44;
    v46 = *v109;
    do
    {
      for (n = 0; n != v45; ++n)
      {
        if (*v109 != v46)
        {
          objc_enumerationMutation(v43);
        }

        [v36 addObjectsFromArray:{objc_msgSend(a4, "objectForKey:", *(*(&v108 + 1) + 8 * n))}];
      }

      v45 = [v43 countByEnumeratingWithState:&v108 objects:v124 count:16];
    }

    while (v45);
  }

  v106 = 0u;
  v107 = 0u;
  v104 = 0u;
  v105 = 0u;
  v48 = [v36 countByEnumeratingWithState:&v104 objects:v123 count:16];
  if (v48)
  {
    v49 = v48;
    v50 = 0;
    v51 = *v105;
    do
    {
      for (ii = 0; ii != v49; ++ii)
      {
        if (*v105 != v51)
        {
          objc_enumerationMutation(v36);
        }

        [v42 setObject:UINumberWithNibArchiveIndex(v50) forKey:*(*(&v104 + 1) + 8 * ii)];
        v50 = (v50 + 1);
      }

      v49 = [v36 countByEnumeratingWithState:&v104 objects:v123 count:16];
    }

    while (v49);
  }

  v53 = [MEMORY[0x1E695DF88] data];
  v100 = 0u;
  v101 = 0u;
  v102 = 0u;
  v103 = 0u;
  v90 = v36;
  v54 = [v36 countByEnumeratingWithState:&v100 objects:v122 count:16];
  if (v54)
  {
    v55 = v54;
    v93 = *v101;
    do
    {
      for (jj = 0; jj != v55; ++jj)
      {
        if (*v101 != v93)
        {
          objc_enumerationMutation(v90);
        }

        v57 = *(*(&v100 + 1) + 8 * jj);
        v58 = [a4 objectForKey:v57];
        v59 = [v57 UTF8String];
        v60 = strlen(v59);
        v61 = [v58 count];
        UIAppendVInt32ToData(v53, v60 + 1);
        UIAppendVInt32ToData(v53, v61);
        v98 = 0u;
        v99 = 0u;
        v96 = 0u;
        v97 = 0u;
        v62 = [v58 countByEnumeratingWithState:&v96 objects:v121 count:16];
        if (v62)
        {
          v63 = v62;
          v64 = *v97;
          do
          {
            for (kk = 0; kk != v63; ++kk)
            {
              if (*v97 != v64)
              {
                objc_enumerationMutation(v58);
              }

              v120 = UINibArchiveIndexFromNumber([v42 objectForKey:*(*(&v96 + 1) + 8 * kk)]);
              [v53 appendBytes:&v120 length:4];
            }

            v63 = [v58 countByEnumeratingWithState:&v96 objects:v121 count:16];
          }

          while (v63);
        }

        [v53 appendBytes:v59 length:v60];
        LOBYTE(v120) = 0;
        [v53 appendBytes:&v120 length:1];
      }

      v55 = [v90 countByEnumeratingWithState:&v100 objects:v122 count:16];
    }

    while (v55);
  }

  v66 = [MEMORY[0x1E695DF88] data];
  v67 = [a3 count];
  if (v67 >= 1)
  {
    v68 = v67;
    for (mm = 0; mm != v68; ++mm)
    {
      v70 = [MEMORY[0x1E696AD98] numberWithInteger:mm];
      v71 = [a3 objectForKey:v70];
      if (!v71)
      {
        UIWriteArchiveToData_cold_2();
      }

      v72 = [v42 objectForKey:v71];
      v73 = [v88 objectForKey:v70];
      v74 = [v89 objectForKey:v70];
      if (!v72 || ((v75 = v74, v73) ? (v76 = v74 == 0) : (v76 = 0), v76))
      {
        UIWriteArchiveToData_cold_1();
      }

      v77 = UINibArchiveIndexFromNumber(v72);
      UIAppendVInt32ToData(v66, v77);
      if (v73)
      {
        v78 = UINibArchiveIndexFromNumber(v73);
      }

      else
      {
        v78 = 0;
      }

      UIAppendVInt32ToData(v66, v78);
      if (v75)
      {
        v79 = UINibArchiveIndexFromNumber(v75);
      }

      else
      {
        v79 = 0;
      }

      UIAppendVInt32ToData(v66, v79);
    }
  }

  [a1 appendBytes:"NIBArchive" length:10];
  v120 = a2;
  [a1 appendBytes:&v120 length:4];
  v120 = 10;
  [a1 appendBytes:&v120 length:4];
  v120 = [a3 count];
  [a1 appendBytes:&v120 length:4];
  v120 = 50;
  [a1 appendBytes:&v120 length:4];
  v120 = [obj count];
  [a1 appendBytes:&v120 length:4];
  v120 = [v66 length] + 50;
  [a1 appendBytes:&v120 length:4];
  v120 = CFArrayGetCount(theArray);
  [a1 appendBytes:&v120 length:4];
  v80 = [v66 length];
  v120 = v80 + [v94 length] + 50;
  [a1 appendBytes:&v120 length:4];
  v120 = [v90 count];
  [a1 appendBytes:&v120 length:4];
  v81 = [v66 length];
  v82 = v81 + [v94 length];
  v120 = v82 + [v86 length] + 50;
  [a1 appendBytes:&v120 length:4];
  [a1 appendData:v66];
  [a1 appendData:v94];
  [a1 appendData:v86];
  [a1 appendData:v53];
  CFRelease(theArray);
}

uint64_t __UIWriteArchiveToData_block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  if (a3 != 0 && a2 == 0)
  {
    result = -1;
  }

  else
  {
    result = 1;
  }

  if ((a2 != 0) == (a3 != 0))
  {
    return [a2 compare:?];
  }

  return result;
}

Class initNSImage()
{
  __NSGetFrameworkReference(0, 0);
  result = objc_getClass("NSImage");
  classNSImage = result;
  if (!result)
  {
    initNSImage_cold_1();
  }

  getNSImageClass = NSImageFunction;
  return result;
}

uint64_t initUIImagePNGRepresentation(uint64_t a1)
{
  v2 = __NSGetFrameworkReference(0, 0);
  v3 = dlsym(v2, "UIImagePNGRepresentation");
  softLinkUIImagePNGRepresentation = v3;
  if (!v3)
  {
    initUIImagePNGRepresentation_cold_1();
  }

  return (v3)(a1);
}

Class initNSTextAttachmentView()
{
  __NSGetFrameworkReference(0, 0);
  result = objc_getClass("NSTextAttachmentView");
  classNSTextAttachmentView = result;
  if (!result)
  {
    initNSTextAttachmentView_cold_1();
  }

  getNSTextAttachmentViewClass = NSTextAttachmentViewFunction;
  return result;
}

Class initUITextAttachmentView()
{
  __NSGetFrameworkReference(0, 0);
  result = objc_getClass("UITextAttachmentView");
  classUITextAttachmentView = result;
  if (!result)
  {
    initUITextAttachmentView_cold_1();
  }

  getUITextAttachmentViewClass = UITextAttachmentViewFunction;
  return result;
}

uint64_t init_UIAccessibilityContentSizeCategoryImageAdjustingScaleFactorForTraitCollection(uint64_t a1)
{
  v2 = __NSGetFrameworkReference(0, 0);
  v3 = dlsym(v2, "_UIAccessibilityContentSizeCategoryImageAdjustingScaleFactorForTraitCollection");
  softLink_UIAccessibilityContentSizeCategoryImageAdjustingScaleFactorForTraitCollection = v3;
  if (!v3)
  {
    init_UIAccessibilityContentSizeCategoryImageAdjustingScaleFactorForTraitCollection_cold_1();
  }

  return (v3)(a1);
}

void _CFDictionaryApplyBlock(const __CFDictionary *a1, void *a2)
{
  context = a2;
  CFDictionaryApplyFunction(a1, keyValueBlockApplier, &context);
}

void _CFArrayApplyBlock(const __CFArray *a1, CFIndex a2, CFIndex a3, void *a4)
{
  context = a4;
  v8.location = a2;
  v8.length = a3;
  CFArrayApplyFunction(a1, v8, valueBlockApplier, &context);
}

void _CFSetApplyBlock(const __CFSet *a1, void *a2)
{
  context = a2;
  CFSetApplyFunction(a1, valueBlockApplier, &context);
}

void _CFArraySortValuesWithBlock(__CFArray *a1, CFIndex a2, CFIndex a3, void *a4)
{
  context = a4;
  v8.location = a2;
  v8.length = a3;
  CFArraySortValues(a1, v8, compareBlockApplier, &context);
}

uint64_t _rtfWhiteColor()
{
  if (onceToken != -1)
  {
    _rtfWhiteColor_cold_1();
  }

  return _white;
}

uint64_t _rtfBlackColor()
{
  if (onceToken != -1)
  {
    _rtfBlackColor_cold_1();
  }

  return _black;
}

uint64_t rtfDataFromFileWrapper(void *a1)
{
  v1 = [a1 fileWrappers];
  v2 = [v1 objectForKey:@"TXT.rtf"];
  if (!v2)
  {
    v2 = [v1 objectForKey:@"index.rtf"];
  }

  if (![v2 isRegularFile])
  {
    return 0;
  }

  return [v2 regularFileContents];
}

void cachedRTFFontFree(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x193AD4070](a2);

  NSZoneFree(v3, a2);
}

uint64_t raiseRTFException(uint64_t a1)
{
  v1 = [MEMORY[0x1E695DF30] exceptionWithName:NSRTFException reason:objc_msgSend(MEMORY[0x1E696AEC0] userInfo:{"stringWithUTF8String:", a1), 0}];

  return [v1 raise];
}

uint64_t unknownClass(uint64_t result)
{
  if (*(result + 2800) == 2)
  {
    v2 = result;
    _NSRTFSkipGroup((result + 536));

    return _NSRTFRouteToken(v2 + 536);
  }

  return result;
}

uint64_t readDate(uint64_t a1)
{
  v2 = objc_opt_new();
  _NSRTFGetToken((a1 + 536));
  if (*(a1 + 2764) != 3)
  {
    goto LABEL_21;
  }

  v3 = 0x8000000000000000;
  do
  {
    if (*(a1 + 2768) != 6)
    {
      break;
    }

    v4 = *(a1 + 2772);
    if (v4 <= 8)
    {
      switch(v4)
      {
        case 6:
          [v2 setYear:*(a1 + 2776)];
          break;
        case 7:
          [v2 setMonth:*(a1 + 2776)];
          break;
        case 8:
          [v2 setDay:*(a1 + 2776)];
          break;
      }
    }

    else if (v4 > 10)
    {
      if (v4 == 11)
      {
        [v2 setSecond:*(a1 + 2776)];
      }

      else if (v4 == 58)
      {
        v3 = *(a1 + 2776);
      }
    }

    else if (v4 == 9)
    {
      [v2 setHour:*(a1 + 2776)];
    }

    else
    {
      [v2 setMinute:*(a1 + 2776)];
    }

    _NSRTFGetToken((a1 + 536));
  }

  while (*(a1 + 2764) == 3);
  if (v3 != 0x8000000000000000)
  {
    v8 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:v3];
  }

  else
  {
LABEL_21:
    v5 = *(a1 + 2952);
    if (!v5)
    {
      v6 = objc_alloc(MEMORY[0x1E695DEE8]);
      v7 = [v6 initWithCalendarIdentifier:*MEMORY[0x1E695D850]];
      *(a1 + 2952) = v7;
      [v7 setTimeZone:{objc_msgSend(MEMORY[0x1E695DFE8], "localTimeZone")}];
      v5 = *(a1 + 2952);
    }

    v8 = [v5 dateFromComponents:v2];
  }

  v9 = v8;

  if (*(a1 + 2764) != 1 || *(a1 + 2768) != 1)
  {
    _NSRTFSkipGroup((a1 + 536));
  }

  _NSRTFRouteToken(a1 + 536);
  return v9;
}

uint64_t readNeXTGraphic(uint64_t a1, int a2)
{
  v46 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v43 = 1;
LABEL_6:
    v6 = +[NSAdaptiveImageGlyph _readsAdaptiveImageGlyphFromDocumentFormats];
    goto LABEL_8;
  }

  v4 = *(a1 + 340);
  if (v4 == -1)
  {
    v5 = 80;
  }

  else
  {
    v5 = *(a1 + 340);
  }

  v43 = *(a1 + 344) / 1000.0 + v5 < 988.0;
  if (v4 <= 2781)
  {
    goto LABEL_6;
  }

  v6 = 0;
LABEL_8:
  v7 = +[NSAdaptiveImageGlyph prefersEmojiImageTextAttachment];
  _NSRTFGetToken((a1 + 536));
  if (*(a1 + 2764) == 2)
  {
    v8 = 0;
    do
    {
      v9 = v8 + 1;
      v45[v8] = *(a1 + 2768);
      _NSRTFGetToken((a1 + 536));
      if (*(a1 + 2764) != 2)
      {
        break;
      }
    }

    while (v8++ < 0x3FF);
    if (v9 == 1)
    {
      v11 = 1;
    }

    else if (v45[v9 - 1] == 32)
    {
      v11 = v9 - 1;
    }

    else
    {
      v11 = v9;
    }
  }

  else
  {
    v11 = 0;
  }

  v12 = 0.0;
  if ((a2 & 1) == 0)
  {
    if (_NSRTFGetToken((a1 + 536)) == 4)
    {
      v13 = 0;
      v14 = 1;
      v41 = 1;
      v42 = 0;
      goto LABEL_23;
    }

    v13 = 0;
    v19 = 0;
    v14 = 1;
    v41 = 1;
    v42 = 0;
    v20 = 1;
    while (1)
    {
      v21 = *(a1 + 2764);
      if ((v19 & 1) != 0 && v21 == 2 && v13 <= 0x3FF)
      {
        break;
      }

      if (v21 != 3)
      {
        if (v21 == 1)
        {
          v22 = *(a1 + 2768);
          if (v22 == 1)
          {
            if (v20 < 2)
            {
              goto LABEL_23;
            }

            v19 = 0;
            --v20;
          }

          else
          {
            if (!v22)
            {
              ++v20;
            }

            v19 = 0;
          }

          goto LABEL_56;
        }

LABEL_55:
        v19 = 0;
        goto LABEL_56;
      }

      if (*(a1 + 2768) != 15)
      {
        goto LABEL_55;
      }

      v23 = *(a1 + 2772);
      if (v23 > 8)
      {
        if (v23 <= 10)
        {
          v19 = 0;
          if (v23 == 9)
          {
            v14 = 0;
          }

          else
          {
            v14 = 2;
          }

          goto LABEL_56;
        }

        if (v23 == 11)
        {
          v19 = 0;
          v14 = 1;
          goto LABEL_56;
        }

        if (v23 == 12)
        {
          v19 = 0;
          v14 = 3;
          goto LABEL_56;
        }

        if (v23 != 13)
        {
          goto LABEL_55;
        }

        v6 = 1;
        goto LABEL_33;
      }

      if (v23 > 6)
      {
        v19 = 0;
        if (v23 == 7)
        {
          v12 = *(a1 + 2776) / 20.0;
        }

        else
        {
          v42 = *(a1 + 2776);
        }

        goto LABEL_56;
      }

      if (v23 == 5)
      {
        v19 = 0;
        v43 = 1;
        goto LABEL_56;
      }

      if (v23 != 6)
      {
        goto LABEL_55;
      }

      v19 = 0;
      v41 = 0;
LABEL_56:
      if (_NSRTFGetToken((a1 + 536)) == 4)
      {
        goto LABEL_23;
      }
    }

    bytes[v13++] = *(a1 + 2768);
LABEL_33:
    v19 = 1;
    goto LABEL_56;
  }

  v13 = 0;
  v41 = 1;
  v42 = 0;
  v14 = 1;
LABEL_23:
  _NSRTFRouteToken(a1 + 536);
  v15 = 0;
  v16 = 0;
  if (!+[NSAdaptiveImageGlyph prefersTextAttachment]&& v13)
  {
    v17 = CFStringCreateWithBytes(0, bytes, v13, 0x8000100u, 0);
    if (v17)
    {
      v18 = v17;
      if (v7)
      {
        v16 = [NSEmojiImageTextAttachment emojiImageTextAttachmentForContentIdentifier:v17];
        v15 = 0;
      }

      else
      {
        v15 = [[NSAdaptiveImageGlyph alloc] initWithContentIdentifier:v17];
        v16 = 0;
      }

      if (v16)
      {
LABEL_90:
        if (!(v16 | v15))
        {
          goto LABEL_99;
        }

        goto LABEL_91;
      }
    }

    else
    {
      v15 = 0;
      v16 = 0;
    }
  }

  if (!v11)
  {
    goto LABEL_90;
  }

  if (*(a1 + 2809) == 1)
  {
    v24 = CFStringCreateWithBytes(0, v45, v11, 0x8000100u, 0);
  }

  else
  {
    v25 = objc_alloc(MEMORY[0x1E696AEC0]);
    v24 = [v25 initWithBytes:v45 length:v11 encoding:{objc_msgSend(MEMORY[0x1E696AEC0], "defaultCStringEncoding")}];
  }

  v26 = v24;
  v27 = [objc_msgSend(*(a1 + 64) "fileWrappers")];
  if (v27)
  {
    v28 = v27;
    v29 = 0;
    v30 = v26;
  }

  else
  {
    v29 = CFStringCreateWithBytes(0, v45, v11, *(a1 + 360), 0);
    v31 = [objc_msgSend(*(a1 + 64) "fileWrappers")];
    if (!v31)
    {
      v38 = [objc_msgSend(*(a1 + 64) "fileWrappers")];
      while (1)
      {
        v39 = [v38 nextObject];
        if (!v39)
        {
          break;
        }

        v30 = v39;
        if (![(__CFString *)v39 compare:v26 options:0 range:0, [(__CFString *)v39 length]]|| ![(__CFString *)v30 compare:v29 options:0 range:0, [(__CFString *)v30 length]])
        {
          v40 = [objc_msgSend(*(a1 + 64) "fileWrappers")];
          if (!v40)
          {
            break;
          }

          v28 = v40;
          goto LABEL_77;
        }
      }

LABEL_85:
      v16 = 0;
      goto LABEL_86;
    }

    v28 = v31;
    v30 = v29;
  }

LABEL_77:
  v32 = textAttachmentClassForDocumentName(v30, v6);
  v33 = [(objc_class *)v32 isSubclassOfClass:objc_opt_class()];
  if ((v33 & 1) != 0 || ![(objc_class *)v32 isSubclassOfClass:objc_opt_class()])
  {
    v16 = [[v32 alloc] initWithFileWrapper:v28];
    v34 = 0;
  }

  else
  {

    v15 = [[v32 alloc] initWithFileWrapper:v28];
    v16 = 0;
    v34 = 1;
  }

  if (!(v16 | v15))
  {
    if ((v33 | v34) == 1)
    {
      v16 = [objc_alloc(textAttachmentClassForDocumentName(v30 0))];
      v15 = 0;
      goto LABEL_86;
    }

    v15 = 0;
    goto LABEL_85;
  }

LABEL_86:

  if (!v16)
  {
    goto LABEL_90;
  }

  if (v43)
  {
    [v16 setIgnoresOrientation:1];
  }

  [v16 setStandaloneAlignment:v14];
  [v16 setEmbeddingType:v42];
  [v16 setAllowsTextAttachmentView:v41 & 1];
  [v16 setLineLayoutPadding:v12];
LABEL_91:
  v35 = [a1 mutableAttributes];
  if (v15)
  {
    [v35 setObject:v15 forKeyedSubscript:@"CTAdaptiveImageProvider"];
  }

  else
  {
    [v35 setObject:v16 forKey:@"NSAttachment"];
    v15 = 0;
  }

  if ((*(a1 + 2808) & 1) == 0)
  {
    flushCharacters(a1, 1);
  }

  v36 = *(a1 + 328);
  *(a1 + 328) = v36 + 1;
  *(a1 + 2 * v36 + 72) = -4;
  *(a1 + 2808) = 1;
  if (*(a1 + 328) >= 0x80uLL)
  {
    flushCharacters(a1, 1);
  }

  flushCharacters(a1, 1);
LABEL_99:
  if (a2)
  {
    return [a1 _popState];
  }

  _NSRTFSkipGroup((a1 + 536));
  return _NSRTFRouteToken(a1 + 536);
}

uint64_t __readFieldInst_block_invoke(void *a1)
{
  v1 = *(*(a1[4] + 8) + 24);
  if (v1 < 1)
  {
    return 0;
  }

  v3 = 2 * v1;
  result = malloc_type_malloc(2 * v1, 0xBDD76137uLL);
  if (result)
  {
    v5 = result;
    memcpy(result, *(*(a1[5] + 8) + 24), *(*(a1[6] + 8) + 24));
    if (*(*(a1[4] + 8) + 24) != 1000)
    {
      free(*(*(a1[5] + 8) + 24));
    }

    *(*(a1[5] + 8) + 24) = v5;
    *(*(a1[4] + 8) + 24) = v3;
    return 1;
  }

  return result;
}

objc_class *textAttachmentClassForDocumentName(void *a1, int a2)
{
  v3 = [a1 pathExtension];
  if (v3)
  {
    v4 = [MEMORY[0x1E6982C40] typeWithFilenameExtension:v3];
    if (v4)
    {
      v5 = v4;
      if (a2 && [v4 isEqual:{+[NSAdaptiveImageGlyph contentType](NSAdaptiveImageGlyph, "contentType")}])
      {
        if (+[NSAdaptiveImageGlyph prefersEmojiImageTextAttachment])
        {
          result = +[NSTextAttachment textAttachmentClassForFileType:](NSTextAttachment, "textAttachmentClassForFileType:", [+[NSEmojiImageTextAttachment _UTIForEmojiImage](NSEmojiImageTextAttachment "_UTIForEmojiImage")]);
          if (result)
          {
            return result;
          }
        }

        else if (!+[NSAdaptiveImageGlyph prefersTextAttachment])
        {
          result = objc_opt_class();
          if (result)
          {
            return result;
          }
        }
      }

      result = +[NSTextAttachment textAttachmentClassForFileType:](NSTextAttachment, "textAttachmentClassForFileType:", [v5 identifier]);
      if (result)
      {
        return result;
      }
    }
  }

  return objc_opt_class();
}

void processCharacter(uint64_t a1, __int16 a2)
{
  if ((*(a1 + 2808) & 1) == 0)
  {
    flushCharacters(a1, 1);
  }

  v4 = *(a1 + 328);
  *(a1 + 328) = v4 + 1;
  *(a1 + 2 * v4 + 72) = a2;
  *(a1 + 2808) = 1;
  if (*(a1 + 328) >= 0x80uLL)
  {

    flushCharacters(a1, 1);
  }
}

uint64_t colorFromRTFRGB(uint64_t a1, int a2, int a3, int a4)
{
  v7 = *(a1 + 356);
  NSColorClass_3 = getNSColorClass_3();
  v9 = a2 / 255.0;
  v10 = a3 / 255.0;
  v11 = a4 / 255.0;
  if (v7 == 3)
  {

    return [(objc_class *)NSColorClass_3 colorWithDisplayP3Red:v9 green:v10 blue:v11 alpha:1.0];
  }

  else
  {

    return [(objc_class *)NSColorClass_3 _disambiguated_due_to_CIImage_colorWithRed:v9 green:v10 blue:v11 alpha:1.0];
  }
}

Class __NSTextGraphicsContextProviderGetColorClass(uint64_t a1)
{
  if (+[NSTextGraphicsContextProvider textGraphicsContextProviderClassRespondsToColorQuery])
  {
    v2 = +[NSTextGraphicsContextProvider textGraphicsContextProviderClass];

    return [(objc_class *)v2 colorClassForApplicationFrameworkContext:a1];
  }

  else
  {

    return +[NSTextGraphicsContextProvider __defaultColorClass];
  }
}

void processMSUnicodeChar(uint64_t a1)
{
  v2 = *(a1 + 2776);
  if (!_NSValidCharacterSet)
  {
    Predefined = CFCharacterSetGetPredefined(kCFCharacterSetIllegal);
    _NSValidCharacterSet = CFCharacterSetCreateMutableCopy(0, Predefined);
    CFCharacterSetInvert(_NSValidCharacterSet);
  }

  if (v2 == 65533)
  {
    v4 = [a1 mutableAttributes];
    if (![v4 objectForKey:NSGlyphInfoAttributeName])
    {
      return;
    }

LABEL_15:
    if ((*(a1 + 2808) & 1) == 0)
    {
      flushCharacters(a1, 1);
    }

    v9 = *(a1 + 328);
    *(a1 + 328) = v9 + 1;
    *(a1 + 2 * v9 + 72) = v2;
    *(a1 + 2808) = 1;
    if (*(a1 + 328) >= 0x80uLL)
    {
      flushCharacters(a1, 1);
    }

    goto LABEL_37;
  }

  if (!CFCharacterSetIsCharacterMember(_NSValidCharacterSet, v2) && (*(a1 + 410) & 0x380) != 0)
  {
    return;
  }

  if ((v2 - 8234) > 4)
  {
    goto LABEL_15;
  }

  flushCharacters(a1, 1);
  v5 = *(a1 + 2776);
  v6 = [objc_msgSend(a1 "mutableAttributes")];
  v7 = v6;
  if (v5 <= 8235)
  {
    if (v5 == 8234)
    {
      v10 = 0;
    }

    else
    {
      if (v5 != 8235)
      {
        goto LABEL_33;
      }

      v10 = 1;
    }
  }

  else
  {
    switch(v5)
    {
      case 8238:
        v10 = 3;
        break;
      case 8237:
        v10 = 2;
        break;
      case 8236:
        if (!v6 || [v6 count] < 2)
        {
          goto LABEL_35;
        }

        v8 = [v7 subarrayWithRange:{0, objc_msgSend(v7, "count") - 1}];
        goto LABEL_32;
      default:
        goto LABEL_33;
    }
  }

  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v10];
  if (!v11)
  {
    goto LABEL_33;
  }

  v12 = v11;
  if (v7 && [v7 count])
  {
    v8 = [v7 arrayByAddingObject:v12];
  }

  else
  {
    v8 = [MEMORY[0x1E695DEC8] arrayWithObject:v12];
  }

LABEL_32:
  v7 = v8;
LABEL_33:
  if (!v7)
  {
LABEL_35:
    [objc_msgSend(a1 "mutableAttributes")];
    v13 = (a1 + 410);
    v14 = *(a1 + 410) & 0xFFFEFFFF;
    goto LABEL_36;
  }

  [objc_msgSend(a1 "mutableAttributes")];
  v13 = (a1 + 410);
  v14 = *(a1 + 410) | 0x10000;
LABEL_36:
  *v13 = v14;
LABEL_37:
  v15 = (*(a1 + 410) >> 7) & 7;
  if (v15)
  {
    do
    {
      if (_NSRTFGetToken((a1 + 536)) != 2)
      {
        break;
      }

      v15 -= *(a1 + 2768) != 32;
    }

    while (v15);
    if (*(a1 + 2764) != 2)
    {

      _NSRTFUngetToken(a1 + 536);
    }
  }
}

void *readFontPaletteColors(_DWORD *a1)
{
  _NSRTFGetToken(a1 + 134);
  if (a1[692] == 30)
  {
    v2 = 0;
    do
    {
      if (!a1[693])
      {
        v3 = a1[694];
        if (v3 >= 1)
        {
          v4 = [MEMORY[0x1E696AD98] numberWithInteger:v3 >> 16];
          Color = getColor(a1, *(a1 + 1388));
          if (Color)
          {
            v6 = Color;
            if (!v2)
            {
              v2 = [MEMORY[0x1E695DF90] dictionary];
            }

            [v2 setObject:objc_msgSend(v6 forKeyedSubscript:{"CGColor"), v4}];
          }
        }
      }

      _NSRTFGetToken(a1 + 134);
    }

    while (a1[692] == 30);
  }

  else
  {
    v2 = 0;
  }

  _NSRTFUngetToken((a1 + 134));
  return v2;
}

void *readTypographyFeatures(_DWORD *a1)
{
  _NSRTFGetToken(a1 + 134);
  if (a1[692] == 26)
  {
    v2 = 0;
    v3 = *MEMORY[0x1E69657B0];
    v4 = *MEMORY[0x1E69657A0];
    do
    {
      if (!a1[693])
      {
        v5 = a1[694];
        if (v5 >= 1)
        {
          v6 = [MEMORY[0x1E696AD98] numberWithInteger:v5 >> 16];
          v7 = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 1388)];
          if (!v2)
          {
            v2 = [MEMORY[0x1E695DF70] arrayWithCapacity:0];
          }

          v8 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v6, v3, v7, v4, 0}];
          [v2 addObject:v8];
        }
      }

      _NSRTFGetToken(a1 + 134);
    }

    while (a1[692] == 26);
  }

  else
  {
    v2 = 0;
  }

  _NSRTFUngetToken((a1 + 134));
  return v2;
}

uint64_t _NSRTFPanic(uint64_t a1, char *__format, ...)
{
  va_start(va, __format);
  v5 = *MEMORY[0x1E69E9840];
  vsnprintf(__str, 0x400uLL, __format, va);
  __strlcat_chk();
  return (*(a1 + 1192))(__str);
}

uint64_t _NSRTFSkipGroup(_DWORD *a1)
{
  result = _NSRTFGetToken(a1);
  if (result != 4)
  {
    v3 = 1;
    do
    {
      if (a1[557] == 1)
      {
        v4 = a1[558];
        if (v4 == 1)
        {
          if (v3 < 2)
          {
            return result;
          }

          --v3;
        }

        else if (!v4)
        {
          ++v3;
        }
      }

      result = _NSRTFGetToken(a1);
    }

    while (result != 4);
  }

  return result;
}

uint64_t _NSRTFUngetToken(uint64_t a1)
{
  if ((*(a1 + 44) & 0x80000000) == 0)
  {
    _NSRTFPanic(a1, "cannot unget two tokens");
  }

  v2 = *(a1 + 2228);
  if (v2 < 0)
  {
    _NSRTFPanic(a1, "no token to unget");
    v2 = *(a1 + 2228);
  }

  *(a1 + 44) = v2;
  *(a1 + 48) = *(a1 + 2232);
  *(a1 + 56) = *(a1 + 2240);

  return __strlcpy_chk();
}

uint64_t _NSRTFMsg(uint64_t a1, char *__format, ...)
{
  va_start(va, __format);
  v5 = *MEMORY[0x1E69E9840];
  vsnprintf(__str, 0x400uLL, __format, va);
  return (*(a1 + 1184))(__str);
}

uint64_t ReadStyleSheet(uint64_t a1)
{
  _NSRTFSkipGroup(a1);
  *(a1 + 32) = *(a1 + 24);

  return _NSRTFRouteToken(a1);
}

uint64_t ReadPictGroup(_DWORD *a1)
{
  v1 = a1;
  _NSRTFSkipGroup(a1);

  return _NSRTFRouteToken(v1);
}

uint64_t ReadObjGroup(_DWORD *a1)
{
  v1 = a1;
  _NSRTFSkipGroup(a1);

  return _NSRTFRouteToken(v1);
}

uint64_t GetChar(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= *(a1 + 16))
  {
    return -1;
  }

  v2 = *(a1 + 2224);
  if (v2 > 1022)
  {
    return -1;
  }

  v4 = *(a1 + 8);
  *(a1 + 24) = v1 + 1;
  v3 = *(v4 + v1);
  v5 = a1 + 1200;
  *(a1 + 2224) = v2 + 1;
  *(v5 + v2) = v3;
  *(v5 + *(a1 + 2224)) = 0;
  return v3;
}

uint64_t RTFCharToHex(unsigned int a1)
{
  v1 = a1;
  if ((a1 & 0x80000000) == 0)
  {
    if ((*(MEMORY[0x1E69E9830] + 4 * a1 + 60) & 0x8000) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (__maskrune(a1, 0x8000uLL))
  {
LABEL_3:
    v1 = __tolower(v1);
  }

LABEL_4:
  if ((v1 - 48) >= 0xA)
  {
    return v1 - 87;
  }

  else
  {
    return (v1 - 48);
  }
}

uint64_t UIAreObjectsSortableForEncoding(void *a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [a1 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v10;
    LOBYTE(isKindOfClass) = 1;
    LOBYTE(v6) = 1;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v10 != v4)
      {
        objc_enumerationMutation(a1);
      }

      if (isKindOfClass)
      {
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        if (v6)
        {
          goto LABEL_10;
        }
      }

      else
      {
        isKindOfClass = 0;
        if (v6)
        {
LABEL_10:
          objc_opt_class();
          v6 = objc_opt_isKindOfClass();
          goto LABEL_11;
        }
      }

      v6 = 0;
LABEL_11:
      if (((isKindOfClass | v6) & 1) == 0)
      {
        return 0;
      }

      if (v3 == ++v7)
      {
        v3 = [a1 countByEnumeratingWithState:&v9 objects:v13 count:16];
        if (v3)
        {
          goto LABEL_3;
        }

        return 1;
      }
    }
  }

  return 1;
}

void sub_18E817944(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

CTFontRef UISystemFontCreate(int a1, int a2)
{
  if (a2)
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  return UINewFont(@"Helvetica", v2, 0, 0, 1, 0, a1, 0.0);
}

CTFontRef UISystemFontForSize(int a1)
{
  v1 = (a1 - 10);
  if (v1 > 0xF)
  {

    return UINewFont(@"Helvetica", 0, 0, 0, 1, 0, a1, 0.0);
  }

  else
  {
    if (!__fontTable[v1])
    {
      v3 = UINewFont(@"Helvetica", 0, 0, 0, 1, 0, a1, 0.0);
      if (v3)
      {
        v4 = 0;
        atomic_compare_exchange_strong(&__fontTable[v1], &v4, v3);
        if (v4)
        {
        }
      }
    }

    return __fontTable[v1];
  }
}

CTFontRef UISystemFontBoldForSize(int a1)
{
  v1 = (a1 - 10);
  if (v1 > 0xF)
  {

    return UINewFont(@"Helvetica", 2, 0, 0, 1, 0, a1, 0.0);
  }

  else
  {
    if (!__boldTable[v1])
    {
      v3 = UINewFont(@"Helvetica", 2, 0, 0, 1, 0, a1, 0.0);
      if (v3)
      {
        v4 = 0;
        atomic_compare_exchange_strong(&__boldTable[v1], &v4, v3);
        if (v4)
        {
        }
      }
    }

    return __boldTable[v1];
  }
}

void __NSLoadWebKit()
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ____NSLoadWebKit_block_invoke_2;
  block[3] = &unk_1E726E3B0;
  block[4] = &__block_literal_global_1814;
  if (__NSLoadWebKit_onceToken != -1)
  {
    dispatch_once(&__NSLoadWebKit_onceToken, block);
  }
}

id -[NSHTMLReader _blockLevelElementForNode:](NSHTMLReader *self, SEL a2, id a3)
{
  v3 = a3;
  if (!a3)
  {
    return v3;
  }

  while ([v3 nodeType] != 1)
  {
    v3 = [v3 parentNode];
    if (!v3)
    {
      return v3;
    }
  }

  if ([(NSHTMLReader *)self _elementIsBlockLevel:v3])
  {
    return v3;
  }

  v6 = [v3 parentNode];

  return [(NSHTMLReader *)self _blockLevelElementForNode:v6];
}

uint64_t _dateForString(void *a1)
{
  v2 = objc_alloc(MEMORY[0x1E695DEE8]);
  v3 = [v2 initWithCalendarIdentifier:*MEMORY[0x1E695D850]];
  v4 = objc_alloc_init(MEMORY[0x1E695DF10]);
  v5 = [a1 UTF8String];
  v6 = *v5;
  if ((v6 - 48) > 9)
  {
    v9 = 0;
  }

  else
  {
    v7 = 0;
    do
    {
      v8 = *++v5;
      v7 = v6 + 10 * v7 - 48;
      LOBYTE(v6) = v8;
    }

    while ((v8 - 48) < 0xA);
    v9 = v7;
  }

  [v4 setYear:v9];
  if (*v5 != 45 || (v10 = v5[1], (v10 - 48) > 9) || (v11 = v5[2], (v11 - 48) > 9) || (v12 = v11 + 10 * v10 - 16, v9 = v12, v5[3] != 45))
  {
    [v4 setMonth:v9];
LABEL_24:
    [v4 setDay:v9];
LABEL_25:
    [v4 setHour:v9];
LABEL_26:
    [v4 setMinute:v9];
LABEL_27:
    v24 = 0;
    goto LABEL_28;
  }

  [v4 setMonth:v12];
  v13 = v5[4];
  if ((v13 - 48) > 9)
  {
    goto LABEL_24;
  }

  v14 = v5[5];
  if ((v14 - 48) > 9)
  {
    goto LABEL_24;
  }

  v15 = v14 + 10 * v13 - 16;
  v9 = v15;
  if (v5[6] != 84)
  {
    goto LABEL_24;
  }

  [v4 setDay:v15];
  v16 = v5[7];
  if ((v16 - 48) > 9)
  {
    goto LABEL_25;
  }

  v17 = v5[8];
  if ((v17 - 48) > 9)
  {
    goto LABEL_25;
  }

  v18 = v17 + 10 * v16 - 16;
  v9 = v18;
  if (v5[9] != 58)
  {
    goto LABEL_25;
  }

  [v4 setHour:v18];
  v19 = v5[10];
  if ((v19 - 48) > 9)
  {
    goto LABEL_26;
  }

  v20 = v5[11];
  if ((v20 - 48) > 9)
  {
    goto LABEL_26;
  }

  v21 = v20 + 10 * v19 - 16;
  if (v5[12] != 58)
  {
    v9 = v21;
    goto LABEL_26;
  }

  [v4 setMinute:v21];
  v22 = v5[13];
  if ((v22 - 48) > 9)
  {
    goto LABEL_27;
  }

  v23 = v5[14];
  if ((v23 - 48) > 9 || v5[15] != 90)
  {
    goto LABEL_27;
  }

  [v4 setSecond:(v23 + 10 * v22 - 16)];
  v24 = [v3 dateFromComponents:v4];
LABEL_28:

  return v24;
}

uint64_t _colCompare(void *a1, void *a2)
{
  v3 = [a1 startingColumn];
  v4 = [a2 startingColumn];
  if (v3 < v4)
  {
    return -1;
  }

  else
  {
    return v3 != v4;
  }
}

__CFString *_fontNameForFont(UIFont *a1, int a2)
{
  v4 = [(UIFont *)a1 familyName];
  if (_fontNameForFont_onceToken != -1)
  {
    _fontNameForFont_cold_1();
  }

  v5 = [(UIFont *)a1 fontName];
  v6 = [UIFont fontNamesForFamilyName:v4];
  v7 = [(NSArray *)v6 count];
  if ([(NSString *)v5 isEqualToString:@"LastResort"])
  {
    return 0;
  }

  v23 = a2;
  v9 = 0;
  if (v6 && v7)
  {
    v10 = [(UIFont *)a1 traits];
    v11 = a1;
    if ((v10 & 2) != 0)
    {
      v12 = [(UIFont *)a1 familyName];
      [(UIFont *)a1 pointSize];
      v11 = [UIFont fontWithFamilyName:v12 traits:v10 & 0xFFFFFFFD size:?];
    }

    if (v10)
    {
      v13 = [(UIFont *)v11 familyName];
      [(UIFont *)v11 pointSize];
      v11 = [UIFont fontWithFamilyName:v13 traits:v10 & 0xFFFFFFFE size:?];
    }

    if (v11)
    {
      v14 = v11;
    }

    else
    {
      v14 = a1;
    }

    v15 = [(UIFont *)v14 fontName];
    for (i = 0; i < v7; ++i)
    {
      v17 = [(NSArray *)v6 objectAtIndex:i];
      if ([v17 isEqualToString:v5])
      {
        if (v7 < 3)
        {
          goto LABEL_30;
        }
      }

      else
      {
        v9 = 0;
        if (![v17 isEqualToString:v15] || v7 <= 2)
        {
          continue;
        }
      }

      v9 = [(NSArray *)v6 objectAtIndex:1];
      if (v9)
      {
        if (([(__CFString *)v4 hasSuffix:v9]& 1) != 0)
        {
          goto LABEL_30;
        }

        v18 = [_fontNameForFont_faceNamesToAdd count];
        if (!v18)
        {
          goto LABEL_30;
        }

        v19 = v18;
        v20 = 0;
        do
        {
          v21 = [v9 compare:objc_msgSend(_fontNameForFont_faceNamesToAdd options:{"objectAtIndex:", v20++), 1}];
          if (v21)
          {
            v22 = v20 >= v19;
          }

          else
          {
            v22 = 1;
          }
        }

        while (!v22);
        if (v21)
        {
LABEL_30:
          v9 = 0;
          continue;
        }

        v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@", v4, v9];
        if (v9)
        {
          break;
        }
      }
    }
  }

  if (v23 && [(__CFString *)v4 hasPrefix:@".SF"])
  {
    v4 = @"system-ui";
  }

  if (v9)
  {
    return v9;
  }

  else
  {
    return v4;
  }
}

uint64_t _colorValForColor_0(void *a1)
{
  if (!a1)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  getUIColorClass_0[0]();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = 0.0;
    v6 = 0.0;
    v7 = 0.0;
    v4 = 0.0;
    v5 = 0.0;
    if ([a1 getRed:&v8 green:&v7 blue:&v6 alpha:&v5])
    {
      return ((vcvtmd_s64_f64(v8 * 255.0 + 0.5) << 24) | (vcvtmd_s64_f64(v7 * 255.0 + 0.5) << 16) | (vcvtmd_s64_f64(v6 * 255.0 + 0.5) << 8) | vcvtmd_s64_f64(v5 * 255.0 + 0.5));
    }

    if ([a1 getWhite:&v4 alpha:&v5])
    {
      return ((16843008 * vcvtmd_s64_f64(v4 * 255.0 + 0.5)) | vcvtmd_s64_f64(v5 * 255.0 + 0.5));
    }
  }

  return 0x7FFFFFFFFFFFFFFFLL;
}

uint64_t _rgbaString(uint64_t a1)
{
  if (a1 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = 255;
  }

  else
  {
    v3 = a1;
  }

  if (v3)
  {
    v4 = 1.0;
    if (v3 != 255)
    {
      v4 = v3 / 255.0;
    }
  }

  else
  {
    v4 = 0.0;
  }

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"rgba(%u, %u, %u, %.2g)", HIBYTE(v3), BYTE2(v3), BYTE1(v3), *&v4, v1, v2];
}

void sub_18E824B94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *_escapedStringForString(void *a1, int a2)
{
  v4 = [a1 length];
  v5 = [MEMORY[0x1E696AD60] string];
  if (v4)
  {
    v6 = 0;
    v7 = 0;
    do
    {
      v8 = [a1 characterAtIndex:v6];
      v9 = v8;
      if ((v8 > 0x3E || ((1 << v8) & 0x5000004000000000) == 0) && (v8 != 34 || !a2))
      {
        if (++v6 == v4 && v4 > v7)
        {
          [v5 appendString:{objc_msgSend(a1, "substringWithRange:", v7, v4 - v7)}];
        }

        continue;
      }

      v10 = v6 - v7;
      if (v6 > v7)
      {
        [v5 appendString:{objc_msgSend(a1, "substringWithRange:", v7, v10)}];
      }

      if (v9 > 59)
      {
        if (v9 == 62)
        {
          v11 = v5;
          v12 = @"&gt;";
          goto LABEL_22;
        }

        if (v9 == 60)
        {
          v11 = v5;
          v12 = @"&lt;";
          goto LABEL_22;
        }
      }

      else
      {
        if (v9 == 34)
        {
          v11 = v5;
          v12 = @"&quot;";
          goto LABEL_22;
        }

        if (v9 == 38)
        {
          v11 = v5;
          v12 = @"&amp;";
LABEL_22:
          [v11 appendString:{v12, v10}];
          goto LABEL_23;
        }
      }

      [v5 appendFormat:@"&#x%X;", v10, v9];
LABEL_23:
      v7 = ++v6;
    }

    while (v6 != v4);
  }

  return v5;
}

unint64_t -[NSHTMLWriter _blockClassForBlock:](NSHTMLWriter *self, SEL a2, id a3)
{
  blockStyleStrings = self->_blockStyleStrings;
  v4 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [a3 valueForDimension:0];
  v6 = v5;
  [a3 valueForDimension:1];
  v8 = v7;
  [a3 valueForDimension:2];
  v10 = v9;
  [a3 valueForDimension:4];
  v12 = v11;
  [a3 valueForDimension:5];
  v14 = v13;
  [a3 valueForDimension:6];
  v16 = v15;
  v17 = [a3 valueTypeForDimension:0];
  v64 = [a3 valueTypeForDimension:1];
  v65 = [a3 valueTypeForDimension:2];
  v66 = [a3 valueTypeForDimension:4];
  v67 = [a3 valueTypeForDimension:5];
  v69 = [a3 valueTypeForDimension:6];
  v18 = _colorValForColor_0([a3 backgroundColor]);
  [a3 widthForLayer:1 edge:1];
  v88 = v19;
  [a3 widthForLayer:1 edge:2];
  v87 = v20;
  [a3 widthForLayer:1 edge:3];
  v85 = v21;
  [a3 widthForLayer:1 edge:0];
  v23 = v22;
  v76 = [a3 widthValueTypeForLayer:1 edge:1];
  v75 = [a3 widthValueTypeForLayer:1 edge:2];
  v74 = [a3 widthValueTypeForLayer:1 edge:3];
  v72 = [a3 widthValueTypeForLayer:1 edge:0];
  [a3 widthForLayer:0 edge:1];
  v86 = v24;
  [a3 widthForLayer:0 edge:2];
  v84 = v25;
  [a3 widthForLayer:0 edge:3];
  v83 = v26;
  [a3 widthForLayer:0 edge:0];
  v28 = v27;
  v73 = [a3 widthValueTypeForLayer:0 edge:1];
  v71 = [a3 widthValueTypeForLayer:0 edge:2];
  v70 = [a3 widthValueTypeForLayer:0 edge:3];
  v68 = [a3 widthValueTypeForLayer:0 edge:0];
  v29 = [a3 borderColorForEdge:1];
  v30 = [a3 borderColorForEdge:2];
  v31 = [a3 borderColorForEdge:3];
  v32 = [a3 borderColorForEdge:0];
  v33 = _colorValForColor_0(v29);
  v34 = _colorValForColor_0(v30);
  v35 = _colorValForColor_0(v31);
  v36 = _colorValForColor_0(v32);
  [a3 widthForLayer:-1 edge:1];
  v92 = v37;
  [a3 widthForLayer:-1 edge:2];
  v91 = v38;
  [a3 widthForLayer:-1 edge:3];
  v90 = v39;
  [a3 widthForLayer:-1 edge:0];
  v89 = v40;
  v80 = [a3 widthValueTypeForLayer:-1 edge:1];
  v79 = [a3 widthValueTypeForLayer:-1 edge:2];
  v78 = [a3 widthValueTypeForLayer:-1 edge:3];
  v77 = [a3 widthValueTypeForLayer:-1 edge:0];
  if (v6 > 0.0)
  {
    if (v17 == 1)
    {
      v41 = @"%";
    }

    else
    {
      v41 = @"px";
    }

    [v4 appendFormat:@"width: %.1f%@; ", *&v6, v41];
  }

  if (v8 > 0.0)
  {
    if (v64 == 1)
    {
      v42 = @"%";
    }

    else
    {
      v42 = @"px";
    }

    [v4 appendFormat:@"min-width: %.1f%@; ", *&v8, v42];
  }

  if (v10 > 0.0)
  {
    if (v65 == 1)
    {
      v43 = @"%";
    }

    else
    {
      v43 = @"px";
    }

    [v4 appendFormat:@"max-width: %.1f%@; ", *&v10, v43];
  }

  if (v12 > 0.0)
  {
    if (v66 == 1)
    {
      v44 = @"%";
    }

    else
    {
      v44 = @"px";
    }

    [v4 appendFormat:@"height: %.1f%@; ", *&v12, v44];
  }

  if (v14 > 0.0)
  {
    if (v67 == 1)
    {
      v45 = @"%";
    }

    else
    {
      v45 = @"px";
    }

    [v4 appendFormat:@"min-height: %.1f%@; ", *&v14, v45];
  }

  if (v16 > 0.0)
  {
    if (v69 == 1)
    {
      v46 = @"%";
    }

    else
    {
      v46 = @"px";
    }

    [v4 appendFormat:@"max-height: %.1f%@; ", *&v16, v46];
  }

  if (v18 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v4 appendFormat:@"background-color: #%.6x; ", v18 >> 8];
    if (v18 != 0xFF)
    {
      [v4 appendFormat:@"background-color: %@; ", _rgbaString(v18)];
    }
  }

  if (v23 > 0.0 || v88 > 0.0 || v87 > 0.0 || v85 > 0.0)
  {
    if (v76 == 1)
    {
      v47 = @"%";
    }

    else
    {
      v47 = @"px";
    }

    if (v75 == 1)
    {
      v48 = @"%";
    }

    else
    {
      v48 = @"px";
    }

    if (v74 == 1)
    {
      v49 = @"%";
    }

    else
    {
      v49 = @"px";
    }

    if (v72 == 1)
    {
      v50 = @"%";
    }

    else
    {
      v50 = @"px";
    }

    [v4 appendFormat:@"margin: %.1f%@ %.1f%@ %.1f%@ %.1f%@; ", *&v88, v47, *&v87, v48, *&v85, v49, *&v23, v50];
  }

  if (v28 > 0.0 || v86 > 0.0 || v84 > 0.0 || v83 > 0.0)
  {
    v51 = v73 == 1 ? @"%" : @"px";
    v52 = v71 == 1 ? @"%" : @"px";
    v53 = v70 == 1 ? @"%" : @"px";
    v54 = v68 == 1 ? @"%" : @"px";
    [v4 appendFormat:@"border-style: solid; border-width: %.1f%@ %.1f%@ %.1f%@ %.1f%@; ", *&v86, v51, *&v84, v52, *&v83, v53, *&v28, v54];
    if (v36 != 0x7FFFFFFFFFFFFFFFLL || v33 != 0x7FFFFFFFFFFFFFFFLL || v34 != 0x7FFFFFFFFFFFFFFFLL || v35 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [v4 appendFormat:@"border-color:"];
      if (v33 == 0x7FFFFFFFFFFFFFFFLL)
      {
        [v4 appendString:@" transparent"];
      }

      else
      {
        [v4 appendFormat:@" #%.6x", v33 >> 8];
      }

      if (v34 == 0x7FFFFFFFFFFFFFFFLL)
      {
        [v4 appendString:@" transparent"];
      }

      else
      {
        [v4 appendFormat:@" #%.6x", v34 >> 8];
      }

      if (v35 == 0x7FFFFFFFFFFFFFFFLL)
      {
        [v4 appendString:@" transparent"];
      }

      else
      {
        [v4 appendFormat:@" #%.6x", v35 >> 8];
      }

      if (v36 == 0x7FFFFFFFFFFFFFFFLL)
      {
        [v4 appendString:@" transparent; "];
      }

      else
      {
        [v4 appendFormat:@" #%.6x; ", v36 >> 8];
      }
    }
  }

  if (v89 > 0.0 || v92 > 0.0 || v91 > 0.0 || v90 > 0.0)
  {
    if (v80 == 1)
    {
      v55 = @"%";
    }

    else
    {
      v55 = @"px";
    }

    if (v79 == 1)
    {
      v56 = @"%";
    }

    else
    {
      v56 = @"px";
    }

    if (v78 == 1)
    {
      v57 = @"%";
    }

    else
    {
      v57 = @"px";
    }

    if (v77 == 1)
    {
      v58 = @"%";
    }

    else
    {
      v58 = @"px";
    }

    [v4 appendFormat:@"padding: %.1f%@ %.1f%@ %.1f%@ %.1f%@; ", *&v92, v55, *&v91, v56, *&v90, v57, *&v89, v58];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([a3 collapsesBorders])
    {
      [v4 appendString:@"border-collapse: collapse; "];
    }

    if ([a3 hidesEmptyCells])
    {
      [v4 appendString:@"empty-cells: hide; "];
    }

    if ([a3 layoutAlgorithm] == 1)
    {
      [v4 appendString:@"table-layout: fixed; "];
    }
  }

  if (![v4 length])
  {
    v60 = 0;
    goto LABEL_122;
  }

  while (([v4 hasSuffix:@" "] & 1) != 0 || objc_msgSend(v4, "hasSuffix:", @";"))
  {
    [v4 deleteCharactersInRange:{objc_msgSend(v4, "length") - 1, 1}];
  }

  if ((self->_excludedElements2 & 0x1140000) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v61 = 120;
    }

    else
    {
      objc_opt_class();
      v59 = blockStyleStrings;
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_119;
      }

      v61 = 128;
    }

    v59 = *(&self->super.isa + v61);
    goto LABEL_119;
  }

  v59 = blockStyleStrings;
LABEL_119:
  v62 = [(NSMutableArray *)v59 indexOfObject:v4];
  if (v62 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v62 = [(NSMutableArray *)v59 count];
    [(NSMutableArray *)v59 addObject:v4];
  }

  v60 = v62 + 1;
LABEL_122:

  return v60;
}

uint64_t init_UIApplicationLoadWebKit()
{
  v0 = __NSGetFrameworkReference(0, 0);
  v1 = dlsym(v0, "_UIApplicationLoadWebKit");
  softLink_UIApplicationLoadWebKit = v1;
  if (!v1)
  {
    init_UIApplicationLoadWebKit_cold_1();
  }

  return v1();
}

uint64_t initWebThreadLock()
{
  v0 = __NSGetFrameworkReference(@"WebCore", 1);
  v1 = dlsym(v0, "WebThreadLock");
  softLinkWebThreadLock = v1;
  if (!v1)
  {
    initWebThreadLock_cold_1();
  }

  return v1();
}

uint64_t initWebThreadIsLocked()
{
  v0 = __NSGetFrameworkReference(@"WebCore", 1);
  v1 = dlsym(v0, "WebThreadIsLocked");
  softLinkWebThreadIsLocked = v1;
  if (!v1)
  {
    initWebThreadIsLocked_cold_1();
  }

  return v1();
}

uint64_t ___fontNameForFont_block_invoke()
{
  result = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{@"Condensed", @"Light", @"SemiBold", @"UltraLight", @"ExtraBlack", @"Ornaments", 0}];
  _fontNameForFont_faceNamesToAdd = result;
  return result;
}

uint64_t writeCharacters(uint64_t result, const __CFString *a2, CFIndex a3, uint64_t a4, unsigned int a5)
{
  v6 = a4;
  v8 = result;
  v31 = *MEMORY[0x1E69E9840];
  v9 = 1;
  if (a5 > 0x19 || ((1 << a5) & 0x200000E) == 0)
  {
    v9 = a5 - 1056 < 4;
  }

  if (a4)
  {
    v28 = 0;
    do
    {
      v25 = &v28;
      v10 = v6;
      result = __CFStringEncodeByteStream();
      if (result)
      {
        v11 = result;
        v6 = v10 - result;
        v30[v28] = 0;
        LOBYTE(v12) = v30[0];
        if (v30[0])
        {
          v26 = v10 - result;
          v13 = v30;
          do
          {
            LOBYTE(v14) = v12;
            if (v12 < 1)
            {
              v20 = 0;
            }

            else
            {
              v15 = 0;
              while (1)
              {
                v16 = v14 - 92;
                v17 = v16 > 0x21;
                v18 = (1 << v16) & 0x280000001;
                if (!v17 && v18 != 0)
                {
                  break;
                }

                v20 = v15 + 1;
                v14 = v13[++v15];
                if (v14 < 1)
                {
                  goto LABEL_19;
                }
              }

              v20 = v15;
            }

LABEL_19:
            v21 = &v13[v20];
            result = [v8 appendBytes:v25 length:?];
            v12 = *v21;
            if (!*v21)
            {
              break;
            }

            if (v12 < 0)
            {
              do
              {
                snprintf(__str, 0x28uLL, "\\'%x", v12);
                result = [v8 appendBytes:__str length:strlen(__str)];
                if (v9)
                {
                  if (a5 != 1056 && a5 != 1 || (v23 = *v21, v23 > 0xDF) || v23 - 129 <= 0x1E)
                  {
                    if (v21[1])
                    {
                      snprintf(__str, 0x28uLL, "\\'%x", v21[1]);
                      result = [v8 appendBytes:__str length:strlen(__str)];
                      ++v21;
                    }
                  }
                }

                v24 = *++v21;
                LOBYTE(v12) = v24;
              }

              while (v24 < 0);
            }

            else
            {
              [v8 appendBytes:"\" length:1];
              result = [v8 appendBytes:v21 length:1];
              v22 = *++v21;
              LOBYTE(v12) = v22;
            }

            v13 = v21;
          }

          while (v12);
          v6 = v26;
        }
      }

      else
      {
        if (writeCharacters_writeOldForm == 254)
        {
          writeCharacters_writeOldForm = [objc_msgSend(MEMORY[0x1E695E000] standardUserDefaults];
        }

        CFStringGetCharacterAtIndex(a2, a3);
        if (writeCharacters_writeOldForm)
        {
          snprintf(__str, 0x28uLL, "\\U%d %s\\u%d ");
        }

        else
        {
          snprintf(__str, 0x28uLL, "%s\\u%d ");
        }

        result = [v8 appendBytes:__str length:strlen(__str)];
        v6 = v10 - 1;
        v11 = 1;
      }

      a3 += v11;
    }

    while (v6);
  }

  return result;
}

uint64_t __NSLayoutSectionComparator(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  if (v3 == v5)
  {
    goto LABEL_4;
  }

  if (!v3)
  {
    return 1;
  }

  if (!v5)
  {
    return -1;
  }

LABEL_4:
  v6 = v2 >= v4;
  v7 = v2 == v4;
  v8 = -1;
  if (v6)
  {
    v8 = 1;
  }

  if (v7)
  {
    return 0;
  }

  else
  {
    return v8;
  }
}

uint64_t RGBColorForColor(void *a1)
{
  v2 = CFGetTypeID(a1);
  TypeID = CGColorGetTypeID();
  if (!a1 || v2 != TypeID)
  {
    getUIColorClass_1[0]();
    if (objc_opt_isKindOfClass())
    {
      v12 = 0.0;
      v13 = 0.0;
      v10 = 0.0;
      v11 = 0.0;
      if ([a1 getRed:&v13 green:&v12 blue:&v11 alpha:&v10])
      {
        v4 = off_1ED4DF030();
        v6 = v12;
        v5 = v13;
        v8 = v10;
        v7 = v11;
        return [(objc_class *)v4 colorWithCalibratedRed:v5 green:v6 blue:v7 alpha:v8];
      }

      if ([a1 getWhite:&v13 alpha:&v10])
      {
        v4 = off_1ED4DF030();
        v5 = v13;
        v8 = v10;
        v6 = v13;
        v7 = v13;
        return [(objc_class *)v4 colorWithCalibratedRed:v5 green:v6 blue:v7 alpha:v8];
      }
    }
  }

  return 0;
}

uint64_t newCGColorByConvertingToColorSpaceWithName(int a1, CFStringRef name)
{
  v2 = CGColorSpaceCreateWithName(name);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  if (MEMORY[0x193AD3020](v2, 0))
  {
    v4 = CGColorTransformConvertColor();
    CGColorTransformRelease();
  }

  else
  {
    v4 = 0;
  }

  CFRelease(v3);
  return v4;
}

uint64_t thoroughDataHash(void *a1)
{
  [a1 bytes];
  v2 = [a1 length];
  v3 = CFHashBytes();
  if (v2 >= 0x41)
  {
    v3 ^= CFHashBytes();
    if (v2 >= 0x61)
    {
      return CFHashBytes() ^ v3;
    }
  }

  return v3;
}

void sub_18E82B824(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id OUTLINED_FUNCTION_10_3(SEL a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{

  return [v28 a1];
}

double OUTLINED_FUNCTION_14_1@<D0>(uint64_t a1@<X8>, double a2@<D1>)
{
  if (a1 == 1)
  {
    return a2;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_21_0(uint64_t a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);

  return [v2 countByEnumeratingWithState:va objects:va1 count:16];
}

size_t OUTLINED_FUNCTION_28_0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, char __s)
{

  return strlen(&__s);
}

uint64_t OUTLINED_FUNCTION_31_0@<X0>(const char *a1@<X2>, uint64_t a2@<X8>)
{

  return snprintf(v2, a2 + 1000, a1);
}

uint64_t OUTLINED_FUNCTION_34_0(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);

  return [v2 appendBytes:va length:a1];
}

uint64_t OUTLINED_FUNCTION_42()
{

  return [v1 objectForKey:v0];
}

const char *OUTLINED_FUNCTION_43(uint64_t a1, uint64_t a2)
{

  return [(NSRTFWriter *)v2 writeColor:a2 type:6];
}

uint64_t OUTLINED_FUNCTION_48(int a1, int a2, const char *a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, char __str)
{

  return snprintf(&__str, 0x64uLL, a3);
}

size_t OUTLINED_FUNCTION_49(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char __s)
{

  return strlen(&__s);
}

size_t OUTLINED_FUNCTION_50(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, char __s)
{

  return strlen(&__s);
}

uint64_t OUTLINED_FUNCTION_51@<X0>(const char *a1@<X2>, uint64_t a2@<X8>)
{

  return snprintf(v2, a2 + 200, a1);
}

uint64_t OUTLINED_FUNCTION_52(uint64_t a1)
{

  return writeCharacters(v2, v1, 0, a1, 0x600u);
}

uint64_t OUTLINED_FUNCTION_53()
{
  v4 = *(v0 + 8);

  return writeCharacters(v4, v1, 0, v2, 0x600u);
}

size_t OUTLINED_FUNCTION_56(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, char __s)
{

  return strlen(&__s);
}

uint64_t OUTLINED_FUNCTION_57(int a1, int a2, const char *a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char __str)
{

  return snprintf(&__str, 0xC8uLL, a3);
}

uint64_t OUTLINED_FUNCTION_58(int a1, int a2, const char *a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char __str)
{

  return snprintf(&__str, 0x64uLL, a3);
}

uint64_t OUTLINED_FUNCTION_69(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 168);

  return [v3 objectForKey:a2];
}

uint64_t OUTLINED_FUNCTION_70(uint64_t a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);

  return [v2 countByEnumeratingWithState:va objects:va1 count:16];
}

size_t OUTLINED_FUNCTION_71(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char __s)
{

  return strlen(&__s);
}

size_t OUTLINED_FUNCTION_72(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, char __s)
{

  return strlen(&__s);
}

size_t OUTLINED_FUNCTION_73(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char __s)
{

  return strlen(&__s);
}

size_t OUTLINED_FUNCTION_74(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char __s)
{

  return strlen(&__s);
}

uint64_t OUTLINED_FUNCTION_75(int a1, int a2, const char *a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char __str)
{

  return snprintf(&__str, 0x20uLL, a3);
}

void sub_18E82C750(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __UIKitLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  UIKitLibraryCore_frameworkLibrary = result;
  return result;
}

const __CFString *__NSRunCopyStringCallback()
{
  OUTLINED_FUNCTION_3_0();
  if (*(v2 + 152))
  {
    v3 = *(v2 + 152);
  }

  else
  {
    v3 = v2;
  }

  v4 = objc_allocWithZone(__NSATSStringSegment);
  v5 = [objc_msgSend(*(v3 + 80) "attributedString")];
  v6 = *(v3 + 128) + v1;

  return [(__NSATSStringSegment *)v4 initWithOriginalString:v5 range:v6, v0];
}

void sub_18E8388B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t SaveMetadataInfo(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@Range", a3];
  if (*(a1 + 560) > a2)
  {
    [-[NSRTFReader _documentInfoDictionary](a1) setObject:objc_msgSend(MEMORY[0x1E696B098] forKey:{"valueWithRange:", a2, *(a1 + 560) + ~a2), v5}];
  }

  v6 = [(NSRTFReader *)a1 _documentInfoDictionary];
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 560)];

  return [v6 setObject:v7 forKey:@"NSRTFMetadataEndLocation"];
}

CFRange CFStringTokenizerGetCurrentTokenRange(CFStringTokenizerRef tokenizer)
{
  v1 = MEMORY[0x1EEDB7B38](tokenizer);
  result.length = v2;
  result.location = v1;
  return result;
}

CGPoint CGContextConvertPointToDeviceSpace(CGContextRef c, CGPoint point)
{
  MEMORY[0x1EEDB92F8](c, point, *&point.y);
  result.y = v3;
  result.x = v2;
  return result;
}

CGPoint CGContextConvertPointToUserSpace(CGContextRef c, CGPoint point)
{
  MEMORY[0x1EEDB9300](c, point, *&point.y);
  result.y = v3;
  result.x = v2;
  return result;
}

CGRect CGContextConvertRectToDeviceSpace(CGContextRef c, CGRect rect)
{
  MEMORY[0x1EEDB9308](c, rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGContextConvertRectToUserSpace(CGContextRef c, CGRect rect)
{
  MEMORY[0x1EEDB9310](c, rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectApplyAffineTransform(CGRect rect, CGAffineTransform *t)
{
  MEMORY[0x1EEDBAD98](t, rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x1EEDBAE30](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectIntegral(CGRect rect)
{
  MEMORY[0x1EEDBAE38](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CGRectUnion(CGRect r1, CGRect r2)
{
  MEMORY[0x1EEDBAE88](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CTFontGetBoundingBox(CTFontRef font)
{
  MEMORY[0x1EEDBEF90](font);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CTFontGetBoundingRectsForGlyphs(CTFontRef font, CTFontOrientation orientation, const CGGlyph *glyphs, CGRect *boundingRects, CFIndex count)
{
  MEMORY[0x1EEDBEF98](font, *&orientation, glyphs, boundingRects, count);
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

CGRect CTLineGetBoundsWithOptions(CTLineRef line, CTLineBoundsOptions options)
{
  MEMORY[0x1EEDBF2E0](line, options);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CTLineGetImageBounds(CTLineRef line, CGContextRef context)
{
  MEMORY[0x1EEDBF300](line, context);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CFRange CTLineGetStringRange(CTLineRef line)
{
  v1 = MEMORY[0x1EEDBF340](line);
  result.length = v2;
  result.location = v1;
  return result;
}

CFRange CTRunGetStringRange(CTRunRef run)
{
  v1 = MEMORY[0x1EEDBF488](run);
  result.length = v2;
  result.location = v1;
  return result;
}

NSRect NSInsetRect(NSRect aRect, CGFloat dX, CGFloat dY)
{
  MEMORY[0x1EEDC6FC8](aRect.origin, *&aRect.origin.y, aRect.size, *&aRect.size.height, dX, dY);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

NSRange NSIntersectionRange(NSRange range1, NSRange range2)
{
  v2 = MEMORY[0x1EEDC6FE0](range1.location, range1.length, range2.location, range2.length);
  result.length = v3;
  result.location = v2;
  return result;
}

NSRect NSIntersectionRect(NSRect aRect, NSRect bRect)
{
  MEMORY[0x1EEDC6FE8](aRect.origin, *&aRect.origin.y, aRect.size, *&aRect.size.height, bRect.origin, *&bRect.origin.y, bRect.size, *&bRect.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

NSRange NSUnionRange(NSRange range1, NSRange range2)
{
  v2 = MEMORY[0x1EEDC7160](range1.location, range1.length, range2.location, range2.length);
  result.length = v3;
  result.location = v2;
  return result;
}

NSRect NSUnionRect(NSRect aRect, NSRect bRect)
{
  MEMORY[0x1EEDC7168](aRect.origin, *&aRect.origin.y, aRect.size, *&aRect.size.height, bRect.origin, *&bRect.origin.y, bRect.size, *&bRect.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}