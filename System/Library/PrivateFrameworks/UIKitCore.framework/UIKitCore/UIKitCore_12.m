uint64_t sub_188B8BA58(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = &v2[OBJC_IVAR____UINavigationBarHostedViewWrapper_model];
  v7 = *&v2[OBJC_IVAR____UINavigationBarHostedViewWrapper_model + 72];
  v8 = *&v2[OBJC_IVAR____UINavigationBarHostedViewWrapper_model + 48];
  v37[2] = *&v2[OBJC_IVAR____UINavigationBarHostedViewWrapper_model + 32];
  v37[3] = v8;
  v37[4] = *&v2[OBJC_IVAR____UINavigationBarHostedViewWrapper_model + 64];
  v9 = *&v2[OBJC_IVAR____UINavigationBarHostedViewWrapper_model + 16];
  v37[0] = *&v2[OBJC_IVAR____UINavigationBarHostedViewWrapper_model];
  v37[1] = v9;
  v10 = *(a1 + 16);
  *v6 = *a1;
  *(v6 + 1) = v10;
  v11 = *(a1 + 48);
  *(v6 + 2) = *(a1 + 32);
  *(v6 + 3) = v11;
  *(v6 + 4) = *(a1 + 64);

  sub_188B8B3D0(a1, v35);
  sub_188B8BA00(v37);
  v12 = *&v2[OBJC_IVAR____UINavigationBarHostedViewWrapper_itemView];
  v13 = *a1;
  sub_188A34624(0, &qword_1ED48F680);
  v14 = v12;
  v15 = v13;
  v16 = sub_18A4A7C88();

  v17 = 0;
  if ((v16 & 1) == 0)
  {
    v18 = objc_opt_self();
    v19 = swift_allocObject();
    *(v19 + 16) = v3;
    v20 = *a1;
    *(v19 + 40) = *(a1 + 16);
    v21 = *(a1 + 48);
    *(v19 + 56) = *(a1 + 32);
    *(v19 + 72) = v21;
    *(v19 + 88) = *(a1 + 64);
    *(v19 + 24) = v20;
    v22 = swift_allocObject();
    v17 = sub_188FE6330;
    *(v22 + 16) = sub_188FE6330;
    *(v22 + 24) = v19;
    aBlock[4] = sub_188E3FE50;
    aBlock[5] = v22;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_188A4A968;
    aBlock[3] = &block_descriptor_190;
    v23 = _Block_copy(aBlock);
    sub_188B8B3D0(a1, v35);
    v24 = v3;

    [v18 performWithoutAnimation_];
    _Block_release(v23);
    LOBYTE(v18) = swift_isEscapingClosureAtFileLocation();

    if (v18)
    {
      __break(1u);
LABEL_8:
      __break(1u);
      return result;
    }
  }

  if (a2)
  {
    v26 = *(a1 + 72);

    sub_188FE499C(v7, v26, v35);

    v27 = swift_allocObject();
    *(v27 + 16) = v3;
    v28 = v3;
    sub_188FE4298(v35, sub_188FE6688, v27, 0, 0);

    sub_188A3F5FC(v35, &qword_1EA9362D0);
    return sub_188A55B8C(v17);
  }

  v29 = objc_opt_self();
  v30 = swift_allocObject();
  *(v30 + 16) = v3;
  v31 = swift_allocObject();
  *(v31 + 16) = sub_188B8B9F8;
  *(v31 + 24) = v30;
  v35[4] = sub_188E3FE50;
  v35[5] = v31;
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 1107296256;
  v35[2] = sub_188A4A968;
  v35[3] = &block_descriptor_200;
  v32 = _Block_copy(v35);
  v33 = v3;

  [v29 performWithoutAnimation_];
  _Block_release(v32);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  sub_188A55B8C(v17);

  if (isEscapingClosureAtFileLocation)
  {
    goto LABEL_8;
  }

  return result;
}

uint64_t sub_188B8BEA4()
{

  return MEMORY[0x1EEE6BDD0](v0, 104, 7);
}

id sub_188B8BEFC(char *a1)
{
  v2 = &a1[OBJC_IVAR____UINavigationBarHostedViewWrapper_model];
  [a1 setFrame_];
  [a1 setAlpha_];
  v3 = [a1 layer];
  v4 = sub_18A4A2D28();
  v5 = sub_18A4A7258();
  [v3 setValue:v4 forKeyPath:v5];

  v6 = OBJC_IVAR____UINavigationBarHostedViewWrapper_itemView;
  v7 = *&a1[OBJC_IVAR____UINavigationBarHostedViewWrapper_itemView];
  [a1 bounds];
  [v7 setFrame_];

  v8 = *&a1[v6];

  return [v8 layoutIfNeeded];
}

uint64_t sub_188B8C0E8(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v2 = a2;
  v3 = result;
  if (*(result + 16) == *(a2 + 16))
  {
    v4 = 0;
    v5 = 1 << *(result + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(result + 64);
    v8 = (v5 + 63) >> 6;
    while (1)
    {
      while (1)
      {
        if (!v7)
        {
          v10 = v4;
          while (1)
          {
            v4 = v10 + 1;
            if (__OFADD__(v10, 1))
            {
              break;
            }

            if (v4 >= v8)
            {
              return 1;
            }

            v11 = *(v3 + 64 + 8 * v4);
            ++v10;
            if (v11)
            {
              v9 = __clz(__rbit64(v11));
              v7 = (v11 - 1) & v11;
              goto LABEL_13;
            }
          }

          __break(1u);
          return result;
        }

        v9 = __clz(__rbit64(v7));
        v7 &= v7 - 1;
LABEL_13:
        v12 = v9 | (v4 << 6);
        v13 = *(*(v3 + 48) + 8 * v12);
        sub_188C2F56C(*(v3 + 56) + 192 * v12, &v34);
        if (v35 == 254)
        {
          return 1;
        }

        v14 = sub_188A403F4(v13);
        if ((v15 & 1) == 0)
        {
          goto LABEL_31;
        }

        sub_188C2F56C(*(v2 + 56) + 192 * v14, v32);
        sub_188A3F29C(v32, v25, &qword_1EA9362D0);
        sub_188A3F29C(&v34, &v27, &qword_1EA9362D0);
        if (v26 == 255)
        {
          if (v31[24] != 255)
          {
            goto LABEL_29;
          }

          sub_188A3F5FC(v25, &qword_1EA9362D0);
        }

        else
        {
          sub_188A3F29C(v25, v24, &qword_1EA9362D0);
          if (v31[24] == 255)
          {
            sub_188AAFF20(v24);
LABEL_29:
            sub_188A3F5FC(v25, &qword_1EA9386F8);
LABEL_30:
            sub_188C2FA50(v32);
LABEL_31:
            sub_188C2FA50(&v34);
            return 0;
          }

          v21 = v29;
          v22 = v30;
          v23[0] = *v31;
          *(v23 + 9) = *&v31[9];
          v19 = v27;
          v20 = v28;
          v16 = sub_188C2F914(v24, &v19);
          sub_188AAFF20(&v19);
          sub_188AAFF20(v24);
          sub_188A3F5FC(v25, &qword_1EA9362D0);
          if ((v16 & 1) == 0)
          {
            goto LABEL_30;
          }
        }

        sub_188A3F29C(&v33, v25, &qword_1EA9362D0);
        sub_188A3F29C(&v36, &v27, &qword_1EA9362D0);
        if (v26 != 255)
        {
          break;
        }

        sub_188C2FA50(v32);
        sub_188C2FA50(&v34);
        v2 = a2;
        if (v31[24] != 255)
        {
          goto LABEL_33;
        }

        result = sub_188A3F5FC(v25, &qword_1EA9362D0);
      }

      sub_188A3F29C(v25, v24, &qword_1EA9362D0);
      v2 = a2;
      if (v31[24] == 255)
      {
        break;
      }

      v21 = v29;
      v22 = v30;
      v23[0] = *v31;
      *(v23 + 9) = *&v31[9];
      v19 = v27;
      v20 = v28;
      v17 = sub_188C2F914(v24, &v19);
      sub_188AAFF20(&v19);
      sub_188C2FA50(v32);
      sub_188C2FA50(&v34);
      sub_188AAFF20(v24);
      result = sub_188A3F5FC(v25, &qword_1EA9362D0);
      if ((v17 & 1) == 0)
      {
        return 0;
      }
    }

    sub_188C2FA50(v32);
    sub_188C2FA50(&v34);
    sub_188AAFF20(v24);
LABEL_33:
    sub_188A3F5FC(v25, &qword_1EA9386F8);
  }

  return 0;
}

uint64_t sub_188B8D46C(float64x2_t a1, float64_t a2, float64x2_t a3, float64_t a4)
{
  v5 = *(v4 + OBJC_IVAR____UIScrollPocketInteraction_implementation);
  v6 = (v5 + OBJC_IVAR____TtC5UIKitP33_EC84B326E0A5500F8664F11F62EDB99314Implementation_insets);
  v7 = *(v5 + OBJC_IVAR____TtC5UIKitP33_EC84B326E0A5500F8664F11F62EDB99314Implementation_insets);
  v8 = *(v5 + OBJC_IVAR____TtC5UIKitP33_EC84B326E0A5500F8664F11F62EDB99314Implementation_insets + 16);
  *v6 = a1.f64[0];
  v6[1] = a2;
  v6[2] = a3.f64[0];
  v6[3] = a4;
  a1.f64[1] = a2;
  a3.f64[1] = a4;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v7, a1), vceqq_f64(v8, a3)))) & 1) == 0 && *(v5 + OBJC_IVAR____TtC5UIKitP33_EC84B326E0A5500F8664F11F62EDB99314Implementation_targetedReceivers + 8))
  {
    v9 = *(v5 + OBJC_IVAR____TtC5UIKitP33_EC84B326E0A5500F8664F11F62EDB99314Implementation_targetedReceivers);

    sub_1890A4410(v5, v9);
  }

  return result;
}

void _UICoreMaterialUpdateVibrancyEffectDescriptor(uint64_t a1, unint64_t a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = _convertStyleToRecipe(a1, v8);
  v10 = [v8 reducedTransperancy];

  v11 = _lookupVibrancyEffectDescription(v9, a2, v10);

  _UICoreMaterialUpdateVibrancyEffectDescriptorInternal(v11, v7);
}

id _lookupVibrancyEffectDescription(void *a1, unint64_t a2, uint64_t a3)
{
  v20[2] = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = *MEMORY[0x1E6997F38];
  if (a2 <= 7)
  {
    v7 = **(&unk_1E7116190 + a2);

    v6 = v7;
  }

  v8 = *MEMORY[0x1E6997F28];
  if (a2 <= 7)
  {
    v9 = **(&unk_1E71161D0 + a2);

    v8 = v9;
  }

  v10 = 0;
  if (v5)
  {
    if (v6 && v8 != 0)
    {
      v12 = [[_UIVibrancyStyleKey alloc] initWithRecipe:v5 vibrancyStyle:a2 category:v8];
      v13 = [0 objectForKeyedSubscript:v12];
      if (v13)
      {
        v10 = v13;
      }

      else
      {
        v14 = *MEMORY[0x1E6997F80];
        v19[0] = *MEMORY[0x1E6997F78];
        v19[1] = v14;
        v20[0] = MEMORY[0x1E695E118];
        v15 = [MEMORY[0x1E696AD98] numberWithBool:a3];
        v20[1] = v15;
        v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:2];

        v10 = MTVisualStylingCreateDictionaryRepresentation();

        if (!v10)
        {
          v17 = 0;
          goto LABEL_14;
        }
      }

      v17 = [MEMORY[0x1E695DF90] dictionaryWithObject:v10 forKey:v12];
LABEL_14:
    }
  }

  return v10;
}

void _UICoreMaterialUpdateVibrancyEffectDescriptorInternal(void *a1, void *a2)
{
  v45 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v36 = a2;
  v35 = v3;
  [v3 objectForKeyedSubscript:@"filters"];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = v41 = 0u;
  v4 = [obj countByEnumeratingWithState:&v38 objects:v44 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v39;
    v7 = *MEMORY[0x1E6979D78];
    do
    {
      v8 = 0;
      do
      {
        if (*v39 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v38 + 1) + 8 * v8);
        v10 = [v9 objectForKeyedSubscript:@"type"];
        if ([v10 isEqualToString:v7])
        {
          _addColorMatrix(v36, v9, 1);
        }

        else if (os_variant_has_internal_diagnostics())
        {
          v12 = __UIFaultDebugAssertLog();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
          {
            *buf = 138412290;
            v43 = v10;
            _os_log_fault_impl(&dword_188A29000, v12, OS_LOG_TYPE_FAULT, "CoreMaterial description for vibrancy effect returned unknown filterType %@", buf, 0xCu);
          }
        }

        else
        {
          v11 = *(__UILogGetCategoryCachedImpl("Assert", &_UICoreMaterialUpdateVibrancyEffectDescriptorInternal___s_category) + 8);
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v43 = v10;
            _os_log_impl(&dword_188A29000, v11, OS_LOG_TYPE_ERROR, "CoreMaterial description for vibrancy effect returned unknown filterType %@", buf, 0xCu);
          }
        }

        ++v8;
      }

      while (v5 != v8);
      v13 = [obj countByEnumeratingWithState:&v38 objects:v44 count:16];
      v5 = v13;
    }

    while (v13);
  }

  v14 = [v35 objectForKeyedSubscript:@"tintColor"];
  v15 = v14;
  if (v14)
  {
    v16 = v14;
    v17 = [v16 objectForKeyedSubscript:@"alpha"];
    if (v17)
    {
      v18 = [v16 objectForKeyedSubscript:@"white"];
      if (v18)
      {
        v19 = v18;
        [v18 doubleValue];
        v21 = v20;
        [v17 doubleValue];
        v23 = [UIColor colorWithWhite:v21 alpha:v22];
      }

      else
      {
        v19 = [v16 objectForKeyedSubscript:@"red"];
        v24 = [v16 objectForKeyedSubscript:@"green"];
        v25 = [v16 objectForKeyedSubscript:@"blue"];
        v26 = v25;
        if (v19 && v24 && v25)
        {
          [v19 doubleValue];
          v28 = v27;
          [v24 doubleValue];
          v30 = v29;
          [v26 doubleValue];
          v32 = v31;
          [v17 doubleValue];
          v23 = [UIColor colorWithRed:v28 green:v30 blue:v32 alpha:v33];
        }

        else
        {

          v23 = 0;
        }
      }
    }

    else
    {
      v23 = 0;
    }

    if (v23)
    {
      v34 = objc_alloc_init(_UITintColorViewEntry);
      [(_UITintColorViewEntry *)v34 setTintColor:v23];
      [v36 addViewEffect:v34];
      [v36 setTextShouldRenderWithTintColor:1];
    }
  }
}

void _addColorMatrix(void *a1, void *a2, int a3)
{
  v30[1] = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = *MEMORY[0x1E6979AC0];
  v7 = a2;
  v8 = [v7 objectForKeyedSubscript:v6];
  v9 = _configDictionaryByRemovingKey(v7, v6);

  if (a3)
  {
    [v9 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E69799C0]];
  }

  else
  {
    v10 = *(MEMORY[0x1E6979280] + 48);
    v24 = *(MEMORY[0x1E6979280] + 32);
    v25 = v10;
    v26 = *(MEMORY[0x1E6979280] + 64);
    v11 = *(MEMORY[0x1E6979280] + 16);
    v22 = *MEMORY[0x1E6979280];
    v23 = v11;
    v12 = [MEMORY[0x1E696B098] valueWithCAColorMatrix:&v22];
    v13 = [v8 isEqualToValue:v12];

    if (v13)
    {
      goto LABEL_11;
    }
  }

  v29 = v6;
  v30[0] = v8;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:&v29 count:1];
  v27 = v6;
  v15 = v8;
  if ((a3 & 1) == 0)
  {
    v16 = *(MEMORY[0x1E6979280] + 48);
    v24 = *(MEMORY[0x1E6979280] + 32);
    v25 = v16;
    v26 = *(MEMORY[0x1E6979280] + 64);
    v17 = *(MEMORY[0x1E6979280] + 16);
    v22 = *MEMORY[0x1E6979280];
    v23 = v17;
    v15 = [MEMORY[0x1E696B098] valueWithCAColorMatrix:&v22];
  }

  v28 = v15;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
  if ((a3 & 1) == 0)
  {
  }

  v19 = [_UIVisualEffectFilterEntry alloc];
  v20 = MEMORY[0x1E6979D78];
  if (!a3)
  {
    v20 = MEMORY[0x1E6979880];
  }

  v21 = [(_UIVisualEffectFilterEntry *)v19 initWithFilterType:*v20 configurationValues:v9 requestedValues:v14 identityValues:v18];
  [v5 addFilterEntry:v21];

LABEL_11:
}

uint64_t _calculateVisibleIndicators(void *a1, uint64_t a2, double *a3, double *a4, double a5)
{
  v9 = a1;
  v10 = [v9 store];
  v11 = [v10 objectAtIndex:a2];

  v12 = [v9 direction];
  [v9 _indicatorSizeForObject:v11];
  v14 = v13;
  v16 = v15;

  if (v12 >= 2)
  {
    v17 = v16;
  }

  else
  {
    v17 = v14;
  }

  v18 = *a4;
  if (a3)
  {
    v19 = fmax(*a3, v17);
    *a3 = v19;
    v18 = v18 - (v19 + a5);
  }

  v20 = v17 + a5;
  v21 = [v11 endIndex];
  v22 = [v11 startIndex];
  v23 = llround(v18 / v20);
  if (v21 - v22 >= v23)
  {
    v24 = v23;
  }

  else
  {
    v24 = v21 - v22;
  }

  *a4 = *a4 - v20 * v24;

  return v24;
}

id _UICollectionViewRequestingCellOrSupplementaryView()
{
  v0 = _UIGetCurrentFallbackView();
  if (v0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v1 = v0;
      if ([v1 _isRequestingCellOrSupplementary])
      {
        goto LABEL_6;
      }
    }
  }

  v1 = 0;
LABEL_6:

  return v1;
}

void _UIDiffableDataSourceCommonInit(void *a1)
{
  v5 = a1;
  [v5 setTableViewDefaultRowAnimation:100];
  v1 = dispatch_queue_create("com.apple.uikit.datasource.diffing", 0);
  v2 = *(v5 + 28);
  *(v5 + 28) = v1;

  v3 = dispatch_queue_create("com.apple.uikit.datasource.diffing.snapshot", 0);
  v4 = *(v5 + 30);
  *(v5 + 30) = v3;

  *(v5 + 17) = 0;
  *(v5 + 18) = 0;
}

id sub_188B8EEB8()
{
  v1 = *MEMORY[0x1E69796E8];
  xmmword_1EA931160 = xmmword_18A665A80;
  *algn_1EA931170 = xmmword_18A665A80;
  xmmword_1EA931180 = xmmword_18A665A80;
  unk_1EA931190 = xmmword_18A665A80;
  qword_1EA9311A0 = v1;
  word_1EA9311A8 = 0;
  sub_188A85484(0xC000000000000010);
  sub_188A854E0(0xF000000000000007);
  sub_188A85484(0xC000000000000010);
  sub_188A854E0(0xF000000000000007);
  sub_188A85484(0xC000000000000010);
  sub_188A854E0(0xF000000000000007);

  return v1;
}

void sub_188B8F2E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t _searchBarShouldSeparateLayouts()
{
  result = UISearchBarUsesModernAppearance();
  if (result)
  {
    if (qword_1ED49B1A0 != -1)
    {
      dispatch_once(&qword_1ED49B1A0, &__block_literal_global_1226);
    }

    if (byte_1ED49B190)
    {
      return 0;
    }

    else
    {
      LODWORD(result) = _UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_UISearchBarSeparateLayouts, @"UISearchBarSeparateLayouts");
      if (byte_1ED48AA5C)
      {
        return 1;
      }

      else
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t __UISearchBarUsesModernAppearance_block_invoke()
{
  result = dyld_program_sdk_at_least();
  _MergedGlobals_19_1 = result;
  return result;
}

void ___searchBarShouldSeparateLayouts_block_invoke()
{
  if ((dyld_program_sdk_at_least() & 1) == 0)
  {
    v1 = _UIMainBundleIdentifier();
    if ([v1 isEqualToString:@"com.gasbuddymobile.gasbuddy"])
    {
      v0 = 1;
    }

    else
    {
      v0 = [v1 isEqualToString:@"com.forever21.Forever21"];
    }

    byte_1ED49B190 = v0;
  }
}

uint64_t UISearchBarUsesModernAppearance()
{
  if (qword_1ED49B198 != -1)
  {
    dispatch_once(&qword_1ED49B198, &__block_literal_global_72);
  }

  return _MergedGlobals_19_1 & ~byte_1ED49B189 & 1;
}

unint64_t sub_188B90920@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  if (v2[2])
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  if (v2[1])
  {
    v4 = 256;
  }

  else
  {
    v4 = 0;
  }

  return sub_188B9498C(a1, v4 | *v2 | v3, a2);
}

uint64_t sub_188B90950(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _Glass._GlassVariant(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_188B9170C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

double _UIViewHorizontalLayoutMarginsAdjustedForReadableWidth(void *a1, char a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10)
{
  v19 = a1;
  v34 = _UIViewResolvedMargins(v19, a7, a8, a9, a10);
  v20 = UIEdgeInsetsMax(a2 & 0xA, 0.0, 0.0, 0.0, 0.0, a3);
  v22 = v21;
  v24 = v23;
  v26 = v25;
  if (_UIViewSafeAreaWidthExceedsReadableWidth(v19, a3, a4, a5, a6))
  {
    [v19 bounds];
    CGRectGetWidth(v35);
    __UIViewReadableWidthForFont(0);
    UIFloorToViewScale(v19);
    v27 = UIEdgeInsetsMax(10, v20, v22, v24, v26, 0.0);
    v31 = UIEdgeInsetsMax(10, v27, v28, v29, v30, v34);
  }

  else
  {
    v31 = UIEdgeInsetsAdd(10, v20, v22, v24, v26, v34);
  }

  v32 = v31;

  return v32;
}

double __UIViewReadableWidthForFont(void *a1)
{
  v1 = a1;
  v2 = [off_1E70ECC18 layoutMetrics];
  [v2 readableWidthForFont:v1];
  v4 = v3;

  return ceil(v4 * 0.125) * 8.0;
}

BOOL _UIViewSafeAreaWidthExceedsReadableWidth(void *a1, double a2, double a3, double a4, double a5)
{
  [a1 bounds];
  v7 = fmax(CGRectGetWidth(v12) - (a3 + a5), 0.0);
  v8 = __UIViewReadableWidthForFont(0);
  v9 = _UIInternalPreferenceUsesDefault(&_UIInternalPreference_ReadableWidthMinimumInsetThreshold, @"ReadableWidthMinimumInsetThreshold", _UIInternalPreferenceUpdateDouble);
  v10 = *&qword_1ED48B7C8;
  if (v9)
  {
    v10 = 88.0;
  }

  return v7 - v8 > v10;
}

double _UIViewHorizontalReadableContentInsetsForView(void *a1)
{
  v1 = a1;
  [v1 safeAreaInsets];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = (v1[12] >> 59) & 0xFLL;
  [v1 _rawLayoutMargins];
  v15 = _UIViewHorizontalLayoutMarginsAdjustedForReadableWidth(v1, v10, v3, v5, v7, v9, v11, v12, v13, v14);

  return v15;
}

double _UIViewReadableWidthForView(void *a1)
{
  v1 = a1;
  v2 = _UIViewHorizontalReadableContentInsetsForView(v1);
  v4 = v3;
  v6 = v5;
  v8 = v7;
  [v1 bounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v18.origin.x = v4 + v10;
  v18.origin.y = v2 + v12;
  v18.size.width = v14 - (v4 + v8);
  v18.size.height = v16 - (v2 + v6);
  return fmax(CGRectGetWidth(v18), 0.0);
}

void __CommonStyleRegistration_block_invoke()
{
  v0 = [_UIVisualStyleRegistry registryForIdiom:2];
  v1 = objc_opt_class();
  [v0 registerVisualStyleClass:v1 forStylableClass:objc_opt_class()];

  v2 = [_UIVisualStyleRegistry registryForIdiom:8];
  v3 = objc_opt_class();
  [v2 registerVisualStyleClass:v3 forStylableClass:objc_opt_class()];

  v4 = +[_UIVisualStyleRegistry defaultRegistry];
  v5 = objc_opt_class();
  [v4 registerVisualStyleClass:v5 forStylableClass:objc_opt_class()];

  v6 = objc_opt_class();
  v7 = +[_UIVisualStyleRegistry defaultRegistry];
  [v7 registerVisualStyleClass:v6 forStylableClass:objc_opt_class()];
}

void CommonStyleRegistration(void *a1)
{
  v1 = a1;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __CommonStyleRegistration_block_invoke;
  block[3] = &unk_1E70F3590;
  v5 = v1;
  v2 = CommonStyleRegistration_onceToken;
  v3 = v1;
  if (v2 != -1)
  {
    dispatch_once(&CommonStyleRegistration_onceToken, block);
  }
}

unint64_t sub_188B9498C@<X0>(void *a1@<X0>, int a2@<W1>, uint64_t *a3@<X8>)
{
  v3 = a2;
  v6 = BYTE2(a2) & 1;
  v7 = type metadata accessor for _Glass._GlassVariant(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for _Glass(0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = (&v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  if ([a1 userInterfaceIdiom] != 3)
  {
    if (v3)
    {
      v17 = [objc_opt_self() _searchFieldDisabledBackgroundColor];
    }

    else if ([a1 _containedInBarBackgroundMaterial])
    {
      v17 = [objc_opt_self() clearColor];
    }

    else
    {
      if ((v3 & 0x100) != 0)
      {
        goto LABEL_2;
      }

      v19 = [a1 _monochromaticTreatment];
      v20 = [objc_opt_self() _glassMonochromaticTreatment];
      v21 = objc_opt_self();
      if (v19 == v20)
      {
        v17 = [v21 clearColor];
      }

      else
      {
        v17 = [v21 tertiarySystemFillColor];
      }
    }

    v18 = v17;
    result = sub_188EA580C();
    a3[3] = result;
    a3[4] = &protocol witness table for UIColor;
    *a3 = v18;
    return result;
  }

LABEL_2:
  if (qword_1ED48E920 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v7, qword_1ED48E930);
  sub_188AD8C44(v14, v9, type metadata accessor for _Glass._GlassVariant);
  _Glass.init(_:smoothness:)(v9, v13, 0.0);
  a3[3] = v10;
  a3[4] = &protocol witness table for _Glass;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a3);
  sub_188AD8C44(v13, boxed_opaque_existential_0, type metadata accessor for _Glass);
  *(boxed_opaque_existential_0 + *(v10 + 52)) = v6;
  return sub_188B7533C(v13);
}

void sub_188B95BAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void __getAFDictationConnectionClass_block_invoke(uint64_t a1)
{
  AssistantServicesLibrary_0();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("AFDictationConnection");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getAFDictationConnectionClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getAFDictationConnectionClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"UIDictationConnection.m" lineNumber:58 description:{@"Unable to find class %s", "AFDictationConnection"}];

    __break(1u);
  }
}

void sub_188B9603C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getAFPreferencesClass_block_invoke(uint64_t a1)
{
  AssistantServicesLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("AFPreferences");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getAFPreferencesClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getAFPreferencesClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"UIKeyboardInputModeController.m" lineNumber:122 description:{@"Unable to find class %s", "AFPreferences"}];

    __break(1u);
  }
}

void __getAFPreferencesClass_block_invoke_0(uint64_t a1)
{
  AssistantServicesLibrary_0();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("AFPreferences");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1ED49F238 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getAFPreferencesClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"UIDictationConnection.m" lineNumber:63 description:{@"Unable to find class %s", "AFPreferences"}];

    __break(1u);
  }
}

