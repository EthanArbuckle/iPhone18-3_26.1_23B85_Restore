void sub_189BA828C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void getEMFEmojiCategorySymbols()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getEMFEmojiCategorySymbolsSymbolLoc_ptr;
  v9 = getEMFEmojiCategorySymbolsSymbolLoc_ptr;
  if (!getEMFEmojiCategorySymbolsSymbolLoc_ptr)
  {
    v1 = EmojiFoundationLibrary_0();
    v7[3] = dlsym(v1, "EMFEmojiCategorySymbols");
    getEMFEmojiCategorySymbolsSymbolLoc_ptr = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getEMFEmojiCategorySymbols(void)"];
    [v4 handleFailureInFunction:v5 file:@"UIKeyboardEmojiCategory.m" lineNumber:40 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_189BA83F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void getEMFEmojiCategoryFlags()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getEMFEmojiCategoryFlagsSymbolLoc_ptr;
  v9 = getEMFEmojiCategoryFlagsSymbolLoc_ptr;
  if (!getEMFEmojiCategoryFlagsSymbolLoc_ptr)
  {
    v1 = EmojiFoundationLibrary_0();
    v7[3] = dlsym(v1, "EMFEmojiCategoryFlags");
    getEMFEmojiCategoryFlagsSymbolLoc_ptr = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getEMFEmojiCategoryFlags(void)"];
    [v4 handleFailureInFunction:v5 file:@"UIKeyboardEmojiCategory.m" lineNumber:41 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_189BA8554(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getEMFEmojiCategoryClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getEMFEmojiCategoryClass_softClass;
  v7 = getEMFEmojiCategoryClass_softClass;
  if (!getEMFEmojiCategoryClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getEMFEmojiCategoryClass_block_invoke;
    v3[3] = &unk_1E70F2F20;
    v3[4] = &v4;
    __getEMFEmojiCategoryClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_189BA8A6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getEMFEmojiCategoryPrepopulatedSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = EmojiFoundationLibrary_0();
  result = dlsym(v2, "EMFEmojiCategoryPrepopulated");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getEMFEmojiCategoryPrepopulatedSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *EmojiFoundationLibrary_0()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!EmojiFoundationLibraryCore_frameworkLibrary_0)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __EmojiFoundationLibraryCore_block_invoke_2;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E7115C98;
    v6 = 0;
    EmojiFoundationLibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  v0 = EmojiFoundationLibraryCore_frameworkLibrary_0;
  if (!EmojiFoundationLibraryCore_frameworkLibrary_0)
  {
    v0 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *EmojiFoundationLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"UIKeyboardEmojiCategory.m" lineNumber:31 description:{@"%s", v4[0]}];

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

uint64_t __EmojiFoundationLibraryCore_block_invoke_2()
{
  result = _sl_dlopen();
  EmojiFoundationLibraryCore_frameworkLibrary_0 = result;
  return result;
}

void *__getEMFEmojiCategoryPeopleSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = EmojiFoundationLibrary_0();
  result = dlsym(v2, "EMFEmojiCategoryPeople");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getEMFEmojiCategoryPeopleSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getEMFEmojiCategoryNatureSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = EmojiFoundationLibrary_0();
  result = dlsym(v2, "EMFEmojiCategoryNature");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getEMFEmojiCategoryNatureSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getEMFEmojiCategoryFoodAndDrinkSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = EmojiFoundationLibrary_0();
  result = dlsym(v2, "EMFEmojiCategoryFoodAndDrink");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getEMFEmojiCategoryFoodAndDrinkSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getEMFEmojiCategoryActivitySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = EmojiFoundationLibrary_0();
  result = dlsym(v2, "EMFEmojiCategoryActivity");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getEMFEmojiCategoryActivitySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getEMFEmojiCategoryTravelAndPlacesSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = EmojiFoundationLibrary_0();
  result = dlsym(v2, "EMFEmojiCategoryTravelAndPlaces");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getEMFEmojiCategoryTravelAndPlacesSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getEMFEmojiCategoryObjectsSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = EmojiFoundationLibrary_0();
  result = dlsym(v2, "EMFEmojiCategoryObjects");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getEMFEmojiCategoryObjectsSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getEMFEmojiCategorySymbolsSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = EmojiFoundationLibrary_0();
  result = dlsym(v2, "EMFEmojiCategorySymbols");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getEMFEmojiCategorySymbolsSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getEMFEmojiCategoryFlagsSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = EmojiFoundationLibrary_0();
  result = dlsym(v2, "EMFEmojiCategoryFlags");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getEMFEmojiCategoryFlagsSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getEMFEmojiCategoryRecentsSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = EmojiFoundationLibrary_0();
  result = dlsym(v2, "EMFEmojiCategoryRecents");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getEMFEmojiCategoryRecentsSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void __getEMFEmojiCategoryClass_block_invoke(uint64_t a1)
{
  EmojiFoundationLibrary_0();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("EMFEmojiCategory");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getEMFEmojiCategoryClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getEMFEmojiCategoryClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"UIKeyboardEmojiCategory.m" lineNumber:32 description:{@"Unable to find class %s", "EMFEmojiCategory"}];

    __break(1u);
  }
}

uint64_t _UIPressesContainsPressType(void *a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = a1;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    while (2)
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        if ([*(*(&v10 + 1) + 8 * v7) type] == a2)
        {
          v8 = 1;
          goto LABEL_11;
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v8 = 0;
LABEL_11:

  return v8;
}

uint64_t _UIPressesContainsExternalKeyboardSource(void *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v1 = a1;
  v2 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v2)
  {
    v3 = *v7;
    while (2)
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v7 != v3)
        {
          objc_enumerationMutation(v1);
        }

        if ([*(*(&v6 + 1) + 8 * i) _source] == 1)
        {
          v2 = 1;
          goto LABEL_11;
        }
      }

      v2 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
      if (v2)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v2;
}

uint64_t _UIPressesContainsPressTypes(void *a1, void *a2)
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v5 = v3;
  v20 = [v5 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v20)
  {
    v6 = *v26;
    v19 = *v26;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v26 != v6)
        {
          objc_enumerationMutation(v5);
        }

        v8 = *(*(&v25 + 1) + 8 * i);
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v9 = v4;
        v10 = v4;
        v11 = [v10 countByEnumeratingWithState:&v21 objects:v29 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v22;
          while (2)
          {
            for (j = 0; j != v12; ++j)
            {
              if (*v22 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = *(*(&v21 + 1) + 8 * j);
              v16 = [v8 type];
              if (v16 == [v15 integerValue])
              {

                v17 = 1;
                v4 = v9;
                goto LABEL_19;
              }
            }

            v12 = [v10 countByEnumeratingWithState:&v21 objects:v29 count:16];
            if (v12)
            {
              continue;
            }

            break;
          }
        }

        v4 = v9;
        v6 = v19;
      }

      v17 = 0;
      v20 = [v5 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v20);
  }

  else
  {
    v17 = 0;
  }

LABEL_19:

  return v17;
}

uint64_t _UIPressesOnlyContainsPressTypes(void *a1, void *a2)
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if ([v3 count])
  {
    v5 = [v4 count] != 0;
  }

  else
  {
    v5 = 0;
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = v3;
  v6 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v6)
  {
    v7 = v6;
    v19 = v5;
    v21 = *v27;
    while (1)
    {
      v8 = 0;
LABEL_7:
      if (*v27 != v21)
      {
        objc_enumerationMutation(obj);
      }

      v9 = *(*(&v26 + 1) + 8 * v8);
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v10 = v4;
      v11 = v4;
      v12 = [v11 countByEnumeratingWithState:&v22 objects:v30 count:16];
      if (!v12)
      {
        break;
      }

      v13 = v12;
      v14 = *v23;
LABEL_11:
      v15 = 0;
      while (1)
      {
        if (*v23 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v22 + 1) + 8 * v15);
        v17 = [v9 type];
        if (v17 == [v16 integerValue])
        {
          break;
        }

        if (v13 == ++v15)
        {
          v13 = [v11 countByEnumeratingWithState:&v22 objects:v30 count:16];
          if (v13)
          {
            goto LABEL_11;
          }

          goto LABEL_21;
        }
      }

      ++v8;
      v4 = v10;
      if (v8 != v7)
      {
        goto LABEL_7;
      }

      v7 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
      if (!v7)
      {
        v5 = v19;
        goto LABEL_22;
      }
    }

LABEL_21:

    v5 = 0;
    v4 = v10;
  }

LABEL_22:

  return v5;
}

__CFString *_NSStringFromUIPressPhase(unint64_t a1)
{
  if (a1 > 4)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E7115D28[a1];
  }
}

void sub_189BAC624(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_189BADC30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_189BAF858(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_189BB0200(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  _Block_object_dispose(&a28, 8);
  _Block_object_dispose(&a32, 8);
  _Block_object_dispose((v32 - 200), 8);
  _Block_object_dispose((v32 - 168), 8);
  _Block_object_dispose((v32 - 136), 8);
  _Unwind_Resume(a1);
}

uint64_t __deviceEventDrainPolicy(uint64_t a1)
{
  if (qword_1ED498138 != -1)
  {
    dispatch_once(&qword_1ED498138, &__block_literal_global_120_1);
  }

  if (byte_1ED4980BA != 1 || (_UIEventHIDEventWantsImmediateDelivery() & 1) != 0)
  {
    return 0;
  }

  v3 = _UIEventHIDGetChildStylusEvent(a1);
  v4 = 1;
  if ((byte_1ED4980BB & 1) == 0)
  {
    v4 = 2;
  }

  if (v3)
  {
    return 0;
  }

  else
  {
    return v4;
  }
}

id ___logFilter_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = ___logFilter_block_invoke_2;
  aBlock[3] = &unk_1E7115EF8;
  v4 = *(a1 + 32);
  v11 = *(a1 + 40);
  v9 = v4;
  v10 = v3;
  v5 = v3;
  v6 = _Block_copy(aBlock);

  return v6;
}

uint64_t ___logFilter_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  CategoryImpl = __UILogGetCategoryImpl(*(a1 + 48));
  if (*CategoryImpl)
  {
    v6 = *(CategoryImpl + 8);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v8 = 138412546;
      v9 = v7;
      v10 = 2112;
      v11 = a2;
      _os_log_impl(&dword_188A29000, v6, OS_LOG_TYPE_ERROR, "%@:\n%@", &v8, 0x16u);
    }
  }

  return (*(*(a1 + 40) + 16))();
}

uint64_t ___hoverEventMemoryFilter_block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = IOHIDEventGetIntegerValue();
  if (result)
  {
    v7 = 32;
    v8 = 1;
LABEL_3:
    *(*(*(a1 + v7) + 8) + 24) = v8;
    *a4 = 1;
    return result;
  }

  result = IOHIDEventGetIntegerValue();
  if (!result)
  {
    v8 = 0;
    v7 = 40;
    goto LABEL_3;
  }

  return result;
}

void ___dragEventExtractionFilter_block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  Children = IOHIDEventGetChildren();
  CFArrayGetValueAtIndex(Children, 0);
  v8 = BKSHIDEventGetDigitizerAttributes();
  v9 = _UIEventHIDPathAttributesForChild(v8);
  v10 = [v9 locus];

  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = ___UIEventHIDAnyChildIsTouching_block_invoke;
  v13[3] = &unk_1E70F3838;
  v13[4] = &v14;
  _UIEventHIDEnumerateChildren(v6, 11, v13);
  v11 = *(v15 + 24);
  _Block_object_dispose(&v14, 8);
  v12 = *(a1 + 32);
  if (v10 == 1 && (v11 & 1) != 0)
  {
    [v12 setObject:v6 forKeyedSubscript:v5];
  }

  else
  {
    [v12 removeObjectForKey:v5];
  }

  (*(*(a1 + 40) + 16))();
}

void sub_189BB242C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void ___globalEdgeSwipeEventDiscardFilterGenerator_block_invoke_91(uint64_t a1, uint64_t a2)
{
  v69 = *MEMORY[0x1E69E9840];
  ++*(*(*(a1 + 32) + 8) + 24);
  v4 = _UIEventHIDPathIndexForDigitizerEvent();
  v5 = IOHIDEventGetPhase() & 0x80;
  v6 = [*(*(*(a1 + 40) + 8) + 40) containsIndex:v4];
  v7 = [*(*(*(a1 + 48) + 8) + 40) containsIndex:v4];
  if (*(a1 + 92) == 1)
  {
    v8 = (v5 != 0) & (v6 ^ 1);
  }

  else
  {
    v8 = 0;
  }

  CategoryCachedImpl = __UILogGetCategoryCachedImpl("GESEventFilter", &qword_1ED4980E0);
  if (*CategoryCachedImpl)
  {
    v55 = *(CategoryCachedImpl + 8);
    if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
    {
      v56 = *(a1 + 88);
      v57 = *(a1 + 92);
      *v61 = 134219776;
      *&v61[4] = v4;
      *&v61[12] = 1026;
      *&v61[14] = v56;
      *&v61[18] = 1024;
      *&v61[20] = v57;
      *&v61[24] = 1024;
      *&v61[26] = v5 >> 7;
      *&v61[30] = 1024;
      v62 = v6 & (v5 >> 7);
      v63 = 1024;
      v64 = v8;
      v65 = 1024;
      v66 = v6 & 1;
      v67 = 1024;
      v68 = v7;
      _os_log_impl(&dword_188A29000, v55, OS_LOG_TYPE_ERROR, "Evaluating removal or promotion: path index: %li; contextId: 0x%{public}X; shouldFilterGESEvents: %d; isGESEvent %d; shouldPromote: %d; shouldRemove: %d; wasDispatchedAsNonGES: %d; wasPromotedToNonGES: %d", v61, 0x36u);
    }
  }

  if ((v6 & (v5 >> 7)) != 0)
  {
    if (!*(*(*(a1 + 56) + 8) + 40))
    {
      v10 = objc_opt_new();
      v11 = *(*(a1 + 56) + 8);
      v12 = *(v11 + 40);
      *(v11 + 40) = v10;
    }

    if (!qword_1ED4980D8)
    {
      v13 = objc_opt_new();
      v14 = qword_1ED4980D8;
      qword_1ED4980D8 = v13;
    }

    if (!*(*(*(a1 + 48) + 8) + 40))
    {
      v15 = [MEMORY[0x1E696AD50] indexSet];
      v16 = *(*(a1 + 48) + 8);
      v17 = *(v16 + 40);
      *(v16 + 40) = v15;

      v18 = qword_1ED4980D8;
      v19 = *(*(*(a1 + 48) + 8) + 40);
      v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(a1 + 88)];
      [v18 setObject:v19 forKey:v20];
    }

    [*(*(*(a1 + 56) + 8) + 40) addObject:a2];
    [*(*(*(a1 + 48) + 8) + 40) addIndex:v4];
    v21 = *(__UILogGetCategoryCachedImpl("GESEventFilter", &qword_1ED4980E8) + 8);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = *(a1 + 88);
      *v61 = 67240450;
      *&v61[4] = v22;
      *&v61[8] = 2112;
      *&v61[10] = a2;
      _os_log_impl(&dword_188A29000, v21, OS_LOG_TYPE_ERROR, "BUG IN HID EVENT PROVIDER: HID event previously dispatched as non-GES (MayBegin) is now GES. This is a violation of the contract with UIKit as events are only allowed to transition from GES to non-GES: contextId: 0x%{public}X; event: \n%@", v61, 0x12u);
    }

    v23 = __UILogGetCategoryCachedImpl("GESEventFilter", &qword_1ED4980F0);
    if (*v23)
    {
      v24 = *(v23 + 8);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = *(a1 + 88);
        *v61 = 134218498;
        *&v61[4] = v4;
        *&v61[12] = 1026;
        *&v61[14] = v25;
        *&v61[18] = 2112;
        *&v61[20] = a2;
        v26 = "Pending promotion of child event to non-GES: path index: %li; contextId: 0x%{public}X; \n%@";
LABEL_42:
        _os_log_impl(&dword_188A29000, v24, OS_LOG_TYPE_ERROR, v26, v61, 0x1Cu);
      }
    }
  }

  else if (v8)
  {
    v27 = *(*(*(a1 + 64) + 8) + 40);
    if (!v27)
    {
      v28 = objc_opt_new();
      v29 = *(*(a1 + 64) + 8);
      v30 = *(v29 + 40);
      *(v29 + 40) = v28;

      v27 = *(*(*(a1 + 64) + 8) + 40);
    }

    [v27 addObject:a2];
    v31 = __UILogGetCategoryCachedImpl("GESEventFilter", &qword_1ED4980F8);
    if (*v31)
    {
      v24 = *(v31 + 8);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v60 = *(a1 + 88);
        *v61 = 134218498;
        *&v61[4] = v4;
        *&v61[12] = 1026;
        *&v61[14] = v60;
        *&v61[18] = 2112;
        *&v61[20] = a2;
        v26 = "Pending removal of child event: path index: %li; contextId: 0x%{public}X; \n%@";
        goto LABEL_42;
      }
    }
  }

  IntegerValue = IOHIDEventGetIntegerValue();
  v33 = IOHIDEventGetIntegerValue();
  v34 = ((v33 | IOHIDEventGetIntegerValue()) >> 7) & 1;
  if (!IntegerValue || v34)
  {
    v50 = *(*(*(a1 + 72) + 8) + 40);
    if (!v50)
    {
      v51 = [MEMORY[0x1E696AD50] indexSet];
      v52 = *(*(a1 + 72) + 8);
      v53 = *(v52 + 40);
      *(v52 + 40) = v51;

      v50 = *(*(*(a1 + 72) + 8) + 40);
    }

    [v50 addIndex:{v4, *v61, *&v61[8], *&v61[16], *&v61[24]}];
    v54 = __UILogGetCategoryCachedImpl("GESEventFilter", &qword_1ED498100);
    if (*v54)
    {
      v58 = *(v54 + 8);
      if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
      {
        v59 = *(a1 + 88);
        *v61 = 134218752;
        *&v61[4] = v4;
        *&v61[12] = 1026;
        *&v61[14] = v59;
        *&v61[18] = 1024;
        *&v61[20] = IntegerValue != 0;
        *&v61[24] = 1024;
        *&v61[26] = v34;
        v47 = "Pending removal of terminal index from tracking: path index: %li; contextId: 0x%{public}X; isTouching: %d; isCancelled: %d";
        v48 = v58;
        v49 = 30;
        goto LABEL_39;
      }
    }
  }

  else if (!v5)
  {
    if (!qword_1ED4980D0)
    {
      v35 = objc_opt_new();
      v36 = qword_1ED4980D0;
      qword_1ED4980D0 = v35;
    }

    v37 = *(*(*(a1 + 40) + 8) + 40);
    if (!v37)
    {
      v38 = [MEMORY[0x1E696AD50] indexSet];
      v39 = *(*(a1 + 40) + 8);
      v40 = *(v39 + 40);
      *(v39 + 40) = v38;

      v41 = qword_1ED4980D0;
      v42 = *(*(*(a1 + 40) + 8) + 40);
      v43 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(a1 + 88)];
      [v41 setObject:v42 forKey:v43];

      v37 = *(*(*(a1 + 40) + 8) + 40);
    }

    [v37 addIndex:{v4, *v61, *&v61[16]}];
    v44 = __UILogGetCategoryCachedImpl("GESEventFilter", &qword_1ED498108);
    if (*v44)
    {
      v45 = *(v44 + 8);
      if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        v46 = *(a1 + 88);
        *v61 = 134218240;
        *&v61[4] = v4;
        *&v61[12] = 1026;
        *&v61[14] = v46;
        v47 = "Adding non-GES index to dispatched set: path index: %li; contextId: 0x%{public}X";
        v48 = v45;
        v49 = 18;
LABEL_39:
        _os_log_impl(&dword_188A29000, v48, OS_LOG_TYPE_ERROR, v47, v61, v49);
      }
    }
  }
}

uint64_t ___globalEdgeSwipeEventDiscardFilterGenerator_block_invoke_98(uint64_t a1, uint64_t a2)
{
  [*(*(*(a1 + 32) + 8) + 40) removeIndex:a2];
  v4 = *(*(*(a1 + 40) + 8) + 40);

  return [v4 removeIndex:a2];
}

uint64_t ___wakeOnTouchSynchronizationFilter_block_invoke_102(uint64_t result, uint64_t a2)
{
  v2 = *(result + 32);
  if (v2)
  {
    if (*__UILogGetCategoryCachedImpl("HIDEventSynchronization", &_receiveSynchronizedHIDEvent____s_category))
    {
      [UIEventFetcher _logSynchronizedEvent:a2];
    }

    v4 = MEMORY[0x1E69E9820];
    v5 = 3221225472;
    v6 = __47__UIEventFetcher__receiveSynchronizedHIDEvent___block_invoke;
    v7 = &unk_1E70F32F0;
    v8 = v2;
    v9 = a2;
    os_unfair_lock_lock(&__UIEventFetcherEventArrayAccessLock);
    __47__UIEventFetcher__receiveSynchronizedHIDEvent___block_invoke(&v4);
    os_unfair_lock_unlock(&__UIEventFetcherEventArrayAccessLock);
    if ((_UIUpdateCycleEnabled() & 1) == 0)
    {
      [*(v2 + 8) count];
      [UIEventFetcher signalEventsAvailableWithReason:v2 filteredEventCount:4];
    }

    result = _UIUpdateCycleEnabled();
    if (result)
    {
      return [*(v2 + 256) eventFetcherDidReceiveEvents:v2];
    }
  }

  return result;
}

void ___wakeOnTouchSynchronizationFilter_block_invoke_2_103(uint64_t a1)
{
  CategoryCachedImpl = __UILogGetCategoryCachedImpl("HIDEventSynchronization", &_UIInternalPreference_HIDEventsDeliverImmediatly_block_invoke_7___s_category);
  if (*CategoryCachedImpl)
  {
    v3 = *(CategoryCachedImpl + 8);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *v4 = 0;
      _os_log_impl(&dword_188A29000, v3, OS_LOG_TYPE_ERROR, "[UIEventFetcher] synchronization completed. Resuming normal event routing.", v4, 2u);
    }
  }

  [(UIEventFetcher *)*(a1 + 32) setSynchronizer:?];
}

uint64_t ___pencilRangeAndTouchingSeparationFilter_block_invoke_3(uint64_t a1)
{
  v2 = ~IOHIDEventGetIntegerValue() & 3;
  IntegerValue = IOHIDEventGetIntegerValue();
  result = IOHIDEventGetIntegerValue();
  v5 = (result | IntegerValue) == 0;
  if (!v2 && (IntegerValue == 0) == (result == 0))
  {
    if (IntegerValue && result)
    {
      if (!*(*(*(a1 + 32) + 8) + 24))
      {
        *(*(*(a1 + 32) + 8) + 24) = ___pencilRangeAndTouchingSeparationFilter_block_invoke_4();
      }

      IOHIDEventSetIntegerValue();
      IOHIDEventGetIntegerValue();
      IOHIDEventSetIntegerValue();
      Copy = IOHIDEventCreateCopy();
      IOHIDEventSetIntegerValue();
      IOHIDEventGetIntegerValue();
      IOHIDEventSetIntegerValue();
      IOHIDEventAppendEvent();
      CFRelease(Copy);
      result = IOHIDEventSetIntegerValue();
    }

    if (v5)
    {
      if (!*(*(*(a1 + 40) + 8) + 24))
      {
        *(*(*(a1 + 40) + 8) + 24) = ___pencilRangeAndTouchingSeparationFilter_block_invoke_4();
      }

      IOHIDEventGetIntegerValue();
      IOHIDEventSetIntegerValue();
      v7 = IOHIDEventCreateCopy();
      IOHIDEventGetIntegerValue();
      IOHIDEventSetIntegerValue();
      IOHIDEventAppendEvent();
      CFRelease(v7);
      IOHIDEventSetIntegerValue();

      return IOHIDEventSetIntegerValue();
    }
  }

  return result;
}

uint64_t ___pencilRangeAndTouchingSeparationFilter_block_invoke_4()
{
  Copy = IOHIDEventCreateCopy();
  Children = IOHIDEventGetChildren();
  if (Children)
  {
    v2 = Children;
    Count = CFArrayGetCount(Children);
    v4 = Count - 1;
    if (Count >= 1)
    {
      do
      {
        CFArrayGetValueAtIndex(v2, v4);
        IOHIDEventRemoveEvent();
        --v4;
      }

      while (v4 != -1);
    }
  }

  return Copy;
}

void ___pencilRangeAndTouchingSeparationFilter_block_invoke_5()
{
  v12 = *MEMORY[0x1E69E9840];
  v0 = BKSHIDEventGetDigitizerAttributes();
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v1 = [v0 pathAttributes];
  v2 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v8;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v7 + 1) + 8 * i);
        if (([v6 locus] & 0xFE) == 2)
        {
          [v6 setLocus:0];
        }
      }

      v3 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v3);
  }

  BKSHIDEventSetDigitizerAttributes();
}

uint64_t ____deviceHasHighFrequencyDigitizer_block_invoke()
{
  result = MGGetBoolAnswer();
  byte_1ED4980B9 = result;
  return result;
}

