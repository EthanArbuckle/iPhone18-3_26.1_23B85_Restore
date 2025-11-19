void VSAuthenticationViewControllerViewDidLoad(void *a1)
{
  v1 = [a1 viewModel];
  [v1 setViewState:1];
}

void VSAuthenticationViewControllerViewWillAppear(void *a1)
{
  v1 = [a1 viewModel];
  [v1 setViewState:2];
}

void VSAuthenticationViewControllerViewDidAppear(void *a1)
{
  v1 = [a1 viewModel];
  [v1 setViewState:3];
}

void VSAuthenticationViewControllerViewWillDisappear(void *a1)
{
  v1 = [a1 viewModel];
  [v1 setViewState:4];
}

void VSAuthenticationViewControllerViewDidDisappear(void *a1)
{
  v3 = a1;
  v1 = [v3 viewModel];
  [v1 setViewState:5];

  if (([v3 isBeingDismissed] & 1) != 0 || objc_msgSend(v3, "isMovingFromParentViewController"))
  {
    v2 = [v3 viewModel];
    [v2 setViewState:6];
  }
}

void sub_270DD7A68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_270DD91EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, id location, char a36)
{
  objc_destroyWeak((v36 + 88));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a36, 8);
  _Block_object_dispose((v37 - 232), 8);
  _Block_object_dispose((v37 - 184), 8);
  _Block_object_dispose((v37 - 136), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_270DDA3D8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_270DDA9C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, id a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, id a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, id a54)
{
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose(&a32, 8);
  objc_destroyWeak(&a43);
  objc_destroyWeak(&a48);
  objc_destroyWeak(&a54);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void OUTLINED_FUNCTION_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

id VSDestinationError(uint64_t a1, void *a2)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v9 = *MEMORY[0x277CCA470];
    v10[0] = v3;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  }

  else
  {
    v5 = 0;
  }

  v6 = [MEMORY[0x277CCA9B8] errorWithDomain:@"VSDestinationErrorDomain" code:a1 userInfo:v5];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

id VSIconForBundleWithIdentifier(void *a1)
{
  v1 = MEMORY[0x277D759A0];
  v2 = a1;
  v3 = [v1 mainScreen];
  [v3 scale];
  v5 = v4;

  v6 = [MEMORY[0x277D755B8] _applicationIconImageForBundleIdentifier:v2 format:2 scale:v5];

  return v6;
}

void sub_270DDD4F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location, id a18)
{
  objc_destroyWeak((v18 + 56));
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a18);
  _Unwind_Resume(a1);
}

void sub_270DDD6A0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v1 + 40));
  _Unwind_Resume(a1);
}

void sub_270DE07EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_270DE0EB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_270DE17AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, id location, id a32)
{
  objc_destroyWeak(&location);
  objc_destroyWeak(&a32);
  _Unwind_Resume(a1);
}

void sub_270DE2B38(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 48));
  _Unwind_Resume(a1);
}

void sub_270DE3DA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v9 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void commonInit(void *a1)
{
  v1 = a1;
  VSRequireMainThread();
  [v1 _updateTitleTextColor];
}

id VSAlertForError(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v3 localizedDescription];
  v6 = [v3 localizedRecoverySuggestion];
  v7 = [MEMORY[0x277D75110] alertControllerWithTitle:v5 message:v6 preferredStyle:1];
  v8 = [v3 localizedRecoveryOptions];
  if ([v8 count])
  {
    v9 = [v3 recoveryAttempter];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __VSAlertForError_block_invoke;
    v22[3] = &unk_279E19990;
    v10 = &v23;
    v11 = v3;
    v26 = v4;
    v23 = v11;
    v24 = v9;
    v25 = v7;
    v12 = v9;
    v13 = v4;
    [v8 enumerateObjectsWithOptions:2 usingBlock:v22];

    v14 = v26;
  }

  else
  {
    v15 = [MEMORY[0x277CCA8D8] vs_frameworkBundle];
    v13 = [v15 localizedStringForKey:@"ERROR_DISMISS_BUTTON_TITLE" value:0 table:0];

    v16 = MEMORY[0x277D750F8];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __VSAlertForError_block_invoke_3;
    v20[3] = &unk_279E199B8;
    v10 = &v21;
    v21 = v4;
    v12 = v4;
    v14 = [v16 actionWithTitle:v13 style:0 handler:v20];
    [v7 addAction:v14];
  }

  v17 = [v7 actions];
  v18 = [v17 lastObject];
  [v7 setPreferredAction:v18];

  return v7;
}

void __VSAlertForError_block_invoke(id *a1, void *a2, uint64_t a3)
{
  v5 = a1[4];
  v6 = a2;
  v7 = [v5 userInfo];
  v8 = [v7 objectForKey:*MEMORY[0x277CE2470]];

  if ([v8 containsIndex:a3])
  {
    v9 = 2;
  }

  else
  {
    v9 = 0;
  }

  v10 = MEMORY[0x277D750F8];
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __VSAlertForError_block_invoke_2;
  v15 = &unk_279E19968;
  v18 = a1[7];
  v16 = a1[5];
  v17 = a1[4];
  v19 = a3;
  v11 = [v10 actionWithTitle:v6 style:v9 handler:&v12];

  [a1[6] addAction:{v11, v12, v13, v14, v15}];
}

void __VSAlertForError_block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x277CE2240] sharedDelegate];
  [*(a1 + 32) attemptRecoveryFromError:*(a1 + 40) optionIndex:*(a1 + 56) delegate:v2 didRecoverSelector:sel_didPresentErrorWithRecovery_contextInfo_ contextInfo:{objc_msgSend(*(a1 + 48), "copy")}];
}

uint64_t __VSAlertForError_block_invoke_3(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

void sub_270DE62F4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v4 - 72));
  _Unwind_Resume(a1);
}

void sub_270DE7244(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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

void sub_270DE8EE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void commonInit_0(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a1[12];
  a1[12] = v7;
  v10 = v7;
  v11 = a4;
  v16 = a1;

  v12 = v16[10];
  v16[10] = v8;
  v13 = v8;

  v14 = [v11 copy];
  v15 = v16[3];
  v16[3] = v14;

  setDisplayNameIfAvailable(v16);
}

void setDisplayNameIfAvailable(void *a1)
{
  v2 = a1;
  v1 = VSDisplayNameForBundleWithIdentifier();
  if (v1)
  {
    objc_storeStrong(v2 + 5, v1);
  }
}

void sub_270DECD60(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_270DEF668(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_270DEFE9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_270DF08CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location, char a23)
{
  objc_destroyWeak((v23 + 48));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a23, 8);
  _Unwind_Resume(a1);
}

void sub_270DF0C64(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_270DF184C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, id location)
{
  objc_destroyWeak(&a27);
  objc_destroyWeak(&a32);
  objc_destroyWeak(&a37);
  objc_destroyWeak(&a42);
  objc_destroyWeak(&a47);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_270DF2888(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location, char a25)
{
  objc_destroyWeak((v26 + 48));
  objc_destroyWeak((v25 + 56));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a25, 8);
  _Unwind_Resume(a1);
}

void sub_270DF6B90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak((v17 - 48));
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void commonInit_1(id *a1, void *a2, char a3, double a4, double a5)
{
  objc_storeStrong(a1 + 34, a2);
  v10 = a2;
  v11 = a1;
  *(v11 + 256) = a3;
  *(v11 + 37) = a4;
  *(v11 + 38) = a5;
  v12 = MEMORY[0x277CCABD8];
  v13 = objc_opt_class();
  v16 = NSStringFromClass(v13);
  v14 = [v12 queueWithName:v16];
  v15 = v11[33];
  v11[33] = v14;
}

void sub_270DFB6C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location)
{
  objc_destroyWeak((v24 + 56));
  objc_destroyWeak((v24 + 48));
  objc_destroyWeak(&location);
  objc_destroyWeak((v25 - 160));
  _Unwind_Resume(a1);
}

