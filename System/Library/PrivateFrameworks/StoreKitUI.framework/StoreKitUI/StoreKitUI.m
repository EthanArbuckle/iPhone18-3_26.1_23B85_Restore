uint64_t sub_215BB0968(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA8B570);
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_215BB09FC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA8B570);
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_215BB0A88(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReviewInAppRatingActionButton.Configuration(0);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_215BB0AD0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReviewInAppRatingActionButton.Configuration(0);

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_215BB0B24()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA8B5A8);
  type metadata accessor for ReviewInAppRatingActionButtonStyle();
  sub_215EB3200();
  sub_215EB32AC();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_215BB0BA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_215F08F18();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_215BB0BF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_215F08F18();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_215BB0C3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA8B5F0);
  OUTLINED_FUNCTION_12();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_5:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA8B5F8);
  OUTLINED_FUNCTION_12();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v9 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v13 = *(a1 + *(a3 + 52));
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

void sub_215BB0D40(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA8B5F0);
  OUTLINED_FUNCTION_12();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA8B5F8);
    OUTLINED_FUNCTION_12();
    if (*(v13 + 84) != a3)
    {
      *(a1 + *(a4 + 52)) = (a2 - 1);
      return;
    }

    v10 = v12;
    v11 = a1 + *(a4 + 20);
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_215BB0E44@<X0>(_BYTE *a1@<X8>)
{
  result = sub_215F09218();
  *a1 = result & 1;
  return result;
}

uint64_t sub_215BB0EB0@<X0>(uint64_t a1@<X8>)
{
  result = sub_215F09238();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_215BB0EEC()
{
  v1 = sub_215F09098();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = *(v6 + 64);

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + v7, v4 | 7);
}

uint64_t sub_215BB0FD8()
{

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t sub_215BB1018(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA8B9E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_215BB1084@<X0>(uint64_t *a1@<X8>)
{
  result = sub_215F091E8();
  *a1 = result;
  return result;
}

uint64_t sub_215BB1108()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_215BB1140()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_215BB1198()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_215BB11D0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_215BB1234@<X0>(uint64_t *a1@<X8>)
{
  result = sub_215EC0C48(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_215BB1288(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA8BAF0);
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_215BB131C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA8BAF0);
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_215BB13D4()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_215BB1410()
{
  OUTLINED_FUNCTION_5_1();
  type metadata accessor for BackgroundGeometry();
  OUTLINED_FUNCTION_2_2();
  swift_getWitnessTable();
  sub_215F09358();
  OUTLINED_FUNCTION_5_1();
  sub_215F090C8();
  OUTLINED_FUNCTION_4_1();
  sub_215F092C8();
  sub_215F09128();
  OUTLINED_FUNCTION_0_6();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_1_1();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_3_2();
  return swift_getWitnessTable();
}

uint64_t sub_215BB14F8(unsigned __int8 *a1, uint64_t a2, int *a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    if (v4 >= 2)
    {
      return v4 - 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA8BC10);
    OUTLINED_FUNCTION_12();
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = a3[5];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA8B5F8);
      OUTLINED_FUNCTION_12();
      if (*(v13 + 84) == a2)
      {
        v10 = v12;
        v11 = a3[6];
      }

      else
      {
        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA8BAF0);
        v11 = a3[8];
      }
    }

    return __swift_getEnumTagSinglePayload(&a1[v11], a2, v10);
  }
}

_BYTE *sub_215BB161C(_BYTE *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA8BC10);
    OUTLINED_FUNCTION_12();
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = a4[5];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA8B5F8);
      OUTLINED_FUNCTION_12();
      if (*(v13 + 84) == a3)
      {
        v10 = v12;
        v11 = a4[6];
      }

      else
      {
        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA8BAF0);
        v11 = a4[8];
      }
    }

    return __swift_storeEnumTagSinglePayload(&v5[v11], a2, a2, v10);
  }

  return result;
}

uint64_t sub_215BB174C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_215BB175C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_215BB17E0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void sub_215BB1EE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_215BB47FC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_215BB5514(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_215BB5840(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_215BB6254(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id a25)
{
  objc_destroyWeak((v25 + 40));
  objc_destroyWeak((v25 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a25);
  _Unwind_Resume(a1);
}

__CFString *SKUIMediaQueryNetworkTypeString(uint64_t a1)
{
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    SKUIMediaQueryNetworkTypeString_cold_1();
  }

  v2 = @"none";
  v3 = @"wifi";
  if (a1 != 1000)
  {
    v3 = 0;
  }

  if (a1)
  {
    v2 = v3;
  }

  if ((a1 - 1) >= 8)
  {
    return v2;
  }

  else
  {
    return @"cellular";
  }
}

void OUTLINED_FUNCTION_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, &a9, 0xCu);
}

void sub_215BBB734(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void sub_215BBE21C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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

void sub_215BBEDCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_215BC1CB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_215BC1E30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
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

void sub_215BC2008(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void SKUIAppearanceStyleBarButtonItem(void *a1)
{
  v1 = a1;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v2)
      {
        SKUIAppearanceStyleBarButtonItem_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
      }
    }
  }

  SUBarButtonItemApplyStyling();
}

void SKUIAppearanceStyleNavigationBar(void *a1)
{
  v1 = a1;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v2)
      {
        SKUIAppearanceStyleNavigationBar_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
      }
    }
  }

  SUNavigationBarApplyStyling();
}

id SKUITintedImage(void *a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = a1;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v8 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v8)
      {
        SKUITintedImage_cold_1(v8, v9, v10, v11, v12, v13, v14, v15);
      }
    }
  }

  [v7 size];
  v17 = v16;
  v19 = v18;
  [v7 scale];
  v21 = v20;
  v25.width = v17;
  v25.height = v19;
  UIGraphicsBeginImageContextWithOptions(v25, 0, v21);
  [v5 set];

  v26.origin.x = 0.0;
  v26.origin.y = 0.0;
  v26.size.width = v17;
  v26.size.height = v19;
  UIRectFill(v26);
  [v7 drawInRect:22 blendMode:0.0 alpha:{0.0, v17, v19, 1.0}];

  [v6 drawInRect:{0.0, 0.0, v17, v19}];
  v22 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v22;
}

id SKUIBundle()
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v0 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v0)
      {
        SKUIBundle_cold_1(v0, v1, v2, v3, v4, v5, v6, v7);
      }
    }
  }

  v8 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.ios.StoreKitUI"];

  return v8;
}

BOOL SKUIAllowsLandscapePhone()
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v0 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v0)
      {
        SKUIAllowsLandscapePhone_cold_1(v0, v1, v2, v3, v4, v5, v6, v7);
      }
    }
  }

  v8 = SKUIAllowsLandscapePhone_sValue;
  if (SKUIAllowsLandscapePhone_sValue == 255)
  {
    v9 = [MEMORY[0x277D759A0] mainScreen];
    [v9 _referenceBounds];
    SKUIAllowsLandscapePhone_sValue = v10 == 736.0;

    v8 = SKUIAllowsLandscapePhone_sValue;
  }

  return v8 != 0;
}

BOOL SKUIImageExistsWithResourceName(void *a1)
{
  v1 = a1;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v2)
      {
        SKUIImageExistsWithResourceName_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
      }
    }
  }

  if (!SKUIImageExistsWithResourceName_sBundle)
  {
    v10 = SKUIBundle();
    v11 = SKUIImageExistsWithResourceName_sBundle;
    SKUIImageExistsWithResourceName_sBundle = v10;
  }

  v12 = 0;
  v13 = __StoreKitUIResources;
  do
  {
    v14 = *v13;
    v13 += 3;
    v15 = [v14 isEqualToString:v1];
    if (v12 > 0x94)
    {
      break;
    }

    ++v12;
  }

  while ((v15 & 1) == 0);
  if (v15)
  {
    goto LABEL_16;
  }

  v16 = 0;
  v17 = __UIKitResources;
  do
  {
    v18 = *v17;
    v17 += 3;
    v19 = [v18 isEqualToString:v1];
    if (v16 > 2)
    {
      break;
    }

    ++v16;
  }

  while (!v19);
  if ((v19 & 1) != 0 || ([__ExternalResources objectForKey:v1], v20 = objc_claimAutoreleasedReturnValue(), v20, v20))
  {
LABEL_16:
    v21 = 1;
  }

  else
  {
    v23 = [__ExternalResourceManager imageForResourceName:v1];
    v21 = v23 != 0;
  }

  return v21;
}

id SKUIImageWithResourceName(void *a1)
{
  v1 = a1;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v2)
      {
        SKUIImageWithResourceName_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
        if (v1)
        {
          goto LABEL_5;
        }

LABEL_38:
        v31 = 0;
        goto LABEL_39;
      }
    }
  }

  if (!v1)
  {
    goto LABEL_38;
  }

LABEL_5:
  v10 = [0 objectForKey:v1];
  if (!v10)
  {
    if (!SKUIImageWithResourceName_sBundle)
    {
      v11 = SKUIBundle();
      v12 = SKUIImageWithResourceName_sBundle;
      SKUIImageWithResourceName_sBundle = v11;
    }

    v13 = &off_2781F86D8;
    v14 = 150;
    while (![(__CFString *)*(v13 - 1) isEqualToString:v1])
    {
      v13 += 3;
      if (!--v14)
      {
        v15 = 0;
        v16 = 1;
        goto LABEL_14;
      }
    }

    v16 = *(v13 + 8);
    v15 = v16 ^ 1;
    v17 = [MEMORY[0x277D755B8] imageNamed:*v13 inBundle:SKUIImageWithResourceName_sBundle];
    if (v17)
    {
      v10 = v17;
      goto LABEL_24;
    }

LABEL_14:
    v18 = &off_2781F94E8;
    v19 = 4;
    while (![(__CFString *)*(v18 - 1) isEqualToString:v1])
    {
      v18 += 3;
      if (!--v19)
      {
        goto LABEL_20;
      }
    }

    v10 = [MEMORY[0x277D755B8] kitImageNamed:*v18];
    if (v10)
    {
      goto LABEL_25;
    }

    v15 = 0;
    v16 = 1;
LABEL_20:
    v20 = [__ExternalResources objectForKey:v1];
    if (!v20 || (v21 = v20, v16 = [v20 alwaysTemplate], v15 = v16 ^ 1, v22 = MEMORY[0x277D755B8], objc_msgSend(v21, "imageName"), v23 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v21, "bundle"), v24 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v22, "imageNamed:inBundle:", v23, v24), v10 = objc_claimAutoreleasedReturnValue(), v24, v23, v21, !v10))
    {
      v25 = [MEMORY[0x277D755B8] imageNamed:v1 inBundle:SKUIImageWithResourceName_sBundle];
      if (!v25)
      {
        v10 = [__ExternalResourceManager imageForResourceName:v1];
        if (v10)
        {
          goto LABEL_29;
        }
      }

      v10 = v25;
    }

LABEL_24:
    if (v16)
    {
LABEL_25:
      v26 = v10;
      v27 = 2;
    }

    else
    {
      if ((v15 & 1) == 0)
      {
        goto LABEL_29;
      }

      v26 = v10;
      v27 = 1;
    }

    v28 = [v26 imageWithRenderingMode:v27];

    v10 = v28;
LABEL_29:
    v29 = 0;
    while (![(__CFString *)__SKImagesThatFlip[v29] isEqualToString:v1])
    {
      if (++v29 == 3)
      {
        goto LABEL_34;
      }
    }

    v30 = [v10 imageFlippedForRightToLeftLayoutDirection];

    v10 = v30;
  }

LABEL_34:
  v31 = v10;

LABEL_39:

  return v31;
}

void SKUIResourceImageSetRegisterWithBundle(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v5)
      {
        SKUIResourceImageSetRegisterWithBundle_cold_1(v5, v6, v7, v8, v9, v10, v11, v12);
      }
    }
  }

  SKUIResourceImageSetRegisterWithBundleAlwaysTemplate(v3, v4, 0);
}

void SKUIResourceImageSetRegisterWithBundleAlwaysTemplate(void *a1, void *a2, char a3)
{
  v5 = a1;
  v6 = a2;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v7 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v7)
      {
        SKUIResourceImageSetRegisterWithBundleAlwaysTemplate_cold_1(v7, v8, v9, v10, v11, v12, v13, v14);
      }
    }
  }

  v15 = [v5 count];
  if (v6 && v15)
  {
    if (!__ExternalResources)
    {
      v16 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v17 = __ExternalResources;
      __ExternalResources = v16;
    }

    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __SKUIResourceImageSetRegisterWithBundleAlwaysTemplate_block_invoke;
    v18[3] = &unk_2781F9548;
    v19 = v6;
    v20 = a3;
    [v5 enumerateKeysAndObjectsUsingBlock:v18];
  }
}

void __SKUIResourceImageSetRegisterWithBundleAlwaysTemplate_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = objc_alloc_init(SKUIExternalResourceImage);
  [(SKUIExternalResourceImage *)v7 setImageName:v5];

  [(SKUIExternalResourceImage *)v7 setBundle:*(a1 + 32)];
  [(SKUIExternalResourceImage *)v7 setAlwaysTemplate:*(a1 + 40)];
  [__ExternalResources setObject:v7 forKey:v6];
}

void SKUISetExternalResourceManager(void *a1)
{
  v1 = a1;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v2)
      {
        SKUISetExternalResourceManager_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
      }
    }
  }

  v10 = __ExternalResourceManager;
  __ExternalResourceManager = v1;
}

id SKUILinkArrowImage(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        SKUILinkArrowImage_cold_1(v5, v6, v7, v8, v9, v10, v11, v12);
      }
    }
  }

  v13 = [MEMORY[0x277D755B8] imageNamed:@"ChevronSeeAll" inBundle:v3];
  v14 = SKUITintedImage(v13, 0, v4);

  return v14;
}

id SKUILinkArrowButton(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a1;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = a2;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v14 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v14)
      {
        SKUILinkArrowButton_cold_1(v14, v15, v16, v17, v18, v19, v20, v21);
      }
    }
  }

  v22 = [MEMORY[0x277D755B8] imageNamed:@"ChevronSeeAll" inBundle:v9];
  v23 = [MEMORY[0x277D75220] buttonWithType:0];
  [v23 setTitle:v13 forState:0];

  v24 = [v23 titleLabel];
  [v24 setFont:v10];

  [v23 setTitleColor:v12 forState:0];
  [v23 setTitleColor:v11 forState:1];
  v25 = [v22 _flatImageWithColor:v12];

  [v23 setImage:v25 forState:0];
  v26 = [v22 _flatImageWithColor:v11];

  [v23 setImage:v26 forState:1];
  [v22 size];
  [v23 setTitleEdgeInsets:{0.0, -(v27 + 5.0), 0.0, 0.0}];
  [v23 sizeThatFits:{1.79769313e308, 1.79769313e308}];
  v29 = v28;
  v31 = v30;
  [v23 titleRectForContentRect:{0.0, 0.0, v28, v30}];
  [v23 setImageEdgeInsets:{1.0, v32 + 5.0, 0.0, 0.0}];
  [v23 setFrame:{0.0, 0.0, v29 + 5.0, v31}];

  return v23;
}

id SKUIMoreDisclosureImage(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        SKUIMoreDisclosureImage_cold_1(v5, v6, v7, v8, v9, v10, v11, v12);
      }
    }
  }

  v13 = [MEMORY[0x277D755B8] imageNamed:@"MoreDisclosureTriangleMask" inBundle:v3];
  v14 = SKUITintedImage(v13, 0, v4);

  return v14;
}

id SKUISearchNoResultsImage(void *a1)
{
  v1 = a1;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v2)
      {
        SKUISearchNoResultsImage_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
      }
    }
  }

  v10 = [MEMORY[0x277D755B8] imageNamed:@"ProxyGraphicSearch" inBundle:v1];

  return v10;
}

void SKUIRangesForFormatString(void *a1, void *a2, void *a3, unint64_t *a4, unint64_t *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a1;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v12 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v12)
      {
        SKUIRangesForFormatString_cold_1(v12, v13, v14, v15, v16, v17, v18, v19);
      }
    }
  }

  v20 = [v11 rangeOfString:@"%1$@"];
  v22 = v21;
  v23 = [v11 rangeOfString:@"%2$@"];
  v25 = v24;

  v26 = v9;
  v27 = v10;
  v28 = v27;
  if (v20 > v23)
  {
    v29 = v20;
  }

  else
  {
    v25 = v22;
    v29 = v23;
  }

  if (v20 > v23)
  {
    v30 = v27;
  }

  else
  {
    v30 = v26;
  }

  if (v20 > v23)
  {
    v31 = v26;
  }

  else
  {
    v31 = v27;
  }

  if (v20 <= v23)
  {
    v23 = v20;
  }

  v32 = [v30 length];
  v33 = v29 - v25 + v32;
  v34 = [v31 length];
  if (v30 == v26)
  {
    v35 = v23;
  }

  else
  {
    v35 = v33;
  }

  if (v30 == v26)
  {
    v36 = v32;
  }

  else
  {
    v36 = v34;
  }

  if (v30 == v26)
  {
    v37 = v33;
  }

  else
  {
    v37 = v23;
  }

  *a4 = v35;
  a4[1] = v36;
  if (v30 == v26)
  {
    v38 = v34;
  }

  else
  {
    v38 = v32;
  }

  *a5 = v37;
  a5[1] = v38;
}

void sub_215BC58A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_215BC67DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_215BC6B1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void _telephonyNotification(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  v6 = SKUICoreTelephonyFramework();
  v7 = *SKUIWeakLinkedSymbolForString("kCTRegistrationOperatorNameChangedNotification", v6);
  v8 = *SKUIWeakLinkedSymbolForString("kCTRegistrationDisplayStatusChangedNotification", v6);
  v9 = *SKUIWeakLinkedSymbolForString("kCTRegistrationStatusChangedNotification", v6);
  v10 = *SKUIWeakLinkedSymbolForString("kCTSettingPhoneNumberChangedNotification", v6);
  if (CFEqual(a2, v7))
  {
    v11 = @"onOperatorChange";
LABEL_6:
    v12 = a4;
    v13 = [v12 appContext];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = ___telephonyNotification_block_invoke;
    v15[3] = &unk_2781F9618;
    v16 = v12;
    v17 = v11;
    v14 = v12;
    [v13 evaluate:v15 completionBlock:0];

    return;
  }

  if (CFEqual(a2, v9) || CFEqual(a2, v8))
  {
    v11 = @"onRegistrationChange";
    goto LABEL_6;
  }

  if (CFEqual(a2, v10))
  {
    v11 = @"onPhoneNumberChange";
    goto LABEL_6;
  }
}

void sub_215BC7D0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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

void sub_215BC9008(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v29 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void SKUIStoreAssetResourceLoaderConfigureWithDelegate(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        SKUIStoreAssetResourceLoaderConfigureWithDelegate_cold_1(v5, v6, v7, v8, v9, v10, v11, v12);
      }
    }
  }

  [v4 setDelegate:v3 queue:MEMORY[0x277D85CD0]];
  objc_setAssociatedObject(v4, _SKUIStoreAssetResourceLoaderDelegateAssociatedObjectKeyStrongDelegate, v3, 1);
}

void sub_215BCC2CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, id a17)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a17);
  _Unwind_Resume(a1);
}

void sub_215BCCF64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_215BCD658(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id SKUICacheCodingDecodeArray(void *a1, objc_class *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a1;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    SKUICacheCodingDecodeArray_cold_1();
  }

  v4 = [MEMORY[0x277CBEB18] array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [a2 alloc];
        v12 = [v11 initWithCacheRepresentation:{v10, v14}];
        if (v12)
        {
          [v4 addObject:v12];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  return v4;
}

id SKUICacheCodingEncodeArray(void *a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v1 = a1;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    SKUICacheCodingEncodeArray_cold_1();
  }

  v2 = [MEMORY[0x277CBEB18] array];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v10 + 1) + 8 * i) cacheRepresentation];
        if (v8)
        {
          [v2 addObject:v8];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  return v2;
}

