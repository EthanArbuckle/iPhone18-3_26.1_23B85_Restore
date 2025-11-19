void sub_1538(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1558(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1630;
  block[3] = &unk_10418;
  objc_copyWeak(&v12, (a1 + 32));
  v10 = v5;
  v11 = v6;
  v7 = v6;
  v8 = v5;
  dispatch_async(&_dispatch_main_q, block);

  objc_destroyWeak(&v12);
}

void sub_1630(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = *(WeakRetained + 112);
    v5 = *(a1 + 32);
    if (v4 == 1)
    {
      if (v5)
      {
        [v3[8] invalidate];
        objc_storeStrong(v3 + 8, *(a1 + 32));
      }

      else
      {
        v6 = PKLogFacilityTypeGetObject();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          v7 = *(a1 + 40);
          v8 = 138412290;
          v9 = v7;
          _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Error Acquiring Assertion for Lockscreen Plugin: %@", &v8, 0xCu);
        }
      }
    }

    else
    {
      [v5 invalidate];
    }
  }
}

void *sub_1D50(void *result, int a2, uint64_t a3)
{
  switch(a2)
  {
    case 3:
      if ((result[5] & 1) == 0)
      {
        return [*(result[4] + 80) willDisappear];
      }

      break;
    case 2:
      if ((result[5] & 1) == 0)
      {
        return [*(result[4] + 80) didAppear];
      }

      break;
    case 1:
      v3 = *(result + 40);
      v4 = result[4];
      if (v3 == 1)
      {
        return [v4 _insertViewControllerIfNeeded:*(v4 + 88)];
      }

      else
      {
        return [*(v4 + 80) setOffscreen:1];
      }
  }

  return result;
}

void sub_1F84(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1FA0(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained[10] setExternalizedAuthenticationContext:v3];
  [WeakRetained _updateViewState];
  [WeakRetained[11] fadeOutUIWithCompletion:0];
  [WeakRetained[11] invalidate];
  v5 = *(a1 + 32);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_20AC;
  v6[3] = &unk_10490;
  objc_copyWeak(&v7, (a1 + 40));
  [v5 _presentPassesAnimated:1 completion:v6];
  objc_destroyWeak(&v7);
}

void sub_20AC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v2 = [WeakRetained[11] view];
    [v2 removeFromSuperview];

    v3 = v6[11];
    v6[11] = 0;

    v4 = [v6 view];
    v5 = +[UIColor clearColor];
    [v4 setBackgroundColor:v5];

    WeakRetained = v6;
  }
}

void sub_21FC(uint64_t a1)
{
  v1 = a1;
  v2 = [*(a1 + 32) allObjects];
  v3 = [v2 pk_indexDictionaryByApplyingBlock:&stru_104F8];

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = *(*(v1 + 40) + 24);
  v4 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v23;
    v8 = &selRef_bounds;
    v20 = v1;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v23 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v22 + 1) + 8 * i);
        v11 = *(v8 + 541);
        v12 = [*(*(v1 + 40) + v11) objectForKey:{v10, v20}];
        v13 = [v3 objectForKey:v10];
        if (v13 && ([v12 isEqualToPassIncludingMetadata:v13] & 1) == 0)
        {
          v14 = *(*(v1 + 40) + v11);
          [v12 uniqueID];
          v15 = v5;
          v16 = v7;
          v17 = v3;
          v19 = v18 = v8;
          [v14 setObject:v13 forKey:v19];

          v8 = v18;
          v3 = v17;
          v7 = v16;
          v5 = v15;
          v1 = v20;
          [*(*(v20 + 40) + 80) reloadCardAtIndex:v6];
        }

        ++v6;
      }

      v5 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v5);
  }
}

void sub_2800(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(a1 + 48);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_28B8;
  v4[3] = &unk_10570;
  v5 = *(a1 + 32);
  [UIView animateWithDuration:v4 animations:v3];
}

uint64_t sub_2E50(uint64_t a1)
{
  v2 = [*(a1 + 32) pluginAgent];
  [v2 deactivatePluginController:*(a1 + 32)];

  [*(*(a1 + 32) + 80) invalidate];
  result = *(a1 + 40);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

uint64_t sub_324C(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_3840(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

CGColorRef sub_385C(uint64_t a1)
{
  result = CGColorRetain([*(a1 + 32) CGColor]);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_43A8(void *a1)
{
  v1 = a1;
  v2 = [PKGetClassNFHardwareManager() sharedHardwareManagerWithNoUI];
  [v2 releaseAssertion:v1 completion:0];
}

void sub_6A14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_6A38(id a1, WLLockScreenView *a2, BOOL a3)
{
  v3 = a2;
  if (v3)
  {
    v4 = v3->_passFooterViewOutstandingAnimations - 1;
    v3->_passFooterViewOutstandingAnimations = v4;
    if (!v4)
    {
      passFooterViewVisible = v3->_passFooterViewVisible;
      v7 = v3;
      passFooterView = v3->_passFooterView;
      if (passFooterViewVisible)
      {
        [(PKPassFooterView *)passFooterView didBecomeVisibleAnimated:1];
      }

      else
      {
        [(PKPassFooterView *)passFooterView didBecomeHiddenAnimated:1];
        [(PKPassFooterView *)v7->_passFooterView configureWithConfiguration:0 context:0 options:0];
      }

      v3 = v7;
    }
  }
}

id sub_6ADC(uint64_t a1)
{
  [*(*(a1 + 32) + 64) setAlpha:1.0];
  v2 = *(a1 + 32);

  return [v2 layoutIfNeeded];
}

void sub_6B28(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  (*(*(a1 + 32) + 16))();
}

void sub_6F80(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}