void sub_270DFB964(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 80));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_270E007C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void commonInit_2(void *a1)
{
  v1 = MEMORY[0x277CCABD8];
  v2 = a1;
  v3 = objc_alloc_init(v1);
  v4 = *(v2 + 37);
  *(v2 + 37) = v3;

  [*(v2 + 37) setName:@"VSIdentityProviderFetchOperation"];
  v5 = objc_alloc_init(MEMORY[0x277CE2298]);
  v6 = *(v2 + 36);
  *(v2 + 36) = v5;
}

void sub_270E010B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_270E02494(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 176), 8);
  _Block_object_dispose((v1 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_270E0295C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_270E03094(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_270E032A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void VSExportCompressionToContext(void *a1)
{
  v29[3] = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [MEMORY[0x277CCAE68] valueTransformerForName:@"VSJavaScriptDataValueTransformer"];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CE22C0]) initWithValueTransformer:v2];
    v4 = [MEMORY[0x277CCAE68] valueTransformerForName:*MEMORY[0x277CE2448]];
    if (v4)
    {
      v5 = objc_alloc_init(MEMORY[0x277CE2220]);
      v29[0] = v2;
      v29[1] = v4;
      v29[2] = v3;
      v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:3];
      [v5 setValueTransformers:v6];

      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v23 = v4;
      v27[2] = __VSExportCompressionToContext_block_invoke;
      v27[3] = &unk_279E1A430;
      v7 = v5;
      v28 = v7;
      v21 = MEMORY[0x2743B6E40](v27);
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __VSExportCompressionToContext_block_invoke_2;
      v25[3] = &unk_279E1A430;
      v26 = v7;
      v22 = v7;
      v20 = MEMORY[0x2743B6E40](v25);
      v8 = [v1 globalObject];
      v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v10 = MEMORY[0x2743B6E40](v21);
      v11 = *MEMORY[0x277CD4630];
      [v9 setObject:v10 forKey:*MEMORY[0x277CD4630]];

      v24 = v3;
      v12 = v1;
      v13 = *MEMORY[0x277CD4638];
      v14 = MEMORY[0x277CBEC28];
      [v9 setObject:MEMORY[0x277CBEC28] forKey:*MEMORY[0x277CD4638]];
      v15 = *MEMORY[0x277CD4618];
      [v9 setObject:v14 forKey:*MEMORY[0x277CD4618]];
      [v9 setObject:v14 forKey:v15];
      [v8 defineProperty:@"deflate" descriptor:v9];
      v16 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v17 = MEMORY[0x2743B6E40](v20);
      [v16 setObject:v17 forKey:v11];

      v18 = v13;
      v1 = v12;
      v3 = v24;
      [v16 setObject:v14 forKey:v18];
      [v16 setObject:v14 forKey:v15];
      [v16 setObject:v14 forKey:v15];
      [v8 defineProperty:@"inflate" descriptor:v16];

      v4 = v23;
    }

    else
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:@"Unable to obtain compression value transformer."];
    }
  }

  else
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:@"Unable to obtain data value transformer."];
  }

  v19 = *MEMORY[0x277D85DE8];
}

void commonInit_3(void *a1)
{
  v1 = MEMORY[0x277D75D18];
  v2 = a1;
  v3 = objc_alloc_init(v1);
  v4 = v2[76];
  v2[76] = v3;
  v5 = v3;

  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v7 = v2[75];
  v2[75] = v6;

  [v5 setUserInteractionEnabled:1];
  v8 = [v2 contentView];
  [v8 setUserInteractionEnabled:1];

  [v2 setUserInteractionEnabled:1];
  v9 = [v2 contentView];

  [v9 addSubview:v5];
}

uint64_t VSIsScriptMessageNotificationURL(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = v1;
    v4 = VSScriptMessageNotificationURL();
    v5 = [v4 scheme];
    v6 = [v3 scheme];
    v7 = v6;
    v8 = 0;
    if (v5 && v6)
    {
      if ([v6 compare:v5 options:1])
      {
        v8 = 0;
      }

      else
      {
        v9 = [v4 resourceSpecifier];
        v10 = [v3 resourceSpecifier];
        v11 = v9;
        v12 = v10;
        v13 = v12;
        if (v11 == v12)
        {
          v8 = 1;
        }

        else
        {
          v8 = 0;
          if (v11 && v12)
          {
            v8 = [v11 isEqual:v12];
          }
        }
      }
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

id VSScriptMessageNotificationURL()
{
  if (VSScriptMessageNotificationURL___vs_lazy_init_predicate != -1)
  {
    VSScriptMessageNotificationURL_cold_1();
  }

  v1 = VSScriptMessageNotificationURL___vs_lazy_init_variable;

  return v1;
}

id VSScriptMessageSupportInjection(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA8D8] vs_frameworkBundle];
  v3 = [v2 URLForResource:@"VideoSubscriberAccount" withExtension:@"js"];
  if (v3)
  {
    v13 = 0;
    v4 = [MEMORY[0x277CCAB68] stringWithContentsOfURL:v3 encoding:4 error:&v13];
  }

  else
  {
    v4 = 0;
  }

  v5 = @"ITML";
  if (a1 != 1)
  {
    v5 = 0;
  }

  if (a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = @"web";
  }

  v7 = [MEMORY[0x277CE2298] optionalWithObject:v6];
  v8 = [v7 forceUnwrapObject];

  [v4 replaceOccurrencesOfString:@"____VS_MESSAGE_ENVIRONMENT_NAME____" withString:v8 options:0 range:{0, objc_msgSend(v4, "length")}];
  v9 = VSScriptMessageNotificationURL();
  v10 = [v9 absoluteString];

  if (v10)
  {
    v11 = v10;
    [v4 replaceOccurrencesOfString:@"____VS_MESSAGE_NOTIFICATION_URL____" withString:v11 options:0 range:{0, objc_msgSend(v4, "length")}];
  }

  if (!v4)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:@"Unable to obtain script source."];
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The scriptSourceOrNil parameter must not be nil."];
  }

  return v4;
}

