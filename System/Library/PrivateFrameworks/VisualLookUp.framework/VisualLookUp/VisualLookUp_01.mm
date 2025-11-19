uint64_t VISLabeledPRPointReadFrom(void *a1, void *a2)
{
  for (i = a2; ; i = a2)
  {
    v5 = [i position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v32 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v32 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v32 & 0x7F) << v6;
      if ((v32 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      if (v7++ >= 9)
      {
        v13 = 0;
        goto LABEL_16;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_16:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      break;
    }

    v14 = v13 >> 3;
    if ((v13 >> 3) <= 2)
    {
      if (v14 == 1)
      {
        v31 = 0;
        v22 = [a2 position] + 4;
        if (v22 >= [a2 position] && (v23 = objc_msgSend(a2, "position") + 4, v23 <= objc_msgSend(a2, "length")))
        {
          v27 = [a2 data];
          [v27 getBytes:&v31 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        LODWORD(v24) = v31;
        [a1 setConfidence:v24];
        continue;
      }

      if (v14 == 2)
      {
        v30 = 0;
        v16 = [a2 position] + 4;
        if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 4, v17 <= objc_msgSend(a2, "length")))
        {
          v28 = [a2 data];
          [v28 getBytes:&v30 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        LODWORD(v18) = v30;
        [a1 setPrecision:v18];
        continue;
      }
    }

    else
    {
      switch(v14)
      {
        case 3:
          v29 = 0;
          v19 = [a2 position] + 4;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 4, v20 <= objc_msgSend(a2, "length")))
          {
            v26 = [a2 data];
            [v26 getBytes:&v29 range:{objc_msgSend(a2, "position"), 4}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
          }

          else
          {
            [a2 _setError];
          }

          LODWORD(v21) = v29;
          [a1 setRecall:v21];
          continue;
        case 4:
          v15 = PBReaderReadString();
          [a1 setLabel:v15];
          goto LABEL_32;
        case 5:
          v15 = PBReaderReadString();
          [a1 setReadable_label:v15];
LABEL_32:

          continue;
      }
    }

    result = PBReaderSkipValueWithTag();
    if (!result)
    {
      return result;
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t VISOperatingPointSelectorsReadFrom(void *a1, void *a2)
{
  for (i = a2; ; i = a2)
  {
    v5 = [i position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      LOBYTE(v32) = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v32 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v32 & 0x7F) << v6;
      if ((v32 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      if (v7++ >= 9)
      {
        v13 = 0;
        goto LABEL_16;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_16:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      break;
    }

    v14 = v13 >> 3;
    if ((v13 >> 3) > 2)
    {
      if (v14 == 3)
      {
        v32 = 0;
        v25 = [a2 position] + 4;
        if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 4, v26 <= objc_msgSend(a2, "length")))
        {
          v31 = [a2 data];
          [v31 getBytes:&v32 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        LODWORD(v27) = v32;
        [a1 setRecall:v27];
        continue;
      }

      if (v14 == 4)
      {
        v32 = 0;
        v18 = [a2 position] + 4;
        if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 4, v19 <= objc_msgSend(a2, "length")))
        {
          v29 = [a2 data];
          [v29 getBytes:&v32 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        LODWORD(v20) = v32;
        [a1 setF_beta:v20];
        continue;
      }
    }

    else
    {
      if (v14 == 1)
      {
        v32 = 0;
        v22 = [a2 position] + 4;
        if (v22 >= [a2 position] && (v23 = objc_msgSend(a2, "position") + 4, v23 <= objc_msgSend(a2, "length")))
        {
          v30 = [a2 data];
          [v30 getBytes:&v32 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        LODWORD(v24) = v32;
        [a1 setConfidence:v24];
        continue;
      }

      if (v14 == 2)
      {
        v32 = 0;
        v15 = [a2 position] + 4;
        if (v15 >= [a2 position] && (v16 = objc_msgSend(a2, "position") + 4, v16 <= objc_msgSend(a2, "length")))
        {
          v28 = [a2 data];
          [v28 getBytes:&v32 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        LODWORD(v17) = v32;
        [a1 setPrecision:v17];
        continue;
      }
    }

    result = PBReaderSkipValueWithTag();
    if (!result)
    {
      return result;
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t VISOperatingPointsCollectionReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v16[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16[0] & 0x7F) << v5;
        if ((v16[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(VISSelectedOperatingPoint);
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !VISSelectedOperatingPointReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        if (v13)
        {
          [a1 addPoints:v13];
        }
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v14 = [a2 position];
    }

    while (v14 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t VISSelectedOperatingPointReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v16) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16 & 0x7F) << v5;
        if ((v16 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 2)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(VISOperatingPointSelectors);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !VISOperatingPointSelectorsReadFrom(v13, a2))
        {
          goto LABEL_30;
        }

        PBReaderRecallMark();
        [a1 setSelector:v13];
LABEL_25:

        goto LABEL_27;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_27:
      v14 = [a2 position];
      if (v14 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = objc_alloc_init(VISLabeledPRPoint);
    v16 = 0;
    v17 = 0;
    if (!PBReaderPlaceMark() || !VISLabeledPRPointReadFrom(v13, a2))
    {
LABEL_30:

      return 0;
    }

    PBReaderRecallMark();
    [a1 setSelected:v13];
    goto LABEL_25;
  }

  return [a2 hasError] ^ 1;
}

id _VISharedAnalytics()
{
  if (_VISharedAnalytics_onceToken != -1)
  {
    _VISharedAnalytics_cold_1();
  }

  v1 = _VISharedAnalytics_analytics;

  return v1;
}

void VIAnalyticsLogStartEntryPointWithEvent(uint64_t a1, void *a2, uint64_t a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = a2;
  if (!a3)
  {
    if (+[_TtC12VisualLookUp8VILogger shouldLogInternalMessage])
    {
      v6 = +[_TtC12VisualLookUp8VILogger log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v8 = 138412290;
        v9 = v5;
        _os_log_impl(&dword_1D9962000, v6, OS_LOG_TYPE_ERROR, "VIAnalyticsLogStartEntryPointWithEvent passed SFViewAppearEventUnknown from %@", &v8, 0xCu);
      }
    }

    a3 = 28;
  }

  v7 = [VIAEntryPointEvent startEventWithQueryID:a1 viewAppearEvent:a3 originatingApplication:v5];
  [VIAnalytics logEvent:v7];
}

void VIAnalyticsLogEndEntryPoint(uint64_t a1)
{
  v1 = [VIAEntryPointEvent endEventWithOriginatingApplication:a1];
  [VIAnalytics logEvent:v1];
}

void VIAnalyticsLogCacheHit(uint64_t a1, uint64_t a2, void *a3)
{
  v16[3] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v15[0] = @"com.apple.argos.cache_hit_context_key.query_id";
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a1];
  v16[0] = v6;
  v15[1] = @"com.apple.argos.cache_hit_context_key.cached_result_query_id";
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a2];
  v15[2] = @"com.apple.argos.cache_hit_context_key.application_id";
  v16[1] = v7;
  v16[2] = v5;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:3];

  v12 = 0;
  v9 = [VIACacheHitContext contextWithDictionary:v8 error:&v12];
  v10 = v12;
  if (v9)
  {
    v11 = [[VIACacheHitEvent alloc] initWithContext:v9];
    [VIAnalytics logEvent:v11];
  }

  else
  {
    if (!+[_TtC12VisualLookUp8VILogger shouldLogInternalMessage])
    {
      goto LABEL_4;
    }

    v11 = +[_TtC12VisualLookUp8VILogger log];
    if (os_log_type_enabled(&v11->super, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v14 = v10;
      _os_log_impl(&dword_1D9962000, &v11->super, OS_LOG_TYPE_ERROR, "Could not create VIACacheHitContext: %{public}@", buf, 0xCu);
    }
  }

LABEL_4:
}

void VIAnalyticsLogCacheHitWithContext(void *a1)
{
  v1 = a1;
  v2 = [[VIACacheHitEvent alloc] initWithContext:v1];

  [VIAnalytics logEvent:v2];
}

__CVBuffer *VIRotateCVPixelBufferUsingVTSessionToUp(__CVBuffer *a1, int a2)
{
  if (a2 > 3)
  {
    if (a2 <= 5)
    {
      v4 = a2 != 4 && a2 == 5;
    }

    else
    {
      v3 = a2 == 8;
      if (a2 == 7)
      {
        v3 = 1;
      }

      v4 = a2 == 6 || v3;
    }

    goto LABEL_16;
  }

  if (a2 > 1)
  {
    v4 = 0;
LABEL_16:
    v5 = 0;
    if (!VTPixelRotationSessionCreateWithRotationAndFlip())
    {
      Width = CVPixelBufferGetWidth(a1);
      Height = CVPixelBufferGetHeight(a1);
      v8 = !v4;
      if (v4)
      {
        v9 = Height;
      }

      else
      {
        v9 = Width;
      }

      if (v8)
      {
        Width = Height;
      }

      PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
      v5 = VICreateCVPixelBufferWithFormat(v9, Width, PixelFormatType);
      if (v5 && VTPixelRotationSessionRotateImage(0, a1, v5))
      {
        CVPixelBufferRelease(v5);
        v5 = 0;
      }

      CFRelease(0);
    }

    return v5;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      return a1;
    }

    v4 = 0;
    goto LABEL_16;
  }

  if (+[_TtC12VisualLookUp8VILogger shouldLogInternalMessage])
  {
    v12 = +[_TtC12VisualLookUp8VILogger log];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1D9962000, v12, OS_LOG_TYPE_ERROR, "Invalid from orientation", buf, 2u);
    }
  }

  return a1;
}

void sub_1D99898AC(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1D998A098(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1D998A28C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, void *a14, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a14)
  {
    operator delete(a14);
  }

  _Unwind_Resume(a1);
}

void *std::vector<long long>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<long long>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<long long>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_1D998A5A0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<long long>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<long long>>(a1, a2);
  }

  std::vector<long long>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<long long>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_1E858A9A0, MEMORY[0x1E69E5278]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x1E69E55B0] + 16);
  return result;
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x1E69E5420], MEMORY[0x1E69E52A8]);
}

void *std::vector<float>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<float>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<float>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_1D998A814(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<float>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(a1, a2);
  }

  std::vector<long long>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void sub_1D998A910(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

size_t VIPixelBufferSize(__CVBuffer *a1)
{
  Width = CVPixelBufferGetWidth(a1);
  CVPixelBufferGetHeight(a1);
  return Width;
}

id VIImageDomainInfoFromKeys(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    v7 = *MEMORY[0x1E695EFF8];
    v8 = *(MEMORY[0x1E695EFF8] + 8);
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        BYTE4(v13) = 0;
        LODWORD(v13) = 1;
        v10 = [VIImageRegionDomainInfo initWithDomainKey:"initWithDomainKey:labelName:glyphName:displayLabel:displayMessage:hasFocalPoint:focalPoint:isCornerGlyph:ocrResultsRequired:barcodeResultsRequired:isLowConfidence:shouldShowDynamicGlyph:" labelName:*(*(&v14 + 1) + 8 * i) glyphName:0 displayLabel:0 displayMessage:0 hasFocalPoint:0 focalPoint:0 isCornerGlyph:v7 ocrResultsRequired:v8 barcodeResultsRequired:v13 isLowConfidence:? shouldShowDynamicGlyph:?];
        [v2 addObject:v10];
      }

      v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  v11 = [v2 copy];

  return v11;
}

id VIImageDomainKeysFromInfo(void *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v11 + 1) + 8 * i) domainKey];
        [v2 addObject:v8];
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v9 = [v2 copy];

  return v9;
}

CVPixelBufferRef VICreateCVPixelBufferWithFormat(size_t a1, size_t a2, OSType a3)
{
  v25[2] = *MEMORY[0x1E69E9840];
  pixelBufferOut = 0;
  v6 = *MEMORY[0x1E6966020];
  v24[0] = *MEMORY[0x1E69660D8];
  v24[1] = v6;
  v25[0] = MEMORY[0x1E695E0F8];
  v25[1] = &unk_1F554BFB8;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:2];
  v8 = *MEMORY[0x1E695E480];
  v9 = CVPixelBufferCreate(*MEMORY[0x1E695E480], a1, a2, a3, v7, &pixelBufferOut);
  if (CVPixelBufferIsPlanar(pixelBufferOut) && ((a2 | a1) & 1) != 0)
  {
    CVPixelBufferRelease(pixelBufferOut);
    pixelBufferOut = 0;
    if (a1 == 1)
    {
      v10 = 2;
    }

    else
    {
      v10 = a1 & 0xFFFFFFFFFFFFFFFELL;
    }

    if (a2 == 1)
    {
      v11 = 2;
    }

    else
    {
      v11 = a2 & 0xFFFFFFFFFFFFFFFELL;
    }

    if (+[_TtC12VisualLookUp8VILogger shouldLogInternalMessage])
    {
      v12 = +[_TtC12VisualLookUp8VILogger log];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218752;
        v17 = a1;
        v18 = 2048;
        v19 = a2;
        v20 = 2048;
        v21 = v10;
        v22 = 2048;
        v23 = v11;
        _os_log_impl(&dword_1D9962000, v12, OS_LOG_TYPE_ERROR, "VIImageScaler: requested to create odd size planar image %zu x %zu, closest even image is allocated %zu x %zu", buf, 0x2Au);
      }
    }

    v9 = CVPixelBufferCreate(v8, v10, v11, a3, v7, &pixelBufferOut);
  }

  if (v9)
  {
    v13 = 0;
  }

  else
  {
    v13 = pixelBufferOut;
  }

  return v13;
}

uint64_t _VTModifyPixelBufferWithColor(__CVBuffer *a1, unsigned int a2)
{
  CVPixelBufferLockBaseAddress(a1, 0);
  Height = CVPixelBufferGetHeight(a1);
  BytesPerRow = CVPixelBufferGetBytesPerRow(a1);
  if ((BytesPerRow & 0x3F) != 0)
  {
    if (+[_TtC12VisualLookUp8VILogger shouldLogInternalMessage])
    {
      v6 = +[_TtC12VisualLookUp8VILogger log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v14[0] = 0;
        _os_log_impl(&dword_1D9962000, v6, OS_LOG_TYPE_ERROR, "VIImageScaler: Failed to modify PixelBuffer: only 64 byte aligned buffers are supported", v14, 2u);
      }
    }

    return 4294945519;
  }

  else
  {
    v8 = BytesPerRow;
    BaseAddress = CVPixelBufferGetBaseAddress(a1);
    if (Height)
    {
      v10 = 0;
      *&v11 = vdup_n_s32(a2);
      *(&v11 + 1) = v11;
      do
      {
        if (v8)
        {
          for (i = 0; i < v8; i += 64)
          {
            v13 = &BaseAddress[i];
            *v13 = v11;
            *(v13 + 1) = v11;
            *(v13 + 2) = v11;
            *(v13 + 3) = v11;
          }
        }

        ++v10;
        BaseAddress += 64 * (v8 >> 6);
      }

      while (v10 != Height);
    }

    CVPixelBufferUnlockBaseAddress(a1, 0);
    return 0;
  }
}

double VIRectIntegral(__CVBuffer *a1, int a2, double a3, double a4, double a5, double a6)
{
  IsPlanar = CVPixelBufferIsPlanar(a1);
  v13 = _CGRectIntegralEven;
  if (!IsPlanar)
  {
    v13 = MEMORY[0x1E695F048];
  }

  v14 = v13(a3, a4, a5, a6);
  if (a2)
  {
    VIPixelBufferSize(a1);
    if (CVPixelBufferIsPlanar(a1))
    {
      __asm { FMOV            V1.2D, #0.5 }
    }

    if (v14 < 0.0)
    {
      return 0.0;
    }
  }

  return v14;
}

unint64_t VIvnCropScaleToVi(unint64_t a1)
{
  if (a1 < 3)
  {
    return a1 + 1;
  }

  else
  {
    return 0;
  }
}

double VIPredictionInNormalizedImageCoordinates(uint64_t a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, CGFloat a10, CGFloat a11, CGFloat a12, CGFloat a13)
{
  *&v48[16] = a4;
  *&v48[24] = a5;
  *v48 = a2;
  *&v48[8] = a3;
  v52.origin.x = a10;
  v52.origin.y = a11;
  v52.size.width = a12;
  v52.size.height = a13;
  v50.origin.x = 0.0;
  v50.origin.y = 0.0;
  v50.size.width = 1.0;
  v50.size.height = 1.0;
  v51 = CGRectIntersection(v50, v52);
  x = v51.origin.x;
  width = v51.size.width;
  height = v51.size.height;
  if (!CGRectIsNull(v51))
  {
    v28 = a6 * width / (a7 * height);
    v29 = a8 / a9;
    if (a1 > 2)
    {
      if (a1 == 3)
      {
        v45 = *v48;
        return (x + v45 * width);
      }

      if (a1 != 4)
      {
        return *MEMORY[0x1E695F040];
      }
    }

    else
    {
      if (a1 == 1)
      {
        v40 = v29 <= v28;
        v41 = v28 / v29;
        v42 = v29 / v28;
        v43 = (v42 + -1.0) * 0.5;
        if (v40)
        {
          v43 = 0.0;
          v44 = (v41 + -1.0) * 0.5;
        }

        else
        {
          v44 = 0.0;
        }

        if (v40)
        {
          v42 = 1.0;
        }

        else
        {
          v41 = 1.0;
        }

        v49.a = 1.0 / v41;
        v49.b = 0.0;
        v49.c = 0.0;
        v49.d = 1.0 / v42;
        v49.tx = (v44 / v41);
        v49.ty = (v43 / v42);
        goto LABEL_29;
      }

      if (a1 != 2)
      {
        return *MEMORY[0x1E695F040];
      }
    }

    v30 = v29 <= v28;
    v31 = v28 / v29;
    v32 = v31;
    v33 = ((v31 + -1.0) * -0.5);
    v34 = v29 / v28;
    v35 = v34;
    v36 = ((v34 + -1.0) * -0.5);
    if (v30)
    {
      v37 = v33;
    }

    else
    {
      v37 = 0.0;
    }

    if (v30)
    {
      v38 = 0.0;
    }

    else
    {
      v38 = v36;
    }

    if (v30)
    {
      v39 = v32;
    }

    else
    {
      v39 = 1.0;
    }

    if (v30)
    {
      v35 = 1.0;
    }

    if (a1 == 2)
    {
      v49.a = v35;
      v49.b = 0.0;
      v49.c = 0.0;
      v49.d = v39;
      v49.tx = v38;
      v49.ty = v37;
    }

    else
    {
      v49.a = v35;
      v49.b = 0.0;
      v49.c = 0.0;
      v49.d = v39;
      v49.tx = 0.0;
      v49.ty = 0.0;
    }

LABEL_29:
    *&v45 = CGRectApplyAffineTransform(*v48, &v49);
    return (x + v45 * width);
  }

  return x;
}

double _CGRectIntegralEven(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v8 = floor(a1 * 0.5);
  v9 = round(v8 + v8);
  v10 = a1;
  CGRectGetMaxX(*(&a2 - 1));
  v12.origin.x = a1;
  v12.origin.y = a2;
  v12.size.width = a3;
  v12.size.height = a4;
  CGRectGetMaxY(v12);
  return v9;
}

id _VIServiceNilInputError()
{
  v5[2] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E696A598];
  v4[0] = *MEMORY[0x1E696A578];
  v4[1] = v0;
  v5[0] = @"Unsatisfied parameters.";
  v5[1] = @"Please check for nil input parameters.";
  v1 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:v4 count:2];
  v2 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.argos.objective_c" code:-1 userInfo:v1];

  return v2;
}

uint64_t VIObjectIsEqual(unint64_t a1, uint64_t a2)
{
  if (a1 | a2)
  {
    return [a1 isEqual:a2];
  }

  else
  {
    return 1;
  }
}

BOOL VICompareCGRect(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  v8 = vabdd_f64(a1, a5);
  v9 = fabs(a1 + a5) * 2.22044605e-16;
  v10 = v8 < 2.22507386e-308 || v8 < v9;
  if (v10 && ((v11 = vabdd_f64(a2, a6), v12 = fabs(a2 + a6) * 2.22044605e-16, v11 >= 2.22507386e-308) ? (v13 = v11 < v12) : (v13 = 1), v13 && ((v14 = vabdd_f64(a3, a7), v15 = fabs(a3 + a7) * 2.22044605e-16, v14 >= 2.22507386e-308) ? (v16 = v14 < v15) : (v16 = 1), v16)))
  {
    return fmax(fabs(a4 + a8) * 2.22044605e-16, 2.22507386e-308) > vabdd_f64(a4, a8);
  }

  else
  {
    return 0;
  }
}

uint64_t VICompactMapArray(void *a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v3;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = v4[2](v4, *(*(&v14 + 1) + 8 * v10));
        if (v11)
        {
          [v5 addObject:{v11, v14}];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = [v5 copy];
  return v12;
}

uint64_t VIFlatMapArray(void *a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v3;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = v4[2](v4, *(*(&v14 + 1) + 8 * v10));
        if (v11)
        {
          [v5 addObjectsFromArray:{v11, v14}];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = [v5 copy];
  return v12;
}

double VIFlipOriginNormalizedRect(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  MinX = CGRectGetMinX(*&a1);
  v10.origin.x = a1;
  v10.origin.y = a2;
  v10.size.width = a3;
  v10.size.height = a4;
  CGRectGetMaxY(v10);
  v11.origin.x = a1;
  v11.origin.y = a2;
  v11.size.width = a3;
  v11.size.height = a4;
  CGRectGetWidth(v11);
  v12.origin.x = a1;
  v12.origin.y = a2;
  v12.size.width = a3;
  v12.size.height = a4;
  CGRectGetHeight(v12);
  return MinX;
}

id _VIQueryContextMapperError(uint64_t a1, void *a2)
{
  v12[2] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AEC0];
  v4 = a2;
  v5 = [v3 stringWithFormat:@"Unsatisfied value type for key: %@", a1];
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"The expected type is: %@", v4];

  v7 = *MEMORY[0x1E696A598];
  v11[0] = *MEMORY[0x1E696A578];
  v11[1] = v7;
  v12[0] = v5;
  v12[1] = v6;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];
  v9 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.argos.query_context.error_domain" code:2 userInfo:v8];

  return v9;
}

id _VIQueryContextMapperStringValueParseError(uint64_t a1)
{
  v8[2] = *MEMORY[0x1E69E9840];
  v1 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unsatisfied value string format for key: %@", a1];
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"The value with error is: %@", 0];
  v3 = *MEMORY[0x1E696A598];
  v7[0] = *MEMORY[0x1E696A578];
  v7[1] = v3;
  v8[0] = v1;
  v8[1] = v2;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:2];
  v5 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.argos.query_context.error_domain" code:3 userInfo:v4];

  return v5;
}

__CFString *_VITeamIDToUse(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  if ([a2 count])
  {
    if ([v6 length] && (objc_msgSend(MEMORY[0x1E695DFD8], "setWithArray:", &unk_1F554BFD0), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "containsObject:", v6), v7, (v8 & 1) != 0))
    {
      v9 = @"argosinternal";
    }

    else
    {
      v9 = v5;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void sub_1D999B830(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id VIACacheHitContextMapperError(uint64_t a1, void *a2)
{
  v12[2] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AEC0];
  v4 = a2;
  v5 = [v3 stringWithFormat:@"Unsatisfied value type for key: %@", a1];
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"The expected type is: %@", v4];

  v7 = *MEMORY[0x1E696A598];
  v11[0] = *MEMORY[0x1E696A578];
  v11[1] = v7;
  v12[0] = v5;
  v12[1] = v6;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];
  v9 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.argos.cache_hit_context.error_domain" code:2 userInfo:v8];

  return v9;
}

id VIACacheHitContextMapperMissingValueError(uint64_t a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v1 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Missing required value for key: %@", a1];
  v5 = *MEMORY[0x1E696A578];
  v6[0] = v1;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  v3 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.argos.cache_hit_context.error_domain" code:3 userInfo:v2];

  return v3;
}

id _descriptionForFloatArray(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [v2 appendString:@"["];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v13;
    do
    {
      v8 = 0;
      v9 = v6 + 1;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v12 + 1) + 8 * v8) floatValue];
        [v2 appendFormat:@"%0.8f", v10];
        if (v9 < [v3 count])
        {
          [v2 appendString:{@", "}];
        }

        ++v8;
        ++v9;
      }

      while (v5 != v8);
      v6 += v5;
      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  [v2 appendString:@"]"];

  return v2;
}

__CVBuffer *VIRescaleCVPixelBufferUsingVTSession(__CVBuffer *a1, double a2)
{
  v3 = a1;
  v29 = *MEMORY[0x1E69E9840];
  Width = CVPixelBufferGetWidth(a1);
  Height = CVPixelBufferGetHeight(v3);
  v6 = Height;
  if (Width >= Height)
  {
    v7 = Height;
  }

  else
  {
    v7 = Width;
  }

  if (v7 > a2)
  {
    pixelTransferSessionOut = 0;
    v8 = 0;
    if (!VTPixelTransferSessionCreate(*MEMORY[0x1E695E480], &pixelTransferSessionOut))
    {
      v8 = VICreateCVPixelBufferWithFormat((a2 / v7 * Width), (a2 / v7 * v6), 0x42475241u);
      v9 = pixelTransferSessionOut;
      if (v8)
      {
        if (VTPixelTransferSessionTransferImage(pixelTransferSessionOut, v3, v8))
        {
          CVPixelBufferRelease(v8);
          v8 = 0;
        }

        else if (+[_TtC12VisualLookUp8VILogger shouldLogInternalMessage])
        {
          v10 = +[_TtC12VisualLookUp8VILogger log];
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
          {
            v11 = CVPixelBufferGetWidth(v3);
            v12 = CVPixelBufferGetHeight(v3);
            PixelFormatType = CVPixelBufferGetPixelFormatType(v3);
            v14 = CVPixelBufferGetPixelFormatType(v8);
            *buf = 134219264;
            v18 = v11;
            v19 = 2048;
            v20 = v12;
            v21 = 1024;
            v22 = PixelFormatType;
            v23 = 2048;
            v24 = (a2 / v7 * Width);
            v25 = 2048;
            v26 = (a2 / v7 * v6);
            v27 = 1024;
            v28 = v14;
            _os_log_impl(&dword_1D9962000, v10, OS_LOG_TYPE_DEBUG, "VIPrescaling (w, h, pixtype): from (%zu, %zu, %d) to (%zu, %zu, %d)", buf, 0x36u);
          }
        }

        v9 = pixelTransferSessionOut;
      }

      CFRelease(v9);
    }

    return v8;
  }

  return v3;
}

void _HashItem(void *a1, void *a2)
{
  v3 = MEMORY[0x1E695DF88];
  v4 = a1;
  v10 = [v3 dataWithLength:32];
  v5 = [v4 bytes];
  v6 = [v4 length];

  v7 = v10;
  CC_SHA256(v5, v6, [v10 mutableBytes]);
  v8 = v10;
  v9 = [v10 bytes];
  *a2 = *v9;
  a2[1] = v9[1];
}