void __getAFPreferencesClass_block_invoke_1(uint64_t a1)
{
  AssistantServicesLibrary_1();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("AFPreferences");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getAFPreferencesClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getAFPreferencesClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"UIDictationController.m" lineNumber:230 description:{@"Unable to find class %s", "AFPreferences"}];

    __break(1u);
  }
}

void *AssistantServicesLibrary()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!AssistantServicesLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __AssistantServicesLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E710DEF0;
    v6 = 0;
    AssistantServicesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = AssistantServicesLibraryCore_frameworkLibrary;
  if (!AssistantServicesLibraryCore_frameworkLibrary)
  {
    v0 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *AssistantServicesLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"UIKeyboardInputModeController.m" lineNumber:121 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

void *AssistantServicesLibrary_0()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!AssistantServicesLibraryCore_frameworkLibrary_0)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __AssistantServicesLibraryCore_block_invoke_0;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E7114C18;
    v6 = 0;
    AssistantServicesLibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  v0 = AssistantServicesLibraryCore_frameworkLibrary_0;
  if (!AssistantServicesLibraryCore_frameworkLibrary_0)
  {
    v0 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *AssistantServicesLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"UIDictationConnection.m" lineNumber:56 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

void *AssistantServicesLibrary_1()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!AssistantServicesLibraryCore_frameworkLibrary_1)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __AssistantServicesLibraryCore_block_invoke_1;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E7115428;
    v6 = 0;
    AssistantServicesLibraryCore_frameworkLibrary_1 = _sl_dlopen();
  }

  v0 = AssistantServicesLibraryCore_frameworkLibrary_1;
  if (!AssistantServicesLibraryCore_frameworkLibrary_1)
  {
    v0 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *AssistantServicesLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"UIDictationController.m" lineNumber:227 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

void *AssistantServicesLibrary_2()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!AssistantServicesLibraryCore_frameworkLibrary_2)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __AssistantServicesLibraryCore_block_invoke_2;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E7115988;
    v6 = 0;
    AssistantServicesLibraryCore_frameworkLibrary_2 = _sl_dlopen();
  }

  v0 = AssistantServicesLibraryCore_frameworkLibrary_2;
  if (!AssistantServicesLibraryCore_frameworkLibrary_2)
  {
    v0 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *AssistantServicesLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"UIDictationUtilities.m" lineNumber:59 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

void sub_188B96F28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getCXCallObserverClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!qword_1ED4988E0)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __CallKitLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E71153F8;
    v8 = 0;
    qword_1ED4988E0 = _sl_dlopen();
  }

  if (!qword_1ED4988E0)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *CallKitLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"UIDictationController.m" lineNumber:239 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("CXCallObserver");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getCXCallObserverClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"UIDictationController.m" lineNumber:240 description:{@"Unable to find class %s", "CXCallObserver"}];

LABEL_10:
    __break(1u);
  }

  qword_1ED4988D8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

double _defaultHeightForBarMetrics(uint64_t a1, int a2)
{
  if (_UIBarsUseNewPadHeights())
  {
    v4 = _UISolariumEnabled();
    result = 36.0;
    if (v4)
    {
      return 44.0;
    }
  }

  else
  {
    result = 30.0;
    if (a1 != 1 && a1 != 102)
    {
      v6 = _UISolariumEnabled();
      result = 44.0;
      if (a2)
      {
        result = 48.0;
      }

      if (!v6)
      {
        return 36.0;
      }
    }
  }

  return result;
}

void ___forceReadableWidthBehaviorPreference_block_invoke()
{
  v0 = _UIKitPreferencesOnce();
  v3 = [v0 objectForKey:@"UISearchBarForceReadableWidthPreference"];

  v1 = v3;
  if (v3 || ([MEMORY[0x1E695E000] standardUserDefaults], v2 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v2, "objectForKey:", @"UISearchBarForceReadableWidthPreference"), v4 = objc_claimAutoreleasedReturnValue(), v2, (v1 = v4) != 0))
  {
    v5 = v1;
    _forceReadableWidthBehaviorPreference_pref = [v1 BOOLValue];
  }
}

uint64_t sub_188B98DF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v9 = result;
    sub_188A8E160(v7);
    sub_188A83298();
    (*(v5 + 8))(v7, a3);
    v10 = sub_188A81128();
    if (v10)
    {
      v11 = v10;
      type metadata accessor for UIAnimatableProperty();

      swift_getWitnessTable();
      sub_188B98F8C(v9, a1, v11);
    }

    if (*(v9 + *(*v9 + 184)) == 1)
    {
      sub_188A81F9C();
    }
  }

  return result;
}

void sub_188B98F8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_5;
  }

  v7 = Strong;
  v8 = _UISolariumEnabled();

  if (v8 && v7 != a2)
  {
    __break(1u);
LABEL_5:
    swift_weakAssign();
  }

  v9 = OBJC_IVAR____TtCE5UIKitCSo6UIView29AnimatablePropertyTransformer_runningProgresses;
  swift_beginAccess();
  sub_188B99788(a1);
  swift_endAccess();
  swift_unknownObjectRelease();
  if (*(*(a3 + v9) + 16))
  {
    return;
  }

  v10 = *(a3 + OBJC_IVAR____TtCE5UIKitCSo6UIView29AnimatablePropertyTransformer_presentationValueChangedCallback);
  v11 = *(a3 + OBJC_IVAR____TtCE5UIKitCSo6UIView29AnimatablePropertyTransformer_presentationValueChangedCallback + 8);
  v12 = objc_opt_self();
  sub_188A52E38(v10);
  v13 = [v12 currentThread];
  v14 = [v13 threadDictionary];

  *&v43 = 0xD000000000000022;
  *(&v43 + 1) = 0x800000018A68D0A0;
  [v14 __swift_setObject_forKeyedSubscript_];

  swift_unknownObjectRelease();
  if (*(a3 + OBJC_IVAR____TtCE5UIKitCSo6UIView29AnimatablePropertyTransformer_unsafe) != 1)
  {
    v19 = sub_188A81190(MEMORY[0x1E69E7CC0]);
    if (pthread_main_np() != 1)
    {
      v20 = [v12 currentThread];
      v15 = [v20 threadDictionary];

      v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934CB0);
      v22 = objc_allocWithZone(v21);
      *&v22[*((*MEMORY[0x1E69E7D40] & *v22) + 0x58)] = v19;
      v55.receiver = v22;
      v55.super_class = v21;
      v16 = objc_msgSendSuper2(&v55, sel_init);
      if (qword_1ED48F7A8 != -1)
      {
        goto LABEL_35;
      }

      goto LABEL_15;
    }

    qword_1EA935C88 = v19;

    if (v10)
    {
      goto LABEL_16;
    }

LABEL_17:
    v24 = sub_188AAD9E4();
    if (pthread_main_np() == 1)
    {
      qword_1EA935C88 = 0;
    }

    else
    {
      v25 = [v12 currentThread];
      v26 = [v25 threadDictionary];

      if (qword_1ED48F7A8 != -1)
      {
        swift_once();
      }

      [v26 removeObjectForKey_];
    }

    if (!v24)
    {
      __break(1u);
      return;
    }

    v38 = 0;
    v40 = 0;
    goto LABEL_25;
  }

  v15 = 0xD000000000000022;
  if (!v10)
  {
    v38 = 0;
    v40 = 0;
    goto LABEL_25;
  }

  v16 = v12;
  v17 = swift_allocObject();
  *(v17 + 16) = v10;
  *(v17 + 24) = v11;
  *(v17 + 32) = a2;
  v18 = swift_allocObject();
  v38 = sub_188AB75B8;
  v40 = v17;
  *(v18 + 16) = sub_188AB75B8;
  *(v18 + 24) = v17;
  *&v45 = sub_188E3FE50;
  *(&v45 + 1) = v18;
  *&v43 = MEMORY[0x1E69E9820];
  *(&v43 + 1) = 1107296256;
  *&v44 = sub_188A4A968;
  *(&v44 + 1) = &block_descriptor_14;
  v12 = _Block_copy(&v43);
  sub_188A52E38(v10);
  sub_188A52E38(v10);

  __UIVIEWSWIFTANIMATABLEPROPERTYTRANSFORMER_IS_EXECUTING_CALLBACK__(v12);
  sub_188A55B8C(v10);
  _Block_release(v12);
  LOBYTE(v17) = swift_isEscapingClosureAtFileLocation();

  if (v17)
  {
    __break(1u);
    while (1)
    {
      __break(1u);
LABEL_35:
      swift_once();
LABEL_15:
      [v15 setObject:v16 forKey:{qword_1ED48F7B0, v38, v40}];

      if (!v10)
      {
        goto LABEL_17;
      }

LABEL_16:
      v15 = swift_allocObject();
      v15[2] = v10;
      v15[3] = v11;
      v15[4] = a2;
      v16 = swift_allocObject();
      v16[2] = sub_188E85C04;
      v16[3] = v15;
      *&v45 = sub_188A4B574;
      *(&v45 + 1) = v16;
      *&v43 = MEMORY[0x1E69E9820];
      *(&v43 + 1) = 1107296256;
      *&v44 = sub_188A4A968;
      *(&v44 + 1) = &block_descriptor_7;
      v23 = _Block_copy(&v43);
      sub_188A52E38(v10);
      sub_188A52E38(v10);

      __UIVIEWSWIFTANIMATABLEPROPERTYTRANSFORMER_IS_EXECUTING_CALLBACK__(v23);
      sub_188A55B8C(v10);
      _Block_release(v23);
      LOBYTE(v23) = swift_isEscapingClosureAtFileLocation();

      if ((v23 & 1) == 0)
      {
        goto LABEL_17;
      }
    }
  }

  v12 = v16;
LABEL_25:
  v27 = [v12 currentThread];
  v28 = [v27 threadDictionary];

  *&v43 = 0xD000000000000022;
  *(&v43 + 1) = 0x800000018A68D0A0;
  [v28 __swift_setObject_forKeyedSubscript_];

  v29 = swift_unknownObjectRelease();
  v30 = *(a3 + OBJC_IVAR____TtCE5UIKitCSo6UIView29AnimatablePropertyTransformer_capturedProperties);
  MEMORY[0x1EEE9AC00](v29);

  os_unfair_lock_lock((v30 + 24));
  sub_188B99AC0((v30 + 16), &v43);
  os_unfair_lock_unlock((v30 + 24));

  v31 = v43;

  v32 = -1 << *(v31 + 32);
  v33 = ~v32;
  v34 = *(v31 + 64);
  v35 = -v32;
  if (v35 < 64)
  {
    v36 = ~(-1 << v35);
  }

  else
  {
    v36 = -1;
  }

  v50 = v31;
  v51 = v31 + 64;
  v52 = v33;
  v53 = 0;
  v54 = v36 & v34;
  while (1)
  {
    sub_188A813A8(v41);
    v47 = v41[4];
    v48 = v41[5];
    v49 = v42;
    v43 = v41[0];
    v44 = v41[1];
    v45 = v41[2];
    v46 = v41[3];
    v37 = *&v41[0];
    if (!*&v41[0])
    {
      break;
    }

    sub_188AB75BC(0, *(&v43 + 1), v44, a2);

    sub_188A8F7CC(&v44 + 8);
  }

  sub_188E036A4();
  sub_188A55B8C(v10);
  sub_188A55B8C(v39);
}

uint64_t sub_188B99788(uint64_t a1)
{
  v3 = *v1;
  sub_18A4A8888();
  MEMORY[0x18CFE37E0](a1);
  v4 = sub_18A4A88E8();
  v5 = -1 << *(v3 + 32);
  v6 = v4 & ~v5;
  if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  while (*(*(v3 + 48) + 16 * v6) != a1)
  {
    v6 = (v6 + 1) & v7;
    if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v1;
  v12 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_188E79AAC();
    v10 = v12;
  }

  v11 = *(*(v10 + 48) + 16 * v6);
  sub_188B9989C(v6);
  result = v11;
  *v1 = v12;
  return result;
}

unint64_t sub_188B9989C(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_18A4A7ED8();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + 16 * v6);
        sub_18A4A8888();
        MEMORY[0x18CFE37E0](v10);
        v11 = sub_18A4A88E8() & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 16 * v2);
          v14 = (v12 + 16 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_188B99A48@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (a2)
  {
    sub_188A8E304(a2, 1);
  }

  result = *a1;
  if (*(a3 + OBJC_IVAR____TtCE5UIKitCSo6UIView29AnimatablePropertyTransformer_clearsCapturedPropertiesOnStabilization) == 1)
  {
    *a1 = MEMORY[0x1E69E7CC8];
  }

  else
  {
  }

  *a4 = result;
  return result;
}

uint64_t sub_188B99AF4(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_18A4A7ED8() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 4 * v6);
      result = MEMORY[0x18CFE37B0](*(a2 + 40), *v10, 4);
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = (v9 + 4 * v3);
          if (v3 != v6 || v14 >= v10 + 1)
          {
            *v14 = *v10;
          }

          v15 = *(a2 + 56);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

void _updateLastRestorationDictionaryForPersistentIdentifier(void *a1, void *a2)
{
  v9 = a1;
  v3 = a2;
  if (_UIStateRestorationDebugLogEnabled())
  {
    NSLog(&cfstr_SCalledToUpdat.isa, "void _updateLastRestorationDictionaryForPersistentIdentifier(NSDictionary * _Nullable __strong, NSString *__strong)", v3, v9);
  }

  if (v3)
  {
    v4 = [v9 objectForKeyedSubscript:@"CanvasRestorationUserActivityUserInfoDataKey"];
    v5 = v4;
    if (!v4 || _lastRestorationDictionaryMap)
    {
      if (!v4)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v6 = [MEMORY[0x1E695DF90] dictionary];
      v7 = _lastRestorationDictionaryMap;
      _lastRestorationDictionaryMap = v6;
    }

    if ([v5 length] < 0x6401)
    {
      v8 = v9;
LABEL_15:
      v9 = v8;
      [_lastRestorationDictionaryMap setObject:v8 forKeyedSubscript:v3];

      goto LABEL_16;
    }

LABEL_11:
    if (_UIStateRestorationDebugLogEnabled())
    {
      NSLog(&cfstr_SClearingLastR.isa, "void _updateLastRestorationDictionaryForPersistentIdentifier(NSDictionary * _Nullable __strong, NSString *__strong)", [v5 length], 25600);
    }

    v8 = 0;
    goto LABEL_15;
  }

  if (_UIStateRestorationDebugLogEnabled())
  {
    NSLog(&cfstr_SNoPersistentI_0.isa, "void _updateLastRestorationDictionaryForPersistentIdentifier(NSDictionary * _Nullable __strong, NSString *__strong)");
  }

LABEL_16:
}

uint64_t sub_188B9B514()
{
  result = sub_18A4A7288();
  qword_1ED48F730 = result;
  *algn_1ED48F738 = v1;
  return result;
}

uint64_t sub_188B9B554()
{
  result = sub_18A4A7288();
  qword_1ED48F748 = result;
  unk_1ED48F750 = v1;
  return result;
}

uint64_t sub_188B9B5A4()
{
  result = sub_18A4A7288();
  qword_1ED48F6D0 = result;
  *algn_1ED48F6D8 = v1;
  return result;
}

uint64_t sub_188B9B5E4()
{
  result = sub_18A4A7288();
  qword_1ED48F760 = result;
  unk_1ED48F768 = v1;
  return result;
}

void UIApplicationMain(_:_:_:_:)(int a1, char **a2, uint64_t a3, uint64_t a4, uint64_t a5, NSString *a6)
{
  if (a2)
  {
    v6 = a6;
    if (a4)
    {
      v9 = sub_18A4A7258();
      if (!v6)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v9 = 0;
      if (!a6)
      {
LABEL_5:
        UIApplicationMain(a1, a2, v9, v6);
      }
    }

    v6 = sub_18A4A7258();
    goto LABEL_5;
  }

  __break(1u);
}

void __swiftcall UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(UIMenu *__return_ptr retstr, Swift::String title, Swift::String_optional subtitle, UIImage_optional *image, UIMenuIdentifier_optional identifier, UIMenuOptions options, UIMenuElementSize preferredElementSize, Swift::OpaquePointer children)
{
  object = subtitle.value._object;
  v13 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v14 = sub_18A4A7258();

  sub_188A34624(0, &qword_1ED48FC30);
  v15 = sub_18A4A7518();

  v16 = [v13 initWithTitle:v14 image:image imageName:0 identifier:identifier.value options:options children:v15];

  v17 = v16;
  if (object)
  {
    v18 = sub_18A4A7258();
  }

  else
  {
    v18 = 0;
  }

  [v16 setSubtitle_];

  [v16 setPreferredElementSize_];
}

uint64_t type metadata accessor for AttributeScopes.UIKitAttributes()
{
  result = qword_1ED48F6A0;
  if (!qword_1ED48F6A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_188B9B870()
{
  result = sub_18A4A7288();
  qword_1ED48F700 = result;
  *algn_1ED48F708 = v1;
  return result;
}

uint64_t sub_188B9B8F0()
{
  result = sub_18A4A7288();
  qword_1ED48F6E8 = result;
  unk_1ED48F6F0 = v1;
  return result;
}

uint64_t sub_188B9B948()
{
  result = sub_18A4A7288();
  qword_1ED48F718 = result;
  unk_1ED48F720 = v1;
  return result;
}

uint64_t sub_188B9B9A0()
{
  result = sub_18A4A7288();
  qword_1ED48F780 = result;
  unk_1ED48F788 = v1;
  return result;
}

uint64_t sub_188B9B9F8(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  if (*a3 != -1)
  {
    v6 = a4;
    swift_once();
    a4 = v6;
  }

  v4 = *a4;

  return v4;
}

uint64_t sub_188B9BA80()
{
  result = sub_18A4A24C8();
  if (v1 <= 0x3F)
  {
    result = sub_18A4A24B8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_188B9BCD8()
{
  result = sub_18A4A7288();
  qword_1ED48F100 = result;
  *algn_1ED48F108 = v1;
  return result;
}

uint64_t sub_188B9BD08(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_188B9BE44(void *a1)
{
  if ([a1 largeTitleDisplayMode] != 3)
  {
    return 0;
  }

  v3 = [v1 stack];
  v4 = [v3 items];

  sub_188A34624(0, &unk_1ED48CFF8);
  v5 = sub_18A4A7548();

  if (v5 >> 62)
  {
    v6 = sub_18A4A7F68();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v6 >= 2)
  {
    v7 = [v1 stack];
    v8 = [v7 items];

    v9 = sub_18A4A7548();
    result = v9;
    if ((v9 & 0xC000000000000001) != 0)
    {
      v14 = sub_188E4B030(0, v9);
      swift_unknownObjectRelease();

      if (v14 != a1)
      {
        goto LABEL_8;
      }
    }

    else
    {
      if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return result;
      }

      v11 = *(v9 + 32);

      if (v11 != a1)
      {
LABEL_8:
        result = [a1 hidesBackButton];
        if (!result)
        {
          return result;
        }
      }
    }
  }

  v12 = [a1 _largeTitleAccessoryView];
  if (!v12)
  {
    v12 = [a1 _largeTitleView];
    if (!v12)
    {
      return 1;
    }
  }

  v13 = *&v1[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift__tabBarHostedView];
  if (v13 && ([v13 canShowFloatingTabBar] & 1) != 0)
  {
    return 0;
  }

  return 2;
}

id sub_188B9C0F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = a7;
  v12 = *(a1 + 16);
  if (v12)
  {
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_18A4A8208();
    v14 = (a1 + 40);
    do
    {
      sub_188A85BF0(*(v14 - 1), 0, 0, *(v14 - 1), *v14);
      sub_18A4A81D8();
      sub_18A4A8218();
      sub_18A4A8228();
      sub_18A4A81E8();
      v14 += 2;
      --v12;
    }

    while (v12);
    v7 = a7;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA932200);
  v15 = sub_18A4A7518();

  v16 = swift_allocObject();
  v16[2] = a4;
  v16[3] = a2;
  v16[4] = a3;
  aBlock[4] = a6;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_188BA9E60;
  aBlock[3] = v7;
  v17 = _Block_copy(aBlock);

  v18 = [v21 _registerForTraitTokenChanges_withHandler_];
  _Block_release(v17);

  return v18;
}

void _UIDeallocOnMainThread(void *a1)
{
  if (pthread_main_np())
  {

    [a1 dealloc];
  }

  else
  {
    v2 = MEMORY[0x1E69E96A0];
    v3 = MEMORY[0x1E69E58D8];

    dispatch_async_f(v2, a1, v3);
  }
}

void _removeLayoutGuide(void *a1)
{
  v1 = a1;
  [v1 _setLockedToOwningView:0];
  v2 = [v1 owningView];
  [v2 removeLayoutGuide:v1];
}

uint64_t sub_188B9D014@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1(v2);
  v5 = [(_UITraitOverrides *)v4 _swiftImplCopy];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA932210);
  result = swift_allocObject();
  *(result + 16) = v5;
  *a2 = result;
  return result;
}

void sub_188B9D094(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v5 = a2(v2);
  v4 = *(v3 + 16);

  [(_UITraitOverrides *)v5 _replaceWithOverrides:v4];
}

uint64_t sub_188B9D124()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void sub_188B9D39C(void *a1)
{
  v2 = v1;
  v4 = [v2 stack];
  v5 = [v4 state];

  if (!v5)
  {
    v6 = [v2 stack];
    v7 = [v6 topItem];

    if (v7)
    {
      sub_188A34624(0, &unk_1ED48CFF8);
      v8 = a1;
      v20 = v7;
      v9 = sub_18A4A7C88();

      if (v9)
      {
        v10 = [v2 stack];
        v11 = [v10 backItem];

        sub_188B2A9B4(v7, v11, 0);
        if ([v20 _largeTitleTwoLineMode] == 2)
        {
          v12 = [v20 _stackEntry];
          if (v12)
          {
            v13 = v12;
            v14 = [v12 isSearchActive];
            v15 = [(_UINavigationBarItemStackEntry *)v13 _typedStorage];
            v16 = v14 ? sub_18901F25C() : sub_18901F250();
            v17 = v16;

            if (v17)
            {
              v18 = *(v17 + 80);
              v19 = v18;

              if (v18)
              {

                sub_188B29AE8();
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_188B9D5C0(void *a1, uint64_t a2, void *a3, SEL *a4)
{
  v6 = a3;
  v7 = a1;
  v8 = [v7 stack];
  v9 = [v8 *a4];

  if (v9)
  {
    sub_188A34624(0, &unk_1ED48CFF8);
    v10 = v6;
    v11 = sub_18A4A7C88();

    v7 = v10;
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

void sub_188B9DB74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_188B9DCF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_188B9DE24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

char *sub_188B9DE3C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9347E0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void sub_188B9E668(void *a1, char a2)
{
  v3 = v2;
  v6 = [v3 stack];
  v7 = [v6 state];

  if (!v7)
  {
    v8 = [v3 stack];
    v9 = [v8 topItem];

    if (v9)
    {
      sub_188A34624(0, &unk_1ED48CFF8);
      v10 = a1;
      v17 = v9;
      v11 = sub_18A4A7C88();

      if ((v11 & 1) != 0 && (v12 = [v3 stack], v13 = objc_msgSend(v12, sel_backItem), v12, sub_188B2A9B4(v9, v13, a2 & 1), v13, v14 = objc_msgSend(v3, sel_navigationBar), v15 = objc_msgSend(v14, sel__effectiveDelegate), v14, v15))
      {
        if ([v15 respondsToSelector_])
        {
          swift_unknownObjectRetain();
          v16 = [v3 navigationBar];
          [v15 _navigationBar_itemBackButtonUpdated_];

          swift_unknownObjectRelease_n();
        }

        else
        {

          swift_unknownObjectRelease();
        }
      }

      else
      {
      }
    }
  }
}

void sub_188B9E8DC(void *a1, char a2)
{
  v3 = v2;
  v6 = [v3 stack];
  v7 = [v6 state];

  if (!v7)
  {
    v8 = [v3 stack];
    v9 = [v8 topItem];

    if (v9)
    {
      sub_188A34624(0, &unk_1ED48CFF8);
      v14 = v9;
      v10 = a1;
      v11 = sub_18A4A7C88();

      if (v11)
      {
        v12 = [v3 stack];
        v13 = [v12 backItem];

        sub_188B2A9B4(v9, v13, a2 & 1);
      }
    }
  }
}

void sub_188B9F838(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _UIAncestorViewControllerIsInAnimatedTransition(void *a1)
{
  result = [a1 _viewControllerForAncestor];
  if (result)
  {
    v2 = result;
    if ([result isInAnimatedVCTransition])
    {
      return 1;
    }

    else
    {
      v3 = [v2 _existingView];
      v4 = _UIAncestorViewControllerIsInAnimatedTransition([v3 superview]);

      return v4;
    }
  }

  return result;
}

uint64_t _UIApplicationIsSystemApplication()
{
  if (qword_1EA9931C8 != -1)
  {
    dispatch_once(&qword_1EA9931C8, &__block_literal_global_3679);
  }

  return byte_1EA992DDA;
}

double _UISceneLayoutPreferencesEvaluateSize(void *a1, double a2)
{
  v3 = a1;
  v4 = v3;
  if (v3)
  {
    [v3 preferredMinimumWidth];
    v6 = v5;
    [v4 preferredMaximumWidth];
    if (v6 < 0.0 || v7 < 0.0)
    {
      if (a2 <= v7)
      {
        v9 = a2;
      }

      else
      {
        v9 = v7;
      }

      if (v7 >= 0.0)
      {
        v10 = v9;
      }

      else
      {
        v10 = a2;
      }

      if (a2 >= v6)
      {
        v11 = a2;
      }

      else
      {
        v11 = v6;
      }

      if (v6 >= 0.0)
      {
        a2 = v11;
      }

      else
      {
        a2 = v10;
      }
    }

    else
    {
      if (v6 >= a2)
      {
        v8 = v6;
      }

      else
      {
        v8 = a2;
      }

      if (v7 <= v8)
      {
        a2 = v7;
      }

      else
      {
        a2 = v8;
      }
    }

    [v4 preferredMinimumHeight];
    [v4 preferredMaximumHeight];
  }

  return a2;
}

double UIHostingViewBase._keyboardSafeAreaHeight.getter()
{
  v1 = sub_18A4A8668();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = 0.0;
  if (UIHostingViewBase._shouldUpdateKeyboardSafeArea.getter())
  {
    v6 = OBJC_IVAR____TtC5UIKit17UIHostingViewBase_safeAreaRegions;
    swift_beginAccess();
    v7 = *(v0 + v6);
    if ((sub_18A4A4D08() & ~v7) == 0)
    {
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v9 = Strong;
        v10 = [Strong window];
        if (v10)
        {
          v11 = (v0 + OBJC_IVAR____TtC5UIKit17UIHostingViewBase_keyboardFrame);
          if ((*(v0 + OBJC_IVAR____TtC5UIKit17UIHostingViewBase_keyboardFrame + 32) & 1) == 0 && v11[2] > 0.0 && v11[3] > 0.0)
          {
            v12 = v10;
            [v9 convertRect:v10 fromCoordinateSpace:{*v11, v11[1]}];
            v14 = v13;
            v16 = v15;
            v18 = v17;
            v20 = v19;
            [v9 bounds];
            MaxY = CGRectGetMaxY(v29);
            v30.origin.x = v14;
            v30.origin.y = v16;
            v30.size.width = v18;
            v30.size.height = v20;
            v28 = MaxY - CGRectGetMinY(v30);
            v22 = [v12 screen];
            [v22 scale];
            v24 = 1.0 / v23;
            (*(v2 + 104))(v4, *MEMORY[0x1E69E7038], v1);
            sub_188B26620(v4, v24);
            (*(v2 + 8))(v4, v1);
            v25 = v9;
            sub_188F937A0(&v28, v25);

            return v28;
          }
        }
      }
    }
  }

  return v5;
}

uint64_t UIHostingViewBase._shouldUpdateKeyboardSafeArea.getter()
{
  sub_18A4A6CD8();
  if ((sub_18A4A53A8() & 1) == 0)
  {
    return 0;
  }

  v1 = OBJC_IVAR____TtC5UIKit17UIHostingViewBase_safeAreaRegions;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (sub_18A4A4D08() & ~v2) != 0 || (sub_188F9292C())
  {
    return 0;
  }

  if (!sub_18A4A46F8())
  {
    return 1;
  }

  swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA938928);
  sub_18A4A5398();
  swift_unknownObjectRelease();
  if (!v6)
  {
    return 1;
  }

  ObjectType = swift_getObjectType();
  v5 = (*(v7 + 8))(ObjectType);
  swift_unknownObjectRelease();
  if (v5)
  {

    return 1;
  }

  return 0;
}

id sub_188BA0740(uint64_t a1)
{
  if (qword_1ED491508 != -1)
  {
    swift_once();
  }

  v2 = sub_18A4A7258();
  if (qword_1ED491550 != -1)
  {
    swift_once();
  }

  v3 = sub_18A4A7258();
  if (qword_1ED491528 != -1)
  {
    swift_once();
  }

  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA932260);
  v5 = __swift_project_value_buffer(v4, qword_1ED491530);
  v17[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA933140);
  v6 = _s5UIKit26UITraitTypesettingLanguageV15_customRawValue3forSSSg10Foundation6LocaleV0D0VSg_tFZ_0(v5);
  v8 = v7;
  v17[0] = v6;
  v17[1] = v7;
  sub_188A55598(v17, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934050);
  swift_dynamicCast();
  v14[0] = v15;
  v14[1] = v16;
  v9 = *(&v16 + 1);
  sub_188A3F5FC(v14, &qword_1EA934050);
  if (v9)
  {
    *&v15 = v6;
    *(&v15 + 1) = v8;

    v10 = sub_18A4A8778();
  }

  else
  {
    v10 = 0;
  }

  v11 = objc_opt_self();
  __swift_destroy_boxed_opaque_existential_0Tm(v17);
  v12 = [v11 _defineObjectTraitWithName_identifier_defaultValue_affectsColorAppearance_defaultValueRepresentsUnspecified_isPrivate_placeholderToken_];

  swift_unknownObjectRelease();
  return v12;
}

void sub_188BA09A4(uint64_t a1, uint64_t a2, SEL *a3, uint64_t *a4, void *a5)
{
  v7 = [objc_opt_self() *a3];
  v8 = sub_18A4A7288();
  v10 = v9;

  *a4 = v8;
  *a5 = v10;
}

uint64_t sub_188BA0A30()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA932260);
  __swift_allocate_value_buffer(v0, qword_1ED491530);
  v1 = __swift_project_value_buffer(v0, qword_1ED491530);
  v2 = sub_18A4A2A48();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 1, 1, v2);
}

uint64_t UIHostingViewBase.initialInheritedEnvironment.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936FE0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_188A3F29C(a1, &v5 - v3, &qword_1EA936FE0);
  sub_18A4A4868();
  return sub_188A3F5FC(a1, &qword_1EA936FE0);
}

Swift::Void __swiftcall UIHostingViewBase.safeAreaInsetsDidChange()()
{
  if (sub_18A4A46F8())
  {
    v1 = OBJC_IVAR____TtC5UIKit17UIHostingViewBase_safeAreaRegions;
    swift_beginAccess();
    if (*(v0 + v1) || (sub_18A4A6CD8(), (sub_18A4A53A8() & 1) == 0))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9344B0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_18A64BFA0;
      v3 = sub_18A4A5578();
      *(inited + 32) = v3;
      v4 = sub_18A4A5548();
      *(inited + 34) = v4;
      sub_18A4A5568();
      sub_18A4A5568();
      if (sub_18A4A5568() != v3)
      {
        sub_18A4A5568();
      }

      sub_18A4A5568();
      if (sub_18A4A5568() != v4)
      {
        sub_18A4A5568();
      }

      swift_getObjectType();
      sub_18A4A58B8();
    }

    swift_unknownObjectRelease();
  }
}

void sub_188BA1244(void *a1)
{
  v2 = v1;
  v4 = [v2 stack];
  v5 = [v4 state];

  if (!v5)
  {
    v6 = [v2 stack];
    v7 = [v6 topItem];

    if (v7)
    {
      sub_188A34624(0, &unk_1ED48CFF8);
      v8 = a1;
      v9 = sub_18A4A7C88();

      if (v9)
      {
        if (_UIBarsApplyChromelessEverywhere())
        {
          sub_188B29AE8();
          v10 = [v2 navigationBar];
          v11 = [v10 _effectiveDelegate];

          if (v11)
          {
            if ([v11 respondsToSelector_])
            {
              swift_unknownObjectRetain();
              v12 = [v2 navigationBar];
              [v11 _navigationBar_topItemUpdatedLargeTitleDisplayMode_];

              swift_unknownObjectRelease();
            }

            swift_unknownObjectRelease();
          }
        }
      }
    }
  }
}

uint64_t _UIPencilPreferredActionForKey(void *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  if ([a1 isEqualToString:@"UIPencilPreferredSqueezeAction"])
  {
    v2 = 5;
  }

  else
  {
    v2 = 1;
  }

  v3 = _UIKitUserDefaults();
  v4 = [v3 objectForKey:a1];

  if (v4)
  {
    v2 = [v4 integerValue];
    CategoryCachedImpl = __UILogGetCategoryCachedImpl("PencilPreferences", &qword_1ED4A0798);
    if (*CategoryCachedImpl)
    {
      v6 = *(CategoryCachedImpl + 8);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v16 = 134218242;
        v17 = v2;
        v18 = 2112;
        v19 = a1;
        v7 = "NSUserDefaults returns value: %li; for key: %@; ";
LABEL_22:
        _os_log_impl(&dword_188A29000, v6, OS_LOG_TYPE_ERROR, v7, &v16, 0x16u);
      }
    }
  }

  else
  {
    v8 = __UILogGetCategoryCachedImpl("PencilPreferences", &qword_1ED4A0788);
    if (*v8)
    {
      v15 = *(v8 + 8);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = 138412290;
        v17 = a1;
        _os_log_impl(&dword_188A29000, v15, OS_LOG_TYPE_ERROR, "NSUserDefaults nil object for key: %@", &v16, 0xCu);
      }
    }

    v9 = __UILogGetCategoryCachedImpl("PencilPreferences", &qword_1ED4A0790);
    if (*v9)
    {
      v6 = *(v9 + 8);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v16 = 134218242;
        v17 = v2;
        v18 = 2112;
        v19 = a1;
        v7 = "Returning default value: %li; for key: %@";
        goto LABEL_22;
      }
    }
  }

  v10 = _AXSAllowOpaqueTouchGestures();
  v11 = __UILogGetCategoryCachedImpl("PencilPreferences", &qword_1ED4A07A0);
  if (*v11)
  {
    v13 = *(v11 + 8);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = @"YES";
      if (!v10)
      {
        v14 = @"NO";
      }

      v16 = 138412290;
      v17 = v14;
      _os_log_impl(&dword_188A29000, v13, OS_LOG_TYPE_ERROR, "Accessibility returns: %@;", &v16, 0xCu);
    }
  }

  if (!v10)
  {
    v2 = 0;
  }

  return v2;
}