void sub_215BD6F00(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

SKUILibraryItem *SKUILibraryItemForStoreIdentifier(void *a1)
{
  v1 = a1;
  v2 = objc_alloc_init(SKUILibraryItem);
  [(SKUILibraryItem *)v2 setStoreIdentifier:v1];

  return v2;
}

BOOL SKUIItemStateCenterUseAppstoredPurchases(void *a1)
{
  v1 = a1;
  if (SKUIItemStateCenterUseAppstorePurchasesSwitchEnabled())
  {
    v2 = [v1 itemKind] == 12 || objc_msgSend(v1, "itemKind") == 17;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void sub_215BD9144(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __Block_byref_object_dispose__5(uint64_t a1)
{
}

{
}

void sub_215BE1820(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_215BE1D14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_215BE1E98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_215BE2774(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_215BE2E98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t SKUIItemStateCenterUseAppstorePurchasesSwitchEnabled()
{
  v0 = [MEMORY[0x277CCA8D8] mainBundle];
  v1 = [v0 bundleIdentifier];

  if (([v1 isEqualToString:@"com.apple.AppStore"] & 1) != 0 || objc_msgSend(v1, "isEqualToString:", @"com.apple.ios.StoreKitUIService"))
  {
    keyExistsAndHasValidFormat = 0;
    if (CFPreferencesGetAppBooleanValue(@"UseAppstoredPurchases", @"com.apple.AppStore", &keyExistsAndHasValidFormat))
    {
      v2 = 1;
    }

    else
    {
      v2 = keyExistsAndHasValidFormat == 0;
    }

    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t SKUIItemKindForString(uint64_t a1)
{
  v2 = &off_2781F9EA0;
  v3 = 25;
  while (![*v2 isEqualToString:a1])
  {
    v2 += 2;
    if (!--v3)
    {
      return 0;
    }
  }

  return *(v2 - 1);
}

id SKUIItemScreenshotsForDictionary(void *a1)
{
  v60 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [MEMORY[0x277CBEB18] array];
  v3 = [v1 objectForKey:*MEMORY[0x277D6A3D0]];
  objc_opt_class();
  v40 = v3;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_48;
  }

  v39 = v1;
  v4 = [MEMORY[0x277D759A0] mainScreen];
  [v4 scale];
  v6 = v5;

  v7 = [MEMORY[0x277D75418] currentDevice];
  v8 = [v7 userInterfaceIdiom];

  if (v8 == 1)
  {
    v9 = [v40 objectForKey:*MEMORY[0x277D6A3B8]];
    if (!v9)
    {
      v14 = [v40 objectForKey:*MEMORY[0x277D6A3C8]];
      v49 = -320 * v6;
      v47 = -196 * v6;
      v1 = v39;
      if (v14)
      {
        v48 = 568 * v6;
        v15 = -348;
      }

      else
      {
        v14 = [v40 objectForKey:*MEMORY[0x277D6A3C0]];
        v48 = 480 * v6;
        v15 = -294;
      }

      v46 = v6 * v15;
      goto LABEL_14;
    }

    v48 = v6 << 10;
    v49 = -768 * v6;
    v46 = -300 * v6;
    v10 = -225;
  }

  else
  {
    v11 = [MEMORY[0x277D759A0] mainScreen];
    [v11 bounds];
    v13 = v12;

    if (v13 <= 480.0 || ([v40 objectForKey:*MEMORY[0x277D6A3C8]], (v9 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v14 = [v40 objectForKey:*MEMORY[0x277D6A3C0]];
      v48 = 480 * v6;
      v49 = -320 * v6;
      v46 = -294 * v6;
      v47 = -196 * v6;
      v1 = v39;
      goto LABEL_14;
    }

    v48 = 568 * v6;
    v49 = -320 * v6;
    v46 = -348 * v6;
    v10 = -196;
  }

  v47 = v6 * v10;
  v1 = v39;
  v14 = v9;
LABEL_14:
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_47;
  }

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v38 = v14;
  v16 = v14;
  v17 = [v16 countByEnumeratingWithState:&v54 objects:v59 count:16];
  if (!v17)
  {
    goto LABEL_46;
  }

  v18 = v17;
  v19 = *v55;
  v42 = v16;
  v43 = v2;
  v41 = *v55;
  do
  {
    v20 = 0;
    v44 = v18;
    do
    {
      if (*v55 != v19)
      {
        objc_enumerationMutation(v16);
      }

      v21 = *(*(&v54 + 1) + 8 * v20);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v45 = v20;
        v22 = v21;
        v23 = objc_alloc_init(SKUIScreenshot);
        v24 = [[SKUIArtwork alloc] initWithArtworkDictionary:v22];

        [(SKUIScreenshot *)v23 setArtwork:v24 forVariant:@"high-dpi"];
        [(SKUIScreenshot *)v23 setArtwork:v24 forVariant:@"low-dpi"];
        v25 = v23;
        goto LABEL_42;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v45 = v20;
        v26 = v21;
        v23 = objc_alloc_init(SKUIScreenshot);
        v50 = 0u;
        v51 = 0u;
        v52 = 0u;
        v53 = 0u;
        v25 = v26;
        v27 = [(SKUIScreenshot *)v25 countByEnumeratingWithState:&v50 objects:v58 count:16];
        if (!v27)
        {
          goto LABEL_41;
        }

        v28 = v27;
        v29 = *v51;
        v30 = 0x7FFFFFFFFFFFFFFFLL;
        v31 = 0x7FFFFFFFFFFFFFFFLL;
        while (1)
        {
          for (i = 0; i != v28; ++i)
          {
            if (*v51 != v29)
            {
              objc_enumerationMutation(v25);
            }

            v33 = *(*(&v50 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v34 = [[SKUIArtwork alloc] initWithArtworkDictionary:v33];
              v35 = [(SKUIArtwork *)v34 width];
              if (v35 >= [(SKUIArtwork *)v34 height])
              {
                if (SKUIArtworkSizeDeltaIsBetter(v35 - v48, v30))
                {
                  [(SKUIScreenshot *)v23 setArtwork:v34 forVariant:@"high-dpi"];
                  v30 = v35 - v48;
                }

                v36 = v35 + v46;
                if (!SKUIArtworkSizeDeltaIsBetter(v36, v31))
                {
                  goto LABEL_38;
                }
              }

              else
              {
                if (SKUIArtworkSizeDeltaIsBetter(v35 + v49, v30))
                {
                  [(SKUIScreenshot *)v23 setArtwork:v34 forVariant:@"high-dpi"];
                  v30 = v35 + v49;
                }

                v36 = v35 + v47;
                if ((SKUIArtworkSizeDeltaIsBetter(v36, v31) & 1) == 0)
                {
                  goto LABEL_38;
                }
              }

              [(SKUIScreenshot *)v23 setArtwork:v34 forVariant:@"low-dpi", v38];
              v31 = v36;
LABEL_38:

              continue;
            }
          }

          v28 = [(SKUIScreenshot *)v25 countByEnumeratingWithState:&v50 objects:v58 count:16];
          if (!v28)
          {
LABEL_41:

            v24 = v23;
            v16 = v42;
            v2 = v43;
            v19 = v41;
            v18 = v44;
            if ([(SKUIScreenshot *)v23 numberOfVariants]>= 1)
            {
LABEL_42:
              [v2 addObject:{v23, v38}];
              v23 = v24;
            }

            v20 = v45;
            break;
          }
        }
      }

      ++v20;
    }

    while (v20 != v18);
    v18 = [v16 countByEnumeratingWithState:&v54 objects:v59 count:16];
  }

  while (v18);
LABEL_46:

  v14 = v38;
  v1 = v39;
LABEL_47:

LABEL_48:

  return v2;
}

void sub_215BEC190(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_215BEC5EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id SKUIColorWithHTMLCode(void *a1)
{
  v1 = a1;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v2)
      {
        SKUIColorWithHTMLCode_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
      }
    }
  }

  v10 = [v1 length];
  v11 = v10;
  if (v10 == 8 || v10 == 6)
  {
    v12 = [v1 substringWithRange:{0, 2}];
    v13 = SKUIHexValueWithString(v12);

    v14 = [v1 substringWithRange:{2, 2}];
    v15 = SKUIHexValueWithString(v14);

    v16 = [v1 substringWithRange:{4, 2}];
    v17 = SKUIHexValueWithString(v16);

    if (v11 == 8)
    {
      v18 = [v1 substringWithRange:{6, 2}];
      v19 = SKUIHexValueWithString(v18);
    }

    else
    {
      v19 = 255;
    }

    v20 = 0;
    if (v13 <= 0xFF && v17 <= 0xFF && v15 <= 0xFF && v19 <= 0xFF)
    {
      v20 = [MEMORY[0x277D75348] colorWithRed:v13 / 255.0 green:v15 / 255.0 blue:v17 / 255.0 alpha:v19 / 255.0];
    }
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

BOOL SKUIColorSchemeStyleForColor(void *a1)
{
  v1 = a1;
  if (!os_variant_has_internal_content() || !_os_feature_enabled_impl() || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    if (v1)
    {
      goto LABEL_5;
    }

LABEL_13:
    v2 = 0;
    goto LABEL_14;
  }

  SKUIColorSchemeStyleForColor_cold_1();
  if (!v1)
  {
    goto LABEL_13;
  }

LABEL_5:
  v8 = 0;
  v9 = 0.0;
  v7 = 0;
  if ([v1 getHue:&v8 saturation:&v7 brightness:&v9 alpha:0])
  {
    v2 = v9 < 0.5;
  }

  else
  {
    v6 = 0.0;
    v3 = [v1 getWhite:&v6 alpha:0];
    v4 = 2;
    if (v6 < 0.5)
    {
      v4 = 3;
    }

    if (v3)
    {
      v2 = v4;
    }

    else
    {
      v2 = 0;
    }
  }

LABEL_14:

  return v2;
}

id SKUIBorderColorWithBackgroundColor(void *a1)
{
  v1 = a1;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && (v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT)))
  {
    SKUIBorderColorWithBackgroundColor_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    if (!v1)
    {
      goto LABEL_9;
    }
  }

  else if (!v1)
  {
    goto LABEL_9;
  }

  v10 = SKUIColorSchemeStyleForColor(v1);
  if (v10 <= 1)
  {
    if (v10)
    {
      goto LABEL_10;
    }

LABEL_9:
    v11 = MEMORY[0x277D75348];
    v12 = 0.2;
    v13 = 0.0;
    goto LABEL_11;
  }

  if (v10 == 2)
  {
    goto LABEL_9;
  }

LABEL_10:
  v11 = MEMORY[0x277D75348];
  v12 = 0.15;
  v13 = 1.0;
LABEL_11:
  v14 = [v11 colorWithWhite:v13 alpha:v12];

  return v14;
}

id SKUIColorForStyleWithBrightness(void *a1, uint64_t a2, float a3, float a4, float a5, float a6)
{
  v11 = a1;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v12 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v12)
      {
        SKUIColorForStyleWithBrightness_cold_1(v12, v13, v14, v15, v16, v17, v18, v19);
      }
    }
  }

  v20 = 0.0;
  if (a2 == 3)
  {
    v21 = a6;
  }

  else
  {
    v21 = 0.0;
  }

  if (a2 == 2)
  {
    v21 = a5;
  }

  if (a2 == 1)
  {
    v20 = a4;
  }

  if (!a2)
  {
    v20 = a3;
  }

  if (a2 > 1)
  {
    v20 = v21;
  }

  v22 = SKUIColorByAdjustingBrightness(v11, v20);

  return v22;
}

id SKUIColorByAdjustingBrightness(void *a1, float a2)
{
  v3 = a1;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    SKUIColorByAdjustingBrightness_cold_1();
  }

  v11 = 0.0;
  v12 = 0.0;
  v9 = 0.0;
  v10 = 0.0;
  if (![v3 getHue:&v12 saturation:&v11 brightness:&v10 alpha:&v9] || (objc_msgSend(MEMORY[0x277D75348], "colorWithHue:saturation:brightness:alpha:", v12, v11, v10 + a2, v9), (v4 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v7 = 0.0;
    v8 = 0.0;
    if (([v3 getWhite:&v8 alpha:&v7] & 1) == 0 || (objc_msgSend(MEMORY[0x277D75348], "colorWithWhite:alpha:", v8 + a2, v7), (v4 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v4 = v3;
    }
  }

  v5 = v4;

  return v5;
}

id SKUIColorForStyleWithAlpha(void *a1, uint64_t a2, float a3, float a4, float a5, float a6)
{
  v11 = a1;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v12 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v12)
      {
        SKUIColorForStyleWithAlpha_cold_1(v12, v13, v14, v15, v16, v17, v18, v19);
      }
    }
  }

  v20 = 0.0;
  if (a2 == 3)
  {
    v21 = a6;
  }

  else
  {
    v21 = 0.0;
  }

  if (a2 == 2)
  {
    v21 = a5;
  }

  if (a2 == 1)
  {
    v20 = a4;
  }

  if (!a2)
  {
    v20 = a3;
  }

  if (a2 > 1)
  {
    v20 = v21;
  }

  v22 = SKUIColorWithAlpha(v11, v20);

  return v22;
}

id SKUIColorWithAlpha(void *a1, float a2)
{
  v3 = a1;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v4 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v4)
      {
        SKUIColorWithAlpha_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
      }
    }
  }

  v17 = 0.0;
  v18 = 0.0;
  v16 = 0.0;
  if (![v3 getHue:&v18 saturation:&v17 brightness:&v16 alpha:0] || (objc_msgSend(MEMORY[0x277D75348], "colorWithHue:saturation:brightness:alpha:", v18, v17, v16, a2), (v12 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v15 = 0.0;
    if (([v3 getWhite:&v15 alpha:0] & 1) == 0 || (objc_msgSend(MEMORY[0x277D75348], "colorWithWhite:alpha:", v15, a2), (v12 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v12 = v3;
    }
  }

  v13 = v12;

  return v13;
}

uint64_t SKUIHexValueWithString(void *a1)
{
  v1 = a1;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v2)
      {
        SKUIHexValueWithString_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
      }
    }
  }

  v13 = 0;
  v10 = [objc_alloc(MEMORY[0x277CCAC80]) initWithString:v1];

  v11 = [v10 scanHexInt:&v13];
  if (v11)
  {
    return v13;
  }

  else
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }
}

id SKUITableViewGroupedBackgroundColor()
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v0 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v0)
      {
        SKUITableViewGroupedBackgroundColor_cold_1(v0, v1, v2, v3, v4, v5, v6, v7);
      }
    }
  }

  v8 = [MEMORY[0x277D75348] systemGroupedBackgroundColor];

  return v8;
}

void SKUIGetImagesFromView(void *a1, void *a2, void *a3, double a4)
{
  v7 = a1;
  [v7 bounds];
  v29.width = v8;
  v29.height = v9;
  UIGraphicsBeginImageContextWithOptions(v29, 1, 0.0);
  v10 = [v7 layer];

  [v10 renderInContext:UIGraphicsGetCurrentContext()];
  v27 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  [v27 scale];
  v12 = v11;
  v13 = v27;
  v14 = [v27 CGImage];
  [v27 size];
  v30.size.width = v12 * v15;
  v30.origin.x = 0.0;
  v30.origin.y = 0.0;
  v30.size.height = v12 * a4;
  v16 = CGImageCreateWithImageInRect(v14, v30);
  v17 = [MEMORY[0x277D755B8] imageWithCGImage:v16 scale:objc_msgSend(v27 orientation:{"imageOrientation"), v12}];
  CGImageRelease(v16);
  if (a2)
  {
    v18 = v17;
    *a2 = v17;
  }

  v19 = v27;
  v20 = [v27 CGImage];
  [v27 size];
  v22 = v12 * v21;
  [v27 size];
  v31.size.height = v12 * (v23 - a4);
  v31.origin.x = 0.0;
  v31.origin.y = v12 * a4;
  v31.size.width = v22;
  v24 = CGImageCreateWithImageInRect(v20, v31);
  v25 = [MEMORY[0x277D755B8] imageWithCGImage:v24 scale:objc_msgSend(v27 orientation:{"imageOrientation"), v12}];
  CGImageRelease(v24);
  if (a3)
  {
    v26 = v25;
    *a3 = v25;
  }
}

id SKUINavigationItemsShallowCopy(void *a1)
{
  v1 = a1;
  v2 = [MEMORY[0x277CBEB18] array];
  if ([v1 count])
  {
    v3 = 0;
    do
    {
      v4 = [v1 objectAtIndex:v3];
      v5 = objc_alloc_init(MEMORY[0x277D757A8]);
      v6 = [v4 title];
      [v5 setTitle:v6];

      [v5 setHidesBackButton:{objc_msgSend(v4, "hidesBackButton")}];
      v7 = [v4 prompt];
      [v5 setPrompt:v7];

      [v5 setLeftItemsSupplementBackButton:{objc_msgSend(v4, "leftItemsSupplementBackButton")}];
      [v2 addObject:v5];

      ++v3;
    }

    while (v3 < [v1 count]);
  }

  return v2;
}

id SKUIStackedBarSpringAnimationForExpandCollapse(void *a1, double a2, double a3)
{
  v5 = a1;
  v6 = [v5 layer];
  [v6 position];
  v8 = v7;
  v10 = v9;

  [v5 frame];
  v12 = v8 + a2 - v11;
  [v5 frame];
  v14 = v10 + a3 - v13;
  v15 = [MEMORY[0x277CD9FA0] animationWithKeyPath:@"position"];
  [v15 setDamping:26.0];
  [v15 setDuration:1.0];
  [v15 setFillMode:*MEMORY[0x277CDA228]];
  [v15 setMass:1.0];
  [v15 setStiffness:250.0];
  v16 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7C8]];
  [v15 setTimingFunction:v16];

  [v15 setVelocity:0.0];
  v17 = MEMORY[0x277CCAE60];
  v18 = [v5 layer];
  [v18 position];
  v19 = [v17 valueWithCGPoint:?];
  [v15 setFromValue:v19];

  v20 = [MEMORY[0x277CCAE60] valueWithCGPoint:{v12, v14}];
  [v15 setToValue:v20];

  v21 = [v5 layer];
  [v21 addAnimation:v15 forKey:@"ExpandCollapse"];

  v22 = [v5 layer];

  [v22 setPosition:{v12, v14}];

  return v15;
}

