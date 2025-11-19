uint64_t RecapLibraryCore()
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = 0;
  v3 = &v2;
  v4 = 0x2020000000;
  v0 = RecapLibraryCore_frameworkLibrary;
  v5 = RecapLibraryCore_frameworkLibrary;
  if (!RecapLibraryCore_frameworkLibrary)
  {
    v6 = xmmword_279AF37D8;
    v7 = *off_279AF37E8;
    v8 = 0;
    v3[3] = _sl_dlopen();
    RecapLibraryCore_frameworkLibrary = v3[3];
    v0 = v3[3];
  }

  _Block_object_dispose(&v2, 8);
  return v0;
}

void sub_261A181EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __RecapLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  RecapLibraryCore_frameworkLibrary = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t RecapLibrary()
{
  v0 = RecapLibraryCore();
  if (!v0)
  {
    v2 = abort_report_np();
    free(v2);
  }

  return v0;
}

id getRCPInlinePlayerClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getRCPInlinePlayerClass_softClass;
  v7 = getRCPInlinePlayerClass_softClass;
  if (!getRCPInlinePlayerClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getRCPInlinePlayerClass_block_invoke;
    v3[3] = &unk_279AF3830;
    v3[4] = &v4;
    __getRCPInlinePlayerClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_261A183C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getRCPInlinePlayerClass_block_invoke(uint64_t a1)
{
  RecapLibrary();
  result = objc_getClass("RCPInlinePlayer");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getRCPInlinePlayerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getRCPInlinePlayerClass_block_invoke_cold_1();
    return getRCPEventStreamClass(v3);
  }

  return result;
}

id getRCPEventStreamClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getRCPEventStreamClass_softClass;
  v7 = getRCPEventStreamClass_softClass;
  if (!getRCPEventStreamClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getRCPEventStreamClass_block_invoke;
    v3[3] = &unk_279AF3830;
    v3[4] = &v4;
    __getRCPEventStreamClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_261A184F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getRCPEventStreamClass_block_invoke(uint64_t a1)
{
  RecapLibrary();
  result = objc_getClass("RCPEventStream");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getRCPEventStreamClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getRCPEventStreamClass_block_invoke_cold_1();
    return getRCPSyntheticEventStreamClass();
  }

  return result;
}

id getRCPSyntheticEventStreamClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getRCPSyntheticEventStreamClass_softClass;
  v7 = getRCPSyntheticEventStreamClass_softClass;
  if (!getRCPSyntheticEventStreamClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getRCPSyntheticEventStreamClass_block_invoke;
    v3[3] = &unk_279AF3830;
    v3[4] = &v4;
    __getRCPSyntheticEventStreamClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_261A18630(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getRCPSyntheticEventStreamClass_block_invoke(uint64_t a1)
{
  RecapLibrary();
  result = objc_getClass("RCPSyntheticEventStream");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getRCPSyntheticEventStreamClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getRCPSyntheticEventStreamClass_block_invoke_cold_1();
    return getRCPPlayerPlaybackOptionsClass(v3);
  }

  return result;
}

id getRCPPlayerPlaybackOptionsClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getRCPPlayerPlaybackOptionsClass_softClass;
  v7 = getRCPPlayerPlaybackOptionsClass_softClass;
  if (!getRCPPlayerPlaybackOptionsClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getRCPPlayerPlaybackOptionsClass_block_invoke;
    v3[3] = &unk_279AF3830;
    v3[4] = &v4;
    __getRCPPlayerPlaybackOptionsClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_261A18768(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getRCPPlayerPlaybackOptionsClass_block_invoke(uint64_t a1)
{
  RecapLibrary();
  result = objc_getClass("RCPPlayerPlaybackOptions");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getRCPPlayerPlaybackOptionsClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getRCPPlayerPlaybackOptionsClass_block_invoke_cold_1();
    return getRCPEventSenderPropertiesClass();
  }

  return result;
}

id getRCPEventSenderPropertiesClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getRCPEventSenderPropertiesClass_softClass;
  v7 = getRCPEventSenderPropertiesClass_softClass;
  if (!getRCPEventSenderPropertiesClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getRCPEventSenderPropertiesClass_block_invoke;
    v3[3] = &unk_279AF3830;
    v3[4] = &v4;
    __getRCPEventSenderPropertiesClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_261A188A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getRCPEventSenderPropertiesClass_block_invoke(uint64_t a1)
{
  RecapLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("RCPEventSenderProperties");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getRCPEventSenderPropertiesClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getRCPEventSenderPropertiesClass_block_invoke_cold_1();
    [(RPTResizeTestParameters *)v2 prepareWithComposer:v3, v4];
  }
}

void *std::vector<double>::vector[abi:nn200100](void *result, uint64_t a2, unint64_t a3)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a3)
  {
    std::vector<double>::__vallocate[abi:nn200100](result, a3);
  }

  return result;
}