uint64_t _UIPencilPrefersPencilOnlyDrawingForKey()
{
  v9 = *MEMORY[0x1E69E9840];
  v0 = _UIKitUserDefaults();
  v1 = [v0 BOOLForKey:@"UIPencilOnlyDrawWithPencilKey"];

  CategoryCachedImpl = __UILogGetCategoryCachedImpl("PencilPreferences", &_UIPencilPrefersPencilOnlyDrawingForKey___s_category);
  if (*CategoryCachedImpl)
  {
    v4 = *(CategoryCachedImpl + 8);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = 134218242;
      v6 = v1;
      v7 = 2112;
      v8 = @"UIPencilOnlyDrawWithPencilKey";
      _os_log_impl(&dword_188A29000, v4, OS_LOG_TYPE_ERROR, "NSUserDefaults returns value: %li; for key: %@; ", &v5, 0x16u);
    }
  }

  return v1;
}

uint64_t _UIPencilPrefersHoverToolPreview()
{
  v12 = *MEMORY[0x1E69E9840];
  v0 = _UIKitUserDefaults();
  v1 = [v0 objectForKey:@"PKUIPencilHoverPreviewEnabledKey"];

  if (v1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v2 = [v1 BOOLValue];
  }

  else
  {
    v2 = 1;
  }

  CategoryCachedImpl = __UILogGetCategoryCachedImpl("PencilPreferences", &_UIPencilPrefersHoverToolPreview___s_category);
  if (*CategoryCachedImpl)
  {
    v5 = *(CategoryCachedImpl + 8);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = 134218498;
      v7 = v2;
      v8 = 2112;
      v9 = v1;
      v10 = 2112;
      v11 = @"PKUIPencilHoverPreviewEnabledKey";
      _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_ERROR, "NSUserDefaults returns value: %li; from object value: %@; for key: %@; ", &v6, 0x20u);
    }
  }

  return v2;
}

uint64_t UIMutableTraits.typesettingLanguage.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA932260);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v10 - v7;
  sub_188A3F29C(a1, &v10 - v7, &qword_1EA932260);
  (*(a3 + 208))(v8, &type metadata for UITraitTypesettingLanguage, &type metadata for UITraitTypesettingLanguage, &protocol witness table for UITraitTypesettingLanguage, a2, a3);
  return sub_188A3F5FC(a1, &qword_1EA932260);
}

uint64_t sub_188BA1C60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(void))
{
  a7();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(*(AssociatedTypeWitness - 8) + 8);

  return v9(a1, AssociatedTypeWitness);
}

uint64_t _sSo17UITraitCollectionC5UIKitE19typesettingLanguage10Foundation6LocaleV0E0VSgvg_0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA932260);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v13 - v5;
  if (qword_1ED491B40 != -1)
  {
    swift_once();
  }

  if (qword_1ED491AF0 != -1)
  {
    swift_once();
  }

  v7 = off_1ED491B48;
  os_unfair_lock_lock(*(off_1ED491B48 + 2));
  v8 = sub_188BA211C(&type metadata for UITraitTypesettingLanguage, sub_188BA0740);
  os_unfair_lock_unlock(v7[2]);
  v9 = [v2 _objectForTraitToken_];
  swift_unknownObjectRelease();
  if (v9)
  {
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
  }

  v16[0] = v14;
  v16[1] = v15;
  sub_188A3F29C(v16, &v14, &qword_1EA934050);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934050);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA933140);
  if (swift_dynamicCast() && v13[1])
  {
    sub_18A4A2A28();
    v10 = sub_18A4A2A48();
    (*(*(v10 - 8) + 56))(v6, 0, 1, v10);
    sub_188A3F5FC(v16, &qword_1EA934050);
    return sub_188A3F704(v6, a1, &qword_1EA932260);
  }

  else
  {
    if (qword_1ED491528 != -1)
    {
      swift_once();
    }

    v12 = __swift_project_value_buffer(v4, qword_1ED491530);
    sub_188A3F29C(v12, a1, &qword_1EA932260);
    return sub_188A3F5FC(v16, &qword_1EA934050);
  }
}

id sub_188BA211C(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  if (qword_1ED491B10 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = off_1ED491B18;
  if (*(off_1ED491B18 + 2) && (v5 = sub_188A78D9C(a1), (v6 & 1) != 0))
  {
    v7 = *(v4[7] + 8 * v5);
    swift_endAccess();
    if (a2)
    {
      v8 = objc_opt_self();
      sub_188A52E38(a2);
      swift_unknownObjectRetain();
      if ([v8 _isPlaceholderTraitToken_])
      {
        v9 = swift_unknownObjectRetain();
        v10 = a2(v9);
        sub_188A55B8C(a2);
        swift_unknownObjectRelease_n();
        return v10;
      }

      else
      {
        sub_188A55B8C(a2);
      }
    }

    else
    {
      swift_unknownObjectRetain();
    }
  }

  else
  {
    swift_endAccess();
    if (a2)
    {

      v7 = a2(0);
      sub_188A55B8C(a2);
    }

    else
    {
      if (qword_1ED491508 != -1)
      {
        swift_once();
      }

      if (qword_1ED491550 != -1)
      {
        swift_once();
      }

      v11 = objc_opt_self();
      v12 = sub_18A4A7258();
      v13 = sub_18A4A7258();
      v7 = [v11 _existingTraitTokenReservingPlaceholderIfNecessaryWithName_identifier_];
    }

    swift_beginAccess();
    swift_unknownObjectRetain_n();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = off_1ED491B18;
    off_1ED491B18 = 0x8000000000000000;
    swift_getObjectType();
    sub_188AC48E8(v7, a1, isUniquelyReferenced_nonNull_native, &v17);
    off_1ED491B18 = v17;
    swift_endAccess();
    if (qword_1ED491B00 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    swift_unknownObjectRetain();
    v15 = swift_isUniquelyReferenced_nonNull_native();
    v17 = off_1ED491B08;
    off_1ED491B08 = 0x8000000000000000;
    sub_188AC4FC4(&type metadata for UITraitTypesettingLanguage, &protocol witness table for UITraitTypesettingLanguage, v7, v15);
    swift_unknownObjectRelease();
    off_1ED491B08 = v17;
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  return v7;
}

void UIHostingViewBase._updateSafeArea(container:keyboardHeight:)(double (*a1)(void), uint64_t a2, void (*a3)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = OBJC_IVAR____TtC5UIKit17UIHostingViewBase_safeAreaRegions;
    swift_beginAccess();
    v9 = *(v3 + v8);
    v10 = sub_18A4A4D18();
    v11 = v10 & v9;
    if (v11 == v10)
    {
      *&v19 = a1();
      *(&v19 + 1) = v20;
      *(&v22 + 1) = v21;
      v25 = v22;
      v26 = v19;
      sub_188F925F0(v27);
      v18 = v25;
      v17 = v26;
      v13 = 0;
      v12 = v27[0];
      v14 = v27[1];
      v15 = v27[2];
      v16 = v27[3];
      LOBYTE(v29) = 0;
    }

    else
    {
      v12 = 0uLL;
      v13 = 1;
      v14 = 0uLL;
      v15 = 0uLL;
      v16 = 0uLL;
      v17 = 0uLL;
      v18 = 0uLL;
    }

    v29 = v12;
    v30 = v14;
    v31 = v15;
    v32 = v16;
    v33 = v13;
    v27[4] = v17;
    v27[5] = v18;
    v28 = v11 != v10;
    v23 = *(v3 + v8);
    v24 = sub_18A4A4D08();
    if ((v24 & v23) == v24)
    {
      a3();
    }

    if (sub_18A4A47A8())
    {
      [v7 invalidateIntrinsicContentSize];
    }
  }
}

uint64_t UIMutableTraits.activeAppearance.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = a1;
  v5 = *(a3 + 376);
  v6 = sub_188AFC388(&unk_1ED490C70, type metadata accessor for UIUserInterfaceActiveAppearance);
  return v5(&v8, &type metadata for UITraitActiveAppearance, &type metadata for UITraitActiveAppearance, &protocol witness table for UITraitActiveAppearance, v6, a2, a3);
}

uint64_t _s5UIKit26UITraitTypesettingLanguageV15_customRawValue3forSSSg10Foundation6LocaleV0D0VSg_tFZ_0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA932260);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v16 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9334B8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v16 - v6;
  sub_188A3F29C(a1, v4, &qword_1EA932260);
  v8 = sub_18A4A2A48();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v4, 1, v8) == 1)
  {
    v10 = &qword_1EA932260;
    v11 = v4;
LABEL_5:
    sub_188A3F5FC(v11, v10);
    return 0;
  }

  sub_18A4A2A38();
  (*(v9 + 8))(v4, v8);
  v12 = sub_18A4A2A08();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v7, 1, v12) == 1)
  {
    v10 = &qword_1EA9334B8;
    v11 = v7;
    goto LABEL_5;
  }

  v15 = sub_18A4A29F8();
  (*(v13 + 8))(v7, v12);
  return v15;
}

uint64_t UITraitCollection._modifyingTraits(environmentWrapper:mutations:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_188BA5B68;
  *(v9 + 24) = v8;
  v14[4] = sub_188E36B9C;
  v14[5] = v9;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 1107296256;
  v14[2] = sub_188A7AC24;
  v14[3] = &block_descriptor_74;
  v10 = _Block_copy(v14);
  v11 = a1;

  v12 = [v4 traitCollectionByModifyingTraits_];
  _Block_release(v10);
  LOBYTE(a1) = swift_isEscapingClosureAtFileLocation();

  if ((a1 & 1) == 0)
  {
    return v12;
  }

  __break(1u);
  return result;
}

uint64_t sub_188BA2B64()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t UIHostingViewBase.isRotatingWindow.getter()
{
  v1 = OBJC_IVAR____TtC5UIKit17UIHostingViewBase_isRotatingWindow;
  swift_beginAccess();
  return *(v0 + v1);
}

id static UIFocusSystem.focusSystem(for:)(uint64_t a1)
{
  swift_getObjectType();

  return sub_188BA2D38(a1);
}

id sub_188BA2D38(uint64_t a1)
{
  v1 = [objc_opt_self() _focusSystemForEnvironment_];

  return v1;
}

uint64_t sub_188BA2DE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a4 + 24);
  v14[3] = swift_getAssociatedTypeWitness();
  __swift_allocate_boxed_opaque_existential_0(v14);
  v8(a1, a3, a4);
  sub_188A55598(v14, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934050);
  swift_dynamicCast();
  v12[0] = v12[2];
  v12[1] = v13;
  v9 = *(&v13 + 1);
  sub_188A3F5FC(v12, &qword_1EA934050);
  if (v9)
  {
    v10 = sub_18A4A86A8();
  }

  else
  {
    v10 = 0;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v14);
  [*v4 _setObject_forTraitToken_];
  swift_unknownObjectRelease();
  return swift_unknownObjectRelease();
}

uint64_t sub_188BA2F70@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = _s5UIKit26UITraitTypesettingLanguageV15_customRawValue3forSSSg10Foundation6LocaleV0D0VSg_tFZ_0(a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_188BA2F98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = v4;
  v9 = sub_188A85BF0(v4, a4, v8, a1, *(a2 + 8));

  return v9;
}

void *UICorePlatformViewHost.init(_:host:environment:viewPhase:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_188BA6950(a1, a2, a3, a4, a5);
  swift_unknownObjectRelease();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(a1, AssociatedTypeWitness);
  return v6;
}

uint64_t sub_188BA311C(uint64_t a1, void (*a2)(double))
{
  v4 = sub_18A4A5CC8();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  a2(v6);
  return (*(v5 + 40))(a1, v8, v4);
}

uint64_t sub_188BA3204@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EA93A788);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v11 - v6;
  sub_188BA3398(&v11 - v6);
  v8 = sub_18A4A4998();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v7, 1, v8) != 1)
  {
    return (*(v9 + 32))(a1, v7, v8);
  }

  sub_188A3F5FC(v7, qword_1EA93A788);
  sub_188BA341C();
  (*(v9 + 16))(v4, a1, v8);
  (*(v9 + 56))(v4, 0, 1, v8);
  return sub_188BA3D64(v4);
}

uint64_t sub_188BA3398@<X0>(uint64_t a1@<X8>)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xC8);
  swift_beginAccess();
  return sub_188A3F29C(v1 + v3, a1, qword_1EA93A788);
}

uint64_t sub_188BA341C()
{
  v1 = sub_18A4A4988();
  MEMORY[0x1EEE9AC00](v1 - 8);
  [v0 intrinsicContentSize];
  if (v3 != -1.0)
  {
    [v0 contentCompressionResistancePriorityForAxis_];
    [v0 contentHuggingPriorityForAxis_];
  }

  sub_18A4A4978();
  [v0 intrinsicContentSize];
  if (v4 != -1.0)
  {
    [v0 contentCompressionResistancePriorityForAxis_];
    [v0 contentHuggingPriorityForAxis_];
  }

  sub_18A4A4978();
  return sub_18A4A4968();
}

double sub_188BA3610(void *a1)
{
  v1 = a1;
  sub_188BA3654();
  v3 = v2;

  return v3;
}

void sub_188BA3654()
{
  if (sub_18A4A55B8())
  {
    v2.receiver = v0;
    v2.super_class = type metadata accessor for UICorePlatformViewHost();
    objc_msgSendSuper2(&v2, sel_intrinsicContentSize);
  }

  else
  {
    v1 = sub_188BA4554();
    [v1 intrinsicContentSize];
  }
}

unint64_t sub_188BA3728()
{
  result = qword_1ED490550;
  if (!qword_1ED490550)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA935AC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED490550);
  }

  return result;
}

uint64_t UITraitCollection.subscript.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = [v4 _valueForNSIntegerTraitToken_];
  swift_unknownObjectRelease();
  v10 = v8;
  return sub_188BA39A4(&v10, a1, a2, a4);
}

{
  v23 = a4;
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = sub_18A4A7D38();
  v21 = *(v9 - 8);
  v22 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v20 - v10;
  v12 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v20 - v14;
  v16 = [v4 _objectForTraitToken_];
  swift_unknownObjectRelease();
  if (v16)
  {
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
  }

  else
  {
    v24 = 0u;
    v25 = 0u;
  }

  v26[0] = v24;
  v26[1] = v25;
  sub_188A3F29C(v26, &v24, &qword_1EA934050);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934050);
  v17 = swift_dynamicCast();
  v18 = *(v12 + 56);
  if (v17)
  {
    v18(v11, 0, 1, AssociatedTypeWitness);
    (*(v12 + 32))(v15, v11, AssociatedTypeWitness);
    sub_188BA39A4(v15, a1, a2, v23);
    (*(v12 + 8))(v15, AssociatedTypeWitness);
  }

  else
  {
    v18(v11, 1, 1, AssociatedTypeWitness);
    (*(v21 + 8))(v11, v22);
    (*(a2 + 16))(a1, a2);
  }

  return sub_188A3F5FC(v26, &qword_1EA934050);
}

{
  [v4 _valueForCGFloatTraitToken_];
  v9 = v8;
  swift_unknownObjectRelease();
  v11 = v9;
  return sub_188BA39A4(&v11, a1, a2, a4);
}

{
  [v4 _valueForCGFloatTraitToken_];
  v9 = v8;
  swift_unknownObjectRelease();
  v11 = v9;
  return sub_188BA39A4(&v11, a1, a2, a4);
}

uint64_t sub_188BA3890(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v10 = swift_allocObject();
  v10[2] = a1;
  v10[3] = a2;
  v10[4] = a3;
  v10[5] = v5;
  v11 = sub_188A85BF0(v5, a5, v10, a1, a2);

  return v11;
}

uint64_t sub_188BA3910(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(void))
{
  a8();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(*(AssociatedTypeWitness - 8) + 8);

  return v10(a1, AssociatedTypeWitness);
}

uint64_t sub_188BA39A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v21 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = swift_getAssociatedTypeWitness();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v19 - v10;
  v12 = sub_18A4A7D38();
  v20 = *(v12 - 8);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v19 - v14;
  (*(v9 + 16))(v11, a1, v8, v13);
  sub_18A4A74F8();
  v16 = *(AssociatedTypeWitness - 8);
  v17 = *(v16 + 48);
  if (v17(v15, 1, AssociatedTypeWitness) != 1)
  {
    return (*(v16 + 32))(v21, v15, AssociatedTypeWitness);
  }

  (*(a3 + 16))(a2, a3);
  result = (v17)(v15, 1, AssociatedTypeWitness);
  if (result != 1)
  {
    return (*(v20 + 8))(v15, v12);
  }

  return result;
}

void *sub_188BA3C4C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t UICorePlatformViewHost.coreRepresentedViewProvider.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x70);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(*(AssociatedTypeWitness - 8) + 16);

  return v5(a1, &v1[v3], AssociatedTypeWitness);
}

uint64_t sub_188BA3D64(uint64_t a1)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xC8);
  swift_beginAccess();
  sub_188A4B4F4(a1, v1 + v3, qword_1EA93A788);
  return swift_endAccess();
}

uint64_t sub_188BA3DF4@<X0>(uint64_t a1@<X8>)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xB8);
  swift_beginAccess();
  return sub_188A3F29C(v1 + v3, a1, &qword_1EA93A780);
}

uint64_t sub_188BA3E7C(uint64_t a1)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xB8);
  swift_beginAccess();
  sub_188A4B4F4(a1, v1 + v3, &qword_1EA93A780);
  return swift_endAccess();
}

uint64_t sub_188BA3F60@<X0>(uint64_t a1@<X8>)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x60);
  swift_beginAccess();
  v4 = sub_18A4A5318();
  return (*(*(v4 - 8) + 16))(a1, &v1[v3], v4);
}

