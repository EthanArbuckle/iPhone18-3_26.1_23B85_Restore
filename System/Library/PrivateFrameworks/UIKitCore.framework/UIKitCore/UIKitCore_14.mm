void sub_188BEDF44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id DataDetectorsUIGetClass(void *a1)
{
  v1 = a1;
  if ((sDataDetectorsUIFrameworkLoaded & 1) == 0)
  {
    v2 = dlopen("/System/Library/PrivateFrameworks/DataDetectorsUI.framework/DataDetectorsUI", 4);
    sDataDetectorsUIFrameworkLoaded = 1;
    if (!v2)
    {
      v3 = dlerror();
      NSLog(&cfstr_FailedToLoadDa.isa, v3);
    }
  }

  v4 = NSClassFromString(v1);

  return v4;
}

char *sub_188BEE3B4(unint64_t a1)
{
  if (qword_1ED491B40 != -1)
  {
LABEL_29:
    swift_once();
  }

  if (qword_1ED491AF0 != -1)
  {
    swift_once();
  }

  v2 = off_1ED491B48;
  os_unfair_lock_lock(*(off_1ED491B48 + 2));
  if (!(a1 >> 62))
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_6;
    }

LABEL_31:
    v18 = MEMORY[0x1E69E7CC0];
    goto LABEL_32;
  }

  v3 = sub_18A4A7F68();
  if (!v3)
  {
    goto LABEL_31;
  }

LABEL_6:
  v4 = 0;
  v17 = v2;
  v18 = MEMORY[0x1E69E7CC0];
  do
  {
    v5 = v4;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = sub_188E48F84(v5, a1);
        v4 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_27;
        }
      }

      else
      {
        if (v5 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_28;
        }

        v6 = *(a1 + 8 * v5 + 32);
        v4 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
LABEL_27:
          __break(1u);
LABEL_28:
          __break(1u);
          goto LABEL_29;
        }
      }

      v7 = qword_1ED491B00;
      v8 = v6;
      if (v7 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v9 = off_1ED491B08;
      if (*(off_1ED491B08 + 2))
      {
        v10 = sub_188AC52E0(v8);
        if (v11)
        {
          break;
        }
      }

      swift_endAccess();

      ++v5;
      if (v4 == v3)
      {
        v2 = v17;
        goto LABEL_32;
      }
    }

    v16 = *(v9[7] + 16 * v10);
    swift_endAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v18 = sub_188BEE640(0, *(v18 + 2) + 1, 1, v18);
    }

    v14 = *(v18 + 2);
    v13 = *(v18 + 3);
    if (v14 >= v13 >> 1)
    {
      v18 = sub_188BEE640((v13 > 1), v14 + 1, 1, v18);
    }

    *(v18 + 2) = v14 + 1;
    *&v18[16 * v14 + 32] = v16;
    v2 = v17;
  }

  while (v4 != v3);
LABEL_32:
  os_unfair_lock_unlock(v2[2]);
  return v18;
}

char *sub_188BEE640(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934480);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

id getWTWritingToolsViewControllerClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_1ED4A2FA0;
  v7 = qword_1ED4A2FA0;
  if (!qword_1ED4A2FA0)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getWTWritingToolsViewControllerClass_block_invoke_0;
    v3[3] = &unk_1E70F2F20;
    v3[4] = &v4;
    __getWTWritingToolsViewControllerClass_block_invoke_0(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_188BEE864(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getWTWritingToolsViewControllerClass_block_invoke(uint64_t a1)
{
  if (!qword_1ED49A548)
  {
    qword_1ED49A548 = _sl_dlopen();
  }

  result = objc_getClass("WTWritingToolsViewController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1ED49A540 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getWTWritingToolsViewControllerClass_block_invoke_0(uint64_t a1)
{
  if (!qword_1ED4A2FA8)
  {
    qword_1ED4A2FA8 = _sl_dlopen();
  }

  result = objc_getClass("WTWritingToolsViewController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1ED4A2FA0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

CGPoint CGPointFromString(NSString *string)
{
  v1 = string;
  DoubleValue = *MEMORY[0x1E695EFF8];
  v3 = *(MEMORY[0x1E695EFF8] + 8);
  if ([(NSString *)v1 length]>= 5)
  {
    v8 = 0;
    str = 0;
    if (SplitBracesAndComma(v1, &str, &v8))
    {
      v4 = str;
      DoubleValue = CFStringGetDoubleValue(str);
      v5 = v8;
      v3 = CFStringGetDoubleValue(v8);
      CFRelease(v4);
      CFRelease(v5);
    }
  }

  v6 = DoubleValue;
  v7 = v3;
  result.y = v7;
  result.x = v6;
  return result;
}

void ___customTextViewSubclassRequiresTextKit1_block_invoke()
{
  v0 = qword_1ED4998D0;
  qword_1ED4998D0 = &unk_1EFE34AB8;
}

char *sub_188BF01BC(SEL *a1)
{
  v1 = [swift_getObjCClassFromMetadata() *a1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA932200);
  v2 = sub_18A4A7548();

  if (v2 >> 62)
  {
    sub_188A34624(0, &qword_1ED48FD80);

    v8 = sub_18A4A83B8();
    swift_bridgeObjectRelease_n();
    v2 = v8;
  }

  else
  {
    v3 = v2 & 0xFFFFFFFFFFFFFF8;

    sub_18A4A8738();
    sub_188A34624(0, &qword_1ED48FD80);
    if (swift_dynamicCastMetatype() || (v6 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10)) == 0)
    {
LABEL_3:
    }

    else
    {
      v7 = v3 + 32;
      while (1)
      {
        objc_opt_self();
        if (!swift_dynamicCastObjCClass())
        {
          break;
        }

        v7 += 8;
        if (!--v6)
        {
          goto LABEL_3;
        }
      }

      v2 = v3 | 1;
    }
  }

  v4 = sub_188BEE3B4(v2);

  return v4;
}

double _UIColorDecodeComponentForKey(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = a1;
  if ([v7 containsValueForKey:v6])
  {
    [v7 decodeDoubleForKey:v6];
    v9 = v8;
  }

  else
  {
    [v7 decodeFloatForKey:v5];
    v11 = v10;

    v9 = v11;
  }

  return v9;
}

__n128 std::deque<_UIVelocityIntegratorDataSample>::push_back(void *a1, uint64_t a2)
{
  v4 = a1[1];
  v5 = a1[2];
  if (v5 == v4)
  {
    v6 = 0;
  }

  else
  {
    v6 = 28 * ((v5 - v4) >> 3) - 1;
  }

  v7 = a1[4];
  v8 = a1[5] + v7;
  if (v6 == v8)
  {
    if (v7 < 0x1C)
    {
      v9 = a1[3];
      v10 = v9 - *a1;
      if (v5 - v4 < v10)
      {
        operator new();
      }

      v11 = v10 >> 2;
      if (v9 == *a1)
      {
        v12 = 1;
      }

      else
      {
        v12 = v11;
      }

      std::__allocate_at_least[abi:nn200100]<std::allocator<_UIVelocityIntegratorDataSample *>>(v12);
    }

    a1[4] = v7 - 28;
    v20 = *v4;
    a1[1] = v4 + 8;
    std::__split_buffer<_UIVelocityIntegratorDataSample *>::emplace_back<_UIVelocityIntegratorDataSample *&>(a1, &v20);
    v4 = a1[1];
    v8 = a1[5] + a1[4];
  }

  v13 = *&v4[8 * (v8 / 0x1C)] + 144 * (v8 % 0x1C);
  *v13 = *a2;
  v14 = *(a2 + 16);
  v15 = *(a2 + 32);
  v16 = *(a2 + 64);
  *(v13 + 48) = *(a2 + 48);
  *(v13 + 64) = v16;
  *(v13 + 16) = v14;
  *(v13 + 32) = v15;
  result = *(a2 + 80);
  v18 = *(a2 + 96);
  v19 = *(a2 + 128);
  *(v13 + 112) = *(a2 + 112);
  *(v13 + 128) = v19;
  *(v13 + 80) = result;
  *(v13 + 96) = v18;
  ++a1[5];
  return result;
}

void sub_188BF20A0(_Unwind_Exception *a1)
{
  operator delete(v2);
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<_UIVelocityIntegratorDataSample *>>(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::vector<_UIAuxillarySolveResult>::__throw_length_error[abi:nn200100]();
}

uint64_t _UICollectionViewShouldEnlargeLayoutAttributesQueryForEstimatedSizes()
{
  if (dyld_program_sdk_at_least())
  {
    return (byte_1ED48AAF4 != 0) & ~_UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_CollectionViewEnlargeLayoutAttributesQueryForEstimatedSizes, @"CollectionViewEnlargeLayoutAttributesQueryForEstimatedSizes");
  }

  else
  {
    return 1;
  }
}

void *std::__hash_table<std::__hash_value_type<long,UICollectionViewLayoutAttributes * {__strong}>,std::__unordered_map_hasher<long,std::__hash_value_type<long,UICollectionViewLayoutAttributes * {__strong}>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,UICollectionViewLayoutAttributes * {__strong}>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,UICollectionViewLayoutAttributes * {__strong}>>>::find<long>(void *a1, unint64_t a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (*&v2 <= a2)
    {
      v4 = a2 % *&v2;
    }
  }

  else
  {
    v4 = (*&v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5)
  {
    return 0;
  }

  result = *v5;
  if (*v5)
  {
    do
    {
      v7 = result[1];
      if (v7 == a2)
      {
        if (result[2] == a2)
        {
          return result;
        }
      }

      else
      {
        if (v3.u32[0] > 1uLL)
        {
          if (v7 >= *&v2)
          {
            v7 %= *&v2;
          }
        }

        else
        {
          v7 &= *&v2 - 1;
        }

        if (v7 != v4)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

void ___batteryLog_block_invoke()
{
  v0 = os_log_create("com.apple.UIKit", "UIDevice.battery");
  v1 = qword_1ED49E880;
  qword_1ED49E880 = v0;
}

void _3rdParty_batteryInformationChanged()
{
  v18 = *MEMORY[0x1E69E9840];
  v0 = _batteryLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_188A29000, v0, OS_LOG_TYPE_INFO, "Battery information has changed.", buf, 2u);
  }

  if (qword_1ED49E898 != -1)
  {
    dispatch_once(&qword_1ED49E898, &__block_literal_global_501_0);
  }

  theArray = 0;
  if (byte_1ED49E759 == 1)
  {
    v1 = IOPSCopyPowerSourcesByTypePrecise() == 0;
    v2 = 0;
    if (!v1)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v2 = IOPSCopyPowerSourcesByType();
    theArray = v2;
  }

  if (!v2)
  {
LABEL_24:
    v13 = _batteryLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_188A29000, v13, OS_LOG_TYPE_ERROR, "Could not copy battery information.", buf, 2u);
    }

    return;
  }

  v3 = IOPSCopyPowerSourcesList(v2);
  if (v3)
  {
    v4 = v3;
    if (CFArrayGetCount(theArray) < 1)
    {
      v6 = _batteryLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_188A29000, v6, OS_LOG_TYPE_ERROR, "No internal battery found", buf, 2u);
      }
    }

    else
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, 0);
      v6 = IOPSGetPowerSourceDescription(theArray, ValueAtIndex);
      v7 = _batteryLog();
      v8 = v7;
      if (v6)
      {
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138543362;
          v17 = v6;
          _os_log_debug_impl(&dword_188A29000, v8, OS_LOG_TYPE_DEBUG, "Retrieved battery info: %{public}@", buf, 0xCu);
        }

        v8 = [MEMORY[0x1E695DF90] dictionary];
        v9 = [v6 objectForKeyedSubscript:@"Current Capacity"];
        if (v9)
        {
          [v8 setObject:v9 forKeyedSubscript:@"CurrentCapacity"];
        }

        v10 = [v6 objectForKeyedSubscript:@"Max Capacity"];
        if (v10)
        {
          [v8 setObject:v10 forKeyedSubscript:@"MaxCapacity"];
        }

        v11 = [v6 objectForKeyedSubscript:@"Raw External Connected"];
        if (v11)
        {
          [v8 setObject:v11 forKeyedSubscript:@"ExternalConnected"];
        }

        v12 = [v6 objectForKeyedSubscript:@"Is Charged"];
        if (v12)
        {
          [v8 setObject:v12 forKeyedSubscript:@"FullyCharged"];
        }

        _updateBatteryStatusBasedOnProperties(v8);
      }

      else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_188A29000, v8, OS_LOG_TYPE_ERROR, "Could not retrieve information about internal battery.", buf, 2u);
      }
    }

    CFRelease(v4);
  }

  else
  {
    v14 = _batteryLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_188A29000, v14, OS_LOG_TYPE_ERROR, "Could not retrieve the list of internal batteries.", buf, 2u);
    }
  }

  CFRelease(theArray);
}

uint64_t ___3rdParty_batteryInformationChanged_block_invoke()
{
  result = UISelfHasEntitlement(@"com.apple.private.iokit.batterydataprecise");
  byte_1ED49E759 = result;
  return result;
}

id filterAndCopyWidths(void *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v15 + 1) + 8 * i);
        [v8 doubleValue];
        if (v9 >= 0 && ((v9 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 <= 0x3FE || (v9 - 1) <= 0xFFFFFFFFFFFFELL)
        {
          [v2 addObject:v8];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v5);
  }

  if ([v2 count])
  {
    v12 = [v2 allObjects];
    v13 = [v12 sortedArrayUsingSelector:sel_compare_];
  }

  else
  {
    v13 = MEMORY[0x1E695E0F0];
  }

  return v13;
}

uint64_t static NSDiffableDataSourceSnapshot._unconditionallyBridgeFromObjectiveC(_:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  if (a1)
  {
    v3 = a1;
    v4 = [v3 impl];
    v5 = [v4 copy];

    v6 = v5;
    swift_unknownObjectRelease();

    type metadata accessor for NSDiffableDataSourceSnapshot.ImplWrapper();
    result = swift_allocObject();
    *(result + 16) = v6;
  }

  else
  {
    type metadata accessor for NSDiffableDataSourceSnapshot.ImplWrapper();
    result = sub_188BE9078();
  }

  *a2 = result;
  return result;
}

id UICollectionViewDiffableDataSource.ReorderingHandlers.canReorderItem.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 8);
  *(v3 + 8) = a1;
  *(v3 + 16) = a2;
  sub_188A52E38(a1);
  sub_188A55B8C(v7);
  if (a1)
  {
    v8 = *v3;
    v9 = swift_allocObject();
    v10 = *(a3 + 32);
    *(v9 + 16) = *(a3 + 16);
    *(v9 + 32) = v10;
    *(v9 + 48) = a1;
    *(v9 + 56) = a2;
    v14[4] = sub_189044110;
    v14[5] = v9;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 1107296256;
    v14[2] = sub_188FAC37C;
    v14[3] = &block_descriptor_80;
    v11 = _Block_copy(v14);

    [v8 setCanReorderItemHandler_];
    _Block_release(v11);
    return sub_188A55B8C(a1);
  }

  else
  {
    v13 = *v3;

    return [v13 setCanReorderItemHandler_];
  }
}

uint64_t sub_188BF6BE8()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_188BF6DFC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

id UICollectionViewDiffableDataSource.ReorderingHandlers.willReorder.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 24);
  *(v3 + 24) = a1;
  *(v3 + 32) = a2;
  sub_188A52E38(a1);
  sub_188A55B8C(v7);
  if (a1)
  {
    v8 = *v3;
    v9 = swift_allocObject();
    v10 = *(a3 + 32);
    *(v9 + 16) = *(a3 + 16);
    *(v9 + 32) = v10;
    *(v9 + 48) = a1;
    *(v9 + 56) = a2;
    v14[4] = sub_18904429C;
    v14[5] = v9;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 1107296256;
    v14[2] = sub_188BFF280;
    v14[3] = &block_descriptor_6_8;
    v11 = _Block_copy(v14);

    [v8 setWillReorderHandler_];
    _Block_release(v11);
    return sub_188A55B8C(a1);
  }

  else
  {
    v13 = *v3;

    return [v13 setWillReorderHandler_];
  }
}

double UIViewController.contentUnavailableConfiguration.getter@<D0>(uint64_t a1@<X8>)
{
  if (![v1 contentUnavailableConfiguration])
  {
    goto LABEL_9;
  }

  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3)
  {
    v4 = v3;
    *(a1 + 24) = &type metadata for UIContentUnavailableConfiguration;
    *(a1 + 32) = &protocol witness table for UIContentUnavailableConfiguration;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93B660);
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    *a1 = v5;
    return result;
  }

  type metadata accessor for _UICustomContentConfiguration();
  v7 = swift_dynamicCastClass();
  if (!v7)
  {
    swift_unknownObjectRelease();
LABEL_9:
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    return result;
  }

  sub_188A53994(v7 + OBJC_IVAR____TtC5UIKit29_UICustomContentConfiguration_wrappedConfiguration, a1);

  swift_unknownObjectRelease();
  return result;
}

id UICollectionViewDiffableDataSource.ReorderingHandlers.init()@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 40) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 8) = 0u;
  result = [objc_allocWithZone(UICollectionViewDiffableDataSourceReorderingHandlers) init];
  *a1 = result;
  return result;
}

id UICollectionViewDiffableDataSource.ReorderingHandlers.didReorder.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 40);
  *(v3 + 40) = a1;
  *(v3 + 48) = a2;
  sub_188A52E38(a1);
  sub_188A55B8C(v7);
  if (a1)
  {
    v8 = *v3;
    v9 = swift_allocObject();
    v10 = *(a3 + 32);
    *(v9 + 16) = *(a3 + 16);
    *(v9 + 32) = v10;
    *(v9 + 48) = a1;
    *(v9 + 56) = a2;
    v14[4] = sub_189044120;
    v14[5] = v9;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 1107296256;
    v14[2] = sub_188BFF280;
    v14[3] = &block_descriptor_12_7;
    v11 = _Block_copy(v14);

    [v8 setDidReorderHandler_];
    _Block_release(v11);
    return sub_188A55B8C(a1);
  }

  else
  {
    v13 = *v3;

    return [v13 setDidReorderHandler_];
  }
}

uint64_t UICollectionViewDiffableDataSource.reorderingHandlers.setter(void *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[3];
  v5 = a1[5];
  [*(v1 + qword_1EA940A40) setReorderingHandlers_];

  sub_188A55B8C(v3);
  sub_188A55B8C(v4);

  return sub_188A55B8C(v5);
}

void sub_188BF77F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void _queue_end_backgroundTaskToUpdatePersistentSceneSessionMap()
{
  if (_UIStateRestorationDebugLogEnabled())
  {
    NSLog(&cfstr_SCalledToEndBa.isa, "void _queue_end_backgroundTaskToUpdatePersistentSceneSessionMap(void)", qword_1ED49FA78);
  }

  if (qword_1ED49FA78)
  {
    if (_UIStateRestorationDebugLogEnabled())
    {
      NSLog(&cfstr_STheBackground.isa, "void _queue_end_backgroundTaskToUpdatePersistentSceneSessionMap(void)", qword_1ED49FA78);
    }

    [UIApp _endBackgroundTask:qword_1ED49FA78];
    qword_1ED49FA78 = 0;
  }
}

id sub_188BF7EA8(uint64_t a1, double *a2)
{
  v4 = *(a1 + OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_lensView);
  swift_beginAccess();
  [v4 setCenter_];
  v5 = *(a1 + OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_lensViewTargetPosition);
  swift_beginAccess();
  return [v5 setValue_];
}

id sub_188BF8244()
{
  if (*(v0 + OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_usesBarBackground) != 1)
  {
    return 0;
  }

  v1 = OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_backgroundView;
  v2 = *(v0 + OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_backgroundView);
  if (v2)
  {
    result = [v2 customBackgroundView];
    if (result)
    {
      return result;
    }

    v4 = *(v0 + v1);
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  v6 = v4;
  return v5;
}

uint64_t sub_188BF838C(uint64_t a1, SEL *a2)
{
  v4 = v2;
  sub_188BC6E54(a1, v9);
  v6 = v10;
  if (v10)
  {
    v7 = v11;
    __swift_project_boxed_opaque_existential_0(v9, v10);
    v6 = sub_189170EC8(v6, v7);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
  }

  else
  {
    sub_188BC6DEC(v9);
  }

  [v4 *a2];
  swift_unknownObjectRelease();
  return sub_188BC6DEC(a1);
}

void sub_188BF84E0(void *a1)
{
  v3 = [v1 tabBarController];
  if (v3)
  {
    v4 = v3;
    v5 = [(UITabBarController *)v3 _internalTabBar];

    if (v5)
    {
      v6 = swift_allocObject();
      *(v6 + 16) = a1;
      v7 = swift_allocObject();
      *(v7 + 16) = sub_188BF86B8;
      *(v7 + 24) = v6;
      v11[4] = sub_188E3FE50;
      v11[5] = v7;
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 1107296256;
      v11[2] = sub_188A4A968;
      v11[3] = &block_descriptor_35_2;
      v8 = _Block_copy(v11);
      v9 = a1;

      [(UITabBar *)v5 _performWhileIgnoringLock:v8];

      _Block_release(v8);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if (isEscapingClosureAtFileLocation)
      {
        __break(1u);
      }
    }
  }
}

uint64_t sub_188BF8668()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

BOOL UITraitCollection.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [v3 _valueForNSIntegerTraitToken_];
  swift_unknownObjectRelease();
  return v4 != 0;
}

uint64_t static UITabBarControllerSidebarLayout._insetOverlap.getter()
{
  if (qword_1EA92F770 != -1)
  {
    swift_once();
  }

  return qword_1EA92F778;
}

void sub_188BF8BFC(char a1)
{
  v3 = *&v1[OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_lensView];
  if ([v3 lifted] != (a1 & 1))
  {
    v4 = v1[OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_isLensViewHidden];
    v5 = 1.0;
    if (a1)
    {
      sub_188B82DFC(v17);
      sub_188B82BE8(v17);
      v5 = v18;
    }

    v6 = swift_allocObject();
    v7 = a1 & 1;
    *(v6 + 16) = v7;
    *(v6 + 24) = v1;
    *(v6 + 32) = v4;
    *(v6 + 40) = v5;
    v15 = sub_188BF9048;
    v16 = v6;
    aBlock = MEMORY[0x1E69E9820];
    v12 = 1107296256;
    v13 = sub_188A4A8F0;
    v14 = &block_descriptor_149_3;
    v8 = _Block_copy(&aBlock);
    v9 = v1;

    v15 = signpost_c2_entryLock_start;
    v16 = 0;
    aBlock = MEMORY[0x1E69E9820];
    v12 = 1107296256;
    v13 = sub_188C3DD6C;
    v14 = &block_descriptor_152_2;
    v10 = _Block_copy(&aBlock);
    [v3 setLifted:v7 animated:1 alongsideAnimations:v8 completion:v10];
    _Block_release(v10);
    _Block_release(v8);
  }
}

uint64_t sub_188BF8DB4()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

void sub_188BF8DF0(char a1, uint64_t a2, char a3, CGFloat a4)
{
  if ((a1 & 1) == 0)
  {
    *(a2 + OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_isLensViewHidden) = a3 & 1;
    v6 = 0.0;
    if ((a3 & 1) == 0)
    {
      v6 = 1.0;
      if (*(a2 + OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_isCustomizingTabBar))
      {
        v6 = 0.0;
      }
    }

    [*(a2 + OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_lensView) setAlpha_];
  }

  v7 = *(a2 + OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_lensViewFrame);
  v8 = *(a2 + OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_lensViewFrame + 8);
  width = *(a2 + OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_lensViewFrame + 16);
  height = *(a2 + OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_lensViewFrame + 24);
  v11 = *(a2 + OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_lensView);
  if ([v11 lifted])
  {
    v24.origin.x = v7;
    v24.origin.y = v8;
    v24.size.width = width;
    v24.size.height = height;
    v25 = CGRectInset(v24, -8.0, -8.0);
    width = v25.size.width;
    height = v25.size.height;
  }

  [v11 setBounds_];
  CGAffineTransformMakeScale(&v22, a4, a4);
  v20 = *&v22.a;
  v21 = *&v22.c;
  tx = v22.tx;
  ty = v22.ty;
  v14 = [*(a2 + OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_selectedContentView) subviews];
  sub_188A34624(0, &qword_1ED48F680);
  v15 = sub_18A4A7548();

  if (!(v15 >> 62))
  {
    v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v16)
    {
      goto LABEL_10;
    }

LABEL_18:

    goto LABEL_20;
  }

  v16 = sub_18A4A7F68();
  if (!v16)
  {
    goto LABEL_18;
  }

LABEL_10:
  if (v16 >= 1)
  {
    v17 = 0;
    do
    {
      if ((v15 & 0xC000000000000001) != 0)
      {
        v18 = sub_188E49300(v17, v15);
      }

      else
      {
        v18 = *(v15 + 8 * v17 + 32);
      }

      v19 = v18;
      ++v17;
      *&v22.a = v20;
      *&v22.c = v21;
      v22.tx = tx;
      v22.ty = ty;
      [v18 setTransform_];
    }

    while (v16 != v17);
LABEL_20:

    return;
  }

  __break(1u);
}