void std::vector<double>::__vallocate[abi:nn200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<double>>(a1, a2);
  }

  std::vector<double>::__throw_length_error[abi:nn200100]();
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<double>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::vector<double>::__throw_length_error[abi:nn200100]();
}

void sub_261A197DC(void *a1)
{
  objc_begin_catch(a1);
  objc_end_catch();
  JUMPOUT(0x261A197C4);
}

void sub_261A19888(void *a1)
{
  objc_begin_catch(a1);
  objc_end_catch();
  JUMPOUT(0x261A19870);
}

id RPTLogTestRunning()
{
  if (RPTLogTestRunning_onceToken != -1)
  {
    RPTLogTestRunning_cold_1();
  }

  v1 = RPTLogTestRunning___logObj;

  return v1;
}

uint64_t __RPTLogTestRunning_block_invoke()
{
  RPTLogTestRunning___logObj = os_log_create("com.apple.recapperformancetesting", "TestRunning");

  return MEMORY[0x2821F96F8]();
}

double RPTGetBoundsForView(void *a1)
{
  v1 = a1;
  x = _RPTGetSafeBoundsForView(v1, 1);
  y = v3;
  width = v5;
  height = v7;
  v9 = v1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v9 adjustedContentInset];
    v32 = v10;
    v33 = v11;
    v13 = v12;
    v31 = v14;
    v15 = [v9 superview];
    [v9 frame];
    [v15 convertRect:0 toView:?];
    v17 = v16;
    v19 = v18;
    v20 = x;
    v22 = v21;
    r1 = height;
    v23 = y;
    v25 = v24;

    v36.origin.x = v13 + v17;
    v36.origin.y = v32 + v19;
    v36.size.width = v22 - (v13 + v31);
    v36.size.height = v25 - (v32 + v33);
    v34.origin.x = v20;
    v34.origin.y = v23;
    v34.size.width = width;
    v34.size.height = r1;
    v35 = CGRectIntersection(v34, v36);
    x = v35.origin.x;
    y = v35.origin.y;
    width = v35.size.width;
    height = v35.size.height;
  }

  v26 = [MEMORY[0x277D759A0] mainScreen];
  v27 = [v9 window];
  v28 = RPTExcludeSystemRegionsFromRect(v26, v27, x, y, width, height);

  return v28 + 5.0;
}

double _RPTGetSafeBoundsForView(void *a1, int a2)
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [v3 superview];
  [v3 frame];
  [v4 convertRect:0 toView:?];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  [v3 safeAreaInsets];
  x = v6 + v13;
  y = v8 + v15;
  width = v10 - (v13 + v17);
  height = v12 - (v15 + v19);
  v21 = [v3 superview];
  v22 = [v21 superview];

  if (v22)
  {
    v23 = [v3 superview];
    v42.origin.x = _RPTGetSafeBoundsForView(v23, 0);
    v42.origin.y = v24;
    v42.size.width = v25;
    v42.size.height = v26;
    v38.origin.x = x;
    v38.origin.y = y;
    v38.size.width = width;
    v38.size.height = height;
    v39 = CGRectIntersection(v38, v42);
    x = v39.origin.x;
    y = v39.origin.y;
    width = v39.size.width;
    height = v39.size.height;
  }

  if (a2)
  {
    v27 = RPTLogTestRunning();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v40.origin.x = x;
      v40.origin.y = y;
      v40.size.width = width;
      v40.size.height = height;
      v28 = _RPTStringFromCGRect(v40);
      v41.origin.x = v6;
      v41.origin.y = v8;
      v41.size.width = v10;
      v41.size.height = v12;
      v29 = _RPTStringFromCGRect(v41);
      v31 = 138543874;
      v32 = v28;
      v33 = 2114;
      v34 = v29;
      v35 = 2114;
      v36 = v3;
      _os_log_impl(&dword_261A17000, v27, OS_LOG_TYPE_DEFAULT, "RPT: Safe window bounds %{public}@ (%{public}@) for view %{public}@.", &v31, 0x20u);
    }
  }

  return x;
}

