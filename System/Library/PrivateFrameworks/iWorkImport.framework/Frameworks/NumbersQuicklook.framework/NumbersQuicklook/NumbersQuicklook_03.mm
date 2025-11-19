void sub_275F2F4A8(void *a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v6 = a3;
  v9 = v6;
  if (*(*(a1[6] + 8) + 24) >= a1[8])
  {
    *a4 = 1;
  }

  v10 = a1[4];
  if (v6)
  {
    objc_msgSend_format(v6, v7, v8);
  }

  else
  {
    memset(v21, 0, sizeof(v21));
  }

  v11 = TSCEFormat::tskFormat(v21);
  v13 = objc_msgSend_dataFormatterFromFormat_in_(v10, v12, v11, a1[5]);

  if (v13)
  {
    ++*(*(a1[6] + 8) + 24);
  }

  v15 = *(a1[7] + 8);
  v18 = *(v15 + 40);
  v16 = (v15 + 40);
  v17 = v18;
  if (v18)
  {
    if ((objc_msgSend_isCompatibleWithDataFormatter_(v17, v14, v13) & 1) == 0)
    {
      v19 = *(a1[7] + 8);
      v20 = *(v19 + 40);
      *(v19 + 40) = 0;

      *a4 = 1;
    }
  }

  else
  {
    objc_storeStrong(v16, v13);
  }
}

void sub_275F2F5E8(void *a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v6 = a3;
  v9 = v6;
  if (*(*(a1[6] + 8) + 24) >= a1[8])
  {
    *a4 = 1;
  }

  else
  {
    v10 = a1[4];
    if (v6)
    {
      objc_msgSend_format(v6, v7, v8);
    }

    else
    {
      memset(v21, 0, sizeof(v21));
    }

    v11 = TSCEFormat::tskFormat(v21);
    v13 = objc_msgSend_dataFormatterFromFormat_in_(v10, v12, v11, a1[5]);

    if (v13)
    {
      ++*(*(a1[6] + 8) + 24);
    }

    v15 = *(a1[7] + 8);
    v18 = *(v15 + 40);
    v16 = (v15 + 40);
    v17 = v18;
    if (v18)
    {
      if ((objc_msgSend_isCompatibleWithDataFormatter_(v17, v14, v13) & 1) == 0)
      {
        v19 = *(a1[7] + 8);
        v20 = *(v19 + 40);
        *(v19 + 40) = 0;

        *a4 = 1;
      }
    }

    else
    {
      objc_storeStrong(v16, v13);
    }
  }
}

void sub_275F2FAD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, id a31)
{
  _Block_object_dispose(&a22, 8);

  _Block_object_dispose(&a26, 8);
  _Unwind_Resume(a1);
}

void sub_275F2FBA4(void *a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  v8 = v5;
  if (*(*(a1[6] + 8) + 24) >= a1[8])
  {
    *a3 = 1;
  }

  if ((objc_msgSend_isNil(v5, v6, v7) & 1) == 0)
  {
    v11 = a1[4];
    if (v8)
    {
      objc_msgSend_format(v8, v9, v10);
    }

    else
    {
      memset(v22, 0, sizeof(v22));
    }

    v12 = TSCEFormat::tskFormat(v22);
    v14 = objc_msgSend_dataFormatterFromFormat_in_(v11, v13, v12, a1[5]);

    if (v14)
    {
      ++*(*(a1[6] + 8) + 24);
    }

    v16 = *(a1[7] + 8);
    v19 = *(v16 + 40);
    v17 = (v16 + 40);
    v18 = v19;
    if (v19)
    {
      if ((objc_msgSend_isCompatibleWithDataFormatter_(v18, v15, v14) & 1) == 0)
      {
        v20 = *(a1[7] + 8);
        v21 = *(v20 + 40);
        *(v20 + 40) = 0;

        *a3 = 1;
      }
    }

    else
    {
      objc_storeStrong(v17, v14);
    }
  }
}

void sub_275F2FF6C(CGContext *a1, CGColor *a2, int a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7)
{
  v17 = *MEMORY[0x277D85DE8];
  CGContextSaveGState(a1);
  if (a3)
  {
    v14 = qword_280A3DF68;
    if (!qword_280A3DF68)
    {
      v16[0] = xmmword_275F5EF18;
      v16[1] = unk_275F5EF28;
      DeviceRGB = CGColorSpaceCreateDeviceRGB();
      qword_280A3DF68 = CGColorCreate(DeviceRGB, v16);
      CFRelease(DeviceRGB);
      v14 = qword_280A3DF68;
    }

    v18.width = 0.0;
    v18.height = 2.0;
    CGContextSetShadowWithColor(a1, v18, 5.0, v14);
  }

  CGContextSetFillColorWithColor(a1, a2);
  v19.origin.x = a4;
  v19.origin.y = a5;
  v19.size.width = a6;
  v19.size.height = a7;
  CGContextFillRect(a1, v19);
  CGContextRestoreGState(a1);
}

void sub_275F311E0(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_selectionPathForArchiving(*(*(a1 + 32) + 32), a2, a3);
  v5 = *(a1 + 32);
  v6 = *(v5 + 32);
  *(v5 + 32) = v4;
}

void sub_275F31490(_Unwind_Exception *a1)
{
  if (!v4)
  {
  }

  _Unwind_Resume(a1);
}

void sub_275F31ADC(uint64_t a1, const char *a2)
{
  v2 = objc_msgSend_newExportableDocumentTypesForFlag_(*(a1 + 32), a2, 94);
  v3 = qword_280A3DF98;
  qword_280A3DF98 = v2;
}

void sub_275F32E94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_275F336C4(uint64_t a1, uint64_t a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = objc_loadWeakRetained((a1 + 48));
  objc_msgSend_processHyperlinksForCanvas_withContext_andImager_isFitToSheet_(WeakRetained, v8, v5, *(a1 + 56), v7, 1);
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v9 = *(a1 + 32);
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v15, v19, 16);
  if (v12)
  {
    v13 = *v16;
    do
    {
      v14 = 0;
      do
      {
        if (*v16 != v13)
        {
          objc_enumerationMutation(v9);
        }

        objc_msgSend_drawOverlayContentInContext_(*(*(&v15 + 1) + 8 * v14++), v11, a2, v15);
      }

      while (v12 != v14);
      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v11, &v15, v19, 16);
    }

    while (v12);
  }
}

void sub_275F33844(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = *(a1 + 32);
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v10, v14, 16);
  if (v7)
  {
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v4);
        }

        objc_msgSend_drawContentForAdditionalPage_inContext_(*(*(&v10 + 1) + 8 * v9++), v6, *(a1 + 40), a2, v10);
      }

      while (v7 != v9);
      v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v6, &v10, v14, 16);
    }

    while (v7);
  }
}