void sub_188BF923C(id a1)
{
  v3 = *&v1[OBJC_IVAR____UITabBarContentLayoutManager_hostedAccessoryConfiguration];
  *&v1[OBJC_IVAR____UITabBarContentLayoutManager_hostedAccessoryConfiguration] = a1;
  if (!a1)
  {
    if (!v3)
    {
      return;
    }

    v8 = v3;
    goto LABEL_9;
  }

  v8 = v3;
  if (!v3)
  {
    a1 = a1;
LABEL_9:
    [v1 updateAccessoryDisplayStyle];

    v7 = v8;
    goto LABEL_10;
  }

  v4 = v1;
  sub_188A34624(0, &qword_1EA92EFF0);
  a1 = a1;
  v5 = v8;
  v6 = sub_18A4A7C88();

  if ((v6 & 1) == 0)
  {
    v1 = v4;
    goto LABEL_9;
  }

  v7 = v5;
LABEL_10:
}

uint64_t sub_188BF942C(uint64_t a1, char a2)
{
  v5 = MEMORY[0x1E69E7D40];
  v6 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x150);
  if (v6())
  {
    sub_188B82DFC(v148);
    v7 = v154[5];
    *&v156[64] = v154[6];
    *&v156[80] = v155[0];
    *&v156[89] = *(v155 + 9);
    *v156 = v154[2];
    *&v156[16] = v154[3];
    v8 = v154[4];
  }

  else
  {
    sub_188B82DFC(v148);
    v7 = v152;
    *&v156[64] = v153;
    *&v156[80] = v154[0];
    *&v156[89] = *(v154 + 9);
    *v156 = v149;
    *&v156[16] = v150;
    v8 = v151;
  }

  *&v156[32] = v8;
  *&v156[48] = v7;
  sub_188B7FF08(v156, v164);
  v9 = sub_188B82BE8(v148);
  v164[4] = *&v156[64];
  *v165 = *&v156[80];
  *(&v165[1] + 1) = *&v156[89];
  v164[0] = *v156;
  v164[1] = *&v156[16];
  v164[2] = *&v156[32];
  v164[3] = *&v156[48];
  v10 = v165[1];
  v11 = *&v156[64];
  v12 = (*((*v5 & *v2) + 0x138))(v9);
  if (!a1)
  {
    return sub_188B7FF64(v164);
  }

  if (a1 == 2)
  {
    dxa = v13;
    sub_188B82DFC(v156);
    sub_188B82BE8(v156);
    v18 = v163;
    v19 = [v2 tabBar];
    v20 = [v19 isHidden];

    v128 = v18;
    v131 = v11;
    if ([v2 currentMorphTarget] != 2 || (a2 & 1) != 0 || (v20 & 1) != 0)
    {
      v59 = [v2 currentMorphTarget];
      v60 = v6();
      v61 = 8;
      if (v60)
      {
        v61 = 120;
      }

      v62 = (v2 + OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating____lazy_storage___configuration + v61);
      v63 = v62[5];
      v146 = v62[4];
      *v147 = v63;
      *&v147[9] = *(v62 + 89);
      v64 = v62[1];
      v142 = *v62;
      v143 = v64;
      v65 = v62[3];
      v144 = v62[2];
      v145 = v65;
      v134 = v10;
      if (v59)
      {
        v66 = *&v147[16];
        sub_188B7FF08(&v142, &v136);
        v67 = UIEdgeInsetsAdd(14, 0.0, 0.0, 0.0, 0.0, v66);
        v69 = v68;
        v71 = v70;
        v73 = v72;
      }

      else
      {
        sub_188B7FF08(&v142, &v136);
        v67 = 0.0;
        v69 = 0.0;
        v71 = 0.0;
        v73 = 0.0;
      }

      v103 = [v2 tabBar];
      [v103 bounds];
      v105 = v104;
      v107 = v106;
      v109 = v108;
      v111 = v110;

      v112 = UIRectInset(v105, v107, v109, v111, v67, v73, v71, v69);
      v114 = v113;
      v116 = v115;
      v118 = v117;
      sub_188B7FF64(&v142);
      v119 = v165[0];
      v174.origin.x = v112;
      v174.origin.y = v114;
      v174.size.width = v116;
      v174.size.height = v118;
      Height = CGRectGetHeight(v174);
      if (v20)
      {
        v175.origin.x = v112;
        v175.origin.y = v114;
        v175.size.width = v116;
        v175.size.height = v118;
        v121 = CGRectGetHeight(v175);
        v122 = dxa;
        v123 = v134;
      }

      else
      {
        v123 = v134;
        if (v59)
        {
          v124 = v134;
        }

        else
        {
          v124 = v119;
        }

        v121 = Height - v124 - dxa;
        v122 = v128;
      }

      v125 = v121 - v123 - v122;
      v176.origin.x = v112;
      v176.origin.y = v114;
      v176.size.width = v116;
      v176.size.height = v118;
      MinX = CGRectGetMinX(v176);
      v177.origin.x = v112;
      v177.origin.y = v114;
      v177.size.width = v116;
      v177.size.height = v118;
      Width = CGRectGetWidth(v177);
      v56 = MinX;
      v57 = v125;
      v58 = v123;
    }

    else
    {
      v21 = v6();
      v22 = 8;
      if (v21)
      {
        v22 = 120;
      }

      v23 = (v2 + OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating____lazy_storage___configuration + v22);
      *&v147[9] = *(v23 + 89);
      v24 = v23[5];
      v146 = v23[4];
      *v147 = v24;
      v25 = v23[1];
      v142 = *v23;
      v143 = v25;
      v26 = v23[3];
      v144 = v23[2];
      v145 = v26;
      v27 = *&v147[16];
      sub_188B7FF08(&v142, &v136);
      v28 = UIEdgeInsetsAdd(14, 0.0, 0.0, 0.0, 0.0, v27);
      v127 = v29;
      v31 = v30;
      v33 = v32;
      v34 = [v2 tabBar];
      [v34 bounds];
      v36 = v35;
      v38 = v37;
      v39 = v10;
      v41 = v40;
      v43 = v42;

      v44 = UIRectInset(v36, v38, v41, v43, v28, v33, v31, v127);
      v46 = v45;
      v48 = v47;
      v50 = v49;
      sub_188B7FF64(&v142);
      v51 = 1;
      if (*(v2 + OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_auxiliaryView))
      {
        v51 = 2;
      }

      v52 = (v39 + v128) * v51;
      v166.origin.x = v44;
      v166.origin.y = v46;
      v166.size.width = v48;
      v166.size.height = v50;
      v53 = CGRectGetHeight(v166) - v39 - dxa;
      v167.origin.x = v44;
      v167.origin.y = v46;
      v167.size.width = v48;
      v167.size.height = v50;
      v54 = v39 + v128 + CGRectGetMinX(v167);
      v168.origin.x = v44;
      v168.origin.y = v46;
      v168.size.width = v48;
      v168.size.height = v50;
      Width = CGRectGetWidth(v168) - v52;
      v56 = v54;
      v57 = v53;
      v58 = v39;
    }

    CGRectInset(*&v56, v131, 0.0);
    return sub_188B7FF64(v164);
  }

  if (a1 != 1)
  {
    return sub_188B7FF64(v164);
  }

  if (a2)
  {
    v14 = 8.0;
  }

  else
  {
    v14 = v11;
  }

  if (a2)
  {
    v13 = 8.0;
  }

  v130 = v13;
  dx = v14;
  if ((v6)(v12))
  {
    sub_188B82DFC(v156);
    v15 = v160;
    v140 = v161;
    v141[0] = v162[0];
    *(v141 + 9) = *(v162 + 9);
    v136 = v157;
    v137 = v158;
    v16 = v159;
  }

  else
  {
    sub_188B82DFC(v156);
    v15 = *&v156[56];
    v140 = *&v156[72];
    v141[0] = *&v156[88];
    *(v141 + 9) = *&v156[97];
    v136 = *&v156[8];
    v137 = *&v156[24];
    v16 = *&v156[40];
  }

  v138 = v16;
  v139 = v15;
  sub_188B7FF08(&v136, &v142);
  sub_188B82BE8(v156);
  v146 = v140;
  *v147 = v141[0];
  *&v147[9] = *(v141 + 9);
  v142 = v136;
  v143 = v137;
  v144 = v138;
  v145 = v139;
  v74 = 0.0;
  v75 = 0.0;
  v76 = 0.0;
  v77 = 0.0;
  v78 = 0.0;
  if ((a2 & 1) == 0)
  {
    v75 = UIEdgeInsetsAdd(14, 0.0, 0.0, 0.0, 0.0, *&v147[16]);
    v76 = v79;
    v77 = v80;
    v78 = v81;
    v74 = v10;
  }

  v129 = v74;
  v82 = [v2 tabBar];
  [v82 bounds];
  v135 = v10;
  v84 = v83;
  v86 = v85;
  v88 = v87;
  v90 = v89;

  v91 = UIRectInset(v84, v86, v88, v90, v75, v78, v77, v76);
  v93 = v92;
  v95 = v94;
  v97 = v96;
  sub_188B7FF64(&v142);
  v169.origin.x = v91;
  v169.origin.y = v93;
  v169.size.width = v95;
  v169.size.height = v97;
  v98 = CGRectGetHeight(v169) - v135 - v130;
  v99 = [v2 tabBar];
  v100 = [v99 _shouldReverseLayoutDirection];

  if (v100)
  {
    v101 = 8;
  }

  else
  {
    v101 = 2;
  }

  v170.origin.x = v91;
  v170.origin.y = v93;
  v170.size.width = v95;
  v170.size.height = v97;
  v102 = CGRectGetMinX(v170);
  v171.origin.x = v91;
  v171.origin.y = v93;
  v171.size.width = v95;
  v171.size.height = v97;
  v172.size.width = CGRectGetWidth(v171);
  v172.origin.x = v102;
  v172.origin.y = v98;
  v172.size.height = v135;
  v173 = CGRectInset(v172, dx, 0.0);
  UIRectInsetEdges(v101, v173.origin.x, v173.origin.y, v173.size.width, v173.size.height, v129);
  return sub_188B7FF64(v164);
}

uint64_t _UIEnhancedMainMenuEnabled()
{
  if (qword_1ED49E130 != -1)
  {
    dispatch_once(&qword_1ED49E130, &__block_literal_global_5_4);
  }

  return byte_1ED49E112;
}

id sub_188BF9E9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = objc_opt_self();
  (*(a4 + 32))(a3, a4);
  v8 = sub_18A4A7258();

  (*(a4 + 24))(a3, a4);
  v9 = sub_18A4A7258();

  (*(a4 + 16))(&v15, a3, a4);
  v10 = v15;
  v11 = (*(a4 + 40))(a3, a4);
  v12 = (*(a4 + 48))(a3, a4);
  v13 = [v7 _defineNSIntegerTraitWithName_identifier_defaultValue_affectsColorAppearance_defaultValueRepresentsUnspecified_isPrivate_placeholderToken_];

  return v13;
}

void (*UIButton.Configuration.contentInsets.modify(uint64_t *a1))(double **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  [*(*v1 + 16) contentInsets];
  *v4 = v5;
  v4[1] = v6;
  v4[2] = v7;
  v4[3] = v8;
  return sub_188BFA338;
}

void sub_188BFA338(double **a1)
{
  v1 = *a1;
  UIButton.Configuration.contentInsets.setter(**a1, (*a1)[1], (*a1)[2], (*a1)[3]);

  free(v1);
}

void sub_188BFA4DC(uint64_t a1, uint64_t a2, SEL *a3)
{
  v5 = sub_188BC666C();
  v6 = v5;
  if (a2)
  {
    v7 = sub_18A4A7258();
  }

  else
  {
    v7 = 0;
  }

  [v5 *a3];
}

char *sub_188BFA838(uint64_t a1, char a2)
{
  if (a1 <= 109)
  {
    if (a1 == 100)
    {
      ObjCClassFromMetadata = _UISlideriOSFluidVisualElement;
      goto LABEL_18;
    }

    if (a1 != 101)
    {
LABEL_14:
      if ((a2 & 1) != 0 || (_UISolariumEnabled() & 1) == 0)
      {
        ObjCClassFromMetadata = _UISlideriOSVisualElement;
      }

      else
      {
        type metadata accessor for _UISliderGlassVisualElement();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      }

      goto LABEL_18;
    }

    v3 = [objc_allocWithZone(_UISlideriOSFluidVisualElement) init];
    [v3 setChangeWithVolumeButtons_];
    return v3;
  }

  if (a1 == 110)
  {
    type metadata accessor for _UISliderFluidVisualElement();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    goto LABEL_18;
  }

  if (a1 == 111)
  {
    type metadata accessor for _UISliderFluidVisualElement();
    v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v3[OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_changeWithVolumeButtons] = 1;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      if (*&v3[OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_fluidInteraction])
      {
        v5 = Strong;
        sub_188BFC124(Strong);
        sub_188BFB3D4(0);
      }

      else
      {
      }
    }

    return v3;
  }

  if (a1 != 120)
  {
    goto LABEL_14;
  }

  type metadata accessor for _UISliderColorVisualElement();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
LABEL_18:
  v6 = objc_allocWithZone(ObjCClassFromMetadata);

  return [v6 init];
}

char *sub_188BFA9D8(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC5UIKit27_UISliderGlassVisualElement_minimumThumbHitSize] = 0x4048000000000000;
  v9 = OBJC_IVAR____TtC5UIKit27_UISliderGlassVisualElement_lensView;
  v10 = [objc_allocWithZone(_UILiquidLensView) init];
  if (qword_1EA930530 != -1)
  {
    swift_once();
  }

  [v10 setRestingShadowProperties_];
  *&v4[v9] = v10;
  *&v4[OBJC_IVAR____TtC5UIKit27_UISliderGlassVisualElement_thumbImageView] = 0;
  v11 = OBJC_IVAR____TtC5UIKit27_UISliderGlassVisualElement_defaultThumbTintColor;
  *&v4[v11] = [objc_opt_self() whiteColor];
  v18.receiver = v4;
  v18.super_class = type metadata accessor for _UISliderGlassVisualElement();
  v12 = objc_msgSendSuper2(&v18, sel_initWithFrame_, a1, a2, a3, a4);
  v13 = *&v12[OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_barView];
  v14 = v12;
  v15 = [v13 layer];
  [v15 setCornerCurve_];

  v16 = OBJC_IVAR____TtC5UIKit27_UISliderGlassVisualElement_lensView;
  [*&v14[OBJC_IVAR____TtC5UIKit27_UISliderGlassVisualElement_lensView] setTranslatesAutoresizingMaskIntoConstraints_];
  [*&v14[v16] setRestingBackgroundColor_];
  [v14 addSubview_];

  return v14;
}

id sub_188BFADF0()
{
  v0 = [objc_allocWithZone(_UIShadowProperties) init];
  [v0 setOpacity_];
  [v0 setRadius_];
  result = [v0 setOffset_];
  qword_1EA9304B0 = v0;
  return result;
}

uint64_t sub_188BFAEB8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

char *sub_188BFAF24(double a1, double a2, double a3, double a4)
{
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_data] = 0;
  v9 = OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_clipView;
  *&v4[v9] = [objc_allocWithZone(UIView) init];
  v10 = OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_barView;
  *&v4[v10] = [objc_allocWithZone(UIView) init];
  v11 = OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_trackView;
  *&v4[v11] = [objc_allocWithZone(UIView) init];
  *&v4[OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_tickViews] = MEMORY[0x1E69E7CC0];
  *&v4[OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_tickView] = 0;
  *&v4[OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_barEffectView] = 0;
  *&v4[OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_leftTrackEffectView] = 0;
  *&v4[OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_rightTrackEffectView] = 0;
  *&v4[OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_minimumView] = 0;
  *&v4[OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_maximumView] = 0;
  v4[OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_usingSliderStyling] = 1;
  *&v4[OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_lastUpdate] = 0;
  v4[OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_hasPlayedBounceForCurrentValue] = 0;
  v4[OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_changeWithVolumeButtons] = 0;
  *&v4[OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_fluidInteraction] = 0;
  *&v4[OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_expansionGesture] = 0;
  v4[OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_isInteractivelyChanging] = 0;
  v4[OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_interactiveChangeState] = 0;
  *&v4[OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_paddingAroundImage] = 0x4026000000000000;
  *&v4[OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_defaultExpansionFactor] = 0x4003333333333333;
  *&v4[OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_defaultHorizontalExpansionFactor] = 0x3FF0000000000000;
  *&v4[OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_disabledAlpha] = 0x3FE0000000000000;
  *&v4[OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_acceleratedThumbFillRange] = 0x3F947AE147AE147BLL;
  *&v4[OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_fluidUpdateSource] = 0;
  v23.receiver = v4;
  v23.super_class = type metadata accessor for _UISliderFluidVisualElement();
  v12 = objc_msgSendSuper2(&v23, sel_initWithFrame_, a1, a2, a3, a4);
  v13 = OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_clipView;
  v14 = *&v12[OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_clipView];
  v15 = v12;
  v16 = [v14 layer];
  [v16 setCornerCurve_];

  v17 = [*&v12[v13] layer];
  [v17 setAllowsEdgeAntialiasing_];

  [*&v12[v13] setClipsToBounds_];
  [*&v12[v13] setUserInteractionEnabled_];
  v18 = OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_barView;
  v19 = [*&v15[OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_barView] layer];
  [v19 setAllowsEdgeAntialiasing_];

  [*&v15[v18] setUserInteractionEnabled_];
  v20 = OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_trackView;
  v21 = [*&v15[OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_trackView] layer];
  [v21 setAllowsEdgeAntialiasing_];

  [*&v15[v20] setUserInteractionEnabled_];
  [v15 addSubview_];
  [*&v12[v13] addSubview_];
  [*&v12[v13] addSubview_];

  return v15;
}

void sub_188BFB2D0(void *a1, double a2, double a3, double a4, double a5, uint64_t a6, const char **a7)
{
  v15.receiver = a1;
  v15.super_class = type metadata accessor for _UISliderFluidVisualElement();
  v12 = *a7;
  v13 = v15.receiver;
  objc_msgSendSuper2(&v15, v12, a2, a3, a4, a5);
  v14 = [objc_opt_self() _isInAnimationBlockWithAnimationsEnabled];
  sub_188BFB3D4(v14);
  sub_188BFB9E4();
}

id sub_188BFB37C(void *a1, uint64_t a2, SEL *a3)
{
  v5.receiver = a1;
  v5.super_class = type metadata accessor for _UISliderFluidVisualElement();
  return objc_msgSendSuper2(&v5, *a3);
}

void sub_188BFB3D4(char a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v54 = Strong;
  [v1 bounds];
  [v54 trackRectForBounds_];
  x = v57.origin.x;
  y = v57.origin.y;
  width = v57.size.width;
  height = v57.size.height;
  MidX = CGRectGetMidX(v57);
  [v1 bounds];
  v9 = MidX - CGRectGetMidX(v58);
  v59.origin.x = x;
  v59.origin.y = y;
  v59.size.width = width;
  v59.size.height = height;
  MidY = CGRectGetMidY(v59);
  [v1 bounds];
  v11 = MidY - CGRectGetMidY(v60);
  v12 = *(v1 + OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_clipView);
  [v1 bounds];
  v13 = v9 + CGRectGetMidX(v61);
  [v1 bounds];
  [v12 setCenter_];

  v14 = *(v1 + OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_fluidInteraction);
  if (!v14)
  {
    v16 = v54;
LABEL_26:

    return;
  }

  v15 = MEMORY[0x1E69E7D40];
  if (*(v1 + OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_isInteractivelyChanging) == 1)
  {
    height = height * (*((*MEMORY[0x1E69E7D40] & *v1) + 0x328))(v14);
  }

  else
  {
    v17 = v14;
  }

  v18 = [v14 configuration];
  [v18 trackSize];
  v20 = v19;
  v22 = v21;

  v23 = v22 != height;
  v24 = [v14 configuration];
  v25 = [v24 preferredInputMethods];

  v26 = (v25 >> 1) & 1 ^ *(v1 + OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_changeWithVolumeButtons) | (v20 != width);
  v27 = swift_unknownObjectWeakLoadStrong();
  if (v27)
  {
    v28 = v27;
    v29 = [v27 _sliderConfiguration];

    if (v29)
    {
      objc_opt_self();
      v30 = swift_dynamicCastObjCClass();
      if (v30)
      {
        [v30 stretchLimit];
        v32 = v31;
        swift_unknownObjectRelease();
        goto LABEL_13;
      }

      v27 = swift_unknownObjectRelease();
    }
  }

  v32 = (*((*v15 & *v1) + 0x310))(v27);
LABEL_13:
  v33 = [v14 configuration];
  [v33 stretchAmount];
  v35 = v34;

  v36 = [objc_opt_self() rootSettings];
  [v36 defaultStretchAmount];
  v38 = v37;

  if (v35 == v38)
  {
    v39 = v32 == 0.0;
  }

  else
  {
    v40 = [v14 configuration];
    [v40 stretchAmount];
    v42 = v41;

    v39 = v32 == v42;
  }

  v43 = !v39;
  if (((v43 | v26 | v23) & 1) == 0)
  {
    v46 = *(v1 + OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_lastUpdate);
    if (!v46)
    {
LABEL_25:

      v16 = v14;
      goto LABEL_26;
    }

    v47 = *((*v15 & *v1) + 0x3C0);
    v45 = v46;
    v47();
LABEL_24:

    goto LABEL_25;
  }

  v44 = sub_188BFC734(width, height);
  if (a1)
  {
    [v14 setConfiguration_];
    v45 = v54;
    v54 = v44;
    goto LABEL_24;
  }

  v48 = objc_opt_self();
  v49 = swift_allocObject();
  *(v49 + 16) = v14;
  *(v49 + 24) = v44;
  v50 = swift_allocObject();
  *(v50 + 16) = sub_188BFEB50;
  *(v50 + 24) = v49;
  aBlock[4] = sub_188E3FE50;
  aBlock[5] = v50;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_188A4A968;
  aBlock[3] = &block_descriptor_376;
  v51 = _Block_copy(aBlock);
  v52 = v14;
  v53 = v44;

  [v48 performWithoutAnimation_];

  _Block_release(v51);
  LOBYTE(v52) = swift_isEscapingClosureAtFileLocation();

  if (v52)
  {
    __break(1u);
  }
}

uint64_t sub_188BFB9A0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

void sub_188BFB9E4()
{
  v1 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v61 = Strong;
    v3 = OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_tickView;
    [*(v0 + OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_tickView) removeFromSuperview];
    v4 = *(v0 + v3);
    *(v0 + v3) = 0;

    v5 = OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_tickViews;
    v6 = MEMORY[0x1E69E7CC0];
    *(v0 + OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_tickViews) = MEMORY[0x1E69E7CC0];

    v7 = swift_unknownObjectWeakLoadStrong();
    if (v7)
    {
      v8 = v7;
      v9 = [v7 _sliderConfiguration];

      if (v9)
      {
        v10 = swift_dynamicCastObjCProtocolConditional();
        if (!v10)
        {

          swift_unknownObjectRelease();
          return;
        }

        v11 = v10;
        v12 = [objc_allocWithZone(UIView) init];
        v13 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x350))();
        v14 = OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_clipView;
        v15 = *(v1 + OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_clipView);
        v62 = v13;
        if (v13)
        {
          [v15 bounds];
          [v12 setFrame_];
          v16 = 0.0;
          if (*(v1 + OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_isInteractivelyChanging))
          {
            v16 = 1.0;
          }

          [v12 setAlpha_];
          [v12 setAutoresizingMask_];
          [*(v1 + v14) addSubview_];
        }

        else
        {
          [v15 frame];
          MinX = CGRectGetMinX(v65);
          [*(v1 + v14) frame];
          v18 = CGRectGetMaxY(v66) + 3.0;
          [*(v1 + v14) frame];
          [v12 setFrame_];
          [v1 insertSubview:v12 belowSubview:*(v1 + v14)];
        }

        v63 = v6;
        if ([v11 tickStyle] == 0x7FFFFFFFFFFFFFFFLL)
        {
          swift_unknownObjectRelease();
LABEL_37:
          v44 = MEMORY[0x1E69E7CC0];
LABEL_38:

          *(v1 + v5) = v44;

          v57 = *(v1 + v3);
          *(v1 + v3) = v12;

          return;
        }

        [v1 bounds];
        [v61 trackRectForBounds_];
        v20 = v19;
        v22 = v21;
        v24 = v23;
        v26 = v25;
        [v1 bounds];
        v28 = v27;
        v30 = v29;
        v32 = v31;
        v34 = v33;
        [v61 value];
        LODWORD(v58) = v35;
        [v61 thumbRectForBounds:v28 trackRect:v30 value:{v32, v34, v20, v22, v24, v26, v58}];
        Width = CGRectGetWidth(v67);
        if (v62)
        {
          v37 = 0.0;
          v38 = 4.0;
          v39 = 2.0;
        }

        else
        {
          v24 = v24 - Width;
          v37 = Width * 0.5;
          v38 = 3.0;
          v39 = 1.5;
        }

        v40 = [v11 ticks];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA935580);
        v41 = sub_18A4A7548();

        if (v41 >> 62)
        {
          v42 = sub_18A4A7F68();
          if (v42)
          {
            goto LABEL_21;
          }
        }

        else
        {
          v42 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v42)
          {
LABEL_21:
            v59 = v5;
            v60 = v3;
            if (v42 < 1)
            {
              __break(1u);
              return;
            }

            v43 = 0;
            v44 = MEMORY[0x1E69E7CC0];
            v45 = &selRef_playsNicelyWithGestures;
            v46 = v26 * 0.5 + -2.0;
            do
            {
              if ((v41 & 0xC000000000000001) != 0)
              {
                v47 = sub_188E49B28(v43, v41);
              }

              else
              {
                v47 = *(v41 + 8 * v43 + 32);
                swift_unknownObjectRetain();
              }

              [v47 v45[154]];
              v49 = &selRef_opaqueSeparatorColor;
              if ((v62 & 1) != 0 && (v48 <= 0.0 || (v49 = &selRef_tertiarySystemBackgroundColor, v48 >= 1.0)))
              {
                swift_unknownObjectRelease();
              }

              else
              {
                v50 = v45;
                [v47 v45[154]];
                v52 = [objc_allocWithZone(UIView) initWithFrame_];
                v53 = [objc_opt_self() *v49];
                [v52 setBackgroundColor_];

                [v52 setUserInteractionEnabled_];
                [v52 setAutoresizingMask_];
                v54 = [v52 layer];
                [v54 setCornerRadius_];

                v55 = v12;
                [v12 addSubview_];
                v56 = v52;
                MEMORY[0x18CFE2450]();
                if (*((v63 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v63 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  sub_18A4A7588();
                }

                sub_18A4A75F8();

                swift_unknownObjectRelease();
                v44 = v63;
                v12 = v55;
                v45 = v50;
              }

              ++v43;
            }

            while (v42 != v43);
            swift_unknownObjectRelease();

            v5 = v59;
            v3 = v60;
            goto LABEL_38;
          }
        }

        swift_unknownObjectRelease();

        goto LABEL_37;
      }
    }
  }
}