uint64_t sub_188BA4004(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_188BA404C(void *a1, uint64_t a2, uint64_t a3)
{
  swift_unknownObjectRetain();
  v5 = a1;
  v6 = sub_188BA57E8(a3);
  swift_unknownObjectRelease();

  return v6;
}

uint64_t sub_188BA40B4(uint64_t a1)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x60);
  swift_beginAccess();
  v4 = sub_18A4A5318();
  (*(*(v4 - 8) + 40))(&v1[v3], a1, v4);
  return swift_endAccess();
}

uint64_t sub_188BA4160(uint64_t a1)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x68);
  swift_beginAccess();
  v4 = sub_18A4A4918();
  (*(*(v4 - 8) + 40))(&v1[v3], a1, v4);
  return swift_endAccess();
}

void sub_188BA420C(uint64_t a1, uint64_t a2)
{
  v25 = a2;
  v3 = sub_18A4A4918();
  v23 = *(v3 - 8);
  v24 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v22 = &v19[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_18A4A4428();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v19[-v10];
  v12 = sub_18A4A5318();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v19[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_188BA3F60(v15);
  sub_18A4A4EB8();
  v21 = *(v13 + 8);
  v21(v15, v12);
  sub_18A4A4EB8();
  sub_188BA4004(&qword_1ED48DC00, MEMORY[0x1E697DBD0]);
  v20 = sub_18A4A7248();
  v16 = *(v6 + 8);
  v16(v8, v5);
  v16(v11, v5);
  sub_188BA3F60(v15);
  LOBYTE(v11) = sub_18A4A5198();
  v21(v15, v12);
  (*(v13 + 16))(v15, a1, v12);
  sub_188BA40B4(v15);
  v17 = v22;
  (*(v23 + 16))(v22, v25, v24);
  sub_188BA4160(v17);
  if ((v11 & 1) == 0)
  {
    sub_18A4A5538();
    sub_188BA48D8((v20 & 1) == 0);
  }

  v18 = sub_188BA4554();
  sub_188BA45FC(a1, v18);
}

uint64_t sub_188BA4554()
{
  sub_18A4A55C8();
  objc_opt_self();

  return swift_dynamicCastObjCClassUnconditional();
}

void sub_188BA45FC(uint64_t a1, void *a2)
{
  v4 = sub_18A4A4CD8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v28 - v9;
  v11 = sub_18A4A5168();
  v12 = swift_allocObject();
  *(v12 + 16) = v2;
  *(v12 + 24) = v11 & 1;
  *(v12 + 32) = a2;
  v13 = v2;
  v14 = a2;
  sub_18A4A54C8();

  sub_18A4A5008();
  (*(v5 + 104))(v7, *MEMORY[0x1E697E7D8], v4);
  v15 = sub_18A4A4CC8();
  v16 = *(v5 + 8);
  v16(v7, v4);
  v16(v10, v4);
  if (v15)
  {
    v17 = 4;
  }

  else
  {
    v17 = 3;
  }

  if ([v14 semanticContentAttribute] != v17)
  {
    [v14 setSemanticContentAttribute_];
  }

  if (sub_18A4A5208())
  {
    sub_18A4A5DC8();
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;

    if (qword_1ED48E998 != -1)
    {
      swift_once();
    }

    sub_188BA4D84(v19, v21, v23, v25);
    v27 = v26;
  }

  else
  {
    v27 = 0;
  }

  [v13 setTintColor_];
}

uint64_t sub_188BA4898()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

void sub_188BA48D8(int a1)
{
  v3 = sub_18A4A4918();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_18A4A5318();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v28 = Strong;
    if (sub_188C11BD8())
    {
      v27 = a1;
      swift_getObjectType();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA938928);
      sub_18A4A5398();
      swift_unknownObjectRelease();
      if (v29)
      {
        v12 = v30;
        ObjectType = swift_getObjectType();
        v14 = (*(v12 + 8))(ObjectType, v12);
        if (v14)
        {
          v15 = v14;
          sub_188BA3F60(v10);
          sub_188BA5744(v6);
          v26 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x1C8))(v10, v6);
          (*(v4 + 8))(v6, v3);
          v16 = *(v8 + 8);
          v16(v10, v7);
          v17 = [v1 traitCollection];
          sub_188BA3F60(v10);
          v18 = v26;
          v19 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x1D0))(v17, v10, v26);

          v16(v10, v7);
          v20 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v21 = swift_allocObject();
          *(v21 + 16) = v20;
          *(v21 + 24) = v19;
          *(v21 + 32) = v28;
          *(v21 + 40) = v27 & 1;

          v22 = v19;
          v23 = v28;
          sub_18A4A54C8();
          swift_unknownObjectRelease();

          return;
        }

        swift_unknownObjectRelease();
      }
    }

    else
    {
      v24 = v28;
    }
  }

  else
  {

    [v1 _noteTraitsDidChangeRecursively];
  }
}

uint64_t sub_188BA4D38()
{

  return MEMORY[0x1EEE6BDD0](v0, 41, 7);
}

void sub_188BA4D84(float a1, float a2, float a3, float a4)
{
  v5 = v4;
  *v26 = a1;
  *&v26[1] = a2;
  *&v26[2] = a3;
  *&v26[3] = a4;
  v6 = sub_18A4A5E28();
  v7 = 4 * (v6 & 7);
  v25 = 0;
  v24 = 0x80000000;
  v8 = v4[4];

  os_unfair_lock_lock(v8 + 4);
  v9 = sub_188BA4F28(&v8[6], v7, v6, &v24, &v25);
  os_unfair_lock_unlock(v8 + 4);

  if (!v9)
  {
    v10 = v5[3];
    (v5[2])(&v23, v26);
    v11 = v5[4];

    os_unfair_lock_lock((v11 + 16));
    v12 = __OFADD__(v7, v25);
    v13 = v7 + v25;
    if (v12)
    {
      __break(1u);
    }

    else
    {
      v14 = v23;
      v8 = (*(v11 + 32) + 1);
      *(v11 + 32) = v8;
      v5 = *(v11 + 24);
      v10 = v14;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v11 + 24) = v5;
      if (isUniquelyReferenced_nonNull_native)
      {
        if ((v13 & 0x8000000000000000) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_10;
      }
    }

    v5 = sub_189212B4C(v5);
    *(v11 + 24) = v5;
    if ((v13 & 0x8000000000000000) == 0)
    {
LABEL_5:
      if (v13 < v5[2])
      {
        v16.i64[0] = LODWORD(a1);
        v16.i64[1] = LODWORD(a3);
        v17 = &v5[5 * v13];
        v18 = v17[3].i64[1];
        v17[2] = vorrq_s8(vshll_n_s32(__PAIR64__(LODWORD(a4), LODWORD(a2)), 0x20uLL), v16);
        v17[3].i64[0] = v6;
        v17[3].i64[1] = v10;
        v17[4].i32[0] = v8;

        os_unfair_lock_unlock((v11 + 16));

        return;
      }

LABEL_11:
      __break(1u);

      os_unfair_lock_unlock(v8 + 4);
      __break(1u);
      return;
    }

LABEL_10:
    __break(1u);
    goto LABEL_11;
  }
}

uint64_t sub_188BA4F28(uint64_t a1, unint64_t a2, uint64_t a3, int *a4, void *a5)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    goto LABEL_52;
  }

  v5 = a2;
  v6 = a1;
  v8 = *a1;
  v10 = *(*a1 + 16);
  if (v10 <= a2)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v11 = v8 + 4;
  v12 = &v8[5 * a2 + 4];
  v9 = *(v12 + 24);
  v42 = a4;
  if (v9)
  {
    v13 = a3;
    if (*(v12 + 16) == a3)
    {
      v14 = v9;
      result = sub_18A4A5DE8();
      if (result)
      {
        goto LABEL_38;
      }

      v10 = v8[2];
    }

    else
    {
      result = v9;
    }

    if (v10 <= v5)
    {
LABEL_59:
      __break(1u);
      goto LABEL_60;
    }

    v18 = *(v6 + 8);
    v19 = *(v12 + 32);

    v16 = v18 - v19;
    a4 = v42;
    v17 = *v42;
    a3 = v13;
    if (*v42 < v18 - v19)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v16 = 0x7FFFFFFF;
    v17 = 0x7FFFFFFF;
    if (*a4 != 0x7FFFFFFF)
    {
LABEL_12:
      *a5 = 0;
      *a4 = v16;
      v17 = v16;
    }
  }

  v7 = v5 + 1;
  v20 = v8[2];
  if (v5 + 1 >= v20)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v21 = &v11[5 * v7];
  v9 = v21[3];
  if (!v9)
  {
    v24 = 0x7FFFFFFF;
    v25 = 0x7FFFFFFF;
    if (v17 == 0x7FFFFFFF)
    {
LABEL_24:
      v7 = v5 + 2;
      v28 = v8[2];
      if (v5 + 2 >= v28)
      {
LABEL_55:
        __break(1u);
        goto LABEL_56;
      }

      v29 = &v11[5 * v7];
      v9 = v29[3];
      if (v9)
      {
        v30 = a3;
        if (v29[2] == a3)
        {
          v31 = v9;
          if (sub_18A4A5DE8())
          {
            goto LABEL_28;
          }

          if (v7 >= v8[2])
          {
            goto LABEL_49;
          }
        }

        else
        {
          v34 = v9;
          if (v7 >= v28)
          {
LABEL_49:
            __break(1u);
            goto LABEL_50;
          }
        }

        LODWORD(v7) = *(v6 + 8);
        v35 = *(v29 + 8);

        v32 = v7 - v35;
        a4 = v42;
        v33 = *v42;
        a3 = v30;
        if (*v42 >= v7 - v35)
        {
LABEL_34:
          v5 += 3;
          v36 = v8[2];
          if (v5 >= v36)
          {
LABEL_56:
            __break(1u);
            goto LABEL_57;
          }

          v7 = &v11[5 * v5];
          v9 = *(v7 + 24);
          if (!v9)
          {
            if (v33 != 0x7FFFFFFF)
            {
              v9 = 0;
              *a5 = 3;
              *a4 = 0x7FFFFFFF;
              return v9;
            }

            return 0;
          }

          if (*(v7 + 16) != a3)
          {
            v38 = v9;
            if (v5 >= v36)
            {
LABEL_51:
              __break(1u);
LABEL_52:
              __break(1u);
              goto LABEL_53;
            }

            goto LABEL_44;
          }

          v37 = v9;
          if (sub_18A4A5DE8())
          {
LABEL_38:
            LODWORD(v7) = *(v6 + 8) + 1;
            *(v6 + 8) = v7;
            result = swift_isUniquelyReferenced_nonNull_native();
            if (result)
            {
LABEL_39:
              if (v5 < v8[2])
              {
                LODWORD(v8[5 * v5 + 8]) = v7;
                *v6 = v8;
                return v9;
              }

              __break(1u);
              goto LABEL_59;
            }

LABEL_57:
            result = sub_189212B4C(v8);
            v8 = result;
            goto LABEL_39;
          }

LABEL_50:
          if (v5 >= v8[2])
          {
            goto LABEL_51;
          }

LABEL_44:
          v39 = *(v6 + 8);
          v40 = *(v7 + 32);

          if (*v42 < v39 - v40)
          {
            v9 = 0;
            *a5 = 3;
            *v42 = v39 - v40;
            return v9;
          }

          return 0;
        }
      }

      else
      {
        v32 = 0x7FFFFFFF;
        v33 = 0x7FFFFFFF;
        if (v25 == 0x7FFFFFFF)
        {
          goto LABEL_34;
        }
      }

      *a5 = 2;
      *a4 = v32;
      v33 = v32;
      goto LABEL_34;
    }

LABEL_23:
    *a5 = 1;
    *a4 = v24;
    v25 = v24;
    goto LABEL_24;
  }

  v22 = a3;
  if (v21[2] == a3)
  {
    v23 = v9;
    result = sub_18A4A5DE8();
    if (result)
    {
LABEL_28:
      v5 = v7;
      goto LABEL_38;
    }

    v20 = v8[2];
  }

  else
  {
    result = v9;
  }

  if (v7 < v20)
  {
    v26 = *(v6 + 8);
    v27 = *(v21 + 8);

    v24 = v26 - v27;
    a4 = v42;
    v25 = *v42;
    a3 = v22;
    if (*v42 >= v26 - v27)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

LABEL_60:
  __break(1u);
  return result;
}

void sub_188BA5370(void *a1, char a2, void *a3)
{
  v6 = a2 & 1;
  if ([a1 isUserInteractionEnabled] != v6)
  {
    [a1 setUserInteractionEnabled_];
  }

  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (v7)
  {
    v8 = v7;
    v9 = a3;
    if ([v8 isEnabled] != (a2 & 1))
    {
      [v8 setEnabled_];
    }
  }
}

id sub_188BA5454()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for UICorePlatformViewHost();
  v1 = objc_msgSendSuper2(&v3, sel_hostedView);

  return v1;
}

id sub_188BA54D8(void *a1)
{
  v1 = a1;
  v2 = sub_188BA5454();

  return v2;
}

uint64_t sub_188BA552C(uint64_t a1, uint64_t a2, void (*a3)(void *))
{
  v7[5] = &unk_1EFFF4228;
  v5 = swift_dynamicCastObjCProtocolUnconditional();
  [v5 _setEnvironmentWrapper_];
  v7[3] = &_s13MutableTraitsVN;
  v7[4] = &off_1EFABCA98;
  v7[0] = v5;
  swift_unknownObjectRetain();
  a3(v7);
  return __swift_destroy_boxed_opaque_existential_0Tm(v7);
}

double sub_188BA55DC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t))
{
  [a2 _valueForCGFloatTraitToken_];
  v7 = v6;
  swift_unknownObjectRelease();
  return v7;
}

uint64_t UIMutableTraits.preferredContentSizeCategory.getter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 296);
  v5 = sub_188AFC388(&unk_1ED490C98, type metadata accessor for UIContentSizeCategory);
  v4(&v7, &type metadata for UITraitPreferredContentSizeCategory, &type metadata for UITraitPreferredContentSizeCategory, &protocol witness table for UITraitPreferredContentSizeCategory, v5, a1, a2);
  return v7;
}

uint64_t sub_188BA5744@<X0>(uint64_t a1@<X8>)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x68);
  swift_beginAccess();
  v4 = sub_18A4A4918();
  return (*(*(v4 - 8) + 16))(a1, &v1[v3], v4);
}

id sub_188BA57E8(uint64_t a1)
{
  v20 = a1;
  v21 = sub_18A4A4918();
  v2 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_18A4A5318();
  v5 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((sub_18A4A55B8() & 1) == 0)
  {
    goto LABEL_7;
  }

  if (!sub_188C11BD8())
  {
    goto LABEL_7;
  }

  swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA938928);
  sub_18A4A5398();
  swift_unknownObjectRelease();
  if (!v24)
  {
    goto LABEL_7;
  }

  v8 = v25;
  ObjectType = swift_getObjectType();
  v10 = (*(v8 + 8))(ObjectType, v8);
  if (!v10)
  {
    swift_unknownObjectRelease();
LABEL_7:
    sub_188BA3F60(v7);
    sub_188BA5744(v4);
    v13 = MEMORY[0x1E69E7D40];
    v14 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x1C8))(v7, v4);
    (*(v2 + 8))(v4, v21);
    v15 = *(v5 + 8);
    v16 = v22;
    v15(v7, v22);
    v17 = [v1 traitCollection];
    sub_188BA3F60(v7);
    v12 = (*((*v13 & *v1) + 0x1D0))(v17, v7, v14);

    v15(v7, v16);
    return v12;
  }

  v11 = type metadata accessor for UICorePlatformViewHost();
  v23.receiver = v1;
  v23.super_class = v11;
  v12 = objc_msgSendSuper2(&v23, sel__traitCollectionForChildEnvironment_, v20);
  swift_unknownObjectRelease();
  return v12;
}

uint64_t UIMutableTraits.layoutDirection.getter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 368);
  v5 = sub_188AFC388(&qword_1ED490C60, type metadata accessor for UITraitEnvironmentLayoutDirection);
  v4(&v7, &type metadata for UITraitLayoutDirection, &type metadata for UITraitLayoutDirection, &protocol witness table for UITraitLayoutDirection, v5, a1, a2);
  return v7;
}

uint64_t sub_188BA5C34@<X0>(void *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v8 = [a1 _valueForNSIntegerTraitToken_];
  swift_unknownObjectRelease();
  v10 = v8;
  return sub_188BA39A4(&v10, a2, a3, a5);
}

uint64_t sub_188BA5D24@<X0>(void *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v24 = a5;
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = sub_18A4A7D38();
  v22 = *(v10 - 8);
  v23 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v21 - v11;
  v13 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v21 - v15;
  v17 = [a1 _objectForTraitToken_];
  swift_unknownObjectRelease();
  if (v17)
  {
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
  }

  else
  {
    v25 = 0u;
    v26 = 0u;
  }

  v27[0] = v25;
  v27[1] = v26;
  sub_188A3F29C(v27, &v25, &qword_1EA934050);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934050);
  v18 = swift_dynamicCast();
  v19 = *(v13 + 56);
  if (v18)
  {
    v19(v12, 0, 1, AssociatedTypeWitness);
    (*(v13 + 32))(v16, v12, AssociatedTypeWitness);
    sub_188BA39A4(v16, a2, a3, v24);
    (*(v13 + 8))(v16, AssociatedTypeWitness);
  }

  else
  {
    v19(v12, 1, 1, AssociatedTypeWitness);
    (*(v22 + 8))(v12, v23);
    (*(a3 + 16))(a2, a3);
  }

  return sub_188A3F5FC(v27, &qword_1EA934050);
}

uint64_t sub_188BA605C@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_18A4A7258();

  *a1 = v2;
  return result;
}

uint64_t UIMutableTraits.userInterfaceStyle.getter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 368);
  v5 = sub_188AFC388(&unk_1ED4910B0, type metadata accessor for UIUserInterfaceStyle);
  v4(&v7, &type metadata for UITraitUserInterfaceStyle, &type metadata for UITraitUserInterfaceStyle, &protocol witness table for UITraitUserInterfaceStyle, v5, a1, a2);
  return v7;
}

uint64_t UIMutableTraits.displayGamut.getter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 368);
  v5 = sub_188AFC388(&qword_1ED490CB0, type metadata accessor for UIDisplayGamut);
  v4(&v7, &type metadata for UITraitDisplayGamut, &type metadata for UITraitDisplayGamut, &protocol witness table for UITraitDisplayGamut, v5, a1, a2);
  return v7;
}

uint64_t UIMutableTraits.accessibilityContrast.getter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 368);
  v5 = sub_188AFC388(&unk_1ED490C88, type metadata accessor for UIAccessibilityContrast);
  v4(&v7, &type metadata for UITraitAccessibilityContrast, &type metadata for UITraitAccessibilityContrast, &protocol witness table for UITraitAccessibilityContrast, v5, a1, a2);
  return v7;
}

uint64_t UIMutableTraits.horizontalSizeClass.getter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 368);
  v5 = sub_188AFC388(&qword_1ED491048, type metadata accessor for UIUserInterfaceSizeClass);
  v4(&v7, &type metadata for UITraitHorizontalSizeClass, &type metadata for UITraitHorizontalSizeClass, &protocol witness table for UITraitHorizontalSizeClass, v5, a1, a2);
  return v7;
}

uint64_t UIMutableTraits.verticalSizeClass.getter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 368);
  v5 = sub_188AFC388(&qword_1ED491048, type metadata accessor for UIUserInterfaceSizeClass);
  v4(&v7, &type metadata for UITraitVerticalSizeClass, &type metadata for UITraitVerticalSizeClass, &protocol witness table for UITraitVerticalSizeClass, v5, a1, a2);
  return v7;
}

uint64_t UIMutableTraits.userInterfaceLevel.getter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 368);
  v5 = sub_188AFC388(qword_1ED4906D0, type metadata accessor for UIUserInterfaceLevel);
  v4(&v7, &type metadata for UITraitUserInterfaceLevel, &type metadata for UITraitUserInterfaceLevel, &protocol witness table for UITraitUserInterfaceLevel, v5, a1, a2);
  return v7;
}

uint64_t sub_188BA64C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_getAssociatedTypeWitness();
  sub_18A4A74E8();
  [*v5 _setNSIntegerValue_forTraitToken_];
  return swift_unknownObjectRelease();
}

void sub_188BA659C()
{
  sub_18A4A5318();
  if (v0 <= 0x3F)
  {
    sub_18A4A4918();
    if (v1 <= 0x3F)
    {
      swift_getAssociatedTypeWitness();
      if (v2 <= 0x3F)
      {
        sub_188BA67A8(319, &qword_1ED48DBF8, MEMORY[0x1E697E1F0]);
        if (v3 <= 0x3F)
        {
          sub_188BA67A8(319, &qword_1ED48DBF0, MEMORY[0x1E697E260]);
          if (v4 <= 0x3F)
          {
            swift_initClassMetadata2();
          }
        }
      }
    }
  }
}

void sub_188BA67A8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_18A4A7D38();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_188BA67FC()
{
  LOBYTE(v0) = byte_1ED48DD50;
  if (byte_1ED48DD50 == 2)
  {
    v1 = [objc_opt_self() standardUserDefaults];
    v2 = sub_18A4A7258();
    v0 = [v1 objectForKey_];

    if (v0)
    {
      sub_18A4A7DE8();
      swift_unknownObjectRelease();
      sub_188A3F5FC(v5, &qword_1EA934050);
      v3 = sub_18A4A7258();
      LOBYTE(v0) = [v1 BOOLForKey_];

      byte_1ED48DD50 = v0;
    }

    else
    {
      memset(v5, 0, sizeof(v5));
      sub_188A3F5FC(v5, &qword_1EA934050);
      byte_1ED48DD50 = 0;
    }
  }

  return v0 & 1;
}

void *sub_188BA6950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v47 = a5;
  v48 = a4;
  v42 = a3;
  v43 = a2;
  v46 = a1;
  v6 = MEMORY[0x1E69E7D40];
  v7 = *v5;
  v8 = *MEMORY[0x1E69E7D40];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v41 = &v39 - v11;
  v12 = v5 + *((v8 & v7) + 0x78);
  *(v12 + 1) = 0;
  swift_unknownObjectWeakInit();
  *(v5 + *((*v6 & *v5) + 0x80)) = 2;
  *(v5 + *((*v6 & *v5) + 0x88)) = 1;
  v13 = *((*v6 & *v5) + 0x90);
  type metadata accessor for UICoreSafeAreaHelper();
  v14 = swift_allocObject();
  *(v14 + 16) = 0u;
  *(v14 + 32) = 0u;
  *(v14 + 48) = 1;
  *(v14 + 56) = 0u;
  *(v14 + 72) = 0u;
  *(v14 + 88) = 1;
  *(v5 + v13) = v14;
  v15 = (v5 + *((*v6 & *v5) + 0x98));
  v16 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
  *v15 = v16;
  v15[1] = v16;
  swift_unknownObjectWeakInit();
  *(v5 + *((*v6 & *v5) + 0xA8)) = 0;
  *(v5 + *((*v6 & *v5) + 0xB0)) = 2;
  v17 = *((*v6 & *v5) + 0xB8);
  v18 = sub_18A4A4798();
  (*(*(v18 - 8) + 56))(v5 + v17, 1, 1, v18);
  *(v5 + *((*v6 & *v5) + 0xC0)) = 0;
  v19 = *((*v6 & *v5) + 0xC8);
  v20 = sub_18A4A4998();
  (*(*(v20 - 8) + 56))(v5 + v19, 1, 1, v20);
  v21 = *((*v6 & *v5) + 0x60);
  v22 = sub_18A4A5318();
  v23 = *(v22 - 8);
  v24 = *(v23 + 16);
  v45 = v22;
  v24(v5 + v21, v48);
  v25 = *((*v6 & *v5) + 0x68);
  v26 = sub_18A4A4918();
  v27 = *(v26 - 8);
  v28 = *(v27 + 16);
  v44 = v26;
  v28(v5 + v25, v47);
  v29 = *(v10 + 16);
  v30 = v5 + *((*v6 & *v5) + 0x70);
  v39 = v10 + 16;
  v40 = AssociatedTypeWitness;
  v29(v30, v46, AssociatedTypeWitness);
  swift_beginAccess();
  *(v12 + 1) = v42;
  swift_unknownObjectWeakAssign();
  v31 = type metadata accessor for UICorePlatformViewHost();
  v50.receiver = v5;
  v50.super_class = v31;
  v32 = objc_msgSendSuper2(&v50, sel_initWithHostedView_, 0);
  if (sub_18A4A55B8())
  {
    sub_18A4A6CC8();
    *(v32 + *((*v6 & *v32) + 0x80)) = (sub_18A4A53A8() & 1) == 0;
  }

  sub_18A4A6CC8();
  if (sub_18A4A53A8())
  {
    v33 = [v32 layer];
    [v33 setAllowsGroupOpacity_];

    v34 = [v32 layer];
    [v34 setAllowsGroupBlending_];
  }

  if (sub_18A4A55B8())
  {
    v29(v41, v46, v40);
    sub_188A34624(0, &qword_1ED48D5A0);
    swift_dynamicCast();
    v35 = v49;
    swift_unknownObjectWeakAssign();
  }

  else
  {
    v35 = sub_188BA4554();
    [v32 setHostedView_];
  }

  v36 = v47;
  v37 = v48;
  sub_188BA420C(v48, v47);
  sub_18A4A5538();
  sub_188BA48D8(0);
  (*(v27 + 8))(v36, v44);
  (*(v23 + 8))(v37, v45);
  return v32;
}

void sub_188BA6FE8(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_188BA703C(a3);
}

void sub_188BA703C(char a1)
{
  if (byte_1ED48DD50 != 2)
  {
    if ((byte_1ED48DD50 & 1) == 0)
    {
      return;
    }

    goto LABEL_6;
  }

  v3 = [objc_opt_self() standardUserDefaults];
  v4 = sub_18A4A7258();
  v5 = [v3 objectForKey_];

  if (!v5)
  {
    memset(v9, 0, sizeof(v9));
    sub_188A3F5FC(v9, &qword_1EA934050);
    byte_1ED48DD50 = 0;

    return;
  }

  sub_18A4A7DE8();
  swift_unknownObjectRelease();
  sub_188A3F5FC(v9, &qword_1EA934050);
  v6 = sub_18A4A7258();
  v7 = [v3 BOOLForKey_];

  byte_1ED48DD50 = v7;
  if (v7)
  {
LABEL_6:
    v8.receiver = v1;
    v8.super_class = type metadata accessor for UICorePlatformViewHost();
    objc_msgSendSuper2(&v8, sel__setHostsLayoutEngine_, a1 & 1);
  }
}

void sub_188BA71F0(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  sub_188BA724C(a3);
}

void sub_188BA724C(void *a1)
{
  v3 = MEMORY[0x1E69E7D40];
  v4.receiver = v1;
  v4.super_class = type metadata accessor for UICorePlatformViewHost();
  objc_msgSendSuper2(&v4, sel_setHostedView_, a1);

  *(v1 + *((*v3 & *v1) + 0xB0)) = 2;
}

void sub_188BA72FC(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_188BA7364(v4);
}