void sub_275F33E2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_275F33E48(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 3;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 8 * a2;
    }
  }

  else
  {
    sub_275F360C4(a1, a2 - v2);
  }
}

void sub_275F34078(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  v18 = v16;

  _Unwind_Resume(a1);
}

void sub_275F340C4(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_initWeak(&location, v3);
  objc_msgSend_setIsPrinting_(v3, v4, 1);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_275F341C8;
  v6[3] = &unk_27A6A3218;
  objc_copyWeak(&v7, (a1 + 32));
  objc_copyWeak(&v8, &location);
  objc_msgSend_setPostRenderAction_(v3, v5, v6);
  objc_destroyWeak(&v8);
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void sub_275F34198(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v3 - 40));

  _Unwind_Resume(a1);
}

void sub_275F341C8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = objc_loadWeakRetained((a1 + 40));
  objc_msgSend_processHyperlinksForCanvas_withContext_andImager_isFitToSheet_(WeakRetained, v7, v5, a2, v6, 0);
}

uint64_t sub_275F36048(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_275F07B38(result, a4);
  }

  return result;
}

void sub_275F360A8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_275F360C4(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 8 * a2);
      v5 += 8 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 3);
    if (v8 >> 61)
    {
      sub_275F07904();
    }

    v9 = v4 - v6;
    if (v9 >> 2 > v8)
    {
      v8 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      sub_275F07A74(a1, v10);
    }

    v11 = (8 * (v7 >> 3));
    bzero(v11, 8 * a2);
    memcpy(0, v6, v7);
    v12 = *a1;
    *a1 = 0;
    *(a1 + 8) = &v11[8 * a2];
    *(a1 + 16) = 0;
    if (v12)
    {

      operator delete(v12);
    }
  }
}

void sub_275F37090(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_275F370C4(uint64_t a1, void *a2)
{
  result = a2;
  *(*(*(a1 + 32) + 8) + 40) = result;
  return result;
}

void sub_275F370F4(uint64_t a1, const char *a2)
{
  v3 = objc_msgSend_selectionForSheet_paginated_(TNSheetSelection, a2, *(*(*(a1 + 40) + 8) + 40), *(a1 + 48));
  objc_msgSend_setSelection_(*(a1 + 32), v4, v3);
  v5 = *(*(*(a1 + 40) + 8) + 40);
}

void sub_275F37A98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v11 = v10;

  _Unwind_Resume(a1);
}

id sub_275F37BC8()
{
  if (qword_280A3DFB0 != -1)
  {
    sub_275F4ABF8();
  }

  v1 = qword_280A3DFA8;

  return v1;
}

void sub_275F37C0C()
{
  v0 = MEMORY[0x277CCA8D8];
  v1 = objc_opt_class();
  v3 = objc_msgSend_bundleForClass_(v0, v2, v1);
  v4 = qword_280A3DFA8;
  qword_280A3DFA8 = v3;
}

void sub_275F38060(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = TNPageController;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_275F389C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_275F38A1C(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  if (objc_msgSend_isUsingStartPageNumber(v9, v6, v7))
  {
    *a4 = 1;
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) += objc_msgSend_p_pageCountForInfoProvider_(*(a1 + 32), v8, v9);
  }
}

void sub_275F38C9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_275F38CF8(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v11 = a2;
  *(*(*(a1 + 40) + 8) + 24) += objc_msgSend_p_pageCountForInfoProvider_(*(a1 + 32), v6, v11);
  LODWORD(a1) = objc_msgSend_isUsingStartPageNumber(v11, v7, v8);
  if (objc_msgSend_shouldBeDisplayed(v11, v9, v10) & a1)
  {
    *a4 = 1;
  }
}

void sub_275F38FAC(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_weakToStrongObjectsMapTable(MEMORY[0x277CCAB00], a2, a3);
  v4 = qword_280A3DFB8;
  qword_280A3DFB8 = v3;
}

void sub_275F3A708(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14)
{
  objc_sync_exit(v15);

  _Unwind_Resume(a1);
}

void sub_275F3A754(uint64_t a1, void *a2)
{
  v5 = a2;
  if ((objc_msgSend_containsObject_(*(a1 + 32), v3, v5) & 1) == 0)
  {
    objc_msgSend_addObject_(*(a1 + 40), v4, v5);
  }
}

void sub_275F3B460(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_msgSend_invalidate(v4, v5, v6);
  }
}

void sub_275F3B670(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], a2, a3);
  objc_msgSend_postNotificationName_object_(v5, v4, @"TNPageControllerAutoFitContentScaleDidChangeNotification", *(a1 + 32));
}

void sub_275F3B758(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = objc_msgSend_threadCollector(MEMORY[0x277D80630], a2, a3);
  objc_msgSend_registerChange_details_forChangeSource_(v5, v4, 10020, 0, *(a1 + 32));
}

void sub_275F3BF08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_275F3BF2C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v7 = a2;
  v8 = objc_opt_class();
  v11 = objc_msgSend_range(v7, v9, v10);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_275F3C09C;
  v19[3] = &unk_27A6A3350;
  v19[4] = *(a1 + 32);
  objc_msgSend_enumerateAttachmentsOfClass_inTextRange_usingBlock_(v7, v12, v8, v11, v12, v19);
  if (*(*(*(a1 + 32) + 8) + 24) & 1) != 0 || (v13 = objc_opt_class(), v16 = objc_msgSend_range(v7, v14, v15), v18[0] = MEMORY[0x277D85DD0], v18[1] = 3221225472, v18[2] = sub_275F3C0B4, v18[3] = &unk_27A6A3378, v18[4] = *(a1 + 32), objc_msgSend_enumerateAttachmentsOfClass_inTextRange_usingBlock_(v7, v17, v13, v16, v17, v18), (*(*(*(a1 + 32) + 8) + 24)))
  {
    *a5 = 1;
  }
}

uint64_t sub_275F3C09C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  *(*(*(result + 32) + 8) + 24) = 1;
  *a5 = 1;
  return result;
}

uint64_t sub_275F3C0B4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  *(*(*(result + 32) + 8) + 24) = 1;
  *a5 = 1;
  return result;
}

void sub_275F3C1A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  objc_sync_exit(v10);

  _Unwind_Resume(a1);
}

void sub_275F3C5D0(void **a1, const char *a2)
{
  v14 = objc_msgSend_p_pageLayoutAtCoordinate_(a1[4], a2, a2);
  isPagePlaceholderAtPageCoordinate = objc_msgSend_isPagePlaceholderAtPageCoordinate_(a1[4], v4, a2);
  objc_opt_class();
  if (isPagePlaceholderAtPageCoordinate == (objc_opt_isKindOfClass() & 1))
  {
    objc_msgSend_removeObject_(a1[5], v6, v14);
  }

  else
  {
    objc_msgSend_setObject_forPageCoordinate_(*(a1[4] + 10), v6, 0, a2);
    v8 = objc_msgSend_p_pageLayoutAtCoordinate_(a1[4], v7, a2);

    v14 = v8;
  }

  v11 = a1[6];
  v12 = objc_msgSend_parent(v14, v9, v10);

  if (v11 != v12)
  {
    objc_msgSend_addChild_(a1[6], v13, v14);
  }
}