void sub_188BFC124(id a1)
{
  v3 = OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_fluidInteraction;
  if (*&v1[OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_fluidInteraction])
  {
    [v1 removeInteraction_];
    v4 = *&v1[v3];
    *&v1[v3] = 0;
  }

  v5 = OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_expansionGesture;
  if (*&v1[OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_expansionGesture])
  {
    [a1 removeGestureRecognizer_];
    v6 = *&v1[v5];
    *&v1[v5] = 0;
  }

  [v1 bounds];
  [a1 trackRectForBounds_];
  v9 = sub_188BFC734(v7, v8);
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = objc_allocWithZone(_UIFluidSliderInteraction);
  v20[4] = sub_188BFF278;
  v20[5] = v10;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 1107296256;
  v20[2] = sub_188BFF280;
  v20[3] = &block_descriptor_386;
  v12 = _Block_copy(v20);

  v13 = [v11 initWithConfiguration:v9 handler:v12];
  _Block_release(v12);

  [v13 _setDirectDrivingDelegate_];
  v14 = *&v1[v3];
  *&v1[v3] = v13;
  v15 = v13;

  [a1 addInteraction_];
  v16 = [objc_allocWithZone(UILongPressGestureRecognizer) initWithTarget:v1 action:sel_handleExpansionGesture_];
  [v16 setMinimumPressDuration_];
  [v16 setAllowableMovement_];
  v17 = v16;
  [v17 setDelegate_];
  [v17 setCancelsTouchesInView_];

  v18 = *&v1[v5];
  *&v1[v5] = v17;
  v19 = v17;

  [a1 addGestureRecognizer_];
}

uint64_t sub_188BFC3B8()
{
  MEMORY[0x18CFEA6E0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

double sub_188BFC40C(void *a1, double a2, double a3, double a4, double a5, uint64_t a6, double (*a7)(double, double, double, double))
{
  v12 = a1;
  v13 = a7(a2, a3, a4, a5);

  return v13;
}

double sub_188BFC490(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v10 = a1;
  if (Strong)
  {
    v11 = Strong;
    [Strong minimumValueImageRectForBounds_];
    v13 = v12;
    v15 = v14;
    v16 = a2;
    v18 = v17;
    v20 = v19;

    v39.origin.x = v13;
    v39.origin.y = v15;
    v39.size.width = v18;
    a2 = v16;
    v39.size.height = v20;
    Width = CGRectGetWidth(v39);
    v10 = a1;
    if (Width > 0.0)
    {
      v22 = Width + 11.0;
      if ([v4 _shouldReverseLayoutDirection])
      {
        v10 = a1;
      }

      else
      {
        v10 = v22 + a1;
      }
    }
  }

  v23 = swift_unknownObjectWeakLoadStrong();
  if (v23)
  {
    v24 = v23;
    v37 = a2;
    v38 = a4;
    [v23 maximumValueImageRectForBounds_];
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v32 = v31;

    v40.origin.x = v26;
    v40.origin.y = v28;
    v40.size.width = v30;
    v40.size.height = v32;
    v33 = CGRectGetWidth(v40);
    if (v33 > 0.0)
    {
      v34 = v33 + 11.0;
      if ([v4 _shouldReverseLayoutDirection])
      {
        v10 = v10 + v34;
      }
    }

    a2 = v37;
    a4 = v38;
  }

  v35 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x320);
  v35();
  v41.origin.x = a1;
  v41.origin.y = a2;
  v41.size.width = a3;
  v41.size.height = a4;
  CGRectGetHeight(v41);
  v35();
  return v10;
}

double sub_188BFC6D4()
{
  v1 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x4F8))();
  result = 6.0;
  if (v1)
  {
    return 7.0;
  }

  return result;
}

void *sub_188BFC734(double a1, double a2)
{
  v3 = [objc_opt_self() configurationWithTrackSize_];
  v4 = v3;
  if (*(v2 + OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_changeWithVolumeButtons))
  {
    v5 = 3;
  }

  else
  {
    v5 = 1;
  }

  [v3 setPreferredInputMethods_];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = [Strong _sliderConfiguration];

    if (v8)
    {
      objc_opt_self();
      v9 = swift_dynamicCastObjCClass();
      if (v9)
      {
        [v9 stretchLimit];
        v11 = v10;
        swift_unknownObjectRelease();
        v12 = v11;
        if (v11 < 0.0)
        {
          goto LABEL_12;
        }

        goto LABEL_11;
      }

      Strong = swift_unknownObjectRelease();
    }
  }

  v12 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0x310))(Strong);
  if (v12 >= 0.0)
  {
LABEL_11:
    [v4 setStretchAmount_];
  }

LABEL_12:
  v13 = OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_data;
  v14 = *(v2 + OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_data);
  if (v14)
  {
    [v14 sliderSpeedMultiplier];
    if (v15 != 1.0)
    {
      [v4 setVelocityMultiplier_];
    }
  }

  v16 = swift_unknownObjectWeakLoadStrong();
  if (v16)
  {
    v17 = v16;
    v18 = [v16 _sliderConfiguration];

    if (v18)
    {
      v19 = swift_dynamicCastObjCProtocolConditional();
      if (!v19)
      {
        swift_unknownObjectRelease();
        v22 = *(v2 + v13);
        if (!v22)
        {
          return v4;
        }

        goto LABEL_20;
      }

      [v19 neutralPosition];
      v21 = v20;
      swift_unknownObjectRelease();
      [v4 setNeutralPosition_];
    }
  }

  v22 = *(v2 + v13);
  if (!v22)
  {
    return v4;
  }

LABEL_20:
  [v22 minimumEnabledValue];
  v24 = v23;
  v25 = *(v2 + v13);
  if (v25)
  {
    [v25 minimumValue];
    v27 = v26;
    v28 = *(v2 + v13);
    if (v28)
    {
      [v28 maximumValue];
      goto LABEL_25;
    }
  }

  else
  {
    v27 = 0.0;
  }

  v29 = 1.0;
LABEL_25:
  v30 = v29 - v27;
  v31 = 0.0;
  if (v30 > 0.0)
  {
    v31 = ((v24 - v27) / v30);
  }

  [v4 setMinValue_];
  v32 = *(v2 + v13);
  if (v32)
  {
    [v32 maximumEnabledValue];
    v34 = v33;
    v35 = *(v2 + v13);
    if (v35)
    {
      [v35 minimumValue];
      v37 = v36;
      v38 = *(v2 + v13);
      if (v38)
      {
        [v38 maximumValue];
LABEL_35:
        v40 = v39 - v37;
        v41 = 0.0;
        if (v40 > 0.0)
        {
          v41 = ((v34 - v37) / v40);
        }

        [v4 setMaxValue_];
        return v4;
      }
    }

    else
    {
      v37 = 0.0;
    }

    v39 = 1.0;
    goto LABEL_35;
  }

  return v4;
}

char *sub_188BFD67C()
{
  v1 = OBJC_IVAR____UIFluidSliderElasticPanDriver_animatedValue;
  *&v0[v1] = [objc_allocWithZone(UIViewFloatAnimatableProperty) init];
  *&v0[OBJC_IVAR____UIFluidSliderElasticPanDriver_previousTranslation] = 0;
  *&v0[OBJC_IVAR____UIFluidSliderElasticPanDriver_previousTarget] = 0;
  *&v0[OBJC_IVAR____UIFluidSliderElasticPanDriver_state] = 0;
  *&v0[OBJC_IVAR____UIFluidSliderElasticPanDriver_initialStretchAmount] = 0;
  swift_unknownObjectWeakInit();
  *&v0[OBJC_IVAR____UIFluidSliderElasticPanDriver_panGestureRecognizer] = 0;
  *&v0[OBJC_IVAR____UIFluidSliderElasticPanDriver_trackAxis] = 2;
  *&v0[OBJC_IVAR____UIFluidSliderElasticPanDriver_stretchAmount] = 0;
  *&v0[OBJC_IVAR____UIFluidSliderElasticPanDriver_velocityMultiplier] = 0x3FF0000000000000;
  swift_unknownObjectWeakInit();
  v2 = &v0[OBJC_IVAR____UIFluidSliderElasticPanDriver_name];
  *v2 = 0x2063697473616C45;
  v2[1] = 0xEB000000006E6150;
  swift_unknownObjectWeakInit();
  v0[OBJC_IVAR____UIFluidSliderElasticPanDriver_enabled] = 1;
  v3 = &v0[OBJC_IVAR____UIFluidSliderElasticPanDriver_currentDetent];
  *v3 = 0;
  v3[8] = 1;
  v21.receiver = v0;
  v21.super_class = type metadata accessor for _UIFluidSliderElasticPanDriver();
  v4 = objc_msgSendSuper2(&v21, sel_init);
  v5 = [objc_allocWithZone(UIPanGestureRecognizer) initWithTarget:v4 action:sel_handleGesture_];
  v6 = OBJC_IVAR____UIFluidSliderElasticPanDriver_panGestureRecognizer;
  v7 = *&v4[OBJC_IVAR____UIFluidSliderElasticPanDriver_panGestureRecognizer];
  *&v4[OBJC_IVAR____UIFluidSliderElasticPanDriver_panGestureRecognizer] = v5;

  v8 = *&v4[v6];
  if (v8)
  {
    [v8 setCancelsTouchesInView_];
    v9 = *&v4[v6];
    if (v9)
    {
      [v9 setDelegate_];
      v10 = *&v4[v6];
      if (v10)
      {
        [v10 _setKeepTouchesOnContinuation_];
        v11 = *&v4[v6];
        if (v11)
        {
          [v11 setAllowedScrollTypesMask_];
        }
      }
    }
  }

  v12 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA933EB0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_18A64B710;
  v14 = *&v4[OBJC_IVAR____UIFluidSliderElasticPanDriver_animatedValue];
  *(v13 + 32) = v14;
  sub_188BFDA00();
  v15 = v14;
  v16 = sub_18A4A7518();

  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v20[4] = sub_188F12450;
  v20[5] = v17;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 1107296256;
  v20[2] = sub_188A4A8F0;
  v20[3] = &block_descriptor_103_2;
  v18 = _Block_copy(v20);

  [v12 _createTransformerWithInputAnimatableProperties_presentationValueChangedCallback_];
  _Block_release(v18);

  return v4;
}

uint64_t sub_188BFD9A4()
{
  MEMORY[0x18CFEA6E0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

unint64_t sub_188BFDA00()
{
  result = qword_1ED48F690;
  if (!qword_1ED48F690)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED48F690);
  }

  return result;
}

void sub_188BFDAE0(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (!*(v1 + OBJC_IVAR____UIFluidSliderElasticPanDriver_panGestureRecognizer))
    {
      __break(1u);
      goto LABEL_11;
    }

    v3 = Strong;
    [Strong removeGestureRecognizer_];
  }

  swift_unknownObjectWeakAssign();
  v4 = swift_unknownObjectWeakLoadStrong();
  if (v4)
  {
    v5 = *(v1 + OBJC_IVAR____UIFluidSliderElasticPanDriver_panGestureRecognizer);
    if (v5)
    {
      v6 = v4;
      v7 = v5;
      [v6 addGestureRecognizer_];

      goto LABEL_7;
    }

LABEL_11:
    __break(1u);
    return;
  }

LABEL_7:
}

void sub_188BFDD9C()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = [Strong _sliderConfiguration];

    if (v3)
    {
      objc_opt_self();
      v4 = swift_dynamicCastObjCClass();
      if (v4)
      {
        v5 = [v4 disableAllSliderVisuals];
        swift_unknownObjectRelease();
        if (v5)
        {
          v6 = OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_usingSliderStyling;
          if (*(v0 + OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_usingSliderStyling) == 1)
          {
            v7 = OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_leftTrackEffectView;
            v8 = *(v0 + OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_leftTrackEffectView);
            if (v8)
            {
              [v8 removeFromSuperview];
              v9 = *(v0 + v7);
            }

            else
            {
              v9 = 0;
            }

            *(v0 + v7) = 0;

            v89 = OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_rightTrackEffectView;
            v90 = *(v0 + OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_rightTrackEffectView);
            if (v90)
            {
              [v90 removeFromSuperview];
              v91 = *(v0 + v89);
            }

            else
            {
              v91 = 0;
            }

            *(v0 + v89) = 0;

            [*(v0 + OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_trackView) setBackgroundColor_];
            v92 = OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_barEffectView;
            v93 = *(v0 + OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_barEffectView);
            if (v93)
            {
              [v93 removeFromSuperview];
              v94 = *(v0 + v92);
            }

            else
            {
              v94 = 0;
            }

            *(v0 + v92) = 0;

            [*(v0 + OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_barView) setBackgroundColor_];
            *(v0 + v6) = 0;
          }

          return;
        }
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }
  }

  *(v0 + OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_usingSliderStyling) = 1;
  v10 = swift_unknownObjectWeakLoadStrong();
  if (!v10)
  {
    goto LABEL_16;
  }

  v11 = v10;
  v12 = [v10 _sliderConfiguration];

  if (!v12)
  {
    goto LABEL_16;
  }

  objc_opt_self();
  v13 = swift_dynamicCastObjCClass();
  if (!v13)
  {
    swift_unknownObjectRelease();
    goto LABEL_16;
  }

  v14 = [v13 maximumTrackEffect];
  swift_unknownObjectRelease();
  if (!v14)
  {
LABEL_16:
    v22 = OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_leftTrackEffectView;
    v23 = *(v0 + OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_leftTrackEffectView);
    if (v23)
    {
      [v23 removeFromSuperview];
      v24 = *(v0 + v22);
    }

    else
    {
      v24 = 0;
    }

    *(v0 + v22) = 0;

    v25 = OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_rightTrackEffectView;
    v26 = *(v0 + OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_rightTrackEffectView);
    if (v26)
    {
      [v26 removeFromSuperview];
      v27 = *(v0 + v25);
    }

    else
    {
      v27 = 0;
    }

    *(v0 + v25) = 0;

    v28 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x408);
    v29 = *(v0 + OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_trackView);
    v14 = v28();
    [v29 setBackgroundColor_];
    v21 = 0;
    goto LABEL_23;
  }

  v15 = *(v0 + OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_trackView);
  v16 = objc_opt_self();
  v17 = v15;
  v18 = [v16 clearColor];
  [v17 setBackgroundColor_];

  v19 = OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_leftTrackEffectView;
  v20 = *(v0 + OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_leftTrackEffectView);
  v21 = v20 == 0;
  if (v20)
  {
    [v20 setEffect_];
  }

  else
  {
    v49 = [objc_allocWithZone(UIVisualEffectView) initWithEffect_];
    v50 = *(v0 + v19);
    *(v0 + v19) = v49;
    v51 = v49;

    if (v51)
    {
      [v51 setTranslatesAutoresizingMaskIntoConstraints_];
    }

    v52 = *(v0 + v19);
    if (!v52 || ([v52 setAutoresizingMask_], (v53 = *(v0 + v19)) == 0) || (v54 = objc_msgSend(v53, sel__captureGroup), objc_msgSend(v54, sel_setMinimumScale_, 1.0), v54, (v55 = *(v0 + v19)) == 0))
    {
LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
      return;
    }

    [*(v0 + OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_clipView) addSubview_];
  }

  v56 = OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_rightTrackEffectView;
  v57 = *(v0 + OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_rightTrackEffectView);
  if (v57)
  {
    [v57 setEffect_];
  }

  else
  {
    v72 = [objc_allocWithZone(UIVisualEffectView) initWithEffect_];
    v73 = *(v0 + v56);
    *(v0 + v56) = v72;
    v74 = v72;

    if (v74)
    {
      [v74 setTranslatesAutoresizingMaskIntoConstraints_];
    }

    v75 = *(v0 + v56);
    if (!v75)
    {
      goto LABEL_89;
    }

    [v75 setAutoresizingMask_];
    v76 = *(v0 + v56);
    if (!v76)
    {
      goto LABEL_89;
    }

    v77 = [v76 _captureGroup];
    [v77 setMinimumScale_];

    if (!*(v0 + v56))
    {
      goto LABEL_89;
    }

    [*(v0 + OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_clipView) addSubview_];
    v21 = 1;
  }

  objc_opt_self();
  v78 = swift_dynamicCastObjCClass();
  v79 = *(v0 + v19);
  if (v78)
  {
    v80 = MEMORY[0x1E69E7D40];
    if (v79)
    {
      v81 = [v79 contentView];
      v82 = (*((*v80 & *v0) + 0x408))();
      [v81 setBackgroundColor_];
    }

    v83 = *(v0 + v56);
    if (!v83)
    {
      goto LABEL_24;
    }

    v84 = [v83 contentView];
    v85 = (*((*v80 & *v0) + 0x408))();
  }

  else
  {
    if (v79)
    {
      v86 = [v79 contentView];
      v87 = [v16 clearColor];
      [v86 setBackgroundColor_];
    }

    v88 = *(v0 + v56);
    if (!v88)
    {
      goto LABEL_24;
    }

    v84 = [v88 contentView];
    v85 = [v16 clearColor];
  }

  v29 = v85;
  [v84 setBackgroundColor_];

LABEL_23:
LABEL_24:

  v30 = swift_unknownObjectWeakLoadStrong();
  if (!v30)
  {
    goto LABEL_31;
  }

  v31 = v30;
  v32 = [v30 _sliderConfiguration];

  if (!v32)
  {
    goto LABEL_31;
  }

  objc_opt_self();
  v33 = swift_dynamicCastObjCClass();
  if (!v33)
  {
    swift_unknownObjectRelease();
    goto LABEL_31;
  }

  v34 = [v33 minimumTrackEffect];
  swift_unknownObjectRelease();
  if (!v34)
  {
LABEL_31:
    v42 = OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_barEffectView;
    v43 = *(v0 + OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_barEffectView);
    if (v43)
    {
      [v43 removeFromSuperview];
      v44 = *(v0 + v42);
    }

    else
    {
      v44 = 0;
    }

    *(v0 + v42) = 0;

    v45 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x410);
    v46 = *(v0 + OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_barView);
    v34 = v45();
    [v46 setBackgroundColor_];
    goto LABEL_35;
  }

  v35 = OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_barView;
  v36 = *(v0 + OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_barView);
  v37 = objc_opt_self();
  v38 = v36;
  v39 = [v37 clearColor];
  [v38 setBackgroundColor_];

  v40 = OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_barEffectView;
  v41 = *(v0 + OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_barEffectView);
  if (!v41)
  {
    v58 = [objc_allocWithZone(UIVisualEffectView) initWithEffect_];
    v59 = *(v0 + v40);
    *(v0 + v40) = v58;
    v60 = v58;

    if (v60)
    {
      [v60 setTranslatesAutoresizingMaskIntoConstraints_];
    }

    v61 = *(v0 + v40);
    if (v61)
    {
      [v61 setAutoresizingMask_];
      v62 = *(v0 + v40);
      if (v62)
      {
        v63 = *(v0 + v35);
        v64 = v62;
        [v63 bounds];
        [v64 setFrame_];

        v65 = *(v0 + v40);
        if (v65)
        {
          v66 = [v65 _captureGroup];
          [v66 setMinimumScale_];

          v67 = *(v0 + v40);
          if (v67)
          {
            [*(v0 + v35) addSubview_];
            goto LABEL_56;
          }
        }
      }
    }

    __break(1u);
    goto LABEL_88;
  }

  [v41 setEffect_];
LABEL_56:
  objc_opt_self();
  v68 = swift_dynamicCastObjCClass();
  v69 = *(v0 + v40);
  if (v68)
  {
    if (!v69)
    {
      goto LABEL_36;
    }

    v70 = [v69 contentView];
    v71 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x410))();
  }

  else
  {
    if (!v69)
    {
      goto LABEL_36;
    }

    v70 = [v69 contentView];
    v71 = [v37 clearColor];
  }

  v46 = v71;
  [v70 setBackgroundColor_];

LABEL_35:
LABEL_36:

  if (v21)
  {
    v47 = *(v0 + OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_lastUpdate);
    if (v47)
    {
      v48 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x3C0);
      v95 = v47;
      v48();
    }
  }
}

id sub_188BFE858()
{
  v1 = *(v0 + OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_data);
  if (!v1 || (result = [v1 maximumTrackTintColor]) == 0)
  {
    v3 = objc_allocWithZone(UIColor);
    v6[4] = sub_188BFE94C;
    v6[5] = 0;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 1107296256;
    v6[2] = sub_188BC2240;
    v6[3] = &block_descriptor_366_0;
    v4 = _Block_copy(v6);
    v5 = [v3 initWithDynamicProvider_];
    _Block_release(v4);

    return v5;
  }

  return result;
}

id sub_188BFE94C(void *a1)
{
  v1 = [a1 userInterfaceStyle];
  v2 = objc_allocWithZone(UIColor);
  v3 = 0.0;
  if (v1 == 2)
  {
    v3 = 1.0;
  }

  return [v2 initWithWhite:v3 alpha:0.1];
}

id sub_188BFE9B4()
{
  v1 = *(v0 + OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_data);
  if (!v1 || (result = [v1 minimumTrackTintColor]) == 0)
  {
    v3 = [objc_opt_self() tintColor];

    return v3;
  }

  return result;
}

void sub_188BFEA30()
{
  v1 = *&v0[OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_data];
  if (v1)
  {
    v6 = v1;
    if ([v6 isEnabled])
    {
      v2 = [v6 isUserInteractionEnabled];
    }

    else
    {
      v2 = 0;
    }

    [*&v0[OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_fluidInteraction] setUserInteractionEnabled_];
    v3 = *&v0[OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_expansionGesture];
    if (v3)
    {
      [v3 setEnabled_];
    }

    v4 = [v6 isEnabled];
    v5 = 0.5;
    if (v4)
    {
      v5 = 1.0;
    }

    [v0 setAlpha_];
  }
}

void sub_188BFF280(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void sub_188BFF2E8(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x3C0))(a1, 0, 0, 1);
  }
}

void sub_188BFF438(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  (*((*MEMORY[0x1E69E7D40] & *v4) + 0x468))();
  if (*(v4 + OBJC_IVAR____TtC5UIKit27_UISliderGlassVisualElement_thumbImageView))
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v10 = Strong;
      v11 = [Strong thumbImageForState_];

      if (v11)
      {
        [v11 size];
      }
    }
  }

  v12 = OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_data;
  v13 = *(v4 + OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_data);
  if (v13)
  {
    [v13 minimumValue];
    v14 = *(v4 + v12);
    if (v14)
    {
      [v14 maximumValue];
    }
  }

  [v4 _shouldReverseLayoutDirection];
  v15.origin.x = a1;
  v15.origin.y = a2;
  v15.size.width = a3;
  v15.size.height = a4;
  CGRectGetMinX(v15);
  v16.origin.x = a1;
  v16.origin.y = a2;
  v16.size.width = a3;
  v16.size.height = a4;
  CGRectGetWidth(v16);
  v17.origin.x = a1;
  v17.origin.y = a2;
  v17.size.width = a3;
  v17.size.height = a4;
  CGRectGetMinY(v17);
  v18.origin.x = a1;
  v18.origin.y = a2;
  v18.size.width = a3;
  v18.size.height = a4;
  CGRectGetHeight(v18);
}

void sub_188BFF674(double a1, double a2, double a3, double a4, double a5, double a6)
{
  v11 = OBJC_IVAR____TtC5UIKit27_UISliderGlassVisualElement_lensView;
  [*(v6 + OBJC_IVAR____TtC5UIKit27_UISliderGlassVisualElement_lensView) setCenter_];
  v12 = *(v6 + OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_isInteractivelyChanging) == 1 && *(v6 + OBJC_IVAR____TtC5UIKit27_UISliderGlassVisualElement_thumbImageView) == 0;
  v13 = *(v6 + v11);
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  *(v15 + 24) = a3;
  *(v15 + 32) = a4;
  *(v15 + 40) = a5;
  *(v15 + 48) = a6;
  v18[4] = sub_188BFF82C;
  v18[5] = v15;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 1107296256;
  v18[2] = sub_188A4A8F0;
  v18[3] = &block_descriptor_11;
  v16 = _Block_copy(v18);
  v17 = v13;

  [v17 setLifted:v12 animated:1 alongsideAnimations:v16 completion:0];
  _Block_release(v16);
}

