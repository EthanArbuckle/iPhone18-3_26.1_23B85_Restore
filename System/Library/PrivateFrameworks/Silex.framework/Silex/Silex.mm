void SXSetupLogging()
{
  if (SXSetupLogging_onceToken != -1)
  {
    SXSetupLogging_cold_1();
  }
}

uint64_t __SXSetupLogging_block_invoke()
{
  v0 = os_log_create(SXLogSubsystemIdentifier, "ANF");
  v1 = SXDefaultLog;
  SXDefaultLog = v0;

  v2 = os_log_create(SXLogSubsystemIdentifier, "ANFAnalytics");
  v3 = SXAnalyticsLog;
  SXAnalyticsLog = v2;

  v4 = os_log_create(SXLogSubsystemIdentifier, "ANFSocialEmbed");
  v5 = SXEmbedLog;
  SXEmbedLog = v4;

  v6 = os_log_create(SXLogSubsystemIdentifier, "ANFExperimentation");
  v7 = SXExperimentationLog;
  SXExperimentationLog = v6;

  v8 = os_log_create(SXLogSubsystemIdentifier, "ANFInvalidation");
  v9 = SXInvalidationLog;
  SXInvalidationLog = v8;

  v10 = os_log_create(SXLogSubsystemIdentifier, "ANFComponentInsertion");
  v11 = SXInsertionLog;
  SXInsertionLog = v10;

  v12 = os_log_create(SXLogSubsystemIdentifier, "ANFLayout");
  v13 = SXLayoutLog;
  SXLayoutLog = v12;

  v14 = os_log_create(SXLogSubsystemIdentifier, "ANFProxy");
  v15 = SXProxyLog;
  SXProxyLog = v14;

  SXWebContentLog = os_log_create(SXLogSubsystemIdentifier, "ANFWebContent");

  return MEMORY[0x1EEE66BB8]();
}

void sub_1D8262138(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1D8262A14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D826634C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D826E230(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1D826E610(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D826E9D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D8277688(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D827D604(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, id location, id a33)
{
  objc_destroyWeak((v33 + 48));
  objc_destroyWeak(&a22);
  objc_destroyWeak((v34 + 64));
  objc_destroyWeak((v34 + 56));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a33);
  _Block_object_dispose((v35 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_1D828538C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D8286E40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id location, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36)
{
  objc_destroyWeak((v36 + 64));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a36, 8);
  _Unwind_Resume(a1);
}

id SXConditionTypes()
{
  if (SXConditionTypes_onceToken != -1)
  {
    SXConditionTypes_cold_1();
  }

  v1 = SXConditionTypes_types;

  return v1;
}

uint64_t __SXConditionTypes_block_invoke()
{
  v0 = [MEMORY[0x1E695DFD8] setWithObjects:{SXConditionMinViewportWidth, SXConditionMaxViewportWidth, SXConditionMinViewportAspectRatio, SXConditionMaxViewportAspectRatio, SXConditionMinContentSizeCategory, SXConditionMaxContentSizeCategory, SXConditionMinColumns, SXConditionMaxColumns, SXConditionPlatform, SXConditionViewLocation, SXConditionMinSpecVersion, SXConditionMaxSpecVersion, SXConditionHorizontalSizeClass, SXConditionVerticalSizeClass, SXConditionSubscriptionStatus, SXConditionOfferUpsellScenario, SXConditionSubscriptionActivationEligibility, SXConditionOfferIdentifier, SXConditionTesting, SXConditionPreferredColorScheme, SXConditionNewsletterSubscriptionStatus, SXConditionConfigurationKey, SXConditionApp, SXConditionExperimentVariant, SXConditionFollowing, 0}];
  v1 = SXConditionTypes_types;
  SXConditionTypes_types = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

void sub_1D8289340(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x260], 8);
  _Block_object_dispose(&STACK[0x280], 8);
  _Unwind_Resume(a1);
}

void sub_1D8291E78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D82979C4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v4 + 32));
  objc_destroyWeak((v5 + 32));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v6 - 88));
  _Unwind_Resume(a1);
}

void sub_1D8299BF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D8299D7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

double CGSizeAspectFill(double result, double a2, double a3, double a4)
{
  v4 = *(MEMORY[0x1E695F060] + 8);
  if (*MEMORY[0x1E695F060] == result && v4 == a2)
  {
    return a3;
  }

  if (*MEMORY[0x1E695F060] != a3 || v4 != a4)
  {
    v7 = a2 / a4;
    if (result / a3 >= v7)
    {
      v7 = result / a3;
    }

    return result * v7 / (result * v7 / a3);
  }

  return result;
}

const char **SXJSONObjectEntryForName(const char *__s2)
{
  if (!__s2)
  {
    return 0;
  }

  v1 = dword_1EE0ADFB4;
  if (dword_1EE0ADFB4 < 1)
  {
    return 0;
  }

  v3 = _primitives;
  v4 = *__s2;
  while (**v3 != v4 || strcmp(*v3, __s2))
  {
    v3 += 4;
    if (!--v1)
    {
      return 0;
    }
  }

  return v3;
}

void *SXJSONObjectAddPrimitiveDefinition(const char *a1, const char *a2, void *a3)
{
  v21[1] = *MEMORY[0x1E69E9840];
  if ((SXJSONObjectPrimitivesIsSupportedPrimitive(a2) & 1) == 0)
  {
    v15 = MEMORY[0x1E695DF30];
    v20 = @"Primitive";
    v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a1];
    v21[0] = v16;
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:&v20 count:1];
    v18 = [v15 exceptionWithName:@"PrimitiveNotSupported" reason:@"The primitive given is not supported userInfo:{please look at the documentation to see what is supported", v17}];
    v19 = v18;

    objc_exception_throw(v18);
  }

  if (dword_1EE0ADFB4 >= dword_1EE0ADFB0)
  {
    if (dword_1EE0ADFB0)
    {
      v6 = malloc_type_realloc(_primitives, 32 * dword_1EE0ADFB4 + 96, 0x90040F3492DD4uLL);
    }

    else
    {
      v6 = malloc_type_malloc(0x60uLL, 0x90040F3492DD4uLL);
    }

    _primitives = v6;
    dword_1EE0ADFB0 += 3;
  }

  v7 = strlen(a1);
  v8 = malloc_type_malloc(v7 + 1, 0x100004077774924uLL);
  memcpy(v8, a1, v7);
  *(v8 + v7) = 0;
  v9 = strlen(a2);
  v10 = malloc_type_malloc(v9 + 1, 0x100004077774924uLL);
  memcpy(v10, a2, v9);
  *(v10 + v9) = 0;
  v11 = malloc_type_malloc(v9 + 3, 0x100004077774924uLL);
  result = memcpy(v11, a2, v9);
  strcpy(v11 + v9, "@:");
  v13 = dword_1EE0ADFB4;
  v14 = (_primitives + 32 * dword_1EE0ADFB4);
  *v14 = v8;
  v14[1] = v10;
  v14[2] = v11;
  v14[3] = a3;
  dword_1EE0ADFB4 = v13 + 1;
  return result;
}

uint64_t SXJSONObjectPrimitivesIsSupportedPrimitive(uint64_t result)
{
  v15 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v1 = result;
    strcpy(__s, "cislqCISLQfdBb^");
    v2 = *result;
    if (*result)
    {
      LODWORD(v3) = 0;
      do
      {
        if (v2 == 40 || v2 == 123 || v2 == 91)
        {
          v4 = (v1 + 1 + v3);
          v5 = v3 + 2;
          LODWORD(v3) = v3 + 1;
          while (1)
          {
            v7 = *v4++;
            v6 = v7;
            if (v7 == 61)
            {
              break;
            }

            LODWORD(v3) = v3 + 1;
            ++v5;
            if (!v6)
            {
              return 0;
            }
          }

          v8 = (v1 + v5);
          v9 = 1;
          v10 = v13;
          do
          {
            v12 = *v8++;
            v11 = v12;
            if (v12 == 40 || v11 == 123 || v11 == 91)
            {
              ++v9;
            }

            if (v11 == 41 || v11 == 125 || v11 == 93)
            {
              --v9;
            }

            *v10++ = v11;
            LODWORD(v3) = v3 + 1;
          }

          while (v9);
          *(v10 - 1) = 0;
          if ((SXJSONObjectPrimitivesIsSupportedPrimitive(v13) & 1) == 0)
          {
            return 0;
          }
        }

        else
        {
          result = strchr(__s, v2);
          if (!result)
          {
            return result;
          }
        }

        v3 = v3 + 1;
        v2 = *(v1 + v3);
      }

      while (v2);
    }

    return 1;
  }

  return result;
}