uint64_t SKUIArtworkSizeDeltaIsBetter(uint64_t a1, uint64_t a2)
{
  v3 = a1 > 0 && a1 < a2;
  if (a2 < 0)
  {
    v3 = a1 > a2;
  }

  if (a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 1;
  }

  if (a2 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = 1;
  }

  else
  {
    v5 = v4;
  }

  if (a2)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

void sub_215BF6808(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_215BF6F0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__6(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __Block_byref_object_dispose__6(uint64_t a1)
{
}

{
}

void sub_215BF7D88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, id location)
{
  objc_destroyWeak((v29 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_215BF80F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_215BF88A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void SKUIIconColorsForColorScheme(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    SKUIIconColorsForColorScheme_cold_1();
  }

  v8 = [v7 backgroundColor];
  if (v8)
  {
    v9 = SKUIColorForStyleWithBrightness(v8, [v7 schemeStyle], -0.05, 0.25, -0.05, 0.25);
    v10 = SKUIColorForStyleWithBrightness(v8, [v7 schemeStyle], -0.2, 0.0, -0.2, 0.05);
    v11 = SKUIColorForStyleWithBrightness(v8, [v7 schemeStyle], -0.7, -0.2, -0.7, 0.0);
    v12 = SKUIColorForStyleWithAlpha(v11, [v7 schemeStyle], 0.3, 1.0, 0.3, 0.3);

    if (!a2)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v9 = [MEMORY[0x277D75348] colorWithWhite:0.95 alpha:1.0];
  v10 = [MEMORY[0x277D75348] colorWithWhite:0.8 alpha:1.0];
  v12 = [MEMORY[0x277D75348] colorWithWhite:0.3 alpha:0.3];
  if (a2)
  {
LABEL_7:
    v13 = v9;
    *a2 = v9;
  }

LABEL_8:
  if (a3)
  {
    v14 = v10;
    *a3 = v10;
  }

  if (a4)
  {
    v15 = v12;
    *a4 = v12;
  }
}

void SKUIIconFrameForIconSize(double *a1, double *a2, double a3, double a4, double a5, double a6, double a7)
{
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    SKUIIconFrameForIconSize_cold_1();
  }

  if (a5 != *MEMORY[0x277CBF3A8] || a6 != *(MEMORY[0x277CBF3A8] + 8))
  {
    v15 = a5 / a3;
    if (a5 / a3 >= a6 / a4)
    {
      v15 = a6 / a4;
    }

    a3 = ceil(a3 * v15);
    a4 = ceil(a4 * v15);
  }

  v16 = 0.0;
  if (a7 > 0.0)
  {
    v16 = 1.0;
  }

  if (a1)
  {
    *a1 = a3 + a7 * 2.0;
    a1[1] = a4 + a7 * 2.0;
  }

  if (a2)
  {
    *a2 = a7;
    a2[1] = v16;
    a2[2] = a3;
    a2[3] = a4;
  }
}

uint64_t __Block_byref_object_copy__7(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __Block_byref_object_dispose__7(uint64_t a1)
{
}

{
}

void sub_215BFD22C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_215BFD998(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

id getCNComposeRecipientViewDidChangeNotification()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getCNComposeRecipientViewDidChangeNotificationSymbolLoc_ptr;
  v8 = getCNComposeRecipientViewDidChangeNotificationSymbolLoc_ptr;
  if (!getCNComposeRecipientViewDidChangeNotificationSymbolLoc_ptr)
  {
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __getCNComposeRecipientViewDidChangeNotificationSymbolLoc_block_invoke;
    v4[3] = &unk_2781FA3E0;
    v4[4] = &v5;
    __getCNComposeRecipientViewDidChangeNotificationSymbolLoc_block_invoke(v4);
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v3 = getCNComposeRecipientViewDidChangeNotification_cold_1();
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v3);
  }

  v1 = *v0;

  return v1;
}

void sub_215C00768(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_215C029E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void *__getCNComposeRecipientViewDidChangeNotificationSymbolLoc_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!ContactsAutocompleteUILibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __ContactsAutocompleteUILibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_2781FA400;
    v7 = 0;
    ContactsAutocompleteUILibraryCore_frameworkLibrary = _sl_dlopen();
    v3 = v5[0];
    v2 = ContactsAutocompleteUILibraryCore_frameworkLibrary;
    if (ContactsAutocompleteUILibraryCore_frameworkLibrary)
    {
      if (!v5[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v3 = abort_report_np();
    }

    free(v3);
    goto LABEL_5;
  }

  v2 = ContactsAutocompleteUILibraryCore_frameworkLibrary;
LABEL_5:
  result = dlsym(v2, "CNComposeRecipientViewDidChangeNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCNComposeRecipientViewDidChangeNotificationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __ContactsAutocompleteUILibraryCore_block_invoke()
{
  result = _sl_dlopen();
  ContactsAutocompleteUILibraryCore_frameworkLibrary = result;
  return result;
}

void sub_215C034F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_215C0443C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v9 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__9(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __Block_byref_object_dispose__9(uint64_t a1)
{
}

{
}

uint64_t SKUIImageTreatmentForString(void *a1)
{
  v1 = a1;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v2)
      {
        SKUIImageTreatmentForString_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
      }
    }
  }

  if ([v1 isEqualToString:@"app"])
  {
    v10 = 1;
  }

  else if ([v1 isEqualToString:@"artist-circle"])
  {
    v10 = 10;
  }

  else if ([v1 isEqualToString:@"brick"])
  {
    v10 = 2;
  }

  else if ([v1 isEqualToString:@"evergreen"])
  {
    v10 = 3;
  }

  else if ([v1 isEqualToString:@"left-to-right-linear-gradient"])
  {
    v10 = 4;
  }

  else if ([v1 isEqualToString:@"parallax"])
  {
    v10 = 13;
  }

  else if ([v1 isEqualToString:@"product"])
  {
    v10 = 5;
  }

  else if ([v1 isEqualToString:@"radio"])
  {
    v10 = 7;
  }

  else if ([v1 isEqualToString:@"radial-gradient"])
  {
    v10 = 12;
  }

  else if ([v1 isEqualToString:@"tint"])
  {
    v10 = 6;
  }

  else if ([v1 isEqualToString:@"uber"])
  {
    v10 = 8;
  }

  else if ([v1 isEqualToString:@"uber-banner"])
  {
    v10 = 9;
  }

  else if ([v1 isEqualToString:@"watch-app"])
  {
    v10 = 11;
  }

  else if ([v1 isEqualToString:@"watch-product"])
  {
    v10 = 14;
  }

  else if ([v1 isEqualToString:@"voyager-app"])
  {
    v10 = 15;
  }

  else if ([v1 isEqualToString:@"tv-app"])
  {
    v10 = 16;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void sub_215C06F10(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

id SKUIErrorDocumentTitle(void *a1)
{
  v1 = a1;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    SKUIErrorDocumentTitle_cold_1();
  }

  v2 = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [v2 bundleIdentifier];

  if ([v3 isEqualToString:@"com.apple.AppStore"])
  {
    v4 = @"CANNOT_CONNECT_TO_APP_STORE";
    if (!v1)
    {
      goto LABEL_15;
    }

LABEL_10:
    v5 = [v1 localizedStringForKey:v4];
    goto LABEL_16;
  }

  if (([v3 isEqualToString:@"com.apple.iBooks"] & 1) == 0)
  {
    if ([v3 isEqualToString:@"com.apple.MobileSMS"])
    {
      v4 = @"CANNOT_CONNECT_TO_IMESSAGE_STORE";
    }

    else
    {
      v4 = @"CANNOT_CONNECT_TO_ITUNES_STORE";
    }

    if (!v1)
    {
      goto LABEL_15;
    }

    goto LABEL_10;
  }

  v4 = @"CANNOT_CONNECT_TO_IBOOKS_STORE";
  if (v1)
  {
    goto LABEL_10;
  }

LABEL_15:
  v5 = [SKUIClientContext localizedStringForKey:v4 inBundles:0];
LABEL_16:
  v6 = v5;

  return v6;
}

void sub_215C09460(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_215C0B100(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__10(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id SKUIPageComponentClassForComponentType(uint64_t a1)
{
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    SKUIPageComponentClassForComponentType_cold_1();
  }

  if ((a1 - 1) > 0x1A)
  {
    v2 = 0;
  }

  else
  {
    v2 = objc_opt_class();
  }

  return v2;
}

uint64_t SKUIPageComponentTypeForBlockType(void *a1)
{
  v1 = a1;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v2)
      {
        SKUIPageComponentTypeForBlockType_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
      }
    }
  }

  if ([v1 isEqualToString:@"accountButtons"])
  {
    v10 = 1;
  }

  else if ([v1 isEqualToString:@"counter"])
  {
    v10 = 2;
  }

  else if ([v1 isEqualToString:@"divider"])
  {
    v10 = 4;
  }

  else if ([v1 isEqualToString:@"editorial"])
  {
    v10 = 5;
  }

  else if ([v1 isEqualToString:@"expand"])
  {
    v10 = 19;
  }

  else if ([v1 isEqualToString:@"flowcase"])
  {
    v10 = 6;
  }

  else if ([v1 isEqualToString:@"gallery"])
  {
    v10 = 7;
  }

  else if ([v1 isEqualToString:@"grid"])
  {
    v10 = 8;
  }

  else if ([v1 isEqualToString:@"lockup"])
  {
    v10 = 9;
  }

  else if ([v1 isEqualToString:@"media"])
  {
    v10 = 10;
  }

  else if ([v1 isEqualToString:@"popup"])
  {
    v10 = 11;
  }

  else if ([v1 isEqualToString:@"quicklinks"])
  {
    v10 = 12;
  }

  else if ([v1 isEqualToString:@"row"])
  {
    v10 = 3;
  }

  else if ([v1 isEqualToString:@"showcase"])
  {
    v10 = 13;
  }

  else if ([v1 isEqualToString:@"spacer"])
  {
    v10 = 14;
  }

  else if ([v1 isEqualToString:@"swoosh"])
  {
    v10 = 15;
  }

  else if ([v1 isEqualToString:@"tabs"])
  {
    v10 = 11;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

uint64_t SKUIPageComponentTypeForFeaturedContentKind(uint64_t a1)
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v2)
      {
        SKUIPageComponentTypeForFeaturedContentKind_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
      }
    }
  }

  if ((a1 - 258) <= 0x2F)
  {
    if (((1 << (a1 - 2)) & 0xC0000000040CLL) != 0)
    {
      return 15;
    }

    if (a1 == 258)
    {
      return 18;
    }

    if (a1 == 266)
    {
      return 12;
    }
  }

  if (a1 == 257)
  {
    return 10;
  }

  else
  {
    return 0;
  }
}

uint64_t SKUIPageComponentFontWeightForString(void *a1)
{
  v1 = a1;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v2)
      {
        SKUIPageComponentFontWeightForString_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
      }
    }
  }

  if ([v1 isEqualToString:@"light"])
  {
    v10 = 1;
  }

  else if ([v1 isEqualToString:@"medium"])
  {
    v10 = 2;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

id SKUIStorePageItemsWithStorePlatformDictionary(void *a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v6 = a2;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v7 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v7)
      {
        SKUIStorePageItemsWithStorePlatformDictionary_cold_1(v7, v8, v9, v10, v11, v12, v13, v14);
      }
    }
  }

  v15 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if (v6 && ([v5 objectForKey:v6], (v16 = objc_claimAutoreleasedReturnValue()) != 0) || (objc_msgSend(v5, "objectForKey:", @"lockup"), (v16 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v17 = v16;
  }

  else
  {
    v18 = [v5 allKeys];
    if ([v18 count] == 1)
    {
      v19 = [v18 objectAtIndex:0];
      v17 = [v5 objectForKey:v19];
    }

    else
    {
      v17 = 0;
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v20 = [v17 objectForKey:*MEMORY[0x277D6A3B0]];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __SKUIStorePageItemsWithStorePlatformDictionary_block_invoke;
      v22[3] = &unk_2781FA6F8;
      v24 = a3;
      v23 = v15;
      [v20 enumerateKeysAndObjectsUsingBlock:v22];
    }
  }

  return v15;
}

void __SKUIStorePageItemsWithStorePlatformDictionary_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = objc_autoreleasePoolPush();
  v7 = [objc_alloc(*(a1 + 40)) initWithLookupDictionary:v5];
  if (v7)
  {
    v8 = [objc_alloc(MEMORY[0x277CCABB0]) initWithLongLong:{objc_msgSend(v7, "itemIdentifier")}];
    [*(a1 + 32) setObject:v7 forKey:v8];
  }

  objc_autoreleasePoolPop(v6);
}

uint64_t SKUIStorePageTypeIsProductPage(void *a1)
{
  v1 = a1;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v2)
      {
        SKUIStorePageTypeIsProductPage_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
      }
    }
  }

  if ([v1 isEqualToString:@"software"])
  {
    v10 = 1;
  }

  else
  {
    v10 = [v1 isEqualToString:@"mobileSoftwareBundle"];
  }

  return v10;
}

void sub_215C11100(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose(&a45, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__11(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_215C1142C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36)
{
  _Block_object_dispose(&a28, 8);
  _Block_object_dispose(&a32, 8);
  _Block_object_dispose(&a36, 8);
  _Unwind_Resume(a1);
}

void sub_215C13760(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_215C13A18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_215C148F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_215C18014(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_215C18EA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 48), 8);
  _Unwind_Resume(a1);
}

id SKUIBadgeImageFromText(void *a1, void *a2, char a3)
{
  v5 = a1;
  v6 = a2;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    SKUIBadgeImageFromText_cold_1();
  }

  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__12;
  v19 = __Block_byref_object_dispose__12;
  v20 = 0;
  if (SKUIBadgeImageFromText_sOnce != -1)
  {
    SKUIBadgeImageFromText_cold_2();
  }

  if ([v5 length])
  {
    v7 = SKUIBadgeImageFromText_sBadgeImageQueue;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __SKUIBadgeImageFromText_block_invoke_2;
    v10[3] = &unk_2781FAA18;
    v11 = v5;
    v12 = v6;
    v13 = &v15;
    v14 = a3;
    dispatch_sync(v7, v10);
  }

  v8 = v16[5];
  _Block_object_dispose(&v15, 8);

  return v8;
}

void sub_215C1A478(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__12(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __SKUIBadgeImageFromText_block_invoke()
{
  v0 = dispatch_queue_create("com.apple.StoreKitUI.SKUIBadgeImage", 0);
  v1 = SKUIBadgeImageFromText_sBadgeImageQueue;
  SKUIBadgeImageFromText_sBadgeImageQueue = v0;

  v2 = SKUIBadgeImageFromText_sBadgeImageQueue;
  v3 = dispatch_get_global_queue(0, 0);
  dispatch_set_target_queue(v2, v3);

  v4 = objc_alloc_init(MEMORY[0x277CBEA78]);
  v5 = SKUIBadgeImageFromText_sBadgeImageCache;
  SKUIBadgeImageFromText_sBadgeImageCache = v4;

  v6 = SKUIBadgeImageFromText_sBadgeImageCache;

  return [v6 setCountLimit:10];
}

void __SKUIBadgeImageFromText_block_invoke_2(uint64_t a1)
{
  v25[2] = *MEMORY[0x277D85DE8];
  v2 = objc_alloc(MEMORY[0x277CCACA8]);
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) description];
  v5 = [v2 initWithFormat:@"%@:%@", v3, v4];

  v6 = [SKUIBadgeImageFromText_sBadgeImageCache objectForKey:v5];
  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    v9 = [MEMORY[0x277D74300] systemFontOfSize:10.0];
    v10 = *MEMORY[0x277D740C0];
    v24[0] = *MEMORY[0x277D740A8];
    v24[1] = v10;
    v11 = *(a1 + 40);
    v25[0] = v9;
    v25[1] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:2];
    [*(a1 + 32) sizeWithAttributes:v12];
    v14 = v13;
    v16 = v15;
    v17 = [MEMORY[0x277D759A0] mainScreen];
    [v17 scale];
    v19 = v18;
    v26.width = v14 + 6.0;
    v26.height = v16;
    UIGraphicsBeginImageContextWithOptions(v26, 0, v19);

    [*(a1 + 40) set];
    v20 = [MEMORY[0x277D75208] bezierPathWithRoundedRect:0.0 cornerRadius:{0.0, v14 + 6.0, v16, 1.0}];
    [v20 stroke];
    [*(a1 + 32) drawInRect:v12 withAttributes:{3.5, -0.5, v14, v16}];
    v21 = UIGraphicsGetImageFromCurrentImageContext();
    v22 = *(*(a1 + 48) + 8);
    v23 = *(v22 + 40);
    *(v22 + 40) = v21;

    UIGraphicsEndImageContext();
    if (*(a1 + 56) == 1)
    {
      [SKUIBadgeImageFromText_sBadgeImageCache setObject:*(*(*(a1 + 48) + 8) + 40) forKey:v5];
    }
  }
}