double RPTExcludeSystemRegionsFromRect(void *a1, void *a2, double a3, double a4, double a5, double a6)
{
  v10 = a1;
  [a2 safeAreaInsets];
  v12 = v11;
  [v10 bounds];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  v22 = 44.0;
  if (v12 <= 0.0)
  {
    v22 = 88.0;
  }

  v25 = v20 - v22;
  v26 = a3;
  v27 = a4;
  v28 = a5;
  v29 = a6;

  v21 = v14 + 10.0;
  v23 = v16 + 44.0;
  v24 = v18 + -20.0;
  *&result = CGRectIntersection(*&v26, *(&v25 - 3));
  return result;
}

double RPTExcludeSystemRegionsFromView(void *a1)
{
  v1 = a1;
  v2 = [v1 superview];
  [v1 frame];
  [v2 convertRect:0 toView:?];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = [v1 window];
  v12 = [v11 screen];
  v13 = [v1 window];

  v14 = RPTExcludeSystemRegionsFromRect(v12, v13, v4, v6, v8, v10);
  return v14;
}

double RPTConvertPointInViewToScreenSpace(void *a1, double a2, double a3)
{
  v5 = a1;
  v6 = [v5 window];

  if (v6)
  {
    v7 = [v5 window];
    v8 = [v7 screen];
    v9 = [v8 fixedCoordinateSpace];
    [v5 convertPoint:v9 toCoordinateSpace:{a2, a3}];
    a2 = v10;
  }

  return a2;
}

double RPTViewFrameInScreenSpace(void *a1)
{
  v1 = a1;
  v2 = [v1 window];

  if (v2)
  {
    [v1 bounds];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v11 = [v1 window];
    v12 = [v11 screen];
    v13 = [v12 fixedCoordinateSpace];
    [v1 convertRect:v13 toCoordinateSpace:{v4, v6, v8, v10}];
    v15 = v14;
  }

  else
  {
    [v1 frame];
    v15 = v16;
  }

  return v15;
}

double _RPTAmplitudeFromPagesOfView(void *a1, uint64_t a2, unint64_t a3)
{
  v5 = a1;
  v6 = [v5 window];

  if (v6)
  {
    [v5 bounds];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v15 = [v5 window];
    [v5 convertRect:v15 toView:{v8, v10, v12, v14}];
    v17 = v16;
    v19 = v18;
  }

  else
  {
    [v5 frame];
    v17 = v20;
    v19 = v21;
  }

  if (a2 == 1)
  {
    v22 = v17;
  }

  else
  {
    v22 = v19;
  }

  v23 = v22 * a3;

  return v23;
}

double RPTSizeAlongAxis(uint64_t a1, double a2, double a3)
{
  if (a1 != 1)
  {
    return a3;
  }

  return result;
}

double RPTContentSizeAlongAxis(void *a1, uint64_t a2)
{
  [a1 contentSize];
  if (a2 != 1)
  {
    return v4;
  }

  return result;
}

double RPTContentSizeInDirection(void *a1, uint64_t a2)
{
  v2 = a2 & 0xFFFFFFFFFFFFFFFELL;
  [a1 contentSize];
  if (v2 != 2)
  {
    return v4;
  }

  return result;
}

uint64_t RPTPredominantAxisOfContentOf(void *a1)
{
  v1 = a1;
  if (![v1 _contentScrollsAlongXAxis] || (objc_msgSend(v1, "_contentScrollsAlongYAxis") & 1) == 0)
  {
    if ([v1 _contentScrollsAlongXAxis] && !objc_msgSend(v1, "_contentScrollsAlongYAxis"))
    {
      v9 = 1;
      goto LABEL_12;
    }

    if ([v1 _contentScrollsAlongYAxis] && !objc_msgSend(v1, "_contentScrollsAlongXAxis"))
    {
      v9 = 0;
      goto LABEL_12;
    }
  }

  [v1 contentSize];
  v3 = v2;
  v5 = v4;
  [v1 bounds];
  v8 = fmax(v3 - v6, v5 - v7) > 0.0;
  v9 = v3 - v6 > v5 - v7 && v8;
LABEL_12:

  return v9;
}

uint64_t RPTDefaultScrollDirection(void *a1)
{
  v1 = a1;
  v2 = RPTPredominantAxisOfContentOf(v1);
  [v1 contentOffset];
  v4 = v3;
  v6 = v5;
  [v1 contentSize];
  v8 = v7;
  v10 = v9;

  v11 = 2;
  v12 = 3;
  if (v2)
  {
    v13 = v8;
  }

  else
  {
    v12 = 0;
    v11 = 1;
    v13 = v10;
  }

  if (v2)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (v14 >= v13 * 0.5)
  {
    return v12;
  }

  else
  {
    return v11;
  }
}