void sub_275F3CD90(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_275F3D79C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, void *a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_275F16814(&a22, a23);

  _Unwind_Resume(a1);
}

void *sub_275F3DE00(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2 != a3)
  {
    v4 = 0;
    v5 = a2;
    do
    {
      v6 = v5[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v5[2];
          v8 = *v7 == v5;
          v5 = v7;
        }

        while (!v8);
      }

      ++v4;
      v5 = v7;
    }

    while (v7 != a3);
  }

  sub_275F3DE84(a1, a2, a3, v4);
  return a1;
}

uint64_t sub_275F3DE84(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_275F07B38(result, a4);
  }

  return result;
}

void sub_275F3DF14(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_275F3DF30(uint64_t result, uint64_t *a2, uint64_t (**a3)(uint64_t, uint64_t), uint64_t a4, char a5)
{
  v8 = result;
LABEL_2:
  v9 = v8;
LABEL_3:
  v10 = 1 - a4;
  while (1)
  {
    v8 = v9;
    v11 = v10;
    v12 = (a2 - v9) >> 3;
    if (v12 > 2)
    {
      break;
    }

    if (v12 < 2)
    {
      return result;
    }

    if (v12 == 2)
    {
      result = (*a3)(*(a2 - 1), v9->i64[0]);
      if (result)
      {
        v59 = v9->i64[0];
        v9->i64[0] = *(a2 - 1);
LABEL_98:
        *(a2 - 1) = v59;
        return result;
      }

      return result;
    }

LABEL_11:
    if (v12 <= 23)
    {
      if (a5)
      {

        return sub_275F3E774(v9, a2, a3);
      }

      else
      {

        return sub_275F3E83C(v9, a2, a3);
      }
    }

    if (v11 == 1)
    {
      if (v9 != a2)
      {

        return sub_275F3EE00(v9->i64, a2, a2, a3);
      }

      return result;
    }

    v13 = v12 >> 1;
    v14 = *a3;
    if (v12 >= 0x81)
    {
      v15 = v14(v8[v13], *v8);
      v16 = (*a3)(*(a2 - 1), v8[v13]);
      if (v15)
      {
        v17 = *v8;
        if (v16)
        {
          *v8 = *(a2 - 1);
          *(a2 - 1) = v17;
        }

        else
        {
          *v8 = v8[v13];
          v8[v13] = v17;
          if ((*a3)(*(a2 - 1)))
          {
            v25 = v8[v13];
            v8[v13] = *(a2 - 1);
            *(a2 - 1) = v25;
          }
        }
      }

      else if (v16)
      {
        v21 = v8[v13];
        v8[v13] = *(a2 - 1);
        *(a2 - 1) = v21;
        if ((*a3)(v8[v13], *v8))
        {
          v22 = *v8;
          *v8 = v8[v13];
          v8[v13] = v22;
        }
      }

      v26 = v13 - 1;
      v27 = (*a3)(v8[v13 - 1], v8[1]);
      v28 = (*a3)(*(a2 - 2), v8[v13 - 1]);
      if (v27)
      {
        v29 = v8[1];
        if (v28)
        {
          v8[1] = *(a2 - 2);
          *(a2 - 2) = v29;
        }

        else
        {
          v8[1] = v8[v26];
          v8[v26] = v29;
          if ((*a3)(*(a2 - 2)))
          {
            v33 = v8[v26];
            v8[v26] = *(a2 - 2);
            *(a2 - 2) = v33;
          }
        }
      }

      else if (v28)
      {
        v30 = v8[v26];
        v8[v26] = *(a2 - 2);
        *(a2 - 2) = v30;
        if ((*a3)(v8[v26], v8[1]))
        {
          v31 = v8[1];
          v8[1] = v8[v26];
          v8[v26] = v31;
        }
      }

      v34 = v13 + 1;
      v35 = (*a3)(v8[v13 + 1], v8[2]);
      v36 = (*a3)(*(a2 - 3), v8[v13 + 1]);
      if (v35)
      {
        v37 = v8[2];
        if (v36)
        {
          v8[2] = *(a2 - 3);
          *(a2 - 3) = v37;
        }

        else
        {
          v8[2] = v8[v34];
          v8[v34] = v37;
          if ((*a3)(*(a2 - 3)))
          {
            v40 = v8[v34];
            v8[v34] = *(a2 - 3);
            *(a2 - 3) = v40;
          }
        }
      }

      else if (v36)
      {
        v38 = v8[v34];
        v8[v34] = *(a2 - 3);
        *(a2 - 3) = v38;
        if ((*a3)(v8[v34], v8[2]))
        {
          v39 = v8[2];
          v8[2] = v8[v34];
          v8[v34] = v39;
        }
      }

      v41 = (*a3)(v8[v13], v8[v26]);
      v42 = (*a3)(v8[v34], v8[v13]);
      if (v41)
      {
        v43 = v8[v26];
        if (v42)
        {
          v8[v26] = v8[v34];
          v8[v34] = v43;
          v44 = v8[v13];
          goto LABEL_59;
        }

        v8[v26] = v8[v13];
        v8[v13] = v43;
        v47 = (*a3)(v8[v34]);
        v44 = v8[v13];
        if (v47)
        {
          v46 = v8[v34];
          v8[v13] = v46;
          v8[v34] = v44;
LABEL_58:
          v44 = v46;
        }
      }

      else
      {
        v44 = v8[v13];
        if (v42)
        {
          v8[v13] = v8[v34];
          v8[v34] = v44;
          v45 = (*a3)();
          v44 = v8[v13];
          if (v45)
          {
            v46 = v8[v26];
            v8[v26] = v44;
            v8[v13] = v46;
            goto LABEL_58;
          }
        }
      }

LABEL_59:
      v48 = *v8;
      *v8 = v44;
      v8[v13] = v48;
      if (a5)
      {
        goto LABEL_61;
      }

      goto LABEL_60;
    }

    v18 = v14(*v8, v8[v13]);
    v19 = (*a3)(*(a2 - 1), *v8);
    if (v18)
    {
      v20 = v8[v13];
      if (!v19)
      {
        v8[v13] = *v8;
        *v8 = v20;
        if ((*a3)(*(a2 - 1)))
        {
          v32 = *v8;
          *v8 = *(a2 - 1);
          *(a2 - 1) = v32;
        }

LABEL_38:
        if (a5)
        {
          goto LABEL_61;
        }

        goto LABEL_60;
      }

      v8[v13] = *(a2 - 1);
      *(a2 - 1) = v20;
      if (a5)
      {
        goto LABEL_61;
      }
    }

    else
    {
      if (!v19)
      {
        goto LABEL_38;
      }

      v23 = *v8;
      *v8 = *(a2 - 1);
      *(a2 - 1) = v23;
      if (!(*a3)(*v8, v8[v13]))
      {
        goto LABEL_38;
      }

      v24 = v8[v13];
      v8[v13] = *v8;
      *v8 = v24;
      if (a5)
      {
        goto LABEL_61;
      }
    }

LABEL_60:
    if (((*a3)(*(v8 - 1), *v8) & 1) == 0)
    {
      result = sub_275F3E8D8(v8, a2, a3);
      v9 = result;
      goto LABEL_66;
    }

LABEL_61:
    v49 = sub_275F3E9E8(v8, a2, a3);
    if ((v50 & 1) == 0)
    {
      goto LABEL_64;
    }

    v51 = sub_275F3EB04(v8, v49, a3);
    v9 = (v49 + 1);
    result = sub_275F3EB04(v49 + 1, a2, a3);
    if (result)
    {
      a4 = -v11;
      a2 = v49;
      if (v51)
      {
        return result;
      }

      goto LABEL_2;
    }

    v10 = v11 + 1;
    if (!v51)
    {
LABEL_64:
      result = sub_275F3DF30(v8, v49, a3, -v11, a5 & 1);
      v9 = (v49 + 1);
LABEL_66:
      a5 = 0;
      a4 = -v11;
      goto LABEL_3;
    }
  }

  if (v12 != 3)
  {
    if (v12 == 4)
    {

      return sub_275F3E620(v9, &v9->i64[1], v9[1].i64, a2 - 1, a3);
    }

    if (v12 == 5)
    {
      sub_275F3E620(v9, &v9->i64[1], v9[1].i64, &v9[1].i64[1], a3);
      result = (*a3)(*(a2 - 1), v9[1].i64[1]);
      if (!result)
      {
        return result;
      }

      v54 = v9[1].i64[1];
      v9[1].i64[1] = *(a2 - 1);
      *(a2 - 1) = v54;
      result = (*a3)(v9[1].i64[1], v9[1].i64[0]);
      if (!result)
      {
        return result;
      }

      v55 = v9[1].i64[0];
      v9[1].i64[0] = v9[1].i64[1];
      v9[1].i64[1] = v55;
      result = (*a3)();
      if (!result)
      {
        return result;
      }

      v57 = v9->i64[1];
      v56 = v9[1].i64[0];
      v58 = v9->i64[0];
      v9->i64[1] = v56;
      v9[1].i64[0] = v57;
      result = (*a3)(v56, v58);
      goto LABEL_91;
    }

    goto LABEL_11;
  }

  v52 = (*a3)(v9->i64[1], v9->i64[0]);
  result = (*a3)(*(a2 - 1), v9->i64[1]);
  if ((v52 & 1) == 0)
  {
    if (!result)
    {
      return result;
    }

    v60 = v9->i64[1];
    v9->i64[1] = *(a2 - 1);
    *(a2 - 1) = v60;
    result = (*a3)(v9->i64[1], v9->i64[0]);
LABEL_91:
    if (result)
    {
      *v9 = vextq_s8(*v9, *v9, 8uLL);
    }

    return result;
  }

  v53 = v9->i64[0];
  if (result)
  {
    v9->i64[0] = *(a2 - 1);
    *(a2 - 1) = v53;
    return result;
  }

  v9->i64[0] = v9->i64[1];
  v9->i64[1] = v53;
  result = (*a3)(*(a2 - 1));
  if (result)
  {
    v59 = v9->i64[1];
    v9->i64[1] = *(a2 - 1);
    goto LABEL_98;
  }

  return result;
}

uint64_t sub_275F3E620(void *a1, void *a2, void *a3, void *a4, unsigned int (**a5)(void))
{
  v10 = (*a5)(*a2, *a1);
  v11 = (*a5)(*a3, *a2);
  if (v10)
  {
    v12 = *a1;
    if (v11)
    {
      *a1 = *a3;
      *a3 = v12;
    }

    else
    {
      *a1 = *a2;
      *a2 = v12;
      if ((*a5)(*a3))
      {
        v15 = *a2;
        *a2 = *a3;
        *a3 = v15;
      }
    }
  }

  else if (v11)
  {
    v13 = *a2;
    *a2 = *a3;
    *a3 = v13;
    if ((*a5)(*a2, *a1))
    {
      v14 = *a1;
      *a1 = *a2;
      *a2 = v14;
    }
  }

  result = (*a5)(*a4, *a3);
  if (result)
  {
    v17 = *a3;
    *a3 = *a4;
    *a4 = v17;
    result = (*a5)(*a3, *a2);
    if (result)
    {
      v18 = *a2;
      *a2 = *a3;
      *a3 = v18;
      result = (*a5)(*a2, *a1);
      if (result)
      {
        v19 = *a1;
        *a1 = *a2;
        *a2 = v19;
      }
    }
  }

  return result;
}

uint64_t sub_275F3E774(uint64_t result, uint64_t *a2, uint64_t (**a3)(uint64_t, uint64_t))
{
  if (result != a2)
  {
    v4 = result;
    v5 = (result + 8);
    if ((result + 8) != a2)
    {
      v7 = 0;
      v8 = result;
      do
      {
        v10 = *v8;
        v9 = v8[1];
        v8 = v5;
        result = (*a3)(v9, v10);
        if (result)
        {
          v11 = *v8;
          v12 = v7;
          while (1)
          {
            *(v4 + v12 + 8) = *(v4 + v12);
            if (!v12)
            {
              break;
            }

            result = (*a3)(v11, *(v4 + v12 - 8));
            v12 -= 8;
            if ((result & 1) == 0)
            {
              v13 = (v4 + v12 + 8);
              goto LABEL_10;
            }
          }

          v13 = v4;
LABEL_10:
          *v13 = v11;
        }

        v5 = v8 + 1;
        v7 += 8;
      }

      while (v8 + 1 != a2);
    }
  }

  return result;
}

uint64_t sub_275F3E83C(uint64_t result, void *a2, uint64_t (**a3)(uint64_t, uint64_t))
{
  if (result != a2)
  {
    v4 = result;
    for (i = (result + 8); v4 + 1 != a2; i = v4 + 1)
    {
      v8 = *v4;
      v7 = v4[1];
      v4 = i;
      result = (*a3)(v7, v8);
      if (result)
      {
        v9 = *v4;
        v10 = v4;
        do
        {
          v11 = v10;
          v12 = *--v10;
          *v11 = v12;
          result = (*a3)(v9, *(v11 - 2));
        }

        while ((result & 1) != 0);
        *v10 = v9;
      }
    }
  }

  return result;
}

uint64_t *sub_275F3E8D8(uint64_t *a1, uint64_t *a2, uint64_t (**a3)(uint64_t, uint64_t))
{
  v4 = a2;
  v6 = *a1;
  if ((*a3)(*a1, *(a2 - 1)))
  {
    v7 = a1;
    do
    {
      v8 = v7[1];
      ++v7;
    }

    while (((*a3)(v6, v8) & 1) == 0);
  }

  else
  {
    v9 = a1 + 1;
    do
    {
      v7 = v9;
      if (v9 >= v4)
      {
        break;
      }

      ++v9;
    }

    while (!(*a3)(v6, *v7));
  }

  if (v7 < v4)
  {
    do
    {
      v10 = *--v4;
    }

    while (((*a3)(v6, v10) & 1) != 0);
  }

  while (v7 < v4)
  {
    v11 = *v7;
    *v7 = *v4;
    *v4 = v11;
    do
    {
      v12 = v7[1];
      ++v7;
    }

    while (!(*a3)(v6, v12));
    do
    {
      v13 = *--v4;
    }

    while (((*a3)(v6, v13) & 1) != 0);
  }

  if (v7 - 1 != a1)
  {
    *a1 = *(v7 - 1);
  }

  *(v7 - 1) = v6;
  return v7;
}

uint64_t *sub_275F3E9E8(uint64_t *a1, uint64_t *a2, uint64_t (**a3)(uint64_t, uint64_t))
{
  v6 = 0;
  v7 = *a1;
  do
  {
    v8 = (*a3)(a1[++v6], v7);
  }

  while ((v8 & 1) != 0);
  v9 = &a1[v6];
  v10 = &a1[v6 - 1];
  if (v6 == 1)
  {
    do
    {
      if (v9 >= a2)
      {
        break;
      }

      v12 = *--a2;
    }

    while (((*a3)(v12, v7) & 1) == 0);
  }

  else
  {
    do
    {
      v11 = *--a2;
    }

    while (!(*a3)(v11, v7));
  }

  if (v9 < a2)
  {
    v13 = &a1[v6];
    v14 = a2;
    do
    {
      v15 = *v13;
      *v13 = *v14;
      *v14 = v15;
      do
      {
        v16 = v13[1];
        ++v13;
      }

      while (((*a3)(v16, v7) & 1) != 0);
      do
      {
        v17 = *--v14;
      }

      while (!(*a3)(v17, v7));
    }

    while (v13 < v14);
    v10 = v13 - 1;
  }

  if (v10 != a1)
  {
    *a1 = *v10;
  }

  *v10 = v7;
  return v10;
}

BOOL sub_275F3EB04(void *a1, void *a2, unsigned int (**a3)(uint64_t))
{
  v6 = a2 - a1;
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        v14 = (*a3)(a1[1], *a1);
        v15 = (*a3)(*(a2 - 1), a1[1]);
        if (v14)
        {
          v16 = *a1;
          if (v15)
          {
            *a1 = *(a2 - 1);
            *(a2 - 1) = v16;
            return 1;
          }

          *a1 = a1[1];
          a1[1] = v16;
          if (!(*a3)(*(a2 - 1)))
          {
            return 1;
          }

          v7 = a1[1];
          a1[1] = *(a2 - 1);
          goto LABEL_6;
        }

        if (!v15)
        {
          return 1;
        }

        v21 = a1[1];
        a1[1] = *(a2 - 1);
        *(a2 - 1) = v21;
        v13 = (*a3)(a1[1], *a1);
        break;
      case 4:
        sub_275F3E620(a1, a1 + 1, a1 + 2, a2 - 1, a3);
        return 1;
      case 5:
        sub_275F3E620(a1, a1 + 1, a1 + 2, a1 + 3, a3);
        if (!(*a3)(*(a2 - 1), a1[3]))
        {
          return 1;
        }

        v8 = a1[3];
        a1[3] = *(a2 - 1);
        *(a2 - 1) = v8;
        if (!(*a3)(a1[3], a1[2]))
        {
          return 1;
        }

        v9 = a1[2];
        a1[2] = a1[3];
        a1[3] = v9;
        if (!(*a3)())
        {
          return 1;
        }

        v11 = a1[1];
        v10 = a1[2];
        v12 = *a1;
        a1[1] = v10;
        a1[2] = v11;
        v13 = (*a3)(v10, v12);
        break;
      default:
        goto LABEL_17;
    }

    if (v13)
    {
      *a1 = vextq_s8(*a1, *a1, 8uLL);
    }

    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    if ((*a3)(*(a2 - 1), *a1))
    {
      v7 = *a1;
      *a1 = *(a2 - 1);
LABEL_6:
      *(a2 - 1) = v7;
    }

    return 1;
  }