id VSScriptMessageDispatchInjection(void *a1)
{
  v1 = a1;
  v2 = [v1 body];
  v3 = [v2 stringByReplacingOccurrencesOfString:@"'" withString:@"'"];

  v4 = [v1 source];

  v5 = MEMORY[0x277CCACA8];
  v6 = [v4 scheme];
  v7 = [v6 lowercaseString];
  v8 = [v4 host];
  v9 = [v5 stringWithFormat:@"%@://%@", v7, v8];

  v10 = [v4 port];
  if (v10)
  {
    v11 = [v9 stringByAppendingFormat:@":%ld", v10];

    v9 = v11;
  }

  v12 = [v9 stringByReplacingOccurrencesOfString:@"'" withString:@"'"];
  v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"(function () {var m = {}m.data = '%@';m.origin = '%@';VideoSubscriberAccount._dispatchMessage(m);})();", v3, v12];;

  return v13;
}

VSScriptMessage *VSScriptMessageForValueFromContextWithOrigin(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v3 objectForKey:@"target"];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v8 = MEMORY[0x277CBEAD8];
        v9 = *MEMORY[0x277CBE660];
        v10 = objc_opt_class();
        v11 = NSStringFromClass(v10);
        [v8 raise:v9 format:{@"Unexpectedly, target was %@, instead of NSString.", v11}];
      }

      v12 = v7;
      v13 = [v3 objectForKey:@"body"];
      v14 = v13;
      if (v13)
      {
        v15 = v13;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v16 = MEMORY[0x277CBEAD8];
            v17 = *MEMORY[0x277CBE660];
            v18 = objc_opt_class();
            v19 = NSStringFromClass(v18);
            [v16 raise:v17 format:{@"Unexpectedly, bodyValue was %@, instead of NSString.", v19}];
          }

          v20 = v15;
          v21 = objc_alloc_init(VSScriptMessage);
          [(VSScriptMessage *)v21 setBody:v20];

          [(VSScriptMessage *)v21 setSource:v4];
        }

        else
        {
          v21 = 0;
        }
      }

      else
      {
        v21 = 0;
      }

      if ([v12 isEqual:@"*"])
      {
        v22 = 0;
      }

      else if ([v12 isEqual:@"/"])
      {
        v22 = v4;
      }

      else
      {
        v23 = [MEMORY[0x277CCACE0] componentsWithString:v12];
        if (v23)
        {
          v22 = objc_alloc_init(VSScriptSecurityOrigin);
          v24 = [v23 scheme];
          [(VSScriptSecurityOrigin *)v22 setScheme:v24];

          v25 = [v23 host];
          [(VSScriptSecurityOrigin *)v22 setHost:v25];

          v26 = [v23 port];
          -[VSScriptSecurityOrigin setPort:](v22, "setPort:", [v26 integerValue]);
        }

        else
        {
          v27 = VSErrorLogObject();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            VSScriptMessageForValueFromContextWithOrigin_cold_1(v12, v27);
          }

          v22 = 0;
          v21 = 0;
        }
      }

      [(VSScriptMessage *)v21 setTarget:v22];
    }

    else
    {
      v21 = 0;
    }
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

uint64_t VSShouldSendScriptMessageToContextWithOrigin(void *a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = [v3 target];
  v6 = v5;
  if (v5 && ([v5 isEqual:v4] & 1) == 0)
  {
    v8 = VSErrorLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v11 = [v3 body];
      v12 = [v3 source];
      v13 = 138413058;
      v14 = v11;
      v15 = 2112;
      v16 = v12;
      v17 = 2112;
      v18 = v6;
      v19 = 2112;
      v20 = v4;
      _os_log_error_impl(&dword_270DD4000, v8, OS_LOG_TYPE_ERROR, "Discarding message (%@) from %@ with target (%@) mis-match for origin: %@", &v13, 0x2Au);
    }

    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t __VSScriptMessageNotificationURL_block_invoke()
{
  VSScriptMessageNotificationURL___vs_lazy_init_variable = __VSScriptMessageNotificationURL_block_invoke_2();

  return MEMORY[0x2821F96F8]();
}

id __VSScriptMessageNotificationURL_block_invoke_2()
{
  v0 = objc_alloc_init(MEMORY[0x277CCACE0]);
  [v0 setScheme:@"com.apple.VideoSubscriberAccount"];
  v1 = [MEMORY[0x277CCAD78] UUID];
  v2 = [v1 UUIDString];
  [v0 setPath:v2];

  v3 = [v0 URL];

  if (!v3)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The [components URL] parameter must not be nil."];
  }

  v4 = [v0 URL];

  return v4;
}

void sub_270E0EBE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id VSSpecifierForFooter(void *a1, void *a2, void *a3)
{
  v5 = MEMORY[0x277D3FAD8];
  v6 = a3;
  v7 = a2;
  v8 = a1;
  v9 = [v5 emptyGroupSpecifier];
  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  [v9 setProperty:v11 forKey:*MEMORY[0x277D3FF48]];

  v12 = [v8 copy];
  [v9 setProperty:v12 forKey:@"VSFooterPrimaryMessage"];

  v13 = [v7 copy];
  [v9 setProperty:v13 forKey:@"VSFooterSecondaryMessage"];

  v14 = [v6 copy];
  [v9 setProperty:v14 forKey:@"VSFooterTertiaryMessage"];

  return v9;
}

void sub_270E10C54(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

void sub_270E114E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_270E1175C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void commonInit_4(void *a1)
{
  v1 = MEMORY[0x277D750E8];
  v2 = a1;
  v3 = [[v1 alloc] initWithActivityIndicatorStyle:100];
  v4 = v2[126];
  v2[126] = v3;
  v5 = v3;

  *(v2 + 993) = 1;
  v6 = objc_alloc_init(MEMORY[0x277D756B8]);
  [v6 setAdjustsFontForContentSizeCategory:1];
  v11 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D769D0]];
  [v6 setFont:v11];
  [v6 setMaximumContentSizeCategory:*MEMORY[0x277D76808]];
  [v6 setNumberOfLines:0];
  v7 = [MEMORY[0x277D75348] secondaryLabelColor];
  [v6 setTextColor:v7];

  [v6 setTextAlignment:1];
  v8 = +[VSLoadingViewController_iOS defaultLoadingTitle];
  v9 = [v8 uppercaseString];
  [v6 setText:v9];

  v10 = v2[127];
  v2[127] = v6;
}