id SXJSONObjectObjCValueFromObject(SXJSONObject *a1, objc_selector *a2)
{
  v3 = a1;
  v4 = objc_opt_class();
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:sel_getName(a2)];
  v6 = [v4 jsonPropertyNameForObjCPropertyName:v5];

  v7 = [(NSDictionary *)v3->_jsonDictionary objectForKey:v6];

  return v7;
}

const char **SXJSONObjectPrimitivesEncodeForName(const char *a1)
{
  result = SXJSONObjectEntryForName(a1);
  if (result)
  {
    return result[1];
  }

  return result;
}

_BYTE *SXJSONObjectWrapEncodeIntoPropertyDefinition(const char *a1)
{
  v1 = a1;
  v2 = strlen(a1);
  result = malloc_type_malloc(v2 + 8, 0x100004077774924uLL);
  *result = 84;
  if (v2)
  {
    v4 = result + 1;
    v5 = v2;
    do
    {
      v6 = *v1++;
      *v4++ = v6;
      --v5;
    }

    while (v5);
  }

  strcpy(&result[v2 + 1], ",R,D,N");
  return result;
}

uint64_t SXJSONObjectPrimitivesMatchPrimitiveForEncodingAndRetrieveInformation(const char *a1, const char **a2, const char **a3, void (**a4)(void))
{
  if (dword_1EE0ADFB4 < 1)
  {
    return 0;
  }

  v8 = 0;
  v9 = 0;
  while (1)
  {
    v10 = SXJSONObjectWrapEncodeIntoPropertyDefinition(*(_primitives + v8 + 8));
    v11 = v10;
    if (*v10 == *a1 && !strcmp(v10, a1))
    {
      break;
    }

    free(v11);
    ++v9;
    v8 += 32;
    if (v9 >= dword_1EE0ADFB4)
    {
      return 0;
    }
  }

  if (a2)
  {
    *a2 = *(_primitives + v8);
  }

  if (a3)
  {
    *a3 = *(_primitives + v8 + 16);
  }

  if (a4)
  {
    *a4 = *(_primitives + v8 + 24);
  }

  free(v11);
  return 1;
}

double CLLocationCoordinate2DObjCValue(SXJSONObject *a1, objc_selector *a2, ...)
{
  v2 = SXJSONObjectObjCValueFromObject(a1, a2);
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v3 = [v2 objectForKey:@"latitude"];
    v4 = [v2 objectForKey:@"longitude"];
    [v3 doubleValue];
    v6 = v5;
    [v4 doubleValue];
    *&v8 = *&CLLocationCoordinate2DMake(v6, v7);
  }

  else
  {
    *&v8 = *&CLLocationCoordinate2DMake(0.0, 0.0);
  }

  return v8;
}

id SXBundle()
{
  if (SXBundle_onceToken != -1)
  {
    SXBundle_cold_1();
  }

  v1 = SXBundle___SXBundle;

  return v1;
}

uint64_t __SXBundle_block_invoke()
{
  v0 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v1 = SXBundle___SXBundle;
  SXBundle___SXBundle = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

double CGPointFromObjCValue(SXJSONObject *a1, objc_selector *a2, ...)
{
  v2 = SXJSONObjectObjCValueFromObject(a1, a2);
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v3 = [v2 objectForKeyedSubscript:@"x"];
    [v3 floatValue];
    v5 = v4;
    v6 = [v2 objectForKeyedSubscript:@"y"];
    [v6 floatValue];
    v7 = v5;
  }

  else
  {
    v7 = *MEMORY[0x1E695EFF8];
  }

  return v7;
}

void sub_1D82BDF6C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

uint64_t OUTLINED_FUNCTION_0_1(void *a1, const char *a2)
{

  return [a1 initWithFrame:{v3, v4, v5, v6}];
}

void OUTLINED_FUNCTION_0_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void sub_1D82C2C24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D82C6BE0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 128));
  _Unwind_Resume(a1);
}

void sub_1D82C7E70(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

void sub_1D82C84E4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

void sub_1D82C870C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D82C89B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *NSStringFromDependencyAttribute(uint64_t a1)
{
  if (a1)
  {
    v2 = @"Size";
    if (a1 == 1)
    {
      v2 = @"Position";
    }

    v3 = v2;
  }

  else
  {
    v3 = @"None";
  }

  return v3;
}

void OUTLINED_FUNCTION_0_4(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_1D82CF934(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1D82CFC5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D82D0138(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D82D046C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

double UIEdgeInsetsFromObjCValue(SXJSONObject *a1, objc_selector *a2, ...)
{
  v2 = SXJSONObjectObjCValueFromObject(a1, a2);
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v3 = [v2 objectForKey:@"top"];
    v4 = [v2 objectForKey:@"bottom"];
    v5 = [v2 objectForKey:@"left"];
    v6 = [v2 objectForKey:@"right"];
    [v3 floatValue];
    v8 = v7;
    [v5 floatValue];
    [v4 floatValue];
    [v6 floatValue];
    v9 = v8;
  }

  else
  {
    v9 = *MEMORY[0x1E69DDCE0];
  }

  return v9;
}

void sub_1D82DFC68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 48), 8);
  _Unwind_Resume(a1);
}

void SXJSONObjectRuntimeCollectPropertiesFromProtocol(Protocol *a1, NSPointerArray *a2)
{
  v3 = a1;
  v4 = a2;
  outCount = 0;
  v5 = protocol_copyPropertyList(v3, &outCount);
  v6 = v5;
  if (outCount)
  {
    for (i = 0; i < outCount; ++i)
    {
      v8 = malloc_type_malloc(8uLL, 0x2004093837F09uLL);
      *v8 = v6[i];
      [(NSPointerArray *)v4 addPointer:v8];
    }
  }

  else if (!v5)
  {
    goto LABEL_7;
  }

  free(v6);
LABEL_7:
  v13 = 0;
  v9 = protocol_copyProtocolList(v3, &v13);
  v10 = v9;
  if (v13)
  {
    for (j = 0; j < v13; ++j)
    {
      v12 = v10[j];
      SXJSONObjectRuntimeCollectPropertiesFromProtocol(v12, v4);
    }

    goto LABEL_12;
  }

  if (v9)
  {
LABEL_12:
    free(v10);
  }
}

uint64_t SXJSONObjectRuntimeCopyClassAndProtocolProperties(objc_class *Superclass, objc_property ***a2, char a3, int a4)
{
  v8 = [objc_alloc(MEMORY[0x1E696AE08]) initWithOptions:258];
  if (Superclass)
  {
    while ([(objc_class *)Superclass isSubclassOfClass:objc_opt_class()])
    {
      outCount = 0;
      v9 = class_copyPropertyList(Superclass, &outCount);
      v10 = v9;
      if (outCount)
      {
        for (i = 0; i < outCount; ++i)
        {
          v12 = malloc_type_malloc(8uLL, 0x2004093837F09uLL);
          *v12 = v10[i];
          [(NSPointerArray *)v8 addPointer:v12];
        }
      }

      else if (!v9)
      {
        goto LABEL_9;
      }

      free(v10);
LABEL_9:
      if (!a4)
      {
        goto LABEL_16;
      }

      v22 = 0;
      v13 = class_copyProtocolList(Superclass, &v22);
      v14 = v13;
      if (v22)
      {
        for (j = 0; j < v22; ++j)
        {
          v16 = v14[j];
          SXJSONObjectRuntimeCollectPropertiesFromProtocol(v16, v8);
        }
      }

      else if (!v13)
      {
        goto LABEL_16;
      }

      free(v14);
LABEL_16:
      if (a3)
      {
        Superclass = class_getSuperclass(Superclass);
        if (Superclass)
        {
          continue;
        }
      }

      break;
    }
  }

  v17 = [(NSPointerArray *)v8 count];
  v18 = v17;
  if (a2)
  {
    *a2 = malloc_type_malloc(8 * v17, 0x2004093837F09uLL);
    if (v18)
    {
      for (k = 0; k != v18; ++k)
      {
        v20 = [(NSPointerArray *)v8 pointerAtIndex:k];
        (*a2)[k] = *v20;
        free(v20);
      }
    }
  }

  return v18;
}