uint64_t sub_188BFF7F4()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

void sub_188BFF83C(double a1, double a2, double a3, double a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    [Strong setBounds_];
  }
}

void sub_188BFF920(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9)
{
  [*(v9 + OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_trackView) setFrame_];
  v19 = *(v9 + OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_leftTrackEffectView);
  if (v19)
  {
    v20 = *(v9 + OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_rightTrackEffectView);
    if (v20)
    {
      v29 = v19;
      v21 = v20;
      if ([a1 isMinimumTrackVisible])
      {
        v31.origin.x = a2;
        v31.origin.y = a3;
        v31.size.width = a4;
        v31.size.height = a5;
        MinX = CGRectGetMinX(v31);
        v32.origin.x = a2;
        v32.origin.y = a3;
        v32.size.width = a4;
        v32.size.height = a5;
        MaxX = CGRectGetMaxX(v32);
        v33.origin.x = a6;
        v33.origin.y = a7;
        v33.size.width = a8;
        v33.size.height = a9;
        v22 = CGRectGetMaxX(v33);
        v34.origin.x = a2;
        v34.origin.y = a3;
        x = MaxX;
        v34.size.width = a4;
        v34.size.height = a5;
        v24 = v22 - CGRectGetMaxX(v34);
        [v29 setFrame_];
      }

      else
      {
        v35.origin.x = a6;
        v35.origin.y = a7;
        v35.size.width = a8;
        v35.size.height = a9;
        v25 = CGRectGetWidth(v35) * 0.5;
        v36.origin.x = a6;
        v36.origin.y = a7;
        v36.size.width = v25;
        v36.size.height = a9;
        v37.origin.x = CGRectGetMaxX(v36);
        x = v37.origin.x;
        v37.origin.y = a7;
        v37.size.width = a8;
        v37.size.height = a9;
        v24 = CGRectGetWidth(v37) * 0.5;
        [v29 setFrame_];
      }

      v26 = v21;
      [v26 setFrame_];
    }
  }
}

void sub_188BFFB58(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v9 = *&v4[OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_minimumView];
  if (!v9)
  {
    v17 = *&v4[OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_data];
    if (!v17)
    {
      return;
    }

    v18 = [v17 minimumValueImage];
    if (!v18)
    {
      return;
    }

    v11 = v18;
    [v18 size];
    v15 = v19;
    goto LABEL_9;
  }

  objc_opt_self();
  v10 = swift_dynamicCastObjCClass();
  v11 = v9;
  if (!v10 || (v12 = [v10 image]) == 0)
  {
    [v11 bounds];
    v15 = v16;
LABEL_9:

    goto LABEL_10;
  }

  v13 = v12;
  [v12 size];
  v15 = v14;

LABEL_10:
  if ([v4 _shouldReverseLayoutDirection])
  {
    v20.origin.x = a1;
    v20.origin.y = a2;
    v20.size.width = a3;
    v20.size.height = a4;
    a1 = CGRectGetMaxX(v20) - v15;
  }

  v21.origin.x = a1;
  v21.origin.y = a2;
  v21.size.width = a3;
  v21.size.height = a4;
  CGRectGetMidY(v21);
}

void sub_188BFFD10(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v9 = *&v4[OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_maximumView];
  if (!v9)
  {
    v17 = *&v4[OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_data];
    if (!v17)
    {
      return;
    }

    v18 = [v17 maximumValueImage];
    if (!v18)
    {
      return;
    }

    v11 = v18;
    [v18 size];
    v15 = v19;
    goto LABEL_9;
  }

  objc_opt_self();
  v10 = swift_dynamicCastObjCClass();
  v11 = v9;
  if (!v10 || (v12 = [v10 image]) == 0)
  {
    [v11 bounds];
    v15 = v16;
LABEL_9:

    goto LABEL_10;
  }

  v13 = v12;
  [v12 size];
  v15 = v14;

LABEL_10:
  if (([v4 _shouldReverseLayoutDirection] & 1) == 0)
  {
    v20.origin.x = a1;
    v20.origin.y = a2;
    v20.size.width = a3;
    v20.size.height = a4;
    a1 = CGRectGetMaxX(v20) - v15;
  }

  v21.origin.x = a1;
  v21.origin.y = a2;
  v21.size.width = a3;
  v21.size.height = a4;
  CGRectGetMidY(v21);
}

float sub_188BFFEB8(char a1, float a2)
{
  v15 = *MEMORY[0x1E69E9840];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = [Strong _sliderConfiguration];

    if (v7)
    {
      v14 = &unk_1EFE72090;
      v8 = swift_dynamicCastObjCProtocolConditional();
      if (v8 && (v9 = v8, ((*((*MEMORY[0x1E69E7D40] & *v2) + 0x308))() & 1) != 0) && ((a1 & 1) == 0 || [v9 behavior] == 1))
      {
        v13 = -1.0;
        *&v10 = a2;
        v11 = [v9 adjustPositionForTargetPosition:&v13 adjustedPosition:0 startPosition:0 endPosition:v10];
        swift_unknownObjectRelease();
        if (v11)
        {
          return v13;
        }
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }
  }

  return a2;
}

id UIKeyCommand.init(title:image:action:input:modifierFlags:propertyList:alternates:discoverabilityTitle:attributes:state:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v30 = a4;
  v31 = a7;
  v15 = sub_18A4A7258();

  v16 = sub_18A4A7258();

  v32 = a8;
  sub_188A3F29C(a8, v33, &qword_1EA934050);
  v17 = v34;
  if (v34)
  {
    v18 = __swift_project_boxed_opaque_existential_0(v33, v34);
    v19 = *(v17 - 8);
    v20 = MEMORY[0x1EEE9AC00](v18);
    v22 = &v29 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v19 + 16))(v22, v20);
    v23 = sub_18A4A86A8();
    (*(v19 + 8))(v22, v17);
    __swift_destroy_boxed_opaque_existential_0Tm(v33);
  }

  else
  {
    v23 = 0;
  }

  if (a9 >> 62)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA940A50);
    sub_18A4A83B8();
  }

  else
  {
    sub_18A4A8738();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA940A50);
  v24 = sub_18A4A7518();

  if (a11)
  {
    v25 = sub_18A4A7258();
  }

  else
  {
    v25 = 0;
  }

  v26 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v27 = [v26 initWithTitle:v15 image:a3 imageName:0 action:v30 input:v16 modifierFlags:v31 propertyList:v23 leafOrCommandAlternates:v24 discoverabilityTitle:v25 attributes:a12 state:a13];

  swift_unknownObjectRelease();
  sub_188A553EC(v32);
  return v27;
}

unint64_t sub_188C004CC()
{
  result = qword_1EA940A60;
  if (!qword_1EA940A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA940A60);
  }

  return result;
}

uint64_t sub_188C00520(uint64_t a1, void (*a2)(double), SEL *a3, uint64_t (*a4)(void))
{
  v21 = a4;
  v22 = a3;
  v6 = sub_18A4A32C8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_18A4A3308();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  a2(v12);
  if ((*(v11 + 88))(v14, v10) == *MEMORY[0x1E6966780])
  {
    (*(v11 + 96))(v14, v10);
    (*(v7 + 32))(v9, v14, v6);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    sub_18A4A32A8();
    v16 = sub_18A4A7258();

    v17 = sub_18A4A32B8();
    v18 = [ObjCClassFromMetadata *v22];

    if (v18)
    {
      v19 = v21(0);
      (*(*(v19 - 8) + 8))(a1, v19);
      (*(v7 + 8))(v9, v6);
      return v18;
    }

    __break(1u);
  }

  result = sub_18A4A86B8();
  __break(1u);
  return result;
}

uint64_t static UIViewController.ViewLoading.subscript.getter@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(*a2 + *MEMORY[0x1E69E6F98] + 8);
  v6 = sub_18A4A7D38();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v17[-1] - v9;
  [a1 loadViewIfNeeded];
  v18 = a1;
  v11 = a1;
  v12 = swift_readAtKeyPath();
  (*(v7 + 16))(v10);
  v12(v17, 0);

  v13 = *(v5 - 8);
  if ((*(v13 + 48))(v10, 1, v5) != 1)
  {
    return (*(v13 + 32))(a3, v10, v5);
  }

  (*(v7 + 8))(v10, v6);
  v17[0] = 0;
  v17[1] = 0xE000000000000000;
  sub_18A4A80E8();
  MEMORY[0x18CFE22D0](0xD000000000000049, 0x800000018A68B450);
  v18 = v11;
  swift_getWitnessTable();
  v15 = sub_188E43C18();
  MEMORY[0x18CFE22D0](v15);

  MEMORY[0x18CFE22D0](46, 0xE100000000000000);
  result = sub_18A4A8398();
  __break(1u);
  return result;
}

uint64_t sub_188C00CE4(uint64_t a1)
{
  *(a1 + 8) = sub_188BBE67C(&unk_1EA940AA0, type metadata accessor for Level);
  result = sub_188BBE67C(&qword_1EA932E18, type metadata accessor for Level);
  *(a1 + 16) = result;
  return result;
}

double sub_188C00DC8@<D0>(void *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t static UIViewController.ViewLoading.subscript.setter(uint64_t a1, void *a2, uint64_t *a3)
{
  v4 = *a3;
  sub_188C016A4(a1, a2, a3);
  v5 = *(*(*(v4 + *MEMORY[0x1E69E6F98] + 8) - 8) + 8);

  return v5(a1);
}

uint64_t sub_188C00EBC()
{
  result = sub_18A4A7D38();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_188C00F54()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

id UIButton.Configuration.buttonSize.setter(char *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *v1;
  if (isUniquelyReferenced_nonNull_native)
  {
    v5 = *(v4 + 16);
  }

  else
  {
    [*(v4 + 16) copy];
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
    sub_188A34624(0, &qword_1EA930A50);
    swift_dynamicCast();
    v5 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA935C30);
    v6 = swift_allocObject();
    *(v6 + 16) = v8;

    *v1 = v6;
  }

  return [v5 setButtonSize_];
}

uint64_t sub_188C01164@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t (*a7)(void, void *)@<X6>, uint64_t a8@<X8>)
{
  (*(*(a3 - 8) + 32))(a8, a1);
  v17[0] = a3;
  v17[1] = a4;
  v17[2] = a5;
  v17[3] = a6;
  v15 = a7(0, v17);
  return (*(*(a4 - 8) + 32))(a8 + *(v15 + 52), a2, a4);
}

uint64_t static UIView.Invalidating.subscript.setter(char *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v41 = a3;
  v5 = *(*a4 + *MEMORY[0x1E69E6F98] + 8);
  v39 = *(v5 + 24);
  v37 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v36 = &v33 - v6;
  v9 = *(v7 + v8 + 8);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v33 - v12;
  v14 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v33 - v16;
  v42[0] = v18;
  v19 = v18;

  swift_getAtKeyPath();

  (*(v10 + 16))(v13, v17, v9);
  v20 = *(v14 + 8);
  v35 = v14 + 8;
  v33 = v20;
  v20(v17, v5);
  v34 = v5;
  LOBYTE(v14) = sub_18A4A7248();
  v38 = *(v10 + 8);
  v38(v13, v9);
  v43 = v19;
  v21 = v19;
  v22 = swift_modifyAtReferenceWritableKeyPath();
  v23 = *(v10 + 24);
  v40 = a1;
  v23(v24, a1, v9);
  v22(v42, 0);

  if (v14)
  {

    return (v38)(v40, v9);
  }

  else
  {
    v42[0] = v21;
    v26 = v21;
    swift_getAtKeyPath();

    v27 = v34;
    v28 = v36;
    v29 = v37;
    (*(v37 + 16))(v36, &v17[*(v34 + 52)], v39);
    v33(v17, v27);
    v30 = *(*(v27 + 40) + 8);
    v31 = v26;
    v32 = v39;
    v30();

    v38(v40, v9);
    return (*(v29 + 8))(v28, v32);
  }
}

void sub_188C016A4(uint64_t a1, void *a2, void *a3)
{
  v5 = *(*a3 + *MEMORY[0x1E69E6F98] + 8);
  v6 = sub_18A4A7D38();
  v7 = *(v6 - 8);
  v8.n128_f64[0] = MEMORY[0x1EEE9AC00](v6);
  v10 = &v16[-v9 - 8];
  v11 = *(v5 - 8);
  (*(v11 + 16))(&v16[-v9 - 8], a1, v5, v8);
  (*(v11 + 56))(v10, 0, 1, v5);
  v17 = a2;
  v12 = a2;
  v13 = swift_modifyAtReferenceWritableKeyPath();
  (*(v7 + 40))(v14, v10, v6);
  v13(v16, 0);
}

double sub_188C01BE8()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 120) = result;
  return result;
}

unint64_t sub_188C01C2C()
{
  result = qword_1EA9306E0;
  if (!qword_1EA9306E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA93BCB8);
    sub_188C02AC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9306E0);
  }

  return result;
}

uint64_t sub_188C01D5C(uint64_t a1, void (*a2)(void *))
{
  v4[3] = &_s13MutableTraitsVN;
  v4[4] = &off_1EFABCA98;
  v4[0] = swift_dynamicCastObjCProtocolUnconditional();
  swift_unknownObjectRetain();
  a2(v4);
  return __swift_destroy_boxed_opaque_existential_0Tm(v4);
}

id sub_188C01F88()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = *&v0[OBJC_IVAR____TtC5UIKit21ToolbarVisualProvider_model];
  v4 = *(v3 + 24);
  result = [v0 toolbar];
  if (!result)
  {
    __break(1u);
    goto LABEL_41;
  }

  v6 = result;
  v7 = 0.0;
  if (v4)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = 1.0;
  }

  [result bounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  if ((*(v3 + 24) & 1) == 0)
  {
    result = [v1 toolbar];
    if (!result)
    {
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

    v17 = result;
    v7 = _UIBackgroundExtensionForBar(result);
  }

  v18 = v12 - v8;
  v19 = v8 + v16 + v7;
  v20 = *&v1[OBJC_IVAR____TtC5UIKit21ToolbarVisualProvider_hostingView];
  [v20 frame];
  v43.origin.x = v10;
  v43.origin.y = v18;
  v43.size.width = v14;
  v43.size.height = v19;
  if (!CGRectEqualToRect(v42, v43))
  {
    [v20 setFrame_];
  }

  swift_getKeyPath();
  v41 = v3;
  sub_188AF0C98();
  sub_18A4A2C08();

  v21 = *(v3 + 112);
  if (*(v3 + 24) == 1)
  {
    if (v21 == 0.0)
    {
      goto LABEL_22;
    }

    v22 = 0.0;
    goto LABEL_19;
  }

  result = [v1 toolbar];
  if (!result)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v23 = result;
  v24 = _UIBackgroundExtensionForBar(result);

  if (v21 == v24)
  {
LABEL_22:
    result = [v1 toolbar];
    if (result)
    {
      v27 = result;
      [result _contentMargin];
      v29 = v28;

      if (v29 == 0.0)
      {
        result = [v1 toolbar];
        if (!result)
        {
LABEL_44:
          __break(1u);
          goto LABEL_45;
        }

        v30 = result;
        v31 = objc_opt_self();
        v32 = [v30 traitCollection];

        [v31 _slimHorizontalContentMarginForTraitCollection_];
        v29 = v33;
      }

      swift_getKeyPath();
      v41 = v3;
      sub_18A4A2C08();

      if (*(v3 + 288) != v29)
      {
        KeyPath = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](KeyPath);
        v41 = v3;
        sub_18A4A2BF8();
      }

      result = [v1 toolbar];
      if (result)
      {
        v35 = result;
        if ([result barPosition] == 4 || objc_msgSend(v35, sel_barPosition) == 1 && _UIBackgroundExtensionForBar(v35) > 0.0)
        {
          v36 = [v35 isMinibar];

          v37 = 5.0;
          if ((v36 & 1) == 0)
          {
LABEL_36:
            swift_getKeyPath();
            v41 = v3;
            sub_18A4A2C08();

            if (*(v3 + 120) != v37)
            {
              v38 = swift_getKeyPath();
              MEMORY[0x1EEE9AC00](v38);
              v41 = v3;
              sub_18A4A2BF8();
            }

            result = [v1 toolbar];
            if (result)
            {
              v39 = result;
              sub_188BAD870(result);

              v40.receiver = v1;
              v40.super_class = ObjectType;
              objc_msgSendSuper2(&v40, sel_layoutSubviews);
              return [*(*&v1[OBJC_IVAR____TtC5UIKit21ToolbarVisualProvider_pointerAssistant] + OBJC_IVAR____TtC5UIKit34ToolbarPointerInteractionAssistant_pointerAssistant) invalidate];
            }

            goto LABEL_43;
          }
        }

        else
        {
        }

        v37 = 0.0;
        goto LABEL_36;
      }

LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v22 = 0.0;
  if (*(v3 + 24))
  {
LABEL_19:
    if (*(v3 + 112) == v22)
    {
      *(v3 + 112) = v22;
    }

    else
    {
      v26 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v26);
      v41 = v3;
      sub_18A4A2BF8();
    }

    goto LABEL_22;
  }

  result = [v1 toolbar];
  if (result)
  {
    v25 = result;
    v22 = _UIBackgroundExtensionForBar(result);

    goto LABEL_19;
  }

LABEL_47:
  __break(1u);
  return result;
}

double sub_188C02608()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 288) = result;
  return result;
}

unint64_t sub_188C02640()
{
  result = qword_1EA9306F0;
  if (!qword_1EA9306F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA93BCF0);
    sub_188BACCFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9306F0);
  }

  return result;
}

unint64_t sub_188C026CC()
{
  result = qword_1EA9306C8;
  if (!qword_1EA9306C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA93BCD0);
    sub_188C02A10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9306C8);
  }

  return result;
}

void sub_188C02900(void *a1)
{
  v2 = a1;
  v1 = [v2 tabBar];
  [v1 setNeedsLayout];
}

unint64_t sub_188C02A10()
{
  result = qword_1EA9306D0;
  if (!qword_1EA9306D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA93BCC8);
    sub_1890AD844();
    sub_188A34360(&qword_1EA9306C0, &qword_1EA93BCE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9306D0);
  }

  return result;
}

unint64_t sub_188C02AC8()
{
  result = qword_1EA9306E8;
  if (!qword_1EA9306E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA93BCB0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA93BCE0);
    sub_188C02BE0();
    sub_188A34360(qword_1EA930708, &qword_1EA93BCE0);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9306E8);
  }

  return result;
}

unint64_t sub_188C02BE0()
{
  result = qword_1EA9307B0;
  if (!qword_1EA9307B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9307B0);
  }

  return result;
}

uint64_t sub_188C02C34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93BCA8);
  v4 = *(v111 - 8);
  MEMORY[0x1EEE9AC00](v111);
  v6 = &v95 - v5;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93BCB0);
  MEMORY[0x1EEE9AC00](v110);
  v8 = &v95 - v7;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93BCB8);
  MEMORY[0x1EEE9AC00](v112);
  v114 = &v95 - v9;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93BCC0);
  MEMORY[0x1EEE9AC00](v113);
  v118 = &v95 - v10;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93BCC8);
  MEMORY[0x1EEE9AC00](v115);
  v117 = &v95 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93BCD0);
  MEMORY[0x1EEE9AC00](v12);
  v116 = &v95 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v95 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93BCD8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v95 - v18;
  if (*(a1 + 24) == 1)
  {
    sub_18A4A6BF8();
    sub_18A4A4EA8();
    v20 = v130;
    *(v19 + 56) = v131;
    v21 = v133;
    *(v19 + 72) = v132;
    *(v19 + 88) = v21;
    *(v19 + 104) = v134;
    v22 = v129;
    *(v19 + 8) = v128;
    *(v19 + 24) = v22;
    *v19 = a1;
    *(v19 + 40) = v20;
    swift_storeEnumTagMultiPayload();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93BCF0);
    sub_188C02640();
    sub_188C026CC();
    return sub_18A4A5598();
  }

  else
  {
    *&v128 = a1;
    v106 = v16;
    v107 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93BCE0);
    v105 = v12;
    sub_188C02BE0();
    v108 = a2;
    sub_188A34360(qword_1EA930708, &qword_1EA93BCE0);
    sub_18A4A5D68();
    sub_18A4A6C08();
    sub_18A4A4EA8();
    (*(v4 + 32))(v8, v6, v111);
    v24 = &v8[*(v110 + 36)];
    v25 = v141;
    *(v24 + 4) = v140;
    *(v24 + 5) = v25;
    *(v24 + 6) = v142;
    v26 = v137;
    *v24 = v136;
    *(v24 + 1) = v26;
    v27 = v139;
    *(v24 + 2) = v138;
    *(v24 + 3) = v27;
    v28 = sub_18A4A5BE8();
    swift_getKeyPath();
    *&v128 = a1;
    sub_188BAD234(&qword_1ED48E310, type metadata accessor for ToolbarModel);
    sub_18A4A2C08();

    sub_18A4A43C8();
    v30 = v29;
    v32 = v31;
    v34 = v33;
    v36 = v35;
    v37 = v8;
    v38 = v114;
    sub_188A3F704(v37, v114, &qword_1EA93BCB0);
    v39 = v38 + *(v112 + 36);
    *v39 = v28;
    *(v39 + 8) = v30;
    *(v39 + 16) = v32;
    *(v39 + 24) = v34;
    *(v39 + 32) = v36;
    *(v39 + 40) = 0;
    v40 = sub_18A4A5BD8();
    swift_getKeyPath();
    *&v128 = a1;
    sub_18A4A2C08();

    sub_18A4A43C8();
    v42 = v41;
    v44 = v43;
    v46 = v45;
    v48 = v47;
    v49 = v118;
    sub_188A3F704(v38, v118, &qword_1EA93BCB8);
    v50 = v49 + *(v113 + 36);
    *v50 = v40;
    *(v50 + 8) = v42;
    *(v50 + 16) = v44;
    *(v50 + 24) = v46;
    *(v50 + 32) = v48;
    *(v50 + 40) = 0;
    v51 = sub_18A4A6C08();
    v102 = v52;
    v103 = v51;
    swift_getKeyPath();
    *&v128 = a1;
    sub_18A4A2C08();

    v53 = *(a1 + 184);
    v98 = *(a1 + 192);
    v99 = v53;
    v55 = *(a1 + 200);
    v54 = *(a1 + 208);
    v96 = *(a1 + 216);
    v97 = v55;
    v104 = v19;
    v100 = *(a1 + 224);
    v101 = v54;
    swift_getKeyPath();
    *&v128 = a1;

    v56 = v53;

    sub_18A4A2C08();

    v57 = *(a1 + 232);
    v111 = *(a1 + 240);
    v112 = v57;
    v59 = *(a1 + 248);
    v58 = *(a1 + 256);
    v60 = *(a1 + 272);
    v109 = *(a1 + 264);
    v110 = v59;
    v113 = v60;
    v114 = v58;
    swift_getKeyPath();
    *&v128 = a1;

    v61 = v57;

    sub_18A4A2C08();

    v62 = *(a1 + 136);
    if (v62 <= 0.3)
    {
      v63 = 0.3;
    }

    else
    {
      v63 = 1.0;
    }

    if (v62 <= 0.3)
    {
      v64 = 0.0;
    }

    else
    {
      v64 = 0.7;
    }

    swift_getKeyPath();
    *&v128 = a1;
    sub_18A4A2C08();

    v65 = _UIMap(*(a1 + 152), v64, v63);
    v66 = _UIClamp_2(v65);
    swift_getKeyPath();
    *&v128 = a1;
    sub_18A4A2C08();

    v67 = *(a1 + 144);
    swift_getKeyPath();
    *&v128 = a1;
    sub_18A4A2C08();

    v68 = _UILerp_1(v66, v67, *(a1 + 136));
    v69 = v98;
    v70 = v99;
    *&v120 = v99;
    *(&v120 + 1) = v98;
    v72 = v96;
    v71 = v97;
    v73 = v100;
    v74 = v101;
    *&v121 = v97;
    *(&v121 + 1) = v101;
    *&v122 = v96;
    *(&v122 + 1) = v100;
    *&v123 = v112;
    *(&v123 + 1) = v111;
    *&v124 = v110;
    *(&v124 + 1) = v114;
    *&v125 = v109;
    *(&v125 + 1) = v113;
    *&v126 = v68;
    v76 = v102;
    v75 = v103;
    *(&v126 + 1) = v103;
    v127 = v102;
    v77 = v117;
    sub_188A3F704(v118, v117, &qword_1EA93BCC0);
    v78 = v77 + *(v115 + 36);
    v79 = v125;
    v80 = v126;
    *(v78 + 64) = v124;
    *(v78 + 80) = v79;
    *(v78 + 96) = v80;
    v81 = v121;
    v82 = v122;
    v83 = v123;
    *v78 = v120;
    *(v78 + 16) = v81;
    *(v78 + 112) = v127;
    *(v78 + 32) = v82;
    *(v78 + 48) = v83;
    *&v128 = v70;
    *(&v128 + 1) = v69;
    *&v129 = v71;
    *(&v129 + 1) = v74;
    *&v130 = v72;
    *(&v130 + 1) = v73;
    *&v131 = v112;
    *(&v131 + 1) = v111;
    *&v132 = v110;
    *(&v132 + 1) = v114;
    *&v133 = v109;
    *(&v133 + 1) = v113;
    *&v134 = v68;
    *(&v134 + 1) = v75;
    v135 = v76;
    sub_188A3F29C(&v120, &v119, &qword_1EA93BCE8);
    sub_188A3F5FC(&v128, &qword_1EA93BCE8);
    LOBYTE(v75) = sub_18A4A5BD8();
    sub_18A4A43C8();
    v85 = v84;
    v87 = v86;
    v89 = v88;
    v91 = v90;
    v92 = v116;
    sub_188A3F704(v77, v116, &qword_1EA93BCC8);
    v93 = v106;
    v94 = v92 + *(v105 + 36);
    *v94 = v75;
    *(v94 + 8) = v85;
    *(v94 + 16) = v87;
    *(v94 + 24) = v89;
    *(v94 + 32) = v91;
    *(v94 + 40) = 0;
    sub_188A3F704(v92, v93, &qword_1EA93BCD0);
    sub_188A3F29C(v93, v104, &qword_1EA93BCD0);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93BCF0);
    sub_188C02640();
    sub_188C026CC();
    sub_18A4A5598();
    return sub_188A3F5FC(v93, &qword_1EA93BCD0);
  }
}