LABEL_17:
  v17 = (*a3)(a1[1], *a1);
  v18 = a1 + 2;
  v19 = (*a3)(a1[2], a1[1]);
  if (v17)
  {
    v20 = *a1;
    if (v19)
    {
      *a1 = a1[2];
      a1[2] = v20;
    }

    else
    {
      v23 = a1[2];
      *a1 = a1[1];
      a1[1] = v20;
      if ((*a3)(v23))
      {
        *(a1 + 1) = vextq_s8(*(a1 + 1), *(a1 + 1), 8uLL);
      }
    }
  }

  else if (v19)
  {
    v22 = a1[1];
    a1[1] = a1[2];
    a1[2] = v22;
    if ((*a3)())
    {
      *a1 = vextq_s8(*a1, *a1, 8uLL);
    }
  }

  v24 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v25 = 0;
  v26 = 0;
  while (1)
  {
    if ((*a3)(*v24, *v18))
    {
      v27 = *v24;
      v28 = v25;
      while (1)
      {
        v29 = a1 + v28;
        *(a1 + v28 + 24) = *(a1 + v28 + 16);
        if (v28 == -16)
        {
          break;
        }

        v28 -= 8;
        if (((*a3)(v27, *(v29 + 1)) & 1) == 0)
        {
          v30 = (a1 + v28 + 24);
          goto LABEL_40;
        }
      }

      v30 = a1;
LABEL_40:
      *v30 = v27;
      if (++v26 == 8)
      {
        return v24 + 1 == a2;
      }
    }

    v18 = v24;
    v25 += 8;
    if (++v24 == a2)
    {
      return 1;
    }
  }
}