double SXJSONObjectRuntimeCopyCustomGetterName(const char *a1, char **a2)
{
  v4 = strlen(a1);
  v5 = malloc_type_malloc(v4 + 20, 0x100004077774924uLL);
  *a2 = v5;
  memcpy(v5, a1, v4);
  v6 = &(*a2)[v4];
  *(v6 + 15) = 979726457;
  result = *"WithValue:withType:";
  *v6 = *"WithValue:withType:";
  (*a2)[v4 + 19] = 0;
  return result;
}

id SXJSONObjectProtocolFromClassName(const char *a1)
{
  v1 = [MEMORY[0x1E696AD60] stringWithCString:a1 encoding:4];
  v2 = [v1 substringWithRange:{objc_msgSend(v1, "length") != 0, objc_msgSend(v1, "length") - 2}];
  v3 = [v2 cStringUsingEncoding:4];

  v4 = objc_getProtocol(v3);

  return v4;
}

void SXJSONObjectRuntimeGenerateAccessorsForClass(objc_class *a1)
{
  v38 = 0;
  v2 = SXJSONObjectRuntimeCopyClassAndProtocolProperties(a1, &v38, 0, 1);
  if (v2)
  {
    v3 = v2;
    v4 = 0;
    v5 = 1;
    do
    {
      v6 = v38[v4];
      v7 = property_getName(v6);
      Attributes = property_getAttributes(v6);
      outCount[0] = 0;
      v9 = property_copyAttributeList(v6, outCount);
      SXJSONObjectRuntimeGenerateAccessorsForClass(a1, v7, v9, outCount[0], Attributes);
      free(v9);
      v4 = v5;
      v10 = v3 > v5++;
    }

    while (v10);
  }

  if (v38)
  {
    free(v38);
    v38 = 0;
  }

  if (a1)
  {
    Superclass = a1;
    do
    {
      if (Superclass == objc_opt_class() || Superclass == objc_opt_class() || Superclass == objc_opt_class() || Superclass == objc_opt_class())
      {
        break;
      }

      *outCount = 0;
      cls = Superclass;
      v12 = SXJSONObjectRuntimeCopyClassAndProtocolProperties(Superclass, outCount, 0, 1);
      if (v12)
      {
        v13 = v12;
        v14 = 0;
        v15 = 1;
        do
        {
          v16 = *(*outCount + 8 * v14);
          v17 = property_getName(v16);
          v18 = property_getAttributes(v16);
          v19 = SXJSONObjectRuntimeGenerateLookupKey(a1, v17);
          +[SXJSONObject lock];
          v20 = +[SXJSONObject propertyDefinitions];
          v21 = [v20 objectForKey:v19];

          v22 = +[SXJSONObject protocolPropertyDefinitions];
          v23 = [v22 objectForKey:v19];

          +[SXJSONObject unlock];
          if (!(v21 | v23))
          {
            v35 = 0;
            name = 0;
            v34 = 0;
            SXJSONObjectDetermineFunctionSpecificationAndCopyClassName(v18, &v35, &v34, &name);
            v24 = name;
            Class = objc_getClass(name);
            v26 = objc_getClass("SXJSONDictionary");
            v27 = objc_getClass("SXJSONArray");
            v28 = sel_registerName("initWithJSONObject:andVersion:");
            if (([(objc_class *)Class isSubclassOfClass:v26]& 1) != 0 || ([(objc_class *)Class isSubclassOfClass:v27]& 1) != 0 || class_respondsToSelector(Class, v28))
            {
              +[SXJSONObject lock];
              v29 = +[SXJSONObject propertyHashTable];
              [v29 setObject:Class forKey:v19];

              +[SXJSONObject unlock];
            }

            if (Class)
            {
              +[SXJSONObject lock];
              v30 = +[SXJSONObject propertyDefinitions];
              [v30 setObject:Class forKey:v19];

              +[SXJSONObject unlock];
            }

            else if (v24)
            {
              v31 = SXJSONObjectProtocolFromClassName(v24);
              if (v31)
              {
                +[SXJSONObject lock];
                v32 = +[SXJSONObject protocolPropertyDefinitions];
                [v32 setObject:v31 forKey:v19];

                +[SXJSONObject unlock];
              }
            }

            free(v24);
          }

          v14 = v15;
          v10 = v13 > v15++;
        }

        while (v10);
      }

      free(*outCount);
      Superclass = class_getSuperclass(cls);
    }

    while (Superclass);
  }
}

unsigned __int8 **SXJSONObjectRuntimeGenerateAccessorsForClass(objc_class *a1, const char *a2, objc_property_attribute_t *a3, unsigned int a4, const char *a5)
{
  v10 = 0;
  *v9 = 0;
  result = SXJSONObjectRuntimeGetPropertyInfo(a3, a4, &v10, &v9[1], v9);
  if (v9[1] && (v10 & 1) != 0)
  {
    return SXJSONObjectRuntimeAddGetterToClass(a1, a2, a5);
  }

  return result;
}

id SXJSONObjectRuntimeGenerateLookupKey(objc_class *a1, const char *a2)
{
  Name = class_getName(a1);
  v4 = strlen(Name);
  v5 = strlen(a2);
  v6 = malloc_type_malloc(v5 + v4 + 2, 0x100004077774924uLL);
  memcpy(v6, Name, v4);
  v6[v4] = 59;
  memcpy(&v6[v4 + 1], a2, v5);
  v6[v5 + 1 + v4] = 0;
  v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v6];
  free(v6);

  return v7;
}

uint64_t SXJSONObjectDetermineFunctionSpecificationAndCopyClassName(const char *a1, const char **a2, void (**a3)(void), char **a4)
{
  result = SXJSONObjectPrimitivesMatchPrimitiveForEncodingAndRetrieveInformation(a1, 0, a2, a3);
  if ((result & 1) == 0)
  {
    result = SXJSONObjectPartialCompare(a1, "Tf");
    v9 = SXJSONObjectFloatValue;
    if (result & 1) != 0 || (result = SXJSONObjectPartialCompare(a1, "Td"), v9 = SXJSONObjectFloatValue, (result))
    {
      v10 = "d@:";
LABEL_5:
      *a3 = v9;
      *a2 = v10;
      return result;
    }

    result = SXJSONObjectPartialCompare(a1, "Ti");
    v9 = SXJSONObjectIntegerValue;
    if (result & 1) != 0 || (result = SXJSONObjectPartialCompare(a1, "Tl"), v9 = SXJSONObjectIntegerValue, (result))
    {
      v10 = "l@:";
      goto LABEL_5;
    }

    result = SXJSONObjectPartialCompare(a1, "Tq");
    v9 = SXJSONObjectIntegerValue;
    if (result)
    {
      v10 = "q@:";
      goto LABEL_5;
    }

    result = SXJSONObjectPartialCompare(a1, "TI");
    v9 = SXJSONObjectUnsignedIntegerValue;
    if (result & 1) != 0 || (result = SXJSONObjectPartialCompare(a1, "TL"), v9 = SXJSONObjectUnsignedIntegerValue, (result))
    {
      v10 = "L@:";
      goto LABEL_5;
    }

    result = SXJSONObjectPartialCompare(a1, "TQ");
    v9 = SXJSONObjectUnsignedIntegerValue;
    if (result)
    {
      v10 = "Q@:";
      goto LABEL_5;
    }

    result = SXJSONObjectPartialCompare(a1, "Tc");
    v9 = SXJSONObjectBoolValue;
    if (result)
    {
      v10 = "c@:";
      goto LABEL_5;
    }

    result = SXJSONObjectPartialCompare(a1, "TB");
    v9 = SXJSONObjectBoolValue;
    if (result)
    {
      v10 = "B@:";
      goto LABEL_5;
    }

    if (*a1 == 84 && a1[1] == 64)
    {
      v11 = strlen(a1);
      v12 = 0;
      do
      {
        v13 = a1[v12++];
      }

      while (v13 != 44);
      if (v12 == 3 || v11 < v11 - v12 + 5)
      {
        v17 = [MEMORY[0x1E695DF30] exceptionWithName:@"InvalidPropertyDefinition" reason:@"Type 'id' is not supported in SXJSONObject" userInfo:0];
        objc_exception_throw(v17);
      }

      v14 = v12 - 5;
      v15 = v12;
      v16 = malloc_type_malloc(v12 - 4, 0x100004077774924uLL);
      result = memcpy(v16, a1 + 3, v14);
      v16[v15 - 5] = 0;
      *a4 = v16;
      v10 = "@@:";
      v9 = SXJSONObjectObjectValue;
      goto LABEL_5;
    }
  }

  return result;
}