id VIAllVisualSearchDomains()
{
  v4[22] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695DFA8];
  v4[0] = @"com.apple.argos.domain_key.art";
  v4[1] = @"com.apple.argos.domain_key.book";
  v4[2] = @"com.apple.argos.domain_key.cats";
  v4[3] = @"com.apple.argos.domain_key.dogs";
  v4[4] = @"com.apple.argos.domain_key.nature";
  v4[5] = @"com.apple.argos.domain_key.media";
  v4[6] = @"com.apple.argos.domain_key.landmark";
  v4[7] = @"com.apple.argos.domain_key.object2D";
  v4[8] = @"com.apple.argos.domain_key.album";
  v4[9] = @"com.apple.argos.domain_key.animals";
  v4[10] = @"com.apple.argos.domain_key.naturalLandmark";
  v4[11] = @"com.apple.argos.domain_key.sculpture";
  v4[12] = @"com.apple.argos.domain_key.skyline";
  v4[13] = @"com.apple.argos.domain_key.insects";
  v4[14] = @"com.apple.argos.domain_key.birds";
  v4[15] = @"com.apple.argos.domain_key.reptiles";
  v4[16] = @"com.apple.argos.domain_key.mammals";
  v4[17] = @"com.apple.argos.domain_key.storefront";
  v4[18] = @"com.apple.argos.domain_key.food";
  v4[19] = @"com.apple.argos.domain_key.laundryCareSymbol";
  v4[20] = @"com.apple.argos.domain_key.autoSymbol";
  v4[21] = @"com.apple.argos.domain_key.signSymbol";
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:22];
  v2 = [v0 setWithArray:v1];

  return v2;
}

uint64_t VIIsSettingsEnabledForLookup()
{
  v0 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.spotlightui"];
  v1 = [v0 objectForKey:@"SBSearchDisabledDomains"];
  v2 = [v1 containsObject:@"DOMAIN_PARSEC"];

  return v2 ^ 1u;
}

void *sub_1D999F248@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v83 = a2;
  v84 = a3;
  v82 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB50F30);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v76 - v8;
  v10 = type metadata accessor for EspressoModel(0);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v76 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v76 - v15;
  LOBYTE(v88[0]) = *(a1 + 104);
  v85 = a1;
  result = sub_1D999FE8C(v88, *(a1 + 128));
  if (!v5)
  {
    v18 = result;
    v78 = v11;
    v79 = v10;
    v80 = v9;
    v81 = 0;
    v76 = v14;
    v77 = v16;
    v19 = *(v4 + 16);
    v20 = OBJC_IVAR____TtC12VisualLookUp21Argos2DV2ModelFactory_modelInfo;
    v21 = swift_allocObject();
    swift_weakInit();
    v22 = v85;
    sub_1D99A170C(v85, v88);
    v23 = swift_allocObject();
    v24 = v88[7];
    *(v23 + 136) = v88[6];
    *(v23 + 152) = v24;
    *(v23 + 168) = v88[8];
    v25 = v88[3];
    *(v23 + 72) = v88[2];
    *(v23 + 88) = v25;
    v26 = v88[5];
    *(v23 + 104) = v88[4];
    *(v23 + 120) = v26;
    v27 = v88[1];
    *(v23 + 40) = v88[0];
    *(v23 + 16) = v83;
    *(v23 + 24) = v84;
    *(v23 + 32) = v21;
    v28 = v89;
    *(v23 + 56) = v27;
    *(v23 + 184) = v28;
    *(v23 + 192) = v18;
    v29 = *(v22 + 120);

    sub_1D9B7E0E0(v29);
    v30 = v81;
    sub_1D9C1947C(v87);
    if (v30)
    {
    }

    v81 = 0;
    if (v19)
    {
      if (v19 == 1)
      {
        sub_1D99A17C8(v87, v86);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB50F38);
        v32 = v79;
        v31 = v80;
        v33 = swift_dynamicCast();
        v34 = *(v78 + 56);
        if (v33)
        {
          v84 = v21;
          v34(v31, 0, 1, v32);
          v35 = v77;
          sub_1D99A18F0(v31, v77);
          v36 = v76;
          sub_1D99A1954(v35, v76);
          v37 = *(v22 + 144);
          v38 = swift_allocObject();
          *(v38 + 16) = sub_1D99A17B4;
          *(v38 + 24) = v23;
          type metadata accessor for EspressoRequest(0);
          v39 = swift_allocObject();
          sub_1D99A1954(v36, v39 + OBJC_IVAR____TtC12VisualLookUp15EspressoRequest_model);
          *(v39 + OBJC_IVAR____TtC12VisualLookUp15EspressoRequest_features) = 0;
          *(v39 + OBJC_IVAR____TtC12VisualLookUp15EspressoRequest_vnScalingMode) = 2;
          v40 = v39 + OBJC_IVAR____TtC12VisualLookUp15EspressoRequest_regionOfInterest;
          *v40 = 0;
          *(v40 + 8) = 0;
          __asm { FMOV            V0.2D, #1.0 }

          *(v40 + 16) = _Q0;
          *(v39 + OBJC_IVAR____TtC12VisualLookUp15EspressoRequest_outputs) = 0;
          v46 = (v39 + OBJC_IVAR____TtC12VisualLookUp15EspressoRequest_completionHandler);
          *v46 = sub_1D99A19B8;
          v46[1] = v38;
          v47 = qword_1EDD349F0;

          if (v47 != -1)
          {
            swift_once();
          }

          v48 = qword_1EDD41F40;

          sub_1D99A19C0(v36, type metadata accessor for EspressoModel);
          *(v39 + OBJC_IVAR____TtC12VisualLookUp15EspressoRequest_engineResult) = v48;
          *(v39 + OBJC_IVAR____TtC12VisualLookUp15EspressoRequest_usesCPUOnly) = 0;
          *(v39 + OBJC_IVAR____TtC12VisualLookUp15EspressoRequest_metricsBucket) = v37;
          v94.origin.x = 0.0;
          v94.origin.y = 0.0;
          v94.size.width = 1.0;
          v94.size.height = 1.0;
          *(v39 + OBJC_IVAR____TtC12VisualLookUp15EspressoRequest_regionOfInterest) = CGRectIntersection(*(v22 + 40), v94);
          v49 = v82;
          v82[3] = &type metadata for EspressoModelRequest;
          v49[4] = &off_1F5533650;

          *v49 = v39;
          sub_1D99A19C0(v35, type metadata accessor for EspressoModel);
          goto LABEL_18;
        }

        v34(v31, 1, 1, v32);
        sub_1D99A1888(v31);
      }

      else
      {
        sub_1D99A17C8(v87, v86);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB50F38);
        type metadata accessor for E5Model();
        if (swift_dynamicCast())
        {
          v84 = v21;
          v66 = v91;
          v67 = *(v22 + 144);
          v68 = swift_allocObject();
          *(v68 + 16) = sub_1D99A17B4;
          *(v68 + 24) = v23;
          type metadata accessor for E5Request();
          v69 = swift_allocObject();
          *(v69 + 16) = v66;
          *(v69 + 24) = 2;
          *(v69 + 32) = *&v66[OBJC_IVAR____TtC12VisualLookUp7E5Model_preferredMetalDevice];
          *(v69 + 40) = sub_1D99A1880;
          *(v69 + 48) = v68;
          *(v69 + 56) = 0;
          *(v69 + 64) = 0;
          __asm { FMOV            V0.2D, #1.0 }

          *(v69 + 72) = _Q0;
          *(v69 + 88) = 0;
          v71 = qword_1EDD349F0;
          swift_retain_n();

          swift_unknownObjectRetain();

          if (v71 != -1)
          {
            swift_once();
          }

          v72 = qword_1EDD41F40;

          *(v69 + 96) = v72;
          *(v69 + 104) = v67;
          v96.origin.x = 0.0;
          v96.origin.y = 0.0;
          v96.size.width = 1.0;
          v96.size.height = 1.0;
          *(v69 + 56) = CGRectIntersection(*(v22 + 40), v96);
          v73 = v82;
          v82[3] = &type metadata for E5ModelRequest;
          v73[4] = &off_1F552E318;

          *v73 = v69;
          goto LABEL_18;
        }
      }

      sub_1D99A182C();
      swift_allocError();
      *v74 = 0xD00000000000001BLL;
      *(v74 + 8) = 0x80000001D9CA3A70;
      *(v74 + 16) = 3;
      swift_willThrow();

      __swift_destroy_boxed_opaque_existential_0Tm(v87);
    }

    v50 = type metadata accessor for MLModelInfo(0);
    sub_1D99A7E00(*(v4 + v20 + *(v50 + 32)), v90);
    v51 = *(v22 + 144);
    type metadata accessor for DurationMeasurement();
    swift_allocObject();

    v52 = sub_1D9AFD4B8(v90, v51);

    sub_1D99A17C8(v87, v86);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB50F38);
    if ((swift_dynamicCast() & 1) == 0)
    {
      sub_1D99A182C();
      swift_allocError();
      *v75 = 0xD00000000000001BLL;
      *(v75 + 8) = 0x80000001D9CA3A70;
      *(v75 + 16) = 3;
      swift_willThrow();

      __swift_destroy_boxed_opaque_existential_0Tm(v87);
    }

    v84 = v21;
    v53 = v22;
    v54 = v91;
    v55 = swift_allocObject();
    v55[2] = v52;
    v55[3] = sub_1D99A17B4;
    v55[4] = v23;
    v56 = objc_allocWithZone(MEMORY[0x1E6984468]);
    v86[4] = sub_1D99A1A20;
    v86[5] = v55;
    v86[0] = MEMORY[0x1E69E9820];
    v86[1] = 1107296256;
    v86[2] = sub_1D9BD99E0;
    v86[3] = &block_descriptor;
    v57 = _Block_copy(v86);
    v58 = v54;

    v59 = [v56 initWithModel:v58 completionHandler:v57];
    _Block_release(v57);

    [v59 setImageCropAndScaleOption_];
    v60 = v53[5];
    v61 = v53[6];
    v62 = v53[7];
    v63 = v53[8];
    v64 = v59;
    v95.origin.x = 0.0;
    v95.origin.y = 0.0;
    v95.size.width = 1.0;
    v95.size.height = 1.0;
    v92.origin.x = v60;
    v92.origin.y = v61;
    v92.size.width = v62;
    v92.size.height = v63;
    v93 = CGRectIntersection(v92, v95);
    [v64 setRegionOfInterest_];

    v65 = v82;
    v82[3] = &type metadata for VisionModelRequest;
    v65[4] = &off_1F55305B8;

    *v65 = v64;
LABEL_18:
    __swift_destroy_boxed_opaque_existential_0Tm(v87);
  }

  return result;
}

void sub_1D999FC40(uint64_t a1, void (*a2)(void **), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1D99A1A44(a1, v27);
  if (v28 == 1)
  {
    v9 = *&v27[0];
    v20 = *&v27[0];
    v21 = 0u;
    v22 = 0u;
    v23 = 0;
    v24 = 1;
    v10 = *&v27[0];
    a2(&v20);

    sub_1D99A1B04(v20, v21, *(&v21 + 1), v22, *(&v22 + 1), v23, v24);
  }

  else
  {
    sub_1D9979B9C(v27, v26);
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v12 = Strong + OBJC_IVAR____TtC12VisualLookUp21Argos2DV2ModelFactory_modelInfo;
      v13 = type metadata accessor for MLModelInfo(0);
      sub_1D99A7FF8(*(v12 + *(v13 + 32)), v29);
      v14 = *(a5 + 144);
      type metadata accessor for DurationMeasurement();
      swift_allocObject();

      sub_1D9AFD4B8(v29, v14);

      v15 = *(a5 + 88);
      v25[0] = *(a5 + 72);
      v25[1] = v15;
      sub_1D99A2034(v26, a6, v25, &v20);
      v16 = v20;
      v17 = v21;
      v19 = v22;
      v18 = v23;
      v24 = 0;
      sub_1D99A1AB4(v20, v21, *(&v21 + 1), v22, *(&v22 + 1), v23, 0);
      a2(&v20);
      sub_1D99A1B04(v20, v21, *(&v21 + 1), v22, *(&v22 + 1), v23, v24);
      sub_1D9AFCCA4();

      sub_1D99A1B04(v16, v17, *(&v17 + 1), v19, *(&v19 + 1), v18, 0);
    }

    __swift_destroy_boxed_opaque_existential_0Tm(v26);
  }
}

void *sub_1D999FE8C(char *a1, char a2)
{
  v4 = *a1;
  if (sub_1D9A15C94(*a1) == 0x6B72616D646E616CLL && v5 == 0xE800000000000000)
  {
    goto LABEL_13;
  }

  v7 = sub_1D9C7E7DC();

  if (v7)
  {
    return sub_1D9C1B898(a2, v2 + OBJC_IVAR____TtC12VisualLookUp21Argos2DV2ModelFactory_modelInfo, 0xD000000000000015, 0x80000001D9CA27B0, 0x74696E676F636572, 0xEB000000006E6F69);
  }

  if (sub_1D9A15C94(v4) == 0x4C6C61727574616ELL && v8 == 0xEF6B72616D646E61)
  {
LABEL_13:

    return sub_1D9C1B898(a2, v2 + OBJC_IVAR____TtC12VisualLookUp21Argos2DV2ModelFactory_modelInfo, 0xD000000000000015, 0x80000001D9CA27B0, 0x74696E676F636572, 0xEB000000006E6F69);
  }

  v10 = sub_1D9C7E7DC();

  if (v10)
  {
    return sub_1D9C1B898(a2, v2 + OBJC_IVAR____TtC12VisualLookUp21Argos2DV2ModelFactory_modelInfo, 0xD000000000000015, 0x80000001D9CA27B0, 0x74696E676F636572, 0xEB000000006E6F69);
  }

  if (sub_1D9A15C94(v4) == 0x727574706C756373 && v11 == 0xE900000000000065)
  {
    goto LABEL_13;
  }

  v13 = sub_1D9C7E7DC();

  if (v13)
  {
    return sub_1D9C1B898(a2, v2 + OBJC_IVAR____TtC12VisualLookUp21Argos2DV2ModelFactory_modelInfo, 0xD000000000000015, 0x80000001D9CA27B0, 0x74696E676F636572, 0xEB000000006E6F69);
  }

  if (sub_1D9A15C94(v4) == 0x6F726665726F7473 && v14 == 0xEA0000000000746ELL)
  {
    goto LABEL_13;
  }

  v15 = sub_1D9C7E7DC();

  if (v15)
  {
    return sub_1D9C1B898(a2, v2 + OBJC_IVAR____TtC12VisualLookUp21Argos2DV2ModelFactory_modelInfo, 0xD000000000000015, 0x80000001D9CA27B0, 0x74696E676F636572, 0xEB000000006E6F69);
  }

  if (sub_1D9A15C94(v4) == 0x6D75626C61 && v16 == 0xE500000000000000)
  {
    goto LABEL_13;
  }

  v17 = sub_1D9C7E7DC();

  if (v17)
  {
    return sub_1D9C1B898(a2, v2 + OBJC_IVAR____TtC12VisualLookUp21Argos2DV2ModelFactory_modelInfo, 0xD000000000000015, 0x80000001D9CA27B0, 0x74696E676F636572, 0xEB000000006E6F69);
  }

  if (sub_1D9A15C94(v4) == 1802465122 && v18 == 0xE400000000000000)
  {
    goto LABEL_13;
  }

  v19 = sub_1D9C7E7DC();

  if (v19)
  {
    return sub_1D9C1B898(a2, v2 + OBJC_IVAR____TtC12VisualLookUp21Argos2DV2ModelFactory_modelInfo, 0xD000000000000015, 0x80000001D9CA27B0, 0x74696E676F636572, 0xEB000000006E6F69);
  }

  if (sub_1D9A15C94(v4) == 7631457 && v20 == 0xE300000000000000)
  {
    goto LABEL_13;
  }

  v21 = sub_1D9C7E7DC();

  if (v21)
  {
    return sub_1D9C1B898(a2, v2 + OBJC_IVAR____TtC12VisualLookUp21Argos2DV2ModelFactory_modelInfo, 0xD000000000000015, 0x80000001D9CA27B0, 0x74696E676F636572, 0xEB000000006E6F69);
  }

  if (sub_1D9A15C94(v4) == 0x616964656DLL && v22 == 0xE500000000000000)
  {
    goto LABEL_13;
  }

  v23 = sub_1D9C7E7DC();

  if (v23)
  {
    return sub_1D9C1B898(a2, v2 + OBJC_IVAR____TtC12VisualLookUp21Argos2DV2ModelFactory_modelInfo, 0xD000000000000015, 0x80000001D9CA27B0, 0x74696E676F636572, 0xEB000000006E6F69);
  }

  if (sub_1D9A15C94(v4) == 0x656E696C796B73 && v24 == 0xE700000000000000)
  {

    return sub_1D9C1B898(a2, v2 + OBJC_IVAR____TtC12VisualLookUp21Argos2DV2ModelFactory_modelInfo, 0xD000000000000012, 0x80000001D9CA27D0, 0x74696E676F636572, 0xEB000000006E6F69);
  }

  v25 = sub_1D9C7E7DC();

  if (v25)
  {
    return sub_1D9C1B898(a2, v2 + OBJC_IVAR____TtC12VisualLookUp21Argos2DV2ModelFactory_modelInfo, 0xD000000000000012, 0x80000001D9CA27D0, 0x74696E676F636572, 0xEB000000006E6F69);
  }

  return 0;
}