void sub_215C1AFD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__13(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_215C1B148(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_215C1B534(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_215C1DA80(_Unwind_Exception *a1)
{
  objc_destroyWeak(v1);
  _Block_object_dispose((v2 - 120), 8);
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

void sub_215C1E3AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_215C1E5C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_215C21990(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 56));
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  objc_destroyWeak((v18 - 56));
  _Unwind_Resume(a1);
}

void sub_215C21DFC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 64));
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 64));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_215C24944(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_215C24D24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id SKUIGiftAmountButtonsWithAmounts(void *a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [MEMORY[0x277CBEB18] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        v9 = objc_alloc_init(SKUIGiftAmountButton);
        v10 = [v8 displayLabel];
        [(SKUIGiftAmountButton *)v9 setTitle:v10 forState:0];

        [(SKUIGiftAmountButton *)v9 sizeToFit];
        [v2 addObject:v9];
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  return v2;
}

void sub_215C262F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__14(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_215C27278(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__15(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_215C2A69C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_215C2AA54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_215C2DB9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_215C30C2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
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
  _Block_object_dispose((v11 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__16(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_215C34044(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__17(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_215C341E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_215C379D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_215C381B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_215C3A5EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_215C3CA1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_215C3FA48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__18(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __Block_byref_object_dispose__18(uint64_t a1)
{
}

{
}

void sub_215C3FF5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__19(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t SKUITrackListColumnIdentifierForViewElement(void *a1)
{
  v1 = a1;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v2)
      {
        SKUITrackListColumnIdentifierForViewElement_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
      }
    }
  }

  v10 = [v1 elementType];
  v11 = 2;
  if (v10 > 79)
  {
    if (v10 > 137)
    {
      if (v10 != 138)
      {
        if (v10 != 141)
        {
          goto LABEL_26;
        }

        goto LABEL_16;
      }

      if (([v1 labelViewStyle] & 0xFFFFFFFFFFFFFFFELL) == 4)
      {
        v11 = 4;
      }

      else
      {
        v11 = 2;
      }
    }

    else if (v10 == 80)
    {
      v11 = 5;
    }

    else if (v10 == 90)
    {
      v12 = [v1 flattenedChildren];
      v13 = [v12 firstObject];
      v11 = SKUITrackListColumnIdentifierForViewElement();
    }
  }

  else
  {
    if (v10 > 11)
    {
      if ((v10 - 12) >= 2 && v10 != 50)
      {
        goto LABEL_26;
      }

LABEL_16:
      v11 = 1;
      goto LABEL_26;
    }

    v14 = 3;
    if (v10 != 9)
    {
      v14 = 2;
    }

    if (v10 == 8)
    {
      v11 = 0;
    }

    else
    {
      v11 = v14;
    }
  }

LABEL_26:

  return v11;
}

void sub_215C408B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_215C40B50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_215C412B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__20(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_215C42C78(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_215C43D10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__21(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_215C44D24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_215C4641C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__22(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_215C47444(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v29 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_215C477FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_215C494A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_215C4ABF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_215C4B010(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id SKUIViewElementDateWithString(void *a1)
{
  v1 = a1;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v2)
      {
        SKUIViewElementDateWithString_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
      }
    }
  }

  if (!SKUIViewElementDateWithString_sInputFormatter1)
  {
    v10 = objc_alloc_init(MEMORY[0x277CCA968]);
    v11 = SKUIViewElementDateWithString_sInputFormatter1;
    SKUIViewElementDateWithString_sInputFormatter1 = v10;

    [SKUIViewElementDateWithString_sInputFormatter1 setDateFormat:@"yyyy-MM-dd"];
    [SKUIViewElementDateWithString_sInputFormatter1 setLenient:1];
    v12 = SKUIViewElementDateWithString_sInputFormatter1;
    v13 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:@"en_US"];
    [v12 setLocale:v13];
  }

  if (!SKUIViewElementDateWithString_sInputFormatter2)
  {
    v14 = objc_alloc_init(MEMORY[0x277CCA968]);
    v15 = SKUIViewElementDateWithString_sInputFormatter2;
    SKUIViewElementDateWithString_sInputFormatter2 = v14;

    [SKUIViewElementDateWithString_sInputFormatter2 setDateFormat:@"yyyy-MM-dd'T'HH:mm:ss'Z'"];
    [SKUIViewElementDateWithString_sInputFormatter2 setLenient:1];
    v16 = SKUIViewElementDateWithString_sInputFormatter2;
    v17 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:@"en_US"];
    [v16 setLocale:v17];
  }

  if (!SKUIViewElementDateWithString_sInputFormatter3)
  {
    v18 = objc_alloc_init(MEMORY[0x277CCA968]);
    v19 = SKUIViewElementDateWithString_sInputFormatter3;
    SKUIViewElementDateWithString_sInputFormatter3 = v18;

    [SKUIViewElementDateWithString_sInputFormatter3 setDateFormat:@"yyyy-MM-dd'T'hh:mm:ss'Z'"];
    [SKUIViewElementDateWithString_sInputFormatter3 setLenient:1];
    v20 = SKUIViewElementDateWithString_sInputFormatter3;
    v21 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:@"en_US"];
    [v20 setLocale:v21];
  }

  v22 = [SKUIViewElementDateWithString_sInputFormatter1 dateFromString:v1];
  if (!v22)
  {
    v22 = [SKUIViewElementDateWithString_sInputFormatter2 dateFromString:v1];
    if (!v22)
    {
      v22 = [SKUIViewElementDateWithString_sInputFormatter3 dateFromString:v1];
    }
  }

  v23 = v22;

  return v23;
}

void SKUIViewElementTextDeadlockFix(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v5)
      {
        SKUIViewElementTextDeadlockFix_cold_1(v5, v6, v7, v8, v9, v10, v11, v12);
      }
    }
  }

  v13 = [v4 appContext];
  if (v13)
  {
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __SKUIViewElementTextDeadlockFix_block_invoke;
    v20[3] = &unk_2781FAE18;
    v14 = &v21;
    v21 = v3;
    v15 = v3;
    [v13 evaluate:v20 completionBlock:0];
  }

  else
  {
    v16 = dispatch_get_global_queue(-32768, 0);
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __SKUIViewElementTextDeadlockFix_block_invoke_2;
    v18[3] = &unk_2781F80F0;
    v14 = &v19;
    v19 = v3;
    v17 = v3;
    dispatch_async(v16, v18);
  }
}

uint64_t SKUIGraphicsDeviceHasASTCSupport()
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v0 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v0)
      {
        SKUIGraphicsDeviceHasASTCSupport_cold_1(v0, v1, v2, v3, v4, v5, v6, v7);
      }
    }
  }

  if (SKUIGraphicsDeviceHasASTCSupport_onceToken != -1)
  {
    SKUIGraphicsDeviceHasASTCSupport_cold_2();
  }

  return SKUIGraphicsDeviceHasASTCSupport_supportsASTC;
}

uint64_t __SKUIGraphicsDeviceHasASTCSupport_block_invoke()
{
  result = MGGetBoolAnswer();
  SKUIGraphicsDeviceHasASTCSupport_supportsASTC = result;
  return result;
}

double SKUIGraphicsMatchViewBorderToStroke(void *a1, double a2)
{
  v3 = a1;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    SKUIGraphicsMatchViewBorderToStroke_cold_1();
  }

  [v3 contentScaleFactor];
  v5 = round(a2 * 0.5 * v4) / v4;

  return v5;
}

CFMutableDataRef SKUIGraphicsCreateASTCDataFromImage(uint64_t a1)
{
  v25[2] = *MEMORY[0x277D85DE8];
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v2)
      {
        SKUIGraphicsCreateASTCDataFromImage_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
      }
    }
  }

  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v10 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v10)
      {
        SKUIGraphicsCreateASTCDataFromImage_cold_2(v10, v11, v12, v13, v14, v15, v16, v17);
      }
    }
  }

  if (SoftLinkImageIO_onceToken != -1)
  {
    SKUIGraphicsCreateASTCDataFromImage_cold_3();
  }

  Mutable = CFDataCreateMutable(*MEMORY[0x277CBECE8], 0);
  v19 = weak_CGImageDestinationCreateWithData(Mutable, @"org.khronos.ktx", 1, 0);
  if (v19)
  {
    v20 = v19;
    v24[0] = weak_kCGImagePropertyEncoder;
    v24[1] = weak_kCGImagePropertyASTCBlockSize;
    v25[0] = weak_kCGImagePropertyASTCEncoder;
    v25[1] = &unk_2828D2AF8;
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:2];
    weak_CGImageDestinationAddImage(v20, a1, v21);
    v22 = weak_CGImageDestinationFinalize(v20);
    CFRelease(v20);
    if ((v22 & 1) == 0)
    {
      NSLog(&cfstr_SCouldNotConve.isa, "CFDataRef  _Nullable SKUIGraphicsCreateASTCDataFromImage(CGImageRef _Nonnull)");
      CFRelease(Mutable);
      Mutable = 0;
    }
  }

  else
  {
    NSLog(&cfstr_SCouldNotCreat.isa, "CFDataRef  _Nullable SKUIGraphicsCreateASTCDataFromImage(CGImageRef _Nonnull)");
    CFRelease(Mutable);
    return 0;
  }

  return Mutable;
}

CFMutableDataRef SKUIGraphicsCreateASTCDataFromBitmapContext(CGContext *a1)
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v2)
      {
        SKUIGraphicsCreateASTCDataFromBitmapContext_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
      }
    }
  }

  Image = CGBitmapContextCreateImage(a1);
  if (Image)
  {
    v11 = Image;
    ASTCDataFromImage = SKUIGraphicsCreateASTCDataFromImage(Image);
    CGImageRelease(v11);
  }

  else
  {
    NSLog(&cfstr_SCouldNotCreat_0.isa, "CFDataRef  _Nullable SKUIGraphicsCreateASTCDataFromBitmapContext(CGContextRef _Nonnull)");
    return 0;
  }

  return ASTCDataFromImage;
}

SKUICompressedImage *SKUIGraphicsGetASTCImageFromCurrentImageContext(double a1)
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v2)
      {
        SKUIGraphicsGetASTCImageFromCurrentImageContext_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
      }
    }
  }

  CurrentContext = UIGraphicsGetCurrentContext();
  if (CurrentContext && (ASTCDataFromBitmapContext = SKUIGraphicsCreateASTCDataFromBitmapContext(CurrentContext)) != 0)
  {
    v12 = ASTCDataFromBitmapContext;
    if (fabs(a1) < 2.22044605e-16)
    {
      v13 = [MEMORY[0x277D759A0] mainScreen];
      [v13 scale];
      a1 = v14;
    }

    v15 = [[SKUICompressedImage alloc] initWithData:v12 scale:a1];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

void *__SoftLinkImageIO_block_invoke()
{
  v0 = SKUIImageIOFramework();
  if (!v0)
  {
    __SoftLinkImageIO_block_invoke_cold_7();
  }

  v1 = v0;
  weak_kCGImagePropertyEncoder = *SKUIWeakLinkedSymbolForString("kCGImagePropertyEncoder", v0);
  if (!weak_kCGImagePropertyEncoder)
  {
    __SoftLinkImageIO_block_invoke_cold_6();
  }

  weak_kCGImagePropertyASTCBlockSize = *SKUIWeakLinkedSymbolForString("kCGImagePropertyASTCBlockSize", v1);
  if (!weak_kCGImagePropertyASTCBlockSize)
  {
    __SoftLinkImageIO_block_invoke_cold_5();
  }

  weak_kCGImagePropertyASTCEncoder = *SKUIWeakLinkedSymbolForString("kCGImagePropertyASTCEncoder", v1);
  if (!weak_kCGImagePropertyASTCEncoder)
  {
    __SoftLinkImageIO_block_invoke_cold_4();
  }

  weak_CGImageDestinationCreateWithData = SKUIWeakLinkedSymbolForString("CGImageDestinationCreateWithData", v1);
  if (!weak_CGImageDestinationCreateWithData)
  {
    __SoftLinkImageIO_block_invoke_cold_3();
  }

  weak_CGImageDestinationAddImage = SKUIWeakLinkedSymbolForString("CGImageDestinationAddImage", v1);
  if (!weak_CGImageDestinationAddImage)
  {
    __SoftLinkImageIO_block_invoke_cold_2();
  }

  result = SKUIWeakLinkedSymbolForString("CGImageDestinationFinalize", v1);
  weak_CGImageDestinationFinalize = result;
  if (!result)
  {
    __SoftLinkImageIO_block_invoke_cold_1();
  }

  return result;
}

void sub_215C55728(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_215C5C508(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose((v37 - 192), 8);
  _Block_object_dispose((v37 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_215C5F0D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id a28)
{
  objc_destroyWeak((v28 + 40));
  objc_destroyWeak(&a28);
  objc_destroyWeak((v29 - 112));
  _Unwind_Resume(a1);
}

id SKUIResourceLoaderGetNameForObject(void *a1)
{
  v1 = a1;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v2)
      {
        SKUIResourceLoaderGetNameForObject_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
      }
    }
  }

  v10 = MEMORY[0x277CCACA8];
  v11 = objc_opt_class();
  v12 = NSStringFromClass(v11);
  v13 = [v10 stringWithFormat:@"%@:%p", v12, v1];

  return v13;
}

BOOL SKUIResourceLoadCountMapClear(uint64_t a1, uint64_t a2)
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v4 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v4)
      {
        SKUIResourceLoadCountMapClear_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
      }
    }
  }

  v12 = 2;
  if (a2 != 1)
  {
    v12 = a2 == 0;
  }

  v13 = *(a1 + 8 * v12);
  if (v13 >= 1)
  {
    *(a1 + 8 * v12) = 0;
  }

  return v13 > 0;
}

uint64_t SKUIResourceLoadCountMapDecrement(uint64_t a1, uint64_t a2)
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v4 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v4)
      {
        SKUIResourceLoadCountMapDecrement_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
      }
    }
  }

  v12 = a2 == 0;
  if (a2 == 1)
  {
    v12 = 2;
  }

  result = *(a1 + 8 * v12);
  if (result >= 1)
  {
    *(a1 + 8 * v12) = --result;
  }

  return result;
}

uint64_t SKUIResourceLoadCountMapGet(uint64_t a1, uint64_t a2)
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v4 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v4)
      {
        SKUIResourceLoadCountMapGet_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
      }
    }
  }

  v12 = a2 == 0;
  if (a2 == 1)
  {
    v12 = 2;
  }

  return *(a1 + 8 * v12);
}

void sub_215C63C54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void SKUIResourceLoadCountMapIncrement(uint64_t a1, uint64_t a2)
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v4 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v4)
      {
        SKUIResourceLoadCountMapIncrement_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
      }
    }
  }

  v12 = a2 == 0;
  if (a2 == 1)
  {
    v12 = 2;
  }

  ++*(a1 + 8 * v12);
}

void SKUIEditorialStyleForDictionary(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1;
  *a2 = xmmword_215F3F0D0;
  *(a2 + 16) = 0x4120000041600000;
  *(a2 + 24) = 2;
  *(a2 + 32) = 0x40A0000041880000;
  v13 = v3;
  v4 = [v3 objectForKey:@"align"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    *a2 = SKUIPageComponentAlignmentForString(v4);
  }

  v5 = [v13 objectForKey:@"bodySize"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    *(a2 + 16) = SKUIEditorialBodySizeForString(v5);
    *(a2 + 8) = 1;
  }

  else if (objc_opt_respondsToSelector())
  {
    [v5 floatValue];
    *(a2 + 16) = v6;
  }

  v7 = [v13 objectForKey:@"bodyWeight"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    *(a2 + 8) = SKUIPageComponentFontWeightForString(v7);
  }

  v8 = [v13 objectForKey:@"titleSize"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    *(a2 + 20) = SKUIEditorialLinkSpacingForString(v8);
    *(a2 + 32) = SKUIEditorialTitleSizeForString(v8);
    *(a2 + 24) = SKUIEditorialTitleWeightForString(v8);
    *(a2 + 36) = SKUIEditorialTitleSpacingForString(v8);
  }

  else if (objc_opt_respondsToSelector())
  {
    [v8 floatValue];
    *(a2 + 32) = v9;
  }

  v10 = [v13 objectForKey:@"titleSpacing"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v10 floatValue];
    *(a2 + 36) = v11;
  }

  v12 = [v13 objectForKey:@"titleWeight"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    *(a2 + 24) = SKUIPageComponentFontWeightForString(v12);
  }
}

uint64_t SKUICTTextAlignmentForPageComponentAlignment(unint64_t a1)
{
  v1 = 0x1020000u >> (8 * a1);
  if (a1 >= 4)
  {
    LOBYTE(v1) = 2;
  }

  return v1 & 3;
}

float SKUIEditorialBodySizeForString(void *a1)
{
  v1 = a1;
  v2 = 11.0;
  if (([v1 isEqualToString:@"XS"] & 1) == 0)
  {
    v2 = 12.0;
    if (([v1 isEqualToString:@"S"] & 1) == 0)
    {
      v2 = 17.0;
      if (([v1 isEqualToString:@"M"] & 1) == 0)
      {
        v2 = 24.0;
        if (([v1 isEqualToString:@"L"] & 1) == 0)
        {
          [v1 floatValue];
          v2 = v3;
        }
      }
    }
  }

  return v2;
}

double SKUIEditorialStyleDefault@<D0>(uint64_t a1@<X8>)
{
  *a1 = xmmword_215F3F0D0;
  *(a1 + 16) = 0x4120000041600000;
  *(a1 + 24) = 2;
  result = 2048.0005;
  *(a1 + 32) = 0x40A0000041880000;
  return result;
}

uint64_t SKUIPageComponentAlignmentForString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"left"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"right"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"center"])
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

float SKUIEditorialLinkSpacingForString(void *a1)
{
  v1 = a1;
  v2 = 10.0;
  if (([v1 isEqualToString:@"XS"] & 1) == 0)
  {
    v2 = 9.0;
    if (([v1 isEqualToString:@"S"] & 1) == 0)
    {
      v2 = 12.0;
      if (([v1 isEqualToString:@"M"] & 1) == 0)
      {
        v2 = 14.0;
        if (([v1 isEqualToString:@"L"] & 1) == 0)
        {
          [v1 floatValue];
          v2 = v3;
        }
      }
    }
  }

  return v2;
}

float SKUIEditorialTitleSizeForString(void *a1)
{
  v1 = a1;
  v2 = 14.0;
  if (([v1 isEqualToString:@"XS"] & 1) == 0)
  {
    v2 = 17.0;
    if (([v1 isEqualToString:@"S"] & 1) == 0)
    {
      v2 = 25.0;
      if (([v1 isEqualToString:@"M"] & 1) == 0)
      {
        if ([v1 isEqualToString:@"L"])
        {
          v2 = 42.0;
        }

        else
        {
          [v1 floatValue];
          v2 = v3;
        }
      }
    }
  }

  return v2;
}

uint64_t SKUIEditorialTitleWeightForString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"XS"])
  {
    v2 = 0;
  }

  else if ([v1 isEqualToString:@"S"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"M"])
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  return v2;
}

float SKUIEditorialTitleSpacingForString(void *a1)
{
  v1 = a1;
  v2 = 2.0;
  if (([v1 isEqualToString:@"XS"] & 1) == 0)
  {
    v2 = 13.0;
    if (([v1 isEqualToString:@"M"] & 1) == 0)
    {
      if ([v1 isEqualToString:@"L"])
      {
        v2 = 18.0;
      }

      else
      {
        v2 = 5.0;
      }
    }
  }

  return v2;
}

double SKUITextLayoutSizeForCTFrame(const __CTFrame *a1, CFIndex a2)
{
  Path = CTFrameGetPath(a1);
  BoundingBox = CGPathGetBoundingBox(Path);
  width = BoundingBox.size.width;
  Lines = CTFrameGetLines(a1);
  Count = CFArrayGetCount(Lines);
  if (a2 && Count > a2)
  {
    origins.x = 0.0;
    origins.y = 0.0;
    v12.x = 0.0;
    v12.y = 0.0;
    v14.location = 0;
    v14.length = 1;
    CTFrameGetLineOrigins(a1, v14, &v12);
    v8 = a2 - 1;
    v15.location = v8;
    v15.length = 1;
    CTFrameGetLineOrigins(a1, v15, &origins);
    ValueAtIndex = CFArrayGetValueAtIndex(Lines, v8);
    CTLineGetBoundsWithOptions(ValueAtIndex, 0x14uLL);
  }

  v10 = width;
  return ceilf(v10);
}

void sub_215C679F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_215C67E74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_215C68E88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, char a54, uint64_t a55, uint64_t a56, uint64_t a57, char a58)
{
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose(&a54, 8);
  _Block_object_dispose(&a58, 8);
  _Unwind_Resume(a1);
}