void sub_188BA7364(id a1)
{
  v7.receiver = v1;
  v7.super_class = type metadata accessor for UICorePlatformViewHost();
  objc_msgSendSuper2(&v7, sel_didAddSubview_, a1);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = [Strong view];
    v6 = [v1 hostedView];
    if (v6)
    {
    }

    else
    {
      if (!v5)
      {
        v5 = v4;
        goto LABEL_5;
      }

      if (v5 == a1)
      {
        [v1 setHostedView_];
      }
    }

LABEL_5:
  }
}

double sub_188BA7484(void *a1)
{
  v1 = a1;
  v2 = sub_188BA74E0();

  return v2;
}

double sub_188BA74E0()
{
  v1 = sub_188BA75C8();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v12.receiver = v0;
  v12.super_class = type metadata accessor for UICorePlatformViewHost();
  objc_msgSendSuper2(&v12, sel_safeAreaInsets);
  if (v1 == 1.79769313e308 && v3 == 1.79769313e308 && v5 == 1.79769313e308)
  {
    if (v7 == 1.79769313e308)
    {
      return v8;
    }

    else
    {
      return 1.79769313e308;
    }
  }

  return v1;
}

double sub_188BA75C8()
{
  v1 = v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0x98);
  swift_beginAccess();
  return *v1;
}

void *sub_188BA7658()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93DFF8);
  swift_allocObject();
  result = sub_188BA7728(sub_188BA7A70, 0);
  qword_1ED48E9A0 = result;
  return result;
}

void *sub_188BA7728(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA934250);
  v5 = sub_18A4A75D8();
  *(v5 + 16) = 32;
  *(v5 + 32) = 0u;
  *(v5 + 48) = 0u;
  *(v5 + 64) = 0;
  *(v5 + 72) = 0u;
  *(v5 + 88) = 0u;
  *(v5 + 104) = 0;
  *(v5 + 112) = 0u;
  *(v5 + 128) = 0u;
  *(v5 + 144) = 0;
  *(v5 + 152) = 0u;
  *(v5 + 168) = 0u;
  *(v5 + 184) = 0;
  *(v5 + 192) = 0u;
  *(v5 + 208) = 0u;
  *(v5 + 224) = 0;
  *(v5 + 232) = 0u;
  *(v5 + 248) = 0u;
  *(v5 + 264) = 0;
  *(v5 + 304) = 0;
  *(v5 + 272) = 0u;
  *(v5 + 288) = 0u;
  *(v5 + 344) = 0;
  *(v5 + 312) = 0u;
  *(v5 + 328) = 0u;
  *(v5 + 384) = 0;
  *(v5 + 352) = 0u;
  *(v5 + 368) = 0u;
  *(v5 + 424) = 0;
  *(v5 + 392) = 0u;
  *(v5 + 408) = 0u;
  *(v5 + 464) = 0;
  *(v5 + 432) = 0u;
  *(v5 + 448) = 0u;
  *(v5 + 472) = 0u;
  *(v5 + 488) = 0u;
  *(v5 + 504) = 0;
  *(v5 + 544) = 0;
  *(v5 + 512) = 0u;
  *(v5 + 528) = 0u;
  *(v5 + 584) = 0;
  *(v5 + 552) = 0u;
  *(v5 + 568) = 0u;
  *(v5 + 624) = 0;
  *(v5 + 592) = 0u;
  *(v5 + 608) = 0u;
  *(v5 + 664) = 0;
  *(v5 + 632) = 0u;
  *(v5 + 648) = 0u;
  *(v5 + 704) = 0;
  *(v5 + 672) = 0u;
  *(v5 + 688) = 0u;
  *(v5 + 744) = 0;
  *(v5 + 712) = 0u;
  *(v5 + 728) = 0u;
  *(v5 + 784) = 0;
  *(v5 + 752) = 0u;
  *(v5 + 768) = 0u;
  *(v5 + 824) = 0;
  *(v5 + 792) = 0u;
  *(v5 + 808) = 0u;
  *(v5 + 864) = 0;
  *(v5 + 832) = 0u;
  *(v5 + 848) = 0u;
  *(v5 + 904) = 0;
  *(v5 + 872) = 0u;
  *(v5 + 888) = 0u;
  *(v5 + 944) = 0;
  *(v5 + 912) = 0u;
  *(v5 + 928) = 0u;
  *(v5 + 984) = 0;
  *(v5 + 952) = 0u;
  *(v5 + 968) = 0u;
  *(v5 + 1024) = 0;
  *(v5 + 992) = 0u;
  *(v5 + 1008) = 0u;
  *(v5 + 1064) = 0;
  *(v5 + 1032) = 0u;
  *(v5 + 1048) = 0u;
  *(v5 + 1104) = 0;
  *(v5 + 1088) = 0u;
  *(v5 + 1072) = 0u;
  *(v5 + 1144) = 0;
  *(v5 + 1112) = 0u;
  *(v5 + 1128) = 0u;
  *(v5 + 1184) = 0;
  *(v5 + 1168) = 0u;
  *(v5 + 1152) = 0u;
  *(v5 + 1224) = 0;
  *(v5 + 1192) = 0u;
  *(v5 + 1208) = 0u;
  *(v5 + 1264) = 0;
  *(v5 + 1248) = 0u;
  *(v5 + 1232) = 0u;
  *(v5 + 1304) = 0;
  *(v5 + 1272) = 0u;
  *(v5 + 1288) = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EA93E008);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v6 + 24) = v5;
  *(v6 + 32) = 0;
  v2[3] = a2;
  v2[4] = v6;
  v2[2] = a1;
  return v2;
}

uint64_t sub_188BA7928()
{
  swift_getTupleTypeMetadata3();
  result = sub_18A4A7D38();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_188BA79D8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

id sub_188BA7A70@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 12);
  sub_18A4A5DF8();
  v5 = v4;
  sub_18A4A5E18();
  v7 = v6;
  sub_18A4A5E08();
  result = [objc_allocWithZone(UIColor) initWithRed:v5 green:v7 blue:v8 alpha:v3];
  *a2 = result;
  return result;
}

void sub_188BA7B28(void *a1)
{
  v1 = a1;
  sub_188BA7B70();
}

void sub_188BA7B70()
{
  v1 = v0;
  v2 = MEMORY[0x1E69E7D40];
  [v0 safeAreaInsets];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = sub_18A4A55E8();
  v12 = *(v1 + *((*v2 & *v1) + 0x90));
  v13 = (v1 + *((*v2 & *v1) + 0x98));
  swift_beginAccess();
  sub_188BA7E08(v13, v1, v11 & 1);
  if ((*(v12 + 48) & 1) == 0)
  {
    v14 = *(v12 + 32);
    *v13 = *(v12 + 16);
    v13[1] = v14;
    *(v12 + 16) = 0u;
    *(v12 + 32) = 0u;
    *(v12 + 48) = 1;
  }

  swift_endAccess();
  v27.receiver = v1;
  v27.super_class = type metadata accessor for UICorePlatformViewHost();
  objc_msgSendSuper2(&v27, sel__updateSafeAreaInsets);
  [v1 safeAreaInsets];
  if (v4 != v18 || v6 != v15 || v8 != v16 || v10 != v17)
  {
    if (sub_18A4A55B8())
    {
      v22 = sub_188BA4554();
      [v22 _setViewDelegateContentOverlayInsetsAreClean_];
    }

    if (*(v1 + *((*v2 & *v1) + 0x88)) == 1)
    {
      v23 = objc_opt_self();
      v24 = [v23 areAnimationsEnabled];
      [v23 setAnimationsEnabled_];
      v25 = sub_188BA4554();
      [v25 _updateSafeAreaInsets];

      [v23 setAnimationsEnabled_];
    }

    else
    {
      v26 = sub_188BA4554();
      [v26 _updateSafeAreaInsets];
    }

    *(v1 + *((*v2 & *v1) + 0x88)) = 0;
  }
}

void sub_188BA7E08(float64x2_t *a1, id a2, char a3)
{
  v7 = [a2 superview];
  if (v7)
  {
    v8 = v7;
    [v7 safeAreaInsets];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    if ((a3 & 1) != 0 && (*(v3 + 88) & 1) == 0)
    {
      v17 = (v3 + 88);
      if (*(v3 + 48))
      {
        v18 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
        if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_f64(*a1, v18), vceqq_f64(a1[1], v18))))))
        {
          v85 = *(v3 + 80);
          v89 = *(v3 + 72);
          v77 = *a1;
          v79 = a1[1];
          v91 = *(v3 + 56);
          v81 = *(v3 + 64);
          [a2 frame];
          v20 = v19;
          v22 = v21;
          v24 = v23;
          v26 = v25;
          [v8 bounds];
          v73 = v27;
          v75 = v28;
          v93.origin.x = v20;
          v93.origin.y = v22;
          v93.size.width = v24;
          v93.size.height = v26;
          MinX = CGRectGetMinX(v93);
          v30 = fabs(v12) < 0.25 || MinX > 0.0;
          v31 = v12 - v81;
          if (v30)
          {
            v31 = 0.0;
          }

          v82 = v31;
          v94.origin.x = v20;
          v94.origin.y = v22;
          v94.size.width = v24;
          v94.size.height = v26;
          MinY = CGRectGetMinY(v94);
          v33 = fabs(v10) < 0.25 || MinY > 0.0;
          v34 = v10 - v91;
          if (v33)
          {
            v34 = 0.0;
          }

          v71 = v34;
          v95.origin.x = v20;
          v95.origin.y = v22;
          v95.size.width = v24;
          v95.size.height = v26;
          v30 = v73 > CGRectGetMaxX(v95);
          v35 = 0.0;
          if (!v30)
          {
            v35 = v16 - v85;
          }

          v86 = v35;
          v96.origin.x = v20;
          v96.origin.y = v22;
          v96.size.width = v24;
          v96.size.height = v26;
          if (v75 > CGRectGetMaxY(v96))
          {
            v36 = 0.0;
          }

          else
          {
            v36 = v14 - v89;
          }

          v38 = v77.f64[0];
          v37 = v79.f64[0];
          v39 = v77.f64[1];
          v40 = v79.f64[1];
          if (v71 != 0.0 || v82 != 0.0 || v36 != 0.0 || v86 != 0.0)
          {
            v38 = v77.f64[0] + v71;
            v40 = v79.f64[1] + v86;
            v37 = v79.f64[0] + v36;
            v39 = v77.f64[1] + v82;
          }

          a1->f64[0] = v38;
          a1->f64[1] = v39;
          a1[1].f64[0] = v37;
          a1[1].f64[1] = v40;
        }

        else
        {
        }
      }

      else
      {
        v80 = *(v3 + 40);
        v76 = *(v3 + 24);
        v78 = *(v3 + 32);
        v74 = *(v3 + 16);
        v87 = *(v3 + 80);
        v90 = *(v3 + 72);
        v92 = *(v3 + 56);
        v83 = *(v3 + 64);
        [a2 frame];
        v45 = v44;
        v47 = v46;
        v49 = v48;
        v51 = v50;
        [v8 bounds];
        v70 = v52;
        v72 = v53;
        v97.origin.x = v45;
        v97.origin.y = v47;
        v97.size.width = v49;
        v97.size.height = v51;
        v54 = CGRectGetMinX(v97);
        v55 = fabs(v12) < 0.25 || v54 > 0.0;
        v56 = v12 - v83;
        if (v55)
        {
          v56 = 0.0;
        }

        v84 = v56;
        v98.origin.x = v45;
        v98.origin.y = v47;
        v98.size.width = v49;
        v98.size.height = v51;
        v57 = CGRectGetMinY(v98);
        v58 = fabs(v10) < 0.25 || v57 > 0.0;
        v59 = v10 - v92;
        if (v58)
        {
          v59 = 0.0;
        }

        v69 = v59;
        v99.origin.x = v45;
        v99.origin.y = v47;
        v99.size.width = v49;
        v99.size.height = v51;
        if (v70 > CGRectGetMaxX(v99))
        {
          v60 = 0.0;
        }

        else
        {
          v60 = v16 - v87;
        }

        v88 = v60;
        v100.origin.x = v45;
        v100.origin.y = v47;
        v100.size.width = v49;
        v100.size.height = v51;
        if (v72 > CGRectGetMaxY(v100))
        {
          v61 = 0.0;
        }

        else
        {
          v61 = v14 - v90;
        }

        if (v69 == 0.0 && v84 == 0.0 && v61 == 0.0 && v88 == 0.0)
        {
          v66 = v80;
          v68 = v76;
          v67 = v78;
          v65 = v74;
        }

        else
        {
          v65 = v74 + v69;
          v66 = v80 + v88;
          v67 = v78 + v61;
          v68 = v76 + v84;
        }

        *(v3 + 16) = v65;
        *(v3 + 24) = v68;
        *(v3 + 32) = v67;
        *(v3 + 40) = v66;
        *(v3 + 48) = 0;
      }

      *(v3 + 56) = v10;
      *(v3 + 64) = v12;
    }

    else
    {

      *(v3 + 56) = v10;
      *(v3 + 64) = v12;
      v17 = (v3 + 88);
    }

    *(v3 + 72) = v14;
    *(v3 + 80) = v16;
    *v17 = 0;
  }
}

id sub_188BA8210(double a1, double a2, double a3, double a4)
{
  v10.receiver = v4;
  v10.super_class = type metadata accessor for UICorePlatformViewHost();
  return objc_msgSendSuper2(&v10, sel_setSafeAreaInsets_, a1, a2, a3, a4);
}

void sub_188BA82B0(void *a1, double a2, double a3, double a4, double a5)
{
  v9 = a1;
  sub_188BA8210(a2, a3, a4, a5);
}

void sub_188BA8328(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  sub_188BA8394(a3);
}

id sub_188BA8394(uint64_t a1)
{
  v2 = v1;
  v4 = sub_18A4A4918();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_18A4A5318();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    goto LABEL_15;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_15;
  }

  v13 = Strong;
  v41 = v5;
  v42 = v4;
  v43 = v9;
  v44 = v8;
  result = [Strong view];
  if (result)
  {
    v15 = result;
    if (!sub_188C11BD8())
    {
      goto LABEL_13;
    }

    swift_getObjectType();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA938928);
    sub_18A4A5398();
    swift_unknownObjectRelease();
    v16 = v45;
    if (!v45)
    {
      goto LABEL_13;
    }

    v17 = v46;
    sub_18A4A6CE8();
    v18 = sub_18A4A53A8();
    ObjectType = swift_getObjectType();
    if (v18)
    {
      v20 = sub_188C1212C(ObjectType, v17);
    }

    else
    {
      v20 = (*(v17 + 8))(ObjectType, v17);
    }

    if (!v20)
    {
      swift_unknownObjectRelease();
      goto LABEL_13;
    }

    v21 = *(v2 + *((*MEMORY[0x1E69E7D40] & *v2) + 0x80));
    if (v21 == 2)
    {
      v22 = v20;
      swift_unknownObjectRelease();

LABEL_13:
      [v2 setHostedView_];
      v23 = v15;
      v15 = v13;
LABEL_14:

LABEL_15:
      v24 = type metadata accessor for UICorePlatformViewHost();
      v47.receiver = v2;
      v47.super_class = v24;
      return objc_msgSendSuper2(&v47, sel_willMoveToSuperview_, a1);
    }

    v25 = v20;
    v26 = [v13 parentViewController];
    v40 = v16;
    if (v21)
    {
      if (v26)
      {
        v27 = v26;

        if (v27 == v25)
        {
          goto LABEL_28;
        }
      }

      else
      {
      }

      v29 = [v2 window];
      if (v29)
      {

        [v25 addChildViewController_];
        [v2 setHostedView_];
      }

      goto LABEL_28;
    }

    if (v26)
    {
      v28 = v26;

      if (v28 == v25)
      {
        goto LABEL_28;
      }
    }

    else
    {
    }

    [v25 addChildViewController_];
LABEL_28:
    v38 = v25;
    sub_188BA3F60(v11);
    sub_188BA5744(v7);
    v39 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0x1C8))(v11, v7);
    (*(v41 + 8))(v7, v42);
    v30 = v44;
    v31 = *(v43 + 1);
    v42 = v13;
    v43 = v31;
    v31(v11, v44);
    v32 = [objc_allocWithZone(UITraitCollection) init];
    sub_188BA3F60(v11);
    v33 = v39;
    v34 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0x1D0))(v32, v11, v39);

    v43(v11, v30);
    v35 = v34;
    v36 = v38;
    v23 = v42;
    [v38 setOverrideTraitCollection:v35 forChildViewController:v42];
    swift_unknownObjectRelease();

    goto LABEL_14;
  }

  __break(1u);
  return result;
}

id sub_188BA88DC()
{
  v1 = MEMORY[0x1E69E7D40];
  v2 = [v0 window];
  if (!v2)
  {
    goto LABEL_33;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_33;
  }

  v4 = Strong;
  result = [Strong view];
  if (result)
  {
    v6 = result;
    if (!sub_188C11BD8())
    {
      goto LABEL_32;
    }

    swift_getObjectType();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA938928);
    sub_18A4A5398();
    swift_unknownObjectRelease();
    if (!v21)
    {
      goto LABEL_32;
    }

    sub_18A4A6CE8();
    v7 = sub_18A4A53A8();
    ObjectType = swift_getObjectType();
    if (v7)
    {
      v9 = sub_188C1212C(ObjectType, v22);
      if (!v9)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v9 = (*(v22 + 8))(ObjectType);
      if (!v9)
      {
LABEL_15:
        swift_unknownObjectRelease();
        goto LABEL_16;
      }
    }

    v10 = *(v0 + *((*v1 & *v0) + 0x80));
    if (v10 == 2)
    {
      swift_unknownObjectRelease();

LABEL_16:
LABEL_33:
      v23.receiver = v0;
      v23.super_class = type metadata accessor for UICorePlatformViewHost();
      return objc_msgSendSuper2(&v23, sel_didMoveToWindow);
    }

    if (v10)
    {
      [v9 addChildViewController_];
LABEL_14:
      [v0 setHostedView_];
      [v4 didMoveToParentViewController_];

      goto LABEL_15;
    }

    v9 = v9;
    v11 = [v4 parentViewController];
    if (v11)
    {
      v12 = v11;

      if (v12 == v9)
      {
        goto LABEL_22;
      }
    }

    else
    {
    }

    [v9 addChildViewController_];
LABEL_22:
    v13 = [v4 presentedViewController];
    if (v13)
    {
      v14 = v13;
      v15 = [v13 modalPresentationStyle];

      v16 = v15 != 3;
    }

    else
    {
      v16 = 1;
    }

    v17 = [v4 presentedViewController];
    if (v17)
    {
      v18 = v17;
      v19 = [v17 isBeingDismissed];
    }

    else
    {
      v19 = 0;
    }

    v20 = [v0 hostedView];
    if (v20)
    {
    }

    else if ((v16 | v19))
    {
      goto LABEL_14;
    }

    swift_unknownObjectRelease();

LABEL_32:
    goto LABEL_33;
  }

  __break(1u);
  return result;
}

void sub_188BA8C2C(void *a1)
{
  v1 = a1;
  sub_188BA88DC();
}

void sub_188BA8C74()
{
  v1.receiver = v0;
  v1.super_class = type metadata accessor for UICorePlatformViewHost();
  objc_msgSendSuper2(&v1, sel_layoutSubviews);
  sub_188BA8D30();
}

void sub_188BA8CE8(void *a1)
{
  v1 = a1;
  sub_188BA8C74();
}

void sub_188BA8D30()
{
  v1 = sub_188BA67FC();
  v2 = [v0 hostedView];
  if (v2)
  {
    v3 = v2;
    if (([v2 _wantsConstraintBasedLayout] & v1 & 1) == 0)
    {
      [v0 bounds];
      if (CGRectGetWidth(v5) != 0.0)
      {
        [v0 bounds];
        if (CGRectGetHeight(v6) != 0.0)
        {
          [v0 bounds];
          [v3 frameForAlignmentRect_];
          [v3 setFrame_];
        }
      }
    }
  }
}

double UITraitCollection.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return sub_188CCA298(a1, a2, a3, &unk_1EFABC0D0, sub_188CCA300);
}

{
  return sub_188CCA298(a1, a2, a3, &unk_1EFABC080, sub_188CCA300);
}

CGColorSpaceRef __sRGBColorSpace_block_invoke()
{
  if (dyld_program_sdk_at_least())
  {
    result = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
  }

  else
  {
    result = CGColorSpaceCreateDeviceRGB();
  }

  qword_1ED49BEF8 = result;
  return result;
}

uint64_t UITraitCollection.modifyingTraits(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_188C01D34;
  *(v7 + 24) = v6;
  v11[4] = sub_188E36B9C;
  v11[5] = v7;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_188A7AC24;
  v11[3] = &block_descriptor_64;
  v8 = _Block_copy(v11);

  v9 = [v3 traitCollectionByModifyingTraits_];
  _Block_release(v8);
  LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

  if ((v8 & 1) == 0)
  {
    return v9;
  }

  __break(1u);
  return result;
}

uint64_t sub_188BA9480()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

void sub_188BA94B8(uint64_t a1, uint64_t a2)
{
  v4 = [objc_opt_self() mainRunLoop];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9344A0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_18A64BFB0;
  v6 = *MEMORY[0x1E695DA28];
  *(v5 + 32) = *MEMORY[0x1E695DA28];
  type metadata accessor for Mode(0);
  v7 = v6;
  v8 = sub_18A4A7518();

  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  v11[4] = sub_188A4A9DC;
  v11[5] = v9;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_188A4A8F0;
  v11[3] = &block_descriptor_111;
  v10 = _Block_copy(v11);

  [v4 performInModes:v8 block:v10];
  _Block_release(v10);
}

uint64_t sub_188BA9638()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

void sub_188BA9684()
{
  v1 = sub_18A4A2AF8();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v2 = sub_18A4A2A78();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = sub_18A4A2A58();
  v4 = [v0 _environmentWrapper];
  if (!v4)
  {
    goto LABEL_7;
  }

  sub_18A4A5A28();
  if (!swift_dynamicCastClass())
  {

LABEL_7:
    sub_18A4A5308();
    sub_18A4A2A18();
    sub_18A4A5138();
    sub_18A4A2A68();
    sub_18A4A5148();
    sub_18A4A2AE8();
    sub_18A4A5158();
    return;
  }

  sub_18A4A59F8();
}

uint64_t _UIUpdateAdaptiveRateNeeded()
{
  if (qword_1ED49FCA0 != -1)
  {
    dispatch_once(&qword_1ED49FCA0, &__block_literal_global_2_13);
  }

  return byte_1ED49FC89;
}

