uint64_t PKIsLowEndDevice()
{
  if (qword_1EBD6ABE8 != -1)
  {
    dispatch_once(&qword_1EBD6ABE8, &__block_literal_global_282);
  }

  return _MergedGlobals_591;
}

uint64_t __PKIsLowEndDevice_block_invoke()
{
  result = MGIsDeviceOneOfType();
  _MergedGlobals_591 = result;
  return result;
}

Class initCNAvatarImageRenderer()
{
  if (qword_1EBD68368 != -1)
  {
    dispatch_once(&qword_1EBD68368, &__block_literal_global_120);
  }

  result = objc_getClass("CNAvatarImageRenderer");
  _MergedGlobals_1_7 = result;
  _MergedGlobals_620 = CNAvatarImageRendererFunction;
  return result;
}

void *__LoadContactsUI_block_invoke()
{
  result = dlopen("/System/Library/Frameworks/ContactsUI.framework/ContactsUI", 2);
  LoadContactsUI_frameworkLibrary = result;
  return result;
}

void *__LoadContactsUI_block_invoke_0()
{
  result = dlopen("/System/Library/Frameworks/ContactsUI.framework/ContactsUI", 2);
  LoadContactsUI_frameworkLibrary_0 = result;
  return result;
}

void *__LoadContactsUI_block_invoke_1()
{
  result = dlopen("/System/Library/Frameworks/ContactsUI.framework/ContactsUI", 2);
  LoadContactsUI_frameworkLibrary_1 = result;
  return result;
}

void *__LoadContactsUI_block_invoke_2()
{
  result = dlopen("/System/Library/Frameworks/ContactsUI.framework/ContactsUI", 2);
  LoadContactsUI_frameworkLibrary_2 = result;
  return result;
}

void *__LoadContactsUI_block_invoke_3()
{
  result = dlopen("/System/Library/Frameworks/ContactsUI.framework/ContactsUI", 2);
  LoadContactsUI_frameworkLibrary_3 = result;
  return result;
}

void *__LoadContactsUI_block_invoke_4()
{
  result = dlopen("/System/Library/Frameworks/ContactsUI.framework/ContactsUI", 2);
  LoadContactsUI_frameworkLibrary_4 = result;
  return result;
}

void *__LoadContactsUI_block_invoke_5()
{
  result = dlopen("/System/Library/Frameworks/ContactsUI.framework/ContactsUI", 2);
  LoadContactsUI_frameworkLibrary_5 = result;
  return result;
}

void *__LoadContactsUI_block_invoke_6()
{
  result = dlopen("/System/Library/Frameworks/ContactsUI.framework/ContactsUI", 2);
  LoadContactsUI_frameworkLibrary_6 = result;
  return result;
}

void *__LoadContactsUI_block_invoke_7()
{
  result = dlopen("/System/Library/Frameworks/ContactsUI.framework/ContactsUI", 2);
  LoadContactsUI_frameworkLibrary_7 = result;
  return result;
}

void *__LoadContactsUI_block_invoke_8()
{
  result = dlopen("/System/Library/Frameworks/ContactsUI.framework/ContactsUI", 2);
  LoadContactsUI_frameworkLibrary_8 = result;
  return result;
}

void *__LoadContactsUI_block_invoke_9()
{
  result = dlopen("/System/Library/Frameworks/ContactsUI.framework/ContactsUI", 2);
  LoadContactsUI_frameworkLibrary_9 = result;
  return result;
}

void *__LoadContactsUI_block_invoke_10()
{
  result = dlopen("/System/Library/Frameworks/ContactsUI.framework/ContactsUI", 2);
  LoadContactsUI_frameworkLibrary_10 = result;
  return result;
}

void *__LoadContactsUI_block_invoke_11()
{
  result = dlopen("/System/Library/Frameworks/ContactsUI.framework/ContactsUI", 2);
  LoadContactsUI_frameworkLibrary_11 = result;
  return result;
}

void *__LoadContactsUI_block_invoke_12()
{
  result = dlopen("/System/Library/Frameworks/ContactsUI.framework/ContactsUI", 2);
  LoadContactsUI_frameworkLibrary_12 = result;
  return result;
}

void *__LoadContactsUI_block_invoke_13()
{
  result = dlopen("/System/Library/Frameworks/ContactsUI.framework/ContactsUI", 2);
  LoadContactsUI_frameworkLibrary_13 = result;
  return result;
}

void *__LoadContactsUI_block_invoke_14()
{
  result = dlopen("/System/Library/Frameworks/ContactsUI.framework/ContactsUI", 2);
  LoadContactsUI_frameworkLibrary_14 = result;
  return result;
}

void *__LoadContactsUI_block_invoke_15()
{
  result = dlopen("/System/Library/Frameworks/ContactsUI.framework/ContactsUI", 2);
  LoadContactsUI_frameworkLibrary_15 = result;
  return result;
}

void *__LoadContactsUI_block_invoke_16()
{
  result = dlopen("/System/Library/Frameworks/ContactsUI.framework/ContactsUI", 2);
  LoadContactsUI_frameworkLibrary_16 = result;
  return result;
}

void *__LoadContactsUI_block_invoke_17()
{
  result = dlopen("/System/Library/Frameworks/ContactsUI.framework/ContactsUI", 2);
  LoadContactsUI_frameworkLibrary_17 = result;
  return result;
}

void *__LoadContactsUI_block_invoke_18()
{
  result = dlopen("/System/Library/Frameworks/ContactsUI.framework/ContactsUI", 2);
  LoadContactsUI_frameworkLibrary_18 = result;
  return result;
}

void *__LoadContactsUI_block_invoke_19()
{
  result = dlopen("/System/Library/Frameworks/ContactsUI.framework/ContactsUI", 2);
  LoadContactsUI_frameworkLibrary_19 = result;
  return result;
}

Class initCNAvatarImageRendererSettings()
{
  if (qword_1EBD68368 != -1)
  {
    dispatch_once(&qword_1EBD68368, &__block_literal_global_120);
  }

  result = objc_getClass("CNAvatarImageRendererSettings");
  qword_1EBD68370 = result;
  off_1EE98A688 = CNAvatarImageRendererSettingsFunction;
  return result;
}

Class initCNAvatarImageRenderingScope()
{
  if (qword_1EBD68368 != -1)
  {
    dispatch_once(&qword_1EBD68368, &__block_literal_global_120);
  }

  result = objc_getClass("CNAvatarImageRenderingScope");
  qword_1EBD68378 = result;
  off_1EE98A690 = CNAvatarImageRenderingScopeFunction;
  return result;
}

void __PKUIScreenScale_block_invoke()
{
  v1 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v1 scale];
  qword_1EBD6ABF0 = v0;
}