uint64_t *sub_275F3EE00(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (**a4)(uint64_t, uint64_t))
{
  if (a1 != a2)
  {
    v8 = a2 - a1;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[v9];
      do
      {
        sub_275F3EF4C(a1, a4, v8, v11--);
        --v10;
      }

      while (v10);
    }

    v12 = a2;
    if (a2 != a3)
    {
      v12 = a2;
      do
      {
        if ((*a4)(*v12, *a1))
        {
          v13 = *v12;
          *v12 = *a1;
          *a1 = v13;
          sub_275F3EF4C(a1, a4, v8, a1);
        }

        ++v12;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      v14 = a2 - 1;
      do
      {
        v15 = *a1;
        v16 = sub_275F3F074(a1, a4, v8);
        if (v14 == v16)
        {
          *v16 = v15;
        }

        else
        {
          *v16 = *v14;
          *v14 = v15;
          sub_275F3F120(a1, (v16 + 1), a4, v16 + 1 - a1);
        }

        --v14;
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

uint64_t sub_275F3EF4C(uint64_t result, unsigned int (**a2)(void, void), uint64_t a3, void *a4)
{
  v4 = a3 - 2;
  if (a3 >= 2)
  {
    v5 = a4;
    v6 = result;
    v7 = v4 >> 1;
    if ((v4 >> 1) >= (a4 - result) >> 3)
    {
      v10 = (a4 - result) >> 2;
      v11 = v10 + 1;
      v12 = (result + 8 * (v10 + 1));
      v13 = v10 + 2;
      if (v10 + 2 < a3 && (*a2)(*v12, v12[1]))
      {
        ++v12;
        v11 = v13;
      }

      result = (*a2)(*v12, *v5);
      if ((result & 1) == 0)
      {
        v14 = *v5;
        do
        {
          v15 = v12;
          *v5 = *v12;
          if (v7 < v11)
          {
            break;
          }

          v16 = (2 * v11) | 1;
          v12 = (v6 + 8 * v16);
          if (2 * v11 + 2 < a3)
          {
            if ((*a2)(*v12, v12[1]))
            {
              ++v12;
              v16 = 2 * v11 + 2;
            }
          }

          result = (*a2)(*v12, v14);
          v5 = v15;
          v11 = v16;
        }

        while (!result);
        *v15 = v14;
      }
    }
  }

  return result;
}

void *sub_275F3F074(void *a1, unsigned int (**a2)(void, uint64_t), uint64_t a3)
{
  v6 = 0;
  v7 = (a3 - 2) / 2;
  do
  {
    v8 = &a1[v6];
    v9 = v8 + 1;
    v10 = (2 * v6) | 1;
    v11 = 2 * v6 + 2;
    if (v11 >= a3)
    {
      v6 = (2 * v6) | 1;
    }

    else
    {
      v13 = v8[2];
      v12 = v8 + 2;
      if ((*a2)(*(v12 - 1), v13))
      {
        v9 = v12;
        v6 = v11;
      }

      else
      {
        v6 = v10;
      }
    }

    *a1 = *v9;
    a1 = v9;
  }

  while (v6 <= v7);
  return v9;
}

uint64_t sub_275F3F120(uint64_t result, uint64_t a2, uint64_t (**a3)(uint64_t, uint64_t), uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v6 = result;
    v7 = v4 >> 1;
    v8 = (result + 8 * (v4 >> 1));
    v9 = (a2 - 8);
    result = (*a3)(*v8, *(a2 - 8));
    if (result)
    {
      v10 = *v9;
      do
      {
        v11 = v8;
        *v9 = *v8;
        if (!v7)
        {
          break;
        }

        v7 = (v7 - 1) >> 1;
        v8 = (v6 + 8 * v7);
        result = (*a3)(*v8, v10);
        v9 = v11;
      }

      while ((result & 1) != 0);
      *v11 = v10;
    }
  }

  return result;
}

void sub_275F3F484(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_275F3FDC0(uint64_t a1, const char *a2, uint64_t a3)
{
  if ((objc_msgSend_platformSupportsForms(TNDocumentRoot, a2, a3) & 1) == 0)
  {
    v4 = objc_msgSend_predicateWithBlock_(MEMORY[0x277CCAC30], v3, &unk_2884F6400);
    v5 = qword_280A3DFC8;
    qword_280A3DFC8 = v4;
  }
}

void sub_275F410E0(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_275F4176C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v11 = v10;

  _Unwind_Resume(a1);
}

void sub_275F419A4(uint64_t a1, const char *a2, uint64_t a3)
{
  v30 = *MEMORY[0x277D85DE8];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = objc_msgSend_mutableSheets(*(a1 + 32), a2, a3);
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v4, &v25, v29, 16);
  if (v6)
  {
    v7 = *v26;
    v8 = MEMORY[0x277D85DD0];
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v26 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v25 + 1) + 8 * i);
        objc_msgSend_addChild_(*(a1 + 40), v5, v10);
        v11 = *(a1 + 40);
        v14 = objc_msgSend_children(v11, v12, v13);
        v17 = objc_msgSend_count(v14, v15, v16);
        v19 = objc_msgSend_nodeAtIndex_(v11, v18, v17 - 1);

        v23[0] = v8;
        v23[1] = 3221225472;
        v23[2] = sub_275F41BAC;
        v23[3] = &unk_27A6A3438;
        v23[4] = v10;
        v20 = v19;
        v24 = v20;
        objc_msgSend_performBlockIgnoringModifications_(v20, v21, v23);
      }

      v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v5, &v25, v29, 16);
    }

    while (v6);
  }
}