char *sub_188BA9C08(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_18A4A7F68();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v13 = MEMORY[0x1E69E7CC0];
  result = sub_188B221A4(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        sub_188E4AFBC(i, a1);
        sub_188A34624(0, &qword_1ED48EE50);
        swift_dynamicCast();
        v13 = v3;
        v7 = *(v3 + 16);
        v6 = *(v3 + 24);
        if (v7 >= v6 >> 1)
        {
          sub_188B221A4((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v7 + 1;
        sub_188A55538(v12, (v3 + 32 * v7 + 32));
      }
    }

    else
    {
      v8 = (a1 + 32);
      sub_188A34624(0, &qword_1ED48EE50);
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = *(v3 + 16);
        v10 = *(v3 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_188B221A4((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v11 + 1;
        sub_188A55538(v12, (v3 + 32 * v11 + 32));
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_188BA9E60(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  swift_unknownObjectRetain();
  v6 = a3;
  v5(a2, v6);

  return swift_unknownObjectRelease();
}

uint64_t _insetsOfTopViewControllerScrollViewAutomaticallyAdjustedForLargeTitleView(void *a1)
{
  v1 = a1;
  v2 = [v1 _contentOrObservableScrollViewForEdge:1];
  if (v2)
  {
    v3 = [v1 edgesForExtendedLayout];
    v4 = v2;
    v5 = v1;
    v6 = v4[10];

    if (v6 == v5)
    {
      v11 = [v4 _edgesApplyingSafeAreaInsetsToContentInset] & 1;
    }

    else
    {
      v7 = [v4 superview];
      if (v7)
      {
        v8 = v7;
        while (1)
        {
          v9 = [v5 view];

          if (v8 == v9)
          {
LABEL_8:
            v11 = 1;
            goto LABEL_13;
          }

          if (([v8 _edgesPropagatingSafeAreaInsetsToSubviews] & 1) == 0)
          {
            break;
          }

          v10 = [v8 superview];

          v8 = v10;
          if (!v10)
          {
            goto LABEL_8;
          }
        }

        v11 = 0;
LABEL_13:
      }

      else
      {
        v11 = 1;
      }
    }

    [v5 _navigationControllerContentInsetAdjustment];
    if (v16 == 0.0)
    {
      v17 = v11;
    }

    else
    {
      v17 = 1;
    }

    if (v13 != 0.0)
    {
      v17 = 1;
    }

    if (v15 != 0.0)
    {
      v17 = 1;
    }

    if (v14 != 0.0)
    {
      v17 = 1;
    }

    if (v3)
    {
      v12 = v17;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

void sub_188BAA358(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_188BAA3EC()
{
  v1 = v0;
  v9.receiver = v0;
  v9.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v9, sel__observedScrollViewDidScroll);
  v2 = [v0 stack];
  v3 = [v2 topEntry];

  if (v3)
  {
    v4 = [v3 isSearchActive];
    v5 = [(_UINavigationBarItemStackEntry *)v3 _typedStorage];
    v6 = v4 ? sub_18901F25C() : sub_18901F250();
    v7 = v6;

    if (v7)
    {
      if (!*&v1[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_transitionContext])
      {

        sub_1890CAFA8(v8, 0);
      }
    }
  }
}

void sub_188BAA4F0(void *a1)
{
  v2 = v1;
  v4 = [v1 stack];
  v5 = [v4 state];

  if (v5)
  {
    return;
  }

  v6 = [v2 navigationBar];
  v7 = [v6 _canDrawContent];

  if (v7)
  {
    return;
  }

  v33 = [a1 _stackEntry];
  if (!_UIBarsApplyChromelessEverywhere() || (v8 = [v2 navigationBar], v9 = objc_msgSend(v8, sel__effectiveDelegateSupportsScrollEdgeTransitionProgress), v8, !v9))
  {
    if (v33)
    {
      v12 = v33;
      v10 = [(_UINavigationBarItemStackEntry *)v12 _typedStorage];
      goto LABEL_11;
    }

LABEL_20:
    v22 = sub_188B376FC(a1);
    [a1 _manualScrollEdgeAppearanceProgress];
    if ((v22 & 1) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_21;
  }

  if (!v33)
  {
    goto LABEL_20;
  }

  v10 = v33;
  v11 = [v10 isSearchActive];
  v12 = [(_UINavigationBarItemStackEntry *)v10 _typedStorage];
  if (v11)
  {
    v13 = sub_18901F25C();
    goto LABEL_12;
  }

LABEL_11:
  v13 = sub_18901F250();
LABEL_12:
  v14 = v13;

  v15 = sub_188B376FC(a1);
  v16 = v15;
  if (v14)
  {
    v17 = *(v14 + 240);
    if ((v15 & 1) != v17)
    {
      *(v14 + 240) = v15 & 1;

      sub_188B386EC();
    }

    [a1 _manualScrollEdgeAppearanceProgress];
    v19 = v18;
    v20 = *(v14 + 248);
    *(v14 + 248) = v18;
    if (*(v14 + 240))
    {

      sub_188B386EC();
    }

    if (v16)
    {
      v21 = v33;
      if (v19 == v20)
      {
LABEL_27:

LABEL_28:

        return;
      }
    }

    else
    {
      v21 = v33;
      if ((v17 & 1) == 0)
      {
        goto LABEL_27;
      }
    }

    goto LABEL_32;
  }

  [a1 _manualScrollEdgeAppearanceProgress];
  if ((v16 & 1) == 0)
  {
LABEL_26:
    v21 = v33;
    goto LABEL_27;
  }

LABEL_21:
  if (v23 != 0.0)
  {
LABEL_32:
    v24 = [v2 stack];
    v25 = [v24 topEntry];

    if (v25)
    {
      if (!v33)
      {

        goto LABEL_28;
      }

      sub_188A34624(0, &qword_1EA930E98);
      v26 = v33;
      v27 = sub_18A4A7C88();

      if ((v27 & 1) == 0)
      {

        goto LABEL_28;
      }
    }

    else
    {
      v21 = v33;
      if (v33)
      {
        goto LABEL_27;
      }
    }

    sub_188B2CDC8();
    v28 = [a1 _isManualScrollEdgeAppearanceEnabled];
    if (_UIBarsApplyChromelessEverywhere())
    {
      v29 = [v2 navigationBar];
      v30 = [v29 _effectiveDelegateSupportsScrollEdgeTransitionProgress];

      if ((v30 & 1) != 0 && !v28)
      {
        v31 = [v2 stack];
        v32 = [v31 backItem];

        sub_188B2A9B4(a1, v32, 0);
      }
    }

    goto LABEL_26;
  }
}

BOOL ___largeTitleBaselineToTopDistance_block_invoke()
{
  result = _UIIsFourInch();
  v1 = 36.0;
  if (result)
  {
    v1 = 31.0;
  }

  qword_1ED49CA08 = *&v1;
  return result;
}

uint64_t sub_188BAAAF8()
{
  result = sub_18A4A7258();
  qword_1EA9311F8 = result;
  return result;
}

uint64_t sub_188BAAB78(uint64_t a1)
{
  v1 = *(a1 + 376);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void sub_188BAABA0(void *a1)
{
  if (byte_1EA930D82)
  {
    *(v1 + OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_providesExtraSpaceForExcessiveLineHeights) = 1;

    sub_188BAAFA0();
  }

  else
  {
    if (!a1 || (v2 = [a1 title]) == 0)
    {
      v2 = 0;
    }

    HasExcessiveLineHeightCharactersInTitle = _UINavigationBarHasExcessiveLineHeightCharactersInTitle(v2);

    byte_1EA930D82 = HasExcessiveLineHeightCharactersInTitle;
    *(v1 + OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_providesExtraSpaceForExcessiveLineHeights) = HasExcessiveLineHeightCharactersInTitle;
    sub_188BAAFA0();
    if (HasExcessiveLineHeightCharactersInTitle)
    {
      v4 = [objc_opt_self() defaultCenter];
      v5 = v4;
      if (qword_1EA9311F0 != -1)
      {
        swift_once();
        v4 = v5;
      }

      [v4 postNotificationName:qword_1EA9311F8 object:0];
    }
  }
}

BOOL _UINavigationBarHasExcessiveLineHeightCharactersInTitle(void *a1)
{
  v1 = a1;
  if ([v1 length])
  {
    v2 = +[UILabel _tooBigChars];
    v3 = [v1 rangeOfCharacterFromSet:v2] != 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_188BAAFA0()
{
  v1 = OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_providesExtraSpaceForExcessiveLineHeights;
  v2 = *(v0 + OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_providesExtraSpaceForExcessiveLineHeights);
  v3 = OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_isObservingDidEncounterFirstTitleWithExcessiveHeightChanged;
  if (v2 == *(v0 + OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_isObservingDidEncounterFirstTitleWithExcessiveHeightChanged))
  {
    v4 = v2 ^ 1;
    v5 = [objc_opt_self() defaultCenter];
    if (*(v0 + v1) == 1)
    {
      if (qword_1EA9311F0 != -1)
      {
        swift_once();
      }

      [v5 removeObserver:v0 name:qword_1EA9311F8 object:0];
    }

    else
    {
      if (qword_1EA9311F0 != -1)
      {
        swift_once();
      }

      [v5 addObserver:v0 selector:? name:? object:?];
    }

    *(v0 + v3) = v4;
  }
}

double _UINavigationBarLargeTitleViewCalculateRestingHeight(void *a1, double a2)
{
  v3 = a1;
  [v3 _firstBaselineOffsetFromTop];
  v5 = v4;
  [v3 _baselineOffsetFromBottom];
  v7 = v6;

  if (qword_1ED49CA10 != -1)
  {
    dispatch_once(&qword_1ED49CA10, &__block_literal_global_71);
  }

  v8 = *&qword_1ED49CA08 - v5;
  v9 = 0.0;
  if (*&qword_1ED49CA08 - v5 < 0.0)
  {
    v8 = 0.0;
  }

  if (16.0 - v7 >= 0.0)
  {
    v9 = 16.0 - v7;
  }

  return v9 + v8 + a2;
}

id _UINavigationBarLargeTitleViewLabelForMeasuring(void *a1, int a2, void *a3)
{
  v3 = _UINavigationBarLargeTitleViewLabelForMeasuring_label;
  if (!_UINavigationBarLargeTitleViewLabelForMeasuring_label)
  {
    v6 = a1;
    v7 = _UISetCurrentFallbackEnvironment(a3);
    v8 = _UINavigationBarLargeTitleViewNewLabel();
    v9 = _UINavigationBarLargeTitleViewLabelForMeasuring_label;
    _UINavigationBarLargeTitleViewLabelForMeasuring_label = v8;

    _UIRestorePreviousFallbackEnvironment(v7);
    v10 = objc_alloc(MEMORY[0x1E696AAB0]);
    v11 = _UINSLocalizedStringWithDefaultValue(@"Back", @"Back");
    v12 = [v10 initWithString:v11 attributes:v6];

    [_UINavigationBarLargeTitleViewLabelForMeasuring_label setAttributedText:v12];
    [(UILabel *)_UINavigationBarLargeTitleViewLabelForMeasuring_label _setSupportMultiLineShrinkToFit:a2];
    v3 = _UINavigationBarLargeTitleViewLabelForMeasuring_label;
  }

  return v3;
}

double _largeTitleRestingHeight()
{
  if (qword_1ED4932E0 != -1)
  {
    dispatch_once(&qword_1ED4932E0, &__block_literal_global_70);
  }

  return *&_MergedGlobals_4;
}

BOOL _UIIsFourInch()
{
  v0 = [objc_opt_self() mainScreen];
  [v0 bounds];
  v2 = v1;
  v4 = v3;

  if (v2 >= v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = v2;
  }

  v6 = fabs(v5 + -320.0);
  if (v2 >= v4)
  {
    v7 = v2;
  }

  else
  {
    v7 = v4;
  }

  return fabs(v7 + -568.0) <= 2.22044605e-16 && v6 <= 2.22044605e-16;
}

BOOL ___largeTitleRestingHeight_block_invoke()
{
  result = _UIIsFourInch();
  v1 = 52.0;
  if (result)
  {
    v1 = 47.0;
  }

  _MergedGlobals_4 = *&v1;
  return result;
}

uint64_t sub_188BAB818(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_188BAB804(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_18A4A85F8();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[8 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (*v13 >= v11)
          {
            break;
          }

          *v13 = v11;
          v13[1] = v14;
          --v13;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 8;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_18A4A75D8();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_1890E2D00(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

void CACornerRadiiMake(double *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  *a1 = a4;
  a1[1] = a4;
  a1[2] = a5;
  a1[3] = a5;
  a1[4] = a3;
  a1[5] = a3;
  a1[6] = a2;
  a1[7] = a2;
}

double CACornerRadiiMake_0@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

void sub_188BABB5C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_188BABBE4(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift__refreshControlHost;
  v5 = *&v1[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift__refreshControlHost];
  if (!v5)
  {
    if (!a1)
    {
      return;
    }

    goto LABEL_9;
  }

  if (!a1)
  {
LABEL_5:
    [v5 setDelegate_];
    v8 = *&v2[v4];
    if (v8)
    {
      [v8 stopAnimations];
      v9 = *&v2[v4];
      if (v9)
      {
        v10 = [v9 hostContainerView];
        [v10 removeFromSuperview];

        v5 = *&v2[v4];
        goto LABEL_10;
      }
    }

LABEL_9:
    v5 = 0;
LABEL_10:
    *&v2[v4] = a1;
    v22 = a1;

    v11 = *&v2[v4];
    if (v11)
    {
      [v11 setDelegate_];
      v12 = *&v2[v4];
      if (v12)
      {
        v13 = objc_allocWithZone(UIView);
        v14 = v12;
        v15 = [v13 init];
        [v14 setHostContainerView_];
      }
    }

    v16 = [v2 stack];
    v17 = [v16 topEntry];

    if (v17)
    {
      v18 = [(_UINavigationBarItemStackEntry *)v17 _typedStorage];
      v19 = sub_18901F250();

      if (v19)
      {
        v20 = *&v2[v4];
        v21 = v20;
        sub_188CE8688(v20);
      }
    }

    goto LABEL_16;
  }

  sub_188A34624(0, &unk_1EA92FB40);
  v6 = v5;
  v22 = a1;
  v7 = sub_18A4A7C88();

  if ((v7 & 1) == 0)
  {
    v5 = *&v2[v4];
    if (!v5)
    {
      goto LABEL_10;
    }

    goto LABEL_5;
  }

LABEL_16:
}

void sub_188BAC054()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4 = swift_allocObject();
  v4[2] = *((v2 & v1) + 0x50);
  v4[3] = *((v2 & v1) + 0x58);
  v4[4] = v3;
  v5 = objc_opt_self();

  if ([v5 isMainThread])
  {
    sub_188BAC324();
  }

  else
  {
    v6 = [objc_opt_self() mainRunLoop];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9344A0);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_18A64BFB0;
    v8 = *MEMORY[0x1E695DA28];
    *(v7 + 32) = *MEMORY[0x1E695DA28];
    type metadata accessor for Mode(0);
    v9 = v8;
    v10 = sub_18A4A7518();

    v12[4] = sub_188E4F5DC;
    v12[5] = v4;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 1107296256;
    v12[2] = sub_188A4A8F0;
    v12[3] = &block_descriptor_3;
    v11 = _Block_copy(v12);

    [v6 performInModes:v10 block:v11];

    _Block_release(v11);
  }
}

uint64_t sub_188BAC2B4()
{
  MEMORY[0x18CFEA6E0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_188BAC2EC()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

void sub_188BAC324()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = sub_188AF0DAC();
    UIHostingViewBase._setNeedsUpdate()();
  }
}

unint64_t sub_188BAC79C()
{
  result = qword_1ED48DC08;
  if (!qword_1ED48DC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED48DC08);
  }

  return result;
}

uint64_t sub_188BAC7F4(uint64_t a1)
{
  v2 = sub_188BAC830();

  return MEMORY[0x1EEDE0700](a1, v2);
}

unint64_t sub_188BAC830()
{
  result = qword_1ED48DC10;
  if (!qword_1ED48DC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED48DC10);
  }

  return result;
}

uint64_t sub_188BAC8D4()
{
  v1 = v0;
  swift_getKeyPath();
  sub_188BAD1EC(&qword_1ED48E310, type metadata accessor for ToolbarModel);
  sub_18A4A2C08();

  v2 = *(v0 + 320);
  if (!v2)
  {
    goto LABEL_6;
  }

  v3 = [*(v2 + OBJC_IVAR____TtCC5UIKit12ToolbarModel4Item_barButtonItem) _associatedSearchController];
  if (!v3)
  {
    goto LABEL_6;
  }

  v4 = v3;
  v5 = [v3 _trackableState];
  v6 = [v5 isActive];

  if (!v6)
  {

LABEL_6:
    swift_getKeyPath();
    sub_18A4A2C08();

    v7 = 304;
    return *(v1 + v7);
  }

  swift_getKeyPath();
  sub_18A4A2C08();

  v7 = 312;
  return *(v1 + v7);
}

void sub_188BACA5C()
{
  v0 = sub_188AF0DAC();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    [Strong bounds];
    sub_18A4A4728();
  }
}

void sub_188BACAF4()
{
  v0 = sub_188AF0DAC();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = OBJC_IVAR____TtC5UIKit17UIHostingViewBase_safeAreaRegions;
    swift_beginAccess();
    v4 = *&v0[v3];
    v5 = sub_18A4A4D18();
    if ((v5 & v4) == v5)
    {
      *&v13 = sub_188BAF494();
      *(&v13 + 1) = v14;
      *(&v16 + 1) = v15;
      v20 = v16;
      v21 = v13;
      sub_188F925F0(v22);
      v12 = v20;
      v11 = v21;
      v7 = 0;
      v6 = v22[0];
      v8 = v22[1];
      v9 = v22[2];
      v10 = v22[3];
      LOBYTE(v24) = 0;
    }

    else
    {
      v6 = 0uLL;
      v7 = 1;
      v8 = 0uLL;
      v9 = 0uLL;
      v10 = 0uLL;
      v11 = 0uLL;
      v12 = 0uLL;
    }

    v24 = v6;
    v25 = v8;
    v26 = v9;
    v27 = v10;
    v28 = v7;
    v22[4] = v11;
    v22[5] = v12;
    v23 = (v5 & v4) != v5;
    v17 = *&v0[v3];
    v18 = sub_18A4A4D08();
    if ((v18 & v17) == v18)
    {
      v19 = sub_188AF0DAC();
      UIHostingViewBase._keyboardSafeAreaHeight.getter();
    }

    if (sub_18A4A47A8())
    {
      [v2 invalidateIntrinsicContentSize];
    }
  }
}

void sub_188BACCB4()
{
  v0 = sub_188AF0DAC();
  UIHostingViewBase._updateContainerSize()();
}

unint64_t sub_188BACCFC()
{
  result = qword_1EA9307A8;
  if (!qword_1EA9307A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9307A8);
  }

  return result;
}

unint64_t sub_188BACD50()
{
  result = qword_1ED48CCA8;
  if (!qword_1ED48CCA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA93BD08);
    sub_188BACDDC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED48CCA8);
  }

  return result;
}

unint64_t sub_188BACDDC()
{
  result = qword_1ED48D830[0];
  if (!qword_1ED48D830[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED48D830);
  }

  return result;
}

void sub_188BACE48()
{
  sub_1890A7AF4();
  if (v0 <= 0x3F)
  {
    sub_188BACEDC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_188BACEDC()
{
  if (!qword_1ED48DB18)
  {
    sub_18A4A29D8();
    v0 = sub_18A4A7D38();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED48DB18);
    }
  }
}

unint64_t sub_188BACF48()
{
  result = qword_1ED48DB00;
  if (!qword_1ED48DB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED48DB00);
  }

  return result;
}

uint64_t sub_188BAD014@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_18A4A6C08();
  sub_18A4A4EA8();
  swift_getKeyPath();
  *&v10 = a1;
  sub_188BAD234(&qword_1ED48E310, type metadata accessor for ToolbarModel);

  sub_18A4A2C08();

  swift_beginAccess();
  sub_18A4A6C08();
  sub_18A4A45B8();
  v4 = sub_18A4A5BD8();
  result = sub_18A4A43C8();
  *(a2 + 72) = v16;
  *(a2 + 88) = v17;
  *(a2 + 104) = v18;
  *(a2 + 120) = v19;
  *(a2 + 24) = v13;
  *(a2 + 40) = v14;
  *(a2 + 56) = v15;
  *(a2 + 168) = v12;
  *(a2 + 152) = v11;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = a1;
  *(a2 + 136) = v10;
  *(a2 + 184) = v4;
  *(a2 + 192) = v6;
  *(a2 + 200) = v7;
  *(a2 + 208) = v8;
  *(a2 + 216) = v9;
  *(a2 + 224) = 0;
  return result;
}

uint64_t sub_188BAD1EC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_188BAD234(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_188BAD27C(uint64_t a1)
{
  swift_getKeyPath();
  sub_188BAD234(&qword_1ED48E310, type metadata accessor for ToolbarModel);
  sub_18A4A2C08();

  v2 = swift_beginAccess();
  if ((*(a1 + 24) & 1) == 0)
  {
    swift_getKeyPath();
    sub_18A4A2C08();
  }

  MEMORY[0x1EEE9AC00](v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93BD38);
  sub_1890AF1D4(&qword_1ED48CCB0, &qword_1EA93BD38, &unk_18A664868, sub_1890AF284);
  return sub_18A4A56E8();
}

unint64_t sub_188BAD470()
{
  result = qword_1ED48C4F8;
  if (!qword_1ED48C4F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA93C040);
    sub_188BAD4FC();
    sub_188BAD6E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED48C4F8);
  }

  return result;
}

unint64_t sub_188BAD4FC()
{
  result = qword_1ED48D5B0;
  if (!qword_1ED48D5B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA93BD58);
    sub_1890AF340();
    sub_188A34360(&qword_1ED48E058, &qword_1EA93C070);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED48D5B0);
  }

  return result;
}

unint64_t sub_188BAD5B4()
{
  result = qword_1ED48E070;
  if (!qword_1ED48E070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED48E070);
  }

  return result;
}

uint64_t sub_188BAD618()
{
  v0 = type metadata accessor for BarLayoutElement.ItemConfig(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

uint64_t sub_188BAD670(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_188BAD6E0()
{
  result = qword_1ED48C508;
  if (!qword_1ED48C508)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA93C028);
    sub_188BAD670(&unk_1ED48C510, &qword_1EA93C098);
    sub_188A34360(&qword_1ED48E058, &qword_1EA93C070);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED48C508);
  }

  return result;
}

void sub_188BAD828(void *a1)
{
  v1 = a1;
  sub_188E4EAE8();
}

uint64_t sub_188BAD870(void *a1)
{
  swift_getKeyPath();
  sub_188BAD1EC(&qword_1ED48E310, type metadata accessor for ToolbarModel);
  sub_18A4A2C08();

  swift_getKeyPath();
  sub_18A4A2C28();

  swift_beginAccess();
  sub_188E4FC48(a1, v1);
  swift_endAccess();
  swift_getKeyPath();
  sub_18A4A2C18();
}

void sub_188BAD9B4(void *a1)
{
  v2 = [a1 traitCollection];
  if ([v2 userInterfaceIdiom] == 5)
  {

    v3 = 0;
  }

  else
  {
    if (*v1 == 1 && ![v2 userInterfaceIdiom])
    {
      v4 = sub_189227708();

      if ((v4 & 1) == 0)
      {
        v3 = 2;
        goto LABEL_7;
      }
    }

    else
    {
    }

    v3 = 1;
  }

LABEL_7:
  v1[4] = v3;
}

uint64_t sub_188BADA60(uint64_t a1)
{
  v2 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x50);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v7 - v4;
  sub_188BADB78();
  sub_188BAE350(v5);
  sub_18A4A4688();

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_188BADB78()
{
  v0 = sub_188AF0DAC();
  v1 = *&v0[OBJC_IVAR____TtC5UIKit17UIHostingViewBase_viewGraph];

  return v1;
}

id sub_188BADC04()
{
  v1 = v0;
  v8.receiver = v0;
  v8.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v8, sel_layoutSubviews);
  v2 = *&v0[OBJC_IVAR____UIFloatingBarContainerView_hostingView];
  [v1 bounds];
  [v2 setFrame_];
  v3 = [v1 traitCollection];
  v4 = [v3 _barPlattersHidden];

  v5 = *&v1[OBJC_IVAR____UIFloatingBarContainerView_model];
  swift_getKeyPath();
  sub_188AF0C98();
  sub_18A4A2C08();

  if (v4 != *(v5 + 104))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_18A4A2BF8();
  }

  sub_188BAD870(v1);
  return [*(*&v1[OBJC_IVAR____UIFloatingBarContainerView_pointerAssistant] + OBJC_IVAR____TtC5UIKit34ToolbarPointerInteractionAssistant_pointerAssistant) invalidate];
}

uint64_t _UIUseMiniHeightInLandscape(unsigned int a1)
{
  v2 = +[UIDevice currentDevice];
  v3 = [v2 userInterfaceIdiom];

  if ((v3 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    return 0;
  }

  v5 = [objc_opt_self() mainScreen];
  [v5 _referenceBounds];
  v7 = v6;

  if (v7 < 414.0)
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_188BADE8C(void *a1)
{
  v2 = sub_18A4A4CD8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v50 = &v45 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v49 = &v45 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v45 - v11;
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v45 - v15;
  v17 = a1;
  v18 = [a1 traitCollection];
  v19 = [v18 layoutDirection];

  v20 = *(v3 + 104);
  v21 = MEMORY[0x1E697E7D0];
  v22 = MEMORY[0x1E697E7D8];
  v51 = v5;
  if (v19)
  {
    if (v19 != 1)
    {
      v23 = v20;
      v20(v16, *MEMORY[0x1E697E7D0], v2);
      v25 = v16;
      v24 = v3;
      goto LABEL_6;
    }

    v21 = MEMORY[0x1E697E7D8];
  }

  v23 = v20;
  v20(v12, *v21, v2);
  v24 = v3;
  (*(v3 + 32))(v16, v12, v2);
  v25 = v16;
LABEL_6:
  v46 = v23;
  v47 = v25;
  [v17 safeAreaInsets];
  v27 = v26;
  v48 = *(v24 + 16);
  v28 = v49;
  v48(v49, v25, v2);
  v29 = *v22;
  v30 = v50;
  v23(v50, v29, v2);
  sub_18A4A4CC8();
  v31 = *(v24 + 8);
  v31(v30, v2);
  v31(v28, v2);
  [v17 layoutMargins];
  v33 = v32;
  v34 = v51;
  v35 = v47;
  v48(v51, v47, v2);
  v46(v30, v29, v2);
  sub_18A4A4CC8();
  v31(v30, v2);
  v31(v34, v2);
  v36 = sub_188BAE274(0.0, 10.0, 10.0, 10.0, v33 - v27);
  v38 = v37;
  v40 = v39;
  v42 = v41;
  result = (v31)(v35, v2);
  v44 = v52;
  *(v52 + 8) = v36;
  v44[2] = v38;
  v44[3] = v40;
  v44[4] = v42;
  return result;
}

double sub_188BAE274(double a1, double a2, double a3, double a4, double a5)
{
  v7 = sub_18A4A5C28();
  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = (v7 + 32);
    if (a5 > a1)
    {
      v10 = a5;
    }

    else
    {
      v10 = a1;
    }

    do
    {
      v12 = *v9++;
      v11 = v12;
      if (v12 <= 1 && !v11)
      {
        a5 = v10;
      }

      --v8;
    }

    while (v8);
  }

  return a5;
}

uint64_t sub_188BAE350@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *MEMORY[0x1E69E7D40];
  v5 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x68);
  swift_beginAccess();
  return (*(*(*((v4 & v3) + 0x50) - 8) + 16))(a1, &v1[v5]);
}

void sub_188BAE404(void *a1)
{
  v1 = a1;
  sub_188BAE44C();
}

void sub_188BAE44C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UICoreHostingView();
  objc_msgSendSuper2(&v2, sel_layoutSubviews);
  v1 = sub_188AF0DAC();
  UIHostingViewBase.layoutSubviews()();
}

uint64_t sub_188BAE4D8()
{
  v1 = v0;
  v2 = sub_18A4A5318();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v21 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v21 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v21 - v13;
  v15 = sub_188AF0DAC();
  UIHostingViewBase._startUpdateEnvironment()(v14);

  v16 = [v1 traitCollection];
  (*(v3 + 16))(v5, v14, v2);
  sub_18A4A52F8();
  UITraitCollection.coreResolvedBaseEnvironment(base:)(v8, v5);
  UITraitCollection.coreResolvedGlassMaterialEnvironment(base:)(v5, v11);

  v17 = *(v3 + 8);
  v17(v5, v2);
  v17(v8, v2);
  v18 = sub_188AF0DAC();
  UIHostingViewBase._updateEnvironment(_:)(v11);

  v19 = sub_188AF0DAC();
  UIHostingViewBase._endUpdateEnvironment(_:)();

  v17(v11, v2);
  return (v17)(v14, v2);
}

uint64_t UITraitCollection.coreResolvedEnvironment(base:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_18A4A5318();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  UITraitCollection.coreResolvedBaseEnvironment(base:)(a1, v7);
  UITraitCollection.coreResolvedGlassMaterialEnvironment(base:)(v7, a2);
  return (*(v5 + 8))(v7, v4);
}