uint64_t ____deviceEventDrainPolicy_block_invoke()
{
  if (qword_1ED498158 != -1)
  {
    dispatch_once(&qword_1ED498158, &__block_literal_global_178_0);
  }

  byte_1ED4980BA |= byte_1ED4980BE;
  byte_1ED4980BB |= byte_1ED4980BE;
  v0 = MGIsDeviceOneOfType();
  byte_1ED4980BA |= v0;
  byte_1ED4980BB |= v0;
  v1 = MGIsDeviceOneOfType();
  v2 = MGIsDeviceOneOfType();
  byte_1ED4980BA |= v1 | v2;
  byte_1ED4980BB |= v1 | v2;
  byte_1ED4980BA |= MGIsDeviceOneOfType();
  result = MGIsDeviceOneOfType();
  byte_1ED4980BA |= result;
  return result;
}

void ____signal_queue_threshold_count_block_invoke()
{
  v0 = _UIKitPreferencesOnce();
  v2 = [v0 valueForKey:@"SignalEventCountThreshold"];

  v1 = v2;
  if (v2)
  {
    _MergedGlobals_966 = [v2 integerValue];
    v1 = v2;
  }
}

void ____deviceCanMatchHighFrequencyDigitizer_block_invoke()
{
  v0 = [objc_opt_self() mainScreen];
  [v0 _refreshRate];
  v2 = v1;

  v3 = v2 > 0.0 && round(1.0 / v2) > 60.0;
  byte_1ED4980BC = v3;
}

uint64_t ____deviceShouldUsuallyActivateDelay_block_invoke()
{
  byte_1ED4980BD |= MGIsDeviceOneOfType();
  byte_1ED4980BD |= MGIsDeviceOneOfType();
  result = MGIsDeviceOneOfType();
  byte_1ED4980BD |= result;
  return result;
}

uint64_t ____deviceShouldSignalOnDisplayLinkForNonImportantEvents_block_invoke()
{
  byte_1ED4980BE |= MGIsDeviceOneOfType();
  result = MGIsDeviceOneOfType();
  byte_1ED4980BE |= result;
  return result;
}

uint64_t ____deviceNeedsToConsiderNearVsyncTouches_block_invoke()
{
  if (qword_1ED498158 != -1)
  {
    dispatch_once(&qword_1ED498158, &__block_literal_global_178_0);
  }

  v0 = byte_1ED4980BE;
  if (qword_1ED498130 != -1)
  {
    dispatch_once(&qword_1ED498130, &__block_literal_global_115_1);
  }

  if (byte_1ED4980B9 == 1)
  {
    v1 = +[UIDevice currentDevice];
    v2 = [v1 userInterfaceIdiom];

    v3 = ((v2 & 0xFFFFFFFFFFFFFFFBLL) != 1) & (v0 ^ 1);
  }

  else
  {
    v3 = 0;
  }

  byte_1ED4980BF = v3;
  byte_1ED4980BF = v3 | MGIsDeviceOneOfType();
  result = MGIsDeviceOneOfType();
  byte_1ED4980BF |= result;
  return result;
}

id getEMFStringUtilitiesClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getEMFStringUtilitiesClass_softClass;
  v7 = getEMFStringUtilitiesClass_softClass;
  if (!getEMFStringUtilitiesClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getEMFStringUtilitiesClass_block_invoke;
    v3[3] = &unk_1E70F2F20;
    v3[4] = &v4;
    __getEMFStringUtilitiesClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_189BB4A4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getEMFEmojiCategoryClass_0()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getEMFEmojiCategoryClass_softClass_0;
  v7 = getEMFEmojiCategoryClass_softClass_0;
  if (!getEMFEmojiCategoryClass_softClass_0)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getEMFEmojiCategoryClass_block_invoke_0;
    v3[3] = &unk_1E70F2F20;
    v3[4] = &v4;
    __getEMFEmojiCategoryClass_block_invoke_0(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_189BB4C04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_189BBB0D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_189BBB29C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_189BBB4F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getEMFStringUtilitiesClass_block_invoke(uint64_t a1)
{
  EmojiFoundationLibrary_1();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("EMFStringUtilities");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getEMFStringUtilitiesClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getEMFStringUtilitiesClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"UIKeyboardEmojiCollectionInputView.m" lineNumber:60 description:{@"Unable to find class %s", "EMFStringUtilities"}];

    __break(1u);
  }
}

void EmojiFoundationLibrary_1()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!EmojiFoundationLibraryCore_frameworkLibrary_1)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __EmojiFoundationLibraryCore_block_invoke_3;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E7116120;
    v5 = 0;
    EmojiFoundationLibraryCore_frameworkLibrary_1 = _sl_dlopen();
  }

  if (!EmojiFoundationLibraryCore_frameworkLibrary_1)
  {
    v1 = [MEMORY[0x1E696AAA8] currentHandler];
    v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *EmojiFoundationLibrary(void)"];
    [v1 handleFailureInFunction:v2 file:@"UIKeyboardEmojiCollectionInputView.m" lineNumber:58 description:{@"%s", v3[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v0 = v3[0];
  if (v3[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __EmojiFoundationLibraryCore_block_invoke_3()
{
  result = _sl_dlopen();
  EmojiFoundationLibraryCore_frameworkLibrary_1 = result;
  return result;
}

void __getEMFEmojiCategoryClass_block_invoke_0(uint64_t a1)
{
  EmojiFoundationLibrary_1();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("EMFEmojiCategory");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getEMFEmojiCategoryClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getEMFEmojiCategoryClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"UIKeyboardEmojiCollectionInputView.m" lineNumber:59 description:{@"Unable to find class %s", "EMFEmojiCategory"}];

    __break(1u);
  }
}

void __getEMFEmojiTokenClass_block_invoke_1(uint64_t a1)
{
  EmojiFoundationLibrary_1();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("EMFEmojiToken");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getEMFEmojiTokenClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getEMFEmojiTokenClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"UIKeyboardEmojiCollectionInputView.m" lineNumber:61 description:{@"Unable to find class %s", "EMFEmojiToken"}];

    __break(1u);
  }
}

void _UICoreMaterialUpdateBlurEffectDescriptorForMTMaterial(void *a1, void *a2, void *a3, void *a4)
{
  v19[3] = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a4;
  v9 = a3;
  v10 = a1;
  v11 = [v9 reducedTransperancy];
  if (v7)
  {
    v12 = *MEMORY[0x1E6997F78];
    v19[0] = MEMORY[0x1E695E118];
    v13 = *MEMORY[0x1E6997F80];
    v18[0] = v12;
    v18[1] = v13;
    v14 = [MEMORY[0x1E696AD98] numberWithBool:v11];
    v18[2] = *MEMORY[0x1E6997F70];
    v19[1] = v14;
    v19[2] = v7;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:3];

    v16 = MTMaterialCreateDictionaryRepresentation();
  }

  else
  {
    v15 = [v9 traitCollection];
    v16 = _lookupBlurEffectDescription(v10, v11, [v15 userInterfaceLevel]);
  }

  v17 = v16;

  _UICoreMaterialUpdateBlurEffectDescriptorInternal(v17, v9, v8);
}

void _UICoreMaterialUpdateBlurEffectDescriptorForUnsanitizedMTMaterial(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  v10 = _UICoreMaterialSanitizeMaterial(a1);
  _UICoreMaterialUpdateBlurEffectDescriptorForMTMaterial(v10, v9, v8, v7);
}

void *_UICoreMaterialSanitizeMaterial(void *a1)
{
  v1 = a1;
  v2 = _UICoreMaterialSanitizeMaterial_filter;
  if (!_UICoreMaterialSanitizeMaterial_filter)
  {
    v3 = [MEMORY[0x1E695DFD8] setWithObjects:{*MEMORY[0x1E6997F08], *MEMORY[0x1E6997F10], *MEMORY[0x1E6997EA8], *MEMORY[0x1E6997EB0], *MEMORY[0x1E6997F18], *MEMORY[0x1E6997EC0], *MEMORY[0x1E6997EB8], *MEMORY[0x1E6997F00], *MEMORY[0x1E6997EF0], *MEMORY[0x1E6997ED0], *MEMORY[0x1E6997EE0], *MEMORY[0x1E6997EF8], *MEMORY[0x1E6997EE8], *MEMORY[0x1E6997EC8], *MEMORY[0x1E6997ED8], 0}];
    v4 = _UICoreMaterialSanitizeMaterial_filter;
    _UICoreMaterialSanitizeMaterial_filter = v3;

    v2 = _UICoreMaterialSanitizeMaterial_filter;
  }

  v5 = [v2 member:v1];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v1;
  }

  v8 = v7;

  return v7;
}

void _UICoreMaterialUpdateVibrancyEffectDescriptorForMTMaterial(void *a1, unint64_t a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a1;
  v9 = _lookupVibrancyEffectDescription(v8, a2, [a3 reducedTransperancy]);

  _UICoreMaterialUpdateVibrancyEffectDescriptorInternal(v9, v7);
}

id getEMFEmojiPreferencesClientClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getEMFEmojiPreferencesClientClass_softClass;
  v7 = getEMFEmojiPreferencesClientClass_softClass;
  if (!getEMFEmojiPreferencesClientClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getEMFEmojiPreferencesClientClass_block_invoke;
    v3[3] = &unk_1E70F2F20;
    v3[4] = &v4;
    __getEMFEmojiPreferencesClientClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_189BC5A5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_189BC6180(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getEMFEmojiTokenClass_0()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getEMFEmojiTokenClass_softClass_0;
  v7 = getEMFEmojiTokenClass_softClass_0;
  if (!getEMFEmojiTokenClass_softClass_0)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getEMFEmojiTokenClass_block_invoke_2;
    v3[3] = &unk_1E70F2F20;
    v3[4] = &v4;
    __getEMFEmojiTokenClass_block_invoke_2(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_189BC67E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getEMFEmojiLocaleDataClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getEMFEmojiLocaleDataClass_softClass;
  v7 = getEMFEmojiLocaleDataClass_softClass;
  if (!getEMFEmojiLocaleDataClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getEMFEmojiLocaleDataClass_block_invoke_0;
    v3[3] = &unk_1E70F2F20;
    v3[4] = &v4;
    __getEMFEmojiLocaleDataClass_block_invoke_0(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_189BC6D64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getEMFEmojiPreferencesClientClass_block_invoke(uint64_t a1)
{
  EmojiFoundationLibrary_2();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("EMFEmojiPreferencesClient");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getEMFEmojiPreferencesClientClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getEMFEmojiPreferencesClientClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"UIKeyboardEmojiPreferences.m" lineNumber:32 description:{@"Unable to find class %s", "EMFEmojiPreferencesClient"}];

    __break(1u);
  }
}

void EmojiFoundationLibrary_2()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!EmojiFoundationLibraryCore_frameworkLibrary_2)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __EmojiFoundationLibraryCore_block_invoke_4;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E7116260;
    v5 = 0;
    EmojiFoundationLibraryCore_frameworkLibrary_2 = _sl_dlopen();
  }

  if (!EmojiFoundationLibraryCore_frameworkLibrary_2)
  {
    v1 = [MEMORY[0x1E696AAA8] currentHandler];
    v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *EmojiFoundationLibrary(void)"];
    [v1 handleFailureInFunction:v2 file:@"UIKeyboardEmojiPreferences.m" lineNumber:28 description:{@"%s", v3[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v0 = v3[0];
  if (v3[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __EmojiFoundationLibraryCore_block_invoke_4()
{
  result = _sl_dlopen();
  EmojiFoundationLibraryCore_frameworkLibrary_2 = result;
  return result;
}

void __getEMFEmojiPreferencesClass_block_invoke(uint64_t a1)
{
  EmojiFoundationLibrary_2();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("EMFEmojiPreferences");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getEMFEmojiPreferencesClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getEMFEmojiPreferencesClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"UIKeyboardEmojiPreferences.m" lineNumber:31 description:{@"Unable to find class %s", "EMFEmojiPreferences"}];

    __break(1u);
  }
}

uint64_t __deviceSupportsARKit_block_invoke()
{
  result = MGGetBoolAnswer();
  _MergedGlobals_1188 = result;
  return result;
}

void __getEMFEmojiTokenClass_block_invoke_2(uint64_t a1)
{
  EmojiFoundationLibrary_2();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("EMFEmojiToken");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getEMFEmojiTokenClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getEMFEmojiTokenClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"UIKeyboardEmojiPreferences.m" lineNumber:29 description:{@"Unable to find class %s", "EMFEmojiToken"}];

    __break(1u);
  }
}

void __getEMFEmojiLocaleDataClass_block_invoke_0(uint64_t a1)
{
  EmojiFoundationLibrary_2();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("EMFEmojiLocaleData");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getEMFEmojiLocaleDataClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getEMFEmojiLocaleDataClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"UIKeyboardEmojiPreferences.m" lineNumber:30 description:{@"Unable to find class %s", "EMFEmojiLocaleData"}];

    __break(1u);
  }
}

void sub_189BC977C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

double UIHomeAffordanceHeight()
{
  v0 = 0.0;
  if ((UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) != 1)
  {
    return v0;
  }

  if (+[UIDevice _hasHomeButton])
  {
    return v0;
  }

  v0 = 14.0;
  if (!_UISolariumEnabled())
  {
    return v0;
  }

  +[UISystemInputAssistantViewController floatingAssistantBottomPadding];
  return result;
}

uint64_t UIInputAssistantViewIsHidden()
{
  v0 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  v1 = [v0 systemInputAssistantViewController];
  if ([v1 isInputAssistantItemEmpty])
  {
    v2 = [v0 inputViews];
    v3 = [v2 isCustomInputView] ^ 1;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t __TextInputUILibraryCore_block_invoke_15()
{
  result = _sl_dlopen();
  qword_1ED49B1E0 = result;
  return result;
}

void sub_189BD85F8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_189BD8850(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_189BD9074(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_189BDE328(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void NotifyVC(void *a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    if ([v1 conformsToProtocol:&unk_1F005A6B0])
    {
      [v2 _sceneDidChange];
    }

    v3 = [v2 presentedViewController];
    (NotifyVC)();

    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v4 = [v2 childViewControllers];
    v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v10;
      do
      {
        v8 = 0;
        do
        {
          if (*v10 != v7)
          {
            objc_enumerationMutation(v4);
          }

          NotifyVC(*(*(&v9 + 1) + 8 * v8++));
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v6);
    }
  }
}

void sub_189BE0194(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_189BE0364(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_189BE2390(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_189BE8C34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_189BF0A00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, id location)
{
  objc_destroyWeak((v42 + 40));
  objc_destroyWeak((v41 + 40));
  objc_destroyWeak(&location);
  _Block_object_dispose((v43 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_189BF117C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void __getTUIKeyboardPathEffectViewClass_block_invoke(uint64_t a1)
{
  TextInputUILibrary_7();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("TUIKeyboardPathEffectView");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getTUIKeyboardPathEffectViewClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getTUIKeyboardPathEffectViewClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"UIInputWindowController.m" lineNumber:83 description:{@"Unable to find class %s", "TUIKeyboardPathEffectView"}];

    __break(1u);
  }
}

uint64_t __TextInputUILibraryCore_block_invoke_16()
{
  result = _sl_dlopen();
  TextInputUILibraryCore_frameworkLibrary_7 = result;
  return result;
}

void __TIGetNotificationsFromKeyboardValue_block_invoke()
{
  v0 = [MEMORY[0x1E69D9680] sharedPreferencesController];
  [v0 _configureKey:@"NotificationsFromKeyboard" domain:@"com.apple.keyboard" defaultValue:MEMORY[0x1E695E110]];
}

void __TIGetAlwaysConvertToSceneCoordinatesValue_block_invoke()
{
  v0 = [MEMORY[0x1E69D9680] sharedPreferencesController];
  [v0 _configureKey:@"AlwaysConvertToSceneCoordinates" domain:@"com.apple.keyboard" defaultValue:MEMORY[0x1E695E110]];
}

void __TIGetAlwaysNotConvertToSceneCoordinatesValue_block_invoke()
{
  v0 = [MEMORY[0x1E69D9680] sharedPreferencesController];
  [v0 _configureKey:@"AlwaysNotConvertToSceneCoordinates" domain:@"com.apple.keyboard" defaultValue:MEMORY[0x1E695E110]];
}

uint64_t SpringBoardServicesLibraryCore()
{
  if (!SpringBoardServicesLibraryCore_frameworkLibrary_1)
  {
    SpringBoardServicesLibraryCore_frameworkLibrary_1 = _sl_dlopen();
  }

  return SpringBoardServicesLibraryCore_frameworkLibrary_1;
}

uint64_t getSBSAcquireFocusPreventingFullScreenPresentationAssertionSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getSBSAcquireFocusPreventingFullScreenPresentationAssertionSymbolLoc_ptr;
  v6 = getSBSAcquireFocusPreventingFullScreenPresentationAssertionSymbolLoc_ptr;
  if (!getSBSAcquireFocusPreventingFullScreenPresentationAssertionSymbolLoc_ptr)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __getSBSAcquireFocusPreventingFullScreenPresentationAssertionSymbolLoc_block_invoke;
    v2[3] = &unk_1E70F2F20;
    v2[4] = &v3;
    __getSBSAcquireFocusPreventingFullScreenPresentationAssertionSymbolLoc_block_invoke(v2);
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_189BF32E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __SpringBoardServicesLibraryCore_block_invoke_4()
{
  result = _sl_dlopen();
  SpringBoardServicesLibraryCore_frameworkLibrary_1 = result;
  return result;
}

void *__getSBSAcquireFocusPreventingFullScreenPresentationAssertionSymbolLoc_block_invoke(void *a1)
{
  v2 = SpringBoardServicesLibraryCore();
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    a1 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *SpringBoardServicesLibrary(void)"];
    [a1 handleFailureInFunction:v3 file:@"UIInputWindowController.m" lineNumber:94 description:{@"%s", 0}];

    __break(1u);
    free(v5);
  }

  result = dlsym(v3, "SBSAcquireFocusPreventingFullScreenPresentationAssertion");
  *(*(a1[4] + 8) + 24) = result;
  getSBSAcquireFocusPreventingFullScreenPresentationAssertionSymbolLoc_ptr = *(*(a1[4] + 8) + 24);
  return result;
}

void sub_189BF5820(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_189BFBA04(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 104));
  _Unwind_Resume(a1);
}

Class __getTUIInputAssistantHostViewClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!qword_1ED49F3C0)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __TextInputUILibraryCore_block_invoke_17;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E7116890;
    v8 = 0;
    qword_1ED49F3C0 = _sl_dlopen();
  }

  if (!qword_1ED49F3C0)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *TextInputUILibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"UIInputWindowControllerHosting.m" lineNumber:49 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("TUIInputAssistantHostView");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getTUIInputAssistantHostViewClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"UIInputWindowControllerHosting.m" lineNumber:50 description:{@"Unable to find class %s", "TUIInputAssistantHostView"}];

LABEL_10:
    __break(1u);
  }

  qword_1ED49F3B8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __TextInputUILibraryCore_block_invoke_17()
{
  result = _sl_dlopen();
  qword_1ED49F3C0 = result;
  return result;
}

void __TIGetShowDebugBackdropValue_block_invoke()
{
  v0 = [MEMORY[0x1E69D9680] sharedPreferencesController];
  [v0 _configureKey:@"ShowDebugBackdrop" domain:@"com.apple.keyboard" defaultValue:MEMORY[0x1E695E110]];
}

id TIGetKeyboardOOPUsingEndInputSessionCompletionValue()
{
  if (TIGetKeyboardOOPUsingEndInputSessionCompletionValue_onceToken[0] != -1)
  {
    dispatch_once(TIGetKeyboardOOPUsingEndInputSessionCompletionValue_onceToken, &__block_literal_global_1479);
  }

  v0 = [MEMORY[0x1E69D9680] sharedPreferencesController];
  v1 = [v0 valueForPreferenceKey:@"KeyboardOOPUsingEndInputSessionCompletion"];

  return v1;
}

void sub_189C0A2E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void UIKeyboardSetSplit(uint64_t a1)
{
  v2 = +[UIKeyboardImpl activeInstance];
  [v2 setSplit:a1 animated:1];
}

void UIKeyboardSetUndocked(int a1)
{
  if (a1)
  {
    if (+[UIKeyboardImpl isFloating])
    {
      +[UIKeyboardImpl floatingPersistentOffset];
    }

    else
    {
      +[UIPeripheralHost defaultUndockedOffset];
    }

    v3 = v1;
    v4 = v2;
  }

  else
  {
    v3 = *MEMORY[0x1E695EFF8];
    v4 = *(MEMORY[0x1E695EFF8] + 8);
  }

  v5 = +[UIPeripheralHost sharedInstance];
  [v5 setUndockedWithOffset:1 animated:{v3, v4}];
}

void UIKeyboardSetSplitAndUndocked(uint64_t a1)
{
  v2 = +[UIKeyboardSplitControlMenu sharedInstance];
  [v2 setSplitAndUndocked:a1];
}

void UIKeyboardEnableAutomaticAppearanceForWindowScene(void *a1)
{
  v1 = [a1 keyboardSceneDelegate];
  [v1 setAutomaticAppearanceEnabled:1];
}

void UIKeyboardDisableAutomaticAppearanceForWindowScene(void *a1)
{
  v1 = [a1 keyboardSceneDelegate];
  [v1 setAutomaticAppearanceEnabled:0];
}

void UIKeyboardOrderInAutomatic()
{
  v0 = +[UIPeripheralHost sharedInstance];
  [v0 orderInAutomatic];
}

void UIKeyboardOrderInAutomaticFromDirectionWithDuration(uint64_t a1, double a2)
{
  v4 = +[UIPeripheralHost sharedInstance];
  [v4 orderInAutomaticFromDirection:a1 withDuration:a2];
}

void UIKeyboardOrderOutAutomatic()
{
  v0 = +[UIPeripheralHost sharedInstance];
  [v0 orderOutAutomatic];
}

void UIKeyboardOrderOutAutomaticToDirectionWithDuration(uint64_t a1, double a2)
{
  v4 = +[UIPeripheralHost sharedInstance];
  [v4 orderOutAutomaticToDirection:a1 withDuration:a2];
}

void UIKeyboardOrderInAutomaticSkippingAnimation()
{
  v0 = +[UIPeripheralHost sharedInstance];
  [v0 orderInAutomaticSkippingAnimation];
}

void UIKeyboardOrderOutAutomaticSkippingAnimation()
{
  v0 = +[UIPeripheralHost sharedInstance];
  [v0 orderOutAutomaticSkippingAnimation];
}

uint64_t UIKeyboardAutomaticIsOffScreen()
{
  v0 = +[UIPeripheralHost sharedInstance];
  v1 = [v0 isOffScreen];

  return v1;
}

void UIKeyboardPrepareForRotationToOrientation(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = +[UIPeripheralHost sharedInstance];
  [v4 prepareForRotationOfKeyboard:v3 toOrientation:a2];
}

void UIKeyboardRotateToOrientation(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = +[UIPeripheralHost sharedInstance];
  [v4 rotateKeyboard:v3 toOrientation:a2];
}

void UIKeyboardFinishRotation(void *a1)
{
  v1 = a1;
  v2 = +[UIPeripheralHost sharedInstance];
  [v2 finishRotationOfKeyboard:v1];
}

void UIKeyboardAutomaticPrepareForRotationToOrientation(uint64_t a1)
{
  v2 = +[UIPeripheralHost sharedInstance];
  [v2 prepareForRotationToOrientation:a1];
}

void UIKeyboardAutomaticRotateToOrientation(uint64_t a1)
{
  v2 = +[UIPeripheralHost sharedInstance];
  [v2 rotateToOrientation:a1];
}

void UIKeyboardAutomaticFinishRotation()
{
  v0 = +[UIPeripheralHost sharedInstance];
  [v0 finishRotation];
}

uint64_t UIKeyboardIsAutomaticAppearanceEnabled()
{
  v0 = +[UIPeripheralHost sharedInstance];
  v1 = [v0 automaticAppearanceEnabled];

  return v1;
}

void UIKeyboardForceOrderInAutomatic()
{
  v0 = +[UIPeripheralHost sharedInstance];
  [v0 forceOrderInAutomatic];
}

void UIKeyboardForceOrderOutAutomatic()
{
  v0 = +[UIPeripheralHost sharedInstance];
  [v0 forceOrderOutAutomatic];
}

void UIKeyboardForceOrderInAutomaticAnimated(uint64_t a1)
{
  v2 = +[UIPeripheralHost sharedInstance];
  [v2 forceOrderInAutomaticAnimated:a1];
}

void UIKeyboardForceOrderOutAutomaticAnimated(uint64_t a1)
{
  v2 = +[UIPeripheralHost sharedInstance];
  [v2 forceOrderOutAutomaticAnimated:a1];
}

void UIKeyboardForceOrderInAutomaticFromDirectionWithDuration(uint64_t a1, double a2)
{
  v4 = +[UIPeripheralHost sharedInstance];
  [v4 forceOrderInAutomaticFromDirection:a1 withDuration:a2];
}

void UIKeyboardForceOrderOutAutomaticToDirectionWithDuration(uint64_t a1, double a2)
{
  v4 = +[UIPeripheralHost sharedInstance];
  [v4 forceOrderOutAutomaticToDirection:a1 withDuration:a2];
}

id _UIHardwareKeyboardLog()
{
  if (qword_1ED49C4B8 != -1)
  {
    dispatch_once(&qword_1ED49C4B8, &__block_literal_global_1465_0);
  }

  v1 = qword_1ED49C4B0;

  return v1;
}

void __TIGetKeyboardOOPValue_block_invoke()
{
  v0 = [MEMORY[0x1E69D9680] sharedPreferencesController];
  [v0 _configureKey:@"KeyboardOOP" domain:@"com.apple.keyboard" defaultValue:MEMORY[0x1E695E110]];
}

void __TIGetKeyboardOOPUsingEndInputSessionCompletionValue_block_invoke()
{
  v0 = [MEMORY[0x1E69D9680] sharedPreferencesController];
  [v0 _configureKey:@"KeyboardOOPUsingEndInputSessionCompletion" domain:@"com.apple.keyboard" defaultValue:MEMORY[0x1E695E118]];
}

Class __getTUIKeyboardPathEffectViewClass_block_invoke_0(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!qword_1ED49C4D8)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __TextInputUILibraryCore_block_invoke_18;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E7116A30;
    v8 = 0;
    qword_1ED49C4D8 = _sl_dlopen();
  }

  if (!qword_1ED49C4D8)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *TextInputUILibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"UIKeyboard.m" lineNumber:87 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("TUIKeyboardPathEffectView");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getTUIKeyboardPathEffectViewClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"UIKeyboard.m" lineNumber:88 description:{@"Unable to find class %s", "TUIKeyboardPathEffectView"}];