__CFString *VSAppSettingsSectionLocalizedTitle(void *a1)
{
  v1 = a1;
  if ([v1 isEqual:@"decided"])
  {
    v2 = @"ACCOUNT_ACCESS_DECIDED_GROUP_NAME";
LABEL_9:
    v3 = [MEMORY[0x277CCA8D8] vs_frameworkBundle];
    v4 = [v3 localizedStringForKey:v2 value:0 table:0];

    goto LABEL_10;
  }

  if ([v1 isEqual:@"available"])
  {
    v2 = @"ACCOUNT_ACCESS_AVAILABLE_GROUP_NAME";
    goto LABEL_9;
  }

  if ([v1 isEqual:@"subscribed"])
  {
    v2 = @"ACCOUNT_ACCESS_SUBSCRIBED_GROUP_NAME";
    goto LABEL_9;
  }

  if ([v1 isEqual:@"upgrade"])
  {
    v2 = @"ACCOUNT_ACCESS_AVAILABLE_WITH_UPGRADE_GROUP_NAME";
    goto LABEL_9;
  }

  v4 = &stru_2880B8BB0;
LABEL_10:

  return v4;
}

void sub_270E131B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void commonInit_5(void *a1)
{
  v1 = MEMORY[0x277D755E8];
  v2 = a1;
  v3 = objc_alloc_init(v1);
  [v3 setContentMode:1];
  v4 = v2[75];
  v2[75] = v3;
  v5 = v3;

  v6 = [v2 contentView];

  [v6 addSubview:v5];
}

void commonInit_6(void *a1)
{
  v7[2] = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [[VSFontCenter alloc] initWithTraitEnvironment:v1];
  v3 = v1[136];
  v1[136] = v2;

  v7[0] = objc_opt_class();
  v7[1] = objc_opt_class();
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:2];
  v5 = [v1 registerForTraitChanges:v4 withHandler:&__block_literal_global_19];

  v6 = *MEMORY[0x277D85DE8];
}

void __commonInit_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v17 = v4;
  v6 = [v17 traitCollection];
  v7 = [v6 userInterfaceStyle];
  v8 = [v5 userInterfaceStyle];

  if (v7 != v8)
  {
    v9 = [v17 traitCollection];
    v10 = [v9 userInterfaceStyle];

    v11 = [v17 viewModel];
    [v17 preferredLogoSize];
    [v17 vs_updateViewModel:v11 withUserInterfaceStyle:v10 andPreferredLogoSize:?];
  }

  v12 = [v17 traitCollection];
  v13 = [v12 preferredContentSizeCategory];
  v14 = [v5 preferredContentSizeCategory];

  if (v13 != v14)
  {
    v15 = [v17 fontCenter];
    v16 = [v17 traitCollection];
    [v15 setTraitCollection:v16];
  }
}

void sub_270E17E1C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_270E182BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_270E18768(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 80));
  _Unwind_Resume(a1);
}