id SXJSONObjectRuntimeValue(SXJSONObject *a1, NSString *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [objc_opt_class() jsonPropertyNameForObjCPropertyName:v4];

  v6 = [(NSDictionary *)v3->_jsonDictionary objectForKey:v5];

  return v6;
}

objc_object *SXJSONObjectRuntimeConvertValue(void *a1, int *a2, void *a3, void *a4, objc_class *a5)
{
  v39[3] = *MEMORY[0x1E69E9840];
  v9 = a1;
  v10 = a3;
  v11 = a4;
  if (v9)
  {
    v12 = [MEMORY[0x1E695DFB0] null];

    if (v12 != v9)
    {
      v13 = objc_opt_class();
      v14 = SXJSONObjectRuntimeGenerateLookupKey(v13, [v11 UTF8String]);
      +[SXJSONObject lock];
      v15 = +[SXJSONObject propertyHashTable];
      v16 = [v15 objectForKey:v14];

      +[SXJSONObject unlock];
      if (v16)
      {
        v17 = 6;
      }

      else
      {
        v17 = SXJSONObjectTypeForValue(v9);
      }

      if (a2)
      {
        *a2 = v17;
      }

      if (v17 != 6)
      {
        v18 = v9;
LABEL_29:

        goto LABEL_30;
      }

      if (a5)
      {
LABEL_24:
        if (class_respondsToSelector(a5, sel_initWithValueClassBlock_objectValueClassBlock_purgeBlock_andJSONObject_andVersion_))
        {
          v27 = [objc_opt_class() objectValueClassBlockForPropertyWithName:v11];
          v28 = [objc_opt_class() valueClassBlockForPropertyWithName:v11];
          v29 = [objc_opt_class() purgeClassBlockForPropertyWithName:v11];
          v30 = [a5 alloc];
          v31 = [v10 specificationVersion];
          v18 = [v30 initWithValueClassBlock:v28 objectValueClassBlock:v27 purgeBlock:v29 andJSONObject:v9 andVersion:v31];
        }

        else
        {
          if (!class_respondsToSelector(a5, sel_initWithJSONObject_andVersion_))
          {
            v34 = MEMORY[0x1E695DF30];
            v38[0] = @"Parent";
            v38[1] = @"Property";
            v39[0] = v10;
            v39[1] = v11;
            v38[2] = @"Class";
            v39[2] = a5;
            v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v39 forKeys:v38 count:3];
            v36 = [v34 exceptionWithName:@"ClassNotSupportedBySXJSONObject" reason:@"The class cannot be initialized because it does not support an initialize function for SXJSONObject" userInfo:v35];
            v37 = v36;

            objc_exception_throw(v36);
          }

          v32 = [a5 alloc];
          v27 = [v10 specificationVersion];
          v18 = [v32 initWithJSONObject:v9 andVersion:v27];
        }

        goto LABEL_29;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v19 = [(objc_object *)v9 objectForKeyedSubscript:@"type"];
      }

      else
      {
        v19 = 0;
      }

      v20 = objc_opt_class();
      v21 = SXJSONObjectRuntimeGenerateLookupKey(v20, [v11 UTF8String]);
      +[SXJSONObject lock];
      v22 = +[SXJSONObject propertyHashTable];
      a5 = [v22 objectForKey:v21];

      +[SXJSONObject unlock];
      if (!v19)
      {
LABEL_23:

        goto LABEL_24;
      }

      v23 = [objc_opt_class() objectValueClassBlockForPropertyWithName:v11];
      if (v23)
      {
        v24 = [v10 specificationVersion];
        v25 = (v23)[2](v23, v9, a5, v24);
      }

      else
      {
        v26 = [objc_opt_class() valueClassBlockForPropertyWithName:v11];
        v24 = v26;
        if (!v26)
        {
LABEL_22:

          goto LABEL_23;
        }

        v25 = (*(v26 + 16))(v26, v19, a5);
      }

      a5 = v25;
      goto LABEL_22;
    }
  }

  v18 = 0;
  if (a2)
  {
    *a2 = 1;
  }

LABEL_30:

  return v18;
}

uint64_t SXJSONObjectTypeForValue(objc_object *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = 2;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v2 = 3;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v2 = 4;
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v2 = 5;
        }

        else
        {
          v3 = [MEMORY[0x1E695DFB0] null];
          v2 = v3 == v1;
        }
      }
    }
  }

  return v2;
}

unsigned __int8 **SXJSONObjectRuntimeGetPropertyInfo(unsigned __int8 **result, unsigned int a2, unint64_t *a3, BOOL *a4, BOOL *a5)
{
  if (a2)
  {
    v5 = a2;
    while (1)
    {
      v6 = **result;
      if (v6 > 0x4D)
      {
        break;
      }

      if (v6 != 38)
      {
        if (v6 == 67)
        {
          if (a3)
          {
            v7 = 8;
            goto LABEL_22;
          }

          goto LABEL_23;
        }

        if (v6 != 68)
        {
          goto LABEL_23;
        }

        if (a4)
        {
          *a4 = 1;
        }

        goto LABEL_14;
      }

      if (a3)
      {
        v7 = 2;
        goto LABEL_22;
      }

LABEL_23:
      result += 2;
      if (!--v5)
      {
        return result;
      }
    }

    if (v6 != 78)
    {
      if (v6 == 82)
      {
        if (a3)
        {
          v7 = 1;
          goto LABEL_22;
        }

        goto LABEL_23;
      }

      if (v6 != 86)
      {
        goto LABEL_23;
      }
    }

    if (a5)
    {
      *a5 = 0;
    }

LABEL_14:
    if (a3)
    {
      v7 = 4;
LABEL_22:
      *a3 |= v7;
      goto LABEL_23;
    }

    goto LABEL_23;
  }

  return result;
}