double PKUIScreenScale()
{
  if (qword_1EBD6ABF8 != -1)
  {
    dispatch_once(&qword_1EBD6ABF8, &__block_literal_global_297);
  }

  return *&qword_1EBD6ABF0;
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__6(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__7(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__9(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__10(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__11(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__12(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__13(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__14(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__15(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__16(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__17(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__18(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__19(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__20(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__21(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__22(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__23(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__24(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__25(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__26(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__27(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__28(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__29(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__30(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__31(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__32(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__33(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__34(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__35(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__36(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__38(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__39(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__40(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__41(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__42(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__43(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__44(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__45(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__47(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__48(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__49(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__50(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__52(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__53(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__54(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void *__Block_byref_object_copy__55(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

uint64_t __Block_byref_object_copy__56(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__57(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__58(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__59(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__60(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__61(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__62(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__63(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__64(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__65(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__66(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__67(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__68(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__69(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__70(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__71(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void *__Block_byref_object_copy__72(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

uint64_t __Block_byref_object_copy__73(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__74(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__75(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__76(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __Block_byref_object_dispose__25(uint64_t a1)
{
}

{
}

void sub_1BD02D240(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BD02D4D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t sub_1BD02D8EC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1BD126968;

  return sub_1BD02DA28(a1, v4);
}

uint64_t sub_1BD02DA28(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1BD12350C;

  return v6(a1);
}

void sub_1BD02E074(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

double _ColorLightness(void *a1, CGContext *a2, char *a3)
{
  v5 = *a3;
  CGContextSetFillColorWithColor(a2, [a1 CGColor]);
  v8.origin.x = 0.0;
  v8.origin.y = 0.0;
  v8.size.width = 1.0;
  v8.size.height = 1.0;
  CGContextFillRect(a2, v8);
  LOBYTE(v6) = *a3;
  result = v6 / 255.0;
  *a3 = v5;
  return result;
}

id _NewColorByAdjustingColor(void *a1, char a2, double a3, double a4)
{
  v7 = a1;
  if (a2)
  {
    v8 = [MEMORY[0x1E69DC888] blackColor];
    v9 = kCGBlendModeDarken;
  }

  else
  {
    v8 = [MEMORY[0x1E69DC888] whiteColor];
    v9 = kCGBlendModeOverlay;
  }

  data = 0;
  v10 = PKColorSpaceStandardRGB();
  v11 = CGBitmapContextCreate(&data, 1uLL, 1uLL, 8uLL, 4uLL, v10, 0x2002u);
  CGContextSetFillColorWithColor(v11, [v7 CGColor]);
  v19.origin.x = 0.0;
  v19.origin.y = 0.0;
  v19.size.width = 1.0;
  v19.size.height = 1.0;
  CGContextFillRect(v11, v19);
  v12 = [v8 colorWithAlphaComponent:a3];
  CGContextSetBlendMode(v11, v9);
  CGContextSetFillColorWithColor(v11, [v12 CGColor]);
  v20.origin.x = 0.0;
  v20.origin.y = 0.0;
  v20.size.width = 1.0;
  v20.size.height = 1.0;
  CGContextFillRect(v11, v20);
  v13 = [v8 colorWithAlphaComponent:a4];
  CGContextSetBlendMode(v11, kCGBlendModeNormal);
  CGContextSetFillColorWithColor(v11, [v13 CGColor]);
  v21.origin.x = 0.0;
  v21.origin.y = 0.0;
  v21.size.width = 1.0;
  v21.size.height = 1.0;
  CGContextFillRect(v11, v21);
  CGContextRelease(v11);
  v14 = vld1q_dup_f32(&data);
  *v14.i8 = vmovn_s32(vshlq_u32(v14, xmmword_1BE115A60));
  v15 = [objc_alloc(MEMORY[0x1E69DC888]) initWithRed:(v14.u8[4] / 255.0) green:(v14.u8[2] / 255.0) blue:(v14.u8[0] / 255.0) alpha:(v14.u8[6] / 255.0)];

  return v15;
}

id sub_1BD02F840@<X0>(void *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v52 = a3;
  v51 = a2;
  v54 = a1;
  v53 = a4;
  v4 = sub_1BE04B0F4();
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v6 = sub_1BE04A874();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BE0523D4();
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v13 = sub_1BE04A884();
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C740);
  sub_1BE052354();
  if (qword_1EBD36CF8 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v6, qword_1EBDAB400);
  v16 = *(v7 + 16);
  v16(v10, v15, v6);
  sub_1BE04B0A4();
  sub_1BE04A894();
  v50 = sub_1BE048824();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C748);
  sub_1BE052354();
  v16(v10, v15, v6);
  sub_1BE04B0A4();
  sub_1BE04A894();
  sub_1BD02FDFC();
  v49 = sub_1BE0487E4();
  sub_1BE052354();
  v16(v10, v15, v6);
  sub_1BE04B0A4();
  sub_1BE04A894();
  v17 = sub_1BE048824();
  v18 = v54;
  result = [v54 uniqueID];
  if (result)
  {
    v20 = result;
    v21 = sub_1BE052434();
    v23 = v22;

    objc_opt_self();
    v24 = swift_dynamicCastObjCClass();
    v25 = v52;
    if (v24)
    {
      v26 = v18;
    }

    v27 = v18;
    v28 = PKSanitizedPrimaryAccountRepresentationForPass();

    v29 = v51;
    v30 = v50;
    if (v28)
    {
      v31 = sub_1BE052434();
      v33 = v32;
    }

    else
    {
      v31 = 0;
      v33 = 0;
    }

    v60 = v31;
    v61 = v33;
    sub_1BE0487D4();
    v34 = [v27 localizedDescription];
    v35 = sub_1BE052434();
    v37 = v36;

    v60 = v35;
    v61 = v37;
    sub_1BE0487D4();
    v38 = v29;
    v39 = v25;
    if (v25 >> 60 == 15)
    {
      v40 = [v27 iconImage];
      if (v40 && (v41 = v40, v42 = [v40 imageData], v41, v42))
      {
        v38 = sub_1BE04AAC4();
        v39 = v43;
      }

      else
      {
        v38 = 0;
        v39 = 0xF000000000000000;
      }
    }

    sub_1BD030394(v29, v25);
    sub_1BD030220(0, 0xF000000000000000);
    v44 = sub_1BD030234(v27);

    LOBYTE(v60) = v44;
    v45 = v49;
    sub_1BE0487D4();
    sub_1BD030220(v29, v25);
    *&v56 = v21;
    *(&v56 + 1) = v23;
    *&v57 = v27;
    *(&v57 + 1) = v38;
    *&v58 = v39;
    *(&v58 + 1) = v30;
    *&v59 = v45;
    *(&v59 + 1) = v17;
    v60 = v21;
    v61 = v23;
    v62 = v27;
    v63 = v38;
    v64 = v39;
    v65 = v30;
    v66 = v45;
    v67 = v17;
    sub_1BD0303B8(&v56, v55);
    result = sub_1BD030458(&v60);
    v46 = v57;
    v47 = v53;
    *v53 = v56;
    v47[1] = v46;
    v48 = v59;
    v47[2] = v58;
    v47[3] = v48;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1BD02FDFC()
{
  result = qword_1EBD36AF0;
  if (!qword_1EBD36AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD36AF0);
  }

  return result;
}

unint64_t sub_1BD02FE54()
{
  result = qword_1EBD36AE8;
  if (!qword_1EBD36AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD36AE8);
  }

  return result;
}

unint64_t sub_1BD02FEAC()
{
  result = qword_1EBD36AD0;
  if (!qword_1EBD36AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD36AD0);
  }

  return result;
}

unint64_t sub_1BD02FF0C()
{
  result = qword_1EBD36AF8;
  if (!qword_1EBD36AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD36AF8);
  }

  return result;
}

unint64_t sub_1BD02FF68()
{
  result = qword_1EBD36AE0;
  if (!qword_1EBD36AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD36AE0);
  }

  return result;
}

unint64_t sub_1BD02FFC0()
{
  result = qword_1EBD36AC8;
  if (!qword_1EBD36AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD36AC8);
  }

  return result;
}

unint64_t sub_1BD030018()
{
  result = qword_1EBD36AD8;
  if (!qword_1EBD36AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD36AD8);
  }

  return result;
}

unint64_t sub_1BD03006C()
{
  result = qword_1EBD36AC0;
  if (!qword_1EBD36AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD36AC0);
  }

  return result;
}

unint64_t sub_1BD0300C4()
{
  result = qword_1EBD36AA0;
  if (!qword_1EBD36AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD36AA0);
  }

  return result;
}

unint64_t sub_1BD03011C()
{
  result = qword_1EBD36AB8;
  if (!qword_1EBD36AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD36AB8);
  }

  return result;
}

unint64_t sub_1BD030174()
{
  result = qword_1EBD36AB0;
  if (!qword_1EBD36AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD36AB0);
  }

  return result;
}

unint64_t sub_1BD0301CC()
{
  result = qword_1EBD36AA8;
  if (!qword_1EBD36AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD36AA8);
  }

  return result;
}

uint64_t sub_1BD030220(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1BD1245AC(a1, a2);
  }

  return a1;
}

uint64_t sub_1BD030234(void *a1)
{
  v2 = [a1 paymentPass];
  if (!v2)
  {
    goto LABEL_20;
  }

  v3 = v2;
  if ([v3 isAccessPass])
  {

    return 1;
  }

  if ([v3 isTransitPass])
  {

    return 0;
  }

  if ([v3 isPeerPaymentPass])
  {

    return 3;
  }

  if ([v3 isAppleCardPass])
  {

    return 5;
  }

  if ([v3 isAppleBalancePass])
  {

    return 6;
  }

  v5 = [v3 isIdentityPass];

  if (v5)
  {
    return 2;
  }

LABEL_20:
  if ([a1 passType])
  {
    return 18;
  }

  v6 = [a1 style];
  if (v6 > 0xA)
  {
    return 18;
  }

  return byte_1BE0EAC6A[v6];
}

uint64_t sub_1BD030394(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1BD041A38(a1, a2);
  }

  return a1;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSg(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

unint64_t sub_1BD0304AC()
{
  result = qword_1EBD36A90;
  if (!qword_1EBD36A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD36A90);
  }

  return result;
}

unint64_t sub_1BD030504()
{
  result = qword_1EBD36A98;
  if (!qword_1EBD36A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD36A98);
  }

  return result;
}

unint64_t sub_1BD03055C()
{
  result = qword_1EBD36A78;
  if (!qword_1EBD36A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD36A78);
  }

  return result;
}

unint64_t sub_1BD0305BC()
{
  result = qword_1EBD36A70;
  if (!qword_1EBD36A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD36A70);
  }

  return result;
}

unint64_t sub_1BD030618()
{
  result = qword_1EBD36A88;
  if (!qword_1EBD36A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD36A88);
  }

  return result;
}

unint64_t sub_1BD030670()
{
  result = qword_1EBD36A80;
  if (!qword_1EBD36A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD36A80);
  }

  return result;
}

unint64_t sub_1BD0306C8()
{
  result = qword_1EBD36A68;
  if (!qword_1EBD36A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD36A68);
  }

  return result;
}

unint64_t sub_1BD03071C()
{
  result = qword_1EBD36A60;
  if (!qword_1EBD36A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD36A60);
  }

  return result;
}

unint64_t sub_1BD030774()
{
  result = qword_1EBD36A58;
  if (!qword_1EBD36A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD36A58);
  }

  return result;
}

uint64_t sub_1BD0307C8@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
  return sub_1BE048C84();
}

void sub_1BD030C04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BD031430(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BD031F90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t PKSizeAlignedInRect()
{
  if (qword_1EBD6ABF8 != -1)
  {
    dispatch_once(&qword_1EBD6ABF8, &__block_literal_global_297);
  }

  return PKSizeAlignedInRectWithScale();
}

uint64_t PKFloatRoundToPixel()
{
  if (qword_1EBD6ABF8 != -1)
  {
    dispatch_once(&qword_1EBD6ABF8, &__block_literal_global_297);
  }

  return PKFloatRoundToPixelWithScale();
}

uint64_t PKUIGetMinScreenWidthType()
{
  if (qword_1EBD6AC20 != -1)
  {
    dispatch_once(&qword_1EBD6AC20, &__block_literal_global_370);
  }

  return qword_1EBD6AC18;
}

void __LoadScreenTypes_block_invoke()
{
  v24 = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E69DCEB0] mainScreen];
  v1 = [v0 fixedCoordinateSpace];
  [v1 bounds];
  v3 = v2;
  v5 = v4;

  v6 = 0;
  v7 = 0;
  v8 = 480.0;
  v9 = 320.0;
  while (1)
  {
    v10 = *MEMORY[0x1E695F060];
    v11 = *(MEMORY[0x1E695F060] + 8);
    if (v6 <= 0x13)
    {
      v10 = dbl_1BE114D10[v6];
      v11 = dbl_1BE114DB0[v6];
    }

    if (v10 == *MEMORY[0x1E695F060] && v11 == *(MEMORY[0x1E695F060] + 8))
    {
      break;
    }

    v13 = v10 < v9;
    v14 = v9 > v3;
    if (v10 > v9)
    {
      v14 = 1;
    }

    if (v10 <= v3)
    {
      v13 = v14;
    }

    v15 = v11 < v8;
    v16 = v8 > v5;
    if (v11 > v8)
    {
      v16 = 1;
    }

    if (v11 <= v5)
    {
      v15 = v16;
    }

    if (v10 != v9)
    {
      v15 = v13;
    }

    if (!v13)
    {
      v13 = v15;
    }

    if (v13)
    {
      v9 = v10;
      v8 = v11;
      v7 = v6;
    }

    ++v6;
  }

  qword_1EBD6AC10 = v7;
  if (v9 != v3 || v8 != v5)
  {
    v18 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v25.width = v3;
      v25.height = v5;
      v21 = NSStringFromCGSize(v25);
      v22 = 138543362;
      v23 = v21;
      _os_log_error_impl(&dword_1BD026000, v18, OS_LOG_TYPE_ERROR, "Error: unrecognized screen size detected - %{public}@. Please file a radar.", &v22, 0xCu);
    }

    v7 = qword_1EBD6AC10;
  }

  v19 = v7 - 3;
  if (v19 > 0x10)
  {
    v20 = 0;
  }

  else
  {
    v20 = qword_1BE114E50[v19];
  }

  qword_1EBD6AC18 = v20;
}

unint64_t sub_1BD034F9C()
{
  result = qword_1EBD3A008;
  if (!qword_1EBD3A008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3A008);
  }

  return result;
}

unint64_t sub_1BD035004()
{
  result = qword_1EBD3A010;
  if (!qword_1EBD3A010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3A010);
  }

  return result;
}

unint64_t sub_1BD03506C()
{
  result = qword_1EBD39270;
  if (!qword_1EBD39270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD39270);
  }

  return result;
}

unint64_t sub_1BD0350C4()
{
  result = qword_1EBD39278;
  if (!qword_1EBD39278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD39278);
  }

  return result;
}

unint64_t sub_1BD035134()
{
  result = qword_1EBD5ABB0;
  if (!qword_1EBD5ABB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5ABB0);
  }

  return result;
}

unint64_t sub_1BD035200()
{
  result = qword_1EBD5ABB8;
  if (!qword_1EBD5ABB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5ABB8);
  }

  return result;
}

unint64_t sub_1BD035268()
{
  result = qword_1EBD45FE0;
  if (!qword_1EBD45FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD45FE0);
  }

  return result;
}

unint64_t sub_1BD0352C0()
{
  result = qword_1EBD45FE8;
  if (!qword_1EBD45FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD45FE8);
  }

  return result;
}

unint64_t sub_1BD035328()
{
  result = qword_1EBD4BA08;
  if (!qword_1EBD4BA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4BA08);
  }

  return result;
}

unint64_t sub_1BD035380()
{
  result = qword_1EBD4BA10;
  if (!qword_1EBD4BA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4BA10);
  }

  return result;
}

unint64_t sub_1BD0353D4()
{
  result = qword_1EBD3A4B0;
  if (!qword_1EBD3A4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3A4B0);
  }

  return result;
}

unint64_t sub_1BD03548C()
{
  result = qword_1EBD3A488;
  if (!qword_1EBD3A488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3A488);
  }

  return result;
}

uint64_t sub_1BD0354E0()
{
  v39 = sub_1BE048D74();
  v37 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39, v0);
  v38 = v33 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39290);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v36 = v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4, v6);
  v35 = v33 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD528E0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v34 = v33 - v10;
  v11 = sub_1BE04B0F4();
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v13 = sub_1BE04A874();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1BE0523D4();
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v33[0] = sub_1BE04A884();
  v20 = *(v33[0] - 8);
  v22 = MEMORY[0x1EEE9AC00](v33[0], v21);
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = v33 - v24;
  v33[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39298);
  sub_1BE052354();
  if (qword_1EBD36CF8 != -1)
  {
    swift_once();
  }

  v26 = __swift_project_value_buffer(v13, qword_1EBDAB400);
  v27 = *(v14 + 16);
  v27(v17, v26, v13);
  sub_1BE04B0A4();
  v33[1] = v25;
  sub_1BE04A894();
  sub_1BE052354();
  v27(v17, v26, v13);
  sub_1BE04B0A4();
  v28 = v34;
  sub_1BE04A894();
  (*(v20 + 56))(v28, 0, 1, v33[0]);
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  sub_1BE052354();
  v27(v17, v26, v13);
  sub_1BE04B0A4();
  sub_1BE04A894();
  v29 = v35;
  sub_1BE048664();
  v30 = sub_1BE048654();
  v31 = *(*(v30 - 8) + 56);
  v31(v29, 0, 1, v30);
  v31(v36, 1, 1, v30);
  (*(v37 + 104))(v38, *MEMORY[0x1E695A500], v39);
  sub_1BD0304AC();
  return sub_1BE0488C4();
}

uint64_t sub_1BD035A98(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

void sub_1BD035CB4(uint64_t a1, void *a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_1BD035D58()
{
  result = qword_1EBD3C6E0;
  if (!qword_1EBD3C6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3C6E0);
  }

  return result;
}

unint64_t sub_1BD035DB0()
{
  result = qword_1EBD3C6E8;
  if (!qword_1EBD3C6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3C6E8);
  }

  return result;
}

unint64_t sub_1BD035E08()
{
  result = qword_1EBD3C6F8;
  if (!qword_1EBD3C6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3C6F8);
  }

  return result;
}

unint64_t sub_1BD035E60()
{
  result = qword_1EBD3C6F0;
  if (!qword_1EBD3C6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3C6F0);
  }

  return result;
}

unint64_t sub_1BD035EBC()
{
  result = qword_1EBD3A468;
  if (!qword_1EBD3A468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3A468);
  }

  return result;
}

uint64_t sub_1BD035F10(uint64_t a1)
{
  v2 = sub_1BD035EBC();

  return MEMORY[0x1EEDB2D90](a1, v2);
}

uint64_t sub_1BD035F7C()
{
  v0 = sub_1BE048D74();
  v38 = *(v0 - 8);
  v39 = v0;
  MEMORY[0x1EEE9AC00](v0, v1);
  v40 = v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39290);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v37 = v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v7);
  v36 = v34 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD528E0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v35 = v34 - v11;
  v12 = sub_1BE04B0F4();
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v14 = sub_1BE04A874();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1BE0523D4();
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v34[0] = sub_1BE04A884();
  v21 = *(v34[0] - 8);
  v23 = MEMORY[0x1EEE9AC00](v34[0], v22);
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = v34 - v25;
  v34[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39298);
  sub_1BE052354();
  if (qword_1EBD36CF8 != -1)
  {
    swift_once();
  }

  v27 = __swift_project_value_buffer(v14, qword_1EBDAB400);
  v28 = *(v15 + 16);
  v28(v18, v27, v14);
  sub_1BE04B0A4();
  v34[1] = v26;
  sub_1BE04A894();
  sub_1BE052354();
  v28(v18, v27, v14);
  sub_1BE04B0A4();
  v29 = v35;
  sub_1BE04A894();
  (*(v21 + 56))(v29, 0, 1, v34[0]);
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  sub_1BE052354();
  v28(v18, v27, v14);
  sub_1BE04B0A4();
  sub_1BE04A894();
  v30 = v36;
  sub_1BE048664();
  v31 = sub_1BE048654();
  v32 = *(*(v31 - 8) + 56);
  v32(v30, 0, 1, v31);
  v32(v37, 1, 1, v31);
  (*(v38 + 104))(v40, *MEMORY[0x1E695A500], v39);
  sub_1BD036534();
  sub_1BD0304AC();
  return sub_1BE0488B4();
}

unint64_t sub_1BD036534()
{
  result = qword_1EBD392A0;
  if (!qword_1EBD392A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD392A0);
  }

  return result;
}

unint64_t sub_1BD0366D4()
{
  result = qword_1EBD39258;
  if (!qword_1EBD39258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD39258);
  }

  return result;
}

unint64_t sub_1BD036728()
{
  result = qword_1EBD392A8;
  if (!qword_1EBD392A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD392A8);
  }

  return result;
}

uint64_t sub_1BD03695C(uint64_t a1)
{
  v2 = sub_1BD036728();

  return MEMORY[0x1EEDB2D90](a1, v2);
}

uint64_t sub_1BD036998()
{
  v0 = sub_1BE048D74();
  v38 = *(v0 - 8);
  v39 = v0;
  MEMORY[0x1EEE9AC00](v0, v1);
  v40 = v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39290);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v37 = v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v7);
  v36 = v34 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD528E0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v35 = v34 - v11;
  v12 = sub_1BE04B0F4();
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v14 = sub_1BE04A874();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1BE0523D4();
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v34[0] = sub_1BE04A884();
  v21 = *(v34[0] - 8);
  v23 = MEMORY[0x1EEE9AC00](v34[0], v22);
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = v34 - v25;
  v34[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39298);
  sub_1BE052354();
  if (qword_1EBD36CF8 != -1)
  {
    swift_once();
  }

  v27 = __swift_project_value_buffer(v14, qword_1EBDAB400);
  v28 = *(v15 + 16);
  v28(v18, v27, v14);
  sub_1BE04B0A4();
  v34[1] = v26;
  sub_1BE04A894();
  sub_1BE052354();
  v28(v18, v27, v14);
  sub_1BE04B0A4();
  v29 = v35;
  sub_1BE04A894();
  (*(v21 + 56))(v29, 0, 1, v34[0]);
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  sub_1BE052354();
  v28(v18, v27, v14);
  sub_1BE04B0A4();
  sub_1BE04A894();
  v30 = v36;
  sub_1BE048664();
  v31 = sub_1BE048654();
  v32 = *(*(v31 - 8) + 56);
  v32(v30, 0, 1, v31);
  v32(v37, 1, 1, v31);
  (*(v38 + 104))(v40, *MEMORY[0x1E695A500], v39);
  sub_1BD037140();
  sub_1BD0304AC();
  return sub_1BE0488B4();
}

unint64_t sub_1BD037140()
{
  result = qword_1EBD39FF8;
  if (!qword_1EBD39FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD39FF8);
  }

  return result;
}

unint64_t sub_1BD037390()
{
  result = qword_1EBD3A000;
  if (!qword_1EBD3A000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3A000);
  }

  return result;
}

unint64_t sub_1BD0373E4()
{
  result = qword_1EBD3A028;
  if (!qword_1EBD3A028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3A028);
  }

  return result;
}

uint64_t sub_1BD037688(uint64_t a1)
{
  v2 = sub_1BD0373E4();

  return MEMORY[0x1EEDB2D90](a1, v2);
}

uint64_t sub_1BD0376C4(uint64_t a1)
{
  v2 = sub_1BD0353D4();

  return MEMORY[0x1EEDB2D90](a1, v2);
}

uint64_t sub_1BD037700(uint64_t a1)
{
  v2 = sub_1BD03548C();

  return MEMORY[0x1EEDB2D90](a1, v2);
}

unint64_t sub_1BD03773C()
{
  result = qword_1EBD39260;
  if (!qword_1EBD39260)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD39268);
    sub_1BD030618();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD39260);
  }

  return result;
}

uint64_t sub_1BD0377C4(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1BD1CDC40;

  return sub_1BD037868();
}

uint64_t sub_1BD037868()
{
  v1 = sub_1BE04CFC4();
  v0[19] = v1;
  v0[20] = *(v1 - 8);
  v0[21] = swift_task_alloc();
  v0[22] = swift_task_alloc();
  v2 = sub_1BE04CFE4();
  v0[23] = v2;
  v0[24] = *(v2 - 8);
  v0[25] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BD03799C, 0, 0);
}

uint64_t sub_1BD03799C()
{
  sub_1BE04B684();
  sub_1BE04CFB4();
  v1 = sub_1BE04CFD4();
  v2 = sub_1BE052E34();
  if (sub_1BE053494())
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    v4 = sub_1BE04CFA4();
    _os_signpost_emit_with_name_impl(&dword_1BD026000, v1, v2, v4, "PassEntity:suggestedEntities", "", v3, 2u);
    MEMORY[0x1BFB45F20](v3, -1, -1);
  }

  v6 = v0[24];
  v5 = v0[25];
  v8 = v0[22];
  v7 = v0[23];
  v10 = v0[20];
  v9 = v0[21];
  v11 = v0[19];

  (*(v10 + 16))(v9, v8, v11);
  sub_1BE04D024();
  swift_allocObject();
  v0[26] = sub_1BE04D014();
  (*(v10 + 8))(v8, v11);
  (*(v6 + 8))(v5, v7);
  v12 = [objc_opt_self() sharedInstance];
  v0[27] = v12;
  if (v12)
  {
    v13 = v12;
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_1BD038F54;
    v14 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD49E10);
    v0[10] = MEMORY[0x1E69E9820];
    v0[11] = 1107296256;
    v0[12] = sub_1BD038E38;
    v0[13] = &block_descriptor_19;
    v0[14] = v14;
    [v13 unexpiredPassesOrderedByGroup_];

    return MEMORY[0x1EEE6DEC8](v0 + 2);
  }

  else
  {
    sub_1BD1CC23C(v0[26], "PassEntity:suggestedEntities");

    v15 = v0[1];
    v16 = MEMORY[0x1E69E7CC0];

    return v15(v16);
  }
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_21(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_22(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_23(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_24(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_25(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_26(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_27(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_28(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_30(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_32(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_33(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_35(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_36(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_37(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_38(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_39(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_40(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_41(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_42(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_43(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_44(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_45(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_46(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_47(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_48(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_49(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_50(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_51(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_52(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_53(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_54(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_55(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_56(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_57(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_58(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_59(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_60(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_61(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_62(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_63(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_64(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_65(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_66(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_67(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_68(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_69(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_70(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_71(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_72(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_74(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_75(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_76(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_77(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_78(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_79(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_80(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_81(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_82(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_83(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_84(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_85(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_86(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_87(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_88(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_89(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_90(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_91(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_92(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_93(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_94(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_95(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_97(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_98(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_99(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_100(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_101(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_102(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_104(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_105(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_106(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_107(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_109(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_110(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_111(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_112(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_113(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_114(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_115(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_117(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_120(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_121(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_122(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_123(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_124(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_125(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_126(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_127(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_128(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_129(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_130(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_132(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_133(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_134(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_136(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_137(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_138(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_139(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_141(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_142(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_143(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_145(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_146(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_147(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_148(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_149(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_151(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_152(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_154(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_155(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_156(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_157(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_159(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_161(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_162(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_163(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_164(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_165(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_166(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_167(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_168(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_169(uint64_t a1, uint64_t a2)
{
  return sub_1BD038CD0(a2 + 32, a1 + 32);
}

{
  return sub_1BD038CD0(a2 + 32, a1 + 32);
}

uint64_t block_copy_helper_170(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_172(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_173(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_174(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_175(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_177(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_178(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_179(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_180(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_181(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_183(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_184(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_185(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_186(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_187(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_188(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_189(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_190(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_191(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_192(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_193(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_194(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_196(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_197(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_198(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_199(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_200(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_201(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_202(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_203(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_204(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_205(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_207(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_208(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_209(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_210(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_211(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_212(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_214(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_215(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_216(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_217(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_218(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_219(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_220(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_221(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_222(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_223(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_224(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_227(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_228(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_230(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_232(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_233(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_234(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_235(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_236(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_237(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_238(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_239(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_240(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_241(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_242(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_243(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_244(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_245(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_246(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_248(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_249(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_250(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t sub_1BD038CD0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1BD038E38(uint64_t a1, uint64_t a2)
{
  v3 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a2)
  {
    sub_1BD0E5E8C(0, &qword_1EBD40650);
    v4 = sub_1BE052744();
  }

  else
  {
    v4 = 0;
  }

  **(*(v3 + 64) + 40) = v4;

  return MEMORY[0x1EEE6DED8](v3);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1BD038F54()
{

  return MEMORY[0x1EEE6DFA0](sub_1BD0390A8, 0, 0);
}

uint64_t sub_1BD0390A8()
{
  v1 = v0[27];
  v2 = v0[18];
  v0[28] = v2;

  if (v2)
  {
    v3 = swift_task_alloc();
    v0[29] = v3;
    *v3 = v0;
    v3[1] = sub_1BD1CD51C;

    return (sub_1BD0391EC)(v2, 1);
  }

  else
  {
    sub_1BD1CC23C(v0[26], "PassEntity:suggestedEntities");

    v5 = v0[1];
    v6 = MEMORY[0x1E69E7CC0];

    return v5(v6);
  }
}

uint64_t sub_1BD0391EC(uint64_t a1, char a2)
{
  *(v2 + 200) = a2;
  *(v2 + 144) = a1;
  v3 = sub_1BE04D214();
  *(v2 + 152) = v3;
  *(v2 + 160) = *(v3 - 8);
  *(v2 + 168) = swift_task_alloc();
  *(v2 + 176) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BD0392BC, 0, 0);
}

char *sub_1BD0392BC()
{
  v1 = *(v0 + 144);
  if (*(v0 + 200) == 1)
  {
    v2 = swift_task_alloc();
    *(v0 + 184) = v2;
    *v2 = v0;
    v2[1] = sub_1BD03EC74;

    return sub_1BD0395F8(v1, 0, 0, 0, 1, 1);
  }

  else
  {
    if (v1 >> 62)
    {
      v4 = sub_1BE053704();
    }

    else
    {
      v4 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v5 = MEMORY[0x1E69E7CC0];
    if (v4)
    {
      v19 = MEMORY[0x1E69E7CC0];
      result = sub_1BD03EF98(0, v4 & ~(v4 >> 63), 0);
      if (v4 < 0)
      {
        __break(1u);
        return result;
      }

      v6 = 0;
      v5 = v19;
      v7 = *(v0 + 144) + 32;
      do
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v8 = MEMORY[0x1BFB40900](v6, *(v0 + 144));
        }

        else
        {
          v8 = *(v7 + 8 * v6);
        }

        sub_1BD02F840(v8, 0, 0xF000000000000000, (v0 + 16));
        v10 = *(v19 + 16);
        v9 = *(v19 + 24);
        if (v10 >= v9 >> 1)
        {
          sub_1BD03EF98((v9 > 1), v10 + 1, 1);
        }

        ++v6;
        *(v19 + 16) = v10 + 1;
        v11 = (v19 + (v10 << 6));
        v12 = *(v0 + 16);
        v13 = *(v0 + 32);
        v14 = *(v0 + 64);
        v11[4] = *(v0 + 48);
        v11[5] = v14;
        v11[2] = v12;
        v11[3] = v13;
      }

      while (v4 != v6);
    }

    sub_1BE04D074();
    sub_1BE048C84();
    v15 = sub_1BE04D204();
    v16 = sub_1BE052C54();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 134217984;
      *(v17 + 4) = *(v5 + 16);

      _os_log_impl(&dword_1BD026000, v15, v16, "PassEntityDataProvider: Returning %ld entities without snapshots", v17, 0xCu);
      MEMORY[0x1BFB45F20](v17, -1, -1);
    }

    else
    {
    }

    (*(*(v0 + 160) + 8))(*(v0 + 168), *(v0 + 152));

    v18 = *(v0 + 8);

    return v18(v5);
  }
}

uint64_t sub_1BD0395F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6)
{
  *(v6 + 113) = a6;
  *(v6 + 112) = a5;
  *(v6 + 40) = a3;
  *(v6 + 48) = a4;
  *(v6 + 24) = a1;
  *(v6 + 32) = a2;
  v7 = sub_1BE04D214();
  *(v6 + 56) = v7;
  *(v6 + 64) = *(v7 - 8);
  *(v6 + 72) = swift_task_alloc();
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BD0396DC, 0, 0);
}

uint64_t sub_1BD0396DC()
{
  v39 = v0;
  v1 = *(v0 + 40);
  if (v1)
  {
    sub_1BE04D074();
    sub_1BE048C84();
    v2 = sub_1BE04D204();
    v3 = sub_1BE052C54();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = *(v0 + 88);
      v5 = *(v0 + 56);
      v6 = *(v0 + 64);
      v7 = *(v0 + 32);
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v38 = v9;
      *v8 = 136315138;
      *(v8 + 4) = sub_1BD123690(v7, v1, &v38);
      _os_log_impl(&dword_1BD026000, v2, v3, "PassEntityDataProvider: Searching Spotlight for passes matching %s.", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v9);
      MEMORY[0x1BFB45F20](v9, -1, -1);
      MEMORY[0x1BFB45F20](v8, -1, -1);

      (*(v6 + 8))(v4, v5);
    }

    else
    {
      v16 = *(v0 + 88);
      v17 = *(v0 + 56);
      v18 = *(v0 + 64);

      (*(v18 + 8))(v16, v17);
    }

LABEL_17:
    v29 = *(v0 + 113);
    v30 = *(v0 + 112);
    v31 = *(v0 + 48);
    v37 = *(v0 + 32);
    v32 = *(v0 + 24);
    v33 = swift_task_alloc();
    *(v0 + 96) = v33;
    *(v33 + 16) = v29;
    *(v33 + 24) = v31;
    *(v33 + 32) = v30 & 1;
    *(v33 + 40) = v37;
    *(v33 + 56) = v32;
    v34 = swift_task_alloc();
    *(v0 + 104) = v34;
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49E28);
    *v34 = v0;
    v34[1] = sub_1BD03E798;

    return MEMORY[0x1EEE6DDE0](v0 + 16, 0, 0, 0xD000000000000032, 0x80000001BE12DEC0, sub_1BD03B020, v33, v35);
  }

  if (*(v0 + 24))
  {
    sub_1BE04D074();
    sub_1BE048C84();
    v10 = sub_1BE04D204();
    v11 = sub_1BE052C54();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = *(v0 + 24);
      v13 = swift_slowAlloc();
      *v13 = 134217984;
      if (v12 >> 62)
      {
        v36 = v13;
        v14 = sub_1BE053704();
        v13 = v36;
      }

      else
      {
        v14 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v13 + 4) = v14;
      v15 = v13;

      _os_log_impl(&dword_1BD026000, v10, v11, "PassEntityDataProvider: Fetching %ld passes from Spotlight", v15, 0xCu);
      MEMORY[0x1BFB45F20](v15, -1, -1);
    }

    else
    {
    }

    (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));
    goto LABEL_17;
  }

  sub_1BE04D074();
  v19 = sub_1BE04D204();
  v20 = sub_1BE052C34();
  v21 = os_log_type_enabled(v19, v20);
  v22 = *(v0 + 80);
  v23 = *(v0 + 56);
  v24 = *(v0 + 64);
  if (v21)
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_1BD026000, v19, v20, "PassEntityDataProvider: Must specify passes or search term", v25, 2u);
    MEMORY[0x1BFB45F20](v25, -1, -1);
  }

  (*(v24 + 8))(v22, v23);

  v26 = *(v0 + 8);
  v27 = MEMORY[0x1E69E7CC0];

  return v26(v27);
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t a1)
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

uint64_t block_destroy_helper_16()
{
}

{
}

uint64_t block_destroy_helper_54()
{
}

{
}

uint64_t block_destroy_helper_105()
{
}

{
}

void sub_1BD03A3A0(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v96 = a7;
  v87 = a1;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD49E30);
  v88 = *(v90 - 8);
  v85 = *(v88 + 64);
  MEMORY[0x1EEE9AC00](v90, v12);
  v86 = v84 - v13;
  v14 = sub_1BE04D214();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = v84 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = swift_allocObject();
  *(v19 + 16) = MEMORY[0x1E69E7CC0];
  v92 = [objc_allocWithZone(MEMORY[0x1E6964E70]) init];
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50630);
  v20 = swift_allocObject();
  v93 = xmmword_1BE0B69E0;
  *(v20 + 16) = xmmword_1BE0B69E0;
  *(v20 + 32) = 0xD000000000000012;
  *(v20 + 40) = 0x80000001BE12DF00;
  v89 = v19;
  if (a2)
  {
    v21 = sub_1BD03B038(1, 2, 1, v20);
    *(v21 + 2) = 2;
    v22 = v21;
    *(v21 + 6) = 0xD000000000000015;
    *(v21 + 7) = 0x80000001BE12DEA0;
  }

  else
  {
    v22 = v20;
  }

  v23 = sub_1BE052724();
  [v92 setFetchAttributes_];

  if ((a4 & 1) == 0)
  {
    sub_1BE04D074();
    v24 = sub_1BE04D204();
    v25 = sub_1BE052C54();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 134217984;
      *(v26 + 4) = a3;
      _os_log_impl(&dword_1BD026000, v24, v25, "PassEntityDataProvider: Spotlight will return maximum %ld results", v26, 0xCu);
      MEMORY[0x1BFB45F20](v26, -1, -1);
    }

    (*(v15 + 8))(v18, v14);
    [v92 setMaxCount_];
  }

  v27 = swift_allocObject();
  *(v27 + 16) = v93;
  *(v27 + 32) = 0xD00000000000001FLL;
  *(v27 + 40) = 0x80000001BE12DF20;
  if (a6)
  {
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_1BE0B98E0;
    *&aBlock = 0;
    *(&aBlock + 1) = 0xE000000000000000;
    sub_1BE053834();

    *&aBlock = 0xD000000000000018;
    *(&aBlock + 1) = 0x80000001BE12DF70;
    MEMORY[0x1BFB3F610](a5, a6);
    MEMORY[0x1BFB3F610](1684218410, 0xE400000000000000);
    v29 = *(&aBlock + 1);
    *(v28 + 32) = aBlock;
    *(v28 + 40) = v29;
    *&aBlock = 0;
    *(&aBlock + 1) = 0xE000000000000000;
    sub_1BE053834();

    strcpy(&aBlock, "creator == *");
    HIWORD(aBlock) = -4864;
    MEMORY[0x1BFB3F610](a5, a6);
    MEMORY[0x1BFB3F610](1684218410, 0xE400000000000000);
    v30 = *(&aBlock + 1);
    *(v28 + 48) = aBlock;
    *(v28 + 56) = v30;
    *&aBlock = 0;
    *(&aBlock + 1) = 0xE000000000000000;
    sub_1BE053834();

    *&aBlock = 0xD00000000000001BLL;
    *(&aBlock + 1) = 0x80000001BE12DF90;
    MEMORY[0x1BFB3F610](a5, a6);
    MEMORY[0x1BFB3F610](1684218410, 0xE400000000000000);
    v31 = *(&aBlock + 1);
    *(v28 + 64) = aBlock;
    *(v28 + 72) = v31;
    *&aBlock = 0;
    *(&aBlock + 1) = 0xE000000000000000;
    sub_1BE053834();

    *&aBlock = 0xD000000000000018;
    *(&aBlock + 1) = 0x80000001BE12DFB0;
    MEMORY[0x1BFB3F610](a5, a6);
    MEMORY[0x1BFB3F610](0x296463222ALL, 0xE500000000000000);
    v32 = *(&aBlock + 1);
    *(v28 + 80) = aBlock;
    *(v28 + 88) = v32;
    *&aBlock = 40;
    *(&aBlock + 1) = 0xE100000000000000;
    v97 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45AA0);
    sub_1BD03B274();
    v33 = sub_1BE0522E4();
    v35 = v34;

    MEMORY[0x1BFB3F610](v33, v35);

    MEMORY[0x1BFB3F610](41, 0xE100000000000000);
    v37 = *(&aBlock + 1);
    p_aBlock = aBlock;
    v39 = *(v27 + 16);
    v38 = *(v27 + 24);
    v40 = v39 + 1;
    if (v39 >= v38 >> 1)
    {
      goto LABEL_29;
    }

    while (1)
    {
      v41 = v96;
      *(v27 + 16) = v40;
      v42 = v27 + 16 * v39;
      *(v42 + 32) = p_aBlock;
      *(v42 + 40) = v37;
      if (!v41)
      {
        break;
      }

LABEL_11:
      v43 = v41 & 0xFFFFFFFFFFFFFF8;
      if (v41 >> 62)
      {
        v57 = v41;
        v58 = sub_1BE053704();
        v41 = v57;
        v39 = v58;
        if (!v58)
        {
LABEL_31:

          v40 = MEMORY[0x1E69E7CC0];
          v56 = v90;
LABEL_32:
          *&aBlock = 40;
          *(&aBlock + 1) = 0xE100000000000000;
          v97 = v40;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45AA0);
          sub_1BD03B274();
          v59 = sub_1BE0522E4();
          v61 = v60;

          MEMORY[0x1BFB3F610](v59, v61);

          MEMORY[0x1BFB3F610](41, 0xE100000000000000);
          v62 = aBlock;
          v64 = *(v27 + 16);
          v63 = *(v27 + 24);
          if (v64 >= v63 >> 1)
          {
            v27 = sub_1BD03B038((v63 > 1), v64 + 1, 1, v27);
          }

          *(v27 + 16) = v64 + 1;
          *(v27 + 16 * v64 + 32) = v62;
          goto LABEL_35;
        }
      }

      else
      {
        v39 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v39)
        {
          goto LABEL_31;
        }
      }

      v94 = v43;
      v37 = v41;
      v97 = MEMORY[0x1E69E7CC0];
      p_aBlock = &v97;
      sub_1BD03B254(0, v39 & ~(v39 >> 63), 0);
      if (v39 < 0)
      {
        __break(1u);
LABEL_37:
        __break(1u);
        return;
      }

      v84[0] = v27;
      v84[1] = v22;
      v44 = 0;
      v40 = v97;
      v45 = v37;
      v95 = v37 & 0xC000000000000001;
      v38 = "contentType == com.apple.pkpass";
      v22 = 0x80000001BE12DF40;
      while (1)
      {
        v27 = v44 + 1;
        if (__OFADD__(v44, 1))
        {
          break;
        }

        if (v95)
        {
          v46 = MEMORY[0x1BFB40900](v44, v45);
        }

        else
        {
          v38 = *(v94 + 16);
          if (v44 >= v38)
          {
            goto LABEL_28;
          }

          v46 = *(v45 + 8 * v44 + 32);
        }

        v47 = v46;
        *&aBlock = 0;
        *(&aBlock + 1) = 0xE000000000000000;
        sub_1BE053834();

        *&aBlock = 0xD000000000000028;
        *(&aBlock + 1) = 0x80000001BE12DF40;
        v48 = [v47 uniqueID];
        if (!v48)
        {
          goto LABEL_37;
        }

        v49 = v48;
        v50 = sub_1BE052434();
        v52 = v51;

        p_aBlock = &aBlock;
        MEMORY[0x1BFB3F610](v50, v52);

        MEMORY[0x1BFB3F610](39, 0xE100000000000000);

        v53 = *(&aBlock + 1);
        v37 = aBlock;
        v97 = v40;
        v55 = *(v40 + 16);
        v54 = *(v40 + 24);
        if (v55 >= v54 >> 1)
        {
          p_aBlock = &v97;
          sub_1BD03B254((v54 > 1), v55 + 1, 1);
          v40 = v97;
        }

        *(v40 + 16) = v55 + 1;
        v38 = v40 + 16 * v55;
        *(v38 + 32) = v37;
        *(v38 + 40) = v53;
        ++v44;
        v45 = v96;
        if (v27 == v39)
        {

          v56 = v90;
          v27 = v84[0];
          goto LABEL_32;
        }
      }

      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      v27 = sub_1BD03B038((v38 > 1), v40, 1, v27);
    }
  }

  else
  {
    v41 = v96;
    if (v96)
    {
      goto LABEL_11;
    }
  }

  v56 = v90;

LABEL_35:
  *&aBlock = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45AA0);
  sub_1BD03B274();
  sub_1BE0522E4();

  v65 = objc_allocWithZone(MEMORY[0x1E6964E68]);
  v66 = v92;
  v67 = sub_1BE052404();

  v68 = [v65 initWithQueryString:v67 queryContext:v66];

  v69 = swift_allocObject();
  *(v69 + 16) = v93;
  *(v69 + 32) = sub_1BE052434();
  *(v69 + 40) = v70;
  v71 = sub_1BE052724();

  [v68 setBundleIDs_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49E40);
  v72 = swift_allocObject();
  *(v72 + 16) = v93;
  v73 = *MEMORY[0x1E696A388];
  *(v72 + 32) = *MEMORY[0x1E696A388];
  type metadata accessor for FileProtectionType(0);
  v74 = v73;
  v75 = sub_1BE052724();

  [v68 setProtectionClasses_];

  v76 = v89;
  v101 = sub_1BD5426E0;
  v102 = v89;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v99 = sub_1BD5413DC;
  v100 = &block_descriptor_8;
  v77 = _Block_copy(&aBlock);
  sub_1BE048964();

  [v68 setFoundItemsHandler_];
  _Block_release(v77);
  v78 = v88;
  v79 = v86;
  (*(v88 + 16))(v86, v87, v56);
  v80 = (*(v78 + 80) + 16) & ~*(v78 + 80);
  v81 = (v85 + v80 + 7) & 0xFFFFFFFFFFFFFFF8;
  v82 = swift_allocObject();
  (*(v78 + 32))(v82 + v80, v79, v56);
  *(v82 + v81) = v76;
  v101 = sub_1BD03E6C8;
  v102 = v82;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v99 = sub_1BD03E30C;
  v100 = &block_descriptor_14_1;
  v83 = _Block_copy(&aBlock);
  sub_1BE048964();

  [v68 setCompletionHandler_];
  _Block_release(v83);
  [v68 start];
}

uint64_t sub_1BD03AF40()
{

  return swift_deallocObject();
}

uint64_t sub_1BD03AF78()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD49E30);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

char *sub_1BD03B038(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50630);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1BD03B148(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50630);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1BD03B254(char *a1, int64_t a2, char a3)
{
  result = sub_1BD03B148(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

unint64_t sub_1BD03B274()
{
  result = qword_1EBD55120;
  if (!qword_1EBD55120)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD45AA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD55120);
  }

  return result;
}

void sub_1BD03B454(uint64_t a1, unint64_t *a2)
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

uint64_t block_copy_helper_12_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

id PKPassPaymentFrontFaceValueFont(int a1)
{
  if (a1)
  {
    v1 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDD00]];
    v2 = [v1 fontDescriptorWithSymbolicTraits:65538];

    v3 = [MEMORY[0x1E69DB878] fontWithDescriptor:v2 size:16.0];
  }

  else
  {
    v3 = PKDefaultSystemFontOfSizeAndWeight(22.0, *MEMORY[0x1E69DB980]);
  }

  return v3;
}

id PKDefaultSystemFontOfSizeAndWeight(double a1, double a2)
{
  v2 = _PKSystemFontOfSizeAndWeightForDesign(*MEMORY[0x1E69658B8], @"ss04", a1, a2);

  return v2;
}

uint64_t _PKSystemFontOfSizeAndWeightForDesign(uint64_t a1, void *a2, double a3, double a4)
{
  v19[1] = *MEMORY[0x1E69E9840];
  v7 = MEMORY[0x1E69DB878];
  v8 = a2;
  v9 = [v7 systemFontOfSize:a1 weight:a3 design:a4];
  v10 = [v9 fontDescriptor];
  v11 = *MEMORY[0x1E69657A8];
  v17 = v8;
  v18 = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v17 count:1];
  v19[0] = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
  v14 = [v10 fontDescriptorByAddingAttributes:v13];

  v15 = [MEMORY[0x1E69DB878] fontWithDescriptor:v14 size:a3];

  return v15;
}

double PKUIPixelLength()
{
  if (qword_1EBD6AC08 != -1)
  {
    dispatch_once(&qword_1EBD6AC08, &__block_literal_global_300);
  }

  return *&qword_1EBD6AC00;
}

double __PKUIPixelLength_block_invoke()
{
  if (qword_1EBD6ABF8 != -1)
  {
    dispatch_once(&qword_1EBD6ABF8, &__block_literal_global_297);
  }

  result = 1.0 / *&qword_1EBD6ABF0;
  *&qword_1EBD6AC00 = 1.0 / *&qword_1EBD6ABF0;
  return result;
}

id PKUIImageFromPDF(void *a1, CGFloat a2, CGFloat a3, double a4)
{
  v7 = a1;
  v8 = v7;
  if (v7 && (v9 = CGPDFDocumentCreateWithURL(v7)) != 0)
  {
    v10 = v9;
    v16.width = a2;
    v16.height = a3;
    v11 = PKCreateCGImage(v9, v16, a4);
    if (v11)
    {
      v12 = v11;
      v13 = [MEMORY[0x1E69DCAB8] imageWithCGImage:v11 scale:0 orientation:a4];
      CGImageRelease(v12);
    }

    else
    {
      v13 = 0;
    }

    CGPDFDocumentRelease(v10);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

uint64_t PKUserInterfaceIdiomSupportsLargeLayouts()
{
  if (qword_1EBD6ABE0 != -1)
  {
    dispatch_once(&qword_1EBD6ABE0, &__block_literal_global_50);
  }

  return (qword_1EBD6ABD8 < 7) & (0x62u >> qword_1EBD6ABD8);
}

void sub_1BD03E30C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  sub_1BE048964();
  v4 = a2;
  v3(a2);
}

void sub_1BD03E378(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1BE04D214();
  v6 = *(v5 - 8);
  v8 = MEMORY[0x1EEE9AC00](v5, v7);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = v27 - v12;
  if (a1)
  {
    v14 = a1;
    sub_1BE04D074();
    v15 = a1;
    v16 = sub_1BE04D204();
    v17 = sub_1BE052C34();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138412290;
      v20 = a1;
      v21 = _swift_stdlib_bridgeErrorToNSError();
      *(v18 + 4) = v21;
      *v19 = v21;
      _os_log_impl(&dword_1BD026000, v16, v17, "PassEntityDataProvider: Spotlight search failed with error: %@", v18, 0xCu);
      sub_1BD1E236C(v19);
      MEMORY[0x1BFB45F20](v19, -1, -1);
      MEMORY[0x1BFB45F20](v18, -1, -1);
    }

    (*(v6 + 8))(v13, v5);
    v27[5] = MEMORY[0x1E69E7CC0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD49E30);
    sub_1BE052864();
  }

  else
  {
    sub_1BE04D074();
    sub_1BE048964();
    v22 = sub_1BE04D204();
    v23 = sub_1BE052C54();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 134217984;
      swift_beginAccess();
      v25 = *(a3 + 16);
      if (v25 >> 62)
      {
        v26 = sub_1BE053704();
      }

      else
      {
        v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v24 + 4) = v26;

      _os_log_impl(&dword_1BD026000, v22, v23, "PassEntityDataProvider: Found %ld items in Spotlight", v24, 0xCu);
      MEMORY[0x1BFB45F20](v24, -1, -1);
    }

    else
    {
    }

    (*(v6 + 8))(v10, v5);
    swift_beginAccess();
    v27[4] = *(a3 + 16);
    sub_1BE048C84();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD49E30);
    sub_1BE052864();
  }
}

void sub_1BD03E6C8(void *a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD49E30) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_1BD03E378(a1, v1 + v4, v5);
}

uint64_t sub_1BD03E798()
{

  return MEMORY[0x1EEE6DFA0](sub_1BD03E8B0, 0, 0);
}

uint64_t sub_1BD03E8B0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 8);

  return v2(v1);
}

char *sub_1BD03E934()
{
  v1 = *(v0 + 144);
  v2 = sub_1BD03ED74(*(v0 + 192));
  if (v1 >> 62)
  {
    goto LABEL_22;
  }

  for (i = *((*(v0 + 144) & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1BE053704())
  {
    v36 = MEMORY[0x1E69E7CC0];
    result = sub_1BD03EF98(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      __break(1u);
LABEL_31:
      __break(1u);
      return result;
    }

    v5 = 0;
    v6 = *(v0 + 144);
    v7 = v36;
    v34 = v6 & 0xFFFFFFFFFFFFFF8;
    v35 = v6 & 0xC000000000000001;
    v33 = v6 + 32;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v35)
      {
        v9 = MEMORY[0x1BFB40900](v5, *(v0 + 144));
      }

      else
      {
        if (v5 >= *(v34 + 16))
        {
          goto LABEL_21;
        }

        v9 = *(v33 + 8 * v5);
      }

      v10 = v9;
      result = [v9 uniqueID];
      if (!result)
      {
        goto LABEL_31;
      }

      v11 = result;
      v12 = sub_1BE052434();
      v14 = v13;

      if (!*(v2 + 16))
      {

LABEL_15:
        v22 = 0;
        v21 = 0xF000000000000000;
        goto LABEL_16;
      }

      v15 = sub_1BD148F70(v12, v14);
      v17 = v16;

      if ((v17 & 1) == 0)
      {
        goto LABEL_15;
      }

      v18 = (*(v2 + 56) + 16 * v15);
      v19 = *v18;
      v20 = v18[1];
      sub_1BD041A38(*v18, v20);
      v21 = v20;
      v22 = v19;
LABEL_16:
      sub_1BD02F840(v10, v22, v21, (v0 + 80));
      v24 = *(v36 + 16);
      v23 = *(v36 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_1BD03EF98((v23 > 1), v24 + 1, 1);
      }

      *(v36 + 16) = v24 + 1;
      v25 = (v36 + (v24 << 6));
      v26 = *(v0 + 80);
      v27 = *(v0 + 96);
      v28 = *(v0 + 128);
      v25[4] = *(v0 + 112);
      v25[5] = v28;
      v25[2] = v26;
      v25[3] = v27;
      ++v5;
      if (v8 == i)
      {

        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    ;
  }

  v7 = MEMORY[0x1E69E7CC0];
LABEL_24:
  sub_1BE04D074();
  sub_1BE048C84();
  v29 = sub_1BE04D204();
  v30 = sub_1BE052C54();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 134217984;
    *(v31 + 4) = *(v7 + 16);

    _os_log_impl(&dword_1BD026000, v29, v30, "PassEntityDataProvider: Returning %ld entities with snapshots", v31, 0xCu);
    MEMORY[0x1BFB45F20](v31, -1, -1);
  }

  else
  {
  }

  (*(*(v0 + 160) + 8))(*(v0 + 176), *(v0 + 152));

  v32 = *(v0 + 8);

  return v32(v7);
}

uint64_t sub_1BD03EC74(uint64_t a1)
{
  *(*v1 + 192) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1BD03E934, 0, 0);
}

uint64_t sub_1BD03ED74(unint64_t a1)
{
  v9 = MEMORY[0x1E69E7CC8];
  if (a1 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1BE053704())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x1BFB40900](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v4 = *(a1 + 8 * j + 32);
      }

      v5 = v4;
      v6 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v8 = v4;
      sub_1BD541460(&v9, &v8);

      if (v6 == i)
      {
        return v9;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

  return MEMORY[0x1E69E7CC8];
}

char *sub_1BD03EE8C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD499E8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1BD03EF98(char *a1, int64_t a2, char a3)
{
  result = sub_1BD03EE8C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for PassEntityType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEE)
  {
    goto LABEL_17;
  }

  if (a2 + 18 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 18) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 18;
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

      return (*a1 | (v4 << 8)) - 18;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 18;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x13;
  v8 = v6 - 19;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PassEntityType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 18 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 18) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEE)
  {
    v4 = 0;
  }

  if (a2 > 0xED)
  {
    v5 = ((a2 - 238) >> 8) + 1;
    *result = a2 + 18;
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
    *result = a2 + 18;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1BD03F0F8@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1BD03F124(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1BD03F124(char a1)
{
  result = 0x7469736E617274;
  switch(a1)
  {
    case 1:
      result = 0x737365636361;
      break;
    case 2:
      result = 0x797469746E656469;
      break;
    case 3:
      result = 0x6D79615072656570;
      break;
    case 4:
      result = 0x746E656D796170;
      break;
    case 5:
      result = 0x726143656C707061;
      break;
    case 6:
      result = 0x6C6142656C707061;
      break;
    case 7:
      result = 0x6E6F70756F63;
      break;
    case 8:
      result = 0x6472614374666967;
      break;
    case 9:
      result = 0x676E696472616F62;
      break;
    case 10:
      result = 0x4765646F63726162;
      break;
    case 11:
      result = 0x615068746C616568;
      break;
    case 12:
      result = 0x4165646F63726162;
      break;
    case 13:
      result = 0x5065646F63726162;
      break;
    case 14:
      result = 0x636954746E657665;
      break;
    case 15:
      result = 0xD00000000000001DLL;
      break;
    case 16:
      result = 0xD000000000000011;
      break;
    case 17:
      result = 0xD000000000000014;
      break;
    case 18:
      result = 0x726568746FLL;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1BD03F3B0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38B88);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v3 = &v105 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD528E0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v121 = &v105 - v6;
  v7 = sub_1BE04B0F4();
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v126 = &v105 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BE04A874();
  v125 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v105 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1BE0523D4();
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v17 = &v105 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1BE04A884();
  v127 = *(v18 - 8);
  v128 = v18;
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v105 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E0B0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BEF8);
  v23 = (*(*(v22 - 8) + 80) + 32) & ~*(*(v22 - 8) + 80);
  v123 = *(*(v22 - 8) + 72);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1BE0EA9A0;
  v108 = v24;
  v124 = v22;
  v122 = v24 + v23;
  *(v24 + v23) = 1;
  sub_1BE052354();
  if (qword_1EBD36CF8 != -1)
  {
    swift_once();
  }

  v118 = v10;
  v120 = __swift_project_value_buffer(v10, qword_1EBDAB400);
  v25 = *(v125 + 16);
  v125 += 16;
  v25(v13, v120, v10);
  v119 = v25;
  sub_1BE04B0A4();
  v26 = v21;
  sub_1BE04A894();
  v27 = *(v127 + 56);
  v127 += 56;
  v115 = v27;
  v28 = v121;
  v27(v121, 1, 1, v128);
  v116 = sub_1BE048BB4();
  v29 = *(v116 - 8);
  v114 = *(v29 + 56);
  v117 = v29 + 56;
  v114(v3, 1, 1, v116);
  v113 = v3;
  v30 = v122;
  v31 = v28;
  sub_1BE048BE4();
  v32 = v30;
  v109 = *(v124 + 48);
  *(v30 + v123) = 6;
  v112 = v17;
  sub_1BE052354();
  v111 = v13;
  v33 = v120;
  v34 = v118;
  v25(v13, v120, v118);
  sub_1BE04B0A4();
  sub_1BE04A894();
  v35 = v115;
  v115(v31, 1, 1, v128);
  v36 = v113;
  v114(v113, 1, 1, v116);
  sub_1BE048BE4();
  v109 = 2 * v123;
  v106 = (v32 + 2 * v123);
  v37 = v124;
  v107 = *(v124 + 48);
  *(v32 + v109) = 5;
  sub_1BE052354();
  v38 = v111;
  v119(v111, v33, v34);
  sub_1BE04B0A4();
  v110 = v26;
  v39 = v38;
  sub_1BE04A894();
  v35(v121, 1, 1, v128);
  v40 = v116;
  v114(v36, 1, 1, v116);
  sub_1BE048BE4();
  v41 = v122;
  v42 = v123;
  v107 = v122 + v109 + v123;
  v109 = *(v37 + 48);
  *v107 = 2;
  sub_1BE052354();
  v43 = v120;
  v119(v39, v120, v118);
  sub_1BE04B0A4();
  sub_1BE04A894();
  v44 = v121;
  v115(v121, 1, 1, v128);
  v45 = v40;
  v46 = v114;
  v114(v36, 1, 1, v45);
  sub_1BE048BE4();
  v109 = 4 * v42;
  v106 = (v41 + 4 * v42);
  v47 = v124;
  v107 = *(v124 + 48);
  *v106 = 4;
  sub_1BE052354();
  v48 = v43;
  v49 = v118;
  v119(v111, v48, v118);
  sub_1BE04B0A4();
  sub_1BE04A894();
  v115(v44, 1, 1, v128);
  v50 = v116;
  v46(v113, 1, 1, v116);
  sub_1BE048BE4();
  v51 = v123;
  v107 = v122 + v109 + v123;
  v109 = *(v47 + 48);
  *v107 = 3;
  sub_1BE052354();
  v53 = v119;
  v52 = v120;
  v119(v111, v120, v49);
  sub_1BE04B0A4();
  sub_1BE04A894();
  v54 = v115;
  v115(v121, 1, 1, v128);
  v55 = v113;
  v114(v113, 1, 1, v50);
  sub_1BE048BE4();
  v56 = v122;
  v107 = v122 + 6 * v51;
  v109 = *(v124 + 48);
  *v107 = 0;
  sub_1BE052354();
  v57 = v111;
  v53(v111, v52, v118);
  sub_1BE04B0A4();
  sub_1BE04A894();
  v54(v121, 1, 1, v128);
  v58 = v114;
  v114(v55, 1, 1, v116);
  sub_1BE048BE4();
  v109 = 8 * v123;
  v106 = (v56 + 7 * v123);
  v107 = *(v124 + 48);
  *v106 = 7;
  sub_1BE052354();
  v60 = v119;
  v59 = v120;
  v61 = v118;
  v119(v57, v120, v118);
  sub_1BE04B0A4();
  sub_1BE04A894();
  v62 = v121;
  v115(v121, 1, 1, v128);
  v63 = v116;
  v58(v55, 1, 1, v116);
  sub_1BE048BE4();
  v64 = v122;
  v106 = (v122 + v109);
  v107 = *(v124 + 48);
  *v106 = 8;
  sub_1BE052354();
  v60(v111, v59, v61);
  sub_1BE04B0A4();
  sub_1BE04A894();
  v65 = v62;
  v66 = v115;
  v115(v62, 1, 1, v128);
  v67 = v114;
  v114(v113, 1, 1, v63);
  sub_1BE048BE4();
  v107 = v64 + v109 + v123;
  v109 = *(v124 + 48);
  *v107 = 9;
  sub_1BE052354();
  v68 = v111;
  v69 = v119;
  v70 = v118;
  v119(v111, v120, v118);
  sub_1BE04B0A4();
  sub_1BE04A894();
  v71 = v128;
  v66(v65, 1, 1, v128);
  v67(v113, 1, 1, v116);
  sub_1BE048BE4();
  v72 = v122;
  v107 = v122 + 10 * v123;
  v109 = *(v124 + 48);
  *v107 = 10;
  sub_1BE052354();
  v69(v68, v120, v70);
  sub_1BE04B0A4();
  sub_1BE04A894();
  v73 = v115;
  v115(v65, 1, 1, v71);
  v74 = v113;
  v75 = v114;
  v114(v113, 1, 1, v116);
  sub_1BE048BE4();
  v76 = v123;
  v107 = v72 + 11 * v123;
  v77 = v124;
  v109 = *(v124 + 48);
  *v107 = 12;
  sub_1BE052354();
  v119(v111, v120, v118);
  sub_1BE04B0A4();
  sub_1BE04A894();
  v73(v121, 1, 1, v128);
  v78 = v116;
  v75(v74, 1, 1, v116);
  sub_1BE048BE4();
  v107 = v122 + 12 * v76;
  v109 = *(v77 + 48);
  *v107 = 11;
  sub_1BE052354();
  v79 = v119;
  v80 = v120;
  v81 = v118;
  v119(v111, v120, v118);
  sub_1BE04B0A4();
  sub_1BE04A894();
  v82 = v121;
  v115(v121, 1, 1, v128);
  v83 = v113;
  v114(v113, 1, 1, v78);
  v84 = v82;
  sub_1BE048BE4();
  v107 = v122 + 13 * v123;
  v109 = *(v124 + 48);
  *v107 = 13;
  sub_1BE052354();
  v85 = v111;
  v79(v111, v80, v81);
  sub_1BE04B0A4();
  sub_1BE04A894();
  v86 = v115;
  v115(v84, 1, 1, v128);
  v87 = v116;
  v88 = v114;
  v114(v83, 1, 1, v116);
  sub_1BE048BE4();
  v107 = v122 + 14 * v123;
  v89 = v124;
  v109 = *(v124 + 48);
  *v107 = 14;
  sub_1BE052354();
  v119(v85, v120, v118);
  sub_1BE04B0A4();
  sub_1BE04A894();
  v86(v121, 1, 1, v128);
  v88(v113, 1, 1, v87);
  sub_1BE048BE4();
  v109 = 16 * v123;
  v106 = (v122 + 15 * v123);
  v107 = *(v89 + 48);
  *v106 = 15;
  sub_1BE052354();
  v91 = v119;
  v90 = v120;
  v92 = v118;
  v119(v85, v120, v118);
  sub_1BE04B0A4();
  sub_1BE04A894();
  v93 = v128;
  v94 = v115;
  v115(v121, 1, 1, v128);
  v95 = v116;
  v114(v113, 1, 1, v116);
  sub_1BE048BE4();
  v106 = (v122 + v109);
  v107 = *(v124 + 48);
  *v106 = 16;
  sub_1BE052354();
  v96 = v111;
  v91(v111, v90, v92);
  sub_1BE04B0A4();
  sub_1BE04A894();
  v94(v121, 1, 1, v93);
  v97 = v95;
  v98 = v114;
  v114(v113, 1, 1, v97);
  sub_1BE048BE4();
  v99 = v122;
  v100 = (v122 + v109 + v123);
  v109 = *(v124 + 48);
  *v100 = 17;
  sub_1BE052354();
  v119(v96, v120, v118);
  sub_1BE04B0A4();
  sub_1BE04A894();
  v101 = v121;
  v115(v121, 1, 1, v128);
  v102 = v113;
  v98(v113, 1, 1, v116);
  sub_1BE048BE4();
  *(v99 + 18 * v123) = 18;
  sub_1BE052354();
  v119(v96, v120, v118);
  sub_1BE04B0A4();
  sub_1BE04A894();
  v115(v101, 1, 1, v128);
  v98(v102, 1, 1, v116);
  sub_1BE048BE4();
  v103 = sub_1BD040BE0(v108);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v103;
}

unint64_t sub_1BD040BE0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BEF8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v21 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BF00);
    v8 = sub_1BE053A04();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);
    sub_1BE048964();
    while (1)
    {
      sub_1BD0DE19C(v10, v6, &qword_1EBD3BEF8);
      v12 = *v6;
      result = sub_1BD040DC8(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = v12;
      v16 = v8[7];
      v17 = sub_1BE048C04();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v15, &v6[v9], v17);
      v18 = v8[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v8[2] = v20;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1BD040DF4(uint64_t a1, void (*a2)(uint64_t), uint64_t (*a3)(uint64_t, uint64_t))
{
  sub_1BE053D04();
  a2(a1);
  sub_1BE052524();

  v5 = sub_1BE053D64();

  return a3(a1, v5);
}

unint64_t sub_1BD040E90(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xE700000000000000;
      v8 = 0x7469736E617274;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v7 = 0xE600000000000000;
          v8 = 0x737365636361;
          break;
        case 2:
          v7 = 0xE800000000000000;
          v8 = 0x797469746E656469;
          break;
        case 3:
          v7 = 0xEB00000000746E65;
          v8 = 0x6D79615072656570;
          break;
        case 4:
          v8 = 0x746E656D796170;
          break;
        case 5:
          v8 = 0x726143656C707061;
          v7 = 0xE900000000000064;
          break;
        case 6:
          v8 = 0x6C6142656C707061;
          v7 = 0xEC00000065636E61;
          break;
        case 7:
          v7 = 0xE600000000000000;
          v8 = 0x6E6F70756F63;
          break;
        case 8:
          v7 = 0xE800000000000000;
          v8 = 0x6472614374666967;
          break;
        case 9:
          v8 = 0x676E696472616F62;
          v7 = 0xEC00000073736150;
          break;
        case 0xA:
          v8 = 0x4765646F63726162;
          v7 = 0xEE00636972656E65;
          break;
        case 0xB:
          v8 = 0x615068746C616568;
          v7 = 0xEA00000000007373;
          break;
        case 0xC:
          v8 = 0x4165646F63726162;
          v7 = 0xED00007373656363;
          break;
        case 0xD:
          v8 = 0x5065646F63726162;
          v7 = 0xEE00746E656D7961;
          break;
        case 0xE:
          v8 = 0x636954746E657665;
          v7 = 0xEB0000000074656BLL;
          break;
        case 0xF:
          v8 = 0xD00000000000001DLL;
          v7 = 0x80000001BE117DB0;
          break;
        case 0x10:
          v8 = 0xD000000000000011;
          v7 = 0x80000001BE117DD0;
          break;
        case 0x11:
          v8 = 0xD000000000000014;
          v7 = 0x80000001BE117DF0;
          break;
        case 0x12:
          v7 = 0xE500000000000000;
          v8 = 0x726568746FLL;
          break;
        default:
          break;
      }

      v9 = 0xE700000000000000;
      v10 = 0x7469736E617274;
      switch(a1)
      {
        case 1:
          v9 = 0xE600000000000000;
          if (v8 == 0x737365636361)
          {
            goto LABEL_57;
          }

          goto LABEL_58;
        case 2:
          v9 = 0xE800000000000000;
          if (v8 != 0x797469746E656469)
          {
            goto LABEL_58;
          }

          goto LABEL_57;
        case 3:
          v9 = 0xEB00000000746E65;
          if (v8 != 0x6D79615072656570)
          {
            goto LABEL_58;
          }

          goto LABEL_57;
        case 4:
          if (v8 != 0x746E656D796170)
          {
            goto LABEL_58;
          }

          goto LABEL_57;
        case 5:
          v9 = 0xE900000000000064;
          if (v8 != 0x726143656C707061)
          {
            goto LABEL_58;
          }

          goto LABEL_57;
        case 6:
          v11 = 0x6C6142656C707061;
          v12 = 1701015137;
          goto LABEL_51;
        case 7:
          v9 = 0xE600000000000000;
          if (v8 != 0x6E6F70756F63)
          {
            goto LABEL_58;
          }

          goto LABEL_57;
        case 8:
          v9 = 0xE800000000000000;
          if (v8 != 0x6472614374666967)
          {
            goto LABEL_58;
          }

          goto LABEL_57;
        case 9:
          v11 = 0x676E696472616F62;
          v12 = 1936941392;
LABEL_51:
          v9 = v12 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
          if (v8 != v11)
          {
            goto LABEL_58;
          }

          goto LABEL_57;
        case 10:
          v10 = 0x4765646F63726162;
          v9 = 0xEE00636972656E65;
          goto LABEL_56;
        case 11:
          v9 = 0xEA00000000007373;
          if (v8 != 0x615068746C616568)
          {
            goto LABEL_58;
          }

          goto LABEL_57;
        case 12:
          v9 = 0xED00007373656363;
          if (v8 != 0x4165646F63726162)
          {
            goto LABEL_58;
          }

          goto LABEL_57;
        case 13:
          v9 = 0xEE00746E656D7961;
          if (v8 != 0x5065646F63726162)
          {
            goto LABEL_58;
          }

          goto LABEL_57;
        case 14:
          v9 = 0xEB0000000074656BLL;
          if (v8 != 0x636954746E657665)
          {
            goto LABEL_58;
          }

          goto LABEL_57;
        case 15:
          v9 = 0x80000001BE117DB0;
          if (v8 != 0xD00000000000001DLL)
          {
            goto LABEL_58;
          }

          goto LABEL_57;
        case 16:
          v9 = 0x80000001BE117DD0;
          if (v8 != 0xD000000000000011)
          {
            goto LABEL_58;
          }

          goto LABEL_57;
        case 17:
          v9 = 0x80000001BE117DF0;
          if (v8 != 0xD000000000000014)
          {
            goto LABEL_58;
          }

          goto LABEL_57;
        case 18:
          v9 = 0xE500000000000000;
          if (v8 != 0x726568746FLL)
          {
            goto LABEL_58;
          }

          goto LABEL_57;
        default:
LABEL_56:
          if (v8 != v10)
          {
            goto LABEL_58;
          }

LABEL_57:
          if (v7 == v9)
          {

            return v4;
          }

LABEL_58:
          v13 = sub_1BE053B84();

          if (v13)
          {
            return v4;
          }

          v4 = (v4 + 1) & v6;
          if (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
          {
            return v4;
          }

          break;
      }
    }
  }

  return v4;
}

uint64_t sub_1BD0414EC()
{
  v1 = *v0;
  sub_1BE053D04();
  sub_1BD03F124(v1);
  sub_1BE052524();

  return sub_1BE053D64();
}

uint64_t sub_1BD04154C(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_1BD03F124(*a1);
  v5 = v4;
  if (v3 == sub_1BD03F124(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1BE053B84();
  }

  return v8 & 1;
}

uint64_t sub_1BD0415D4@<X0>(uint64_t a1@<X8>)
{
  v27 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38B88);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v26 = &v25 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD528E0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v25 - v7;
  v9 = sub_1BE04B0F4();
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v11 = sub_1BE04A874();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1BE0523D4();
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v25 = sub_1BE04A884();
  v18 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25, v19);
  sub_1BE0487C4();
  if (v28)
  {

    result = sub_1BE0487C4();
    if (!v28)
    {
      __break(1u);
      goto LABEL_15;
    }

    sub_1BE04A864();
  }

  else
  {
    sub_1BE052354();
    if (qword_1EBD36CF8 != -1)
    {
      swift_once();
    }

    v21 = __swift_project_value_buffer(v11, qword_1EBDAB400);
    (*(v12 + 16))(v15, v21, v11);
    sub_1BE04B0A4();
    sub_1BE04A894();
  }

  sub_1BE0487C4();
  if (!v28)
  {
    sub_1BE0487C4();
    sub_1BD030018();
    sub_1BE048E14();
    goto LABEL_11;
  }

  result = sub_1BE0487C4();
  if (!v28)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  sub_1BE04A864();
LABEL_11:
  v22 = 1;
  (*(v18 + 56))(v8, 0, 1, v25);
  v23 = v26;
  if (*(v1 + 32) >> 60 != 15)
  {
    sub_1BD041A38(*(v1 + 24), *(v1 + 32));
    sub_1BE048BA4();
    v22 = 0;
  }

  v24 = sub_1BE048BB4();
  (*(*(v24 - 8) + 56))(v23, v22, 1, v24);
  return sub_1BE048BD4();
}

uint64_t sub_1BD041A38(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }

    sub_1BE048964();
  }

  return sub_1BE048964();
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1BD041AA0(uint64_t a1)
{
  *(*v1 + 40) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1BD041BC0, 0, 0);
}

uint64_t sub_1BD041BC0()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 40);

  return v1(v2);
}

uint64_t sub_1BD041C28(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v6 = *(v5 + 8);

  return v6();
}

id PKLookupAppStoreApplications(void *a1, void *a2)
{
  v48 = *MEMORY[0x1E69E9840];
  v22 = a1;
  v3 = a2;
  if (v3)
  {
    v21 = v3;
    v4 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v22;
      _os_log_impl(&dword_1BD026000, v4, OS_LOG_TYPE_DEFAULT, "PKLinkedApplication: Looking up item(s) from AppleMediaServices: %@.", &buf, 0xCu);
    }

    v24 = objc_alloc_init(MEMORY[0x1E69B8658]);
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v6 = [objc_alloc(MEMORY[0x1E698B3D0]) initWithName:@"Wallet App Lookup"];
    v7 = [v22 pk_arrayByApplyingBlock:&__block_literal_global_44];
    v8 = objc_alloc(MEMORY[0x1E695DFD8]);
    v9 = [v8 initWithObjects:{*MEMORY[0x1E698B3F0], *MEMORY[0x1E698B410], *MEMORY[0x1E698B428], *MEMORY[0x1E698B420], *MEMORY[0x1E698B418], *MEMORY[0x1E698B408], 0}];
    [v24 addOperation:&__block_literal_global_319];
    *&buf = 0;
    *(&buf + 1) = &buf;
    v44 = 0x3032000000;
    v45 = __Block_byref_object_copy__6;
    v46 = __Block_byref_object_dispose__6;
    v47 = 0;
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __PKLookupAppStoreApplications_block_invoke_4;
    v38[3] = &unk_1E8012D58;
    v10 = v6;
    v39 = v10;
    v11 = v7;
    v40 = v11;
    p_buf = &buf;
    [v24 addOperation:v38];
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    obj = v11;
    v12 = [obj countByEnumeratingWithState:&v34 objects:v42 count:16];
    if (v12)
    {
      v13 = *v35;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v35 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v34 + 1) + 8 * i);
          v29[0] = MEMORY[0x1E69E9820];
          v29[1] = 3221225472;
          v29[2] = __PKLookupAppStoreApplications_block_invoke_6;
          v29[3] = &unk_1E8014380;
          v33 = &buf;
          v29[4] = v15;
          v30 = v10;
          v31 = v9;
          v32 = v5;
          [v24 addOperation:v29];
        }

        v12 = [obj countByEnumeratingWithState:&v34 objects:v42 count:16];
      }

      while (v12);
    }

    v16 = [MEMORY[0x1E695DFB0] null];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __PKLookupAppStoreApplications_block_invoke_8;
    v25[3] = &unk_1E80142E0;
    v28 = v21;
    v17 = v5;
    v26 = v17;
    v18 = v10;
    v27 = v18;
    v19 = [v24 evaluateWithInput:v16 completion:v25];

    _Block_object_dispose(&buf, 8);
    v3 = v21;
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

id _PKCreateASCLookupRequestForStoreID(void *a1, int a2)
{
  v3 = MEMORY[0x1E698B398];
  v4 = a1;
  v5 = [[v3 alloc] initWithNumberValue:v4];

  v6 = MEMORY[0x1E698B358];
  if (!a2)
  {
    v6 = MEMORY[0x1E698B350];
  }

  v7 = MEMORY[0x1E698B3C0];
  v8 = *v6;
  v9 = [v7 alloc];
  v10 = [v9 _initWithID:v5 kind:*MEMORY[0x1E698B360] context:v8 clientID:@"com.apple.Passbook" enableAppDistribution:1];

  return v10;
}

void __PKLookupAppStoreApplications_block_invoke_2(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v5 = a3;
  v6 = a4;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __PKLookupAppStoreApplications_block_invoke_3;
  v9[3] = &unk_1E8010E20;
  v10 = v5;
  v11 = v6;
  v7 = v5;
  v8 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], v9);
}

uint64_t __LookupInstalledApplications_block_invoke_4(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) addObjectsFromArray:a2];
  v3 = *(*(a1 + 48) + 16);

  return v3();
}

void __LookupInstalledApplications_block_invoke_5(uint64_t a1)
{
  v39 = *MEMORY[0x1E69E9840];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = *(a1 + 32);
  v1 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
  v23 = *MEMORY[0x1E69D4D40];
  v21 = v1;
  if (v1)
  {
    v20 = *v34;
    v2 = *MEMORY[0x1E69D4D48];
    do
    {
      v3 = 0;
      do
      {
        if (*v34 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v33 + 1) + 8 * v3);
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v5 = *(a1 + 40);
        v6 = [v5 countByEnumeratingWithState:&v29 objects:v37 count:16];
        if (v6)
        {
          v7 = v6;
          v8 = *v30;
          v22 = v3;
LABEL_8:
          v9 = 0;
          while (1)
          {
            if (*v30 != v8)
            {
              objc_enumerationMutation(v5);
            }

            v10 = *(*(&v29 + 1) + 8 * v9);
            v11 = [v10 valueForProperty:v2];
            if ([v11 isEqual:v4])
            {
              break;
            }

            v12 = [v10 valueForProperty:v23];
            v13 = [v12 isEqual:*(a1 + 48)];

            if (v13)
            {
              goto LABEL_17;
            }

            if (v7 == ++v9)
            {
              v7 = [v5 countByEnumeratingWithState:&v29 objects:v37 count:16];
              v3 = v22;
              if (v7)
              {
                goto LABEL_8;
              }

              goto LABEL_15;
            }
          }

LABEL_17:
          v14 = v10;

          v3 = v22;
          if (v14)
          {
            goto LABEL_21;
          }
        }

        else
        {
LABEL_15:
        }

        ++v3;
      }

      while (v3 != v21);
      v21 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v21);
  }

  v14 = 0;
LABEL_21:

  v15 = [v14 valueForProperty:v23];
  v16 = [v14 isPlaceholder];
  if (*(a1 + 56) && v15 && (v16 & 1) == 0 && ([*(a1 + 64) isCanceled] & 1) == 0)
  {
    v17 = [objc_alloc(MEMORY[0x1E69A8A00]) initWithBundleIdentifier:v15];
    v18 = *(a1 + 56);
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __LookupInstalledApplications_block_invoke_6;
    v25[3] = &unk_1E80143F8;
    v26 = v18;
    v28 = *(a1 + 72);
    v27 = v14;
    [v17 getCGImageForImageDescriptor:v26 completion:v25];
  }

  else
  {
    (*(*(a1 + 72) + 16))();
  }
}

void *sub_1BD042720@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

BOOL sub_1BD042774(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_1BD0427A4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_1BD0427D0@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_1BD042928@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_1BD0D7EE0(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_1BD04296C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BE052434();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1BD0429C4()
{
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    sub_1BE04EAA4();
  }

  else
  {
    sub_1BE04E7B4();
  }

  return sub_1BE04EBD4();
}

uint64_t sub_1BD042A2C()
{
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    sub_1BE04EAA4();
    sub_1BE04EBD4();
    sub_1BD0D722C();
  }

  else
  {
    sub_1BE04E7B4();
    sub_1BE04EBD4();
    sub_1BD0D8820(&qword_1EBD37148, MEMORY[0x1E697C028]);
  }

  return swift_getWitnessTable();
}

uint64_t sub_1BD042B20()
{
  if (__isPlatformVersionAtLeast(2, 26, 0, 0))
  {
    sub_1BE04FE94();

    return sub_1BE04EBD4();
  }

  else
  {
    sub_1BE04EE24();
    swift_getWitnessTable();
    sub_1BE04FC04();
    sub_1BE04EBD4();
    sub_1BE0534B4();
    swift_getWitnessTable();
    sub_1BE04EE24();
    swift_getWitnessTable();
    sub_1BE04FC04();
    return sub_1BE04EBD4();
  }
}

uint64_t sub_1BD042C84()
{
  if (__isPlatformVersionAtLeast(2, 26, 0, 0))
  {
    sub_1BE04FE94();
    sub_1BE04EBD4();
  }

  else
  {
    sub_1BE04EE24();
    swift_getWitnessTable();
    sub_1BE04FC04();
    sub_1BE04EBD4();
    sub_1BE0534B4();
    swift_getWitnessTable();
    sub_1BE04EE24();
    swift_getWitnessTable();
    sub_1BE04FC04();
    sub_1BE04EBD4();
    swift_getWitnessTable();
    swift_getWitnessTable();
  }

  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t getEnumTagSinglePayload for RedemptionDetailsLineLimit(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for RedemptionDetailsLineLimit(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 16) = v3;
  return result;
}

uint64_t sub_1BD043018(uint64_t a1, int a2)
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

uint64_t sub_1BD043038(uint64_t result, int a2, int a3)
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

uint64_t sub_1BD043194(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD385A0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1BD043250(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD385A0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BD04331C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = sub_1BE04AF64();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_1BD043394(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = sub_1BE04AF64();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_1BD043410()
{
  MEMORY[0x1BFB46050](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BD04345C()
{
  if (*(v0 + 24))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1BD0434A4()
{

  if (*(v0 + 40))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1BD0434FC()
{

  return swift_deallocObject();
}

uint64_t sub_1BD043550()
{

  return swift_deallocObject();
}

uint64_t sub_1BD043598()
{

  return swift_deallocObject();
}

uint64_t sub_1BD04365C(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD388A0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[12];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD388A8);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[14];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD388B0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[15];

  return v15(v16, a2, v14);
}

uint64_t sub_1BD0437EC(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD388A0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[12];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD388A8);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[14];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD388B0);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[15];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_1BD043990(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_1BD0439AC()
{
  v1 = type metadata accessor for AccountServiceSheet();
  v2 = v0 + ((*(*(v1 - 1) + 80) + 24) & ~*(*(v1 - 1) + 80));

  if (*(v2 + 80))
  {
    __swift_destroy_boxed_opaque_existential_0(v2 + 56);
  }

  if (*(v2 + 112))
  {
  }

  v3 = v1[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D540);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1BE04C884();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  sub_1BD0D4604(*(v2 + v1[13]), *(v2 + v1[13] + 8));
  v5 = v1[14];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38880);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_1BE04EB24();
    (*(*(v6 - 8) + 8))(v2 + v5, v6);
  }

  else
  {
  }

  v7 = v1[15];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38888);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_1BE04FD04();
    v9 = *(v8 - 8);
    if (!(*(v9 + 48))(v2 + v7, 1, v8))
    {
      (*(v9 + 8))(v2 + v7, v8);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1BD043D70(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38C08);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 3)
  {
    return v5 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BD043DE8(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38C08);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_1BD043E78(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38C38);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BD043EE0()
{

  return swift_deallocObject();
}

uint64_t sub_1BD043F38()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1BD043FA8()
{
  v1 = sub_1BE049184();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1BD044098()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD37150);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD38C30);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD38C38);
  sub_1BD0F94D8();
  swift_getOpaqueTypeConformance2();
  sub_1BD0F9764();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1BD0441B4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD39028);
  sub_1BD0FE9EC();
  swift_getOpaqueTypeMetadata2();
  sub_1BE04EBD4();
  swift_getOpaqueTypeConformance2();
  sub_1BD0FEBBC();
  swift_getWitnessTable();
  sub_1BE051754();
  sub_1BE04F9B4();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1BD044308@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC9PassKitUI27PaymentRequestViewInterface_serviceDelegate;
  swift_beginAccess();
  *a2 = *(v3 + v4);
  return swift_unknownObjectRetain();
}

uint64_t sub_1BD0443F0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BE048894();
  *a1 = result;
  return result;
}

uint64_t sub_1BD04441C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for AvailablePass(0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  v10 = type metadata accessor for Passes(0);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[7];
    goto LABEL_5;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v13 = *(a1 + a3[9]);
    if (v13 >= 0xFFFFFFFF)
    {
      LODWORD(v13) = -1;
    }

    return (v13 + 1);
  }

  else
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD43B30);
    if (*(*(v14 - 8) + 84) == a2)
    {
      v7 = v14;
      v8 = *(v14 - 8);
      v9 = a3[14];
      goto LABEL_5;
    }

    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD392D0);
    if (*(*(v15 - 8) + 84) == a2)
    {
      v7 = v15;
      v8 = *(v15 - 8);
      v9 = a3[24];
      goto LABEL_5;
    }

    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45120);
    if (*(*(v16 - 8) + 84) == a2)
    {
      v7 = v16;
      v8 = *(v16 - 8);
      v9 = a3[25];
      goto LABEL_5;
    }

    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD392D8);
    v18 = *(*(v17 - 8) + 48);
    v19 = a1 + a3[33];

    return v18(v19, a2, v17);
  }
}

uint64_t sub_1BD044694(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for AvailablePass(0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_5:
    v13 = *(v10 + 56);

    return v13(a1 + v11, a2, a2, v9);
  }

  result = type metadata accessor for Passes(0);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = *(result - 8);
    v11 = a4[7];
    goto LABEL_5;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[9]) = (a2 - 1);
    return result;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD43B30);
  if (*(*(v14 - 8) + 84) == a3)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a4[14];
    goto LABEL_5;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD392D0);
  if (*(*(v15 - 8) + 84) == a3)
  {
    v9 = v15;
    v10 = *(v15 - 8);
    v11 = a4[24];
    goto LABEL_5;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45120);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v9 = v16;
    v10 = *(v16 - 8);
    v11 = a4[25];
    goto LABEL_5;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD392D8);
  v18 = *(*(v17 - 8) + 56);
  v19 = a1 + a4[33];

  return v18(v19, a2, a2, v17);
}

uint64_t sub_1BD044910()
{
  v1 = type metadata accessor for PaymentPassHubView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = v0 + ((v2 + 16) & ~v2);
  v4 = (v3 + v1[5]);
  type metadata accessor for WrappedPass(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {

    v6 = *(type metadata accessor for PlaceholderPass(0) + 28);
    v7 = sub_1BE04CF34();
    (*(*(v7 - 8) + 8))(v4 + v6, v7);
  }

  else if (EnumCaseMultiPayload <= 1)
  {
  }

  v8 = type metadata accessor for AvailablePass(0);
  v9 = v4 + v8[6];
  v10 = type metadata accessor for IdentityCredential(0);
  v157 = *(*(v10 - 8) + 48);
  if (!v157(v9, 1, v10))
  {

    v11 = *(v10 + 20);
    v12 = sub_1BE04DA84();
    (*(*(v12 - 8) + 8))(&v9[v11], v12);
  }

  v161 = v10;
  v13 = (v4 + v8[7]);
  v158 = type metadata accessor for BalanceInfo(0);
  v156 = *(*(v158 - 8) + 48);
  if (!v156(v13, 1))
  {

    v14 = *(v158 + 28);
    v15 = sub_1BE04AF64();
    v16 = *(v15 - 8);
    if (!(*(v16 + 48))(v13 + v14, 1, v15))
    {
      (*(v16 + 8))(v13 + v14, v15);
    }
  }

  v17 = v4 + v8[10];
  v159 = type metadata accessor for PassEligibleRewardsInfo();
  v155 = *(*(v159 - 8) + 48);
  v160 = v8;
  if (!v155(v17, 1))
  {
    if (*(v17 + 2) != 1)
    {
    }

    if (*(v17 + 9) != 1)
    {
    }

    v18 = *(v159 + 28);
    v19 = sub_1BE04AF64();
    v20 = *(v19 - 8);
    v21 = *(v20 + 48);
    if (!v21(&v17[v18], 1, v19))
    {
      (*(v20 + 8))(&v17[v18], v19);
    }

    v22 = *(v159 + 32);
    if (!v21(&v17[v22], 1, v19))
    {
      (*(v20 + 8))(&v17[v22], v19);
    }
  }

  v23 = (v4 + v8[12]);
  if (*v23)
  {
  }

  v24 = (v4 + v8[13]);
  if (*v24)
  {
  }

  v25 = (v3 + v1[7]);
  v154 = *(*(v8 - 1) + 48);
  v26 = v161;
  if (!v154(v25, 1, v8))
  {
    v27 = swift_getEnumCaseMultiPayload();
    if (v27 == 2)
    {

      v28 = *(type metadata accessor for PlaceholderPass(0) + 28);
      v29 = sub_1BE04CF34();
      (*(*(v29 - 8) + 8))(v25 + v28, v29);
    }

    else if (v27 <= 1)
    {
    }

    v30 = v25 + v8[6];
    if (!v157(v30, 1, v161))
    {

      v31 = *(v161 + 20);
      v32 = sub_1BE04DA84();
      (*(*(v32 - 8) + 8))(&v30[v31], v32);
    }

    v33 = (v25 + v8[7]);
    if (!(v156)(v33, 1, v158))
    {

      v34 = *(v158 + 28);
      v35 = sub_1BE04AF64();
      v36 = *(v35 - 8);
      if (!(*(v36 + 48))(v33 + v34, 1, v35))
      {
        (*(v36 + 8))(v33 + v34, v35);
      }
    }

    v37 = v25 + v8[10];
    if (!(v155)(v37, 1, v159))
    {
      if (*(v37 + 2) != 1)
      {
      }

      if (*(v37 + 9) != 1)
      {
      }

      v38 = *(v159 + 28);
      v39 = sub_1BE04AF64();
      v40 = *(v39 - 8);
      v41 = *(v40 + 48);
      if (!v41(&v37[v38], 1, v39))
      {
        (*(v40 + 8))(&v37[v38], v39);
      }

      v42 = *(v159 + 32);
      if (!v41(&v37[v42], 1, v39))
      {
        (*(v40 + 8))(&v37[v42], v39);
      }
    }

    v43 = (v25 + v8[12]);
    if (*v43)
    {
    }

    v44 = (v25 + v8[13]);
    if (*v44)
    {
    }

    v26 = v161;
  }

  v45 = type metadata accessor for Passes(0);

  v46 = v3 + v1[8];
  if (*(v46 + 48))
  {
    sub_1BD0D455C(*v46, *(v46 + 8), *(v46 + 16));
  }

  v47 = v3 + v1[14];
  v48 = _s14PaymentSummaryVMa();
  if (!(*(*(v48 - 1) + 48))(v47, 1, v48))
  {
    v153 = v45;

    v49 = _s11TotalAmountVMa(0);
    v50 = v47 + v49[10];
    _s22SummaryItemPricingTypeOMa(0);
    v51 = swift_getEnumCaseMultiPayload();
    switch(v51)
    {
      case 2:

        break;
      case 1:
        v59 = sub_1BE04AF64();
        (*(*(v59 - 8) + 8))(v50, v59);
        break;
      case 0:
        v150 = v48;
        v52 = _s22SummaryItemPricingTypeO13RecurringItemVMa(0);
        v53 = *(v52 + 24);
        v54 = sub_1BE04AF64();
        v55 = *(v54 - 8);
        v56 = *(v55 + 48);
        if (!v56(v50 + v53, 1, v54))
        {
          (*(v55 + 8))(v50 + v53, v54);
        }

        v57 = v55;
        v58 = *(v52 + 28);
        if (!v56(v50 + v58, 1, v54))
        {
          (*(v57 + 8))(v50 + v58, v54);
        }

        v8 = v160;
        v26 = v161;
        v48 = v150;
        break;
    }

    v60 = (v47 + v49[15]);
    v61 = v49;
    v62 = type metadata accessor for PeerPaymentModel();
    if (!(*(*(v62 - 1) + 48))(v60, 1, v62))
    {
      v148 = v61;

      v63 = (v60 + v62[5]);
      v64 = swift_getEnumCaseMultiPayload();
      v151 = v48;
      if (v64 == 2)
      {

        v65 = *(type metadata accessor for PlaceholderPass(0) + 28);
        v66 = sub_1BE04CF34();
        (*(*(v66 - 8) + 8))(v63 + v65, v66);
      }

      else if (v64 <= 1)
      {
      }

      v67 = v63 + v160[6];
      if (!v157(v67, 1, v26))
      {

        v68 = *(v161 + 20);
        v69 = sub_1BE04DA84();
        (*(*(v69 - 8) + 8))(&v67[v68], v69);
      }

      v70 = (v63 + v160[7]);
      if (!(v156)(v70, 1, v158))
      {

        v71 = *(v158 + 28);
        v72 = sub_1BE04AF64();
        v73 = *(v72 - 8);
        if (!(*(v73 + 48))(v70 + v71, 1, v72))
        {
          (*(v73 + 8))(v70 + v71, v72);
        }
      }

      v74 = v63 + v160[10];
      if (!(v155)(v74, 1, v159))
      {
        if (*(v74 + 2) != 1)
        {
        }

        if (*(v74 + 9) != 1)
        {
        }

        v75 = *(v159 + 28);
        v76 = sub_1BE04AF64();
        v146 = *(v76 - 8);
        v145 = v75;
        v77 = &v74[v75];
        v78 = *(v146 + 48);
        if (!v78(v77, 1, v76))
        {
          (*(v146 + 8))(&v74[v145], v76);
        }

        v79 = *(v159 + 32);
        if (!v78(&v74[v79], 1, v76))
        {
          (*(v146 + 8))(&v74[v79], v76);
        }
      }

      v80 = (v63 + v160[12]);
      if (*v80)
      {
      }

      v81 = (v63 + v160[13]);
      if (*v81)
      {
      }

      v8 = v160;

      v82 = v60;
      v83 = (v60 + v62[6]);
      v26 = v161;
      v48 = v151;
      if (*v83 != 1)
      {

        if (v83[3])
        {
        }

        v82 = v60;
      }

      v61 = v148;
    }

    v84 = (v47 + v61[16]);
    v85 = v153;
    if (!(*(*(v153 - 8) + 48))(v84, 1, v153))
    {
      if (!v154(v84, 1, v8))
      {
        v86 = swift_getEnumCaseMultiPayload();
        if (v86 == 2)
        {

          v87 = *(type metadata accessor for PlaceholderPass(0) + 28);
          v88 = sub_1BE04CF34();
          (*(*(v88 - 8) + 8))(v84 + v87, v88);
        }

        else if (v86 <= 1)
        {
        }

        v89 = v84 + v8[6];
        if (!v157(v89, 1, v26))
        {

          v90 = v48;
          v91 = *(v161 + 20);
          v92 = sub_1BE04DA84();
          v93 = &v89[v91];
          v48 = v90;
          (*(*(v92 - 8) + 8))(v93, v92);
        }

        v152 = v48;
        v94 = (v84 + v8[7]);
        if (!(v156)(v94, 1, v158))
        {

          v95 = *(v158 + 28);
          v96 = sub_1BE04AF64();
          v97 = *(v96 - 8);
          if (!(*(v97 + 48))(v94 + v95, 1, v96))
          {
            (*(v97 + 8))(v94 + v95, v96);
          }
        }

        v98 = v84 + v160[10];
        if (!(v155)(v98, 1, v159))
        {
          if (*(v98 + 2) != 1)
          {
          }

          if (*(v98 + 9) != 1)
          {
          }

          v99 = *(v159 + 28);
          v100 = sub_1BE04AF64();
          v149 = *(v100 - 8);
          v147 = v99;
          v101 = &v98[v99];
          v102 = *(v149 + 48);
          if (!v102(v101, 1, v100))
          {
            (*(v149 + 8))(&v98[v147], v100);
          }

          v103 = *(v159 + 32);
          if (!v102(&v98[v103], 1, v100))
          {
            (*(v149 + 8))(&v98[v103], v100);
          }
        }

        v26 = v161;
        v104 = (v84 + v160[12]);
        if (*v104)
        {
        }

        v105 = (v84 + v160[13]);
        v48 = v152;
        if (*v105)
        {
        }

        v8 = v160;

        v85 = v153;
      }
    }

    if (*(v47 + v48[7] + 8))
    {
    }

    v106 = v47 + v48[9];
    if (*(v106 + 8))
    {
    }

    v107 = v47 + v48[10];
    if (*(v107 + 8))
    {
    }

    v108 = v47 + v48[11];
    v109 = type metadata accessor for DeferredPaymentRequest();
    if (!(*(*(v109 - 1) + 48))(v108, 1, v109))
    {

      v110 = v109[7];
      v111 = sub_1BE04AF64();
      v112 = *(v111 - 8);
      if (!(*(v112 + 48))(v108 + v110, 1, v111))
      {
        (*(v112 + 8))(v108 + v110, v111);
      }

      v113 = v109[8];
      v114 = sub_1BE04B3B4();
      v115 = *(v114 - 8);
      if (!(*(v115 + 48))(v108 + v113, 1, v114))
      {
        (*(v115 + 8))(v108 + v113, v114);
      }

      v8 = v160;
      v26 = v161;
    }
  }

  v116 = (v3 + v1[24]);
  v117 = type metadata accessor for PaymentPassHubView.DetailSheet(0);
  if (!(*(*(v117 - 8) + 48))(v116, 1, v117))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {

      v118 = v116 + 2;
    }

    else
    {
      if (!v154(v116, 1, v8))
      {
        v119 = swift_getEnumCaseMultiPayload();
        if (v119 == 2)
        {

          v120 = *(type metadata accessor for PlaceholderPass(0) + 28);
          v121 = sub_1BE04CF34();
          (*(*(v121 - 8) + 8))(v116 + v120, v121);
        }

        else if (v119 <= 1)
        {
        }

        v122 = v116 + v8[6];
        if (!v157(v122, 1, v26))
        {

          v123 = *(v26 + 20);
          v124 = sub_1BE04DA84();
          (*(*(v124 - 8) + 8))(&v122[v123], v124);
        }

        v125 = (v116 + v8[7]);
        if (!(v156)(v125, 1, v158))
        {

          v126 = *(v158 + 28);
          v127 = sub_1BE04AF64();
          v128 = *(v127 - 8);
          if (!(*(v128 + 48))(v125 + v126, 1, v127))
          {
            (*(v128 + 8))(v125 + v126, v127);
          }
        }

        v129 = v116 + v8[10];
        if (!(v155)(v129, 1, v159))
        {
          if (*(v129 + 2) != 1)
          {
          }

          if (*(v129 + 9) != 1)
          {
          }

          v130 = *(v159 + 28);
          v131 = sub_1BE04AF64();
          v132 = *(v131 - 8);
          v133 = *(v132 + 48);
          if (!v133(&v129[v130], 1, v131))
          {
            (*(v132 + 8))(&v129[v130], v131);
          }

          v134 = *(v159 + 32);
          v8 = v160;
          if (!v133(&v129[v134], 1, v131))
          {
            (*(v132 + 8))(&v129[v134], v131);
          }
        }

        v135 = (v116 + v8[12]);
        if (*v135)
        {
        }

        v136 = (v116 + v8[13]);
        if (*v136)
        {
        }
      }

      v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39440);

      v138 = v116 + *(v137 + 64);

      v118 = (v138 + 32);
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD392D0);

  v139 = (v3 + v1[25]);
  v140 = type metadata accessor for MultiHyperLinkDetailSheet();
  if (!(*(*(v140 - 8) + 48))(v139, 1, v140))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v141 = sub_1BE04AA64();
      (*(*(v141 - 8) + 8))(v139, v141);
    }

    else
    {
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45120);

  v142 = v1[33];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E5B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v143 = sub_1BE04E354();
    (*(*(v143 - 8) + 8))(v3 + v142, v143);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1BD0466A8()
{
  v1 = type metadata accessor for PaymentPassHubView(0);
  v2 = *(*(v1 - 1) + 80);
  v179 = *(*(v1 - 1) + 64);
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD520A0) - 8) + 80);
  v180 = (v2 + 16) & ~v2;
  v190 = v0;
  v4 = v0 + v180;
  v5 = (v0 + v180 + v1[5]);
  type metadata accessor for WrappedPass(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {

    v7 = *(type metadata accessor for PlaceholderPass(0) + 28);
    v8 = sub_1BE04CF34();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  else if (EnumCaseMultiPayload <= 1)
  {
  }

  v9 = type metadata accessor for AvailablePass(0);
  v10 = v5 + *(v9 + 24);
  v187 = type metadata accessor for IdentityCredential(0);
  v184 = *(*(v187 - 8) + 48);
  if (!v184(v10, 1))
  {

    v11 = *(v187 + 20);
    v12 = sub_1BE04DA84();
    (*(*(v12 - 8) + 8))(&v10[v11], v12);
  }

  v191 = v9;
  v13 = (v5 + *(v9 + 28));
  v188 = type metadata accessor for BalanceInfo(0);
  v183 = *(*(v188 - 8) + 48);
  if (!v183(v13, 1))
  {

    v14 = *(v188 + 28);
    v15 = sub_1BE04AF64();
    v16 = *(v15 - 8);
    if (!(*(v16 + 48))(v13 + v14, 1, v15))
    {
      (*(v16 + 8))(v13 + v14, v15);
    }
  }

  v17 = v5 + v191[10];
  v189 = type metadata accessor for PassEligibleRewardsInfo();
  v182 = *(*(v189 - 8) + 48);
  v185 = v3;
  if (!v182(v17, 1))
  {
    if (*(v17 + 2) != 1)
    {
    }

    if (*(v17 + 9) != 1)
    {
    }

    v18 = *(v189 + 28);
    v19 = sub_1BE04AF64();
    v20 = *(v19 - 8);
    v21 = *(v20 + 48);
    if (!v21(&v17[v18], 1, v19))
    {
      (*(v20 + 8))(&v17[v18], v19);
    }

    v22 = *(v189 + 32);
    v23 = v21(&v17[v22], 1, v19);
    v3 = v185;
    if (!v23)
    {
      (*(v20 + 8))(&v17[v22], v19);
    }
  }

  v24 = (v5 + v191[12]);
  if (*v24)
  {
  }

  v25 = (v5 + v191[13]);
  if (*v25)
  {
  }

  v26 = (v4 + v1[7]);
  v186 = *(*(v191 - 1) + 48);
  if (!v186(v26, 1, v191))
  {
    v27 = swift_getEnumCaseMultiPayload();
    if (v27 == 2)
    {

      v28 = *(type metadata accessor for PlaceholderPass(0) + 28);
      v29 = sub_1BE04CF34();
      (*(*(v29 - 8) + 8))(v26 + v28, v29);
    }

    else if (v27 <= 1)
    {
    }

    v30 = v26 + v191[6];
    if (!(v184)(v30, 1, v187))
    {

      v31 = *(v187 + 20);
      v32 = sub_1BE04DA84();
      (*(*(v32 - 8) + 8))(&v30[v31], v32);
    }

    v33 = (v26 + v191[7]);
    if (!(v183)(v33, 1, v188))
    {

      v34 = *(v188 + 28);
      v35 = sub_1BE04AF64();
      v36 = *(v35 - 8);
      if (!(*(v36 + 48))(v33 + v34, 1, v35))
      {
        (*(v36 + 8))(v33 + v34, v35);
      }
    }

    v37 = v26 + v191[10];
    if (!(v182)(v37, 1, v189))
    {
      if (*(v37 + 2) != 1)
      {
      }

      if (*(v37 + 9) != 1)
      {
      }

      v38 = *(v189 + 28);
      v39 = sub_1BE04AF64();
      v40 = *(v39 - 8);
      v41 = *(v40 + 48);
      if (!v41(&v37[v38], 1, v39))
      {
        (*(v40 + 8))(&v37[v38], v39);
      }

      v42 = *(v189 + 32);
      v43 = v41(&v37[v42], 1, v39);
      v3 = v185;
      if (!v43)
      {
        (*(v40 + 8))(&v37[v42], v39);
      }
    }

    v44 = (v26 + v191[12]);
    if (*v44)
    {
    }

    v45 = (v26 + v191[13]);
    if (*v45)
    {
    }
  }

  v46 = type metadata accessor for Passes(0);

  v47 = v4 + v1[8];
  if (*(v47 + 48))
  {
    sub_1BD0D455C(*v47, *(v47 + 8), *(v47 + 16));
  }

  v48 = v4 + v1[14];
  v49 = _s14PaymentSummaryVMa();
  if (!(*(*(v49 - 1) + 48))(v48, 1, v49))
  {

    v50 = _s11TotalAmountVMa(0);
    v51 = v48 + v50[10];
    _s22SummaryItemPricingTypeOMa(0);
    v52 = swift_getEnumCaseMultiPayload();
    switch(v52)
    {
      case 2:

        break;
      case 1:
        v60 = sub_1BE04AF64();
        (*(*(v60 - 8) + 8))(v51, v60);
        break;
      case 0:
        v175 = v49;
        v172 = v50;
        v169 = v46;
        v53 = _s22SummaryItemPricingTypeO13RecurringItemVMa(0);
        v54 = *(v53 + 24);
        v55 = sub_1BE04AF64();
        v56 = *(v55 - 8);
        v57 = *(v56 + 48);
        if (!v57(v51 + v54, 1, v55))
        {
          (*(v56 + 8))(v51 + v54, v55);
        }

        v58 = v56;
        v59 = *(v53 + 28);
        if (!v57(v51 + v59, 1, v55))
        {
          (*(v58 + 8))(v51 + v59, v55);
        }

        v3 = v185;
        v50 = v172;
        v49 = v175;
        v46 = v169;
        break;
    }

    v61 = (v48 + v50[15]);
    v62 = type metadata accessor for PeerPaymentModel();
    if (!(*(*(v62 - 1) + 48))(v61, 1, v62))
    {
      v173 = v50;

      v63 = (v61 + v62[5]);
      v64 = swift_getEnumCaseMultiPayload();
      v176 = v49;
      v171 = v61;
      if (v64 == 2)
      {

        v65 = *(type metadata accessor for PlaceholderPass(0) + 28);
        v66 = sub_1BE04CF34();
        (*(*(v66 - 8) + 8))(v63 + v65, v66);
      }

      else if (v64 <= 1)
      {
      }

      v67 = v63 + v191[6];
      if (!(v184)(v67, 1, v187))
      {

        v68 = *(v187 + 20);
        v69 = sub_1BE04DA84();
        (*(*(v69 - 8) + 8))(&v67[v68], v69);
      }

      v70 = (v63 + v191[7]);
      if (!(v183)(v70, 1, v188))
      {

        v71 = *(v188 + 28);
        v72 = sub_1BE04AF64();
        v73 = *(v72 - 8);
        if (!(*(v73 + 48))(v70 + v71, 1, v72))
        {
          (*(v73 + 8))(v70 + v71, v72);
        }
      }

      v74 = v63 + v191[10];
      if (!(v182)(v74, 1, v189))
      {
        if (*(v74 + 2) != 1)
        {
        }

        if (*(v74 + 9) != 1)
        {
        }

        v75 = *(v189 + 28);
        v76 = sub_1BE04AF64();
        v168 = *(v76 - 8);
        v167 = v75;
        v77 = &v74[v75];
        v78 = *(v168 + 48);
        if (!v78(v77, 1, v76))
        {
          (*(v168 + 8))(&v74[v167], v76);
        }

        v79 = *(v189 + 32);
        if (!v78(&v74[v79], 1, v76))
        {
          (*(v168 + 8))(&v74[v79], v76);
        }
      }

      v80 = (v63 + v191[12]);
      if (*v80)
      {
      }

      v81 = (v63 + v191[13]);
      v3 = v185;
      v49 = v176;
      if (*v81)
      {
      }

      v50 = v173;
      v82 = (v171 + v62[6]);
      if (*v82 != 1)
      {

        if (v82[3])
        {
        }
      }
    }

    v83 = (v48 + v50[16]);
    if (!(*(*(v46 - 8) + 48))(v83, 1, v46))
    {
      if (!v186(v83, 1, v191))
      {
        v84 = swift_getEnumCaseMultiPayload();
        if (v84 == 2)
        {

          v86 = *(type metadata accessor for PlaceholderPass(0) + 28);
          v87 = sub_1BE04CF34();
          (*(*(v87 - 8) + 8))(v83 + v86, v87);
          v85 = v187;
        }

        else
        {
          v85 = v187;
          if (v84 <= 1)
          {
          }
        }

        v88 = v83 + v191[6];
        if (!(v184)(v88, 1, v85))
        {

          v170 = v46;
          v89 = v49;
          v90 = *(v85 + 20);
          v91 = sub_1BE04DA84();
          v92 = &v88[v90];
          v49 = v89;
          v46 = v170;
          (*(*(v91 - 8) + 8))(v92, v91);
        }

        v177 = v49;
        v93 = (v83 + v191[7]);
        if (!(v183)(v93, 1, v188))
        {

          v94 = *(v188 + 28);
          v95 = sub_1BE04AF64();
          v96 = *(v95 - 8);
          if (!(*(v96 + 48))(v93 + v94, 1, v95))
          {
            (*(v96 + 8))(v93 + v94, v95);
          }
        }

        v97 = v83 + v191[10];
        if (!(v182)(v97, 1, v189))
        {
          if (*(v97 + 2) != 1)
          {
          }

          if (*(v97 + 9) != 1)
          {
          }

          v98 = *(v189 + 28);
          v99 = sub_1BE04AF64();
          v174 = *(v99 - 8);
          v178 = *(v174 + 48);
          if (!v178(&v97[v98], 1, v99))
          {
            (*(v174 + 8))(&v97[v98], v99);
          }

          v100 = *(v189 + 32);
          if (!v178(&v97[v100], 1, v99))
          {
            (*(v174 + 8))(&v97[v100], v99);
          }
        }

        v101 = (v83 + v191[12]);
        if (*v101)
        {
        }

        v102 = (v83 + v191[13]);
        v3 = v185;
        v49 = v177;
        if (*v102)
        {
        }
      }
    }

    if (*(v48 + v49[7] + 8))
    {
    }

    v103 = v48 + v49[9];
    if (*(v103 + 8))
    {
    }

    v104 = v48 + v49[10];
    if (*(v104 + 8))
    {
    }

    v105 = v48 + v49[11];
    v106 = type metadata accessor for DeferredPaymentRequest();
    if (!(*(*(v106 - 1) + 48))(v105, 1, v106))
    {

      v107 = v106[7];
      v108 = sub_1BE04AF64();
      v109 = *(v108 - 8);
      if (!(*(v109 + 48))(v105 + v107, 1, v108))
      {
        (*(v109 + 8))(v105 + v107, v108);
      }

      v110 = v106[8];
      v111 = sub_1BE04B3B4();
      v112 = *(v111 - 8);
      if (!(*(v112 + 48))(v105 + v110, 1, v111))
      {
        (*(v112 + 8))(v105 + v110, v111);
      }

      v3 = v185;
    }
  }

  v113 = v180 + v179;

  v114 = (v4 + v1[24]);
  v115 = type metadata accessor for PaymentPassHubView.DetailSheet(0);
  if (!(*(*(v115 - 8) + 48))(v114, 1, v115))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {

      v116 = v114 + 2;
    }

    else
    {
      if (!v186(v114, 1, v191))
      {
        v117 = swift_getEnumCaseMultiPayload();
        if (v117 == 2)
        {

          v119 = *(type metadata accessor for PlaceholderPass(0) + 28);
          v120 = sub_1BE04CF34();
          (*(*(v120 - 8) + 8))(v114 + v119, v120);
          v118 = v187;
        }

        else
        {
          v118 = v187;
          if (v117 <= 1)
          {
          }
        }

        v121 = v114 + v191[6];
        if (!(v184)(v121, 1, v118))
        {

          v122 = *(v118 + 20);
          v123 = sub_1BE04DA84();
          (*(*(v123 - 8) + 8))(&v121[v122], v123);
        }

        v124 = (v114 + v191[7]);
        if (!(v183)(v124, 1, v188))
        {

          v125 = *(v188 + 28);
          v126 = sub_1BE04AF64();
          v127 = *(v126 - 8);
          if (!(*(v127 + 48))(v124 + v125, 1, v126))
          {
            (*(v127 + 8))(v124 + v125, v126);
          }
        }

        v128 = v191;

        v129 = v114 + v191[10];
        if (!(v182)(v129, 1, v189))
        {
          if (*(v129 + 2) != 1)
          {
          }

          if (*(v129 + 9) != 1)
          {
          }

          v130 = *(v189 + 28);
          v131 = sub_1BE04AF64();
          v181 = *(v131 - 8);
          v132 = *(v181 + 48);
          if (!v132(&v129[v130], 1, v131))
          {
            (*(v181 + 8))(&v129[v130], v131);
          }

          v133 = *(v189 + 32);
          v128 = v191;
          if (!v132(&v129[v133], 1, v131))
          {
            (*(v181 + 8))(&v129[v133], v131);
          }
        }

        v134 = (v114 + v128[12]);
        if (*v134)
        {
        }

        v135 = (v114 + v128[13]);
        v3 = v185;
        if (*v135)
        {
        }
      }

      v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39440);

      v137 = v114 + *(v136 + 64);

      v116 = (v137 + 32);
    }
  }

  v138 = v113 + v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD392D0);

  v139 = (v4 + v1[25]);
  v140 = type metadata accessor for MultiHyperLinkDetailSheet();
  if (!(*(*(v140 - 8) + 48))(v139, 1, v140))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v141 = sub_1BE04AA64();
      (*(*(v141 - 8) + 8))(v139, v141);
    }

    else
    {
    }
  }

  v142 = v138 & ~v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45120);

  v143 = v1[33];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E5B0);
  v144 = v191;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v145 = sub_1BE04E354();
    (*(*(v145 - 8) + 8))(v4 + v143, v145);
  }

  else
  {
  }

  v146 = (v190 + v142);
  if (!v186((v190 + v142), 1, v191))
  {
    v147 = swift_getEnumCaseMultiPayload();
    if (v147 == 2)
    {

      v148 = *(type metadata accessor for PlaceholderPass(0) + 28);
      v149 = sub_1BE04CF34();
      (*(*(v149 - 8) + 8))(v146 + v148, v149);
    }

    else if (v147 <= 1)
    {
    }

    v150 = v146 + v191[6];
    if (!(v184)(v150, 1, v187))
    {

      v151 = *(v187 + 20);
      v152 = sub_1BE04DA84();
      (*(*(v152 - 8) + 8))(&v150[v151], v152);
    }

    v153 = (v146 + v191[7]);
    if (!(v183)(v153, 1, v188))
    {

      v154 = *(v188 + 28);
      v155 = sub_1BE04AF64();
      v156 = *(v155 - 8);
      if (!(*(v156 + 48))(v153 + v154, 1, v155))
      {
        (*(v156 + 8))(v153 + v154, v155);
      }
    }

    v157 = v146 + v191[10];
    if (!(v182)(v157, 1, v189))
    {
      if (*(v157 + 2) != 1)
      {
      }

      if (*(v157 + 9) != 1)
      {
      }

      v158 = *(v189 + 28);
      v159 = sub_1BE04AF64();
      v160 = *(v159 - 8);
      v161 = *(v160 + 48);
      if (!v161(&v157[v158], 1, v159))
      {
        (*(v160 + 8))(&v157[v158], v159);
      }

      v162 = *(v189 + 32);
      v163 = v161(&v157[v162], 1, v159);
      v144 = v191;
      if (!v163)
      {
        (*(v160 + 8))(&v157[v162], v159);
      }
    }

    v164 = (v146 + v144[12]);
    if (*v164)
    {
    }

    v165 = (v146 + v144[13]);
    if (*v165)
    {
    }
  }

  return swift_deallocObject();
}

uint64_t sub_1BD0488B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39538);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD048924()
{
  v1 = type metadata accessor for PaymentPassHubView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = v0 + ((v2 + 17) & ~v2);
  v4 = (v3 + v1[5]);
  type metadata accessor for WrappedPass(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {

    v6 = *(type metadata accessor for PlaceholderPass(0) + 28);
    v7 = sub_1BE04CF34();
    (*(*(v7 - 8) + 8))(v4 + v6, v7);
  }

  else if (EnumCaseMultiPayload <= 1)
  {
  }

  v8 = type metadata accessor for AvailablePass(0);
  v9 = v4 + v8[6];
  v10 = type metadata accessor for IdentityCredential(0);
  v157 = *(*(v10 - 8) + 48);
  if (!v157(v9, 1, v10))
  {

    v11 = *(v10 + 20);
    v12 = sub_1BE04DA84();
    (*(*(v12 - 8) + 8))(&v9[v11], v12);
  }

  v161 = v10;
  v13 = (v4 + v8[7]);
  v158 = type metadata accessor for BalanceInfo(0);
  v156 = *(*(v158 - 8) + 48);
  if (!v156(v13, 1))
  {

    v14 = *(v158 + 28);
    v15 = sub_1BE04AF64();
    v16 = *(v15 - 8);
    if (!(*(v16 + 48))(v13 + v14, 1, v15))
    {
      (*(v16 + 8))(v13 + v14, v15);
    }
  }

  v17 = v4 + v8[10];
  v159 = type metadata accessor for PassEligibleRewardsInfo();
  v155 = *(*(v159 - 8) + 48);
  v160 = v8;
  if (!v155(v17, 1))
  {
    if (*(v17 + 2) != 1)
    {
    }

    if (*(v17 + 9) != 1)
    {
    }

    v18 = *(v159 + 28);
    v19 = sub_1BE04AF64();
    v20 = *(v19 - 8);
    v21 = *(v20 + 48);
    if (!v21(&v17[v18], 1, v19))
    {
      (*(v20 + 8))(&v17[v18], v19);
    }

    v22 = *(v159 + 32);
    if (!v21(&v17[v22], 1, v19))
    {
      (*(v20 + 8))(&v17[v22], v19);
    }
  }

  v23 = (v4 + v8[12]);
  if (*v23)
  {
  }

  v24 = (v4 + v8[13]);
  if (*v24)
  {
  }

  v25 = (v3 + v1[7]);
  v154 = *(*(v8 - 1) + 48);
  v26 = v161;
  if (!v154(v25, 1, v8))
  {
    v27 = swift_getEnumCaseMultiPayload();
    if (v27 == 2)
    {

      v28 = *(type metadata accessor for PlaceholderPass(0) + 28);
      v29 = sub_1BE04CF34();
      (*(*(v29 - 8) + 8))(v25 + v28, v29);
    }

    else if (v27 <= 1)
    {
    }

    v30 = v25 + v8[6];
    if (!v157(v30, 1, v161))
    {

      v31 = *(v161 + 20);
      v32 = sub_1BE04DA84();
      (*(*(v32 - 8) + 8))(&v30[v31], v32);
    }

    v33 = (v25 + v8[7]);
    if (!(v156)(v33, 1, v158))
    {

      v34 = *(v158 + 28);
      v35 = sub_1BE04AF64();
      v36 = *(v35 - 8);
      if (!(*(v36 + 48))(v33 + v34, 1, v35))
      {
        (*(v36 + 8))(v33 + v34, v35);
      }
    }

    v37 = v25 + v8[10];
    if (!(v155)(v37, 1, v159))
    {
      if (*(v37 + 2) != 1)
      {
      }

      if (*(v37 + 9) != 1)
      {
      }

      v38 = *(v159 + 28);
      v39 = sub_1BE04AF64();
      v40 = *(v39 - 8);
      v41 = *(v40 + 48);
      if (!v41(&v37[v38], 1, v39))
      {
        (*(v40 + 8))(&v37[v38], v39);
      }

      v42 = *(v159 + 32);
      if (!v41(&v37[v42], 1, v39))
      {
        (*(v40 + 8))(&v37[v42], v39);
      }
    }

    v43 = (v25 + v8[12]);
    if (*v43)
    {
    }

    v44 = (v25 + v8[13]);
    if (*v44)
    {
    }

    v26 = v161;
  }

  v45 = type metadata accessor for Passes(0);

  v46 = v3 + v1[8];
  if (*(v46 + 48))
  {
    sub_1BD0D455C(*v46, *(v46 + 8), *(v46 + 16));
  }

  v47 = v3 + v1[14];
  v48 = _s14PaymentSummaryVMa();
  if (!(*(*(v48 - 1) + 48))(v47, 1, v48))
  {
    v153 = v45;

    v49 = _s11TotalAmountVMa(0);
    v50 = v47 + v49[10];
    _s22SummaryItemPricingTypeOMa(0);
    v51 = swift_getEnumCaseMultiPayload();
    switch(v51)
    {
      case 2:

        break;
      case 1:
        v59 = sub_1BE04AF64();
        (*(*(v59 - 8) + 8))(v50, v59);
        break;
      case 0:
        v150 = v48;
        v52 = _s22SummaryItemPricingTypeO13RecurringItemVMa(0);
        v53 = *(v52 + 24);
        v54 = sub_1BE04AF64();
        v55 = *(v54 - 8);
        v56 = *(v55 + 48);
        if (!v56(v50 + v53, 1, v54))
        {
          (*(v55 + 8))(v50 + v53, v54);
        }

        v57 = v55;
        v58 = *(v52 + 28);
        if (!v56(v50 + v58, 1, v54))
        {
          (*(v57 + 8))(v50 + v58, v54);
        }

        v8 = v160;
        v26 = v161;
        v48 = v150;
        break;
    }

    v60 = (v47 + v49[15]);
    v61 = v49;
    v62 = type metadata accessor for PeerPaymentModel();
    if (!(*(*(v62 - 1) + 48))(v60, 1, v62))
    {
      v148 = v61;

      v63 = (v60 + v62[5]);
      v64 = swift_getEnumCaseMultiPayload();
      v151 = v48;
      if (v64 == 2)
      {

        v65 = *(type metadata accessor for PlaceholderPass(0) + 28);
        v66 = sub_1BE04CF34();
        (*(*(v66 - 8) + 8))(v63 + v65, v66);
      }

      else if (v64 <= 1)
      {
      }

      v67 = v63 + v160[6];
      if (!v157(v67, 1, v26))
      {

        v68 = *(v161 + 20);
        v69 = sub_1BE04DA84();
        (*(*(v69 - 8) + 8))(&v67[v68], v69);
      }

      v70 = (v63 + v160[7]);
      if (!(v156)(v70, 1, v158))
      {

        v71 = *(v158 + 28);
        v72 = sub_1BE04AF64();
        v73 = *(v72 - 8);
        if (!(*(v73 + 48))(v70 + v71, 1, v72))
        {
          (*(v73 + 8))(v70 + v71, v72);
        }
      }

      v74 = v63 + v160[10];
      if (!(v155)(v74, 1, v159))
      {
        if (*(v74 + 2) != 1)
        {
        }

        if (*(v74 + 9) != 1)
        {
        }

        v75 = *(v159 + 28);
        v76 = sub_1BE04AF64();
        v146 = *(v76 - 8);
        v145 = v75;
        v77 = &v74[v75];
        v78 = *(v146 + 48);
        if (!v78(v77, 1, v76))
        {
          (*(v146 + 8))(&v74[v145], v76);
        }

        v79 = *(v159 + 32);
        if (!v78(&v74[v79], 1, v76))
        {
          (*(v146 + 8))(&v74[v79], v76);
        }
      }

      v80 = (v63 + v160[12]);
      if (*v80)
      {
      }

      v81 = (v63 + v160[13]);
      if (*v81)
      {
      }

      v8 = v160;

      v82 = v60;
      v83 = (v60 + v62[6]);
      v26 = v161;
      v48 = v151;
      if (*v83 != 1)
      {

        if (v83[3])
        {
        }

        v82 = v60;
      }

      v61 = v148;
    }

    v84 = (v47 + v61[16]);
    v85 = v153;
    if (!(*(*(v153 - 8) + 48))(v84, 1, v153))
    {
      if (!v154(v84, 1, v8))
      {
        v86 = swift_getEnumCaseMultiPayload();
        if (v86 == 2)
        {

          v87 = *(type metadata accessor for PlaceholderPass(0) + 28);
          v88 = sub_1BE04CF34();
          (*(*(v88 - 8) + 8))(v84 + v87, v88);
        }

        else if (v86 <= 1)
        {
        }

        v89 = v84 + v8[6];
        if (!v157(v89, 1, v26))
        {

          v90 = v48;
          v91 = *(v161 + 20);
          v92 = sub_1BE04DA84();
          v93 = &v89[v91];
          v48 = v90;
          (*(*(v92 - 8) + 8))(v93, v92);
        }

        v152 = v48;
        v94 = (v84 + v8[7]);
        if (!(v156)(v94, 1, v158))
        {

          v95 = *(v158 + 28);
          v96 = sub_1BE04AF64();
          v97 = *(v96 - 8);
          if (!(*(v97 + 48))(v94 + v95, 1, v96))
          {
            (*(v97 + 8))(v94 + v95, v96);
          }
        }

        v98 = v84 + v160[10];
        if (!(v155)(v98, 1, v159))
        {
          if (*(v98 + 2) != 1)
          {
          }

          if (*(v98 + 9) != 1)
          {
          }

          v99 = *(v159 + 28);
          v100 = sub_1BE04AF64();
          v149 = *(v100 - 8);
          v147 = v99;
          v101 = &v98[v99];
          v102 = *(v149 + 48);
          if (!v102(v101, 1, v100))
          {
            (*(v149 + 8))(&v98[v147], v100);
          }

          v103 = *(v159 + 32);
          if (!v102(&v98[v103], 1, v100))
          {
            (*(v149 + 8))(&v98[v103], v100);
          }
        }

        v26 = v161;
        v104 = (v84 + v160[12]);
        if (*v104)
        {
        }

        v105 = (v84 + v160[13]);
        v48 = v152;
        if (*v105)
        {
        }

        v8 = v160;

        v85 = v153;
      }
    }

    if (*(v47 + v48[7] + 8))
    {
    }

    v106 = v47 + v48[9];
    if (*(v106 + 8))
    {
    }

    v107 = v47 + v48[10];
    if (*(v107 + 8))
    {
    }

    v108 = v47 + v48[11];
    v109 = type metadata accessor for DeferredPaymentRequest();
    if (!(*(*(v109 - 1) + 48))(v108, 1, v109))
    {

      v110 = v109[7];
      v111 = sub_1BE04AF64();
      v112 = *(v111 - 8);
      if (!(*(v112 + 48))(v108 + v110, 1, v111))
      {
        (*(v112 + 8))(v108 + v110, v111);
      }

      v113 = v109[8];
      v114 = sub_1BE04B3B4();
      v115 = *(v114 - 8);
      if (!(*(v115 + 48))(v108 + v113, 1, v114))
      {
        (*(v115 + 8))(v108 + v113, v114);
      }

      v8 = v160;
      v26 = v161;
    }
  }

  v116 = (v3 + v1[24]);
  v117 = type metadata accessor for PaymentPassHubView.DetailSheet(0);
  if (!(*(*(v117 - 8) + 48))(v116, 1, v117))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {

      v118 = v116 + 2;
    }

    else
    {
      if (!v154(v116, 1, v8))
      {
        v119 = swift_getEnumCaseMultiPayload();
        if (v119 == 2)
        {

          v120 = *(type metadata accessor for PlaceholderPass(0) + 28);
          v121 = sub_1BE04CF34();
          (*(*(v121 - 8) + 8))(v116 + v120, v121);
        }

        else if (v119 <= 1)
        {
        }

        v122 = v116 + v8[6];
        if (!v157(v122, 1, v26))
        {

          v123 = *(v26 + 20);
          v124 = sub_1BE04DA84();
          (*(*(v124 - 8) + 8))(&v122[v123], v124);
        }

        v125 = (v116 + v8[7]);
        if (!(v156)(v125, 1, v158))
        {

          v126 = *(v158 + 28);
          v127 = sub_1BE04AF64();
          v128 = *(v127 - 8);
          if (!(*(v128 + 48))(v125 + v126, 1, v127))
          {
            (*(v128 + 8))(v125 + v126, v127);
          }
        }

        v129 = v116 + v8[10];
        if (!(v155)(v129, 1, v159))
        {
          if (*(v129 + 2) != 1)
          {
          }

          if (*(v129 + 9) != 1)
          {
          }

          v130 = *(v159 + 28);
          v131 = sub_1BE04AF64();
          v132 = *(v131 - 8);
          v133 = *(v132 + 48);
          if (!v133(&v129[v130], 1, v131))
          {
            (*(v132 + 8))(&v129[v130], v131);
          }

          v134 = *(v159 + 32);
          v8 = v160;
          if (!v133(&v129[v134], 1, v131))
          {
            (*(v132 + 8))(&v129[v134], v131);
          }
        }

        v135 = (v116 + v8[12]);
        if (*v135)
        {
        }

        v136 = (v116 + v8[13]);
        if (*v136)
        {
        }
      }

      v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39440);

      v138 = v116 + *(v137 + 64);

      v118 = (v138 + 32);
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD392D0);

  v139 = (v3 + v1[25]);
  v140 = type metadata accessor for MultiHyperLinkDetailSheet();
  if (!(*(*(v140 - 8) + 48))(v139, 1, v140))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v141 = sub_1BE04AA64();
      (*(*(v141 - 8) + 8))(v139, v141);
    }

    else
    {
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45120);

  v142 = v1[33];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E5B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v143 = sub_1BE04E354();
    (*(*(v143 - 8) + 8))(v3 + v142, v143);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1BD04A6B0()
{
  v1 = v0;
  v2 = type metadata accessor for PaymentPassHubView(0);
  v3 = *(*(v2 - 1) + 80);
  v161 = *(*(v2 - 1) + 64);
  v160 = (v3 + 17) & ~v3;
  v4 = v0 + v160;
  v5 = (v0 + v160 + v2[5]);
  type metadata accessor for WrappedPass(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {

    v7 = *(type metadata accessor for PlaceholderPass(0) + 28);
    v8 = sub_1BE04CF34();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  else if (EnumCaseMultiPayload <= 1)
  {
  }

  v9 = type metadata accessor for AvailablePass(0);
  v10 = v5 + v9[6];
  v164 = type metadata accessor for IdentityCredential(0);
  v159 = *(*(v164 - 8) + 48);
  if (!v159(v10, 1))
  {

    v11 = *(v164 + 20);
    v12 = sub_1BE04DA84();
    (*(*(v12 - 8) + 8))(&v10[v11], v12);
  }

  v13 = (v5 + v9[7]);
  v166 = type metadata accessor for BalanceInfo(0);
  v158 = *(*(v166 - 8) + 48);
  if (!v158(v13, 1))
  {

    v14 = *(v166 + 28);
    v15 = sub_1BE04AF64();
    v16 = *(v15 - 8);
    if (!(*(v16 + 48))(v13 + v14, 1, v15))
    {
      (*(v16 + 8))(v13 + v14, v15);
    }
  }

  v17 = v5 + v9[10];
  v163 = type metadata accessor for PassEligibleRewardsInfo();
  v157 = *(*(v163 - 8) + 48);
  v165 = v9;
  v162 = v1;
  if (!v157(v17, 1))
  {
    if (*(v17 + 2) != 1)
    {
    }

    if (*(v17 + 9) != 1)
    {
    }

    v18 = *(v163 + 28);
    v19 = sub_1BE04AF64();
    v20 = *(v19 - 8);
    v21 = *(v20 + 48);
    if (!v21(&v17[v18], 1, v19))
    {
      (*(v20 + 8))(&v17[v18], v19);
    }

    v22 = *(v163 + 32);
    if (!v21(&v17[v22], 1, v19))
    {
      (*(v20 + 8))(&v17[v22], v19);
    }
  }

  v23 = (v5 + v9[12]);
  if (*v23)
  {
  }

  v24 = (v5 + v9[13]);
  if (*v24)
  {
  }

  v25 = (v4 + v2[7]);
  v156 = *(*(v9 - 1) + 48);
  if (!v156(v25, 1, v9))
  {
    v26 = swift_getEnumCaseMultiPayload();
    if (v26 == 2)
    {

      v27 = *(type metadata accessor for PlaceholderPass(0) + 28);
      v28 = sub_1BE04CF34();
      (*(*(v28 - 8) + 8))(v25 + v27, v28);
    }

    else if (v26 <= 1)
    {
    }

    v29 = v25 + v9[6];
    if (!(v159)(v29, 1, v164))
    {

      v30 = *(v164 + 20);
      v31 = sub_1BE04DA84();
      (*(*(v31 - 8) + 8))(&v29[v30], v31);
    }

    v32 = (v25 + v9[7]);
    if (!(v158)(v32, 1, v166))
    {

      v33 = *(v166 + 28);
      v34 = sub_1BE04AF64();
      v35 = *(v34 - 8);
      if (!(*(v35 + 48))(v32 + v33, 1, v34))
      {
        (*(v35 + 8))(v32 + v33, v34);
      }
    }

    v36 = v25 + v9[10];
    if (!(v157)(v36, 1, v163))
    {
      if (*(v36 + 2) != 1)
      {
      }

      if (*(v36 + 9) != 1)
      {
      }

      v37 = *(v163 + 28);
      v38 = sub_1BE04AF64();
      v39 = *(v38 - 8);
      v40 = *(v39 + 48);
      if (!v40(&v36[v37], 1, v38))
      {
        (*(v39 + 8))(&v36[v37], v38);
      }

      v41 = *(v163 + 32);
      if (!v40(&v36[v41], 1, v38))
      {
        (*(v39 + 8))(&v36[v41], v38);
      }
    }

    v42 = (v25 + v9[12]);
    if (*v42)
    {
    }

    v43 = (v25 + v9[13]);
    if (*v43)
    {
    }
  }

  v44 = type metadata accessor for Passes(0);

  v45 = v4 + v2[8];
  if (*(v45 + 48))
  {
    sub_1BD0D455C(*v45, *(v45 + 8), *(v45 + 16));
  }

  v46 = v4 + v2[14];
  v47 = _s14PaymentSummaryVMa();
  if (!(*(*(v47 - 1) + 48))(v46, 1, v47))
  {

    v48 = _s11TotalAmountVMa(0);
    v49 = v46 + v48[10];
    _s22SummaryItemPricingTypeOMa(0);
    v50 = swift_getEnumCaseMultiPayload();
    switch(v50)
    {
      case 2:

        break;
      case 1:
        v58 = sub_1BE04AF64();
        (*(*(v58 - 8) + 8))(v49, v58);
        break;
      case 0:
        v150 = v44;
        v153 = v47;
        v51 = _s22SummaryItemPricingTypeO13RecurringItemVMa(0);
        v52 = *(v51 + 24);
        v53 = sub_1BE04AF64();
        v54 = *(v53 - 8);
        v55 = *(v54 + 48);
        if (!v55(v49 + v52, 1, v53))
        {
          (*(v54 + 8))(v49 + v52, v53);
        }

        v56 = v54;
        v57 = *(v51 + 28);
        if (!v55(v49 + v57, 1, v53))
        {
          (*(v56 + 8))(v49 + v57, v53);
        }

        v9 = v165;
        v44 = v150;
        v47 = v153;
        break;
    }

    v59 = (v46 + v48[15]);
    v60 = v48;
    v61 = type metadata accessor for PeerPaymentModel();
    if ((*(*(v61 - 1) + 48))(v59, 1, v61))
    {
      goto LABEL_91;
    }

    v148 = v60;
    v151 = v44;

    v62 = (v59 + v61[5]);
    v63 = swift_getEnumCaseMultiPayload();
    v154 = v47;
    if (v63 == 2)
    {

      v65 = *(type metadata accessor for PlaceholderPass(0) + 28);
      v66 = sub_1BE04CF34();
      (*(*(v66 - 8) + 8))(v62 + v65, v66);
    }

    else
    {
      if (v63 != 1)
      {
        v64 = v164;
        if (!v63)
        {

          v64 = v164;
        }

        goto LABEL_68;
      }
    }

    v64 = v164;
LABEL_68:
    v67 = v62 + v165[6];
    if (!(v159)(v67, 1, v64))
    {

      v68 = *(v164 + 20);
      v69 = sub_1BE04DA84();
      (*(*(v69 - 8) + 8))(&v67[v68], v69);
    }

    v70 = (v62 + v165[7]);
    if (!(v158)(v70, 1, v166))
    {

      v71 = *(v166 + 28);
      v72 = sub_1BE04AF64();
      v73 = *(v72 - 8);
      if (!(*(v73 + 48))(v70 + v71, 1, v72))
      {
        (*(v73 + 8))(v70 + v71, v72);
      }
    }

    v74 = v62 + v165[10];
    if (!(v157)(v74, 1, v163))
    {
      if (*(v74 + 2) != 1)
      {
      }

      if (*(v74 + 9) != 1)
      {
      }

      v75 = *(v163 + 28);
      v76 = sub_1BE04AF64();
      v146 = *(v76 - 8);
      v145 = v75;
      v77 = &v74[v75];
      v78 = *(v146 + 48);
      if (!v78(v77, 1, v76))
      {
        (*(v146 + 8))(&v74[v145], v76);
      }

      v79 = *(v163 + 32);
      if (!v78(&v74[v79], 1, v76))
      {
        (*(v146 + 8))(&v74[v79], v76);
      }
    }

    v80 = (v62 + v165[12]);
    if (*v80)
    {
    }

    v81 = (v62 + v165[13]);
    v47 = v154;
    if (*v81)
    {
    }

    v9 = v165;

    v82 = v59;
    v83 = (v59 + v61[6]);
    v44 = v151;
    if (*v83 != 1)
    {

      if (v83[3])
      {
      }

      v82 = v59;
    }

    v60 = v148;
LABEL_91:
    v84 = (v46 + v60[16]);
    v1 = v162;
    if (!(*(*(v44 - 8) + 48))(v84, 1, v44))
    {
      if (!v156(v84, 1, v9))
      {
        v85 = swift_getEnumCaseMultiPayload();
        v152 = v44;
        if (v85 == 2)
        {

          v86 = *(type metadata accessor for PlaceholderPass(0) + 28);
          v87 = sub_1BE04CF34();
          (*(*(v87 - 8) + 8))(v84 + v86, v87);
        }

        else if (v85 <= 1)
        {
        }

        v88 = v84 + v9[6];
        if (!(v159)(v88, 1, v164))
        {

          v89 = v47;
          v90 = *(v164 + 20);
          v91 = sub_1BE04DA84();
          v92 = &v88[v90];
          v47 = v89;
          v1 = v162;
          (*(*(v91 - 8) + 8))(v92, v91);
        }

        v155 = v47;
        v93 = (v84 + v9[7]);
        if (!(v158)(v93, 1, v166))
        {

          v94 = *(v166 + 28);
          v95 = sub_1BE04AF64();
          v96 = *(v95 - 8);
          if (!(*(v96 + 48))(v93 + v94, 1, v95))
          {
            (*(v96 + 8))(v93 + v94, v95);
          }
        }

        v97 = v84 + v165[10];
        if (!(v157)(v97, 1, v163))
        {
          if (*(v97 + 2) != 1)
          {
          }

          if (*(v97 + 9) != 1)
          {
          }

          v98 = *(v163 + 28);
          v99 = sub_1BE04AF64();
          v149 = *(v99 - 8);
          v147 = v98;
          v100 = &v97[v98];
          v101 = *(v149 + 48);
          if (!v101(v100, 1, v99))
          {
            (*(v149 + 8))(&v97[v147], v99);
          }

          v102 = *(v163 + 32);
          if (!v101(&v97[v102], 1, v99))
          {
            (*(v149 + 8))(&v97[v102], v99);
          }
        }

        v103 = (v84 + v165[12]);
        if (*v103)
        {
        }

        v104 = (v84 + v165[13]);
        v47 = v155;
        if (*v104)
        {
        }

        v9 = v165;

        v44 = v152;
      }
    }

    if (*(v46 + v47[7] + 8))
    {
    }

    v105 = v46 + v47[9];
    if (*(v105 + 8))
    {
    }

    v106 = v46 + v47[10];
    if (*(v106 + 8))
    {
    }

    v107 = v46 + v47[11];
    v108 = type metadata accessor for DeferredPaymentRequest();
    if (!(*(*(v108 - 1) + 48))(v107, 1, v108))
    {

      v109 = v108[7];
      v110 = sub_1BE04AF64();
      v111 = *(v110 - 8);
      if (!(*(v111 + 48))(v107 + v109, 1, v110))
      {
        (*(v111 + 8))(v107 + v109, v110);
      }

      v112 = v108[8];
      v113 = sub_1BE04B3B4();
      v114 = *(v113 - 8);
      if (!(*(v114 + 48))(v107 + v112, 1, v113))
      {
        (*(v114 + 8))(v107 + v112, v113);
      }

      v9 = v165;
      v1 = v162;
    }
  }

  v115 = (v4 + v2[24]);
  v116 = type metadata accessor for PaymentPassHubView.DetailSheet(0);
  if (!(*(*(v116 - 8) + 48))(v115, 1, v116))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {

      v117 = v115 + 2;
    }

    else
    {
      if (!v156(v115, 1, v9))
      {
        v118 = swift_getEnumCaseMultiPayload();
        if (v118 == 2)
        {

          v120 = *(type metadata accessor for PlaceholderPass(0) + 28);
          v121 = sub_1BE04CF34();
          (*(*(v121 - 8) + 8))(v115 + v120, v121);
          v119 = v166;
        }

        else
        {
          v119 = v166;
          if (v118 <= 1)
          {
          }
        }

        v122 = v115 + v9[6];
        if (!(v159)(v122, 1, v164))
        {

          v123 = *(v164 + 20);
          v124 = sub_1BE04DA84();
          (*(*(v124 - 8) + 8))(&v122[v123], v124);
        }

        v125 = (v115 + v9[7]);
        if (!(v158)(v125, 1, v119))
        {

          v126 = *(v119 + 28);
          v127 = sub_1BE04AF64();
          v128 = *(v127 - 8);
          if (!(*(v128 + 48))(v125 + v126, 1, v127))
          {
            (*(v128 + 8))(v125 + v126, v127);
          }
        }

        v129 = v115 + v9[10];
        if (!(v157)(v129, 1, v163))
        {
          if (*(v129 + 2) != 1)
          {
          }

          if (*(v129 + 9) != 1)
          {
          }

          v130 = *(v163 + 28);
          v131 = sub_1BE04AF64();
          v132 = *(v131 - 8);
          v133 = *(v132 + 48);
          if (!v133(&v129[v130], 1, v131))
          {
            (*(v132 + 8))(&v129[v130], v131);
          }

          v134 = *(v163 + 32);
          v1 = v162;
          v9 = v165;
          if (!v133(&v129[v134], 1, v131))
          {
            (*(v132 + 8))(&v129[v134], v131);
          }
        }

        v135 = (v115 + v9[12]);
        if (*v135)
        {
        }

        v136 = (v115 + v9[13]);
        if (*v136)
        {
        }
      }

      v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39440);

      v138 = v115 + *(v137 + 64);

      v117 = (v138 + 32);
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD392D0);

  v139 = (v4 + v2[25]);
  v140 = type metadata accessor for MultiHyperLinkDetailSheet();
  if (!(*(*(v140 - 8) + 48))(v139, 1, v140))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v141 = sub_1BE04AA64();
      (*(*(v141 - 8) + 8))(v139, v141);
    }

    else
    {
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45120);

  v142 = v2[33];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E5B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v143 = sub_1BE04E354();
    (*(*(v143 - 8) + 8))(v4 + v142, v143);
  }

  else
  {
  }

  return swift_deallocObject();
}