LABEL_10:
    __break(1u);
  }

  qword_1ED49C4D0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __TextInputUILibraryCore_block_invoke_18()
{
  result = _sl_dlopen();
  qword_1ED49C4D8 = result;
  return result;
}

id _dictionaryFromUISceneOpenURLOptions(void *a1)
{
  v1 = a1;
  v2 = [MEMORY[0x1E695DF90] dictionary];
  v3 = [v1 sourceApplication];
  [v2 setValue:v3 forKey:@"UIApplicationOpenURLOptionsSourceApplicationKey"];

  v4 = [v1 annotation];
  [v2 setValue:v4 forKey:@"UIApplicationOpenURLOptionsAnnotationKey"];

  v5 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v1, "openInPlace")}];
  [v2 setValue:v5 forKey:@"UIApplicationOpenURLOptionsOpenInPlaceKey"];

  v6 = [v1 _sourceProcessHandle];

  if (v6)
  {
    v7 = [v1 _sourceProcessHandle];
    [v2 setValue:v7 forKey:@"_UIApplicationOpenURLOptionsSourceProcessHandleKey"];
  }

  v8 = [v2 copy];

  return v8;
}

void sub_189C0DDA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t ___smartPredictionsFromList_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isSmartReply])
  {
    v3 = 1;
  }

  else
  {
    v3 = [v2 isSmartAction];
  }

  return v3;
}

uint64_t ___listByRemovingSmartPredictions_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isSmartReply])
  {
    v3 = 0;
  }

  else
  {
    v3 = [v2 isSmartAction] ^ 1;
  }

  return v3;
}

uint64_t _UITouchAuthenticationIsEnabledForCurrentProcess()
{
  if (qword_1ED49F3F0 != -1)
  {
    dispatch_once(&qword_1ED49F3F0, &__block_literal_global_381);
  }

  return _MergedGlobals_1192;
}

void sub_189C10418(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

uint64_t __highFidelityDevice_block_invoke()
{
  result = MGIsDeviceOneOfType();
  if (result)
  {
    _MergedGlobals_1193 = 1;
  }

  return result;
}

BOOL UIKeyboardTraitsCanSplit(void *a1)
{
  v1 = a1;
  if ([v1 keyboardAppearance] == 13)
  {
    v2 = 0;
  }

  else
  {
    v3 = [v1 keyboardType];
    v4 = v3 != 127;
    if (v3 == 122)
    {
      v4 = 0;
    }

    v2 = v3 != 12 && v4;
  }

  return v2;
}

void sub_189C171FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_189C1843C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_189C18BF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_189C18DF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_189C2CE0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __AutoFillUILibraryCore_block_invoke_0()
{
  result = _sl_dlopen();
  qword_1ED498B10 = result;
  return result;
}

void __TIGetVerticalScrollingInEmojiPopoverValue_block_invoke()
{
  v0 = [MEMORY[0x1E69D9680] sharedPreferencesController];
  [v0 _configureKey:@"VerticalScrollingInEmojiPopover" domain:@"com.apple.keyboard" defaultValue:MEMORY[0x1E695E110]];
}

Class __getKFAViewControllerClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!qword_1ED498B28)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __KeyboardFeedbackAssistantLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E7116CF0;
    v8 = 0;
    qword_1ED498B28 = _sl_dlopen();
  }

  if (!qword_1ED498B28)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *KeyboardFeedbackAssistantLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"UIKeyboardImpl.m" lineNumber:317 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("KFAViewController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getKFAViewControllerClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"UIKeyboardImpl.m" lineNumber:318 description:{@"Unable to find class %s", "KFAViewController"}];

LABEL_10:
    __break(1u);
  }

  qword_1ED498B20 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __KeyboardFeedbackAssistantLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  qword_1ED498B28 = result;
  return result;
}

void *__getSBSTagTouchForTypingMenuSymbolLoc_block_invoke_0(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!qword_1ED498B38)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __SpringBoardServicesLibraryCore_block_invoke_5;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E7116D08;
    v7 = 0;
    qword_1ED498B38 = _sl_dlopen();
  }

  v2 = qword_1ED498B38;
  if (!qword_1ED498B38)
  {
    a1 = [MEMORY[0x1E696AAA8] currentHandler];
    v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *SpringBoardServicesLibrary(void)"];
    [a1 handleFailureInFunction:v2 file:@"UIKeyboardImpl.m" lineNumber:294 description:{@"%s", v5[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v3 = v5[0];
  if (v5[0])
  {
LABEL_7:
    free(v3);
  }

  result = dlsym(v2, "SBSTagTouchForTypingMenu");
  *(*(a1[4] + 8) + 24) = result;
  off_1ED498B30 = *(*(a1[4] + 8) + 24);
  return result;
}

uint64_t __SpringBoardServicesLibraryCore_block_invoke_5()
{
  result = _sl_dlopen();
  qword_1ED498B38 = result;
  return result;
}

void sub_189C3257C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_189C32788(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_189C33088(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, char a60)
{
  _Block_object_dispose(&a60, 8);
  _Block_object_dispose((v60 - 232), 8);
  _Block_object_dispose((v60 - 168), 8);
  _Unwind_Resume(a1);
}

void sub_189C35A58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_189C35BEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_189C392DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_189C398B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_189C3A49C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, id location)
{
  objc_destroyWeak((v33 + 48));
  objc_destroyWeak(&location);
  _Block_object_dispose((v34 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_189C3B000(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, id location, char a32)
{
  objc_destroyWeak((v32 + 48));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a32, 8);
  _Block_object_dispose((v33 - 144), 8);
  _Unwind_Resume(a1);
}

void *__Block_byref_object_copy__278(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void sub_189C3BD14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_189C3C3FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  objc_destroyWeak((v33 + 72));
  _Block_object_dispose(&a33, 8);
  objc_destroyWeak((v34 - 176));
  _Block_object_dispose((v34 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_189C3CE20(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_189C3E0D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38)
{
  objc_destroyWeak((v38 + 64));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a38, 8);
  _Block_object_dispose((v39 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_189C3EFFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_189C3F700(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 64));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_189C3F984(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 64));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_189C3FD04(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

id UIKeyboardRomanAccentVariants(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = MEMORY[0x1E696AEC0];
  v6 = a2;
  v7 = [v5 stringWithFormat:@"Roman-Accent-%@", a1];
  v8 = UIKeyboardVariants(v7, v6, a3);

  return v8;
}

uint64_t __UIKeyboardVariants_block_invoke(uint64_t a1, uint64_t a2)
{
  if ((a2 + 1) >= *(a1 + 40))
  {
    return 0;
  }

  [*(a1 + 32) characterAtIndex:v2];

  return TICharIsAlphaNumeric();
}

id _insertAdditionalPopup(void *a1, void *a2, int a3)
{
  v5 = a1;
  v6 = a2;
  if (v6)
  {
    v7 = [v5 objectForKey:@"Keycaps"];
    v8 = [v7 mutableCopy];

    v9 = [v5 objectForKey:@"Strings"];
    v10 = [v9 mutableCopy];

    if ([v8 containsObject:v6])
    {
      v11 = v5;
    }

    else
    {
      if (a3)
      {
        [v8 insertObject:v6 atIndex:0];
        [v10 insertObject:v6 atIndex:0];
      }

      else
      {
        [v8 addObject:v6];
        [v10 addObject:v6];
      }

      v12 = MEMORY[0x1E695DF90];
      v13 = [v5 objectForKey:@"Direction"];
      v11 = [v12 dictionaryWithObjectsAndKeys:{v13, @"Direction", v8, @"Keycaps", v10, @"Strings", 0}];
    }
  }

  else
  {
    v11 = v5;
  }

  return v11;
}

id UIKeyboardCurrencyVariants(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = a2;
  v5 = [v3 stringWithFormat:@"UI-Currency-%@", a1];
  v6 = UIKeyboardVariants(v5, v4, 15);

  v7 = UIKeyboardGetCurrentInputMode();
  v8 = UIKeyboardLocalizedString(@"UI-PrimaryCurrencySign", v7, 0, 0);

  v9 = _insertAdditionalPopup(v6, v8, 1);

  return v9;
}

__CFString *UIKeyboardLocalizedReturnKeyNameForLocaleIncludingDefaults(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  v6 = [v5 languageCode];
  v7 = [v5 scriptCode];
  v8 = [v5 variantCode];

  v9 = KeyboardReturnKeyStringConstantFromReturnKeyType(a1);
  v10 = v9;
  if (v9)
  {
    v11 = LookupInternationalObject(v9, v6, v7, v8, @"return", a3);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    v13 = v12;
  }

  else
  {
    v13 = @"return";
  }

  return v13;
}

void sub_189C43620(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_189C488B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_189C4DD10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id getTUIKeyboardAnimationInfoClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getTUIKeyboardAnimationInfoClass_softClass_1;
  v7 = getTUIKeyboardAnimationInfoClass_softClass_1;
  if (!getTUIKeyboardAnimationInfoClass_softClass_1)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getTUIKeyboardAnimationInfoClass_block_invoke_1;
    v3[3] = &unk_1E70F2F20;
    v3[4] = &v4;
    __getTUIKeyboardAnimationInfoClass_block_invoke_1(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_189C50B88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_189C536E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t UIAssistantViewAllowsMinimization()
{
  v0 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  v1 = [v0 systemInputAssistantViewController];

  v2 = [v1 supportsCompactStyle];
  return v2;
}

uint64_t UIAssistantViewVisualStateForPointInRect(char a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7)
{
  if (a1)
  {
    return 3;
  }

  v14 = UIAssistantViewAllowsMinimization();
  v26.origin.x = a2;
  v26.origin.y = a3;
  v26.size.width = a4;
  v26.size.height = a5;
  v15 = CGRectGetWidth(v26) * 0.25;
  v27.origin.x = a2;
  v27.origin.y = a3;
  v27.size.width = a4;
  v27.size.height = a5;
  v16 = CGRectGetHeight(v27) * 0.25;
  v28.origin.x = a2;
  v28.origin.y = a3;
  v28.size.width = a4;
  v28.size.height = a5;
  v29 = CGRectInset(v28, v15, v16);
  if (v14)
  {
    v25.x = a6;
    v25.y = a7;
    if (CGRectContainsPoint(v29, v25))
    {
      return 1;
    }
  }

  if (((v30.origin.x = a2, v30.origin.y = a3, v30.size.width = a4, v30.size.height = a5, MidX = CGRectGetMidX(v30), v31.origin.x = a2, v31.origin.y = a3, v31.size.width = a4, v31.size.height = a5, MaxY = CGRectGetMaxY(v31), v32.origin.x = a2, v32.origin.y = a3, v32.size.width = a4, v32.size.height = a5, MaxX = CGRectGetMaxX(v32), v33.origin.x = a2, v33.origin.y = a3, v33.size.width = a4, v33.size.height = a5, v23 = CGRectGetMaxY(v33), v34.origin.x = a2, v34.origin.y = a3, v34.size.width = a4, v34.size.height = a5, MinX = CGRectGetMinX(v34), v35.origin.x = a2, v35.origin.y = a3, v35.size.width = a4, v35.size.height = a5, v21 = CGRectGetMaxY(v35), UIAssistantViewClosestReferencePointFromPointInRect(a2, a3, a4, a5, a6, a7), MidX != v19) || MaxY != v20) && v14 && (MaxX == v19 && v23 == v20 || MinX == v19 && v21 == v20))
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

id UIInputViewSetPlacementFromAssistantViewVisualState(uint64_t a1, uint64_t a2, int a3)
{
  objc_opt_class();
  if ((a1 - 2) < 2 || a1 == 1)
  {
    v5 = objc_opt_class();
    if (a3)
    {
LABEL_4:
      v6 = [v5 placementForDraggingAssistant];
      goto LABEL_7;
    }
  }

  else
  {
    v5 = 0;
    if (a3)
    {
      goto LABEL_4;
    }
  }

  v6 = [v5 placement];
LABEL_7:

  return v6;
}

void UIAssistantViewClosestReferencePointFromPointInRect(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5, double a6)
{
  v21[6] = *MEMORY[0x1E69E9840];
  MaxX = CGRectGetMaxX(*&a1);
  v22.origin.x = a1;
  v22.origin.y = a2;
  v22.size.width = a3;
  v22.size.height = a4;
  MaxY = CGRectGetMaxY(v22);
  v23.origin.x = a1;
  v23.origin.y = a2;
  v23.size.width = a3;
  v23.size.height = a4;
  MinX = CGRectGetMinX(v23);
  v24.origin.x = a1;
  v24.origin.y = a2;
  v24.size.width = a3;
  v24.size.height = a4;
  v12 = CGRectGetMaxY(v24);
  v25.origin.x = a1;
  v25.origin.y = a2;
  v25.size.width = a3;
  v25.size.height = a4;
  MidX = CGRectGetMidX(v25);
  v26.origin.x = a1;
  v26.origin.y = a2;
  v26.size.width = a3;
  v26.size.height = a4;
  v14 = CGRectGetMaxY(v26);
  v15 = 0;
  *v21 = MaxX;
  *&v21[1] = MaxY;
  *&v21[2] = MinX;
  *&v21[3] = v12;
  *&v21[4] = MidX;
  *&v21[5] = v14;
  v16 = 3.40282347e38;
  do
  {
    v17 = sqrt((*&v21[v15] - a5) * (*&v21[v15] - a5) + (*&v21[v15 + 1] - a6) * (*&v21[v15 + 1] - a6));
    if (v17 < v16)
    {
      v16 = v17;
    }

    v15 += 2;
  }

  while (v15 != 6);
}

uint64_t __TextInputUILibraryCore_block_invoke_19()
{
  result = _sl_dlopen();
  TextInputUILibraryCore_frameworkLibrary_8 = result;
  return result;
}

void sub_189C583BC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void _logRejectedTapAction()
{
  CategoryCachedImpl = __UILogGetCategoryCachedImpl("KeyboardDock", &_logRejectedTapAction___s_category);
  if (*CategoryCachedImpl)
  {
    v1 = *(CategoryCachedImpl + 8);
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      *v2 = 0;
      _os_log_impl(&dword_188A29000, v1, OS_LOG_TYPE_ERROR, "Rejected tap outside tapAction boundary", v2, 2u);
    }
  }
}

void _UIInvalidateSwipeActionsLayoutForDecorationViewAtIndexPath(void *a1, void *a2)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = [v3 collectionView];
  if (([v5 _isPerformingReloadData] & 1) == 0)
  {
    if (_UIIsIndexPathValidInCollectionView(v5, v4))
    {
      v6 = objc_alloc_init([objc_opt_class() invalidationContextClass]);
      [v6 _setIntent:9];
      v12[0] = v4;
      v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
      [v6 invalidateDecorationElementsOfKind:@"UICollectionViewListLayoutElementKindSwipeActions" atIndexPaths:v7];

      [v3 invalidateLayoutWithContext:v6];
    }

    else
    {
      if (os_variant_has_internal_diagnostics())
      {
        v9 = __UIFaultDebugAssertLog();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
        {
          v10 = 138412290;
          v11 = v4;
          _os_log_fault_impl(&dword_188A29000, v9, OS_LOG_TYPE_FAULT, "Attempted to invalidate swipe actions layout for invalid decoration index path: %@", &v10, 0xCu);
        }
      }

      else
      {
        v8 = *(__UILogGetCategoryCachedImpl("Assert", &_UIInvalidateSwipeActionsLayoutForDecorationViewAtIndexPath___s_category) + 8);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          v10 = 138412290;
          v11 = v4;
          _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_ERROR, "Attempted to invalidate swipe actions layout for invalid decoration index path: %@", &v10, 0xCu);
        }
      }

      [v3 invalidateLayout];
    }
  }
}

void _UIPerformImmediateCollectionViewLayoutAndVisibleCellsUpdate(void *a1)
{
  v2 = a1;
  v1 = [v2 _allowsVisibleCellUpdatesDuringUpdateAnimations];
  [v2 _setAllowsVisibleCellUpdatesDuringUpdateAnimations:1];
  [v2 layoutIfNeeded];
  [v2 _setAllowsVisibleCellUpdatesDuringUpdateAnimations:v1];
}

void _UIUpdateMaskViewClippingFromView(void *a1, void *a2)
{
  v3 = a2;
  v6 = [a1 layer];
  v4 = [v3 layer];

  v5 = [v4 cornerCurve];
  [v6 setCornerCurve:v5];

  [v4 cornerRadius];
  [v6 setCornerRadius:?];
  [v6 setMaskedCorners:{objc_msgSend(v4, "maskedCorners")}];
  [v6 setMasksToBounds:1];
}

void _UIInvalidateSwipeActionsLayoutForItemAtIndexPath(void *a1, void *a2)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = [v3 collectionView];
  if (([v5 _isPerformingReloadData] & 1) == 0)
  {
    if (_UIIsIndexPathValidInCollectionView(v5, v4))
    {
      v6 = objc_alloc_init([objc_opt_class() invalidationContextClass]);
      [v6 _setIntent:9];
      v14[0] = v4;
      v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
      [v6 invalidateItemsAtIndexPaths:v7];

      if (([v5 _globalIndexPathForItemAtIndexPath:v4] - 1) > 0x7FFFFFFFFFFFFFFDLL)
      {
        v8 = 0;
      }

      else
      {
        v8 = [v5 _indexPathForGlobalIndex:?];
      }

      v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:{v4, v8, 0}];
      [v6 invalidateDecorationElementsOfKind:@"UICollectionViewListLayoutElementKindBottomSeparator" atIndexPaths:v10];
      [v6 invalidateDecorationElementsOfKind:@"UICollectionViewListLayoutElementKindTopSeparator" atIndexPaths:v10];
      [v3 invalidateLayoutWithContext:v6];
    }

    else
    {
      if (os_variant_has_internal_diagnostics())
      {
        v11 = __UIFaultDebugAssertLog();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
        {
          *buf = 138412290;
          v13 = v4;
          _os_log_fault_impl(&dword_188A29000, v11, OS_LOG_TYPE_FAULT, "Attempted to invalidate swipe actions layout for invalid item index path: %@", buf, 0xCu);
        }
      }

      else
      {
        v9 = *(__UILogGetCategoryCachedImpl("Assert", &_UIInvalidateSwipeActionsLayoutForItemAtIndexPath___s_category) + 8);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v13 = v4;
          _os_log_impl(&dword_188A29000, v9, OS_LOG_TYPE_ERROR, "Attempted to invalidate swipe actions layout for invalid item index path: %@", buf, 0xCu);
        }
      }

      [v3 invalidateLayout];
    }
  }
}

void _UIUpdateMaskViewFrameForSwipedCellAtIndexPath(void *a1, void *a2)
{
  v41 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (([v3 _isPerformingReloadData] & 1) == 0)
  {
    v5 = [v3 _visibleDecorationViewOfKind:@"UICollectionViewListLayoutElementKindSwipeActions" atIndexPath:v4];
    if (os_variant_has_internal_diagnostics())
    {
      if (!v5)
      {
        v33 = __UIFaultDebugAssertLog();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_FAULT))
        {
          v39 = 138412290;
          v40 = v4;
          _os_log_fault_impl(&dword_188A29000, v33, OS_LOG_TYPE_FAULT, "Unable to get visible swipe actions view for index path: %@", &v39, 0xCu);
        }
      }
    }

    else if (!v5)
    {
      v36 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED49F4B0) + 8);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        v39 = 138412290;
        v40 = v4;
        _os_log_impl(&dword_188A29000, v36, OS_LOG_TYPE_ERROR, "Unable to get visible swipe actions view for index path: %@", &v39, 0xCu);
      }
    }

    v6 = [v3 cellForItemAtIndexPath:v4];
    if (os_variant_has_internal_diagnostics())
    {
      if (!v6)
      {
        v34 = __UIFaultDebugAssertLog();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_FAULT))
        {
          v39 = 138412290;
          v40 = v4;
          _os_log_fault_impl(&dword_188A29000, v34, OS_LOG_TYPE_FAULT, "Unable to get visible cell for index path: %@", &v39, 0xCu);
        }
      }
    }

    else if (!v6)
    {
      v37 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED49F4B8) + 8);
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        v39 = 138412290;
        v40 = v4;
        _os_log_impl(&dword_188A29000, v37, OS_LOG_TYPE_ERROR, "Unable to get visible cell for index path: %@", &v39, 0xCu);
      }
    }

    v7 = [(UIView *)v6 _safeMaskView];
    if (os_variant_has_internal_diagnostics())
    {
      if (!v7)
      {
        v35 = __UIFaultDebugAssertLog();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_FAULT))
        {
          v39 = 138412290;
          v40 = v4;
          _os_log_fault_impl(&dword_188A29000, v35, OS_LOG_TYPE_FAULT, "Unable to get mask from cell for index path: %@", &v39, 0xCu);
        }
      }
    }

    else if (!v7)
    {
      v38 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED49F4C0) + 8);
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        v39 = 138412290;
        v40 = v4;
        _os_log_impl(&dword_188A29000, v38, OS_LOG_TYPE_ERROR, "Unable to get mask from cell for index path: %@", &v39, 0xCu);
      }
    }

    v8 = [v5 _outermostLayer];
    [v8 bounds];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v17 = [v6 _outermostLayer];
    [v8 convertRect:v17 toLayer:{v10, v12, v14, v16}];
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;

    if (!_UISolariumSwipeActionsEnabled())
    {
      goto LABEL_12;
    }

    v26 = [v6 _layoutAttributes];
    v27 = [(UICollectionViewLayoutAttributes *)v26 _existingListAttributes];
    if (v27)
    {
      v28 = v27[2];

      if (v28 == 2)
      {
LABEL_12:
        [v7 setCenter:{v19 + v23 * 0.5, v21 + v25 * 0.5}];
        [v7 bounds];
        [v7 setBounds:?];
        _UIUpdateMaskViewClippingFromView(v7, v5);

        goto LABEL_13;
      }
    }

    else
    {
    }

    [v3 bounds];
    [v3 convertRect:v6 toView:?];
    v19 = v29;
    v21 = v30;
    v23 = v31;
    v25 = v32;
    goto LABEL_12;
  }

LABEL_13:
}

BOOL _UIIsIndexPathValidInCollectionView(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v4 && (v6 = [v4 section], v6 < objc_msgSend(v3, "numberOfSections")))
  {
    v7 = [v5 item];
    v8 = v7 < [v3 numberOfItemsInSection:{objc_msgSend(v5, "section")}];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void sub_189C5FE64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

BOOL _UICellAccessoryCustomViewDefaultUsesStandardLayoutWidthForCustomButton(void *a1)
{
  v1 = a1;
  if (dyld_program_sdk_at_least())
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = ___UICellAccessoryCustomViewDefaultUsesStandardLayoutWidthForCustomButton_block_invoke;
    v9[3] = &unk_1E70F3590;
    v2 = v1;
    v10 = v2;
    [UIView performWithoutAnimation:v9];
    v3 = [v2 _currentConfiguration];
    v4 = v3;
    if (v3)
    {
      [v3 title];
    }

    else
    {
      [v2 titleForState:0];
    }
    v7 = ;
    v6 = [v7 length];
  }

  else
  {
    v5 = [v1 titleForState:0];
    v6 = [v5 length];
  }

  return v6 == 0;
}

UICellAccessoryPosition UICellAccessoryPositionBeforeAccessoryOfClass(Class accessoryClass)
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __UICellAccessoryPositionBeforeAccessoryOfClass_block_invoke;
  aBlock[3] = &__block_descriptor_40_e17_Q16__0__NSArray_8lu32l8;
  aBlock[4] = accessoryClass;
  v1 = _Block_copy(aBlock);

  return v1;
}

uint64_t __UICellAccessoryPositionBeforeAccessoryOfClass_block_invoke(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __UICellAccessoryPositionBeforeAccessoryOfClass_block_invoke_2;
  v3[3] = &__block_descriptor_40_e32_B32__0__UICellAccessory_8Q16_B24lu32l8;
  v3[4] = *(a1 + 32);
  result = [a2 indexOfObjectPassingTest:v3];
  if (result == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  return result;
}

UICellAccessoryPosition UICellAccessoryPositionAfterAccessoryOfClass(Class accessoryClass)
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __UICellAccessoryPositionAfterAccessoryOfClass_block_invoke;
  aBlock[3] = &__block_descriptor_40_e17_Q16__0__NSArray_8lu32l8;
  aBlock[4] = accessoryClass;
  v1 = _Block_copy(aBlock);

  return v1;
}