void sub_215C6E078(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_215C6E2FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_215C6E738(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_215C70FAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__23(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_215C72498(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__Block_byref_object_copy__24(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void sub_215C72970(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_215C733C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a29, 8);
  _Unwind_Resume(a1);
}

void sub_215C77D30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_215C78468(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_215C7B380(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_215C7B834(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_215C7BE04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location, id a16)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a16);
  _Unwind_Resume(a1);
}

void sub_215C7C2A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

Class __getAMSURLParserClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!AppleMediaServicesLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __AppleMediaServicesLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_2781FBCB0;
    v6 = 0;
    AppleMediaServicesLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (AppleMediaServicesLibraryCore_frameworkLibrary)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("AMSURLParser");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getAMSURLParserClass_block_invoke_cold_1();
  }

  getAMSURLParserClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __AppleMediaServicesLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  AppleMediaServicesLibraryCore_frameworkLibrary = result;
  return result;
}

void __getAMSUIDynamicViewControllerClass_block_invoke(uint64_t a1)
{
  AppleMediaServicesUILibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("AMSUIDynamicViewController");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getAMSUIDynamicViewControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getAMSUIDynamicViewControllerClass_block_invoke_cold_1();
    AppleMediaServicesUILibrary();
  }
}

void AppleMediaServicesUILibrary()
{
  v4 = *MEMORY[0x277D85DE8];
  v1[0] = 0;
  if (!AppleMediaServicesUILibraryCore_frameworkLibrary)
  {
    v1[1] = MEMORY[0x277D85DD0];
    v1[2] = 3221225472;
    v1[3] = __AppleMediaServicesUILibraryCore_block_invoke;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_2781FBCC8;
    v3 = 0;
    AppleMediaServicesUILibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = v1[0];
  if (!AppleMediaServicesUILibraryCore_frameworkLibrary)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v1[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __AppleMediaServicesUILibraryCore_block_invoke()
{
  result = _sl_dlopen();
  AppleMediaServicesUILibraryCore_frameworkLibrary = result;
  return result;
}

SKUIRedeemInputViewController *__getAMSUIWebViewControllerClass_block_invoke(uint64_t a1)
{
  AppleMediaServicesUILibrary();
  result = objc_getClass("AMSUIWebViewController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getAMSUIWebViewControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getAMSUIWebViewControllerClass_block_invoke_cold_1();
    return [(SKUIRedeemInputViewController *)v3 initWithRedeemCategory:v4, v5];
  }

  return result;
}

uint64_t __Block_byref_object_copy__25(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_215C806FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__26(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_215C808DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_215C82178(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__27(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_215C82368(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_215C83C2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_215C845F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_215C85E90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id SKUIChartGetTitle(void *a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v6 = a2;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    SKUIChartGetTitle_cold_1();
  }

  v7 = SKUIChartGetTitle_sChartIndexFormatter;
  if (!SKUIChartGetTitle_sChartIndexFormatter)
  {
    v8 = objc_alloc_init(MEMORY[0x277CCABB8]);
    v9 = SKUIChartGetTitle_sChartIndexFormatter;
    SKUIChartGetTitle_sChartIndexFormatter = v8;

    [SKUIChartGetTitle_sChartIndexFormatter setNumberStyle:1];
    [SKUIChartGetTitle_sChartIndexFormatter setUsesGroupingSeparator:0];
    v7 = SKUIChartGetTitle_sChartIndexFormatter;
  }

  v10 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInteger:a3];
  v11 = [v7 stringFromNumber:v10];

  if (v5)
  {
    [v5 localizedStringForKey:@"CHART_ITEM_TITLE_FORMAT"];
  }

  else
  {
    [SKUIClientContext localizedStringForKey:@"CHART_ITEM_TITLE_FORMAT" inBundles:0];
  }
  v12 = ;
  v13 = [MEMORY[0x277CCACA8] stringWithValidatedFormat:v12 validFormatSpecifiers:@"%@%@" error:0, v11, v6];

  return v13;
}

void sub_215C86908(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_215C872DC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_215C8756C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_215C89278(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_215C8F3D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void SKUIZoomingShelfMenuBarGetValidationInfoForViewElement(void *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a1;
  *a2 = xmmword_215F3F200;
  *(a2 + 16) = 0x7FFFFFFFFFFFFFFFLL;
  v3 = [v15 elementType] == 72;
  v4 = v15;
  if (v3)
  {
    v5 = [v15 children];
    if ([v5 count] != 2)
    {
LABEL_11:

      v4 = v15;
      goto LABEL_12;
    }

    v6 = [v5 firstObject];
    v7 = [v6 attributes];
    v8 = [v7 objectForKey:@"type"];
    v9 = [v8 isEqualToString:@"product"];

    v10 = [v5 lastObject];
    v11 = [v10 attributes];
    v12 = [v11 objectForKey:@"type"];
    v13 = [v12 isEqualToString:@"product"];

    if (!v9 || v13)
    {
      if (v9 & 1 | ((v13 & 1) == 0))
      {
LABEL_10:

        goto LABEL_11;
      }

      v14 = xmmword_215F3F210;
    }

    else
    {
      v14 = xmmword_215F3F0D0;
    }

    *a2 = 1;
    *(a2 + 8) = v14;
    goto LABEL_10;
  }

LABEL_12:
}

void sub_215C9539C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_215C98210(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_215C985DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__28(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_215C98E84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_215C99F90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__29(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void SKUILockupStyleForDictionary(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  *a3 = xmmword_215F3F2C0;
  *(a3 + 16) = 2142;
  v7 = [v5 objectForKey:@"orientation"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = SKUILockupLayoutStyleForString(v7);
    *(a3 + 8) = v8;
    v9 = v8 < 2;
  }

  else
  {
    v9 = 1;
  }

  v10 = [v5 objectForKey:@"artworkSize"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = SKUILockupSizeForString(v10);
    *a3 = v11;
  }

  else
  {
    v11 = 2;
  }

  v12 = [v5 objectForKey:@"fields"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v23 = v10;
    *(a3 + 16) = 0;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v13 = v12;
    v14 = [v13 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v14)
    {
      v15 = v14;
      v20 = v11;
      v21 = v9;
      v22 = v6;
      v16 = 0;
      v17 = *v25;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v25 != v17)
          {
            objc_enumerationMutation(v13);
          }

          v19 = *(*(&v24 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v16 |= SKUILockupFieldForString(v19);
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v15);
      *(a3 + 16) = v16;
      v6 = v22;
      v9 = v21;
      v11 = v20;
    }

    v10 = v23;
  }

  if (![v6 layoutStyle])
  {
    if (v11 != 4)
    {
      if (v11 != 5)
      {
        goto LABEL_20;
      }

      *a3 = 4;
    }

    if (!v9)
    {
      *(a3 + 8) = 0;
    }
  }

LABEL_20:
}

uint64_t SKUILockupFieldForString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"artistName"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"artwork"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"buyButton"])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:@"genreName"])
  {
    v2 = 8;
  }

  else if ([v1 isEqualToString:@"itemCount"])
  {
    v2 = 128;
  }

  else if ([v1 isEqualToString:@"name"])
  {
    v2 = 16;
  }

  else if ([v1 isEqualToString:@"releaseDate"])
  {
    v2 = 32;
  }

  else if ([v1 isEqualToString:@"userRating"])
  {
    v2 = 64;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id SKUILockupItemCountString(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 itemKind] != 17)
  {
    v6 = 0;
    goto LABEL_9;
  }

  if (!SKUILockupItemCountString_sFormatter)
  {
    v7 = objc_alloc_init(MEMORY[0x277CCABB8]);
    v8 = SKUILockupItemCountString_sFormatter;
    SKUILockupItemCountString_sFormatter = v7;

    [SKUILockupItemCountString_sFormatter setNumberStyle:1];
    if (v4)
    {
      goto LABEL_4;
    }

LABEL_7:
    v5 = [SKUIClientContext localizedStringForKey:@"APP_BUNDLE_LOCKUP_APP_COUNT" inBundles:0];
    goto LABEL_8;
  }

  if (!v4)
  {
    goto LABEL_7;
  }

LABEL_4:
  v5 = [v4 localizedStringForKey:@"APP_BUNDLE_LOCKUP_APP_COUNT"];
LABEL_8:
  v9 = v5;
  v10 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInteger:{objc_msgSend(v3, "numberOfChildItems")}];
  v11 = MEMORY[0x277CCACA8];
  v12 = [SKUILockupItemCountString_sFormatter stringFromNumber:v10];
  v6 = [v11 stringWithValidatedFormat:v9 validFormatSpecifiers:@"%@" error:0, v12];

LABEL_9:

  return v6;
}

uint64_t SKUILockupLayoutStyleForString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"V"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"V2"])
  {
    v2 = 3;
  }

  else
  {
    v2 = [v1 isEqualToString:@"H2"];
  }

  return v2;
}

uint64_t SKUILockupSizeForString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"XS"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"S"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"L"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"XL"])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:@"XXL"])
  {
    v2 = 5;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

double SKUILockupStyleDefault@<D0>(uint64_t a1@<X8>)
{
  *&result = 2;
  *a1 = xmmword_215F3F2C0;
  *(a1 + 16) = 2142;
  return result;
}

void sub_215C9BEE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id SKUICollectionViewCellForView(void *a1)
{
  v1 = [a1 superview];
  if (v1)
  {
    v2 = v1;
    do
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v3 = v2;
      }

      else
      {
        v3 = 0;
      }

      v4 = [v2 superview];

      if (v3)
      {
        break;
      }

      v2 = v4;
    }

    while (v4);
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

  return v3;
}

id SKUICollectionViewForView(void *a1)
{
  v1 = [a1 superview];
  if (v1)
  {
    v2 = v1;
    do
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v3 = v2;
      }

      else
      {
        v3 = 0;
      }

      v4 = [v2 superview];

      if (v3)
      {
        break;
      }

      v2 = v4;
    }

    while (v4);
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

  return v3;
}

void sub_215C9E710(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_215C9ED6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_215C9EF98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_215C9F6AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v15 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v13 - 144), 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_215CA047C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__30(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

CGFloat CGRectWithFlippedOriginRelativeToBoundingRect(double a1, double a2, double a3, double a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    CGRectWithFlippedOriginRelativeToBoundingRect_cold_1();
  }

  v16.origin.x = a5;
  v16.origin.y = a6;
  v16.size.width = a7;
  v16.size.height = a8;
  v14 = a1 - CGRectGetMinX(v16);
  v17.origin.x = a5;
  v17.origin.y = a6;
  v17.size.width = a7;
  v17.size.height = a8;
  return CGRectGetMaxX(v17) - v14 - a3;
}

id SKUIStackedBarNavAnimationController(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a3;
  v9 = a4;
  v10 = [v8 view];
  v11 = [v9 view];
  v12 = [v9 view];
  [v12 layoutSubviews];

  v13 = [v8 SKUIStackedBar];
  v14 = [v9 SKUIStackedBar];
  v15 = v14;
  v16 = 0;
  if (v13 && v14)
  {
    [v13 _resetNewOffset];
    [v15 _resetNewOffset];
    v17 = SKUINavigationControllerGetItemsForViewController(v7, v8);
    [v13 setItems:v17];

    [v13 sizeToFit];
    v18 = [v8 contentScrollView];

    if (v18)
    {
      v19 = [v13 splitViewStyle];
      [v13 frame];
      if (v19)
      {
        v21 = v20;
      }

      else
      {
        v21 = v20 + -20.0;
      }

      v22 = [v8 contentScrollView];
      SKUIScrollViewSetContentInsets(v22, "com.apple.StoreKitUI.stackedBarInset", v21, 0.0, 0.0, 0.0);
    }

    v23 = SKUINavigationControllerGetItemsForViewController(v7, v9);
    [v15 setItems:v23];

    [v15 sizeToFit];
    v24 = [v9 contentScrollView];

    if (v24)
    {
      v25 = [v15 splitViewStyle];
      [v15 frame];
      if (v25)
      {
        v27 = v26;
      }

      else
      {
        v27 = v26 + -20.0;
      }

      v28 = [v9 contentScrollView];
      SKUIScrollViewSetContentInsets(v28, "com.apple.StoreKitUI.stackedBarInset", v27, 0.0, 0.0, 0.0);
    }

    if (a2 == 1)
    {
      v29 = off_2781F6768;
      v30 = v8;
      goto LABEL_17;
    }

    if (a2 == 2)
    {
      v29 = off_2781F6760;
      v30 = v9;
LABEL_17:
      v16 = objc_alloc_init(*v29);
      [v16 setFromBar:v13];
      [v16 setToBar:v15];
      [v30 SKUIStackedBarSplit];
      [v16 setSplit:?];
      goto LABEL_19;
    }

    v16 = 0;
  }

LABEL_19:

  return v16;
}

id SKUINavigationControllerGetItemsForViewController(void *a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = [MEMORY[0x277CBEB18] array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = [v3 viewControllers];
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v18 != v9)
      {
        objc_enumerationMutation(v6);
      }

      v11 = *(*(&v17 + 1) + 8 * v10);
      v12 = [v11 navigationItem];
      [v5 addObject:v12];

      if (v11 == v4)
      {
        break;
      }

      if (v8 == ++v10)
      {
        v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v13 = [v3 viewControllers];
  v14 = [v13 containsObject:v4];

  if ((v14 & 1) == 0)
  {
    v15 = [v4 navigationItem];
    [v5 addObject:v15];
  }

  return v5;
}

void SKUIStackedBarNavDidShow(void *a1, void *a2)
{
  v12 = a1;
  v3 = a2;
  v4 = [v3 SKUIStackedBar];
  if (v4)
  {
    v5 = SKUINavigationControllerGetItemsForViewController(v12, v3);
    [v4 setItems:v5];

    [v4 frame];
    if (CGRectGetHeight(v14) == 0.0)
    {
      [v4 sizeToFit];
    }

    v6 = [v3 contentScrollView];

    if (v6)
    {
      [v4 sizeThatFits:{*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)}];
      v8 = v7;
      if ([v4 splitViewStyle])
      {
        [v4 frame];
        v10 = v9;
      }

      else
      {
        v10 = v8 + -20.0;
      }

      v11 = [v3 contentScrollView];
      SKUIScrollViewSetContentInsets(v11, "com.apple.StoreKitUI.stackedBarInset", v10, 0.0, 0.0, 0.0);
    }
  }
}

void SKUIScrollViewSetContentInsets(void *a1, const void *a2, double a3, double a4, double a5, double a6)
{
  object = a1;
  v7 = objc_getAssociatedObject(object, a2);
  v8 = v7;
  if (v7)
  {
    [v7 UIEdgeInsetsValue];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
  }

  else
  {
    v10 = *MEMORY[0x277D768C8];
    v12 = *(MEMORY[0x277D768C8] + 8);
    v14 = *(MEMORY[0x277D768C8] + 16);
    v16 = *(MEMORY[0x277D768C8] + 24);
  }

  [object contentInset];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  [object scrollIndicatorInsets];
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  if (v12 != a4 || v10 != a3 || v16 != a6 || v14 != a5)
  {
    v36 = a3 - v10;
    v37 = v36 + v18;
    v38 = a4 - v12;
    v39 = a4 - v12 + v20;
    v40 = a5 - v14;
    v41 = a5 - v14 + v22;
    v42 = a6 - v16;
    v43 = a6 - v16 + v24;
    v44 = v26;
    v45 = v28;
    v46 = v30;
    v47 = v32;
    [object setContentInset:{v37, v39, v41, v43}];
    [object setScrollIndicatorInsets:{v36 + v44, v38 + v45, v40 + v46, v42 + v47}];
    v48 = [MEMORY[0x277CCAE60] valueWithUIEdgeInsets:{a3, a4, a5, a6}];
    objc_setAssociatedObject(object, a2, v48, 1);
  }
}

void SKUIImageRectForBounds()
{
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    SKUIImageRectForBounds_cold_1();
  }

  SKUIImageRectForBoundsAndPadding();
}

void SKUIImageRectForBoundsAndPadding()
{
  if (os_variant_has_internal_content() && _os_feature_enabled_impl())
  {
    v0 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
    if (v0)
    {
      SKUIImageRectForBoundsAndPadding_cold_1(v0, v1, v2, v3, v4, v5, v6, v7);
    }
  }
}

void SKUIViewSetBottomBorderColor(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        SKUIViewSetBottomBorderColor_cold_1(v5, v6, v7, v8, v9, v10, v11, v12);
      }
    }
  }

  v13 = [v3 viewWithTag:1397441090];
  v14 = v13;
  if (v4)
  {
    if (!v13)
    {
      v15 = [MEMORY[0x277D759A0] mainScreen];
      [v15 scale];
      v17 = 1.0 / v16;

      [v3 bounds];
      v14 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{0.0, v18 - v17, v19, v17}];
      [v14 setAutoresizingMask:10];
      [v14 setTag:1397441090];
      [v3 addSubview:v14];
    }

    [v14 setBackgroundColor:v4];
  }

  else
  {
    [v13 removeFromSuperview];
  }
}

void SKUIViewSetTopBorderColor(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        SKUIViewSetTopBorderColor_cold_1(v5, v6, v7, v8, v9, v10, v11, v12);
      }
    }
  }

  v13 = [v3 viewWithTag:1397445698];
  v14 = v13;
  if (v4)
  {
    if (!v13)
    {
      v15 = [MEMORY[0x277D759A0] mainScreen];
      [v15 scale];
      v17 = 1.0 / v16;

      [v3 bounds];
      v14 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{0.0, 0.0, v18, v17}];
      [v14 setAutoresizingMask:2];
      [v14 setTag:1397445698];
      [v3 addSubview:v14];
    }

    [v14 setBackgroundColor:v4];
  }

  else
  {
    [v13 removeFromSuperview];
  }
}

double SKUILockupImageSizeForLockupSize(unint64_t a1, uint64_t a2)
{
  if (a2 == 2 || a2 == 6)
  {
    if (a1 >= 6)
    {
      return 120.0;
    }

    v2 = &unk_215F3F390;
    return v2[a1];
  }

  if (a2 == 8)
  {
    if (a1 < 6)
    {
      v2 = &unk_215F3F330;
      return v2[a1];
    }

    return 175.0;
  }

  else
  {
    if (a1 <= 5)
    {
      v2 = &unk_215F3F3F0;
      return v2[a1];
    }

    return 125.0;
  }
}

uint64_t SKUILockupImageStyleForItemKind(uint64_t a1)
{
  if ((a1 - 2) > 6)
  {
    return 0;
  }

  else
  {
    return qword_215F3F420[a1 - 2];
  }
}

void sub_215CAD7A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_215CAD9E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_215CAF608(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, char a62)
{
  _Block_object_dispose(&a62, 8);
  _Block_object_dispose(&STACK[0x348], 8);
  _Block_object_dispose((v62 - 216), 8);
  _Unwind_Resume(a1);
}

void sub_215CB090C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_215CB0C74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__31(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_215CB1364(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v15 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v13 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_215CB16B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 160), 8);
  _Block_object_dispose((v27 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_215CB1C08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t SKUILockupViewTypeForString(void *a1)
{
  v1 = a1;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    SKUILockupViewTypeForString_cold_1();
  }

  if ([v1 isEqualToString:@"grid"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"list"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"shelf"])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:@"product"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"brick"])
  {
    v2 = 5;
  }

  else if ([v1 isEqualToString:@"editorial"])
  {
    v2 = 6;
  }

  else if ([v1 isEqualToString:@"caption"])
  {
    v2 = 7;
  }

  else if ([v1 isEqualToString:@"tabular"])
  {
    v2 = 8;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void sub_215CB5618(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_215CB5ADC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t SKUIFacebookViewElementTypeForString(void *a1)
{
  v1 = a1;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    SKUIFacebookViewElementTypeForString_cold_1();
  }

  v2 = [v1 isEqualToString:@"large"];

  return v2;
}

void sub_215CB9FC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__32(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_215CBA670(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_215CBAA88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_215CBAC10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void SKUIViewElementAccumulatePersonalizationLibraryItemsForChildren(void *a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v5)
      {
        SKUIViewElementAccumulatePersonalizationLibraryItemsForChildren_cold_1(v5, v6, v7, v8, v9, v10, v11, v12);
      }
    }
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v13 = v4;
  v14 = [v13 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v20;
    do
    {
      v17 = 0;
      do
      {
        if (*v20 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = [*(*(&v19 + 1) + 8 * v17) personalizationLibraryItems];
        if (v18)
        {
          [v3 unionSet:v18];
        }

        ++v17;
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v15);
  }
}

void sub_215CBB5F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

void SKUIViewElementAccumulatePersonalizationLibraryItemsForChild(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    SKUIViewElementAccumulatePersonalizationLibraryItemsForChild_cold_1();
  }

  v5 = [v4 personalizationLibraryItems];
  if (v5)
  {
    [v3 unionSet:v5];
  }
}

uint64_t SKUIViewElementAlignmentForStyle(void *a1)
{
  v1 = a1;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v2)
      {
        SKUIViewElementAlignmentForStyle_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
      }
    }
  }

  v10 = [v1 textAlignment];
  if (v10 || (v10 = [v1 elementAlignment]) != 0)
  {
    v11 = v10;
  }

  else
  {
    v13 = [v1 elementPosition];
    if ((v13 - 1) > 8)
    {
      v11 = 0;
    }

    else
    {
      v11 = qword_215F3F690[v13 - 1];
    }
  }

  return v11;
}

id SKUIViewElementFontWithStyle(void *a1)
{
  v61[2] = *MEMORY[0x277D85DE8];
  v1 = a1;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v2)
      {
        SKUIViewElementFontWithStyle_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
      }
    }
  }

  v10 = [v1 textStyle];
  if (!v10)
  {
    goto LABEL_29;
  }

  if (SKUIViewElementFontWithStyle_sOnce != -1)
  {
    SKUIViewElementFontWithStyle_cold_2();
  }

  value = 0;
  if (!NSMapMember(SKUIViewElementFontWithStyle_sTextStyleMap, v10, 0, &value))
  {
    goto LABEL_29;
  }

  v11 = [v1 textScale];
  v12 = v11;
  if (!v11)
  {
    v14 = value;
    goto LABEL_15;
  }

  if (![v11 isEqualToString:@"none"])
  {
    v47 = 0;
    v15 = NSMapMember(SKUIViewElementFontWithStyle_sTextScaleMap, v12, 0, &v47);
    v14 = value;
    if (v15)
    {
      v13 = SKUIFontLimitedPreferredFontForTextStyle(value, v47);
      goto LABEL_16;
    }

LABEL_15:
    v13 = SKUIFontPreferredFontForTextStyle(v14);
    goto LABEL_16;
  }

  v13 = SKUIFontForTextStyle(value);