uint64_t SXJSONObjectRuntimeAddGetterToClass(objc_class *a1, const char *__s, const char *a3)
{
  v6 = strlen(__s);
  v7 = malloc_type_malloc(v6 + 20, 0x100004077774924uLL);
  memcpy(v7, __s, v6);
  strcpy(v7 + v6, "WithValue:withType:");
  Uid = sel_getUid(v7);
  InstanceMethod = class_getInstanceMethod(a1, Uid);
  free(v7);
  if (InstanceMethod)
  {
    v10 = sel_registerName(__s);
    TypeEncoding = method_getTypeEncoding(InstanceMethod);
    v30 = 0;
    v31 = 0;
    SXJSONObjectDetermineCustomFunctionSpecification(TypeEncoding, &v31, &v30);
    v12 = v31;
    if (v31)
    {
      v13 = v30;
      if (v30)
      {
        v14 = a1;
        v15 = v10;
        return class_addMethod(v14, v15, v13, v12);
      }
    }

    Name = class_getName(a1);
    return printf("Error adding method, not found an implementation for property '%s' of class %s\n", __s, Name);
  }

  v30 = 0;
  v31 = 0;
  v29 = 0;
  SXJSONObjectDetermineFunctionSpecificationAndCopyClassName(a3, &v31, &v30, &v29);
  v16 = v29;
  if (v29)
  {
    v17 = SXJSONObjectRuntimeGenerateLookupKey(a1, __s);
    Class = objc_getClass("SXJSONDictionary");
    v19 = objc_getClass("SXJSONArray");
    v20 = sel_registerName("initWithJSONObject:andVersion:");
    v21 = objc_getClass(v16);
    if (([(objc_class *)v21 isSubclassOfClass:Class]& 1) != 0 || ([(objc_class *)v21 isSubclassOfClass:v19]& 1) != 0 || class_respondsToSelector(v21, v20))
    {
      +[SXJSONObject lock];
      v22 = +[SXJSONObject propertyHashTable];
      [v22 setObject:v21 forKey:v17];
    }

    else
    {
      if (!v21)
      {
        v26 = SXJSONObjectProtocolFromClassName(v16);
        if (v26)
        {
          +[SXJSONObject lock];
          v27 = +[SXJSONObject protocolPropertyDefinitions];
          [v27 setObject:v26 forKey:v17];

          +[SXJSONObject unlock];
        }

        goto LABEL_11;
      }

      +[SXJSONObject lock];
      v22 = +[SXJSONObject propertyDefinitions];
      [v22 setObject:v21 forKey:v17];
    }

    +[SXJSONObject unlock];
LABEL_11:
    free(v16);
  }

  if (!v30 || !v31)
  {
    v28 = [MEMORY[0x1E695DF30] exceptionWithName:@"InvalidPropertyDefinition" reason:@"Property definition is not supported" userInfo:0];
    objc_exception_throw(v28);
  }

  v23 = sel_registerName(__s);
  result = class_respondsToSelector(a1, v23);
  if ((result & 1) == 0)
  {
    v13 = v30;
    v12 = v31;
    v14 = a1;
    v15 = v23;
    return class_addMethod(v14, v15, v13, v12);
  }

  return result;
}

unsigned __int8 *SXJSONObjectDetermineCustomFunctionSpecification(unsigned __int8 *result, const char **a2, void (**a3)(void))
{
  v3 = *result;
  v4 = SXJSONObjectCustomIntegerValue;
  if (v3 <= 0x62)
  {
    if (*result <= 0x48u)
    {
      if (v3 == 64)
      {
        v4 = SXJSONObjectCustomObjectValue;
        v5 = "@@:";
      }

      else
      {
        if (v3 != 66)
        {
          return result;
        }

        v4 = SXJSONObjectCustomBoolValue;
        v5 = "B@:";
      }
    }

    else
    {
      switch(v3)
      {
        case 'I':
          v5 = "I@:";
          break;
        case 'L':
          v5 = "L@:";
          break;
        case 'Q':
          v5 = "Q@:";
          break;
        default:
          return result;
      }

      v4 = SXJSONObjectCustomUnsignedIntegerValue;
    }

    goto LABEL_26;
  }

  if (*result > 0x68u)
  {
    switch(v3)
    {
      case 'q':
        v4 = SXJSONObjectCustomIntegerValue;
        v5 = "q@:";
        break;
      case 'l':
        v5 = "l@:";
        break;
      case 'i':
        v4 = SXJSONObjectCustomIntegerValue;
        v5 = "i@:";
        break;
      default:
        return result;
    }

    goto LABEL_26;
  }

  if (v3 == 99)
  {
    v4 = SXJSONObjectCustomBoolValue;
    v5 = "c@:";
    goto LABEL_26;
  }

  if (v3 == 100 || v3 == 102)
  {
    v4 = SXJSONObjectCustomFloatValue;
    v5 = "d@:";
LABEL_26:
    *a2 = v5;
    *a3 = v4;
  }

  return result;
}

void SXJSONObjectRuntimeAddSetterToClass(objc_class *a1, const char *a2, const char *a3)
{
  v3 = [MEMORY[0x1E695DF30] exceptionWithName:@"NotImplemented" reason:@"Currently not implemented" userInfo:0];
  objc_exception_throw(v3);
}

void *SXJSONObjectRuntimeCopyPropertyTypeEncoding(const char *a1, char **a2)
{
  v3 = a1 + 1;
  if (a1[1] == 44)
  {
    v4 = 1;
  }

  else
  {
    v4 = strlen(a1);
    v6 = 0;
    if (v4 <= 1)
    {
      v4 = 1;
    }

    while (v4 - 1 != v6)
    {
      v7 = a1[v6++ + 2];
      if (v7 == 44)
      {
        v4 = v6 + 1;
        break;
      }
    }
  }

  v8 = v4 - 1;
  v9 = malloc_type_malloc(v4, 0x100004077774924uLL);
  *a2 = v9;
  result = memcpy(v9, v3, v8);
  (*a2)[v8] = 0;
  return result;
}

BOOL SXJSONObjectPartialCompare(const char *a1, const char *a2)
{
  v3 = a1;
  v4 = strlen(a1);
  v5 = strlen(a2);
  if (v4 < v5)
  {
    return 0;
  }

  if (!v5)
  {
    return 1;
  }

  v7 = v5 - 1;
  do
  {
    v9 = *v3++;
    v8 = v9;
    v11 = *a2++;
    v10 = v11;
    v13 = v7-- != 0;
    result = v8 == v10;
  }

  while (v8 == v10 && v13);
  return result;
}

void sub_1D82EEDC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t SXComponentContentInsetObjCValue(SXJSONObject *a1, objc_selector *a2, ...)
{
  v3 = SXJSONObjectObjCValueFromObject(a1, a2);
  if (a1)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([v3 BOOLValue])
      {

        v4 = 1;
        v5 = 0x100000000;
        v6 = 1;
        v7 = 1;
LABEL_15:
        v15 = 0x1000000;
        return v5 | v15 | (v4 << 16) | (v6 << 8) | v7;
      }

      goto LABEL_11;
    }
  }

  if (!v3 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
LABEL_11:

    v5 = 0;
    v4 = 0;
    v6 = 0;
    v7 = 0;
    goto LABEL_12;
  }

  v8 = [v3 objectForKey:@"left"];
  v6 = [v8 BOOLValue];

  v9 = [v3 objectForKey:@"top"];
  v10 = [v9 BOOLValue];

  v11 = [v3 objectForKey:@"right"];
  v12 = [v11 BOOLValue];

  v13 = [v3 objectForKey:@"bottom"];
  v14 = [v13 BOOLValue];

  if ((v6 & v10) == 1)
  {
    v7 = v14 & v12 & 1;

    v6 = 1;
    v4 = 1;
    if ((v14 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v4 = (v6 ^ 1) & v10;

    v7 = 0;
    if ((v14 & 1) == 0)
    {
LABEL_9:
      v5 = 0;
      v15 = 0;
      if ((v12 & 1) == 0)
      {
        return v5 | v15 | (v4 << 16) | (v6 << 8) | v7;
      }

      goto LABEL_15;
    }
  }

  v5 = 0x100000000;
  if (v12)
  {
    goto LABEL_15;
  }

LABEL_12:
  v15 = 0;
  return v5 | v15 | (v4 << 16) | (v6 << 8) | v7;
}

double SXJSONObjectCustomFloatValue(SXJSONObject *a1, objc_selector *a2, ...)
{
  v3 = a1;
  Name = sel_getName(a2);
  v5 = objc_opt_class();
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:Name];
  v7 = [v5 jsonPropertyNameForObjCPropertyName:v6];

  str = 0;
  SXJSONObjectRuntimeCopyCustomGetterName(Name, &str);
  Uid = sel_getUid(str);
  free(str);
  v9 = [(NSDictionary *)v3->_jsonDictionary objectForKey:v7];
  v10 = v9;
  v11 = 1;
  v16 = 1;
  if (v9)
  {
    v16 = 6;
    v12 = SXJSONObjectRuntimeConvertValue(v9, &v16, v3, v7, 0);
    v11 = v16;
  }

  else
  {
    v12 = 0;
  }

  [v3 Uid];
  v14 = v13;

  return v14;
}