void sub_275F41BAC(uint64_t a1, const char *a2, uint64_t a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = objc_msgSend_chartAndTableInfos(*(a1 + 32), a2, a3, 0);
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v10, v14, 16);
  if (v7)
  {
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v4);
        }

        objc_msgSend_addChild_(*(a1 + 40), v6, *(*(&v10 + 1) + 8 * v9++));
      }

      while (v7 != v9);
      v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v6, &v10, v14, 16);
    }

    while (v7);
  }
}

void sub_275F43564(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_object(a2, a2, a3);
  objc_msgSend_setCustomFormatListToUpgrade_(*(a1 + 32), v4, v5);
}

void sub_275F435E4(uint64_t a1, void *a2)
{
  v9 = a2;
  objc_msgSend_setCalculationEngine_(*(a1 + 32), v3, v9);
  v6 = objc_msgSend_calculationEngine(*(a1 + 32), v4, v5);
  objc_msgSend_clearLegacyGlobalIDs(v6, v7, v8);
}

void sub_275F4366C(uint64_t a1, const char *a2, uint64_t a3)
{
  v38 = *MEMORY[0x277D85DE8];
  v3 = objc_msgSend_mutableSheets(*(a1 + 32), a2, a3);
  objc_msgSend_count(v3, v4, v5);

  if (*(a1 + 48))
  {
    objc_msgSend_performHyperlinkUpgradesIfNecessaryForVersion_(*(a1 + 32), v6, *(a1 + 40));
  }

  v8 = *(a1 + 32);
  v9 = objc_msgSend_stylesheet(v8, v6, v7);
  objc_msgSend_upgradeStylesheetForSheetStyles_(v8, v10, v9);

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v13 = objc_msgSend_sheets(*(a1 + 32), v11, v12);
  v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, &v33, v37, 16);
  if (v17)
  {
    v18 = *v34;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v34 != v18)
        {
          objc_enumerationMutation(v13);
        }

        v20 = *(*(&v33 + 1) + 8 * i);
        v21 = objc_msgSend_style(v20, v15, v16);
        v22 = v21 == 0;

        if (v22)
        {
          objc_msgSend_willModifyForUpgrade(v20, v15, v16);
          v25 = objc_msgSend_stylesheet(*(a1 + 32), v23, v24);
          objc_opt_class();
          v27 = objc_msgSend_sheetStyleIDForPreset_(TNSheetStyle, v26, 0);
          v29 = objc_msgSend_cascadedStyleWithIdentifier_(v25, v28, v27);
          v30 = TSUDynamicCast();

          objc_msgSend_setStyle_(v20, v31, v30);
        }
      }

      v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v15, &v33, v37, 16);
    }

    while (v17);
  }
}