uint64_t DynamicTypeSize.init(_uiSizeCategory:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_18A4A4CB8();
  v73 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_18A4A7288();
  v9 = v8;
  if (v7 == sub_18A4A7288() && v9 == v10)
  {

    goto LABEL_8;
  }

  v12 = sub_18A4A86C8();

  if (v12)
  {

LABEL_8:
    v13 = MEMORY[0x1E697E718];
LABEL_9:
    (*(v73 + 104))(v6, *v13, v4);
    (*(v73 + 32))(a2, v6, v4);
    return (*(v73 + 56))(a2, 0, 1, v4);
  }

  v15 = sub_18A4A7288();
  v17 = v16;
  if (v15 == sub_18A4A7288() && v17 == v18)
  {

    goto LABEL_17;
  }

  v20 = sub_18A4A86C8();

  if (v20)
  {

LABEL_17:
    v13 = MEMORY[0x1E697E6F0];
    goto LABEL_9;
  }

  v21 = sub_18A4A7288();
  v23 = v22;
  if (v21 == sub_18A4A7288() && v23 == v24)
  {

LABEL_23:
    v13 = MEMORY[0x1E697E6F8];
    goto LABEL_9;
  }

  v25 = sub_18A4A86C8();

  if (v25)
  {

    goto LABEL_23;
  }

  v26 = sub_18A4A7288();
  v28 = v27;
  if (v26 == sub_18A4A7288() && v28 == v29)
  {

LABEL_29:
    v13 = MEMORY[0x1E697E6E8];
    goto LABEL_9;
  }

  v30 = sub_18A4A86C8();

  if (v30)
  {

    goto LABEL_29;
  }

  v31 = sub_18A4A7288();
  v33 = v32;
  if (v31 == sub_18A4A7288() && v33 == v34)
  {

LABEL_35:
    v13 = MEMORY[0x1E697E708];
    goto LABEL_9;
  }

  v35 = sub_18A4A86C8();

  if (v35)
  {

    goto LABEL_35;
  }

  v36 = sub_18A4A7288();
  v38 = v37;
  if (v36 == sub_18A4A7288() && v38 == v39)
  {

LABEL_41:
    v13 = MEMORY[0x1E697E720];
    goto LABEL_9;
  }

  v40 = sub_18A4A86C8();

  if (v40)
  {

    goto LABEL_41;
  }

  v41 = sub_18A4A7288();
  v43 = v42;
  if (v41 == sub_18A4A7288() && v43 == v44)
  {

LABEL_47:
    v13 = MEMORY[0x1E697E728];
    goto LABEL_9;
  }

  v45 = sub_18A4A86C8();

  if (v45)
  {

    goto LABEL_47;
  }

  v46 = sub_18A4A7288();
  v48 = v47;
  if (v46 == sub_18A4A7288() && v48 == v49)
  {

LABEL_53:
    v13 = MEMORY[0x1E697E6C0];
    goto LABEL_9;
  }

  v50 = sub_18A4A86C8();

  if (v50)
  {

    goto LABEL_53;
  }

  v51 = sub_18A4A7288();
  v53 = v52;
  if (v51 == sub_18A4A7288() && v53 == v54)
  {

LABEL_59:
    v13 = MEMORY[0x1E697E6C8];
    goto LABEL_9;
  }

  v55 = sub_18A4A86C8();

  if (v55)
  {

    goto LABEL_59;
  }

  v56 = sub_18A4A7288();
  v58 = v57;
  if (v56 == sub_18A4A7288() && v58 == v59)
  {

LABEL_65:
    v13 = MEMORY[0x1E697E6D0];
    goto LABEL_9;
  }

  v60 = sub_18A4A86C8();

  if (v60)
  {

    goto LABEL_65;
  }

  v61 = sub_18A4A7288();
  v63 = v62;
  if (v61 == sub_18A4A7288() && v63 == v64)
  {

LABEL_71:
    v13 = MEMORY[0x1E697E6D8];
    goto LABEL_9;
  }

  v65 = sub_18A4A86C8();

  if (v65)
  {

    goto LABEL_71;
  }

  v66 = sub_18A4A7288();
  v68 = v67;
  if (v66 == sub_18A4A7288() && v68 == v69)
  {

LABEL_76:
    v13 = MEMORY[0x1E697E6E0];
    goto LABEL_9;
  }

  v70 = sub_18A4A86C8();

  if (v70)
  {
    goto LABEL_76;
  }

  v71 = *(v73 + 56);

  return v71(a2, 1, 1, v4);
}

uint64_t sub_188BAEFC0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_18A4A4428();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v20 - v9;
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v20 - v13;
  v15 = *MEMORY[0x1E697DBB8];
  v16 = *(v5 + 104);
  v16(&v20 - v13, v15, v4, v12);
  v17 = [v2 userInterfaceStyle];
  if (v17 == 1)
  {
    goto LABEL_4;
  }

  if (v17 == 2)
  {
    v15 = *MEMORY[0x1E697DBA8];
LABEL_4:
    (v16)(v7, v15, v4);
    v18 = *(v5 + 32);
    v18(v10, v7, v4);
    (*(v5 + 8))(v14, v4);
    return (v18)(a1, v10, v4);
  }

  return (*(v5 + 32))(a1, v14, v4);
}

void UIHostingViewBase._endUpdateEnvironment(_:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = OBJC_IVAR____TtC5UIKit17UIHostingViewBase_traitCollectionOverride;
    swift_beginAccess();
    v4 = *(v0 + v3);
    if (v4)
    {
      v5 = *(v0 + v3);
    }

    else
    {
      v5 = [v2 traitCollection];
      v4 = 0;
    }

    v6 = v4;
    v7 = [v5 _environmentWrapper];
    if (v7)
    {
      v8 = v7;
      sub_18A4A5A28();
      v9 = swift_dynamicCastClass();
      if (v9)
      {
        v10 = v9;
        v11 = v8;
        v12 = v10;
LABEL_10:
        sub_18A4A46E8();

        return;
      }
    }

    v10 = [objc_allocWithZone(sub_18A4A5A28()) init];
    v12 = 0;
    goto LABEL_10;
  }
}

uint64_t sub_188BAF2F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDE2130](a1, a2, a4, a3, WitnessTable);
}

void sub_188BAF378()
{
  v0 = sub_188AF0DAC();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    if ((sub_18A4A47F8() & 1) != 0 || (v3 = OBJC_IVAR____TtC5UIKit17UIHostingViewBase_registeredForGeometryChanges, swift_beginAccess(), (v0[v3] & 1) == 0))
    {
    }

    else
    {
      [v2 _unregisterForGeometryChanges];

      v0[v3] = 0;
    }
  }
}

uint64_t sub_188BAF440(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDE2158](a1, WitnessTable);
}

double sub_188BAF494()
{
  v0 = sub_188AF0DAC();
  UIHostingViewBase._containerSafeArea.getter();
  v2 = v1;

  return v2;
}

unint64_t sub_188BAF540()
{
  result = qword_1ED48CC90;
  if (!qword_1ED48CC90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA93BD00);
    sub_188BACD50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED48CC90);
  }

  return result;
}

unint64_t sub_188BAF5D4()
{
  result = qword_1ED48DB08;
  if (!qword_1ED48DB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED48DB08);
  }

  return result;
}

__n128 __swift_memcpy81_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_188BAF65C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93BB88);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v175 = &v159 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v174 = &v159 - v5;
  MEMORY[0x1EEE9AC00](v6);
  v173 = &v159 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v172 = &v159 - v9;
  v187 = type metadata accessor for ToolbarButtonBarElement.Item(0);
  v197 = *(v187 - 8);
  MEMORY[0x1EEE9AC00](v187);
  v161 = (&v159 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v171 = &v159 - v12;
  v201 = type metadata accessor for BarLayoutElement.ItemConfig(0);
  v191 = *(v201 - 8);
  MEMORY[0x1EEE9AC00](v201);
  v196 = &v159 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ToolbarButtonBarElement(0);
  v203 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v186 = &v159 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v163 = &v159 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v170 = &v159 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v181 = &v159 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v162 = (&v159 - v23);
  MEMORY[0x1EEE9AC00](v24);
  v169 = &v159 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v182 = &v159 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v184 = (&v159 - v29);
  MEMORY[0x1EEE9AC00](v30);
  v168 = (&v159 - v31);
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v159 - v33;
  MEMORY[0x1EEE9AC00](v35);
  v183 = (&v159 - v36);
  MEMORY[0x1EEE9AC00](v37);
  v167 = (&v159 - v38);
  MEMORY[0x1EEE9AC00](v39);
  v177 = (&v159 - v40);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93BB78);
  MEMORY[0x1EEE9AC00](v41 - 8);
  v195 = &v159 - v42;
  v194 = type metadata accessor for BarLayoutElement(0);
  v43 = *(v194 - 8);
  MEMORY[0x1EEE9AC00](v194);
  v200 = &v159 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v45);
  v204 = &v159 - v46;
  v205 = sub_18A4A4618();
  v47 = *(v205 - 8);
  MEMORY[0x1EEE9AC00](v205);
  v185 = &v159 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v49);
  v206 = &v159 - v50;
  MEMORY[0x1EEE9AC00](v51);
  v193 = &v159 - v52;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93BB98);
  v54 = v53 - 8;
  MEMORY[0x1EEE9AC00](v53);
  v56 = &v159 - v55;
  v57 = sub_18A4A4C88();
  (*(*(v57 - 8) + 16))(v56, a1, v57);
  v58 = *(v54 + 44);
  v59 = sub_188BB0ED8(&qword_1ED48E060, MEMORY[0x1E697E3C0]);
  sub_18A4A7818();
  sub_18A4A7878();
  if (*&v56[v58] != v208[0])
  {
    v198 = (v47 + 32);
    v199 = (v47 + 16);
    v192 = (v43 + 48);
    v191 += 6;
    v188 = (v47 + 8);
    v179 = (v197 + 7);
    v178 = (v197 + 6);
    v60 = MEMORY[0x1E69E7CC0];
    v197 = MEMORY[0x1E69E7CC0];
    v164 = v34;
    v62 = v195;
    v176 = v47;
    v190 = v58;
    v202 = v14;
    v189 = v56;
    v180 = v59;
    while (1)
    {
      v65 = sub_18A4A78C8();
      v66 = *v199;
      v67 = v193;
      v68 = v57;
      v69 = v205;
      (*v199)(v193);
      v65(v208, 0);
      v70 = v68;
      sub_18A4A7888();
      v71 = *v198;
      (*v198)(v206, v67, v69);
      sub_188C6468C();
      sub_18A4A4628();
      if ((*v192)(v62, 1, v194) == 1)
      {
LABEL_82:
        sub_188A3F5FC(v62, &qword_1EA93BB78);
        v208[0] = 0;
        v208[1] = 0xE000000000000000;
        sub_18A4A80E8();
        MEMORY[0x18CFE22D0](0xD000000000000012, 0x800000018A6A4AD0);
        MEMORY[0x18CFE22D0](0x756F79614C726142, 0xE900000000000074);
        MEMORY[0x18CFE22D0](0xD000000000000023, 0x800000018A6A4AF0);
        result = sub_18A4A8398();
        __break(1u);
        return result;
      }

      v72 = v204;
      sub_188C648C0(v62, v204, type metadata accessor for BarLayoutElement);
      v73 = v72;
      v74 = v200;
      sub_188C64928(v73, v200, type metadata accessor for BarLayoutElement);
      v75 = v201;
      v76 = (*v191)(v74, 2, v201);
      if (!v76)
      {
        sub_188C648C0(v200, v196, type metadata accessor for BarLayoutElement.ItemConfig);
        v84 = v60[2];
        if (v84)
        {
          v166 = (*(v203 + 80) + 32) & ~*(v203 + 80);
          v165 = *(v203 + 72);
          v85 = v182;
          sub_188C64928(v60 + v166 + v165 * (v84 - 1), v182, type metadata accessor for ToolbarButtonBarElement);
          v86 = v85;
          v87 = v169;
          sub_188C64928(v86, v169, type metadata accessor for ToolbarButtonBarElement);
          EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
          v89 = v197;
          if (EnumCaseMultiPayload == 1)
          {
            v90 = 1;
            v91 = v173;
          }

          else
          {
            v91 = v173;
            sub_188C648C0(v87, v173, type metadata accessor for ToolbarButtonBarElement.Item);
            v90 = 0;
          }

          v104 = v187;
          (*v179)(v91, v90, 1, v187);
          v105 = v91;
          v106 = v172;
          sub_188A3F704(v105, v172, &qword_1EA93BB88);
          if ((*v178)(v106, 1, v104) == 1)
          {
            sub_188C64C40(v182, type metadata accessor for ToolbarButtonBarElement);
            sub_188A3F5FC(v106, &qword_1EA93BB88);
            goto LABEL_40;
          }

          v107 = v171;
          sub_188C648C0(v106, v171, type metadata accessor for ToolbarButtonBarElement.Item);
          v108 = *(v107 + 49);
          if (v108 == 2 || (v108) && (v196[1] & 1) == 0)
          {
            v141 = v162;
            *v162 = 0;
            *(v141 + 8) = 0;
            swift_storeEnumTagMultiPayload();
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v75 = v201;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v60 = sub_188C64BF0(0, v84 + 1, 1, v60);
            }

            v143 = v166;
            v145 = v60[2];
            v144 = v60[3];
            if (v145 >= v144 >> 1)
            {
              v60 = sub_188C64BF0(v144 > 1, v145 + 1, 1, v60);
            }

            sub_188C64C40(v171, type metadata accessor for ToolbarButtonBarElement.Item);
            sub_188C64C40(v182, type metadata accessor for ToolbarButtonBarElement);
            v60[2] = v145 + 1;
            sub_188C648C0(v162, v60 + v143 + v145 * v165, type metadata accessor for ToolbarButtonBarElement);
          }

          else
          {
            sub_188C64C40(v171, type metadata accessor for ToolbarButtonBarElement.Item);
            sub_188C64C40(v182, type metadata accessor for ToolbarButtonBarElement);
LABEL_40:
            v75 = v201;
          }
        }

        else
        {
          v89 = v197;
        }

        sub_18A4A4E08();
        LOBYTE(v208[0]) = v109 & 1;
        v207 = v110 & 1;
        sub_18A4A45F8();
        v112 = v111;
        v114 = v113;
        sub_18A4A4E28();
        LOBYTE(v208[0]) = v115 & 1;
        v207 = v116 & 1;
        sub_18A4A45F8();
        v118 = v117;
        v120 = v119;
        sub_18A4A4E38();
        LOBYTE(v208[0]) = v121 & 1;
        v207 = v122 & 1;
        sub_18A4A45F8();
        v124 = v123;
        v126 = v125;
        v127 = v60[2];
        v62 = v181;
        if (v127)
        {
          v197 = v89;
          v166 = (*(v203 + 80) + 32) & ~*(v203 + 80);
          v165 = *(v203 + 72);
          sub_188C64928(v60 + v166 + v165 * (v127 - 1), v181, type metadata accessor for ToolbarButtonBarElement);
          v128 = v170;
          sub_188C64928(v62, v170, type metadata accessor for ToolbarButtonBarElement);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v129 = 1;
            v130 = v175;
          }

          else
          {
            v130 = v175;
            sub_188C648C0(v128, v175, type metadata accessor for ToolbarButtonBarElement.Item);
            v129 = 0;
          }

          v131 = v187;
          (*v179)(v130, v129, 1, v187);
          v132 = v130;
          v133 = v174;
          sub_188A3F704(v132, v174, &qword_1EA93BB88);
          if ((*v178)(v133, 1, v131) == 1)
          {
            sub_188A3F5FC(v133, &qword_1EA93BB88);
            v75 = v201;
            goto LABEL_47;
          }

          v134 = v133;
          v135 = *(v133 + 49);
          sub_188C64C40(v134, type metadata accessor for ToolbarButtonBarElement.Item);
          v75 = v201;
          if (v135 == 2 || (v135 & 1) != 0)
          {
LABEL_47:
            sub_188C64C40(v62, type metadata accessor for ToolbarButtonBarElement);
            v89 = v197;
          }

          else
          {
            v136 = v163;
            sub_188C64928(v62, v163, type metadata accessor for ToolbarButtonBarElement);
            v137 = swift_getEnumCaseMultiPayload();
            v89 = v197;
            if (v137 == 1)
            {
              sub_188C64C40(v136, type metadata accessor for ToolbarButtonBarElement);
            }

            else
            {
              sub_188C64C40(v62, type metadata accessor for ToolbarButtonBarElement);
              v160 = type metadata accessor for ToolbarButtonBarElement.Item;
              v146 = v136;
              v147 = v161;
              sub_188C648C0(v146, v161, type metadata accessor for ToolbarButtonBarElement.Item);
              *v147 = v112;
              v147[1] = v114;
              v147[2] = v118;
              v147[3] = v120;
              v147[4] = v124;
              v147[5] = v126;
              v75 = v201;
              sub_188C648C0(v147, v62, v160);
              swift_storeEnumTagMultiPayload();
            }

            v148 = v60[2];
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v60 = sub_188C65060(v60);
            }

            if (!v148)
            {
              goto LABEL_80;
            }

            if (v148 > v60[2])
            {
              goto LABEL_81;
            }

            sub_1890A82E4(v181, v60 + v166 + (v148 - 1) * v165);
          }
        }

        v149 = *v196;
        v150 = v196[1];
        v151 = v186;
        sub_188A3F29C(&v196[*(v75 + 24)], v186 + *(v187 + 36), &qword_1EA93A828);
        *v151 = v112;
        *(v151 + 8) = v114;
        *(v151 + 16) = v118;
        *(v151 + 24) = v120;
        *(v151 + 32) = v124;
        *(v151 + 40) = v126;
        *(v151 + 48) = v149;
        *(v151 + 49) = v150;
        swift_storeEnumTagMultiPayload();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v60 = sub_188C64BF0(0, v60[2] + 1, 1, v60);
        }

        v153 = v60[2];
        v152 = v60[3];
        if (v153 >= v152 >> 1)
        {
          v60 = sub_188C64BF0(v152 > 1, v153 + 1, 1, v60);
        }

        v60[2] = v153 + 1;
        sub_188C648C0(v186, v60 + ((*(v203 + 80) + 32) & ~*(v203 + 80)) + *(v203 + 72) * v153, type metadata accessor for ToolbarButtonBarElement);
        (v66)(v185, v206, v205);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v89 = sub_188C64C18(0, v89[2] + 1, 1, v89);
        }

        v154 = v176;
        v156 = v89[2];
        v155 = v89[3];
        if (v156 >= v155 >> 1)
        {
          v89 = sub_188C64C18(v155 > 1, v156 + 1, 1, v89);
        }

        sub_188C64C40(v196, type metadata accessor for BarLayoutElement.ItemConfig);
        sub_188C64C40(v204, type metadata accessor for BarLayoutElement);
        v157 = v205;
        (*(v154 + 8))(v206, v205);
        v89[2] = v156 + 1;
        v158 = (*(v154 + 80) + 32) & ~*(v154 + 80);
        v197 = v89;
        v71(v89 + v158 + *(v154 + 72) * v156, v185, v157);
        v57 = v70;
        v56 = v189;
        v79 = v190;
        goto LABEL_7;
      }

      v57 = v70;
      if (v76 == 1)
      {
        v77 = v60[2];
        v78 = v177;
        v56 = v189;
        v79 = v190;
        if (v77)
        {
          v62 = (*(v203 + 80) + 32) & ~*(v203 + 80);
          v80 = *(v203 + 72) * (v77 - 1);
          sub_188C64928(v60 + v62 + v80, v177, type metadata accessor for ToolbarButtonBarElement);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v81 = v167;
            *v167 = *v78;
            *(v81 + 8) = 1;
            swift_storeEnumTagMultiPayload();
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v60 = sub_188C65060(v60);
            }

            sub_188C64C40(v204, type metadata accessor for BarLayoutElement);
            (*v188)(v206, v205);
            if (v77 > v60[2])
            {
              goto LABEL_79;
            }

            v82 = v60 + v62 + v80;
            v83 = &v199;
LABEL_26:
            sub_1890A82E4(*(v83 - 32), v82);
            goto LABEL_7;
          }

          sub_188C64C40(v78, type metadata accessor for ToolbarButtonBarElement);
        }

        v101 = v183;
        *v183 = 0;
        *(v101 + 8) = 1;
        swift_storeEnumTagMultiPayload();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v60 = sub_188C64BF0(0, v60[2] + 1, 1, v60);
        }

        v103 = v60[2];
        v102 = v60[3];
        if (v103 >= v102 >> 1)
        {
          v60 = sub_188C64BF0(v102 > 1, v103 + 1, 1, v60);
        }

        sub_188C64C40(v204, type metadata accessor for BarLayoutElement);
        (*v188)(v206, v205);
        v60[2] = v103 + 1;
        v63 = v60 + ((*(v203 + 80) + 32) & ~*(v203 + 80)) + *(v203 + 72) * v103;
        v64 = &v209;
      }

      else
      {
        sub_18A4A4E28();
        LOBYTE(v208[0]) = v92 & 1;
        v207 = v93 & 1;
        sub_18A4A45F8();
        v95 = v94;
        v96 = v60[2];
        v56 = v189;
        v79 = v190;
        if (v96)
        {
          v62 = (*(v203 + 80) + 32) & ~*(v203 + 80);
          v97 = *(v203 + 72) * (v96 - 1);
          v98 = v164;
          sub_188C64928(v60 + v62 + v97, v164, type metadata accessor for ToolbarButtonBarElement);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v99 = *(v98 + 8);
            v100 = v168;
            *v168 = v95 + *v98;
            *(v100 + 8) = v99;
            swift_storeEnumTagMultiPayload();
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v60 = sub_188C65060(v60);
            }

            sub_188C64C40(v204, type metadata accessor for BarLayoutElement);
            (*v188)(v206, v205);
            if (v96 > v60[2])
            {
              __break(1u);
LABEL_79:
              __break(1u);
LABEL_80:
              __break(1u);
LABEL_81:
              __break(1u);
              goto LABEL_82;
            }

            v82 = v60 + v62 + v97;
            v83 = &v200;
            goto LABEL_26;
          }

          sub_188C64C40(v98, type metadata accessor for ToolbarButtonBarElement);
        }

        v138 = v184;
        *v184 = v95;
        *(v138 + 8) = 0;
        swift_storeEnumTagMultiPayload();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v60 = sub_188C64BF0(0, v60[2] + 1, 1, v60);
        }

        v140 = v60[2];
        v139 = v60[3];
        if (v140 >= v139 >> 1)
        {
          v60 = sub_188C64BF0(v139 > 1, v140 + 1, 1, v60);
        }

        sub_188C64C40(v204, type metadata accessor for BarLayoutElement);
        (*v188)(v206, v205);
        v60[2] = v140 + 1;
        v63 = v60 + ((*(v203 + 80) + 32) & ~*(v203 + 80)) + *(v203 + 72) * v140;
        v64 = &v210;
      }

      sub_188C648C0(*(v64 - 32), v63, type metadata accessor for ToolbarButtonBarElement);
LABEL_7:
      sub_18A4A7878();
      v62 = v195;
      if (*&v56[v79] == v208[0])
      {
        goto LABEL_3;
      }
    }
  }

  v60 = MEMORY[0x1E69E7CC0];
  v197 = MEMORY[0x1E69E7CC0];
LABEL_3:
  sub_188A3F5FC(v56, &qword_1EA93BB98);
  return v60;
}