void sub_270E19194(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_270E19964(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_270E19EB0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

id VSAppDescriptionValueType()
{
  if (VSAppDescriptionValueType___vs_lazy_init_predicate[0] != -1)
  {
    VSAppDescriptionValueType_cold_1();
  }

  v1 = VSAppDescriptionValueType___vs_lazy_init_variable;

  return v1;
}

uint64_t __VSAppDescriptionValueType_block_invoke()
{
  VSAppDescriptionValueType___vs_lazy_init_variable = __VSAppDescriptionValueType_block_invoke_2();

  return MEMORY[0x2821F96F8]();
}

id __VSAppDescriptionValueType_block_invoke_2()
{
  v0 = objc_alloc_init(MEMORY[0x277CE2318]);
  [v0 setImplementationClass:objc_opt_class()];
  v1 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v2 = MEMORY[0x277CE2320];
  v3 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  v4 = [v2 valueTypePropertyWithName:@"displayName" kind:2 allowedClasses:v3 initialValue:0];
  [v1 addObject:v4];

  v5 = MEMORY[0x277CE2320];
  v6 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  v7 = [v5 valueTypePropertyWithName:@"adamID" kind:2 allowedClasses:v6 initialValue:0];
  [v1 addObject:v7];

  v8 = MEMORY[0x277CE2320];
  v9 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  v10 = [v8 valueTypePropertyWithName:@"buyParams" kind:2 allowedClasses:v9 initialValue:0];
  [v1 addObject:v10];

  v11 = MEMORY[0x277CE2320];
  v12 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  v13 = [v11 valueTypePropertyWithName:@"bundleID" kind:2 allowedClasses:v12 initialValue:0];
  [v1 addObject:v13];

  v14 = MEMORY[0x277CE2320];
  v15 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  v16 = [v14 valueTypePropertyWithName:@"sellerName" kind:2 allowedClasses:v15 initialValue:0];
  [v1 addObject:v16];

  v17 = MEMORY[0x277CE2320];
  v18 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  v19 = [v17 valueTypePropertyWithName:@"externalVersionID" kind:2 allowedClasses:v18 initialValue:0];
  [v1 addObject:v19];

  v20 = MEMORY[0x277CE2320];
  v21 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  v22 = [v20 valueTypePropertyWithName:@"icon" kind:2 allowedClasses:v21 initialValue:0];
  [v1 addObject:v22];

  v23 = MEMORY[0x277CE2320];
  v24 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  v25 = [v23 valueTypePropertyWithName:@"appStoreURL" kind:2 allowedClasses:v24 initialValue:0];
  [v1 addObject:v25];

  v26 = MEMORY[0x277CE2320];
  v27 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  v28 = [v26 valueTypePropertyWithName:@"privacyPolicyEndpointURL" kind:2 allowedClasses:v27 initialValue:0];
  [v1 addObject:v28];

  v29 = MEMORY[0x277CE2320];
  v30 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  v31 = [v29 valueTypePropertyWithName:@"licenseAgreementEndpointURL" kind:2 allowedClasses:v30 initialValue:0];
  [v1 addObject:v31];

  v32 = MEMORY[0x277CE2320];
  v33 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  v34 = [v32 valueTypePropertyWithName:@"rating" kind:2 allowedClasses:v33 initialValue:0];
  [v1 addObject:v34];

  v35 = MEMORY[0x277CE2320];
  v36 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  v37 = [v35 valueTypePropertyWithName:@"contentRank" kind:2 allowedClasses:v36 initialValue:0];
  [v1 addObject:v37];

  v38 = [MEMORY[0x277CE2320] valueTypePropertyWithName:@"offersInAppPurchases" kind:0 allowedClasses:0 initialValue:0];
  [v1 addObject:v38];

  v39 = [MEMORY[0x277CE2320] valueTypePropertyWithName:@"appType" kind:1 allowedClasses:0 initialValue:0];
  [v1 addObject:v39];

  v40 = [MEMORY[0x277CE2320] valueTypePropertyWithName:@"defaultAppForProvider" kind:0 allowedClasses:0 initialValue:0];
  [v1 addObject:v40];

  v41 = MEMORY[0x277CE2320];
  v42 = MEMORY[0x277CBEB98];
  v43 = objc_opt_class();
  v44 = [v42 setWithObjects:{v43, objc_opt_class(), 0}];
  v45 = [v41 valueTypePropertyWithName:@"deviceFamilies" kind:2 allowedClasses:v44 initialValue:MEMORY[0x277CBEBF8]];
  [v1 addObject:v45];

  v46 = MEMORY[0x277CE2320];
  v47 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  v48 = [v46 valueTypePropertyWithName:@"visionOSCompatible" kind:2 allowedClasses:v47 initialValue:0];
  [v1 addObject:v48];

  [v0 setProperties:v1];

  return v0;
}

void sub_270E1BFB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_270E1C78C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id a28, char a29)
{
  objc_destroyWeak((v29 + 72));
  objc_destroyWeak((v29 + 64));
  objc_destroyWeak(&location);
  objc_destroyWeak((v30 + 56));
  objc_destroyWeak(&a28);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v31 - 176), 8);
  _Block_object_dispose((v31 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_270E1D7C8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__112(uint64_t a1, uint64_t a2)
{
  result = MEMORY[0x2743B6E40](*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void sub_270E1EE20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id location, char a29)
{
  objc_destroyWeak(&a27);
  objc_destroyWeak(&location);
  _Block_object_dispose(&a29, 8);
  _Unwind_Resume(a1);
}

void sub_270E1F1D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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

void sub_270E1F414(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_270E20640(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 + 48));
  objc_destroyWeak((v3 - 88));
  _Unwind_Resume(a1);
}

void sub_270E20E84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_270E2144C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_270E22EB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_270E23990(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_270E24D7C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 112));
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_2_0(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_270E28A48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void commonInit_7(void *a1)
{
  v183[2] = *MEMORY[0x277D85DE8];
  v1 = a1;
  VSRequireMainThread();
  v2 = *(v1 + 54);
  *(v1 + 54) = &stru_2880B8BB0;

  v3 = *(v1 + 55);
  *(v1 + 55) = &stru_2880B8BB0;

  v4 = *(v1 + 56);
  *(v1 + 56) = &stru_2880B8BB0;

  v5 = *(v1 + 57);
  *(v1 + 57) = &stru_2880B8BB0;

  v6 = *(v1 + 58);
  *(v1 + 58) = &stru_2880B8BB0;

  v7 = *(v1 + 59);
  *(v1 + 59) = &stru_2880B8BB0;

  v8 = *(v1 + 60);
  *(v1 + 60) = &stru_2880B8BB0;

  v9 = *(v1 + 61);
  *(v1 + 61) = &stru_2880B8BB0;

  v10 = *(v1 + 64);
  *(v1 + 64) = &stru_2880B8BB0;

  v11 = [[VSFontCenter alloc] initWithTraitEnvironment:v1];
  objc_storeStrong(v1 + 65, v11);
  v12 = objc_alloc_init(MEMORY[0x277D75A68]);
  objc_storeStrong(v1 + 69, v12);
  [v12 setAxis:1];
  [v12 setAlignment:3];
  [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
  v13 = v12;
  [v1 addSubview:v12];
  v14 = objc_alloc_init(MEMORY[0x277D756B8]);
  v15 = VSMainConcurrencyBindingOptions();
  v179 = v11;
  [v14 vs_bind:@"font" toObject:v11 withKeyPath:@"title1Font" options:v15];

  v16 = [MEMORY[0x277D74300] systemFontOfSize:76.0 weight:*MEMORY[0x277D743F8]];
  [v14 setFont:v16];

  v17 = [MEMORY[0x277D75348] vsa_opacityBDynamicColor];
  [v14 setTextColor:v17];

  [v14 setTextAlignment:1];
  [v14 setLineBreakMode:0];
  [v14 setNumberOfLines:0];
  [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
  v18 = VSMainConcurrencyBindingOptions();
  [v14 vs_bind:@"text" toObject:v1 withKeyPath:@"title" options:v18];

  [v13 addArrangedSubview:v14];
  v19 = [v13 layer];
  [v19 setAllowsGroupBlending:0];

  v20 = [v14 traitCollection];
  v21 = [v20 userInterfaceStyle];

  v22 = [v14 layer];
  v23 = v22;
  v24 = *MEMORY[0x277CDA5E8];
  v25 = *MEMORY[0x277CDA5D8];
  if (v21 == 2)
  {
    v26 = *MEMORY[0x277CDA5E8];
  }

  else
  {
    v26 = *MEMORY[0x277CDA5D8];
  }

  [v22 setCompositingFilter:v26];

  v27 = objc_alloc_init(MEMORY[0x277D756B8]);
  v28 = VSMainConcurrencyBindingOptions();
  [v27 vs_bind:@"font" toObject:v11 withKeyPath:@"headlineFont" options:v28];

  v29 = [MEMORY[0x277D75348] vsa_opacityCDynamicColor];
  [v27 setTextColor:v29];

  [v27 setTextAlignment:1];
  [v27 setLineBreakMode:0];
  [v27 setNumberOfLines:0];
  [v27 setTranslatesAutoresizingMaskIntoConstraints:0];
  v30 = VSMainConcurrencyBindingOptions();
  [v27 vs_bind:@"text" toObject:v1 withKeyPath:@"message" options:v30];

  [v13 addArrangedSubview:v27];
  v31 = [v27 traitCollection];
  v32 = [v31 userInterfaceStyle];

  v33 = [v27 layer];
  v34 = v33;
  if (v32 == 2)
  {
    v35 = v24;
  }

  else
  {
    v35 = v25;
  }

  [v33 setCompositingFilter:v35];

  v178 = v27;
  [v13 setCustomSpacing:v27 afterView:44.0];
  v177 = v14;
  v36 = [v14 font];
  [v36 descender];
  v38 = ceil(v37) + 50.0;

  v39 = [v27 font];
  [v39 ascender];
  v41 = v40;
  v42 = [v27 font];
  [v42 capHeight];
  v44 = v38 - ceil(v41 - v43);

  [v13 setCustomSpacing:v14 afterView:v44];
  v45 = [MEMORY[0x277D75220] buttonWithType:1];
  v46 = *(v1 + 70);
  *(v1 + 70) = v45;
  v47 = v45;

  v48 = [MEMORY[0x277D75348] clearColor];
  [v47 _setVisualEffectViewEnabled:0 backgroundColor:v48];

  [v47 addTarget:v1 action:sel__beginButtonPressed_ forControlEvents:0x2000];
  [v47 setTranslatesAutoresizingMaskIntoConstraints:0];
  v49 = MEMORY[0x277D75348];
  v50 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.8];
  v51 = [MEMORY[0x277D75348] whiteColor];
  v52 = [v49 vsa_dynamicColorWithLightStyleColor:v50 darkStyleColor:v51];
  [v47 setTitleColor:v52 forState:0];

  v53 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.8];
  [v47 setTitleColor:v53 forState:8];

  v54 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.8];
  [v47 setTitleColor:v54 forState:1];

  LODWORD(v55) = 1148846080;
  [v47 setContentHuggingPriority:0 forAxis:v55];
  v56 = [v47 titleLabel];
  v57 = VSMainConcurrencyBindingOptions();
  [v56 vs_bind:@"font" toObject:v11 withKeyPath:@"headlineFont" options:v57];

  v58 = VSMainConcurrencyBindingOptions();
  v181 = v47;
  [v47 vs_bind:@"vs_normalTitle" toObject:v1 withKeyPath:@"beginButtonTitle" options:v58];

  [v13 addArrangedSubview:v47];
  [v13 setCustomSpacing:v47 afterView:14.0];
  v59 = [MEMORY[0x277D75220] buttonWithType:1];
  v60 = *(v1 + 71);
  *(v1 + 71) = v59;
  v61 = v59;

  v62 = [MEMORY[0x277D75348] clearColor];
  [v61 _setVisualEffectViewEnabled:0 backgroundColor:v62];

  [v61 addTarget:v1 action:sel__skipButtonPressed_ forControlEvents:0x2000];
  [v61 setTranslatesAutoresizingMaskIntoConstraints:0];
  v63 = MEMORY[0x277D75348];
  v64 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.8];
  v65 = [MEMORY[0x277D75348] whiteColor];
  v66 = [v63 vsa_dynamicColorWithLightStyleColor:v64 darkStyleColor:v65];
  [v61 setTitleColor:v66 forState:0];

  v67 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.8];
  [v61 setTitleColor:v67 forState:8];

  v68 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.8];
  [v61 setTitleColor:v68 forState:1];

  LODWORD(v69) = 1132068864;
  [v61 setContentHuggingPriority:0 forAxis:v69];
  v70 = [v61 titleLabel];
  [v70 setLineBreakMode:5];

  v71 = [(VSFontCenter *)v11 headlineFont];
  v72 = *(v1 + 66);
  *(v1 + 66) = v71;

  v73 = [(VSFontCenter *)v11 headlineFont];
  v74 = *(v1 + 67);
  *(v1 + 67) = v73;

  *(v1 + 68) = 0x402E000000000000;
  v75 = VSMainConcurrencyBindingOptions();
  [v61 vs_bind:@"vs_normalTitle" toObject:v1 withKeyPath:@"skipButtonTitle" options:v75];

  v76 = [v61 titleLabel];
  v77 = VSMainConcurrencyBindingOptions();
  [v76 vs_bind:@"font" toObject:v1 withKeyPath:@"skipButtonFont" options:v77];

  v182 = v61;
  [v13 addArrangedSubview:v61];
  [v13 setCustomSpacing:v61 afterView:20.0];
  v78 = [MEMORY[0x277D75220] buttonWithType:1];
  v79 = *(v1 + 72);
  *(v1 + 72) = v78;
  v80 = v78;

  v81 = [MEMORY[0x277D75348] clearColor];
  [v80 _setVisualEffectViewEnabled:0 backgroundColor:v81];

  [v80 addTarget:v1 action:sel__appsButtonPressed_ forControlEvents:0x2000];
  [v80 setTranslatesAutoresizingMaskIntoConstraints:0];
  v82 = MEMORY[0x277D75348];
  v83 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.8];
  v84 = [MEMORY[0x277D75348] whiteColor];
  v85 = [v82 vsa_dynamicColorWithLightStyleColor:v83 darkStyleColor:v84];
  [v80 setTitleColor:v85 forState:0];

  v86 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.8];
  [v80 setTitleColor:v86 forState:8];

  v87 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.8];
  [v80 setTitleColor:v87 forState:1];

  v88 = [v80 titleLabel];
  v89 = VSMainConcurrencyBindingOptions();
  [v88 vs_bind:@"font" toObject:v11 withKeyPath:@"bodyFont" options:v89];

  v90 = VSMainConcurrencyBindingOptions();
  [v80 vs_bind:@"vs_normalTitle" toObject:v1 withKeyPath:@"appsButtonTitle" options:v90];

  v91 = VSMainConcurrencyBindingOptions();
  v92 = [v91 mutableCopy];

  v93 = *MEMORY[0x277CCA580];
  v94 = *MEMORY[0x277CE24D0];
  v170 = *MEMORY[0x277CE24D0];
  [v92 setObject:*MEMORY[0x277CCA580] forKey:*MEMORY[0x277CE24D0]];
  v176 = v80;
  [v80 vs_bind:@"hidden" toObject:v1 withKeyPath:@"shouldShowAppsButton" options:v92];

  [v80 _setFocusSpeedBumpEdges:1];
  [v13 addArrangedSubview:v80];
  [v13 setCustomSpacing:v80 afterView:20.0];
  v95 = objc_alloc_init(MEMORY[0x277D75D18]);
  v96 = *(v1 + 62);
  *(v1 + 62) = v95;
  v97 = v95;

  [v97 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v97 _setFocusSpeedBumpEdges:1];
  v175 = v97;
  [v13 addArrangedSubview:v97];
  v98 = VSMainConcurrencyBindingOptions();
  v99 = [v98 mutableCopy];

  [v99 setObject:v93 forKey:v94];
  [v97 vs_bind:@"hidden" toObject:v1 withKeyPath:@"shouldShowAboutButton" options:v99];

  v180 = objc_alloc_init(MEMORY[0x277D75D18]);
  [v13 addArrangedSubview:v180];
  v174 = objc_alloc_init(MEMORY[0x277D756B8]);
  v100 = VSMainConcurrencyBindingOptions();
  [v174 vs_bind:@"text" toObject:v1 withKeyPath:@"footer" options:v100];

  v101 = VSMainConcurrencyBindingOptions();
  [v174 vs_bind:@"font" toObject:v11 withKeyPath:@"bodyFont" options:v101];

  v102 = [MEMORY[0x277D75348] vsa_opacityCDynamicColor];
  [v174 setTextColor:v102];

  [v174 setTextAlignment:1];
  [v174 setLineBreakMode:0];
  [v174 setNumberOfLines:0];
  [v174 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v13 addArrangedSubview:v174];
  v103 = objc_alloc_init(MEMORY[0x277D755E8]);
  [v103 _setContinuousCornerRadius:14.0];
  [v103 setClipsToBounds:1];
  [v103 setTranslatesAutoresizingMaskIntoConstraints:0];
  v104 = VSMainConcurrencyBindingOptions();
  [v103 vs_bind:@"image" toObject:v1 withKeyPath:@"image" options:v104];

  [v1 addSubview:v103];
  v105 = objc_alloc_init(MEMORY[0x277D75A68]);
  [v105 setAxis:0];
  [v105 setAlignment:3];
  [v105 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v1 addSubview:v105];
  v106 = objc_alloc_init(MEMORY[0x277D756B8]);
  [v106 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v106 setTextAlignment:1];
  v107 = VSMainConcurrencyBindingOptions();
  v173 = v106;
  [v106 vs_bind:@"text" toObject:v1 withKeyPath:@"appName" options:v107];

  v108 = VSMainConcurrencyBindingOptions();
  [v106 vs_bind:@"font" toObject:v11 withKeyPath:@"calloutFont" options:v108];

  [v105 addArrangedSubview:v106];
  [v105 setCustomSpacing:v106 afterView:8.0];
  v109 = objc_alloc_init(MEMORY[0x277D756B8]);
  [v109 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v109 setTextAlignment:1];
  v110 = [MEMORY[0x277D75348] vsa_opacityCDynamicColor];
  [v109 setTextColor:v110];

  v111 = VSMainConcurrencyBindingOptions();
  [v109 vs_bind:@"text" toObject:v1 withKeyPath:@"appAgeRatingBadge" options:v111];

  v112 = VSMainConcurrencyBindingOptions();
  [v109 vs_bind:@"font" toObject:v11 withKeyPath:@"appAgeRatingFont" options:v112];

  [v105 addArrangedSubview:v109];
  v113 = [v109 layer];
  [v113 setCornerRadius:6.0];

  v114 = [v109 layer];
  [v114 setMasksToBounds:1];

  v115 = [v109 layer];
  [v115 setBorderWidth:2.0];

  v116 = [MEMORY[0x277D75348] grayColor];
  v117 = [v116 CGColor];
  v118 = [v109 layer];
  [v118 setBorderColor:v117];

  v119 = objc_alloc_init(MEMORY[0x277D756B8]);
  [v119 setTranslatesAutoresizingMaskIntoConstraints:0];
  v120 = [MEMORY[0x277D75348] vsa_opacityCDynamicColor];
  [v119 setTextColor:v120];

  [v119 setNumberOfLines:0];
  v172 = objc_alloc_init(MEMORY[0x277CE2218]);
  [v172 setTransformationBlock:&__block_literal_global_25];
  v121 = VSMainConcurrencyBindingOptions();
  v122 = [v121 mutableCopy];

  [v122 setObject:v172 forKey:v170];
  [v119 vs_bind:@"attributedText" toObject:v1 withKeyPath:@"footnote" options:v122];

  v123 = VSMainConcurrencyBindingOptions();
  [v119 vs_bind:@"font" toObject:v11 withKeyPath:@"caption2Font" options:v123];

  [v1 addSubview:v119];
  v124 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v125 = [v13 centerXAnchor];
  v126 = [v1 leadingAnchor];
  v127 = [v125 constraintEqualToAnchor:v126 constant:662.0];
  [v124 addObject:v127];

  v128 = [v13 centerYAnchor];
  v129 = [v1 centerYAnchor];
  v130 = [v128 constraintEqualToAnchor:v129];

  LODWORD(v131) = 1144733696;
  v171 = v130;
  [v130 setPriority:v131];
  [v124 addObject:v130];
  v132 = [v13 widthAnchor];
  v133 = [v132 constraintLessThanOrEqualToConstant:846.0];
  [v124 addObject:v133];

  v134 = [v181 heightAnchor];
  v135 = [v134 constraintEqualToConstant:75.0];
  [v124 addObject:v135];

  v136 = [v182 heightAnchor];
  v137 = [v136 constraintEqualToConstant:75.0];
  [v124 addObject:v137];

  v138 = [v181 widthAnchor];
  v139 = [v138 constraintGreaterThanOrEqualToConstant:380.0];
  [v124 addObject:v139];

  v140 = [v181 centerXAnchor];
  v141 = [v13 centerXAnchor];
  v142 = [v140 constraintEqualToAnchor:v141];
  [v124 addObject:v142];

  v143 = [v180 heightAnchor];
  v144 = [v143 constraintEqualToConstant:5.0];
  [v124 addObject:v144];

  v145 = [v103 widthAnchor];
  v146 = [v145 constraintEqualToConstant:550.0];
  [v124 addObject:v146];

  v147 = [v103 heightAnchor];
  v148 = [v147 constraintEqualToConstant:330.0];
  [v124 addObject:v148];

  v149 = [v103 topAnchor];
  v150 = [v1 topAnchor];
  v151 = [v149 constraintEqualToAnchor:v150 constant:348.0];
  [v124 addObject:v151];

  v152 = [v103 trailingAnchor];
  v153 = [v1 trailingAnchor];
  v154 = [v152 constraintEqualToAnchor:v153 constant:-138.0];
  [v124 addObject:v154];

  v155 = [v105 centerXAnchor];
  v156 = [v103 centerXAnchor];
  v157 = [v155 constraintEqualToAnchor:v156];
  [v124 addObject:v157];

  v158 = [v105 firstBaselineAnchor];
  v159 = [v103 bottomAnchor];
  v160 = [v158 constraintEqualToAnchor:v159 constant:42.0];
  [v124 addObject:v160];

  v161 = [v119 centerXAnchor];
  v162 = [v103 centerXAnchor];
  v163 = [v161 constraintEqualToAnchor:v162];
  [v124 addObject:v163];

  v164 = [v119 firstBaselineAnchor];
  v165 = [v173 lastBaselineAnchor];
  v166 = [v164 constraintEqualToAnchor:v165 constant:36.0];
  [v124 addObject:v166];

  [MEMORY[0x277CCAAD0] activateConstraints:v124];
  v183[0] = objc_opt_class();
  v183[1] = objc_opt_class();
  v167 = [MEMORY[0x277CBEA60] arrayWithObjects:v183 count:2];

  v168 = [v1 registerForTraitChanges:v167 withHandler:&__block_literal_global_249];
  v169 = *MEMORY[0x277D85DE8];
}