LABEL_16:
  v16 = v13;
  v17 = [v1 fontWeight];
  v18 = v17;
  if (!v16 || !v17)
  {
    goto LABEL_28;
  }

  if ([v17 isEqualToString:@"medium"])
  {
    v60[0] = *MEMORY[0x277D74328];
    v19 = [v16 familyName];
    v60[1] = *MEMORY[0x277D74340];
    v61[0] = v19;
    v61[1] = @"Medium";
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v61 forKeys:v60 count:2];

LABEL_20:
    v21 = [v16 fontDescriptor];
    v22 = [v21 fontDescriptorByAddingAttributes:v20];

    goto LABEL_26;
  }

  if ([v18 isEqualToString:@"bold"])
  {
    v23 = [v16 fontDescriptor];
    v20 = v23;
    v24 = 2;
  }

  else
  {
    if (![v18 isEqualToString:@"condensed-bold"])
    {
      if ([v18 isEqualToString:@"light"])
      {
        v58 = *MEMORY[0x277D74378];
        v59 = *MEMORY[0x277CC4868];
        v43 = MEMORY[0x277CBEAC0];
        v44 = &v59;
        v45 = &v58;
      }

      else if ([v18 isEqualToString:@"ultra-light"])
      {
        v56 = *MEMORY[0x277D74378];
        v57 = *MEMORY[0x277CC4898];
        v43 = MEMORY[0x277CBEAC0];
        v44 = &v57;
        v45 = &v56;
      }

      else
      {
        if (![v18 isEqualToString:@"thin"])
        {
          goto LABEL_28;
        }

        v54 = *MEMORY[0x277D74378];
        v55 = *MEMORY[0x277CC4888];
        v43 = MEMORY[0x277CBEAC0];
        v44 = &v55;
        v45 = &v54;
      }

      v20 = [v43 dictionaryWithObjects:v44 forKeys:v45 count:1];
      goto LABEL_20;
    }

    v23 = [v16 fontDescriptor];
    v20 = v23;
    v24 = 66;
  }

  v22 = [v23 fontDescriptorWithSymbolicTraits:v24];
LABEL_26:

  if (v22)
  {
    v25 = [MEMORY[0x277D74300] fontWithDescriptor:v22 size:0.0];

    v16 = v25;
  }

LABEL_28:

  if (v16)
  {
    goto LABEL_38;
  }

LABEL_29:
  [v1 fontSize];
  v27 = v26;
  if (v26 <= 0.00000011920929)
  {
    v16 = 0;
    goto LABEL_38;
  }

  v28 = [v1 fontWeight];
  if ([v28 isEqualToString:@"medium"])
  {
    v29 = MEMORY[0x277D74300];
    v30 = MEMORY[0x277D74410];
  }

  else if ([v28 isEqualToString:@"bold"])
  {
    v29 = MEMORY[0x277D74300];
    v30 = MEMORY[0x277D743F8];
  }

  else
  {
    if ([v28 isEqualToString:@"condensed-bold"])
    {
      v40 = [MEMORY[0x277D74300] systemFontOfSize:v27 weight:*MEMORY[0x277D743F8]];
      v41 = [v40 fontDescriptor];

      v42 = [v41 fontDescriptorWithSymbolicTraits:66];

      v16 = [MEMORY[0x277D74300] fontWithDescriptor:v42 size:0.0];

      goto LABEL_37;
    }

    if ([v28 isEqualToString:@"light"])
    {
      v29 = MEMORY[0x277D74300];
      v30 = MEMORY[0x277D74408];
    }

    else if ([v28 isEqualToString:@"ultra-light"])
    {
      v29 = MEMORY[0x277D74300];
      v30 = MEMORY[0x277D74438];
    }

    else
    {
      v46 = [v28 isEqualToString:@"thin"];
      v29 = MEMORY[0x277D74300];
      if (!v46)
      {
        v31 = [MEMORY[0x277D74300] systemFontOfSize:v27];
        goto LABEL_36;
      }

      v30 = MEMORY[0x277D74428];
    }
  }

  v31 = [v29 systemFontOfSize:v27 weight:*v30];
LABEL_36:
  v16 = v31;
LABEL_37:

LABEL_38:
  v32 = [v16 fontDescriptor];
  v52 = *MEMORY[0x277D74338];
  v33 = *MEMORY[0x277D74388];
  v49[0] = *MEMORY[0x277D74398];
  v49[1] = v33;
  v50[0] = &unk_2828D2B88;
  v50[1] = &unk_2828D2BA0;
  v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v50 forKeys:v49 count:2];
  v51 = v34;
  v35 = [MEMORY[0x277CBEA60] arrayWithObjects:&v51 count:1];
  v53 = v35;
  v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v53 forKeys:&v52 count:1];
  v37 = [v32 fontDescriptorByAddingAttributes:v36];

  v38 = [MEMORY[0x277D74300] fontWithDescriptor:v37 size:0.0];

  return v38;
}

void __SKUIViewElementFontWithStyle_block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:0 valueOptions:1282 capacity:0];
  v1 = SKUIViewElementFontWithStyle_sTextScaleMap;
  SKUIViewElementFontWithStyle_sTextScaleMap = v0;

  NSMapInsertKnownAbsent(SKUIViewElementFontWithStyle_sTextScaleMap, @"x-small", 1);
  NSMapInsertKnownAbsent(SKUIViewElementFontWithStyle_sTextScaleMap, @"small", 2);
  NSMapInsertKnownAbsent(SKUIViewElementFontWithStyle_sTextScaleMap, @"medium", 3);
  NSMapInsertKnownAbsent(SKUIViewElementFontWithStyle_sTextScaleMap, @"large", 4);
  NSMapInsertKnownAbsent(SKUIViewElementFontWithStyle_sTextScaleMap, @"x-large", 5);
  NSMapInsertKnownAbsent(SKUIViewElementFontWithStyle_sTextScaleMap, @"xx-large", 6);
  NSMapInsertKnownAbsent(SKUIViewElementFontWithStyle_sTextScaleMap, @"xxx-large", 7);
  v2 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:0 valueOptions:1282 capacity:0];
  v3 = SKUIViewElementFontWithStyle_sTextStyleMap;
  SKUIViewElementFontWithStyle_sTextStyleMap = v2;

  NSMapInsertKnownAbsent(SKUIViewElementFontWithStyle_sTextStyleMap, @"body", 1);
  NSMapInsertKnownAbsent(SKUIViewElementFontWithStyle_sTextStyleMap, @"body-short", 2);
  NSMapInsertKnownAbsent(SKUIViewElementFontWithStyle_sTextStyleMap, @"callout", 3);
  NSMapInsertKnownAbsent(SKUIViewElementFontWithStyle_sTextStyleMap, @"callout-short", 4);
  NSMapInsertKnownAbsent(SKUIViewElementFontWithStyle_sTextStyleMap, @"caption1", 5);
  NSMapInsertKnownAbsent(SKUIViewElementFontWithStyle_sTextStyleMap, @"caption1-medium-short", 6);
  NSMapInsertKnownAbsent(SKUIViewElementFontWithStyle_sTextStyleMap, @"caption1-short", 7);
  NSMapInsertKnownAbsent(SKUIViewElementFontWithStyle_sTextStyleMap, @"caption2", 8);
  NSMapInsertKnownAbsent(SKUIViewElementFontWithStyle_sTextStyleMap, @"caption2-short", 9);
  NSMapInsertKnownAbsent(SKUIViewElementFontWithStyle_sTextStyleMap, @"caption3", 0xA);
  NSMapInsertKnownAbsent(SKUIViewElementFontWithStyle_sTextStyleMap, @"footnote", 0xB);
  NSMapInsertKnownAbsent(SKUIViewElementFontWithStyle_sTextStyleMap, @"footnote-short", 0xC);
  NSMapInsertKnownAbsent(SKUIViewElementFontWithStyle_sTextStyleMap, @"headline", 0xD);
  NSMapInsertKnownAbsent(SKUIViewElementFontWithStyle_sTextStyleMap, @"headline-short", 0xE);
  NSMapInsertKnownAbsent(SKUIViewElementFontWithStyle_sTextStyleMap, @"subhead", 0x10);
  NSMapInsertKnownAbsent(SKUIViewElementFontWithStyle_sTextStyleMap, @"subhead-short", 0x11);
  NSMapInsertKnownAbsent(SKUIViewElementFontWithStyle_sTextStyleMap, @"subhead2", 0x12);
  NSMapInsertKnownAbsent(SKUIViewElementFontWithStyle_sTextStyleMap, @"subhead2-medium-short", 0x13);
  NSMapInsertKnownAbsent(SKUIViewElementFontWithStyle_sTextStyleMap, @"subhead2-short", 0x14);
  NSMapInsertKnownAbsent(SKUIViewElementFontWithStyle_sTextStyleMap, @"subhead2-tall", 0x15);
  NSMapInsertKnownAbsent(SKUIViewElementFontWithStyle_sTextStyleMap, @"super-headline-1", 0x16);
  NSMapInsertKnownAbsent(SKUIViewElementFontWithStyle_sTextStyleMap, @"super-headline-2", 0x17);
  NSMapInsertKnownAbsent(SKUIViewElementFontWithStyle_sTextStyleMap, @"super-headline-3", 0x18);
  NSMapInsertKnownAbsent(SKUIViewElementFontWithStyle_sTextStyleMap, @"super-headline-4", 0x19);
  NSMapInsertKnownAbsent(SKUIViewElementFontWithStyle_sTextStyleMap, @"super-headline-5", 0x1A);
  NSMapInsertKnownAbsent(SKUIViewElementFontWithStyle_sTextStyleMap, @"super-headline-5-medium-short", 0x1B);
  v4 = SKUIViewElementFontWithStyle_sTextStyleMap;

  NSMapInsertKnownAbsent(v4, @"super-headline-5-short", 0x1C);
}

id SKUIViewElementPlainColorWithIKColor(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v5)
      {
        SKUIViewElementPlainColorWithIKColor_cold_1(v5, v6, v7, v8, v9, v10, v11, v12);
      }
    }
  }

  if ([v3 colorType] == 1)
  {
    v13 = v4;
  }

  else
  {
    v13 = [v3 color];
  }

  v14 = v13;

  return v14;
}

id SKUIViewElementPlainColorWithStyle(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v5)
      {
        SKUIViewElementPlainColorWithStyle_cold_1(v5, v6, v7, v8, v9, v10, v11, v12);
      }
    }
  }

  v13 = [v3 ikColor];
  v14 = SKUIViewElementPlainColorWithIKColor(v13, v4);

  return v14;
}

uint64_t SKUIViewElementNSTextAlignmentForIKElementAlignment(uint64_t a1)
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v2)
      {
        SKUIViewElementNSTextAlignmentForIKElementAlignment_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
      }
    }
  }

  if ((a1 - 2) >= 4)
  {
    return 0;
  }

  else
  {
    return a1 - 1;
  }
}

double SKUIViewElementMarginForStyle(void *a1, char *a2)
{
  v3 = a1;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v4 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v4)
      {
        SKUIViewElementMarginForStyle_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
      }
    }
  }

  v12 = [v3 valueForStyle:*MEMORY[0x277D1AFE8]];
  if (!v12)
  {
    v12 = [v3 valueForStyle:@"itml-margin"];
    if (!v12)
    {
      v16 = 0;
      v15 = *MEMORY[0x277D768C8];
      if (!a2)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  v13 = v12;
  [v12 UIEdgeInsetsValue];
  v15 = v14;

  v16 = 1;
  if (a2)
  {
LABEL_8:
    *a2 = v16;
  }

LABEL_9:

  return v15;
}

double SKUIViewElementPaddingForStyle(void *a1, char *a2)
{
  v3 = a1;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v4 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v4)
      {
        SKUIViewElementPaddingForStyle_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
      }
    }
  }

  v12 = [v3 valueForStyle:*MEMORY[0x277D1AFF0]];
  if (!v12)
  {
    v12 = [v3 valueForStyle:@"itml-padding"];
    if (!v12)
    {
      v16 = 0;
      v15 = *MEMORY[0x277D768C8];
      if (!a2)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  v13 = v12;
  [v12 UIEdgeInsetsValue];
  v15 = v14;

  v16 = 1;
  if (a2)
  {
LABEL_8:
    *a2 = v16;
  }

LABEL_9:

  return v15;
}

void sub_215CBF8D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__33(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_215CBFA8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_215CBFE58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_215CC00A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location, id a16)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a16);
  _Unwind_Resume(a1);
}

void SKUIConsoleLogFormat(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = a2;
  v11 = a1;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    SKUIConsoleLogFormat_cold_1();
  }

  v16 = &a9;
  v12 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:v10 arguments:&a9];

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __SKUIConsoleLogFormat_block_invoke;
  v14[3] = &unk_2781FAE18;
  v15 = v12;
  v13 = v12;
  [v11 evaluate:v14 completionBlock:0];
}

void __SKUIConsoleLogFormat_block_invoke(uint64_t a1, void *a2)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v3 = [a2 objectForKeyedSubscript:@"console"];
  v4 = [v3 objectForKeyedSubscript:@"log"];
  v7[0] = *(a1 + 32);
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  v6 = [v4 callWithArguments:v5];
}

void SKUIConsoleLogObjects(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    SKUIConsoleLogObjects_cold_1();
  }

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __SKUIConsoleLogObjects_block_invoke;
  v6[3] = &unk_2781FAE18;
  v7 = v4;
  v5 = v4;
  [v3 evaluate:v6 completionBlock:0];
}

void __SKUIConsoleLogObjects_block_invoke(uint64_t a1, void *a2)
{
  v5 = [a2 objectForKeyedSubscript:@"console"];
  v3 = [v5 objectForKeyedSubscript:@"log"];
  v4 = [v3 callWithArguments:*(a1 + 32)];
}

void sub_215CCEC38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_215CCF074(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_215CCF374(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_215CCFA44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose((v35 - 160), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__34(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_215CD0060(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_215CD0AE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_215CD0CFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_215CD183C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44)
{
  _Block_object_dispose(&a32, 8);
  _Block_object_dispose(&a36, 8);
  _Block_object_dispose(&a40, 8);
  _Block_object_dispose(&a44, 8);
  _Block_object_dispose((v44 - 248), 8);
  _Block_object_dispose((v44 - 216), 8);
  _Unwind_Resume(a1);
}

void sub_215CD20A0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_215CD5788(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__35(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_215CD79A0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_215CD7C4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__36(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_215CD7DF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_215CDDEBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va1, a10);
  va_start(va, a10);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v10 - 136), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__37(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_215CDE6B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_215CE3BE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__38(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_215CE3EB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_215CE4A48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_215CE4D50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_215CE5104(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__39(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_215CEA3A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a29, 8);
  _Unwind_Resume(a1);
}

void SKUIInitializeDOMFeatureFactory()
{
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    SKUIInitializeDOMFeatureFactory_cold_1();
  }

  if (SKUIInitializeDOMFeatureFactory_sOnce != -1)
  {
    SKUIInitializeDOMFeatureFactory_cold_2();
  }
}

void __SKUIInitializeDOMFeatureFactory_block_invoke()
{
  v0 = objc_opt_class();
  SKUIRegisterDOMFeatureFactory(v0);
  v1 = objc_opt_class();
  SKUIRegisterDOMFeatureFactory(v1);
  v2 = objc_opt_class();
  SKUIRegisterDOMFeatureFactory(v2);
  v3 = objc_opt_class();
  SKUIRegisterDOMFeatureFactory(v3);
  v4 = objc_opt_class();

  SKUIRegisterDOMFeatureFactory(v4);
}

void SKUIRegisterDOMFeatureFactory(void *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    SKUIRegisterDOMFeatureFactory_cold_1();
  }

  if (objc_opt_respondsToSelector())
  {
    v2 = [a1 possibleFeatureNames];
    v8 = 0u;
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v9;
      do
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v9 != v5)
          {
            objc_enumerationMutation(v2);
          }

          [MEMORY[0x277D1B080] registerClass:a1 forFeatureName:*(*(&v8 + 1) + 8 * i)];
        }

        v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      }

      while (v4);
    }
  }

  else
  {
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      return;
    }

    v7 = MEMORY[0x277D1B080];
    v2 = [a1 featureName];
    [v7 registerClass:a1 forFeatureName:v2];
  }
}

void sub_215CEBBA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_215CF0838(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, char a50, uint64_t a51, uint64_t a52, uint64_t a53, char a54, uint64_t a55, uint64_t a56, uint64_t a57, char a58, uint64_t a59, uint64_t a60, uint64_t a61, char a62, uint64_t a63)
{
  _Block_object_dispose(&a50, 8);
  _Block_object_dispose(&a54, 8);
  _Block_object_dispose(&a58, 8);
  _Block_object_dispose(&a62, 8);
  _Block_object_dispose(&a66, 8);
  _Unwind_Resume(a1);
}

void SKUIScrollViewLayoutTopBackgroundColor(void *a1)
{
  v1 = a1;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v2)
      {
        SKUIScrollViewLayoutTopBackgroundColor_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
      }
    }
  }

  v10 = [v1 viewWithTag:1095975495];
  if (v10)
  {
    __LayoutTopBackgroundColor(v1, v10);
  }
}

void __LayoutTopBackgroundColor(void *a1, void *a2)
{
  v10 = a2;
  [a1 bounds];
  v4 = v3;
  v6 = v5;
  v7 = [MEMORY[0x277D759A0] mainScreen];
  [v7 bounds];
  v9 = v8;

  [v10 setFrame:{v4, -v9, v6, v9}];
}

void SKUIScrollViewLayoutTopBackgroundColorForProductPage(void *a1, double a2)
{
  v3 = a1;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v4 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v4)
      {
        SKUIScrollViewLayoutTopBackgroundColorForProductPage_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
      }
    }
  }

  v12 = [v3 viewWithTag:1095975495];
  if (v12)
  {
    [v3 bounds];
    v14 = v13;
    v16 = v15;
    v17 = [MEMORY[0x277D759A0] mainScreen];
    [v17 bounds];
    v19 = v18 + v18;

    [v12 setFrame:{v14, a2 - v19, v16, v19}];
  }
}

void SKUIScrollViewSetTopBackgroundColor(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        SKUIScrollViewSetTopBackgroundColor_cold_1(v5, v6, v7, v8, v9, v10, v11, v12);
      }
    }
  }

  v13 = [v3 viewWithTag:1095975495];
  v14 = v13;
  if (v4)
  {
    if (!v13)
    {
      v14 = objc_alloc_init(MEMORY[0x277D75D18]);
      [v14 setAutoresizingMask:2];
      [v14 setTag:1095975495];
      [v3 _addContentSubview:v14 atBack:1];
    }

    [v14 setBackgroundColor:v4];
    __LayoutTopBackgroundColor(v3, v14);
  }

  else
  {
    [v13 removeFromSuperview];
  }
}