id sub_275F43E08(void *a1)
{
  v2 = a1[5];
  v3 = a1[6];
  *(v3 + 16) |= 0x80u;
  v4 = *(v3 + 104);
  if (!v4)
  {
    v5 = *(v3 + 8);
    if (v5)
    {
      v5 = *(v5 & 0xFFFFFFFFFFFFFFFELL);
    }

    v4 = MEMORY[0x277C90F00](v5);
    *(v3 + 104) = v4;
  }

  v6 = a1[4];
  v8.receiver = v2;
  v8.super_class = TNDocumentRoot;
  return objc_msgSendSuper2(&v8, sel_saveToArchive_archiver_, v4, v6);
}

void sub_275F44110(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_275F4413C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_275F44154(uint64_t a1, const char *a2)
{
  v8 = objc_msgSend_modelEnumeratorForObjectsPassingTest_(*(a1 + 32), a2, &unk_2884F6420);
  v5 = objc_msgSend_allObjects(v8, v3, v4);
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

uint64_t sub_275F441D8(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  v3 = TSUDynamicCast();
  v6 = objc_msgSend_chart(v3, v4, v5);
  v9 = objc_msgSend_wantsDeferredUpgradeOrImport(v6, v7, v8);

  return v9;
}

void sub_275F44244(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_275F44370(uint64_t a1, const char *a2, uint64_t a3)
{
  if (objc_msgSend_recalculationIsPaused(*(a1 + 32), a2, a3))
  {
    v5 = MEMORY[0x277D81150];
    v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TNDocumentRoot performDeferredUpgradeImportOperationsRequiringCalcEngine]_block_invoke");
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNDocumentRoot.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v8, v30, v7, 1137, 0, "calc engine must not be paused here");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v9, v10);
  }

  objc_msgSend_detachNewThreadSelector_toTarget_withObject_(MEMORY[0x277CCACC8], v4, sel_performDeferredUpgradeImportOperationsOnNewThreadForCharts_, *(a1 + 40), *(a1 + 48));
  isMainThread = objc_msgSend_isMainThread(MEMORY[0x277CCACC8], v11, v12);
  v16 = objc_msgSend_accessController(*(a1 + 32), v14, v15);

  if (!v16)
  {
    v19 = MEMORY[0x277D81150];
    v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "[TNDocumentRoot performDeferredUpgradeImportOperationsRequiringCalcEngine]_block_invoke");
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNDocumentRoot.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v22, v31, v21, 1143, 0, "nil access controller. Upcoming hang is likely.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24);
  }

  v32 = objc_msgSend_accessController(*(a1 + 32), v17, v18);
  v25 = qword_280A3DC08;
  v28 = objc_msgSend_distantFuture(MEMORY[0x277CBEAA8], v26, v27);
  objc_msgSend_waitOnIdentifier_untilDate_releaseReadWhileWaiting_(v32, v29, v25, v28, isMainThread);
}

void sub_275F44A68(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_275F44D78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

void sub_275F44DA4(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_p_previewImageWithImageSize_(*(a1 + 32), a2, a3, *(a1 + 48), *(a1 + 56));
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

uint64_t sub_275F4705C(void *a1, void *a2)
{
  v3 = a1;
  v5 = a2;
  if (v3 | v5)
  {
    isEqual = objc_msgSend_isEqual_(v3, v4, v5);
  }

  else
  {
    isEqual = 1;
  }

  return isEqual;
}

void sub_275F472D8(uint64_t a1, void *a2, void *a3)
{
  v56 = a2;
  v5 = a3;
  v8 = objc_msgSend_selectionPath(v5, v6, v7);
  if (!objc_msgSend_hasFormViewerSelection(v8, v9, v10))
  {
    v13 = objc_msgSend_sheetUIStates(*(a1 + 32), v11, v12);
    objc_msgSend_removeObjectForKey_(v13, v30, v56);
    goto LABEL_12;
  }

  v13 = objc_msgSend_formViewerSelection(v8, v11, v12);
  v16 = objc_msgSend_editModeSheetUIStates(*(a1 + 32), v14, v15);
  v18 = objc_msgSend_objectForKey_(v16, v17, v56);

  v21 = objc_msgSend_selectionPath(v18, v19, v20);
  if (objc_msgSend_hasFormViewerSelection(v21, v22, v23))
  {
    v26 = objc_msgSend_formViewerSelection(v21, v24, v25);
    v29 = objc_msgSend_recordIndex(v26, v27, v28);
  }

  else
  {
    if (!objc_msgSend_hasFormBuilderSelection(v21, v24, v25))
    {
      v35 = 0x7FFFFFFF;
      goto LABEL_9;
    }

    v26 = objc_msgSend_formBuilderSelection(v21, v31, v32);
    v29 = objc_msgSend_viewingRecordIndex(v26, v33, v34);
  }

  v35 = v29;

LABEL_9:
  if (v35 != objc_msgSend_recordIndex(v13, v31, v32))
  {
    v38 = objc_msgSend_editModeSheetUIStates(*(a1 + 32), v36, v37);
    objc_msgSend_removeObjectForKey_(v38, v39, v56);

    v40 = v5;
    v43 = objc_msgSend_sheetSelection(v8, v41, v42);
    v46 = objc_msgSend_sheet(v43, v44, v45);
    v48 = objc_msgSend_selectionForSheet_paginated_(TNSheetSelection, v47, v46, 0);

    v50 = objc_msgSend_selectionPathReplacingMostSpecificLocationOfSelection_withSelection_(v8, v49, v43, v48);
    objc_msgSend_setSelectionPath_(v40, v51, v50);
    v54 = objc_msgSend_sheetUIStates(*(a1 + 32), v52, v53);
    objc_msgSend_setObject_forKeyedSubscript_(v54, v55, v40, v56);
  }

LABEL_12:
}

void sub_275F47F60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12, void *a13, void *a14, void *a15, void *a16, void *a17, int a18, char a19)
{
  if (a19)
  {
  }

  if (!v21)
  {
  }

  _Unwind_Resume(a1);
}

void sub_275F482E8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  v7 = TSUCheckedDynamicCast();
  objc_opt_class();
  v8 = TSUCheckedDynamicCast();
  (*(*(a1 + 32) + 16))();
}