id __commonInit_block_invoke_0(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v4 = objc_alloc_init(MEMORY[0x277D74240]);
    [v4 setLineSpacing:7.0];
    [v4 setAlignment:1];
    [v3 setObject:v4 forKey:*MEMORY[0x277D74118]];
    v5 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v2 attributes:v3];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void __commonInit_block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v19 = v4;
  v6 = [v19 traitCollection];
  v7 = [v6 preferredContentSizeCategory];
  v8 = [v5 preferredContentSizeCategory];

  if (v7 != v8)
  {
    v9 = [v19 fontCenter];
    v10 = [v19 traitCollection];
    [v9 setTraitCollection:v10];
  }

  v11 = [v19 traitCollection];
  v12 = [v11 userInterfaceStyle];
  v13 = [v5 userInterfaceStyle];

  if (v12 != v13)
  {
    v14 = [v19 traitCollection];
    v15 = [v14 userInterfaceStyle];

    v16 = [v19 layer];
    v17 = v16;
    v18 = MEMORY[0x277CDA5E8];
    if (v15 != 2)
    {
      v18 = MEMORY[0x277CDA5D8];
    }

    [v16 setCompositingFilter:*v18];
  }
}

void __swiftcall NSURL.init(vsString:)(NSURL_optional *__return_ptr retstr, Swift::String vsString)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_270E2F804();

  [v2 initWithVsString_];
}