uint64_t __UICellAccessoryPositionAfterAccessoryOfClass_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __UICellAccessoryPositionAfterAccessoryOfClass_block_invoke_2;
  v7[3] = &__block_descriptor_40_e32_B32__0__UICellAccessory_8Q16_B24lu32l8;
  v7[4] = *(a1 + 32);
  v4 = [v3 indexOfObjectWithOptions:2 passingTest:v7];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = [v3 count];
  }

  else
  {
    v5 = v4 + 1;
  }

  return v5;
}

void sub_189C63F30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getLPLinkMetadataClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!qword_1ED49F4D0)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __LinkPresentationLibraryCore_block_invoke_0;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E7117BE8;
    v8 = 0;
    qword_1ED49F4D0 = _sl_dlopen();
  }

  if (!qword_1ED49F4D0)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *LinkPresentationLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"_UINavigationBarTitleRenamerSession.m" lineNumber:25 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("LPLinkMetadata");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getLPLinkMetadataClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"_UINavigationBarTitleRenamerSession.m" lineNumber:26 description:{@"Unable to find class %s", "LPLinkMetadata"}];

LABEL_10:
    __break(1u);
  }

  _MergedGlobals_1201 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __LinkPresentationLibraryCore_block_invoke_0()
{
  result = _sl_dlopen();
  qword_1ED49F4D0 = result;
  return result;
}

uint64_t _UIGetUIKeyboardTypingSpeedLogger()
{
  if (_UIInternalPreferencesRevisionOnce != -1)
  {
    dispatch_once(&_UIInternalPreferencesRevisionOnce, &__block_literal_global_5_11);
  }

  v0 = _UIInternalPreferencesRevisionVar;
  if (_UIInternalPreferencesRevisionVar < 1 || (v3 = _UIInternalPreference_UIKeyboardTypingSpeedLogger, _UIInternalPreferencesRevisionVar == _UIInternalPreference_UIKeyboardTypingSpeedLogger))
  {
    v1 = 1;
  }

  else
  {
    do
    {
      v1 = v0 >= v3;
      if (v0 < v3)
      {
        break;
      }

      _UIInternalPreferenceSync(v0, &_UIInternalPreference_UIKeyboardTypingSpeedLogger, @"UIKeyboardTypingSpeedLogger", _UIInternalPreferenceUpdateBool);
      v3 = _UIInternalPreference_UIKeyboardTypingSpeedLogger;
    }

    while (v0 != _UIInternalPreference_UIKeyboardTypingSpeedLogger);
  }

  return byte_1ED48B2F4 || v1;
}

void _UILogObservationTrackingInvalidation(void *a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = *(__UILogGetCategoryCachedImpl("ObservationTracking", &_UILogObservationTrackingInvalidation___s_category) + 8);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v9 = @"(unknown)";
    v10 = 138412802;
    if (v5)
    {
      v9 = v5;
    }

    v11 = v9;
    v12 = 2112;
    v13 = v7;
    v14 = 2112;
    v15 = v6;
    _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_ERROR, "Observable object key path '%@' changed; performing invalidation for [%@] of: %@", &v10, 0x20u);
  }
}

id _UIPathConvertedToPreviewContainerSpace(void *a1, void *a2)
{
  v3 = a2;
  v4 = [a1 copy];
  memset(&v27, 0, sizeof(v27));
  [v3 size];
  v6 = v5;
  v8 = v7;
  v9 = [v3 target];
  [v9 center];
  v11 = round(v10 - v8 * 0.5);
  v13 = round(v12 - v6 * 0.5);

  v14 = [v3 parameters];
  v15 = [v14 visiblePath];

  v29.origin.x = v13;
  v29.origin.y = v11;
  v29.size.width = v6;
  v29.size.height = v8;
  MinX = CGRectGetMinX(v29);
  if (v15)
  {
    v17 = [v3 parameters];
    v18 = [v17 visiblePath];
    [v18 bounds];
    v19 = MinX - CGRectGetMinX(v30);
    v31.origin.x = v13;
    v31.origin.y = v11;
    v31.size.width = v6;
    v31.size.height = v8;
    MinY = CGRectGetMinY(v31);
    v21 = [v3 parameters];
    v22 = [v21 visiblePath];
    [v22 bounds];
    v23 = CGRectGetMinY(v32);
    CGAffineTransformMakeTranslation(&v27, v19, MinY - v23);
  }

  else
  {
    v33.origin.x = v13;
    v33.origin.y = v11;
    v33.size.width = v6;
    v33.size.height = v8;
    v24 = CGRectGetMinY(v33);
    CGAffineTransformMakeTranslation(&v27, MinX, v24);
  }

  v26 = v27;
  [v4 applyTransform:&v26];

  return v4;
}

__n128 _UISizeRespectingTransformsFromPreview(void *a1, double a2, double a3)
{
  v3 = [a1 target];
  memset(&v14, 0, sizeof(v14));
  v4 = [v3 container];
  v5 = [v3 container];
  v6 = [v5 window];
  _UIGetTransformBetweenViews(v4, v6, 1, &v14);

  memset(&v13, 0, sizeof(v13));
  if (v3)
  {
    [v3 transform];
  }

  else
  {
    memset(&t1, 0, sizeof(t1));
  }

  t2 = v14;
  CGAffineTransformConcat(&v13, &t1, &t2);
  v10 = vabsq_f64(vaddq_f64(vmulq_n_f64(*&v13.a, a2), vmulq_n_f64(*&v13.c, a3)));

  return v10;
}

void sub_189C711E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_189C7467C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53)
{
  _Block_object_dispose(&a53, 8);
  _Block_object_dispose((v53 - 256), 8);
  _Block_object_dispose((v53 - 208), 8);
  _Block_object_dispose((v53 - 176), 8);
  _Unwind_Resume(a1);
}

id _UIRemoteKeyboardsFBSSceneIdentityStringFromSettingsSceneOfWindow(void *a1)
{
  v1 = [a1 windowScene];
  v2 = [v1 _settingsScene];

  v3 = [v2 _FBSScene];

  v4 = [v3 identityToken];
  v5 = [v4 stringRepresentation];

  return v5;
}

void sub_189C7A990(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 64));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_189C7C704(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

BOOL _UITouchIsWithinTiledWindowResizeRegion(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v3 view];
  v6 = [v4 windowScene];

  v7 = 0;
  if (v5 && v6)
  {
    [v3 locationInView:v5];
    v9 = v8;
    v11 = v10;
    v12 = [v6 _coordinateSpace];
    [v12 convertPoint:v5 fromCoordinateSpace:{v9, v11}];
    v14 = v13;

    v15 = [v6 _coordinateSpace];
    [v15 bounds];
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;

    v25.origin.x = v17;
    v25.origin.y = v19;
    v25.size.width = v21;
    v25.size.height = v23;
    if (v14 >= CGRectGetMaxX(v25) + -20.0)
    {
      v7 = 1;
    }

    else
    {
      v26.origin.x = v17;
      v26.origin.y = v19;
      v26.size.width = v21;
      v26.size.height = v23;
      v7 = v14 <= CGRectGetMinX(v26) + 20.0;
    }
  }

  return v7;
}

void __TIGetHideRemoteKeyboardWindowValue_block_invoke()
{
  v0 = [MEMORY[0x1E69D9680] sharedPreferencesController];
  [v0 _configureKey:@"HideRemoteKeyboardWindow" domain:@"com.apple.keyboard" defaultValue:MEMORY[0x1E695E110]];
}

void sub_189C80CAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak((v16 - 40));
  _Unwind_Resume(a1);
}

__CFString *_NSStringFromUIPointerLockStatus(uint64_t a1)
{
  if (a1)
  {
    return @"_UIPointerLockStatusLocked";
  }

  else
  {
    return @"_UIPointerLockStatusUnlocked";
  }
}

void sub_189C8353C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_189C84BBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
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

void sub_189C84E48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_189C85150(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id _UIPerformVoidSelector1(void *a1, const char *a2)
{
  if (dyld_program_sdk_at_least())
  {
    v4 = a1;
    v5 = a2;
    v6 = 0;
  }

  else
  {
    v5 = sel_performSelector_withObject_;
    v4 = a1;
    v6 = a2;
  }

  return [v4 v5];
}

void sub_189C90750(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  _Block_object_dispose(&a20, 8);
  _Block_object_dispose(&a26, 8);
  _Unwind_Resume(a1);
}

id _attributedStringForObject(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
LABEL_5:
    v3 = v2;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v1];
    goto LABEL_5;
  }

  v3 = 0;
LABEL_7:

  return v3;
}

uint64_t __AssistantServicesLibraryCore_block_invoke_3()
{
  result = _sl_dlopen();
  qword_1ED49F568 = result;
  return result;
}

id TIGetDocumentRequestSurroundingGranularityCountValue()
{
  if (TIGetDocumentRequestSurroundingGranularityCountValue_onceToken != -1)
  {
    dispatch_once(&TIGetDocumentRequestSurroundingGranularityCountValue_onceToken, &__block_literal_global_1194_0);
  }

  v0 = [MEMORY[0x1E69D9680] sharedPreferencesController];
  v1 = [v0 valueForPreferenceKey:@"DocumentRequestSurroundingGranularityCount"];

  return v1;
}

void __TIGetDocumentRequestSurroundingGranularityCountValue_block_invoke()
{
  v0 = [MEMORY[0x1E69D9680] sharedPreferencesController];
  [v0 _configureKey:@"DocumentRequestSurroundingGranularityCount" domain:@"com.apple.keyboard" defaultValue:&unk_1EFE31D50];
}

id TIGetDocumentRequestRectCountBeforeValue()
{
  if (TIGetDocumentRequestRectCountBeforeValue_onceToken != -1)
  {
    dispatch_once(&TIGetDocumentRequestRectCountBeforeValue_onceToken, &__block_literal_global_1210);
  }

  v0 = [MEMORY[0x1E69D9680] sharedPreferencesController];
  v1 = [v0 valueForPreferenceKey:@"DocumentRequestRectCountBefore"];

  return v1;
}

void __TIGetDocumentRequestRectCountBeforeValue_block_invoke()
{
  v0 = [MEMORY[0x1E69D9680] sharedPreferencesController];
  [v0 _configureKey:@"DocumentRequestRectCountBefore" domain:@"com.apple.keyboard" defaultValue:&unk_1EFE31D68];
}

id TIGetDocumentRequestRectCountAfterValue()
{
  if (TIGetDocumentRequestRectCountAfterValue_onceToken != -1)
  {
    dispatch_once(&TIGetDocumentRequestRectCountAfterValue_onceToken, &__block_literal_global_1220);
  }

  v0 = [MEMORY[0x1E69D9680] sharedPreferencesController];
  v1 = [v0 valueForPreferenceKey:@"DocumentRequestRectCountAfter"];

  return v1;
}

void __TIGetDocumentRequestRectCountAfterValue_block_invoke()
{
  v0 = [MEMORY[0x1E69D9680] sharedPreferencesController];
  [v0 _configureKey:@"DocumentRequestRectCountAfter" domain:@"com.apple.keyboard" defaultValue:&unk_1EFE31D38];
}

double _UIHyperMinimumValue(const double *a1, vDSP_Length __N)
{
  __C = 0.0;
  vDSP_minvD(a1, 1, &__C, __N);
  return __C;
}

double _UIHyperMaximumValue(const double *a1, vDSP_Length __N)
{
  __C = 0.0;
  vDSP_maxvD(a1, 1, &__C, __N);
  return __C;
}

double _UIHyperDot(const double *a1, const double *__B, vDSP_Length __N)
{
  __C = 0.0;
  vDSP_dotprD(a1, 1, __B, 1, &__C, __N);
  return __C;
}

void _UIHyperUnit(double *a1, const double *a2, vDSP_Length a3)
{
  cblas_dnrm2_NEWLAPACK();
  __B = v6;
  vDSP_vsdivD(a2, 1, &__B, a1, 1, a3);
}

double _UIHyperDistanceSquaredTo(const double *a1, const double *__B, vDSP_Length __N)
{
  __C = 0.0;
  vDSP_distancesqD(a1, 1, __B, 1, &__C, __N);
  return __C;
}

double _UIHyperDistanceTo(const double *a1, const double *__B, vDSP_Length __N)
{
  __C = 0.0;
  vDSP_distancesqD(a1, 1, __B, 1, &__C, __N);
  return sqrt(__C);
}

void _UIHyperUnitTo(double *__C, const double *__B, const double *a3, vDSP_Length __N)
{
  vDSP_vsubD(__B, 1, a3, 1, __C, 1, __N);
  cblas_dnrm2_NEWLAPACK();
  __Ba = v6;
  vDSP_vsdivD(__C, 1, &__Ba, __C, 1, __N);
}

void _UIHyperInterpolate(double *__C, const double *__B, const double *a3, vDSP_Length __N, double a5)
{
  vDSP_vsubD(__B, 1, a3, 1, __C, 1, __N);
  if (__C == __B)
  {
    __Ba = 1.0 - a5;
    vDSP_vsmulD(__C, 1, &__Ba, __C, 1, __N);
    vDSP_vsubD(__C, 1, a3, 1, __C, 1, __N);
  }

  else
  {
    __Ba = a5;
    vDSP_vsmulD(__C, 1, &__Ba, __C, 1, __N);
    vDSP_vaddD(__B, 1, __C, 1, __C, 1, __N);
  }
}

void _UIHyperExtend(double *a1, const double *__A, const double *a3, vDSP_Length __N, double a5)
{
  __C = 0.0;
  vDSP_distancesqD(__A, 1, a3, 1, &__C, __N);
  _UIHyperInterpolate(a1, __A, a3, __N, a5 / sqrt(__C));
}

double _UIHyperFractionOfProjectionOnto(const double *a1, const double *__B, vDSP_Length __N)
{
  __C = 0.0;
  vDSP_dotprD(a1, 1, __B, 1, &__C, __N);
  v5 = __C;
  __C = 0.0;
  vDSP_dotprD(__B, 1, __B, 1, &__C, __N);
  return v5 / __C;
}

uint64_t _UIHyperProjectionMatrixForBasis(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v1 = cblas_dgemm_NEWLAPACK();
  MEMORY[0x1EEE9AC00](v1);
  dgetrf_NEWLAPACK();
  v2 = dgetri_NEWLAPACK();
  MEMORY[0x1EEE9AC00](v2);
  cblas_dgemm_NEWLAPACK();
  return cblas_dgemm_NEWLAPACK();
}

uint64_t _UIHyperKernelBasis(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  dgetrf_NEWLAPACK();
  dtrtrs_NEWLAPACK();
  return dlaswp_NEWLAPACK();
}

BOOL _UIHyperIsFinite(const double *a1, vDSP_Length __N)
{
  __C = 0.0;
  vDSP_minvD(a1, 1, &__C, __N);
  return (*&__C & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000;
}

id _UIVectorDescription(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AD60] stringWithString:@"["];
  if (a2)
  {
    v5 = 0;
    do
    {
      [v4 appendFormat:@"%g", *(a1 + 8 * v5)];
      if (v5 < a2 - 1)
      {
        [v4 appendString:{@", "}];
      }

      ++v5;
    }

    while (a2 != v5);
  }

  [v4 appendString:@"]"];

  return v4;
}

id _UINSUIntegerVectorDescription(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AD60] stringWithString:@"["];
  if (a2)
  {
    v5 = 0;
    do
    {
      [v4 appendFormat:@"%lu", *(a1 + 8 * v5)];
      if (v5 < a2 - 1)
      {
        [v4 appendString:{@", "}];
      }

      ++v5;
    }

    while (a2 != v5);
  }

  [v4 appendString:@"]"];

  return v4;
}

id _UIMatrixDescription(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [MEMORY[0x1E696AD60] stringWithString:@"["];
  v10 = a3;
  if (a3)
  {
    v7 = 0;
    do
    {
      [v6 appendString:@"["];
      if (a2)
      {
        v8 = 0;
        do
        {
          [v6 appendFormat:@"%g", *(a1 + 8 * v8)];
          if (v8 < a2 - 1)
          {
            [v6 appendString:{@", "}];
          }

          ++v8;
        }

        while (a2 != v8);
      }

      [v6 appendString:@"]"];
      if (v7 < v10 - 1)
      {
        [v6 appendString:{@", "}];
      }

      ++v7;
      a1 += 8 * a2;
    }

    while (v7 != v10);
  }

  [v6 appendString:@"]"];

  return v6;
}

void sub_189C9AD80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_189C9B498(void *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a2 == 2)
  {
    v11 = objc_begin_catch(exc_buf);
    [v10 notifyDelegateOfCancelledTouch:v9];
    NSLog(&cfstr_ExceptionWhenH.isa);

    objc_end_catch();
    JUMPOUT(0x189C9B420);
  }

  objc_begin_catch(exc_buf);
  JUMPOUT(0x189C9B424);
}

void sub_189C9CC84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_189C9D1AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_189C9DAD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id _NSTextHighlightColorSchemeForTextFormattingChangeValue(void *a1)
{
  v1 = a1;
  v2 = [v1 changeType];

  if (v2 != @"UITextFormattingViewControllerHighlightChange")
  {
    goto LABEL_2;
  }

  v4 = [v1 highlight];

  if (v4 == @"UITextFormattingViewControllerHighlightDefault")
  {
    v10 = off_1E70ECA50;
  }

  else
  {
    v5 = [v1 highlight];

    if (v5 == @"UITextFormattingViewControllerHighlightPurple")
    {
      v10 = off_1E70ECA70;
    }

    else
    {
      v6 = [v1 highlight];

      if (v6 == @"UITextFormattingViewControllerHighlightPink")
      {
        v10 = off_1E70ECA68;
      }

      else
      {
        v7 = [v1 highlight];

        if (v7 == @"UITextFormattingViewControllerHighlightOrange")
        {
          v10 = off_1E70ECA60;
        }

        else
        {
          v8 = [v1 highlight];

          if (v8 == @"UITextFormattingViewControllerHighlightMint")
          {
            v10 = off_1E70ECA58;
          }

          else
          {
            v9 = [v1 highlight];

            if (v9 != @"UITextFormattingViewControllerHighlightBlue")
            {
LABEL_2:
              v3 = 0;
              goto LABEL_16;
            }

            v10 = off_1E70ECA48;
          }
        }
      }
    }
  }

  v3 = *v10;
LABEL_16:

  return v3;
}

id _UITextFormattingViewControllerChangeValueClasses()
{
  if (qword_1ED49F5B8 != -1)
  {
    dispatch_once(&qword_1ED49F5B8, &__block_literal_global_406);
  }

  v1 = _MergedGlobals_1205;

  return v1;
}

void sub_189CA03E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_189CA2840(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  _Block_object_dispose(&a30, 8);
  _Block_object_dispose((v30 - 152), 8);
  _Unwind_Resume(a1);
}

void sub_189CA54EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v8 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_189CA6778(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_189CA8E3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_189CA9728(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

double _UIGet_UIKBRT_SetDownTapInterval()
{
  if (_UIInternalPreferencesRevisionOnce != -1)
  {
    dispatch_once(&_UIInternalPreferencesRevisionOnce, &__block_literal_global_5_11);
  }

  v0 = _UIInternalPreferencesRevisionVar;
  result = 0.04;
  if (_UIInternalPreferencesRevisionVar >= 1)
  {
    v2 = _UIInternalPreference__UIKBRT_SetDownTapInterval;
    if (_UIInternalPreferencesRevisionVar != _UIInternalPreference__UIKBRT_SetDownTapInterval)
    {
      while (v0 >= v2)
      {
        _UIInternalPreferenceSync(v0, &_UIInternalPreference__UIKBRT_SetDownTapInterval, @"_UIKBRT_SetDownTapInterval", _UIInternalPreferenceUpdateDouble);
        v2 = _UIInternalPreference__UIKBRT_SetDownTapInterval;
        if (v0 == _UIInternalPreference__UIKBRT_SetDownTapInterval)
        {
          return 0.04;
        }
      }

      return *&qword_1EA95E1A0;
    }
  }

  return result;
}

void *__Block_byref_object_copy__108(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void sub_189CAC1F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_189CAC9B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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

void sub_189CAEB70(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x228], 8);
  _Block_object_dispose(&STACK[0x248], 8);
  _Block_object_dispose(&STACK[0x268], 8);
  _Block_object_dispose((v1 - 184), 8);
  _Unwind_Resume(a1);
}

void sub_189CB11CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void getIASignalSmartRepliesIntentEngaged()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getIASignalSmartRepliesIntentEngagedSymbolLoc_ptr;
  v9 = getIASignalSmartRepliesIntentEngagedSymbolLoc_ptr;
  if (!getIASignalSmartRepliesIntentEngagedSymbolLoc_ptr)
  {
    v1 = InputAnalyticsLibrary_0();
    v7[3] = dlsym(v1, "IASignalSmartRepliesIntentEngaged");
    getIASignalSmartRepliesIntentEngagedSymbolLoc_ptr = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getIASignalSmartRepliesIntentEngaged(void)"];
    [v4 handleFailureInFunction:v5 file:@"_UISmartReplyFeedbackManager.m" lineNumber:37 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_189CB1D5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void getIAPayloadKeySmartRepliesSelectedIntent()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getIAPayloadKeySmartRepliesSelectedIntentSymbolLoc_ptr;
  v9 = getIAPayloadKeySmartRepliesSelectedIntentSymbolLoc_ptr;
  if (!getIAPayloadKeySmartRepliesSelectedIntentSymbolLoc_ptr)
  {
    v1 = InputAnalyticsLibrary_0();
    v7[3] = dlsym(v1, "IAPayloadKeySmartRepliesSelectedIntent");
    getIAPayloadKeySmartRepliesSelectedIntentSymbolLoc_ptr = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getIAPayloadKeySmartRepliesSelectedIntent(void)"];
    [v4 handleFailureInFunction:v5 file:@"_UISmartReplyFeedbackManager.m" lineNumber:43 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_189CB1EC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_189CB25BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void getIAChannelFeedbackService()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getIAChannelFeedbackServiceSymbolLoc_ptr;
  v9 = getIAChannelFeedbackServiceSymbolLoc_ptr;
  if (!getIAChannelFeedbackServiceSymbolLoc_ptr)
  {
    v1 = InputAnalyticsLibrary_0();
    v7[3] = dlsym(v1, "IAChannelFeedbackService");
    getIAChannelFeedbackServiceSymbolLoc_ptr = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getIAChannelFeedbackService(void)"];
    [v4 handleFailureInFunction:v5 file:@"_UISmartReplyFeedbackManager.m" lineNumber:35 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_189CB2720(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_189CB2C20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_189CB2D88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_189CB2EF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_189CB31F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_189CB34A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getIASignalSmartRepliesComposeFieldInFocusSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = InputAnalyticsLibrary_0();
  result = dlsym(v2, "IASignalSmartRepliesComposeFieldInFocus");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getIASignalSmartRepliesComposeFieldInFocusSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __InputAnalyticsLibraryCore_block_invoke_1()
{
  result = _sl_dlopen();
  InputAnalyticsLibraryCore_frameworkLibrary_1 = result;
  return result;
}

void *__getIAChannelSmartRepliesSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = InputAnalyticsLibrary_0();
  result = dlsym(v2, "IAChannelSmartReplies");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getIAChannelSmartRepliesSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getIASignalSmartRepliesIntentEngagedSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = InputAnalyticsLibrary_0();
  result = dlsym(v2, "IASignalSmartRepliesIntentEngaged");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getIASignalSmartRepliesIntentEngagedSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getIAPayloadKeySmartRepliesSelectedIntentSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = InputAnalyticsLibrary_0();
  result = dlsym(v2, "IAPayloadKeySmartRepliesSelectedIntent");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getIAPayloadKeySmartRepliesSelectedIntentSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getIASignalFeedbackServiceSmartRepliesFeedbackUIPresentedSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = InputAnalyticsLibrary_0();
  result = dlsym(v2, "IASignalFeedbackServiceSmartRepliesFeedbackUIPresented");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getIASignalFeedbackServiceSmartRepliesFeedbackUIPresentedSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getIAChannelFeedbackServiceSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = InputAnalyticsLibrary_0();
  result = dlsym(v2, "IAChannelFeedbackService");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getIAChannelFeedbackServiceSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getIASignalFeedbackServiceLaunchSmartRepliesReportConcernSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = InputAnalyticsLibrary_0();
  result = dlsym(v2, "IASignalFeedbackServiceLaunchSmartRepliesReportConcern");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getIASignalFeedbackServiceLaunchSmartRepliesReportConcernSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getIASignalFeedbackServiceLaunchSmartRepliesThumbsUpSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = InputAnalyticsLibrary_0();
  result = dlsym(v2, "IASignalFeedbackServiceLaunchSmartRepliesThumbsUp");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getIASignalFeedbackServiceLaunchSmartRepliesThumbsUpSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getIASignalFeedbackServiceLaunchSmartRepliesThumbsDownSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = InputAnalyticsLibrary_0();
  result = dlsym(v2, "IASignalFeedbackServiceLaunchSmartRepliesThumbsDown");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getIASignalFeedbackServiceLaunchSmartRepliesThumbsDownSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getIASignalFeedbackServiceSmartRepliesFeedbackUIResetSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = InputAnalyticsLibrary_0();
  result = dlsym(v2, "IASignalFeedbackServiceSmartRepliesFeedbackUIReset");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getIASignalFeedbackServiceSmartRepliesFeedbackUIResetSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getIASignalAnalyticsClass_block_invoke_0(uint64_t a1)
{
  InputAnalyticsLibraryCore_1();
  result = objc_getClass("IASignalAnalytics");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getIASignalAnalyticsClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_189CC1AA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t _getGestureKeyboardFlag(void *a1)
{
  v1 = objc_getAssociatedObject(a1, &s_gestureKeyboardKey);
  v2 = [v1 integerValue];

  return v2;
}

uint64_t IsGestureWithinSpecialRegion(void *a1)
{
  v1 = a1;
  v2 = [v1 view];
  [v1 locationInView:v2];
  v4 = v3;
  v6 = v5;

  v7 = IsTouchPointWithinSpecialRegion(v2, v4, v6);
  return v7;
}

uint64_t IsTouchPointWithinSpecialRegion(void *a1, CGFloat a2, CGFloat a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a1;
  if (objc_opt_respondsToSelector())
  {
    v6 = [v5 _keyboardLongPressInteractionRegions];
  }

  else
  {
    v6 = 0;
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = *v17;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v16 + 1) + 8 * i) CGRectValue];
        x = v23.origin.x;
        y = v23.origin.y;
        width = v23.size.width;
        height = v23.size.height;
        if (!CGRectIsNull(v23))
        {
          v24.origin.x = x;
          v24.origin.y = y;
          v24.size.width = width;
          v24.size.height = height;
          v22.x = a2;
          v22.y = a3;
          if (CGRectContainsPoint(v24, v22))
          {
            v8 = 1;
            goto LABEL_15;
          }
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_15:

  return v8;
}

BOOL _gestureIsEnded(void *a1)
{
  v1 = a1;
  v2 = [v1 state] == 3 || objc_msgSend(v1, "state") == 4 || objc_msgSend(v1, "state") == 5;

  return v2;
}

void sub_189CDEA58(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 88));
  _Unwind_Resume(a1);
}

void _UIUpdateLabelUsingConfiguration(void *a1, id *a2, void *a3)
{
  v10 = a1;
  v5 = a3;
  if (!a2)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _UIUpdateLabelUsingConfiguration(UIView * _Nonnull __strong, UILabel * _Nullable __strong * _Nonnull, _UIContentViewLabelConfiguration * _Nonnull __strong)"}];
    [v8 handleFailureInFunction:v9 file:@"_UIContentViewLabelConfiguration_Internal.h" lineNumber:65 description:{@"Invalid parameter not satisfying: %@", @"labelPtr != NULL"}];
  }

  v6 = *a2;
  if ([v5 _hasText])
  {
    if (v6)
    {
      if ([(UIView *)v6 isHidden])
      {
        [(UIView *)v6 setHidden:0];
      }
    }

    else
    {
      v6 = objc_alloc_init(UILabel);
      v7 = *a2;
      *a2 = v6;

      [v10 addSubview:v6];
    }

    [v5 applyToLabel:v6];
  }

  else if (v6 && ![(UIView *)v6 isHidden])
  {
    [(UIView *)v6 setHidden:1];
  }
}

uint64_t _UIHIDEventSynchronizationStrategyForEvent(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  if (_getTritiumVendorDefinedEvent(a1))
  {
    *buf = 0;
    IOHIDEventGetVendorDefinedData();
  }

  v2 = *(__UILogGetCategoryCachedImpl("HIDEventSynchronization", &_MergedGlobals_1214) + 8);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *&buf[4] = a1;
    _os_log_impl(&dword_188A29000, v2, OS_LOG_TYPE_DEFAULT, "Unable to find vendor defined event or it has unexpected data: %@", buf, 0xCu);
  }

  v3 = *(__UILogGetCategoryCachedImpl("HIDEventSynchronization", &qword_1ED49F6C8) + 8);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    *&buf[4] = 0;
    *&buf[8] = 2048;
    *&buf[10] = 0;
    _os_log_impl(&dword_188A29000, v3, OS_LOG_TYPE_DEFAULT, "Gesture type '%u' -> synchronization strategy '%lu'.", buf, 0x12u);
  }

  return 0;
}

id KeyboardUIClientLog()
{
  if (qword_1ED49F6D8 != -1)
  {
    dispatch_once(&qword_1ED49F6D8, &__block_literal_global_422);
  }

  v1 = _MergedGlobals_1215;

  return v1;
}

void __KeyboardUIClientLog_block_invoke()
{
  v0 = os_log_create("com.apple.keyboard", "KeyboardUIClient");
  v1 = _MergedGlobals_1215;
  _MergedGlobals_1215 = v0;
}

void sub_189CEBE48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_189CEBFE4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  _Unwind_Resume(a1);
}

void sub_189CED590(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 144), 8);
  _Block_object_dispose((v1 - 112), 8);
  _Unwind_Resume(a1);
}