void sub_215CF7434(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_215CF76E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_215CF7A70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_215CF7E30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_215CF80E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__40(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_215CF8378(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_215CF8AA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_215CFA170(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, char a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, char a54, uint64_t a55, uint64_t a56, uint64_t a57, char a58)
{
  _Block_object_dispose(&a46, 8);
  _Block_object_dispose(&a54, 8);
  _Block_object_dispose(&a58, 8);
  _Block_object_dispose((v58 - 232), 8);
  _Block_object_dispose((v58 - 200), 8);
  _Unwind_Resume(a1);
}

void sub_215CFB1AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_215CFB8C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_215CFBE64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_215CFC218(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_215CFCFFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_215CFD2DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_215CFDF8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_215D009BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__41(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_215D03F98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__42(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

double *__SK_RGBtoHSV(double *result, double *a2, double *a3, double a4, double a5, double a6)
{
  if (a4 >= a5)
  {
    v6 = a4;
  }

  else
  {
    v6 = a5;
  }

  if (v6 < a6)
  {
    v6 = a6;
  }

  v7 = v6;
  v8 = v7;
  *a3 = v7;
  if (v7 == 0.0)
  {
    *result = NAN;
    *a2 = 0.0;
    *a3 = 0.0;
  }

  else
  {
    if (a4 <= a5)
    {
      v9 = a4;
    }

    else
    {
      v9 = a5;
    }

    if (v9 > a6)
    {
      v9 = a6;
    }

    v10 = v9;
    v11 = v7 - v10;
    *a2 = (v11 / v7);
    v12 = v11;
    if (v8 == a4)
    {
      v13 = (a5 - a6) / v12;
    }

    else
    {
      v14 = v8 == a5;
      v15 = (a4 - a5) / v12 + 4.0;
      v13 = (a6 - a4) / v12 + 2.0;
      if (!v14)
      {
        v13 = v15;
      }
    }

    v16 = v13 * 60.0;
    if (v16 < 0.0)
    {
      v16 = v16 + 360.0;
    }

    *result = v16;
  }

  return result;
}

void sub_215D0CE74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v11 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_215D0D590(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_215D0E9B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__43(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void _SKUIOffscreenRenderOperationPopRenderingContext(void *a1, void *a2)
{
  v45[2] = *MEMORY[0x277D85DE8];
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__17;
  v33 = __Block_byref_object_dispose__18;
  v34 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__17;
  v27 = __Block_byref_object_dispose__18;
  v28 = 0;
  v4 = _SKUIOffscreenRenderOperationGetRendererStackAccessQueue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = ___SKUIOffscreenRenderOperationPopRenderingContext_block_invoke;
  block[3] = &unk_2781FD3A0;
  block[4] = &v29;
  block[5] = &v23;
  dispatch_barrier_sync(v4, block);
  if (!v30[5] || !v24[5])
  {
    v40 = 0;
    v41 = &v40;
    v42 = 0x2020000000;
    v5 = getkEAGLContextPropertyAcceleratedSymbolLoc_ptr;
    v43 = getkEAGLContextPropertyAcceleratedSymbolLoc_ptr;
    if (!getkEAGLContextPropertyAcceleratedSymbolLoc_ptr)
    {
      v35 = MEMORY[0x277D85DD0];
      v36 = 3221225472;
      v37 = __getkEAGLContextPropertyAcceleratedSymbolLoc_block_invoke;
      v38 = &unk_2781FA3E0;
      v39 = &v40;
      v6 = OpenGLESLibrary();
      v7 = dlsym(v6, "kEAGLContextPropertyAccelerated");
      *(v39[1] + 24) = v7;
      getkEAGLContextPropertyAcceleratedSymbolLoc_ptr = *(v39[1] + 24);
      v5 = v41[3];
    }

    _Block_object_dispose(&v40, 8);
    if (!v5)
    {
      goto LABEL_17;
    }

    v8 = *v5;
    v44[0] = v8;
    v9 = MEMORY[0x277CBEC38];
    v45[0] = MEMORY[0x277CBEC38];
    v40 = 0;
    v41 = &v40;
    v42 = 0x2020000000;
    v10 = getkEAGLContextPropertyClientRetainReleaseSymbolLoc_ptr;
    v43 = getkEAGLContextPropertyClientRetainReleaseSymbolLoc_ptr;
    if (!getkEAGLContextPropertyClientRetainReleaseSymbolLoc_ptr)
    {
      v35 = MEMORY[0x277D85DD0];
      v36 = 3221225472;
      v37 = __getkEAGLContextPropertyClientRetainReleaseSymbolLoc_block_invoke;
      v38 = &unk_2781FA3E0;
      v39 = &v40;
      v11 = OpenGLESLibrary();
      v12 = dlsym(v11, "kEAGLContextPropertyClientRetainRelease");
      *(v39[1] + 24) = v12;
      getkEAGLContextPropertyClientRetainReleaseSymbolLoc_ptr = *(v39[1] + 24);
      v10 = v41[3];
    }

    _Block_object_dispose(&v40, 8);
    if (!v10)
    {
LABEL_17:
      dlerror();
      abort_report_np();
      __break(1u);
    }

    v13 = *v10;
    v44[1] = v13;
    v45[1] = v9;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v45 forKeys:v44 count:2];

    v15 = [objc_alloc(getEAGLContextClass()) initWithAPI:3 properties:v14];
    v16 = v24[5];
    v24[5] = v15;

    v17 = v24[5];
    if (!v17)
    {
      v18 = [objc_alloc(getEAGLContextClass()) initWithAPI:2 properties:v14];
      v19 = v24[5];
      v24[5] = v18;

      v17 = v24[5];
    }

    v20 = [MEMORY[0x277CD9F40] rendererWithEAGLContext:v17 options:0];
    v21 = v30[5];
    v30[5] = v20;
  }

  if (a2)
  {
    *a2 = v24[5];
  }

  if (a1)
  {
    *a1 = v30[5];
  }

  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&v29, 8);
}

void sub_215D10ACC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose((v9 - 152), 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

id getEAGLContextClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getEAGLContextClass_softClass;
  v7 = getEAGLContextClass_softClass;
  if (!getEAGLContextClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getEAGLContextClass_block_invoke;
    v3[3] = &unk_2781FA3E0;
    v3[4] = &v4;
    __getEAGLContextClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_215D10BD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _SKUIglGetError()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getglGetErrorSymbolLoc_ptr;
  v7 = getglGetErrorSymbolLoc_ptr;
  if (!getglGetErrorSymbolLoc_ptr)
  {
    v1 = OpenGLESLibrary();
    v5[3] = dlsym(v1, "glGetError");
    getglGetErrorSymbolLoc_ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (!v0)
  {
    v3 = getCNComposeRecipientViewDidChangeNotification_cold_1();
    _Block_object_dispose(&v4, 8);
    _Unwind_Resume(v3);
  }

  return v0();
}

uint64_t _SKUIglBindFramebuffer(uint64_t a1)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v2 = getglBindFramebufferSymbolLoc_ptr;
  v9 = getglBindFramebufferSymbolLoc_ptr;
  if (!getglBindFramebufferSymbolLoc_ptr)
  {
    v3 = OpenGLESLibrary();
    v7[3] = dlsym(v3, "glBindFramebuffer");
    getglBindFramebufferSymbolLoc_ptr = v7[3];
    v2 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (!v2)
  {
    v5 = getCNComposeRecipientViewDidChangeNotification_cold_1();
    _Block_object_dispose(&v6, 8);
    _Unwind_Resume(v5);
  }

  return v2(36160, a1);
}

void _SKUIOffscreenRenderOperationPushRenderingContext(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3 && v4)
  {
    v6 = _SKUIOffscreenRenderOperationGetRendererStackAccessQueue();
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = ___SKUIOffscreenRenderOperationPushRenderingContext_block_invoke;
    v7[3] = &unk_2781F80C8;
    v8 = v3;
    v9 = v5;
    dispatch_barrier_async(v6, v7);
  }
}

void *__Block_byref_object_copy__44(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

uint64_t IOSurfaceLibrary()
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!IOSurfaceLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = __IOSurfaceLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_2781FD368;
    v5 = 0;
    IOSurfaceLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = IOSurfaceLibraryCore_frameworkLibrary;
  v1 = v3[0];
  if (!IOSurfaceLibraryCore_frameworkLibrary)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v3[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t OpenGLESLibrary()
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!OpenGLESLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = __OpenGLESLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_2781FD380;
    v5 = 0;
    OpenGLESLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = OpenGLESLibraryCore_frameworkLibrary;
  v1 = v3[0];
  if (!OpenGLESLibraryCore_frameworkLibrary)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v3[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

Class __getEAGLContextClass_block_invoke(uint64_t a1)
{
  OpenGLESLibrary();
  result = objc_getClass("EAGLContext");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getEAGLContextClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getEAGLContextClass_block_invoke_cold_1();
    return __getkIOSurfaceWidthSymbolLoc_block_invoke(v3);
  }

  return result;
}

void *__getkIOSurfaceWidthSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = IOSurfaceLibrary();
  result = dlsym(v2, "kIOSurfaceWidth");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkIOSurfaceWidthSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkIOSurfaceHeightSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = IOSurfaceLibrary();
  result = dlsym(v2, "kIOSurfaceHeight");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkIOSurfaceHeightSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkIOSurfaceBytesPerElementSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = IOSurfaceLibrary();
  result = dlsym(v2, "kIOSurfaceBytesPerElement");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkIOSurfaceBytesPerElementSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkIOSurfacePixelFormatSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = IOSurfaceLibrary();
  result = dlsym(v2, "kIOSurfacePixelFormat");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkIOSurfacePixelFormatSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkIOSurfaceIsGlobalSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = IOSurfaceLibrary();
  result = dlsym(v2, "kIOSurfaceIsGlobal");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkIOSurfaceIsGlobalSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getIOSurfaceCreateSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = IOSurfaceLibrary();
  result = dlsym(v2, "IOSurfaceCreate");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getIOSurfaceCreateSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getglClearColorSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = OpenGLESLibrary();
  result = dlsym(v2, "glClearColor");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getglClearColorSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getglClearSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = OpenGLESLibrary();
  result = dlsym(v2, "glClear");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getglClearSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getglGetErrorSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = OpenGLESLibrary();
  result = dlsym(v2, "glGetError");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getglGetErrorSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getglBindFramebufferSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = OpenGLESLibrary();
  result = dlsym(v2, "glBindFramebuffer");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getglBindFramebufferSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getglDeleteFramebuffersSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = OpenGLESLibrary();
  result = dlsym(v2, "glDeleteFramebuffers");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getglDeleteFramebuffersSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getglDeleteTexturesSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = OpenGLESLibrary();
  result = dlsym(v2, "glDeleteTextures");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getglDeleteTexturesSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __IOSurfaceLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  IOSurfaceLibraryCore_frameworkLibrary = result;
  return result;
}

uint64_t __OpenGLESLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  OpenGLESLibraryCore_frameworkLibrary = result;
  return result;
}

uint64_t _SKUIglBindTexture(uint64_t a1)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v2 = getglBindTextureSymbolLoc_ptr;
  v9 = getglBindTextureSymbolLoc_ptr;
  if (!getglBindTextureSymbolLoc_ptr)
  {
    v3 = OpenGLESLibrary();
    v7[3] = dlsym(v3, "glBindTexture");
    getglBindTextureSymbolLoc_ptr = v7[3];
    v2 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (!v2)
  {
    v5 = getCNComposeRecipientViewDidChangeNotification_cold_1();
    _Block_object_dispose(&v6, 8);
    _Unwind_Resume(v5);
  }

  return v2(3553, a1);
}

uint64_t _SKUIglTexParameteri(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v4 = getglTexParameteriSymbolLoc_ptr;
  v11 = getglTexParameteriSymbolLoc_ptr;
  if (!getglTexParameteriSymbolLoc_ptr)
  {
    v5 = OpenGLESLibrary();
    v9[3] = dlsym(v5, "glTexParameteri");
    getglTexParameteriSymbolLoc_ptr = v9[3];
    v4 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  if (!v4)
  {
    v7 = getCNComposeRecipientViewDidChangeNotification_cold_1();
    _Block_object_dispose(&v8, 8);
    _Unwind_Resume(v7);
  }

  return v4(3553, a1, a2);
}

void *__getglGenTexturesSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = OpenGLESLibrary();
  result = dlsym(v2, "glGenTextures");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getglGenTexturesSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getglBindTextureSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = OpenGLESLibrary();
  result = dlsym(v2, "glBindTexture");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getglBindTextureSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getIOSurfaceGetWidthSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = IOSurfaceLibrary();
  result = dlsym(v2, "IOSurfaceGetWidth");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getIOSurfaceGetWidthSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getIOSurfaceGetHeightSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = IOSurfaceLibrary();
  result = dlsym(v2, "IOSurfaceGetHeight");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getIOSurfaceGetHeightSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getglTexParameteriSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = OpenGLESLibrary();
  result = dlsym(v2, "glTexParameteri");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getglTexParameteriSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getglGenFramebuffersSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = OpenGLESLibrary();
  result = dlsym(v2, "glGenFramebuffers");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getglGenFramebuffersSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getglFramebufferTexture2DSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = OpenGLESLibrary();
  result = dlsym(v2, "glFramebufferTexture2D");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getglFramebufferTexture2DSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getglViewportSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = OpenGLESLibrary();
  result = dlsym(v2, "glViewport");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getglViewportSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id _SKUIOffscreenRenderOperationGetRendererStackAccessQueue()
{
  if (_SKUIOffscreenRenderOperationGetRendererStackAccessQueue_sOnceToken != -1)
  {
    _SKUIOffscreenRenderOperationGetRendererStackAccessQueue_cold_1();
  }

  v1 = _SKUIOffscreenRenderOperationGetRendererStackAccessQueue_sRendererStacAccessQueue;

  return v1;
}

void *__getkEAGLContextPropertyAcceleratedSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = OpenGLESLibrary();
  result = dlsym(v2, "kEAGLContextPropertyAccelerated");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkEAGLContextPropertyAcceleratedSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkEAGLContextPropertyClientRetainReleaseSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = OpenGLESLibrary();
  result = dlsym(v2, "kEAGLContextPropertyClientRetainRelease");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkEAGLContextPropertyClientRetainReleaseSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_215D143D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57)
{
  _Block_object_dispose(&a39, 8);
  _Block_object_dispose(&a45, 8);
  _Block_object_dispose(&a51, 8);
  _Block_object_dispose(&a57, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__45(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void SKUINavigationBarController_SetTitleView(void *a1, void *a2)
{
  v3 = a2;
  v7 = a1;
  v4 = objc_opt_class();
  InstanceMethod = class_getInstanceMethod(v4, sel_setTitleView_);
  Implementation = method_getImplementation(InstanceMethod);
  (Implementation)(v7, sel_setTitleView_, v3);
}

void sub_215D18DA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__n128 _SKUIIndexBarControlInitialization(void *a1)
{
  v1 = a1;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    _SKUIIndexBarControlInitialization_cold_1();
  }

  v2 = [MEMORY[0x277D75348] clearColor];
  [v1 setBackgroundColor:v2];

  [v1 setContentMode:3];
  [v1 setDeliversTouchesForGesturesToSuperview:0];
  [v1 setExclusiveTouch:1];
  *(v1 + 584) = xmmword_215F3FA70;
  *(v1 + 600) = xmmword_215F3FA70;
  v1[481] = 1;
  v1[482] = 1;
  v1[483] = 1;
  v1[484] = 1;
  __asm { FMOV            V0.2D, #-3.0 }

  *(v1 + 616) = _Q0;
  *(v1 + 632) = _Q0;

  return result;
}

void sub_215D1B17C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_215D1B4D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__46(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_215D1B6A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_215D1BFA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose(&a39, 8);
  _Unwind_Resume(a1);
}

void sub_215D1C87C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_215D1CA28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_215D1CBE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_215D1CD9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_215D1D00C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_215D233BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__47(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_215D239FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id SKUIGetFamilyMemberImage(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    SKUIGetFamilyMemberImage_cold_1();
  }

  if (v7)
  {
    v11 = v8 == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = !v11;
  if (v11 && !v9 && !v10 || (v13 = SKUIAppleAccountUIFramework(), v14 = objc_alloc_init(SKUIWeakLinkedClassForString(&cfstr_Aauiprofilepic.isa, v13)), [v14 setPictureStyle:0], objc_msgSend(v14, "setPictureDiameter:", 60.0), !v14) || (v15 = SKUIAppleAccountFramework(), v16 = objc_alloc_init(SKUIWeakLinkedClassForString(&cfstr_Aafamilymember.isa, v15)), objc_msgSend(v16, "setFirstName:", v7), objc_msgSend(v16, "setLastName:", v8), objc_msgSend(v16, "setPersonID:", v10), objc_msgSend(v16, "setAppleID:", v9), objc_msgSend(v14, "profilePictureForFamilyMember:", v16), v17 = objc_claimAutoreleasedReturnValue(), v16, v14, !v17))
  {
    v18 = SKUIContactsUIFramework();
    v19 = [objc_alloc(SKUIWeakLinkedClassForString(&cfstr_Cnmonogrammer.isa v18))];
    v20 = v19;
    if (v12)
    {
      [v19 monogramForPersonWithFirstName:v7 lastName:v8];
    }

    else
    {
      [v19 silhouetteMonogram];
    }
    v17 = ;
  }

  return v17;
}

void sub_215D26E4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_215D28164(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

void sub_215D29488(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_215D2A33C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_215D2C86C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_215D2CAAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_215D2CCB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_215D2CFFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_215D2D55C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__48(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_215D2E4F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_215D2ED30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id __RequestImage(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v3 resourceName];
  v6 = v5;
  if (!v5)
  {
    v9 = [v4 requestIdentifierForViewElement:v3];
    if (v9)
    {
      v11 = [v4 resourceLoader];
      v7 = [v11 cachedResourceForRequestIdentifier:{objc_msgSend(v9, "unsignedIntegerValue")}];

      if (v7)
      {
        v12 = 0;
        goto LABEL_20;
      }
    }

    else
    {
      v14 = [v4 transientRequestIdentifierForViewElement:v3];
      if (v14)
      {
        v15 = [v4 resourceLoader];
        v7 = [v15 cachedResourceForRequestIdentifier:{objc_msgSend(v14, "unsignedIntegerValue")}];
      }

      else
      {
        v7 = 0;
      }

      v12 = [v4 dataConsumerForImageElement:v3];
      [v4 loadImageForImageElement:v3 reason:1 dataConsumer:v12];

      if (v7)
      {
        goto LABEL_20;
      }

      if (v12)
      {
        goto LABEL_16;
      }
    }

    v12 = [v4 dataConsumerForImageElement:v3];
LABEL_16:
    [v4 loadImageForImageElement:v3 reason:1 dataConsumer:v12];
    v16 = [v3 style];
    v17 = [v16 imageTreatment];
    v18 = SKUIImageTreatmentForString(v17);

    if (v18 == 7 || ![v12 isImagePlaceholderAvailable])
    {
      v7 = [v4 placeholderImageForImageElement:v3 dataConsumer:v12];
    }

    else
    {
      v19 = [v3 style];
      v20 = [v19 imagePlaceholderBackgroundColor];
      v21 = [v20 color];

      v7 = [v12 imagePlaceholderForColor:v21];
    }

    goto LABEL_20;
  }

  v7 = SKUIImageWithResourceName(v5);
  v8 = [v3 style];
  v9 = [v8 imageMaskColor];

  if (!v9)
  {
    goto LABEL_21;
  }

  v10 = [v9 color];

  if (v10)
  {
    [v9 color];
  }

  else
  {
    [v4 tintColor];
  }
  v12 = ;
  v13 = [v7 _flatImageWithColor:v12];

  v7 = v13;
LABEL_20:

LABEL_21:

  return v7;
}

void sub_215D3CBCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_215D3DA94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 56));
  objc_destroyWeak((v23 + 48));
  objc_destroyWeak(&location);
  objc_destroyWeak((v24 - 160));
  _Unwind_Resume(a1);
}

void sub_215D3E980(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void SKUIConfigureDownloadsCellView(void *a1, void *a2, void *a3, unsigned int a4, void *a5)
{
  v39[2] = *MEMORY[0x277D85DE8];
  v8 = a2;
  v32 = a5;
  v33 = a3;
  v9 = a1;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    SKUIConfigureDownloadsCellView_cold_1();
  }

  v37 = *MEMORY[0x277D740A8];
  v10 = v37;
  v11 = [MEMORY[0x277D74300] systemFontOfSize:14.0];
  v39[0] = v11;
  v38 = *MEMORY[0x277D740C0];
  v12 = v38;
  v13 = [MEMORY[0x277D75348] _labelColor];
  v39[1] = v13;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:&v37 count:2];

  v35[0] = v10;
  v15 = [MEMORY[0x277D74300] systemFontOfSize:12.0];
  v35[1] = v12;
  v36[0] = v15;
  v16 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.5];
  v36[1] = v16;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:v35 count:2];

  v18 = objc_alloc_init(MEMORY[0x277CCAB48]);
  v19 = [v8 valueForProperty:*MEMORY[0x277D6A0E0]];
  if (v19)
  {
    v20 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v19 attributes:v14];
    [v18 appendAttributedString:v20];
  }

  v31 = v19;
  v21 = [v8 valueForProperty:*MEMORY[0x277D69F70]];
  if (v21)
  {
    v22 = objc_alloc(MEMORY[0x277CCA898]);
    v23 = [MEMORY[0x277CCACA8] stringWithFormat:@" – %@", v21];
    v24 = [v22 initWithString:v23 attributes:v17];
    [v18 appendAttributedString:v24];
  }

  v25 = [v8 valueForProperty:*MEMORY[0x277D69FC8]];
  v26 = [v8 valueForProperty:*MEMORY[0x277D69FA0]];
  if ([v26 BOOLValue])
  {
    v27 = [v25 isEqual:*MEMORY[0x277D69F30]];
  }

  else
  {
    v27 = 0;
  }

  if ([v25 isEqualToString:*MEMORY[0x277D69F40]])
  {
    v28 = 2;
  }

  else if ([v25 isEqualToString:*MEMORY[0x277D69F60]])
  {
    v28 = 2;
  }

  else
  {
    v28 = v27;
  }

  [v9 setAttributedTitle:v18];
  v29 = SKUIDownloadsStatusString(v8, v32);

  [v9 setSubtitle:v29];
  v30 = [v8 valueForExternalProperty:*MEMORY[0x277D69E90]];
  [v30 doubleValue];
  [v9 setProgress:?];

  [v9 setImage:v33];
  [v9 setButtonType:v28];
  [v9 setIsPad:a4];
}

id SKUIDownloadsStatusString(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    SKUIDownloadsStatusString_cold_1();
  }

  v5 = [v3 valueForProperty:*MEMORY[0x277D69FC8]];
  if ([v5 isEqualToString:*MEMORY[0x277D69F40]])
  {
    if (v4)
    {
      v6 = @"DOWNLOAD_ERROR";
LABEL_18:
      v10 = [v4 localizedStringForKey:v6 inTable:@"Download"];
LABEL_25:
      v13 = v10;
      goto LABEL_26;
    }

    v9 = @"DOWNLOAD_ERROR";
    goto LABEL_24;
  }

  v7 = [v3 valueForProperty:*MEMORY[0x277D69FD8]];
  v8 = [v7 BOOLValue];

  if (v8)
  {
    if (v4)
    {
      v6 = @"RESTRICTED";
      goto LABEL_18;
    }

    v9 = @"RESTRICTED";
LABEL_24:
    v10 = [SKUIClientContext localizedStringForKey:v9 inBundles:0 inTable:@"Download"];
    goto LABEL_25;
  }

  if ([v5 isEqualToString:*MEMORY[0x277D69F60]])
  {
    if (v4)
    {
      v6 = @"TAP_TO_RESUME";
      goto LABEL_18;
    }

    v9 = @"TAP_TO_RESUME";
    goto LABEL_24;
  }

  if ([v5 isEqualToString:*MEMORY[0x277D69F68]])
  {
    if (v4)
    {
      v6 = @"WAITING";
      goto LABEL_18;
    }

    v9 = @"WAITING";
    goto LABEL_24;
  }

  v11 = [v3 valueForExternalProperty:*MEMORY[0x277D69E98]];
  if (![v11 length])
  {
    if (([v5 isEqualToString:*MEMORY[0x277D69F30]] & 1) == 0)
    {
      goto LABEL_40;
    }

    v15 = [v3 valueForExternalProperty:*MEMORY[0x277D69E78]];
    v16 = [v15 longLongValue];

    v17 = [v3 valueForExternalProperty:*MEMORY[0x277D69E80]];
    v18 = [v17 longLongValue];

    v19 = [v3 valueForExternalProperty:*MEMORY[0x277D69E90]];
    [v19 doubleValue];
    v21 = v20;

    v22 = v16 < 1 || v18 < 1;
    if (v22 && v21 < 0.01)
    {
      if (v4)
      {
        v23 = @"UNKNOWN_PROGRESS";
LABEL_42:
        v12 = [v4 localizedStringForKey:v23 inTable:@"Download"];
        goto LABEL_49;
      }

      v24 = @"UNKNOWN_PROGRESS";
      goto LABEL_48;
    }

    if (v16 >= v18 && v21 >= 1.0)
    {
LABEL_40:
      if (v4)
      {
        v23 = @"PROCESSING_DOWNLOAD";
        goto LABEL_42;
      }

      v24 = @"PROCESSING_DOWNLOAD";
LABEL_48:
      v12 = [SKUIClientContext localizedStringForKey:v24 inBundles:0 inTable:@"Download"];
      goto LABEL_49;
    }

    v25 = [v3 valueForExternalProperty:*MEMORY[0x277D69E88]];
    [v25 doubleValue];
    v27 = v26;

    if (v27 < 0.0)
    {
      v28 = [MEMORY[0x277CCA8E8] stringFromByteCount:v16 countStyle:1];
      v29 = [MEMORY[0x277CCA8E8] stringFromByteCount:v18 countStyle:0];
      if (v4)
      {
        [v4 localizedStringForKey:@"DATA_PROGRESS" inTable:@"Download"];
      }

      else
      {
        [SKUIClientContext localizedStringForKey:@"DATA_PROGRESS" inBundles:0 inTable:@"Download"];
      }
      v32 = ;
      v13 = [MEMORY[0x277CCACA8] stringWithValidatedFormat:v32 validFormatSpecifiers:@"%@%@" error:0, v28, v29];

      goto LABEL_50;
    }

    v30 = v16 & ~(v16 >> 63);
    if (v30 <= v18)
    {
      v31 = v18;
    }

    else
    {
      v31 = v16 & ~(v16 >> 63);
    }

    if (v4)
    {
      [v4 localizedStringForKey:@"TIME_FORMAT" inTable:@"Download"];
    }

    else
    {
      [SKUIClientContext localizedStringForKey:@"TIME_FORMAT" inBundles:0 inTable:@"Download"];
    }
    v33 = ;
    v34 = [MEMORY[0x277CCACA8] stringWithValidatedFormat:v33 validFormatSpecifiers:@"%d%d" error:0, v27 / 0x3CuLL, v27 % 0x3C];
    if (v16 < 1 || !v31)
    {
      if (v4)
      {
        [v4 localizedStringForKey:@"PERCENTAGE_PROGRESS" inTable:@"Download"];
      }

      else
      {
        [SKUIClientContext localizedStringForKey:@"PERCENTAGE_PROGRESS" inBundles:0 inTable:@"Download"];
      }
      v39 = ;
      v13 = [MEMORY[0x277CCACA8] stringWithValidatedFormat:v39 validFormatSpecifiers:@"%ld%@" error:0, (v21 * 100.0), v34];
      goto LABEL_75;
    }

    v43 = v33;
    v35 = [MEMORY[0x277D75418] currentDevice];
    v36 = [v35 userInterfaceIdiom];

    if ((v36 & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      if (v4)
      {
        v37 = @"TIME_PROGRESS_LONG";
LABEL_68:
        v38 = [v4 localizedStringForKey:v37 inTable:@"Download"];
LABEL_74:
        v39 = v38;
        v41 = [MEMORY[0x277CCA8E8] stringFromByteCount:v30 countStyle:1];
        v42 = [MEMORY[0x277CCA8E8] stringFromByteCount:v31 countStyle:0];
        v13 = [MEMORY[0x277CCACA8] stringWithValidatedFormat:v39 validFormatSpecifiers:@"%@%@%@" error:0, v41, v42, v34];

        v33 = v43;
LABEL_75:

        goto LABEL_50;
      }

      v40 = @"TIME_PROGRESS_LONG";
    }

    else
    {
      if (v4)
      {
        v37 = @"TIME_PROGRESS";
        goto LABEL_68;
      }

      v40 = @"TIME_PROGRESS";
    }

    v38 = [SKUIClientContext localizedStringForKey:v40 inBundles:0 inTable:@"Download"];
    goto LABEL_74;
  }

  v12 = v11;
LABEL_49:
  v13 = v12;
LABEL_50:

LABEL_26:

  return v13;
}

void sub_215D42CDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_215D42FA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__49(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void *__Block_byref_object_copy__50(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void sub_215D49688(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_215D49E04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_215D4A214(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_215D4A44C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__51(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_215D503BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_215D508EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_215D51720(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45)
{
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose(&a41, 8);
  _Block_object_dispose(&a45, 8);
  _Unwind_Resume(a1);
}

void sub_215D51C64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v11 - 80), 8);
  _Unwind_Resume(a1);
}

id SKUIFontForTextStyle(uint64_t a1)
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v2)
      {
        SKUIFontForTextStyle_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
      }
    }
  }

  v10 = _SKUIFontDescriptorGetFontForTextStyle(a1, *MEMORY[0x277D76838]);

  return v10;
}

id _SKUIFontDescriptorGetFontForTextStyle(uint64_t a1, void *a2)
{
  v30[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = a1 - 1;
  v5 = 0;
  v6 = 1.0;
  v7 = 1;
  v8 = MEMORY[0x277CC4A30];
  switch(v4)
  {
    case 0:
      goto LABEL_34;
    case 1:
      v5 = 0;
      v8 = MEMORY[0x277CC4A68];
      goto LABEL_34;
    case 2:
      v5 = 0;
      goto LABEL_17;
    case 3:
      v7 = 0;
      v5 = 0x8000;
LABEL_17:
      v8 = MEMORY[0x277CC4A38];
      goto LABEL_34;
    case 4:
      v5 = 0;
      goto LABEL_24;
    case 5:
      v7 = 0;
      v5 = 0x8000;
LABEL_24:
      v8 = MEMORY[0x277CC4A40];
      goto LABEL_34;
    case 6:
      v5 = 0;
      v8 = MEMORY[0x277CC4A70];
      goto LABEL_34;
    case 7:
      v5 = 0;
      goto LABEL_29;
    case 8:
      v7 = 0;
      v5 = 0x8000;
LABEL_29:
      v8 = MEMORY[0x277CC4A48];
      goto LABEL_34;
    case 9:
      v5 = 0;
      v8 = MEMORY[0x277CC4A48];
      v6 = 0.909090909;
      goto LABEL_34;
    case 10:
      v5 = 0;
      v8 = MEMORY[0x277CC4A50];
      goto LABEL_34;
    case 11:
      v5 = 0;
      v8 = MEMORY[0x277CC4A78];
      goto LABEL_34;
    case 12:
      v5 = 0;
      v8 = MEMORY[0x277CC4A58];
      goto LABEL_34;
    case 13:
      v5 = 0;
      v8 = MEMORY[0x277CC4A80];
      goto LABEL_34;
    case 14:
      v5 = 0;
      v8 = MEMORY[0x277CC4A98];
      goto LABEL_34;
    case 15:
      v5 = 0;
      v8 = MEMORY[0x277CC4A90];
      goto LABEL_34;
    case 16:
      v5 = 0;
      v8 = MEMORY[0x277CC4A88];
      goto LABEL_34;
    case 17:
      v5 = 0;
      goto LABEL_22;
    case 18:
    case 19:
      v7 = 0;
      v5 = 0x8000;
      goto LABEL_22;
    case 20:
      v7 = 0;
      v5 = 0x10000;
LABEL_22:
      v8 = MEMORY[0x277CC4A90];
      v6 = 0.933333333;
      goto LABEL_34;
    case 21:
      v5 = 0;
      v8 = MEMORY[0x277CC4A58];
      v6 = 2.05882353;
      goto LABEL_34;
    case 22:
      v5 = 0;
      v8 = MEMORY[0x277CC4A58];
      v6 = 1.35294118;
      goto LABEL_34;
    case 23:
      v5 = 0;
      v8 = MEMORY[0x277CC4A58];
      v6 = 1.29411765;
      goto LABEL_34;
    case 24:
      v5 = 0;
      v8 = MEMORY[0x277CC4A58];
      v6 = 1.17647059;
      goto LABEL_34;
    case 25:
      v5 = 0;
      goto LABEL_8;
    case 26:
    case 27:
      v7 = 0;
      v5 = 0x8000;
LABEL_8:
      v8 = MEMORY[0x277CC4A58];
      v6 = 1.05882353;
      goto LABEL_34;
    case 28:
      v5 = 0;
      v8 = MEMORY[0x277CC4AA0];
      goto LABEL_34;
    case 29:
      v5 = 0;
      v8 = MEMORY[0x277CC4AA8];
LABEL_34:
      v9 = *v8;
      if (!*v8)
      {
        goto LABEL_42;
      }

      if (_SKUIFontDescriptorGetCache_onceToken != -1)
      {
        _SKUIFontDescriptorGetFontForTextStyle_cold_1();
      }

      v10 = _SKUIFontDescriptorGetCache_fontDescriptorCache;
      v11 = [[_SKUIFontDescriptorCacheKey alloc] initWithTextStyle:v9 sizeCategory:v3];
      v12 = [v10 objectForKey:v11];
      if (!v12)
      {
        v13 = CTFontDescriptorCreateWithTextStyle();
        v14 = v13;
        if ((v7 & 1) == 0)
        {
          v15 = [v13 fontDescriptorWithSymbolicTraits:v5];

          v14 = v15;
        }

        v29 = *MEMORY[0x277D74338];
        v16 = *MEMORY[0x277D74388];
        v26[0] = *MEMORY[0x277D74398];
        v26[1] = v16;
        v27[0] = &unk_2828D2C90;
        v27[1] = &unk_2828D2CA8;
        v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:2];
        v28 = v17;
        v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v28 count:1];
        v30[0] = v18;
        v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:&v29 count:1];
        v12 = [v14 fontDescriptorByAddingAttributes:v19];

        [v10 setObject:v12 forKey:v11];
      }

      v20 = [v12 objectForKey:*MEMORY[0x277D74350]];
      [v20 floatValue];
      v22 = v6 * v21;
      v23 = ceilf(v22);

      v24 = [MEMORY[0x277D74300] fontWithDescriptor:v12 size:v23];

      break;
    default:
LABEL_42:
      v24 = 0;
      break;
  }

  return v24;
}

id SKUIFontLimitedPreferredFontForTextStyle(uint64_t a1, uint64_t a2)
{
  v23[13] = *MEMORY[0x277D85DE8];
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v4 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v4)
      {
        SKUIFontLimitedPreferredFontForTextStyle_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
      }
    }
  }

  v12 = [MEMORY[0x277D75128] sharedApplication];
  v13 = [v12 preferredContentSizeCategory];

  v14 = v13;
  v15 = *MEMORY[0x277D76838];
  v16 = [v14 isEqualToString:*MEMORY[0x277D76838]];
  v17 = MEMORY[0x277D76840];
  if (v16)
  {
    v18 = 4;
  }

  else if ([v14 isEqualToString:*MEMORY[0x277D76840]])
  {
    v18 = 3;
  }

  else if ([v14 isEqualToString:*MEMORY[0x277D76828]])
  {
    v18 = 5;
  }

  else if ([v14 isEqualToString:*MEMORY[0x277D76858]])
  {
    v18 = 2;
  }

  else if ([v14 isEqualToString:*MEMORY[0x277D76820]])
  {
    v18 = 6;
  }

  else if ([v14 isEqualToString:*MEMORY[0x277D76818]])
  {
    v18 = 7;
  }

  else if ([v14 isEqualToString:*MEMORY[0x277D76830]])
  {
    v18 = 1;
  }

  else if ([v14 isEqualToString:*MEMORY[0x277D76808]])
  {
    v18 = 8;
  }

  else if ([v14 isEqualToString:*MEMORY[0x277D76800]])
  {
    v18 = 9;
  }

  else if ([v14 isEqualToString:*MEMORY[0x277D767F8]])
  {
    v18 = 10;
  }

  else if ([v14 isEqualToString:*MEMORY[0x277D767F0]])
  {
    v18 = 11;
  }

  else if ([v14 isEqualToString:*MEMORY[0x277D767E8]])
  {
    v18 = 12;
  }

  else
  {
    v18 = 4;
  }

  if (v18 <= a2)
  {
    v19 = v14;
  }

  else
  {
    v23[0] = 0;
    v23[1] = *MEMORY[0x277D76830];
    v23[2] = *MEMORY[0x277D76858];
    v23[3] = *v17;
    v23[4] = v15;
    v23[5] = *MEMORY[0x277D76828];
    v23[6] = *MEMORY[0x277D76820];
    v23[7] = *MEMORY[0x277D76818];
    v23[8] = *MEMORY[0x277D76808];
    v23[9] = *MEMORY[0x277D76800];
    v23[10] = *MEMORY[0x277D767F8];
    v23[11] = *MEMORY[0x277D767F0];
    v23[12] = *MEMORY[0x277D767E8];
    v19 = v23[a2];
    for (i = 12; i != -1; --i)
    {
    }
  }

  v21 = _SKUIFontDescriptorGetFontForTextStyle(a1, v19);

  return v21;
}