CGColorSpaceRef __StandardSRGBColorSpace_block_invoke()
{
  result = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
  qword_1ED49A728 = result;
  return result;
}

void __swiftcall UIBarButtonItem.init(title:image:primaryAction:menu:)(UIBarButtonItem *__return_ptr retstr, Swift::String_optional title, UIImage_optional *image, UIAction_optional *primaryAction, UIMenu_optional *menu)
{
  object = title.value._object;
  v9 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithPrimaryAction:primaryAction menu:menu];
  if (object)
  {
    v10 = sub_18A4A7258();

LABEL_5:
    [v9 setTitle_];

    [v9 setImage_];
    goto LABEL_6;
  }

  if (image)
  {
    v10 = 0;
    goto LABEL_5;
  }

LABEL_6:
}

uint64_t sub_188C03DC4()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

void sub_188C03E00(void *a1, int a2, int a3, void *aBlock, uint64_t a5, void (*a6)(void, id), uint64_t a7)
{
  v11 = _Block_copy(aBlock);
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  v13 = a1;
  if (a3)
  {
    sub_1890CC498(a6, v12, a7);
  }

  else
  {
    sub_188C03EB8(a6);
  }
}

void sub_188C03EB8(void (*a1)(void, id))
{
  v2 = v1;
  v4 = [v1 stack];
  v5 = [v4 backItem];

  if (v5)
  {
    [v5 _setTitleViewDataSource_];
  }

  v6 = [v2 stack];
  v7 = [v6 topItem];

  if (v7)
  {
    [v7 _setTitleViewDataSource_];
  }

  v8 = [v2 stack];
  v9 = [v8 topEntry];

  sub_188AE4B20(v9, 0);
  v10 = [v2 stack];
  v11 = [v10 topEntry];

  if (v11)
  {
    v12 = [v11 isSearchActive];
    v13 = [(_UINavigationBarItemStackEntry *)v11 _typedStorage];
    v14 = v12 ? sub_18901F25C() : sub_18901F250();
    v15 = v14;

    if (v15)
    {
      v16 = [v2 stack];
      v17 = [v16 previousTopEntry];

      if (v17)
      {
        v18 = [v17 isSearchActive];
        v19 = [(_UINavigationBarItemStackEntry *)v17 _typedStorage];
        v20 = v18 ? sub_18901F25C() : sub_18901F250();
        v27 = v20;

        if (v27)
        {
          sub_188CC5D78(v15);
        }
      }

      goto LABEL_22;
    }
  }

  v21 = [v2 stack];
  v22 = [v21 previousTopEntry];

  if (v22)
  {
    v23 = [v22 isSearchActive];
    v24 = [(_UINavigationBarItemStackEntry *)v22 _typedStorage];
    v25 = v23 ? sub_18901F25C() : sub_18901F250();
    v26 = v25;

    if (v26)
    {
      sub_188C72350();
LABEL_22:
    }
  }

  sub_188AEE120();
  sub_188AEC470();
  if (a1)
  {
    v28 = [v2 stack];
    v29 = [v28 transitionAssistant];

    a1(0, v29);
  }
}

void __swiftcall UIBarButtonItem.init(systemItem:primaryAction:menu:)(UIBarButtonItem *__return_ptr retstr, UIBarButtonSystemItem systemItem, UIAction_optional *primaryAction, UIMenu_optional *menu)
{
  [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithBarButtonSystemItem:systemItem primaryAction:primaryAction menu:menu];
}

uint64_t sub_188C046C8(uint64_t a1, SEL *a2)
{
  v3 = [*(*v2 + 16) *a2];
  sub_18A4A7548();

  v4 = sub_18A4A82C8();

  return v4;
}

void sub_188C047BC(void *a1)
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
      v23 = v7;
      v8 = a1;
      v9 = sub_18A4A7C88();

      if (v9)
      {
        v10 = [v8 additionalOverflowItems];
        v11 = OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_contentView;
        v12 = *&v2[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_contentView];
        v13 = *&v12[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_overflowGroup];
        if (v13)
        {
          if ([v13 isHidden])
          {
            v14 = [v2 stack];
            v15 = [v14 backItem];

            sub_188B2A9B4(v7, v15, 0);
LABEL_13:

            v21 = *&v2[v11];
            sub_188AED2B0(__src);
            memcpy(__dst, &v21[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_lastLayoutResult], 0x20AuLL);
            memcpy(&v21[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_lastLayoutResult], __src, 0x20AuLL);
            v22 = v21;
            sub_188A3F5FC(__dst, &unk_1EA9362C0);
            [v22 setNeedsLayout];

            return;
          }

          v12 = *&v2[v11];
        }

        v16 = *&v12[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_additionalItems];
        *&v12[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_additionalItems] = v10;
        v17 = v12;
        v18 = v10;

        v19 = *&v2[v11];
        v20 = v18;
        v15 = v19;
        sub_188B2A668(v10);
        goto LABEL_13;
      }
    }
  }
}

uint64_t sub_188C04C74(char a1)
{
  v1 = a1 & 1;
  v2 = sub_188C66288();
  if (*(v2 + 16) == v1)
  {
    *(v2 + 16) = v1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_188C61AF0();
    sub_18A4A2BF8();
  }
}

id _UIContentUnavailableConstantsForTraitCollection(void *a1)
{
  v1 = [a1 userInterfaceIdiom];
  if (v1 == -1)
  {
    v2 = +[UIDevice currentDevice];
    v1 = [v2 userInterfaceIdiom];
  }

  if (v1 > 2)
  {
    if (v1 <= 4)
    {
      if (v1 == 3)
      {
        v3 = UIContentUnavailableConstants_CarPlay;
      }

      else
      {
        v3 = UIContentUnavailableConstants_Watch;
      }

      goto LABEL_18;
    }

    if (v1 == 5)
    {
      v3 = UIContentUnavailableConstants_Mac;
      goto LABEL_18;
    }

    if (v1 == 8)
    {
      goto LABEL_13;
    }

LABEL_10:
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"id<UIContentUnavailableConstants>  _Nonnull _UIContentUnavailableConstantsForTraitCollection(UITraitCollection *__strong _Nonnull)"];
    [v4 handleFailureInFunction:v5 file:@"UIContentUnavailableConstants.m" lineNumber:38 description:{@"UIUserInterfaceIdiom (%ld) is not supported by UIContentUnavailableConstants", v1}];

    v6 = 0;
    goto LABEL_19;
  }

  if (!v1)
  {
    v3 = UIContentUnavailableConstants_Phone;
    goto LABEL_18;
  }

  if (v1 == 1)
  {
    v3 = UIContentUnavailableConstants_Pad;
    goto LABEL_18;
  }

  if (v1 != 2)
  {
    goto LABEL_10;
  }

LABEL_13:
  v3 = UIContentUnavailableConstants_TV;
LABEL_18:
  v6 = [(__objc2_class *)v3 sharedConstants];
LABEL_19:

  return v6;
}

uint64_t _UIContentUnavailableUpdateLabelUsingTextConfiguration(void *a1, id *a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  if (!a2)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"BOOL _UIContentUnavailableUpdateLabelUsingTextConfiguration(UIView * _Nonnull __strong, UILabel * _Nullable __strong * _Nonnull, UIContentUnavailableTextProperties * _Nonnull __strong)"}];
    [v13 handleFailureInFunction:v14 file:@"UIContentUnavailableTextProperties_Internal.h" lineNumber:71 description:{@"Invalid parameter not satisfying: %@", @"labelPtr != NULL"}];
  }

  v7 = *a2;
  v8 = v7;
  if (!v6 || !v6[2] && !v6[6])
  {
    if (v7 && ![(UIView *)v7 isHidden])
    {
      v10 = 1;
      [(UIView *)v8 setHidden:1];
    }

    else
    {
      v10 = 0;
    }

    goto LABEL_15;
  }

  if (v7)
  {
    if (![(UIView *)v7 isHidden])
    {
      v10 = 0;
      goto LABEL_12;
    }

    [(UIView *)v8 setHidden:0];
  }

  else
  {
    v8 = objc_alloc_init(UILabel);
    v9 = *a2;
    *a2 = v8;
  }

  v10 = 1;
LABEL_12:
  v11 = [(UIView *)v8 superview];

  if (v11 != v5)
  {
    [v5 addSubview:v8];
  }

  [(UIContentUnavailableTextProperties *)v6 _applyToLabel:v8];
LABEL_15:

  return v10;
}

uint64_t _UIUpdateButtonUsingButtonConfiguration(void *a1, id *a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  if (!a2)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"BOOL _UIUpdateButtonUsingButtonConfiguration(UIView * _Nonnull __strong, UIButton * _Nullable __strong * _Nonnull, UIContentUnavailableButtonProperties * _Nonnull __strong)"}];
    [v11 handleFailureInFunction:v12 file:@"UIContentUnavailableButtonProperties_Internal.h" lineNumber:66 description:{@"Invalid parameter not satisfying: %@", @"buttonPtr != NULL"}];
  }

  v7 = *a2;
  if ([(UIContentUnavailableButtonProperties *)v6 _hasButton])
  {
    if (v7)
    {
      if ([v7 isHidden])
      {
        [v7 setHidden:0];
        v8 = 1;
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 1;
      v7 = [UIButton buttonWithType:1];
      objc_storeStrong(a2, v7);
    }

    v9 = [v7 superview];

    if (v9 != v5)
    {
      [v5 addSubview:v7];
    }

    [(UIContentUnavailableButtonProperties *)v6 _applyToButton:v7];
  }

  else if (v7 && ([v7 isHidden] & 1) == 0)
  {
    v8 = 1;
    [v7 setHidden:1];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

id _UILocalizedString(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  v6 = _UIKitBundle();
  v7 = [v6 localizedStringForKey:v5 value:v4 table:@"Localizable"];

  return v7;
}

uint64_t _UIApplicationIsMessagesExtension()
{
  if (qword_1EA992EC0 != -1)
  {
    dispatch_once(&qword_1EA992EC0, &__block_literal_global_1255);
  }

  return byte_1EA992DB1;
}

void sub_188C05D90(uint64_t *a1, unint64_t *a2, uint64_t a3, SEL *a4)
{
  v6 = *a1;
  v7 = sub_188C05E6C();
  v8 = *(v6 + 16);
  v9 = v7;
  v10 = v8;

  [v10 copy];

  sub_18A4A7DE8();
  swift_unknownObjectRelease();
  sub_188A34624(0, a2);
  swift_dynamicCast();
  [v9 *a4];
}

uint64_t sub_188C05E6C()
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v2 = *v0;
  if (isUniquelyReferenced_nonNull_native)
  {
    return *(v2 + 16);
  }

  [*(v2 + 16) copy];
  sub_18A4A7DE8();
  swift_unknownObjectRelease();
  sub_188A34624(0, &qword_1EA93B688);
  swift_dynamicCast();
  v3 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93B660);
  v4 = swift_allocObject();
  *(v4 + 16) = v6;

  *v0 = v4;
  return v3;
}

void sub_188C05F48(uint64_t a1, uint64_t a2, SEL *a3)
{
  v5 = sub_188C05E6C();
  v6 = v5;
  if (a2)
  {
    v7 = sub_18A4A7258();
  }

  else
  {
    v7 = 0;
  }

  [v5 *a3];
}

uint64_t UIContentUnavailableView.configuration.setter(uint64_t a1)
{
  sub_188A53994(a1, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9374D8);
  if (swift_dynamicCast())
  {
    [v1 setConfiguration_];
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

uint64_t sub_188C066A8@<X0>(SEL *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [objc_opt_self() *a1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93B660);
  result = swift_allocObject();
  *(result + 16) = v3;
  *a2 = result;
  return result;
}

void _UIApplyCornerRadiusToView(void *a1, double a2)
{
  v3 = a1;
  v12 = v3;
  if (a2 > 0.0)
  {
    [v3 bounds];
    x = v14.origin.x;
    y = v14.origin.y;
    width = v14.size.width;
    height = v14.size.height;
    v8 = CGRectGetWidth(v14) * 0.5;
    v15.origin.x = x;
    v15.origin.y = y;
    v15.size.width = width;
    v15.size.height = height;
    v9 = CGRectGetHeight(v15);
    v3 = v12;
    v10 = v9 * 0.5;
    if (v8 < v10)
    {
      v10 = v8;
    }

    if (v10 < a2)
    {
      a2 = v10;
    }
  }

  v11 = [v3 layer];
  [v11 setMasksToBounds:1];
  [v11 setCornerCurve:*MEMORY[0x1E69796E8]];
  [v11 setCornerRadius:a2];
}

uint64_t _UIBuiltinTraitStoragePerformActionWithValueForTraitNamed(uint64_t a1, __CFString *a2, uint64_t a3)
{
  if (@"_UITraitNameUserInterfaceIdiom" == a2)
  {
    if (*a1 == -1)
    {
      v6 = 0;
    }

    else
    {
      v6 = [MEMORY[0x1E696AD98] numberWithInteger:?];
    }

    v9 = (*(a3 + 16))(a3, v6);
    if (v6 != v9)
    {
      if (v9)
      {
        v10 = [v9 integerValue];
      }

      else
      {
        v10 = -1;
      }

      *a1 = v10;
    }
  }

  else if (@"_UITraitNameDisplayScale" == a2)
  {
    if (*(a1 + 8) == 0.0)
    {
      v7 = 0;
    }

    else
    {
      v7 = [MEMORY[0x1E696AD98] numberWithDouble:?];
    }

    v12 = (*(a3 + 16))(a3, v7);
    if (v7 != v12)
    {
      if (v12)
      {
        [v12 doubleValue];
      }

      else
      {
        v13 = 0;
      }

      *(a1 + 8) = v13;
    }
  }

  else if (@"_UITraitNameDisplayGamut" == a2)
  {
    if (*(a1 + 16) == -1)
    {
      v8 = 0;
    }

    else
    {
      v8 = [MEMORY[0x1E696AD98] numberWithInteger:?];
    }

    v15 = (*(a3 + 16))(a3, v8);
    if (v8 != v15)
    {
      if (v15)
      {
        v16 = [v15 integerValue];
      }

      else
      {
        v16 = -1;
      }

      *(a1 + 16) = v16;
    }
  }

  else if (@"_UITraitNameHorizontalSizeClass" == a2)
  {
    if (*(a1 + 56))
    {
      v11 = [MEMORY[0x1E696AD98] numberWithInteger:?];
    }

    else
    {
      v11 = 0;
    }

    v18 = (*(a3 + 16))(a3, v11);
    if (v11 != v18)
    {
      if (v18)
      {
        v18 = [v18 integerValue];
      }

      *(a1 + 56) = v18;
    }
  }

  else if (@"_UITraitNameVerticalSizeClass" == a2)
  {
    if (*(a1 + 64))
    {
      v14 = [MEMORY[0x1E696AD98] numberWithInteger:?];
    }

    else
    {
      v14 = 0;
    }

    v20 = (*(a3 + 16))(a3, v14);
    if (v14 != v20)
    {
      if (v20)
      {
        v20 = [v20 integerValue];
      }

      *(a1 + 64) = v20;
    }
  }

  else if (@"_UITraitNameTouchLevel" == a2)
  {
    if (*(a1 + 24) == -1)
    {
      v17 = 0;
    }

    else
    {
      v17 = [MEMORY[0x1E696AD98] numberWithInteger:?];
    }

    v22 = (*(a3 + 16))(a3, v17);
    if (v17 != v22)
    {
      if (v22)
      {
        v23 = [v22 integerValue];
      }

      else
      {
        v23 = -1;
      }

      *(a1 + 24) = v23;
    }
  }

  else if (@"_UITraitNameInteractionModel" == a2)
  {
    if (*(a1 + 32))
    {
      v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
    }

    else
    {
      v19 = 0;
    }

    v25 = (*(a3 + 16))(a3, v19);
    if (v19 != v25)
    {
      if (v25)
      {
        v25 = [v25 unsignedIntegerValue];
      }

      *(a1 + 32) = v25;
    }
  }

  else if (@"_UITraitNamePrimaryInteractionModel" == a2)
  {
    if (*(a1 + 40))
    {
      v21 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
    }

    else
    {
      v21 = 0;
    }

    v27 = (*(a3 + 16))(a3, v21);
    if (v21 != v27)
    {
      if (v27)
      {
        v27 = [v27 unsignedIntegerValue];
      }

      *(a1 + 40) = v27;
    }
  }

  else if (@"_UITraitNameArtworkSubtype" == a2)
  {
    if (*(a1 + 48))
    {
      v24 = [MEMORY[0x1E696AD98] numberWithInteger:?];
    }

    else
    {
      v24 = 0;
    }

    v29 = (*(a3 + 16))(a3, v24);
    if (v24 != v29)
    {
      if (v29)
      {
        v29 = [v29 integerValue];
      }

      *(a1 + 48) = v29;
    }
  }

  else if (@"_UITraitNameUserInterfaceStyle" == a2)
  {
    if (*(a1 + 72))
    {
      v26 = [MEMORY[0x1E696AD98] numberWithInteger:?];
    }

    else
    {
      v26 = 0;
    }

    v31 = (*(a3 + 16))(a3, v26);
    if (v26 != v31)
    {
      if (v31)
      {
        v31 = [v31 integerValue];
      }

      *(a1 + 72) = v31;
    }
  }

  else if (@"_UITraitNameUserInterfaceLayoutDirection" == a2)
  {
    if (*(a1 + 80) == -1)
    {
      v28 = 0;
    }

    else
    {
      v28 = [MEMORY[0x1E696AD98] numberWithInteger:?];
    }

    v33 = (*(a3 + 16))(a3, v28);
    if (v28 != v33)
    {
      if (v33)
      {
        v34 = [v33 integerValue];
      }

      else
      {
        v34 = -1;
      }

      *(a1 + 80) = v34;
    }
  }

  else if (@"_UITraitNameForceTouchCapability" == a2)
  {
    if (*(a1 + 88))
    {
      v30 = [MEMORY[0x1E696AD98] numberWithInteger:?];
    }

    else
    {
      v30 = 0;
    }

    v36 = (*(a3 + 16))(a3, v30);
    if (v30 != v36)
    {
      if (v36)
      {
        v36 = [v36 integerValue];
      }

      *(a1 + 88) = v36;
    }
  }

  else if (@"_UITraitNamePreferredContentSizeCategory" == a2)
  {
    if (*(a1 + 96))
    {
      v32 = [MEMORY[0x1E696AD98] numberWithInteger:?];
    }

    else
    {
      v32 = 0;
    }

    v38 = (*(a3 + 16))(a3, v32);
    if (v32 != v38)
    {
      if (v38)
      {
        v38 = [v38 integerValue];
      }

      *(a1 + 96) = v38;
    }
  }

  else if (@"_UITraitNameDisplayCornerRadius" == a2)
  {
    if (*(a1 + 104) == -1.0)
    {
      v35 = 0;
    }

    else
    {
      v35 = [MEMORY[0x1E696AD98] numberWithDouble:?];
    }

    v40 = (*(a3 + 16))(a3, v35);
    if (v35 != v40)
    {
      if (v40)
      {
        [v40 doubleValue];
      }

      else
      {
        v41 = -1.0;
      }

      *(a1 + 104) = v41;
    }
  }

  else if (@"_UITraitNameLegibilityWeight" == a2)
  {
    if (*(a1 + 112) == -1)
    {
      v37 = 0;
    }

    else
    {
      v37 = [MEMORY[0x1E696AD98] numberWithInteger:?];
    }

    v43 = (*(a3 + 16))(a3, v37);
    if (v37 != v43)
    {
      if (v43)
      {
        v44 = [v43 integerValue];
      }

      else
      {
        v44 = -1;
      }

      *(a1 + 112) = v44;
    }
  }

  else if (@"_UITraitNameSemanticContext" == a2)
  {
    if (*(a1 + 120))
    {
      v39 = [MEMORY[0x1E696AD98] numberWithInteger:?];
    }

    else
    {
      v39 = 0;
    }

    v46 = (*(a3 + 16))(a3, v39);
    if (v39 != v46)
    {
      if (v46)
      {
        v46 = [v46 integerValue];
      }

      *(a1 + 120) = v46;
    }
  }

  else if (@"_UITraitNamePresentationSemanticContext" == a2)
  {
    if (*(a1 + 128))
    {
      v42 = [MEMORY[0x1E696AD98] numberWithInteger:?];
    }

    else
    {
      v42 = 0;
    }

    v48 = (*(a3 + 16))(a3, v42);
    if (v42 != v48)
    {
      if (v48)
      {
        v48 = [v48 integerValue];
      }

      *(a1 + 128) = v48;
    }
  }

  else if (@"_UITraitNameSplitViewControllerContext" == a2)
  {
    if (*(a1 + 136) == -1)
    {
      v45 = 0;
    }

    else
    {
      v45 = [MEMORY[0x1E696AD98] numberWithInteger:?];
    }

    v50 = (*(a3 + 16))(a3, v45);
    if (v45 != v50)
    {
      if (v50)
      {
        v51 = [v50 integerValue];
      }

      else
      {
        v51 = -1;
      }

      *(a1 + 136) = v51;
    }
  }

  else if (@"_UITraitNameAccessibilityContrast" == a2)
  {
    if (*(a1 + 144) == -1)
    {
      v47 = 0;
    }

    else
    {
      v47 = [MEMORY[0x1E696AD98] numberWithInteger:?];
    }

    v53 = (*(a3 + 16))(a3, v47);
    if (v47 != v53)
    {
      if (v53)
      {
        v54 = [v53 integerValue];
      }

      else
      {
        v54 = -1;
      }

      *(a1 + 144) = v54;
    }
  }

  else if (@"_UITraitNameUserInterfaceLevel" == a2)
  {
    if (*(a1 + 152) == -1)
    {
      v49 = 0;
    }

    else
    {
      v49 = [MEMORY[0x1E696AD98] numberWithInteger:?];
    }

    v56 = (*(a3 + 16))(a3, v49);
    if (v49 != v56)
    {
      if (v56)
      {
        v57 = [v56 integerValue];
      }

      else
      {
        v57 = -1;
      }

      *(a1 + 152) = v57;
    }
  }

  else if (@"_UITraitNameVibrancy" == a2)
  {
    if (*(a1 + 160) == -1)
    {
      v52 = 0;
    }

    else
    {
      v52 = [MEMORY[0x1E696AD98] numberWithInteger:?];
    }

    v59 = (*(a3 + 16))(a3, v52);
    if (v52 != v59)
    {
      if (v59)
      {
        v60 = [v59 integerValue];
      }

      else
      {
        v60 = -1;
      }

      *(a1 + 160) = v60;
    }
  }

  else if (@"_UITraitNameUserInterfaceRenderingMode" == a2)
  {
    if (*(a1 + 168))
    {
      v55 = [MEMORY[0x1E696AD98] numberWithInteger:?];
    }

    else
    {
      v55 = 0;
    }

    v62 = (*(a3 + 16))(a3, v55);
    if (v55 != v62)
    {
      if (v62)
      {
        v62 = [v62 integerValue];
      }

      *(a1 + 168) = v62;
    }
  }

  else if (@"_UITraitNameActiveAppearance" == a2)
  {
    if (*(a1 + 176) == -1)
    {
      v58 = 0;
    }

    else
    {
      v58 = [MEMORY[0x1E696AD98] numberWithInteger:?];
    }

    v64 = (*(a3 + 16))(a3, v58);
    if (v58 != v64)
    {
      if (v64)
      {
        v65 = [v64 integerValue];
      }

      else
      {
        v65 = -1;
      }

      *(a1 + 176) = v65;
    }
  }

  else if (@"_UITraitNameFocusSystemState" == a2)
  {
    if (*(a1 + 184) == -1)
    {
      v61 = 0;
    }

    else
    {
      v61 = [MEMORY[0x1E696AD98] numberWithInteger:?];
    }

    v67 = (*(a3 + 16))(a3, v61);
    if (v61 != v67)
    {
      if (v67)
      {
        v68 = [v67 integerValue];
      }

      else
      {
        v68 = -1;
      }

      *(a1 + 184) = v68;
    }
  }

  else if (@"_UITraitNameSelectionIsKey" == a2)
  {
    if (*(a1 + 192) == -1)
    {
      v63 = 0;
    }

    else
    {
      v63 = [MEMORY[0x1E696AD98] numberWithInteger:?];
    }

    v70 = (*(a3 + 16))(a3, v63);
    if (v63 != v70)
    {
      if (v70)
      {
        v71 = [v70 integerValue];
      }

      else
      {
        v71 = -1;
      }

      *(a1 + 192) = v71;
    }
  }

  else if (@"_UITraitNameBacklightLuminance" == a2)
  {
    if (*(a1 + 200) == -1)
    {
      v66 = 0;
    }

    else
    {
      v66 = [MEMORY[0x1E696AD98] numberWithInteger:?];
    }

    v72 = (*(a3 + 16))(a3, v66);
    if (v66 != v72)
    {
      if (v72)
      {
        v73 = [v72 integerValue];
      }

      else
      {
        v73 = -1;
      }

      *(a1 + 200) = v73;
    }
  }

  else
  {
    if (@"_UITraitNameToolbarItemPresentationSize" != a2)
    {
      return 0;
    }

    if (*(a1 + 208) == -1)
    {
      v69 = 0;
    }

    else
    {
      v69 = [MEMORY[0x1E696AD98] numberWithInteger:?];
    }

    v74 = (*(a3 + 16))(a3, v69);
    if (v69 != v74)
    {
      if (v74)
      {
        v75 = [v74 integerValue];
      }

      else
      {
        v75 = -1;
      }

      *(a1 + 208) = v75;
    }
  }

  return 1;
}

void sub_188C07EC0(uint64_t a1, const char **a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = *a2;
    v5 = Strong;
    [Strong v4];
  }
}

double transitionGapGivenTabController(void *a1)
{
  v1 = a1;
  v2 = [v1 selectedViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v1 selectedViewController];

    v4 = 0.0;
    if (v3 && [v3 _builtinTransitionStyle] == 1)
    {
      [v3 _builtinTransitionGap];
      v4 = v5;
    }
  }

  else
  {

    v3 = 0;
    v4 = 0.0;
  }

  return v4;
}

