uint64_t internal_symptom_new(uint64_t a1)
{
  if (internal_symptom_new_pred != -1)
  {
    internal_symptom_new_cold_1();
  }

  v2 = internal_symptom_new_symptomReporter;

  return MEMORY[0x282204FD8](v2, a1);
}

uint64_t __internal_symptom_new_block_invoke()
{
  result = symptom_framework_init();
  internal_symptom_new_symptomReporter = result;
  return result;
}

uint64_t loadedCoreMotion()
{
  if (loadedCoreMotion_symbolLoadOnce != -1)
  {
    loadedCoreMotion_cold_1();
  }

  return loadedCoreMotion_symbolsLoaded;
}

void __loadedCoreMotion_block_invoke()
{
  v19 = *MEMORY[0x277D85DE8];
  v0 = dlopen("/System/Library/Frameworks/CoreMotion.framework/CoreMotion", 6);
  v1 = getenv("DYLD_IMAGE_SUFFIX");
  v2 = v1;
  v3 = "out";
  if (!v0 && v1)
  {
    *__path = 0;
    v4 = asprintf(__path, "%s%s", "/System/Library/Frameworks/CoreMotion.framework/CoreMotion", v1);
    v0 = 0;
    v5 = *__path;
    if (v4 >= 1 && *__path)
    {
      v0 = dlopen(*__path, 6);
      v3 = "";
      v5 = *__path;
    }

    if (v5)
    {
      free(v5);
    }
  }

  if (v0)
  {
    cmMotionActivityManagerClass = objc_getClass("CMMotionActivityManager");
    loadedCoreMotion_symbolsLoaded = cmMotionActivityManagerClass != 0;
    dlclose(v0);
    if (loadedCoreMotion_symbolsLoaded == 1)
    {
      v6 = netepochsLogHandle;
      if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        v7 = "[null]";
        *__path = 136315650;
        if (v2)
        {
          v7 = v2;
        }

        *&__path[4] = "CMMotionActivityManager";
        v15 = 2080;
        v16 = v3;
        v17 = 2080;
        v18 = v7;
        v8 = "MotionStateRelay: Successfully loaded %s class from CoreMotion framework with%s suffix %s.";
        v9 = v6;
        v10 = OS_LOG_TYPE_DEFAULT;
        v11 = 32;
        goto LABEL_16;
      }
    }
  }

  else
  {
    v12 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
    {
      *__path = 136315138;
      *&__path[4] = "CMMotionActivityManager";
      v8 = "MotionStateRelay: Failed to load %s class in CoreMotion framework.";
      v9 = v12;
      v10 = OS_LOG_TYPE_ERROR;
      v11 = 12;
LABEL_16:
      _os_log_impl(&dword_23255B000, v9, v10, v8, __path, v11);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

uint64_t isMotionActivityAvailable()
{
  v8 = *MEMORY[0x277D85DE8];
  if (loadedCoreMotion_symbolLoadOnce != -1)
  {
    loadedCoreMotion_cold_1();
  }

  if (loadedCoreMotion_symbolsLoaded == 1)
  {
    v0 = [cmMotionActivityManagerClass isActivityAvailable];
  }

  else
  {
    v1 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v6) = 0;
      _os_log_impl(&dword_23255B000, v1, OS_LOG_TYPE_ERROR, "MotionStateRelay: CoreMotion framework not available.", &v6, 2u);
    }

    v0 = 0;
  }

  v2 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v3 = @"NOT ";
    if (v0)
    {
      v3 = &stru_2847966D8;
    }

    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_DEFAULT, "MotionStateRelay: motion activity class (CMMotionActivityManager) is %@available.", &v6, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
  return v0;
}

__CFString *hexStringForData(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 && [v1 length] && objc_msgSend(v2, "bytes"))
  {
    v3 = [MEMORY[0x277CCAB68] string];
    v4 = [v2 bytes];
    v5 = [v2 length];
    [(__CFString *)v3 appendString:@"["];
    if (v5 >= 8)
    {
      v6 = v4;
      v7 = v5 >> 3;
      do
      {
        v8 = *v6++;
        v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%#16llx ", v8];
        [(__CFString *)v3 appendString:v9];

        --v7;
      }

      while (v7);
    }

    if ((v5 & 7) != 0)
    {
      __memcpy_chk();
      v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%#16llx ", 0];
      [(__CFString *)v3 appendString:v10];
    }

    [(__CFString *)v3 appendString:@"]"];
  }

  else
  {
    v3 = &stru_2847966D8;
  }

  return v3;
}