uint64_t RPTOppositeDirectionFrom(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return 1;
  }

  else
  {
    return qword_261A288E8[a1 - 1];
  }
}

uint64_t _UIScrollDirectionFromRPTScrollDirection(uint64_t a1)
{
  if ((a1 - 1) >= 3)
  {
    return 4;
  }

  else
  {
    return 4 - a1;
  }
}

uint64_t _RPTScrollDirectionFromUIScrollDirection(uint64_t a1)
{
  if ((a1 - 1) > 5)
  {
    return 1;
  }

  else
  {
    return qword_261A28900[a1 - 1];
  }
}

double RPTCGRectGetMidpoint(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  MidX = CGRectGetMidX(*&a1);
  v10.origin.x = a1;
  v10.origin.y = a2;
  v10.size.width = a3;
  v10.size.height = a4;
  CGRectGetMidY(v10);
  return MidX;
}

double RPTCGPointAdvanceInDirectionByAmount(uint64_t a1, double result, double a3, double a4)
{
  v4 = result + a4;
  v5 = result - a4;
  if (a1 != 3)
  {
    v5 = result;
  }

  if (a1 != 2)
  {
    v4 = v5;
  }

  if (a1 > 1)
  {
    return v4;
  }

  return result;
}

double RPTCGRectGetMidpointAlongSide(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  if (a1 > 2)
  {
    if (a1 == 3)
    {
      MidX = CGRectGetMidX(*&a2);
      v13.origin.x = a2;
      v13.origin.y = a3;
      v13.size.width = a4;
      v13.size.height = a5;
      CGRectGetMaxY(v13);
      return MidX;
    }

    if (a1 == 4 || a1 == 5)
    {
      MinX = CGRectGetMidX(*&a2);
      goto LABEL_11;
    }
  }

  else
  {
    switch(a1)
    {
      case 0:
        MinX = CGRectGetMinX(*&a2);
        goto LABEL_11;
      case 1:
        MidX = CGRectGetMidX(*&a2);
        v14.origin.x = a2;
        v14.origin.y = a3;
        v14.size.width = a4;
        v14.size.height = a5;
        CGRectGetMinY(v14);
        return MidX;
      case 2:
        MinX = CGRectGetMaxX(*&a2);
LABEL_11:
        MidX = MinX;
        v12.origin.x = a2;
        v12.origin.y = a3;
        v12.size.width = a4;
        v12.size.height = a5;
        CGRectGetMidY(v12);
        break;
    }
  }

  return MidX;
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_261A20ED4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_261A23034(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v10;

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id makeRCPPlayerPlaybackOptions()
{
  v21 = *MEMORY[0x277D85DE8];
  v0 = objc_alloc_init(getRCPPlayerPlaybackOptionsClass());
  if (_RPTTestRunnerEnableEventDeliverySync_onceToken != -1)
  {
    makeRCPPlayerPlaybackOptions_cold_1();
  }

  [v0 setLinkEventDeliveryToDisplayRefreshRate:_RPTTestRunnerEnableEventDeliverySync_enable];
  v1 = RPTLogTestRunning();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    v2 = [v0 valueForKeyPath:@"playbackSpeedFactor"];
    v3 = [v0 valueForKeyPath:@"minDelayBetweenSends"];
    v4 = [v0 valueForKeyPath:@"useVirtualHIDServices"];
    v5 = [v0 valueForKeyPath:@"useHIDEventTimestampsForDelivery"];
    v6 = [v0 valueForKeyPath:@"ignoreSenderProperties"];
    v7 = [v0 valueForKeyPath:@"transform"];
    v9 = 138544642;
    v10 = v2;
    v11 = 2114;
    v12 = v3;
    v13 = 2114;
    v14 = v4;
    v15 = 2114;
    v16 = v5;
    v17 = 2114;
    v18 = v6;
    v19 = 2114;
    v20 = v7;
    _os_log_impl(&dword_261A17000, v1, OS_LOG_TYPE_DEFAULT, "RPT: Make RCPPlayerPlaybackOptions\n\tplaybackSpeedFactor: %{public}@\n\tminDelayBetweenSends: %{public}@\n\tuseVirtualHIDServices: %{public}@\n\tuseHIDEventTimestampsForDelivery: %{public}@\n\tignoreSenderProperties: %{public}@transform: %{public}@", &v9, 0x3Eu);
  }

  return v0;
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x2821115C8](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectIntersection(CGRect r1, CGRect r2)
{
  MEMORY[0x2821115D8](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

void operator delete(void *__p)
{
    ;
  }
}

void operator new()
{
    ;
  }
}