id UIBarButtonItem.init(title:image:target:action:menu:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  if (a2)
  {
    v10 = sub_18A4A7258();
  }

  else
  {
    v10 = 0;
  }

  v11 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithTitle:v10 image:a3 target:a4 action:a5 menu:a6];

  swift_unknownObjectRelease();
  return v11;
}

uint64_t sub_188C09558()
{
  result = sub_18A4A7288();
  qword_1ED48ECC0 = result;
  *algn_1ED48ECC8 = v1;
  return result;
}

uint64_t sub_188C09620()
{
  result = sub_18A4A7288();
  qword_1ED48EDB0 = result;
  *algn_1ED48EDB8 = v1;
  return result;
}

uint64_t sub_188C096C0()
{
  result = sub_18A4A7288();
  qword_1ED48ED98 = result;
  unk_1ED48EDA0 = v1;
  return result;
}

uint64_t UIHostingViewBase.safeAreaRegions.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC5UIKit17UIHostingViewBase_safeAreaRegions;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  return sub_188F2461C(v4);
}

uint64_t sub_188C09790(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_188A34624(255, a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_188C09830()
{
  result = sub_18A4A7288();
  qword_1ED48ED28 = result;
  *algn_1ED48ED30 = v1;
  return result;
}

uint64_t sub_188C09898()
{
  result = sub_18A4A7288();
  qword_1ED48ED78 = result;
  unk_1ED48ED80 = v1;
  return result;
}

uint64_t sub_188C09900()
{
  result = sub_18A4A7288();
  qword_1ED48ED60 = result;
  *algn_1ED48ED68 = v1;
  return result;
}

uint64_t sub_188C09940()
{
  result = sub_18A4A7288();
  qword_1ED48ECD8 = result;
  unk_1ED48ECE0 = v1;
  return result;
}

uint64_t sub_188C099A8()
{
  result = sub_18A4A7288();
  qword_1ED48ED08 = result;
  *algn_1ED48ED10 = v1;
  return result;
}

uint64_t sub_188C099E8()
{
  result = sub_18A4A7288();
  qword_1ED48ECF0 = result;
  *algn_1ED48ECF8 = v1;
  return result;
}

uint64_t sub_188C09A40()
{
  result = sub_18A4A7288();
  qword_1ED48EE38 = result;
  unk_1ED48EE40 = v1;
  return result;
}

uint64_t sub_188C09AA8()
{
  result = sub_18A4A7288();
  qword_1ED48ECA0 = result;
  unk_1ED48ECA8 = v1;
  return result;
}

uint64_t sub_188C09B10()
{
  result = sub_18A4A7288();
  qword_1ED48ED48 = result;
  unk_1ED48ED50 = v1;
  return result;
}

void sub_188C09B40(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_18A4A7ED8() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v6);
      v10 = sub_18A4A7C78();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = *(a2 + 48);
          v15 = (v14 + 8 * v3);
          v16 = (v14 + 8 * v6);
          if (v3 != v6 || v15 >= v16 + 1)
          {
            *v15 = *v16;
          }

          v17 = *(a2 + 56);
          v18 = (v17 + 8 * v3);
          v19 = (v17 + 8 * v6);
          if (v3 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
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
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }
}

void _UIMenuStateObserverableLeafStateDidChange(void *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [v1 _getStateObservers];
  v3 = v2;
  if (v2)
  {
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v9;
      do
      {
        v7 = 0;
        do
        {
          if (*v9 != v6)
          {
            objc_enumerationMutation(v3);
          }

          [*(*(&v8 + 1) + 8 * v7++) _elementStateDidChange:v1];
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
      }

      while (v5);
    }
  }
}

id _UIKitGetApplicationAssetManager()
{
  if (qword_1ED498D10 != -1)
  {
    dispatch_once(&qword_1ED498D10, &__block_literal_global_199);
  }

  v1 = qword_1ED498D08;

  return v1;
}

uint64_t applyInvocationsToTarget(void *a1, id object)
{
  v34 = *MEMORY[0x1E69E9840];
  AssociatedObject = objc_getAssociatedObject(object, &_UIAppearanceCustomizedSelectorsAssociationKey);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = a1;
  result = [a1 countByEnumeratingWithState:&v27 objects:v33 count:16];
  v26 = result;
  if (result)
  {
    v25 = *v28;
    v22 = *MEMORY[0x1E695D940];
    v23 = AssociatedObject;
    do
    {
      v5 = 0;
      do
      {
        if (*v28 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v27 + 1) + 8 * v5);
        if (!AssociatedObject)
        {
          goto LABEL_11;
        }

        v7 = [*(*(&v27 + 1) + 8 * v5) selector];
        v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v9 = [objc_msgSend(v6 "methodSignature")];
        if (v9 >= 4)
        {
          v10 = v9;
          for (i = 3; i != v10; ++i)
          {
            v31[0] = 0;
            [v6 getArgument:v31 atIndex:i];
            [v8 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInteger:", v31[0])}];
          }
        }

        if (([AssociatedObject containsObject:{TagForSelectorWithAxes(v7, v8)}] & 1) == 0)
        {
LABEL_11:
          v12 = [v6 methodSignature];
          v13 = [MEMORY[0x1E695DF50] invocationWithMethodSignature:v12];
          v14 = [v6 selector];
          [v13 setSelector:v14];
          v15 = [v12 numberOfArguments];
          if (v15 >= 3)
          {
            v16 = v15;
            for (j = 2; v16 != j; ++j)
            {
              v18 = [v12 getArgumentTypeAtIndex:j];
              v19 = v18;
              v20 = *v18;
              if (v20 == 64 && !v18[1])
              {
                goto LABEL_27;
              }

              if (!strcmp(v18, "{CGPoint=dd}") || !strcmp(v19, "{CGSize=dd}") || !strcmp(v19, "{UIOffset=dd}"))
              {
                *(&v32[0] + 1) = 0;
                goto LABEL_27;
              }

              if (!strcmp(v19, "{CGRect={CGPoint=dd}{CGSize=dd}}") || !strcmp(v19, "{UIEdgeInsets=dddd}"))
              {
                memset(v32, 0, sizeof(v32));
                goto LABEL_28;
              }

              if (v20 <= 98)
              {
                if (v20 > 72)
                {
                  if (v20 != 73)
                  {
                    if (v20 != 81)
                    {
                      goto LABEL_46;
                    }

                    goto LABEL_43;
                  }

LABEL_39:
                  if (v19[1])
                  {
                    goto LABEL_46;
                  }

                  LODWORD(v32[0]) = 0;
                  goto LABEL_28;
                }

                if (v20 == 35)
                {
                  goto LABEL_43;
                }

                if (v20 != 66)
                {
                  goto LABEL_46;
                }
              }

              else
              {
                if (v20 > 101)
                {
                  if (v20 != 102 && v20 != 105)
                  {
                    if (v20 != 113)
                    {
                      goto LABEL_46;
                    }

LABEL_43:
                    if (v19[1])
                    {
                      goto LABEL_46;
                    }

LABEL_27:
                    *&v32[0] = 0;
                    goto LABEL_28;
                  }

                  goto LABEL_39;
                }

                if (v20 != 99)
                {
                  if (v20 != 100)
                  {
                    goto LABEL_46;
                  }

                  goto LABEL_43;
                }
              }

              if (v19[1])
              {
LABEL_46:
                [MEMORY[0x1E695DF30] raise:v22 format:{@"*** Illegal property type, %s in invocation selector, %@", v19, NSStringFromSelector(objc_msgSend(v6, "selector"))}];
                continue;
              }

              LOBYTE(v32[0]) = 0;
LABEL_28:
              [v6 getArgument:v32 atIndex:j];
              [v13 setArgument:v32 atIndex:j];
            }
          }

          v31[0] = MEMORY[0x1E69E9820];
          v31[1] = 3221225472;
          v31[2] = __workaround10030904InvokeWithTarget_block_invoke;
          v31[3] = &unk_1E710BBE8;
          v31[5] = v13;
          v31[6] = v14;
          v31[4] = object;
          [UIView _performSystemAppearanceModifications:v31];
          AssociatedObject = v23;
        }

        ++v5;
      }

      while (v5 != v26);
      result = [obj countByEnumeratingWithState:&v27 objects:v33 count:16];
      v26 = result;
    }

    while (result);
  }

  return result;
}

void sub_188C0AC80(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_usesBarBackground;
  if (*(a3 + OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_usesBarBackground) == 1)
  {
    sub_188AE4B20(a1, 0);
  }

  v6 = [(_UINavigationBarItemStackEntry *)a1 _typedStorage];
  v7 = sub_18901F250();

  if (v7)
  {
    v7[34] = *(a3 + OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift__appearanceAPIVersion);
    if (*(a3 + v5) == 1)
    {
      v8 = v7[12];
      if (v8)
      {
        [v8 setLayout_];
      }
    }

    v9 = v7[13];
    if (v9)
    {
      v7[13] = 0;

      sub_188B386EC();
    }

    v10 = v7[14];
    v7[14] = 0;
  }

  v11 = [(_UINavigationBarItemStackEntry *)a1 _typedStorage];
  v12 = sub_18901F25C();

  if (v12)
  {
    v12[34] = *(a3 + OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift__appearanceAPIVersion);
    if (*(a3 + v5) == 1)
    {
      v13 = v12[12];
      if (v13)
      {
        [v13 setLayout_];
      }
    }

    v14 = v12[13];
    if (v14)
    {
      v12[13] = 0;

      sub_188B386EC();
    }

    v15 = v12[14];
    v12[14] = 0;
  }

  else
  {
  }
}

uint64_t __workaround10030904InvokeWithTarget_block_invoke(uint64_t a1)
{
  PushNextClassForSettingIMP(*(a1 + 32), *(a1 + 48));
  v2 = CurrentOrginalSettingIMP(*(a1 + 32), *(a1 + 48));
  [*(a1 + 40) setTarget:*(a1 + 32)];
  [*(a1 + 40) invokeUsingIMP:v2];
  v3 = *(a1 + 32);
  v4 = *(a1 + 48);
  AssociatedObject = objc_getAssociatedObject(v3, &unk_1ED49E5DA);
  v6 = [AssociatedObject objectForKey:NSStringFromSelector(v4)];

  return [v6 removeLastObject];
}

void sub_188C0BBC8(void *a1, void *a2, char a3)
{
  v4 = v3;
  v8 = [v3 navigationBar];
  if ((a3 & 1) == 0)
  {
    v17 = [a2 standardAppearance];
    if (!v17)
    {
      v17 = [v8 standardAppearance];
    }

    v11 = [v17 _backgroundData];
    v18 = [a2 scrollEdgeAppearance];
    if (v18)
    {
      v19 = v18;
    }

    else
    {
      v20 = [v4 navigationBar];
      v19 = [v20 scrollEdgeAppearance];

      if (!v19)
      {
        v21 = [objc_opt_self() transparentBackgroundData];
        goto LABEL_18;
      }
    }

    v21 = [v19 _backgroundData];

    goto LABEL_18;
  }

  v9 = [a2 compactAppearance];
  if (!v9)
  {
    v9 = [v8 compactAppearance];
    if (!v9)
    {
      v9 = [a2 standardAppearance];
      if (!v9)
      {
        v9 = [v8 standardAppearance];
      }
    }
  }

  v10 = v9;

  v11 = [v10 _backgroundData];
  if (_UIBarsApplyChromelessEverywhere() && (v12 = [v4 navigationBar], v13 = objc_msgSend(v12, sel__effectiveDelegateSupportsScrollEdgeTransitionProgress), v12, v13))
  {
    v14 = [v4 navigationBar];
    v15 = sub_1890D3DBC(v14, a2);

    if (v15)
    {
      v16 = v15;
      v21 = [v16 _backgroundData];
    }

    else
    {
      v21 = [objc_opt_self() transparentBackgroundData];
    }
  }

  else
  {

    v21 = v11;
    v11 = v21;
  }

LABEL_18:
  [a1 setBackgroundData1_];
  [a1 setBackgroundData2_];
}

uint64_t sub_188C0C250()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

id BarButtonItemTitleForSystemItem(uint64_t a1)
{
  v2 = 0;
  if (a1 > 99)
  {
    if (a1 > 103)
    {
      if (a1 > 105)
      {
        if (a1 == 106)
        {
          v3 = @"Right";
        }

        else
        {
          if (a1 != 111)
          {
            goto LABEL_43;
          }

          v3 = @"AirPlay";
        }
      }

      else if (a1 == 104)
      {
        v3 = @"Down";
      }

      else
      {
        v3 = @"Left";
      }
    }

    else if (a1 > 101)
    {
      if (a1 == 102)
      {
        v3 = @"Forward";
      }

      else
      {
        v3 = @"Up";
      }
    }

    else if (a1 == 100)
    {
      v3 = @"Locate";
    }

    else
    {
      v3 = @"Back";
    }

LABEL_42:
    v2 = _UINSLocalizedStringWithDefaultValue(v3, v3);
  }

  else
  {
    switch(a1)
    {
      case 0:
        v3 = @"Done";
        goto LABEL_42;
      case 1:
        v3 = @"Cancel";
        goto LABEL_42;
      case 2:
        v3 = @"Edit";
        goto LABEL_42;
      case 3:
        v3 = @"Save";
        goto LABEL_42;
      case 4:
        v3 = @"Add";
        goto LABEL_42;
      case 7:
        v3 = @"Compose";
        goto LABEL_42;
      case 8:
        v3 = @"Reply";
        goto LABEL_42;
      case 9:
        v3 = @"Action";
        goto LABEL_42;
      case 10:
        v3 = @"Organize";
        goto LABEL_42;
      case 11:
        v3 = @"Bookmarks";
        goto LABEL_42;
      case 12:
        v3 = @"Search";
        goto LABEL_42;
      case 13:
        v3 = @"Refresh";
        goto LABEL_42;
      case 14:
        v3 = @"Stop";
        goto LABEL_42;
      case 15:
        v3 = @"Camera";
        goto LABEL_42;
      case 16:
        v3 = @"Trash";
        goto LABEL_42;
      case 17:
        v3 = @"Play";
        goto LABEL_42;
      case 18:
        v3 = @"Pause";
        goto LABEL_42;
      case 19:
        v3 = @"Rewind";
        goto LABEL_42;
      case 20:
        v3 = @"Fast Forward";
        goto LABEL_42;
      case 21:
        v3 = @"Undo";
        goto LABEL_42;
      case 22:
        v3 = @"Redo";
        goto LABEL_42;
      case 24:
        v3 = @"Close";
        goto LABEL_42;
      case 25:
        v3 = @"Writing Tools";
        goto LABEL_42;
      default:
        break;
    }
  }

LABEL_43:

  return v2;
}

BOOL BarButtonItemResolveSystemImage(uint64_t a1, void **a2, uint64_t a3, uint64_t a4)
{
  v6 = 0;
  v7 = 0.0;
  if (a1 > 99)
  {
    if (a1 > 104)
    {
      if (a1 <= 106)
      {
        if (a1 != 105)
        {
          v19 = @"UIButtonBarArrowRight.png";
          if (a3)
          {
            v19 = @"UIButtonBarArrowRightLandscape.png";
          }

          v15 = v19;
          LODWORD(v8) = 0;
          v6 = 0;
          v10 = 0;
LABEL_98:
          v9 = 6;
          v13 = 0.0;
          v14 = @"chevron.forward";
          goto LABEL_111;
        }

        v39 = @"UIButtonBarArrowLeft.png";
        if (a3)
        {
          v39 = @"UIButtonBarArrowLeftLandscape.png";
        }

        v15 = v39;
        LODWORD(v8) = 0;
        v6 = 0;
        v10 = 0;
LABEL_90:
        v9 = 6;
        v13 = 0.0;
        v14 = @"chevron.backward";
        goto LABEL_111;
      }

      if (a1 == 107)
      {
        v38 = @"UIButtonBarPreviousSlide.png";
      }

      else
      {
        if (a1 != 108)
        {
          v10 = 0;
          v11 = 0;
          v12 = 0;
          if (a1 == 111)
          {
            v17 = @"UIButtonBarAirPlay.png";
            if (a3)
            {
              v17 = @"UIButtonBarAirPlayLandscape.png";
            }

            v15 = v17;
            LODWORD(v8) = 0;
            v6 = 0;
            v10 = 0;
            v9 = 5;
            v13 = 0.0;
            v14 = @"airplayvideo";
            goto LABEL_111;
          }

          goto LABEL_108;
        }

        v38 = @"UIButtonBarNextSlide.png";
      }
    }

    else
    {
      if (a1 > 101)
      {
        if (a1 != 102)
        {
          if (a1 == 103)
          {
            v40 = @"UIButtonBarArrowUp.png";
            if (a3)
            {
              v40 = @"UIButtonBarArrowUpSmall.png";
            }

            v15 = v40;
            LODWORD(v8) = 0;
            v6 = 0;
            v10 = 0;
            v9 = 6;
            v13 = 0.0;
            v14 = @"chevron.up";
          }

          else
          {
            v16 = @"UIButtonBarArrowDown.png";
            if (a3)
            {
              v16 = @"UIButtonBarArrowDownSmall.png";
            }

            v15 = v16;
            LODWORD(v8) = 0;
            v6 = 0;
            v10 = 0;
            v9 = 6;
            v13 = 0.0;
            v14 = @"chevron.down";
          }

          goto LABEL_111;
        }

        v41 = @"UIButtonBarArrowRight.png";
        if (a3)
        {
          v41 = @"UIButtonBarArrowRightLandscape.png";
        }

        v15 = v41;
        v6 = 0;
        v10 = 0;
        LODWORD(v8) = 1;
        goto LABEL_98;
      }

      if (a1 != 100)
      {
        v18 = @"UIButtonBarArrowLeft.png";
        if (a3)
        {
          v18 = @"UIButtonBarArrowLeftLandscape.png";
        }

        v15 = v18;
        v6 = 0;
        v10 = 0;
        LODWORD(v8) = 1;
        goto LABEL_90;
      }

      v38 = @"UIButtonBarLocate.png";
    }

    if (a3)
    {
      v38 = 0;
    }

    v12 = v38;
    v6 = 0;
    v10 = 0;
    v11 = 0;
    goto LABEL_108;
  }

  LODWORD(v8) = 0;
  v9 = 5;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0.0;
  v14 = @"backward.fill";
  v15 = @"UIButtonBarRewind.png";
  switch(a1)
  {
    case 0:
      v15 = 0;
      if ((_UISolariumEnabled() & 1) == 0)
      {
        goto LABEL_76;
      }

      LODWORD(v8) = 0;
      v9 = 5;
      v6 = 0;
      v10 = 0;
      v14 = @"checkmark";
      goto LABEL_111;
    case 1:
      v15 = 0;
      if ((_UISolariumEnabled() & 1) == 0)
      {
        goto LABEL_76;
      }

      LODWORD(v8) = 0;
      v9 = 5;
      v6 = 0;
      v10 = 0;
LABEL_35:
      v14 = @"xmark";
      goto LABEL_111;
    case 2:
    case 3:
    case 5:
    case 6:
    case 23:
      break;
    case 4:
      v30 = @"UIButtonBarNew.png";
      if (a3)
      {
        v30 = @"UIButtonBarNewLandscape.png";
      }

      v15 = v30;
      LODWORD(v8) = 0;
      v6 = 0;
      v10 = 0;
      v9 = 5;
      v14 = @"plus";
      goto LABEL_111;
    case 7:
      v27 = @"UIButtonBarCompose.png";
      if (a3)
      {
        v27 = @"UIButtonBarComposeLandscape.png";
      }

      v15 = v27;
      v28 = _UIUseModernBars();
      LODWORD(v8) = 0;
      v6 = 0;
      v10 = 0;
      if (v28)
      {
        v13 = 4.0;
      }

      else
      {
        v13 = 0.0;
      }

      if (v28)
      {
        v7 = -4.0;
      }

      else
      {
        v7 = 4.0;
      }

      v14 = @"square.and.pencil";
      v9 = 5;
      goto LABEL_111;
    case 8:
      v32 = @"UIButtonBarReply.png";
      if (a3)
      {
        v32 = @"UIButtonBarReplyLandscape.png";
      }

      v15 = v32;
      v6 = 0;
      v10 = 0;
      LODWORD(v8) = 1;
      v9 = 5;
      v14 = @"arrowshape.turn.up.backward";
      goto LABEL_111;
    case 9:
      v29 = @"UIButtonBarAction.png";
      if (a3)
      {
        v29 = @"UIButtonBarActionSmall.png";
      }

      v15 = v29;
      LODWORD(v8) = 0;
      v6 = 0;
      v10 = 0;
      v9 = 5;
      v14 = @"square.and.arrow.up";
      goto LABEL_111;
    case 10:
      v25 = @"UIButtonBarOrganize.png";
      if (a3)
      {
        v25 = @"UIButtonBarOrganizeLandscape.png";
      }

      v15 = v25;
      LODWORD(v8) = 0;
      v6 = 0;
      v10 = 0;
      v9 = 5;
      v14 = @"folder";
      goto LABEL_111;
    case 11:
      v33 = @"UIButtonBarBookmarks.png";
      if (a3)
      {
        v33 = @"UIButtonBarBookmarksLandscape.png";
      }

      v15 = v33;
      LODWORD(v8) = 0;
      v6 = 0;
      v10 = 0;
      v9 = 5;
      v14 = @"book";
      goto LABEL_111;
    case 12:
      v31 = @"UIButtonBarSearch.png";
      if (a3)
      {
        v31 = @"UIButtonBarSearchLandscape.png";
      }

      v15 = v31;
      LODWORD(v8) = 0;
      v6 = 0;
      v10 = 0;
      v9 = 5;
      v14 = @"magnifyingglass";
      goto LABEL_111;
    case 13:
      v35 = @"UIButtonBarRefresh.png";
      if (a3)
      {
        v35 = @"UIButtonBarRefreshLandscape.png";
      }

      v15 = v35;
      LODWORD(v8) = 0;
      v6 = 0;
      v10 = 0;
      v9 = 5;
      v14 = @"arrow.clockwise";
      goto LABEL_111;
    case 14:
      v20 = @"UIButtonBarStop.png";
      if (a3)
      {
        v20 = @"UIButtonBarStopLandscape.png";
      }

      v15 = v20;
      LODWORD(v8) = 0;
      v6 = 0;
      v10 = 0;
      v9 = 5;
      goto LABEL_35;
    case 15:
      if (a4 == 5)
      {
        LODWORD(v8) = 0;
        v6 = 0;
        v10 = 0;
        v14 = @"camera";
        v9 = 5;
        v15 = @"UIButtonBarUCBCamera";
      }

      else
      {
        v42 = @"UIButtonBarCamera.png";
        if (a3)
        {
          v42 = @"UIButtonBarCameraSmall.png";
        }

        v15 = v42;
        LODWORD(v8) = 0;
        v6 = 0;
        v10 = 0;
        v9 = 5;
        v14 = @"camera";
      }

      goto LABEL_111;
    case 16:
      v26 = @"UIButtonBarTrash.png";
      if (a3)
      {
        v26 = @"UIButtonBarTrashLandscape.png";
      }

      v15 = v26;
      LODWORD(v8) = 0;
      v6 = 0;
      v10 = 0;
      v9 = 5;
      v14 = @"trash";
      goto LABEL_111;
    case 17:
      v34 = @"UIButtonBarPlay.png";
      if (a3)
      {
        v34 = @"UIButtonBarPlayLandscape.png";
      }

      v15 = v34;
      LODWORD(v8) = 0;
      v6 = 0;
      v10 = 0;
      v9 = 5;
      v14 = @"play.fill";
      goto LABEL_111;
    case 18:
      v36 = @"UIButtonBarPause.png";
      if (a3)
      {
        v36 = @"UIButtonBarPauseLandscape.png";
      }

      v15 = v36;
      LODWORD(v8) = 0;
      v6 = 0;
      v10 = 0;
      v9 = 5;
      v14 = @"pause.fill";
      goto LABEL_111;
    case 19:
      goto LABEL_111;
    case 20:
      v37 = @"UIButtonBarFastForward.png";
      if (a3)
      {
        v37 = @"UIButtonBarFastForwardLandscape.png";
      }

      v15 = v37;
      LODWORD(v8) = 0;
      v6 = 0;
      v10 = 0;
      v9 = 5;
      v14 = @"forward.fill";
      goto LABEL_111;
    case 21:
      v15 = 0;
      if ((_UISolariumEnabled() & 1) == 0)
      {
        goto LABEL_76;
      }

      LODWORD(v8) = 0;
      v9 = 5;
      v6 = 0;
      v10 = 0;
      v14 = @"arrow.uturn.backward";
      goto LABEL_111;
    case 22:
      v15 = 0;
      if (_UISolariumEnabled())
      {
        LODWORD(v8) = 0;
        v9 = 5;
        v6 = 0;
        v10 = 0;
        v14 = @"arrow.uturn.forward";
        goto LABEL_111;
      }

LABEL_76:
      v6 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      break;
    case 24:
      v6 = [UIButton _defaultImageNameForType:7 andState:0];
      if (_UISolariumEnabled() && (+[UIDevice currentDevice](UIDevice, "currentDevice"), v21 = objc_claimAutoreleasedReturnValue(), v22 = [v21 userInterfaceIdiom], v21, v22 != 6))
      {
        v10 = 0;
        v11 = 0;
      }

      else
      {
        v23 = +[UITraitCollection _fallbackTraitCollection];
        v24 = [v23 userInterfaceIdiom];

        v11 = [UIButton _defaultImageColorForType:7 andState:0 idiom:v24];
        v10 = [UIButton _defaultSymbolConfigurationForType:7 andState:0 compact:a3 idiom:v24];
      }

      v12 = 0;
      break;
    case 25:
      v15 = 0;
      LODWORD(v8) = 0;
      v6 = 0;
      v10 = 0;
      v9 = 5;
      v14 = @"apple.writing.tools";
      goto LABEL_111;
    default:
      v10 = 0;
      v11 = 0;
      v12 = 0;
      break;
  }

LABEL_108:
  v8 = 0;
  if (!(v12 | v6))
  {
    v15 = 0;
    v14 = 0;
    v6 = v11;
    goto LABEL_117;
  }

  v14 = v6;
  v9 = 5;
  v15 = v12;
  v13 = 0.0;
  v6 = v11;
LABEL_111:
  if (a2)
  {
    if (_UISolariumEnabled())
    {
      v43 = +[UITraitCollection _fallbackTraitCollection];
      v44 = [v43 userInterfaceIdiom];

      if (v44 == 3)
      {
        v45 = [UIImageSymbolConfiguration configurationWithTextStyle:@"UICTFontTextStyleCallout"];
        v46 = [UIImageSymbolConfiguration configurationWithWeight:v9];
        v47 = [v45 configurationByApplyingConfiguration:v46];

        v10 = v47;
      }
    }

    v48 = _BarButtonCachedSystemImageWithName(v14, v15, v10, v6, v8, 0.0, v13, 0.0, v7);
    v49 = *a2;
    *a2 = v48;

    v8 = *a2 != 0;
  }

  else
  {
    v8 = 1;
  }

LABEL_117:

  return v8;
}

void sub_188C0D28C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id static UIBarButtonItemGroup.fixedGroup(representativeItem:items:)(uint64_t a1)
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_188C0D370();
  v3 = sub_18A4A7518();
  v4 = [ObjCClassFromMetadata fixedGroupWithRepresentativeItem:a1 items:v3];

  return v4;
}