float ValueForPoint(void *a1, int a2, double a3, double a4, double a5, double a6, float a7, float a8)
{
  v13 = a1;
  [v13 bounds];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  WeakRetained = objc_loadWeakRetained(v13 + 67);
  [WeakRetained trackRectForBounds:{v15, v17, v19, v21}];
  v24 = v23;
  v26 = v25;

  if (dyld_program_sdk_at_least())
  {
    v27 = -3.0;
  }

  else
  {
    v27 = -2.0;
  }

  v48.origin.x = v24;
  v48.origin.y = v17;
  v48.size.width = v26;
  v48.size.height = v21;
  v49 = CGRectInset(v48, v27, 0.0);
  x = v49.origin.x;
  width = v49.size.width;
  v30 = 6;
  if (*(v13 + 521))
  {
    v30 = 5;
  }

  v31 = *(v13 + OBJC_IVAR____UISlideriOSVisualElement__sliderFlags[v30]);
  [v31 frame];
  v33 = v32;
  if (a2)
  {
    v34 = width - (a5 + *(v13 + 62) - x);
  }

  else
  {
    v34 = a5 + *(v13 + 62) - x;
  }

  v35 = [v13 data];
  [v35 sliderSpeedMultiplier];
  v37 = a3 + (v34 - a3) * v36;

  v38 = v37 + v33 * -0.5;
  v39 = ((a8 - a7) * v38) / (width - v33) + a7;
  if ((v13[59] & 8) != 0)
  {
    v40 = [v13 data];
    [v40 sliderSpeedMultiplier];
    v42 = fabs(v41 + -1.0);

    if (v42 <= 0.01)
    {
      v43 = [v13 slider];
      v44 = [v43 _sliderConfiguration];

      v47 = 0.0;
      *&v45 = v39;
      if ([v44 adjustPositionForTargetPosition:&v47 adjustedPosition:0 startPosition:0 endPosition:v45])
      {
        v39 = v47;
      }
    }
  }

  if (v39 >= a7)
  {
    a7 = v39;
    if (v39 > a8)
    {
      a7 = a8;
    }
  }

  return a7;
}

uint64_t UITextRangeContainsPointInViewWithSlop(void *a1, void *a2, double a3, double a4, double a5)
{
  v9 = a2;
  v10 = a1;
  v11 = [v10 textInputView];
  [v11 convertPoint:v10 fromView:{a3, a4}];
  v14 = UITextRangeContainsPointWithSlop(v10, v9, v12, v13, a5);

  return v14;
}

uint64_t UITextRangeContainsPointWithSlop(void *a1, uint64_t a2, CGFloat a3, CGFloat a4, double a5)
{
  v34 = *MEMORY[0x1E69E9840];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v8 = [a1 selectionRectsForRange:{a2, 0}];
  v9 = [v8 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v9)
  {
    v10 = *v30;
    v11 = -a5;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v30 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v29 + 1) + 8 * i);
        [v13 rect];
        v15 = v14;
        v17 = v16;
        v19 = v18;
        v21 = v20;
        if ([v13 isVertical])
        {
          v22 = 0.0;
          v23 = v15;
          v24 = v17;
          v25 = v19;
          v26 = v21;
          v27 = v11;
        }

        else
        {
          v27 = 0.0;
          v23 = v15;
          v24 = v17;
          v25 = v19;
          v26 = v21;
          v22 = v11;
        }

        v36 = CGRectInset(*&v23, v27, v22);
        v35.x = a3;
        v35.y = a4;
        if (CGRectContainsPoint(v36, v35))
        {
          v9 = 1;
          goto LABEL_14;
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v29 objects:v33 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:

  return v9;
}

void sub_189CF75A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_189CFDD48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_189D0489C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __eventQueueSourceCallback(uint64_t a1)
{
  _UIApplicationDrainManagedAutoreleasePool();
  v2 = _UIMachTimeForMediaTime(*(a1 + 72));
  v3 = _UIMachTimeForMediaTime(*(a1 + 80));
  _UIQOSProcessingBegin("HIDQueue", 0, v2, v3);
  __processEventQueue(a1, 4);

  _UIQOSProcessingEnd();
}

void *__dispatchDragEvent(void *a1, void *a2, uint64_t a3)
{
  result = [a1 _isReadyForReset];
  if (result)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = ____dispatchDragEvent_block_invoke;
    v7[3] = &__block_descriptor_48_e5_v8__0lu32l8u40l8;
    v7[4] = a3;
    v7[5] = a1;
    result = _Block_copy(v7);
    *a2 = result;
  }

  return result;
}

void ____updateTouchesWithDigitizerEventAndDetermineIfShouldSend_block_invoke_2(uint64_t a1, _BYTE *a2)
{
  if (a2)
  {
    v4 = a2[270];
  }

  else
  {
    v4 = 0;
  }

  if (*(a1 + 48) != (v4 & 1))
  {
    CFDictionaryAddValue(*(a1 + 32), [a2 _pathIndex], a2);
    v5 = *(a1 + 40);
    v6 = [a2 _pathIndex];

    CFDictionaryRemoveValue(v5, v6);
  }
}

uint64_t ____updateTouchesWithDigitizerEventAndDetermineIfShouldSend_block_invoke_43(uint64_t a1, uint64_t a2)
{
  v4 = *(*(*(a1 + 32) + 8) + 40);
  if (!v4)
  {
    v5 = [MEMORY[0x1E695DFA8] set];
    v6 = *(*(a1 + 32) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v4 = *(*(*(a1 + 32) + 8) + 40);
  }

  return [v4 addObject:a2];
}

unint64_t ____dispatchPreprocessedEventFromEventQueue_block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) phase];
  if (result <= 5 && ((1 << result) & 0x31) != 0)
  {
    v4 = *(a1 + 32);

    return [v4 _removeGestureRecognizersFromWindows];
  }

  return result;
}

unint64_t ____dispatchPreprocessedEventFromEventQueue_block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) phase];
  if (result <= 4 && ((1 << result) & 0x19) != 0)
  {
    v4 = *(a1 + 32);

    return [v4 _removeGestureRecognizersFromWindows];
  }

  return result;
}

uint64_t ____applySynthesizedTouchTranslationAndModifyIfNeeded_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = IOHIDEventGetIntegerValue();
  if (result == 65280)
  {
    result = IOHIDEventGetIntegerValue();
    if (result == 43)
    {
      result = IOHIDEventGetDataValue();
      *(*(*(a1 + 32) + 8) + 24) = result;
      *a4 = 1;
    }
  }

  return result;
}

void ____dispatchEstimationUpdateEvents_block_invoke(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = [MEMORY[0x1E696AD98] numberWithLong:a4];
  v5 = [(UIEventEnvironment *)a1[6] _estimatedTouchRecordForContextID:v15 estimationIndex:?];
  IntegerValue = IOHIDEventGetIntegerValue();
  v7 = (IntegerValue & 0x400) == 0 || v5 == 0;
  v8 = v7;
  if (!v7)
  {
    IOHIDEventGetFloatValue();
    *&v9 = v9;
    [v5 dispatchUpdateWithPressure:0 stillEstimated:*&v9];
  }

  if (v5)
  {
    v10 = (IntegerValue & 0x800000) == 0;
  }

  else
  {
    v10 = 1;
  }

  if (!v10)
  {
    IOHIDEventGetFloatValue();
    *&v11 = v11;
    [v5 dispatchUpdateWithRollAngle:0 stillEstimated:*&v11];
    v8 = 0;
  }

  if (v5 && (v8 & 1) == 0)
  {
    v12 = a1[5];
    v13 = *(*(v12 + 8) + 40);
    if (v13)
    {
      v14 = [v13 hasRemainingUpdates];
      v12 = a1[5];
      if ((v14 & 1) == 0)
      {
        [(UIEventEnvironment *)a1[6] _removeEstimatedTouchRecord:?];
        v12 = a1[5];
      }
    }

    objc_storeStrong((*(v12 + 8) + 40), v5);
  }
}

CGFloat __lockWarpedPointToViewEdge(void *a1, CGFloat a2, CGFloat a3, double a4, double a5)
{
  v10 = [a1 superview];
  [a1 frame];
  [v10 convertRect:0 toView:?];
  UIDistanceBetweenPointAndRect(a2, a3, v11, v12, v13, v14);
  v16 = v15;

  v17 = sqrt((a2 - a4) * (a2 - a4) + (a3 - a5) * (a3 - a5));
  if (fabs(v17) >= 2.22044605e-16 && v17 >= v16)
  {
    return a2 + (a4 - a2) * (v16 / v17);
  }

  return a4;
}

void ____startNewUITouch_block_invoke_2(void *a1, uint64_t a2, void *a3)
{
  v5 = a1[4];
  if (v5)
  {
    v6 = [a3 _responder];
    v7 = v6;
    if (v5 == v6)
    {
      v8 = (*(a1[8] + 16))();

      if (v8)
      {
        *(*(a1[6] + 8) + 24) = 1;
      }
    }

    else
    {
    }
  }

  v9 = a1[5];
  v10 = [a3 window];
  if (v9 != v10)
  {
    goto LABEL_7;
  }

  v16 = v10;
  v11 = [a3 _responder];
  if (v11)
  {
    v12 = v11;
    v13 = (*(a1[8] + 16))();

    if ((v13 & 1) == 0)
    {
      return;
    }

    goto LABEL_12;
  }

  v14 = [a3 gestureRecognizers];
  if ([v14 count])
  {
    v15 = (*(a1[8] + 16))();

    if (!v15)
    {
      return;
    }

LABEL_12:
    *(*(a1[7] + 8) + 24) = 1;
    return;
  }

  v10 = v16;
LABEL_7:
}

void ____startNewUITouch_block_invoke_3(void *a1, uint64_t a2, void *a3)
{
  v5 = a1[4];
  if (v5)
  {
    v6 = [a3 _responder];
    v7 = v6;
    if (v5 == v6)
    {
      v8 = (*(a1[8] + 16))();

      if (v8)
      {
        *(*(a1[6] + 8) + 24) = 1;
      }
    }

    else
    {
    }
  }

  v9 = a1[5];
  v10 = [a3 window];
  if (v9 != v10)
  {
    goto LABEL_7;
  }

  v16 = v10;
  v11 = [a3 _responder];
  if (v11)
  {
    v12 = v11;
    v13 = (*(a1[8] + 16))();

    if ((v13 & 1) == 0)
    {
      return;
    }

    goto LABEL_12;
  }

  v14 = [a3 gestureRecognizers];
  if ([v14 count])
  {
    v15 = (*(a1[8] + 16))();

    if (!v15)
    {
      return;
    }

LABEL_12:
    *(*(a1[7] + 8) + 24) = 1;
    return;
  }

  v10 = v16;
LABEL_7:
}

void __setTouchViewNilWithGestureCheck(void *a1, void *a2, void *a3, void *a4)
{
  v8 = [a2 view];
  if ([v8 _shouldApplyExclusiveTouch])
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x2020000000;
    v15 = 0;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = ____existingTouchOutsideViewInTouchMap_block_invoke;
    v11[3] = &unk_1E7119430;
    v11[4] = v8;
    v11[5] = &v12;
    v9 = _Block_copy(v11);
    [a3 enumerateKeysAndObjectsUsingBlock:v9];
    if (v13[3])
    {

      _Block_object_dispose(&v12, 8);
      goto LABEL_7;
    }

    [a4 enumerateKeysAndObjectsUsingBlock:v9];
    v10 = *(v13 + 24);

    _Block_object_dispose(&v12, 8);
    if (v10)
    {
      goto LABEL_7;
    }
  }

  if ([a1 _anyInterestedGestureRecognizersForTouchInView:v8])
  {
    [a1 _addTouch:a2 forDelayedDelivery:0];
  }

LABEL_7:
  [a1 _clearViewForTouch:a2];
}

void sub_189D10A14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void ____existingTouchOutsideViewInTouchMap_block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v6 = [a3 view];
  if (v6)
  {
    v9 = v6;
    v7 = [*(a1 + 32) isDescendantOfView:v6];
    v6 = v9;
    v8 = v7 ^ 1;
  }

  else
  {
    v8 = 0;
  }

  *(*(*(a1 + 40) + 8) + 24) = v8;
  *a4 = *(*(*(a1 + 40) + 8) + 24);
}

void sub_189D1185C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _UIKBTextSignalsFoundInKeywordsList(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = ___UIKBTextSignalsFoundInKeywordsList_block_invoke;
  v8[3] = &unk_1E7119608;
  v5 = v4;
  v9 = v5;
  v10 = &v11;
  [v3 enumerateObjectsUsingBlock:v8];
  v6 = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return v6;
}

void sub_189D13768(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_189D13C54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id get_SFAppPasswordSavingViewControllerClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_1ED49F9A0;
  v7 = qword_1ED49F9A0;
  if (!qword_1ED49F9A0)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __get_SFAppPasswordSavingViewControllerClass_block_invoke;
    v3[3] = &unk_1E70F2F20;
    v3[4] = &v4;
    __get_SFAppPasswordSavingViewControllerClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_189D15930(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __AutoFillUILibraryCore_block_invoke_1()
{
  result = _sl_dlopen();
  qword_1ED49F980 = result;
  return result;
}

uint64_t __SafariServicesLibraryCore_block_invoke_2()
{
  result = _sl_dlopen();
  qword_1ED49F9A8 = result;
  return result;
}

void sub_189D170B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_189D181F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_189D1852C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_189D1966C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, id location)
{
  objc_destroyWeak(v12);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void _UIViewServiceHostSessionLogAssertionInfo(void *a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = *(__UILogGetCategoryCachedImpl("ViewServiceAssertion", &_UIViewServiceHostSessionLogAssertionInfo___s_category) + 8);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412802;
    v10 = v5;
    v11 = 2112;
    v12 = v6;
    v13 = 2048;
    v14 = v7;
    _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_DEFAULT, "%@: identifier: %@; assertion: %p", &v9, 0x20u);
  }
}

void _AttemptDismiss(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  [s_presentations removeObject:v3];
  if (![s_presentations count])
  {
    v5 = s_presentations;
    s_presentations = 0;
  }

  v6 = [v3 presentingViewController];

  if (v6)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = ___AttemptDismiss_block_invoke;
    v7[3] = &unk_1E70F37C0;
    v8 = v3;
    v9 = v4;
    [v8 dismissViewControllerAnimated:0 completion:v7];
  }

  else
  {
    v4[2](v4);
  }
}

id get_SFAppAutoFillPasswordViewControllerClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = get_SFAppAutoFillPasswordViewControllerClass_softClass;
  v7 = get_SFAppAutoFillPasswordViewControllerClass_softClass;
  if (!get_SFAppAutoFillPasswordViewControllerClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __get_SFAppAutoFillPasswordViewControllerClass_block_invoke;
    v3[3] = &unk_1E70F2F20;
    v3[4] = &v4;
    __get_SFAppAutoFillPasswordViewControllerClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_189D1EDA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void UIKeyboardSafariPresentCredentialPickerVC(void *a1)
{
  v2 = a1;
  get_SFAppAutoFillPasswordViewControllerClass();
  if (objc_opt_isKindOfClass() & 1) != 0 || (get_SFAppPasswordSavingViewControllerClass_0(), (objc_opt_isKindOfClass()) || (get_SFExternalPasswordCredentialViewControllerClass(), (objc_opt_isKindOfClass()))
  {
    v1 = objc_opt_class();
    if (v1)
    {
      UIKeyboardPresentHiddenViewController(v1, v2);
    }
  }
}

id get_SFAppPasswordSavingViewControllerClass_0()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = get_SFAppPasswordSavingViewControllerClass_softClass;
  v7 = get_SFAppPasswordSavingViewControllerClass_softClass;
  if (!get_SFAppPasswordSavingViewControllerClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __get_SFAppPasswordSavingViewControllerClass_block_invoke_0;
    v3[3] = &unk_1E70F2F20;
    v3[4] = &v4;
    __get_SFAppPasswordSavingViewControllerClass_block_invoke_0(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_189D1F374(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id get_SFExternalPasswordCredentialViewControllerClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = get_SFExternalPasswordCredentialViewControllerClass_softClass;
  v7 = get_SFExternalPasswordCredentialViewControllerClass_softClass;
  if (!get_SFExternalPasswordCredentialViewControllerClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __get_SFExternalPasswordCredentialViewControllerClass_block_invoke;
    v3[3] = &unk_1E70F2F20;
    v3[4] = &v4;
    __get_SFExternalPasswordCredentialViewControllerClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_189D1F454(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void UIKeyboardPresentHiddenViewController(objc_class *a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(a1);
  [v4 setAutofillVC:v3];

  [v4 presentSelfWithAnimation:1];
}

void UIKeyboardSafariPresentCredentialPickerForType(uint64_t a1)
{
  objc_opt_class();
  switch(a1)
  {
    case 4:
      v5 = +[UIKeyboardImpl activeInstance];
      [v5 handleAutoFillPasswordPopoverCommand];
      goto LABEL_10;
    case 2:
      v2 = objc_opt_class();
      SFAppPasswordSavingViewControllerClass_0 = get_SFAppPasswordSavingViewControllerClass_0();
      break;
    case 1:
      v2 = objc_opt_class();
      SFAppPasswordSavingViewControllerClass_0 = get_SFAppAutoFillPasswordViewControllerClass();
      break;
    default:
      return;
  }

  v4 = objc_alloc_init(SFAppPasswordSavingViewControllerClass_0);
  if (v4)
  {
    v5 = v4;
    UIKeyboardPresentHiddenViewController(v2, v4);
LABEL_10:
  }
}

void UIKeyboardSafariPresentExternalCredentialViewControllerForCredentialData(void *a1)
{
  v1 = a1;
  v2 = MEMORY[0x1E696ACD0];
  v12 = 0;
  v13 = &v12;
  v14 = 0x2050000000;
  v3 = qword_1ED49F9E0;
  v15 = qword_1ED49F9E0;
  if (!qword_1ED49F9E0)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __getSFSafariCredentialClass_block_invoke;
    v11[3] = &unk_1E70F2F20;
    v11[4] = &v12;
    __getSFSafariCredentialClass_block_invoke(v11);
    v3 = v13[3];
  }

  v4 = v3;
  _Block_object_dispose(&v12, 8);
  v5 = [v2 unarchivedObjectOfClass:v3 fromData:v1 error:0];
  v6 = objc_alloc_init(get_SFExternalPasswordCredentialViewControllerClass());
  UIKeyboardSafariPresentCredentialPickerVC(v6);
  if (objc_opt_respondsToSelector())
  {
    v7 = +[UIKeyboardImpl activeInstance];
    v8 = [v7 _autofillContext];

    v9 = [v8 objectForKey:@"_page_id"];
    v10 = [v8 objectForKey:@"_frame_id"];
    [v6 autoFillWithExternalCredential:v5 pageID:v9 frameID:v10];
  }

  else
  {
    [v6 autoFillWithExternalCredential:v5];
  }
}

void sub_189D1F748(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void UIKeyboardSafariDepresentForViewService()
{
  v14 = *MEMORY[0x1E69E9840];
  v0 = [s_presentations copy];
  v1 = s_presentations;
  s_presentations = 0;

  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = v0;
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        if ([v7 presentedAutofill])
        {
          v8 = +[UIPeripheralHost sharedInstance];
          [v8 setDeactivatedKeyboard:0 forScene:0];
        }

        _AttemptDismiss(v7, &__block_literal_global_165_0);
      }

      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }
}

void SafariServicesLibrary()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!SafariServicesLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __SafariServicesLibraryCore_block_invoke_3;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E7119800;
    v5 = 0;
    SafariServicesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!SafariServicesLibraryCore_frameworkLibrary)
  {
    v1 = [MEMORY[0x1E696AAA8] currentHandler];
    v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *SafariServicesLibrary(void)"];
    [v1 handleFailureInFunction:v2 file:@"UIKeyboardVCPresenter.m" lineNumber:44 description:{@"%s", v3[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v0 = v3[0];
  if (v3[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __SafariServicesLibraryCore_block_invoke_3()
{
  result = _sl_dlopen();
  SafariServicesLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getSFSafariCredentialClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!qword_1ED49F9E8)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __SafariFoundationLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E7119818;
    v8 = 0;
    qword_1ED49F9E8 = _sl_dlopen();
  }

  if (!qword_1ED49F9E8)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *SafariFoundationLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"UIKeyboardVCPresenter.m" lineNumber:49 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("SFSafariCredential");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getSFSafariCredentialClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"UIKeyboardVCPresenter.m" lineNumber:50 description:{@"Unable to find class %s", "SFSafariCredential"}];

LABEL_10:
    __break(1u);
  }

  qword_1ED49F9E0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __SafariFoundationLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  qword_1ED49F9E8 = result;
  return result;
}

uint64_t _UISceneLiveResizeStretchingEnabled()
{
  if (!_UILiveSceneResizeEnabled())
  {
    return 1;
  }

  v0 = +[_UISceneLiveResizePrototypeSettingsDomain rootSettings];
  v1 = [v0 stretchingEnabled];

  return v1;
}

uint64_t _UISceneLiveResizeGetAnimationMode()
{
  if (!_UILiveSceneResizeEnabled())
  {
    return 0;
  }

  v0 = +[_UISceneLiveResizePrototypeSettingsDomain rootSettings];
  v1 = [v0 animationMode];
  v2 = [v1 unsignedIntegerValue];

  return v2;
}

BOOL _UISceneLiveResizeFinishedActionEnabled()
{
  if (!_UILiveSceneResizeEnabled())
  {
    return 1;
  }

  v0 = +[_UISceneLiveResizePrototypeSettingsDomain rootSettings];
  v1 = [v0 _effectiveThrottlingMode];

  return v1 > 1;
}

BOOL _UISceneLiveResizeTransactionThrottlingEnabled()
{
  if (!_UILiveSceneResizeEnabled())
  {
    return 1;
  }

  v0 = +[_UISceneLiveResizePrototypeSettingsDomain rootSettings];
  v1 = [v0 _effectiveThrottlingMode];

  return v1 != 0;
}

uint64_t _UISceneLiveResizeAnimationFenceEnabled()
{
  if (!_UILiveSceneResizeEnabled())
  {
    return 1;
  }

  v0 = +[_UISceneLiveResizePrototypeSettingsDomain rootSettings];
  v1 = [v0 animationFenceEnabled];

  return v1;
}

void sub_189D26184(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_189D363E0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 88));
  _Unwind_Resume(a1);
}

uint64_t __CoreMotionLibraryCore_block_invoke_0()
{
  result = _sl_dlopen();
  qword_1ED499CC0 = result;
  return result;
}

id _UISceneUserActivityManagerUserInfoForPersistentIdentifier(void *a1)
{
  v1 = a1;
  _assertForAllowedProcess_0();
  v2 = [_UISceneUserActivityManager _getUserInfoForPersistentIdentifier:v1 error:0];

  return v2;
}

void _assertForAllowedProcess_0()
{
  v11 = *MEMORY[0x1E69E9840];
  if (qword_1ED49FA30 != -1)
  {
    dispatch_once(&qword_1ED49FA30, &__block_literal_global_452_0);
  }

  v2 = _UIMainBundleIdentifier();
  if (([qword_1ED49FA28 containsObject:?] & 1) == 0)
  {
    v0 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid attempt to use functionality specifically for UIKit testing apps by: %@", v2];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void _assertForAllowedProcess(void)"];
      *buf = 138544130;
      v4 = v1;
      v5 = 2114;
      v6 = @"_UISceneUserActivityManager.m";
      v7 = 1024;
      v8 = 70;
      v9 = 2114;
      v10 = v0;
      _os_log_error_impl(&dword_188A29000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
    }

    [v0 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x189D42A60);
  }
}

id _UISceneUserActivityManagerInternalUserInfoForPersistentIdentifier(void *a1)
{
  v1 = a1;
  _assertForAllowedProcess_0();
  v2 = [_UISceneUserActivityManager _getInternalUserInfoForPersistentIdentifier:v1 error:0];

  return v2;
}

void _saveSceneSessionInternalUserInfo(void *a1)
{
  v33 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    *(v1 + 32) = *(v1 + 32) & 0xFF3F | 0x80;
  }

  v3 = [(UISceneSession *)v1 _internalUserInfo];
  v4 = [v2 persistentIdentifier];
  v5 = _restorationDirectory(v4);
  v6 = [v5 URLByAppendingPathComponent:@"internalUserInfo.data" isDirectory:0];

  if (v3)
  {
    if ([MEMORY[0x1E696AE40] propertyList:v3 isValidForFormat:100])
    {
      v7 = [v2 persistentIdentifier];
      _ensureRestorationDirectoryExists(v7);

      v25 = 0;
      [v3 writeToURL:v6 error:&v25];
      v8 = v25;
      if (v8)
      {
        v9 = v8;
        v10 = *(__UILogGetCategoryCachedImpl("SceneStateRestoration", &qword_1ED49FA48) + 8);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v28 = "void _saveSceneSessionInternalUserInfo(UISceneSession *__strong)";
          v29 = 2112;
          v30 = v9;
          v11 = "%s: Could not save Scene Session internal userInfo dictionary error = %@";
          v12 = v10;
          v13 = 22;
LABEL_21:
          _os_log_impl(&dword_188A29000, v12, OS_LOG_TYPE_ERROR, v11, buf, v13);
          goto LABEL_22;
        }

        goto LABEL_22;
      }

      CategoryCachedImpl = __UILogGetCategoryCachedImpl("SceneStateRestoration", &qword_1ED49FA50);
      if (*CategoryCachedImpl)
      {
        v19 = *(CategoryCachedImpl + 8);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315138;
          v28 = "void _saveSceneSessionInternalUserInfo(UISceneSession *__strong)";
          v20 = "%s: Saved Scene Session internal userInfo dictionary";
          goto LABEL_15;
        }
      }
    }

    else
    {
      v19 = *(__UILogGetCategoryCachedImpl("SceneStateRestoration", &qword_1ED49FA60) + 8);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v28 = "void _saveSceneSessionInternalUserInfo(UISceneSession *__strong)";
        v20 = "%s: Scene Session internal userInfo dictionary is not valid property list, skipping save";
LABEL_15:
        _os_log_impl(&dword_188A29000, v19, OS_LOG_TYPE_ERROR, v20, buf, 0xCu);
      }
    }

LABEL_17:
    v9 = 0;
    goto LABEL_22;
  }

  v14 = __UILogGetCategoryCachedImpl("SceneStateRestoration", &qword_1ED49FA38);
  if (*v14)
  {
    v24 = *(v14 + 8);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v28 = "void _saveSceneSessionInternalUserInfo(UISceneSession *__strong)";
      v29 = 2112;
      v30 = v6;
      _os_log_impl(&dword_188A29000, v24, OS_LOG_TYPE_ERROR, "%s: Nothing to save for UIScene's saved internal userInfo file, deleting existing file if it exists: %@", buf, 0x16u);
    }
  }

  v15 = [MEMORY[0x1E696AC08] defaultManager];
  v26 = 0;
  v16 = [v15 removeItemAtURL:v6 error:&v26];
  v9 = v26;

  if (((v9 == 0) & v16) != 0)
  {
    goto LABEL_17;
  }

  if (v9)
  {
    v17 = [v9 domain];
    v18 = v17;
    if (v17 == *MEMORY[0x1E696A250])
    {
      v22 = [v9 code] == 4;

      if (v22)
      {
        goto LABEL_22;
      }
    }

    else
    {
    }
  }

  v23 = *(__UILogGetCategoryCachedImpl("SceneStateRestoration", &qword_1ED49FA40) + 8);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v28 = "void _saveSceneSessionInternalUserInfo(UISceneSession *__strong)";
    v29 = 2112;
    v30 = v6;
    v31 = 2112;
    v32 = v9;
    v11 = "%s: Warning: Unable to delete UIScene internal userInfo file: %@, error = %@";
    v12 = v23;
    v13 = 32;
    goto LABEL_21;
  }

LABEL_22:
}

void sub_189D43DF0(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 buf)
{
  if (a2 == 1)
  {
    v11 = objc_begin_catch(a1);
    v12 = *(__UILogGetCategoryCachedImpl("SceneStateRestoration", &qword_1ED49FA58) + 8);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 136315394;
      *(&buf + 4) = "void _saveSceneSessionInternalUserInfo(UISceneSession *__strong)";
      WORD6(buf) = 2112;
      *(&buf + 14) = v11;
      _os_log_impl(&dword_188A29000, v12, OS_LOG_TYPE_ERROR, "%s: Exception saving Scene Session internal userInfo dictionary: %@", &buf, 0x16u);
    }

    objc_end_catch();
    JUMPOUT(0x189D43D0CLL);
  }

  _Unwind_Resume(a1);
}

void sub_189D4454C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_189D451A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a2 == 1)
  {
    v10 = objc_begin_catch(exception_object);
    if (_UIStateRestorationDebugLogEnabled())
    {
      NSLog(&cfstr_SExceptionOccu_0.isa);
    }

    objc_end_catch();
    JUMPOUT(0x189D45160);
  }

  _Unwind_Resume(exception_object);
}

void sub_189D453AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a2 == 1)
  {
    v10 = objc_begin_catch(exception_object);
    if (_UIStateRestorationDebugLogEnabled())
    {
      NSLog(&cfstr_SExceptionOccu_1.isa);
    }

    objc_end_catch();
    JUMPOUT(0x189D45368);
  }

  _Unwind_Resume(exception_object);
}

void sub_189D45BB8(uint64_t a1, int a2)
{
  if (a2 == 1)
  {
    v2 = objc_begin_catch(v3);
    if (_UIStateRestorationDebugLogEnabled())
    {
      NSLog(&cfstr_SExceptionOccu_3.isa, "+[_UISceneUserActivityManager _getRestorationUserActivityForPersistentIdentifier:error:]", v2);
    }

    objc_end_catch();
    JUMPOUT(0x189D4595CLL);
  }

  JUMPOUT(0x189D45C50);
}

void sub_189D45BCC(uint64_t a1, int a2)
{
  if (a2 == 1)
  {
    v2 = objc_begin_catch(v3);
    if (_UIStateRestorationDebugLogEnabled())
    {
      NSLog(&cfstr_SExceptionOccu_3.isa, "+[_UISceneUserActivityManager _getRestorationUserActivityForPersistentIdentifier:error:]", v2);
    }

    objc_end_catch();
    JUMPOUT(0x189D4595CLL);
  }

  JUMPOUT(0x189D45C50);
}

void sub_189D45BE4(uint64_t a1, int a2)
{
  if (a2 == 1)
  {
    v2 = objc_begin_catch(v3);
    if (_UIStateRestorationDebugLogEnabled())
    {
      NSLog(&cfstr_SExceptionOccu_3.isa, "+[_UISceneUserActivityManager _getRestorationUserActivityForPersistentIdentifier:error:]", v2);
    }

    objc_end_catch();
    JUMPOUT(0x189D4595CLL);
  }

  JUMPOUT(0x189D45C50);
}

void ___assertForAllowedProcess_block_invoke_0()
{
  v0 = qword_1ED49FA28;
  qword_1ED49FA28 = &unk_1EFE2D0A8;
}

void ___queue_scheduleUpdateAndSaveForPersistedSceneSessions_block_invoke()
{
  if (_UIStateRestorationDebugLogEnabled())
  {
    NSLog(&cfstr_SBackgroundTas.isa, "void _queue_scheduleUpdateAndSaveForPersistedSceneSessions(void)_block_invoke", qword_1ED49FA78);
  }

  v0 = _persistenceQueue();
  dispatch_async(v0, &__block_literal_global_522);
}

void UILocalNotificationCommonInit(void *a1)
{
  v1 = a1;
  [v1 setHasAction:1];
  [v1 setRegionTriggersOnce:1];
}

void sub_189D46FAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t comparePotentiallyNilObjects(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3 | v4)
  {
    v6 = -1;
  }

  else
  {
    v6 = 0;
  }

  if (v3)
  {
    v7 = 1;
  }

  else
  {
    v7 = v6;
  }

  if (v3 && v4)
  {
    if (objc_opt_respondsToSelector())
    {
      v7 = [v3 compare:v5];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

id _nextAdjustedFireDateForPreviousDateAndComponentsWithRepeatIntervalForCalendar(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v9 = a4;
  v10 = a5;
  v11 = [v9 dateByAddingComponents:a2 toDate:a1 options:0];
  if (!v10 || [v10 hour] == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(v10, "minute") == 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_29:
    if ((([MEMORY[0x1E695DF10] _ui_largerComponentsRelativeToComponent:16] | 0x10) & a3) != 0)
    {
      v33 = objc_alloc_init(MEMORY[0x1E695DF10]);
      [v33 setHour:-13];
      v34 = [v9 timeZone];
      v35 = [v9 dateByAddingComponents:v33 toDate:v11 options:0];
      v36 = [v34 nextDaylightSavingTimeTransitionAfterDate:v35];
      if (v36)
      {
        if ([v11 compare:v36] != -1)
        {
          v37 = [v34 secondsFromGMTForDate:v36];
          v38 = v37 - [v34 secondsFromGMTForDate:v35];
          if (v38 < 0)
          {
            v39 = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeInterval:v36 sinceDate:-v38];
            if ([v11 compare:v39] == -1)
            {
              v40 = [v11 dateByAddingTimeInterval:v38];

              v11 = v40;
            }
          }
        }
      }
    }

    goto LABEL_37;
  }

  v12 = [v9 components:254 fromDate:v11];
  if ([v10 hour] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v13 = 0;
  }

  else
  {
    v14 = [v10 hour];
    v13 = v14 != [v12 hour];
  }

  if ([v10 minute] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v15 = 0;
  }

  else
  {
    v16 = [v10 minute];
    v15 = v16 != [v12 minute];
  }

  if (!v13 && !v15)
  {

    goto LABEL_29;
  }

  v42 = a3;
  v17 = [v9 timeZone];
  v18 = [v17 nextDaylightSavingTimeTransitionAfterDate:v11];
  v19 = [v17 secondsFromGMTForDate:v18];
  v20 = [v17 secondsFromGMTForDate:v11];
  v21 = 0;
  v43 = v18;
  if (v18 && v19 - v20 >= 1)
  {
    v22 = v19 - v20;
    v23 = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeInterval:v11 sinceDate:v22];
    v24 = [v23 compare:v18];
    v21 = v24 != -1;
    if (v24 != -1)
    {
      v25 = [v9 components:254 fromDate:v23];

      v12 = v25;
    }
  }

  if (v13)
  {
    [v12 setHour:{objc_msgSend(v10, "hour")}];
  }

  if (v15)
  {
    [v12 setMinute:{objc_msgSend(v10, "minute")}];
  }

  v26 = [v9 dateFromComponents:v12];
  v27 = [v9 components:254 fromDate:v26];
  v28 = v27;
  if (v21 || (!v13 || (v29 = [v27 hour], v29 == objc_msgSend(v10, "hour"))) && (!v15 || (v30 = objc_msgSend(v28, "minute"), v30 == objc_msgSend(v10, "minute"))))
  {
    v31 = v26;

    v32 = 1;
    v11 = v31;
  }

  else
  {
    v32 = 0;
  }

  a3 = v42;
  if ((v32 & 1) == 0)
  {
    goto LABEL_29;
  }

LABEL_37:

  return v11;
}

Class __getCLRegionClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!qword_1ED4993A8)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __CoreLocationLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E7119B60;
    v8 = 0;
    qword_1ED4993A8 = _sl_dlopen();
  }

  if (!qword_1ED4993A8)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *CoreLocationLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"UILocalNotification.m" lineNumber:21 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("CLRegion");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getCLRegionClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"UILocalNotification.m" lineNumber:22 description:{@"Unable to find class %s", "CLRegion"}];

LABEL_10:
    __break(1u);
  }

  _MergedGlobals_1_18 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __CoreLocationLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  qword_1ED4993A8 = result;
  return result;
}

void _skinToneImageVariantNameForSpecifierType(void *a1)
{
  v1 = a1;
  v2 = getEMFSkinToneSpecifierTypeFitzpatrickSilhouette();

  if (v2 == v1)
  {
    goto LABEL_21;
  }

  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v3 = _MergedGlobals_1222;
  v22 = _MergedGlobals_1222;
  if (!_MergedGlobals_1222)
  {
    v15 = MEMORY[0x1E69E9820];
    v16 = 3221225472;
    v17 = __getEMFSkinToneSpecifierTypeFitzpatrick1_2SymbolLoc_block_invoke;
    v18 = &unk_1E70F2F20;
    v4 = EmojiFoundationLibrary_3();
    v20[3] = dlsym(v4, "EMFSkinToneSpecifierTypeFitzpatrick1_2");
    _MergedGlobals_1222 = v20[3];
    v3 = v20[3];
  }

  _Block_object_dispose(&v19, 8);
  if (!v3)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getEMFSkinToneSpecifierTypeFitzpatrick1_2(void)"];
    [v13 handleFailureInFunction:v14 file:@"UIKeyboardEmojiFamilyConfigurationUtilities.m" lineNumber:22 description:{@"%s", dlerror(), v15, v16, v17, v18}];
    goto LABEL_27;
  }

  if (*v3 == v1)
  {
    goto LABEL_21;
  }

  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v5 = qword_1ED49FA90;
  v22 = qword_1ED49FA90;
  if (!qword_1ED49FA90)
  {
    v15 = MEMORY[0x1E69E9820];
    v16 = 3221225472;
    v17 = __getEMFSkinToneSpecifierTypeFitzpatrick3SymbolLoc_block_invoke;
    v18 = &unk_1E70F2F20;
    v6 = EmojiFoundationLibrary_3();
    v20[3] = dlsym(v6, "EMFSkinToneSpecifierTypeFitzpatrick3");
    qword_1ED49FA90 = v20[3];
    v5 = v20[3];
  }

  _Block_object_dispose(&v19, 8);
  if (!v5)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getEMFSkinToneSpecifierTypeFitzpatrick3(void)"];
    [v13 handleFailureInFunction:v14 file:@"UIKeyboardEmojiFamilyConfigurationUtilities.m" lineNumber:23 description:{@"%s", dlerror(), v15, v16, v17, v18}];
    goto LABEL_27;
  }

  if (*v5 == v1)
  {
    goto LABEL_21;
  }

  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v7 = qword_1ED49FA98;
  v22 = qword_1ED49FA98;
  if (!qword_1ED49FA98)
  {
    v15 = MEMORY[0x1E69E9820];
    v16 = 3221225472;
    v17 = __getEMFSkinToneSpecifierTypeFitzpatrick4SymbolLoc_block_invoke;
    v18 = &unk_1E70F2F20;
    v8 = EmojiFoundationLibrary_3();
    v20[3] = dlsym(v8, "EMFSkinToneSpecifierTypeFitzpatrick4");
    qword_1ED49FA98 = v20[3];
    v7 = v20[3];
  }

  _Block_object_dispose(&v19, 8);
  if (!v7)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getEMFSkinToneSpecifierTypeFitzpatrick4(void)"];
    [v13 handleFailureInFunction:v14 file:@"UIKeyboardEmojiFamilyConfigurationUtilities.m" lineNumber:24 description:{@"%s", dlerror(), v15, v16, v17, v18}];
    goto LABEL_27;
  }

  if (*v7 == v1)
  {
LABEL_21:

    return;
  }

  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v9 = qword_1ED49FAA0;
  v22 = qword_1ED49FAA0;
  if (!qword_1ED49FAA0)
  {
    v15 = MEMORY[0x1E69E9820];
    v16 = 3221225472;
    v17 = __getEMFSkinToneSpecifierTypeFitzpatrick5SymbolLoc_block_invoke;
    v18 = &unk_1E70F2F20;
    v10 = EmojiFoundationLibrary_3();
    v20[3] = dlsym(v10, "EMFSkinToneSpecifierTypeFitzpatrick5");
    qword_1ED49FAA0 = v20[3];
    v9 = v20[3];
  }

  _Block_object_dispose(&v19, 8);
  if (v9)
  {
    if (*v9 == v1)
    {
      goto LABEL_21;
    }

    v19 = 0;
    v20 = &v19;
    v21 = 0x2020000000;
    v11 = qword_1ED49FAA8;
    v22 = qword_1ED49FAA8;
    if (!qword_1ED49FAA8)
    {
      v15 = MEMORY[0x1E69E9820];
      v16 = 3221225472;
      v17 = __getEMFSkinToneSpecifierTypeFitzpatrick6SymbolLoc_block_invoke;
      v18 = &unk_1E70F2F20;
      v12 = EmojiFoundationLibrary_3();
      v20[3] = dlsym(v12, "EMFSkinToneSpecifierTypeFitzpatrick6");
      qword_1ED49FAA8 = v20[3];
      v11 = v20[3];
    }

    _Block_object_dispose(&v19, 8);
    if (v11)
    {
      goto LABEL_21;
    }

    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getEMFSkinToneSpecifierTypeFitzpatrick6(void)"];
    [v13 handleFailureInFunction:v14 file:@"UIKeyboardEmojiFamilyConfigurationUtilities.m" lineNumber:26 description:{@"%s", dlerror(), v15, v16, v17, v18}];
  }

  else
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getEMFSkinToneSpecifierTypeFitzpatrick5(void)"];
    [v13 handleFailureInFunction:v14 file:@"UIKeyboardEmojiFamilyConfigurationUtilities.m" lineNumber:25 description:{@"%s", dlerror(), v15, v16, v17, v18}];
  }

LABEL_27:

  __break(1u);
}

void sub_189D49654(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void getEMFSkinToneSpecifierTypeFitzpatrickSilhouette()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getEMFSkinToneSpecifierTypeFitzpatrickSilhouetteSymbolLoc_ptr;
  v9 = getEMFSkinToneSpecifierTypeFitzpatrickSilhouetteSymbolLoc_ptr;
  if (!getEMFSkinToneSpecifierTypeFitzpatrickSilhouetteSymbolLoc_ptr)
  {
    v1 = EmojiFoundationLibrary_3();
    v7[3] = dlsym(v1, "EMFSkinToneSpecifierTypeFitzpatrickSilhouette");
    getEMFSkinToneSpecifierTypeFitzpatrickSilhouetteSymbolLoc_ptr = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getEMFSkinToneSpecifierTypeFitzpatrickSilhouette(void)"];
    [v4 handleFailureInFunction:v5 file:@"UIKeyboardEmojiFamilyConfigurationUtilities.m" lineNumber:27 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_189D497C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id UIKBImageSetForCoupleCharacter(void *a1, void *a2, void *a3)
{
  v77 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = v5;
  if (([getEMFEmojiCategoryClass_1() _isCoupleMultiSkinToneEmoji:v8] & 1) == 0 && !objc_msgSend(getEMFEmojiCategoryClass_1(), "_isComposedCoupleMultiSkinToneEmoji:", v8))
  {
    v30 = 0;
    v9 = v8;
    goto LABEL_54;
  }

  v9 = v8;
  if ([v9 length])
  {
    v73 = 0;
    v74 = &v73;
    v75 = 0x2050000000;
    v10 = getEMFEmojiTokenClass_softClass_1;
    v76 = getEMFEmojiTokenClass_softClass_1;
    if (!getEMFEmojiTokenClass_softClass_1)
    {
      v69[0] = MEMORY[0x1E69E9820];
      v69[1] = 3221225472;
      v70 = __getEMFEmojiTokenClass_block_invoke_3;
      v71 = &unk_1E70F2F20;
      v72 = &v73;
      __getEMFEmojiTokenClass_block_invoke_3(v69);
      v10 = v74[3];
    }

    v11 = v10;
    _Block_object_dispose(&v73, 8);
    v12 = [v10 emojiTokenWithString:v9 localeData:0];
    v13 = v12;
    if (v12 && ([v12 supportsSkinToneVariants] & 1) != 0)
    {
      v14 = [getEMFEmojiCategoryClass_1() _isCoupleMultiSkinToneEmoji:v9];
      v15 = v9;
      if ((v14 & 1) == 0)
      {
        if ([getEMFEmojiCategoryClass_1() _isComposedCoupleMultiSkinToneEmoji:v15])
        {
          v16 = getEMFSkinToneSpecifierTypeFitzpatrickNone();
          v73 = v16;
          v17 = getEMFSkinToneSpecifierTypeFitzpatrickNone();
          v74 = v17;
          v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v73 count:2];
          v19 = [v13 copyWithSkinToneVariantSpecifier:v18];

          v20 = [v19 string];
          v21 = _stringToScalarValues(v20, v69);

          if (v21 == 5)
          {
            if (v70 == 128104)
            {
              v58 = 128107;
            }

            else
            {
              v58 = 128109;
            }

            if (LODWORD(v69[0]) == 128104)
            {
              v59 = 128108;
            }

            else
            {
              v59 = v58;
            }

            v64 = v59;
            v22 = _stringFromScalarValues(&v64);
          }

          else
          {
            if (v21 != 1)
            {
LABEL_66:

              goto LABEL_14;
            }

            v22 = [v19 string];
          }
        }

        else
        {
          v19 = [v13 copyWithSkinToneVariant:0];
          v22 = [v19 string];
        }

        v15 = v22;
        goto LABEL_66;
      }
    }

    else
    {
      v15 = v9;
    }

LABEL_14:

    goto LABEL_16;
  }

  v15 = 0;
LABEL_16:

  v23 = _stringToScalarValues(v15, v69);
  v24 = LODWORD(v69[0]);
  v26 = v23 == 1 && (LODWORD(v69[0]) - 128107) < 3;

  if (!v26)
  {
    v30 = 0;
    goto LABEL_54;
  }

  v27 = qword_1E7119B90[v24 - 128107];
  v28 = getEMFSkinToneSpecifierTypeFitzpatrickNone();
  v29 = v28;
  if (v28 == v6)
  {
    v31 = getEMFSkinToneSpecifierTypeFitzpatrickNone();
    v32 = v31 == v7;

    if (v32)
    {
      v45 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%X-0-0-L", v24];
      v68 = v45;
      v52 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v68 count:1];
      goto LABEL_43;
    }
  }

  else
  {
  }

  v33 = getEMFSkinToneSpecifierTypeFitzpatrickSilhouette();
  v34 = v33;
  if (v33 != v6)
  {

LABEL_31:
    _skinToneImageVariantNameForSpecifierType(v6);
    v38 = v37;
    _skinToneImageVariantNameForSpecifierType(v7);
    v40 = v39;
    v41 = getEMFSkinToneSpecifierTypeFitzpatrickSilhouette();
    v42 = v41 == v6;

    if (v42)
    {
      v43 = MEMORY[0x1E696AEC0];
      v44 = [v27 objectAtIndexedSubscript:0];
      v45 = [v43 stringWithFormat:@"Silhouette_%@-Left-L", v44];
    }

    else
    {
      if (v24 == 128108)
      {
        [MEMORY[0x1E696AEC0] stringWithFormat:@"%X-%d-Left-L", 128108, v38];
      }

      else
      {
        [MEMORY[0x1E696AEC0] stringWithFormat:@"Women-%d-Left-L", v38];
      }
      v45 = ;
    }

    v46 = getEMFSkinToneSpecifierTypeFitzpatrickSilhouette();
    v47 = v46 == v7;

    v48 = MEMORY[0x1E696AEC0];
    if (v47)
    {
      v50 = [v27 objectAtIndexedSubscript:1];
      v49 = [v48 stringWithFormat:@"Silhouette_%@-Right-L", v50];
    }

    else
    {
      v49 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%X-%d-Right-L", v24, v40];
    }

    v66[0] = v49;
    v66[1] = v45;
    v51 = [MEMORY[0x1E695DEC8] arrayWithObjects:v66 count:2];

    goto LABEL_44;
  }

  v35 = getEMFSkinToneSpecifierTypeFitzpatrickSilhouette();
  v36 = v35 == v7;

  if (!v36)
  {
    goto LABEL_31;
  }

  v45 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Silhouette_%X-L", v24];
  v67 = v45;
  v52 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v67 count:1];
LABEL_43:
  v51 = v52;
LABEL_44:

  v30 = [MEMORY[0x1E695DFA0] orderedSet];
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v9 = v51;
  v53 = [v9 countByEnumeratingWithState:&v60 objects:v65 count:16];
  if (v53)
  {
    v54 = *v61;
    do
    {
      for (i = 0; i != v53; ++i)
      {
        if (*v61 != v54)
        {
          objc_enumerationMutation(v9);
        }

        v56 = [UIImage kitImageNamed:*(*(&v60 + 1) + 8 * i)];
        if (v56)
        {
          [v30 addObject:v56];
        }
      }

      v53 = [v9 countByEnumeratingWithState:&v60 objects:v65 count:16];
    }

    while (v53);
  }

LABEL_54:

  return v30;
}