id SXJSONObjectCustomObjectValue(SXJSONObject *a1, objc_selector *a2, ...)
{
  v3 = a1;
  Name = sel_getName(a2);
  v5 = objc_opt_class();
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:Name];
  v7 = [v5 jsonPropertyNameForObjCPropertyName:v6];

  str = 0;
  SXJSONObjectRuntimeCopyCustomGetterName(Name, &str);
  Uid = sel_getUid(str);
  free(str);
  v9 = [(NSDictionary *)v3->_jsonDictionary objectForKey:v7];
  v14 = 6;
  v10 = SXJSONObjectRuntimeConvertValue(v9, &v14, v3, v7, 0);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = 5;
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v12 = [v3 Uid];

  return v12;
}

id SXJSONObjectCustomIntegerValue(SXJSONObject *a1, objc_selector *a2, ...)
{
  v3 = a1;
  Name = sel_getName(a2);
  v5 = objc_opt_class();
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:Name];
  v7 = [v5 jsonPropertyNameForObjCPropertyName:v6];

  str = 0;
  SXJSONObjectRuntimeCopyCustomGetterName(Name, &str);
  Uid = sel_getUid(str);
  free(str);
  v9 = [(NSDictionary *)v3->_jsonDictionary objectForKey:v7];
  v10 = v9;
  v11 = 1;
  v15 = 1;
  if (v9)
  {
    v15 = 6;
    v12 = SXJSONObjectRuntimeConvertValue(v9, &v15, v3, v7, 0);
    v11 = v15;
  }

  else
  {
    v12 = 0;
  }

  v13 = [v3 Uid];

  return v13;
}

id SXJSONObjectCustomUnsignedIntegerValue(SXJSONObject *a1, objc_selector *a2, ...)
{
  v3 = a1;
  Name = sel_getName(a2);
  v5 = objc_opt_class();
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:Name];
  v7 = [v5 jsonPropertyNameForObjCPropertyName:v6];

  str = 0;
  SXJSONObjectRuntimeCopyCustomGetterName(Name, &str);
  Uid = sel_getUid(str);
  free(str);
  v9 = [(NSDictionary *)v3->_jsonDictionary objectForKey:v7];
  v10 = v9;
  v11 = 1;
  v16 = 1;
  if (v9)
  {
    v16 = 6;
    v12 = SXJSONObjectRuntimeConvertValue(v9, &v16, v3, v7, 0);
    v11 = v16;
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = [v3 Uid];

  return v14;
}

id SXJSONObjectCustomBoolValue(SXJSONObject *a1, objc_selector *a2, ...)
{
  v3 = a1;
  Name = sel_getName(a2);
  v5 = objc_opt_class();
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:Name];
  v7 = [v5 jsonPropertyNameForObjCPropertyName:v6];

  str = 0;
  SXJSONObjectRuntimeCopyCustomGetterName(Name, &str);
  Uid = sel_getUid(str);
  free(str);
  v9 = [(NSDictionary *)v3->_jsonDictionary objectForKey:v7];
  v10 = v9;
  v11 = 1;
  v15 = 1;
  if (v9)
  {
    v15 = 6;
    v12 = SXJSONObjectRuntimeConvertValue(v9, &v15, v3, v7, 0);
    v11 = v15;
  }

  else
  {
    v12 = 0;
  }

  v13 = [v3 Uid];

  return v13;
}

uint64_t SXSpecVersionCompare(void *a1, void *a2)
{
  v3 = a2;
  v4 = [a1 componentsSeparatedByString:@"."];
  v5 = [v3 componentsSeparatedByString:@"."];
  v6 = [v4 count];
  if (v6 | [v5 count])
  {
    v7 = 0;
    while (1)
    {
      v8 = @"0";
      if (v7 < [v4 count])
      {
        v8 = [v4 objectAtIndex:v7];
      }

      v9 = @"0";
      if (v7 < [v5 count])
      {
        v9 = [v5 objectAtIndex:v7];
      }

      v10 = [(__CFString *)v8 compare:v9 options:64];

      if (v10)
      {
        break;
      }

      ++v7;
      v11 = [v4 count];
      v12 = [v5 count];
      if (v11 <= v12)
      {
        v13 = v12;
      }

      else
      {
        v13 = v11;
      }

      if (v7 >= v13)
      {
        goto LABEL_12;
      }
    }
  }

  else
  {
LABEL_12:
    v10 = 0;
  }

  return v10;
}

void sub_1D82F8BB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1D82F9148(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D82F94C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D8302830(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D8304F60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_1D83051CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void SXCanvasCreateWithClass(void *a1, id *a2, void *a3, void *a4, void *a5)
{
  v9 = a1;
  if (!a2 || !a3)
  {
    goto LABEL_15;
  }

  v21 = v9;
  if (a4)
  {
    if (!a5)
    {
      goto LABEL_7;
    }
  }

  else
  {
    a4 = objc_opt_class();
    if (!a5)
    {
LABEL_7:
      a5 = objc_opt_class();
    }
  }

  if (([a4 isSubclassOfClass:objc_opt_class()] & 1) == 0)
  {
    v10 = [MEMORY[0x1E69D5768] currentHandler];
    v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void SXCanvasCreateWithClass(__strong id<TSDInteractiveCanvasControllerDelegate>, TSDInteractiveCanvasController *__autoreleasing *, __autoreleasing id<TSDCanvasLayerHosting> *, __unsafe_unretained Class, __unsafe_unretained Class)"}];
    v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/FeldsparServicesUI/Modules/silex/Silex/Text/Tangier/SXTangierCanvasUtilities.mm"];
    [v10 handleFailureInFunction:v11 file:v12 lineNumber:42 description:@"bogus ICC class"];
  }

  if (([a5 isSubclassOfClass:objc_opt_class()] & 1) == 0)
  {
    v13 = [MEMORY[0x1E69D5768] currentHandler];
    v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void SXCanvasCreateWithClass(__strong id<TSDInteractiveCanvasControllerDelegate>, TSDInteractiveCanvasController *__autoreleasing *, __autoreleasing id<TSDCanvasLayerHosting> *, __unsafe_unretained Class, __unsafe_unretained Class)"}];
    v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/FeldsparServicesUI/Modules/silex/Silex/Text/Tangier/SXTangierCanvasUtilities.mm"];
    [v13 handleFailureInFunction:v14 file:v15 lineNumber:43 description:@"bogus CVC class"];
  }

  v16 = *a2;
  if (!v16)
  {
    v16 = objc_alloc_init(a4);
    [v16 setDelegate:v21];
    v17 = [(TSDCanvasEditor *)[SXTextTangierCanvasEditor alloc] initWithInteractiveCanvasController:v16];
    [v16 setCanvasEditor:v17];
  }

  v18 = objc_alloc_init(a5);
  [v16 setLayerHost:v18];
  [v18 setInteractiveCanvasController:v16];
  v19 = v16;
  *a2 = v16;
  v20 = v18;
  *a3 = v18;

  v9 = v21;
LABEL_15:
}

void sub_1D8307888(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D8307C44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D830A0EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  objc_destroyWeak((v28 + 32));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a28, 8);
  objc_destroyWeak((v29 + 48));
  objc_destroyWeak((v30 - 120));
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1D830A9DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

double MKCoordinateSpanObjCValue(SXJSONObject *a1, objc_selector *a2, ...)
{
  v2 = SXJSONObjectObjCValueFromObject(a1, a2);
  if (v2)
  {
    objc_opt_class();
    v3 = 0.0;
    if (objc_opt_isKindOfClass())
    {
      v4 = [v2 objectForKey:@"latitudeDelta"];
      v5 = [v2 objectForKey:@"longitudeDelta"];
      [v4 doubleValue];
      v3 = v6;
      [v5 doubleValue];
    }
  }

  else
  {
    v3 = 0.0;
  }

  return v3;
}

double SXJSONObjectFloatValue(SXJSONObject *a1, objc_selector *a2, ...)
{
  v3 = a1;
  v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:sel_getName(a2)];
  v5 = SXJSONObjectRuntimeValue(v3, v4);
  if (!v5 || ([MEMORY[0x1E695DFB0] null], v6 = objc_claimAutoreleasedReturnValue(), v6, v5 == v6))
  {
    v8 = 1.79769313e308;
  }

  else
  {
    [v5 doubleValue];
    v8 = v7;
  }

  return v8;
}

id SXJSONObjectObjectValue(SXJSONObject *a1, objc_selector *a2, ...)
{
  v3 = a1;
  v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:sel_getName(a2)];
  v5 = [(SXJSONObject *)v3 objectForLookupKey:v4];
  if (v5)
  {
    v6 = v5;
    v7 = v6;
    goto LABEL_18;
  }

  v6 = SXJSONObjectRuntimeValue(v3, v4);
  if (!v6 || ([MEMORY[0x1E695DFB0] null], v8 = objc_claimAutoreleasedReturnValue(), v8, v6 == v8))
  {
    v7 = 0;
    goto LABEL_18;
  }

  +[SXJSONObject lock];
  v9 = objc_opt_class();
  Name = sel_getName(a2);
  v11 = SXJSONObjectRuntimeGenerateLookupKey(v9, Name);
  v12 = +[SXJSONObject propertyHashTable];
  v13 = [v12 objectForKey:v11];

  v14 = +[SXJSONObject protocolPropertyDefinitions];
  v15 = [v14 objectForKey:v11];

  +[SXJSONObject unlock];
  if (v15)
  {
    v13 = [objc_opt_class() classForProtocolProperty:v4 withValue:v6];
  }

  if (v13 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    if (v13 == objc_opt_class() || v13 == objc_opt_class())
    {
      v16 = [objc_opt_class() objectValueClassBlockForPropertyWithName:v4];
      v17 = [objc_opt_class() valueClassBlockForPropertyWithName:v4];
      v18 = [objc_opt_class() purgeClassBlockForPropertyWithName:v4];
      v7 = [[v13 alloc] initWithValueClassBlock:v17 objectValueClassBlock:v16 purgeBlock:v18 andJSONObject:v6 andVersion:v3->_specificationVersion];
    }

    else
    {
      v7 = [[v13 alloc] initWithJSONObject:v6 andVersion:v3->_specificationVersion];
      if (!v7)
      {
        goto LABEL_17;
      }
    }

    [(SXJSONObject *)v3 storeObject:v7 forLookupKey:v4];
  }

  else
  {
    [(SXJSONObject *)v3 storeObject:v6 forLookupKey:v4];
    v7 = v6;
  }

LABEL_17:

LABEL_18:

  return v7;
}