unint64_t sub_188C0D370()
{
  result = qword_1ED48E8C0;
  if (!qword_1ED48E8C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED48E8C0);
  }

  return result;
}

id _logFilter(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = ___logFilter_block_invoke;
  v7[3] = &unk_1E7115F20;
  v8 = v3;
  v9 = a1;
  v4 = v3;
  v5 = _Block_copy(v7);

  return v5;
}

void sub_188C0D764(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void *sub_188C0D9A4(void *a1)
{
  if ([a1 isSpaceItem])
  {
    return 0;
  }

  result = [a1 buttonGroup];
  if (!result)
  {
    return result;
  }

  v4 = *(v1 + OBJC_IVAR____TtCC5UIKit19NavigationButtonBar11GroupLayout_group);
  v5 = result;

  if (v5 != v4)
  {
    return 0;
  }

  v6 = OBJC_IVAR____TtCC5UIKit19NavigationButtonBar11GroupLayout_itemLayouts;
  swift_beginAccess();
  v7 = *(v1 + v6);
  v8 = *(v7 + 16);
  if (!v8)
  {
    return 0;
  }

  v9 = (v7 + 40);
  v10 = (v7 + 40);
  while (1)
  {
    v12 = *v10;
    v10 += 16;
    v11 = v12;
    if ((v12 & 0x80000000) == 0)
    {
      v13 = *(v9 - 1);
      if (v13[2] == a1)
      {
        break;
      }
    }

    v9 = v10;
    if (!--v8)
    {
      return 0;
    }
  }

  v14 = v13;
  sub_188BB803C(v13, v11);
  return v14;
}

void *AudioToolboxLibrary()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!AudioToolboxLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __AudioToolboxLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E7108008;
    v6 = 0;
    AudioToolboxLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = AudioToolboxLibraryCore_frameworkLibrary;
  if (!AudioToolboxLibraryCore_frameworkLibrary)
  {
    v0 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *AudioToolboxLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"_UIFeedbackSystemSoundEngine.m" lineNumber:23 description:{@"%s", v4[0]}];

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

void *AudioToolboxLibrary_0()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!AudioToolboxLibraryCore_frameworkLibrary_0)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __AudioToolboxLibraryCore_block_invoke_0;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E7108D90;
    v6 = 0;
    AudioToolboxLibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  v0 = AudioToolboxLibraryCore_frameworkLibrary_0;
  if (!AudioToolboxLibraryCore_frameworkLibrary_0)
  {
    v0 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *AudioToolboxLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"_UIFocusSoundGenerator.m" lineNumber:29 description:{@"%s", v4[0]}];

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

void *AudioToolboxLibrary_1()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!AudioToolboxLibraryCore_frameworkLibrary_1)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __AudioToolboxLibraryCore_block_invoke_1;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E710CC00;
    v6 = 0;
    AudioToolboxLibraryCore_frameworkLibrary_1 = _sl_dlopen();
  }

  v0 = AudioToolboxLibraryCore_frameworkLibrary_1;
  if (!AudioToolboxLibraryCore_frameworkLibrary_1)
  {
    v0 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *AudioToolboxLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"UIDevice.m" lineNumber:93 description:{@"%s", v4[0]}];

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

void __getCHHapticEngineClass_block_invoke(uint64_t a1)
{
  CoreHapticsLibrary_0();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("CHHapticEngine");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCHHapticEngineClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getCHHapticEngineClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"_UIFeedbackCoreHapticsEngineUtilities.h" lineNumber:20 description:{@"Unable to find class %s", "CHHapticEngine"}];

    __break(1u);
  }
}

Class __getCHHapticEngineClass_block_invoke_0(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!qword_1ED499EF0)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __CoreHapticsLibraryCore_block_invoke_2;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E7107E28;
    v8 = 0;
    qword_1ED499EF0 = _sl_dlopen();
  }

  if (!qword_1ED499EF0)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *CoreHapticsLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"_UIFeedbackCoreHapticsEngineUtilities.h" lineNumber:18 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("CHHapticEngine");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getCHHapticEngineClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"_UIFeedbackCoreHapticsEngineUtilities.h" lineNumber:20 description:{@"Unable to find class %s", "CHHapticEngine"}];

LABEL_10:
    __break(1u);
  }

  qword_1ED499EE8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void __getCHHapticEngineClass_block_invoke_1(uint64_t a1)
{
  CoreHapticsLibrary_1();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("CHHapticEngine");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCHHapticEngineClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getCHHapticEngineClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"_UIFeedbackCoreHapticsEngineUtilities.h" lineNumber:20 description:{@"Unable to find class %s", "CHHapticEngine"}];

    __break(1u);
  }
}

__CFString *stringForFeedbackEngineState(unint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  if (a1 >= 6)
  {
    if (os_variant_has_internal_diagnostics())
    {
      v5 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        *buf = 134217984;
        v7 = a1;
        _os_log_fault_impl(&dword_188A29000, v5, OS_LOG_TYPE_FAULT, "Unknown feedback engine state: %ld", buf, 0xCu);
      }
    }

    else
    {
      v3 = *(__UILogGetCategoryCachedImpl("Assert", &stringForFeedbackEngineState___s_category) + 8);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        v7 = a1;
        _os_log_impl(&dword_188A29000, v3, OS_LOG_TYPE_ERROR, "Unknown feedback engine state: %ld", buf, 0xCu);
      }
    }

    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown state: %ld)", a1];
  }

  else
  {
    v2 = off_1E7107E68[a1];
  }

  return v2;
}

uint64_t _engineClassSupportsAllIndividualFeedbacks(void *a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = a2;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        if ([a1 _supportsPlayingIndividualFeedback:{*(*(&v12 + 1) + 8 * i), v12}])
        {
          v8 = [a1 sharedEngine];
          v9 = [v8 isEnabled];

          if (v9)
          {
            continue;
          }
        }

        v10 = 0;
        goto LABEL_13;
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      v10 = 1;
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v10 = 1;
  }

LABEL_13:

  return v10;
}

id _coreHapticsEventTypeForEffectiveEventType(uint64_t a1, int a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if (a1 <= 20308)
  {
    if (a1 <= 15712)
    {
      if ((a1 - 8021) < 3 || (a1 - 11093) < 3)
      {
        goto LABEL_31;
      }

      v3 = -14165;
      goto LABEL_10;
    }

    if (a1 > 16480)
    {
      if ((a1 - 17237) < 3)
      {
        goto LABEL_31;
      }

      if (a1 == 16481)
      {
        goto LABEL_29;
      }

      v5 = 16737;
    }

    else
    {
      if (a1 == 15713 || a1 == 15969)
      {
        goto LABEL_29;
      }

      v5 = 16225;
    }

    if (a1 != v5)
    {
      goto LABEL_41;
    }

    goto LABEL_29;
  }

  if (a1 > 29524)
  {
    if (a1 <= 32554)
    {
      if ((a1 - 29525) < 3)
      {
        goto LABEL_31;
      }

      if (a1 != 32512)
      {
        if (a1 == 32513)
        {
          v4 = getCHHapticEventTypeAudioContinuous();
          goto LABEL_32;
        }

        goto LABEL_41;
      }

LABEL_40:
      v4 = getCHHapticEventTypeAudioCustom();
      goto LABEL_32;
    }

    if (a1 <= 32556)
    {
      if (a1 == 32555)
      {
        getCHHapticEventTypeAudioClick();
      }

      else
      {
        getCHHapticEventTypeWheelsOfTime();
      }
      v4 = ;
      goto LABEL_32;
    }

    if (a1 == 32639)
    {
      goto LABEL_40;
    }

    if (a1 != 32610)
    {
      v6 = 32557;
LABEL_39:
      if (a1 != v6)
      {
        goto LABEL_41;
      }

      goto LABEL_40;
    }

LABEL_29:
    v4 = getCHHapticEventTypeHapticContinuous();
    goto LABEL_32;
  }

  if (a1 > 26452)
  {
    if ((a1 - 26453) < 3)
    {
      goto LABEL_31;
    }

    v6 = 29485;
    goto LABEL_39;
  }

  if ((a1 - 20309) < 3)
  {
LABEL_31:
    v4 = getCHHapticEventTypeHapticTransient();
    goto LABEL_32;
  }

  v3 = -23381;
LABEL_10:
  if ((a1 + v3) < 3)
  {
    goto LABEL_31;
  }

LABEL_41:
  if (a2)
  {
    if ((_UIFeedbackLoggingDisabled & 1) == 0)
    {
      v8 = *(__UILogGetCategoryCachedImpl("Feedback", &_coreHapticsEventTypeForEffectiveEventType___s_category) + 8);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = 134217984;
        v10 = a1;
        _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_ERROR, "Cannot convert UIFeedbackHapticEventType (%ld) to CHHapticEventType", &v9, 0xCu);
      }
    }
  }

  v4 = 0;
LABEL_32:

  return v4;
}

id _domainWithCategoryAndSuffix(void *a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a2;
  v7 = a1;
  if ([v5 length])
  {
    v14 = v7;
    v15 = v6;
    v16 = v5;
    v8 = MEMORY[0x1E695DEC8];
    v9 = &v14;
    v10 = 3;
  }

  else
  {
    v17 = v7;
    v18 = v6;
    v8 = MEMORY[0x1E695DEC8];
    v9 = &v17;
    v10 = 2;
  }

  v11 = [v8 arrayWithObjects:v9 count:{v10, v14, v15, v16, v17, v18, v19}];

  v12 = [v11 componentsJoinedByString:@"."];

  return v12;
}

void sub_188C0F710(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _UIFeedbackEngineSupportsAll()
{
  if ((_UIInternalPreferenceUsesDefault_0(&_MergedGlobals_933, @"EnableFeedbackVisualization") & 1) != 0 || !byte_1ED48ADA4)
  {
    return (byte_1ED48ADAC != 0) & ~_UIInternalPreferenceUsesDefault_0(&dword_1ED48ADA8, @"EnableStatisticOnAllDevices");
  }

  else
  {
    return 1;
  }
}

uint64_t ___processHasBackgroundFeedbackEntitlement_block_invoke()
{
  result = UISelfHasEntitlement(@"com.apple.private.allow-background-haptics");
  byte_1ED499E51 = result;
  return result;
}

__CFString *stringForActivationStyle(unint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  if (a1 >= 3)
  {
    if (os_variant_has_internal_diagnostics())
    {
      v5 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        *buf = 134217984;
        v7 = a1;
        _os_log_fault_impl(&dword_188A29000, v5, OS_LOG_TYPE_FAULT, "Unknown feedback generator activation style: %ld", buf, 0xCu);
      }
    }

    else
    {
      v3 = *(__UILogGetCategoryCachedImpl("Assert", &stringForActivationStyle___s_category) + 8);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        v7 = a1;
        _os_log_impl(&dword_188A29000, v3, OS_LOG_TYPE_ERROR, "Unknown feedback generator activation style: %ld", buf, 0xCu);
      }
    }

    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown style: %ld)", a1];
  }

  else
  {
    v2 = off_1E7107070[a1];
  }

  return v2;
}

unint64_t sub_188C11B34()
{
  result = qword_1EA92FD40;
  if (!qword_1EA92FD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA92FD40);
  }

  return result;
}

void sub_188C11C54(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    [Strong setOverrideTraitCollection:a2 forChildViewController:a3];
  }

  [a3 updateTraitsIfNeeded];
  if (a4)
  {
    swift_beginAccess();
    v9 = swift_unknownObjectWeakLoadStrong();
    if (v9)
    {
      v10 = v9;
      [v9 setNeedsStatusBarAppearanceUpdate];
    }
  }
}

uint64_t sub_188C11D34(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  sub_188C11DE8(a1, v2 + v4);
  swift_endAccess();
  if (sub_18A4A46F8())
  {
    swift_getObjectType();
    sub_18A4A5538();
    sub_18A4A58B8();
    swift_unknownObjectRelease();
  }

  return sub_188A3F5FC(a1, &qword_1EA936FE0);
}

uint64_t sub_188C11DE8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936FE0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t UIMutableTraits.userInterfaceStyle.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = a1;
  v5 = *(a3 + 376);
  v6 = sub_188AFC388(&unk_1ED4910B0, type metadata accessor for UIUserInterfaceStyle);
  return v5(&v8, &type metadata for UITraitUserInterfaceStyle, &type metadata for UITraitUserInterfaceStyle, &protocol witness table for UITraitUserInterfaceStyle, v6, a2, a3);
}

uint64_t UIMutableTraits.layoutDirection.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = a1;
  v5 = *(a3 + 376);
  v6 = sub_188AFC388(&qword_1ED490C60, type metadata accessor for UITraitEnvironmentLayoutDirection);
  return v5(&v8, &type metadata for UITraitLayoutDirection, &type metadata for UITraitLayoutDirection, &protocol witness table for UITraitLayoutDirection, v6, a2, a3);
}

uint64_t sub_188C11FD0(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t))
{
  [*v6 _setCGFloatValue_forTraitToken_];

  return swift_unknownObjectRelease();
}

uint64_t UIMutableTraits.horizontalSizeClass.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = a1;
  v5 = *(a3 + 376);
  v6 = sub_188AFC388(&qword_1ED491048, type metadata accessor for UIUserInterfaceSizeClass);
  return v5(&v8, &type metadata for UITraitHorizontalSizeClass, &type metadata for UITraitHorizontalSizeClass, &protocol witness table for UITraitHorizontalSizeClass, v6, a2, a3);
}

id sub_188C1212C(uint64_t a1, uint64_t a2)
{
  result = (*(a2 + 8))();
  if (!result)
  {
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result)
    {
      return [result _viewControllerForAncestor];
    }
  }

  return result;
}

uint64_t UIMutableTraits.preferredContentSizeCategory.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = a1;
  v5 = *(a3 + 304);
  v6 = sub_188AFC388(&unk_1ED490C98, type metadata accessor for UIContentSizeCategory);
  return v5(&v8, &type metadata for UITraitPreferredContentSizeCategory, &type metadata for UITraitPreferredContentSizeCategory, &protocol witness table for UITraitPreferredContentSizeCategory, v6, a2, a3);
}

uint64_t sub_188C122B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_getAssociatedTypeWitness();
  v14[3] = swift_getAssociatedTypeWitness();
  __swift_allocate_boxed_opaque_existential_0(v14);
  swift_getAssociatedTypeWitness();
  sub_18A4A74E8();
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
  [*v5 _setObject_forTraitToken_];
  swift_unknownObjectRelease();
  return swift_unknownObjectRelease();
}

uint64_t sub_188C1247C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_18A4A7288();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t UIMutableTraits.displayGamut.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = a1;
  v5 = *(a3 + 376);
  v6 = sub_188AFC388(&qword_1ED490CB0, type metadata accessor for UIDisplayGamut);
  return v5(&v8, &type metadata for UITraitDisplayGamut, &type metadata for UITraitDisplayGamut, &protocol witness table for UITraitDisplayGamut, v6, a2, a3);
}

uint64_t UIMutableTraits.accessibilityContrast.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = a1;
  v5 = *(a3 + 376);
  v6 = sub_188AFC388(&unk_1ED490C88, type metadata accessor for UIAccessibilityContrast);
  return v5(&v8, &type metadata for UITraitAccessibilityContrast, &type metadata for UITraitAccessibilityContrast, &protocol witness table for UITraitAccessibilityContrast, v6, a2, a3);
}

uint64_t UIMutableTraits.verticalSizeClass.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = a1;
  v5 = *(a3 + 376);
  v6 = sub_188AFC388(&qword_1ED491048, type metadata accessor for UIUserInterfaceSizeClass);
  return v5(&v8, &type metadata for UITraitVerticalSizeClass, &type metadata for UITraitVerticalSizeClass, &protocol witness table for UITraitVerticalSizeClass, v6, a2, a3);
}

uint64_t UIMutableTraits.userInterfaceLevel.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = a1;
  v5 = *(a3 + 376);
  v6 = sub_188AFC388(qword_1ED4906D0, type metadata accessor for UIUserInterfaceLevel);
  return v5(&v8, &type metadata for UITraitUserInterfaceLevel, &type metadata for UITraitUserInterfaceLevel, &protocol witness table for UITraitUserInterfaceLevel, v6, a2, a3);
}

void sub_188C12820()
{
  v9.receiver = v0;
  v9.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v9, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC5UIKit27NavigationBarLargeTitleView_largeTitleView];
  v2 = [v1 superview];
  if (v2)
  {
    v3 = v2;
    sub_188AF7A44();
    v4 = v0;
    v5 = sub_18A4A7C88();

    if (v5)
    {
      [v4 bounds];
      MaxY = CGRectGetMaxY(v10);
      v7 = OBJC_IVAR____TtC5UIKit27NavigationBarLargeTitleView_preferredHeight;
      v8 = MaxY - *&v4[OBJC_IVAR____TtC5UIKit27NavigationBarLargeTitleView_preferredHeight];
      [v4 bounds];
      [v1 setFrame_];
    }
  }
}

uint64_t sub_188C12A20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  swift_getAssociatedTypeWitness();
  sub_18A4A74E8();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(*v5 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = [(_UITraitOverrides *)*(*v6 + 16) _swiftImplCopy];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA932210);
    v12 = swift_allocObject();
    *(v12 + 16) = v11;

    *v6 = v12;
  }

  v13 = v11;
  [v13 _setNSIntegerValue_forTraitToken_];

  return swift_unknownObjectRelease();
}

void sub_188C12B90(_BYTE *a1)
{
  if (a1 && a1[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_active] == 1)
  {
    v3 = v1;
    a1[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_active] = 0;
    swift_beginAccess();
    v5 = a1;
    v6 = sub_188C12D08((v3 + 392), v5);
    v7 = *(v3 + 392);
    if (v7 >> 62)
    {
      v2 = v6;
      v8 = sub_18A4A7F68();
      v6 = v2;
      if (v8 >= v2)
      {
LABEL_5:
        sub_188C13030(v6, v8);
        swift_endAccess();
        swift_beginAccess();
        v5 = v5;
        v2 = sub_188C12D08((v3 + 400), v5);

        v9 = *(v3 + 400);
        if (!(v9 >> 62))
        {
          v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v10 >= v2)
          {
LABEL_7:
            sub_188C13030(v2, v10);
            swift_endAccess();

            *(v3 + 40) = 0;
            return;
          }

LABEL_12:
          __break(1u);
          swift_endAccess();
          __break(1u);
          return;
        }

LABEL_11:
        v10 = sub_18A4A7F68();
        if (v10 >= v2)
        {
          goto LABEL_7;
        }

        goto LABEL_12;
      }
    }

    else
    {
      v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v8 >= v6)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

uint64_t sub_188C12D08(unint64_t *a1, uint64_t a2)
{
  v7 = *a1;
  v8 = sub_188C12F2C(*a1, a2);
  v10 = v8;
  if (v2)
  {
    return v10;
  }

  if (v9)
  {
    if (v7 >> 62)
    {
      return sub_18A4A7F68();
    }

    return *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = v8 + 1;
  if (__OFADD__(v8, 1))
  {
    __break(1u);
    goto LABEL_8;
  }

  while (1)
  {
    if (v7 >> 62)
    {
      if (v11 == sub_18A4A7F68())
      {
        return v10;
      }
    }

    else if (v11 == *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v10;
    }

    if ((v7 & 0xC000000000000001) == 0)
    {
      break;
    }

    v21 = sub_188E4A488(v11, v7);
    swift_unknownObjectRelease();
    if (v21 != a2)
    {
      if (v10 != v11)
      {
        v3 = sub_188E4A488(v10, v7);
        v17 = sub_188E4A488(v11, v7);
        goto LABEL_21;
      }

LABEL_9:
      v14 = __OFADD__(v10++, 1);
      if (v14)
      {
        goto LABEL_42;
      }
    }

LABEL_10:
    v14 = __OFADD__(v11++, 1);
    if (v14)
    {
      goto LABEL_41;
    }
  }

  if ((v11 & 0x8000000000000000) == 0)
  {
    v15 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11 >= v15)
    {
      goto LABEL_40;
    }

    v16 = *(v7 + 32 + 8 * v11);
    if (v16 != a2)
    {
      if (v10 != v11)
      {
        if ((v10 & 0x8000000000000000) != 0)
        {
          goto LABEL_43;
        }

        if (v10 >= v15)
        {
          goto LABEL_44;
        }

        v3 = *(v7 + 32 + 8 * v10);
        v17 = v16;
LABEL_21:
        v18 = v17;
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v7 & 0x8000000000000000) != 0 || (v7 & 0x4000000000000000) != 0)
        {
          v7 = sub_188B8AD14(v7);
          v19 = (v7 >> 62) & 1;
        }

        else
        {
          LODWORD(v19) = 0;
        }

        v4 = v7 & 0xFFFFFFFFFFFFFF8;
        v20 = *((v7 & 0xFFFFFFFFFFFFFF8) + 8 * v10 + 0x20);
        *((v7 & 0xFFFFFFFFFFFFFF8) + 8 * v10 + 0x20) = v18;

        if ((v7 & 0x8000000000000000) != 0 || v19)
        {
          v7 = sub_188B8AD14(v7);
          v4 = v7 & 0xFFFFFFFFFFFFFF8;
          if ((v11 & 0x8000000000000000) != 0)
          {
LABEL_37:
            __break(1u);
            return v10;
          }
        }

        else if ((v11 & 0x8000000000000000) != 0)
        {
          goto LABEL_37;
        }

        if (v11 >= *(v4 + 16))
        {
          goto LABEL_45;
        }

LABEL_8:
        v12 = v4 + 8 * v11;
        v13 = *(v12 + 32);
        *(v12 + 32) = v3;

        *a1 = v7;
      }

      goto LABEL_9;
    }

    goto LABEL_10;
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
  return sub_18A4A7F68();
}