void sub_275F486F0(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_275F48800(uint64_t a1, void *a2)
{
  v13 = a2;
  objc_msgSend_clearVisibleRect(v13, v3, v4);
  objc_msgSend_clearPreviousVisibleRect(v13, v5, v6);
  LODWORD(v7) = *(a1 + 32);
  objc_msgSend_setViewScale_(v13, v8, v9, v7);
  LODWORD(v10) = *(a1 + 32);
  objc_msgSend_setPreviousViewScale_(v13, v11, v12, v10);
}

void sub_275F48CA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v10;

  _Unwind_Resume(a1);
}

uint64_t sub_275F48D74(uint64_t a1, int a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSP::Point::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

uint64_t sub_275F48E44(uint64_t a1, int a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSP::Size::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

uint64_t sub_275F48F14(uint64_t a1, int a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSK::SelectionPathArchive::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

uint64_t sub_275F48FE4(uint64_t a1, int a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSP::Reference::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

google::protobuf::internal *sub_275F490B4(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = sub_275EDC8F0(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

uint64_t sub_275F49184(uint64_t a1, int a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSP::UUID::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

google::protobuf::internal *sub_275F49254(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = sub_275EDDBF8(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

uint64_t sub_275F49324(uint64_t a1, int a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TST::SelectionArchive::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

google::protobuf::internal *sub_275F493F4(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = sub_275EED270(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

uint64_t sub_275F494C4(uint64_t a1, int a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSCH::ChartUIState::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

google::protobuf::internal *sub_275F49594(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = sub_275EDE460(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_275F49664(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v11 = a2;
  while (1)
  {
    if (sub_275EEF00C(a3, &v11))
    {
      return v11;
    }

    TagFallback = (v11 + 1);
    v6 = *v11;
    if ((*v11 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v7 = v6 + (*TagFallback << 7);
    v6 = v7 - 128;
    if ((*TagFallback & 0x80000000) == 0)
    {
      TagFallback = (v11 + 2);
LABEL_6:
      v11 = TagFallback;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v11, (v7 - 128));
    v11 = TagFallback;
    if (!TagFallback)
    {
      return TagFallback;
    }

    v6 = v9;
LABEL_7:
    if (!v6 || (v6 & 7) == 4)
    {
      break;
    }

    if ((*(a1 + 8) & 1) == 0)
    {
      sub_275EEF1DC((a1 + 8));
    }

    v11 = google::protobuf::internal::UnknownFieldParse();
    if (!v11)
    {
      return 0;
    }
  }

  *(a3 + 80) = v6 - 1;
  return TagFallback;
}

google::protobuf::internal *sub_275F49768(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = sub_275EDF1BC(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

uint64_t sub_275F49838(uint64_t a1, int a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSA::DocumentArchive::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

uint64_t sub_275F49908(uint64_t a1, int a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSWP::ShapeInfoArchive::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

uint64_t sub_275F499D8(uint64_t a1, int a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSD::EdgeInsetsArchive::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

uint64_t sub_275F49AA8(uint64_t a1, int a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSD::FillArchive::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

uint64_t sub_275F49B78(uint64_t a1, int a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSS::StyleArchive::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

google::protobuf::internal *sub_275F49C48(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = sub_275EE8324(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_275F49D18(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = sub_275EE6314(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

uint64_t sub_275F49DE8(uint64_t a1, int a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSP::CFUUIDArchive::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

uint64_t sub_275F49EB8(uint64_t a1, int a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSS::ThemeArchive::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

uint64_t sub_275F49F88(uint64_t a1, int a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSCE::FormulaArchive::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

uint64_t sub_275F4A058(uint64_t a1, int a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSCH::ChartMediatorArchive::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

google::protobuf::internal *sub_275F4A128(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = sub_275EEADC4(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

uint64_t sub_275F4A1F8(uint64_t a1, int a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSCE::RangeReferenceArchive::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

uint64_t sub_275F4A2C8(uint64_t a1, int a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSCH::ChartSelectionArchive::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

uint64_t sub_275F4A398(uint64_t a1, int a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSD::DrawableSelectionArchive::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

uint64_t sub_275F4A468(uint64_t a1, int a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSCK::CommandActivityBehaviorArchive::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

uint64_t sub_275F4A538(uint64_t *a1)
{
  if (*a1)
  {
    v1 = ((*a1 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  else
  {
    v1 = sub_275EEF1DC(a1);
  }

  return google::protobuf::UnknownFieldSet::AddVarint(v1);
}

uint64_t sub_275F4A57C(uint64_t *a1)
{
  if (*a1)
  {
    v1 = ((*a1 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  else
  {
    v1 = sub_275EEF1DC(a1);
  }

  return google::protobuf::UnknownFieldSet::AddVarint(v1);
}

uint64_t sub_275F4A5C0(uint64_t *a1)
{
  if (*a1)
  {
    v1 = ((*a1 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  else
  {
    v1 = sub_275EEF1DC(a1);
  }

  return google::protobuf::UnknownFieldSet::AddVarint(v1);
}

uint64_t sub_275F4AAC8(uint64_t a1, int a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSDSOS::SpecFillArchive::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

CGRect CGRectApplyAffineTransform(CGRect rect, CGAffineTransform *t)
{
  MEMORY[0x282111558](t, rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectIntegral(CGRect rect)
{
  MEMORY[0x2821115D0](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CGRectUnion(CGRect r1, CGRect r2)
{
  MEMORY[0x282111618](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

uint64_t __C()
{
  return MEMORY[0x2821EB450]();
}

{
  return MEMORY[0x2821EB458]();
}

{
  return MEMORY[0x2821EB460]();
}

{
  return MEMORY[0x2821EB468]();
}

{
  return MEMORY[0x2821EB470]();
}

{
  return MEMORY[0x2821E9630]();
}

{
  return MEMORY[0x2821E96F8]();
}

uint64_t String()
{
  return MEMORY[0x2821EB0D8]();
}

{
  return MEMORY[0x2821EB0E0]();
}

{
  return MEMORY[0x2821EB118]();
}

uint64_t TSCEReplaceFormulaOptions::TSCEReplaceFormulaOptions()
{
  return MEMORY[0x2821EB5E8]();
}

{
  return MEMORY[0x2821EB5F0]();
}

uint64_t google::protobuf::internal::ArenaStringPtr::Set()
{
  return MEMORY[0x2821EAD00]();
}

{
  return MEMORY[0x2821EAD08]();
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void *__cdecl operator new(size_t __sz)
{
    ;
  }
}

void operator new()
{
    ;
  }
}