uint64_t SXJSONObjectIntegerValue(SXJSONObject *a1, objc_selector *a2, ...)
{
  v3 = a1;
  v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:sel_getName(a2)];
  v5 = SXJSONObjectRuntimeValue(v3, v4);
  if (!v5 || ([MEMORY[0x1E695DFB0] null], v6 = objc_claimAutoreleasedReturnValue(), v6, v5 == v6))
  {
    v7 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = [v5 integerValue];
  }

  return v7;
}

uint64_t SXJSONObjectUnsignedIntegerValue(SXJSONObject *a1, objc_selector *a2, ...)
{
  v3 = a1;
  v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:sel_getName(a2)];
  v5 = SXJSONObjectRuntimeValue(v3, v4);
  if (!v5 || ([MEMORY[0x1E695DFB0] null], v6 = objc_claimAutoreleasedReturnValue(), v6, v5 == v6))
  {
    v7 = -1;
  }

  else
  {
    v7 = [v5 unsignedIntegerValue];
  }

  return v7;
}

uint64_t SXJSONObjectBoolValue(SXJSONObject *a1, objc_selector *a2, ...)
{
  v3 = a1;
  v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:sel_getName(a2)];
  v5 = SXJSONObjectRuntimeValue(v3, v4);
  if (!v5 || ([MEMORY[0x1E695DFB0] null], v6 = objc_claimAutoreleasedReturnValue(), v6, v5 == v6))
  {
    v7 = 0;
  }

  else
  {
    v7 = [v5 BOOLValue];
  }

  return v7;
}

void sub_1D83159C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  _Block_object_dispose(&a30, 8);
  _Block_object_dispose((v30 - 168), 8);
  _Block_object_dispose((v30 - 120), 8);
  _Unwind_Resume(a1);
}

void sub_1D831AF24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D831B450(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D831CBD0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 112));
  _Unwind_Resume(a1);
}

void sub_1D832ACC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t charToInt(int a1)
{
  v1 = a1 - 48;
  if ((a1 - 65) >= 6)
  {
    v2 = 0;
  }

  else
  {
    v2 = a1 - 55;
  }

  if ((a1 - 97) <= 5)
  {
    v3 = a1 - 87;
  }

  else
  {
    v3 = v2;
  }

  if (v1 <= 9)
  {
    return v1;
  }

  else
  {
    return v3;
  }
}

void sub_1D8331F64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D8332268(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D8332504(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D83327A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D8332A3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D8334574(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v11 - 144), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1D833D0E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D834478C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  objc_destroyWeak(&a70);
  objc_destroyWeak(&location);
  _Block_object_dispose(&a72, 8);
  _Block_object_dispose(&STACK[0x238], 8);
  _Block_object_dispose(&STACK[0x278], 8);
  _Block_object_dispose(&STACK[0x2B8], 8);
  _Unwind_Resume(a1);
}

uint64_t OUTLINED_FUNCTION_10(uint64_t a1)
{

  return [v2 setObject:v1 forKey:a1];
}

id OUTLINED_FUNCTION_11()
{
  v3 = (v0 + *(v1 + 208));

  return objc_loadWeakRetained(v3);
}

uint64_t OUTLINED_FUNCTION_0_7(uint64_t a1, uint64_t a2)
{

  return [v2 convertValueToPoints:{a1, a2}];
}

__n128 OUTLINED_FUNCTION_1_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __n128 a13)
{
  result = a13;
  *(v14 - 176) = a13.n128_u32[0];
  v16 = v14 - 176;
  *(v16 + 4) = v13;
  *(v14 - 164) = 2114;
  *(v16 + 14) = a1;
  return result;
}

uint64_t OUTLINED_FUNCTION_2_1(uint64_t result, float a2)
{
  *(v3 - 176) = a2;
  v4 = v3 - 176;
  *(v4 + 4) = v2;
  *(v3 - 164) = 2114;
  *(v4 + 14) = result;
  return result;
}

void OUTLINED_FUNCTION_3_0(void *a1)
{

  [(SXComponentDependencyResolver *)v1 addDependency:a1];
}

uint64_t OUTLINED_FUNCTION_5_0(double a1, double a2)
{
  if (a2 >= v5)
  {
    v6 = a2;
  }

  else
  {
    v6 = v5;
  }

  return [v2 updateSize:v3 forComponentWithIdentifier:{a1, v6}];
}

uint64_t OUTLINED_FUNCTION_6_0()
{

  return objc_opt_isKindOfClass();
}

uint64_t OUTLINED_FUNCTION_7_0()
{

  return objc_opt_class();
}

void sub_1D8346FE4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 120));
  _Unwind_Resume(a1);
}

void sub_1D834817C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 104));
  _Unwind_Resume(a1);
}

double CGSizeFromObjCValue(SXJSONObject *a1, objc_selector *a2, ...)
{
  v2 = SXJSONObjectObjCValueFromObject(a1, a2);
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v3 = [v2 objectForKeyedSubscript:@"width"];
    [v3 floatValue];
    v5 = v4;
    v6 = [v2 objectForKeyedSubscript:@"height"];
    [v6 floatValue];
    v7 = v5;
  }

  else
  {
    v7 = *MEMORY[0x1E695F060];
  }

  return v7;
}