id NSURL.init(vsString:)(uint64_t a1, unint64_t a2)
{
  sub_270E2BF34(a1, a2);

  v3 = sub_270E2F804();

  v4 = [v2 initWithString_];

  return v4;
}

uint64_t sub_270E2BF34(uint64_t a1, unint64_t a2)
{
  v4 = sub_270E2F7F4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = (MEMORY[0x28223BE20])();
  v9 = &v25[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = objc_allocWithZone(MEMORY[0x277CCAC68]);

  v11 = sub_270E2C650(0x233F2F3A5E5B285ELL, 0xEE002F2F3A292B5DLL, 1);

  v12 = sub_270E2F804();

  v13 = sub_270E2F834();

  v14 = [v11 matchesInString:v12 options:0 range:{0, v13}];

  sub_270E2C72C();
  v15 = sub_270E2F864();

  if (v15 >> 62)
  {
    v17 = sub_270E2F8A4();

    if (v17)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v16)
    {
LABEL_3:

      return a1;
    }
  }

  sub_270E2F7D4();
  v18 = sub_270E2F7E4();
  v19 = sub_270E2F874();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v25[0] = v24;
    *v20 = 136315138;

    v21 = sub_270E2C778(a1, a2, v25);

    *(v20 + 4) = v21;
    _os_log_impl(&dword_270DD4000, v18, v19, "Missing scheme for URL: %s", v20, 0xCu);
    v22 = v24;
    __swift_destroy_boxed_opaque_existential_0(v24);
    MEMORY[0x2743B7090](v22, -1, -1);
    MEMORY[0x2743B7090](v20, -1, -1);
  }

  (*(v5 + 8))(v9, v4);
  v25[0] = 0x2F2F3A7370747468;
  v25[1] = 0xE800000000000000;
  MEMORY[0x2743B6630](a1, a2);

  return v25[0];
}