uint64_t AWDSymptomsNetworkAnalyticsDNSTotalFailureReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
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
        v37 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v37 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v37 & 0x7F) << v5;
        if ((v37 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
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

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        v28 = 0;
        v29 = 0;
        v30 = 0;
        *(a1 + 24) |= 2u;
        while (1)
        {
          v40 = 0;
          v31 = [a2 position] + 1;
          if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
          {
            v33 = [a2 data];
            [v33 getBytes:&v40 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v30 |= (v40 & 0x7F) << v28;
          if ((v40 & 0x80) == 0)
          {
            break;
          }

          v28 += 7;
          v11 = v29++ >= 9;
          if (v11)
          {
            v27 = 0;
            goto LABEL_56;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v30;
        }

LABEL_56:
        v35 = 16;
      }

      else
      {
        if (v13 != 2)
        {
          if (v13 == 1)
          {
            v14 = 0;
            v15 = 0;
            v16 = 0;
            *(a1 + 24) |= 1u;
            while (1)
            {
              v38 = 0;
              v17 = [a2 position] + 1;
              if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
              {
                v19 = [a2 data];
                [v19 getBytes:&v38 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v38 & 0x7F) << v14;
              if ((v38 & 0x80) == 0)
              {
                break;
              }

              v14 += 7;
              v11 = v15++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_61;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v16;
            }

LABEL_61:
            *(a1 + 8) = v20;
          }

          else
          {
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }
          }

          goto LABEL_62;
        }

        v21 = 0;
        v22 = 0;
        v23 = 0;
        *(a1 + 24) |= 4u;
        while (1)
        {
          v39 = 0;
          v24 = [a2 position] + 1;
          if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
          {
            v26 = [a2 data];
            [v26 getBytes:&v39 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v23 |= (v39 & 0x7F) << v21;
          if ((v39 & 0x80) == 0)
          {
            break;
          }

          v21 += 7;
          v11 = v22++ >= 9;
          if (v11)
          {
            v27 = 0;
            goto LABEL_52;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v23;
        }

LABEL_52:
        v35 = 20;
      }

      *(a1 + v35) = v27;
LABEL_62:
      v36 = [a2 position];
    }

    while (v36 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_23263D7A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__7(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_23263EBB8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_23263EF24(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_23263F2F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_23263F5EC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_23263F87C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_23263FB0C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_23263FDF8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

void *AllocateExpressions(uint64_t a1)
{
  GenReadBinary(a1, (*(*(a1 + 48) + 360) + 48), 8uLL);
  v2 = *(*(a1 + 48) + 360);
  v3 = *(v2 + 48);
  if (v3)
  {
    result = genalloc(a1, 32 * v3);
    v2 = *(*(a1 + 48) + 360);
  }

  else
  {
    result = 0;
  }

  *(v2 + 56) = result;
  return result;
}

uint64_t RefreshExpressions(uint64_t result)
{
  v1 = *(*(result + 48) + 360);
  if (*(v1 + 56))
  {
    return BloadandRefresh(result, *(v1 + 48), 32, UpdateExpression);
  }

  return result;
}

void UpdateExpression(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = *a2;
  v7 = *(a1 + 48);
  v8 = *(*(v7 + 360) + 56) + 32 * a3;
  *v8 = v6;
  if (v6 > 30)
  {
    if (v6 > 62)
    {
      if (v6 > 89)
      {
        if (v6 != 90)
        {
          if (v6 == 175)
          {
            goto LABEL_42;
          }

          goto LABEL_30;
        }

        v11 = **(v7 + 480);
        v12 = a2[1];
        v13 = 120;
      }

      else
      {
        if (v6 != 63)
        {
          if (v6 != 82)
          {
            goto LABEL_30;
          }

LABEL_26:
          *(v8 + 8) = 0;
          goto LABEL_42;
        }

        v11 = **(v7 + 488);
        v12 = a2[1];
        v13 = 96;
      }

LABEL_40:
      v10 = v11 + v12 * v13;
      goto LABEL_41;
    }

    switch(v6)
    {
      case 0x1F:
        v12 = a2[1];
        if (v12 != -1)
        {
          v11 = **(v7 + 224);
          v13 = 72;
          goto LABEL_40;
        }

        break;
      case 0x20:
        v12 = a2[1];
        if (v12 != -1)
        {
          v11 = **(v7 + 192);
          v13 = 88;
          goto LABEL_40;
        }

        break;
      case 0x21:
        goto LABEL_36;
      default:
        goto LABEL_30;
    }

    v10 = 0;
    goto LABEL_41;
  }

  if (v6 <= 4)
  {
    if ((v6 - 2) >= 2)
    {
      if (!v6)
      {
        v9 = *(*(v7 + 392) + 128);
        goto LABEL_37;
      }

      if (v6 == 1)
      {
        v9 = *(*(v7 + 392) + 136);
LABEL_37:
        *(v8 + 8) = *(v9 + 8 * a2[1]);
        v8 = *(*(*(v7 + 360) + 56) + 32 * a3 + 8);
        v10 = *(v8 + 8) + 1;
        goto LABEL_41;
      }

LABEL_30:
      v14 = *(*(v7 + 352) + 8 * v6 + 24);
      if (!v14 || (*(v14 + 8) & 0x4000) == 0)
      {
        goto LABEL_42;
      }

      v9 = *(*(v7 + 392) + 144);
      goto LABEL_37;
    }

LABEL_36:
    v9 = *(*(v7 + 392) + 120);
    goto LABEL_37;
  }

  if (v6 <= 7)
  {
    if (v6 != 5)
    {
      if (v6 == 6)
      {
        *(v8 + 8) = *(v7 + 24) + 8;
        EnvIncrementFactCount(a1, *(*(*(v7 + 360) + 56) + 32 * a3 + 8));
        goto LABEL_42;
      }

      goto LABEL_30;
    }

    goto LABEL_26;
  }

  if (v6 == 8)
  {
    *v8 = 2;
    goto LABEL_36;
  }

  if (v6 != 30)
  {
    goto LABEL_30;
  }

  v10 = *(*(*(v7 + 304) + 16) + 8 * a2[1]);
LABEL_41:
  *(v8 + 8) = v10;
LABEL_42:
  v15 = *(a1 + 48);
  v16 = *(*(v15 + 360) + 56);
  v18 = a2[2];
  v17 = a2[3];
  if (v17 == -1)
  {
    v19 = 0;
  }

  else
  {
    v19 = v16 + 32 * v17;
  }

  *(v16 + 32 * a3 + 24) = v19;
  v20 = *(*(v15 + 360) + 56);
  v21 = v20 + 32 * v18;
  if (v18 == -1)
  {
    v21 = 0;
  }

  *(v20 + 32 * a3 + 16) = v21;
}

void ClearBloadedExpressions(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = *(v1 + 360);
  if (!*(v2 + 48))
  {
    goto LABEL_19;
  }

  v4 = 0;
  v5 = 0;
  do
  {
    v6 = *(v2 + 56);
    v7 = *(v6 + v4);
    if (v7 <= 0x21)
    {
      if (((1 << v7) & 0x20000010CLL) != 0)
      {
        DecrementSymbolCount(a1, *(v6 + v4 + 8));
        goto LABEL_16;
      }

      if (v7 == 1)
      {
        DecrementIntegerCount(a1, *(v6 + v4 + 8));
        goto LABEL_16;
      }

      if (v7 == 6)
      {
        EnvDecrementFactCount(a1, *(v6 + v4 + 8));
        goto LABEL_16;
      }
    }

    if (*(v6 + v4))
    {
      if (v7 != 175)
      {
        v8 = *(*(v1 + 352) + 8 * v7 + 24);
        if (v8)
        {
          if ((*(v8 + 8) & 0x4000) != 0)
          {
            DecrementBitMapCount(a1, *(v6 + v4 + 8));
          }
        }
      }
    }

    else
    {
      DecrementFloatCount(a1, *(v6 + v4 + 8));
    }

LABEL_16:
    ++v5;
    v1 = *(a1 + 48);
    v2 = *(v1 + 360);
    v9 = *(v2 + 48);
    v4 += 32;
  }

  while (v5 < v9);
  if (32 * v9)
  {
    genfree(a1, *(v2 + 56), 32 * v9);
    v1 = *(a1 + 48);
  }

LABEL_19:
  *(*(v1 + 360) + 56) = 0;
}

uint64_t FindHashedExpressions(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = *(result + 48);
  do
  {
    for (i = *(*(*(v3 + 360) + 40) + 8 * v2); i; i = *(i + 16))
    {
      MarkNeededItems(v1, *(i + 8));
      *(i + 24) = *(*(*(v1 + 48) + 360) + 64);
      result = ExpressionSize(*(i + 8));
      v3 = *(v1 + 48);
      *(*(v3 + 360) + 64) += result;
    }

    ++v2;
  }

  while (v2 != 503);
  return result;
}

void *BsaveHashedExpressions(void *result, FILE *a2)
{
  v3 = result;
  for (i = 0; i != 503; ++i)
  {
    for (j = *(*(*(v3[6] + 360) + 40) + 8 * i); j; j = *(j + 16))
    {
      result = BsaveExpression(v3, *(j + 8), a2);
    }
  }

  return result;
}

void *BsaveExpression(void *result, unsigned __int16 *a2, FILE *a3)
{
  if (a2)
  {
    v4 = a2;
    v5 = result;
    v17 = 0u;
    v18 = 0u;
    do
    {
      v6 = *(v5[6] + 360);
      v7 = *(v6 + 64);
      v8 = v7 + 1;
      *(v6 + 64) = v7 + 1;
      v9 = *v4;
      LOWORD(v17) = *v4;
      v10 = *(v4 + 2);
      v11 = *(v4 + 3);
      if (v10)
      {
        v12 = v7 + 1;
      }

      else
      {
        v12 = -1;
      }

      *&v18 = v12;
      if (v11)
      {
        *(&v18 + 1) = ExpressionSize(v10) + v8;
        v9 = *v4;
      }

      else
      {
        *(&v18 + 1) = -1;
      }

      v13 = -1;
      if (v9 > 30)
      {
        if (v9 <= 62)
        {
          if (v9 == 31 || v9 == 32)
          {
LABEL_31:
            v15 = *(v4 + 1);
            if (v15)
            {
              v13 = *(v15 + 24);
            }

            goto LABEL_33;
          }

          if (v9 == 33)
          {
            goto LABEL_30;
          }
        }

        else if (v9 > 89)
        {
          if (v9 == 90)
          {
            goto LABEL_31;
          }

          if (v9 == 175)
          {
            goto LABEL_34;
          }
        }

        else
        {
          if (v9 == 63)
          {
            goto LABEL_31;
          }

          if (v9 == 82)
          {
            goto LABEL_33;
          }
        }
      }

      else if (v9 > 4)
      {
        if ((v9 - 5) < 3)
        {
          goto LABEL_33;
        }

        if (v9 == 30)
        {
          v13 = *(*(v4 + 1) + 54);
LABEL_33:
          *(&v17 + 1) = v13;
          goto LABEL_34;
        }
      }

      else if ((v9 - 2) < 2 || v9 < 2)
      {
LABEL_30:
        v13 = *(*(v4 + 1) + 16) >> 3;
        goto LABEL_33;
      }

      v14 = *(*(v5[6] + 352) + 8 * v9 + 24);
      if (v14 && (*(v14 + 8) & 0x4000) != 0)
      {
        goto LABEL_30;
      }

LABEL_34:
      result = GenWrite(&v17, 0x20uLL, a3);
      v16 = *(v4 + 2);
      if (v16)
      {
        result = BsaveExpression(v5, v16, a3);
      }

      v4 = *(v4 + 3);
    }

    while (v4);
  }

  return result;
}

uint64_t BsaveConstructExpressions(uint64_t result, uint64_t a2)
{
  v2 = **(*(result + 48) + 312);
  if (v2)
  {
    v4 = result;
    do
    {
      v5 = *(v2 + 40);
      if (v5)
      {
        result = v5(v4, a2);
      }

      v2 = *(v2 + 72);
    }

    while (v2);
  }

  return result;
}

uint64_t AWDSymptomsNetworkAnalyticsInstantReadFrom(uint64_t a1, void *a2)
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
      v167 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v167 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v167 & 0x7F) << v6;
      if ((v167 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      v12 = v7++ >= 9;
      if (v12)
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

    switch((v13 >> 3))
    {
      case 1u:
        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 148) |= 0x800u;
        while (1)
        {
          v167 = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:&v167 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v167 & 0x7F) << v14;
          if ((v167 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v12 = v15++ >= 9;
          if (v12)
          {
            v20 = 0;
LABEL_281:
            v165 = 96;
            goto LABEL_326;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v16;
        }

        goto LABEL_281;
      case 2u:
        v89 = PBReaderReadString();
        v90 = *(a1 + 112);
        *(a1 + 112) = v89;

        continue;
      case 3u:
        v64 = 0;
        v65 = 0;
        v66 = 0;
        *(a1 + 148) |= 0x10000u;
        while (1)
        {
          v167 = 0;
          v67 = [a2 position] + 1;
          if (v67 >= [a2 position] && (v68 = objc_msgSend(a2, "position") + 1, v68 <= objc_msgSend(a2, "length")))
          {
            v69 = [a2 data];
            [v69 getBytes:&v167 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v66 |= (v167 & 0x7F) << v64;
          if ((v167 & 0x80) == 0)
          {
            break;
          }

          v64 += 7;
          v12 = v65++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_269;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v66;
        }

LABEL_269:
        v164 = 128;
        goto LABEL_300;
      case 4u:
        v77 = 0;
        v78 = 0;
        v79 = 0;
        *(a1 + 148) |= 0x100000u;
        while (1)
        {
          v167 = 0;
          v80 = [a2 position] + 1;
          if (v80 >= [a2 position] && (v81 = objc_msgSend(a2, "position") + 1, v81 <= objc_msgSend(a2, "length")))
          {
            v82 = [a2 data];
            [v82 getBytes:&v167 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v79 |= (v167 & 0x7F) << v77;
          if ((v167 & 0x80) == 0)
          {
            break;
          }

          v77 += 7;
          v12 = v78++ >= 9;
          if (v12)
          {
            LOBYTE(v76) = 0;
            goto LABEL_273;
          }
        }

        v76 = (v79 != 0) & ~[a2 hasError];
LABEL_273:
        v166 = 141;
        goto LABEL_321;
      case 5u:
        v40 = 0;
        v41 = 0;
        v42 = 0;
        *(a1 + 148) |= 0x10u;
        while (1)
        {
          v167 = 0;
          v43 = [a2 position] + 1;
          if (v43 >= [a2 position] && (v44 = objc_msgSend(a2, "position") + 1, v44 <= objc_msgSend(a2, "length")))
          {
            v45 = [a2 data];
            [v45 getBytes:&v167 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v42 |= (v167 & 0x7F) << v40;
          if ((v167 & 0x80) == 0)
          {
            break;
          }

          v40 += 7;
          v12 = v41++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_253;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v42;
        }

LABEL_253:
        v165 = 40;
        goto LABEL_326;
      case 6u:
        v103 = 0;
        v104 = 0;
        v105 = 0;
        *(a1 + 148) |= 4u;
        while (1)
        {
          v167 = 0;
          v106 = [a2 position] + 1;
          if (v106 >= [a2 position] && (v107 = objc_msgSend(a2, "position") + 1, v107 <= objc_msgSend(a2, "length")))
          {
            v108 = [a2 data];
            [v108 getBytes:&v167 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v105 |= (v167 & 0x7F) << v103;
          if ((v167 & 0x80) == 0)
          {
            break;
          }

          v103 += 7;
          v12 = v104++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_291;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v105;
        }

LABEL_291:
        v165 = 24;
        goto LABEL_326;
      case 7u:
        v121 = 0;
        v122 = 0;
        v123 = 0;
        *(a1 + 148) |= 8u;
        while (1)
        {
          v167 = 0;
          v124 = [a2 position] + 1;
          if (v124 >= [a2 position] && (v125 = objc_msgSend(a2, "position") + 1, v125 <= objc_msgSend(a2, "length")))
          {
            v126 = [a2 data];
            [v126 getBytes:&v167 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v123 |= (v167 & 0x7F) << v121;
          if ((v167 & 0x80) == 0)
          {
            break;
          }

          v121 += 7;
          v12 = v122++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_304;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v123;
        }

LABEL_304:
        v165 = 32;
        goto LABEL_326;
      case 8u:
        v83 = 0;
        v84 = 0;
        v85 = 0;
        *(a1 + 148) |= 0x100u;
        while (1)
        {
          v167 = 0;
          v86 = [a2 position] + 1;
          if (v86 >= [a2 position] && (v87 = objc_msgSend(a2, "position") + 1, v87 <= objc_msgSend(a2, "length")))
          {
            v88 = [a2 data];
            [v88 getBytes:&v167 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v85 |= (v167 & 0x7F) << v83;
          if ((v167 & 0x80) == 0)
          {
            break;
          }

          v83 += 7;
          v12 = v84++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_277;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v85;
        }

LABEL_277:
        v165 = 72;
        goto LABEL_326;
      case 9u:
        v139 = 0;
        v140 = 0;
        v141 = 0;
        *(a1 + 148) |= 0x200u;
        while (1)
        {
          v167 = 0;
          v142 = [a2 position] + 1;
          if (v142 >= [a2 position] && (v143 = objc_msgSend(a2, "position") + 1, v143 <= objc_msgSend(a2, "length")))
          {
            v144 = [a2 data];
            [v144 getBytes:&v167 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v141 |= (v167 & 0x7F) << v139;
          if ((v167 & 0x80) == 0)
          {
            break;
          }

          v139 += 7;
          v12 = v140++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_314;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v141;
        }

LABEL_314:
        v165 = 80;
        goto LABEL_326;
      case 0xAu:
        v52 = 0;
        v53 = 0;
        v54 = 0;
        *(a1 + 148) |= 1u;
        while (1)
        {
          v167 = 0;
          v55 = [a2 position] + 1;
          if (v55 >= [a2 position] && (v56 = objc_msgSend(a2, "position") + 1, v56 <= objc_msgSend(a2, "length")))
          {
            v57 = [a2 data];
            [v57 getBytes:&v167 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v54 |= (v167 & 0x7F) << v52;
          if ((v167 & 0x80) == 0)
          {
            break;
          }

          v52 += 7;
          v12 = v53++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_261;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v54;
        }

LABEL_261:
        v165 = 8;
        goto LABEL_326;
      case 0xBu:
        v133 = 0;
        v134 = 0;
        v135 = 0;
        *(a1 + 148) |= 2u;
        while (1)
        {
          v167 = 0;
          v136 = [a2 position] + 1;
          if (v136 >= [a2 position] && (v137 = objc_msgSend(a2, "position") + 1, v137 <= objc_msgSend(a2, "length")))
          {
            v138 = [a2 data];
            [v138 getBytes:&v167 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v135 |= (v167 & 0x7F) << v133;
          if ((v167 & 0x80) == 0)
          {
            break;
          }

          v133 += 7;
          v12 = v134++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_310;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v135;
        }

LABEL_310:
        v165 = 16;
        goto LABEL_326;
      case 0xCu:
        v34 = 0;
        v35 = 0;
        v36 = 0;
        *(a1 + 148) |= 0x400u;
        while (1)
        {
          v167 = 0;
          v37 = [a2 position] + 1;
          if (v37 >= [a2 position] && (v38 = objc_msgSend(a2, "position") + 1, v38 <= objc_msgSend(a2, "length")))
          {
            v39 = [a2 data];
            [v39 getBytes:&v167 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v36 |= (v167 & 0x7F) << v34;
          if ((v167 & 0x80) == 0)
          {
            break;
          }

          v34 += 7;
          v12 = v35++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_249;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v36;
        }

LABEL_249:
        v165 = 88;
        goto LABEL_326;
      case 0xDu:
        v46 = 0;
        v47 = 0;
        v48 = 0;
        *(a1 + 148) |= 0x2000u;
        while (1)
        {
          v167 = 0;
          v49 = [a2 position] + 1;
          if (v49 >= [a2 position] && (v50 = objc_msgSend(a2, "position") + 1, v50 <= objc_msgSend(a2, "length")))
          {
            v51 = [a2 data];
            [v51 getBytes:&v167 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v48 |= (v167 & 0x7F) << v46;
          if ((v167 & 0x80) == 0)
          {
            break;
          }

          v46 += 7;
          v12 = v47++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_257;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v48;
        }

LABEL_257:
        v164 = 108;
        goto LABEL_300;
      case 0xEu:
        v115 = 0;
        v116 = 0;
        v117 = 0;
        *(a1 + 148) |= 0x20000u;
        while (1)
        {
          v167 = 0;
          v118 = [a2 position] + 1;
          if (v118 >= [a2 position] && (v119 = objc_msgSend(a2, "position") + 1, v119 <= objc_msgSend(a2, "length")))
          {
            v120 = [a2 data];
            [v120 getBytes:&v167 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v117 |= (v167 & 0x7F) << v115;
          if ((v167 & 0x80) == 0)
          {
            break;
          }

          v115 += 7;
          v12 = v116++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_299;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v117;
        }

LABEL_299:
        v164 = 132;
        goto LABEL_300;
      case 0xFu:
        v28 = 0;
        v29 = 0;
        v30 = 0;
        *(a1 + 148) |= 0x40000u;
        while (1)
        {
          v167 = 0;
          v31 = [a2 position] + 1;
          if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
          {
            v33 = [a2 data];
            [v33 getBytes:&v167 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v30 |= (v167 & 0x7F) << v28;
          if ((v167 & 0x80) == 0)
          {
            break;
          }

          v28 += 7;
          v12 = v29++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_245;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v30;
        }

LABEL_245:
        v164 = 136;
        goto LABEL_300;
      case 0x10u:
        v70 = 0;
        v71 = 0;
        v72 = 0;
        *(a1 + 148) |= 0x200000u;
        while (1)
        {
          v167 = 0;
          v73 = [a2 position] + 1;
          if (v73 >= [a2 position] && (v74 = objc_msgSend(a2, "position") + 1, v74 <= objc_msgSend(a2, "length")))
          {
            v75 = [a2 data];
            [v75 getBytes:&v167 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v72 |= (v167 & 0x7F) << v70;
          if ((v167 & 0x80) == 0)
          {
            break;
          }

          v70 += 7;
          v12 = v71++ >= 9;
          if (v12)
          {
            LOBYTE(v76) = 0;
            goto LABEL_271;
          }
        }

        v76 = (v72 != 0) & ~[a2 hasError];
LABEL_271:
        v166 = 142;
        goto LABEL_321;
      case 0x11u:
        v21 = 0;
        v22 = 0;
        v23 = 0;
        *(a1 + 148) |= 0x1000u;
        while (1)
        {
          v167 = 0;
          v24 = [a2 position] + 1;
          if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
          {
            v26 = [a2 data];
            [v26 getBytes:&v167 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v23 |= (v167 & 0x7F) << v21;
          if ((v167 & 0x80) == 0)
          {
            break;
          }

          v21 += 7;
          v12 = v22++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_241;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v23;
        }

LABEL_241:
        v164 = 104;
        goto LABEL_300;
      case 0x12u:
        v91 = 0;
        v92 = 0;
        v93 = 0;
        *(a1 + 148) |= 0x80000u;
        while (1)
        {
          v167 = 0;
          v94 = [a2 position] + 1;
          if (v94 >= [a2 position] && (v95 = objc_msgSend(a2, "position") + 1, v95 <= objc_msgSend(a2, "length")))
          {
            v96 = [a2 data];
            [v96 getBytes:&v167 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v93 |= (v167 & 0x7F) << v91;
          if ((v167 & 0x80) == 0)
          {
            break;
          }

          v91 += 7;
          v12 = v92++ >= 9;
          if (v12)
          {
            LOBYTE(v76) = 0;
            goto LABEL_283;
          }
        }

        v76 = (v93 != 0) & ~[a2 hasError];
LABEL_283:
        v166 = 140;
        goto LABEL_321;
      case 0x13u:
        v127 = 0;
        v128 = 0;
        v129 = 0;
        *(a1 + 148) |= 0x400000u;
        while (1)
        {
          v167 = 0;
          v130 = [a2 position] + 1;
          if (v130 >= [a2 position] && (v131 = objc_msgSend(a2, "position") + 1, v131 <= objc_msgSend(a2, "length")))
          {
            v132 = [a2 data];
            [v132 getBytes:&v167 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v129 |= (v167 & 0x7F) << v127;
          if ((v167 & 0x80) == 0)
          {
            break;
          }

          v127 += 7;
          v12 = v128++ >= 9;
          if (v12)
          {
            LOBYTE(v76) = 0;
            goto LABEL_306;
          }
        }

        v76 = (v129 != 0) & ~[a2 hasError];
LABEL_306:
        v166 = 143;
        goto LABEL_321;
      case 0x14u:
        v151 = 0;
        v152 = 0;
        v153 = 0;
        *(a1 + 148) |= 0x800000u;
        while (1)
        {
          v167 = 0;
          v154 = [a2 position] + 1;
          if (v154 >= [a2 position] && (v155 = objc_msgSend(a2, "position") + 1, v155 <= objc_msgSend(a2, "length")))
          {
            v156 = [a2 data];
            [v156 getBytes:&v167 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v153 |= (v167 & 0x7F) << v151;
          if ((v167 & 0x80) == 0)
          {
            break;
          }

          v151 += 7;
          v12 = v152++ >= 9;
          if (v12)
          {
            LOBYTE(v76) = 0;
            goto LABEL_320;
          }
        }

        v76 = (v153 != 0) & ~[a2 hasError];
LABEL_320:
        v166 = 144;
LABEL_321:
        *(a1 + v166) = v76;
        continue;
      case 0x15u:
        v97 = 0;
        v98 = 0;
        v99 = 0;
        *(a1 + 148) |= 0x8000u;
        while (1)
        {
          v167 = 0;
          v100 = [a2 position] + 1;
          if (v100 >= [a2 position] && (v101 = objc_msgSend(a2, "position") + 1, v101 <= objc_msgSend(a2, "length")))
          {
            v102 = [a2 data];
            [v102 getBytes:&v167 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v99 |= (v167 & 0x7F) << v97;
          if ((v167 & 0x80) == 0)
          {
            break;
          }

          v97 += 7;
          v12 = v98++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_287;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v99;
        }

LABEL_287:
        v164 = 124;
        goto LABEL_300;
      case 0x16u:
        v109 = 0;
        v110 = 0;
        v111 = 0;
        *(a1 + 148) |= 0x4000u;
        while (1)
        {
          v167 = 0;
          v112 = [a2 position] + 1;
          if (v112 >= [a2 position] && (v113 = objc_msgSend(a2, "position") + 1, v113 <= objc_msgSend(a2, "length")))
          {
            v114 = [a2 data];
            [v114 getBytes:&v167 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v111 |= (v167 & 0x7F) << v109;
          if ((v167 & 0x80) == 0)
          {
            break;
          }

          v109 += 7;
          v12 = v110++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_295;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v111;
        }

LABEL_295:
        v164 = 120;
LABEL_300:
        *(a1 + v164) = v27;
        continue;
      case 0x17u:
        v145 = 0;
        v146 = 0;
        v147 = 0;
        *(a1 + 148) |= 0x40u;
        while (1)
        {
          v167 = 0;
          v148 = [a2 position] + 1;
          if (v148 >= [a2 position] && (v149 = objc_msgSend(a2, "position") + 1, v149 <= objc_msgSend(a2, "length")))
          {
            v150 = [a2 data];
            [v150 getBytes:&v167 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v147 |= (v167 & 0x7F) << v145;
          if ((v167 & 0x80) == 0)
          {
            break;
          }

          v145 += 7;
          v12 = v146++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_318;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v147;
        }

LABEL_318:
        v165 = 56;
        goto LABEL_326;
      case 0x18u:
        v157 = 0;
        v158 = 0;
        v159 = 0;
        *(a1 + 148) |= 0x80u;
        while (1)
        {
          v167 = 0;
          v160 = [a2 position] + 1;
          if (v160 >= [a2 position] && (v161 = objc_msgSend(a2, "position") + 1, v161 <= objc_msgSend(a2, "length")))
          {
            v162 = [a2 data];
            [v162 getBytes:&v167 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v159 |= (v167 & 0x7F) << v157;
          if ((v167 & 0x80) == 0)
          {
            break;
          }

          v157 += 7;
          v12 = v158++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_325;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v159;
        }

LABEL_325:
        v165 = 64;
        goto LABEL_326;
      case 0x19u:
        v58 = 0;
        v59 = 0;
        v60 = 0;
        *(a1 + 148) |= 0x20u;
        break;
      default:
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }

        continue;
    }

    while (1)
    {
      v167 = 0;
      v61 = [a2 position] + 1;
      if (v61 >= [a2 position] && (v62 = objc_msgSend(a2, "position") + 1, v62 <= objc_msgSend(a2, "length")))
      {
        v63 = [a2 data];
        [v63 getBytes:&v167 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v60 |= (v167 & 0x7F) << v58;
      if ((v167 & 0x80) == 0)
      {
        break;
      }

      v58 += 7;
      v12 = v59++ >= 9;
      if (v12)
      {
        v20 = 0;
        goto LABEL_265;
      }
    }

    if ([a2 hasError])
    {
      v20 = 0;
    }

    else
    {
      v20 = v60;
    }

LABEL_265:
    v165 = 48;
LABEL_326:
    *(a1 + v165) = v20;
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDSymptomsNetworkTCPFlowThroughputEventReadFrom(uint64_t a1, void *a2)
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
        v163 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v163 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v163 & 0x7F) << v5;
        if ((v163 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
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

      switch((v12 >> 3))
      {
        case 1u:
          v13 = 0;
          v14 = 0;
          v15 = 0;
          *(a1 + 192) |= 0x40000u;
          while (1)
          {
            v163 = 0;
            v16 = [a2 position] + 1;
            if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
            {
              v18 = [a2 data];
              [v18 getBytes:&v163 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v163 & 0x7F) << v13;
            if ((v163 & 0x80) == 0)
            {
              break;
            }

            v13 += 7;
            v11 = v14++ >= 9;
            if (v11)
            {
              v19 = 0;
LABEL_279:
              v160 = 152;
              goto LABEL_333;
            }
          }

          if ([a2 hasError])
          {
            v19 = 0;
          }

          else
          {
            v19 = v15;
          }

          goto LABEL_279;
        case 2u:
          v81 = 0;
          v82 = 0;
          v83 = 0;
          *(a1 + 192) |= 0x800000u;
          while (1)
          {
            v163 = 0;
            v84 = [a2 position] + 1;
            if (v84 >= [a2 position] && (v85 = objc_msgSend(a2, "position") + 1, v85 <= objc_msgSend(a2, "length")))
            {
              v86 = [a2 data];
              [v86 getBytes:&v163 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v83 |= (v163 & 0x7F) << v81;
            if ((v163 & 0x80) == 0)
            {
              break;
            }

            v81 += 7;
            v11 = v82++ >= 9;
            if (v11)
            {
              v62 = 0;
              goto LABEL_283;
            }
          }

          if ([a2 hasError])
          {
            v62 = 0;
          }

          else
          {
            v62 = v83;
          }

LABEL_283:
          v161 = 188;
          goto LABEL_284;
        case 3u:
          v56 = 0;
          v57 = 0;
          v58 = 0;
          *(a1 + 192) |= 0x400000u;
          while (1)
          {
            v163 = 0;
            v59 = [a2 position] + 1;
            if (v59 >= [a2 position] && (v60 = objc_msgSend(a2, "position") + 1, v60 <= objc_msgSend(a2, "length")))
            {
              v61 = [a2 data];
              [v61 getBytes:&v163 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v58 |= (v163 & 0x7F) << v56;
            if ((v163 & 0x80) == 0)
            {
              break;
            }

            v56 += 7;
            v11 = v57++ >= 9;
            if (v11)
            {
              v62 = 0;
              goto LABEL_263;
            }
          }

          if ([a2 hasError])
          {
            v62 = 0;
          }

          else
          {
            v62 = v58;
          }

LABEL_263:
          v161 = 184;
LABEL_284:
          *(a1 + v161) = v62;
          goto LABEL_334;
        case 4u:
          v69 = 0;
          v70 = 0;
          v71 = 0;
          *(a1 + 192) |= 0x80000u;
          while (1)
          {
            v163 = 0;
            v72 = [a2 position] + 1;
            if (v72 >= [a2 position] && (v73 = objc_msgSend(a2, "position") + 1, v73 <= objc_msgSend(a2, "length")))
            {
              v74 = [a2 data];
              [v74 getBytes:&v163 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v71 |= (v163 & 0x7F) << v69;
            if ((v163 & 0x80) == 0)
            {
              break;
            }

            v69 += 7;
            v11 = v70++ >= 9;
            if (v11)
            {
              v19 = 0;
              goto LABEL_271;
            }
          }

          if ([a2 hasError])
          {
            v19 = 0;
          }

          else
          {
            v19 = v71;
          }

LABEL_271:
          v160 = 160;
          goto LABEL_333;
        case 5u:
          v38 = 0;
          v39 = 0;
          v40 = 0;
          *(a1 + 192) |= 0x8000u;
          while (1)
          {
            v163 = 0;
            v41 = [a2 position] + 1;
            if (v41 >= [a2 position] && (v42 = objc_msgSend(a2, "position") + 1, v42 <= objc_msgSend(a2, "length")))
            {
              v43 = [a2 data];
              [v43 getBytes:&v163 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v40 |= (v163 & 0x7F) << v38;
            if ((v163 & 0x80) == 0)
            {
              break;
            }

            v38 += 7;
            v11 = v39++ >= 9;
            if (v11)
            {
              v19 = 0;
              goto LABEL_251;
            }
          }

          if ([a2 hasError])
          {
            v19 = 0;
          }

          else
          {
            v19 = v40;
          }

LABEL_251:
          v160 = 128;
          goto LABEL_333;
        case 6u:
          v99 = 0;
          v100 = 0;
          v101 = 0;
          *(a1 + 192) |= 0x40u;
          while (1)
          {
            v163 = 0;
            v102 = [a2 position] + 1;
            if (v102 >= [a2 position] && (v103 = objc_msgSend(a2, "position") + 1, v103 <= objc_msgSend(a2, "length")))
            {
              v104 = [a2 data];
              [v104 getBytes:&v163 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v101 |= (v163 & 0x7F) << v99;
            if ((v163 & 0x80) == 0)
            {
              break;
            }

            v99 += 7;
            v11 = v100++ >= 9;
            if (v11)
            {
              v19 = 0;
              goto LABEL_296;
            }
          }

          if ([a2 hasError])
          {
            v19 = 0;
          }

          else
          {
            v19 = v101;
          }

LABEL_296:
          v160 = 56;
          goto LABEL_333;
        case 7u:
          v117 = 0;
          v118 = 0;
          v119 = 0;
          *(a1 + 192) |= 0x200000u;
          while (1)
          {
            v163 = 0;
            v120 = [a2 position] + 1;
            if (v120 >= [a2 position] && (v121 = objc_msgSend(a2, "position") + 1, v121 <= objc_msgSend(a2, "length")))
            {
              v122 = [a2 data];
              [v122 getBytes:&v163 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v119 |= (v163 & 0x7F) << v117;
            if ((v163 & 0x80) == 0)
            {
              break;
            }

            v117 += 7;
            v11 = v118++ >= 9;
            if (v11)
            {
              v19 = 0;
              goto LABEL_308;
            }
          }

          if ([a2 hasError])
          {
            v19 = 0;
          }

          else
          {
            v19 = v119;
          }

LABEL_308:
          v160 = 176;
          goto LABEL_333;
        case 8u:
          v75 = 0;
          v76 = 0;
          v77 = 0;
          *(a1 + 192) |= 8u;
          while (1)
          {
            v163 = 0;
            v78 = [a2 position] + 1;
            if (v78 >= [a2 position] && (v79 = objc_msgSend(a2, "position") + 1, v79 <= objc_msgSend(a2, "length")))
            {
              v80 = [a2 data];
              [v80 getBytes:&v163 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v77 |= (v163 & 0x7F) << v75;
            if ((v163 & 0x80) == 0)
            {
              break;
            }

            v75 += 7;
            v11 = v76++ >= 9;
            if (v11)
            {
              v19 = 0;
              goto LABEL_275;
            }
          }

          if ([a2 hasError])
          {
            v19 = 0;
          }

          else
          {
            v19 = v77;
          }

LABEL_275:
          v160 = 32;
          goto LABEL_333;
        case 9u:
          v135 = 0;
          v136 = 0;
          v137 = 0;
          *(a1 + 192) |= 0x20u;
          while (1)
          {
            v163 = 0;
            v138 = [a2 position] + 1;
            if (v138 >= [a2 position] && (v139 = objc_msgSend(a2, "position") + 1, v139 <= objc_msgSend(a2, "length")))
            {
              v140 = [a2 data];
              [v140 getBytes:&v163 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v137 |= (v163 & 0x7F) << v135;
            if ((v163 & 0x80) == 0)
            {
              break;
            }

            v135 += 7;
            v11 = v136++ >= 9;
            if (v11)
            {
              v19 = 0;
              goto LABEL_320;
            }
          }

          if ([a2 hasError])
          {
            v19 = 0;
          }

          else
          {
            v19 = v137;
          }

LABEL_320:
          v160 = 48;
          goto LABEL_333;
        case 0xAu:
          v50 = 0;
          v51 = 0;
          v52 = 0;
          *(a1 + 192) |= 0x10u;
          while (1)
          {
            v163 = 0;
            v53 = [a2 position] + 1;
            if (v53 >= [a2 position] && (v54 = objc_msgSend(a2, "position") + 1, v54 <= objc_msgSend(a2, "length")))
            {
              v55 = [a2 data];
              [v55 getBytes:&v163 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v52 |= (v163 & 0x7F) << v50;
            if ((v163 & 0x80) == 0)
            {
              break;
            }

            v50 += 7;
            v11 = v51++ >= 9;
            if (v11)
            {
              v19 = 0;
              goto LABEL_259;
            }
          }

          if ([a2 hasError])
          {
            v19 = 0;
          }

          else
          {
            v19 = v52;
          }

LABEL_259:
          v160 = 40;
          goto LABEL_333;
        case 0xBu:
          v129 = 0;
          v130 = 0;
          v131 = 0;
          *(a1 + 192) |= 0x80u;
          while (1)
          {
            v163 = 0;
            v132 = [a2 position] + 1;
            if (v132 >= [a2 position] && (v133 = objc_msgSend(a2, "position") + 1, v133 <= objc_msgSend(a2, "length")))
            {
              v134 = [a2 data];
              [v134 getBytes:&v163 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v131 |= (v163 & 0x7F) << v129;
            if ((v163 & 0x80) == 0)
            {
              break;
            }

            v129 += 7;
            v11 = v130++ >= 9;
            if (v11)
            {
              v19 = 0;
              goto LABEL_316;
            }
          }

          if ([a2 hasError])
          {
            v19 = 0;
          }

          else
          {
            v19 = v131;
          }

LABEL_316:
          v160 = 64;
          goto LABEL_333;
        case 0xCu:
          v32 = 0;
          v33 = 0;
          v34 = 0;
          *(a1 + 192) |= 0x10000u;
          while (1)
          {
            v163 = 0;
            v35 = [a2 position] + 1;
            if (v35 >= [a2 position] && (v36 = objc_msgSend(a2, "position") + 1, v36 <= objc_msgSend(a2, "length")))
            {
              v37 = [a2 data];
              [v37 getBytes:&v163 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v34 |= (v163 & 0x7F) << v32;
            if ((v163 & 0x80) == 0)
            {
              break;
            }

            v32 += 7;
            v11 = v33++ >= 9;
            if (v11)
            {
              v19 = 0;
              goto LABEL_247;
            }
          }

          if ([a2 hasError])
          {
            v19 = 0;
          }

          else
          {
            v19 = v34;
          }

LABEL_247:
          v160 = 136;
          goto LABEL_333;
        case 0xDu:
          v44 = 0;
          v45 = 0;
          v46 = 0;
          *(a1 + 192) |= 0x20000u;
          while (1)
          {
            v163 = 0;
            v47 = [a2 position] + 1;
            if (v47 >= [a2 position] && (v48 = objc_msgSend(a2, "position") + 1, v48 <= objc_msgSend(a2, "length")))
            {
              v49 = [a2 data];
              [v49 getBytes:&v163 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v46 |= (v163 & 0x7F) << v44;
            if ((v163 & 0x80) == 0)
            {
              break;
            }

            v44 += 7;
            v11 = v45++ >= 9;
            if (v11)
            {
              v19 = 0;
              goto LABEL_255;
            }
          }

          if ([a2 hasError])
          {
            v19 = 0;
          }

          else
          {
            v19 = v46;
          }

LABEL_255:
          v160 = 144;
          goto LABEL_333;
        case 0xEu:
          v111 = 0;
          v112 = 0;
          v113 = 0;
          *(a1 + 192) |= 0x100000u;
          while (1)
          {
            v163 = 0;
            v114 = [a2 position] + 1;
            if (v114 >= [a2 position] && (v115 = objc_msgSend(a2, "position") + 1, v115 <= objc_msgSend(a2, "length")))
            {
              v116 = [a2 data];
              [v116 getBytes:&v163 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v113 |= (v163 & 0x7F) << v111;
            if ((v163 & 0x80) == 0)
            {
              break;
            }

            v111 += 7;
            v11 = v112++ >= 9;
            if (v11)
            {
              v19 = 0;
              goto LABEL_304;
            }
          }

          if ([a2 hasError])
          {
            v19 = 0;
          }

          else
          {
            v19 = v113;
          }

LABEL_304:
          v160 = 168;
          goto LABEL_333;
        case 0xFu:
          v26 = 0;
          v27 = 0;
          v28 = 0;
          *(a1 + 192) |= 1u;
          while (1)
          {
            v163 = 0;
            v29 = [a2 position] + 1;
            if (v29 >= [a2 position] && (v30 = objc_msgSend(a2, "position") + 1, v30 <= objc_msgSend(a2, "length")))
            {
              v31 = [a2 data];
              [v31 getBytes:&v163 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v28 |= (v163 & 0x7F) << v26;
            if ((v163 & 0x80) == 0)
            {
              break;
            }

            v26 += 7;
            v11 = v27++ >= 9;
            if (v11)
            {
              v19 = 0;
              goto LABEL_243;
            }
          }

          if ([a2 hasError])
          {
            v19 = 0;
          }

          else
          {
            v19 = v28;
          }

LABEL_243:
          v160 = 8;
          goto LABEL_333;
        case 0x10u:
          v63 = 0;
          v64 = 0;
          v65 = 0;
          *(a1 + 192) |= 2u;
          while (1)
          {
            v163 = 0;
            v66 = [a2 position] + 1;
            if (v66 >= [a2 position] && (v67 = objc_msgSend(a2, "position") + 1, v67 <= objc_msgSend(a2, "length")))
            {
              v68 = [a2 data];
              [v68 getBytes:&v163 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v65 |= (v163 & 0x7F) << v63;
            if ((v163 & 0x80) == 0)
            {
              break;
            }

            v63 += 7;
            v11 = v64++ >= 9;
            if (v11)
            {
              v19 = 0;
              goto LABEL_267;
            }
          }

          if ([a2 hasError])
          {
            v19 = 0;
          }

          else
          {
            v19 = v65;
          }

LABEL_267:
          v160 = 16;
          goto LABEL_333;
        case 0x11u:
          v20 = 0;
          v21 = 0;
          v22 = 0;
          *(a1 + 192) |= 0x2000u;
          while (1)
          {
            v163 = 0;
            v23 = [a2 position] + 1;
            if (v23 >= [a2 position] && (v24 = objc_msgSend(a2, "position") + 1, v24 <= objc_msgSend(a2, "length")))
            {
              v25 = [a2 data];
              [v25 getBytes:&v163 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v22 |= (v163 & 0x7F) << v20;
            if ((v163 & 0x80) == 0)
            {
              break;
            }

            v20 += 7;
            v11 = v21++ >= 9;
            if (v11)
            {
              v19 = 0;
              goto LABEL_239;
            }
          }

          if ([a2 hasError])
          {
            v19 = 0;
          }

          else
          {
            v19 = v22;
          }

LABEL_239:
          v160 = 112;
          goto LABEL_333;
        case 0x12u:
          v87 = 0;
          v88 = 0;
          v89 = 0;
          *(a1 + 192) |= 0x1000u;
          while (1)
          {
            v163 = 0;
            v90 = [a2 position] + 1;
            if (v90 >= [a2 position] && (v91 = objc_msgSend(a2, "position") + 1, v91 <= objc_msgSend(a2, "length")))
            {
              v92 = [a2 data];
              [v92 getBytes:&v163 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v89 |= (v163 & 0x7F) << v87;
            if ((v163 & 0x80) == 0)
            {
              break;
            }

            v87 += 7;
            v11 = v88++ >= 9;
            if (v11)
            {
              v19 = 0;
              goto LABEL_288;
            }
          }

          if ([a2 hasError])
          {
            v19 = 0;
          }

          else
          {
            v19 = v89;
          }

LABEL_288:
          v160 = 104;
          goto LABEL_333;
        case 0x13u:
          v123 = 0;
          v124 = 0;
          v125 = 0;
          *(a1 + 192) |= 0x4000u;
          while (1)
          {
            v163 = 0;
            v126 = [a2 position] + 1;
            if (v126 >= [a2 position] && (v127 = objc_msgSend(a2, "position") + 1, v127 <= objc_msgSend(a2, "length")))
            {
              v128 = [a2 data];
              [v128 getBytes:&v163 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v125 |= (v163 & 0x7F) << v123;
            if ((v163 & 0x80) == 0)
            {
              break;
            }

            v123 += 7;
            v11 = v124++ >= 9;
            if (v11)
            {
              v19 = 0;
              goto LABEL_312;
            }
          }

          if ([a2 hasError])
          {
            v19 = 0;
          }

          else
          {
            v19 = v125;
          }

LABEL_312:
          v160 = 120;
          goto LABEL_333;
        case 0x14u:
          v147 = 0;
          v148 = 0;
          v149 = 0;
          *(a1 + 192) |= 0x200u;
          while (1)
          {
            v163 = 0;
            v150 = [a2 position] + 1;
            if (v150 >= [a2 position] && (v151 = objc_msgSend(a2, "position") + 1, v151 <= objc_msgSend(a2, "length")))
            {
              v152 = [a2 data];
              [v152 getBytes:&v163 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v149 |= (v163 & 0x7F) << v147;
            if ((v163 & 0x80) == 0)
            {
              break;
            }

            v147 += 7;
            v11 = v148++ >= 9;
            if (v11)
            {
              v19 = 0;
              goto LABEL_328;
            }
          }

          if ([a2 hasError])
          {
            v19 = 0;
          }

          else
          {
            v19 = v149;
          }

LABEL_328:
          v160 = 80;
          goto LABEL_333;
        case 0x15u:
          v93 = 0;
          v94 = 0;
          v95 = 0;
          *(a1 + 192) |= 4u;
          while (1)
          {
            v163 = 0;
            v96 = [a2 position] + 1;
            if (v96 >= [a2 position] && (v97 = objc_msgSend(a2, "position") + 1, v97 <= objc_msgSend(a2, "length")))
            {
              v98 = [a2 data];
              [v98 getBytes:&v163 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v95 |= (v163 & 0x7F) << v93;
            if ((v163 & 0x80) == 0)
            {
              break;
            }

            v93 += 7;
            v11 = v94++ >= 9;
            if (v11)
            {
              v19 = 0;
              goto LABEL_292;
            }
          }

          if ([a2 hasError])
          {
            v19 = 0;
          }

          else
          {
            v19 = v95;
          }

LABEL_292:
          v160 = 24;
          goto LABEL_333;
        case 0x16u:
          v105 = 0;
          v106 = 0;
          v107 = 0;
          *(a1 + 192) |= 0x800u;
          while (1)
          {
            v163 = 0;
            v108 = [a2 position] + 1;
            if (v108 >= [a2 position] && (v109 = objc_msgSend(a2, "position") + 1, v109 <= objc_msgSend(a2, "length")))
            {
              v110 = [a2 data];
              [v110 getBytes:&v163 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v107 |= (v163 & 0x7F) << v105;
            if ((v163 & 0x80) == 0)
            {
              break;
            }

            v105 += 7;
            v11 = v106++ >= 9;
            if (v11)
            {
              v19 = 0;
              goto LABEL_300;
            }
          }

          if ([a2 hasError])
          {
            v19 = 0;
          }

          else
          {
            v19 = v107;
          }

LABEL_300:
          v160 = 96;
          goto LABEL_333;
        case 0x17u:
          v141 = 0;
          v142 = 0;
          v143 = 0;
          *(a1 + 192) |= 0x400u;
          while (1)
          {
            v163 = 0;
            v144 = [a2 position] + 1;
            if (v144 >= [a2 position] && (v145 = objc_msgSend(a2, "position") + 1, v145 <= objc_msgSend(a2, "length")))
            {
              v146 = [a2 data];
              [v146 getBytes:&v163 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v143 |= (v163 & 0x7F) << v141;
            if ((v163 & 0x80) == 0)
            {
              break;
            }

            v141 += 7;
            v11 = v142++ >= 9;
            if (v11)
            {
              v19 = 0;
              goto LABEL_324;
            }
          }

          if ([a2 hasError])
          {
            v19 = 0;
          }

          else
          {
            v19 = v143;
          }

LABEL_324:
          v160 = 88;
          goto LABEL_333;
        case 0x18u:
          v153 = 0;
          v154 = 0;
          v155 = 0;
          *(a1 + 192) |= 0x100u;
          break;
        default:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_334;
      }

      while (1)
      {
        v163 = 0;
        v156 = [a2 position] + 1;
        if (v156 >= [a2 position] && (v157 = objc_msgSend(a2, "position") + 1, v157 <= objc_msgSend(a2, "length")))
        {
          v158 = [a2 data];
          [v158 getBytes:&v163 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v155 |= (v163 & 0x7F) << v153;
        if ((v163 & 0x80) == 0)
        {
          break;
        }

        v153 += 7;
        v11 = v154++ >= 9;
        if (v11)
        {
          v19 = 0;
          goto LABEL_332;
        }
      }

      v19 = [a2 hasError] ? 0 : v155;
LABEL_332:
      v160 = 72;
LABEL_333:
      *(a1 + v160) = v19;
LABEL_334:
      v162 = [a2 position];
    }

    while (v162 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_23264E42C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, id a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, id a50, char a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, id a63)
{
  objc_destroyWeak((v64 + 40));
  objc_destroyWeak((v63 + 40));
  objc_destroyWeak(&location);
  objc_destroyWeak((v66 + 40));
  objc_destroyWeak((v65 + 40));
  objc_destroyWeak(&a37);
  objc_destroyWeak(&a43);
  objc_destroyWeak(&a49);
  objc_destroyWeak(&a50);
  objc_destroyWeak(&a56);
  objc_destroyWeak(&a62);
  objc_destroyWeak(&a63);
  _Unwind_Resume(a1);
}

void sub_2326519C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_232652794(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t loadCarKit()
{
  if (loadCarKit_symbolLoadOnce != -1)
  {
    loadCarKit_cold_1();
  }

  return loadCarKit_symbolsLoaded;
}

void __loadCarKit_block_invoke()
{
  v19 = *MEMORY[0x277D85DE8];
  v0 = dlopen("/System/Library/PrivateFrameworks/CarKit.framework/CarKit", 6);
  v1 = getenv("DYLD_IMAGE_SUFFIX");
  v2 = v1;
  v3 = "out";
  if (!v0 && v1)
  {
    *__path = 0;
    v4 = asprintf(__path, "%s%s", "/System/Library/PrivateFrameworks/CarKit.framework/CarKit", v1);
    v0 = 0;
    v5 = *__path;
    if (v4 >= 1 && *__path)
    {
      v0 = dlopen(*__path, 6);
      v3 = "";
      v5 = *__path;
    }

    if (v5)
    {
      free(v5);
    }
  }

  if (!v0)
  {
    v12 = bbhLogHandle;
    if (!os_log_type_enabled(bbhLogHandle, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    *__path = 136315138;
    *&__path[4] = "/System/Library/PrivateFrameworks/CarKit.framework/CarKit";
    v8 = "Failed to load CarKit at %s";
    v9 = v12;
LABEL_18:
    v10 = OS_LOG_TYPE_ERROR;
    v11 = 12;
LABEL_19:
    _os_log_impl(&dword_23255B000, v9, v10, v8, __path, v11);
    goto LABEL_20;
  }

  ckCARAutomaticDNDStatusClass = objc_getClass("CARAutomaticDNDStatus");
  loadCarKit_symbolsLoaded = ckCARAutomaticDNDStatusClass != 0;
  dlclose(v0);
  v6 = bbhLogHandle;
  if (loadCarKit_symbolsLoaded != 1)
  {
    if (!os_log_type_enabled(bbhLogHandle, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    *__path = 136315138;
    *&__path[4] = "CARAutomaticDNDStatus";
    v8 = "Failed to load %s class from CarKit.";
    v9 = v6;
    goto LABEL_18;
  }

  if (os_log_type_enabled(bbhLogHandle, OS_LOG_TYPE_INFO))
  {
    v7 = "[null]";
    *__path = 136315650;
    if (v2)
    {
      v7 = v2;
    }

    *&__path[4] = "CARAutomaticDNDStatus";
    v15 = 2080;
    v16 = v3;
    v17 = 2080;
    v18 = v7;
    v8 = "Successfully loaded %s class from CarKit framework with%s suffix %s.";
    v9 = v6;
    v10 = OS_LOG_TYPE_INFO;
    v11 = 32;
    goto LABEL_19;
  }

LABEL_20:
  v13 = *MEMORY[0x277D85DE8];
}

void sub_2326549D0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 64));
  _Unwind_Resume(a1);
}

void sub_232656CE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t DefglobalCommandDefinitions(uint64_t a1)
{
  EnvDefineFunction2(a1, "set-reset-globals", 98, SetResetGlobalsCommand, "SetResetGlobalsCommand", "11");
  EnvDefineFunction2(a1, "get-reset-globals", 98, GetResetGlobalsCommand, "GetResetGlobalsCommand", "00");

  return EnvDefineFunction2(a1, "show-defglobals", 118, ShowDefglobalsCommand, "ShowDefglobalsCommand", "01w");
}

uint64_t SetResetGlobalsCommand(uint64_t a1)
{
  v8 = 0u;
  v9 = 0u;
  v7 = 0u;
  v2 = *(*(*(a1 + 48) + 8) + 20);
  if (EnvArgCountCheck(a1, "set-reset-globals", 0, 1) != -1)
  {
    EnvRtnUnknown(a1, 1, &v7);
    v3 = v8;
    v5 = v3 != EnvFalseSymbol(a1) || WORD4(v7) != 2;
    *(*(*(a1 + 48) + 8) + 20) = v5;
  }

  return v2;
}

uint64_t GetResetGlobalsCommand(uint64_t a1)
{
  v1 = *(*(*(a1 + 48) + 8) + 20);
  EnvArgCountCheck(a1, "get-reset-globals", 0, 0);
  return v1;
}

uint64_t ShowDefglobalsCommand(uint64_t a1)
{
  v3 = 0;
  result = EnvArgCountCheck(a1, "show-defglobals", 2u, 1);
  if (result != -1)
  {
    if (result == 1)
    {
      result = GetModuleName(a1, "show-defglobals", 1, &v3);
      if (v3)
      {
        return result;
      }
    }

    else
    {
      result = EnvGetCurrentModule(a1);
    }

    return EnvShowDefglobals(a1, "wdisplay", result);
  }

  return result;
}

uint64_t EnvSetResetGlobals(uint64_t a1, int a2)
{
  v2 = *(*(a1 + 48) + 8);
  result = *(v2 + 20);
  *(v2 + 20) = a2;
  return result;
}

uint64_t EnvShowDefglobals(uint64_t a1, FILE *a2, uint64_t a3)
{
  v6 = a3;
  if (a3 || (result = EnvGetNextDefmodule(a1, 0), (v6 = result) != 0))
  {
    while (1)
    {
      if (!a3)
      {
        ConstructNameString = EnvGetConstructNameString(a1, v6);
        EnvPrintRouter(a1, a2, ConstructNameString);
        EnvPrintRouter(a1, a2, ":\n");
      }

      result = GetModuleItem(a1, v6, *(*(*(a1 + 48) + 8) + 8));
      v9 = *(result + 8);
      if (v9)
      {
        break;
      }

LABEL_10:
      if (!a3)
      {
        result = EnvGetNextDefmodule(a1, v6);
        v6 = result;
        if (result)
        {
          continue;
        }
      }

      return result;
    }

    while (*(*(*(a1 + 48) + 352) + 12) != 1)
    {
      if (!a3)
      {
        EnvPrintRouter(a1, a2, "   ");
      }

      EnvPrintRouter(a1, a2, "?*");
      EnvPrintRouter(a1, a2, *(*v9 + 24));
      EnvPrintRouter(a1, a2, "* = ");
      PrintDataObject(a1, a2, (v9 + 8), v15, v10, v11, v12, v13, v14);
      result = EnvPrintRouter(a1, a2, "\n");
      v9 = v9[4];
      if (!v9)
      {
        goto LABEL_10;
      }
    }
  }

  return result;
}

uint64_t FactCommandDefinitions(uint64_t a1)
{
  EnvDefineFunction2(a1, "facts", 118, FactsCommand, "FactsCommand", "*4iu");
  EnvDefineFunction(a1, "assert", 117, AssertCommand, "AssertCommand");
  EnvDefineFunction2(a1, "retract", 118, RetractCommand, "RetractCommand", "1*z");
  EnvDefineFunction2(a1, "assert-string", 117, AssertStringFunction, "AssertStringFunction", "11s");
  EnvDefineFunction2(a1, "str-assert", 117, AssertStringFunction, "AssertStringFunction", "11s");
  EnvDefineFunction2(a1, "get-fact-duplication", 98, GetFactDuplicationCommand, "GetFactDuplicationCommand", "00");
  EnvDefineFunction2(a1, "set-fact-duplication", 98, SetFactDuplicationCommand, "SetFactDuplicationCommand", "11");
  EnvDefineFunction2(a1, "save-facts", 98, SaveFactsCommand, "SaveFactsCommand", "1*wk");
  EnvDefineFunction2(a1, "load-facts", 98, LoadFactsCommand, "LoadFactsCommand", "11k");
  EnvDefineFunction2(a1, "fact-index", 103, FactIndexFunction, "FactIndexFunction", "11y");
  AddFunctionParser(a1, "assert", AssertParse);

  return FuncSeqOvlFlags(a1, "assert", 0, 0);
}

uint64_t FactsCommand(char *a1)
{
  result = EnvArgCountCheck(a1, "facts", 2u, 4);
  if (result == -1)
  {
    return result;
  }

  v3 = result;
  CurrentModule = EnvGetCurrentModule(a1);
  if (!v3)
  {

    return EnvFacts(a1, "wdisplay", CurrentModule, -1, -1, -1);
  }

  v10 = 0u;
  v11 = 0u;
  v9 = 0u;
  EnvRtnUnknown(a1, 1, &v9);
  if (WORD4(v9) == 1)
  {
    v5 = *(v10 + 24);
    if ((v5 & 0x8000000000000000) == 0)
    {
      v6 = 0;
LABEL_13:
      result = GetFactsArgument(a1, v6 | 2u, v3);
      if (result != -2)
      {
        v7 = result;
        result = GetFactsArgument(a1, v6 + 3, v3);
        if (result != -2)
        {
          return EnvFacts(a1, "wdisplay", CurrentModule, v5, v7, result);
        }
      }

      return result;
    }

LABEL_16:
    ExpectedTypeError1(a1, "facts", 1, "symbol or positive number");
    SetHaltExecution(a1, 1);
    return SetEvaluationError(a1, 1);
  }

  if (WORD4(v9) != 2)
  {
    goto LABEL_16;
  }

  CurrentModule = EnvFindDefmodule(a1, *(v10 + 24));
  if (!CurrentModule)
  {
    v8 = *(v10 + 24);
    if (*v8 != 42 || v8[1])
    {
      SetEvaluationError(a1, 1);
      return CantFindItemErrorMessage(a1, "defmodule", *(v10 + 24));
    }
  }

  result = GetFactsArgument(a1, 2, v3);
  if (result != -2)
  {
    v5 = result;
    v6 = 1;
    goto LABEL_13;
  }

  return result;
}

void *AssertCommand(uint64_t a1, uint64_t a2)
{
  v17 = 0u;
  v18 = 0u;
  v16 = 0u;
  *(a2 + 8) = 2;
  *(a2 + 16) = EnvFalseSymbol(a1);
  v4 = *(**(*(a1 + 48) + 352) + 16);
  v5 = *(v4 + 8);
  if (*(v5 + 56))
  {
    CreateFactBySize(a1, 1u);
    v7 = v9;
    if (*(v4 + 24))
    {
      v8 = 0;
    }

    else
    {
      *(v9 + 128) = 4;
      v8 = 0;
      *(v9 + 136) = CreateMultifield2(a1, 0);
    }
  }

  else
  {
    CreateFactBySize(a1, *(v5 + 58));
    v7 = v6;
    v8 = *(v5 + 48);
  }

  v7[4] = v5;
  EnvIncrementClearReadyLocks(a1);
  v10 = *(v4 + 24);
  if (v10)
  {
    v11 = 0;
    v12 = v7 + 17;
    do
    {
      EvaluateExpression(a1, v10, &v16);
      if (v8)
      {
        v13 = WORD4(v16);
        if ((*(v8 + 8) & 1) != 0 || WORD4(v16) != 4)
        {
          v14 = v17;
        }

        else
        {
          MultiIntoSingleFieldSlotError(a1, v8, v5);
          WORD4(v16) = 2;
          v14 = EnvFalseSymbol(a1);
          *&v17 = v14;
          v11 = 1;
          v13 = WORD4(v16);
        }

        *(v12 - 4) = v13;
        *v12 = v14;
        v8 = *(v8 + 40);
      }

      else
      {
        *(v12 - 4) = WORD4(v16);
        *v12 = v17;
      }

      v10 = *(v10 + 24);
      v12 += 2;
    }

    while (v10);
    EnvDecrementClearReadyLocks(a1);
    if (v11)
    {
      return ReturnFact(a1, v7);
    }
  }

  else
  {
    EnvDecrementClearReadyLocks(a1);
  }

  result = EnvAssert(a1, v7);
  if (result)
  {
    *(a2 + 8) = 6;
    *(a2 + 16) = result;
  }

  return result;
}

uint64_t RetractCommand(uint64_t result)
{
  v19 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v15 = 0u;
  v1 = *(**(*(result + 48) + 352) + 16);
  if (v1)
  {
    v2 = result;
    v3 = 1;
    while (1)
    {
      EvaluateExpression(v2, v1, &v15);
      if (WORD4(v15) == 6)
      {
        break;
      }

      if (WORD4(v15) == 2)
      {
        v13 = *(v16 + 24);
        if (*v13 == 42 && !v13[1])
        {
          result = RemoveAllFacts(v2);
          goto LABEL_19;
        }
      }

      else if (WORD4(v15) == 1)
      {
        v4 = *(v16 + 24);
        if (v4 < 0)
        {
          result = ExpectedTypeError1(v2, "retract", v3, "fact-address, fact-index, or the symbol *");
          goto LABEL_19;
        }

        IndexedFact = FindIndexedFact(v2, *(v16 + 24));
        if (!IndexedFact)
        {
          gensprintf(v18, "f-%lld", v6, v7, v8, v9, v10, v11, v4);
          result = CantFindItemErrorMessage(v2, "fact", v18);
          goto LABEL_14;
        }

        v12 = IndexedFact;
        goto LABEL_13;
      }

      ExpectedTypeError1(v2, "retract", v3, "fact-address, fact-index, or the symbol *");
      result = SetEvaluationError(v2, 1);
LABEL_14:
      ++v3;
      v1 = *(v1 + 24);
      if (!v1)
      {
        goto LABEL_19;
      }
    }

    v12 = v16;
LABEL_13:
    result = EnvRetract(v2, v12);
    goto LABEL_14;
  }

LABEL_19:
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t AssertStringFunction(uint64_t a1, uint64_t a2)
{
  *(a2 + 8) = 2;
  *(a2 + 16) = EnvFalseSymbol(a1);
  result = EnvArgCountCheck(a1, "assert-string", 0, 1);
  if (result != -1)
  {
    v6 = 0u;
    v7 = 0u;
    v5 = 0u;
    result = EnvArgTypeCheck(a1, "assert-string", 1, 3, &v5);
    if (result)
    {
      result = EnvAssertString(a1, *(v6 + 24));
      if (result)
      {
        *(a2 + 8) = 6;
        *(a2 + 16) = result;
      }
    }
  }

  return result;
}

uint64_t GetFactDuplicationCommand(uint64_t a1)
{
  FactDuplication = EnvGetFactDuplication(a1);
  EnvArgCountCheck(a1, "get-fact-duplication", 0, 0);
  return FactDuplication;
}

uint64_t SetFactDuplicationCommand(uint64_t a1)
{
  FactDuplication = EnvGetFactDuplication(a1);
  if (EnvArgCountCheck(a1, "set-fact-duplication", 0, 1) != -1)
  {
    v8 = 0u;
    v9 = 0u;
    v7 = 0u;
    EnvRtnUnknown(a1, 1, &v7);
    v3 = v8;
    v5 = v3 != EnvFalseSymbol(a1) || WORD4(v7) != 2;
    EnvSetFactDuplication(a1, v5);
  }

  return FactDuplication;
}

uint64_t SaveFactsCommand(uint64_t a1)
{
  v2 = EnvArgCountCheck(a1, "save-facts", 1u, 1);
  if (v2 == -1)
  {
    return 0;
  }

  v3 = v2;
  result = GetFileName(a1, "save-facts", 1);
  if (result)
  {
    v5 = result;
    v10 = 0u;
    v11 = 0u;
    v9 = 0u;
    if (v3 < 2)
    {
      v7 = 0;
      v8 = 1;
    }

    else
    {
      result = EnvArgTypeCheck(a1, "save-facts", 2, 2, &v9);
      if (!result)
      {
        return result;
      }

      v6 = *(v10 + 24);
      if (!strcmp(v6, "local"))
      {
        v8 = 1;
      }

      else
      {
        if (strcmp(v6, "visible"))
        {
          ExpectedTypeError1(a1, "save-facts", 2, "symbol with value local or visible");
          return 0;
        }

        v8 = 2;
      }

      if (v3 == 2)
      {
        v7 = 0;
      }

      else
      {
        v7 = *(*(*(**(*(a1 + 48) + 352) + 16) + 24) + 24);
      }
    }

    return EnvSaveFactsDriver(a1, v5, v8, v7);
  }

  return result;
}

BOOL LoadFactsCommand(uint64_t a1)
{
  if (EnvArgCountCheck(a1, "load-facts", 0, 1) == -1)
  {
    return 0;
  }

  FileName = GetFileName(a1, "load-facts", 1);
  if (!FileName)
  {
    return 0;
  }

  return EnvLoadFacts(a1, FileName);
}

uint64_t FactIndexFunction(uint64_t a1)
{
  if (EnvArgCountCheck(a1, "fact-index", 0, 1) != -1)
  {
    v4 = 0u;
    v5 = 0u;
    v3 = 0u;
    EnvRtnUnknown(a1, 1, &v3);
    if (WORD4(v3) == 6)
    {
      if ((*(v4 + 64) & 1) == 0)
      {
        return EnvFactIndex(a1, v4);
      }
    }

    else
    {
      ExpectedTypeError1(a1, "fact-index", 1, "fact-address");
    }
  }

  return -1;
}

void *AssertParse(char *a1, uint64_t a2, char *a3)
{
  v8 = 0;
  memset(v7, 0, sizeof(v7));
  ReturnExpression(a1, a2);
  SavePPBuffer(a1, " ");
  IncrementIndentDepth(a1, 8);
  v5 = BuildRHSAssert(a1, a3, v7, &v8, 1, 1, "assert command");
  DecrementIndentDepth(a1, 8);
  return v5;
}

uint64_t GetFactsArgument(uint64_t a1, int a2, int a3)
{
  if (a2 > a3)
  {
    return -1;
  }

  v11 = v3;
  v12 = v4;
  v9 = 0u;
  v10 = 0u;
  v8 = 0u;
  if (EnvArgTypeCheck(a1, "facts", a2, 1, &v8))
  {
    result = *(v9 + 24);
    if ((result & 0x8000000000000000) == 0)
    {
      return result;
    }

    ExpectedTypeError1(a1, "facts", a2, "positive number");
    SetHaltExecution(a1, 1);
    SetEvaluationError(a1, 1);
  }

  return -2;
}

uint64_t EnvSaveFactsDriver(uint64_t a1, char *a2, int a3, uint64_t a4)
{
  v8 = GenOpen(a1, a2, "w");
  if (!v8)
  {
    OpenErrorMessage(a1, "save-facts", a2);
    return 0;
  }

  v9 = v8;
  SetFastSave(a1, v8);
  v10 = *(*(a1 + 48) + 424);
  v12 = *v10;
  v11 = v10[1];
  *v10 = 0x100000001;
  v13 = v10[2];
  v10[2] = 1;
  v32 = v12;
  v33 = v11;
  v31 = v13;
  if (!a4)
  {
    LODWORD(v15) = 0;
    ptr = 0;
LABEL_18:
    CurrentModule = EnvGetCurrentModule(a1);
    NextFactInScope = GetNextFactInScope(a1, 0);
    if (!NextFactInScope)
    {
LABEL_30:
      v27 = *(*(a1 + 48) + 424);
      *v27 = v32;
      v27[1] = v33;
      v27[2] = v31;
      GenClose(a1, v9);
      SetFastSave(a1, 0);
      if (a4)
      {
        rm(a1, ptr, 48 * v15);
      }

      return 1;
    }

    v24 = NextFactInScope;
    while (1)
    {
      if (a3 == 1 && **(*(v24 + 32) + 16) != CurrentModule)
      {
        goto LABEL_29;
      }

      if (!a4)
      {
        goto LABEL_28;
      }

      if (v15 >= 1)
      {
        break;
      }

LABEL_29:
      v24 = GetNextFactInScope(a1, v24);
      if (!v24)
      {
        goto LABEL_30;
      }
    }

    v25 = v15;
    v26 = ptr + 2;
    while (*v26 != *(v24 + 32))
    {
      v26 += 6;
      if (!--v25)
      {
        goto LABEL_29;
      }
    }

LABEL_28:
    PrintFact(a1, v9, v24, 0, 0);
    EnvPrintRouter(a1, v9, "\n");
    goto LABEL_29;
  }

  v14 = 0;
  v15 = 0;
  v16 = a4;
  do
  {
    v16 = *(v16 + 24);
    ++v15;
    v14 += 48;
  }

  while (v16);
  v17 = gm3(a1, v14);
  v18 = 0;
  v19 = 0;
  v35 = 0;
  ptr = v17;
  v20 = a4;
  while (1)
  {
    EvaluateExpression(a1, v20, v17);
    if (*(*(*(a1 + 48) + 352) + 8))
    {
      break;
    }

    if (*(v17 + 4) != 2)
    {
      v29 = "symbol";
      goto LABEL_35;
    }

    if (a3 == 2)
    {
      ImportedConstruct = FindImportedConstruct(a1, "deftemplate", 0, *(v17[2] + 24), &v35, 1, 0);
      if (!ImportedConstruct)
      {
        v29 = "visible deftemplate name";
        goto LABEL_35;
      }

LABEL_13:
      v19 = ImportedConstruct;
      goto LABEL_14;
    }

    if (a3 == 1)
    {
      ImportedConstruct = EnvFindDeftemplateInModule(a1, *(v17[2] + 24));
      if (!ImportedConstruct)
      {
        v29 = "local deftemplate name";
LABEL_35:
        ExpectedTypeError1(a1, "save-facts", v18 + 3, v29);
        break;
      }

      goto LABEL_13;
    }

LABEL_14:
    *(v17 + 4) = 63;
    v17[2] = v19;
    v20 = *(v20 + 24);
    ++v18;
    v17 += 6;
    if (v15 == v18)
    {
      goto LABEL_18;
    }
  }

  rm(a1, ptr, v14);
  v30 = *(*(a1 + 48) + 424);
  *v30 = v32;
  v30[1] = v33;
  v30[2] = v31;
  GenClose(a1, v9);
  SetFastSave(a1, 0);
  return 0;
}

BOOL EnvLoadFacts(uint64_t a1, char *a2)
{
  v4 = GenOpen(a1, a2, "r");
  if (v4)
  {
    v5 = v4;
    v9[0] = 170;
    v9[1] = 0;
    v9[2] = 0;
    memset(v8, 0, sizeof(v8));
    SetFastLoad(a1, v4);
    do
    {
      Fact = StandardLoadFact(a1, v5, v9);
      if (Fact)
      {
        EvaluateExpression(a1, Fact, v8);
      }

      else
      {
        LOWORD(v9[0]) = 172;
      }

      ReturnExpression(a1, Fact);
    }

    while (LOWORD(v9[0]) != 172);
    SetFastLoad(a1, 0);
    GenClose(a1, v5);
    return *(*(*(a1 + 48) + 352) + 8) == 0;
  }

  else
  {
    OpenErrorMessage(a1, "load-facts", a2);
    return 0;
  }
}

void *StandardLoadFact(uint64_t a1, char *a2, unsigned __int16 *a3)
{
  v9 = 0;
  GetToken(a1, a2, a3);
  if (*a3 != 170)
  {
    return 0;
  }

  Function = FindFunction(a1, "assert");
  v7 = GenConstant(a1, 30, Function);
  v7[2] = GetRHSPattern(a1, a2, a3, &v9, 1, 0, 1, 171);
  if (v9 == 1)
  {
    EnvPrintRouter(a1, "werror", "Function load-facts encountered an error\n");
    SetEvaluationError(a1, 1);
LABEL_5:
    ReturnExpression(a1, v7);
    return 0;
  }

  if (ExpressionContainsVariables(v7, 1))
  {
    goto LABEL_5;
  }

  return v7;
}

uint64_t EnvLoadFactsFromString(uint64_t a1, char *__s, uint64_t a3)
{
  if (a3 == -1)
  {
    result = OpenStringSource(a1, "*** load-facts-from-string ***", __s, 0);
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = OpenTextSource(a1, "*** load-facts-from-string ***", __s, 0, a3);
    if (!result)
    {
      return result;
    }
  }

  v7[1] = 0;
  v7[2] = 0;
  memset(v6, 0, sizeof(v6));
  v7[0] = 170;
  do
  {
    Fact = StandardLoadFact(a1, "*** load-facts-from-string ***", v7);
    if (Fact)
    {
      EvaluateExpression(a1, Fact, v6);
    }

    else
    {
      LOWORD(v7[0]) = 172;
    }

    ReturnExpression(a1, Fact);
  }

  while (LOWORD(v7[0]) != 172);
  CloseStringSource(a1, "*** load-facts-from-string ***");
  return *(*(*(a1 + 48) + 352) + 8) == 0;
}

uint64_t ParseRuleLHS(uint64_t a1, char *a2, uint64_t a3, char *a4, int *a5)
{
  v17 = 0;
  *a5 = 0;
  v10 = *(*(a1 + 48) + 152);
  *(v10 + 92) = 0;
  *(v10 + 96) = 0;
  *(v10 + 104) = 0;
  SetIndentDepth(a1, 3);
  *a5 = 0;
  if (*a3 == 2)
  {
    v11 = *(*(a3 + 8) + 24);
    if (*v11 == 61 && v11[1] == 62 && !v11[2])
    {
      goto LABEL_8;
    }
  }

  v12 = LHSPattern(a1, a2, 2, "=>", a5, 1, a3, a4);
  if (*a5 == 1 || (PPCRAndIndent(a1), v13 = GroupPatterns(a1, a2, 2, "=>", a5), v14 = *a5, *a5 == 1))
  {
    ReturnLHSParseNodes(a1, v12);
LABEL_8:
    v12 = 0;
LABEL_9:
    v14 = *a5;
    v15 = v12;
    goto LABEL_10;
  }

  v15 = v13;
  if (v12)
  {
    *(v12 + 200) = v13;
    goto LABEL_9;
  }

LABEL_10:
  if (v14)
  {
    return 0;
  }

  else
  {
    return ReorderPatterns(a1, v15, &v17);
  }
}

uint64_t PropagatePatternType(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v3 = result;
    do
    {
      v3[6] = a2;
      v4 = v3[24];
      if (v4)
      {
        PropagatePatternType(v4, a2);
      }

      result = v3[21];
      if (result)
      {
        result = PropagatePatternType(result, a2);
      }

      v3 = v3[25];
    }

    while (v3);
  }

  return result;
}

uint64_t LHSPattern(uint64_t a1, char *a2, int a3, const char *a4, _DWORD *a5, int a6, uint64_t a7, char *a8)
{
  v62 = 0;
  v63 = 0;
  __s1 = 0;
  if (a7)
  {
    CopyToken(&v62, a7);
  }

  else
  {
    GetToken(a1, a2, &v62);
  }

  if (v62 == 35)
  {
    if (*(*(*(a1 + 48) + 152) + 88))
    {
      PrintErrorID(a1, "RULELHS", 2, 1);
      EnvPrintRouter(a1, "werror", "A pattern CE cannot be bound to a pattern-address within a not CE\n");
      v16 = 0;
      *a5 = 1;
      goto LABEL_123;
    }

    v18 = v63;
    v68 = 0uLL;
    *&v69 = 0;
    SavePPBuffer(a1, " ");
    GetToken(a1, a2, &v68);
    if (v68 != 2 || (v19 = *(*(&v68 + 1) + 24), *v19 != 60) || v19[1] != 45 || v19[2] || (SavePPBuffer(a1, " "), GetToken(a1, a2, &v68), v68 != 170))
    {
      SyntaxErrorMessage(a1, "binding patterns");
      v16 = 0;
      *a5 = 1;
      goto LABEL_123;
    }

    GetToken(a1, a2, &v68);
    v20 = SimplePatternParse(a1, a2, &v68, a5);
    v16 = v20;
    if (*a5 != 1)
    {
      *(v20 + 8) = v18;
      goto LABEL_123;
    }

    goto LABEL_93;
  }

  if (v62 != 170)
  {
    if (v62 == a3 && !strcmp(__s1, a4))
    {
      return 0;
    }

    v17 = "defrule";
    goto LABEL_25;
  }

  GetToken(a1, a2, &v62);
  if (v62 != 2)
  {
    v17 = "the first field of a pattern";
LABEL_25:
    SyntaxErrorMessage(a1, v17);
    v16 = 0;
    *a5 = 1;
    return v16;
  }

  v15 = *(v63 + 24);
  if (!a6 || strcmp(*(v63 + 24), "declare"))
  {
    if (strcmp(v15, "test"))
    {
      if (strcmp(v15, "and") && strcmp(v15, "logical") && strcmp(v15, "not") && strcmp(v15, "exists") && strcmp(v15, "forall") && (*v15 != 111 || *(v15 + 1) != 114 || *(v15 + 2)))
      {
        v16 = SimplePatternParse(a1, a2, &v62, a5);
        goto LABEL_123;
      }

      IncrementIndentDepth(a1, 5);
      v21 = *(v63 + 24);
      if (*v21 == 111 && *(v21 + 1) == 114 && !*(v21 + 2))
      {
        SavePPBuffer(a1, "  ");
        v22 = 0;
        v23 = 0;
        v24 = 0;
        v59 = 152;
        v60 = 1;
        v25 = "the or conditional element";
      }

      else if (!strcmp(*(v63 + 24), "and"))
      {
        SavePPBuffer(a1, " ");
        v22 = 0;
        v23 = 0;
        v24 = 0;
        v59 = 0x100000097;
        v60 = 0;
        v25 = "the and conditional element";
      }

      else if (!strcmp(v21, "not"))
      {
        SavePPBuffer(a1, " ");
        v60 = 0;
        v23 = 0;
        v24 = 0;
        v59 = 153;
        v22 = 1;
        v25 = "the not conditional element";
      }

      else if (!strcmp(v21, "exists"))
      {
        PPCRAndIndent(a1);
        v60 = 0;
        v22 = 0;
        v24 = 0;
        v59 = 156;
        v23 = 1;
        v25 = "the exists conditional element";
      }

      else if (!strcmp(v21, "forall"))
      {
        PPCRAndIndent(a1);
        v60 = 0;
        v22 = 0;
        v23 = 0;
        v59 = 157;
        v24 = 1;
        v25 = "the forall conditional element";
      }

      else
      {
        if (!strcmp(v21, "logical"))
        {
          PPCRAndIndent(a1);
          v49 = *(*(a1 + 48) + 152);
          v50 = *(v49 + 88);
          v40 = (v49 + 88);
          if (v50)
          {
            PrintErrorID(a1, "RULELHS", 1, 1);
            EnvPrintRouter(a1, "werror", "The logical CE cannot be used within a not/exists/forall CE.\n");
            goto LABEL_107;
          }

          v41 = 0;
          v24 = 0;
          v23 = 0;
          v22 = 0;
          v38 = 1;
          v60 = 0;
          v61 = 8;
          LOWORD(v59) = 151;
          HIDWORD(v59) = 1;
          v25 = "the logical conditional element";
          goto LABEL_89;
        }

        v60 = 0;
        v22 = 0;
        v23 = 0;
        v24 = 0;
        v59 = 0;
        v25 = 0;
      }

      v61 = 0;
      v38 = 0;
      v39 = *(*(a1 + 48) + 152);
      v42 = *(v39 + 88);
      v40 = (v39 + 88);
      v41 = v42;
      if (v24)
      {
LABEL_91:
        *v40 = 1;
LABEL_92:
        v16 = GroupPatterns(a1, a2, 171, ")", a5);
        *(*(*(a1 + 48) + 152) + 88) = v41;
        DecrementIndentDepth(a1, 5);
        if (*a5 == 1)
        {
          goto LABEL_93;
        }

        if (v38)
        {
          TagLHSLogicalNodes(v16);
        }

        if (v16)
        {
          if ((!v22 || !*(v16 + 200)) && (!v24 || *(v16 + 200)))
          {
            if ((v60 | HIDWORD(v59)) == 1 && !*(v16 + 200))
            {
              *(v16 + 16) = *(v16 + 16) & 0xFFFFFFF7 | v61;
            }

            else
            {
              GetLHSParseNode(a1);
              v44 = v43;
              *(v43 + 16) = *(v43 + 16) & 0xFFFFFFF7 | v61;
              if ((v60 | HIDWORD(v59) | v22) == 1)
              {
                *v43 = v59;
                *(v43 + 192) = v16;
              }

              else if (v23)
              {
                *v43 = 153;
                GetLHSParseNode(a1);
                *(v44 + 192) = v45;
                *v45 = 153;
                *(v45 + 16) = *(v45 + 16) & 0xFFFFFFF7 | v61;
                if (*(v16 + 200))
                {
                  GetLHSParseNode(a1);
                  *(*(v44 + 192) + 192) = v46;
                  v47 = *(*(v44 + 192) + 192);
                  *v47 = 151;
                  *(v47 + 16) = *(v47 + 16) & 0xFFFFFFF7 | v61;
                  v48 = *(*(v44 + 192) + 192);
                }

                else
                {
                  v48 = *(v44 + 192);
                }

                *(v48 + 192) = v16;
              }

              else if (v24)
              {
                *v43 = 153;
                v52 = *(v16 + 200);
                *(v16 + 200) = 0;
                GetLHSParseNode(a1);
                *(v44 + 192) = v53;
                *v53 = 151;
                *(v53 + 16) = *(v53 + 16) & 0xFFFFFFF7 | v61;
                *(*(v44 + 192) + 192) = v16;
                GetLHSParseNode(a1);
                *(*(*(v44 + 192) + 192) + 200) = v54;
                *v54 = 153;
                *(v54 + 16) = *(v54 + 16) & 0xFFFFFFF7 | v61;
                v55 = *(*(*(v44 + 192) + 192) + 200);
                if (*(v52 + 200))
                {
                  GetLHSParseNode(a1);
                  *(v55 + 192) = v56;
                  *v56 = 151;
                  *(v56 + 16) = *(v56 + 16) & 0xFFFFFFF7 | v61;
                  *(*(v55 + 192) + 192) = v52;
                }

                else
                {
                  *(v55 + 192) = v52;
                }
              }

              v16 = v44;
            }

            goto LABEL_123;
          }

          SyntaxErrorMessage(a1, v25);
          ReturnLHSParseNodes(a1, v16);
        }

        else
        {
          SyntaxErrorMessage(a1, v25);
        }

LABEL_107:
        v16 = 0;
        *a5 = 1;
        goto LABEL_124;
      }

LABEL_89:
      if ((v23 & 1) == 0 && !v22)
      {
        goto LABEL_92;
      }

      goto LABEL_91;
    }

    v68 = 0uLL;
    *&v69 = 0;
    SavePPBuffer(a1, " ");
    GetLHSParseNode(a1);
    v16 = v26;
    *v26 = 154;
    v27 = Function0Parse(a1, a2);
    *(v16 + 168) = ExpressionToLHSParseNodes(a1, v27);
    ReturnExpression(a1, v27);
    if (*(v16 + 168))
    {
      GetToken(a1, a2, &v68);
      if (v68 == 171)
      {
        goto LABEL_123;
      }

      SyntaxErrorMessage(a1, "test conditional element");
    }

    *a5 = 1;
LABEL_93:
    ReturnLHSParseNodes(a1, v16);
    goto LABEL_122;
  }

  if (!a8)
  {
    SystemError(a1, "RULELHS", 1);
  }

  v65 = 0;
  v66 = 0;
  __s = 0;
  SavePPBuffer(a1, " ");
  GetToken(a1, a2, &v65);
  if (v65 != 170)
  {
LABEL_121:
    SyntaxErrorMessage(a1, "declare statement");
    *a5 = 1;
    goto LABEL_122;
  }

  GetToken(a1, a2, &v65);
  if (v65 != 2)
  {
LABEL_82:
    SyntaxErrorMessage(a1, "declare statement");
    goto LABEL_83;
  }

  v28 = 0;
  v29 = 0;
  while (1)
  {
    v30 = *(v66 + 24);
    if (strcmp(v30, "salience"))
    {
      if (strcmp(v30, "auto-focus"))
      {
        goto LABEL_82;
      }

      if (v29)
      {
        v58 = "auto-focus declaration";
        goto LABEL_133;
      }

      v68 = 0uLL;
      *&v69 = 0;
      SavePPBuffer(a1, " ");
      GetToken(a1, a2, &v68);
      if (v68 == 2)
      {
        v31 = *(*(&v68 + 1) + 24);
        if (!strcmp(v31, "TRUE"))
        {
          *(*(*(a1 + 48) + 152) + 96) = 1;
          goto LABEL_68;
        }

        if (!strcmp(v31, "FALSE"))
        {
          *(*(*(a1 + 48) + 152) + 96) = 0;
          goto LABEL_68;
        }
      }

      SyntaxErrorMessage(a1, "auto-focus statement");
      *a5 = 1;
LABEL_68:
      v29 = 1;
      goto LABEL_72;
    }

    if (v28)
    {
      break;
    }

    SavePPBuffer(a1, " ");
    v32 = ParseAtomOrExpression(a1, a2, 0);
    v33 = *(a1 + 48);
    *(*(v33 + 152) + 104) = v32;
    if (*(*(v33 + 152) + 104))
    {
      v69 = 0u;
      v70 = 0u;
      v68 = 0u;
      SetEvaluationError(a1, 0);
      if (EvaluateExpression(a1, *(*(*(a1 + 48) + 152) + 104), &v68))
      {
        SalienceInformationError(a1, "defrule", a8);
      }

      else if (WORD4(v68) == 1)
      {
        v34 = *(v69 + 24);
        if ((v34 - 10001) > 0xFFFFB1DE)
        {
          v35 = *(*(a1 + 48) + 152);
          v36 = *(v35 + 104);
          if (*v36 == 1)
          {
            ReturnExpression(a1, v36);
            v37 = *(a1 + 48);
            *(*(v37 + 152) + 104) = 0;
            v35 = *(v37 + 152);
          }

          *(v35 + 92) = v34;
          goto LABEL_71;
        }

        SalienceRangeError(a1, 240, 16);
      }

      else
      {
        SalienceNonIntegerError(a1);
      }
    }

    *a5 = 1;
LABEL_71:
    v28 = 1;
LABEL_72:
    if (*a5)
    {
      goto LABEL_84;
    }

    GetToken(a1, a2, &v65);
    if (v65 != 171)
    {
      PPBackup(a1);
      SavePPBuffer(a1, " ");
      SavePPBuffer(a1, __s);
LABEL_120:
      ReturnExpression(a1, *(*(*(a1 + 48) + 152) + 104));
      *(*(*(a1 + 48) + 152) + 104) = 0;
      goto LABEL_121;
    }

    GetToken(a1, a2, &v65);
    if (v65 != 170)
    {
      if (v65 == 171)
      {
        v51 = PackExpression(a1, *(*(*(a1 + 48) + 152) + 104));
        ReturnExpression(a1, *(*(*(a1 + 48) + 152) + 104));
        *(*(*(a1 + 48) + 152) + 104) = v51;
        goto LABEL_122;
      }

      goto LABEL_120;
    }

    PPBackup(a1);
    SavePPBuffer(a1, " (");
    GetToken(a1, a2, &v65);
    if (v65 != 2)
    {
      goto LABEL_82;
    }
  }

  v58 = "salience declaration";
LABEL_133:
  AlreadyParsedErrorMessage(a1, v58, 0);
LABEL_83:
  *a5 = 1;
LABEL_84:
  ReturnExpression(a1, *(*(*(a1 + 48) + 152) + 104));
  *(*(*(a1 + 48) + 152) + 104) = 0;
LABEL_122:
  v16 = 0;
LABEL_123:
  if (*a5 == 1)
  {
LABEL_124:
    ReturnLHSParseNodes(a1, v16);
    return 0;
  }

  return v16;
}

uint64_t GroupPatterns(char *a1, uint64_t a2, uint64_t a3, char *a4, _DWORD *a5)
{
  v10 = LHSPattern(a1, a2, a3, a4, a5, 0, 0, 0);
  v11 = 0;
  if (*a5)
  {
LABEL_7:
    ReturnLHSParseNodes(a1, v11);
    return 0;
  }

  else
  {
    v12 = 0;
    v13 = 0;
    while (v10)
    {
      v14 = v10;
      v11 = v10;
      if (v13)
      {
        *(v13 + 200) = v10;
        v11 = v12;
      }

      PPCRAndIndent(a1);
      v10 = LHSPattern(a1, a2, a3, a4, a5, 0, 0, 0);
      v12 = v11;
      v13 = v14;
      if (*a5)
      {
        goto LABEL_7;
      }
    }

    PPBackup(a1);
    PPBackup(a1);
    if (a3 != 171)
    {
      PPCRAndIndent(a1);
    }

    SavePPBuffer(a1, a4);
  }

  return v12;
}

uint64_t SimplePatternParse(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  if (*a3 != 2)
  {
    v14 = "the first field of a pattern";
LABEL_11:
    SyntaxErrorMessage(a1, v14);
    v12 = 0;
    *a4 = 1;
    return v12;
  }

  v8 = *(*(a3 + 8) + 24);
  v9 = *v8;
  if ((v9 == 58 || v9 == 61) && !v8[1])
  {
    v14 = "the field field of a pattern";
    goto LABEL_11;
  }

  v10.n128_f64[0] = GetLHSParseNode(a1);
  v12 = v11;
  *v11 = 150;
  *(v11 + 16) &= 0xFFFFFFFC;
  v13 = **(*(a1 + 48) + 152);
  if (v13)
  {
    while (!(*(v13 + 24))(*(a3 + 8), v10))
    {
      v13 = *(v13 + 184);
      if (!v13)
      {
        goto LABEL_8;
      }
    }

    *(v12 + 48) = v13;
    v16 = (*(v13 + 32))(a1, a2, a3);
    *(v12 + 192) = v16;
    if (v16)
    {
      PropagatePatternType(v12, v13);
      return v12;
    }

    *a4 = 1;
  }

  else
  {
LABEL_8:
    *a4 = 1;
    SyntaxErrorMessage(a1, "the field field of a pattern");
  }

  ReturnLHSParseNodes(a1, v12);
  return 0;
}

uint64_t TagLHSLogicalNodes(uint64_t result)
{
  if (result)
  {
    v1 = result;
    do
    {
      *(v1 + 4) |= 8u;
      if (*v1 - 151 <= 2)
      {
        result = TagLHSLogicalNodes(*(v1 + 24));
      }

      v1 = *(v1 + 25);
    }

    while (v1);
  }

  return result;
}

uint64_t ParseAssertTemplate(char *a1, char *a2, unsigned __int16 *a3, int *a4, int a5, int a6, void *a7)
{
  *a4 = 0;
  GetToken(a1, a2, a3);
  if (*a3 != a5)
  {
    v15 = 0;
    v14 = 0;
    v42 = a7;
    v41 = a5;
    while (1)
    {
      PPBackup(a1);
      SavePPBuffer(a1, " ");
      SavePPBuffer(a1, *(a3 + 2));
      if (*a3 != 170 || (GetToken(a1, a2, a3), *a3 != 2))
      {
        SyntaxErrorMessage(a1, "deftemplate pattern");
        goto LABEL_46;
      }

      LOWORD(v44[0]) = 0;
      Slot = FindSlot(a7, *(a3 + 1), v44);
      if (!Slot)
      {
        InvalidDeftemplateSlotMessage(a1, *(*(a3 + 1) + 24), *(*a7 + 24), 1);
        goto LABEL_46;
      }

      v17 = Slot;
      if (v14)
      {
        v18 = *Slot;
        v19 = v14;
        while (*(v19 + 8) != v18)
        {
          v19 = *(v19 + 24);
          if (!v19)
          {
            goto LABEL_13;
          }
        }

        AlreadyParsedErrorMessage(a1, "slot ", *(v18 + 24));
LABEL_46:
        *a4 = 1;
LABEL_47:
        v30 = a1;
        v31 = v14;
LABEL_48:
        ReturnExpression(v30, v31);
        return 0;
      }

LABEL_13:
      LODWORD(v44[0]) = 0;
      v20 = *(Slot + 8);
      SavePPBuffer(a1, " ");
      AssertArgument = GetAssertArgument(a1, a2, a3, a4, 171, a6, v44);
      v22 = AssertArgument;
      v23 = *a4;
      if (v20)
      {
        break;
      }

      if (v23)
      {
        goto LABEL_21;
      }

      if (AssertArgument)
      {
        v24 = *AssertArgument;
        if (v24 == 36 || v24 == 30 && *(AssertArgument[1] + 16) == 109)
        {
          *a4 = 1;
          SingleFieldSlotCardinalityError(a1, *(*v17 + 24));
LABEL_37:
          ReturnExpression(a1, v22);
          goto LABEL_38;
        }

        GetToken(a1, a2, a3);
        goto LABEL_34;
      }

      *a4 = 1;
      SingleFieldSlotCardinalityError(a1, *(*v17 + 24));
LABEL_38:
      v29 = 0;
LABEL_39:
      if (*a4)
      {
        goto LABEL_47;
      }

      if (!CheckRHSSlotTypes(a1, v29[2], v17, "assert"))
      {
        *a4 = 1;
        ReturnExpression(a1, v14);
        v30 = a1;
        v31 = v29;
        goto LABEL_48;
      }

      v13 = v29;
      if (v15)
      {
        v15[3] = v29;
        v13 = v14;
      }

      *a4 = 0;
      GetToken(a1, a2, a3);
      v15 = v29;
      v14 = v13;
      a7 = v42;
      if (*a3 == v41)
      {
        goto LABEL_3;
      }
    }

    if (v23)
    {
LABEL_21:
      if (LODWORD(v44[0]))
      {
        SyntaxErrorMessage(a1, "deftemplate pattern");
      }

      goto LABEL_38;
    }

    if (AssertArgument)
    {
      SavePPBuffer(a1, " ");
      v25 = GetAssertArgument(a1, a2, a3, a4, 171, a6, v44);
      if (*a4)
      {
LABEL_28:
        if (LODWORD(v44[0]))
        {
          SyntaxErrorMessage(a1, "deftemplate pattern");
        }

        goto LABEL_37;
      }

      v26 = v22;
      while (v25)
      {
        v27 = v25;
        *(v26 + 24) = v25;
        SavePPBuffer(a1, " ");
        v25 = GetAssertArgument(a1, a2, a3, a4, 171, a6, v44);
        v26 = v27;
        if (*a4)
        {
          goto LABEL_28;
        }
      }

      PPBackup(a1);
      PPBackup(a1);
      SavePPBuffer(a1, ")");
      *(v26 + 24) = 0;
    }

    else
    {
      PPBackup(a1);
      PPBackup(a1);
      SavePPBuffer(a1, ")");
    }

LABEL_34:
    v28 = *v17;
    if (*a3 == 171)
    {
      v29 = GenConstant(a1, 2, v28);
      v29[2] = v22;
      goto LABEL_39;
    }

    SingleFieldSlotCardinalityError(a1, *(v28 + 24));
    *a4 = 1;
    goto LABEL_37;
  }

  v13 = 0;
LABEL_3:
  if (*a4)
  {
    v14 = v13;
    goto LABEL_47;
  }

  v34 = a7[6];
  if (!v34)
  {
    goto LABEL_76;
  }

  v35 = 0;
  v32 = 0;
  while (1)
  {
    memset(v44, 0, sizeof(v44));
    if (!v13)
    {
      break;
    }

    v36 = v13;
    while (v36[1] != *v34)
    {
      v36 = v36[3];
      if (!v36)
      {
        goto LABEL_56;
      }
    }

    v38 = v36[2];
    v36[2] = 0;
LABEL_62:
    if (*(v34 + 8))
    {
      v39 = EnvAddBitMap(a1, byte_232816C48, 1u);
      v40 = GenConstant(a1, 62, v39);
      v40[2] = v38;
      v38 = v40;
    }

    if (*a4)
    {
      goto LABEL_75;
    }

    if (v38)
    {
      if (v35)
      {
        v35[3] = v38;
      }

      else
      {
        v32 = v38;
      }
    }

    else
    {
      v38 = v35;
    }

    v34 = *(v34 + 40);
    v35 = v38;
    if (!v34)
    {
      goto LABEL_77;
    }
  }

LABEL_56:
  if ((*(v34 + 8) & 2) == 0)
  {
    if ((*(v34 + 8) & 0xC) != 0)
    {
      v37 = CopyExpression(a1, *(v34 + 24));
    }

    else
    {
      DeriveDefaultFromConstraints(a1, *(v34 + 16), v44, *(v34 + 8) & 1, 1);
      v37 = ConvertValueToExpression(a1, v44);
    }

    v38 = v37;
    goto LABEL_62;
  }

  PrintErrorID(a1, "TMPLTRHS", 1, 1);
  EnvPrintRouter(a1, "werror", "Slot ");
  EnvPrintRouter(a1, "werror", *(*v34 + 24));
  EnvPrintRouter(a1, "werror", " requires a value because of its (default ?NONE) attribute.\n");
  *a4 = 1;
LABEL_75:
  ReturnExpression(a1, v32);
LABEL_76:
  v32 = 0;
LABEL_77:
  ReturnExpression(a1, v13);
  return v32;
}

uint64_t InitializeFactReteFunctions(uint64_t a1)
{
  AllocateEnvironmentData(a1, 2u, 0x5B0uLL, 0);
  v2 = *(*(a1 + 48) + 16);
  v3 = unk_284793B88;
  v2[4] = xmmword_284793B78;
  v2[5] = v3;
  v2[6] = xmmword_284793B98;
  v4 = *&off_284793B48;
  *v2 = xmmword_284793B38;
  v2[1] = v4;
  v5 = unk_284793B68;
  v2[2] = xmmword_284793B58;
  v2[3] = v5;
  v6 = *(*(a1 + 48) + 16);
  v7 = unk_284793BD8;
  v6[9] = xmmword_284793BC8;
  v6[10] = v7;
  v8 = unk_284793BF8;
  v6[11] = xmmword_284793BE8;
  v6[12] = v8;
  v6[13] = xmmword_284793C08;
  v9 = *&off_284793BB8;
  v6[7] = xmmword_284793BA8;
  v6[8] = v9;
  v10 = *(*(a1 + 48) + 16);
  v11 = unk_284793C68;
  v10[18] = xmmword_284793C58;
  v10[19] = v11;
  v10[20] = xmmword_284793C78;
  v12 = *&off_284793C28;
  v10[14] = xmmword_284793C18;
  v10[15] = v12;
  v13 = unk_284793C48;
  v10[16] = xmmword_284793C38;
  v10[17] = v13;
  v14 = *(*(a1 + 48) + 16);
  v15 = unk_284793CD8;
  v14[25] = xmmword_284793CC8;
  v14[26] = v15;
  v14[27] = xmmword_284793CE8;
  v16 = *&off_284793C98;
  v14[21] = xmmword_284793C88;
  v14[22] = v16;
  v17 = unk_284793CB8;
  v14[23] = xmmword_284793CA8;
  v14[24] = v17;
  v18 = *(*(a1 + 48) + 16);
  v19 = unk_284793D48;
  v18[32] = xmmword_284793D38;
  v18[33] = v19;
  v18[34] = xmmword_284793D58;
  v20 = *&off_284793D08;
  v18[28] = xmmword_284793CF8;
  v18[29] = v20;
  v21 = unk_284793D28;
  v18[30] = xmmword_284793D18;
  v18[31] = v21;
  v22 = *(*(a1 + 48) + 16);
  v23 = unk_284793DB8;
  v22[39] = xmmword_284793DA8;
  v22[40] = v23;
  v22[41] = xmmword_284793DC8;
  v24 = *&off_284793D78;
  v22[35] = xmmword_284793D68;
  v22[36] = v24;
  v25 = unk_284793D98;
  v22[37] = xmmword_284793D88;
  v22[38] = v25;
  v26 = *(*(a1 + 48) + 16);
  v27 = unk_284793E28;
  v26[46] = xmmword_284793E18;
  v26[47] = v27;
  v26[48] = xmmword_284793E38;
  v28 = *&off_284793DE8;
  v26[42] = xmmword_284793DD8;
  v26[43] = v28;
  v29 = unk_284793E08;
  v26[44] = xmmword_284793DF8;
  v26[45] = v29;
  v30 = *(*(a1 + 48) + 16);
  v31 = unk_284793E98;
  v30[53] = xmmword_284793E88;
  v30[54] = v31;
  v30[55] = xmmword_284793EA8;
  v32 = *&off_284793E58;
  v30[49] = xmmword_284793E48;
  v30[50] = v32;
  v33 = unk_284793E78;
  v30[51] = xmmword_284793E68;
  v30[52] = v33;
  v34 = *(*(a1 + 48) + 16);
  v35 = unk_284793F08;
  v34[60] = xmmword_284793EF8;
  v34[61] = v35;
  v34[62] = xmmword_284793F18;
  v36 = *&off_284793EC8;
  v34[56] = xmmword_284793EB8;
  v34[57] = v36;
  v37 = unk_284793EE8;
  v34[58] = xmmword_284793ED8;
  v34[59] = v37;
  v38 = *(*(a1 + 48) + 16);
  v39 = xmmword_284793F48;
  v38[66] = unk_284793F58;
  v40 = unk_284793F78;
  v38[67] = xmmword_284793F68;
  v38[68] = v40;
  v38[69] = xmmword_284793F88;
  v41 = unk_284793F38;
  v38[63] = xmmword_284793F28;
  v38[64] = v41;
  v38[65] = v39;
  v42 = *(*(a1 + 48) + 16);
  v43 = xmmword_284793FB8;
  v42[73] = unk_284793FC8;
  v44 = unk_284793FE8;
  v42[74] = xmmword_284793FD8;
  v42[75] = v44;
  v42[76] = xmmword_284793FF8;
  v45 = *&off_284793FA8;
  v42[70] = xmmword_284793F98;
  v42[71] = v45;
  v42[72] = v43;
  v46 = *(*(a1 + 48) + 16);
  v47 = xmmword_284794028;
  v46[80] = unk_284794038;
  v48 = unk_284794058;
  v46[81] = xmmword_284794048;
  v46[82] = v48;
  v46[83] = xmmword_284794068;
  v49 = *&off_284794018;
  v46[77] = xmmword_284794008;
  v46[78] = v49;
  v46[79] = v47;
  v50 = *(*(a1 + 48) + 16);
  v51 = xmmword_284794098;
  v50[87] = unk_2847940A8;
  v52 = unk_2847940C8;
  v50[88] = xmmword_2847940B8;
  v50[89] = v52;
  v50[90] = xmmword_2847940D8;
  v53 = *&off_284794088;
  v50[84] = xmmword_284794078;
  v50[85] = v53;
  v50[86] = v51;
  InstallPrimitive(a1, *(*(a1 + 48) + 24) + 216, 6);
  InstallPrimitive(a1, *(*(a1 + 48) + 16), 57);
  InstallPrimitive(a1, *(*(a1 + 48) + 16) + 112, 58);
  InstallPrimitive(a1, *(*(a1 + 48) + 16) + 224, 59);
  InstallPrimitive(a1, *(*(a1 + 48) + 16) + 336, 54);
  InstallPrimitive(a1, *(*(a1 + 48) + 16) + 448, 55);
  InstallPrimitive(a1, *(*(a1 + 48) + 16) + 560, 56);
  InstallPrimitive(a1, *(*(a1 + 48) + 16) + 672, 51);
  InstallPrimitive(a1, *(*(a1 + 48) + 16) + 784, 52);
  InstallPrimitive(a1, *(*(a1 + 48) + 16) + 896, 50);
  InstallPrimitive(a1, *(*(a1 + 48) + 16) + 1008, 62);
  InstallPrimitive(a1, *(*(a1 + 48) + 16) + 1120, 53);
  InstallPrimitive(a1, *(*(a1 + 48) + 16) + 1232, 60);
  v54 = *(*(a1 + 48) + 16) + 1344;

  return InstallPrimitive(a1, v54, 61);
}

void *FactGenPNConstant(uint64_t a1, uint64_t a2)
{
  v16 = 0;
  v15 = 0;
  if ((*(a2 + 16) & 0x10000) == 0)
  {
    ClearBitString(&v16, 4u);
    LOBYTE(v16) = (v16 & 0xFE | *(a2 + 16) & 1) ^ 1;
    HIWORD(v16) = *(a2 + 72) - 1;
    v4 = EnvAddBitMap(a1, &v16, 4u);
    v5 = a1;
    v6 = 60;
LABEL_12:
    v8 = GenConstant(v5, v6, v4);
    v8[2] = GenConstant(a1, *a2, *(a2 + 8));
    return v8;
  }

  if (!*(a2 + 20) || *(a2 + 20) == 1 && !*(a2 + 22))
  {
    ClearBitString(&v15, 8u);
    v10 = v15 & 0xFC | *(a2 + 16) & 1;
    WORD2(v15) = *(a2 + 72) - 1;
    v11 = 26;
    if (!*(a2 + 20))
    {
      v11 = 24;
    }

    v12 = v10 | (2 * (*(a2 + 20) == 0));
    v13 = *(a2 + v11);
    LOBYTE(v15) = v12 ^ 1;
    WORD1(v15) = v13;
    v4 = EnvAddBitMap(a1, &v15, 8u);
    v5 = a1;
    v6 = 61;
    goto LABEL_12;
  }

  v7 = 24;
  if ((*(a2 + 16) & 1) == 0)
  {
    v7 = 16;
  }

  v8 = GenConstant(a1, 30, *(*(*(a1 + 48) + 360) + v7));
  v9 = *a2;
  *a2 = 35;
  v8[2] = FactGenGetfield(a1, a2);
  *a2 = v9;
  *(v8[2] + 24) = GenConstant(a1, v9, *(a2 + 8));
  return v8;
}

void *FactGenGetfield(uint64_t a1, unsigned __int16 *a2)
{
  if (a2[36] < 1 || (a2[9] & 1) != 0)
  {
    v6 = *a2;
    if ((v6 == 35 || v6 == 37 || ConstantType(v6)) && (!a2[10] || a2[10] == 1 && !a2[11]) || (*a2 | 2) == 0x26 && !a2[10] && !a2[11])
    {
      VarPN3 = FactGetVarPN3(a1, a2);
      v8 = a1;
      v9 = 56;
    }

    else
    {
      VarPN3 = FactGetVarPN1(a1, a2);
      v8 = a1;
      v9 = 54;
    }

    return GenConstant(v8, v9, VarPN3);
  }

  else
  {
    v10 = 0;
    ClearBitString(&v10, 2u);
    v10 = a2[36] - 1;
    v4 = EnvAddBitMap(a1, &v10, 2u);
    return GenConstant(a1, 55, v4);
  }
}

uint64_t *FactGetVarPN3(uint64_t a1, unsigned __int16 *a2)
{
  v10 = 0;
  ClearBitString(&v10, 8u);
  HIWORD(v10) = a2[36] - 1;
  v4 = *a2;
  if (v4 == 35 || v4 == 37 || ConstantType(v4))
  {
    v5 = a2[10];
    v6 = v10 & 0xFC;
    if (v5)
    {
      v7 = 0;
      v8 = v6 | 2;
      v5 = a2[13];
    }

    else
    {
      v8 = v6 | 1;
      v7 = a2[12];
    }

    LOBYTE(v10) = v8;
    WORD1(v10) = v7;
  }

  else
  {
    LOBYTE(v10) = v10 | 3;
    WORD1(v10) = a2[12];
    v5 = a2[13];
  }

  WORD2(v10) = v5;
  return EnvAddBitMap(a1, &v10, 8u);
}

uint64_t *FactGetVarPN1(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  ClearBitString(&v7, 8u);
  v4 = *(a2 + 72);
  if (v4 <= 0)
  {
    LOBYTE(v7) = v7 & 0xFC | 1;
    *(&v7 + 2) = 0;
  }

  else
  {
    v5 = *(a2 + 58);
    if (v5 <= 0)
    {
      LOBYTE(v7) = v7 & 0xFC | 2;
      WORD2(v7) = v4 - 1;
      WORD1(v7) = 0;
    }

    else
    {
      LOBYTE(v7) = v7 & 0xFC;
      WORD2(v7) = v4 - 1;
      WORD1(v7) = v5 - 1;
    }
  }

  return EnvAddBitMap(a1, &v7, 8u);
}

void *FactGenGetvar(uint64_t a1, unsigned __int16 *a2, int a3)
{
  if (a2[36] >= 1 && (a2[9] & 1) == 0)
  {
    VarJN2 = FactGetVarJN2(a1, a2, a3);
    v5 = a1;
    v6 = 58;
    goto LABEL_17;
  }

  v7 = *a2;
  if (v7 <= 0x24)
  {
    if (v7 != 35)
    {
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  if (v7 != 38)
  {
    if (v7 != 37)
    {
      goto LABEL_15;
    }

LABEL_9:
    if (!a2[10] || a2[10] == 1 && !a2[11])
    {
      goto LABEL_16;
    }

LABEL_12:
    if (v7 == 36)
    {
      goto LABEL_13;
    }

LABEL_15:
    VarJN2 = FactGetVarJN1(a1, a2, a3);
    v5 = a1;
    v6 = 57;
    goto LABEL_17;
  }

LABEL_13:
  if (a2[10] || a2[11])
  {
    goto LABEL_15;
  }

LABEL_16:
  VarJN2 = FactGetVarJN3(a1, a2, a3);
  v5 = a1;
  v6 = 59;
LABEL_17:

  return GenConstant(v5, v6, VarJN2);
}

uint64_t *FactGetVarJN2(uint64_t a1, uint64_t a2, int a3)
{
  v9 = 0;
  ClearBitString(&v9, 8u);
  WORD2(v9) = *(a2 + 72) - 1;
  if (a3 == 2)
  {
    v6 = v9 | 2;
    goto LABEL_7;
  }

  if (a3 != 1)
  {
    if (a3)
    {
LABEL_8:
      v7 = *(a2 + 84);
      goto LABEL_9;
    }

    v6 = v9 | 1;
LABEL_7:
    LOBYTE(v9) = v6;
    goto LABEL_8;
  }

  LOWORD(v7) = 0;
  LOBYTE(v9) = v9 | 2;
LABEL_9:
  WORD1(v9) = v7;
  return EnvAddBitMap(a1, &v9, 8u);
}

uint64_t *FactGetVarJN3(uint64_t a1, unsigned __int16 *a2, int a3)
{
  v15 = 0;
  v14 = 0;
  ClearBitString(&v14, 0xCu);
  LOWORD(v15) = a2[36] - 1;
  if (a3 == 2)
  {
    v6 = v14 | 8;
    goto LABEL_7;
  }

  if (a3 != 1)
  {
    if (a3)
    {
LABEL_8:
      v7 = *(a2 + 21);
      goto LABEL_9;
    }

    v6 = v14 | 4;
LABEL_7:
    LOBYTE(v14) = v6;
    goto LABEL_8;
  }

  LOWORD(v7) = 0;
  LOBYTE(v14) = v14 | 8;
LABEL_9:
  HIWORD(v14) = v7;
  v8 = *a2;
  if (v8 == 37 || v8 == 35)
  {
    v9 = a2[10];
    v10 = v14 & 0xFC;
    if (v9)
    {
      v11 = 0;
      v12 = v10 | 2;
      v9 = a2[13];
    }

    else
    {
      v12 = v10 | 1;
      v11 = a2[12];
    }

    LOBYTE(v14) = v12;
    WORD1(v14) = v11;
  }

  else
  {
    LOBYTE(v14) = v14 | 3;
    WORD1(v14) = a2[12];
    v9 = a2[13];
  }

  WORD2(v14) = v9;
  return EnvAddBitMap(a1, &v14, 0xCu);
}

uint64_t *FactGetVarJN1(uint64_t a1, uint64_t a2, int a3)
{
  v11 = 0;
  ClearBitString(&v11, 8u);
  switch(a3)
  {
    case 2:
      v6 = v11 | 8;
      goto LABEL_7;
    case 1:
      LOWORD(v7) = 0;
      LOBYTE(v11) = v11 | 8;
      goto LABEL_9;
    case 0:
      v6 = v11 | 4;
LABEL_7:
      LOBYTE(v11) = v6;
      break;
  }

  v7 = *(a2 + 84);
LABEL_9:
  WORD1(v11) = v7;
  v8 = *(a2 + 72);
  if (v8 <= 0)
  {
    LOBYTE(v11) = v11 & 0xFC | 1;
    HIDWORD(v11) = 0;
  }

  else
  {
    v9 = *(a2 + 58);
    if (v9 <= 0)
    {
      LOBYTE(v11) = v11 & 0xFC | 2;
      HIDWORD(v11) = (v8 - 1);
    }

    else
    {
      LOBYTE(v11) = v11 & 0xFC;
      WORD2(v11) = v8 - 1;
      HIWORD(v11) = v9 - 1;
    }
  }

  return EnvAddBitMap(a1, &v11, 8u);
}

void *FactGenCheckLength(uint64_t a1, unsigned __int16 *a2)
{
  if (!a2[13])
  {
    v7 = *a2;
    if (v7 != 37 && v7 != 35)
    {
      return 0;
    }
  }

  v10 = 0;
  ClearBitString(&v10, 8u);
  WORD2(v10) = a2[36] - 1;
  v4 = *a2;
  if ((v4 | 2) == 0x26 || a2[11])
  {
    v5 = v10 & 0xFE;
  }

  else
  {
    v5 = v10 | 1;
  }

  LOBYTE(v10) = v5;
  if (v4 == 37 || v4 == 35)
  {
    v6 = a2[13] + 1;
  }

  else
  {
    v6 = a2[13];
  }

  WORD1(v10) = v6;
  v9 = EnvAddBitMap(a1, &v10, 8u);
  return GenConstant(a1, 53, v9);
}

void *FactGenCheckZeroLength(uint64_t a1, __int16 a2)
{
  v6 = 0;
  ClearBitString(&v6, 8u);
  WORD2(v6) = a2 - 1;
  LOBYTE(v6) = v6 | 1;
  WORD1(v6) = 0;
  v4 = EnvAddBitMap(a1, &v6, 8u);
  return GenConstant(a1, 53, v4);
}

uint64_t *FactReplaceGetvar(uint64_t a1, uint64_t a2, unsigned __int16 *a3, int a4)
{
  if (a3[36] < 1 || (a3[9] & 1) != 0)
  {
    v6 = *a3;
    if (v6 > 0x24)
    {
      if (v6 == 38)
      {
LABEL_13:
        if (a3[10] || a3[11])
        {
          goto LABEL_15;
        }

LABEL_16:
        *a2 = 59;
        result = FactGetVarJN3(a1, a3, a4);
        goto LABEL_17;
      }

      if (v6 != 37)
      {
LABEL_15:
        *a2 = 57;
        result = FactGetVarJN1(a1, a3, a4);
        goto LABEL_17;
      }
    }

    else if (v6 != 35)
    {
      goto LABEL_12;
    }

    if (!a3[10] || a3[10] == 1 && !a3[11])
    {
      goto LABEL_16;
    }

LABEL_12:
    if (v6 == 36)
    {
      goto LABEL_13;
    }

    goto LABEL_15;
  }

  *a2 = 58;
  result = FactGetVarJN2(a1, a3, a4);
LABEL_17:
  *(a2 + 8) = result;
  return result;
}

uint64_t *FactReplaceGetfield(uint64_t a1, uint64_t a2, unsigned __int16 *a3)
{
  if (a3[9])
  {
    v7 = *a3;
    if (v7 > 0x24)
    {
      if (v7 == 38)
      {
LABEL_12:
        if (a3[10] || a3[11])
        {
          goto LABEL_14;
        }

LABEL_15:
        *a2 = 56;
        result = FactGetVarPN3(a1, a3);
        goto LABEL_16;
      }

      if (v7 != 37)
      {
LABEL_14:
        *a2 = 54;
        result = FactGetVarPN1(a1, a3);
        goto LABEL_16;
      }
    }

    else if (v7 != 35)
    {
      goto LABEL_11;
    }

    if (!a3[10] || a3[10] == 1 && !a3[11])
    {
      goto LABEL_15;
    }

LABEL_11:
    if (v7 == 36)
    {
      goto LABEL_12;
    }

    goto LABEL_14;
  }

  *a2 = 55;
  v8 = 0;
  ClearBitString(&v8, 2u);
  v8 = a3[36] - 1;
  result = EnvAddBitMap(a1, &v8, 2u);
LABEL_16:
  *(a2 + 8) = result;
  return result;
}

void *FactPNVariableComparison(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = 0;
  ClearBitString(&v17, 8u);
  v6 = *(a2 + 16);
  if ((v6 & 0x10000) != 0 || (v7 = *(a2 + 72), v8 = __OFSUB__(v7, 1), v9 = v7 - 1, (v9 < 0) ^ v8) || (*(a3 + 18) & 1) != 0 || (v10 = *(a3 + 72), v8 = __OFSUB__(v10, 1), v11 = v10 - 1, (v11 < 0) ^ v8))
  {
    v15 = 24;
    if ((*(a2 + 16) & 1) == 0)
    {
      v15 = 16;
    }

    v14 = GenConstant(a1, 30, *(*(*(a1 + 48) + 360) + v15));
    v14[2] = FactGenGetfield(a1, a2);
    *(v14[2] + 24) = FactGenGetfield(a1, a3);
  }

  else
  {
    WORD1(v17) = v9;
    WORD2(v17) = v11;
    if (v6)
    {
      v12 = 2;
    }

    else
    {
      v12 = 1;
    }

    LOBYTE(v17) = v17 & 0xFC | v12;
    v13 = EnvAddBitMap(a1, &v17, 8u);
    return GenConstant(a1, 50, v13);
  }

  return v14;
}

void *FactJNVariableComparison(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v33 = 0;
  v31 = 0;
  v32 = 0;
  v30 = 0;
  v8 = *(a2 + 72);
  if ((*(a2 + 16) & 0x10000) != 0)
  {
    if (v8 < 1)
    {
      goto LABEL_22;
    }
  }

  else
  {
    if (v8 < 1)
    {
      goto LABEL_22;
    }

    if ((*(a3 + 18) & 1) == 0 && *(a3 + 72) >= 1)
    {
      ClearBitString(&v32, 0xCu);
      if (a4)
      {
        v9 = a3;
      }

      else
      {
        v9 = a2;
      }

      v10 = *(v9 + 72);
      v11 = *(a3 + 84);
      if (a4)
      {
        v12 = *(a3 + 84);
      }

      else
      {
        v12 = 0;
      }

      HIWORD(v32) = v10 - 1;
      WORD1(v32) = v12;
      WORD2(v32) = v11;
      if (*(a3 + 58) < 0)
      {
        v13 = 0;
      }

      else
      {
        v13 = *(a3 + 72) - 1;
      }

      LOWORD(v33) = v13;
      if (*(a2 + 16))
      {
        v18 = 26;
      }

      else
      {
        v18 = 25;
      }

      LOBYTE(v32) = v18 | v32 & 0xFC;
      v19 = EnvAddBitMap(a1, &v32, 0xCu);
      v20 = a1;
      v21 = 51;
      return GenConstant(v20, v21, v19);
    }
  }

  if (*a2 == 35 && (!*(a2 + 20) || *(a2 + 20) == 1 && !*(a2 + 22)) && *(a3 + 72) >= 1 && *a3 == 35 && (!*(a3 + 20) || !*(a3 + 22)))
  {
    ClearBitString(&v30, 0x10u);
    if (a4)
    {
      v22 = a3;
    }

    else
    {
      v22 = a2;
    }

    v23 = *(a3 + 84);
    if (a4)
    {
      v24 = *(a3 + 84);
    }

    else
    {
      v24 = 0;
    }

    WORD1(v31) = *(v22 + 72) - 1;
    HIWORD(v30) = v24;
    LOWORD(v31) = v23;
    WORD2(v31) = *(a3 + 72) - 1;
    if (*(v22 + 20))
    {
      v25 = 26;
    }

    else
    {
      v25 = 24;
    }

    if (*(v22 + 20))
    {
      v26 = 24;
    }

    else
    {
      v26 = 88;
    }

    WORD1(v30) = *(v22 + v25);
    v27 = v30 & 0xA4 | v26 | 0x80;
    if (*(a3 + 20))
    {
      v28 = 26;
    }

    else
    {
      v28 = 24;
    }

    if (*(a3 + 20))
    {
      v27 = v30 & 0x24 | v26 & 0x7C;
    }

    WORD2(v30) = *(a3 + v28);
    if (*(a2 + 16))
    {
      v29 = 2;
    }

    else
    {
      v29 = 1;
    }

    LOBYTE(v30) = v29 | v27;
    v19 = EnvAddBitMap(a1, &v30, 0x10u);
    v20 = a1;
    v21 = 52;
    return GenConstant(v20, v21, v19);
  }

LABEL_22:
  v14 = 24;
  if ((*(a2 + 16) & 1) == 0)
  {
    v14 = 16;
  }

  v15 = GenConstant(a1, 30, *(*(*(a1 + 48) + 360) + v14));
  if (a4)
  {
    v16 = 2;
  }

  else
  {
    v16 = 1;
  }

  v15[2] = FactGenGetvar(a1, a2, v16);
  *(v15[2] + 24) = FactGenGetvar(a1, a3, 0);
  return v15;
}

uint64_t InitializeUtilityData(uint64_t a1)
{
  result = AllocateEnvironmentData(a1, 0x37u, 0x78uLL, DeallocateUtilityData);
  v3 = *(a1 + 48);
  *(*(v3 + 440) + 112) = *(v3 + 440) + 40;
  v4 = *(v3 + 440);
  *(*(v4 + 112) + 2) = 1;
  *(v4 + 16) = 0x10000;
  *(v4 + 20) = 1;
  return result;
}

uint64_t DeallocateUtilityData(uint64_t result)
{
  v1 = result;
  v2 = *(*(result + 48) + 440);
  v3 = v2[4];
  if (v3)
  {
    do
    {
      v4 = *(v3 + 8);
      result = genfree(v1, *v3, *(v3 + 24));
      v5 = *(v1 + 48);
      *(*(v5 + 472) + 32) = v3;
      **(*(v5 + 472) + 32) = *(*(*(v5 + 472) + 40) + 256);
      *(*(*(v5 + 472) + 40) + 256) = *(*(v5 + 472) + 32);
      v3 = v4;
    }

    while (v4);
    v2 = *(*(v1 + 48) + 440);
  }

  v6 = v2[1];
  if (v6)
  {
    do
    {
      v7 = *(v6 + 24);
      v8 = *(v1 + 48);
      *(*(v8 + 472) + 32) = v6;
      **(*(v8 + 472) + 32) = *(*(*(v8 + 472) + 40) + 384);
      *(*(*(v8 + 472) + 40) + 384) = *(*(v8 + 472) + 32);
      v6 = v7;
    }

    while (v7);
    v2 = *(*(v1 + 48) + 440);
  }

  v9 = *v2;
  if (!*v2)
  {
    goto LABEL_11;
  }

  do
  {
    v10 = *(v9 + 24);
    v11 = *(v1 + 48);
    *(*(v11 + 472) + 32) = v9;
    **(*(v11 + 472) + 32) = *(*(*(v11 + 472) + 40) + 384);
    *(*(*(v11 + 472) + 40) + 384) = *(*(v11 + 472) + 32);
    v9 = v10;
  }

  while (v10);
  for (i = *(v1 + 48); ; *(*(i + 440) + 112) = *(*(*(i + 440) + 112) + 8))
  {
    v2 = *(i + 440);
LABEL_11:
    v13 = v2[14];
    if (!v13)
    {
      break;
    }

    v14 = v13[2];
    if (v14)
    {
      do
      {
        v15 = *(v14 + 8);
        v16 = *(v1 + 48);
        *(*(v16 + 472) + 32) = v14;
        **(*(v16 + 472) + 32) = *(*(*(v16 + 472) + 40) + 128);
        *(*(*(v16 + 472) + 40) + 128) = *(*(v16 + 472) + 32);
        v14 = v15;
      }

      while (v15);
    }

    v17 = v13[3];
    if (v17)
    {
      do
      {
        v18 = *(v17 + 8);
        v19 = *(v1 + 48);
        *(*(v19 + 472) + 32) = v17;
        **(*(v19 + 472) + 32) = *(*(*(v19 + 472) + 40) + 128);
        *(*(*(v19 + 472) + 40) + 128) = *(*(v19 + 472) + 32);
        v17 = v18;
      }

      while (v18);
    }

    v20 = v13[4];
    if (v20)
    {
      do
      {
        v21 = *(v20 + 8);
        v22 = *(v1 + 48);
        *(*(v22 + 472) + 32) = v20;
        **(*(v22 + 472) + 32) = *(*(*(v22 + 472) + 40) + 128);
        *(*(*(v22 + 472) + 40) + 128) = *(*(v22 + 472) + 32);
        v20 = v21;
      }

      while (v21);
    }

    v23 = v13[5];
    if (v23)
    {
      do
      {
        v24 = *(v23 + 8);
        v25 = *(v1 + 48);
        *(*(v25 + 472) + 32) = v23;
        **(*(v25 + 472) + 32) = *(*(*(v25 + 472) + 40) + 128);
        *(*(*(v25 + 472) + 40) + 128) = *(*(v25 + 472) + 32);
        v23 = v24;
      }

      while (v24);
    }

    v26 = v13[6];
    if (v26)
    {
      do
      {
        v27 = *(v26 + 8);
        v28 = *(v1 + 48);
        *(*(v28 + 472) + 32) = v26;
        **(*(v28 + 472) + 32) = *(*(*(v28 + 472) + 40) + 128);
        *(*(*(v28 + 472) + 40) + 128) = *(*(v28 + 472) + 32);
        v26 = v27;
      }

      while (v27);
    }

    v29 = v13[7];
    if (v29)
    {
      do
      {
        v30 = v29[2];
        result = ReturnMultifield(v1, v29);
        v29 = v30;
      }

      while (v30);
    }

    i = *(v1 + 48);
  }

  return result;
}

uint64_t CleanCurrentGarbageFrame(uint64_t result, uint64_t a2)
{
  v2 = *(*(result + 48) + 440);
  v3 = v2[14];
  if (*v3)
  {
    v5 = result;
    if (a2)
    {
      v6 = ValueInstall(result, a2);
      for (i = **(*(v5 + 48) + 440); i; i = *(i + 24))
      {
        v8 = *(i + 8);
        if (*(i + 32))
        {
          v6 = v8(v5);
        }

        else
        {
          v6 = v8(v6);
        }
      }

      RemoveEphemeralAtoms(v5);
      FlushMultifields(v5);
      result = ValueDeinstall(v5, a2);
    }

    else
    {
      for (j = *v2; j; j = *(j + 24))
      {
        v10 = *(j + 8);
        if (*(j + 32))
        {
          (v10)(v5);
        }

        else
        {
          v10();
        }
      }

      RemoveEphemeralAtoms(v5);
      result = FlushMultifields(v5);
    }

    if (!*(v3 + 24) && !*(v3 + 32) && !*(v3 + 16) && !*(v3 + 40) && !*(v3 + 48) && !*(v3 + 64))
    {
      *v3 = 0;
    }
  }

  return result;
}

uint64_t CallCleanupFunctions(uint64_t result)
{
  v1 = **(*(result + 48) + 440);
  if (v1)
  {
    v2 = result;
    do
    {
      v3 = *(v1 + 8);
      if (*(v1 + 32))
      {
        result = (v3)(v2);
      }

      else
      {
        result = v3();
      }

      v1 = *(v1 + 24);
    }

    while (v1);
  }

  return result;
}

uint64_t RemoveCleanupFunction(uint64_t a1, char *a2)
{
  v3 = 0;
  **(*(a1 + 48) + 440) = RemoveFunctionFromCallList(a1, a2, **(*(a1 + 48) + 440), &v3);
  return v3;
}

const char **RemoveFunctionFromCallList(uint64_t a1, char *__s1, const char **a3, _DWORD *a4)
{
  v4 = a3;
  *a4 = 0;
  if (a3)
  {
    if (!strcmp(__s1, *a3))
    {
      v11 = 0;
      v9 = v4;
LABEL_8:
      *a4 = 1;
      if (v11)
      {
        v11[3] = v9[3];
      }

      else
      {
        v4 = v9[3];
      }

      v12 = *(a1 + 48);
      *(*(v12 + 472) + 32) = v9;
      **(*(v12 + 472) + 32) = *(*(*(v12 + 472) + 40) + 384);
      *(*(*(v12 + 472) + 40) + 384) = *(*(v12 + 472) + 32);
    }

    else
    {
      v8 = v4;
      while (1)
      {
        v9 = v8[3];
        if (!v9)
        {
          break;
        }

        v10 = strcmp(__s1, *v9);
        v11 = v8;
        v8 = v9;
        if (!v10)
        {
          goto LABEL_8;
        }
      }
    }
  }

  return v4;
}

uint64_t EnvRemovePeriodicFunction(uint64_t a1, char *a2)
{
  v3 = 0;
  *(*(*(a1 + 48) + 440) + 8) = RemoveFunctionFromCallList(a1, a2, *(*(*(a1 + 48) + 440) + 8), &v3);
  return v3;
}

uint64_t StringPrintForm(uint64_t a1, _BYTE *a2)
{
  v4 = genrealloc(a1, 0, 0, 0x50uLL);
  *v4 = 34;
  v13 = 80;
  v14 = 1;
  while (1)
  {
    v5 = *a2;
    if (v5 != 34 && v5 != 92)
    {
      break;
    }

    v7 = v14;
    if (v14 + 1 >= v13)
    {
      v8 = v13 + 80;
      v4 = genrealloc(a1, v4, v13, v13 + 80);
      v13 = v8;
    }

    *(v4 + v7) = 92;
    ++v14;
    *(v4 + v14) = 0;
    v6 = *a2;
LABEL_9:
    v4 = ExpandStringWithChar(a1, v6, v4, &v14, &v13, v13 + 80);
    ++a2;
  }

  if (*a2)
  {
    v6 = v5;
    goto LABEL_9;
  }

  v9 = v14;
  if (v14 + 1 >= v13)
  {
    v10 = v13 + 80;
    v4 = genrealloc(a1, v4, v13, v13 + 80);
    v13 = v10;
  }

  *(v4 + v9) = 34;
  *(v4 + v14 + 1) = 0;
  v11 = EnvAddSymbol(a1, v4);
  rm(a1, v4, v13);
  return v11[3];
}

void *ExpandStringWithChar(uint64_t a1, int a2, void *a3, unint64_t *a4, unint64_t *a5, size_t a6)
{
  v7 = a3;
  if (*a4 + 1 >= *a5)
  {
    v7 = genrealloc(a1, a3, *a5, a6);
    *a5 = a6;
  }

  if (a2 != 8)
  {
    *(v7 + *a4) = a2;
    v11 = *a4 + 1;
LABEL_12:
    *a4 = v11;
    goto LABEL_13;
  }

  v11 = *a4;
  if (*a4 >= 2)
  {
    --v11;
    while (*(v7 + v11) <= -65)
    {
      *a4 = v11;
      if (v11-- <= 1)
      {
        goto LABEL_11;
      }
    }

    goto LABEL_12;
  }

  if (v11)
  {
LABEL_11:
    v11 = 0;
    goto LABEL_12;
  }

LABEL_13:
  *(v7 + v11) = 0;
  return v7;
}

char *CopyString(uint64_t a1, char *__s)
{
  if (!__s)
  {
    return 0;
  }

  v4 = strlen(__s);
  v5 = genalloc(a1, v4 + 1);
  genstrcpy(v5, __s);
  return v5;
}

uint64_t DeleteString(uint64_t result, char *__s)
{
  if (__s)
  {
    v3 = result;
    v4 = strlen(__s) + 1;

    return genfree(v3, __s, v4);
  }

  return result;
}

uint64_t AppendStrings(uint64_t a1, char *a2, char *a3)
{
  v9 = 0;
  v10 = 0;
  v5 = AppendToString(a1, a2, 0, &v10, &v9);
  v6 = AppendToString(a1, a3, v5, &v10, &v9);
  v7 = EnvAddSymbol(a1, v6);
  rm(a1, v6, v9);
  return v7[3];
}

char *AppendToString(uint64_t a1, char *__s, char *a3, void *a4, unint64_t *a5)
{
  v10 = strlen(__s);
  v11 = v10;
  v12 = v10 + 1;
  v13 = v10 + 1 + *a4;
  if (v13 > *a5)
  {
    a3 = genrealloc(a1, a3, *a5, v13);
    *a5 = *a4 + v12;
  }

  if (a3)
  {
    genstrcpy(&a3[*a4], __s);
    *a4 += v11;
  }

  return a3;
}

void *EnlargeString(uint64_t a1, uint64_t a2, void *a3, void *a4, unint64_t *a5)
{
  v6 = a2 + 1;
  v7 = a2 + 1 + *a4;
  if (v7 <= *a5)
  {
    return a3;
  }

  result = genrealloc(a1, a3, *a5, v7);
  *a5 = v6 + *a4;
  return result;
}

char *InsertInString(uint64_t a1, char *__s, uint64_t a3, char *a4, void *a5, unint64_t *a6)
{
  v12 = strlen(__s);
  v13 = v12 + 1 + *a5;
  if (v13 > *a6)
  {
    a4 = genrealloc(a1, a4, *a6, v13);
    *a6 = *a5 + v12 + 1;
  }

  if (a4)
  {
    memmove(&a4[a3], &a4[a3 + v12], *a5 - a3);
    genstrncpy(&a4[*a5], __s, v12);
    *a5 += v12;
  }

  return a4;
}

char *AppendNToString(uint64_t a1, char *__src, char *a3, size_t __n, uint64_t *a5, unint64_t *a6)
{
  v8 = a3;
  if (__src[__n - 1])
  {
    v10 = __n + 1;
  }

  else
  {
    v10 = __n;
  }

  v11 = v10 + *a5;
  if (v11 > *a6)
  {
    v8 = genrealloc(a1, a3, *a6, v11);
    *a6 = *a5 + v10;
  }

  if (v8)
  {
    genstrncpy(&v8[*a5], __src, __n);
    v13 = v10 + *a5 - 1;
    *a5 = v13;
    v8[v13] = 0;
  }

  return v8;
}

void *AddFunctionToCallListWithContext(uint64_t a1, uint64_t a2, int a3, uint64_t a4, void *a5, __int16 a6, uint64_t a7)
{
  v13 = *(a1 + 48);
  v14 = *(v13 + 472);
  v15 = *(*(v14 + 40) + 384);
  if (v15)
  {
    *(v14 + 32) = v15;
    *(*(*(v13 + 472) + 40) + 384) = **(*(v13 + 472) + 32);
    v16 = *(*(*(a1 + 48) + 472) + 32);
  }

  else
  {
    v16 = genalloc(a1, 0x30uLL);
  }

  *v16 = a2;
  v16[1] = a4;
  *(v16 + 4) = a3;
  *(v16 + 16) = a6;
  v16[5] = a7;
  if (!a5)
  {
    v19 = 0;
    v18 = v16;
LABEL_12:
    a5 = v16;
    goto LABEL_13;
  }

  if (*(a5 + 4) <= a3)
  {
    v18 = v16;
    v19 = a5;
    goto LABEL_12;
  }

  v17 = a5;
  do
  {
    v18 = v17;
    v17 = v17[3];
  }

  while (v17 && *(v17 + 4) > a3);
  v16[3] = v17;
  v19 = v16;
LABEL_13:
  v18[3] = v19;
  return a5;
}

uint64_t DeallocateCallList(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    do
    {
      v2 = *(a2 + 24);
      v3 = *(result + 48);
      *(*(v3 + 472) + 32) = a2;
      **(*(v3 + 472) + 32) = *(*(*(v3 + 472) + 40) + 384);
      *(*(*(v3 + 472) + 40) + 384) = *(*(v3 + 472) + 32);
      a2 = v2;
    }

    while (v2);
  }

  return result;
}

uint64_t ItemHashValue(uint64_t a1, int a2, uint64_t a3, unint64_t a4)
{
  if (a2 > 3)
  {
    switch(a2)
    {
      case 4:

        return HashMultifield(a3, a4);
      case 5:
        v9 = *(a3 + 24);

        return HashExternalAddress(v9, a4);
      case 6:
        return *(a3 + 56) % a4;
      default:
        goto LABEL_18;
    }
  }

  else if ((a2 - 2) < 2)
  {
    v7 = *(a3 + 24);

    return HashSymbol(v7, a4);
  }

  else
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v5 = *(a3 + 24);

        return HashInteger(v5, a4);
      }

LABEL_18:
      SystemError(a1, "UTILITY", 1);
      return 0;
    }

    v8 = *(a3 + 24);

    return HashFloat(a4, v8);
  }
}

uint64_t (*YieldTime(uint64_t a1))(void)
{
  v1 = *(*(a1 + 48) + 440);
  result = *(v1 + 24);
  if (result)
  {
    if (*(v1 + 20))
    {
      return result();
    }
  }

  return result;
}

uint64_t EnvDecrementGCLocks(uint64_t result)
{
  v1 = result;
  v2 = *(result + 48);
  v3 = *(v2 + 440);
  v4 = *(v3 + 16);
  if (v4 >= 1)
  {
    *(v3 + 16) = v4 - 1;
    LOWORD(v4) = v4 - 1;
  }

  if (*(*(v3 + 112) + 2) && !**(v2 + 320) && !**(v2 + 352) && v4 == 0)
  {
    CleanCurrentGarbageFrame(result, 0);

    return CallPeriodicTasks(v1);
  }

  return result;
}

uint64_t EnablePeriodicFunctions(uint64_t a1, __int16 a2)
{
  v2 = *(*(a1 + 48) + 440);
  result = *(v2 + 18);
  *(v2 + 18) = a2;
  return result;
}

uint64_t EnableYieldFunction(uint64_t a1, __int16 a2)
{
  v2 = *(*(a1 + 48) + 440);
  result = *(v2 + 20);
  *(v2 + 20) = a2;
  return result;
}

void *AddTrackedMemory(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 48);
  v7 = *(v6 + 472);
  v8 = *(*(v7 + 40) + 256);
  if (v8)
  {
    *(v7 + 32) = v8;
    *(*(*(v6 + 472) + 40) + 256) = **(*(v6 + 472) + 32);
    v9 = *(a1 + 48);
    result = *(*(v9 + 472) + 32);
  }

  else
  {
    result = genalloc(a1, 0x20uLL);
    v9 = *(a1 + 48);
  }

  *result = a2;
  result[2] = 0;
  result[3] = a3;
  result[1] = *(*(v9 + 440) + 32);
  *(*(v9 + 440) + 32) = result;
  return result;
}

uint64_t RemoveTrackedMemory(uint64_t result, uint64_t a2)
{
  v3 = *(a2 + 8);
  v2 = *(a2 + 16);
  if (v2)
  {
    v4 = (v2 + 8);
  }

  else
  {
    v4 = (*(*(result + 48) + 440) + 32);
  }

  *v4 = v3;
  if (v3)
  {
    *(v3 + 16) = v2;
  }

  v5 = *(result + 48);
  *(*(v5 + 472) + 32) = a2;
  **(*(v5 + 472) + 32) = *(*(*(v5 + 472) + 40) + 256);
  *(*(*(v5 + 472) + 40) + 256) = *(*(v5 + 472) + 32);
  return result;
}

uint64_t UTF8Length(_BYTE *a1)
{
  if (!*a1)
  {
    return 0;
  }

  v1 = 0;
  v2 = 0;
  do
  {
    v3 = v2 + 1;
    v4 = a1[v2 + 1];
    if ((v4 & 0xC0) == 0x80 && (v3 = v2 + 2, v4 = a1[v2 + 2], (v4 & 0xC0) == 0x80))
    {
      v5 = v2 + 3;
      v6 = a1[v2 + 3] & 0xC0;
      v2 += 4;
      if (v6 != 128)
      {
        v2 = v5;
      }

      v4 = a1[v2];
    }

    else
    {
      v2 = v3;
    }

    ++v1;
  }

  while (v4);
  return v1;
}

uint64_t UTF8Increment(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  v3 = *a2 + 1;
  *a2 = v3;
  if ((*(result + v3) & 0xC0) == 0x80)
  {
    *a2 = v2 + 2;
    if ((*(result + v2 + 2) & 0xC0) == 0x80)
    {
      *a2 = v2 + 3;
      if ((*(result + v2 + 3) & 0xC0) == 0x80)
      {
        *a2 = v2 + 4;
      }
    }
  }

  return result;
}

uint64_t UTF8Offset(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = 0;
  while (*(a1 + v2))
  {
    v3 = v2 + 1;
    if ((*(a1 + v2 + 1) & 0xC0) == 0x80)
    {
      v3 = v2 + 2;
      if ((*(a1 + v2 + 2) & 0xC0) == 0x80)
      {
        v3 = v2 + 3;
        v4 = *(a1 + v2 + 3) & 0xC0;
        v5 = v2 + 4;
        if (v4 == 128)
        {
          v3 = v5;
        }
      }
    }

    v2 = v3;
    if (!--a2)
    {
      return v3;
    }
  }

  return v2;
}

uint64_t UTF8CharNum(uint64_t a1, unint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v3 = 0;
  result = 0;
  do
  {
    if (!*(a1 + v3))
    {
      break;
    }

    v5 = v3 + 1;
    if ((*(a1 + v3 + 1) & 0xC0) == 0x80)
    {
      v5 = v3 + 2;
      if ((*(a1 + v3 + 2) & 0xC0) == 0x80)
      {
        v5 = v3 + 3;
        v6 = *(a1 + v3 + 3) & 0xC0;
        v7 = v3 + 4;
        if (v6 == 128)
        {
          v5 = v7;
        }
      }
    }

    ++result;
    v3 = v5;
  }

  while (v5 < a2);
  return result;
}

BOOL CheckArgumentAgainstRestriction(uint64_t a1, unsigned __int16 *a2, int a3)
{
  v5 = ExpressionToConstraintRecord(a1, a2);
  v6 = ArgumentTypeToConstraintRecord(a1, a3);
  v7 = IntersectConstraints(a1, v5, v6);
  RemoveConstraint(a1, v5);
  RemoveConstraint(a1, v6);
  v8 = UnmatchableConstraint(v7) != 0;
  RemoveConstraint(a1, v7);
  return v8;
}

uint64_t ConstantExpression(unsigned __int16 *a1)
{
  if (!a1)
  {
    return 1;
  }

  while (*a1 <= 3u)
  {
    a1 = *(a1 + 3);
    if (!a1)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t IdenticalExpression(void *a1, void *a2)
{
  v2 = a2;
  v3 = a1;
  if (!a1 || !a2)
  {
    return v3 == v2;
  }

  while (*v3 == *v2 && v3[1] == v2[1])
  {
    result = IdenticalExpression(v3[2], v2[2]);
    if (!result)
    {
      return result;
    }

    v3 = v3[3];
    v2 = v2[3];
    if (!v3 || !v2)
    {
      return v3 == v2;
    }
  }

  return 0;
}

uint64_t CountArguments(uint64_t a1)
{
  for (i = 0; a1; a1 = *(a1 + 24))
  {
    i = (i + 1);
  }

  return i;
}

void *CopyExpression(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v4 = GenConstant(a1, *a2, *(a2 + 8));
  v4[2] = CopyExpression(a1, *(a2 + 16));
  v5 = *(a2 + 24);
  if (v5)
  {
    v6 = v4;
    do
    {
      v7 = GenConstant(a1, *v5, *(v5 + 8));
      v7[2] = CopyExpression(a1, *(v5 + 16));
      v6[3] = v7;
      v5 = *(v5 + 24);
      v6 = v7;
    }

    while (v5);
  }

  return v4;
}

void *GenConstant(uint64_t a1, __int16 a2, uint64_t a3)
{
  v5 = *(a1 + 48);
  v6 = *(v5 + 472);
  v7 = *(*(v6 + 40) + 256);
  if (v7)
  {
    *(v6 + 32) = v7;
    *(*(*(v5 + 472) + 40) + 256) = **(*(v5 + 472) + 32);
    result = *(*(*(a1 + 48) + 472) + 32);
  }

  else
  {
    result = genalloc(a1, 0x20uLL);
  }

  result[2] = 0;
  result[3] = 0;
  *result = a2;
  result[1] = a3;
  return result;
}

uint64_t ExpressionContainsVariables(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v3 = result;
    while (1)
    {
      v4 = *(v3 + 2);
      if (v4)
      {
        if (ExpressionContainsVariables(v4, a2))
        {
          break;
        }
      }

      v5 = *v3;
      if (v5 == 33)
      {
        if (a2 == 1)
        {
          return 1;
        }
      }

      else
      {
        v6 = (v5 - 35) < 2 || v5 == 6;
        if (v6 || a2 == 1 && v5 == 34)
        {
          return 1;
        }
      }

      v3 = *(v3 + 3);
      if (!v3)
      {
        return 0;
      }
    }

    return 1;
  }

  return result;
}

uint64_t ExpressionSize(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = a1;
  v2 = 0;
  do
  {
    ++v2;
    if (*(v1 + 16))
    {
      v2 += ExpressionSize();
    }

    v1 = *(v1 + 24);
  }

  while (v1);
  return v2;
}

uint64_t PrintExpression(uint64_t result, FILE *a2, uint64_t *a3, __n128 a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a3)
  {
    v9 = a3;
    for (i = result; ; EnvPrintRouter(i, a2, " "))
    {
      v12 = *v9;
      if (*v9 <= 0x21u)
      {
        if (v12 == 30)
        {
          EnvPrintRouter(i, a2, "(");
          EnvPrintRouter(i, a2, *(*v9[1] + 24));
          if (v9[2])
          {
            EnvPrintRouter(i, a2, " ");
            v21 = v9[2];
          }

          else
          {
            v21 = 0;
          }

          PrintExpression(i, a2, v21);
          v19 = i;
          v20 = a2;
          v18 = ")";
          goto LABEL_13;
        }

        if (v12 != 33)
        {
LABEL_10:
          v16 = *(*(i + 48) + 352);
          v17 = *v16;
          *v16 = v9;
          result = PrintAtom(i, a2, v12, v9[1], a6, a7, a8, a9, a4);
          **(*(i + 48) + 352) = v17;
          goto LABEL_14;
        }
      }

      else
      {
        if (v12 == 34 || v12 == 36)
        {
          v13 = i;
          v14 = a2;
          v15 = "$?";
          goto LABEL_12;
        }

        if (v12 != 35)
        {
          goto LABEL_10;
        }
      }

      v13 = i;
      v14 = a2;
      v15 = "?";
LABEL_12:
      EnvPrintRouter(v13, v14, v15);
      v18 = *(v9[1] + 24);
      v19 = i;
      v20 = a2;
LABEL_13:
      result = EnvPrintRouter(v19, v20, v18);
LABEL_14:
      v9 = v9[3];
      if (!v9)
      {
        return result;
      }
    }
  }

  return result;
}

void *CombineExpressions(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = a3;
  if (a2)
  {
    if (!a3)
    {
      return a2;
    }

    v5 = a2[1];
    v6 = *(a1 + 48);
    v7 = **(v6 + 360);
    v8 = *(v3 + 8);
    if (v5 != v7)
    {
      if (v8 != v7)
      {
        v9 = GenConstant(a1, 30, v7);
        a2[3] = v3;
        v9[2] = a2;
        return v9;
      }

      v12 = *(v3 + 16);
      if (v12)
      {
        *(v3 + 16) = a2;
        a2[3] = v12;
        return v3;
      }

      goto LABEL_15;
    }

    v10 = a2[2];
    if (v8 == v5)
    {
      if (v10)
      {
        do
        {
          v13 = v10;
          v10 = *(v10 + 24);
        }

        while (v10);
        *(v13 + 24) = *(v3 + 16);
LABEL_15:
        *(*(v6 + 472) + 32) = v3;
        **(*(v6 + 472) + 32) = *(*(*(v6 + 472) + 40) + 256);
        *(*(*(v6 + 472) + 40) + 256) = *(*(v6 + 472) + 32);
        return a2;
      }
    }

    else if (v10)
    {
      do
      {
        v11 = v10;
        v10 = *(v10 + 24);
      }

      while (v10);
      *(v11 + 24) = v3;
      return a2;
    }

    *(*(v6 + 472) + 32) = a2;
    **(*(v6 + 472) + 32) = *(*(*(v6 + 472) + 40) + 256);
    *(*(*(v6 + 472) + 40) + 256) = *(*(v6 + 472) + 32);
  }

  return v3;
}

void *NegateExpression(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v3 = *(a1 + 48);
  v4 = *(*(v3 + 360) + 32);
  if (*(a2 + 8) == v4)
  {
    result = *(a2 + 16);
    *(*(v3 + 472) + 32) = a2;
    **(*(v3 + 472) + 32) = *(*(*(v3 + 472) + 40) + 256);
    *(*(*(v3 + 472) + 40) + 256) = *(*(v3 + 472) + 32);
  }

  else
  {
    result = GenConstant(a1, 30, v4);
    result[2] = a2;
  }

  return result;
}

uint64_t AppendExpressions(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    return a2;
  }

  if (a2)
  {
    v2 = result;
    do
    {
      v3 = v2;
      v2 = *(v2 + 24);
    }

    while (v2);
    *(v3 + 24) = a2;
  }

  return result;
}

void sub_2326654E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_232667920(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, id location, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, id a49, id a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, id a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, id a61, uint64_t a62, uint64_t a63)
{
  objc_destroyWeak((v69 + 40));
  objc_destroyWeak((v68 + 40));
  objc_destroyWeak(&location);
  objc_destroyWeak((v70 + 32));
  objc_destroyWeak((v71 + 40));
  objc_destroyWeak(&a49);
  objc_destroyWeak(&a50);
  objc_destroyWeak(&a55);
  objc_destroyWeak(&a61);
  objc_destroyWeak(&a67);
  objc_destroyWeak(&a68);
  objc_destroyWeak(&STACK[0x208]);
  objc_destroyWeak(&STACK[0x238]);
  objc_destroyWeak(&STACK[0x240]);
  _Unwind_Resume(a1);
}

uint64_t compose_internal_symptom(uint64_t a1)
{
  v1 = internal_symptom_new(a1);
  internal_symptom_set_qualifier();
  internal_symptom_set_qualifier();
  internal_symptom_set_qualifier();
  return v1;
}

uint64_t __Block_byref_object_copy__8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t AWDSymptomsSignificantOperationalEventReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
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
        v53 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v53 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v53 & 0x7F) << v5;
        if ((v53 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
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

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 3)
      {
        if (v13 == 1)
        {
          v24 = 0;
          v25 = 0;
          v26 = 0;
          *(a1 + 56) |= 2u;
          while (1)
          {
            v54 = 0;
            v27 = [a2 position] + 1;
            if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
            {
              v29 = [a2 data];
              [v29 getBytes:&v54 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v26 |= (v54 & 0x7F) << v24;
            if ((v54 & 0x80) == 0)
            {
              break;
            }

            v24 += 7;
            v11 = v25++ >= 9;
            if (v11)
            {
              v30 = 0;
              goto LABEL_79;
            }
          }

          if ([a2 hasError])
          {
            v30 = 0;
          }

          else
          {
            v30 = v26;
          }

LABEL_79:
          v50 = 16;
LABEL_88:
          *(a1 + v50) = v30;
          goto LABEL_98;
        }

        if (v13 == 2)
        {
          v44 = 0;
          v45 = 0;
          v46 = 0;
          *(a1 + 56) |= 8u;
          while (1)
          {
            v57 = 0;
            v47 = [a2 position] + 1;
            if (v47 >= [a2 position] && (v48 = objc_msgSend(a2, "position") + 1, v48 <= objc_msgSend(a2, "length")))
            {
              v49 = [a2 data];
              [v49 getBytes:&v57 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v46 |= (v57 & 0x7F) << v44;
            if ((v57 & 0x80) == 0)
            {
              break;
            }

            v44 += 7;
            v11 = v45++ >= 9;
            if (v11)
            {
              v23 = 0;
              goto LABEL_96;
            }
          }

          if ([a2 hasError])
          {
            v23 = 0;
          }

          else
          {
            v23 = v46;
          }

LABEL_96:
          v51 = 48;
          goto LABEL_97;
        }

        if (v13 != 3)
        {
          goto LABEL_47;
        }

        v14 = PBReaderReadString();
        v15 = 24;
      }

      else
      {
        if (v13 > 5)
        {
          if (v13 != 6)
          {
            if (v13 != 7)
            {
LABEL_47:
              result = PBReaderSkipValueWithTag();
              if (!result)
              {
                return result;
              }

              goto LABEL_98;
            }

            v17 = 0;
            v18 = 0;
            v19 = 0;
            *(a1 + 56) |= 0x10u;
            while (1)
            {
              v55 = 0;
              v20 = [a2 position] + 1;
              if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 1, v21 <= objc_msgSend(a2, "length")))
              {
                v22 = [a2 data];
                [v22 getBytes:&v55 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v19 |= (v55 & 0x7F) << v17;
              if ((v55 & 0x80) == 0)
              {
                break;
              }

              v17 += 7;
              v11 = v18++ >= 9;
              if (v11)
              {
                v23 = 0;
                goto LABEL_92;
              }
            }

            if ([a2 hasError])
            {
              v23 = 0;
            }

            else
            {
              v23 = v19;
            }

LABEL_92:
            v51 = 52;
            goto LABEL_97;
          }

          v38 = 0;
          v39 = 0;
          v40 = 0;
          *(a1 + 56) |= 1u;
          while (1)
          {
            v58 = 0;
            v41 = [a2 position] + 1;
            if (v41 >= [a2 position] && (v42 = objc_msgSend(a2, "position") + 1, v42 <= objc_msgSend(a2, "length")))
            {
              v43 = [a2 data];
              [v43 getBytes:&v58 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v40 |= (v58 & 0x7F) << v38;
            if ((v58 & 0x80) == 0)
            {
              break;
            }

            v38 += 7;
            v11 = v39++ >= 9;
            if (v11)
            {
              v30 = 0;
              goto LABEL_87;
            }
          }

          if ([a2 hasError])
          {
            v30 = 0;
          }

          else
          {
            v30 = v40;
          }

LABEL_87:
          v50 = 8;
          goto LABEL_88;
        }

        if (v13 == 4)
        {
          v32 = 0;
          v33 = 0;
          v34 = 0;
          *(a1 + 56) |= 4u;
          while (1)
          {
            v56 = 0;
            v35 = [a2 position] + 1;
            if (v35 >= [a2 position] && (v36 = objc_msgSend(a2, "position") + 1, v36 <= objc_msgSend(a2, "length")))
            {
              v37 = [a2 data];
              [v37 getBytes:&v56 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v34 |= (v56 & 0x7F) << v32;
            if ((v56 & 0x80) == 0)
            {
              break;
            }

            v32 += 7;
            v11 = v33++ >= 9;
            if (v11)
            {
              v23 = 0;
              goto LABEL_83;
            }
          }

          if ([a2 hasError])
          {
            v23 = 0;
          }

          else
          {
            v23 = v34;
          }

LABEL_83:
          v51 = 32;
LABEL_97:
          *(a1 + v51) = v23;
          goto LABEL_98;
        }

        if (v13 != 5)
        {
          goto LABEL_47;
        }

        v14 = PBReaderReadString();
        v15 = 40;
      }

      v16 = *(a1 + v15);
      *(a1 + v15) = v14;

LABEL_98:
      v52 = [a2 position];
    }

    while (v52 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDSymptomsNetworkAnalyticsRRCConnectedPeriodReadFrom(void *a1, void *a2)
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
      v350 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v350 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v350 & 0x7F) << v6;
      if ((v350 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      v12 = v7++ >= 9;
      if (v12)
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

    switch((v13 >> 3))
    {
      case 1u:
        v14 = 0;
        v15 = 0;
        v16 = 0;
        a1[36] |= 0x800uLL;
        while (1)
        {
          v350 = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:&v350 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v350 & 0x7F) << v14;
          if ((v350 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v12 = v15++ >= 9;
          if (v12)
          {
            v20 = 0;
LABEL_626:
            v349 = 12;
            goto LABEL_667;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v16;
        }

        goto LABEL_626;
      case 2u:
        v178 = 0;
        v179 = 0;
        v180 = 0;
        a1[36] |= 0x40000uLL;
        while (1)
        {
          v350 = 0;
          v181 = [a2 position] + 1;
          if (v181 >= [a2 position] && (v182 = objc_msgSend(a2, "position") + 1, v182 <= objc_msgSend(a2, "length")))
          {
            v183 = [a2 data];
            [v183 getBytes:&v350 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v180 |= (v350 & 0x7F) << v178;
          if ((v350 & 0x80) == 0)
          {
            break;
          }

          v178 += 7;
          v12 = v179++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_630;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v180;
        }

LABEL_630:
        v348 = 140;
        goto LABEL_740;
      case 3u:
        v154 = 0;
        v155 = 0;
        v156 = 0;
        a1[36] |= 0x2000uLL;
        while (1)
        {
          v350 = 0;
          v157 = [a2 position] + 1;
          if (v157 >= [a2 position] && (v158 = objc_msgSend(a2, "position") + 1, v158 <= objc_msgSend(a2, "length")))
          {
            v159 = [a2 data];
            [v159 getBytes:&v350 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v156 |= (v350 & 0x7F) << v154;
          if ((v350 & 0x80) == 0)
          {
            break;
          }

          v154 += 7;
          v12 = v155++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_610;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v156;
        }

LABEL_610:
        v348 = 120;
        goto LABEL_740;
      case 4u:
        v166 = 0;
        v167 = 0;
        v168 = 0;
        a1[36] |= 0x4000uLL;
        while (1)
        {
          v350 = 0;
          v169 = [a2 position] + 1;
          if (v169 >= [a2 position] && (v170 = objc_msgSend(a2, "position") + 1, v170 <= objc_msgSend(a2, "length")))
          {
            v171 = [a2 data];
            [v171 getBytes:&v350 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v168 |= (v350 & 0x7F) << v166;
          if ((v350 & 0x80) == 0)
          {
            break;
          }

          v166 += 7;
          v12 = v167++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_618;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v168;
        }

LABEL_618:
        v348 = 124;
        goto LABEL_740;
      case 5u:
        v118 = 0;
        v119 = 0;
        v120 = 0;
        a1[36] |= 0x400uLL;
        while (1)
        {
          v350 = 0;
          v121 = [a2 position] + 1;
          if (v121 >= [a2 position] && (v122 = objc_msgSend(a2, "position") + 1, v122 <= objc_msgSend(a2, "length")))
          {
            v123 = [a2 data];
            [v123 getBytes:&v350 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v120 |= (v350 & 0x7F) << v118;
          if ((v350 & 0x80) == 0)
          {
            break;
          }

          v118 += 7;
          v12 = v119++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_586;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v120;
        }

LABEL_586:
        v349 = 11;
        goto LABEL_667;
      case 6u:
        v208 = 0;
        v209 = 0;
        v210 = 0;
        a1[36] |= 0x40uLL;
        while (1)
        {
          v350 = 0;
          v211 = [a2 position] + 1;
          if (v211 >= [a2 position] && (v212 = objc_msgSend(a2, "position") + 1, v212 <= objc_msgSend(a2, "length")))
          {
            v213 = [a2 data];
            [v213 getBytes:&v350 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v210 |= (v350 & 0x7F) << v208;
          if ((v350 & 0x80) == 0)
          {
            break;
          }

          v208 += 7;
          v12 = v209++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_650;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v210;
        }

LABEL_650:
        v349 = 7;
        goto LABEL_667;
      case 7u:
        v226 = 0;
        v227 = 0;
        v228 = 0;
        a1[36] |= 0x20000uLL;
        while (1)
        {
          v350 = 0;
          v229 = [a2 position] + 1;
          if (v229 >= [a2 position] && (v230 = objc_msgSend(a2, "position") + 1, v230 <= objc_msgSend(a2, "length")))
          {
            v231 = [a2 data];
            [v231 getBytes:&v350 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v228 |= (v350 & 0x7F) << v226;
          if ((v350 & 0x80) == 0)
          {
            break;
          }

          v226 += 7;
          v12 = v227++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_662;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v228;
        }

LABEL_662:
        v348 = 136;
        goto LABEL_740;
      case 8u:
        v172 = 0;
        v173 = 0;
        v174 = 0;
        a1[36] |= 0x8000uLL;
        while (1)
        {
          v350 = 0;
          v175 = [a2 position] + 1;
          if (v175 >= [a2 position] && (v176 = objc_msgSend(a2, "position") + 1, v176 <= objc_msgSend(a2, "length")))
          {
            v177 = [a2 data];
            [v177 getBytes:&v350 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v174 |= (v350 & 0x7F) << v172;
          if ((v350 & 0x80) == 0)
          {
            break;
          }

          v172 += 7;
          v12 = v173++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_622;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v174;
        }

LABEL_622:
        v348 = 128;
        goto LABEL_740;
      case 9u:
        v239 = 0;
        v240 = 0;
        v241 = 0;
        a1[36] |= 0x10000uLL;
        while (1)
        {
          v350 = 0;
          v242 = [a2 position] + 1;
          if (v242 >= [a2 position] && (v243 = objc_msgSend(a2, "position") + 1, v243 <= objc_msgSend(a2, "length")))
          {
            v244 = [a2 data];
            [v244 getBytes:&v350 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v241 |= (v350 & 0x7F) << v239;
          if ((v350 & 0x80) == 0)
          {
            break;
          }

          v239 += 7;
          v12 = v240++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_671;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v241;
        }

LABEL_671:
        v348 = 132;
        goto LABEL_740;
      case 0xAu:
        v136 = 0;
        v137 = 0;
        v138 = 0;
        a1[36] |= 0x20uLL;
        while (1)
        {
          v350 = 0;
          v139 = [a2 position] + 1;
          if (v139 >= [a2 position] && (v140 = objc_msgSend(a2, "position") + 1, v140 <= objc_msgSend(a2, "length")))
          {
            v141 = [a2 data];
            [v141 getBytes:&v350 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v138 |= (v350 & 0x7F) << v136;
          if ((v350 & 0x80) == 0)
          {
            break;
          }

          v136 += 7;
          v12 = v137++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_598;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v138;
        }

LABEL_598:
        v349 = 6;
        goto LABEL_667;
      case 0xBu:
        v233 = 0;
        v234 = 0;
        v235 = 0;
        a1[36] |= 0x10uLL;
        while (1)
        {
          v350 = 0;
          v236 = [a2 position] + 1;
          if (v236 >= [a2 position] && (v237 = objc_msgSend(a2, "position") + 1, v237 <= objc_msgSend(a2, "length")))
          {
            v238 = [a2 data];
            [v238 getBytes:&v350 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v235 |= (v350 & 0x7F) << v233;
          if ((v350 & 0x80) == 0)
          {
            break;
          }

          v233 += 7;
          v12 = v234++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_666;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v235;
        }

LABEL_666:
        v349 = 5;
        goto LABEL_667;
      case 0xCu:
        v106 = 0;
        v107 = 0;
        v108 = 0;
        a1[36] |= 8uLL;
        while (1)
        {
          v350 = 0;
          v109 = [a2 position] + 1;
          if (v109 >= [a2 position] && (v110 = objc_msgSend(a2, "position") + 1, v110 <= objc_msgSend(a2, "length")))
          {
            v111 = [a2 data];
            [v111 getBytes:&v350 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v108 |= (v350 & 0x7F) << v106;
          if ((v350 & 0x80) == 0)
          {
            break;
          }

          v106 += 7;
          v12 = v107++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_578;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v108;
        }

LABEL_578:
        v349 = 4;
        goto LABEL_667;
      case 0xDu:
        v130 = 0;
        v131 = 0;
        v132 = 0;
        a1[36] |= 4uLL;
        while (1)
        {
          v350 = 0;
          v133 = [a2 position] + 1;
          if (v133 >= [a2 position] && (v134 = objc_msgSend(a2, "position") + 1, v134 <= objc_msgSend(a2, "length")))
          {
            v135 = [a2 data];
            [v135 getBytes:&v350 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v132 |= (v350 & 0x7F) << v130;
          if ((v350 & 0x80) == 0)
          {
            break;
          }

          v130 += 7;
          v12 = v131++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_594;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v132;
        }

LABEL_594:
        v349 = 3;
        goto LABEL_667;
      case 0xEu:
        v220 = 0;
        v221 = 0;
        v222 = 0;
        a1[36] |= 1uLL;
        while (1)
        {
          v350 = 0;
          v223 = [a2 position] + 1;
          if (v223 >= [a2 position] && (v224 = objc_msgSend(a2, "position") + 1, v224 <= objc_msgSend(a2, "length")))
          {
            v225 = [a2 data];
            [v225 getBytes:&v350 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v222 |= (v350 & 0x7F) << v220;
          if ((v350 & 0x80) == 0)
          {
            break;
          }

          v220 += 7;
          v12 = v221++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_658;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v222;
        }

LABEL_658:
        v349 = 1;
        goto LABEL_667;
      case 0xFu:
        v88 = 0;
        v89 = 0;
        v90 = 0;
        a1[36] |= 2uLL;
        while (1)
        {
          v350 = 0;
          v91 = [a2 position] + 1;
          if (v91 >= [a2 position] && (v92 = objc_msgSend(a2, "position") + 1, v92 <= objc_msgSend(a2, "length")))
          {
            v93 = [a2 data];
            [v93 getBytes:&v350 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v90 |= (v350 & 0x7F) << v88;
          if ((v350 & 0x80) == 0)
          {
            break;
          }

          v88 += 7;
          v12 = v89++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_566;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v90;
        }

LABEL_566:
        v349 = 2;
        goto LABEL_667;
      case 0x10u:
        v160 = 0;
        v161 = 0;
        v162 = 0;
        a1[36] |= 0x80uLL;
        while (1)
        {
          v350 = 0;
          v163 = [a2 position] + 1;
          if (v163 >= [a2 position] && (v164 = objc_msgSend(a2, "position") + 1, v164 <= objc_msgSend(a2, "length")))
          {
            v165 = [a2 data];
            [v165 getBytes:&v350 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v162 |= (v350 & 0x7F) << v160;
          if ((v350 & 0x80) == 0)
          {
            break;
          }

          v160 += 7;
          v12 = v161++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_614;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v162;
        }

LABEL_614:
        v349 = 8;
        goto LABEL_667;
      case 0x11u:
        v76 = 0;
        v77 = 0;
        v78 = 0;
        a1[36] |= 0x100uLL;
        while (1)
        {
          v350 = 0;
          v79 = [a2 position] + 1;
          if (v79 >= [a2 position] && (v80 = objc_msgSend(a2, "position") + 1, v80 <= objc_msgSend(a2, "length")))
          {
            v81 = [a2 data];
            [v81 getBytes:&v350 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v78 |= (v350 & 0x7F) << v76;
          if ((v350 & 0x80) == 0)
          {
            break;
          }

          v76 += 7;
          v12 = v77++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_558;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v78;
        }

LABEL_558:
        v349 = 9;
        goto LABEL_667;
      case 0x12u:
        v190 = 0;
        v191 = 0;
        v192 = 0;
        a1[36] |= 0x1000uLL;
        while (1)
        {
          v350 = 0;
          v193 = [a2 position] + 1;
          if (v193 >= [a2 position] && (v194 = objc_msgSend(a2, "position") + 1, v194 <= objc_msgSend(a2, "length")))
          {
            v195 = [a2 data];
            [v195 getBytes:&v350 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v192 |= (v350 & 0x7F) << v190;
          if ((v350 & 0x80) == 0)
          {
            break;
          }

          v190 += 7;
          v12 = v191++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_638;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v192;
        }

LABEL_638:
        v349 = 13;
        goto LABEL_667;
      case 0x13u:
        v232 = PBReaderReadString();
        if (v232)
        {
          [a1 addActiveNameDuringPeriod:v232];
        }

        continue;
      case 0x14u:
        v275 = 0;
        v276 = 0;
        v277 = 0;
        a1[36] |= 0x4000000000000uLL;
        while (1)
        {
          v350 = 0;
          v278 = [a2 position] + 1;
          if (v278 >= [a2 position] && (v279 = objc_msgSend(a2, "position") + 1, v279 <= objc_msgSend(a2, "length")))
          {
            v280 = [a2 data];
            [v280 getBytes:&v350 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v277 |= (v350 & 0x7F) << v275;
          if ((v350 & 0x80) == 0)
          {
            break;
          }

          v275 += 7;
          v12 = v276++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_695;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v277;
        }

LABEL_695:
        v348 = 268;
        goto LABEL_740;
      case 0x15u:
        v202 = 0;
        v203 = 0;
        v204 = 0;
        a1[36] |= 0x40000000000uLL;
        while (1)
        {
          v350 = 0;
          v205 = [a2 position] + 1;
          if (v205 >= [a2 position] && (v206 = objc_msgSend(a2, "position") + 1, v206 <= objc_msgSend(a2, "length")))
          {
            v207 = [a2 data];
            [v207 getBytes:&v350 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v204 |= (v350 & 0x7F) << v202;
          if ((v350 & 0x80) == 0)
          {
            break;
          }

          v202 += 7;
          v12 = v203++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_646;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v204;
        }

LABEL_646:
        v348 = 236;
        goto LABEL_740;
      case 0x16u:
        v214 = 0;
        v215 = 0;
        v216 = 0;
        a1[36] |= 0x20000000000uLL;
        while (1)
        {
          v350 = 0;
          v217 = [a2 position] + 1;
          if (v217 >= [a2 position] && (v218 = objc_msgSend(a2, "position") + 1, v218 <= objc_msgSend(a2, "length")))
          {
            v219 = [a2 data];
            [v219 getBytes:&v350 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v216 |= (v350 & 0x7F) << v214;
          if ((v350 & 0x80) == 0)
          {
            break;
          }

          v214 += 7;
          v12 = v215++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_654;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v216;
        }

LABEL_654:
        v348 = 232;
        goto LABEL_740;
      case 0x17u:
        v263 = 0;
        v264 = 0;
        v265 = 0;
        a1[36] |= 0x200000000000uLL;
        while (1)
        {
          v350 = 0;
          v266 = [a2 position] + 1;
          if (v266 >= [a2 position] && (v267 = objc_msgSend(a2, "position") + 1, v267 <= objc_msgSend(a2, "length")))
          {
            v268 = [a2 data];
            [v268 getBytes:&v350 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v265 |= (v350 & 0x7F) << v263;
          if ((v350 & 0x80) == 0)
          {
            break;
          }

          v263 += 7;
          v12 = v264++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_687;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v265;
        }

LABEL_687:
        v348 = 248;
        goto LABEL_740;
      case 0x18u:
        v287 = 0;
        v288 = 0;
        v289 = 0;
        a1[36] |= 0x100000000000uLL;
        while (1)
        {
          v350 = 0;
          v290 = [a2 position] + 1;
          if (v290 >= [a2 position] && (v291 = objc_msgSend(a2, "position") + 1, v291 <= objc_msgSend(a2, "length")))
          {
            v292 = [a2 data];
            [v292 getBytes:&v350 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v289 |= (v350 & 0x7F) << v287;
          if ((v350 & 0x80) == 0)
          {
            break;
          }

          v287 += 7;
          v12 = v288++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_703;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v289;
        }

LABEL_703:
        v348 = 244;
        goto LABEL_740;
      case 0x19u:
        v148 = 0;
        v149 = 0;
        v150 = 0;
        a1[36] |= 0x10000000000uLL;
        while (1)
        {
          v350 = 0;
          v151 = [a2 position] + 1;
          if (v151 >= [a2 position] && (v152 = objc_msgSend(a2, "position") + 1, v152 <= objc_msgSend(a2, "length")))
          {
            v153 = [a2 data];
            [v153 getBytes:&v350 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v150 |= (v350 & 0x7F) << v148;
          if ((v350 & 0x80) == 0)
          {
            break;
          }

          v148 += 7;
          v12 = v149++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_606;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v150;
        }

LABEL_606:
        v348 = 228;
        goto LABEL_740;
      case 0x1Au:
        v142 = 0;
        v143 = 0;
        v144 = 0;
        a1[36] |= 0x400000000000uLL;
        while (1)
        {
          v350 = 0;
          v145 = [a2 position] + 1;
          if (v145 >= [a2 position] && (v146 = objc_msgSend(a2, "position") + 1, v146 <= objc_msgSend(a2, "length")))
          {
            v147 = [a2 data];
            [v147 getBytes:&v350 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v144 |= (v350 & 0x7F) << v142;
          if ((v350 & 0x80) == 0)
          {
            break;
          }

          v142 += 7;
          v12 = v143++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_602;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v144;
        }

LABEL_602:
        v348 = 252;
        goto LABEL_740;
      case 0x1Bu:
        v311 = 0;
        v312 = 0;
        v313 = 0;
        a1[36] |= 0x800000000000uLL;
        while (1)
        {
          v350 = 0;
          v314 = [a2 position] + 1;
          if (v314 >= [a2 position] && (v315 = objc_msgSend(a2, "position") + 1, v315 <= objc_msgSend(a2, "length")))
          {
            v316 = [a2 data];
            [v316 getBytes:&v350 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v313 |= (v350 & 0x7F) << v311;
          if ((v350 & 0x80) == 0)
          {
            break;
          }

          v311 += 7;
          v12 = v312++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_719;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v313;
        }

LABEL_719:
        v348 = 256;
        goto LABEL_740;
      case 0x1Cu:
        v64 = 0;
        v65 = 0;
        v66 = 0;
        a1[36] |= 0x1000000000000uLL;
        while (1)
        {
          v350 = 0;
          v67 = [a2 position] + 1;
          if (v67 >= [a2 position] && (v68 = objc_msgSend(a2, "position") + 1, v68 <= objc_msgSend(a2, "length")))
          {
            v69 = [a2 data];
            [v69 getBytes:&v350 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v66 |= (v350 & 0x7F) << v64;
          if ((v350 & 0x80) == 0)
          {
            break;
          }

          v64 += 7;
          v12 = v65++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_550;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v66;
        }

LABEL_550:
        v348 = 260;
        goto LABEL_740;
      case 0x1Du:
        v293 = 0;
        v294 = 0;
        v295 = 0;
        a1[36] |= 0x80000000000uLL;
        while (1)
        {
          v350 = 0;
          v296 = [a2 position] + 1;
          if (v296 >= [a2 position] && (v297 = objc_msgSend(a2, "position") + 1, v297 <= objc_msgSend(a2, "length")))
          {
            v298 = [a2 data];
            [v298 getBytes:&v350 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v295 |= (v350 & 0x7F) << v293;
          if ((v350 & 0x80) == 0)
          {
            break;
          }

          v293 += 7;
          v12 = v294++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_707;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v295;
        }

LABEL_707:
        v348 = 240;
        goto LABEL_740;
      case 0x1Eu:
        v299 = 0;
        v300 = 0;
        v301 = 0;
        a1[36] |= 0x8000000uLL;
        while (1)
        {
          v350 = 0;
          v302 = [a2 position] + 1;
          if (v302 >= [a2 position] && (v303 = objc_msgSend(a2, "position") + 1, v303 <= objc_msgSend(a2, "length")))
          {
            v304 = [a2 data];
            [v304 getBytes:&v350 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v301 |= (v350 & 0x7F) << v299;
          if ((v350 & 0x80) == 0)
          {
            break;
          }

          v299 += 7;
          v12 = v300++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_711;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v301;
        }

LABEL_711:
        v348 = 176;
        goto LABEL_740;
      case 0x1Fu:
        v245 = 0;
        v246 = 0;
        v247 = 0;
        a1[36] |= 0x4000000uLL;
        while (1)
        {
          v350 = 0;
          v248 = [a2 position] + 1;
          if (v248 >= [a2 position] && (v249 = objc_msgSend(a2, "position") + 1, v249 <= objc_msgSend(a2, "length")))
          {
            v250 = [a2 data];
            [v250 getBytes:&v350 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v247 |= (v350 & 0x7F) << v245;
          if ((v350 & 0x80) == 0)
          {
            break;
          }

          v245 += 7;
          v12 = v246++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_675;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v247;
        }

LABEL_675:
        v348 = 172;
        goto LABEL_740;
      case 0x20u:
        v184 = 0;
        v185 = 0;
        v186 = 0;
        a1[36] |= 0x2000000uLL;
        while (1)
        {
          v350 = 0;
          v187 = [a2 position] + 1;
          if (v187 >= [a2 position] && (v188 = objc_msgSend(a2, "position") + 1, v188 <= objc_msgSend(a2, "length")))
          {
            v189 = [a2 data];
            [v189 getBytes:&v350 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v186 |= (v350 & 0x7F) << v184;
          if ((v350 & 0x80) == 0)
          {
            break;
          }

          v184 += 7;
          v12 = v185++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_634;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v186;
        }

LABEL_634:
        v348 = 168;
        goto LABEL_740;
      case 0x21u:
        v251 = 0;
        v252 = 0;
        v253 = 0;
        a1[36] |= 0x80000uLL;
        while (1)
        {
          v350 = 0;
          v254 = [a2 position] + 1;
          if (v254 >= [a2 position] && (v255 = objc_msgSend(a2, "position") + 1, v255 <= objc_msgSend(a2, "length")))
          {
            v256 = [a2 data];
            [v256 getBytes:&v350 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v253 |= (v350 & 0x7F) << v251;
          if ((v350 & 0x80) == 0)
          {
            break;
          }

          v251 += 7;
          v12 = v252++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_679;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v253;
        }

LABEL_679:
        v348 = 144;
        goto LABEL_740;
      case 0x22u:
        v94 = 0;
        v95 = 0;
        v96 = 0;
        a1[36] |= 0x2000000000uLL;
        while (1)
        {
          v350 = 0;
          v97 = [a2 position] + 1;
          if (v97 >= [a2 position] && (v98 = objc_msgSend(a2, "position") + 1, v98 <= objc_msgSend(a2, "length")))
          {
            v99 = [a2 data];
            [v99 getBytes:&v350 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v96 |= (v350 & 0x7F) << v94;
          if ((v350 & 0x80) == 0)
          {
            break;
          }

          v94 += 7;
          v12 = v95++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_570;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v96;
        }

LABEL_570:
        v348 = 216;
        goto LABEL_740;
      case 0x23u:
        v70 = 0;
        v71 = 0;
        v72 = 0;
        a1[36] |= 0x400000000uLL;
        while (1)
        {
          v350 = 0;
          v73 = [a2 position] + 1;
          if (v73 >= [a2 position] && (v74 = objc_msgSend(a2, "position") + 1, v74 <= objc_msgSend(a2, "length")))
          {
            v75 = [a2 data];
            [v75 getBytes:&v350 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v72 |= (v350 & 0x7F) << v70;
          if ((v350 & 0x80) == 0)
          {
            break;
          }

          v70 += 7;
          v12 = v71++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_554;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v72;
        }

LABEL_554:
        v348 = 204;
        goto LABEL_740;
      case 0x24u:
        v52 = 0;
        v53 = 0;
        v54 = 0;
        a1[36] |= 0x1000000uLL;
        while (1)
        {
          v350 = 0;
          v55 = [a2 position] + 1;
          if (v55 >= [a2 position] && (v56 = objc_msgSend(a2, "position") + 1, v56 <= objc_msgSend(a2, "length")))
          {
            v57 = [a2 data];
            [v57 getBytes:&v350 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v54 |= (v350 & 0x7F) << v52;
          if ((v350 & 0x80) == 0)
          {
            break;
          }

          v52 += 7;
          v12 = v53++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_542;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v54;
        }

LABEL_542:
        v348 = 164;
        goto LABEL_740;
      case 0x25u:
        v58 = 0;
        v59 = 0;
        v60 = 0;
        a1[36] |= 0x2000000000000uLL;
        while (1)
        {
          v350 = 0;
          v61 = [a2 position] + 1;
          if (v61 >= [a2 position] && (v62 = objc_msgSend(a2, "position") + 1, v62 <= objc_msgSend(a2, "length")))
          {
            v63 = [a2 data];
            [v63 getBytes:&v350 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v60 |= (v350 & 0x7F) << v58;
          if ((v350 & 0x80) == 0)
          {
            break;
          }

          v58 += 7;
          v12 = v59++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_546;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v60;
        }

LABEL_546:
        v348 = 264;
        goto LABEL_740;
      case 0x26u:
        v34 = 0;
        v35 = 0;
        v36 = 0;
        a1[36] |= 0x200000uLL;
        while (1)
        {
          v350 = 0;
          v37 = [a2 position] + 1;
          if (v37 >= [a2 position] && (v38 = objc_msgSend(a2, "position") + 1, v38 <= objc_msgSend(a2, "length")))
          {
            v39 = [a2 data];
            [v39 getBytes:&v350 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v36 |= (v350 & 0x7F) << v34;
          if ((v350 & 0x80) == 0)
          {
            break;
          }

          v34 += 7;
          v12 = v35++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_530;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v36;
        }

LABEL_530:
        v348 = 152;
        goto LABEL_740;
      case 0x27u:
        v305 = 0;
        v306 = 0;
        v307 = 0;
        a1[36] |= 0x100000uLL;
        while (1)
        {
          v350 = 0;
          v308 = [a2 position] + 1;
          if (v308 >= [a2 position] && (v309 = objc_msgSend(a2, "position") + 1, v309 <= objc_msgSend(a2, "length")))
          {
            v310 = [a2 data];
            [v310 getBytes:&v350 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v307 |= (v350 & 0x7F) << v305;
          if ((v350 & 0x80) == 0)
          {
            break;
          }

          v305 += 7;
          v12 = v306++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_715;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v307;
        }

LABEL_715:
        v348 = 148;
        goto LABEL_740;
      case 0x28u:
        v269 = 0;
        v270 = 0;
        v271 = 0;
        a1[36] |= 0x40000000000000uLL;
        while (1)
        {
          v350 = 0;
          v272 = [a2 position] + 1;
          if (v272 >= [a2 position] && (v273 = objc_msgSend(a2, "position") + 1, v273 <= objc_msgSend(a2, "length")))
          {
            v274 = [a2 data];
            [v274 getBytes:&v350 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v271 |= (v350 & 0x7F) << v269;
          if ((v350 & 0x80) == 0)
          {
            break;
          }

          v269 += 7;
          v12 = v270++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_691;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v271;
        }

LABEL_691:
        v348 = 284;
        goto LABEL_740;
      case 0x29u:
        v124 = 0;
        v125 = 0;
        v126 = 0;
        a1[36] |= 0x20000000000000uLL;
        while (1)
        {
          v350 = 0;
          v127 = [a2 position] + 1;
          if (v127 >= [a2 position] && (v128 = objc_msgSend(a2, "position") + 1, v128 <= objc_msgSend(a2, "length")))
          {
            v129 = [a2 data];
            [v129 getBytes:&v350 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v126 |= (v350 & 0x7F) << v124;
          if ((v350 & 0x80) == 0)
          {
            break;
          }

          v124 += 7;
          v12 = v125++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_590;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v126;
        }

LABEL_590:
        v348 = 280;
        goto LABEL_740;
      case 0x2Au:
        v196 = 0;
        v197 = 0;
        v198 = 0;
        a1[36] |= 0x400000uLL;
        while (1)
        {
          v350 = 0;
          v199 = [a2 position] + 1;
          if (v199 >= [a2 position] && (v200 = objc_msgSend(a2, "position") + 1, v200 <= objc_msgSend(a2, "length")))
          {
            v201 = [a2 data];
            [v201 getBytes:&v350 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v198 |= (v350 & 0x7F) << v196;
          if ((v350 & 0x80) == 0)
          {
            break;
          }

          v196 += 7;
          v12 = v197++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_642;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v198;
        }

LABEL_642:
        v348 = 156;
        goto LABEL_740;
      case 0x2Bu:
        v281 = 0;
        v282 = 0;
        v283 = 0;
        a1[36] |= 0x800000uLL;
        while (1)
        {
          v350 = 0;
          v284 = [a2 position] + 1;
          if (v284 >= [a2 position] && (v285 = objc_msgSend(a2, "position") + 1, v285 <= objc_msgSend(a2, "length")))
          {
            v286 = [a2 data];
            [v286 getBytes:&v350 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v283 |= (v350 & 0x7F) << v281;
          if ((v350 & 0x80) == 0)
          {
            break;
          }

          v281 += 7;
          v12 = v282++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_699;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v283;
        }

LABEL_699:
        v348 = 160;
        goto LABEL_740;
      case 0x2Cu:
        v28 = 0;
        v29 = 0;
        v30 = 0;
        a1[36] |= 0x10000000uLL;
        while (1)
        {
          v350 = 0;
          v31 = [a2 position] + 1;
          if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
          {
            v33 = [a2 data];
            [v33 getBytes:&v350 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v30 |= (v350 & 0x7F) << v28;
          if ((v350 & 0x80) == 0)
          {
            break;
          }

          v28 += 7;
          v12 = v29++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_526;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v30;
        }

LABEL_526:
        v348 = 180;
        goto LABEL_740;
      case 0x2Du:
        v82 = 0;
        v83 = 0;
        v84 = 0;
        a1[36] |= 0x20000000uLL;
        while (1)
        {
          v350 = 0;
          v85 = [a2 position] + 1;
          if (v85 >= [a2 position] && (v86 = objc_msgSend(a2, "position") + 1, v86 <= objc_msgSend(a2, "length")))
          {
            v87 = [a2 data];
            [v87 getBytes:&v350 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v84 |= (v350 & 0x7F) << v82;
          if ((v350 & 0x80) == 0)
          {
            break;
          }

          v82 += 7;
          v12 = v83++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_562;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v84;
        }

LABEL_562:
        v348 = 184;
        goto LABEL_740;
      case 0x2Eu:
        v257 = 0;
        v258 = 0;
        v259 = 0;
        a1[36] |= 0x40000000uLL;
        while (1)
        {
          v350 = 0;
          v260 = [a2 position] + 1;
          if (v260 >= [a2 position] && (v261 = objc_msgSend(a2, "position") + 1, v261 <= objc_msgSend(a2, "length")))
          {
            v262 = [a2 data];
            [v262 getBytes:&v350 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v259 |= (v350 & 0x7F) << v257;
          if ((v350 & 0x80) == 0)
          {
            break;
          }

          v257 += 7;
          v12 = v258++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_683;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v259;
        }

LABEL_683:
        v348 = 188;
        goto LABEL_740;
      case 0x2Fu:
        v335 = 0;
        v336 = 0;
        v337 = 0;
        a1[36] |= 0x80000000uLL;
        while (1)
        {
          v350 = 0;
          v338 = [a2 position] + 1;
          if (v338 >= [a2 position] && (v339 = objc_msgSend(a2, "position") + 1, v339 <= objc_msgSend(a2, "length")))
          {
            v340 = [a2 data];
            [v340 getBytes:&v350 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v337 |= (v350 & 0x7F) << v335;
          if ((v350 & 0x80) == 0)
          {
            break;
          }

          v335 += 7;
          v12 = v336++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_735;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v337;
        }

LABEL_735:
        v348 = 192;
        goto LABEL_740;
      case 0x30u:
        v46 = 0;
        v47 = 0;
        v48 = 0;
        a1[36] |= 0x100000000uLL;
        while (1)
        {
          v350 = 0;
          v49 = [a2 position] + 1;
          if (v49 >= [a2 position] && (v50 = objc_msgSend(a2, "position") + 1, v50 <= objc_msgSend(a2, "length")))
          {
            v51 = [a2 data];
            [v51 getBytes:&v350 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v48 |= (v350 & 0x7F) << v46;
          if ((v350 & 0x80) == 0)
          {
            break;
          }

          v46 += 7;
          v12 = v47++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_538;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v48;
        }

LABEL_538:
        v348 = 196;
        goto LABEL_740;
      case 0x31u:
        v100 = 0;
        v101 = 0;
        v102 = 0;
        a1[36] |= 0x200000000uLL;
        while (1)
        {
          v350 = 0;
          v103 = [a2 position] + 1;
          if (v103 >= [a2 position] && (v104 = objc_msgSend(a2, "position") + 1, v104 <= objc_msgSend(a2, "length")))
          {
            v105 = [a2 data];
            [v105 getBytes:&v350 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v102 |= (v350 & 0x7F) << v100;
          if ((v350 & 0x80) == 0)
          {
            break;
          }

          v100 += 7;
          v12 = v101++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_574;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v102;
        }

LABEL_574:
        v348 = 200;
        goto LABEL_740;
      case 0x32u:
        v112 = 0;
        v113 = 0;
        v114 = 0;
        a1[36] |= 0x800000000uLL;
        while (1)
        {
          v350 = 0;
          v115 = [a2 position] + 1;
          if (v115 >= [a2 position] && (v116 = objc_msgSend(a2, "position") + 1, v116 <= objc_msgSend(a2, "length")))
          {
            v117 = [a2 data];
            [v117 getBytes:&v350 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v114 |= (v350 & 0x7F) << v112;
          if ((v350 & 0x80) == 0)
          {
            break;
          }

          v112 += 7;
          v12 = v113++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_582;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v114;
        }

LABEL_582:
        v348 = 208;
        goto LABEL_740;
      case 0x33u:
        v21 = 0;
        v22 = 0;
        v23 = 0;
        a1[36] |= 0x1000000000uLL;
        while (1)
        {
          v350 = 0;
          v24 = [a2 position] + 1;
          if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
          {
            v26 = [a2 data];
            [v26 getBytes:&v350 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v23 |= (v350 & 0x7F) << v21;
          if ((v350 & 0x80) == 0)
          {
            break;
          }

          v21 += 7;
          v12 = v22++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_522;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v23;
        }

LABEL_522:
        v348 = 212;
        goto LABEL_740;
      case 0x34u:
        v341 = 0;
        v342 = 0;
        v343 = 0;
        a1[36] |= 0x8000000000000uLL;
        while (1)
        {
          v350 = 0;
          v344 = [a2 position] + 1;
          if (v344 >= [a2 position] && (v345 = objc_msgSend(a2, "position") + 1, v345 <= objc_msgSend(a2, "length")))
          {
            v346 = [a2 data];
            [v346 getBytes:&v350 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v343 |= (v350 & 0x7F) << v341;
          if ((v350 & 0x80) == 0)
          {
            break;
          }

          v341 += 7;
          v12 = v342++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_739;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v343;
        }

LABEL_739:
        v348 = 272;
        goto LABEL_740;
      case 0x35u:
        v329 = 0;
        v330 = 0;
        v331 = 0;
        a1[36] |= 0x10000000000000uLL;
        while (1)
        {
          v350 = 0;
          v332 = [a2 position] + 1;
          if (v332 >= [a2 position] && (v333 = objc_msgSend(a2, "position") + 1, v333 <= objc_msgSend(a2, "length")))
          {
            v334 = [a2 data];
            [v334 getBytes:&v350 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v331 |= (v350 & 0x7F) << v329;
          if ((v350 & 0x80) == 0)
          {
            break;
          }

          v329 += 7;
          v12 = v330++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_731;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v331;
        }

LABEL_731:
        v348 = 276;
        goto LABEL_740;
      case 0x36u:
        v40 = 0;
        v41 = 0;
        v42 = 0;
        a1[36] |= 0x200uLL;
        while (1)
        {
          v350 = 0;
          v43 = [a2 position] + 1;
          if (v43 >= [a2 position] && (v44 = objc_msgSend(a2, "position") + 1, v44 <= objc_msgSend(a2, "length")))
          {
            v45 = [a2 data];
            [v45 getBytes:&v350 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v42 |= (v350 & 0x7F) << v40;
          if ((v350 & 0x80) == 0)
          {
            break;
          }

          v40 += 7;
          v12 = v41++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_534;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v42;
        }

LABEL_534:
        v349 = 10;
LABEL_667:
        a1[v349] = v20;
        continue;
      case 0x37u:
        v317 = 0;
        v318 = 0;
        v319 = 0;
        a1[36] |= 0x4000000000uLL;
        while (1)
        {
          v350 = 0;
          v320 = [a2 position] + 1;
          if (v320 >= [a2 position] && (v321 = objc_msgSend(a2, "position") + 1, v321 <= objc_msgSend(a2, "length")))
          {
            v322 = [a2 data];
            [v322 getBytes:&v350 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v319 |= (v350 & 0x7F) << v317;
          if ((v350 & 0x80) == 0)
          {
            break;
          }

          v317 += 7;
          v12 = v318++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_723;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v319;
        }

LABEL_723:
        v348 = 220;
        goto LABEL_740;
      case 0x38u:
        v323 = 0;
        v324 = 0;
        v325 = 0;
        a1[36] |= 0x8000000000uLL;
        break;
      default:
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }

        continue;
    }

    while (1)
    {
      v350 = 0;
      v326 = [a2 position] + 1;
      if (v326 >= [a2 position] && (v327 = objc_msgSend(a2, "position") + 1, v327 <= objc_msgSend(a2, "length")))
      {
        v328 = [a2 data];
        [v328 getBytes:&v350 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v325 |= (v350 & 0x7F) << v323;
      if ((v350 & 0x80) == 0)
      {
        break;
      }

      v323 += 7;
      v12 = v324++ >= 9;
      if (v12)
      {
        v27 = 0;
        goto LABEL_727;
      }
    }

    if ([a2 hasError])
    {
      v27 = 0;
    }

    else
    {
      v27 = v325;
    }

LABEL_727:
    v348 = 224;
LABEL_740:
    *(a1 + v348) = v27;
  }

  return [a2 hasError] ^ 1;
}