unint64_t sub_188C12F2C(unint64_t a1, uint64_t a2)
{
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_16:
    v11 = a1;
    v12 = a2;
    v13 = sub_18A4A7F68();
    a2 = v12;
    v3 = v13;
    a1 = v11;
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  v5 = a1 & 0xC000000000000001;
  while (v3 != v4)
  {
    if (v5)
    {
      v7 = a1;
      v8 = a2;
      v9 = sub_188E4A488(v4, a1);
      swift_unknownObjectRelease();
      a1 = v7;
      a2 = v8;
      if (v9 == v8)
      {
        return v4;
      }
    }

    else
    {
      if (v4 >= *(v2 + 16))
      {
        __break(1u);
LABEL_15:
        __break(1u);
        goto LABEL_16;
      }

      if (*(a1 + 8 * v4 + 32) == a2)
      {
        return v4;
      }
    }

    if (__OFADD__(v4++, 1))
    {
      goto LABEL_15;
    }
  }

  return 0;
}

id _pasteboardCacheQueue()
{
  if (qword_1ED49A7A0 != -1)
  {
    dispatch_once(&qword_1ED49A7A0, &__block_literal_global_318_0);
  }

  v1 = qword_1ED49A798;

  return v1;
}

void ___pasteboardCacheQueue_block_invoke()
{
  v0 = dispatch_queue_create("com.apple.UIKit.pasteboard.cache-queue", 0);
  v1 = qword_1ED49A798;
  qword_1ED49A798 = v0;
}

id _pasteboardCacheQueue_pasteboardForName(void *a1)
{
  v1 = a1;
  v2 = _pasteboardCacheQueue_PasteboardNameToPasteboardMap();
  v3 = [v2 objectForKeyedSubscript:v1];

  return v3;
}

id _pasteboardCacheQueue_PasteboardNameToPasteboardMap()
{
  if (qword_1ED49A7F0 != -1)
  {
    dispatch_once(&qword_1ED49A7F0, &__block_literal_global_349_1);
  }

  v1 = qword_1ED49A7E8;

  return v1;
}

id _pasteboardCacheQueue_existingItemCollectionWithName(void *a1, void *a2)
{
  v51 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if ((([UIApp _isActivating] & 1) != 0 || objc_msgSend(UIApp, "_isResigningActive")) && objc_msgSend(v3, "isEqualToString:", @"com.apple.UIKit.pboard.general"))
  {
    v4 = _getTemporaryLocalGeneralPasteboard(a2);
    goto LABEL_34;
  }

  if ([v3 length])
  {
    v34 = a2;
    v35 = v3;
    v5 = _pasteboardCacheQueue_PasteboardNametoItemCollectionMap();
    v37 = [MEMORY[0x1E695DF70] array];
    v39 = [MEMORY[0x1E695DF00] date];
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v6 = v5;
    v7 = [v6 countByEnumeratingWithState:&v41 objects:v49 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v42;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v42 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v41 + 1) + 8 * i);
          v12 = [v6 objectForKeyedSubscript:v11];
          v13 = [v12 expirationDate];
          if (v13)
          {
            v14 = v13;
            v15 = [v12 expirationDate];
            v16 = [v15 compare:v39];

            if (v16 == -1)
            {
              [v37 addObject:v11];
            }
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v41 objects:v49 count:16];
      }

      while (v8);
    }

    [v6 removeObjectsForKeys:v37];
    v17 = _pasteboardCacheQueue_PasteboardNameToPinnedItemCollectionMap();
    v36 = [MEMORY[0x1E695DF70] array];
    v38 = [MEMORY[0x1E695DF00] date];
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v18 = v17;
    v19 = [v18 countByEnumeratingWithState:&v45 objects:v50 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v46;
      do
      {
        for (j = 0; j != v20; ++j)
        {
          if (*v46 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v45 + 1) + 8 * j);
          v24 = [v18 objectForKeyedSubscript:v23];
          v25 = [v24 expirationDate];
          if (v25)
          {
            v26 = v25;
            v27 = [v24 expirationDate];
            v28 = [v27 compare:v38];

            if (v28 == -1)
            {
              [v36 addObject:v23];
              _pasteboardCacheQueue_incrementCountOffsetForName(v23);
            }
          }
        }

        v20 = [v18 countByEnumeratingWithState:&v45 objects:v50 count:16];
      }

      while (v20);
    }

    [v18 removeObjectsForKeys:v36];
    v3 = v35;
    v29 = _pasteboardCacheQueue_itemCollectionForName(v35);
    if (v29)
    {
      v4 = v29;
    }

    else
    {
      v31 = _serverConnection();
      v40 = 0;
      v4 = [v31 pasteboardWithName:v35 createIfNeeded:0 authenticationBlock:&__block_literal_global_352_0 dataOwnerBlock:&__block_literal_global_355_2 error:&v40];
      v30 = v40;

      if (v30 || !v4)
      {
        if (v34 && v30)
        {
          v33 = v30;
          *v34 = v30;
        }

        goto LABEL_33;
      }

      _pasteboardCacheQueue_setItemCollectionForName(v35, v4);
    }

    v30 = 0;
  }

  else
  {
    v30 = 0;
    v4 = 0;
  }

LABEL_33:

LABEL_34:

  return v4;
}

id _pasteboardCacheQueue_PasteboardNametoItemCollectionMap()
{
  if (qword_1ED49A790 != -1)
  {
    dispatch_once(&qword_1ED49A790, &__block_literal_global_316);
  }

  v1 = qword_1ED49A788;

  return v1;
}

id _pasteboardCacheQueue_PasteboardNameToPinnedItemCollectionMap()
{
  if (qword_1ED49A7D0 != -1)
  {
    dispatch_once(&qword_1ED49A7D0, &__block_literal_global_345_1);
  }

  v1 = qword_1ED49A7C8;

  return v1;
}

id _pasteboardCacheQueue_itemCollectionForName(void *a1)
{
  v1 = a1;
  v2 = _pasteboardCacheQueue_PasteboardNameToPinnedItemCollectionMap();
  v3 = [v2 objectForKeyedSubscript:v1];

  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v5 = _pasteboardCacheQueue_PasteboardNametoItemCollectionMap();
    v4 = [v5 objectForKeyedSubscript:v1];
  }

  return v4;
}

id _serverConnection()
{
  if (qword_1ED49A7B0 != -1)
  {
    dispatch_once(&qword_1ED49A7B0, &__block_literal_global_321_0);
  }

  v1 = qword_1ED49A7A8;

  return v1;
}

void ___serverConnection_block_invoke()
{
  v0 = [MEMORY[0x1E69BC830] defaultConnection];
  v1 = qword_1ED49A7A8;
  qword_1ED49A7A8 = v0;

  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  v3 = *MEMORY[0x1E69BC870];
  v4 = [MEMORY[0x1E696ADC8] mainQueue];
  v5 = [v2 addObserverForName:v3 object:0 queue:v4 usingBlock:&__block_literal_global_326];

  v6 = _notificationStateQueue();
  dispatch_sync(v6, &__block_literal_global_330);

  v7 = [MEMORY[0x1E696AD88] defaultCenter];
  v8 = [v7 addObserverForName:@"UIApplicationProtectedDataWillBecomeUnavailable" object:0 queue:0 usingBlock:&__block_literal_global_332];

  v10 = [MEMORY[0x1E696AD88] defaultCenter];
  v9 = [v10 addObserverForName:@"UIApplicationProtectedDataDidBecomeAvailable" object:0 queue:0 usingBlock:&__block_literal_global_336_1];
}

id _notificationStateQueue()
{
  if (qword_1ED49A7C0 != -1)
  {
    dispatch_once(&qword_1ED49A7C0, &__block_literal_global_342);
  }

  v1 = qword_1ED49A7B8;

  return v1;
}

void ___notificationStateQueue_block_invoke()
{
  v0 = dispatch_queue_create("com.apple.UIKit.pasteboardNotificationStateQueue", 0);
  v1 = qword_1ED49A7B8;
  qword_1ED49A7B8 = v0;
}

uint64_t ___serverConnection_block_invoke_5()
{
  result = [MEMORY[0x1E69BC830] beginListeningToPasteboardChangeNotifications];
  _notificationStateQueue_notificationState = result;
  return result;
}

void _pasteboardCacheQueue_setItemCollectionForName(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = _pasteboardCacheQueue_PasteboardNametoItemCollectionMap();
  [v5 setObject:v3 forKeyedSubscript:v4];
}

void recursivelyObserveChildrenState(void *a1, void *a2, char a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __recursivelyObserveChildrenState_block_invoke;
  aBlock[3] = &unk_1E70FE898;
  v24 = a3;
  v7 = v5;
  v23 = v7;
  v8 = _Block_copy(aBlock);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = [v6 children];
  v9 = [obj countByEnumeratingWithState:&v18 objects:v25 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v18 + 1) + 8 * i);
        v15[0] = MEMORY[0x1E69E9820];
        v15[1] = 3221225472;
        v15[2] = __recursivelyObserveChildrenState_block_invoke_2;
        v15[3] = &unk_1E70FE8C0;
        v16 = v7;
        v17 = a3;
        [v13 _acceptMenuVisit:v15 commandVisit:v8 actionVisit:v8 deferredElementVisit:0];
      }

      v10 = [obj countByEnumeratingWithState:&v18 objects:v25 count:16];
    }

    while (v10);
  }
}

uint64_t __recursivelyObserveChildrenState_block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (*(a1 + 40) == 1)
  {
    return [a2 _addStateObserver:v2];
  }

  else
  {
    return [a2 _removeStateObserver:v2];
  }
}

void _UIMenuStateObserverableLeafAddObserver(void *a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = [v3 _getStateObservers];
  if (!v5)
  {
    v5 = [MEMORY[0x1E696AE08] weakObjectsPointerArray];
    [v3 _setStateObservers:v5];
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    while (2)
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        if (*(*(&v11 + 1) + 8 * v10) == v4)
        {

          goto LABEL_13;
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  [v6 addPointer:{v4, v11}];
LABEL_13:
}

void recursivelyPopulateSelectedElements(void *a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  obj = [a1 children];
  v4 = [obj countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    do
    {
      v7 = 0;
      do
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v14 + 1) + 8 * v7);
        v12[0] = MEMORY[0x1E69E9820];
        v12[1] = 3221225472;
        v12[2] = __recursivelyPopulateSelectedElements_block_invoke;
        v12[3] = &unk_1E70FE820;
        v13 = v3;
        v10[0] = MEMORY[0x1E69E9820];
        v10[1] = 3221225472;
        v10[2] = __recursivelyPopulateSelectedElements_block_invoke_2;
        v10[3] = &unk_1E70FE8E8;
        v11 = v13;
        [v8 _acceptMenuVisit:v12 leafVisit:v10];

        ++v7;
      }

      while (v5 != v7);
      v5 = [obj countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }
}

void __recursivelyPopulateSelectedElements_block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 state] == 1)
  {
    [*(a1 + 32) addObject:v3];
  }
}

void __UISegmentedControlStyleProviderForIdiom_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = _UISolariumEnabled();
  if (v1 != 3 && (v2 & 1) == 0)
  {
    dyld_program_sdk_at_least();
  }

  v3 = objc_opt_new();
  v4 = qword_1ED497508;
  qword_1ED497508 = v3;
}

double segmentBarHeight(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  [a1 _defaultHeightForTraitCollection:a3 size:a4];
  v9 = v8;
  v10 = [v7 backgroundImageForState:0 isMini:0 withFallback:1];

  if (v10)
  {
    [v10 capInsets];
    v12 = v11;
    v14 = v13;
    [v10 size];
    v9 = v15;
    if (v12 != 0.0 || v14 != 0.0)
    {
      [v10 alignmentRectInsets];
      v9 = v9 + v16 + v17;
    }
  }

  return v9;
}

id UISegmentedControlStyleProviderForIdiom(void *a1, uint64_t a2)
{
  if (os_variant_has_internal_diagnostics())
  {
    if (!a1)
    {
      v9 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_188A29000, v9, OS_LOG_TYPE_FAULT, "No segmented control class provided for visual style provider lookup.", buf, 2u);
      }
    }
  }

  else if (!a1)
  {
    v10 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED497510) + 8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_188A29000, v10, OS_LOG_TYPE_ERROR, "No segmented control class provided for visual style provider lookup.", buf, 2u);
    }
  }

  if (objc_opt_respondsToSelector())
  {
    v4 = [a1 __styleProviderForIdiom:a2];
    if (v4)
    {
      goto LABEL_10;
    }
  }

  v5 = qword_1ED4974C8;
  if (!qword_1ED4974C8 || ([MEMORY[0x1E696AD98] numberWithInteger:a2], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "objectForKeyedSubscript:", v6), v7 = objc_claimAutoreleasedReturnValue(), v6, !v7))
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __UISegmentedControlStyleProviderForIdiom_block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = a2;
    if (qword_1ED497518 != -1)
    {
      dispatch_once(&qword_1ED497518, block);
    }

    v4 = qword_1ED497508;
LABEL_10:
    v7 = v4;
  }

  return v7;
}

id sub_188C1759C(uint64_t a1, unint64_t a2, char a3, double a4)
{
  v5 = v4;
  v10 = type metadata accessor for _Glass._GlassVariant(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v30 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = v30 - v17;
  if (a3)
  {
    v31 = v15;
    sub_188AFE79C(a1, v15);
    sub_188AD8C44(v15, v18, type metadata accessor for _Glass._GlassVariant);
    v19 = sub_18A4A3118();
    v30[3] = v30;
    v30[0] = *(v19 - 8);
    v20 = *(v30[0] + 64);
    MEMORY[0x1EEE9AC00](v19);
    v21 = (v20 + 15) & 0xFFFFFFFFFFFFFFF0;
    v30[2] = v30;
    MEMORY[0x1EEE9AC00](v22);
    v32 = a2;
    v23 = sub_18A4A30D8();
    v30[1] = v30;
    MEMORY[0x1EEE9AC00](v23);
    v34 = v12;
    sub_18A4A2F08();
    sub_188B647BC(v30 - v21, v30 - v21);
    v33 = v10;
    v24 = v30[0];
    v35 = v5;
    v25 = *(v30[0] + 8);
    v25(v30 - v21, v19);
    v26 = (v25)(v30 - v21, v19);
    v27 = MEMORY[0x1EEE9AC00](v26);
    (*(v24 + 16))(v30 - v21, v30 - v21, v19, v27);
    a2 = v32;
    sub_18A4A2F18();
    v12 = v34;
    v25(v30 - v21, v19);
    v10 = v33;
    v5 = v35;
    sub_188B0CD70(v31, type metadata accessor for _Glass._GlassVariant);
  }

  else
  {
    sub_188AFE79C(a1, v30 - v17);
  }

  if (a2 >= 4)
  {
    LOBYTE(a2) = 0;
  }

  sub_188AD8C44(v18, v12, type metadata accessor for _Glass._GlassVariant);
  v12[*(v10 + 24)] = a2;
  v38 = type metadata accessor for _Glass(0);
  v39 = &protocol witness table for _Glass;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v37);
  _Glass.init(_:smoothness:)(v12, boxed_opaque_existential_0, a4);
  sub_188B0CD70(v18, type metadata accessor for _Glass._GlassVariant);
  sub_188A5EBAC(&v37, v5 + OBJC_IVAR____UIViewGlass__underlyingMaterial);
  v36.receiver = v5;
  v36.super_class = _UIViewGlass;
  return objc_msgSendSuper2(&v36, sel_init);
}

id __scrollViewAncestorOfView(id a1, char a2)
{
  if (a1)
  {
    v4 = a1;
    while (![v4 __isKindOfUIScrollView] || (a2 & 1) == 0 && (objc_msgSend(v4, "_forwardsToParentScroller") & 1) != 0)
    {
      a1 = [v4 superview];
      v4 = a1;
      if (!a1)
      {
        goto LABEL_9;
      }
    }

    a1 = v4;
LABEL_9:
    v2 = vars8;
  }

  return a1;
}

void _setTagForView(void *a1, uint64_t a2)
{
  v3 = a1;
  if (v3)
  {
    v4 = v3[13];
    object = v3;
    if (a2)
    {
      v3[13] = v4 | 0x4000000000;
      v5 = [MEMORY[0x1E696AD98] numberWithInteger:a2];
      objc_setAssociatedObject(object, &_UIViewTagAssocObjectKey, v5, 1);
    }

    else
    {
      v3[13] = v4 & 0xFFFFFFBFFFFFFFFFLL;
      objc_setAssociatedObject(v3, &_UIViewTagAssocObjectKey, 0, 1);
    }

    v3 = object;
  }
}

id _UINavigationTitleAppearanceAttributesWithFont(void *a1)
{
  v7[2] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = *off_1E70EC920;
    v6[0] = *off_1E70EC918;
    v6[1] = v1;
    v7[0] = a1;
    v2 = a1;
    v3 = +[UIColor labelColor];
    v7[1] = v3;
    v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:2];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id sub_188C18938(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    sub_18A4A8208();
    v6 = (a1 + 40);
    do
    {
      sub_188A85BF0(*(v6 - 1), 0, 0, *(v6 - 1), *v6);
      sub_18A4A81D8();
      sub_18A4A8218();
      sub_18A4A8228();
      sub_18A4A81E8();
      v6 += 2;
      --v4;
    }

    while (v4);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA932200);
  v7 = sub_18A4A7518();

  v8 = [v2 _registerForTraitTokenChanges_withTarget_action_];

  return v8;
}

void sub_188C18BE4(void *a1, char a2)
{
  v3 = v2;
  v6 = [v2 stack];
  v7 = [v6 state];

  if (!v7)
  {
    v8 = [v3 stack];
    v23 = [v8 backItem];

    if (v23 && (sub_188A34624(0, &unk_1ED48CFF8), v9 = a1, v10 = v23, v11 = sub_18A4A7C88(), v10, v9, (v11 & 1) != 0))
    {
      v12 = [v3 stack];
      v13 = [v12 topItem];

      sub_188B2A9B4(v13, v23, a2 & 1);
      v14 = *&v3[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_contentView];
      if (a2)
      {
        v14[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_shouldAnimateNextLayout] = 1;
      }

      sub_188AED2B0(__src);
      memcpy(__dst, &v14[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_lastLayoutResult], 0x20AuLL);
      memcpy(&v14[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_lastLayoutResult], __src, 0x20AuLL);
      v15 = v14;
      sub_188A3F5FC(__dst, &unk_1EA9362C0);
      [v15 setNeedsLayout];
    }

    else
    {
      v16 = [v3 stack];
      v17 = [v16 topItem];

      if (v17 && (sub_188A34624(0, &unk_1ED48CFF8), v18 = a1, v19 = sub_18A4A7C88(), v17, v18, (v19 & 1) != 0) && (v20 = [v3 navigationBar], v21 = objc_msgSend(v20, sel__effectiveDelegate), v20, v21))
      {
        if ([v21 respondsToSelector_])
        {
          swift_unknownObjectRetain();
          v22 = [v3 navigationBar];
          [v21 _navigationBar_itemBackButtonUpdated_];

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

unint64_t sub_188C18F44(uint64_t a1, uint64_t a2, char a3)
{
  sub_18A4A8888();
  sub_188C18FD0(v8, a1, a2, a3);
  v6 = sub_18A4A88E8();

  return sub_188C1923C(a1, a2, a3, v6);
}

uint64_t sub_188C18FD0(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 > 2u)
  {
    if (a4 == 3)
    {
      v6 = 3;
    }

    else
    {
      if (a4 != 4)
      {
        v5 = 5;
LABEL_15:
        MEMORY[0x18CFE37E0](v5);
        return MEMORY[0x18CFE37E0](a2);
      }

      v6 = 4;
    }
  }

  else
  {
    if (a4)
    {
      if (a4 == 1)
      {
        v5 = 1;
      }

      else
      {
        v5 = 2;
      }

      goto LABEL_15;
    }

    v6 = 0;
  }

  MEMORY[0x18CFE37E0](v6);

  return sub_18A4A7348();
}

id sub_188C1908C(void *a1)
{
  v2 = [a1 identifier];
  if (v2)
  {
    v3 = v2;
    v4 = sub_18A4A7288();
  }

  else
  {
    v5 = [a1 customView];
    if (v5)
    {
      v4 = v5;
    }

    else if ([a1 isSystemItem])
    {
      v4 = [a1 systemItem];
    }

    else
    {
      v4 = a1;
      v6 = [v4 image];
      if (!v6 || (v7 = v6, v8 = [v6 _existingIdentityDescription], v7, !v8))
      {
        v10 = [v4 title];

        if (v10)
        {
          v11 = sub_18A4A7288();
          v13 = v12;

          v14 = HIBYTE(v13) & 0xF;
          if ((v13 & 0x2000000000000000) == 0)
          {
            v14 = v11 & 0xFFFFFFFFFFFFLL;
          }

          if (v14)
          {

            return v11;
          }
        }

        return v4;
      }

      v9 = sub_18A4A7288();
      return v9;
    }
  }

  return v4;
}

unint64_t sub_188C1923C(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v5 = v4 + 64;
  v6 = -1 << *(v4 + 32);
  v7 = a4 & ~v6;
  if ((*(v4 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v11 = ~v6;
    v12 = *(v4 + 48);
    do
    {
      v13 = (v12 + 24 * v7);
      v14 = *v13;
      v15 = v13[1];
      v16 = *(v13 + 16);
      if (v16 > 2)
      {
        if (v16 == 3)
        {
          if (a3 != 3)
          {
            goto LABEL_5;
          }

LABEL_18:
          v17 = v14 == a1 && v15 == a2;
          if (v17 || (sub_18A4A86C8() & 1) != 0)
          {
            return v7;
          }

          goto LABEL_5;
        }

        if (v16 == 4)
        {
          if (a3 != 4)
          {
            goto LABEL_5;
          }

          goto LABEL_18;
        }

        if (a3 == 5)
        {
LABEL_4:
          if (v14 == a1)
          {
            return v7;
          }
        }
      }

      else
      {
        if (!v16)
        {
          if (a3)
          {
            goto LABEL_5;
          }

          goto LABEL_18;
        }

        if (v16 == 1)
        {
          if (a3 == 1)
          {
            goto LABEL_4;
          }
        }

        else if (a3 == 2)
        {
          goto LABEL_4;
        }
      }

LABEL_5:
      v7 = (v7 + 1) & v11;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  return v7;
}

unint64_t sub_188C19394()
{
  result = qword_1EA9311C0;
  if (!qword_1EA9311C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9311C0);
  }

  return result;
}

uint64_t sub_188C19410(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolbarModel.PlacedItem(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_188C19474(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA938C40);
  v37 = a2;
  result = sub_18A4A8468();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (1)
    {
      if (!v12)
      {
        v18 = v8;
        while (1)
        {
          v8 = v18 + 1;
          if (__OFADD__(v18, 1))
          {
            __break(1u);
            goto LABEL_48;
          }

          if (v8 >= v13)
          {
            break;
          }

          v19 = v9[v8];
          ++v18;
          if (v19)
          {
            v17 = __clz(__rbit64(v19));
            v12 = (v19 - 1) & v19;
            goto LABEL_15;
          }
        }

        if ((v37 & 1) == 0)
        {

          v3 = v2;
          goto LABEL_46;
        }

        v35 = 1 << *(v5 + 32);
        v3 = v2;
        if (v35 >= 64)
        {
          bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
        }

        else
        {
          *v9 = -1 << v35;
        }

        *(v5 + 16) = 0;
        break;
      }

      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(v5 + 56);
      v22 = *(v5 + 48) + 24 * v20;
      v23 = *v22;
      v24 = *(v22 + 8);
      v25 = *(v22 + 16);
      v38 = *(v21 + 8 * v20);
      if ((v37 & 1) == 0)
      {
        sub_188BB395C(v23, v24, v25);
      }

      sub_18A4A8888();
      if (v25 > 2)
      {
        if (v25 == 3)
        {
          v27 = 3;
          goto LABEL_26;
        }

        if (v25 == 4)
        {
          v27 = 4;
LABEL_26:
          MEMORY[0x18CFE37E0](v27);
          sub_18A4A7348();
          goto LABEL_30;
        }

        v26 = 5;
      }

      else
      {
        if (!v25)
        {
          v27 = 0;
          goto LABEL_26;
        }

        if (v25 == 1)
        {
          v26 = 1;
        }

        else
        {
          v26 = 2;
        }
      }

      MEMORY[0x18CFE37E0](v26);
      MEMORY[0x18CFE37E0](v23);
LABEL_30:
      result = sub_18A4A88E8();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_48:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 24 * v15;
      *v16 = v23;
      *(v16 + 8) = v24;
      *(v16 + 16) = v25;
      *(*(v7 + 56) + 8 * v15) = v38;
      ++*(v7 + 16);
      v5 = v36;
    }
  }

LABEL_46:
  *v3 = v7;
  return result;
}