void sub_1D834B8AC(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

uint64_t NSRangeFromObjCValue(SXJSONObject *a1, objc_selector *a2, ...)
{
  v2 = SXJSONObjectObjCValueFromObject(a1, a2);
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v3 = [v2 objectForKeyedSubscript:@"start"];
    v4 = [v3 integerValue];

    v5 = [v2 objectForKeyedSubscript:@"length"];
    [v5 integerValue];

    if (v4 < 0)
    {
      v4 = -1;
    }
  }

  else
  {
    v4 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v4;
}

double SXConvertibleValueObjCValue(SXJSONObject *a1, objc_selector *a2, ...)
{
  v2 = SXJSONObjectObjCValueFromObject(a1, a2);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lipt", objc_msgSend(v2, "integerValue")];

    v2 = v3;
  }

  v4 = v2;
  [v4 floatValue];
  v5 = v4;
  v6 = v5;
  if (v5 && ([v5 hasSuffix:@"pt"] & 1) == 0 && (objc_msgSend(v6, "hasSuffix:", @"vh") & 1) == 0 && (objc_msgSend(v6, "hasSuffix:", @"vw") & 1) == 0 && (objc_msgSend(v6, "hasSuffix:", @"vmin") & 1) == 0 && (objc_msgSend(v6, "hasSuffix:", @"vmax") & 1) == 0 && (objc_msgSend(v6, "hasSuffix:", @"gut") & 1) == 0 && (objc_msgSend(v6, "hasSuffix:", @"dg") & 1) == 0 && (objc_msgSend(v6, "hasSuffix:", @"cw") & 1) == 0 && (objc_msgSend(v6, "hasSuffix:", @"dm") & 1) == 0)
  {
    [v6 hasSuffix:@"pw"];
  }

  return result;
}

void UIBezierPathSilexPathApplier(void *a1, const CGPathElement *a2)
{
  v12 = a1;
  type = a2->type;
  if (a2->type <= kCGPathElementAddLineToPoint)
  {
    if (type)
    {
      v4 = v12;
      if (type == kCGPathElementAddLineToPoint)
      {
        [v12 lineToPoint:{a2->points->x, a2->points->y}];
        v4 = v12;
      }
    }

    else
    {
      [v12 moveToPoint:{a2->points->x, a2->points->y}];
      v4 = v12;
    }
  }

  else if (type == kCGPathElementAddQuadCurveToPoint)
  {
    v5 = malloc_type_calloc(3uLL, 0x10uLL, 0x1000040451B5BE8uLL);
    v6 = [v12 elementAtIndex:objc_msgSend(v12 associatedPoints:{"elementCount") - 1, v5}];
    v7 = MEMORY[0x1E695EFF8];
    v8 = (MEMORY[0x1E695EFF8] + 8);
    if (!v6)
    {
      v7 = v5;
      v8 = v5 + 1;
    }

    if (v6 == 1)
    {
      v7 = v5;
      v8 = v5 + 1;
    }

    if (v6 == 2)
    {
      v7 = v5 + 4;
      v8 = v5 + 5;
    }

    v9 = *v7;
    points = a2->points;
    [v12 curveToPoint:points[1].x controlPoint1:points[1].y controlPoint2:{v9 + (points->x - v9) * 0.666666687, *v8 + (points->y - *v8) * 0.666666687, points[1].x + (points->x - points[1].x) * 0.666666687, points[1].y + (points->y - points[1].y) * 0.666666687}];
    v4 = v12;
  }

  else if (type == kCGPathElementAddCurveToPoint)
  {
    v11 = a2->points;
    [v12 curveToPoint:v11[2].x controlPoint1:v11[2].y controlPoint2:{v11->x, v11->y, v11[1].x, v11[1].y}];
    v4 = v12;
  }

  else
  {
    v4 = v12;
    if (type == kCGPathElementCloseSubpath)
    {
      [v12 closePath];
      v4 = v12;
    }
  }
}

void sub_1D8350798(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t OUTLINED_FUNCTION_3_1(uint64_t a1, uint64_t a2)
{

  return [v2 convertValueToPoints:{a1, a2}];
}

void sub_1D8357CAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

double MKCoordinateRegionObjCValue(SXJSONObject *a1, objc_selector *a2, ...)
{
  v2 = SXJSONObjectObjCValueFromObject(a1, a2);
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v3 = [v2 objectForKey:@"center"];
    v4 = [v2 objectForKey:@"span"];
    v5 = [v3 objectForKey:@"latitude"];
    v6 = [v3 objectForKey:@"longitude"];
    v7 = [v4 objectForKey:@"latitudeDelta"];
    v8 = [v4 objectForKey:@"longitudeDelta"];
    [v5 doubleValue];
    v10 = v9;
    [v6 doubleValue];
    *&v12 = *&CLLocationCoordinate2DMake(v10, v11);
    [v7 doubleValue];
    [v8 doubleValue];
  }

  else
  {
    *&v12 = *&CLLocationCoordinate2DMake(0.0, 0.0);
  }

  return v12;
}

void sub_1D835AF20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1D835C2A4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_1D8362F28(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1D8363130(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_1D836541C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  objc_destroyWeak(&a69);
  objc_destroyWeak(&location);
  _Block_object_dispose(&STACK[0x2B0], 8);
  _Block_object_dispose(&STACK[0x2E0], 8);
  _Block_object_dispose((v70 - 176), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

double SXDataTablePaddingObjCValue(SXJSONObject *a1, objc_selector *a2, ...)
{
  v2 = SXJSONObjectObjCValueFromObject(a1, a2);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v2 floatValue];
    v4 = v3;
    [v2 floatValue];
    [v2 floatValue];
    [v2 floatValue];
    v5 = v4;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [v2 objectForKey:@"top"];
      [v6 floatValue];
      v8 = v7;
      v9 = [v2 objectForKey:@"right"];
      [v9 floatValue];
      v10 = [v2 objectForKey:@"bottom"];
      [v10 floatValue];
      v11 = [v2 objectForKey:@"left"];
      [v11 floatValue];
      v5 = v8;
    }

    else
    {
      v5 = 1.79769313e308;
    }
  }

  return v5;
}

void sub_1D8366108(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

void sub_1D83667FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint8_t buf)
{
  if (a2 == 1)
  {
    v15 = objc_begin_catch(exception_object);
    v16 = MEMORY[0x1E69E9C10];
    v17 = MEMORY[0x1E69E9C10];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      v18 = objc_alloc(MEMORY[0x1E696AEC0]);
      v24 = [v15 reason];
      -[SXTextSource initWithString:smartFieldFactory:dataSource:documentLanguageProvider:fontAttributesConstructor:].cold.1([v18 initWithFormat:@"A %@ exception was detected while inserting and removing newlines from string: %@"], &buf, v24);
    }

    v19 = [v14 deletedRangeOffsets];
    [v19 removeAllIndexes];

    v20 = [v14 insertedRangeOffsets];
    [v20 removeAllIndexes];

    v21 = [v14 rangesExcludedOfParagraphSpacing];
    [v21 removeAllIndexes];

    v22 = [v13 copy];
    v23 = v14[2];
    v14[2] = v22;

    objc_end_catch();
    JUMPOUT(0x1D83667A8);
  }

  _Unwind_Resume(exception_object);
}

CGRect AVMakeRectWithAspectRatioInsideRect(CGSize aspectRatio, CGRect boundingRect)
{
  MEMORY[0x1EEDE99E0](aspectRatio, *&aspectRatio.height, boundingRect.origin, *&boundingRect.origin.y, boundingRect.size, *&boundingRect.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CFRange CFStringTokenizerGetCurrentTokenRange(CFStringTokenizerRef tokenizer)
{
  v1 = MEMORY[0x1EEDB7B38](tokenizer);
  result.length = v2;
  result.location = v1;
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

CGRect CGRectIntersection(CGRect r1, CGRect r2)
{
  MEMORY[0x1EEDBAE40](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectOffset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x1EEDBAE78](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
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

CLLocationCoordinate2D CLLocationCoordinate2DMake(CLLocationDegrees latitude, CLLocationDegrees longitude)
{
  MEMORY[0x1EEDE89C8](latitude, longitude);
  result.longitude = v3;
  result.latitude = v2;
  return result;
}

MKMapPoint MKMapPointForCoordinate(CLLocationCoordinate2D coordinate)
{
  MEMORY[0x1EEDCCB88](coordinate, *&coordinate.longitude);
  result.y = v2;
  result.x = v1;
  return result;
}

NSRange NSIntersectionRange(NSRange range1, NSRange range2)
{
  v2 = MEMORY[0x1EEDC6FE0](range1.location, range1.length, range2.location, range2.length);
  result.length = v3;
  result.location = v2;
  return result;
}

CGRect UIAccessibilityConvertFrameToScreenCoordinates(CGRect rect, UIView *view)
{
  MEMORY[0x1EEE4DB90](view, rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

__float2 __sincosf_stret(float a1)
{
  MEMORY[0x1EEE73578](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}