void getEMFSkinToneSpecifierTypeFitzpatrickNone()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getEMFSkinToneSpecifierTypeFitzpatrickNoneSymbolLoc_ptr;
  v9 = getEMFSkinToneSpecifierTypeFitzpatrickNoneSymbolLoc_ptr;
  if (!getEMFSkinToneSpecifierTypeFitzpatrickNoneSymbolLoc_ptr)
  {
    v1 = EmojiFoundationLibrary_3();
    v7[3] = dlsym(v1, "EMFSkinToneSpecifierTypeFitzpatrickNone");
    getEMFSkinToneSpecifierTypeFitzpatrickNoneSymbolLoc_ptr = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getEMFSkinToneSpecifierTypeFitzpatrickNone(void)"];
    [v4 handleFailureInFunction:v5 file:@"UIKeyboardEmojiFamilyConfigurationUtilities.m" lineNumber:21 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_189D49FA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getEMFSkinToneSpecifierTypeFitzpatrickSilhouetteSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = EmojiFoundationLibrary_3();
  result = dlsym(v2, "EMFSkinToneSpecifierTypeFitzpatrickSilhouette");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getEMFSkinToneSpecifierTypeFitzpatrickSilhouetteSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *EmojiFoundationLibrary_3()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!EmojiFoundationLibraryCore_frameworkLibrary_3)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __EmojiFoundationLibraryCore_block_invoke_5;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E7119B78;
    v6 = 0;
    EmojiFoundationLibraryCore_frameworkLibrary_3 = _sl_dlopen();
  }

  v0 = EmojiFoundationLibraryCore_frameworkLibrary_3;
  if (!EmojiFoundationLibraryCore_frameworkLibrary_3)
  {
    v0 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *EmojiFoundationLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"UIKeyboardEmojiFamilyConfigurationUtilities.m" lineNumber:17 description:{@"%s", v4[0]}];

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

uint64_t __EmojiFoundationLibraryCore_block_invoke_5()
{
  result = _sl_dlopen();
  EmojiFoundationLibraryCore_frameworkLibrary_3 = result;
  return result;
}

void *__getEMFSkinToneSpecifierTypeFitzpatrick1_2SymbolLoc_block_invoke(uint64_t a1)
{
  v2 = EmojiFoundationLibrary_3();
  result = dlsym(v2, "EMFSkinToneSpecifierTypeFitzpatrick1_2");
  *(*(*(a1 + 32) + 8) + 24) = result;
  _MergedGlobals_1222 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getEMFSkinToneSpecifierTypeFitzpatrick3SymbolLoc_block_invoke(uint64_t a1)
{
  v2 = EmojiFoundationLibrary_3();
  result = dlsym(v2, "EMFSkinToneSpecifierTypeFitzpatrick3");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1ED49FA90 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getEMFSkinToneSpecifierTypeFitzpatrick4SymbolLoc_block_invoke(uint64_t a1)
{
  v2 = EmojiFoundationLibrary_3();
  result = dlsym(v2, "EMFSkinToneSpecifierTypeFitzpatrick4");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1ED49FA98 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getEMFSkinToneSpecifierTypeFitzpatrick5SymbolLoc_block_invoke(uint64_t a1)
{
  v2 = EmojiFoundationLibrary_3();
  result = dlsym(v2, "EMFSkinToneSpecifierTypeFitzpatrick5");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1ED49FAA0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getEMFSkinToneSpecifierTypeFitzpatrick6SymbolLoc_block_invoke(uint64_t a1)
{
  v2 = EmojiFoundationLibrary_3();
  result = dlsym(v2, "EMFSkinToneSpecifierTypeFitzpatrick6");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1ED49FAA8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t _stringToScalarValues(void *a1, uint64_t a2)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [v3 length];
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = v16 - v6;
  [v3 getCharacters:v16 - v6 range:{0, v4, v5}];
  if (v4 < 1)
  {
    v14 = 0;
  }

  else
  {
    v8 = 0;
    v9 = 0;
    do
    {
      v10 = &v7[2 * v8];
      v11 = *v10;
      if (v4 - v8 >= 2 && (v11 & 0xFC00) == 0xD800 && (v12 = *(v10 + 1), v12 >> 10 == 55))
      {
        v11 = (v11 << 10) + v12 - 56613888;
        v13 = 2;
      }

      else
      {
        v13 = 1;
      }

      v14 = v9 + 1;
      *(a2 + 4 * v9) = v11;
      v8 += v13;
      ++v9;
    }

    while (v8 < v4);
  }

  return v14;
}

id getEMFEmojiCategoryClass_1()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getEMFEmojiCategoryClass_softClass_1;
  v7 = getEMFEmojiCategoryClass_softClass_1;
  if (!getEMFEmojiCategoryClass_softClass_1)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getEMFEmojiCategoryClass_block_invoke_1;
    v3[3] = &unk_1E70F2F20;
    v3[4] = &v4;
    __getEMFEmojiCategoryClass_block_invoke_1(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_189D4A56C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getEMFEmojiCategoryClass_block_invoke_1(uint64_t a1)
{
  EmojiFoundationLibrary_3();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("EMFEmojiCategory");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getEMFEmojiCategoryClass_softClass_1 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getEMFEmojiCategoryClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"UIKeyboardEmojiFamilyConfigurationUtilities.m" lineNumber:19 description:{@"Unable to find class %s", "EMFEmojiCategory"}];

    __break(1u);
  }
}

id _stringFromScalarValues(int *a1)
{
  v3 = *a1;
  v1 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:&v3 length:4 encoding:2617245952];

  return v1;
}

void __getEMFEmojiTokenClass_block_invoke_3(uint64_t a1)
{
  EmojiFoundationLibrary_3();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("EMFEmojiToken");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getEMFEmojiTokenClass_softClass_1 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getEMFEmojiTokenClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"UIKeyboardEmojiFamilyConfigurationUtilities.m" lineNumber:18 description:{@"Unable to find class %s", "EMFEmojiToken"}];

    __break(1u);
  }
}

void *__getEMFSkinToneSpecifierTypeFitzpatrickNoneSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = EmojiFoundationLibrary_3();
  result = dlsym(v2, "EMFSkinToneSpecifierTypeFitzpatrickNone");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getEMFSkinToneSpecifierTypeFitzpatrickNoneSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id UILocalNotificationToUNNotificationRequest_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [MEMORY[0x1E696AFB0] UUID];
  v4 = [v3 UUIDString];

  v5 = v2;
  if ([v5 isTriggeredByDate])
  {
    v6 = MEMORY[0x1E69831F0];
    v7 = [v5 fireDate];
    v8 = [v5 timeZone];
    v9 = [v5 repeatInterval];
    v10 = [v5 repeatCalendar];
    v11 = [v6 triggerWithDate:v7 timeZone:v8 repeatInterval:v9 repeatCalendar:v10];

LABEL_5:
    goto LABEL_7;
  }

  if ([v5 isTriggeredByRegion])
  {
    v12 = MEMORY[0x1E6983208];
    v7 = [v5 region];
    v11 = [v12 triggerWithRegion:v7 repeats:{objc_msgSend(v5, "regionTriggersOnce") ^ 1}];
    goto LABEL_5;
  }

  v11 = 0;
LABEL_7:

  v13 = v5;
  v14 = objc_alloc_init(MEMORY[0x1E6983220]);
  v15 = [v13 applicationIconBadgeNumber];
  if (v15)
  {
    v16 = [MEMORY[0x1E696AD98] numberWithInteger:v15];
    [v14 setBadge:v16];
  }

  else
  {
    [v14 setBadge:?];
  }

  v17 = MEMORY[0x1E696AEC0];
  v18 = [v13 alertBody];
  v19 = [v17 localizedUserNotificationStringForKey:v18 arguments:0];
  [v14 setBody:v19];

  v20 = [v13 category];
  [v14 setCategoryIdentifier:v20];

  [v14 setHasDefaultAction:{objc_msgSend(v13, "hasAction")}];
  v21 = [v13 alertAction];
  [v14 setDefaultActionTitle:v21];

  v22 = [v13 alertLaunchImage];
  [v14 setLaunchImageName:v22];

  v23 = v13;
  v24 = [v23 soundName];
  v25 = [v24 length];

  if (v25)
  {
    v26 = [MEMORY[0x1E6983238] soundWithAlertType:17];
    v27 = [v23 soundName];
    v28 = [v27 isEqualToString:@"UILocalNotificationDefaultSoundName"];

    if ((v28 & 1) == 0)
    {
      v29 = [v23 soundName];
      [v26 setToneFileName:v29];
    }
  }

  else
  {
    v26 = 0;
  }

  [v14 setSound:v26];
  v30 = MEMORY[0x1E696AEC0];
  v31 = [v23 alertTitle];
  v32 = [v30 localizedUserNotificationStringForKey:v31 arguments:0];
  [v14 setTitle:v32];

  v33 = [v23 userInfo];
  [v14 setUserInfo:v33];

  v34 = [MEMORY[0x1E6983298] requestWithIdentifier:v4 content:v14 trigger:v11];

  return v34;
}

id UNNotificationToUILocalNotification_block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 request];
  v4 = _UNNotificationRequestToUILocalNotification(v3);
  v5 = [v2 date];

  [v4 setFireDate:v5];

  return v4;
}

UILocalNotification *_UNNotificationRequestToUILocalNotification(void *a1)
{
  v1 = a1;
  v2 = [v1 content];
  v3 = [v2 sound];
  v4 = [v2 userInfo];
  v5 = [v1 trigger];
  v6 = [v2 body];
  v7 = [v6 un_localizedStringKey];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = [v2 body];
  }

  v10 = v9;

  v11 = [v2 title];
  v12 = [v11 un_localizedStringKey];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = [v2 title];
  }

  v15 = v14;

  v16 = [v2 launchImageName];
  if ([v16 length])
  {
    v17 = [v2 launchImageName];
  }

  else
  {
    v17 = 0;
  }

  v18 = [v2 categoryIdentifier];
  if ([v18 length])
  {
    v19 = [v2 categoryIdentifier];
  }

  else
  {
    v19 = 0;
  }

  v20 = objc_alloc_init(UILocalNotification);
  v36 = v10;
  [(UILocalNotification *)v20 setAlertBody:v10];
  [(UILocalNotification *)v20 setAlertLaunchImage:v17];
  [(UILocalNotification *)v20 setAlertTitle:v15];
  v21 = [v2 badge];
  -[UILocalNotification setApplicationIconBadgeNumber:](v20, "setApplicationIconBadgeNumber:", [v21 integerValue]);

  v35 = v19;
  [(UILocalNotification *)v20 setCategory:v19];
  -[UILocalNotification setHasAction:](v20, "setHasAction:", [v2 hasDefaultAction]);
  v22 = [v2 defaultActionTitle];
  [(UILocalNotification *)v20 setAlertAction:v22];

  v23 = v3;
  if (v3)
  {
    v24 = v1;
    v25 = v15;
    v26 = v4;
    v27 = [v23 toneFileName];
    v28 = [v27 length];

    if (v28)
    {
      v29 = [v23 toneFileName];
      [(UILocalNotification *)v20 setSoundName:v29];
    }

    else
    {
      [(UILocalNotification *)v20 setSoundName:@"UILocalNotificationDefaultSoundName"];
    }

    v4 = v26;
    v15 = v25;
    v1 = v24;
  }

  [(UILocalNotification *)v20 setUserInfo:v4];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v30 = [v5 date];
    [(UILocalNotification *)v20 setFireDate:v30];

    v31 = [v5 timeZone];
    [(UILocalNotification *)v20 setTimeZone:v31];

    v32 = [v5 repeatCalendar];
    [(UILocalNotification *)v20 setRepeatCalendar:v32];

    -[UILocalNotification setRepeatInterval:](v20, "setRepeatInterval:", [v5 repeatInterval]);
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v33 = [v5 region];
      [(UILocalNotification *)v20 setRegion:v33];

      -[UILocalNotification setRegionTriggersOnce:](v20, "setRegionTriggersOnce:", [v5 repeats] ^ 1);
    }
  }

  return v20;
}

id UILocalNotificationFromData(void *a1)
{
  v1 = a1;
  v2 = objc_autoreleasePoolPush();
  if (v1)
  {
    v3 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:v1 error:0];
    v4 = [v3 decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x1E696A508]];
    [v3 finishDecoding];
  }

  else
  {
    v4 = 0;
  }

  objc_autoreleasePoolPop(v2);

  return v4;
}

id getSBSUITraitHomeScreenIconStyleClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = _MergedGlobals_1224;
  v7 = _MergedGlobals_1224;
  if (!_MergedGlobals_1224)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getSBSUITraitHomeScreenIconStyleClass_block_invoke;
    v3[3] = &unk_1E70F2F20;
    v3[4] = &v4;
    __getSBSUITraitHomeScreenIconStyleClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_189D4EB54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getSBSUITraitHomeScreenIconStyleClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!qword_1ED49FAC8)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __SpringBoardUIServicesLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E7119C30;
    v8 = 0;
    qword_1ED49FAC8 = _sl_dlopen();
  }

  if (!qword_1ED49FAC8)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *SpringBoardUIServicesLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"_UISystemIconAppearanceSceneComponent.m" lineNumber:18 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("SBSUITraitHomeScreenIconStyle");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getSBSUITraitHomeScreenIconStyleClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"_UISystemIconAppearanceSceneComponent.m" lineNumber:20 description:{@"Unable to find class %s", "SBSUITraitHomeScreenIconStyle"}];

LABEL_10:
    __break(1u);
  }

  _MergedGlobals_1224 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __SpringBoardUIServicesLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  qword_1ED49FAC8 = result;
  return result;
}

void sub_189D5155C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, id location)
{
  objc_destroyWeak((v32 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_189D52664(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_189D545B8(void *a1)
{
  objc_begin_catch(a1);
  *(v1 + 32) = v2;
  objc_exception_rethrow();
}

uint64_t UIRemoteNotificationTypesFromUNNotificationSettings(void *a1)
{
  v1 = a1;
  v2 = [v1 alertStyle] != 0;
  v3 = ([v1 badgeSetting] == 2) | (4 * v2);
  v4 = [v1 soundSetting];

  if (v4 == 2)
  {
    return v3 | 2;
  }

  else
  {
    return v3;
  }
}

void UIUserNotificationCategoryCommonInit(void *a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  v7 = [a2 copy];
  v8 = v6[1];
  v6[1] = v7;

  v9 = [v5 copy];
  v10 = v6[2];
  v6[2] = v9;
}

void UIUserNotificationActionCommonSetup(void *a1, void *a2, void *a3, uint64_t a4, void *a5, uint64_t a6, char a7, char a8)
{
  v15 = a5;
  v16 = a3;
  v23 = a1;
  v17 = [a2 copy];
  v18 = v23[4];
  v23[4] = v17;

  v19 = [v16 copy];
  v20 = v23[5];
  v23[5] = v19;

  v23[6] = a4;
  v21 = [v15 copy];

  v22 = v23[7];
  v23[7] = v21;

  v23[8] = a6;
  *(v23 + 8) = a7;
  *(v23 + 9) = a8;
}

id UIUserNotificationCategoryToUNNotificationCategory_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 identifier];
  v4 = [v2 actionsForContext:0];
  v5 = [v4 bs_map:&__block_literal_global_6_12];
  v6 = [v2 actionsForContext:1];

  v7 = [v6 bs_map:&__block_literal_global_8_13];
  v8 = [MEMORY[0x1E6983278] categoryWithIdentifier:v3 actions:v5 minimalActions:v7 intentIdentifiers:MEMORY[0x1E695E0F0] options:0];

  return v8;
}

UIMutableUserNotificationCategory *UNNotificationCategoryToUIUserNotificationCategory_block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_alloc_init(UIMutableUserNotificationCategory);
  v4 = [v2 identifier];
  [(UIUserNotificationCategory *)v3 setIdentifier:v4];

  v5 = [v2 actions];

  v6 = [v5 bs_map:&__block_literal_global_15_8];
  [(UIMutableUserNotificationCategory *)v3 setActions:v6 forContext:0];

  return v3;
}

id _UNNotificationActionFromUIUserNotificationAction(void *a1)
{
  v1 = a1;
  v2 = [v1 identifier];
  v3 = [v1 title];
  v4 = [v1 isAuthenticationRequired];
  if ([v1 isDestructive])
  {
    v4 |= 2uLL;
  }

  if (![v1 activationMode])
  {
    v4 |= 4uLL;
  }

  if ([v1 behavior] == 1)
  {
    v5 = [v1 parameters];
    v6 = [v5 objectForKey:@"UIUserNotificationTextInputActionButtonTitleKey"];
    v7 = [MEMORY[0x1E69832F0] actionWithIdentifier:v2 title:v3 options:v4 textInputButtonTitle:v6 textInputPlaceholder:&stru_1EFB14550];
  }

  else
  {
    v7 = [MEMORY[0x1E6983250] actionWithIdentifier:v2 title:v3 options:v4];
  }

  return v7;
}

__n128 _UIUpdateSchedulerRequestUpdate@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, __n128 *a3@<X8>)
{
  v6 = *a1;
  if (*(*a1 + 568) != 1 || (v7 = (v6 + 544), a2) && (*(v6 + 544) == *a2 ? (v8 = *(v6 + 552) == *(a2 + 8)) : (v8 = 0), v8 ? (v9 = *(v6 + 560) == *(a2 + 16)) : (v9 = 0), !v9))
  {
    applyRequestRegistryChanges(*a1);
    applyTimingChanges(v6);
    if (a2)
    {
      v10 = *(a2 + 16);
      *(v6 + 544) = *a2;
      *(v6 + 560) = v10;
      *(v6 + 568) = 1;
      *(v6 + 624) = vnegq_f64(0);
      v11 = *(v6 + 544);
      *(v6 + 576) = v11;
      *(v6 + 592) = *(v6 + 552);
      *(v6 + 584) = *(v6 + 488) + v11;
    }

    else
    {
      v12 = *(v6 + 528);
      v13 = *(v6 + 672);
      v14 = mach_absolute_time();
      v15 = *(v6 + 504);
      v16 = *(v6 + 480);
      if (!v16 || (*(v16 + 28) & 1) == 0)
      {
        [(_UIUpdateTarget *)v16 start];
      }

      v26 = 0u;
      v27 = 0u;
      v25 = 0u;
      frameSourceGetTiming(&v23, v6, v13 + v12, v15 + v14, &v25);
      *(v6 + 544) = v23;
      v17 = v25;
      *(v6 + 560) = v24;
      *(v6 + 568) = 1;
      *(v6 + 624) = *(&v27 + 1);
      *(v6 + 632) = v26;
      *(v6 + 576) = *(v6 + 544);
      *(v6 + 592) = *(v6 + 552);
      *(v6 + 584) = v17;
    }

    *(v6 + 608) = 0;
    *(v6 + 616) = *(v6 + 520);
    v7 = (v6 + 544);
    v18 = _UIUpdateSetCurrentTiming((v6 + 544), 1);
    if (*(v6 + 512))
    {
      [MEMORY[0x1E6979518] finishFrameWithToken:v18];
    }

    UCTimeToSeconds();
    v20 = v19;
    UCTimeToSeconds();
    *(v6 + 512) = [MEMORY[0x1E6979518] startFrameWithReason:35 beginTime:v20 commitDeadline:v21];
    MEMORY[0x18CFE7DB0](*(v6 + 704), v6, schedulerModeScheduledWaitingMainInputsEnter);
    if (*a1)
    {
      UCDriverSignal();
    }
  }

  result = *v7;
  *a3 = *v7;
  a3[1].n128_u64[0] = v7[1].n128_u64[0];
  return result;
}

uint64_t __setupUpdateSequence_block_invoke_3(uint64_t a1, uint64_t a2)
{
  if ([MEMORY[0x1E6979518] currentState])
  {
    _UIQOSMarkIntervalRelevant();
  }

  if (xmmword_1ED4A37C8 >= 1)
  {
    v3 = *(a2 + 512);
    UCTimeToSeconds();
    [MEMORY[0x1E6979518] setFrameInputTime:v3 withToken:?];
  }

  if (*(&xmmword_1ED4A37C8 + 1) >= 1)
  {
    [MEMORY[0x1E6979518] setRemoteInputMachTime:?];
  }

  if (*(a2 + 689) == 1 && (*(a2 + 690) & 1) == 0)
  {
    if (qword_1ED49FB48 != -1)
    {
      dispatch_once(&qword_1ED49FB48, &__block_literal_global_32_3);
    }

    if (_MergedGlobals_1226 == 1)
    {
      [MEMORY[0x1E6979518] setEmptyLowLatency:1];
    }

    else
    {
      [MEMORY[0x1E6979518] setLowLatency:1];
    }

    [MEMORY[0x1E6979518] activate];
  }

  *(a2 + 280) = 0;
  _UIUpdateInputSetInputChanged(*(a2 + 328), a2 + 280);

  return _UIApplicationFlushCATransaction(1);
}

uint64_t schedulerStepScheduledLowLatencySectionBegin(uint64_t a1)
{
  *(a1 + 609) = *(a1 + 689);
  UCTimeToSeconds();
  v3 = v2;
  v4 = mach_absolute_time();
  _UIQOSManagedCommitsBegin(@"LowLatency", @"LowLatency");
  v5 = _UIQOSProcessingBegin("UIUCLoLa", 2, v4, *(a1 + 592));
  kdebug_trace();
  qword_1ED4A37E8 = v4;
  *(a1 + 744) = v5;
  *(a1 + 712) = v3;
  *(a1 + 720) = a1 + 544;
  *(a1 + 728) = _UIUpdateLowLatencySequence;
  *(a1 + 736) = 0;
  UCDriverUpdateMask();
  return a1;
}

uint64_t schedulerStepScheduledLowLatencySectionContinue(uint64_t a1)
{
  UCDriverReset();
  if (_UIUpdateSequenceRunNext(a1 + 712))
  {
    return UCDriverNextStep();
  }

  UCDriverUpdateMask();
  v2 = UCTimeFromSeconds();
  if (v2 <= (mach_absolute_time() - qword_1ED4A37E8))
  {
    _UIQOSMarkIntervalRelevant();
  }

  kdebug_trace();
  _UIQOSProcessingEnd();
  _UIQOSManagedCommitsEnd(@"LowLatency", @"LowLatency");
  return a1;
}