id SKUIFontPreferredFontForTextStyle(uint64_t a1)
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v2)
      {
        SKUIFontPreferredFontForTextStyle_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
      }
    }
  }

  v10 = [MEMORY[0x277D75128] sharedApplication];
  v11 = [v10 preferredContentSizeCategory];

  v12 = _SKUIFontDescriptorGetFontForTextStyle(a1, v11);

  return v12;
}

void sub_215D577C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__52(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_215D58754(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t SKUIButtonViewTypeForString(void *a1)
{
  v1 = a1;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v2)
      {
        SKUIButtonViewTypeForString_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
      }
    }
  }

  if ([v1 isEqualToString:@"buy"])
  {
    v10 = 2;
  }

  else if ([v1 isEqualToString:@"download"])
  {
    v10 = 3;
  }

  else if ([v1 isEqualToString:@"link"])
  {
    v10 = 7;
  }

  else if ([v1 isEqualToString:@"image"])
  {
    v10 = 5;
  }

  else if ([v1 isEqualToString:@"imagetext"])
  {
    v10 = 6;
  }

  else
  {
    if ([v1 isEqualToString:@"textonly"])
    {
      goto LABEL_16;
    }

    if ([v1 isEqualToString:@"done"])
    {
      v10 = 8;
      goto LABEL_27;
    }

    if ([v1 isEqualToString:@"sample"])
    {
      v10 = 4;
      goto LABEL_27;
    }

    if ([v1 isEqualToString:@"back"])
    {
      v10 = 1;
      goto LABEL_27;
    }

    if ([v1 isEqualToString:@"cancel"])
    {
      v10 = 10;
      goto LABEL_27;
    }

    if ([v1 isEqualToString:@"destructive"])
    {
      v10 = 11;
      goto LABEL_27;
    }

    if ([v1 isEqualToString:@"disabled"])
    {
LABEL_16:
      v10 = 9;
    }

    else if ([v1 isEqualToString:@"play"])
    {
      v10 = 12;
    }

    else if ([v1 isEqualToString:@"thin"])
    {
      v10 = 13;
    }

    else
    {
      v10 = 0;
    }
  }

LABEL_27:

  return v10;
}

void sub_215D58BCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 48), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__53(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

BOOL SKUIIKViewElementTypeIsButton(unint64_t a1)
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v2)
      {
        SKUIIKViewElementTypeIsButton_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
      }
    }
  }

  result = 1;
  if (a1 > 0x32 || ((1 << a1) & 0x4000000003000) == 0)
  {
    return a1 == 141;
  }

  return result;
}

void sub_215D59BE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_215D5E760(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_215D5F048(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_215D5F6C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_215D605B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}