uint64_t sub_188BB0E70@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_188BAF65C(a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_188BB0ED8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_188BB0F20(uint64_t result, char a2, uint64_t a3, char a4, uint64_t a5, uint64_t *a6)
{
  if (a2)
  {
    v7 = 10.0;
  }

  else
  {
    v7 = *&result;
  }

  if (a4)
  {
    v8 = 10.0;
  }

  else
  {
    v8 = *&a3;
  }

  if (v6[80])
  {
    if (*v6)
    {
      if (v6[4])
      {
        v11 = 8.0;
        if (v6[4] == 2)
        {
          v11 = 4.0;
        }

        v12 = 6.0;
        if ((v6[3] & 1) == 0)
        {
          v12 = v11;
        }

        __asm { FMOV            V1.2D, #12.0 }

        *&_Q1 = v12;
      }

      else
      {
        _Q1 = xmmword_18A661BA0;
      }
    }

    else
    {
      __asm { FMOV            V1.2D, #4.0 }
    }

    v20[0] = 0.0;
    v20[1] = 0.0;
    v20[2] = v7;
    v20[3] = v8;
    v21 = _Q1;
    sub_188BB105C(*a6, v20, v19);
    *&result = COERCE_DOUBLE(sub_188BB3390(v19));
    v18 = 2;
    if ((a2 & 1) == 0)
    {
      *&result = COERCE_DOUBLE(sub_1890A7BF8(&v18, a6));
    }
  }

  return result;
}

void sub_188BB105C(void *a1@<X0>, CGFloat *a2@<X1>, _OWORD *a3@<X8>)
{
  v246 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93BB88);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v265 = &v227 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v279 = &v227 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v264 = &v227 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v263 = &v227 - v12;
  v13 = sub_18A4A29D8();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v227 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v242 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93A820);
  MEMORY[0x1EEE9AC00](v242);
  v18 = &v227 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93A828);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v244 = &v227 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v241 = &v227 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v255 = &v227 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v240 = &v227 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v254 = &v227 - v28;
  v271 = type metadata accessor for ToolbarButtonBarElement.Item(0);
  v243 = *(v271 - 8);
  MEMORY[0x1EEE9AC00](v271);
  v249 = &v227 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v248 = &v227 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v272 = &v227 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v239 = &v227 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v283 = &v227 - v37;
  v38 = type metadata accessor for ToolbarButtonBarElement(0);
  v39 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v235 = &v227 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41);
  v262 = &v227 - v42;
  MEMORY[0x1EEE9AC00](v43);
  v261 = &v227 - v44;
  MEMORY[0x1EEE9AC00](v45);
  v260 = &v227 - v46;
  MEMORY[0x1EEE9AC00](v47);
  v259 = &v227 - v48;
  MEMORY[0x1EEE9AC00](v49);
  v258 = &v227 - v50;
  MEMORY[0x1EEE9AC00](v51);
  v287 = &v227 - v52;
  MEMORY[0x1EEE9AC00](v53);
  v290 = &v227 - v54;
  MEMORY[0x1EEE9AC00](v55);
  v250 = (&v227 - v56);
  MEMORY[0x1EEE9AC00](v57);
  v238 = &v227 - v58;
  MEMORY[0x1EEE9AC00](v59);
  v237 = &v227 - v60;
  MEMORY[0x1EEE9AC00](v61);
  v251 = &v227 - v62;
  MEMORY[0x1EEE9AC00](v63);
  v253 = &v227 - v64;
  MEMORY[0x1EEE9AC00](v65);
  v270 = (&v227 - v66);
  MEMORY[0x1EEE9AC00](v67);
  v278 = &v227 - v68;
  MEMORY[0x1EEE9AC00](v69);
  v71 = (&v227 - v70);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93BB90);
  MEMORY[0x1EEE9AC00](v72 - 8);
  v236 = &v227 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v74);
  v269 = &v227 - v75;
  MEMORY[0x1EEE9AC00](v76);
  v268 = &v227 - v77;
  MEMORY[0x1EEE9AC00](v78);
  v267 = &v227 - v79;
  MEMORY[0x1EEE9AC00](v80);
  v292 = &v227 - v81;
  MEMORY[0x1EEE9AC00](v82);
  v294 = &v227 - v83;
  MEMORY[0x1EEE9AC00](v84);
  MEMORY[0x1EEE9AC00](v85);
  *&v275 = &v227 - v86;
  MEMORY[0x1EEE9AC00](v87);
  MEMORY[0x1EEE9AC00](v88);
  v92 = &v227 - v91;
  v302 = a1;
  v93 = a2[1];
  v281 = *a2;
  v280 = v93;
  v94 = a2[3];
  v277 = a2[2];
  v276 = v94;
  v95 = a1[2];
  v295 = v39;
  v288 = v95;
  v247 = a2;
  if (!v95)
  {

    v289 = 0;
    v273 = 0.0;
    v274 = 0.0;
    v97 = 0.0;
    v98 = 0.0;
LABEL_61:
    v303.origin.x = v281;
    v303.origin.y = v280;
    v303.size.width = v277;
    v303.size.height = v276;
    v148 = CGRectGetWidth(v303) - v98;
    if (v148 <= 0.0)
    {
      v275 = 0.0;
      v149 = v272;
      v150 = v290;
      v151 = v247;
      if (v148 < 0.0 && v97 > 0.0)
      {
        v153 = fabs(v148) / v97;
        if (v153 > 1.0)
        {
          v153 = 1.0;
        }

        *&v278 = v153;
        v98 = v98 - v97 * v153;
        v154 = &v299 + 8;
        goto LABEL_73;
      }
    }

    else
    {
      v149 = v272;
      v150 = v290;
      v151 = v247;
      if (*&v274 >= 1)
      {
        v273 = v148 / *&v274;
        v275 = 0.0;
        v274 = 0.0;
        v152 = &v301 + 8;
LABEL_74:
        *(v152 - 32) = 0;
        v155 = *(v151 + 2);
        v300 = *(v151 + 1);
        v301 = v155;
        v299 = *v151;
        *&v296 = MEMORY[0x1E69E7CC0];
        v298 = 0uLL;
        *&v297 = v281;
        *(&v297 + 1) = v280;
        *(&v296 + 1) = v98;
        v291 = a1[2];
        if (!v291)
        {
LABEL_140:
          sub_188BB33C0();

          v223 = v299;
          v224 = v246;
          v246[2] = v298;
          v224[3] = v223;
          v225 = v301;
          v224[4] = v300;
          v224[5] = v225;
          v226 = v297;
          *v224 = v296;
          v224[1] = v226;
          return;
        }

        v156 = 0;
        v157 = a1 + ((*(v295 + 80) + 32) & ~*(v295 + 80));
        v158 = (v295 + 56);
        v282 = (v295 + 48);
        v270 = (v243 + 56);
        v159 = MEMORY[0x1E69E7CC0];
        v266 = (v243 + 48);
        width = 0.0;
        v161 = v281;
        v162 = v281;
        x = v281;
        y = v280;
        v165 = 0.0;
        v293 = v157;
        v288 = a1;
        while (1)
        {
          v167 = a1[2];
          if (v156 >= v167)
          {
            goto LABEL_144;
          }

          v168 = *(v295 + 72);
          sub_188C64928(v157 + v168 * v156, v150, type metadata accessor for ToolbarButtonBarElement);
          if (v156)
          {
            v169 = v157 + v168 * (v156 - 1);
            v170 = v294;
            sub_188C64928(v169, v294, type metadata accessor for ToolbarButtonBarElement);
            v171 = 0;
          }

          else
          {
            v171 = 1;
            v170 = v294;
          }

          v156 = (v156 + 1);
          v172 = *v158;
          v173 = 1;
          (*v158)(v170, v171, 1, v38);
          v157 = v293;
          if (v156 < v167)
          {
            sub_188C64928(&v293[v168 * v156], v292, type metadata accessor for ToolbarButtonBarElement);
            v173 = 0;
          }

          v174 = v292;
          v172(v292, v173, 1, v38);
          v150 = v290;
          v175 = v287;
          sub_188C64928(v290, v287, type metadata accessor for ToolbarButtonBarElement);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            sub_188A3F5FC(v174, &qword_1EA93BB90);
            sub_188A3F5FC(v294, &qword_1EA93BB90);
            sub_188C64C40(v150, type metadata accessor for ToolbarButtonBarElement);
            if (*(v175 + 8))
            {
              v166 = v275 + v162 + *v175;
            }

            else
            {
              v166 = v162 + *v175;
            }

            v161 = v166;
            goto LABEL_80;
          }

          sub_188C648C0(v175, v149, type metadata accessor for ToolbarButtonBarElement.Item);
          v176 = v273;
          if ((*(v149 + 32) & 0x7FFFFFFFFFFFFFFFLL) != 0x7FF0000000000000)
          {
            v176 = *v149;
          }

          v177 = v279;
          if (*&v278 <= 0.0)
          {
            v179 = width;
          }

          else
          {
            v178 = *(v149 + 16);
            v179 = width;
            if (v178 < *v149)
            {
              v176 = v176 - *&v278 * (*v149 - v178);
            }
          }

          LODWORD(v283) = *(v149 + 48);
          if (v283)
          {
            v180 = v274 + v176;
          }

          else
          {
            v180 = v176;
          }

          v181 = *(v149 + 49);
          v286 = x;
          v285 = y;
          v284 = v179;
          if (v181)
          {
            v182 = v267;
            sub_188A3F29C(v294, v267, &qword_1EA93BB90);
            if ((*v282)(v182, 1, v38) == 1)
            {
              sub_188A3F5FC(v182, &qword_1EA93BB90);
              v157 = v293;
            }

            else
            {
              v183 = v258;
              sub_188C648C0(v182, v258, type metadata accessor for ToolbarButtonBarElement);
              v184 = v183;
              v185 = v259;
              sub_188C648C0(v184, v259, type metadata accessor for ToolbarButtonBarElement);
              if (swift_getEnumCaseMultiPayload() == 1)
              {
                v186 = 1;
                v187 = v264;
              }

              else
              {
                v187 = v264;
                sub_188C648C0(v185, v264, type metadata accessor for ToolbarButtonBarElement.Item);
                v186 = 0;
              }

              v157 = v293;
              v188 = v271;
              (*v270)(v187, v186, 1, v271);
              v189 = v187;
              v190 = v263;
              sub_188A3F704(v189, v263, &qword_1EA93BB88);
              if ((*v266)(v190, 1, v188) == 1)
              {
                sub_188A3F5FC(v190, &qword_1EA93BB88);
                v149 = v272;
                v177 = v279;
              }

              else
              {
                v191 = v248;
                sub_188C648C0(v190, v248, type metadata accessor for ToolbarButtonBarElement.Item);
                v192 = *(v191 + 49);
                sub_188C64C40(v191, type metadata accessor for ToolbarButtonBarElement.Item);
                v138 = v192 == 2;
                v177 = v279;
                if (v138)
                {
                  v162 = v161 - v180;
                  v161 = v161 - v180;
                }

                v149 = v272;
              }
            }
          }

          v193 = v281;
          v304.origin.x = v281;
          v194 = v280;
          v304.origin.y = v280;
          v195 = v277;
          v304.size.width = v277;
          v196 = v276;
          v304.size.height = v276;
          Height = CGRectGetHeight(v304);
          if (*(v149 + 40) >= Height)
          {
            v198 = Height;
          }

          else
          {
            v198 = *(v149 + 40);
          }

          v305.origin.x = v193;
          v305.origin.y = v194;
          v305.size.width = v195;
          v305.size.height = v196;
          v199 = v198;
          v200 = v194 + (CGRectGetHeight(v305) - v198) * 0.5;
          if (v181 != 2 && (v181 & 1) == 0)
          {
            v201 = v268;
            sub_188A3F29C(v292, v268, &qword_1EA93BB90);
            if ((*v282)(v201, 1, v38) == 1)
            {
              sub_188A3F5FC(v201, &qword_1EA93BB90);
            }

            else
            {
              v202 = v201;
              v203 = v260;
              sub_188C648C0(v202, v260, type metadata accessor for ToolbarButtonBarElement);
              v204 = v203;
              v205 = v261;
              sub_188C648C0(v204, v261, type metadata accessor for ToolbarButtonBarElement);
              if (swift_getEnumCaseMultiPayload() == 1)
              {
                v206 = 1;
                v207 = v265;
              }

              else
              {
                v208 = v205;
                v207 = v265;
                sub_188C648C0(v208, v265, type metadata accessor for ToolbarButtonBarElement.Item);
                v206 = 0;
              }

              v209 = v271;
              (*v270)(v207, v206, 1, v271);
              sub_188A3F704(v207, v177, &qword_1EA93BB88);
              if ((*v266)(v177, 1, v209) == 1)
              {
                sub_188A3F5FC(v177, &qword_1EA93BB88);
                v149 = v272;
              }

              else
              {
                v210 = v177;
                v211 = v249;
                sub_188C648C0(v210, v249, type metadata accessor for ToolbarButtonBarElement.Item);
                v212 = *(v211 + 49);
                sub_188C64C40(v211, type metadata accessor for ToolbarButtonBarElement.Item);
                v166 = v162;
                v149 = v272;
                if (v212 == 2)
                {
                  goto LABEL_122;
                }
              }
            }
          }

          v306.origin.x = v162;
          v306.origin.y = v200;
          v306.size.width = v180;
          v306.size.height = v199;
          v166 = v162 + CGRectGetWidth(v306);
          v161 = v166;
LABEL_122:
          if (v289 != 2)
          {
            goto LABEL_131;
          }

          v213 = v269;
          sub_188A3F29C(v294, v269, &qword_1EA93BB90);
          v214 = *v282;
          if ((*v282)(v213, 1, v38) == 1)
          {
            sub_188A3F5FC(v213, &qword_1EA93BB90);
LABEL_130:
            v157 = v293;
            goto LABEL_131;
          }

          v215 = v262;
          sub_188C64928(v213, v262, type metadata accessor for ToolbarButtonBarElement);
          if (swift_getEnumCaseMultiPayload() != 1)
          {
            sub_188C64C40(v215, type metadata accessor for ToolbarButtonBarElement);
            sub_188C64C40(v213, type metadata accessor for ToolbarButtonBarElement);
            goto LABEL_130;
          }

          v216 = *(v215 + 8);
          sub_188C64C40(v213, type metadata accessor for ToolbarButtonBarElement);
          v157 = v293;
          if (v216)
          {
            v217 = v236;
            sub_188A3F29C(v292, v236, &qword_1EA93BB90);
            if (v214(v217, 1, v38) != 1)
            {
              v222 = v235;
              sub_188C64928(v217, v235, type metadata accessor for ToolbarButtonBarElement);
              if (swift_getEnumCaseMultiPayload() == 1)
              {
                v218 = *(v222 + 8);
              }

              else
              {
                sub_188C64C40(v222, type metadata accessor for ToolbarButtonBarElement);
                v218 = 0;
              }

              sub_188C64C40(v217, type metadata accessor for ToolbarButtonBarElement);
              if (swift_isUniquelyReferenced_nonNull_native())
              {
                goto LABEL_132;
              }

LABEL_139:
              v159 = sub_188C650D8(0, *(v159 + 2) + 1, 1, v159);
              goto LABEL_132;
            }

            sub_188A3F5FC(v217, &qword_1EA93BB90);
          }

LABEL_131:
          v218 = 0;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            goto LABEL_139;
          }

LABEL_132:
          v220 = *(v159 + 2);
          v219 = *(v159 + 3);
          if (v220 >= v219 >> 1)
          {
            v159 = sub_188C650D8((v219 > 1), v220 + 1, 1, v159);
          }

          *(v159 + 2) = v220 + 1;
          v221 = &v159[40 * v220];
          *(v221 + 4) = v162;
          *(v221 + 5) = v200;
          *(v221 + 6) = v180;
          *(v221 + 7) = v199;
          v221[64] = v283;
          v221[65] = v218;
          *&v296 = v159;
          v307.origin.x = v286;
          v307.origin.y = v285;
          v307.size.width = v284;
          v307.size.height = v165;
          v309.origin.x = v162;
          v309.origin.y = v200;
          v309.size.width = v180;
          v309.size.height = v199;
          v308 = CGRectUnion(v307, v309);
          x = v308.origin.x;
          y = v308.origin.y;
          width = v308.size.width;
          v165 = v308.size.height;
          sub_188C64C40(v149, type metadata accessor for ToolbarButtonBarElement.Item);
          sub_188A3F5FC(v292, &qword_1EA93BB90);
          sub_188A3F5FC(v294, &qword_1EA93BB90);
          v150 = v290;
          sub_188C64C40(v290, type metadata accessor for ToolbarButtonBarElement);
          *&v297 = x;
          *(&v297 + 1) = y;
          *&v298 = width;
          *(&v298 + 1) = v165;
LABEL_80:
          a1 = v288;
          v162 = v166;
          if (v291 == v156)
          {
            goto LABEL_140;
          }
        }
      }

      if (v289 < 1)
      {
        v275 = 0.0;
        if (*&v273 >= 1)
        {
          v274 = v148 / *&v273;
          goto LABEL_72;
        }
      }

      else
      {
        v275 = v148 / v289;
      }
    }

    v274 = 0.0;
LABEL_72:
    v154 = &v301 + 8;
LABEL_73:
    *(v154 - 32) = 0;
    v152 = &v299;
    goto LABEL_74;
  }

  v293 = v90;
  v266 = v89;
  v252 = v18;
  v228 = v16;
  v256 = v13;
  v291 = (v39 + 56);
  *&v284 = v39 + 48;
  v234 = (v14 + 56);
  v233 = (v14 + 48);
  v227 = (v14 + 32);
  v230 = (v14 + 8);
  v231 = a2 + 5;
  v229 = a2 + 4;

  v289 = 0;
  v273 = 0.0;
  v274 = 0.0;
  v96 = 0;
  v97 = 0.0;
  v98 = 0.0;
  v99 = *&v275;
  v257 = v92;
  v282 = v71;
  while (1)
  {
    if (v96)
    {
      if (v96 > a1[2])
      {
        goto LABEL_145;
      }

      sub_188C64928(a1 + ((*(v295 + 80) + 32) & ~*(v295 + 80)) + *(v295 + 72) * (v96 - 1), v92, type metadata accessor for ToolbarButtonBarElement);
      v100 = 0;
    }

    else
    {
      v100 = 1;
    }

    *&v101 = v96 + 1;
    v102 = *v291;
    v103 = 1;
    (*v291)(v92, v100, 1, v38);
    v104 = a1;
    v105 = a1[2];
    if (v96 + 1 < v105)
    {
      sub_188C64928(v104 + ((*(v295 + 80) + 32) & ~*(v295 + 80)) + *(v295 + 72) * *&v101, v293, type metadata accessor for ToolbarButtonBarElement);
      v103 = 0;
    }

    v102(v293, v103, 1, v38);
    if (v96 >= v105)
    {
      break;
    }

    v106 = (*(v295 + 80) + 32) & ~*(v295 + 80);
    v107 = *(v295 + 72) * v96;
    sub_188C64928(v104 + v106 + v107, v71, type metadata accessor for ToolbarButtonBarElement);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_188A3F5FC(v293, &qword_1EA93BB90);
      sub_188A3F5FC(v92, &qword_1EA93BB90);
      v114 = v283;
      sub_188C648C0(v71, v283, type metadata accessor for ToolbarButtonBarElement.Item);
      if (*(v114 + 49) == 2)
      {
        a1 = v104;
        if ((*(v114 + 32) & 0x7FFFFFFFFFFFFFFFLL) == 0x7FF0000000000000)
        {
          if (__OFADD__((*&v274)++, 1))
          {
            goto LABEL_147;
          }
        }

        else
        {
          v98 = v98 + *v114;
          v118 = *v114 - *(v114 + 16);
          if (v118 <= 0.0)
          {
            v118 = 0.0;
          }

          v97 = v97 + v118;
        }

        v119 = *(v114 + 48);
        sub_188C64C40(v114, type metadata accessor for ToolbarButtonBarElement.Item);
        if (v119 == 1)
        {
          if (__OFADD__(*&v273, 1))
          {
            goto LABEL_148;
          }

          ++*&v273;
        }
      }

      else
      {
        sub_188C64C40(v114, type metadata accessor for ToolbarButtonBarElement.Item);
        a1 = v104;
      }

      goto LABEL_4;
    }

    *&v285 = v96 + 1;
    v108 = *v71;
    LODWORD(v286) = *(v71 + 8);
    v109 = v99;
    sub_188A3F29C(v92, v99, &qword_1EA93BB90);
    v110 = v38;
    v111 = **&v284;
    if ((**&v284)(v99, 1, v110) == 1)
    {
      sub_188A3F5FC(v293, &qword_1EA93BB90);
      v112 = v92;
      v113 = v99;
      a1 = v104;
LABEL_30:
      v38 = v110;
      goto LABEL_31;
    }

    v116 = v278;
    sub_188C648C0(v109, v278, type metadata accessor for ToolbarButtonBarElement);
    v117 = v270;
    sub_188C64928(v116, v270, type metadata accessor for ToolbarButtonBarElement);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_188C64C40(v116, type metadata accessor for ToolbarButtonBarElement);
      v112 = v293;
      v113 = v92;
      a1 = v104;
      v109 = *&v275;
      goto LABEL_30;
    }

    sub_188C64C40(v117, type metadata accessor for ToolbarButtonBarElement);
    v120 = v293;
    v121 = v266;
    sub_188A3F29C(v293, v266, &qword_1EA93BB90);
    if (v111(v121, 1, v110) == 1)
    {
      sub_188C64C40(v278, type metadata accessor for ToolbarButtonBarElement);
      sub_188A3F5FC(v120, &qword_1EA93BB90);
      v92 = v257;
      v112 = v257;
      v113 = v121;
      a1 = v104;
      v109 = *&v275;
      goto LABEL_30;
    }

    v123 = v121;
    v124 = v253;
    sub_188C648C0(v123, v253, type metadata accessor for ToolbarButtonBarElement);
    v125 = v251;
    sub_188C64928(v124, v251, type metadata accessor for ToolbarButtonBarElement);
    v38 = v110;
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_188C64C40(v125, type metadata accessor for ToolbarButtonBarElement);
      v126 = v237;
      sub_188C64928(v124, v237, type metadata accessor for ToolbarButtonBarElement);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v92 = v257;
      v101 = v285;
      if (EnumCaseMultiPayload == 1)
      {
        v128 = v240;
        (*v234)(v240, 1, 1, v256);
      }

      else
      {
        v130 = v126;
        v131 = v239;
        sub_188C648C0(v130, v239, type metadata accessor for ToolbarButtonBarElement.Item);
        v132 = v131 + *(v271 + 36);
        v128 = v240;
        sub_188A3F704(v132, v240, &qword_1EA93A828);
      }

      v129 = v241;
      sub_188A3F704(v128, v254, &qword_1EA93A828);
      v133 = v238;
      sub_188C64928(v278, v238, type metadata accessor for ToolbarButtonBarElement);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        (*v234)(v129, 1, 1, v256);
      }

      else
      {
        v134 = v133;
        v135 = v239;
        sub_188C648C0(v134, v239, type metadata accessor for ToolbarButtonBarElement.Item);
        sub_188A3F704(v135 + *(v271 + 36), v129, &qword_1EA93A828);
      }

      sub_188A3F704(v129, v255, &qword_1EA93A828);
      v245 = *(v242 + 48);
      v136 = v252;
      sub_188A3F29C(v254, v252, &qword_1EA93A828);
      sub_188A3F29C(v255, v136 + v245, &qword_1EA93A828);
      v232 = *v233;
      if ((v232)(v136, 1, v256) == 1)
      {
        sub_188A3F5FC(v255, &qword_1EA93A828);
        sub_188A3F5FC(v254, &qword_1EA93A828);
        v137 = v252;
        v138 = (v232)(&v252[v245], 1, v256) == 1;
        v139 = v137;
        if (!v138)
        {
LABEL_52:
          sub_188A3F5FC(v139, &qword_1EA93A820);
          v141 = &v263;
          goto LABEL_55;
        }

        sub_188A3F5FC(v137, &qword_1EA93A828);
LABEL_54:
        v141 = &v261;
LABEL_55:
        v144 = *(v141 - 32);
      }

      else
      {
        v140 = v252;
        sub_188A3F29C(v252, v244, &qword_1EA93A828);
        if ((v232)(v140 + v245, 1, v256) == 1)
        {
          sub_188A3F5FC(v255, &qword_1EA93A828);
          sub_188A3F5FC(v254, &qword_1EA93A828);
          (*v230)(v244, v256);
          v139 = v252;
          goto LABEL_52;
        }

        v142 = v228;
        v143 = v256;
        (*v227)(v228, &v252[v245], v256);
        sub_188BB0ED8(&qword_1EA930B00, MEMORY[0x1E69695A8]);
        LODWORD(v245) = sub_18A4A7248();
        v232 = *v230;
        v232(v142, v143);
        sub_188A3F5FC(v255, &qword_1EA93A828);
        sub_188A3F5FC(v254, &qword_1EA93A828);
        v232(v244, v256);
        sub_188A3F5FC(v252, &qword_1EA93A828);
        v144 = v231;
        if (v245)
        {
          goto LABEL_54;
        }
      }

      v108 = v108 + *v144;
      v145 = v250;
      *v250 = v108;
      *(v145 + 8) = LOBYTE(v286);
      swift_storeEnumTagMultiPayload();
      swift_beginAccess();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v104 = sub_188C65060(v104);
      }

      if (v96 >= v104[2])
      {
        goto LABEL_149;
      }

      v146 = v104 + v106 + v107;
      v147 = v250;
      sub_188C65074(v250, v146);
      v302 = v104;
      swift_endAccess();
      sub_188C64C40(v147, type metadata accessor for ToolbarButtonBarElement);
      sub_188C64C40(v253, type metadata accessor for ToolbarButtonBarElement);
      sub_188C64C40(v278, type metadata accessor for ToolbarButtonBarElement);
      v112 = v293;
      v113 = v92;
      a1 = v104;
      v109 = *&v275;
      goto LABEL_32;
    }

    sub_188C64C40(v124, type metadata accessor for ToolbarButtonBarElement);
    sub_188C64C40(v278, type metadata accessor for ToolbarButtonBarElement);
    v112 = v293;
    v92 = v257;
    v113 = v257;
    a1 = v104;
    v109 = *&v275;
LABEL_31:
    v101 = v285;
LABEL_32:
    sub_188A3F5FC(v112, &qword_1EA93BB90);
    sub_188A3F5FC(v113, &qword_1EA93BB90);
    v122 = v289;
    if (LODWORD(v286))
    {
      v122 = v289 + 1;
      v71 = v282;
      if (__OFADD__(v289, 1))
      {
        goto LABEL_146;
      }
    }

    else
    {
      v71 = v282;
    }

    v99 = v109;
    v289 = v122;
    v98 = v98 + v108;
LABEL_4:
    v96 = *&v101;
    if (v288 == *&v101)
    {
      goto LABEL_61;
    }
  }

  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
}

void sub_188BB33C0()
{
  v2 = *v0;
  v3 = *(*v0 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = 0;
    while (1)
    {
      v6 = &v2[v4];
      if (v2[v4 + 65])
      {
        break;
      }

      ++v5;
      v4 += 40;
      if (v3 == v5)
      {
        return;
      }
    }

    x = v6[1].origin.x;
    y = v6[1].origin.y;
    width = v6[1].size.width;
    height = v6[1].size.height;
    MidX = CGRectGetMidX(*(v0 + 48));
    if (v5 >= *(v2 + 2))
    {
      __break(1u);
    }

    else
    {
      v1 = MidX - CGRectGetMidX(v6[1]);
      if (v1 >= 0.0)
      {
        if (v5 + 1 < *(v2 + 2))
        {
          MinX = CGRectGetMinX(*&v2[v4 + 72]);
          v17.origin.x = x;
          v17.origin.y = y;
          v17.size.width = width;
          v17.size.height = height;
          v15 = MinX - (CGRectGetMaxX(v17) + *(v0 + 80));
          if (v15 < v1)
          {
            v1 = v15;
          }
        }
      }

      else if (v5)
      {
        if (v5 > *(v2 + 2))
        {
          goto LABEL_23;
        }

        v12 = CGRectGetMaxX(*&v2[v4 - 8]) + *(v0 + 80);
        v16.origin.x = x;
        v16.origin.y = y;
        v16.size.width = width;
        v16.size.height = height;
        v13 = v12 - CGRectGetMinX(v16);
        if (v1 <= v13)
        {
          v1 = v13;
        }
      }

      if (swift_isUniquelyReferenced_nonNull_native())
      {
LABEL_17:
        if (v5 < *(v2 + 2))
        {
          *&v2[v4 + 32] = v1 + *&v2[v4 + 32];
          *v0 = v2;
          return;
        }

        __break(1u);
LABEL_23:
        __break(1u);
        return;
      }
    }

    v2 = sub_189212C14(v2);
    goto LABEL_17;
  }
}

uint64_t sub_188BB3554()
{
  result = type metadata accessor for ToolbarButtonBarElement.Item(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

void sub_188BB35BC()
{
  type metadata accessor for CGSize(319);
  if (v0 <= 0x3F)
  {
    sub_1890A7AF4();
    if (v1 <= 0x3F)
    {
      sub_188BACEDC();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_188BB395C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 4u && ((1 << a3) & 0x19) != 0)
  {
  }

  return result;
}

uint64_t sub_188BB3988(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 4u && ((1 << a3) & 0x19) != 0)
  {
  }

  return result;
}

void _UITouchesEventCommonInit(void *a1)
{
  v1 = a1;
  v2 = MEMORY[0x1E695E9E8];
  v1[18] = CFDictionaryCreateMutable(0, 0, 0, MEMORY[0x1E695E9E8]);
  v1[19] = CFDictionaryCreateMutable(0, 0, 0, v2);
  v1[20] = CFDictionaryCreateMutable(0, 0, 0, v2);
  v3 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
  v4 = v1[21];
  v1[21] = v3;

  v1[22] = CFDictionaryCreateMutable(0, 0, 0, v2);
  v1[23] = CFDictionaryCreateMutable(0, 0, 0, v2);
  v1[28] = -1;
  v5 = objc_opt_new();
  v6 = v1[25];
  v1[25] = v5;
}

id _UISidebarGetPlatformMetrics(unint64_t a1)
{
  v2 = _UISidebarGetPlatformMetrics_metricsByIdiom;
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:a1];
  v4 = [v2 objectForKey:v3];

  if (!v4)
  {
    if (!_UISidebarGetPlatformMetrics_metricsByIdiom)
    {
      v5 = [MEMORY[0x1E695DF90] dictionary];
      v6 = _UISidebarGetPlatformMetrics_metricsByIdiom;
      _UISidebarGetPlatformMetrics_metricsByIdiom = v5;
    }

    if (a1 >= 2)
    {
      if (a1 != 5 || !_UISolariumEnabled())
      {
        goto LABEL_10;
      }
    }

    else if ((_UISolariumEnabled() & 1) == 0)
    {
      goto LABEL_10;
    }

    v4 = objc_opt_new();
    if (v4)
    {
LABEL_11:
      v7 = _UISidebarGetPlatformMetrics_metricsByIdiom;
      v8 = [MEMORY[0x1E696AD98] numberWithInteger:a1];
      [v7 setObject:v4 forKey:v8];

      goto LABEL_12;
    }

LABEL_10:
    v4 = objc_opt_new();
    goto LABEL_11;
  }

LABEL_12:

  return v4;
}

id sub_188BB4230(id result)
{
  if (result)
  {
    if (result == 1)
    {
      v2 = [v1 sidebarMetrics];
      v3 = [v2 abuttedBackground];
LABEL_8:
      v4 = v3;

      return v4;
    }

    if (qword_1EA930880 != -1)
    {
      v5 = result;
      swift_once();
      result = v5;
    }

    if (qword_1EA994EB8 == result)
    {
      v2 = [v1 sidebarMetrics];
      v3 = [v2 floatingBackground];
      goto LABEL_8;
    }

    if (qword_1EA930888 != -1)
    {
      v6 = result;
      swift_once();
      result = v6;
    }

    if (qword_1EA994EC0 == result)
    {
      return [objc_allocWithZone(_UIViewGlass) initWithVariant_];
    }

    else
    {
      return 0;
    }
  }

  return result;
}