id _bestMatchConformingToTypes(void *a1, void *a2)
{
  v49 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v3;
  v6 = v4;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v42 objects:v48 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v43;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v43 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v42 + 1) + 8 * i);
        if ([v6 containsObject:v12])
        {
          v28 = v12;
          goto LABEL_31;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v42 objects:v48 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v13 = v7;
  v14 = [v13 countByEnumeratingWithState:&v38 objects:v47 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v39;
    v30 = *v39;
    v31 = v13;
    do
    {
      v17 = 0;
      v32 = v15;
      do
      {
        if (*v39 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = [MEMORY[0x1E6982C40] _typeWithIdentifier:*(*(&v38 + 1) + 8 * v17) allowUndeclared:{1, v30, v31}];
        if (v18)
        {
          v19 = v18;
          v33 = v17;
          v36 = 0u;
          v37 = 0u;
          v34 = 0u;
          v35 = 0u;
          v20 = v6;
          v21 = [v20 countByEnumeratingWithState:&v34 objects:v46 count:16];
          if (v21)
          {
            v22 = v21;
            v23 = *v35;
            while (2)
            {
              for (j = 0; j != v22; ++j)
              {
                if (*v35 != v23)
                {
                  objc_enumerationMutation(v20);
                }

                v25 = *(*(&v34 + 1) + 8 * j);
                v26 = [MEMORY[0x1E6982C40] _typeWithIdentifier:v25 allowUndeclared:1];
                v27 = v26;
                if (v26 && ([v26 conformsToType:v19] & 1) != 0)
                {
                  v28 = v25;

                  goto LABEL_31;
                }
              }

              v22 = [v20 countByEnumeratingWithState:&v34 objects:v46 count:16];
              if (v22)
              {
                continue;
              }

              break;
            }
          }

          v16 = v30;
          v13 = v31;
          v15 = v32;
          v17 = v33;
        }

        ++v17;
      }

      while (v17 != v15);
      v15 = [v13 countByEnumeratingWithState:&v38 objects:v47 count:16];
      v28 = 0;
    }

    while (v15);
  }

  else
  {
    v28 = 0;
  }

LABEL_31:

  return v28;
}

void sub_189D5B580(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  objc_destroyWeak((v6 + 40));
  objc_destroyWeak((v7 - 88));
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_189D5BF58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  _Block_object_dispose(&a39, 8);
  _Block_object_dispose((v39 - 224), 8);
  _Unwind_Resume(a1);
}

void *__Block_byref_object_copy__125(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

uint64_t ___initializeAllowsCreationOfFileURLFromItemProvider_block_invoke()
{
  result = _UIIsPrivateMainBundle();
  _MergedGlobals_1227 = result ^ 1;
  return result;
}

void sub_189D5C868(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void _itemLayoutFromPreview(uint64_t a1, void *a2, void *a3, int a4)
{
  v7 = a2;
  *(a1 + 56) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0;
  *(a1 + 72) = 0u;
  v8 = (a1 + 72);
  v9 = a3;
  [v7 size];
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = v10;
  *(a1 + 24) = v11;
  v12 = [v7 target];
  [v12 center];
  v14 = v13;
  v16 = v15;
  v17 = [v7 target];
  v18 = [v17 container];
  v19 = _UIContextMenuConvertPointBetweenViews(v18, v9, v14, v16, 0.0);
  v21 = v20;

  *(a1 + 32) = v19;
  *(a1 + 40) = v21;
  *(a1 + 48) = 0;
  v22 = [v7 target];
  v23 = v22;
  if (v22)
  {
    [v22 transform];
  }

  else
  {
    memset(&v38, 0, sizeof(v38));
  }

  v24 = *&v38.c;
  *v8 = *&v38.a;
  *(a1 + 88) = v24;
  *(a1 + 104) = *&v38.tx;

  if (a4)
  {
    memset(&v38, 0, sizeof(v38));
    v25 = [v7 target];
    v26 = [v25 container];
    v27 = [v7 target];
    v28 = [v27 container];
    v29 = [v28 _window];
    _UIGetTransformBetweenViews(v26, v29, 1, &v38);

    v30 = *(a1 + 88);
    *&t1.a = *v8;
    *&t1.c = v30;
    *&t1.tx = *(a1 + 104);
    v36 = v38;
    CGAffineTransformConcat((a1 + 72), &t1, &v36);
  }

  __asm { FMOV            V0.2D, #0.5 }

  *(a1 + 56) = _Q0;
  *(a1 + 120) = 0x3FF0000000000000;
}

id _DefaultParametersForView(void *a1)
{
  v1 = a1;
  v2 = objc_opt_new();
  v3 = [v1 backgroundColor];

  if (v3)
  {
    [v1 backgroundColor];
  }

  else
  {
    +[UIColor clearColor];
  }
  v4 = ;
  [v2 setBackgroundColor:v4];

  return v2;
}

void sub_189D5DEEC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak(&STACK[0x220]);
  _Unwind_Resume(a1);
}

void sub_189D5F198(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak((v27 + 32));
  objc_destroyWeak((v26 + 32));
  objc_destroyWeak((v25 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_189D5FAD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

double _UIContextMenuConvertPointBetweenViews(void *a1, void *a2, double a3, double a4, double a5)
{
  v9 = a1;
  v10 = a2;
  v11 = [v9 traitCollection];
  v12 = _UIContextMenuGetPlatformMetrics([v11 userInterfaceIdiom]);
  v13 = [v12 convertPoint3DBetweenViews];

  if (!v13)
  {
    v15 = [v9 traitCollection];
    v16 = _UIContextMenuGetPlatformMetrics([v15 userInterfaceIdiom]);
    v17 = [v16 convertPointBetweenViews];

    if (v17)
    {
      v14 = (v17)[2](v17, v9, v10, a3, a4);
LABEL_25:

      goto LABEL_26;
    }

    v18 = v9;
    v19 = v10;
    v20 = [v18 layer];
    v21 = [v19 layer];
    v22 = [v20 presentationLayer];
    v63 = v21;
    if (v22)
    {
      v23 = v22;
      v24 = v20;
      v25 = [v21 presentationLayer];
      if (v25 && (_UILayerAncestorsHaveAllBeenCommitted_0(v24) & 1) != 0)
      {
        v59 = v19;
        HaveAllBeenCommitted_0 = _UILayerAncestorsHaveAllBeenCommitted_0(v21);

        if (!HaveAllBeenCommitted_0)
        {
          v19 = v59;
          v20 = v24;
          goto LABEL_12;
        }

        v20 = [v24 presentationLayer];

        [v21 presentationLayer];
        v63 = v23 = v21;
        v19 = v59;
      }

      else
      {

        v20 = v24;
      }
    }

LABEL_12:
    v27 = [v18 _window];
    v28 = [v19 _window];
    v29 = [v27 windowScene];
    v30 = [v28 windowScene];
    v61 = v30;
    v62 = v29;
    if (v27 == v28)
    {
      v43 = v63;
      [v20 convertPoint:v63 toLayer:{a3, a4}];
      v14 = v44;
    }

    else
    {
      v60 = v19;
      if (v30 && v29 && v29 != v30)
      {
        v54 = v27;
        v31 = v18;
        v32 = v30;
        [v29 screen];
        v33 = v57 = v20;
        v34 = [v33 fixedCoordinateSpace];
        [v34 convertPoint:v31 fromCoordinateSpace:{a3, a4}];
        v36 = v35;
        v38 = v37;

        v39 = v32;
        v18 = v31;
        v27 = v54;
        v40 = [v39 screen];
        v41 = [v40 fixedCoordinateSpace];
        v19 = v60;
        [v60 convertPoint:v41 fromCoordinateSpace:{v36, v38}];
        v14 = v42;

        v20 = v57;
        v43 = v63;
      }

      else
      {
        v45 = [v27 layer];
        v58 = [v28 layer];
        v46 = [v45 presentationLayer];
        if (v46)
        {
          v47 = v46;
          v48 = v20;
          v49 = [v58 presentationLayer];

          if (v49)
          {
            v50 = [v45 presentationLayer];

            v51 = [v58 presentationLayer];

            v58 = v51;
            v45 = v50;
          }

          v18 = v55;
          v20 = v48;
        }

        else
        {
          v18 = v55;
        }

        [v20 convertPoint:v45 toLayer:{a3, a4, v45}];
        v43 = v63;
        [v63 convertPoint:v58 fromLayer:?];
        v14 = v52;

        v19 = v60;
      }
    }

    goto LABEL_25;
  }

  v14 = (v13)[2](v13, v9, v10, a3, a4, a5);
LABEL_26:

  return v14;
}

void sub_189D61684(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id __mergedOptionDictionaries(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v4 count])
  {
    v5 = [v3 mutableCopy];
    [v5 addEntriesFromDictionary:v4];

    v3 = v5;
  }

  return v3;
}

void sub_189D63308(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 128), 8);
  _Unwind_Resume(a1);
}

id _UIFontPickerLoadRecentFontDescriptors()
{
  v15 = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E695DF70] arrayWithCapacity:7];
  v1 = [MEMORY[0x1E695E000] standardUserDefaults];
  v2 = [v1 arrayForKey:@"UIFontPickerRecentFamilies"];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [_UIFontPickerFontInfo infoWithName:*(*(&v10 + 1) + 8 * i)];
        if ([v7 isFontFamilyAvailable] && objc_msgSend(v0, "count") <= 6)
        {
          v8 = [v7 fontDescriptor];
          [v0 addObject:v8];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  return v0;
}

void _UIFontPickerLoadRecentsMatchingConfigurationForSuite(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v32 = 0;
  v33 = &v32;
  v34 = 0x2050000000;
  v5 = qword_1ED49FBB8;
  v35 = qword_1ED49FBB8;
  if (!qword_1ED49FBB8)
  {
    v27 = MEMORY[0x1E69E9820];
    v28 = 3221225472;
    v29 = __getFontPickerClientFontContextClass_block_invoke;
    v30 = &unk_1E70F2F20;
    v31 = &v32;
    __getFontPickerClientFontContextClass_block_invoke(&v27);
    v5 = v33[3];
  }

  v6 = v5;
  _Block_object_dispose(&v32, 8);
  v7 = [v3 _clientFontContextEndpoint];
  if (v7)
  {
    v8 = [v5 sharedInstanceForEndpoint:v7];
LABEL_9:

    v13 = [MEMORY[0x1E695DF70] arrayWithCapacity:7];
    v14 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:v4];
    v15 = [v14 arrayForKey:@"UIFontPickerRecentFamilies"];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = ___UIFontPickerLoadRecentsMatchingConfigurationForSuite_block_invoke;
    v23[3] = &unk_1E711A070;
    v24 = v3;
    v16 = v13;
    v25 = v16;
    v26 = v15;
    v17 = v15;
    v18 = v3;
    [v8 runBlockInClientFontContext:v23];
    v19 = v26;
    v20 = v16;

    return;
  }

  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v9 = off_1ED49FBC0;
  v35 = off_1ED49FBC0;
  if (!off_1ED49FBC0)
  {
    v27 = MEMORY[0x1E69E9820];
    v28 = 3221225472;
    v29 = __getFSFontPickerSupportListenerEndpointSymbolLoc_block_invoke;
    v30 = &unk_1E70F2F20;
    v31 = &v32;
    v10 = FontServicesLibrary();
    v11 = dlsym(v10, "FSFontPickerSupportListenerEndpoint");
    *(v31[1] + 24) = v11;
    off_1ED49FBC0 = *(v31[1] + 24);
    v9 = v33[3];
  }

  _Block_object_dispose(&v32, 8);
  if (v9)
  {
    v12 = v9();
    v8 = [v5 sharedInstanceForEndpoint:v12];

    goto LABEL_9;
  }

  v21 = [MEMORY[0x1E696AAA8] currentHandler];
  v22 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSXPCListenerEndpoint *_FSFontPickerSupportListenerEndpoint(void)"];
  [v21 handleFailureInFunction:v22 file:@"UIFontPickerViewControllerConfiguration.m" lineNumber:20 description:{@"%s", dlerror()}];

  __break(1u);
}

void _UIFontPickerPersistToRecentsForSuite(void *a1, void *a2)
{
  v3 = a1;
  v4 = MEMORY[0x1E695E000];
  v5 = a2;
  v6 = [[v4 alloc] initWithSuiteName:v5];

  v7 = [v6 arrayForKey:@"UIFontPickerRecentFamilies"];
  v8 = v7;
  v9 = MEMORY[0x1E695E0F0];
  if (v7)
  {
    v9 = v7;
  }

  v10 = v9;

  v11 = objc_opt_new();
  v16 = MEMORY[0x1E69E9820];
  v17 = 3221225472;
  v18 = ___UIFontPickerPersistToRecentsForSuite_block_invoke;
  v19 = &unk_1E70FF4D0;
  v12 = v3;
  v20 = v12;
  v13 = v11;
  v21 = v13;
  [v10 enumerateObjectsUsingBlock:&v16];

  if ([v12 isFontFamilyAvailable])
  {
    v14 = [v12 fontName];
    if (v14)
    {
      [v13 insertObject:v14 atIndex:0];
    }

    else
    {
      v15 = [v12 familyName];
      [v13 insertObject:v15 atIndex:0];
    }
  }

  [v6 setObject:v13 forKey:@"UIFontPickerRecentFamilies"];
}

void __getFontPickerClientFontContextClass_block_invoke(uint64_t a1)
{
  FontServicesLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("FontPickerClientFontContext");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1ED49FBB8 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getFontPickerClientFontContextClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"UIFontPickerViewControllerConfiguration.m" lineNumber:19 description:{@"Unable to find class %s", "FontPickerClientFontContext"}];

    __break(1u);
  }
}

void *FontServicesLibrary()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!FontServicesLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __FontServicesLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E711A090;
    v6 = 0;
    FontServicesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = FontServicesLibraryCore_frameworkLibrary;
  if (!FontServicesLibraryCore_frameworkLibrary)
  {
    v0 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *FontServicesLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"UIFontPickerViewControllerConfiguration.m" lineNumber:18 description:{@"%s", v4[0]}];

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

uint64_t __FontServicesLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  FontServicesLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getFSFontPickerSupportListenerEndpointSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = FontServicesLibrary();
  result = dlsym(v2, "FSFontPickerSupportListenerEndpoint");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_1ED49FBC0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_189D67364(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __createDataWithCompletion_block_invoke(uint64_t a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __createDataWithCompletion_block_invoke_2;
  v3[3] = &unk_1E7119F30;
  v2 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (([v2 _createUserActivityDataWithOptions:0 completionHandler:v3] & 1) == 0)
  {
    (*(*(a1 + 40) + 16))();
  }
}

void sub_189D69360(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getFSFontPickerSupportListenerEndpointSymbolLoc_block_invoke_0(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!qword_1ED49FBE8)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __FontServicesLibraryCore_block_invoke_0;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E711A100;
    v7 = 0;
    qword_1ED49FBE8 = _sl_dlopen();
  }

  v2 = qword_1ED49FBE8;
  if (!qword_1ED49FBE8)
  {
    a1 = [MEMORY[0x1E696AAA8] currentHandler];
    v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *FontServicesLibrary(void)"];
    [a1 handleFailureInFunction:v2 file:@"_UIFontPickerActionHostToClient.m" lineNumber:18 description:{@"%s", v5[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v3 = v5[0];
  if (v5[0])
  {
LABEL_7:
    free(v3);
  }

  result = dlsym(v2, "FSFontPickerSupportListenerEndpoint");
  *(*(a1[4] + 8) + 24) = result;
  _MergedGlobals_1231 = *(*(a1[4] + 8) + 24);
  return result;
}

uint64_t __FontServicesLibraryCore_block_invoke_0()
{
  result = _sl_dlopen();
  qword_1ED49FBE8 = result;
  return result;
}

void sub_189D6B338(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_189D6B7C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_189D6BA64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

void __GetReportEndpointFromInfoPlist_block_invoke()
{
  v0 = [MEMORY[0x1E696AAE8] mainBundle];
  v1 = [v0 objectForInfoDictionaryKey:@"NSAdvertisingAttributionReportEndpoint"];

  v2 = MEMORY[0x1E695DFF8];
  v3 = [v1 description];
  v4 = [v2 URLWithString:v3 encodingInvalidCharacters:0];
  v5 = _MergedGlobals_1232;
  _MergedGlobals_1232 = v4;

  if (!_MergedGlobals_1232)
  {
    v6 = *(__UILogGetCategoryCachedImpl("EventAttribution", &qword_1ED49FC00) + 8);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_impl(&dword_188A29000, v6, OS_LOG_TYPE_ERROR, "Application created an instance of UIEventAttribution but could not find a report endpoint URL. Event attributions from this app will not be sent to the browser. Ensure you have defined an appropriate URL in your app's Info.plist under the NSAdvertisingAttributionReportEndpoint key.", v7, 2u);
    }
  }
}

void *_pasteboardThreadLocalDataOwner()
{
  pthread_once(&_dataOwnerKeyOnce, _createDataOwnerKey);
  v0 = _dataOwnerKey;

  return pthread_getspecific(v0);
}

void _pasteboardCacheQueue_removeItemCollectionForName(void *a1)
{
  v1 = a1;
  v2 = _pasteboardCacheQueue_PasteboardNametoItemCollectionMap();
  [v2 removeObjectForKey:v1];
}

void sub_189D6E91C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void _sendPasteboardChangedNotification(void *a1)
{
  v1 = MEMORY[0x1E696AD88];
  v2 = a1;
  v3 = [v1 defaultCenter];
  [v3 postNotificationName:@"UIPasteboardChangedNotification" object:v2];
}

void sub_189D6EE8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

void _pasteboardCacheQueue_removePasteboardForName(void *a1)
{
  v1 = a1;
  v2 = _pasteboardCacheQueue_PasteboardNameToPasteboardMap();
  [v2 removeObjectForKey:v1];
}

void sub_189D6F4E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_189D6F8B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id _getTemporaryLocalGeneralPasteboard(void *a1)
{
  v2 = _serverConnection();
  v7 = 0;
  v3 = [v2 localGeneralPasteboardWithAuthenticationBlock:0 dataOwnerBlock:&__block_literal_global_357_0 error:&v7];
  v4 = v7;

  if (a1)
  {
    v5 = v4;
    *a1 = v4;
  }

  return v3;
}

id _pasteboardAuthenticatedMessageQueue()
{
  if (qword_1ED49A800 != -1)
  {
    dispatch_once(&qword_1ED49A800, &__block_literal_global_359_1);
  }

  v1 = qword_1ED49A7F8;

  return v1;
}

void sub_189D70074(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id _existingItemCollectionWithName(void *a1)
{
  v1 = a1;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__152;
  v16 = __Block_byref_object_dispose__152;
  v17 = 0;
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x3032000000;
  v10[3] = __Block_byref_object_copy__152;
  v10[4] = __Block_byref_object_dispose__152;
  v11 = 0;
  v2 = _pasteboardCacheQueue();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___existingItemCollectionWithName_block_invoke;
  block[3] = &unk_1E71053E8;
  v7 = v1;
  v8 = &v12;
  v9 = v10;
  v3 = v1;
  dispatch_sync(v2, block);

  v4 = v13[5];
  _Block_object_dispose(v10, 8);

  _Block_object_dispose(&v12, 8);

  return v4;
}

void sub_189D7179C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id _UISecurelyDecodePasteboardDataToObject(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:v3 error:0];
  v5 = [v4 decodeObjectOfClass:a2 forKey:*MEMORY[0x1E696A508]];
  [v4 finishDecoding];

  return v5;
}

void sub_189D71E04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_189D72718(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose((v26 - 192), 8);
  _Block_object_dispose((v26 - 144), 8);
  _Block_object_dispose(&a20, 8);
  _Unwind_Resume(a1);
}

void _recordHangAssertionIfNecessaryForResponseMetadata(void *a1)
{
  v1 = a1;
  if (pthread_main_np() == 1 && [v1 authorizationMachAbsoluteStartTime] && objc_msgSend(v1, "authorizationMachAbsoluteEndTime"))
  {
    [v1 authorizationMachAbsoluteStartTime];
    HTBeginNonResponsiveTaskWithNameAndExpirationAtTime();
    [v1 authorizationMachAbsoluteEndTime];
    HTEndNonResponsiveTaskAtTime();
  }
}

void sub_189D72B48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_189D72F88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  _Block_object_dispose(&a28, 8);
  _Block_object_dispose((v28 - 160), 8);
  _Block_object_dispose((v28 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_189D735F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a35, 8);
  _Unwind_Resume(a1);
}

UIImage *ConvertValueToData(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v3;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(UIImage *)v3 dataUsingEncoding:4];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        goto LABEL_6;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          _convertURLToDataRepresentation(v3);
        }

        else
        {
          [MEMORY[0x1E696AE40] dataWithPropertyList:v3 format:200 options:0 error:0];
        }
        v5 = ;
        goto LABEL_7;
      }

      if ([v4 isEqual:0x1EFB86090])
      {
LABEL_6:
        v5 = [MEMORY[0x1E696ACC8] _ui_archivedInterprocessDataWithRootObject:v3 requiringSecureCoding:0 error:0];
      }

      else
      {
        v5 = UIImagePNGRepresentation(v3);
      }
    }
  }

LABEL_7:
  v6 = v5;

  return v6;
}

void sub_189D74638(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose(&a41, 8);
  _Unwind_Resume(a1);
}

id _convertURLToDataRepresentation(void *a1)
{
  v1 = a1;
  v2 = [v1 baseURL];
  v3 = MEMORY[0x1E695DEC8];
  if (v2)
  {
    v4 = [v1 relativeString];

    v5 = [v2 absoluteString];
    v6 = [v3 arrayWithObjects:{v4, v5, 0}];
  }

  else
  {
    v4 = [v1 absoluteString];

    v6 = [v3 arrayWithObjects:{v4, &stru_1EFB14550, 0}];
  }

  v7 = [MEMORY[0x1E696AE40] dataWithPropertyList:v6 format:200 options:0 error:0];

  return v7;
}

id _coerceItemToClass(void *a1, uint64_t a2)
{
  v3 = a1;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__152;
  v24 = __Block_byref_object_dispose__152;
  v25 = 0;
  if ([v3 uikit_canInstantiateObjectOfClass:a2])
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x3032000000;
    v17 = __Block_byref_object_copy__152;
    v18 = __Block_byref_object_dispose__152;
    v19 = 0;
    v4 = dispatch_semaphore_create(0);
    v5 = +[_UIConcretePasteboard _loadRequestContextForBlockingUIKitCall];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = ___coerceItemToClass_block_invoke;
    v10[3] = &unk_1E711A480;
    v12 = &v20;
    v13 = &v14;
    v6 = v4;
    v11 = v6;
    v7 = [v3 uikit_loadObjectOfClass:a2 context:v5 completionBlock:v10];

    dispatch_semaphore_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
    _recordHangAssertionIfNecessaryForResponseMetadata(v15[5]);
    _Block_object_dispose(&v14, 8);
  }

  v8 = v21[5];
  _Block_object_dispose(&v20, 8);

  return v8;
}

void sub_189D75D54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
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

void sub_189D76158(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id _pasteboardCompletionQueue()
{
  if (qword_1ED49A810 != -1)
  {
    dispatch_once(&qword_1ED49A810, &__block_literal_global_366);
  }

  v1 = qword_1ED49A808;

  return v1;
}

void sub_189D78C20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id PBUTIForNSAttributedStringDocumentType(void *a1)
{
  v1 = qword_1ED49A820;
  v2 = a1;
  if (v1 != -1)
  {
    dispatch_once(&qword_1ED49A820, &__block_literal_global_369_0);
  }

  v3 = [qword_1ED49A818 objectForKeyedSubscript:v2];

  return v3;
}

void ___serverConnection_block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = _notificationStateQueue();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___serverConnection_block_invoke_3;
  block[3] = &unk_1E70F3590;
  v6 = v2;
  v4 = v2;
  dispatch_sync(v3, block);
}

void ___serverConnection_block_invoke_3(uint64_t a1)
{
  v1 = [*(a1 + 32) userInfo];
  v2 = [v1 objectForKeyedSubscript:*MEMORY[0x1E69BC878]];
  v3 = [v2 unsignedLongLongValue];

  if (v3 == _notificationStateQueue_notificationState)
  {
    v4 = MEMORY[0x1E69E96A0];

    dispatch_async(v4, &__block_literal_global_340);
  }

  else
  {
    _notificationStateQueue_notificationState = v3;
    v5 = _pasteboardCacheQueue();
    dispatch_async(v5, &__block_literal_global_328_0);
  }
}

void ___serverConnection_block_invoke_4()
{
  _pasteboardCacheQueue_removePersistentPasteboardsFromNameToItemCollectionMap();
  v0 = MEMORY[0x1E69E96A0];

  dispatch_async(v0, &__block_literal_global_340);
}

void ___serverConnection_block_invoke_6()
{
  v0 = _pasteboardCacheQueue();
  dispatch_async(v0, &__block_literal_global_334);
}

void ___serverConnection_block_invoke_8()
{
  v0 = _pasteboardCacheQueue();
  dispatch_async(v0, &__block_literal_global_338);
}

void ___dispatchPasteboardChangedSyncNotification_block_invoke()
{
  v0 = [MEMORY[0x1E696AD88] defaultCenter];
  [v0 postNotificationName:0x1EFB861D0 object:0];
}