uint64_t sub_1D99A02B8(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  v61 = sub_1D9C7D8DC();
  v8 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v10 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {
    v12 = 0;
    return v12 & 1;
  }

  LOBYTE(v64) = *a1;
  v11 = sub_1D999FE8C(&v64, a3);
  if (v4)
  {
    return v12 & 1;
  }

  if (!v11)
  {
    v12 = 0;
    return v12 & 1;
  }

  v54 = 0;
  v13 = v11;
  result = sub_1D9BDBB08(v11);
  v16 = result;
  v63 = *(result + 16);
  if (!v63)
  {
LABEL_44:

    v12 = 1;
    return v12 & 1;
  }

  v66 = v13;
  v17 = 0;
  v56 = v3 + OBJC_IVAR____TtC12VisualLookUp21Argos2DV2ModelFactory_modelInfo;
  v57 = a2;
  v55 = 0x80000001D9CA3A40;
  v59 = (v8 + 8);
  v60 = (v8 + 16);
  v18 = (result + 40);
  *&v15 = 136315138;
  v58 = v15;
  v19 = v61;
  v62 = result;
  while (v17 < *(v16 + 16))
  {
    v20 = *(v18 - 1);
    v21 = *v18;
    v22 = v66;
    v23 = v66[2];

    if (!v23 || (v24 = sub_1D99ED894(v20, v21), (v25 & 1) == 0))
    {
      if (qword_1EDD354B8 != -1)
      {
        swift_once();
      }

      if (byte_1EDD354C0 != 1)
      {
        goto LABEL_36;
      }

      v33 = [objc_opt_self() mainBundle];
      v34 = [v33 bundleIdentifier];

      if (v34)
      {
        v35 = sub_1D9C7DC7C();
        v37 = v36;

        if (v35 == 0xD00000000000002BLL && v55 == v37)
        {
        }

        else
        {
          v39 = sub_1D9C7E7DC();

          if ((v39 & 1) == 0)
          {
            goto LABEL_26;
          }
        }

        v40 = &off_1ECB51BA8;
        if (qword_1ECB50988 != -1)
        {
          swift_once();
          v40 = &off_1ECB51BA8;
        }
      }

      else
      {
LABEL_26:
        v40 = &qword_1EDD355A8;
        if (qword_1EDD355A0 != -1)
        {
          swift_once();
          v40 = &qword_1EDD355A8;
        }
      }

      v43 = *(*v40 + 32);

      v44 = sub_1D9C7DC4C();
      LODWORD(v43) = [v43 BOOLForKey_];

      if (v43)
      {
        v45 = qword_1EDD2C990;
        if (qword_1EDD2C988 != -1)
        {
          swift_once();
          v45 = qword_1EDD2C990;
        }
      }

      else
      {
LABEL_36:
        v45 = qword_1EDD354D8;
        if (qword_1EDD354D0 != -1)
        {
          swift_once();
          v45 = qword_1EDD354D8;
        }
      }

      v46 = __swift_project_value_buffer(v19, v45);
      (*v60)(v10, v46, v19);

      v47 = sub_1D9C7D8BC();
      v48 = sub_1D9C7E09C();

      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        v64 = v50;
        *v49 = v58;
        v51 = sub_1D9A0E224(v20, v21, &v64);

        *(v49 + 4) = v51;
        _os_log_impl(&dword_1D9962000, v47, v48, "No model urn suffix for %s", v49, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v50);
        v52 = v50;
        v19 = v61;
        MEMORY[0x1DA7405F0](v52, -1, -1);
        MEMORY[0x1DA7405F0](v49, -1, -1);
      }

      else
      {
      }

      result = (*v59)(v10, v19);
      v16 = v62;
      goto LABEL_10;
    }

    v26 = (v22[7] + 16 * v24);
    v27 = *v26;
    v28 = v26[1];
    v29 = (v56 + *(type metadata accessor for MLModelInfo(0) + 24));
    v30 = v29[1];
    v64 = *v29;
    v65 = v30;

    MEMORY[0x1DA73DF90](v27, v28);
    v32 = v64;
    v31 = v65;
    if (v20 == 0x6E69646465626D65 && v21 == 0xE900000000000067)
    {

LABEL_29:
      v42 = sub_1D9AEA42C(v32, v31, v57);
      goto LABEL_41;
    }

    v41 = sub_1D9C7E7DC();

    if (v41)
    {
      goto LABEL_29;
    }

    v42 = sub_1D9AEA4B8(v32, v31, v57);
LABEL_41:
    v53 = v42;

    v16 = v62;
    if (!v53)
    {

      v12 = 0;
      return v12 & 1;
    }

LABEL_10:
    ++v17;
    v18 += 2;
    if (v63 == v17)
    {
      goto LABEL_44;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D99A090C()
{
  sub_1D99A19C0(v0 + OBJC_IVAR____TtC12VisualLookUp21Argos2DV2ModelFactory_modelInfo, type metadata accessor for MLModelInfo);
}

uint64_t sub_1D99A0970()
{
  v1 = OBJC_IVAR____TtC12VisualLookUp21Argos2DV2ModelFactory_modelInfo;

  sub_1D99A19C0(v0 + v1, type metadata accessor for MLModelInfo);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for Argos2DV2ModelFactory()
{
  result = qword_1EDD33280;
  if (!qword_1EDD33280)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D99A0A78()
{
  result = type metadata accessor for MLModelInfo(319);
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1D99A0BCC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D99A0BEC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D99A0C5C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D99A0C7C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 32) = v3;
  return result;
}

void *sub_1D99A0CD0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

_DWORD *sub_1D99A0CEC@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_1D99A0D08(uint64_t a1, id *a2)
{
  result = sub_1D9C7DC5C();
  *a2 = 0;
  return result;
}

uint64_t sub_1D99A0D80(uint64_t a1, id *a2)
{
  v3 = sub_1D9C7DC6C();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1D99A0E00@<X0>(uint64_t *a1@<X8>)
{
  sub_1D9C7DC7C();
  v2 = sub_1D9C7DC4C();

  *a1 = v2;
  return result;
}

uint64_t sub_1D99A0EFC()
{
  sub_1D9C7E8DC();
  swift_getWitnessTable();
  sub_1D9C7D26C();
  return sub_1D9C7E93C();
}

uint64_t sub_1D99A0F64(uint64_t a1)
{
  v2 = sub_1D99A12DC(&qword_1ECB50F88, type metadata accessor for CIImageRepresentationOption);
  v3 = sub_1D99A12DC(&qword_1ECB50F90, type metadata accessor for CIImageRepresentationOption);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1D99A1020()
{
  swift_getWitnessTable();

  return sub_1D9C7D25C();
}

uint64_t sub_1D99A108C@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1D9C7DC4C();

  *a1 = v2;
  return result;
}

uint64_t sub_1D99A10D4(uint64_t a1)
{
  v2 = sub_1D99A12DC(&qword_1ECB50FB8, type metadata accessor for VNImageOption);
  v3 = sub_1D99A12DC(&unk_1ECB50FC0, type metadata accessor for VNImageOption);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1D99A1190(uint64_t a1)
{
  v2 = sub_1D99A12DC(&qword_1ECB50F20, type metadata accessor for VNBarcodeSymbology);
  v3 = sub_1D99A12DC(&qword_1ECB50F28, type metadata accessor for VNBarcodeSymbology);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1D99A12DC(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D99A136C(uint64_t a1)
{
  v2 = sub_1D99A12DC(&qword_1ECB50F10, type metadata accessor for VISuggestionType);
  v3 = sub_1D99A12DC(&qword_1ECB50F18, type metadata accessor for VISuggestionType);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1D99A14B8()
{
  v0 = sub_1D9C7DC7C();
  v1 = MEMORY[0x1DA73E030](v0);

  return v1;
}

uint64_t sub_1D99A14F4()
{
  sub_1D9C7DC7C();
  sub_1D9C7DD6C();
}

uint64_t sub_1D99A1548()
{
  sub_1D9C7DC7C();
  sub_1D9C7E8DC();
  sub_1D9C7DD6C();
  v0 = sub_1D9C7E93C();

  return v0;
}

uint64_t sub_1D99A15BC()
{
  v0 = sub_1D9C7DC7C();
  v2 = v1;
  if (v0 == sub_1D9C7DC7C() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1D9C7E7DC();
  }

  return v5 & 1;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0Tm(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_1D99A17C8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_1D99A182C()
{
  result = qword_1ECB50F40;
  if (!qword_1ECB50F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB50F40);
  }

  return result;
}

uint64_t sub_1D99A1888(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB50F30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D99A18F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EspressoModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D99A1954(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EspressoModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D99A19C0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1D99A1A44(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB50F48);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_1D99A1AB4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7)
  {

    return a1;
  }

  else
  {
  }
}

void sub_1D99A1B04(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7)
  {
  }

  else
  {
  }
}

void sub_1D99A1CF8(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_1D99A1E50(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51FD0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v17 - v5;
  sub_1D99A3FE8(a1, v1 + OBJC_IVAR____TtC12VisualLookUp27Argos2DV2ModelPostProcessor_modelInfo);
  v7 = *(a1 + *(type metadata accessor for MLModelInfo(0) + 36));
  if (*(v7 + 16) && (v8 = sub_1D99EE004(10), (v9 & 1) != 0))
  {
    v10 = v8;
    v11 = *(v7 + 56);
    v12 = sub_1D9C7B80C();
    v13 = *(v12 - 8);
    (*(v13 + 16))(v6, v11 + *(v13 + 72) * v10, v12);
    (*(v13 + 56))(v6, 0, 1, v12);
  }

  else
  {
    v14 = sub_1D9C7B80C();
    (*(*(v14 - 8) + 56))(v6, 1, 1, v14);
  }

  type metadata accessor for FileMapper();
  swift_allocObject();
  v15 = sub_1D9B1E230(v6);
  sub_1D99A404C(a1);
  *(v2 + 16) = v15;
  return v2;
}

uint64_t sub_1D99A2034@<X0>(void *a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X8>)
{
  v248 = a2;
  v249 = a4;
  v237 = type metadata accessor for MLModelInfo(0);
  v6 = MEMORY[0x1EEE9AC00](v237);
  v236 = &v208 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v239 = &v208 - v8;
  v251 = sub_1D9C7D8DC();
  v247 = *(v251 - 8);
  v9 = MEMORY[0x1EEE9AC00](v251);
  v11 = &v208 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v208 - v13;
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v208 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v208 - v19;
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = &v208 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v208 - v24;
  v26 = *a3;
  v241 = a3[1];
  v242 = v26;
  v27 = a1[3];
  v28 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v27);
  v29 = v250;
  result = (*(v28 + 8))(v27, v28);
  if (!v29)
  {
    v31 = v247;
    v229 = v25;
    v228 = v23;
    v226 = v20;
    v250 = v17;
    v240 = v14;
    v232 = result;
    v32 = *(result + 24);
    if (*(v32 + 16) == 3)
    {
      v33 = v32 + 64;
      v34 = 1 << *(v32 + 32);
      if (v34 < 64)
      {
        v35 = ~(-1 << v34);
      }

      else
      {
        v35 = -1;
      }

      v36 = v35 & *(v32 + 64);
      v224 = OBJC_IVAR____TtC12VisualLookUp27Argos2DV2ModelPostProcessor_modelInfo;
      v37 = (v34 + 63) >> 6;
      v245 = (v247 + 16);
      v246 = (v247 + 8);
      v227 = (v247 + 32);
      v223 = 0x80000001D9CA3A40;
      v222 = 0x80000001D9CA3B00;
      v221 = 0x80000001D9CA27D0;

      v38 = 0;
      *&v39 = 136315138;
      v231 = v39;
      *&v39 = 134217984;
      v220 = v39;
      v225 = MEMORY[0x1E69E7CC0];
      v230 = MEMORY[0x1E69E7CC0];
      v40 = v251;
      v41 = 0;
      v234 = v32 + 64;
      v235 = v32;
      v233 = v37;
LABEL_7:
      v42 = v249;
      while (2)
      {
        v43 = v38;
        while (1)
        {
          if (!v36)
          {
            while (1)
            {
              v38 = v43 + 1;
              if (__OFADD__(v43, 1))
              {
                break;
              }

              if (v38 >= v37)
              {

                v197 = v241;
                *v42 = v242;
                *(v42 + 16) = v197;
                v198 = v225;
                *(v42 + 32) = v230;
                *(v42 + 40) = v198;
                return result;
              }

              v36 = *(v33 + 8 * v38);
              ++v43;
              if (v36)
              {
                v44 = v40;
                goto LABEL_17;
              }
            }

            __break(1u);
LABEL_169:

            v252 = 0;
            v253 = 0xE000000000000000;
            sub_1D9C7E40C();

            v252 = 0xD000000000000016;
            v253 = 0x80000001D9CA3B40;
            MEMORY[0x1DA73DF90](v40, v33);

            v199 = v252;
            v200 = v253;
            sub_1D99A182C();
            swift_allocError();
            *v201 = v199;
            *(v201 + 8) = v200;
            *(v201 + 16) = 4;
            swift_willThrow();

LABEL_171:
            sub_1D99A404C(v239);
          }

          v44 = v40;
          v38 = v43;
LABEL_17:
          v247 = (v36 - 1) & v36;
          v45 = (*(v32 + 48) + ((v38 << 10) | (16 * __clz(__rbit64(v36)))));
          v47 = *v45;
          v46 = v45[1];

          v243 = v47;
          if (!v248)
          {
            break;
          }

          v48 = sub_1D9BDBB08(v248);
          v252 = v47;
          v253 = v46;
          v49 = v46;
          MEMORY[0x1EEE9AC00](v48);
          *(&v208 - 2) = &v252;
          v50 = sub_1D9BC1698(sub_1D99A40D8, (&v208 - 4), v48);

          if (v50)
          {
            goto LABEL_47;
          }

          v244 = v41;
          if (qword_1EDD354B8 != -1)
          {
            swift_once();
          }

          v51 = byte_1EDD354C0;
          v52 = v250;
          v53 = v49;
          if (byte_1EDD354C0 != 1)
          {
            goto LABEL_31;
          }

          if (sub_1D9A75D94())
          {
            v54 = &off_1ECB51BA8;
            if (qword_1ECB50988 != -1)
            {
              swift_once();
              v54 = &off_1ECB51BA8;
            }
          }

          else
          {
            v54 = &qword_1EDD355A8;
            if (qword_1EDD355A0 != -1)
            {
              swift_once();
              v54 = &qword_1EDD355A8;
            }
          }

          v55 = *(*v54 + 32);

          v56 = sub_1D9C7DC4C();
          LODWORD(v55) = [v55 BOOLForKey_];

          v52 = v250;
          if (v55)
          {
            if (qword_1EDD2C988 != -1)
            {
              swift_once();
            }

            v57 = __swift_project_value_buffer(v44, qword_1EDD2C990);
            v58 = *v245;
            (*v245)(v52, v57, v44);
          }

          else
          {
LABEL_31:
            if (qword_1EDD354D0 != -1)
            {
              swift_once();
            }

            v59 = __swift_project_value_buffer(v44, qword_1EDD354D8);
            v58 = *v245;
            (*v245)(v52, v59, v44);
            if ((v51 & 1) == 0)
            {
              goto LABEL_41;
            }
          }

          if (sub_1D9A75D94())
          {
            v60 = &off_1ECB51BA8;
            if (qword_1ECB50988 != -1)
            {
              swift_once();
              v60 = &off_1ECB51BA8;
            }
          }

          else
          {
            v60 = &qword_1EDD355A8;
            if (qword_1EDD355A0 != -1)
            {
              swift_once();
              v60 = &qword_1EDD355A8;
            }
          }

          v61 = *(*v60 + 32);

          v62 = sub_1D9C7DC4C();
          LODWORD(v61) = [v61 BOOLForKey_];

          v52 = v250;
          if (v61)
          {
            v63 = v240;
            v40 = v251;
            (*v227)(v240, v250, v251);
            goto LABEL_44;
          }

LABEL_41:
          if (qword_1EDD354D0 != -1)
          {
            swift_once();
          }

          v64 = v251;
          v65 = __swift_project_value_buffer(v251, qword_1EDD354D8);
          v63 = v240;
          v58(v240, v65, v64);
          v40 = v64;
          (*v246)(v52, v64);
LABEL_44:
          v32 = v235;

          v66 = sub_1D9C7D8BC();
          v67 = sub_1D9C7E09C();

          if (os_log_type_enabled(v66, v67))
          {
            v68 = swift_slowAlloc();
            v69 = swift_slowAlloc();
            v252 = v69;
            *v68 = v231;
            v70 = sub_1D9A0E224(v243, v53, &v252);
            v71 = v32;
            v72 = v70;

            *(v68 + 4) = v72;
            v32 = v71;
            _os_log_impl(&dword_1D9962000, v66, v67, "Skip result key %s", v68, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v69);
            v73 = v69;
            v40 = v251;
            MEMORY[0x1DA7405F0](v73, -1, -1);
            MEMORY[0x1DA7405F0](v68, -1, -1);
          }

          else
          {
          }

          (*v246)(v63, v40);
          v43 = v38;
          v41 = v244;
          v42 = v249;
          v33 = v234;
          v37 = v233;
          v36 = v247;
        }

        v49 = v46;
LABEL_47:
        if (qword_1EDD354B8 != -1)
        {
          swift_once();
        }

        v74 = byte_1EDD354C0;
        if (byte_1EDD354C0 == 1)
        {
          v75 = byte_1EDD354C0;
          v76 = [objc_opt_self() mainBundle];
          v77 = [v76 bundleIdentifier];

          if (v77)
          {
            v78 = sub_1D9C7DC7C();
            v80 = v79;

            if (v78 == 0xD00000000000002BLL && v223 == v80)
            {
            }

            else
            {
              v82 = sub_1D9C7E7DC();

              if ((v82 & 1) == 0)
              {
                goto LABEL_56;
              }
            }

            v83 = &off_1ECB51BA8;
            if (qword_1ECB50988 != -1)
            {
              swift_once();
              v83 = &off_1ECB51BA8;
            }
          }

          else
          {
LABEL_56:
            v83 = &qword_1EDD355A8;
            if (qword_1EDD355A0 != -1)
            {
              swift_once();
              v83 = &qword_1EDD355A8;
            }
          }

          v84 = *(*v83 + 32);

          v85 = sub_1D9C7DC4C();
          LODWORD(v84) = [v84 BOOLForKey_];

          v74 = v75;
          if (v84)
          {
            if (qword_1EDD2C988 != -1)
            {
              swift_once();
            }

            v86 = v251;
            v87 = __swift_project_value_buffer(v251, qword_1EDD2C990);
            v88 = *v245;
            (*v245)(v229, v87, v86);
            goto LABEL_68;
          }
        }

        if (qword_1EDD354D0 != -1)
        {
          swift_once();
        }

        v89 = v251;
        v90 = __swift_project_value_buffer(v251, qword_1EDD354D8);
        v88 = *v245;
        v91 = v229;
        (*v245)(v229, v90, v89);
        if ((v74 & 1) == 0)
        {
          goto LABEL_79;
        }

LABEL_68:
        v92 = [objc_opt_self() mainBundle];
        v93 = [v92 bundleIdentifier];

        if (!v93)
        {
          goto LABEL_75;
        }

        v94 = sub_1D9C7DC7C();
        v96 = v95;

        if (v94 != 0xD00000000000002BLL || v223 != v96)
        {
          v97 = sub_1D9C7E7DC();

          if (v97)
          {
            goto LABEL_73;
          }

LABEL_75:
          v98 = &qword_1EDD355A8;
          if (qword_1EDD355A0 != -1)
          {
            swift_once();
            v98 = &qword_1EDD355A8;
          }

          goto LABEL_77;
        }

LABEL_73:
        v98 = &off_1ECB51BA8;
        if (qword_1ECB50988 != -1)
        {
          swift_once();
          v98 = &off_1ECB51BA8;
        }

LABEL_77:
        v99 = *(*v98 + 32);

        v100 = sub_1D9C7DC4C();
        LODWORD(v99) = [v99 BOOLForKey_];

        v91 = v229;
        if (v99)
        {
          v101 = v228;
          (*v227)(v228, v229, v251);
          goto LABEL_82;
        }

LABEL_79:
        if (qword_1EDD354D0 != -1)
        {
          swift_once();
        }

        v102 = v251;
        v103 = __swift_project_value_buffer(v251, qword_1EDD354D8);
        v101 = v228;
        v88(v228, v103, v102);
        (*v246)(v91, v102);
LABEL_82:
        v104 = v49;

        v105 = sub_1D9C7D8BC();
        v106 = sub_1D9C7E09C();

        if (os_log_type_enabled(v105, v106))
        {
          v107 = swift_slowAlloc();
          v108 = swift_slowAlloc();
          v252 = v108;
          *v107 = v231;
          v40 = v243;
          *(v107 + 4) = sub_1D9A0E224(v243, v104, &v252);
          _os_log_impl(&dword_1D9962000, v105, v106, "Process result key %s", v107, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v108);
          MEMORY[0x1DA7405F0](v108, -1, -1);
          MEMORY[0x1DA7405F0](v107, -1, -1);

          v109 = *v246;
          (*v246)(v228, v251);
        }

        else
        {

          v109 = *v246;
          (*v246)(v101, v251);
          v40 = v243;
        }

        if (v40 == 0x6E69646465626D65 && v104 == 0xE900000000000067 || (sub_1D9C7E7DC() & 1) != 0)
        {
          sub_1D99A3FE8(v238 + v224, v239);
          v110 = v248;
          if (!v248 || !*(v248 + 16))
          {
            v33 = v104;
LABEL_93:
            v115 = 0;
            v114 = 0xE000000000000000;
            goto LABEL_94;
          }

          v33 = v104;
          v111 = sub_1D99ED894(v40, v104);
          if ((v112 & 1) == 0)
          {
            goto LABEL_93;
          }

          v113 = (*(v110 + 56) + 16 * v111);
          v115 = *v113;
          v114 = v113[1];

LABEL_94:
          v116 = *(v232 + 24);
          if (!*(v116 + 16))
          {
            goto LABEL_169;
          }

          v117 = sub_1D99ED894(v40, v33);
          if ((v118 & 1) == 0)
          {
            goto LABEL_169;
          }

          v119 = v117;

          v120 = *(*(v116 + 56) + 8 * v119);
          v121 = sub_1D9C18DE8(v120);
          if (v41)
          {

            goto LABEL_171;
          }

          v122 = v121;
          v123 = sub_1D9C19020(v121);
          v124 = v239;
          v125 = (v239 + *(v237 + 24));
          v126 = v125[1];
          v252 = *v125;
          v253 = v126;

          MEMORY[0x1DA73DF90](v115, v114);

          v128 = v252;
          v127 = v253;
          sub_1D99A404C(v124);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v230 = sub_1D9AF870C(0, *(v230 + 2) + 1, 1, v230);
          }

          v40 = v251;
          v36 = v247;
          v130 = *(v230 + 2);
          v129 = *(v230 + 3);
          if (v130 >= v129 >> 1)
          {
            v230 = sub_1D9AF870C((v129 > 1), v130 + 1, 1, v230);
          }

          v131 = v230;
          *(v230 + 2) = v130 + 1;
          v132 = &v131[24 * v130];
          *(v132 + 4) = v123;
          *(v132 + 5) = v128;
          *(v132 + 6) = v127;
          v41 = 0;
          v42 = v249;
          v33 = v234;
          v32 = v235;
          v37 = v233;
          continue;
        }

        break;
      }

      if (v40 == 0xD000000000000016 && v222 == v104 || (sub_1D9C7E7DC() & 1) != 0 || v40 == 0xD000000000000012 && v221 == v104 || (sub_1D9C7E7DC() & 1) != 0)
      {
        sub_1D99A3FE8(v238 + v224, v236);
        v133 = v248;
        v209 = v109;
        if (v248)
        {
          v134 = *(v248 + 16);

          if (v134)
          {
            v135 = sub_1D99ED894(v40, v104);
            if (v136)
            {
              v137 = (*(v133 + 56) + 16 * v135);
              v138 = v137[1];
              v210 = *v137;
              v211 = v138;

LABEL_114:
              v139 = *(v232 + 24);
              if (*(v139 + 16))
              {
                v140 = sub_1D99ED894(v40, v104);
                if (v141)
                {
                  v212 = *(*(v139 + 56) + 8 * v140);
                  v142 = sub_1D99F767C(v212, 2, 0);
                  v214 = sub_1D9AF85D0(0, 2, 0, MEMORY[0x1E69E7CC0]);
                  v143 = 0;
                  v255 = MEMORY[0x1E69E7CD0];
                  v216 = v142;
                  v217 = v142 + 32;
                  v40 = v251;
                  while (1)
                  {
                    v144 = v237;
                    v218 = v255;
                    if (v143 == 2)
                    {
LABEL_154:
                      v244 = v41;

LABEL_158:
                      v180 = v211;
                      v181 = v236;
                      v182 = (v236 + *(v144 + 24));
                      v183 = v182[1];
                      v252 = *v182;
                      v253 = v183;

                      MEMORY[0x1DA73DF90](v210, v180);

                      v184 = v252;
                      v185 = v253;
                      sub_1D99A404C(v181);

                      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                      {
                        v225 = sub_1D9AF85EC(0, *(v225 + 2) + 1, 1, v225);
                      }

                      v36 = v247;
                      v187 = *(v225 + 2);
                      v186 = *(v225 + 3);
                      if (v187 >= v186 >> 1)
                      {
                        v225 = sub_1D9AF85EC((v186 > 1), v187 + 1, 1, v225);
                      }

                      v188 = v225;
                      *(v225 + 2) = v187 + 1;
                      v189 = &v188[24 * v187];
                      *(v189 + 4) = v184;
                      *(v189 + 5) = v185;
                      *(v189 + 6) = v214;
                      v41 = v244;
                      v33 = v234;
                      v32 = v235;
                      v37 = v233;
                      goto LABEL_7;
                    }

                    v145 = v143;
                    v243 = v255 + 56;
                    while (1)
                    {
                      v244 = v41;
                      if (v145 >= *(v216 + 2))
                      {

                        v176 = v226;
                        static Logger.argos.getter(v226);
                        v177 = sub_1D9C7D8BC();
                        v178 = sub_1D9C7E09C();
                        if (os_log_type_enabled(v177, v178))
                        {
                          v179 = swift_slowAlloc();
                          *v179 = v220;
                          *(v179 + 4) = v145;
                          _os_log_impl(&dword_1D9962000, v177, v178, "Invalid index %ld", v179, 0xCu);
                          MEMORY[0x1DA7405F0](v179, -1, -1);
                        }

                        v209(v176, v40);

                        v144 = v237;
                        goto LABEL_158;
                      }

                      v219 = v145 + 1;
                      v146 = *&v217[8 * v145];
                      v147 = *(*(v238 + 16) + 16);
                      v148 = *(v147 + 80);
                      os_unfair_lock_lock(v148 + 4);
                      swift_beginAccess();
                      v149 = *(v147 + 32);
                      if (v149 != 255)
                      {
                        v150 = *(v147 + 24);
                        v151 = v218;
                        if (v149)
                        {
                          v252 = *(v147 + 24);
                          sub_1D99A40CC(v150, 1);
                          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51030);
                          swift_willThrowTypedImpl();
                          os_unfair_lock_unlock(v148 + 4);
                          sub_1D99A40A8(v150, v149);
                          goto LABEL_130;
                        }

                        sub_1D99A40CC(*(v147 + 24), 0);
                        os_unfair_lock_unlock(v148 + 4);
LABEL_131:
                        v155 = v150[2];

                        if ((v146 & 0x8000000000000000) != 0)
                        {
                          goto LABEL_148;
                        }

                        goto LABEL_132;
                      }

                      v152 = *(v147 + 40);
                      v151 = v218;
                      if (!v152)
                      {
                        os_unfair_lock_unlock(v148 + 4);
                        goto LABEL_130;
                      }

                      v153 = v244;
                      v152(&v252);
                      if (v153)
                      {
                        v244 = *(v147 + 24);
                        v213 = *(v147 + 32);
                        v154 = v153;
                        *(v147 + 24) = v153;
                        *(v147 + 32) = 1;
                        sub_1D99A40A8(v244, v213);
                        swift_willThrow();
                        sub_1D9979BF4(v152);
                        os_unfair_lock_unlock(v148 + 4);

                        v244 = 0;
LABEL_130:
                        v150 = MEMORY[0x1E69E7CC0];
                        goto LABEL_131;
                      }

                      v244 = 0;
                      sub_1D9979BF4(v152);
                      v166 = v252;
                      v167 = *(v147 + 24);
                      *(v147 + 24) = v252;
                      v168 = *(v147 + 32);
                      *(v147 + 32) = 0;

                      sub_1D99A40A8(v167, v168);
                      os_unfair_lock_unlock(v148 + 4);
                      v155 = *(v166 + 16);

                      if ((v146 & 0x8000000000000000) != 0)
                      {
LABEL_148:
                        v40 = v251;
LABEL_149:
                        v144 = v237;
                        goto LABEL_120;
                      }

LABEL_132:
                      v144 = v237;
                      if (v146 < v155)
                      {
                        break;
                      }

                      v40 = v251;
LABEL_120:
                      v145 = v219;
                      v41 = v244;
                      if (v219 == 2)
                      {
                        goto LABEL_154;
                      }
                    }

                    v156 = v244;
                    result = sub_1D9C196E8();
                    v40 = v251;
                    if (v156)
                    {

                      v156 = 0;
                      result = MEMORY[0x1E69E7CC0];
                    }

                    v244 = v156;
                    if (v146 >= *(result + 16))
                    {
                      __break(1u);
                      return result;
                    }

                    v157 = result + 16 * v146;
                    v158 = *(v157 + 32);
                    v159 = *(v157 + 40);

                    if (*(v151 + 16))
                    {
                      sub_1D9C7E8DC();
                      sub_1D9C7DD6C();
                      v160 = sub_1D9C7E93C();
                      v161 = -1 << *(v151 + 32);
                      v162 = v160 & ~v161;
                      if ((*(v243 + ((v162 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v162))
                      {
                        v163 = ~v161;
                        while (1)
                        {
                          v164 = (*(v151 + 48) + 16 * v162);
                          v165 = *v164 == v158 && v164[1] == v159;
                          if (v165 || (sub_1D9C7E7DC() & 1) != 0)
                          {
                            break;
                          }

                          v162 = (v162 + 1) & v163;
                          if (((*(v243 + ((v162 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v162) & 1) == 0)
                          {
                            goto LABEL_150;
                          }
                        }

                        goto LABEL_149;
                      }
                    }

LABEL_150:

                    sub_1D9B91DE4(&v252, v158, v159);

                    v169 = [v212 objectAtIndexedSubscript_];
                    [v169 floatValue];
                    v171 = v170;

                    v173 = *(v214 + 2);
                    v172 = *(v214 + 3);
                    if (v173 >= v172 >> 1)
                    {
                      v214 = sub_1D9AF85D0((v172 > 1), v173 + 1, 1, v214);
                    }

                    v174 = v214;
                    *(v214 + 2) = v173 + 1;
                    v175 = &v174[24 * v173];
                    *(v175 + 4) = v158;
                    *(v175 + 5) = v159;
                    *(v175 + 12) = v171;
                    v41 = v244;
                    v143 = v219;
                    if (v173 == 1)
                    {

                      v144 = v237;
                      goto LABEL_158;
                    }
                  }
                }
              }

              v252 = 0;
              v253 = 0xE000000000000000;
              sub_1D9C7E40C();

              v252 = 0xD00000000000001BLL;
              v253 = 0x80000001D9CA3B20;
              MEMORY[0x1DA73DF90](v40, v104);
              v202 = v252;
              v203 = v253;
              sub_1D99A182C();
              swift_allocError();
              *v204 = v202;
              *(v204 + 8) = v203;
              *(v204 + 16) = 4;
              swift_willThrow();
              sub_1D99A404C(v236);

              goto LABEL_173;
            }
          }
        }

        else
        {
        }

        v210 = 0;
        v211 = 0xE000000000000000;
        goto LABEL_114;
      }

      v252 = 0;
      v253 = 0xE000000000000000;
      sub_1D9C7E40C();

      v252 = 0x7463657078656E75;
      v253 = 0xEF2079656B206465;
      MEMORY[0x1DA73DF90](v40, v104);

      v205 = v252;
      v206 = v253;
      sub_1D99A182C();
      swift_allocError();
      *v207 = v205;
      *(v207 + 8) = v206;
      *(v207 + 16) = 4;
      swift_willThrow();
LABEL_173:
    }

    static Logger.argos.getter(v11);
    v190 = sub_1D9C7D8BC();
    v191 = sub_1D9C7E0AC();
    if (os_log_type_enabled(v190, v191))
    {
      v192 = swift_slowAlloc();
      *v192 = 134217984;
      *(v192 + 4) = 3;
      _os_log_impl(&dword_1D9962000, v190, v191, "Argos2DV2 model expected %ld outputs", v192, 0xCu);
      MEMORY[0x1DA7405F0](v192, -1, -1);
    }

    (*(v31 + 8))(v11, v251);
    v252 = 0;
    v253 = 0xE000000000000000;
    sub_1D9C7E40C();

    v252 = 0x6E69746365707845;
    v253 = 0xEA00000000002067;
    v254 = 3;
    v193 = sub_1D9C7E7AC();
    MEMORY[0x1DA73DF90](v193);

    MEMORY[0x1DA73DF90](0x7374757074756F20, 0xE800000000000000);
    v194 = v252;
    v195 = v253;
    sub_1D99A182C();
    swift_allocError();
    *v196 = v194;
    *(v196 + 8) = v195;
    *(v196 + 16) = 4;
    swift_willThrow();
  }

  return result;
}

uint64_t sub_1D99A3E44()
{

  sub_1D99A404C(v0 + OBJC_IVAR____TtC12VisualLookUp27Argos2DV2ModelPostProcessor_modelInfo);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for Argos2DV2ModelPostProcessor()
{
  result = qword_1EDD31D90;
  if (!qword_1EDD31D90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D99A3F04()
{
  result = type metadata accessor for MLModelInfo(319);
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1D99A3FE8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MLModelInfo(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D99A404C(uint64_t a1)
{
  v2 = type metadata accessor for MLModelInfo(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D99A40A8(void *a1, char a2)
{
  if (a2 != -1)
  {
    sub_1D99A40C0(a1, a2 & 1);
  }
}

void sub_1D99A40C0(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

id sub_1D99A40CC(id a1, char a2)
{
  if (a2)
  {
    return a1;
  }

  else
  {
  }
}

VisualLookUp::OntologyGraph __swiftcall OntologyGraph.init(definitionFilePath:bundle:useTrialDefaults:)(Swift::String_optional definitionFilePath, NSBundle_optional bundle, Swift::Bool useTrialDefaults)
{
  isa = bundle.value.super.isa;
  v5 = v3;
  if (bundle.is_nil)
  {

    v6 = sub_1D9A75D94();
    type metadata accessor for TrialWrapper();
    swift_initStackObject();
    sub_1D9C04808((v6 & 1) == 0);
    sub_1D9C04AB0(7, 0, 1852797802, 0xE400000000000000);
    sub_1D99A41C8(v7, 0, &v9);
  }

  else
  {
    sub_1D99A41C8(0, bundle.value.super.isa, &v9);
  }

  *v5 = v9;
  return result;
}

void sub_1D99A41C8(uint64_t a1@<X3>, void *a2@<X4>, void *a3@<X8>)
{
  v68 = a3;
  v74[4] = *MEMORY[0x1E69E9840];
  v5 = sub_1D9C7B80C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = a2;
  if (a1)
  {
  }

  else
  {
    v9 = a2;
    if (a2)
    {
      v10 = a2;
    }

    else
    {
      type metadata accessor for VisualIntelligenceService(0);
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v10 = [objc_opt_self() bundleForClass_];
    }

    v12 = v9;
    v13 = sub_1D9C7DC4C();

    v14 = sub_1D9C7DC4C();
    v15 = [v10 pathForResource:v13 ofType:v14];

    if (v15)
    {
      sub_1D9C7DC7C();
    }

    else
    {
    }
  }

  sub_1D9C7B75C();

  v16 = sub_1D9C7B81C();
  v18 = v17;
  v20 = sub_1D9B88EB8(v16, v17);
  v22 = v21;
  (*(v6 + 8))(v8, v5);
  sub_1D99A5748(v16, v18);
  v23 = objc_opt_self();
  v24 = sub_1D9C7B86C();
  v74[0] = 0;
  v25 = [v23 JSONObjectWithData:v24 options:2 error:v74];

  if (!v25)
  {
    v57 = v74[0];
    v58 = sub_1D9C7B70C();

    swift_willThrow();
    sub_1D99A5748(v20, v22);

LABEL_10:
    v19 = sub_1D9A437EC(MEMORY[0x1E69E7CC0]);
    goto LABEL_11;
  }

  v26 = v74[0];
  sub_1D9C7E32C();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51038);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_1D99A5748(v20, v22);
    goto LABEL_10;
  }

  v27 = sub_1D99A4844(v73);

  if (v27 >> 62)
  {
    goto LABEL_54;
  }

  v28 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_16:
  v59 = v20;
  v60 = v22;
  v63 = v27;
  if (v28)
  {
    v29 = 0;
    v65 = v27 & 0xC000000000000001;
    v61 = v27 + 32;
    v62 = v27 & 0xFFFFFFFFFFFFFF8;
    v19 = MEMORY[0x1E69E7CC8];
    v64 = v28;
    while (1)
    {
      if (v65)
      {
        v30 = MEMORY[0x1DA73E610](v29, v63);
        v31 = __OFADD__(v29, 1);
        v32 = v29 + 1;
        if (v31)
        {
          goto LABEL_52;
        }
      }

      else
      {
        if (v29 >= *(v62 + 16))
        {
          goto LABEL_53;
        }

        v31 = __OFADD__(v29, 1);
        v32 = v29 + 1;
        if (v31)
        {
LABEL_52:
          __break(1u);
LABEL_53:
          __break(1u);
LABEL_54:
          v28 = sub_1D9C7E50C();
          goto LABEL_16;
        }
      }

      v66 = v30;
      v67 = v32;
      v27 = v30;
      v33 = sub_1D99A5114();
      v34 = 0;
      v36 = v33 + 64;
      v35 = *(v33 + 64);
      v71 = v33 + 64;
      v72 = v33;
      v37 = 1 << *(v33 + 32);
      if (v37 < 64)
      {
        v38 = ~(-1 << v37);
      }

      else
      {
        v38 = -1;
      }

      v22 = v38 & v35;
      v39 = (v37 + 63) >> 6;
      v70 = v39;
      while (v22)
      {
        v40 = v34;
LABEL_36:
        v41 = __clz(__rbit64(v22)) | (v40 << 6);
        v42 = (*(v72 + 48) + 16 * v41);
        v44 = *v42;
        v43 = v42[1];
        v20 = *(*(v72 + 56) + 8 * v41);
        swift_retain_n();

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v74[0] = v19;
        v27 = v19;
        v47 = sub_1D99ED894(v44, v43);
        v48 = v19[2];
        v49 = (v46 & 1) == 0;
        v50 = v48 + v49;
        if (__OFADD__(v48, v49))
        {
LABEL_50:
          __break(1u);
LABEL_51:
          __break(1u);
          goto LABEL_52;
        }

        v51 = v46;
        if (v19[3] >= v50)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v27 = v74;
            sub_1D9C13494();
          }
        }

        else
        {
          sub_1D9C07DAC(v50, isUniquelyReferenced_nonNull_native);
          v27 = v74[0];
          v52 = sub_1D99ED894(v44, v43);
          if ((v51 & 1) != (v53 & 1))
          {
            sub_1D9C7E84C();
            __break(1u);
            return;
          }

          v47 = v52;
        }

        v22 &= v22 - 1;
        if (v51)
        {

          v19 = v74[0];
          *(*(v74[0] + 7) + 8 * v47) = v20;
        }

        else
        {
          v19 = v74[0];
          *(v74[0] + (v47 >> 6) + 8) |= 1 << v47;
          v54 = (v19[6] + 16 * v47);
          *v54 = v44;
          v54[1] = v43;
          *(v19[7] + 8 * v47) = v20;

          v55 = v19[2];
          v31 = __OFADD__(v55, 1);
          v56 = v55 + 1;
          if (v31)
          {
            goto LABEL_51;
          }

          v19[2] = v56;
        }

        v34 = v40;
        v39 = v70;
        v36 = v71;
      }

      while (1)
      {
        v40 = v34 + 1;
        if (__OFADD__(v34, 1))
        {
          __break(1u);
          goto LABEL_50;
        }

        if (v40 >= v39)
        {
          break;
        }

        v22 = *(v36 + 8 * v40);
        ++v34;
        if (v22)
        {
          goto LABEL_36;
        }
      }

      v29 = v67;
      if (v67 == v64)
      {
        goto LABEL_48;
      }
    }
  }

  v19 = MEMORY[0x1E69E7CC8];
LABEL_48:
  sub_1D99A5748(v59, v60);

LABEL_11:

  *v68 = v19;
}

uint64_t sub_1D99A4844(uint64_t a1)
{
  v2 = sub_1D9C7D8DC();
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = MEMORY[0x1E69E7CC0];
  v61 = *(a1 + 16);
  if (v61)
  {
    v7 = 0;
    v8 = a1 + 32;
    v55 = 0x80000001D9CA3A40;
    v59 = (v3 + 8);
    v60 = (v3 + 16);
    v54 = MEMORY[0x1E69E7CC0];
    *&v4 = 136315138;
    v56 = v4;
    v57 = a1 + 32;
    while (1)
    {
      v9 = *(v8 + 8 * v7);
      v10 = *(v9 + 16);

      if (!v10)
      {
        goto LABEL_17;
      }

      v11 = sub_1D99ED894(0x64695F676BLL, 0xE500000000000000);
      if ((v12 & 1) == 0)
      {
        goto LABEL_17;
      }

      sub_1D99A579C(*(v9 + 56) + 32 * v11, &v66);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_17;
      }

      v13 = v65;
      if (!*(v9 + 16) || (v14 = v64, v15 = sub_1D99ED894(1701667182, 0xE400000000000000), (v16 & 1) == 0) || (sub_1D99A579C(*(v9 + 56) + 32 * v15, &v66), (swift_dynamicCast() & 1) == 0))
      {

        goto LABEL_17;
      }

      v17 = v65;
      v18 = v9;
      if (!*(v9 + 16) || (v19 = v64, v20 = sub_1D99ED894(0x6E6572646C696863, 0xE800000000000000), (v21 & 1) == 0) || (sub_1D99A579C(*(v18 + 56) + 32 * v20, &v66), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51038), (swift_dynamicCast() & 1) == 0))
      {

LABEL_17:
        if (qword_1EDD354B8 != -1)
        {
          swift_once();
        }

        if (byte_1EDD354C0 != 1)
        {
          goto LABEL_34;
        }

        v33 = [objc_opt_self() mainBundle];
        v34 = [v33 bundleIdentifier];

        if (v34)
        {
          v35 = sub_1D9C7DC7C();
          v37 = v36;

          if (v35 == 0xD00000000000002BLL && v55 == v37)
          {
          }

          else
          {
            v39 = sub_1D9C7E7DC();

            if ((v39 & 1) == 0)
            {
              goto LABEL_26;
            }
          }

          v40 = &off_1ECB51BA8;
          if (qword_1ECB50988 != -1)
          {
            swift_once();
            v40 = &off_1ECB51BA8;
          }
        }

        else
        {
LABEL_26:
          v40 = &qword_1EDD355A8;
          if (qword_1EDD355A0 != -1)
          {
            swift_once();
            v40 = &qword_1EDD355A8;
          }
        }

        v41 = *(*v40 + 32);

        v42 = sub_1D9C7DC4C();
        LODWORD(v41) = [v41 BOOLForKey_];

        if (v41)
        {
          v43 = qword_1EDD2C990;
          if (qword_1EDD2C988 != -1)
          {
            swift_once();
            v43 = qword_1EDD2C990;
          }
        }

        else
        {
LABEL_34:
          v43 = qword_1EDD354D8;
          if (qword_1EDD354D0 != -1)
          {
            swift_once();
            v43 = qword_1EDD354D8;
          }
        }

        v44 = __swift_project_value_buffer(v2, v43);
        (*v60)(v6, v44, v2);

        v45 = sub_1D9C7D8BC();
        v46 = sub_1D9C7E0AC();

        if (os_log_type_enabled(v45, v46))
        {
          v47 = swift_slowAlloc();
          v48 = swift_slowAlloc();
          v66 = v48;
          *v47 = v56;
          v49 = sub_1D9C7DB5C();
          v58 = v7;
          v51 = v50;

          v52 = sub_1D9A0E224(v49, v51, &v66);
          v8 = v57;
          v7 = v58;

          *(v47 + 4) = v52;
          _os_log_impl(&dword_1D9962000, v45, v46, "Incorrect ontology definitions. Current value: %s", v47, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v48);
          MEMORY[0x1DA7405F0](v48, -1, -1);
          MEMORY[0x1DA7405F0](v47, -1, -1);
        }

        else
        {
        }

        (*v59)(v6, v2);
        goto LABEL_40;
      }

      v22 = sub_1D99A4844(v64);

      v66 = v19;
      v67 = v17;
      v64 = 0x20646E6120;
      v65 = 0xE500000000000000;
      v62 = 32;
      v63 = 0xE100000000000000;
      sub_1D99A57F8();
      v23 = sub_1D9C7E2CC();
      v25 = v24;

      v66 = v23;
      v67 = v25;
      v64 = 2106912;
      v65 = 0xE300000000000000;
      v62 = 32;
      v63 = 0xE100000000000000;
      sub_1D9C7E2CC();

      sub_1D9C7DCFC();

      v26 = sub_1D99A54A0();
      v28 = v27;

      type metadata accessor for OntologyGraph.Node();
      v29 = swift_allocObject();
      swift_weakInit();
      v29[2] = v26;
      v29[3] = v28;
      v29[4] = v14;
      v29[5] = v13;
      v29[6] = v22;
      result = swift_weakAssign();
      if (v22 >> 62)
      {
        result = sub_1D9C7E50C();
        v31 = result;
        if (result)
        {
LABEL_14:
          if (v31 < 1)
          {
            __break(1u);
            return result;
          }

          for (i = 0; i != v31; ++i)
          {
            if ((v22 & 0xC000000000000001) != 0)
            {
              MEMORY[0x1DA73E610](i, v22);
            }

            else
            {
            }

            swift_weakAssign();
          }
        }
      }

      else
      {
        v31 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v31)
        {
          goto LABEL_14;
        }
      }

      MEMORY[0x1DA73E0E0](v53);
      if (*((v68 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v68 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D9C7DF4C();
      }

      sub_1D9C7DF6C();

      v54 = v68;
      v8 = v57;
LABEL_40:
      if (++v7 == v61)
      {
        return v54;
      }
    }
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1D99A5114()
{
  v1 = v0;
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);

  v4 = MEMORY[0x1E69E7CC8];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1D9C10FC0(v1, v2, v3, isUniquelyReferenced_nonNull_native);

  v6 = v4;
  v7 = *(v1 + 48);
  if (v7 >> 62)
  {
    goto LABEL_36;
  }

  for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D9C7E50C())
  {
    v9 = 0;
    v38 = v7;
    v39 = v7 & 0xC000000000000001;
    v37 = v7 & 0xFFFFFFFFFFFFFF8;
    while (v39)
    {
      MEMORY[0x1DA73E610](v9, v7);
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_34;
      }

LABEL_11:
      v40 = v11;
      v12 = sub_1D99A5114();
      v13 = 0;
      v14 = v12 + 64;
      v42 = v12 + 64;
      v43 = v12;
      v15 = 1 << *(v12 + 32);
      if (v15 < 64)
      {
        v16 = ~(-1 << v15);
      }

      else
      {
        v16 = -1;
      }

      v17 = v16 & *(v12 + 64);
      v18 = (v15 + 63) >> 6;
      v41 = v18;
      while (v17)
      {
        v19 = v13;
LABEL_22:
        v20 = __clz(__rbit64(v17)) | (v19 << 6);
        v21 = (*(v43 + 48) + 16 * v20);
        v23 = *v21;
        v22 = v21[1];
        v24 = *(*(v43 + 56) + 8 * v20);
        swift_retain_n();

        v25 = swift_isUniquelyReferenced_nonNull_native();
        v7 = sub_1D99ED894(v23, v22);
        v27 = v6[2];
        v28 = (v26 & 1) == 0;
        v29 = v27 + v28;
        if (__OFADD__(v27, v28))
        {
LABEL_32:
          __break(1u);
LABEL_33:
          __break(1u);
          goto LABEL_34;
        }

        v30 = v26;
        if (v6[3] >= v29)
        {
          if ((v25 & 1) == 0)
          {
            sub_1D9C13494();
          }
        }

        else
        {
          sub_1D9C07DAC(v29, v25);
          v31 = sub_1D99ED894(v23, v22);
          if ((v30 & 1) != (v32 & 1))
          {
            result = sub_1D9C7E84C();
            __break(1u);
            return result;
          }

          v7 = v31;
        }

        v17 &= v17 - 1;
        if (v30)
        {

          *(v6[7] + 8 * v7) = v24;
        }

        else
        {
          v6[(v7 >> 6) + 8] |= 1 << v7;
          v33 = (v6[6] + 16 * v7);
          *v33 = v23;
          v33[1] = v22;
          *(v6[7] + 8 * v7) = v24;

          v34 = v6[2];
          v10 = __OFADD__(v34, 1);
          v35 = v34 + 1;
          if (v10)
          {
            goto LABEL_33;
          }

          v6[2] = v35;
        }

        v13 = v19;
        v18 = v41;
        v14 = v42;
      }

      while (1)
      {
        v19 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          __break(1u);
          goto LABEL_32;
        }

        if (v19 >= v18)
        {
          break;
        }

        v17 = *(v14 + 8 * v19);
        ++v13;
        if (v17)
        {
          goto LABEL_22;
        }
      }

      v7 = v38;
      v9 = v40;
      if (v40 == i)
      {
        return v6;
      }
    }

    if (v9 >= *(v37 + 16))
    {
      goto LABEL_35;
    }

    v10 = __OFADD__(v9, 1);
    v11 = v9 + 1;
    if (!v10)
    {
      goto LABEL_11;
    }

LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    ;
  }

  return v6;
}

uint64_t sub_1D99A5444()
{
  v0 = sub_1D9A436D8(&unk_1F5527B18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51048);
  result = swift_arrayDestroy();
  off_1EDD34768 = v0;
  return result;
}

uint64_t sub_1D99A54A0()
{
  sub_1D99A57F8();
  v0 = sub_1D9C7E30C();
  v1 = *(v0 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {

    v3 = MEMORY[0x1E69E7CC0];
    v15 = *(MEMORY[0x1E69E7CC0] + 16);
    if (!v15)
    {
      goto LABEL_18;
    }

    goto LABEL_7;
  }

  v30 = MEMORY[0x1E69E7CC0];
  sub_1D99FE164(0, v1, 0);
  v3 = v30;
  v4 = (v0 + 56);
  do
  {
    v5 = *(v4 - 3);
    v6 = *(v4 - 2);
    v7 = *(v4 - 1);
    v8 = *v4;

    v9 = MEMORY[0x1DA73DF10](v5, v6, v7, v8);
    v11 = v10;

    v13 = *(v30 + 16);
    v12 = *(v30 + 24);
    if (v13 >= v12 >> 1)
    {
      sub_1D99FE164((v12 > 1), v13 + 1, 1);
    }

    *(v30 + 16) = v13 + 1;
    v14 = v30 + 16 * v13;
    *(v14 + 32) = v9;
    *(v14 + 40) = v11;
    v4 += 4;
    --v1;
  }

  while (v1);

  v15 = *(v30 + 16);
  if (v15)
  {
LABEL_7:
    sub_1D99FE164(0, v15, 0);
    v16 = (v3 + 40);
    do
    {
      v17 = *(v16 - 1);
      v18 = *v16;
      v19 = qword_1EDD34760;

      if (v19 != -1)
      {
        swift_once();
      }

      v20 = off_1EDD34768;
      if (*(off_1EDD34768 + 2))
      {
        v21 = sub_1D99ED894(v17, v18);
        if (v22)
        {
          v23 = (v20[7] + 16 * v21);
          v17 = *v23;
          v24 = v23[1];

          v18 = v24;
        }
      }

      v26 = *(v2 + 16);
      v25 = *(v2 + 24);
      if (v26 >= v25 >> 1)
      {
        sub_1D99FE164((v25 > 1), v26 + 1, 1);
      }

      *(v2 + 16) = v26 + 1;
      v27 = v2 + 16 * v26;
      *(v27 + 32) = v17;
      *(v27 + 40) = v18;
      v16 += 2;
      --v15;
    }

    while (v15);
  }

LABEL_18:

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51040);
  sub_1D99A584C();
  v28 = sub_1D9C7DC0C();

  return v28;
}

uint64_t sub_1D99A5748(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1D99A579C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_1D99A57F8()
{
  result = qword_1EDD2C658;
  if (!qword_1EDD2C658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD2C658);
  }

  return result;
}

unint64_t sub_1D99A584C()
{
  result = qword_1EDD2C4B0;
  if (!qword_1EDD2C4B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB51040);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD2C4B0);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t type metadata accessor for Argos_Protos_Queryflow_RefineRegionConfig()
{
  result = qword_1EDD2F330;
  if (!qword_1EDD2F330)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D99A596C()
{
  sub_1D9C7D3CC();
  if (v0 <= 0x3F)
  {
    sub_1D99A5A08();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1D99A5A08()
{
  if (!qword_1EDD30B00)
  {
    type metadata accessor for Argos_Protos_Queryflow_RefineConfig(255);
    v0 = sub_1D9C7E27C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDD30B00);
    }
  }
}

uint64_t sub_1D99A5A60()
{
  v0 = sub_1D9C7D84C();
  __swift_allocate_value_buffer(v0, qword_1EDD41BB0);
  __swift_project_value_buffer(v0, qword_1EDD41BB0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51070);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51078) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D9C85490;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "version";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1D9C7D81C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "refine_config";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "whole_image_fallback_detector_threshold";
  *(v11 + 8) = 39;
  *(v11 + 16) = 2;
  v9();
  return sub_1D9C7D82C();
}

uint64_t sub_1D99A5C80()
{
  while (1)
  {
    result = sub_1D9C7D4CC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        sub_1D9C7D54C();
        break;
      case 2:
        sub_1D99A5D30();
        break;
      case 1:
        sub_1D9C7D5DC();
        break;
    }
  }

  return result;
}

uint64_t sub_1D99A5D30()
{
  type metadata accessor for Argos_Protos_Queryflow_RefineRegionConfig();
  type metadata accessor for Argos_Protos_Queryflow_RefineConfig(0);
  sub_1D99A6B40(qword_1EDD30B60, type metadata accessor for Argos_Protos_Queryflow_RefineConfig);
  return sub_1D9C7D60C();
}

uint64_t sub_1D99A5DE4()
{
  if (!*v0 || (result = sub_1D9C7D7DC(), !v1))
  {
    result = sub_1D99A5EA4(v0);
    if (!v1)
    {
      if (v0[1])
      {
        sub_1D9C7D77C();
      }

      type metadata accessor for Argos_Protos_Queryflow_RefineRegionConfig();
      return sub_1D9C7D3AC();
    }
  }

  return result;
}

uint64_t sub_1D99A5EA4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51050);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v11 - v3;
  v5 = type metadata accessor for Argos_Protos_Queryflow_RefineConfig(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Argos_Protos_Queryflow_RefineRegionConfig();
  sub_1D99A6640(a1 + *(v9 + 28), v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    return sub_1D99A6AE0(v4, &qword_1ECB51050);
  }

  sub_1D99A66B0(v4, v8);
  sub_1D99A6B40(qword_1EDD30B60, type metadata accessor for Argos_Protos_Queryflow_RefineConfig);
  sub_1D9C7D80C();
  return sub_1D99A6714(v8);
}

uint64_t sub_1D99A6084@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  sub_1D9C7D3BC();
  v4 = *(a1 + 28);
  v5 = type metadata accessor for Argos_Protos_Queryflow_RefineConfig(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(&a2[v4], 1, 1, v5);
}

uint64_t sub_1D99A6124@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_1D9C7D3CC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1D99A6198(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = sub_1D9C7D3CC();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1D99A6264(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D99A6B40(&qword_1ECB51068, type metadata accessor for Argos_Protos_Queryflow_RefineRegionConfig);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1D99A62E0@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDD2F358 != -1)
  {
    swift_once();
  }

  v2 = sub_1D9C7D84C();
  v3 = __swift_project_value_buffer(v2, qword_1EDD41BB0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1D99A6388(uint64_t a1)
{
  v2 = sub_1D99A6B40(&qword_1EDD2F348, type metadata accessor for Argos_Protos_Queryflow_RefineRegionConfig);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1D99A63F4()
{
  sub_1D9C7E8DC();
  sub_1D9C7DBDC();
  return sub_1D9C7E93C();
}

uint64_t sub_1D99A644C()
{
  sub_1D99A6B40(&qword_1EDD2F348, type metadata accessor for Argos_Protos_Queryflow_RefineRegionConfig);

  return sub_1D9C7D6AC();
}

uint64_t sub_1D99A64C8()
{
  sub_1D9C7E8DC();
  sub_1D9C7DBDC();
  return sub_1D9C7E93C();
}

uint64_t sub_1D99A6640(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51050);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D99A66B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Argos_Protos_Queryflow_RefineConfig(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D99A6714(uint64_t a1)
{
  v2 = type metadata accessor for Argos_Protos_Queryflow_RefineConfig(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_1D99A67D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Argos_Protos_Queryflow_RefineConfig(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51050);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51080);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v20 - v12;
  if (*a1 != *a2)
  {
    goto LABEL_11;
  }

  v14 = *(type metadata accessor for Argos_Protos_Queryflow_RefineRegionConfig() + 28);
  v15 = *(v11 + 48);
  sub_1D99A6640(a1 + v14, v13);
  sub_1D99A6640(a2 + v14, &v13[v15]);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_1D99A6AE0(v13, &qword_1ECB51050);
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  sub_1D99A6640(v13, v10);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    sub_1D99A6714(v10);
LABEL_7:
    sub_1D99A6AE0(v13, &qword_1ECB51080);
LABEL_11:
    v18 = 0;
    return v18 & 1;
  }

  sub_1D99A66B0(&v13[v15], v7);
  v17 = sub_1D9A857B8(v10, v7);
  sub_1D99A6714(v7);
  sub_1D99A6714(v10);
  sub_1D99A6AE0(v13, &qword_1ECB51050);
  if ((v17 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_9:
  if (*(a1 + 4) != *(a2 + 4))
  {
    goto LABEL_11;
  }

  sub_1D9C7D3CC();
  sub_1D99A6B40(&qword_1ECB51088, MEMORY[0x1E69AAC08]);
  v18 = sub_1D9C7DC2C();
  return v18 & 1;
}

uint64_t sub_1D99A6AE0(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D99A6B40(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D99A6B88()
{
  sub_1D99A57F8();
  v0 = sub_1D9C7E2AC();
  if (*(v0 + 16))
  {
    v1 = *(v0 + 32);
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

uint64_t sub_1D99A6C1C(uint64_t a1, uint64_t a2)
{
  swift_bridgeObjectRetain_n();
  if (sub_1D9C7E41C() == a1 && v4 == a2)
  {

    goto LABEL_10;
  }

  v6 = sub_1D9C7E7DC();

  if (v6)
  {
LABEL_10:

    swift_bridgeObjectRelease_n();
    return 0;
  }

  if (sub_1D9C7E41C() == a1 && v7 == a2)
  {

LABEL_13:

    swift_bridgeObjectRelease_n();
    return 2;
  }

  v9 = sub_1D9C7E7DC();

  if (v9)
  {
    goto LABEL_13;
  }

  if (sub_1D9C7E41C() == a1 && v10 == a2)
  {

LABEL_18:

    swift_bridgeObjectRelease_n();
    return 1;
  }

  v11 = sub_1D9C7E7DC();

  if (v11)
  {
    goto LABEL_18;
  }

  sub_1D99A57F8();
  v12 = sub_1D9C7E2FC();

  if (v12)
  {
    swift_bridgeObjectRelease_n();
    return 3;
  }

  else
  {
    v13 = sub_1D9C7E2FC();

    if (v13)
    {
      swift_bridgeObjectRelease_n();
      return 4;
    }

    else
    {
      v14 = sub_1D9C7E2FC();

      if (v14)
      {

        return 5;
      }

      else
      {
        v15 = sub_1D9C7E2FC();

        if (v15)
        {
          return 6;
        }

        else
        {
          return 7;
        }
      }
    }
  }
}

uint64_t sub_1D99A6F64(void *a1)
{
  if (a1[2] != 3)
  {
    return 0;
  }

  v2 = a1[4];
  v3 = a1[5];

  v4 = sub_1D99A6B88();
  v6 = v5;

  if (!v6)
  {
    return 0;
  }

  v7 = a1[8];
  v8 = a1[9];

  v9 = sub_1D99A6B88();
  v11 = v10;

  if (!v11)
  {
    goto LABEL_23;
  }

  v20 = v4;
  v12 = a1[12];
  v13 = a1[13];

  v19 = v12;
  v14 = sub_1D99A6B88();
  v16 = v15;

  if (!v16)
  {

    goto LABEL_23;
  }

  if ((v20 != v9 || v6 != v11) && (sub_1D9C7E7DC() & 1) == 0)
  {

    goto LABEL_23;
  }

  if (v9 == v14 && v11 == v16)
  {

    goto LABEL_14;
  }

  v18 = sub_1D9C7E7DC();

  if ((v18 & 1) == 0)
  {
LABEL_23:

    return 0;
  }

LABEL_14:
  if (v2 == v7 && v3 == v8 || (sub_1D9C7E7DC() & 1) != 0 || v7 == v19 && v8 == v13 || (sub_1D9C7E7DC() & 1) != 0 || v2 == v19 && v3 == v13 || (sub_1D9C7E7DC() & 1) != 0)
  {
    goto LABEL_23;
  }

  MEMORY[0x1DA73DF90](0x50206C65646F4D20, 0xEE00737365636F72);

  return v20;
}

uint64_t sub_1D99A7220(uint64_t a1, int a2, uint64_t a3)
{
  v101 = a2;
  v108 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB51B10);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v103 = &v100[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v102 = &v100[-v7];
  MEMORY[0x1EEE9AC00](v8);
  v109 = &v100[-v9];
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v100[-v11];
  MEMORY[0x1EEE9AC00](v13);
  v104 = &v100[-v14];
  MEMORY[0x1EEE9AC00](v15);
  v110 = v12;
  v111 = &v100[-v16];
  v17 = *(a3 + 16);
  if (!v17)
  {
    v20 = MEMORY[0x1E69E7CC0];
LABEL_36:
    v45 = v20[2];
    if (!v45)
    {
      v47 = MEMORY[0x1E69E7CC0];
LABEL_79:

      return v47;
    }

    v46 = v20 + 4;
    LODWORD(v107) = v101 & 1;
    v47 = MEMORY[0x1E69E7CC0];
    v112 = v20;
    while (1)
    {
      v48 = *v46;
      if (*(*v46 + 16) != 1)
      {

        sub_1D99A6F64(v57);
        v59 = v58;
        v61 = v60;

        if (!v59)
        {
          goto LABEL_76;
        }

        v106 = v47;
        v62 = v109;
        sub_1D99A85E0(v108, v109);
        v63 = v102;
        sub_1D99A85E0(v62, v102);
        Context = type metadata accessor for VisualQueryContext();
        v65 = *(*(Context - 8) + 48);
        if (v65(v63, 1, Context) == 1)
        {
          sub_1D99A8650(v63);
          v66 = 0;
        }

        else
        {
          v66 = *(v63 + *(Context + 52));
          sub_1D99A86B8(v63);
        }

        v86 = v103;
        sub_1D99A85E0(v109, v103);
        if (v65(v86, 1, Context) == 1)
        {
          sub_1D99A8650(v86);
          v12 = v110;
          goto LABEL_67;
        }

        v88 = *v86;
        v87 = v86[1];

        sub_1D99A86B8(v86);
        v12 = v110;
        if (v87)
        {
          v105 = v88;
        }

        else
        {
LABEL_67:

          v105 = 0;
          v87 = 0xE000000000000000;
        }

        v89 = v66;
        v117 = sub_1D9C7DCFC();
        v118 = v90;
        v115 = 32;
        v116 = 0xE100000000000000;
        v113 = 95;
        v114 = 0xE100000000000000;
        sub_1D99A57F8();
        sub_1D9C7E2CC();

        v91 = v61 * 1000000.0;
        v47 = v106;
        if (COERCE__INT64(fabs(v61 * 1000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
        {
          goto LABEL_85;
        }

        if (v91 <= -1.0)
        {
          goto LABEL_86;
        }

        if (v91 >= 1.84467441e19)
        {
          goto LABEL_87;
        }

        v92 = v91;
        v93 = objc_allocWithZone(MEMORY[0x1E69C9F40]);
        v94 = sub_1D9C7DC4C();

        v95 = [v93 initWithEvent:v94 timeInterval:v92 queryId:v89];

        sub_1D99A8650(v109);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v47 = sub_1D9AF8834(0, *(v47 + 2) + 1, 1, v47);
        }

        v97 = *(v47 + 2);
        v96 = *(v47 + 3);
        if (v97 >= v96 >> 1)
        {
          v47 = sub_1D9AF8834((v96 > 1), v97 + 1, 1, v47);
        }

        *(v47 + 2) = v97 + 1;
        v98 = &v47[40 * v97];
        v99 = v105;
        *(v98 + 4) = v89;
        *(v98 + 5) = v99;
        *(v98 + 6) = v87;
        *(v98 + 7) = v95;
        v98[64] = v107;
        goto LABEL_76;
      }

      v49 = *(v48 + 32);
      v50 = *(v48 + 40);

      LODWORD(v49) = sub_1D99A6C1C(v49, v50);

      if (v49)
      {
        v51 = *(v48 + 32);
        v52 = *(v48 + 40);

        LODWORD(v51) = sub_1D99A6C1C(v51, v52);

        if (v51 != 2)
        {
          v53 = *(v48 + 32);
          v54 = *(v48 + 40);

          LODWORD(v53) = sub_1D99A6C1C(v53, v54);

          if (v53 != 1)
          {
            v55 = *(v48 + 32);
            v56 = *(v48 + 40);

            LOBYTE(v55) = sub_1D99A6C1C(v55, v56);

            if (v55 != 3)
            {

              goto LABEL_76;
            }
          }
        }
      }

      v67 = *(v48 + 48);

      v68 = v111;
      sub_1D99A85E0(v108, v111);
      v69 = v104;
      sub_1D99A85E0(v68, v104);
      v70 = type metadata accessor for VisualQueryContext();
      v71 = *(*(v70 - 8) + 48);
      if (v71(v69, 1, v70) == 1)
      {
        sub_1D99A8650(v69);
        v72 = 0;
      }

      else
      {
        v73 = v69;
        v72 = *&v69[*(v70 + 52)];
        sub_1D99A86B8(v73);
      }

      sub_1D99A85E0(v111, v12);
      if (v71(v12, 1, v70) == 1)
      {
        break;
      }

      v74 = v12;
      v75 = *v12;
      v76 = *(v74 + 8);

      sub_1D99A86B8(v74);
      if (!v76)
      {
        goto LABEL_53;
      }

LABEL_54:
      v117 = sub_1D9C7DCFC();
      v118 = v77;
      v115 = 32;
      v116 = 0xE100000000000000;
      v113 = 95;
      v114 = 0xE100000000000000;
      sub_1D99A57F8();
      sub_1D9C7E2CC();

      v78 = v67 * 1000000.0;
      if (COERCE__INT64(fabs(v67 * 1000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
LABEL_81:
        __break(1u);
LABEL_82:
        __break(1u);
LABEL_83:
        __break(1u);
        goto LABEL_84;
      }

      if (v78 <= -1.0)
      {
        goto LABEL_81;
      }

      if (v78 >= 1.84467441e19)
      {
        goto LABEL_82;
      }

      v79 = v78;
      v80 = objc_allocWithZone(MEMORY[0x1E69C9F40]);
      v81 = sub_1D9C7DC4C();

      v82 = [v80 initWithEvent:v81 timeInterval:v79 queryId:v72];

      sub_1D99A8650(v111);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v47 = sub_1D9AF8834(0, *(v47 + 2) + 1, 1, v47);
      }

      v84 = *(v47 + 2);
      v83 = *(v47 + 3);
      if (v84 >= v83 >> 1)
      {
        v47 = sub_1D9AF8834((v83 > 1), v84 + 1, 1, v47);
      }

      *(v47 + 2) = v84 + 1;
      v85 = &v47[40 * v84];
      *(v85 + 4) = v72;
      *(v85 + 5) = v75;
      *(v85 + 6) = v76;
      *(v85 + 7) = v82;
      v85[64] = v107;
      v12 = v110;
LABEL_76:
      ++v46;
      if (!--v45)
      {
        goto LABEL_79;
      }
    }

    sub_1D99A8650(v12);
LABEL_53:

    v75 = 0;
    v76 = 0xE000000000000000;
    goto LABEL_54;
  }

  v18 = 0;
  v19 = (a3 + 56);
  v20 = MEMORY[0x1E69E7CC0];
  v107 = xmmword_1D9C85660;
  while (1)
  {
    v21 = *(v19 - 3);
    v22 = *(v19 - 2);
    v23 = *(v19 - 1);
    v24 = *v19;

    if (sub_1D99A6C1C(v21, v22) == 4)
    {
      v18 = v20[2];
LABEL_7:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51090);
      v25 = swift_allocObject();
      *(v25 + 16) = v107;
      *(v25 + 32) = v21;
      *(v25 + 40) = v22;
      *(v25 + 48) = v23;
      *(v25 + 56) = v24;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_1D9AF8950(0, v20[2] + 1, 1, v20);
      }

      v27 = v20[2];
      v26 = v20[3];
      if (v27 >= v26 >> 1)
      {
        v20 = sub_1D9AF8950((v26 > 1), v27 + 1, 1, v20);
      }

      v20[2] = v27 + 1;
      v20[v27 + 4] = v25;
      goto LABEL_4;
    }

    result = sub_1D99A6C1C(v21, v22);
    if (result != 5)
    {
      result = sub_1D99A6C1C(v21, v22);
      if (result != 6)
      {
        goto LABEL_7;
      }
    }

    if ((v18 & 0x8000000000000000) != 0)
    {
      goto LABEL_83;
    }

    if (v18 >= v20[2])
    {
      break;
    }

    v29 = v20[v18 + 4];
    if (v29[2])
    {
      v106 = v18;
      v112 = v20;
      v30 = v29[5];
      v117 = v29[4];
      v118 = v30;
      v115 = 32;
      v116 = 0xE100000000000000;
      sub_1D99A57F8();

      v31 = sub_1D9C7E2AC();
      if (v31[2])
      {
        v32 = v31[5];
        v105 = v31[4];

        v117 = v21;
        v118 = v22;
        v115 = 32;
        v116 = 0xE100000000000000;
        v33 = sub_1D9C7E2AC();
        if (v33[2])
        {
          v35 = v33[4];
          v34 = v33[5];

          if (v105 == v35 && v32 == v34)
          {

            v18 = v106;
          }

          else
          {
            v36 = sub_1D9C7E7DC();

            v18 = v106;
            if ((v36 & 1) == 0)
            {

              v20 = v112;
              v12 = v110;
              goto LABEL_4;
            }
          }

          v37 = v112;
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_1D9B1A6D4(v37);
            v37 = result;
          }

          if (v18 >= v37[2])
          {
            goto LABEL_88;
          }

          v38 = v37;
          v39 = v37 + 4;
          v40 = v37[v18 + 4];
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v39[v18] = v40;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v40 = sub_1D9AF8728(0, *(v40 + 2) + 1, 1, v40);
            v39[v18] = v40;
          }

          v43 = *(v40 + 2);
          v42 = *(v40 + 3);
          if (v43 >= v42 >> 1)
          {
            v40 = sub_1D9AF8728((v42 > 1), v43 + 1, 1, v40);
            v39[v106] = v40;
          }

          v20 = v38;
          *(v40 + 2) = v43 + 1;
          v44 = &v40[32 * v43];
          *(v44 + 4) = v21;
          *(v44 + 5) = v22;
          *(v44 + 6) = v23;
          *(v44 + 7) = v24;
        }

        else
        {

          v20 = v112;
        }

        v12 = v110;
        v18 = v106;
      }

      else
      {

        v20 = v112;
        v12 = v110;
        v18 = v106;
      }
    }

    else
    {
    }

LABEL_4:
    v19 += 4;
    if (!--v17)
    {
      goto LABEL_36;
    }
  }

LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
LABEL_88:
  __break(1u);
  return result;
}

unint64_t sub_1D99A7E00@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = result;
  if (result <= 3u)
  {
    v4 = 0x65447463656A626FLL;
    v12 = "ObjectDetector Model Execution";
    v13 = 30;
    v14 = 0x80000001D9CA29D0;
    v15 = "DomainPredictionGrounding Model Execution";
    v16 = 0xD000000000000019;
    v17 = 41;
    if (result != 2)
    {
      v15 = "Unified Model Execution";
      v17 = 23;
      v16 = 0x64656966696E75;
      v14 = 0xE700000000000000;
    }

    if (result)
    {
      v12 = "DomainPrediction Model Execution";
      v13 = 32;
      v4 = 0xD000000000000010;
      result = 0x80000001D9CA29B0;
    }

    else
    {
      result = 0xEF6E6F6974636574;
    }

    v18 = v2 <= 1;
    if (v2 <= 1)
    {
      v10 = v12;
    }

    else
    {
      v10 = v15;
    }

    if (v18)
    {
      v11 = v13;
    }

    else
    {
      v11 = v17;
    }

    if (v18)
    {
      v3 = result;
    }

    else
    {
      v4 = v16;
      v3 = v14;
    }
  }

  else if (result <= 5u)
  {
    v3 = 0xE900000000000032;
    v4 = 0x766432736F677261;
    v10 = "Argos2DV2 Model Execution";
    v11 = 25;
    if (result != 4)
    {
      v10 = "Natureworld Model Execution";
      v11 = 27;
      v4 = 0x6F7765727574616ELL;
      v3 = 0xEB00000000646C72;
    }
  }

  else
  {
    v3 = 0xED00003276646C72;
    v4 = 0x6F7765727574616ELL;
    v5 = 0xE400000000000000;
    v6 = "Food Model Execution";
    v7 = 1685024614;
    v8 = 20;
    result = 0xEA00000000006C6FLL;
    if (v2 != 7)
    {
      v6 = "SignSymbol Model Execution";
      v8 = 26;
      v7 = 0x626D79536E676973;
      v5 = 0xEA00000000006C6FLL;
    }

    v9 = v2 == 6;
    if (v2 == 6)
    {
      v10 = "NatureworldV2 Model Execution";
    }

    else
    {
      v10 = v6;
    }

    if (v9)
    {
      v11 = 29;
    }

    else
    {
      v11 = v8;
    }

    if (!v9)
    {
      v4 = v7;
      v3 = v5;
    }
  }

  *a2 = v4;
  *(a2 + 8) = v3;
  *(a2 + 16) = v10;
  *(a2 + 24) = v11;
  *(a2 + 32) = 2;
  return result;
}

unint64_t sub_1D99A7FF8@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = result;
  if (result <= 3u)
  {
    v4 = 0x65447463656A626FLL;
    v12 = "ObjectDetector Model Postprocess Results";
    v13 = 40;
    v14 = 0x80000001D9CA29D0;
    v15 = "DomainPredictionGrounding Model Postprocess Results";
    v16 = 0xD000000000000019;
    v17 = 51;
    if (result != 2)
    {
      v15 = "Unified Model Postprocess Results";
      v17 = 33;
      v16 = 0x64656966696E75;
      v14 = 0xE700000000000000;
    }

    if (result)
    {
      v12 = "DomainPrediction Model Postprocess Results";
      v13 = 42;
      v4 = 0xD000000000000010;
      result = 0x80000001D9CA29B0;
    }

    else
    {
      result = 0xEF6E6F6974636574;
    }

    v18 = v2 <= 1;
    if (v2 <= 1)
    {
      v10 = v12;
    }

    else
    {
      v10 = v15;
    }

    if (v18)
    {
      v11 = v13;
    }

    else
    {
      v11 = v17;
    }

    if (v18)
    {
      v3 = result;
    }

    else
    {
      v4 = v16;
      v3 = v14;
    }
  }

  else if (result <= 5u)
  {
    v3 = 0xE900000000000032;
    v4 = 0x766432736F677261;
    v10 = "Argos2DV2 Model Postprocess Results";
    v11 = 35;
    if (result != 4)
    {
      v10 = "Natureworld Model Postprocess Results";
      v11 = 37;
      v4 = 0x6F7765727574616ELL;
      v3 = 0xEB00000000646C72;
    }
  }

  else
  {
    v3 = 0xED00003276646C72;
    v4 = 0x6F7765727574616ELL;
    v5 = 0xE400000000000000;
    v6 = "Food Model Postprocess Results";
    v7 = 1685024614;
    v8 = 30;
    result = 0xEA00000000006C6FLL;
    if (v2 != 7)
    {
      v6 = "SignSymbol Model Postprocess Results";
      v8 = 36;
      v7 = 0x626D79536E676973;
      v5 = 0xEA00000000006C6FLL;
    }

    v9 = v2 == 6;
    if (v2 == 6)
    {
      v10 = "NatureworldV2 Model Postprocess Results";
    }

    else
    {
      v10 = v6;
    }

    if (v9)
    {
      v11 = 39;
    }

    else
    {
      v11 = v8;
    }

    if (!v9)
    {
      v4 = v7;
      v3 = v5;
    }
  }

  *a2 = v4;
  *(a2 + 8) = v3;
  *(a2 + 16) = v10;
  *(a2 + 24) = v11;
  *(a2 + 32) = 2;
  return result;
}

unint64_t sub_1D99A81F0@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = result;
  if (result <= 3u)
  {
    v4 = 0x65447463656A626FLL;
    v12 = "ObjectDetector Model Loading";
    v13 = 28;
    v14 = 0x80000001D9CA29D0;
    v15 = "DomainPredictionGrounding Model Loading";
    v16 = 0xD000000000000019;
    v17 = 39;
    if (result != 2)
    {
      v15 = "Unified Model Loading";
      v17 = 21;
      v16 = 0x64656966696E75;
      v14 = 0xE700000000000000;
    }

    if (result)
    {
      v12 = "DomainPrediction Model Loading";
      v13 = 30;
      v4 = 0xD000000000000010;
      result = 0x80000001D9CA29B0;
    }

    else
    {
      result = 0xEF6E6F6974636574;
    }

    v18 = v2 <= 1;
    if (v2 <= 1)
    {
      v10 = v12;
    }

    else
    {
      v10 = v15;
    }

    if (v18)
    {
      v11 = v13;
    }

    else
    {
      v11 = v17;
    }

    if (v18)
    {
      v3 = result;
    }

    else
    {
      v4 = v16;
      v3 = v14;
    }
  }

  else if (result <= 5u)
  {
    v3 = 0xE900000000000032;
    v4 = 0x766432736F677261;
    v10 = "Argos2DV2 Model Loading";
    v11 = 23;
    if (result != 4)
    {
      v10 = "Natureworld Model Loading";
      v11 = 25;
      v4 = 0x6F7765727574616ELL;
      v3 = 0xEB00000000646C72;
    }
  }

  else
  {
    v3 = 0xED00003276646C72;
    v4 = 0x6F7765727574616ELL;
    v5 = 0xE400000000000000;
    v6 = "Food Model Loading";
    v7 = 1685024614;
    v8 = 18;
    result = 0xEA00000000006C6FLL;
    if (v2 != 7)
    {
      v6 = "SignSymbol Model Loading";
      v8 = 24;
      v7 = 0x626D79536E676973;
      v5 = 0xEA00000000006C6FLL;
    }

    v9 = v2 == 6;
    if (v2 == 6)
    {
      v10 = "NatureworldV2 Model Loading";
    }

    else
    {
      v10 = v6;
    }

    if (v9)
    {
      v11 = 27;
    }

    else
    {
      v11 = v8;
    }

    if (!v9)
    {
      v4 = v7;
      v3 = v5;
    }
  }

  *a2 = v4;
  *(a2 + 8) = v3;
  *(a2 + 16) = v10;
  *(a2 + 24) = v11;
  *(a2 + 32) = 2;
  return result;
}

unint64_t sub_1D99A83E8@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = result;
  if (result <= 3u)
  {
    v4 = 0x65447463656A626FLL;
    v12 = "ObjectDetector Model Preprocess Input";
    v13 = 37;
    v14 = 0x80000001D9CA29D0;
    v15 = "DomainPredictionGrounding Model Preprocess Input";
    v16 = 0xD000000000000019;
    v17 = 48;
    if (result != 2)
    {
      v15 = "Unified Model Preprocess Input";
      v17 = 30;
      v16 = 0x64656966696E75;
      v14 = 0xE700000000000000;
    }

    if (result)
    {
      v12 = "DomainPrediction Model Preprocess Input";
      v13 = 39;
      v4 = 0xD000000000000010;
      result = 0x80000001D9CA29B0;
    }

    else
    {
      result = 0xEF6E6F6974636574;
    }

    v18 = v2 <= 1;
    if (v2 <= 1)
    {
      v10 = v12;
    }

    else
    {
      v10 = v15;
    }

    if (v18)
    {
      v11 = v13;
    }

    else
    {
      v11 = v17;
    }

    if (v18)
    {
      v3 = result;
    }

    else
    {
      v4 = v16;
      v3 = v14;
    }
  }

  else if (result <= 5u)
  {
    v3 = 0xE900000000000032;
    v4 = 0x766432736F677261;
    v10 = "Argos2DV2 Model Preprocess Input";
    v11 = 32;
    if (result != 4)
    {
      v10 = "Natureworld Model Preprocess Input";
      v11 = 34;
      v4 = 0x6F7765727574616ELL;
      v3 = 0xEB00000000646C72;
    }
  }

  else
  {
    v3 = 0xED00003276646C72;
    v4 = 0x6F7765727574616ELL;
    v5 = 0xE400000000000000;
    v6 = "Food Model Preprocess Input";
    v7 = 1685024614;
    v8 = 27;
    result = 0xEA00000000006C6FLL;
    if (v2 != 7)
    {
      v6 = "SignSymbol Model Preprocess Input";
      v8 = 33;
      v7 = 0x626D79536E676973;
      v5 = 0xEA00000000006C6FLL;
    }

    v9 = v2 == 6;
    if (v2 == 6)
    {
      v10 = "NatureworldV2 Model Preprocess Input";
    }

    else
    {
      v10 = v6;
    }

    if (v9)
    {
      v11 = 36;
    }

    else
    {
      v11 = v8;
    }

    if (!v9)
    {
      v4 = v7;
      v3 = v5;
    }
  }

  *a2 = v4;
  *(a2 + 8) = v3;
  *(a2 + 16) = v10;
  *(a2 + 24) = v11;
  *(a2 + 32) = 2;
  return result;
}

uint64_t sub_1D99A85E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB51B10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D99A8650(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB51B10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D99A86B8(uint64_t a1)
{
  Context = type metadata accessor for VisualQueryContext();
  (*(*(Context - 8) + 8))(a1, Context);
  return a1;
}

void sub_1D99A875C()
{
  sub_1D9C7B80C();
  if (v0 <= 0x3F)
  {
    sub_1D99A8834();
    if (v1 <= 0x3F)
    {
      sub_1D99A88F4();
      if (v2 <= 0x3F)
      {
        sub_1D99A8944();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1D99A8834()
{
  if (!qword_1EDD2C648)
  {
    sub_1D9C7B80C();
    sub_1D99A88A0();
    v0 = sub_1D9C7DBAC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDD2C648);
    }
  }
}

unint64_t sub_1D99A88A0()
{
  result = qword_1EDD33D40;
  if (!qword_1EDD33D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD33D40);
  }

  return result;
}

void sub_1D99A88F4()
{
  if (!qword_1EDD34770)
  {
    v0 = sub_1D9C7E27C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDD34770);
    }
  }
}

void sub_1D99A8944()
{
  if (!qword_1EDD2E168[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECB518D0);
    v0 = type metadata accessor for Lazy();
    if (!v1)
    {
      atomic_store(v0, qword_1EDD2E168);
    }
  }
}

uint64_t getEnumTagSinglePayload for MLModelRepresentationType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MLModelRepresentationType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MLModelAssetRole(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MLModelAssetRole(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D99A8C54(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v5 = 0xD000000000000010;
    v6 = 0xD000000000000015;
    if (a1 != 10)
    {
      v5 = 0x614C657372616F63;
    }

    if (a1 != 9)
    {
      v6 = v5;
    }

    v7 = 0x7070614D72696168;
    v8 = 0x4D736C616D696E61;
    if (a1 != 7)
    {
      v8 = 0x614D65727574616ELL;
    }

    if (a1 != 6)
    {
      v7 = v8;
    }

    if (a1 <= 8u)
    {
      return v7;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x676E697070616DLL;
    v2 = 0x697070614D746163;
    v3 = 0x697070614D676F64;
    if (a1 != 4)
    {
      v3 = 0x7070614D74616F63;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    if (a1 != 1)
    {
      v1 = 0x617461646174656DLL;
    }

    if (!a1)
    {
      v1 = 0xD000000000000010;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1D99A8E14(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_1D99A8C54(*a1);
  v5 = v4;
  if (v3 == sub_1D99A8C54(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D9C7E7DC();
  }

  return v8 & 1;
}

uint64_t sub_1D99A8E9C()
{
  v1 = *v0;
  sub_1D9C7E8DC();
  sub_1D99A8C54(v1);
  sub_1D9C7DD6C();

  return sub_1D9C7E93C();
}

uint64_t sub_1D99A8F00()
{
  sub_1D99A8C54(*v0);
  sub_1D9C7DD6C();
}

uint64_t sub_1D99A8F54()
{
  v1 = *v0;
  sub_1D9C7E8DC();
  sub_1D99A8C54(v1);
  sub_1D9C7DD6C();

  return sub_1D9C7E93C();
}

uint64_t sub_1D99A8FB4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D99AAF30();
  *a1 = result;
  return result;
}

unint64_t sub_1D99A8FE4@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1D99A8C54(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1D99A9010(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 7498085;
  }

  else
  {
    v2 = 7104877;
  }

  if (*a2)
  {
    v3 = 7498085;
  }

  else
  {
    v3 = 7104877;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1D9C7E7DC();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_1D99A9088()
{
  sub_1D9C7E8DC();
  sub_1D9C7DD6C();

  return sub_1D9C7E93C();
}

uint64_t sub_1D99A90F0()
{
  sub_1D9C7DD6C();
}

uint64_t sub_1D99A913C()
{
  sub_1D9C7E8DC();
  sub_1D9C7DD6C();

  return sub_1D9C7E93C();
}

uint64_t sub_1D99A91A0@<X0>(char *a1@<X8>)
{
  v2 = sub_1D9C7E56C();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

void sub_1D99A9200(uint64_t *a1@<X8>)
{
  v2 = 7104877;
  if (*v1)
  {
    v2 = 7498085;
  }

  *a1 = v2;
  a1[1] = 0xE300000000000000;
}

unint64_t sub_1D99A922C()
{
  result = qword_1ECB51098;
  if (!qword_1ECB51098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB51098);
  }

  return result;
}

unint64_t sub_1D99A9284()
{
  result = qword_1EDD33D38;
  if (!qword_1EDD33D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD33D38);
  }

  return result;
}

uint64_t sub_1D99A92D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v16 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB518D0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v15 - v7;
  v9 = type metadata accessor for Argos_Protos_MLModel_ModelDescription(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D99AB100(a1, v8, &unk_1ECB518D0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1D99A6AE0(v8, &unk_1ECB518D0);
    result = sub_1D99A94CC(v16, a3);
    if (!v3)
    {
      return result;
    }

    v14 = 1;
  }

  else
  {
    sub_1D99AB168(v8, v12, type metadata accessor for Argos_Protos_MLModel_ModelDescription);
    sub_1D99AB168(v12, a3, type metadata accessor for Argos_Protos_MLModel_ModelDescription);
    v14 = 0;
  }

  return (*(v10 + 56))(a3, v14, 1, v9);
}

uint64_t sub_1D99A94CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a2;
  v4 = sub_1D9C7D8DC();
  v56 = *(v4 - 8);
  v57 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v55 = &v49 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB518D0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v49 - v10;
  v12 = sub_1D9C7B80C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v49 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v49 - v20;
  if (*(a1 + 16) && (v22 = sub_1D99EE004(0), (v23 & 1) != 0))
  {
    v24 = *(a1 + 56) + *(v13 + 72) * v22;
    v25 = *(v13 + 16);
    v25(v18, v24, v12);
    (*(v13 + 32))(v21, v18, v12);
    sub_1D9A4E438();
    if (v2)
    {

      v26 = type metadata accessor for Argos_Protos_MLModel_ModelDescription(0);
      v27 = *(v26 - 8);
      v53 = *(v27 + 56);
      v54 = v26;
      v52 = v27 + 56;
      v53(v11, 1, 1);
      sub_1D99A6AE0(v11, &unk_1ECB518D0);
      v28 = v55;
      static Logger.argos.getter(v55);
      v25(v15, v21, v12);
      v29 = sub_1D9C7D8BC();
      v30 = sub_1D9C7E0AC();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v50 = v31;
        v51 = swift_slowAlloc();
        v59 = v51;
        *v31 = 136315138;
        sub_1D99AB1D0();
        v32 = sub_1D9C7E7AC();
        v34 = v33;
        v35 = *(v13 + 8);
        v35(v15, v12);
        v36 = sub_1D9A0E224(v32, v34, &v59);

        v37 = v50;
        *(v50 + 1) = v36;
        v38 = v37;
        _os_log_impl(&dword_1D9962000, v29, v30, "unable to load Model Description from file %s", v37, 0xCu);
        v39 = v51;
        __swift_destroy_boxed_opaque_existential_0Tm(v51);
        MEMORY[0x1DA7405F0](v39, -1, -1);
        MEMORY[0x1DA7405F0](v38, -1, -1);

        (*(v56 + 8))(v55, v57);
        v35(v21, v12);
      }

      else
      {

        v48 = *(v13 + 8);
        v48(v15, v12);
        (*(v56 + 8))(v28, v57);
        v48(v21, v12);
      }

      return (v53)(v58, 1, 1, v54);
    }

    else
    {
      (*(v13 + 8))(v21, v12);
      v45 = type metadata accessor for Argos_Protos_MLModel_ModelDescription(0);
      v46 = *(*(v45 - 8) + 56);
      v46(v11, 0, 1, v45);
      v47 = v58;
      sub_1D99AB168(v11, v58, type metadata accessor for Argos_Protos_MLModel_ModelDescription);
      return (v46)(v47, 0, 1, v45);
    }
  }

  else
  {
    static Logger.argos.getter(v6);
    v40 = sub_1D9C7D8BC();
    v41 = sub_1D9C7E0AC();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_1D9962000, v40, v41, "missing model Specification", v42, 2u);
      MEMORY[0x1DA7405F0](v42, -1, -1);
    }

    (*(v56 + 8))(v6, v57);
    v43 = type metadata accessor for Argos_Protos_MLModel_ModelDescription(0);
    return (*(*(v43 - 8) + 56))(v58, 1, 1, v43);
  }
}

uint64_t sub_1D99A9AD0@<X0>(uint64_t a1@<X8>)
{
  v69 = a1;
  v1 = type metadata accessor for Argos_Protos_MLModel_ImageFeatureType(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v62 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB510A8);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v66 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v62 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB518E0);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v65 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v62 - v12;
  v74 = type metadata accessor for Argos_Protos_MLModel_FeatureType(0);
  v67 = *(v74 - 8);
  v14 = MEMORY[0x1EEE9AC00](v74);
  v16 = &v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v62 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB518D0);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = (&v62 - v20);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB510B0);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v68 = &v62 - v23;
  v24 = type metadata accessor for Argos_Protos_MLModel_FeatureDescription(0);
  v25 = *(v24 - 8);
  v75 = v24;
  v76 = v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v28 = &v62 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v30 = &v62 - v29;
  type metadata accessor for MLModelInfo(0);
  sub_1D9C19728(v21);
  v62 = v30;
  v63 = v16;
  v64 = v3;
  v31 = type metadata accessor for Argos_Protos_MLModel_ModelDescription(0);
  if ((*(*(v31 - 8) + 48))(v21, 1, v31) == 1)
  {
    sub_1D99A6AE0(v21, &unk_1ECB518D0);
    v32 = v68;
    (*(v76 + 56))(v68, 1, 1, v75);
    v33 = v69;
    goto LABEL_3;
  }

  v72 = v13;
  v38 = *v21;

  result = sub_1D99AAFD4(v21, type metadata accessor for Argos_Protos_MLModel_ModelDescription);
  v73 = v38;
  v71 = *(v38 + 16);
  if (!v71)
  {
LABEL_19:

    v46 = 1;
    v32 = v68;
LABEL_21:
    v47 = v75;
    v48 = v76;
    (*(v76 + 56))(v32, v46, 1, v75);
    v49 = (*(v48 + 48))(v32, 1, v47);
    v33 = v69;
    v50 = v74;
    if (v49 != 1)
    {
      v51 = v62;
      sub_1D99AB168(v32, v62, type metadata accessor for Argos_Protos_MLModel_FeatureDescription);
      v52 = v51 + *(v47 + 28);
      v53 = v65;
      sub_1D99AB100(v52, v65, &qword_1ECB518E0);
      v54 = *(v67 + 48);
      if (v54(v53, 1, v50) == 1)
      {
        v55 = type metadata accessor for Argos_Protos_MLModel_FeatureType.OneOf_Type(0);
        v56 = v63;
        (*(*(v55 - 8) + 56))(v63, 1, 1, v55);
        *(v56 + *(v50 + 20)) = 0;
        sub_1D9C7D3BC();
        v57 = v54(v53, 1, v50);
        v58 = v64;
        if (v57 != 1)
        {
          sub_1D99A6AE0(v53, &qword_1ECB518E0);
        }
      }

      else
      {
        v56 = v63;
        sub_1D99AB168(v53, v63, type metadata accessor for Argos_Protos_MLModel_FeatureType);
        v58 = v64;
      }

      v59 = v66;
      sub_1D99AB100(v56, v66, &qword_1ECB510A8);
      sub_1D99AAFD4(v56, type metadata accessor for Argos_Protos_MLModel_FeatureType);
      v60 = type metadata accessor for Argos_Protos_MLModel_FeatureType.OneOf_Type(0);
      if ((*(*(v60 - 8) + 48))(v59, 1, v60) != 1)
      {
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          sub_1D99AB168(v59, v58, type metadata accessor for Argos_Protos_MLModel_ImageFeatureType);
          sub_1D99AB168(v51, v33, type metadata accessor for Argos_Protos_MLModel_FeatureDescription);
          v61 = type metadata accessor for MLModelImageInput(0);
          sub_1D99AB168(v58, v33 + *(v61 + 20), type metadata accessor for Argos_Protos_MLModel_ImageFeatureType);
          return (*(*(v61 - 8) + 56))(v33, 0, 1, v61);
        }

        sub_1D99AAFD4(v51, type metadata accessor for Argos_Protos_MLModel_FeatureDescription);
        sub_1D99AAFD4(v59, type metadata accessor for Argos_Protos_MLModel_FeatureType.OneOf_Type);
        goto LABEL_5;
      }

      sub_1D99AAFD4(v51, type metadata accessor for Argos_Protos_MLModel_FeatureDescription);
      v34 = &qword_1ECB510A8;
      v35 = v59;
LABEL_4:
      sub_1D99A6AE0(v35, v34);
LABEL_5:
      v36 = type metadata accessor for MLModelImageInput(0);
      return (*(*(v36 - 8) + 56))(v33, 1, 1, v36);
    }

LABEL_3:
    v34 = &qword_1ECB510B0;
    v35 = v32;
    goto LABEL_4;
  }

  v39 = 0;
  v70 = v73 + ((*(v76 + 80) + 32) & ~*(v76 + 80));
  v40 = (v67 + 48);
  while (v39 < *(v73 + 16))
  {
    sub_1D99AB034(v70 + *(v76 + 72) * v39, v28, type metadata accessor for Argos_Protos_MLModel_FeatureDescription);
    v41 = v72;
    sub_1D99AB100(&v28[*(v75 + 28)], v72, &qword_1ECB518E0);
    v42 = *v40;
    v43 = v74;
    if ((*v40)(v41, 1, v74) == 1)
    {
      v44 = type metadata accessor for Argos_Protos_MLModel_FeatureType.OneOf_Type(0);
      (*(*(v44 - 8) + 56))(v18, 1, 1, v44);
      v18[*(v43 + 20)] = 0;
      sub_1D9C7D3BC();
      if (v42(v41, 1, v43) != 1)
      {
        sub_1D99A6AE0(v41, &qword_1ECB518E0);
      }
    }

    else
    {
      sub_1D99AB168(v41, v18, type metadata accessor for Argos_Protos_MLModel_FeatureType);
    }

    sub_1D99AB100(v18, v8, &qword_1ECB510A8);
    sub_1D99AAFD4(v18, type metadata accessor for Argos_Protos_MLModel_FeatureType);
    v45 = type metadata accessor for Argos_Protos_MLModel_FeatureType.OneOf_Type(0);
    if ((*(*(v45 - 8) + 48))(v8, 1, v45) == 1)
    {
      sub_1D99AAFD4(v28, type metadata accessor for Argos_Protos_MLModel_FeatureDescription);
      result = sub_1D99A6AE0(v8, &qword_1ECB510A8);
    }

    else
    {
      if (swift_getEnumCaseMultiPayload() != 1)
      {

        sub_1D99AAFD4(v8, type metadata accessor for Argos_Protos_MLModel_FeatureType.OneOf_Type);
        v32 = v68;
        sub_1D99AB168(v28, v68, type metadata accessor for Argos_Protos_MLModel_FeatureDescription);
        v46 = 0;
        goto LABEL_21;
      }

      sub_1D99AAFD4(v28, type metadata accessor for Argos_Protos_MLModel_FeatureDescription);
      result = sub_1D99AAFD4(v8, type metadata accessor for Argos_Protos_MLModel_FeatureType.OneOf_Type);
    }

    if (v71 == ++v39)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

double sub_1D99AA5A8()
{
  v0 = type metadata accessor for Argos_Protos_MLModel_ImageFeatureType(0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = (&v14 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB510A0);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v14 - v7;
  sub_1D99A9AD0(&v14 - v7);
  v9 = type metadata accessor for MLModelImageInput(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v8, 1, v9) == 1)
  {
    sub_1D99A6AE0(v8, &qword_1ECB510A0);
    v11 = 0.0;
  }

  else
  {
    sub_1D99AB034(&v8[*(v9 + 20)], v2, type metadata accessor for Argos_Protos_MLModel_ImageFeatureType);
    sub_1D99AAFD4(v8, type metadata accessor for MLModelImageInput);
    v12 = *v2;
    sub_1D99AAFD4(v2, type metadata accessor for Argos_Protos_MLModel_ImageFeatureType);
    v11 = v12;
  }

  sub_1D99A9AD0(v6);
  if (v10(v6, 1, v9) == 1)
  {
    sub_1D99A6AE0(v6, &qword_1ECB510A0);
  }

  else
  {
    sub_1D99AB034(&v6[*(v9 + 20)], v2, type metadata accessor for Argos_Protos_MLModel_ImageFeatureType);
    sub_1D99AAFD4(v6, type metadata accessor for MLModelImageInput);
    sub_1D99AAFD4(v2, type metadata accessor for Argos_Protos_MLModel_ImageFeatureType);
  }

  return v11;
}

uint64_t sub_1D99AA820()
{
  v0 = type metadata accessor for Argos_Protos_MLModel_FeatureDescription(0);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = (v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB518D0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v19 - v5;
  type metadata accessor for MLModelInfo(0);
  sub_1D9C19728(v6);
  v7 = type metadata accessor for Argos_Protos_MLModel_ModelDescription(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    sub_1D99A6AE0(v6, &unk_1ECB518D0);
    return MEMORY[0x1E69E7CC0];
  }

  v10 = *(v6 + 1);

  sub_1D99AAFD4(v6, type metadata accessor for Argos_Protos_MLModel_ModelDescription);
  v11 = *(v10 + 16);
  if (!v11)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v19[0] = MEMORY[0x1E69E7CC0];
  sub_1D99FE164(0, v11, 0);
  v8 = v19[0];
  v12 = v10 + ((*(v1 + 80) + 32) & ~*(v1 + 80));
  v13 = *(v1 + 72);
  do
  {
    sub_1D99AB034(v12, v3, type metadata accessor for Argos_Protos_MLModel_FeatureDescription);
    v15 = *v3;
    v14 = v3[1];

    sub_1D99AAFD4(v3, type metadata accessor for Argos_Protos_MLModel_FeatureDescription);
    v19[0] = v8;
    v17 = *(v8 + 16);
    v16 = *(v8 + 24);
    if (v17 >= v16 >> 1)
    {
      sub_1D99FE164((v16 > 1), v17 + 1, 1);
      v8 = v19[0];
    }

    *(v8 + 16) = v17 + 1;
    v18 = v8 + 16 * v17;
    *(v18 + 32) = v15;
    *(v18 + 40) = v14;
    v12 += v13;
    --v11;
  }

  while (v11);

  return v8;
}

unint64_t sub_1D99AAB0C()
{
  v0 = type metadata accessor for Argos_Protos_MLModel_FeatureDescription(0);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v36 - v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB518D0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v36 - v8;
  type metadata accessor for MLModelInfo(0);
  sub_1D9C19728(v9);
  v10 = type metadata accessor for Argos_Protos_MLModel_ModelDescription(0);
  if ((*(*(v10 - 8) + 48))(v9, 1, v10) == 1)
  {
    sub_1D99A6AE0(v9, &unk_1ECB518D0);
    return sub_1D9A438F0(MEMORY[0x1E69E7CC0]);
  }

  v13 = *(v9 + 1);

  sub_1D99AAFD4(v9, type metadata accessor for Argos_Protos_MLModel_ModelDescription);
  v11 = sub_1D9A438F0(MEMORY[0x1E69E7CC0]);
  v39 = *(v13 + 16);
  if (!v39)
  {
LABEL_18:

    return v11;
  }

  v14 = 0;
  v15 = *(v1 + 80);
  v37 = v13;
  v38 = v13 + ((v15 + 32) & ~v15);
  while (v14 < *(v13 + 16))
  {
    v16 = v1;
    v17 = *(v1 + 72);
    sub_1D99AB034(v38 + v17 * v14, v6, type metadata accessor for Argos_Protos_MLModel_FeatureDescription);
    v19 = *v6;
    v18 = v6[1];
    v20 = v6;
    v21 = v6;
    v22 = v3;
    sub_1D99AB034(v21, v3, type metadata accessor for Argos_Protos_MLModel_FeatureDescription);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v40 = v11;
    v24 = sub_1D99ED894(v19, v18);
    v26 = v11[2];
    v27 = (v25 & 1) == 0;
    v28 = __OFADD__(v26, v27);
    v29 = v26 + v27;
    if (v28)
    {
      goto LABEL_20;
    }

    v30 = v25;
    if (v11[3] >= v29)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v35 = v24;
        sub_1D9C13604();
        v24 = v35;
      }
    }

    else
    {
      sub_1D9C08054(v29, isUniquelyReferenced_nonNull_native);
      v24 = sub_1D99ED894(v19, v18);
      if ((v30 & 1) != (v31 & 1))
      {
        goto LABEL_22;
      }
    }

    v3 = v22;
    v11 = v40;
    v6 = v20;
    if (v30)
    {
      sub_1D99AB09C(v3, v40[7] + v24 * v17);
    }

    else
    {
      v40[(v24 >> 6) + 8] |= 1 << v24;
      v32 = (v11[6] + 16 * v24);
      *v32 = v19;
      v32[1] = v18;
      sub_1D99AB168(v3, v11[7] + v24 * v17, type metadata accessor for Argos_Protos_MLModel_FeatureDescription);
      v33 = v11[2];
      v28 = __OFADD__(v33, 1);
      v34 = v33 + 1;
      if (v28)
      {
        goto LABEL_21;
      }

      v11[2] = v34;
    }

    ++v14;
    sub_1D99AAFD4(v20, type metadata accessor for Argos_Protos_MLModel_FeatureDescription);
    v1 = v16;
    v13 = v37;
    if (v39 == v14)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  result = sub_1D9C7E84C();
  __break(1u);
  return result;
}

uint64_t sub_1D99AAF30()
{
  v0 = sub_1D9C7E56C();

  if (v0 >= 0xC)
  {
    return 12;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1D99AAF9C(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D99AAFD4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D99AB034(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D99AB09C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Argos_Protos_MLModel_FeatureDescription(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D99AB100(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D99AB168(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1D99AB1D0()
{
  result = qword_1ECB52420;
  if (!qword_1ECB52420)
  {
    sub_1D9C7B80C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB52420);
  }

  return result;
}

uint64_t sub_1D99AB250()
{
  result = type metadata accessor for Argos_Protos_MLModel_FeatureDescription(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Argos_Protos_MLModel_ImageFeatureType(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

double sub_1D99AB2D4@<D0>(_OWORD *a1@<X0>, uint64_t *a2@<X1>, _OWORD *a3@<X8>)
{
  v84 = sub_1D9C7D8DC();
  v39 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1[7];
  v10 = a1[5];
  v81 = a1[6];
  v82 = v9;
  v11 = a1[7];
  v83[0] = a1[8];
  *(v83 + 13) = *(a1 + 141);
  v12 = a1[3];
  v13 = a1[1];
  v77 = a1[2];
  v78 = v12;
  v14 = a1[3];
  v15 = a1[5];
  v79 = a1[4];
  v80 = v15;
  v16 = a1[1];
  v76[0] = *a1;
  v76[1] = v16;
  v73 = v81;
  v74 = v11;
  v75[0] = a1[8];
  *(v75 + 13) = *(a1 + 141);
  v69 = v77;
  v70 = v14;
  v71 = v79;
  v72 = v10;
  v67 = v76[0];
  v68 = v13;
  v17 = *a2;
  v18 = sub_1D9A15C94(v76[0]);
  v20 = v19;
  sub_1D99AE054(v76, &v58);

  LOBYTE(v18) = sub_1D9B6655C(v18, v20, v17);

  if (v18)
  {
    v38 = v3;
    BYTE12(v74) = 0;
    static Logger.argos.getter(v8);
    v64 = v73;
    v65 = v74;
    v66[0] = v75[0];
    *(v66 + 13) = *(v75 + 13);
    v60 = v69;
    v61 = v70;
    v62 = v71;
    v63 = v72;
    v58 = v67;
    v59 = v68;

    sub_1D99AE054(&v58, &v49);
    v21 = sub_1D9C7D8BC();
    v22 = sub_1D9C7E09C();

    sub_1D99AE0B0(&v58);
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *&v40 = v24;
      *v23 = 136315394;
      type metadata accessor for VisualUnderstanding.ImageRegion();
      v25 = swift_projectBox();
      swift_beginAccess();
      v26 = v25[1];
      v49 = *v25;
      v50 = v26;
      v27 = NormalizedRect.loggingDescription.getter();
      v29 = sub_1D9A0E224(v27, v28, &v40);

      *(v23 + 4) = v29;
      *(v23 + 12) = 2080;
      v30 = sub_1D9A15C94(v58);
      v32 = sub_1D9A0E224(v30, v31, &v40);

      *(v23 + 14) = v32;
      _os_log_impl(&dword_1D9962000, v21, v22, "%s unselects %s because this region contains a known person and satisfies person_image_level_supression_rule.", v23, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1DA7405F0](v24, -1, -1);
      MEMORY[0x1DA7405F0](v23, -1, -1);
    }

    (*(v39 + 8))(v8, v84);
  }

  swift_beginAccess();
  v46 = v73;
  v47 = v74;
  v48[0] = v75[0];
  *(v48 + 13) = *(v75 + 13);
  v42 = v69;
  v43 = v70;
  v44 = v71;
  v45 = v72;
  v40 = v67;
  v41 = v68;
  v55 = v73;
  v56 = v74;
  v57[0] = v75[0];
  *(v57 + 13) = *(v75 + 13);
  v51 = v69;
  v52 = v70;
  v53 = v71;
  v54 = v72;
  v49 = v67;
  v50 = v68;
  sub_1D99AE054(&v40, &v58);
  sub_1D99AE0B0(&v49);
  v64 = v46;
  v65 = v47;
  v66[0] = v48[0];
  *(v66 + 13) = *(v48 + 13);
  v60 = v42;
  v61 = v43;
  v62 = v44;
  v63 = v45;
  v58 = v40;
  v59 = v41;
  faiss::NormalizationTransform::~NormalizationTransform(&v58);
  v33 = v65;
  a3[6] = v64;
  a3[7] = v33;
  a3[8] = v66[0];
  *(a3 + 141) = *(v66 + 13);
  v34 = v61;
  a3[2] = v60;
  a3[3] = v34;
  v35 = v63;
  a3[4] = v62;
  a3[5] = v35;
  result = *&v58;
  v37 = v59;
  *a3 = v58;
  a3[1] = v37;
  return result;
}

void *sub_1D99AB71C(unint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5)
{
  v180 = a4;
  v176 = a2;
  v168 = type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig.DomainSuppressionRule(0);
  MEMORY[0x1EEE9AC00](v168);
  v161 = (&v143 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v160 = sub_1D9C7D8DC();
  v9 = *(v160 - 8);
  MEMORY[0x1EEE9AC00](v160);
  v159 = &v143 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _s14DetectedResultVMa();
  v183 = *(v11 - 8);
  v184 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v181 = &v143 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v185 = &v143 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB510C0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v156 = (&v143 - v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB510C8);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v157 = &v143 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v162 = &v143 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB510D0);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v147 = &v143 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v182 = &v143 - v24;
  v25 = type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig.DomainSuppressionRule.DomainRestriction(0);
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v146 = &v143 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v186 = &v143 - v29;
  v30 = type metadata accessor for VisualUnderstanding.ImageRegion();
  v155 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v163 = (&v143 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v32);
  v34 = (&v143 - v33);
  MEMORY[0x1EEE9AC00](v35);
  v187 = &v143 - v36;
  v158 = a3;
  result = *a3;
  v38 = *(*a3 + 16);
  if (v38)
  {
    v39 = a1;
    v154 = v38;
    v153 = *a5;
    v40 = result;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_119;
    }

    for (result = v40; ; result = sub_1D9B1A6FC(v40))
    {
      v171 = 0;
      *v158 = result;
      v150 = (v183 + 48);
      v151 = (v183 + 56);
      v144 = 0x80000001D9CA3A40;
      v148 = (v9 + 8);
      v149 = (v9 + 16);
      v9 = 0;
      *(&v41 + 1) = 2;
      v152 = xmmword_1D9C85660;
      *&v41 = 136315650;
      v145 = v41;
      v172 = v39;
      v173 = v25;
      v42 = v154;
      v167 = (v26 + 48);
      while (1)
      {
        if (v9 == v42)
        {
          goto LABEL_114;
        }

        if (v9 >= result[2])
        {
          break;
        }

        v175 = (*(v155 + 80) + 32) & ~*(v155 + 80);
        v43 = *(v155 + 72);
        v174 = v43 * v9;
        v44 = result + v175 + v43 * v9;
        if ((v44[104] & 1) == 0)
        {
          v45 = *(*(v44 + 6) + 16);
          v40 = v186;
          if (v45)
          {
            v46 = 0;
            *v158 = result;
            v164 = v45;
            v165 = v43 * v39;
            v177 = v9;
            do
            {
              if (v9 == v39 && v46 == v176)
              {
                goto LABEL_13;
              }

              if (v9 >= result[2])
              {
                goto LABEL_109;
              }

              v47 = result + v175 + v174;
              v48 = *(v47 + 48);
              if (v46 >= *(v48 + 16))
              {
                goto LABEL_110;
              }

              *&v192 = result + v175;
              v188 = result;
              v178 = v46;
              v169 = 160 * v46;
              v49 = (v48 + 160 * v46);
              v50 = v49[3];
              v195[0] = v49[2];
              v195[1] = v50;
              v51 = v49[4];
              v52 = v49[5];
              v53 = v49[7];
              v195[4] = v49[6];
              v195[5] = v53;
              v195[2] = v51;
              v195[3] = v52;
              v54 = v49[8];
              v55 = v49[9];
              v56 = v49[10];
              *(v197 + 13) = *(v49 + 173);
              v196 = v55;
              v197[0] = v56;
              v195[6] = v54;
              v179 = (result + v175 + v174);
              sub_1D99AE190(v47, v187, type metadata accessor for VisualUnderstanding.ImageRegion);
              v9 = v182;
              sub_1D99AB100(v180 + *(v168 + 28), v182, &qword_1ECB510D0);
              v26 = v167;
              v57 = *v167;
              v58 = (*v167)(v9, 1, v25);
              v170 = v57;
              if (v58 == 1)
              {
                *v40 = MEMORY[0x1E69E7CC0];
                v40[1] = 0;
                sub_1D99AE054(v195, v194);
                sub_1D9C7D3BC();
                v9 = *(v25 + 32);
                v59 = type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold(0);
                (*(*(v59 - 8) + 56))(v40 + v9, 1, 1, v59);
                if (v57(v182, 1, v25) != 1)
                {
                  sub_1D99A6AE0(v182, &qword_1ECB510D0);
                }
              }

              else
              {
                sub_1D99AE128(v182, v40, type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig.DomainSuppressionRule.DomainRestriction);
                sub_1D99AE054(v195, v194);
              }

              v40 = *v40;
              v60 = v40[2];
              v166 = LOBYTE(v195[0]);
              if (v60)
              {
                v9 = &v143;
                *&v194[0] = sub_1D9A15C94(v195[0]);
                *(&v194[0] + 1) = v61;
                MEMORY[0x1EEE9AC00](*&v194[0]);
                *(&v143 - 2) = v194;
                v62 = v40;
                v40 = v171;
                v26 = sub_1D9BC1698(sub_1D99AE258, (&v143 - 4), v62);
                v171 = v40;

                if ((v26 & 1) == 0)
                {
                  v66 = 0;
                  goto LABEL_42;
                }

                v25 = v173;
              }

              v63 = v186;
              v64 = *(v186 + 3);
              if (v64 != 0.0 && *(v187 + 76) < v64 || (v65 = *(v186 + 2), v65 != 0.0) && v65 < *(v187 + 76))
              {
                v66 = 0;
                goto LABEL_43;
              }

              v9 = v186;
              *&v190 = *(v25 + 32);
              v67 = v162;
              sub_1D99AB100(&v186[*&v190], v162, &qword_1ECB510C8);
              v68 = type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold(0);
              v26 = *(v68 - 8);
              *&v191 = *(v26 + 48);
              v40 = (v191)(v67, 1, v68);
              sub_1D99A6AE0(v67, &qword_1ECB510C8);
              if (v40 == 1)
              {
                v39 = v172;
                v63 = v9;
                v66 = 1;
                goto LABEL_43;
              }

              v69 = *(v187 + 56);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB510D8);
              v70 = (*(v26 + 80) + 32) & ~*(v26 + 80);
              v71 = swift_allocObject();
              *(v71 + 16) = v152;
              v189 = *&v71;
              v26 = v71 + v70;
              v72 = v157;
              sub_1D99AB100(v9 + *&v190, v157, &qword_1ECB510C8);
              v73 = v191;
              if ((v191)(v72, 1, v68) == 1)
              {
                *v26 = 0;
                *(v26 + 8) = 0xE000000000000000;
                *(v26 + 16) = 0;
                *(v26 + 20) = 0;
                sub_1D9C7D3BC();
                if (v73(v72, 1, v68) != 1)
                {
                  sub_1D99A6AE0(v72, &qword_1ECB510C8);
                }
              }

              else
              {
                sub_1D99AE128(v72, v26, type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold);
              }

              *&v194[0] = v153;
              v74 = sub_1D9A601D8(*&v189, v194, v69);
              v40 = v74;
              v75 = *(v74 + 16);
              v39 = v172;
              if (v75)
              {
                v25 = v74 + ((*(v183 + 80) + 32) & ~*(v183 + 80));
                sub_1D99AE190(v25, v185, _s14DetectedResultVMa);
                if (v75 != 1)
                {
                  v9 = 1;
                  while (v9 < v40[2])
                  {
                    v109 = v26;
                    v110 = v181;
                    sub_1D99AE190(v25 + *(v183 + 72) * v9, v181, _s14DetectedResultVMa);
                    v111 = v185;
                    if (*(v185 + *(v184 + 32)) >= *(v110 + *(v184 + 32)))
                    {
                      sub_1D99AE1F8(v110, _s14DetectedResultVMa);
                    }

                    else
                    {
                      sub_1D99AE1F8(v185, _s14DetectedResultVMa);
                      sub_1D99AE128(v110, v111, _s14DetectedResultVMa);
                    }

                    v26 = v109;
                    if (v75 == ++v9)
                    {
                      goto LABEL_39;
                    }
                  }

LABEL_108:
                  __break(1u);
LABEL_109:
                  __break(1u);
LABEL_110:
                  __break(1u);
LABEL_111:
                  __break(1u);
LABEL_112:
                  __break(1u);
LABEL_113:
                  __break(1u);
LABEL_114:
                  __break(1u);
                  goto LABEL_115;
                }

LABEL_39:

                v40 = v156;
                sub_1D99AE128(v185, v156, _s14DetectedResultVMa);
                v76 = 0;
              }

              else
              {

                v76 = 1;
                v40 = v156;
              }

              v9 = v184;
              (*v151)(v40, v76, 1, v184);
              swift_setDeallocating();
              sub_1D99AE1F8(v26, type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold);
              swift_deallocClassInstance();
              v66 = (*v150)(v40, 1, v9) != 1;
              sub_1D99A6AE0(v40, &qword_1ECB510C0);
LABEL_42:
              v63 = v186;
LABEL_43:
              v25 = BYTE12(v196);
              sub_1D99AE1F8(v63, type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig.DomainSuppressionRule.DomainRestriction);
              sub_1D99AE1F8(v187, type metadata accessor for VisualUnderstanding.ImageRegion);
              if ((v39 & 0x8000000000000000) != 0)
              {
                goto LABEL_111;
              }

              v9 = v188[2];
              if (v9 <= v39)
              {
                goto LABEL_112;
              }

              sub_1D99AE190(v192 + v165, v34, type metadata accessor for VisualUnderstanding.ImageRegion);
              if (v177 >= v9)
              {
                goto LABEL_113;
              }

              v9 = v177;
              v77 = v163;
              sub_1D99AE190(v179, v163, type metadata accessor for VisualUnderstanding.ImageRegion);
              v40 = *v180;
              v26 = *(*v180 + 16);
              if (v26)
              {
                v78 = 0;
                while (v78 < v40[2])
                {
                  v79 = *(type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig.DomainSuppressionRule.SuppressCondition(0) - 8);
                  v80 = v40 + ((*(v79 + 80) + 32) & ~*(v79 + 80));
                  if (*&v80[*(v79 + 72) * v78] == 0.0)
                  {
                    goto LABEL_59;
                  }

                  LODWORD(v192) = *&v80[*(v79 + 72) * v78];
                  v81 = *v34;
                  v82 = v34[1];
                  v83 = v34[2];
                  v84 = v34[3];
                  v85 = v77[1];
                  *&v191 = *v77;
                  v86 = v77[2];
                  v87 = v77[3];
                  v198.origin.x = v81;
                  v198.origin.y = v82;
                  v198.size.width = v83;
                  v198.size.height = v84;
                  Width = CGRectGetWidth(v198);
                  v189 = v81;
                  v199.origin.x = v81;
                  v89 = v82;
                  v90 = *&v191;
                  v199.origin.y = v89;
                  v199.size.width = v83;
                  v199.size.height = v84;
                  v91 = Width * CGRectGetHeight(v199);
                  v200.origin.x = v90;
                  v200.origin.y = v85;
                  v200.size.width = v86;
                  v200.size.height = v87;
                  v190 = CGRectGetWidth(v200);
                  v201.origin.x = v90;
                  v201.origin.y = v85;
                  v201.size.width = v86;
                  v201.size.height = v87;
                  Height = CGRectGetHeight(v201);
                  if (v91 <= 0.0 || (v93 = v190 * Height, v93 <= 0.0) || (v190 = v93, v202.origin.x = v189, v202.origin.y = v89, v202.size.width = v83, v202.size.height = v84, v206.origin.x = v90, v206.origin.y = v85, v206.size.width = v86, v206.size.height = v87, v203 = CGRectIntersection(v202, v206), x = v203.origin.x, y = v203.origin.y, v96 = v203.size.width, v97 = v203.size.height, CGRectIsNull(v203)))
                  {
                    if (*&v192 <= 0.0)
                    {
                      goto LABEL_59;
                    }
                  }

                  else
                  {
                    v204.origin.x = x;
                    v204.origin.y = y;
                    v204.size.width = v96;
                    v204.size.height = v97;
                    v98 = CGRectGetWidth(v204);
                    v205.origin.x = x;
                    v205.origin.y = y;
                    v205.size.width = v96;
                    v205.size.height = v97;
                    v99 = v98 * CGRectGetHeight(v205);
                    v100 = v190;
                    if (v190 >= v91)
                    {
                      v100 = v91;
                    }

                    v101 = v99 / v100;
                    if (*&v192 <= v101)
                    {
LABEL_59:
                      sub_1D99AE1F8(v77, type metadata accessor for VisualUnderstanding.ImageRegion);
                      sub_1D99AE1F8(v34, type metadata accessor for VisualUnderstanding.ImageRegion);
                      if (v25)
                      {
                        v39 = v172;
                        goto LABEL_62;
                      }

                      sub_1D99AE0B0(v195);
                      goto LABEL_72;
                    }
                  }

                  if (v26 == ++v78)
                  {
                    sub_1D99AE0B0(v195);
                    sub_1D99AE1F8(v77, type metadata accessor for VisualUnderstanding.ImageRegion);
                    v9 = v177;
                    sub_1D99AE1F8(v34, type metadata accessor for VisualUnderstanding.ImageRegion);
LABEL_72:
                    v39 = v172;
                    goto LABEL_74;
                  }
                }

                __break(1u);
                goto LABEL_108;
              }

              sub_1D99AE1F8(v77, type metadata accessor for VisualUnderstanding.ImageRegion);
              sub_1D99AE1F8(v34, type metadata accessor for VisualUnderstanding.ImageRegion);
              if ((v25 & 1) == 0)
              {
                sub_1D99AE0B0(v195);
LABEL_74:
                v25 = v173;
                v40 = v186;
                goto LABEL_12;
              }

LABEL_62:
              v40 = v186;
              if (!v66)
              {
                sub_1D99AE0B0(v195);
                v25 = v173;
LABEL_12:
                result = v188;
                v45 = v164;
                v46 = v178;
                goto LABEL_13;
              }

              if (v9 >= v188[2])
              {
                goto LABEL_116;
              }

              v102 = *v179;
              v191 = v179[1];
              v192 = v102;
              if (qword_1EDD354B8 != -1)
              {
                swift_once();
              }

              v103 = v170;
              if (byte_1EDD354C0 != 1)
              {
LABEL_89:
                v116 = qword_1EDD354D8;
                if (qword_1EDD354D0 != -1)
                {
                  swift_once();
                  v116 = qword_1EDD354D8;
                }

                goto LABEL_91;
              }

              v104 = [objc_opt_self() mainBundle];
              v105 = [v104 bundleIdentifier];

              if (v105)
              {
                v106 = sub_1D9C7DC7C();
                v108 = v107;

                if (v106 == 0xD00000000000002BLL && v144 == v108)
                {

LABEL_82:
                  v113 = &off_1ECB51BA8;
                  if (qword_1ECB50988 != -1)
                  {
                    swift_once();
                    v113 = &off_1ECB51BA8;
                  }

                  goto LABEL_86;
                }

                v112 = sub_1D9C7E7DC();

                if (v112)
                {
                  goto LABEL_82;
                }
              }

              v113 = &qword_1EDD355A8;
              if (qword_1EDD355A0 != -1)
              {
                swift_once();
                v113 = &qword_1EDD355A8;
              }

LABEL_86:
              v114 = *(*v113 + 32);

              v115 = sub_1D9C7DC4C();
              LODWORD(v114) = [v114 BOOLForKey_];

              if (!v114)
              {
                goto LABEL_89;
              }

              v116 = qword_1EDD2C990;
              if (qword_1EDD2C988 != -1)
              {
                swift_once();
                v116 = qword_1EDD2C990;
              }

LABEL_91:
              v117 = v160;
              v118 = __swift_project_value_buffer(v160, v116);
              v119 = v159;
              (*v149)(v159, v118, v117);
              v40 = v161;
              sub_1D99AE190(v180, v161, type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig.DomainSuppressionRule);
              v26 = sub_1D9C7D8BC();
              v120 = sub_1D9C7E09C();
              sub_1D99AE0B0(v195);
              if (os_log_type_enabled(v26, v120))
              {
                v121 = swift_slowAlloc();
                v190 = COERCE_DOUBLE(swift_slowAlloc());
                *v193 = v190;
                *v121 = v145;
                v194[0] = v192;
                v194[1] = v191;
                v122 = NormalizedRect.loggingDescription.getter();
                v124 = sub_1D9A0E224(v122, v123, v193);

                *(v121 + 4) = v124;
                v39 = 2080;
                *(v121 + 12) = 2080;
                v125 = sub_1D9A15C94(v166);
                v127 = sub_1D9A0E224(v125, v126, v193);

                *(v121 + 14) = v127;
                *(v121 + 22) = 2080;
                v128 = v40 + *(v168 + 28);
                v129 = v147;
                sub_1D99AB100(v128, v147, &qword_1ECB510D0);
                v130 = v173;
                if (v103(v129, 1, v173) == 1)
                {
                  v39 = v103;
                  v131 = v146;
                  *v146 = MEMORY[0x1E69E7CC0];
                  *(v131 + 1) = 0;
                  sub_1D9C7D3BC();
                  *&v192 = *(v130 + 32);
                  v132 = type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold(0);
                  (*(*(v132 - 8) + 56))(&v131[v192], 1, 1, v132);
                  v133 = v130;
                  v134 = v131;
                  if ((v39)(v129, 1, v133) != 1)
                  {
                    sub_1D99A6AE0(v129, &qword_1ECB510D0);
                  }
                }

                else
                {
                  v134 = v146;
                  sub_1D99AE128(v129, v146, type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig.DomainSuppressionRule.DomainRestriction);
                }

                v135 = *v134;

                sub_1D99AE1F8(v134, type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig.DomainSuppressionRule.DomainRestriction);
                v136 = MEMORY[0x1DA73E110](v135, MEMORY[0x1E69E6158]);
                v40 = v137;

                sub_1D99AE1F8(v161, type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig.DomainSuppressionRule);
                v138 = sub_1D9A0E224(v136, v40, v193);

                *(v121 + 24) = v138;
                _os_log_impl(&dword_1D9962000, v26, v120, "%s drops %s due to suppression rules of %s", v121, 0x20u);
                v139 = v190;
                swift_arrayDestroy();
                MEMORY[0x1DA7405F0](*&v139, -1, -1);
                MEMORY[0x1DA7405F0](v121, -1, -1);

                (*v148)(v159, v160);
              }

              else
              {

                sub_1D99AE1F8(v40, type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig.DomainSuppressionRule);
                (*v148)(v119, v117);
              }

              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v9 = v177;
              if (isUniquelyReferenced_nonNull_native)
              {
                v25 = v173;
                v141 = v188;
              }

              else
              {
                v141 = sub_1D9B1A6FC(v188);
                v25 = v173;
              }

              if (v9 >= v141[2])
              {
                goto LABEL_117;
              }

              v26 = v141;
              v40 = (v141 + v175 + v174);
              v9 = v40[6];
              v142 = swift_isUniquelyReferenced_nonNull_native();
              v40[6] = v9;
              if ((v142 & 1) == 0)
              {
                v9 = sub_1D9B1A6E8(v9);
                v40[6] = v9;
              }

              v46 = v178;
              v39 = v172;
              v45 = v164;
              if (v178 >= *(v9 + 16))
              {
                goto LABEL_118;
              }

              result = v26;
              *(v9 + v169 + 156) = 0;
              v40[6] = v9;
              *v158 = v26;
              v40 = v186;
              v9 = v177;
LABEL_13:
              ++v46;
            }

            while (v46 != v45);
          }
        }

        ++v9;
        v42 = v154;
        if (v9 == v154)
        {
          return result;
        }
      }

LABEL_115:
      __break(1u);
LABEL_116:
      __break(1u);
LABEL_117:
      __break(1u);
LABEL_118:
      __break(1u);
LABEL_119:
      ;
    }
  }

  return result;
}

void sub_1D99ACD40(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v93 = a2;
  v5 = _s14DetectedResultVMa();
  v94 = *(v5 - 8);
  v95 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v80 = &v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v96 = &v73 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB510C0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v79 = &v73 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB510C8);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v73 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB510D0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v73 - v18;
  v97 = type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig.DomainSuppressionRule.DomainRestriction(0);
  v20 = *(v97 - 8);
  MEMORY[0x1EEE9AC00](v97);
  v22 = &v73 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for VisualUnderstanding.ImageRegion();
  v74 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v98 = &v73 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = *(*a1 + 16);
  if (!v73)
  {
    return;
  }

  v92 = 0;
  v83 = *a3;
  v87 = (v20 + 48);
  v25 = 0;
  v75 = (v94 + 48);
  v76 = (v94 + 56);
  v77 = xmmword_1D9C85660;
  v91 = a1;
  v78 = v13;
  v85 = v16;
  v86 = v19;
  while (1)
  {
    if (v25 >= *(*a1 + 16))
    {
      goto LABEL_47;
    }

    v26 = (*(v74 + 80) + 32) & ~*(v74 + 80);
    v27 = *(v74 + 72) * v25;
    v28 = *a1 + v26 + v27;
    if ((*(v28 + 104) & 1) == 0)
    {
      v29 = *(*(v28 + 48) + 16);
      v30 = v97;
      if (v29)
      {
        break;
      }
    }

LABEL_3:
    if (++v25 == v73)
    {
      return;
    }
  }

  v31 = 0;
  v89 = *(v74 + 72) * v25;
  v90 = v25;
  v82 = v26;
  v88 = v29;
  while (v25 < *(*a1 + 16))
  {
    v32 = *a1 + v26 + v27;
    v33 = *(v32 + 48);
    if (v31 >= *(v33 + 16))
    {
      goto LABEL_46;
    }

    v34 = v33 + 160 * v31;
    if (*(v34 + 156) == 1)
    {
      v35 = *(v34 + 48);
      v100[0] = *(v34 + 32);
      v100[1] = v35;
      v36 = *(v34 + 64);
      v37 = *(v34 + 80);
      v38 = *(v34 + 112);
      v100[4] = *(v34 + 96);
      v100[5] = v38;
      v100[2] = v36;
      v100[3] = v37;
      v39 = *(v34 + 128);
      v40 = *(v34 + 144);
      v41 = *(v34 + 160);
      *(v101 + 13) = *(v34 + 173);
      v100[7] = v40;
      v101[0] = v41;
      v100[6] = v39;
      sub_1D99AE190(v32, v98, type metadata accessor for VisualUnderstanding.ImageRegion);
      v42 = type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig.DomainSuppressionRule(0);
      sub_1D99AB100(v93 + *(v42 + 24), v19, &qword_1ECB510D0);
      v43 = *v87;
      if ((*v87)(v19, 1, v30) == 1)
      {
        *v22 = MEMORY[0x1E69E7CC0];
        *(v22 + 1) = 0;
        sub_1D99AE054(v100, v99);
        sub_1D9C7D3BC();
        v44 = *(v97 + 32);
        v45 = type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold(0);
        v46 = &v22[v44];
        v30 = v97;
        (*(*(v45 - 8) + 56))(v46, 1, 1, v45);
        if (v43(v19, 1, v30) != 1)
        {
          sub_1D99A6AE0(v19, &qword_1ECB510D0);
        }
      }

      else
      {
        sub_1D99AE128(v19, v22, type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig.DomainSuppressionRule.DomainRestriction);
        sub_1D99AE054(v100, v99);
      }

      v47 = *v22;
      if (!*(*v22 + 16) || (v99[0] = sub_1D9A15C94(v100[0]), v99[1] = v48, MEMORY[0x1EEE9AC00](v99[0]), *(&v73 - 2) = v99, v49 = v92, v50 = sub_1D9BC1698(sub_1D99A40D8, (&v73 - 4), v47), v92 = v49, v30 = v97, a1 = v91, , v16 = v85, (v50)) && ((v51 = *(v22 + 3), v51 == 0.0) || *(v98 + 76) >= v51) && ((v52 = *(v22 + 2), v52 == 0.0) || v52 >= *(v98 + 76)))
      {
        v53 = *(v30 + 32);
        sub_1D99AB100(&v22[v53], v16, &qword_1ECB510C8);
        v54 = type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold(0);
        v55 = *(v54 - 8);
        v56 = *(v55 + 48);
        if (v56(v16, 1, v54) == 1)
        {
          sub_1D99AE0B0(v100);
          sub_1D99A6AE0(v16, &qword_1ECB510C8);
          a1 = v91;
          v19 = v86;
          v30 = v97;
          v26 = v82;
          goto LABEL_36;
        }

        sub_1D99A6AE0(v16, &qword_1ECB510C8);
        v81 = *(v98 + 56);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB510D8);
        v57 = (*(v55 + 80) + 32) & ~*(v55 + 80);
        v58 = swift_allocObject();
        *(v58 + 16) = v77;
        v84 = v58;
        v59 = v58 + v57;
        v60 = &v22[v53];
        v61 = v78;
        sub_1D99AB100(v60, v78, &qword_1ECB510C8);
        if (v56(v61, 1, v54) == 1)
        {
          *v59 = 0;
          *(v59 + 8) = 0xE000000000000000;
          *(v59 + 16) = 0;
          *(v59 + 20) = 0;
          sub_1D9C7D3BC();
          v62 = v56(v61, 1, v54);
          v63 = v80;
          if (v62 != 1)
          {
            sub_1D99A6AE0(v61, &qword_1ECB510C8);
          }
        }

        else
        {
          sub_1D99AE128(v61, v59, type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold);
          v63 = v80;
        }

        v99[0] = v83;
        v64 = sub_1D9A601D8(v84, v99, v81);
        v65 = v64;
        v66 = *(v64 + 16);
        if (v66)
        {
          v67 = v64 + ((*(v94 + 80) + 32) & ~*(v94 + 80));
          sub_1D99AE190(v67, v96, _s14DetectedResultVMa);
          v26 = v82;
          if (v66 != 1)
          {
            v71 = 1;
            while (v71 < *(v65 + 16))
            {
              sub_1D99AE190(v67 + *(v94 + 72) * v71, v63, _s14DetectedResultVMa);
              v72 = v96;
              if (*(v96 + *(v95 + 32)) >= *(v63 + *(v95 + 32)))
              {
                sub_1D99AE1F8(v63, _s14DetectedResultVMa);
              }

              else
              {
                sub_1D99AE1F8(v96, _s14DetectedResultVMa);
                sub_1D99AE128(v63, v72, _s14DetectedResultVMa);
              }

              if (v66 == ++v71)
              {
                goto LABEL_33;
              }
            }

            __break(1u);
            break;
          }

LABEL_33:

          v68 = v79;
          sub_1D99AE128(v96, v79, _s14DetectedResultVMa);
          v69 = v95;
          (*v76)(v68, 0, 1, v95);
          sub_1D99AE0B0(v100);
        }

        else
        {

          v68 = v79;
          v69 = v95;
          (*v76)(v79, 1, 1, v95);
          sub_1D99AE0B0(v100);

          v26 = v82;
        }

        v70 = (*v75)(v68, 1, v69);
        sub_1D99A6AE0(v68, &qword_1ECB510C0);
        a1 = v91;
        v16 = v85;
        v19 = v86;
        v30 = v97;
        if (v70 != 1)
        {
LABEL_36:
          sub_1D99AE1F8(v22, type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig.DomainSuppressionRule.DomainRestriction);
          sub_1D99AE1F8(v98, type metadata accessor for VisualUnderstanding.ImageRegion);
          v99[0] = v83;
          v25 = v90;
          sub_1D99AB71C(v90, v31, a1, v93, v99);
          goto LABEL_10;
        }
      }

      else
      {
        sub_1D99AE0B0(v100);
        v19 = v86;
      }

      sub_1D99AE1F8(v22, type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig.DomainSuppressionRule.DomainRestriction);
      sub_1D99AE1F8(v98, type metadata accessor for VisualUnderstanding.ImageRegion);
      v25 = v90;
LABEL_10:
      v29 = v88;
      v27 = v89;
    }

    if (++v31 == v29)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
}

char *sub_1D99AD81C(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v5 = MEMORY[0x1E69E7CC0];
  for (i = (a1 + 32); ; i += 10)
  {
    v7 = i[7];
    v8 = i[5];
    v71 = i[6];
    v72 = v7;
    v9 = i[7];
    v73[0] = i[8];
    *(v73 + 13) = *(i + 141);
    v10 = i[3];
    v11 = i[1];
    v67 = i[2];
    v68 = v10;
    v12 = i[3];
    v13 = i[5];
    v69 = i[4];
    v70 = v13;
    v14 = i[1];
    v66[0] = *i;
    v66[1] = v14;
    v63 = v71;
    v64 = v9;
    v65[0] = i[8];
    *(v65 + 13) = *(i + 141);
    v59 = v67;
    v60 = v12;
    v61 = v69;
    v62 = v8;
    v57 = v66[0];
    v58 = v11;
    sub_1D99AE054(v66, &v39);
    sub_1D99AB2D4(&v57, a2, &v48);
    if (v2)
    {
      break;
    }

    v37[6] = v63;
    v37[7] = v64;
    v38[0] = v65[0];
    *(v38 + 13) = *(v65 + 13);
    v37[2] = v59;
    v37[3] = v60;
    v37[4] = v61;
    v37[5] = v62;
    v37[0] = v57;
    v37[1] = v58;
    sub_1D99AE0B0(v37);
    v45 = v54;
    v46 = v55;
    v47[0] = v56[0];
    *(v47 + 13) = *(v56 + 13);
    v41 = v50;
    v42 = v51;
    v43 = v52;
    v44 = v53;
    v39 = v48;
    v40 = v49;
    if (sub_1D99AE104(&v39) == 1)
    {
      v34 = v54;
      v35 = v55;
      v36[0] = v56[0];
      *(v36 + 13) = *(v56 + 13);
      v30 = v50;
      v31 = v51;
      v32 = v52;
      v33 = v53;
      v28 = v48;
      v29 = v49;
      sub_1D99A6AE0(&v28, &qword_1ECB510B8);
    }

    else
    {
      v34 = v54;
      v35 = v55;
      v36[0] = v56[0];
      *(v36 + 13) = *(v56 + 13);
      v30 = v50;
      v31 = v51;
      v32 = v52;
      v33 = v53;
      v28 = v48;
      v29 = v49;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_1D9AF8974(0, *(v5 + 2) + 1, 1, v5);
      }

      v16 = *(v5 + 2);
      v15 = *(v5 + 3);
      if (v16 >= v15 >> 1)
      {
        v5 = sub_1D9AF8974((v15 > 1), v16 + 1, 1, v5);
      }

      v23 = v32;
      v24 = v33;
      v21 = v30;
      v22 = v31;
      *&v27[13] = *(v36 + 13);
      v26 = v35;
      *v27 = v36[0];
      v25 = v34;
      v19 = v28;
      v20 = v29;
      *(v5 + 2) = v16 + 1;
      v17 = &v5[160 * v16];
      *(v17 + 2) = v19;
      *(v17 + 3) = v20;
      *(v17 + 6) = v23;
      *(v17 + 7) = v24;
      *(v17 + 4) = v21;
      *(v17 + 5) = v22;
      *(v17 + 173) = *&v27[13];
      *(v17 + 9) = v26;
      *(v17 + 10) = *v27;
      *(v17 + 8) = v25;
    }

    if (!--v3)
    {
      return v5;
    }
  }

  v45 = v63;
  v46 = v64;
  v47[0] = v65[0];
  *(v47 + 13) = *(v65 + 13);
  v41 = v59;
  v42 = v60;
  v43 = v61;
  v44 = v62;
  v39 = v57;
  v40 = v58;
  sub_1D99AE0B0(&v39);

  return v5;
}

void *sub_1D99ADB54(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v44 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51220);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v51 = &v42 - v6;
  v52 = type metadata accessor for VisualUnderstanding.ImageRegion();
  v43 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v50 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v45 = &v42 - v9;
  v10 = type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig.PersonImageLevelSupressionRule(0) - 8;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a2;
  v46 = a2[7];
  v54 = MEMORY[0x1E69E7CD0];
  if (*(a3 + 16))
  {
    v15 = *(a3 + 16);
    v16 = 0;
    v49 = a3 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v18 = v14 == 1 || v46 == 0;
    LODWORD(v48) = v18;
    v47 = *(v11 + 72);
    do
    {
      sub_1D99AE190(v49 + v47 * v16, v13, type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig.PersonImageLevelSupressionRule);
      v19 = MEMORY[0x1E69E7CC0];
      if ((v48 & 1) == 0)
      {
        v19 = v46;
      }

      v20 = *(v19 + 16);
      if (v20)
      {
        v21 = *(v13 + 4);
        v22 = (v19 + 52);
        do
        {
          v23 = *v22;
          v22 += 14;
          if (v23 >= v21)
          {
            v24 = *v13;
            v25 = *(v13 + 1);

            sub_1D9B91DE4(&v53, v24, v25);
          }

          --v20;
        }

        while (v20);
      }

      ++v16;

      sub_1D99AE1F8(v13, type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig.PersonImageLevelSupressionRule);
    }

    while (v16 != v15);
  }

  v26 = *(v44 + 16);
  if (v26)
  {
    v27 = *(v43 + 72);
    v46 = (*(v43 + 80) + 32) & ~*(v43 + 80);
    v28 = v44 + v46;
    v47 = (v43 + 48);
    v48 = (v43 + 56);
    v29 = MEMORY[0x1E69E7CC0];
    v49 = v27;
    do
    {
      v31 = v52;
      swift_allocBox();
      v33 = v32;
      sub_1D99AE190(v28, v32, type metadata accessor for VisualUnderstanding.ImageRegion);

      v35 = sub_1D99AD81C(v34, &v54);

      swift_beginAccess();
      *(v33 + 48) = v35;

      v36 = v51;
      sub_1D99AE190(v33, v51, type metadata accessor for VisualUnderstanding.ImageRegion);
      (*v48)(v36, 0, 1, v31);

      if ((*v47)(v36, 1, v31) == 1)
      {
        sub_1D99A6AE0(v36, &qword_1ECB51220);
        v30 = v49;
      }

      else
      {
        v37 = v45;
        sub_1D99AE128(v36, v45, type metadata accessor for VisualUnderstanding.ImageRegion);
        sub_1D99AE128(v37, v50, type metadata accessor for VisualUnderstanding.ImageRegion);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v29 = sub_1D9AF8A90(0, v29[2] + 1, 1, v29);
        }

        v39 = v29[2];
        v38 = v29[3];
        if (v39 >= v38 >> 1)
        {
          v29 = sub_1D9AF8A90(v38 > 1, v39 + 1, 1, v29);
        }

        v29[2] = v39 + 1;
        v40 = v29 + v46 + v39 * v49;
        v30 = v49;
        sub_1D99AE128(v50, v40, type metadata accessor for VisualUnderstanding.ImageRegion);
      }

      v28 += v30;
      --v26;
    }

    while (v26);
  }

  else
  {
    v29 = MEMORY[0x1E69E7CC0];
  }

  return v29;
}

uint64_t sub_1D99AE104(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D99AE128(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D99AE190(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D99AE1F8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D99AE274@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = sub_1D9C7D8DC();
  v35 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v32 - v10;
  v12 = sub_1D9C7D44C();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v36 = type metadata accessor for Argos_Protos_Queryflow_RichLabelThresholdConfig(0);
  MEMORY[0x1EEE9AC00](v36);
  v14 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [objc_opt_self() defaultManager];
  v34 = a1;
  v16 = sub_1D9C7DC4C();
  v17 = [v15 contentsAtPath_];

  if (v17)
  {
    v32[0] = v8;
    v32[1] = v6;
    v33 = a3;
    v18 = sub_1D9C7B87C();
    v20 = v19;

    v25 = sub_1D9B88EB8(v18, v20);
    v27 = v26;
    sub_1D99A5748(v18, v20);

    v28 = Data.inflate(algorithm:)(0, v25, v27);
    v30 = v29;
    sub_1D99A5748(v25, v27);
    v39 = v28;
    v40 = v30;
    v38 = 0;
    memset(v37, 0, sizeof(v37));
    sub_1D99AF2FC(v28, v30);
    sub_1D9C7D43C();
    sub_1D99AF350();
    sub_1D9C7D67C();
    sub_1D99A5748(v28, v30);
    return sub_1D99AF3A8(v14, v33);
  }

  else
  {

    static Logger.argos.getter(v11);

    v21 = sub_1D9C7D8BC();
    v22 = sub_1D9C7E0AC();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *&v37[0] = v24;
      *v23 = 136315138;
      *(v23 + 4) = sub_1D9A0E224(v34, a2, v37);
      _os_log_impl(&dword_1D9962000, v21, v22, "Failed to load rich label threshold at path %s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v24);
      MEMORY[0x1DA7405F0](v24, -1, -1);
      MEMORY[0x1DA7405F0](v23, -1, -1);
    }

    (*(v35 + 8))(v11, v6);
    *a3 = MEMORY[0x1E69E7CC0];
    return sub_1D9C7D3BC();
  }
}

void *sub_1D99AE800()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_1D9C7D8DC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = [objc_opt_self() bundleForClass_];
  v9 = sub_1D9C7DC4C();
  v10 = sub_1D9C7DC4C();
  v11 = sub_1D9C7DC4C();
  v12 = [v8 pathForResource:v9 ofType:v10 inDirectory:v11];

  if (v12)
  {
    v13 = sub_1D9C7DC7C();
    v15 = v14;

    v16 = swift_allocObject();
    v16[2] = v13;
    v16[3] = v15;
    v16[4] = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB510E0);
    swift_allocObject();
    v17 = sub_1D99AF19C;
    v18 = v16;
  }

  else
  {
    static Logger.argos.getter(v6);
    v19 = sub_1D9C7D8BC();
    v20 = sub_1D9C7E0AC();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_1D9962000, v19, v20, "Resource RichLabelThresholdConfig.lzfse not found in bundle RichLabelKV.", v21, 2u);
      MEMORY[0x1DA7405F0](v21, -1, -1);
    }

    (*(v4 + 8))(v6, v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB510E0);
    swift_allocObject();
    v17 = sub_1D99AEB00;
    v18 = 0;
  }

  v1[2] = sub_1D9C1B65C(4, v17, v18);
  return v1;
}

unint64_t sub_1D99AEB00@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1D9A43AD8(MEMORY[0x1E69E7CC0]);
  *a1 = result;
  return result;
}

unint64_t sub_1D99AEB38(uint64_t a1, unint64_t a2, float a3)
{
  v6 = sub_1D9C7D8DC();
  v37 = *(v6 - 8);
  v38 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v35 - v10;

  v36 = a1;
  v12 = sub_1D9B14820(1uLL, a1, a2);
  v14 = v13;
  v16 = v15;
  v18 = v17;

  if (!((v12 ^ v14) >> 14))
  {

LABEL_11:
    static Logger.argos.getter(v11);
    sub_1D9A3E0E0(v8);
    v27 = *(v37 + 8);
    v28 = v11;
    v29 = v38;
    v27(v28, v38);

    v30 = sub_1D9C7D8BC();
    v31 = sub_1D9C7E09C();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v39 = v33;
      *v32 = 136315138;
      *(v32 + 4) = sub_1D9A0E224(v36, a2, &v39);
      _os_log_impl(&dword_1D9962000, v30, v31, "Rich label failed to convert KGID %s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v33);
      MEMORY[0x1DA7405F0](v33, -1, -1);
      MEMORY[0x1DA7405F0](v32, -1, -1);
    }

    v27(v8, v29);
    goto LABEL_14;
  }

  v19 = sub_1D9B140F8(v12, v14, v16, v18, 10);
  if ((v19 & 0x10000000000) != 0)
  {
    v19 = sub_1D99C6548(v12, v14, v16, v18, 10);
  }

  v20 = v19;

  if ((v20 & 0x100000000) != 0)
  {
    goto LABEL_11;
  }

  v21 = sub_1D9C19C14();

  if (!*(v21 + 16) || (v22 = sub_1D99EE164(v20), (v23 & 1) == 0))
  {

    if (a3 > 0.0)
    {
      v25 = 0;
      v26 = a3;
      return LODWORD(v26) | (v25 << 32);
    }

LABEL_14:
    v26 = 0.0;
    v25 = 1;
    return LODWORD(v26) | (v25 << 32);
  }

  v24 = *(*(v21 + 56) + 4 * v22);

  v25 = 0;
  v26 = v24 / 100.0;
  return LODWORD(v26) | (v25 << 32);
}

uint64_t sub_1D99AEE88()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D99AEEE4(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for Argos_Protos_Queryflow_RichLabelThreshold(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = (&v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for Argos_Protos_Queryflow_RichLabelThresholdConfig(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = (&v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_1D9A43AD8(MEMORY[0x1E69E7CC0]);
  sub_1D99AE274(a1, a2, v10);
  v32 = v10;
  v12 = *v10;
  v13 = *(*v10 + 16);
  if (!v13)
  {
LABEL_16:
    sub_1D99AF234(v32, type metadata accessor for Argos_Protos_Queryflow_RichLabelThresholdConfig);
    return v11;
  }

  v14 = 0;
  v33 = v12 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
  while (v14 < *(v12 + 16))
  {
    v15 = v5;
    sub_1D99AF1D0(v33 + *(v5 + 72) * v14, v7);
    v17 = *v7;
    v16 = v7[1];
    sub_1D99AF234(v7, type metadata accessor for Argos_Protos_Queryflow_RichLabelThreshold);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34 = v11;
    v19 = sub_1D99EE164(v17);
    v21 = v11[2];
    v22 = (v20 & 1) == 0;
    v23 = __OFADD__(v21, v22);
    v24 = v21 + v22;
    if (v23)
    {
      goto LABEL_18;
    }

    v25 = v20;
    if (v11[3] < v24)
    {
      sub_1D9C08330(v24, isUniquelyReferenced_nonNull_native);
      v19 = sub_1D99EE164(v17);
      if ((v25 & 1) != (v26 & 1))
      {
        goto LABEL_20;
      }

LABEL_11:
      v11 = v34;
      if (v25)
      {
        goto LABEL_3;
      }

      goto LABEL_12;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_11;
    }

    v29 = v19;
    sub_1D9C1378C();
    v19 = v29;
    v11 = v34;
    if (v25)
    {
LABEL_3:
      *(v11[7] + 4 * v19) = v16;
      goto LABEL_4;
    }

LABEL_12:
    v11[(v19 >> 6) + 8] |= 1 << v19;
    *(v11[6] + 4 * v19) = v17;
    *(v11[7] + 4 * v19) = v16;
    v27 = v11[2];
    v23 = __OFADD__(v27, 1);
    v28 = v27 + 1;
    if (v23)
    {
      goto LABEL_19;
    }

    v11[2] = v28;
LABEL_4:
    ++v14;
    v5 = v15;
    if (v13 == v14)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  result = sub_1D9C7E84C();
  __break(1u);
  return result;
}

uint64_t sub_1D99AF19C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D99AEEE4(*(v1 + 16), *(v1 + 24));
  *a1 = result;
  return result;
}

uint64_t sub_1D99AF1D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Argos_Protos_Queryflow_RichLabelThreshold(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D99AF234(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D99AF294(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB510E8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D99AF2FC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_1D99AF350()
{
  result = qword_1EDD2ABF0[0];
  if (!qword_1EDD2ABF0[0])
  {
    type metadata accessor for Argos_Protos_Queryflow_RichLabelThresholdConfig(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDD2ABF0);
  }

  return result;
}

uint64_t sub_1D99AF3A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Argos_Protos_Queryflow_RichLabelThresholdConfig(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

size_t sub_1D99AF40C(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v227 = *&a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51220);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v191 = &v189 - v8;
  v9 = sub_1D9C7D8DC();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v201 = &v189 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v189 - v13;
  v190 = type metadata accessor for VisualUnderstanding.ImageRegion();
  v15 = *(v190 - 8);
  MEMORY[0x1EEE9AC00](v190);
  v195 = &v189 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v200 = &v189 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v198 = (&v189 - v20);
  MEMORY[0x1EEE9AC00](v21);
  v214 = (&v189 - v22);
  MEMORY[0x1EEE9AC00](v23);
  v199 = (&v189 - v24);
  MEMORY[0x1EEE9AC00](v25);
  v197 = &v189 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v194 = &v189 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v207 = &v189 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v210 = &v189 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v213 = &v189 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v37 = (&v189 - v36);
  v218 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB510F0);
  v38 = *(v218 - 8);
  MEMORY[0x1EEE9AC00](v218);
  v208 = (&v189 - v39);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB510F8);
  MEMORY[0x1EEE9AC00](v40 - 8);
  v211 = &v189 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42);
  v220 = &v189 - v43;
  v233[0] = 0x6C46206573726150;
  v233[1] = 0xEA0000000000776FLL;
  v233[2] = "VI: Region Merging";
  v233[3] = 18;
  v234 = 2;
  type metadata accessor for DurationMeasurement();
  swift_allocObject();

  v193 = sub_1D9AFD4B8(v233, a4);

  type metadata accessor for RegionMergingProcessor();
  v44 = *a2;
  v232 = a2[1];
  v231 = v44;
  *&v231 = sub_1D9A508A4(*&v227, &v231, *(*&v226 + 16), a3);
  v196 = v231;

  sub_1D99B0B3C(&v231);
  v45 = 0;
  v46 = MEMORY[0x1E69E7CD0];
  v230 = MEMORY[0x1E69E7CD0];
  v225 = *&v231;
  v47 = *(v231 + 16);
  v217 = (v38 + 56);
  v216 = (v38 + 48);
  v192 = v10;
  v212 = (v10 + 8);
  v209 = MEMORY[0x1E69E7CC0];
  *&v48 = 136315394;
  v205 = v48;
  v204 = v15;
  v206 = v9;
  v49 = v14;
  v50 = v211;
  v215 = v47;
  v203 = a3;
  v202 = v14;
  while (1)
  {
    v51 = (v46 + 56);
    v52 = v220;
    while (1)
    {
      if (v45 == v47)
      {
        v53 = 1;
        v221 = v47;
        v54 = v218;
      }

      else
      {
        v54 = v218;
        if ((v45 & 0x8000000000000000) != 0)
        {
          goto LABEL_99;
        }

        if (v45 >= *(*&v225 + 16))
        {
          goto LABEL_100;
        }

        v55 = v45 + 1;
        v56 = *&v225 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v45;
        v57 = *(v218 + 48);
        v58 = v208;
        *v208 = v45;
        sub_1D99B1BBC(v56, v58 + v57);
        v59 = v58;
        v50 = v211;
        sub_1D99B1C20(v59, v211, &qword_1ECB510F0);
        v53 = 0;
        v221 = v55;
        v52 = v220;
      }

      (*v217)(v50, v53, 1, v54);
      sub_1D99B1C20(v50, v52, &qword_1ECB510F8);
      if ((*v216)(v52, 1, v54) == 1)
      {

        v116 = v196;
        v117 = *(v196 + 16);
        v51 = v199;
        v118 = v197;
        if (v117)
        {
          v119 = 0;
          while (1)
          {
            if (v119 >= *(v116 + 16))
            {
              goto LABEL_101;
            }

            sub_1D99B1BBC(v116 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v119, v118);
            if (*(v118 + 104))
            {
              break;
            }

            ++v119;
            sub_1D99B1C88(v118);
            if (v117 == v119)
            {
              goto LABEL_50;
            }
          }

          v121 = v191;
          sub_1D99B1CE4(v118, v191);
          v120 = 0;
        }

        else
        {
LABEL_50:

          v120 = 1;
          v121 = v191;
        }

        v122 = v190;
        (*(v15 + 56))(v121, v120, 1, v190);

        v123 = (*(v15 + 48))(v121, 1, v122) == 1;
        v124 = v192;
        v125 = v121;
        if (v123)
        {
          sub_1D99B1D48(v121);
          v15 = v209;
          goto LABEL_95;
        }

        v126 = v194;
        sub_1D99B1CE4(v125, v194);
        sub_1D99B1BBC(v126, v51);
        v127 = v209;
        v128 = v209[2];
        if (!v128)
        {

          v15 = MEMORY[0x1E69E7CC0];
LABEL_91:
          swift_beginAccess();
          sub_1D99B1BBC(v51, v195);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            goto LABEL_104;
          }

          goto LABEL_92;
        }

        *&v129 = *(a3 + *(type metadata accessor for Argos_Protos_Queryflow_ParseConfig(0) + 20)) + 36;
        v222 = (*(v15 + 80) + 32) & ~*(v15 + 80);
        v130 = v127 + v222;
        swift_beginAccess();
        swift_beginAccess();
        v131 = *(v15 + 72);
        v219 = COERCE_DOUBLE(0x80000001D9CA3A40);
        v15 = MEMORY[0x1E69E7CC0];
        v220 = (v124 + 16);
        v132 = v201;
        v133 = v198;
        v223 = v129;
        v221 = v131;
        while (1)
        {
          v136 = v214;
          sub_1D99B1BBC(v130, v214);
          v137 = *v51;
          v138 = v51[1];
          v139 = v51[2];
          v140 = v51[3];
          v141 = *(v136 + 1);
          v227 = *v136;
          v142 = *(v136 + 2);
          v143 = *(v136 + 3);
          v243.origin.x = v137;
          v243.origin.y = v138;
          v243.size.width = v139;
          v243.size.height = v140;
          Width = CGRectGetWidth(v243);
          v225 = v137;
          v244.origin.x = v137;
          v145 = v138;
          v146 = v227;
          v244.origin.y = v145;
          v244.size.width = v139;
          v244.size.height = v140;
          v147 = Width * CGRectGetHeight(v244);
          v245.origin.x = v146;
          v245.origin.y = v141;
          v245.size.width = v142;
          v245.size.height = v143;
          v226 = CGRectGetWidth(v245);
          v246.origin.x = v146;
          v246.origin.y = v141;
          v246.size.width = v142;
          v246.size.height = v143;
          Height = CGRectGetHeight(v246);
          v149 = 0.0;
          v224 = v147;
          if (v147 > 0.0)
          {
            v150 = v226 * Height;
            if (v226 * Height > 0.0)
            {
              v247.origin.x = v225;
              v247.origin.y = v145;
              v247.size.width = v139;
              v247.size.height = v140;
              v252.origin.x = v146;
              v252.origin.y = v141;
              v252.size.width = v142;
              v252.size.height = v143;
              v248 = CGRectIntersection(v247, v252);
              x = v248.origin.x;
              y = v248.origin.y;
              v153 = v248.size.width;
              v154 = v248.size.height;
              IsNull = CGRectIsNull(v248);
              v149 = 0.0;
              if (!IsNull)
              {
                v249.origin.x = x;
                v249.origin.y = y;
                v249.size.width = v153;
                v249.size.height = v154;
                v156 = CGRectGetWidth(v249);
                v250.origin.x = x;
                v250.origin.y = y;
                v250.size.width = v153;
                v250.size.height = v154;
                v157 = CGRectGetHeight(v250);
                v149 = v156 * v157 / (v224 + v150 - v156 * v157);
              }
            }
          }

          if (**&v129 >= v149)
          {
            sub_1D99B1BBC(v214, v200);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v15 = sub_1D9AF8A90(0, *(v15 + 16) + 1, 1, v15);
            }

            v164 = *(v15 + 16);
            v163 = *(v15 + 24);
            if (v164 >= v163 >> 1)
            {
              v15 = sub_1D9AF8A90(v163 > 1, v164 + 1, 1, v15);
            }

            sub_1D99B1C88(v214);
            *(v15 + 16) = v164 + 1;
            sub_1D99B1CE4(v200, v15 + v222 + v164 * v131);
            v132 = v201;
            goto LABEL_59;
          }

          if (qword_1EDD354B8 != -1)
          {
            swift_once();
          }

          if (byte_1EDD354C0 != 1)
          {
LABEL_85:
            v169 = qword_1EDD354D8;
            if (qword_1EDD354D0 != -1)
            {
              swift_once();
              v169 = qword_1EDD354D8;
            }

            goto LABEL_87;
          }

          v158 = [objc_opt_self() mainBundle];
          v159 = [v158 bundleIdentifier];

          if (v159)
          {
            v160 = sub_1D9C7DC7C();
            v162 = v161;

            if (v160 == 0xD00000000000002BLL && *&v219 == v162)
            {

LABEL_78:
              v166 = &off_1ECB51BA8;
              if (qword_1ECB50988 != -1)
              {
                swift_once();
                v166 = &off_1ECB51BA8;
              }

              goto LABEL_82;
            }

            v165 = sub_1D9C7E7DC();

            if (v165)
            {
              goto LABEL_78;
            }
          }

          v166 = &qword_1EDD355A8;
          if (qword_1EDD355A0 != -1)
          {
            swift_once();
            v166 = &qword_1EDD355A8;
          }

LABEL_82:
          v167 = *(*v166 + 32);

          v168 = sub_1D9C7DC4C();
          LODWORD(v167) = [v167 BOOLForKey_];

          v132 = v201;
          if (!v167)
          {
            goto LABEL_85;
          }

          v169 = qword_1EDD2C990;
          if (qword_1EDD2C988 != -1)
          {
            swift_once();
            v169 = qword_1EDD2C990;
          }

LABEL_87:
          v170 = __swift_project_value_buffer(v9, v169);
          (*v220)(v132, v170, v9);
          sub_1D99B1BBC(v214, v133);
          v171 = sub_1D9C7D8BC();
          v172 = sub_1D9C7E09C();
          if (os_log_type_enabled(v171, v172))
          {
            v173 = swift_slowAlloc();
            v174 = swift_slowAlloc();
            v228 = v174;
            *v173 = v205;
            v175 = v133[1];
            v231 = *v133;
            v232 = v175;
            v176 = NormalizedRect.loggingDescription.getter();
            v178 = v177;
            sub_1D99B1C88(v198);
            v179 = sub_1D9A0E224(v176, v178, &v228);

            *(v173 + 4) = v179;
            *(v173 + 12) = 2080;
            v180 = v199[1];
            v231 = *v199;
            v232 = v180;
            v51 = v199;
            v181 = NormalizedRect.loggingDescription.getter();
            v183 = sub_1D9A0E224(v181, v182, &v228);

            *(v173 + 14) = v183;
            v133 = v198;
            _os_log_impl(&dword_1D9962000, v171, v172, "Merge from %s to %s", v173, 0x16u);
            swift_arrayDestroy();
            v184 = v174;
            v132 = v201;
            MEMORY[0x1DA7405F0](v184, -1, -1);
            v185 = v173;
            v9 = v206;
            MEMORY[0x1DA7405F0](v185, -1, -1);
          }

          else
          {

            sub_1D99B1C88(v133);
          }

          (*v212)(v132, v9);
          v129 = v223;
          v134 = v213;
          v135 = v214;
          sub_1D9B66D50(v214, v51, v213);
          sub_1D99B1C88(v135);
          sub_1D99B1DB0(v134, v51);
          v131 = v221;
LABEL_59:
          v130 += v131;
          if (!--v128)
          {

            goto LABEL_91;
          }
        }
      }

      v60 = v52;
      v61 = *v52;
      sub_1D99B1CE4(v60 + *(v54 + 48), v37);
      swift_beginAccess();
      if (v37[13])
      {
        goto LABEL_3;
      }

      if (!*(v46 + 16))
      {
        break;
      }

      v62 = sub_1D9C7E8CC();
      v63 = -1 << *(v46 + 32);
      v64 = v62 & ~v63;
      if (((*(v51 + ((v64 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v64) & 1) == 0)
      {
        break;
      }

      v65 = ~v63;
      while (*(*(v46 + 48) + 8 * v64) != v61)
      {
        v64 = (v64 + 1) & v65;
        if (((*(v51 + ((v64 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v64) & 1) == 0)
        {
          goto LABEL_16;
        }
      }

LABEL_3:
      sub_1D99B1C88(v37);
      v52 = v220;
      v45 = v221;
      v47 = v215;
    }

LABEL_16:
    *&v66 = v61 + 1;
    if (__OFADD__(v61, 1))
    {
      goto LABEL_102;
    }

    v67 = v225;
    v51 = *(*&v225 + 16);
    if (v51 < *&v66)
    {
      goto LABEL_103;
    }

    if (*&v66 != v51)
    {
      break;
    }

LABEL_19:
    sub_1D99B1BBC(v37, v207);
    v68 = v209;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v68 = sub_1D9AF8A90(0, v68[2] + 1, 1, v68);
    }

    v70 = v68[2];
    v69 = v68[3];
    v50 = v211;
    if (v70 >= v69 >> 1)
    {
      v68 = sub_1D9AF8A90(v69 > 1, v70 + 1, 1, v68);
    }

    v68[2] = v70 + 1;
    v71 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    v209 = v68;
    sub_1D99B1CE4(v207, v68 + v71 + *(v15 + 72) * v70);
    sub_1D99B1C88(v37);
    v46 = v230;
    v45 = v221;
    v47 = v215;
  }

  *&v227 = *&v225 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
  v72 = v61 + 1;
  *&v226 = v61 + 1;
  while (v72 < v51)
  {
    if ((*&v66 & 0x8000000000000000) != 0)
    {
      goto LABEL_97;
    }

    if (v72 >= *(*&v67 + 16))
    {
      goto LABEL_98;
    }

    v75 = *&v227 + *(v15 + 72) * v72;
    if ((*(v75 + 104) & 1) == 0)
    {
      v76 = v230;
      if (*(v230 + 16) && (v77 = sub_1D9C7E8CC(), v66 = v226, v78 = -1 << *(v76 + 32), v79 = v77 & ~v78, ((*(v76 + 56 + ((v79 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v79) & 1) != 0))
      {
        v80 = ~v78;
        while (*(*(v76 + 48) + 8 * v79) != v72)
        {
          v79 = (v79 + 1) & v80;
          if (((*(v76 + 56 + ((v79 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v79) & 1) == 0)
          {
            goto LABEL_37;
          }
        }
      }

      else
      {
LABEL_37:
        v81 = *v37;
        v82 = v37[1];
        v83 = v37[2];
        v84 = v37[3];
        v85 = *(v75 + 8);
        v224 = *v75;
        v86 = *(v75 + 16);
        v87 = *(v75 + 24);
        v235.origin.x = v81;
        v235.origin.y = v82;
        v235.size.width = v83;
        v235.size.height = v84;
        v88 = CGRectGetWidth(v235);
        v222 = *&v81;
        v236.origin.x = v81;
        v89 = v82;
        v90 = v224;
        v236.origin.y = v89;
        v236.size.width = v83;
        v236.size.height = v84;
        v91 = v88 * CGRectGetHeight(v236);
        v237.origin.x = v90;
        v237.origin.y = v85;
        v237.size.width = v86;
        v237.size.height = v87;
        v223 = CGRectGetWidth(v237);
        v238.origin.x = v90;
        v238.origin.y = v85;
        v238.size.width = v86;
        v238.size.height = v87;
        v92 = CGRectGetHeight(v238);
        if (v91 <= 0.0 || (v93 = v223 * v92, v93 <= 0.0))
        {
          v98 = 0.0;
        }

        else
        {
          v219 = v93;
          v223 = v91;
          *&v239.origin.x = v222;
          v239.origin.y = v89;
          v239.size.width = v83;
          v239.size.height = v84;
          v251.origin.x = v90;
          v251.origin.y = v85;
          v251.size.width = v86;
          v251.size.height = v87;
          v240 = CGRectIntersection(v239, v251);
          v94 = v240.origin.x;
          v95 = v240.origin.y;
          v96 = v240.size.width;
          v97 = v240.size.height;
          v98 = 0.0;
          if (!CGRectIsNull(v240))
          {
            v241.origin.x = v94;
            v241.origin.y = v95;
            v241.size.width = v96;
            v241.size.height = v97;
            v99 = CGRectGetWidth(v241);
            v242.origin.x = v94;
            v242.origin.y = v95;
            v242.size.width = v96;
            v242.size.height = v97;
            v100 = CGRectGetHeight(v242);
            v98 = v99 * v100 / (v223 + v219 - v99 * v100);
          }
        }

        v101 = *(a3 + *(type metadata accessor for Argos_Protos_Queryflow_ParseConfig(0) + 20));
        swift_beginAccess();
        v66 = v226;
        if (*(v101 + 32) < v98)
        {
          sub_1D9B91F34(&v231, v72);
          static Logger.argos.getter(v49);

          v102 = v49;
          v103 = sub_1D9C7D8BC();
          v104 = sub_1D9C7E09C();

          if (os_log_type_enabled(v103, v104))
          {
            v105 = swift_slowAlloc();
            v106 = swift_slowAlloc();
            v229 = v106;
            *v105 = v205;
            v231 = *v75;
            v232 = *(v75 + 16);
            v107 = NormalizedRect.loggingDescription.getter();
            v109 = sub_1D9A0E224(v107, v108, &v229);

            *(v105 + 4) = v109;
            *(v105 + 12) = 2080;
            v110 = *(v37 + 1);
            v231 = *v37;
            v232 = v110;
            v111 = NormalizedRect.loggingDescription.getter();
            v113 = sub_1D9A0E224(v111, v112, &v229);

            *(v105 + 14) = v113;
            v9 = v206;
            _os_log_impl(&dword_1D9962000, v103, v104, "Merge from %s to %s", v105, 0x16u);
            swift_arrayDestroy();
            v114 = v106;
            a3 = v203;
            MEMORY[0x1DA7405F0](v114, -1, -1);
            v115 = v105;
            v15 = v204;
            MEMORY[0x1DA7405F0](v115, -1, -1);

            v49 = v202;
            (*v212)(v202, v9);
          }

          else
          {

            (*v212)(v102, v9);
            v49 = v102;
          }

          v73 = v210;
          sub_1D99B1BBC(v75, v210);
          v74 = v213;
          sub_1D9B66D50(v73, v37, v213);
          sub_1D99B1C88(v73);
          sub_1D99B1DB0(v74, v37);
          v67 = v225;
          v66 = v226;
        }
      }
    }

    if (++v72 == v51)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_97:
  __break(1u);
LABEL_98:
  __break(1u);
LABEL_99:
  __break(1u);
LABEL_100:
  __break(1u);
LABEL_101:
  __break(1u);
LABEL_102:
  __break(1u);
LABEL_103:
  __break(1u);
LABEL_104:
  v15 = sub_1D9AF8A90(0, *(v15 + 16) + 1, 1, v15);
LABEL_92:
  v187 = *(v15 + 16);
  v186 = *(v15 + 24);
  if (v187 >= v186 >> 1)
  {
    v15 = sub_1D9AF8A90(v186 > 1, v187 + 1, 1, v15);
  }

  sub_1D99B1C88(v194);
  *(v15 + 16) = v187 + 1;
  sub_1D99B1CE4(v195, v15 + ((*(v204 + 80) + 32) & ~*(v204 + 80)) + *(v204 + 72) * v187);
  sub_1D99B1C88(v51);
LABEL_95:
  sub_1D9AFCCA4();

  return v15;
}