id sub_270E2C304(void *a1)
{
  v2 = sub_270E2F814();
  sub_270E2BF34(v2, v3);

  v4 = sub_270E2F804();

  v5 = [a1 initWithString_];

  return v5;
}

id static NSURL.vs_URL(withString:)()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBC0]);
  v1 = sub_270E2F804();
  v2 = [v0 initWithVsString_];

  return v2;
}

id sub_270E2C3F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = [objc_allocWithZone(MEMORY[0x277CBEBC0]) initWithVsString_];

  return v3;
}

uint64_t URL.init(vsString:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28086E458, &qword_270E38BE0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v14 - v8;
  sub_270E2BF34(a1, a2);

  sub_270E2F7B4();

  v10 = sub_270E2F7C4();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v9, 1, v10))
  {
    sub_270E2C5E8(v9);
    v12 = 1;
  }

  else
  {
    (*(v11 + 32))(a3, v9, v10);
    v12 = 0;
  }

  return (*(v11 + 56))(a3, v12, 1, v10);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_270E2C5E8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28086E458, &qword_270E38BE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_270E2C650(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v5 = sub_270E2F804();

  v11[0] = 0;
  v6 = [v3 initWithPattern:v5 options:a3 error:v11];

  if (v6)
  {
    v7 = v11[0];
  }

  else
  {
    v8 = v11[0];
    sub_270E2F7A4();

    swift_willThrow();
  }

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

unint64_t sub_270E2C72C()
{
  result = qword_28086E460;
  if (!qword_28086E460)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28086E460);
  }

  return result;
}

unint64_t sub_270E2C778(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_270E2C844(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_270E2CD6C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_270E2C844(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_270E2C950(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_270E2F894();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_270E2C950(uint64_t a1, unint64_t a2)
{
  v4 = sub_270E2C99C(a1, a2);
  sub_270E2CACC(&unk_2880B8A58);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_270E2C99C(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_270E2CBB8(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_270E2F894();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_270E2F854();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_270E2CBB8(v10, 0);
        result = sub_270E2F884();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_270E2CACC(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_270E2CC2C(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_270E2CBB8(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28086E468, &qword_270E38BE8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_270E2CC2C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28086E468, &qword_270E38BE8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
    return MEMORY[0x2821FEB70](*a1);
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_270E2CD6C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

VideoSubscriberAccountUI::VSDestination_optional __swiftcall VSDestination.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_270E2F8B4();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t VSDestination.rawValue.getter()
{
  if (*v0)
  {
    result = 0x74754F6E676973;
  }

  else
  {
    result = 0x6E496E676973;
  }

  *v0;
  return result;
}

uint64_t sub_270E2CE74(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x74754F6E676973;
  }

  else
  {
    v4 = 0x6E496E676973;
  }

  if (v3)
  {
    v5 = 0xE600000000000000;
  }

  else
  {
    v5 = 0xE700000000000000;
  }

  if (*a2)
  {
    v6 = 0x74754F6E676973;
  }

  else
  {
    v6 = 0x6E496E676973;
  }

  if (*a2)
  {
    v7 = 0xE700000000000000;
  }

  else
  {
    v7 = 0xE600000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_270E2F8C4();
  }

  return v9 & 1;
}

uint64_t sub_270E2CF18()
{
  v1 = *v0;
  sub_270E2F8D4();
  sub_270E2F824();

  return sub_270E2F8E4();
}

uint64_t sub_270E2CF98()
{
  *v0;
  sub_270E2F824();
}

uint64_t sub_270E2D004()
{
  v1 = *v0;
  sub_270E2F8D4();
  sub_270E2F824();

  return sub_270E2F8E4();
}

uint64_t sub_270E2D080@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_270E2F8B4();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_270E2D0E0(uint64_t *a1@<X8>)
{
  v2 = 0x6E496E676973;
  if (*v1)
  {
    v2 = 0x74754F6E676973;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

void VSDestination.init(_:)(void *a1@<X0>, char *a2@<X8>)
{
  v4 = sub_270E2F814();
  v6 = v5;
  if (v4 == sub_270E2F814() && v6 == v7)
  {

    goto LABEL_8;
  }

  v9 = sub_270E2F8C4();

  if (v9)
  {

LABEL_8:
    v10 = 0;
    goto LABEL_9;
  }

  v11 = sub_270E2F814();
  v13 = v12;
  if (v11 == sub_270E2F814() && v13 == v14)
  {

    v10 = 1;
  }

  else
  {
    v15 = sub_270E2F8C4();

    if (v15)
    {
      v10 = 1;
    }

    else
    {
      v10 = 2;
    }
  }

LABEL_9:
  *a2 = v10;
}

__CFString *VSDestination.objcValue.getter()
{
  if (*v0)
  {
    v1 = @"signOut";
  }

  else
  {
    v1 = @"signIn";
  }

  v2 = v1;
  return v1;
}

unint64_t sub_270E2D2B0()
{
  result = qword_281598380;
  if (!qword_281598380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281598380);
  }

  return result;
}

unint64_t sub_270E2D308()
{
  result = qword_28086E470;
  if (!qword_28086E470)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28086E478, &qword_270E38C90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28086E470);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for VSDestination(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for VSDestination(uint64_t result, unsigned int a2, unsigned int a3)
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

void VSScriptMessageForValueFromContextWithOrigin_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_270DD4000, a2, OS_LOG_TYPE_ERROR, "Unable to parse target origin: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}