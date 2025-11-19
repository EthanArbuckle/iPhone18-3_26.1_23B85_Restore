void sub_2213BCA70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2213BCC10(id *a1)
{

  TSCEASTRewriter::~TSCEASTRewriter(a1);
}

void sub_2213BCC4C(id *a1)
{
  TSCEASTRewriter::~TSCEASTRewriter(a1);

  JUMPOUT(0x223DA1450);
}

double sub_2213BCC9C(__n128 a1, __n128 a2)
{
  if (a1.n128_f64[0] < 1.0 || a2.n128_f64[0] < 0.0)
  {
    sub_22137A674("chdtrc", 1);
    return 0.0;
  }

  else
  {
    a1.n128_f64[0] = a1.n128_f64[0] * 0.5;
    a2.n128_f64[0] = a2.n128_f64[0] * 0.5;

    return sub_2213BCD48(a1, a2);
  }
}

double sub_2213BCCF4(double a1, double a2)
{
  if (a1 >= 1.0 && (a2 >= 0.0 ? (v2 = a2 <= 1.0) : (v2 = 0), v2))
  {
    v3 = sub_2211F2F2C(a1 * 0.5, a2);
    return v3 + v3;
  }

  else
  {
    sub_22137A674("chdtri", 1);
    return 0.0;
  }
}

double sub_2213BCD48(__n128 a1, __n128 a2)
{
  v2 = a2.n128_f64[0];
  v3 = 1.0;
  if (a1.n128_f64[0] > 0.0 && v2 > 0.0)
  {
    v4 = a1.n128_f64[0];
    if (v2 < 1.0 || v2 < a1.n128_f64[0])
    {
      a2.n128_f64[0] = v2;
      return 1.0 - sub_2213BCEA8(a1, a2);
    }

    else
    {
      v6 = -(v2 - a1.n128_f64[0] * log(v2));
      v7 = v6 - sub_221289DC8(v4);
      v3 = 0.0;
      if (v7 >= -*&qword_27CFB4C58)
      {
        v8 = 1.0 - v4;
        v9 = 1.0 - v4 + v2 + 1.0;
        v10 = v2 + 1.0;
        v11 = v9 * v2;
        v12 = (v2 + 1.0) / (v9 * v2);
        v13 = 0.0;
        v14 = 1.0;
        do
        {
          v13 = v13 + 1.0;
          v8 = v8 + 1.0;
          v9 = v9 + 2.0;
          v15 = v10 * v9 - v14 * (v13 * v8);
          v16 = v11 * v9 - v2 * (v13 * v8);
          if (v16 == 0.0)
          {
            v17 = 1.0;
          }

          else
          {
            v17 = fabs((v12 - v15 / v16) / (v15 / v16));
            v12 = v15 / v16;
          }

          if (fabs(v15) > 4.50359963e15)
          {
            v10 = v10 * 2.22044605e-16;
            v15 = v15 * 2.22044605e-16;
            v11 = v11 * 2.22044605e-16;
            v16 = v16 * 2.22044605e-16;
          }

          v2 = v11;
          v14 = v10;
          v10 = v15;
          v11 = v16;
        }

        while (v17 > *&qword_27CFB4C50);
        return exp(v7) * v12;
      }
    }
  }

  return v3;
}

double sub_2213BCEA8(__n128 a1, __n128 a2)
{
  v2 = 0.0;
  if (a1.n128_f64[0] > 0.0)
  {
    v3 = a2.n128_f64[0];
    if (a2.n128_f64[0] > 0.0)
    {
      v4 = a1.n128_f64[0];
      if (a2.n128_f64[0] <= 1.0 || a2.n128_f64[0] <= a1.n128_f64[0])
      {
        v6 = -(a2.n128_f64[0] - a1.n128_f64[0] * log(a2.n128_f64[0]));
        v7 = v6 - sub_221289DC8(v4);
        if (v7 >= -*&qword_27CFB4C58)
        {
          v8 = 1.0;
          v9 = 1.0;
          v10 = v4;
          do
          {
            v10 = v10 + 1.0;
            v9 = v9 * (v3 / v10);
            v8 = v8 + v9;
          }

          while (v9 / v8 > *&qword_27CFB4C50);
          return exp(v7) * v8 / v4;
        }
      }

      else
      {
        return 1.0 - sub_2213BCD48(a1, a2);
      }
    }
  }

  return v2;
}

void sub_2213BD3D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = TSCEFormulaOwnerDependencies;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_2213BEC40(uint64_t a1, void *a2)
{
  v14 = a2;
  v7 = objc_msgSend_key(v14, v3, v4, v5, v6);
  v11 = objc_msgSend_copyWithContext_(v14, v8, *(a1 + 40), v9, v10);
  objc_msgSend_setObject_atIndexedSubscript_(*(a1 + 32), v12, v11, v7, v13);
}

void sub_2213BF684(uint64_t a1, unint64_t a2, _BYTE *a3, uint64_t a4, uint64_t a5)
{
  if (HIDWORD(a2))
  {
    TSUSetCrashReporterInfo();
    v15 = MEMORY[0x277D81150];
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "[TSTTableDataListSegment split]_block_invoke", v17, v18, "[TSTTableDataListSegment split]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataListSegment.mm", 123);
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataListSegment.mm", v21, v22);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v24, v19, v23, 123, 1, "Bad key during split enumeration!");

    TSUCrashBreakpoint();
    abort();
  }

  v25 = a2;
  v8 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 32), a2, a2, a4, a5);
  objc_msgSend_setObject_atIndexedSubscript_(*(a1 + 40), v9, v8, a2, v10);
  *(*(a1 + 32) + 112) -= objc_msgSend_byteSizeForArchiving(v8, v11, v12, v13, v14);
  sub_221387BB4((*(a1 + 32) + 64), &v25);
  if (*(*(a1 + 32) + 112) <= 0x2000000uLL)
  {
    *a3 = 1;
  }
}

void sub_2213BFDD4(uint64_t a1, void *a2)
{
  v10 = a2;
  v7 = objc_msgSend_key(v10, v3, v4, v5, v6);
  objc_msgSend_setObject_atIndexedSubscript_(*(a1 + 32), v8, v10, v7, v9);
}

void sub_2213C006C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v17 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 32), a2, a2, a4, a5);
  v8 = *(a1 + 48);
  v9 = *(v8 + 40);
  if (!v9)
  {
    goto LABEL_6;
  }

  v10 = *(v8 + 32);
  v11 = *v9;
  if (v10 < *v9)
  {
    *(v8 + 32) = v10 + 1;
    objc_msgSend_encodeToArchive_archiver_(v17, v6, *&v9[2 * v10 + 2], *(a1 + 40), v7);
    goto LABEL_8;
  }

  if (v11 == *(v8 + 36))
  {
LABEL_6:
    google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v8 + 24));
    v9 = *(v8 + 40);
    v11 = *v9;
  }

  *v9 = v11 + 1;
  v12 = google::protobuf::Arena::CreateMaybeMessage<TST::TableDataList_ListEntry>(*(v8 + 24));
  v13 = *(v8 + 32);
  v14 = *(v8 + 40) + 8 * v13;
  *(v8 + 32) = v13 + 1;
  *(v14 + 8) = v12;
  objc_msgSend_encodeToArchive_archiver_(v17, v15, v12, *(a1 + 40), v16);
LABEL_8:
}

void sub_2213C0318(uint64_t a1, void *a2)
{
  v10 = a2;
  v7 = objc_msgSend_key(v10, v3, v4, v5, v6);
  objc_msgSend_setObject_atIndexedSubscript_(*(a1 + 32), v8, v10, v7, v9);
}

void sub_2213C044C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v17 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 32), a2, a2, a4, a5);
  v8 = *(a1 + 48);
  v9 = *(v8 + 40);
  if (!v9)
  {
    goto LABEL_6;
  }

  v10 = *(v8 + 32);
  v11 = *v9;
  if (v10 < *v9)
  {
    *(v8 + 32) = v10 + 1;
    objc_msgSend_encodeToArchive_archiver_(v17, v6, *&v9[2 * v10 + 2], *(a1 + 40), v7);
    goto LABEL_8;
  }

  if (v11 == *(v8 + 36))
  {
LABEL_6:
    google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v8 + 24));
    v9 = *(v8 + 40);
    v11 = *v9;
  }

  *v9 = v11 + 1;
  v12 = google::protobuf::Arena::CreateMaybeMessage<TST::TableDataList_ListEntry>(*(v8 + 24));
  v13 = *(v8 + 32);
  v14 = *(v8 + 40) + 8 * v13;
  *(v8 + 32) = v13 + 1;
  *(v14 + 8) = v12;
  objc_msgSend_encodeToArchive_archiver_(v17, v15, v12, *(a1 + 40), v16);
LABEL_8:
}

uint64_t *sub_2213C0608(void *a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % v3.i32[0];
    }
  }

  else
  {
    v5 = (v3.i32[0] - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 4) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void sub_2213C0858(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_221087E7C(va);
  _Unwind_Resume(a1);
}

void (**sub_2213C10A0(uint64_t a1))(void)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v2 = v2[2]();
    v1 = vars8;
  }

  return v2;
}

void (**sub_2213C12BC(uint64_t a1))(void)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v2 = v2[2]();
    v1 = vars8;
  }

  return v2;
}

void sub_2213C1714(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, void *a15, void *a16, void *a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, void *a32, uint64_t a33, void *__p, uint64_t a35)
{
  if (__p)
  {
    operator delete(__p);
  }

  v40 = *(v38 - 128);
  if (v40)
  {
    *(v38 - 120) = v40;
    operator delete(v40);
  }

  if (a19)
  {
    operator delete(a19);
  }

  _Unwind_Resume(a1);
}

void sub_2213C17D4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v9 = a4;
  v10 = objc_autoreleasePoolPush();
  v17 = objc_msgSend_regionFromRange_(TSTCellRegion, v11, a2, a3, v12);
  v18 = *(a1 + 32);
  v19 = v18[2];
  v50[0] = 0;
  v50[1] = v50;
  v50[2] = 0x3032000000;
  v50[3] = sub_2213C1AD4;
  v50[4] = sub_2213C1AE4;
  v51 = 0;
  if (v19)
  {
    v20 = objc_msgSend_flags(v18, v13, v14, v15, v16);
    v21 = *(a1 + 32);
    v22 = *(v21 + 72);
    v23 = *(v21 + 80);
    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = sub_2213C1AEC;
    v46[3] = &unk_278464278;
    v49 = v50;
    v48 = *(a1 + 40);
    v47 = v9;
    objc_msgSend_iterateCellsInRegion_flags_searchFlags_clampingRange_usingBlock_(v19, v24, v17, v20, a5, v22, v23, v46);
  }

  else
  {
    v25 = [TSTCellIterator alloc];
    v26 = *(a1 + 32);
    v27 = v26[3];
    v32 = objc_msgSend_flags(v26, v28, v29, v30, v31);
    v34 = objc_msgSend_initWithTableModel_baseRegion_flags_searchFlags_baseClampingRange_(v25, v33, v27, v17, v32, a5, *(*(a1 + 32) + 72), *(*(a1 + 32) + 80));
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = sub_2213C1B7C;
    v42[3] = &unk_278464278;
    v45 = v50;
    v44 = *(a1 + 40);
    v43 = v9;
    objc_msgSend_iterateCellsUsingBlock_(v34, v35, v42, v36, v37);
    objc_msgSend_terminate(v34, v38, v39, v40, v41);
  }

  _Block_object_dispose(v50, 8);

  objc_autoreleasePoolPop(v10);
}

void sub_2213C1A64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, id a29)
{
  _Block_object_dispose(&a24, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_2213C1AD4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2213C1AEC(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = (*(*(a1 + 40) + 16))();
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_2213C1B7C(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = (*(*(a1 + 40) + 16))();
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_2213C1C0C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = objc_msgSend_pointerAtIndex_(*(*(a1 + 32) + 48), a2, a2, a4, a5);
  v8 = *(a1 + 40);
  if (a2 >= (*(*(a1 + 56) + 8) - **(a1 + 56)) >> 4)
  {
    if (v8)
    {
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3321888768;
      v17[2] = sub_2213C1E88;
      v17[3] = &unk_2834A7100;
      v19 = *(a1 + 48);
      __p = 0;
      v21 = 0;
      v22 = 0;
      sub_22116C9DC(&__p, *(a1 + 64), *(a1 + 72), (*(a1 + 72) - *(a1 + 64)) >> 4);
      v14 = *(a1 + 56);
      v23 = a2;
      v24 = v14;
      v15 = v7;
      v16 = *(a1 + 88);
      v18 = v15;
      v25 = v16;
      (*(v8 + 16))(v8, v17);
      v13 = &v19;

      if (__p)
      {
        v21 = __p;
        operator delete(__p);
      }

      goto LABEL_7;
    }

LABEL_8:
    (*(*(a1 + 48) + 16))();
    goto LABEL_9;
  }

  if (!v8)
  {
    goto LABEL_8;
  }

  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = sub_2213C1E5C;
  v26[3] = &unk_2784642C8;
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  v29[0] = v9;
  v29[1] = v10;
  v29[2] = a2;
  v11 = v7;
  v12 = *(a1 + 32);
  v27 = v11;
  v28 = v12;
  (*(v8 + 16))(v8, v26);
  v13 = v29;

LABEL_7:
LABEL_9:
}

void sub_2213C1E08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, void *__p, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2213C1EBC(uint64_t a1, uint64_t a2)
{
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  v2 = a1 + 48;
  *(v2 + 16) = 0;
  return sub_22116C9DC(v2, *(a2 + 48), *(a2 + 56), (*(a2 + 56) - *(a2 + 48)) >> 4);
}

void sub_2213C1ED8(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

uint64_t sub_2213C1EF0(uint64_t a1, uint64_t a2)
{
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  v2 = a1 + 64;
  *(v2 + 16) = 0;
  return sub_22116C9DC(v2, *(a2 + 64), *(a2 + 72), (*(a2 + 72) - *(a2 + 64)) >> 4);
}

void sub_2213C1F0C(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    *(a1 + 72) = v2;
    operator delete(v2);
  }
}

void sub_2213C1F24(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = objc_msgSend_pointerAtIndex_(*(*(a1 + 32) + 48), a2, a2, a4, a5);
  (*(*(a1 + 40) + 16))();
}

void sub_2213C25BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  sub_2210BC30C(&a13);
  sub_22109DBB8(&__p);

  _Unwind_Resume(a1);
}

void sub_2213C2660(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_2210BC30C(va);
  _Unwind_Resume(a1);
}

void sub_2213C2AC4(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_2213C2C30(_Unwind_Exception *a1, TSCEASTNodeArray *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_2212BC8D4(&a9, a2);

  _Unwind_Resume(a1);
}

void *sub_2213C3030(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      sub_22107C1F0(result, a2);
    }

    sub_22107C148();
  }

  return result;
}

void sub_2213C30AC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_22107C26C(va);
  _Unwind_Resume(a1);
}

void sub_2213C34EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  a10 = &a16;
  sub_2210BC30C(&a10);
  _Unwind_Resume(a1);
}

void sub_2213C36B8(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_2213C3B10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  a16 = v17 - 136;
  sub_2210BC30C(&a16);
  a16 = v17 - 112;
  sub_2210BC30C(&a16);

  _Unwind_Resume(a1);
}

void sub_2213C3CEC(uint64_t a1)
{
  *a1 = &unk_2834A3EA8;

  v2 = *(a1 + 208);
  if (v2)
  {
    *(a1 + 216) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 184);
  if (v3)
  {
    *(a1 + 192) = v3;
    operator delete(v3);
  }

  TSCEASTStreamIterator::~TSCEASTStreamIterator(a1, v4);
}

void sub_2213C3D6C(uint64_t a1, char **a2, char **a3, unint64_t a4)
{
  v8 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 4) < a4)
  {
    sub_2213C3EDC(a1);
    if (a4 <= 0x555555555555555)
    {
      v9 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 4);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
      {
        v10 = 0x555555555555555;
      }

      else
      {
        v10 = v9;
      }

      sub_2210BC8C4(a1, v10);
    }

    sub_22107C148();
  }

  v11 = *(a1 + 8) - v8;
  if (0xAAAAAAAAAAAAAAABLL * (v11 >> 4) >= a4)
  {
    sub_2213C3F48(&v16, a2, a3, v8);
    v13 = v12;
    v14 = *(a1 + 8);
    if (v14 != v12)
    {
      do
      {
        v14 -= 48;
        sub_2210BC394(a1, v14);
      }

      while (v14 != v13);
    }

    *(a1 + 8) = v13;
  }

  else
  {
    sub_2213C3F48(&v15, a2, (a2 + v11), v8);
    *(a1 + 8) = sub_2210BC910(a1, (a2 + v11), a3, *(a1 + 8));
  }
}

void sub_2213C3EDC(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v1)
    {
      do
      {
        v3 -= 48;
        sub_2210BC394(a1, v3);
      }

      while (v3 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

char **sub_2213C3F48(int a1, char **a2, char **a3, char **a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      if (v5 != a4)
      {
        sub_2210BD068(a4, *v5, v5[1], (v5[1] - *v5) >> 4);
        sub_2210BD068(a4 + 3, v5[3], v5[4], (v5[4] - v5[3]) >> 4);
      }

      v5 += 6;
      a4 += 6;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

char **sub_2213C3FCC(uint64_t *a1, uint64_t a2, char **a3, uint64_t *a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v7 = a3;
    v10 = a1[1];
    v9 = a1[2];
    if ((0xAAAAAAAAAAAAAAABLL * ((v9 - v10) >> 4)) >= a5)
    {
      v16 = v10 - a2;
      if ((0xAAAAAAAAAAAAAAABLL * ((v10 - a2) >> 4)) >= a5)
      {
        v18 = 3 * a5;
        sub_2213C41C8(a1, a2, a1[1], a2 + 48 * a5);
        v17 = &v7[2 * v18];
      }

      else
      {
        a1[1] = sub_2212D83F0(a1, (a3 + v16), a4, a1[1]);
        if (v16 < 1)
        {
          return v5;
        }

        sub_2213C41C8(a1, v5, v10, &v5[6 * a5]);
        v17 = (v7 + v16);
      }

      sub_2213C3F48(v23, v7, v17, v5);
      return v5;
    }

    v11 = *a1;
    v12 = a5 - 0x5555555555555555 * ((v10 - *a1) >> 4);
    if (v12 > 0x555555555555555)
    {
      sub_22107C148();
    }

    v13 = a2 - v11;
    v14 = 0xAAAAAAAAAAAAAAABLL * ((v9 - v11) >> 4);
    if (2 * v14 > v12)
    {
      v12 = 2 * v14;
    }

    if (v14 >= 0x2AAAAAAAAAAAAAALL)
    {
      v15 = 0x555555555555555;
    }

    else
    {
      v15 = v12;
    }

    v26 = a1;
    if (v15)
    {
      sub_2210BC5FC(a1, v15);
    }

    v19 = (16 * (v13 >> 4));
    v23[0] = 0;
    v23[1] = v19;
    v24 = v19;
    v25 = 0;
    v20 = &v19[48 * a5];
    v21 = 48 * a5;
    do
    {
      sub_2212D82F0(v26, v19, v7);
      v19 += 48;
      v7 += 6;
      v21 -= 48;
    }

    while (v21);
    v24 = v20;
    v5 = sub_2213C4268(a1, v23, v5);
    sub_2210BC7C0(v23);
  }

  return v5;
}

uint64_t sub_2213C41C8(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 8);
  v7 = a2 + v6 - a4;
  v8 = v6;
  if (v7 < a3)
  {
    v9 = v7;
    v8 = *(a1 + 8);
    do
    {
      *v8 = 0;
      v8[1] = 0;
      v8[2] = 0;
      *v8 = *v9;
      v8[2] = *(v9 + 16);
      *v9 = 0;
      *(v9 + 8) = 0;
      *(v9 + 16) = 0;
      v8[3] = 0;
      v8[4] = 0;
      v8[5] = 0;
      *(v8 + 3) = *(v9 + 24);
      v8[5] = *(v9 + 40);
      *(v9 + 24) = 0;
      *(v9 + 32) = 0;
      *(v9 + 40) = 0;
      v9 += 48;
      v8 += 6;
    }

    while (v9 < a3);
  }

  *(a1 + 8) = v8;
  return sub_2213C4324(&v11, a2, v7, v6);
}

uint64_t sub_2213C4268(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 8);
  sub_2210BC654(a1, a3, a1[1], *(a2 + 16));
  v7 = *a1;
  v8 = *(a2 + 8);
  *(a2 + 16) += a1[1] - a3;
  a1[1] = a3;
  v9 = (v8 + v7 - a3);
  sub_2210BC654(a1, v7, a3, v9);
  *(a2 + 8) = v9;
  v10 = *a1;
  a1[1] = *a1;
  *a1 = *(a2 + 8);
  *(a2 + 8) = v10;
  v11 = a1[1];
  a1[1] = *(a2 + 16);
  *(a2 + 16) = v11;
  v12 = a1[2];
  a1[2] = *(a2 + 24);
  *(a2 + 24) = v12;
  *a2 = *(a2 + 8);
  return v6;
}

uint64_t sub_2213C4324(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 != a2)
  {
    v7 = a3;
    do
    {
      sub_2213C43A8(a4 - 48, (v7 - 48));
      sub_2213C43A8(a4 - 24, (v7 - 24));
      a4 -= 48;
      v7 -= 48;
    }

    while (v7 != a2);
  }

  return a3;
}

__n128 sub_2213C43A8(uint64_t a1, __n128 *a2)
{
  v4 = *a1;
  if (v4)
  {
    *(a1 + 8) = v4;
    operator delete(v4);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }

  result = *a2;
  *a1 = *a2;
  *(a1 + 16) = a2[1].n128_u64[0];
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  return result;
}

void sub_2213C4808(uint64_t a1)
{
  sub_22123ACF4((*(a1 + 32) + 32), (*(a1 + 40) + 48));
  sub_22123ACF4((*(a1 + 32) + 8), (*(a1 + 40) + 24));
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(v6 + 80);
  v9 = *(v6 + 88);
  v20 = (v7 + 88);
  if (v8 != v9)
  {
    do
    {
      sub_2212895B0(&v20, v8++);
    }

    while (v8 != v9);
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
  }

  v10 = *(v6 + 56);
  v11 = *(v6 + 64);
  v20 = (v7 + 72);
  if (v10 != v11)
  {
    do
    {
      sub_2212895B0(&v20, v10++);
    }

    while (v10 != v11);
    v6 = *(a1 + 32);
  }

  if (objc_msgSend_count(*(v6 + 104), v2, v3, v4, v5))
  {
    v16 = objc_msgSend_UIDLookupList(*(*(a1 + 32) + 104), v12, v13, v14, v15);
    v17 = *(a1 + 40);
    *(v17 + 16) |= 1u;
    v18 = *(v17 + 104);
    if (!v18)
    {
      v19 = *(v17 + 8);
      if (v19)
      {
        v19 = *(v19 & 0xFFFFFFFFFFFFFFFELL);
      }

      v18 = google::protobuf::Arena::CreateMaybeMessage<TST::CellUIDLookupListArchive>(v19);
      *(v17 + 104) = v18;
    }

    sub_22137B574(v16, v18);
  }
}

uint64_t sub_2213C4C6C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(*(a1 + 32) + 104);
  v7 = objc_msgSend_count(v6, a2, a3, a4, a5);
  result = objc_msgSend_reserve_(v6, v8, v7 + ((*(*(a1 + 40) + 8) - **(a1 + 40)) >> 5), v9, v10);
  v15 = *(a1 + 40);
  v16 = *v15;
  v17 = v15[1];
  while (v16 != v17)
  {
    result = objc_msgSend_addCellUID_(*(*(a1 + 32) + 104), v12, v16, v13, v14);
    v16 += 32;
  }

  return result;
}

uint64_t sub_2213C4D58(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(*(a1 + 32) + 104);
  v7 = objc_msgSend_count(v6, a2, a3, a4, a5);
  result = objc_msgSend_reserve_(v6, v8, v7 + ((*(*(a1 + 40) + 32) - *(*(a1 + 40) + 24)) >> 4) * ((*(*(a1 + 40) + 8) - **(a1 + 40)) >> 4), v9, v10);
  v12 = *(a1 + 40);
  v13 = *(v12 + 24);
  v14 = *(v12 + 32);
  while (v13 != v14)
  {
    v15 = *(a1 + 40);
    v16 = *v15;
    v17 = v15[1];
    while (v16 != v17)
    {
      v18 = *(*(a1 + 32) + 104);
      v16 += 16;
      TSTMakeCellUID(v22);
      result = objc_msgSend_addCellUID_(v18, v19, v22, v20, v21);
    }

    v13 += 16;
  }

  return result;
}

uint64_t sub_2213C4F24(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(*(a1 + 32) + 104);
  v7 = objc_msgSend_count(v6, a2, a3, a4, a5);
  objc_msgSend_reserve_(v6, v8, *(a1 + 48) + v7, v9, v10);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_2213C4FCC;
  v16[3] = &unk_278464318;
  v11 = *(a1 + 40);
  v16[4] = *(a1 + 32);
  v17 = *(a1 + 56);
  return objc_msgSend_enumerateCellIDsUsingBlock_(v11, v12, v16, v13, v14);
}

uint64_t sub_2213C4FCC(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 104);
  TSTMakeCellUID(v6);
  return objc_msgSend_addCellUID_(v1, v2, v6, v3, v4);
}

void sub_2213C5468(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, void *a44, uint64_t a45, uint64_t a46, char a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, void *a53, uint64_t a54)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a23)
  {
    operator delete(a23);
  }

  if (a26)
  {
    operator delete(a26);
  }

  if (a29)
  {
    operator delete(a29);
  }

  if (a32)
  {
    operator delete(a32);
  }

  if (a35)
  {
    operator delete(a35);
  }

  _Block_object_dispose(&a38, 8);
  if (a44)
  {
    a45 = a44;
    operator delete(a44);
  }

  _Block_object_dispose(&a47, 8);
  if (a53)
  {
    a54 = a53;
    operator delete(a53);
  }

  sub_2210BC9F8(v55 - 216, *(v55 - 208));
  sub_2210BC9F8(v55 - 192, *(v55 - 184));
  _Block_object_dispose((v55 - 112), 8);
  _Block_object_dispose((v55 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_2213C5560(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = objc_msgSend_count(*(a1[4] + 104), a2, a3, a4, a5);
  *(*(a1[5] + 8) + 24) = result;
  *(*(a1[6] + 8) + 24) = *(*(a1[5] + 8) + 24) == 0;
  return result;
}

__n128 sub_2213C55B4(__n128 *a1, __n128 *a2)
{
  a1[3].n128_u64[0] = 0;
  a1[3].n128_u64[1] = 0;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  a2[4].n128_u64[0] = 0;
  return result;
}

void sub_2213C55D8(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void sub_2213C55F0(uint64_t a1, const char *a2)
{
  v3 = *(a1 + 32);
  v4 = *(*(a1 + 40) + 8);
  v5 = v3[1];
  v3[1] = v4[6];
  v4[6] = v5;
  v6 = v3[2];
  v3[2] = v4[7];
  v4[7] = v6;
  v7 = v3[3];
  v3[3] = v4[8];
  v4[8] = v7;
  v8 = *(a1 + 32);
  v9 = *(*(a1 + 48) + 8);
  v10 = v8[4];
  v8[4] = v9[6];
  v9[6] = v10;
  v11 = v8[5];
  v8[5] = v9[7];
  v9[7] = v11;
  v12 = v8[6];
  v8[6] = v9[8];
  v9[8] = v12;
  *(*(a1 + 32) + 64) = *(*(a1 + 32) + 56);
  *(*(a1 + 32) + 88) = *(*(a1 + 32) + 80);
  objc_msgSend_compressUIDIndexListFrom_withUIDCount_to_(*(a1 + 32), a2, a1 + 56, (*(*(a1 + 32) + 16) - *(*(a1 + 32) + 8)) >> 4, *(a1 + 32) + 56);
  objc_msgSend_compressUIDIndexListFrom_withUIDCount_to_(*(a1 + 32), v13, a1 + 80, (*(*(a1 + 32) + 40) - *(*(a1 + 32) + 32)) >> 4, *(a1 + 32) + 80);
  *(*(a1 + 32) + 112) = *(a1 + 104);
  v14 = objc_opt_new();
  v15 = *(a1 + 32);
  v16 = *(v15 + 104);
  *(v15 + 104) = v14;
}

uint64_t sub_2213C5708(void *a1, uint64_t *a2)
{
  a1[7] = 0;
  a1[8] = 0;
  a1[9] = 0;
  sub_2212A44A0((a1 + 7), a2[7], a2[8], (a2[8] - a2[7]) >> 2);
  a1[10] = 0;
  a1[11] = 0;
  a1[12] = 0;
  return sub_2212A44A0((a1 + 10), a2[10], a2[11], (a2[11] - a2[10]) >> 2);
}

void sub_2213C5774(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 64) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void sub_2213C5790(void *a1)
{
  v2 = a1[10];
  if (v2)
  {
    a1[11] = v2;
    operator delete(v2);
  }

  v3 = a1[7];
  if (v3)
  {
    a1[8] = v3;

    operator delete(v3);
  }
}

void sub_2213C5D80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2213C5E68(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  if (v6 != v7)
  {
    sub_2210BD068(v6 + 1, *(v7 + 8), *(v7 + 16), (*(v7 + 16) - *(v7 + 8)) >> 4);
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
  }

  if (v6 != v7)
  {
    sub_2210BD068(v6 + 4, *(v7 + 32), *(v7 + 40), (*(v7 + 40) - *(v7 + 32)) >> 4);
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
  }

  if (v6 != v7)
  {
    sub_22137BB5C(v6 + 7, *(v7 + 56), *(v7 + 64), (*(v7 + 64) - *(v7 + 56)) >> 2);
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
  }

  if (v6 != v7)
  {
    sub_22137BB5C(v6 + 10, *(v7 + 80), *(v7 + 88), (*(v7 + 88) - *(v7 + 80)) >> 2);
    v7 = *(a1 + 40);
  }

  v8 = objc_msgSend_copy(*(v7 + 104), a2, a3, a4, a5);
  v9 = *(a1 + 32);
  v10 = *(v9 + 104);
  *(v9 + 104) = v8;

  *(*(a1 + 32) + 112) = *(*(a1 + 40) + 112);
}

int64x2_t sub_2213C63C8(int64x2_t *a1, _OWORD *a2)
{
  v4 = a1[2].u64[0];
  if (!v4)
  {
    sub_2213C6A80(a1);
    v4 = a1[2].u64[0];
  }

  v5 = a1->i64[1];
  v6 = (v5 + 8 * (v4 >> 8));
  v7 = *v6 + 16 * v4;
  if (a1[1].i64[0] == v5)
  {
    v7 = 0;
  }

  if (v7 == *v6)
  {
    v7 = *(v6 - 1) + 4096;
  }

  *(v7 - 16) = *a2;
  result = vaddq_s64(a1[2], xmmword_2217E1930);
  a1[2] = result;
  return result;
}

void sub_2213C66E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__n128 sub_2213C6704(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 48);
  v3 = *(a2 + 64);
  *(a1 + 48) = result;
  *(a1 + 64) = v3;
  return result;
}

double sub_2213C6714(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a1 + 32);
  if (v6)
  {
    objc_msgSend__nextCellUID_NoDispatch(v6, a2, a3, a4, a5);
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v7 = *(*(a1 + 40) + 8);
  result = *&v9;
  *(v7 + 48) = v9;
  *(v7 + 64) = v10;
  return result;
}

void sub_2213C6840(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  do
  {
    v6 = a1[4];
    if (!v6)
    {
      break;
    }

    objc_msgSend__nextCellUID_NoDispatch(v6, a2, a3, a4, a5);
    if (0 == 0)
    {
      break;
    }

    v7 = a1[5];
    v8 = *(v7 + 8);
    v9 = *(v7 + 16);
    if (v8 >= v9)
    {
      v11 = (v8 - *v7) >> 5;
      v12 = v11 + 1;
      if ((v11 + 1) >> 59)
      {
        sub_22107C148();
      }

      v13 = v9 - *v7;
      if (v13 >> 4 > v12)
      {
        v12 = v13 >> 4;
      }

      v14 = v13 >= 0x7FFFFFFFFFFFFFE0 ? 0x7FFFFFFFFFFFFFFLL : v12;
      if (v14)
      {
        sub_221087FE8(a1[5], v14);
      }

      v15 = (32 * v11);
      *v15 = 0u;
      v15[1] = 0u;
      v10 = 32 * v11 + 32;
      v16 = *(v7 + 8) - *v7;
      v17 = 32 * v11 - v16;
      memcpy(v15 - v16, *v7, v16);
      v18 = *v7;
      *v7 = v17;
      *(v7 + 8) = v10;
      *(v7 + 16) = 0;
      if (v18)
      {
        operator delete(v18);
      }
    }

    else
    {
      *v8 = 0u;
      v8[1] = 0u;
      v10 = (v8 + 2);
    }

    *(v7 + 8) = v10;
  }

  while (a1[6] > ((*(a1[5] + 8) - *a1[5]) >> 5));
}

const void **sub_2213C6A80(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  v3 = v2 - v1;
  if (v2 == v1)
  {
    v4 = 0;
  }

  else
  {
    v4 = 32 * (v2 - v1) - 1;
  }

  v5 = *(a1 + 32);
  if ((v4 - (*(a1 + 40) + v5)) < 0x100)
  {
    v7 = *(a1 + 24);
    v8 = *a1;
    v9 = &v7[-*a1];
    if (v3 < v9)
    {
      if (v1 != v8)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == v8)
    {
      v10 = 1;
    }

    else
    {
      v10 = v9 >> 2;
    }

    v11[4] = a1;
    sub_221122DC8(a1, v10);
  }

  *(a1 + 32) = v5 + 256;
  v11[0] = *(v2 - 1);
  *(a1 + 16) = v2 - 8;
  return sub_2213C6CC8(a1, v11);
}

void sub_2213C6C7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  operator delete(v12);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

const void **sub_2213C6CC8(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      sub_221122DC8(result, v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

void *sub_2213C6DD4(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      sub_221122DC8(result, v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

uint64_t sub_2213C6EDC(void *a1, int a2)
{
  v3 = a1[1];
  v2 = a1[2];
  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = 32 * (v2 - v3) - 1;
  }

  v5 = v4 - (a1[5] + a1[4]);
  if (v5 < 0x100)
  {
    a2 = 1;
  }

  if (v5 < 0x200)
  {
    v7 = a2;
  }

  else
  {
    v7 = 0;
  }

  if ((v7 & 1) == 0)
  {
    operator delete(*(v2 - 8));
    a1[2] -= 8;
  }

  return v7 ^ 1u;
}

uint64_t sub_2213C6F4C(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  a1[5] = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 128;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 256;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return sub_221142324(a1);
}

void sub_2213CE784(uint64_t a1, char *__s)
{
  *(a1 + 16) |= 1u;
  v3 = strlen(__s);
  if (v3 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_22108CD88();
  }

  v4 = v3;
  if (v3 >= 0x17)
  {
    operator new();
  }

  v6 = v3;
  if (v3)
  {
    memcpy(&__dst, __s, v3);
  }

  *(&__dst + v4) = 0;
  google::protobuf::internal::ArenaStringPtr::Set();
  if (v6 < 0)
  {
    operator delete(__dst);
  }
}

void sub_2213CE87C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2213CEEE0(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

unint64_t sub_2213CF1FC(unint64_t a1, unint64_t a2)
{
  v2 = a1 >= a2;
  result = a1 - a2;
  if (!v2)
  {
    TSUSetCrashReporterInfo();
    v4 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "NSUInteger _indexForTileID(TSTTableTileID, TSTTableTileID)", v6, v7, "NSUInteger _indexForTileID(TSTTableTileID, TSTTableTileID)", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTileGroup.mm", 21);
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTileGroup.mm", v10, v11);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v13, v8, v12, 21, 1, "Tile ID too low for this group!");
    goto LABEL_5;
  }

  if (result >= 0x100)
  {
    TSUSetCrashReporterInfo();
    v14 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "NSUInteger _indexForTileID(TSTTableTileID, TSTTableTileID)", v16, v17, "NSUInteger _indexForTileID(TSTTableTileID, TSTTableTileID)", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTileGroup.mm", 24);
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTileGroup.mm", v19, v20);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v21, v8, v12, 24, 1, "Tile ID too high for this group!");
LABEL_5:

    TSUCrashBreakpoint();
    abort();
  }

  return result;
}

void sub_2213CF64C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20)
{
  objc_sync_exit(v20);

  _Unwind_Resume(a1);
}

void sub_2213CF7FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v11 = v10;

  _Unwind_Resume(a1);
}

void sub_2213D0BD4(uint64_t a1, char *__s)
{
  *(a1 + 16) |= 1u;
  v3 = strlen(__s);
  if (v3 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_22108CD88();
  }

  v4 = v3;
  if (v3 >= 0x17)
  {
    operator new();
  }

  v6 = v3;
  if (v3)
  {
    memcpy(&__dst, __s, v3);
  }

  *(&__dst + v4) = 0;
  google::protobuf::internal::ArenaStringPtr::Set();
  if (v6 < 0)
  {
    operator delete(__dst);
  }
}

void sub_2213D0CCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2213D0FC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2213D0FD8(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = a3;
  *(*(*(a1 + 32) + 8) + 24) += objc_msgSend_count(v8, v4, v5, v6, v7);
}

id sub_2213D1224(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v9 = objc_msgSend_year(v4, v5, v6, v7, v8);
  if (v9 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = v3[6];
  }

  else
  {
    v10 = sub_2213D1894(v3 + 1, v9);
  }

  v11 = v10;

  return v11;
}

void sub_2213D1524(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_2213D1544(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2213D155C(uint64_t a1, unint64_t a2, void *a3)
{
  v10 = a2;
  v4 = a3;
  v5 = *(*(*(a1 + 32) + 8) + 40);
  v9 = objc_msgSend_setWithSet_(MEMORY[0x277CBEB58], v6, v4, v7, v8);
  sub_2213D44B0((v5 + 8), &v10);
}

void sub_2213D17A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, ...)
{
  va_start(va, a7);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2213D17F0(uint64_t a1, unint64_t a2, void *a3, _BYTE *a4)
{
  v11 = a3;
  v7 = sub_2213D1894((*(a1 + 32) + 8), a2);
  if ((objc_msgSend_isEqualToSet_(v11, v8, v7, v9, v10) & 1) == 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    *a4 = 1;
  }
}

id sub_2213D1894(void *a1, unint64_t a2)
{
  v8 = a2;
  v3 = sub_2210BE30C(a1, &v8);
  if (v3)
  {
    v4 = v3[3];
    v7 = v4;
  }

  else
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB58]);
    sub_2213D423C(a1, &v8);
    v4 = v7;
  }

  v5 = v4;

  return v5;
}

void sub_2213D1DA4(uint64_t a1, unint64_t a2, void *a3)
{
  v9 = a3;
  v5 = sub_2213D1894((*(a1 + 32) + 8), a2);
  objc_msgSend_unionSet_(v5, v6, v9, v7, v8);
}

void sub_2213D1EF0(uint64_t a1, unint64_t a2, void *a3)
{
  v9 = a3;
  v5 = sub_2213D1894((*(a1 + 32) + 8), a2);
  objc_msgSend_minusSet_(v5, v6, v9, v7, v8);
}

void sub_2213D2114(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

void sub_2213D2144(uint64_t a1, unint64_t a2, void *a3, _BYTE *a4)
{
  v11 = a3;
  v7 = sub_2213D1894((*(a1 + 32) + 8), a2);
  if ((objc_msgSend_isSubsetOfSet_(v11, v8, v7, v9, v10) & 1) == 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    *a4 = 1;
  }
}

void sub_2213D23AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, ...)
{
  va_start(va, a7);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2213D23F8(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v25 = *MEMORY[0x277D85DE8];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = a3;
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v20, v24, 16);
  if (v12)
  {
    v13 = *v21;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v21 != v13)
        {
          objc_enumerationMutation(v6);
        }

        v15 = objc_msgSend_symbol(*(*(&v20 + 1) + 8 * i), v8, v9, v10, v11, v20);
        isEqualToString = objc_msgSend_isEqualToString_(v15, v16, *(a1 + 32), v17, v18);

        if (isEqualToString)
        {
          *(*(*(a1 + 40) + 8) + 24) = 1;
          *a4 = 1;
          goto LABEL_11;
        }
      }

      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v8, &v20, v24, 16);
      if (v12)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

void sub_2213D2608(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_2213D2620(uint64_t a1, const char *a2, void *a3, _BYTE *a4, uint64_t a5)
{
  result = objc_msgSend_count(a3, a2, a3, a4, a5);
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

void sub_2213D27E4(uint64_t a1, const char *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v5 = *(*(*(a1 + 32) + 8) + 40);
  v9 = objc_msgSend_allObjects(a3, a2, a3, a4, a5);
  objc_msgSend_addObjectsFromArray_(v5, v6, v9, v7, v8);
}

void sub_2213D2984(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_2213D29A4(uint64_t a1, const char *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v5 = *(*(*(a1 + 32) + 8) + 40);
  v9 = objc_msgSend_allObjects(a3, a2, a3, a4, a5);
  objc_msgSend_addObjectsFromArray_(v5, v6, v9, v7, v8);
}

void sub_2213D2DB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_2213D2DD4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(*(*(a1 + 32) + 8) + 40);
  v9 = objc_msgSend_symbol(a2, a2, a3, a4, a5);
  objc_msgSend_addObject_(v5, v6, v9, v7, v8);
}

void sub_2213D3024(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_2213D3044(uint64_t a1, unint64_t a2, void *a3)
{
  v14 = a2;
  v4 = a3;
  if (objc_msgSend_count(v4, v5, v6, v7, v8))
  {
    v12 = *(*(*(a1 + 32) + 8) + 40);
    v13 = objc_msgSend_setWithSet_(MEMORY[0x277CBEB58], v9, v4, v10, v11);
    sub_2213D44B0((v12 + 8), &v14);
  }
}

void sub_2213D32A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_2213D3428(uint64_t a1, unint64_t a2, void *a3)
{
  v16 = a3;
  if (objc_msgSend_containsIndex_(*(a1 + 32), v5, a2, v6, v7))
  {
    v12 = sub_2213D1894((*(a1 + 40) + 8), a2);
    objc_msgSend_intersectSet_(v16, v13, v12, v14, v15);
  }

  else
  {
    objc_msgSend_removeAllObjects(v16, v8, v9, v10, v11);
  }
}

void sub_2213D35E4(uint64_t a1, unint64_t a2, void *a3)
{
  v9 = a3;
  v6 = sub_2213D1894((*(a1 + 32) + 8), a2);
  if (v6)
  {
    objc_msgSend_minusSet_(v9, v5, v6, v7, v8);
  }
}

uint64_t sub_2213D37D4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a1 + 32);
  v6 = objc_msgSend_symbol(a2, a2, a3, a4, a5);
  LODWORD(v5) = objc_msgSend_containsObject_(v5, v7, v6, v8, v9);

  return v5 ^ 1;
}

void sub_2213D3A9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, id a35)
{
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose(&a30, 8);

  _Unwind_Resume(a1);
}

void sub_2213D3AF4(void *a1, unint64_t a2, void *a3, _BYTE *a4)
{
  v23 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = sub_2213D1894((*(*(a1[5] + 8) + 40) + 8), a2);
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = v7;
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v18, v22, 16);
  if (v11)
  {
    v12 = *v19;
LABEL_3:
    v13 = 0;
    while (1)
    {
      if (*v19 != v12)
      {
        objc_enumerationMutation(v9);
      }

      v14 = *(*(&v18 + 1) + 8 * v13);
      if ((*(a1[4] + 16))(a1[4]))
      {
        objc_msgSend_addObject_(v8, v15, v14, v16, v17, v18);
      }

      if (*(*(a1[6] + 8) + 24))
      {
        break;
      }

      if (v11 == ++v13)
      {
        v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v15, &v18, v22, 16);
        if (v11)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  if (*(*(a1[6] + 8) + 24) == 1)
  {
    *a4 = 1;
  }
}

uint64_t sub_2213D3D94(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a1 + 32);
  v6 = objc_msgSend_symbol(a2, a2, a3, a4, a5);
  v10 = objc_msgSend_containsObject_(v5, v7, v6, v8, v9);

  return v10;
}

uint64_t sub_2213D3EB4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = objc_msgSend_symbol(a2, a2, a3, a4, a5);
  isEqualToString = objc_msgSend_isEqualToString_(v6, v7, *(a1 + 32), v8, v9);

  return isEqualToString;
}

void *sub_2213D423C(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void sub_2213D449C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_221087E7C(va);
  _Unwind_Resume(a1);
}

void *sub_2213D44B0(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void sub_2213D4708(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_221087E7C(va);
  _Unwind_Resume(a1);
}

void sub_2213D4E30()
{
  v0 = TSULogCreateCategory();
  v1 = TSTPencilCat_log_t;
  TSTPencilCat_log_t = v0;
}

void sub_2213D4FD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);

  sub_2210BDEC0(va);
  _Unwind_Resume(a1);
}

void sub_2213D5364()
{
  v0 = TSULogCreateCategory();
  v1 = TSTPencilCat_log_t;
  TSTPencilCat_log_t = v0;
}

void sub_2213D555C()
{
  v0 = TSULogCreateCategory();
  v1 = TSTPencilCat_log_t;
  TSTPencilCat_log_t = v0;
}

void sub_2213D5818()
{
  v0 = TSULogCreateCategory();
  v1 = TSTPencilCat_log_t;
  TSTPencilCat_log_t = v0;
}

void sub_2213D5F9C(uint64_t a1, void *a2)
{
  v25 = a2;
  v11 = objc_msgSend_table(v25, v3, v4, v5, v6);
  if (v11)
  {
    v12 = *(a1 + 32);
    v13 = objc_msgSend_table(v25, v7, v8, v9, v10);

    if (v12 != v13)
    {
      v14 = MEMORY[0x277D81150];
      v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSTPencilAnnotationOwner enumerateAnnotationsWithBlock:]_block_invoke", v9, v10);
      v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTPencilAnnotationOwner.mm", v17, v18);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v20, v15, v19, 272, 0, "Unexpected table info on this annotation.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23, v24);
    }
  }

  objc_msgSend_setTable_(v25, v7, *(a1 + 32), v9, v10);
  (*(*(a1 + 40) + 16))();
}

void sub_2213D62A0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v33 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 32), a2, a2, a4, a5);
  v15 = objc_msgSend_table(v33, v7, v8, v9, v10);
  if (v15)
  {
    v16 = *(a1 + 40);
    v17 = objc_msgSend_table(v33, v11, v12, v13, v14);

    if (v16 != v17)
    {
      v18 = MEMORY[0x277D81150];
      v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSTPencilAnnotationOwner _enumerateAnnotationsAndFormulasWithIndexes:block:]_block_invoke", v13, v14);
      v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTPencilAnnotationOwner.mm", v21, v22);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v18, v24, v19, v23, 286, 0, "Unexpected table info on this annotation.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26, v27, v28);
    }
  }

  objc_msgSend_setTable_(v33, v11, *(a1 + 40), v13, v14);
  v32 = objc_msgSend_formulaObjectAtIndex_(*(a1 + 48), v29, a2, v30, v31);
  if (v32)
  {
    (*(*(a1 + 56) + 16))();
  }
}

void sub_2213D6684(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, ...)
{
  va_start(va, a7);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2213D66C0(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4, uint64_t a5)
{
  v8 = *(a1 + 32);
  v9 = objc_msgSend_uuid(a2, a2, a3, a4, a5);
  LODWORD(v8) = objc_msgSend_isEqualToString_(v8, v10, v9, v11, v12);

  if (v8)
  {
    *(*(*(a1 + 40) + 8) + 24) = a3;
    *a4 = 1;
  }
}

void sub_2213D68EC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v42 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 32), a2, a2, a4, a5);
  if (!v42)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSTPencilAnnotationOwner _annotationsForIndexes:]_block_invoke", v8, v9);
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTPencilAnnotationOwner.mm", v13, v14);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v16, v11, v15, 330, 0, "invalid nil value for '%{public}s'", "annotation");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19, v20);
  }

  v25 = objc_msgSend_table(v42, v6, v7, v8, v9);
  if (v25)
  {
    v26 = *(a1 + 40);
    v27 = objc_msgSend_table(v42, v21, v22, v23, v24);

    if (v26 != v27)
    {
      v28 = MEMORY[0x277D81150];
      v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "[TSTPencilAnnotationOwner _annotationsForIndexes:]_block_invoke", v23, v24);
      v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTPencilAnnotationOwner.mm", v31, v32);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v28, v34, v29, v33, 332, 0, "Unexpected table info on this annotation.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v35, v36, v37, v38);
    }
  }

  objc_msgSend_setTable_(v42, v21, *(a1 + 40), v23, v24);
  objc_msgSend_addObject_(*(a1 + 48), v39, v42, v40, v41);
}

uint64_t sub_2213D74A4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2213D74BC(uint64_t a1, $925F2A0F20B28CD67DCCD182188DAC27 a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a3;
  numberOfColumns = a2.numberOfColumns;
  if (!a3)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], *&a2, "[TSTPencilAnnotationOwner _indexesForRows:]_block_invoke", a4, a5);
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTPencilAnnotationOwner.mm", v11, v12);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v14, v9, v13, 437, 0, "How do we have a zero-row range here?");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16, v17, v18);
  }

  v19 = numberOfColumns;
  LOWORD(a2.numberOfColumns) = *(a1 + 80);
  LOWORD(a2.numberOfRows) = v5;
  v34[0] = __C(v19, a2);
  v34[1] = v20;
  v35 = *(a1 + 48);
  v22 = *(a1 + 32);
  if (v22)
  {
    objc_msgSend_formulaCoordsReferringToRange_fromOwner_(v22, v20, v34, a1 + 64, v21);
    v26 = v32;
    if (v32 != v33)
    {
      do
      {
        v27 = *(*(*(a1 + 40) + 8) + 40);
        v28 = objc_msgSend_indexFromCoord_(TSTFormulaStore, v23, v26, v24, v25);
        objc_msgSend_addIndex_(v27, v29, v28, v30, v31);
        v26 += 8;
      }

      while (v26 != v33);
      v26 = v32;
    }

    if (v26)
    {
      operator delete(v26);
    }
  }
}

void sub_2213D797C(uint64_t a1, TSUCellCoord a2, $925F2A0F20B28CD67DCCD182188DAC27 a3)
{
  v45[0] = __C(a2, a3);
  v45[1] = v6;
  v46 = *(a1 + 64);
  v8 = *(a1 + 32);
  if (v8)
  {
    objc_msgSend_formulaCoordsReferringToRange_fromOwner_(v8, v6, v45, a1 + 80, v7);
    v12 = v43;
    v13 = v44;
    if (v43 != v44)
    {
      do
      {
        v14 = objc_msgSend_indexFromCoord_(TSTFormulaStore, v9, v12, v10, v11);
        v19 = objc_msgSend_formulaStore(*(a1 + 40), v15, v16, v17, v18);
        v22 = objc_msgSend_rangeFromFormulaAtIndex_useBoundingRange_(v19, v20, v14, 0, v21);
        v24 = v23;

        v42.origin = v22;
        v42.size = v24;
        if (TSUCellRect::isSpanning(&v42))
        {
          v42.origin = v22;
          v42.size = v24;
          v29 = objc_msgSend_tableModel(*(a1 + 40), v25, v26, v27, v28);
          v34 = objc_msgSend_range(v29, v30, v31, v32, v33);
          v36 = v35;

          if (TSUCellRect::spansAllRows(&v42))
          {
            if ((v34 & 0xFFFF00000000) != 0x7FFF00000000 && v34 == 0x7FFFFFFF)
            {
              v38 = 0;
            }

            else
            {
              v38 = v34;
            }

            v42.origin.row = v38;
            v36 >>= 32;
            p_numberOfRows = &v42.size.numberOfRows;
          }

          else
          {
            v40 = HIDWORD(v34);
            if (v34 != 0x7FFFFFFF && (v34 & 0xFFFF00000000) == 0x7FFF00000000)
            {
              LOWORD(v40) = 0;
            }

            v42.origin.column = v40;
            p_numberOfRows = &v42.size;
          }

          p_numberOfRows->numberOfColumns = v36;
        }

        (*(*(a1 + 56) + 16))();
        v12 += 8;
      }

      while (v12 != v13);
      v12 = v43;
    }

    if (v12)
    {
      v44 = v12;
      operator delete(v12);
    }
  }
}

void sub_2213D7B1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2213D7CA0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v20 = a2;
  if (objc_msgSend_containsModelCellRect_(v20, v10, a5, a6, v11))
  {
    v15 = *(*(*(a1 + 32) + 8) + 40);
    v16 = objc_msgSend_indexFromCoord_(TSTFormulaStore, v12, a3, v13, v14);
    objc_msgSend_addIndex_(v15, v17, v16, v18, v19);
  }
}

void sub_2213D7E94(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = a2;
  if (objc_msgSend_intersectsModelCellRect_(v10, v11, a5, a6, v12))
  {
    v21.origin = a5;
    v21.size = a6;
    if ((TSUCellRect::contains(&v21, (a1 + 40)) & 1) == 0)
    {
      v16 = *(*(*(a1 + 32) + 8) + 40);
      v17 = objc_msgSend_indexFromCoord_(TSTFormulaStore, v13, a3, v14, v15);
      objc_msgSend_addIndex_(v16, v18, v17, v19, v20);
    }
  }
}

void sub_2213D8028()
{
  v0 = TSULogCreateCategory();
  v1 = TSTPencilCat_log_t;
  TSTPencilCat_log_t = v0;
}

void sub_2213D8428(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_msgSend_count(v3, v4, v5, v6, v7))
  {
    v17[0] = 0;
    v17[1] = v17;
    v17[2] = 0x2020000000;
    v17[3] = 0;
    v8 = *(a1 + 32);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = sub_2213D855C;
    v12[3] = &unk_2784646D8;
    v13 = v3;
    v16 = v17;
    v14 = *(a1 + 40);
    v15 = *(a1 + 48);
    objc_msgSend_foreach_(v8, v9, v12, v10, v11);

    _Block_object_dispose(v17, 8);
  }
}

void sub_2213D8520(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, void *a8, uint64_t a9, ...)
{
  va_start(va, a9);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2213D855C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 32), a2, *(*(*(a1 + 56) + 8) + 24), a4, a5);
  objc_msgSend_setObject_forKey_(*(a1 + 40), v7, v9, a2, v8);
  ++*(*(*(a1 + 56) + 8) + 24);
  if (TSTPencilCat_init_token != -1)
  {
    sub_2216F7938();
  }
}

void sub_2213D8608()
{
  v0 = TSULogCreateCategory();
  v1 = TSTPencilCat_log_t;
  TSTPencilCat_log_t = v0;
}

void sub_2213D87D4(uint64_t a1, void *a2)
{
  v15 = a2;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(v6 + 40);
  if (!v7)
  {
    goto LABEL_6;
  }

  v8 = *(v6 + 32);
  v9 = *v7;
  if (v8 < *v7)
  {
    *(v6 + 32) = v8 + 1;
    objc_msgSend_setStrongReference_message_(v5, v3, v15, *&v7[2 * v8 + 2], v4);
    goto LABEL_8;
  }

  if (v9 == *(v6 + 36))
  {
LABEL_6:
    google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v6 + 24));
    v7 = *(v6 + 40);
    v9 = *v7;
  }

  *v7 = v9 + 1;
  v10 = MEMORY[0x223DA0390](*(v6 + 24));
  v11 = *(v6 + 32);
  v12 = *(v6 + 40) + 8 * v11;
  *(v6 + 32) = v11 + 1;
  *(v12 + 8) = v10;
  objc_msgSend_setStrongReference_message_(v5, v13, v15, v10, v14);
LABEL_8:
}

double sub_2213D8990(__n128 a1, __n128 a2, double a3)
{
  if (a3 >= 0.0)
  {
    v5 = a1.n128_f64[0] * a3;
    a1.n128_u64[0] = a2.n128_u64[0];
    a2.n128_f64[0] = v5;

    return sub_2213BCEA8(a1, a2);
  }

  else
  {
    sub_22137A674("gdtr", 1);
    return 0.0;
  }
}

void sub_2213D8A80()
{
  v0 = [TSTPivotGroupingColumnOptions alloc];
  v2 = objc_msgSend_initWithFlags_sortingAggregateRuleUid_(v0, v1, 0, 0, 0);
  v3 = qword_27CFB54C8;
  qword_27CFB54C8 = v2;
}

void sub_2213D8E38(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2213D96C4(uint64_t a1, unint64_t *a2)
{
  v2 = *sub_22112C810(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t sub_2213D977C(uint64_t **a1, unint64_t *a2)
{
  v3 = sub_22112C8D0(a1, a2);
  if (a1 + 1 == v3)
  {
    return 0;
  }

  sub_2213D97C4(a1, v3);
  return 1;
}

uint64_t *sub_2213D97C4(uint64_t **a1, uint64_t a2)
{
  v3 = sub_22112C950(a1, a2);

  operator delete(a2);
  return v3;
}

void sub_2213D9800(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_2213D9800(a1, *a2);
    sub_2213D9800(a1, a2[1]);

    operator delete(a2);
  }
}

void sub_2213D99A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = TSTWidthHeightCache;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_2213D9A9C(void *a1, unint64_t a2, uint64_t a3)
{
  v3 = 0x8E38E38E38E38E39 * ((a1[1] - *a1) >> 3);
  v4 = a2 >= v3;
  v5 = a2 - v3;
  if (v5 != 0 && v4)
  {
    sub_2213DD2E0(a1, v5, a3);
  }

  else if (!v4)
  {
    a1[1] = *a1 + 72 * a2;
  }
}

uint64_t sub_2213D9C50(uint64_t result, uint64_t a2, double a3)
{
  if (a2 != 0x7FFFFFFFLL && (a2 & 0xFFFF00000000) != 0x7FFF00000000)
  {
    v3 = *(*(result + 32) + 208);
    if (a2 < 0x8E38E38E38E38E39 * ((*(*(result + 32) + 216) - v3) >> 3))
    {
      return sub_2213DD4E4(v3 + 72 * a2 + 8, WORD2(a2), a3);
    }
  }

  return result;
}

void sub_2213DA044(uint64_t a1, const char *a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *(a1 + 32);
  v10 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x277CCABB0], a2, a2, a5, a6);
  v27 = objc_msgSend_objectForKey_(v9, v11, v10, v12, v13);

  if (v27)
  {
    objc_msgSend_tsu_CGFloatValue(v27, v14, v15, v16, v17);
    if (v18 > a3)
    {
      a3 = v18;
    }
  }

  v19 = *(a1 + 32);
  v20 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v14, v15, v16, v17, a3);
  v24 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x277CCABB0], v21, a2, v22, v23);
  objc_msgSend_setObject_forKey_(v19, v25, v20, v24, v26);
}

BOOL sub_2213DA858(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = 0;
  do
  {
    v4 = a1 + 16 * v3;
    if (*(v4 + 12) == 2)
    {
      break;
    }

    v5 = *(v4 + 8);
    v6 = v5 < a2 || v5 - a2 >= a3;
    if (v6)
    {
      if (a2 + a3 <= v5)
      {
        *(v4 + 8) = v5 - a3;
      }
    }

    else
    {
      if (v3 <= 2)
      {
        v7 = (a1 + 16 + 16 * v3);
        v8 = v3 - 3;
        do
        {
          *(v7 - 1) = *v7;
          ++v7;
          v6 = __CFADD__(v8++, 1);
        }

        while (!v6);
      }

      *(a1 + 48) = 0;
      *(a1 + 56) = 0x27FFFFFFFLL;
      --v3;
    }
  }

  while (v3++ < 3);
  return *(a1 + 12) == 2;
}

char *sub_2213DAB48(void *a1, char *__src, unint64_t a3, char *a4)
{
  if (!a3)
  {
    return __src;
  }

  v5 = a4;
  v8 = a1[1];
  v9 = a1[2];
  if (a3 <= (v9 - v8) >> 3)
  {
    v15 = v8 - __src;
    if (a3 <= (v8 - __src) >> 3)
    {
      v18 = a1[1];
      v17 = a3;
    }

    else
    {
      v16 = 0;
      v17 = v15 >> 3;
      v18 = &v8[8 * (a3 - (v15 >> 3))];
      v19 = *a4;
      v20 = (8 * a3 - v15 - 8) >> 3;
      v21 = vdupq_n_s64(v20);
      do
      {
        v22 = vmovn_s64(vcgeq_u64(v21, vorrq_s8(vdupq_n_s64(v16), xmmword_2217E0F60)));
        if (v22.i8[0])
        {
          *&v8[8 * v16] = v19;
        }

        if (v22.i8[4])
        {
          *&v8[8 * v16 + 8] = v19;
        }

        v16 += 2;
      }

      while (((v20 + 2) & 0x3FFFFFFFFFFFFFFELL) != v16);
      a1[1] = v18;
      if (v8 == __src)
      {
        return __src;
      }
    }

    v23 = &__src[8 * a3];
    v24 = &v18[-8 * a3];
    v25 = v18;
    if (v24 < v8)
    {
      v25 = v18;
      do
      {
        v26 = *v24;
        v24 += 8;
        *v25 = v26;
        v25 += 8;
      }

      while (v24 < v8);
    }

    a1[1] = v25;
    if (v18 != v23)
    {
      memmove(&__src[8 * a3], __src, v18 - v23);
    }

    if (__src <= v5)
    {
      if (a1[1] <= v5)
      {
        v27 = 0;
      }

      else
      {
        v27 = a3;
      }

      v5 += 8 * v27;
    }

    v28 = 0;
    v29 = *v5;
    v30 = vdupq_n_s64(v17 - 1);
    v31 = __src + 8;
    do
    {
      v32 = vmovn_s64(vcgeq_u64(v30, vorrq_s8(vdupq_n_s64(v28), xmmword_2217E0F60)));
      if (v32.i8[0])
      {
        *(v31 - 1) = v29;
      }

      if (v32.i8[4])
      {
        *v31 = v29;
      }

      v28 += 2;
      v31 += 2;
    }

    while (((v17 + 1) & 0xFFFFFFFFFFFFFFFELL) != v28);
    return __src;
  }

  v10 = *a1;
  v11 = a3 + (&v8[-*a1] >> 3);
  if (v11 >> 61)
  {
    sub_22107C148();
  }

  v12 = __src - v10;
  v13 = v9 - v10;
  if (v13 >> 2 > v11)
  {
    v11 = v13 >> 2;
  }

  if (v13 >= 0x7FFFFFFFFFFFFFF8)
  {
    v14 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v14 = v11;
  }

  if (v14)
  {
    sub_2210874C4(a1, v14);
  }

  v34 = 0;
  v33 = 8 * (v12 >> 3);
  v35 = *a4;
  v36 = (a3 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
  v37 = v36 - ((a3 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2;
  v38 = vdupq_n_s64(v36);
  v39 = (v33 + 8);
  do
  {
    v40 = vmovn_s64(vcgeq_u64(v38, vorrq_s8(vdupq_n_s64(v34), xmmword_2217E0F60)));
    if (v40.i8[0])
    {
      *(v39 - 1) = v35;
    }

    if (v40.i8[4])
    {
      *v39 = v35;
    }

    v34 += 2;
    v39 += 2;
  }

  while (v37 != v34);
  memcpy((v33 + 8 * a3), __src, a1[1] - __src);
  v41 = *a1;
  v42 = v33 + 8 * a3 + a1[1] - __src;
  a1[1] = __src;
  v43 = (__src - v41);
  v44 = (v33 - (__src - v41));
  memcpy(v44, v41, v43);
  v45 = *a1;
  *a1 = v44;
  a1[1] = v42;
  a1[2] = 0;
  if (v45)
  {
    operator delete(v45);
  }

  return v33;
}

char *sub_2213DAF88(void *a1, char *__src, unint64_t a3, unint64_t a4)
{
  if (!a3)
  {
    return __src;
  }

  v5 = a4;
  v8 = a1[1];
  v9 = a1[2];
  if (0x8E38E38E38E38E39 * ((v9 - v8) >> 3) >= a3)
  {
    v15 = 0x8E38E38E38E38E39 * ((v8 - __src) >> 3);
    v16 = a1[1];
    v17 = a3;
    if (a3 <= v15)
    {
LABEL_16:
      v23 = &__src[72 * a3];
      v24 = &v16[-72 * a3];
      v25 = v16;
      if (v24 < v8)
      {
        v25 = v16;
        do
        {
          *v25 = *v24;
          v26 = *(v24 + 16);
          v27 = *(v24 + 32);
          v28 = *(v24 + 48);
          *(v25 + 8) = *(v24 + 64);
          *(v25 + 2) = v27;
          *(v25 + 3) = v28;
          *(v25 + 1) = v26;
          v24 += 72;
          v25 += 72;
        }

        while (v24 < v8);
      }

      a1[1] = v25;
      if (v16 != v23)
      {
        memmove(&__src[72 * a3], __src, v16 - v23);
      }

      if (__src <= v5)
      {
        if (a1[1] <= v5)
        {
          v29 = 0;
        }

        else
        {
          v29 = a3;
        }

        v5 += 72 * v29;
      }

      v30 = __src;
      do
      {
        *v30 = *v5;
        v31 = *(v5 + 16);
        v32 = *(v5 + 32);
        v33 = *(v5 + 48);
        *(v30 + 8) = *(v5 + 64);
        *(v30 + 2) = v32;
        *(v30 + 3) = v33;
        *(v30 + 1) = v31;
        v30 += 72;
        --v17;
      }

      while (v17);
      return __src;
    }

    v18 = 0;
    v16 = &v8[72 * (a3 - v15)];
    do
    {
      v19 = &v8[v18];
      *v19 = *a4;
      v20 = *(a4 + 16);
      v21 = *(a4 + 32);
      v22 = *(a4 + 48);
      *(v19 + 8) = *(a4 + 64);
      *(v19 + 2) = v21;
      *(v19 + 3) = v22;
      *(v19 + 1) = v20;
      v18 += 72;
    }

    while (72 * a3 - 8 * ((v8 - __src) >> 3) != v18);
    a1[1] = v16;
    if (v8 != __src)
    {
      v17 = 0x8E38E38E38E38E39 * ((v8 - __src) >> 3);
      goto LABEL_16;
    }

    return __src;
  }

  v10 = *a1;
  v11 = a3 - 0x71C71C71C71C71C7 * (&v8[-*a1] >> 3);
  if (v11 > 0x38E38E38E38E38ELL)
  {
    sub_22107C148();
  }

  v12 = __src - v10;
  v13 = 0x8E38E38E38E38E39 * ((v9 - v10) >> 3);
  if (2 * v13 > v11)
  {
    v11 = 2 * v13;
  }

  if (v13 >= 0x1C71C71C71C71C7)
  {
    v14 = 0x38E38E38E38E38ELL;
  }

  else
  {
    v14 = v11;
  }

  if (v14)
  {
    sub_2213DD488(a1, v14);
  }

  v34 = 8 * (v12 >> 3);
  v35 = (v34 + 72 * a3);
  v36 = 72 * a3;
  v37 = v34;
  do
  {
    *v37 = *a4;
    v38 = *(a4 + 16);
    v39 = *(a4 + 32);
    v40 = *(a4 + 48);
    *(v37 + 64) = *(a4 + 64);
    *(v37 + 32) = v39;
    *(v37 + 48) = v40;
    *(v37 + 16) = v38;
    v37 += 72;
    v36 -= 72;
  }

  while (v36);
  memcpy(v35, __src, a1[1] - __src);
  v41 = *a1;
  v42 = &v35[a1[1] - __src];
  a1[1] = __src;
  v43 = (__src - v41);
  v44 = (v34 - (__src - v41));
  memcpy(v44, v41, v43);
  v45 = *a1;
  *a1 = v44;
  a1[1] = v42;
  a1[2] = 0;
  if (v45)
  {
    operator delete(v45);
  }

  return v34;
}

void sub_2213DB544(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  JUMPOUT(0x2213DB53CLL);
}

void sub_2213DB868(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  JUMPOUT(0x2213DB860);
}

void sub_2213DB9AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);

  _Unwind_Resume(a1);
}

__n128 sub_2213DB9E4(uint64_t a1, uint64_t a2)
{
  *(a1 + 48) = *(a2 + 48);
  result = *(a2 + 64);
  v3 = *(a2 + 80);
  v4 = *(a2 + 96);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 80) = v3;
  *(a1 + 96) = v4;
  *(a1 + 64) = result;
  return result;
}

__n128 sub_2213DBA0C(void *a1, unsigned int a2, unsigned int a3)
{
  v3 = *(a1[4] + 208);
  v4 = (v3 + 72 * a3);
  v15 = *(v4 + 8);
  v13 = v4[2];
  v14 = v4[3];
  v11 = *v4;
  v12 = v4[1];
  if (*(*(a1[5] + 8) + 24) == a2)
  {
    v5 = *(a1[6] + 8) + 48;
  }

  else
  {
    v5 = v3 + 72 * a2;
  }

  *v4 = *v5;
  v6 = *(v5 + 16);
  v7 = *(v5 + 32);
  v8 = *(v5 + 48);
  *(v4 + 8) = *(v5 + 64);
  v4[2] = v7;
  v4[3] = v8;
  v4[1] = v6;
  *(*(a1[5] + 8) + 24) = a3;
  v9 = *(a1[6] + 8);
  *(v9 + 80) = v13;
  *(v9 + 96) = v14;
  *(v9 + 112) = v15;
  result = v12;
  *(v9 + 48) = v11;
  *(v9 + 64) = v12;
  return result;
}

uint64_t sub_2213DC3E0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = &a2[a3];
  objc_msgSend_p_deleteRowsStartingWith_upToRow_(*(a1 + 32), a2, a2, &a2[a3], a5);
  objc_msgSend_removeIndexesInRange_(*(a1 + 40), v9, a2, a3, v10);
  v13 = *(a1 + 40);

  return objc_msgSend_shiftIndexesStartingAtIndex_by_(v13, v11, v8, -a3, v12);
}

uint64_t sub_2213DC450(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  objc_msgSend_p_insertRows_atRow_(*(a1 + 32), a2, a3, a2, a5);
  objc_msgSend_shiftIndexesStartingAtIndex_by_(*(a1 + 40), v8, a2, a3, v9);
  v12 = *(a1 + 40);

  return objc_msgSend_addIndexesInRange_(v12, v10, a2, a3, v11);
}

void sub_2213DC4B8(uint64_t a1, const char *a2, __int16 a3, uint64_t a4, uint64_t a5)
{
  v13 = objc_msgSend_p_deleteColumnsStartingWith_upToColumn_(*(a1 + 32), a2, a2, (a2 + a3), a5);
  if (objc_msgSend_count(v13, v6, v7, v8, v9))
  {
    objc_msgSend_addIndexes_(*(a1 + 40), v10, v13, v11, v12);
  }
}

uint64_t sub_2213DC544(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a3;
  v6 = a2;
  v7 = result;
  v27.origin = a2;
  v27.size = a3;
  v8 = *(result + 48);
  v9 = HIDWORD(a3);
  if (v8 <= 26)
  {
    if (v8 > 21)
    {
      if (v8 == 22)
      {
LABEL_32:
        v17 = *(v7 + 40);
        v18 = TSUCellRect::rows(&v27);
        return objc_msgSend_addIndexesInRange_(v17, v19, v18, v19, v20);
      }

      if (v8 == 26)
      {
        objc_msgSend_p_moveRowsFrom_toRow_(*(result + 32), a2, a2, a3, *(result + 52), *&v27.origin, *&v27.size);
        v15 = *(v7 + 40);
        v16 = *(v7 + 52);

        return objc_msgSend_tsu_moveIndexesInRange_toOffset_(v15, v14, v6, v9, v16);
      }
    }

    else if (v8 == 5)
    {
      v22 = *(result + 32);
      v23 = *(v7 + 56);

      return MEMORY[0x2821F9670](v22, sel_p_moveColumnsFrom_toColumn_, a2, a3, v23);
    }

    else if (v8 == 6)
    {
      v10 = a2 != 0x7FFFFFFF && (a2 & 0xFFFF00000000) == 0x7FFF00000000;
      v11 = v10 ? 0 : HIDWORD(a2);
      v12 = !a3 || WORD2(a2) == 0x7FFF;
      for (i = v12 ? 0x7FFF : a3 + WORD2(a2) - 1; v11 <= i; ++v11)
      {
        result = objc_msgSend_setModelWidth_forColumn_(*(v7 + 32), a2, v11, v5, a5, 0.0, *&v27.origin, *&v27.size);
      }
    }
  }

  else if (v8 <= 32)
  {
    if (v8 != 27)
    {
      if (v8 != 29)
      {
        return result;
      }

      goto LABEL_32;
    }

    v24 = a2 == 0x7FFFFFFF;
    if (v24 && (a2 & 0xFFFF00000000) != 0x7FFF00000000)
    {
      v25 = 0;
    }

    else
    {
      v25 = a2;
    }

    if (!v9)
    {
      v24 = 1;
    }

    if (v24)
    {
      v26 = 0x7FFFFFFF;
    }

    else
    {
      v26 = a2 + HIDWORD(a3) - 1;
    }

    while (v25 <= v26)
    {
      result = objc_msgSend_setModelHeight_forRow_(*(v7 + 32), a2, v25, v5, a5, 0.0, *&v27.origin, *&v27.size);
      v25 = (v25 + 1);
    }
  }

  else
  {
    if (v8 != 33 && v8 != 41)
    {
      if (v8 != 50)
      {
        return result;
      }

      objc_msgSend_p_resetToRows_andNumColumns_(*(result + 32), a2, HIDWORD(a3), a3, a5, *&v27.origin, *&v27.size);
      goto LABEL_32;
    }

    v21 = *(result + 32);

    return objc_msgSend_resetModelCache(v21, a2, a3, a3, a5);
  }

  return result;
}

uint64_t sub_2213DCB10(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2213DCB28(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v43 = objc_msgSend_p_resetFittingHeightsForRange_(*(a1 + 32), a2, a2, a3, a5);
  if (objc_msgSend_count(v43, v6, v7, v8, v9))
  {
    objc_msgSend_addIndexes_(*(a1 + 40), v10, v43, v11, v12);
    if ((*(a1 + 72) & 1) == 0)
    {
      v16 = *(a1 + 48);
      v17 = objc_msgSend_regionFromRowIndices_(TSTCellRegion, v13, v43, v14, v15);
      v21 = objc_msgSend_mergeRangesProppingRowHeightsInRegion_(v16, v18, v17, v19, v20);

      if (objc_msgSend_cellCount(v21, v22, v23, v24, v25))
      {
        v30 = objc_msgSend_cellCount(*(*(*(a1 + 64) + 8) + 40), v26, v27, v28, v29);
        v33 = objc_msgSend_region_addingRegion_(TSTCellRegion, v31, *(*(*(a1 + 64) + 8) + 40), v21, v32);
        v34 = *(*(a1 + 64) + 8);
        v35 = *(v34 + 40);
        *(v34 + 40) = v33;

        if (objc_msgSend_cellCount(*(*(*(a1 + 64) + 8) + 40), v36, v37, v38, v39) > v30)
        {
          objc_msgSend_addObject_(*(a1 + 56), v40, v21, v41, v42);
        }
      }
    }
  }
}

uint64_t sub_2213DCC84(uint64_t result, uint64_t a2)
{
  v2 = 0;
  v3 = *(*(result + 32) + 208) + 72 * a2 + 20;
  do
  {
    if (*(v3 + v2))
    {
      *(v3 + v2) = 1;
    }

    v2 += 16;
  }

  while (v2 != 64);
  return result;
}

uint64_t sub_2213DCD9C(uint64_t result, uint64_t a2)
{
  v2 = *(*(result + 32) + 208) + 72 * a2;
  for (i = 68; i != 4; i -= 16)
  {
    if (!*(v2 + i))
    {
      break;
    }

    *(v2 + i) = 2;
  }

  return result;
}

double sub_2213DD238(uint64_t a1)
{
  for (i = 0; i != 64; i += 16)
  {
    v2 = a1 + i;
    *(v2 + 8) = 0;
    *(v2 + 16) = 0x17FFFFFFFLL;
  }

  for (j = 0; j != 64; j += 16)
  {
    v4 = a1 + j;
    *(v4 + 8) = 0;
    *(v4 + 16) = 0x17FFFFFFFLL;
  }

  v5 = 0;
  *a1 = 0;
  do
  {
    v6 = &v12[v5];
    *v6 = 0;
    v6[1] = 0x17FFFFFFFLL;
    ++v5;
  }

  while (v5 != 4);
  for (k = 0; k != 4; ++k)
  {
    v8 = &v12[k];
    *v8 = 0;
    v8[1] = 0x17FFFFFFFLL;
  }

  v9 = v12[1];
  *(a1 + 8) = v12[0];
  *(a1 + 24) = v9;
  result = *&v13;
  v11 = v14;
  *(a1 + 40) = v13;
  *(a1 + 56) = v11;
  return result;
}

void sub_2213DD2E0(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (0x8E38E38E38E38E39 * ((v6 - v5) >> 3) >= a2)
  {
    if (a2)
    {
      v11 = v5 + 72 * a2;
      v12 = 72 * a2;
      do
      {
        *v5 = *a3;
        v13 = *(a3 + 16);
        v14 = *(a3 + 32);
        v15 = *(a3 + 48);
        *(v5 + 64) = *(a3 + 64);
        *(v5 + 32) = v14;
        *(v5 + 48) = v15;
        *(v5 + 16) = v13;
        v5 += 72;
        v12 -= 72;
      }

      while (v12);
      v5 = v11;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v7 = 0x8E38E38E38E38E39 * ((v5 - *a1) >> 3);
    v8 = v7 + a2;
    if (v7 + a2 > 0x38E38E38E38E38ELL)
    {
      sub_22107C148();
    }

    v9 = 0x8E38E38E38E38E39 * ((v6 - *a1) >> 3);
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x1C71C71C71C71C7)
    {
      v10 = 0x38E38E38E38E38ELL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      sub_2213DD488(a1, v10);
    }

    v16 = 72 * v7;
    v17 = 9 * a2;
    v18 = 72 * v7 + 72 * a2;
    v19 = 8 * v17;
    v20 = 72 * v7;
    do
    {
      *v20 = *a3;
      v21 = *(a3 + 16);
      v22 = *(a3 + 32);
      v23 = *(a3 + 48);
      *(v20 + 64) = *(a3 + 64);
      *(v20 + 32) = v22;
      *(v20 + 48) = v23;
      *(v20 + 16) = v21;
      v20 += 72;
      v19 -= 72;
    }

    while (v19);
    v24 = *(a1 + 8) - *a1;
    v25 = v16 - v24;
    memcpy((v16 - v24), *a1, v24);
    v26 = *a1;
    *a1 = v25;
    *(a1 + 8) = v18;
    *(a1 + 16) = 0;
    if (v26)
    {

      operator delete(v26);
    }
  }
}

void sub_2213DD488(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x38E38E38E38E38FLL)
  {
    operator new();
  }

  sub_22107C238();
}

uint64_t sub_2213DD4E4(uint64_t result, int a2, double a3)
{
  v3 = 0;
  for (i = 0; ; --i)
  {
    v5 = result + v3;
    if (*(result + v3 + 8) == a2)
    {
      return result;
    }

    v6 = *(v5 + 12);
    if (v6)
    {
      break;
    }

    if (*v5 < a3)
    {
LABEL_10:
      v7 = (result + v3 + 8);
      v8 = -i;
      v9 = (result + v3 + 12);
      if (v8 <= 2)
      {
        v10 = (result + 48);
        for (j = 3; j > v8; --j)
        {
          *v10 = *(v10 - 1);
          --v10;
        }
      }

      goto LABEL_13;
    }

LABEL_8:
    v3 += 16;
    if (v3 == 64)
    {
      return result;
    }
  }

  if (v6 == 1)
  {
    goto LABEL_10;
  }

  if (v6 != 2)
  {
    goto LABEL_8;
  }

  if (v3)
  {
    v12 = result + 16 * ~i;
    if (!*(v12 + 12) && *v12 == a3)
    {
      v7 = (result + v3 + 8);
      v9 = (result + v3 + 12);
LABEL_13:
      *(result + v3) = a3;
      *v7 = a2;
      *v9 = 0;
    }
  }

  return result;
}

void *sub_2213DD5AC(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (0x8E38E38E38E38E39 * ((v7 - *result) >> 3) < a4)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (a4 <= 0x38E38E38E38E38ELL)
    {
      v9 = 0x8E38E38E38E38E39 * (v7 >> 3);
      v10 = 2 * v9;
      if (2 * v9 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x1C71C71C71C71C7)
      {
        v11 = 0x38E38E38E38E38ELL;
      }

      else
      {
        v11 = v10;
      }

      sub_2213DD720(v6, v11);
    }

    sub_22107C148();
  }

  v12 = result[1];
  v13 = v12 - v8;
  if (0x8E38E38E38E38E39 * ((v12 - v8) >> 3) >= a4)
  {
    v16 = a3 - __src;
    if (v16)
    {
      result = memmove(*result, __src, v16);
    }

    v15 = &v8[v16];
  }

  else
  {
    v14 = &__src[v13];
    if (v12 != v8)
    {
      result = memmove(*result, __src, v13);
      v12 = v6[1];
    }

    if (a3 != v14)
    {
      result = memmove(v12, v14, a3 - v14);
    }

    v15 = &v12[a3 - v14];
  }

  v6[1] = v15;
  return result;
}

void sub_2213DD720(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x38E38E38E38E38FLL)
  {
    sub_2213DD488(a1, a2);
  }

  sub_22107C148();
}

uint64_t sub_2213DD770(uint64_t result, unsigned int a2, int a3, unsigned int a4)
{
  v4 = a3 + a2;
  v5 = *(result + 8);
  if (a4 <= a2)
  {
    if (v5 >= a4 && v5 < a2)
    {
      v10 = v5 + a3;
      goto LABEL_22;
    }

    if (v5 >= a2 && v5 < v4)
    {
      v10 = a4 - a2 + v5;
      goto LABEL_22;
    }
  }

  else
  {
    if (v5 >= a2 && v5 < v4)
    {
      v10 = a4 - v4 + v5;
LABEL_22:
      *(result + 8) = v10;
      return result;
    }

    if (v4 <= v5 && v5 < a4)
    {
      v10 = v5 - a3;
      goto LABEL_22;
    }
  }

  return result;
}

BOOL sub_2213DD7D8(uint64_t a1, unint64_t a2, unint64_t a3, int a4)
{
  v4 = 0;
  do
  {
    v5 = a1 + 16 * v4;
    v6 = *(v5 + 8);
    v8 = v6 >= a2;
    v7 = v6 - a2;
    v8 = !v8 || v7 >= a3;
    if (v8)
    {
      if (*(v5 + 12))
      {
        return *(a1 + 12) == 2;
      }
    }

    else
    {
      if (v4 <= 2)
      {
        v9 = (a1 + 16 + 16 * v4);
        v10 = v4 - 3;
        do
        {
          *(v9 - 1) = *v9;
          ++v9;
          v8 = __CFADD__(v10++, 1);
        }

        while (!v8);
      }

      *(a1 + 48) = 0;
      --v4;
      *(a1 + 56) = 0x7FFFFFFF;
      *(a1 + 60) = a4;
    }
  }

  while (v4++ < 3);
  return *(a1 + 12) == 2;
}

void sub_2213DDB40(_Unwind_Exception *a1)
{
  v7 = v6;

  _Unwind_Resume(a1);
}

void sub_2213DDD1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_2213DDD60(uint64_t a1, uint64_t a2)
{
  if ((a2 - 1) >= 2)
  {
    if (!a2)
    {
      WeakRetained = objc_loadWeakRetained((a1 + 32));
      v46 = objc_msgSend_offline(WeakRetained, v42, v43, v44, v45);

      if ((v46 & 1) == 0)
      {
        v70 = objc_loadWeakRetained((a1 + 32));
        objc_msgSend_setOffline_(v70, v47, 1, v48, v49);

        v71 = objc_loadWeakRetained((a1 + 32));
        v54 = objc_msgSend_coordinator(v71, v50, v51, v52, v53);
        v55 = objc_loadWeakRetained((a1 + 32));
        v60 = objc_msgSend_allRequestedKeys(v55, v56, v57, v58, v59);
        objc_msgSend_sourceFetcherDidGoOffline_forKeys_(v54, v61, v55, v60, v62);
      }
    }
  }

  else
  {
    v63 = objc_loadWeakRetained((a1 + 32));
    v7 = objc_msgSend_offline(v63, v3, v4, v5, v6);

    if (v7)
    {
      v64 = objc_loadWeakRetained((a1 + 32));
      objc_msgSend_setOffline_(v64, v8, 0, v9, v10);

      v65 = objc_loadWeakRetained((a1 + 32));
      objc_msgSend_setDoFullRefresh_(v65, v11, 1, v12, v13);

      v66 = objc_loadWeakRetained((a1 + 32));
      v18 = objc_msgSend_coordinator(v66, v14, v15, v16, v17);
      v19 = objc_loadWeakRetained((a1 + 32));
      v24 = objc_msgSend_allRequestedKeys(v19, v20, v21, v22, v23);
      objc_msgSend_sourceFetcherDidGoOnline_forKeys_(v18, v25, v19, v24, v26);

      v67 = objc_loadWeakRetained((a1 + 32));
      v31 = objc_msgSend_newlyRequestedKeys(v67, v27, v28, v29, v30);
      v36 = objc_msgSend_count(v31, v32, v33, v34, v35);

      if (v36)
      {
        v68 = objc_loadWeakRetained((a1 + 32));
        v41 = objc_msgSend_queue(v68, v37, v38, v39, v40);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = sub_2213DE034;
        block[3] = &unk_278463428;
        objc_copyWeak(&v73, (a1 + 32));
        dispatch_async(v41, block);

        objc_destroyWeak(&v73);
      }
    }
  }
}

void sub_2213DE034(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  objc_msgSend_p_refreshSpecifiers(WeakRetained, v1, v2, v3, v4);
}

void sub_2213DE1D4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a1 + 32);
  v7 = objc_msgSend_allRequestedKeys(*(a1 + 40), a2, a3, a4, a5);
  v41 = objc_msgSend_setOfSpecifiersNotContainedInSet_(v6, v8, v7, v9, v10);

  if (objc_msgSend_count(v41, v11, v12, v13, v14))
  {
    v19 = objc_msgSend_newlyRequestedKeys(*(a1 + 40), v15, v16, v17, v18);
    objc_msgSend_insertSpecifiersFromSet_(v19, v20, v41, v21, v22);
  }

  v23 = objc_msgSend_allRequestedKeys(*(a1 + 40), v15, v16, v17, v18);
  objc_msgSend_insertSpecifiersFromSet_(v23, v24, v41, v25, v26);

  v31 = objc_msgSend_allRequestedKeys(*(a1 + 40), v27, v28, v29, v30);
  v36 = objc_msgSend_count(v31, v32, v33, v34, v35);

  if (v36)
  {
    objc_msgSend_resumeUpdating(*(a1 + 40), v37, v38, v39, v40);
  }
}

void sub_2213DE3D8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = objc_msgSend_allRequestedKeys(*(a1 + 32), a2, a3, a4, a5);
  objc_msgSend_removeSpecifiersFromSet_(v6, v7, *(a1 + 40), v8, v9);

  v14 = objc_msgSend_allRequestedKeys(*(a1 + 32), v10, v11, v12, v13);
  v19 = objc_msgSend_count(v14, v15, v16, v17, v18);

  if (!v19)
  {
    v23 = *(a1 + 32);

    MEMORY[0x2821F9670](v23, sel_stopUpdating, v20, v21, v22);
  }
}

void sub_2213DE590()
{
  v0 = TSULogCreateCategory();
  v1 = __C;
  __C = v0;
}

void sub_2213DE6B0()
{
  v0 = TSULogCreateCategory();
  v1 = __C;
  __C = v0;
}

void sub_2213DE6F4()
{
  v0 = TSULogCreateCategory();
  v1 = __C;
  __C = v0;
}

void sub_2213DEB48()
{
  v0 = TSULogCreateCategory();
  v1 = __C;
  __C = v0;
}

void sub_2213DEB8C()
{
  v0 = TSULogCreateCategory();
  v1 = __C;
  __C = v0;
}

void sub_2213DEBD0()
{
  v0 = TSULogCreateCategory();
  v1 = __C;
  __C = v0;
}

void sub_2213DEC14()
{
  v0 = TSULogCreateCategory();
  v1 = __C;
  __C = v0;
}

void sub_2213DEC58()
{
  v0 = TSULogCreateCategory();
  v1 = __C;
  __C = v0;
}

void sub_2213DEC9C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (objc_msgSend_state(*(a1 + 32), a2, a3, a4, a5))
  {
    v10 = *(a1 + 32);

    objc_msgSend_p_refreshSpecifiers(v10, v6, v7, v8, v9);
  }

  else if (__C != -1)
  {
    sub_2216F7A50();
  }
}

void sub_2213DED04()
{
  v0 = TSULogCreateCategory();
  v1 = __C;
  __C = v0;
}

void sub_2213DED48()
{
  v0 = TSULogCreateCategory();
  v1 = __C;
  __C = v0;
}

void sub_2213DED8C()
{
  v0 = TSULogCreateCategory();
  v1 = __C;
  __C = v0;
}

void sub_2213DEDD0()
{
  v0 = TSULogCreateCategory();
  v1 = __C;
  __C = v0;
}

void sub_2213DEE14()
{
  v0 = TSULogCreateCategory();
  v1 = __C;
  __C = v0;
}

void sub_2213DF0BC()
{
  v0 = TSULogCreateCategory();
  v1 = __C;
  __C = v0;
}

void sub_2213DF108()
{
  v0 = TSULogCreateCategory();
  v1 = __C;
  __C = v0;
}

void sub_2213DF14C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (objc_msgSend_state(*(a1 + 32), a2, a3, a4, a5))
  {
    objc_msgSend_setEarlyRefreshRequested_(*(a1 + 32), v6, 0, v7, v8);
    v13 = *(a1 + 32);

    objc_msgSend_p_refreshSpecifiers(v13, v9, v10, v11, v12);
  }

  else if (__C != -1)
  {
    sub_2216F7A8C();
  }
}

void sub_2213DF1C0()
{
  v0 = TSULogCreateCategory();
  v1 = __C;
  __C = v0;
}

void sub_2213DF2C4()
{
  v0 = TSULogCreateCategory();
  v1 = __C;
  __C = v0;
}

void sub_2213DF844(uint64_t a1, void *a2)
{
  v9 = a2;
  if (objc_msgSend_canFetchKey_(*(a1 + 32), v3, v9, v4, v5))
  {
    objc_msgSend_insertSpecifier_(*(a1 + 40), v6, v9, v7, v8);
  }
}

void TSCEPartialEvalRewriter::TSCEPartialEvalRewriter(TSCEPartialEvalRewriter *this, TSCEFormulaObject *a2, TSCEFormulaRewriteContext *a3, TSCEEvaluationContext *a4)
{
  v7 = a2;
  v8 = a4;
  v13 = objc_msgSend_astNodeArrayCopy(v7, v9, v10, v11, v12);
  TSCEASTRewriter::TSCEASTRewriter(this, v13, a3, 0);
  *this = &unk_2834A7510;
  v14 = v8;
  *(this + 26) = 0;
  *(this + 25) = v14;
  *(this + 27) = 0;
  *(this + 28) = 0;
  v18 = objc_msgSend_evaluateForPartialResultsWithContext_(v7, v15, v14, v16, v17);
  v19 = *(this + 26);
  *(this + 26) = v18;

  v20 = [TSCEPartialResultTreeEnumerator alloc];
  v24 = objc_msgSend_initWithPartialResultTree_(v20, v21, *(this + 26), v22, v23);
  v25 = *(this + 27);
  *(this + 27) = v24;

  *(this + 152) = 0;
}

void TSCEPartialEvalRewriter::~TSCEPartialEvalRewriter(id *this)
{

  TSCEASTRewriter::~TSCEASTRewriter(this);
}

{
  TSCEPartialEvalRewriter::~TSCEPartialEvalRewriter(this);

  JUMPOUT(0x223DA1450);
}

void TSCEPartialEvalRewriter::willRewriteNode(void **this, TSCEASTElement *a2)
{
  v3 = TSCEASTElement::tag(a2, this);
  if (v3 > 0x38)
  {
    goto LABEL_6;
  }

  if (((1 << v3) & 0x100000188000000) != 0)
  {
    v8 = 0;
    goto LABEL_8;
  }

  if (v3 == 52)
  {
    v9 = this + 27;
    v10 = objc_msgSend_nextResult(this[27], v4, v5, v6, v7);
  }

  else
  {
LABEL_6:
    v9 = this + 27;
  }

  v8 = objc_msgSend_nextResult(*v9, v4, v5, v6, v7);
LABEL_8:
  v11 = this[28];
  this[28] = v8;
}

void TSCEPartialEvalRewriter::setPartialResult(void **this, TSCEPartialResult *a2)
{
  v3 = a2;
  objc_msgSend_setCurrentResult_(this[27], v4, v3, v5, v6);
  v7 = this[28];
  this[28] = v3;
}

TSCEASTUnknownFunctionElement *TSCEPartialEvalRewriter::unknownFunctionNode(TSCEPartialEvalRewriter *this, TSCEASTUnknownFunctionElement *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = TSCEASTUnknownFunctionElement::unknownFunctionName(a2, this, a3, a4, a5);
  objc_msgSend_unknownFunctionError_(TSCEError, v7, v6, v8, v9);

  return a2;
}

uint64_t TSCEPartialEvalRewriter::anyReferenceNode(void *a1, uint64_t a2)
{
  v4 = TSCEASTElement::refFlags(a2, a1);
  v5 = v4 & 0xC;
  v6 = *a1;
  if (v4)
  {
    if (v5 == 8)
    {
      v7 = v6[44];
      v8 = a1;
      v9 = a2;
    }

    else if (v5 == 4)
    {
      v7 = v6[45];
      v8 = a1;
      v9 = a2;
    }

    else
    {
      v7 = v6[43];
      v8 = a1;
      v9 = a2;
    }
  }

  else if (v5 == 8)
  {
    v7 = v6[41];
    v8 = a1;
    v9 = a2;
  }

  else if (v5 == 4)
  {
    v7 = v6[42];
    v8 = a1;
    v9 = a2;
  }

  else
  {
    v7 = v6[40];
    v8 = a1;
    v9 = a2;
  }

  return v7(v8, v9);
}

TSCEASTRelativeCoordRefElement *TSCEPartialEvalRewriter::referenceErrorNode(TSCEPartialEvalRewriter *this, TSCEASTRelativeCoordRefElement *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  objc_msgSend_invalidReferenceError(TSCEError, a2, a3, a4, a5);

  return a2;
}

TSCEASTRelativeCoordRefElement *TSCEPartialEvalRewriter::referenceErrorWithUidsNode(TSCEPartialEvalRewriter *this, TSCEASTRelativeCoordRefElement *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  objc_msgSend_invalidReferenceError(TSCEError, a2, a3, a4, a5);

  return a2;
}

TSCEASTUidReferenceElement *TSCEPartialEvalRewriter::uidReferenceNode(TSCEPartialEvalRewriter *this, TSCEASTUidReferenceElement *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = MEMORY[0x277D81150];
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "virtual TSCEASTElement *TSCEPartialEvalRewriter::uidReferenceNode(TSCEASTUidReferenceElement *)", a4, a5);
  v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEPartialEvalRewriter.mm", v9, v10);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v12, v7, v11, 387, 0, "uidReferenceNode() seen while evaluating");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14, v15, v16);
  objc_msgSend_invalidReferenceError(TSCEError, v17, v18, v19, v20);

  return a2;
}

TSCEASTFunctionElement *TSCEPartialEvalRewriter::rewriteFunctionToRemoveNumberToDateCoercions(TSCEPartialEvalRewriter *this, TSCEASTFunctionElement *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v63 = *MEMORY[0x277D85DE8];
  v7 = TSCEASTFunctionElement::functionIndex(a2, this, a3, a4, a5);
  v55 = a2;
  v8 = (*(*a2 + 48))(a2, this);
  v9 = sub_221089E8C(this);
  v56 = objc_msgSend_XLImportDateMode(v9, v10, v11, v12, v13);

  v54 = objc_msgSend_functionSpecForFunctionIndex_(TSCEFunctionSpec, v14, v7, v15, v16);
  v53 = *(this + 28);
  v58 = objc_msgSend_children(v53, v17, v18, v19, v20);
  v21 = v54;
  if (objc_msgSend_maxArguments(v54, v22, v23, v24, v25) && v8)
  {
    v29 = 0;
    v59 = v8;
    do
    {
      if (objc_msgSend_preferredTypeForArgumentIndex_(v21, v26, v29, v27, v28) == 3)
      {
        v30 = objc_msgSend_objectAtIndexedSubscript_(v58, v26, v29, v27, v28);
        v60 = v30;
        if (v30)
        {
          objc_msgSend_value(v30, v31, v32, v33, v34);
        }

        else
        {
          objc_msgSend_nilValue(TSCENilValue, v31, v32, v33, v34);
        }
        v61 = ;
        v38 = objc_msgSend_deepType_(v61, v35, *(this + 25), v36, v37);
        if (v38 == 5 || !v38)
        {
          v42 = TSCEASTElementWithChildren::child(v55, v29);
          switch(v56)
          {
            case 0u:
              goto LABEL_13;
            case 1u:
              objc_msgSend_dateWithSerialNumber_dateMode_(TSCECalendar, v39, 1, v40, v41, 0.0);
              objc_claimAutoreleasedReturnValue();
              TSCEASTRewriter::createDeepCopy(this, v42, v43, v44, v45);
              TSCEASTRewriter::createDeepCopy(this, v42, v46, v47, v48);
              TSUDecimal::operator=();
              TSCEASTIteratorBase::createNumber(this, &v62, v49, v50, v51);
            case 2u:
LABEL_13:
              v57 = objc_msgSend_dateWithSerialNumber_dateMode_(TSCECalendar, v39, v56, v40, v41, 0.0);
              TSCEASTIteratorBase::createDate(this, v57, 0, 0, 1);
          }
        }

        v21 = v54;
      }

      ++v29;
    }

    while (v29 != v59);
  }

  return v55;
}

uint64_t TSCEPartialEvalRewriter::bakeForSingleValue(TSCEPartialEvalRewriter *this, TSCEValue *a2, uint64_t a3, TSCEFunctionSpec *a4, _BOOL4 a5)
{
  v8 = a2;
  v246 = a4;
  v17 = 0;
  switch(objc_msgSend_nativeType(v8, v9, v10, v11, v12))
  {
    case 0u:
      TSUDecimal::operator=();
      TSCEASTIteratorBase::createNumber(this, v247, v133, v134, v135);
    case 1u:
    case 0x10u:
      v18 = *(this + 25);
      v253 = 0;
      v19 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v8, v13, v18, v246, a3, 0, &v253);
      v20 = v253;
      v24 = objc_msgSend_deepResolveInPlace_(v19, v21, *(this + 25), v22, v23);
      v29 = objc_msgSend_abstractBackingGrid(v19, v25, v26, v27, v28);
      v34 = v29;
      if (v29)
      {
        v244 = v29;
        v35 = objc_msgSend_count(v29, v30, v31, v32, v33);
        __p[0] = 0;
        __p[1] = 0;
        v252 = 0;
        *v247 = *(this + 25);
        *&v247[8] = v246;
        *&v247[16] = 0;
        *&v247[24] = a3;
        *&v247[28] = 0;
        *&v247[31] = 0;
        v248 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
        v249 = 0;
        v250 = 0;
        if (v35)
        {
          for (i = 0; i != v35; ++i)
          {
            v41 = objc_msgSend_valueAtIndex_accessContext_(v34, v36, i, v247, v39);
            v45 = TSCEPartialEvalRewriter::bakeForSingleValue(this, v41, a3, v246, a5);
            if (!v45)
            {
              v50 = MEMORY[0x277D81150];
              v51 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v42, "TSCEASTElement *TSCEPartialEvalRewriter::bakeForSingleValue(TSCEValue *__strong, int, TSCEFunctionSpec *__strong, BOOL)", v43, v44);
              v55 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v52, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEPartialEvalRewriter.mm", v53, v54);
              objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v50, v56, v51, v55, 735, 0, "bake failed for array element, pushing empty arg");

              objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v57, v58, v59, v60);
              TSCEASTIteratorBase::createTagOnlyOp(this, 0x17, v61, v62, v63);
            }

            v46 = __p[1];
            if (__p[1] < v252)
            {
              *__p[1] = v45;
              v64 = v46 + 8;
            }

            else
            {
              v47 = (__p[1] - __p[0]) >> 3;
              if ((v47 + 1) >> 61)
              {
                sub_22107C148();
              }

              v48 = (v252 - __p[0]) >> 2;
              if (v48 <= v47 + 1)
              {
                v48 = v47 + 1;
              }

              if (v252 - __p[0] >= 0x7FFFFFFFFFFFFFF8)
              {
                v49 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v49 = v48;
              }

              if (v49)
              {
                sub_221122DC8(__p, v49);
              }

              *(8 * v47) = v45;
              v64 = (8 * v47 + 8);
              v65 = (8 * v47 - (__p[1] - __p[0]));
              memcpy(v65, __p[0], __p[1] - __p[0]);
              v66 = __p[0];
              __p[0] = v65;
              __p[1] = v64;
              v252 = 0;
              if (v66)
              {
                operator delete(v66);
              }

              v34 = v244;
            }

            __p[1] = v64;
          }
        }

        if (objc_msgSend_gridKind(v34, v36, v37, v38, v39))
        {
          if (v35 >= 0xFFFFFFFF)
          {
            v71 = MEMORY[0x277D81150];
            v72 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v67, "TSCEASTElement *TSCEPartialEvalRewriter::bakeForSingleValue(TSCEValue *__strong, int, TSCEFunctionSpec *__strong, BOOL)", v69, v70);
            v76 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v73, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEPartialEvalRewriter.mm", v74, v75);
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v71, v77, v72, v76, 743, 0, "too many arguments to fit in a list node!");

            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v78, v79, v80, v81);
          }

          TSCEASTRewriter::createList(this, __p, v68, v69, v70);
        }

        v201 = objc_msgSend_dimensions(v34, v67, v68, v69, v70);
        TSCEASTRewriter::createArray(this, v201, __p, v202, v203);
      }

      v17 = 0;

      goto LABEL_56;
    case 2u:
      v162 = objc_msgSend_asBooleanValue(v8, v13, v14, v15, v16);
      v20 = v162;
      if (v162)
      {
        v167 = objc_msgSend_asBool(v162, v163, v164, v165, v166);
        TSCEASTIteratorBase::createBool(this, v167, v168, v169, v170);
      }

      goto LABEL_54;
    case 3u:
      v171 = objc_msgSend_asDateValue(v8, v13, v14, v15, v16);
      v20 = v171;
      if (v171)
      {
        objc_msgSend_format(v171, v172, v173, v174, v175);
        if (*&v247[8] == 261)
        {
          objc_msgSend_format(v20, v176, v177, v178, v179);
          v184 = TSCEFormat::dateTimeFormat(v247, v180, v181, v182, v183);
          v189 = objc_msgSend_date(v20, v185, v186, v187, v188);
          v194 = objc_msgSend_formatString(v184, v190, v191, v192, v193);
          TSCEASTIteratorBase::createDate(this, v189, v194, 0, 1);
        }

        v237 = objc_msgSend_date(v20, v176, v177, v178, v179);
        TSCEASTIteratorBase::createDate(this, v237, 0, 0, 1);
      }

      goto LABEL_54;
    case 5u:
      v94 = objc_msgSend_asNumberValue(v8, v13, v14, v15, v16);
      v20 = v94;
      if (v94)
      {
        *v247 = objc_msgSend_decimalRepresentation(v94, v95, v96, v97, v98);
        *&v247[8] = v99;
        TSCEASTIteratorBase::createNumber(this, v247, v100, v101, v102);
      }

      goto LABEL_54;
    case 6u:
      v136 = objc_msgSend_asReferenceValue(v8, v13, v14, v15, v16);
      v20 = v136;
      if (!v136)
      {
        goto LABEL_54;
      }

      if (!a5)
      {
        v205 = objc_msgSend_range(v136, v137, v138, v139, v140);
        v207 = v206;
        __p[0] = v205;
        __p[1] = v206;
        v211 = objc_msgSend_preserveFlags(v20, v206, v208, v209, v210);
        LOBYTE(v254._row) = v211;
        v216 = objc_msgSend_tableUID(v20, v212, v213, v214, v215);
        v221 = v216;
        v222 = v217;
        if (v205 != v207 || ((v207 ^ v205) & 0x101FFFF00000000) != 0 || ((v211 ^ (v211 >> 2)) & 3) != 0)
        {
          TSCERangeCoordinate::setPreserveFlags(__p, &v254);
          v223 = [TSCERelativeTractRef alloc];
          *v247 = *__p;
          *&v247[16] = v221;
          *&v247[24] = v222;
          v228 = objc_msgSend_containingCell(*(this + 25), v224, v225, v226, v227);
          v231 = objc_msgSend_initWithRangeRef_hostCell_(v223, v229, v247, v228, v230);
          v236 = objc_msgSend_containingTable(*(this + 25), v232, v233, v234, v235);
          TSCEASTIteratorBase::createColonTractRef(this, v231, 0, v236);
        }

        *v247 = v205;
        *&v247[8] = v216;
        *&v247[16] = v217;
        v238 = objc_msgSend_containingTable(*(this + 25), v217, v218, v219, v220);
        v243 = objc_msgSend_containingCell(*(this + 25), v239, v240, v241, v242);
        TSCEASTIteratorBase::createReferenceWithHostCell(this, v247, &v254, v238, v243, 0);
      }

      v19 = objc_msgSend_referredToValue_fetchRichTextAttributesIfPlainText_(v136, v137, *(this + 25), 0, v140);
      v17 = TSCEPartialEvalRewriter::bakeForSingleValue(this, v19, a3, v246, 1);
LABEL_56:

      goto LABEL_57;
    case 7u:
      if (objc_msgSend_isRichTextValue(v8, v13, v14, v15, v16))
      {
        v145 = objc_msgSend_asRichTextValue(v8, v141, v142, v143, v144);
        v20 = v145;
        if (v145)
        {
          v150 = objc_msgSend_asString(v145, v146, v147, v148, v149);
          TSCEASTIteratorBase::createString(this, v150);
        }
      }

      else
      {
        v195 = objc_msgSend_asStringValue(v8, v141, v142, v143, v144);
        v20 = v195;
        if (v195)
        {
          v200 = objc_msgSend_asString(v195, v196, v197, v198, v199);
          TSCEASTIteratorBase::createString(this, v200);
        }
      }

      goto LABEL_54;
    case 9u:
      TSCEASTIteratorBase::createReferenceError(this, v13, v14, v15, v16);
    case 0xAu:
      TSCEASTIteratorBase::createTagOnlyOp(this, 0x17, v14, v15, v16);
    case 0xCu:
      TSCEASTIteratorBase::createToken(this, 1, v14, v15, v16);
    case 0xDu:
      for (j = objc_msgSend_isThunk(v8, v13, v14, v15, v16); j; j = objc_msgSend_isThunk(v128, v129, v130, v131, v132))
      {
        v104 = *(this + 25);
        v109 = objc_msgSend_copy(v104, v105, v106, v107, v108);

        v114 = objc_msgSend_asThunkValue(v8, v110, v111, v112, v113);
        v115 = [TSCEFormulaObject alloc];
        v120 = objc_msgSend_ast(v114, v116, v117, v118, v119);
        v124 = objc_msgSend_initWithNodeArray_(v115, v121, v120, v122, v123);
        v128 = objc_msgSend_evaluateWithContext_(v124, v125, v109, v126, v127);

        v8 = v128;
      }

      v17 = TSCEPartialEvalRewriter::bakeForSingleValue(this, v8, a3, v246, a5);
      break;
    case 0xEu:
      v88 = objc_msgSend_asCategoryRefValue(v8, v13, v14, v15, v16);
      v20 = v88;
      if (v88)
      {
        v93 = objc_msgSend_categoryRef(v88, v89, v90, v91, v92);
        TSCEASTIteratorBase::createCategoryRef(this, v93);
      }

      goto LABEL_54;
    case 0x11u:
      v82 = objc_msgSend_asViewTractRefValue(v8, v13, v14, v15, v16);
      v20 = v82;
      if (v82)
      {
        v87 = objc_msgSend_viewTractRef(v82, v83, v84, v85, v86);
        TSCEASTIteratorBase::createViewTractRef(this, v87);
      }

LABEL_54:
      v17 = 0;
LABEL_57:

      break;
    case 0x13u:
      v151 = MEMORY[0x277D81150];
      v152 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "TSCEASTElement *TSCEPartialEvalRewriter::bakeForSingleValue(TSCEValue *__strong, int, TSCEFunctionSpec *__strong, BOOL)", v15, v16);
      v156 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v153, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEPartialEvalRewriter.mm", v154, v155);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v151, v157, v152, v156, 693, 0, "Cannot bake a TSCEFunctorValue down to a simple value");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v158, v159, v160, v161);
      v17 = 0;
      break;
    default:
      break;
  }

  return v17;
}

void TSCEPartialEvalRewriter::bakeChildNodesToValues(id *this, TSCEASTElementWithChildren *a2, int a3, TSCEFunctionSpec *a4, _BOOL4 a5)
{
  v44 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v36 = this[28];
  v38 = objc_msgSend_children(v36, v9, v10, v11, v12);
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = objc_msgSend_copy(v38, v13, v14, v15, v16);
  v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v17, &v39, v43, 16);
  if (v22)
  {
    LODWORD(v23) = 0;
    v24 = *v40;
    do
    {
      v25 = 0;
      v23 = v23;
      do
      {
        if (*v40 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v26 = objc_msgSend_value(*(*(&v39 + 1) + 8 * v25), v18, v19, v20, v21);
        v27 = TSCEPartialEvalRewriter::bakeForSingleValue(this, v26, v23, v8, a5);
        if (v27)
        {
          TSCEASTElementWithChildren::setChildAtIndex(a2, v27, v23, this, v28);
          v29 = [TSCEPartialResult alloc];
          v33 = objc_msgSend_initWithValue_(v29, v30, v26, v31, v32);
          objc_msgSend_setObject_atIndexedSubscript_(v38, v34, v33, v23, v35);
        }

        ++v23;
        ++v25;
      }

      while (v22 != v25);
      v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v18, &v39, v43, 16);
    }

    while (v22);
  }
}

id TSCEArgumentAccessor::TSUFormattedDateValueFromDateString(TSCEArgumentAccessor *this, NSString *a2, TSCEEvaluationContext *a3)
{
  v4 = this;
  v9 = objc_msgSend_locale(a2, v5, v6, v7, v8);
  v26 = 0;
  v10 = TSUCreateDateFromString();
  v11 = 0;

  if (v10)
  {
    v16 = objc_alloc(MEMORY[0x277D80658]);
    v20 = objc_msgSend_initWithFormatString_(v16, v17, v11, v18, v19);
    TSCEFormat::TSCEFormat(&v25, v20, 0);
    v23 = objc_msgSend_dateValue_format_(TSCEDateValue, v21, v10, &v25, v22);
  }

  else
  {
    v23 = objc_msgSend_nilValue(TSCENilValue, v12, v13, v14, v15);
  }

  return v23;
}

uint64_t TSCEArgumentAccessor::shouldEarlyReturnForEmpty(void **a1, TSCEGridAccessContext *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (objc_msgSend_valueIsEmptyWithContext_(*a1, a2, a2->var0, a4, a5))
  {
    v11 = objc_msgSend_nativeType(*a1, v7, v8, v9, v10);
    v16 = TSCEGridAccessContext::argSpec(a2, v12, v13, v14, v15);
    v17 = v16;
    if (v16)
    {
      LODWORD(v16) = objc_msgSend_argumentType(v16, v7, v8, v9, v10);
    }

    if (v11 != 6 || v16 != -1 && v16 != 6 && (!v17 || !objc_msgSend_referenceForGeometryOnly(v17, v7, v8, v9, v10)))
    {
      goto LABEL_10;
    }
  }

  result = objc_msgSend_isNil(*a1, v7, v8, v9, v10);
  if (result)
  {
LABEL_10:
    *a1 = objc_msgSend_nilValue(TSCENilValue, v7, v8, v9, v10);
    return 1;
  }

  return result;
}

id TSCEArgumentAccessor::boundsCheckAndCoerce(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  if ((objc_msgSend_isNil(a1, a2, a3, a4, a5) & 1) != 0 || (v13 = TSCEGridAccessContext::argSpec(a2, v9, v10, v11, v12)) == 0)
  {
LABEL_6:
    v22 = a1;
    goto LABEL_7;
  }

  v18 = v13;
  v19 = objc_msgSend_argumentType(v13, v14, v15, v16, v17);
  if (v19 != 8)
  {
    if (v19 == 5)
    {
      v20 = *(a2 + 8);
      v21 = *a2;
      *a4 = TSCEArgumentAccessor::checkBoundsAndUnits(a1, v21, v20, v18, *(a2 + 24), a3);
    }

    goto LABEL_6;
  }

  v22 = TSCEArgumentAccessor::coerceValueToNumberOrDate(a1, *a2, *(a2 + 8), *(a2 + 24), a3, a4);
LABEL_7:

  return v22;
}

id TSCEArgumentAccessor::checkBoundsAndUnits(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, int a6)
{
  v11 = a1;
  objc_msgSend_minValue(a4, v12, v13, v14, v15);
  v17 = v16;
  objc_msgSend_maxValue(a4, v18, v19, v20, v21);
  v23 = v22;
  v28 = objc_msgSend_disallowCurrency(a4, v24, v25, v26, v27);
  v33 = objc_msgSend_disallowDuration(a4, v29, v30, v31, v32);
  v38 = v33;
  v39 = v17 != INFINITY;
  if (v23 != INFINITY)
  {
    v39 = 1;
  }

  if (((v39 | v28 | v33) & 1) == 0)
  {
    v48 = objc_msgSend_argumentType(a4, v34, v35, v36, v37);
    v49 = 0;
    if (a6 != 5 && v48 != 15)
    {
      v104 = 0;
      v50 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v11, v47, a2, a3, a5, &v104);
      v49 = v104;
    }

    v51 = v49;
    goto LABEL_78;
  }

  v106 = 0;
  v40 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v11, v34, a2, a3, a5, &v106);
  v41 = v106;
  if (v41)
  {
    v46 = v41;

    goto LABEL_79;
  }

  hasUnits = objc_msgSend_hasUnits(v40, v42, v43, v44, v45);
  if (hasUnits)
  {
    v57 = objc_msgSend_dimension(v40, v52, v53, v54, v55);
    if (v57 != 4)
    {

      goto LABEL_64;
    }
  }

  v105._decimal.w[0] = objc_msgSend_decimalRepresentation(v40, v52, v53, v54, v55);
  v105._decimal.w[1] = v58;
  TSUDecimal::doubleValue(&v105);
  v60 = v59;

  if (!objc_msgSend_integerOnly(a4, v61, v62, v63, v64))
  {
LABEL_28:
    if (v17 == INFINITY || v23 == INFINITY)
    {
      if (v17 == INFINITY || v23 != INFINITY)
      {
        v57 = 4;
        if (v17 != INFINITY || v23 == INFINITY)
        {
LABEL_64:
          if ((v28 | v38) & hasUnits)
          {
            if (v57 == 4)
            {
              v95 = v28;
            }

            else
            {
              v95 = 0;
            }

            if (v95 == 1)
            {
              v96 = objc_msgSend_functionName(a3, v65, v66, v67, v68);
              v99 = objc_msgSend_currencyNotAllowedErrorForFunctionName_argumentNumber_(TSCEError, v97, v96, (a5 + 1), v98);
LABEL_75:
              v94 = v99;

              goto LABEL_77;
            }

            if (v57)
            {
              v100 = 0;
            }

            else
            {
              v100 = v38;
            }

            if (v100 == 1)
            {
              v96 = objc_msgSend_functionName(a3, v65, v66, v67, v68);
              v99 = objc_msgSend_durationNotAllowedError_argumentNumber_(TSCEError, v101, v96, (a5 + 1), v102);
              goto LABEL_75;
            }
          }

          v94 = 0;
          goto LABEL_77;
        }

        if (objc_msgSend_maxInclusive(a4, v65, v66, v67, v68))
        {
          if (v60 <= v23)
          {
            goto LABEL_64;
          }

          v84 = objc_msgSend_functionName(a3, v65, v66, v67, v68);
          v86 = objc_msgSend_outOfBoundsArgumentErrorForArgument_functionName_upperBound_upperBoundInclusive_(TSCEError, v89, (a5 + 1), v84, 1, v23);
        }

        else
        {
          if (v60 < v23)
          {
            goto LABEL_64;
          }

          v84 = objc_msgSend_functionName(a3, v65, v66, v67, v68);
          v86 = objc_msgSend_outOfBoundsArgumentErrorForArgument_functionName_upperBound_upperBoundInclusive_(TSCEError, v93, (a5 + 1), v84, 0, v23);
        }

        goto LABEL_62;
      }

      if (objc_msgSend_minInclusive(a4, v65, v66, v67, v68))
      {
        if (v60 >= v17)
        {
          goto LABEL_63;
        }

        v84 = objc_msgSend_functionName(a3, v65, v66, v67, v68);
        v86 = objc_msgSend_outOfBoundsArgumentErrorForArgument_functionName_lowerBound_lowerBoundInclusive_(TSCEError, v87, (a5 + 1), v84, 1, v17);
      }

      else
      {
        if (v60 > v17)
        {
          goto LABEL_63;
        }

        v84 = objc_msgSend_functionName(a3, v65, v66, v67, v68);
        v86 = objc_msgSend_outOfBoundsArgumentErrorForArgument_functionName_lowerBound_lowerBoundInclusive_(TSCEError, v91, (a5 + 1), v84, 0, v17);
      }
    }

    else
    {
      if (objc_msgSend_minInclusive(a4, v65, v66, v67, v68) && objc_msgSend_maxInclusive(a4, v65, v66, v67, v68))
      {
        if (v60 < v17 || v60 > v23)
        {
          v84 = objc_msgSend_functionName(a3, v65, v66, v67, v68);
          v86 = objc_msgSend_outOfBoundsArgumentErrorForArgument_functionName_lowerBound_lowerBoundInclusive_upperBound_upperBoundInclusive_(TSCEError, v85, (a5 + 1), v84, 1, 1, v17, v23);
          goto LABEL_62;
        }

LABEL_63:
        v57 = 4;
        goto LABEL_64;
      }

      if (objc_msgSend_minInclusive(a4, v65, v66, v67, v68) && (objc_msgSend_maxInclusive(a4, v65, v66, v67, v68) & 1) == 0)
      {
        if (v60 >= v17 && v60 < v23)
        {
          goto LABEL_63;
        }

        v84 = objc_msgSend_functionName(a3, v65, v66, v67, v68);
        v86 = objc_msgSend_outOfBoundsArgumentErrorForArgument_functionName_lowerBound_lowerBoundInclusive_upperBound_upperBoundInclusive_(TSCEError, v92, (a5 + 1), v84, 1, 0, v17, v23);
      }

      else if ((objc_msgSend_minInclusive(a4, v65, v66, v67, v68) & 1) != 0 || !objc_msgSend_maxInclusive(a4, v65, v66, v67, v68))
      {
        if (v60 > v17 && v60 < v23)
        {
          goto LABEL_63;
        }

        v84 = objc_msgSend_functionName(a3, v65, v66, v67, v68);
        v86 = objc_msgSend_outOfBoundsArgumentErrorForArgument_functionName_lowerBound_lowerBoundInclusive_upperBound_upperBoundInclusive_(TSCEError, v90, (a5 + 1), v84, 0, 0, v17, v23);
      }

      else
      {
        if (v60 > v17 && v60 <= v23)
        {
          goto LABEL_63;
        }

        v84 = objc_msgSend_functionName(a3, v65, v66, v67, v68);
        v86 = objc_msgSend_outOfBoundsArgumentErrorForArgument_functionName_lowerBound_lowerBoundInclusive_upperBound_upperBoundInclusive_(TSCEError, v88, (a5 + 1), v84, 0, 1, v17, v23);
      }
    }

LABEL_62:
    v94 = v86;

    if (v94)
    {
LABEL_77:
      v51 = v94;
      goto LABEL_78;
    }

    goto LABEL_63;
  }

  if (v17 == INFINITY)
  {
    goto LABEL_27;
  }

  if (objc_msgSend_minInclusive(a4, v65, v66, v67, v68))
  {
    if (v60 < v17)
    {
      v73 = objc_msgSend_functionName(a3, v65, v66, v67, v68);
      if (v23 == INFINITY)
      {
        objc_msgSend_outOfBoundsArgumentErrorForArgument_functionName_lowerBound_lowerBoundInclusive_(TSCEError, v69, (a5 + 1), v73, 1, v17);
      }

      else
      {
        v74 = objc_msgSend_maxInclusive(a4, v69, v70, v71, v72);
        objc_msgSend_outOfBoundsArgumentErrorForArgument_functionName_lowerBound_lowerBoundInclusive_upperBound_upperBoundInclusive_(TSCEError, v75, (a5 + 1), v73, 1, v74, v17, v23);
      }

      goto LABEL_18;
    }

LABEL_27:
    v60 = trunc(v60);
    goto LABEL_28;
  }

  if (v60 > v17)
  {
    goto LABEL_27;
  }

  v73 = objc_msgSend_functionName(a3, v65, v66, v67, v68);
  if (v23 == INFINITY)
  {
    objc_msgSend_outOfBoundsArgumentErrorForArgument_functionName_lowerBound_lowerBoundInclusive_(TSCEError, v77, (a5 + 1), v73, 0, v17);
  }

  else
  {
    v81 = objc_msgSend_maxInclusive(a4, v77, v78, v79, v80);
    objc_msgSend_outOfBoundsArgumentErrorForArgument_functionName_lowerBound_lowerBoundInclusive_upperBound_upperBoundInclusive_(TSCEError, v82, (a5 + 1), v73, 0, v81, v17, v23);
  }

  v76 = LABEL_18:;
  v83 = v76;

  if (!v83)
  {
    goto LABEL_27;
  }

  v51 = v83;
LABEL_78:
  v46 = v51;
LABEL_79:

  return v46;
}

id TSCEArgumentAccessor::coerceValueToNumberOrDate(void *a1, char *a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  if (a5 > 0x10)
  {
    goto LABEL_9;
  }

  if (((1 << a5) & 0x1002B) != 0)
  {
    v11 = a1;
    goto LABEL_4;
  }

  if (a5 != 9)
  {
LABEL_9:
    v17 = objc_msgSend_argumentSpecForIndex_(a3, a2, a4, a4, a5);
    if (objc_msgSend_isOptional(v17, v18, v19, v20, v21) && (objc_msgSend_isTokenOrEmptyArg(a1, v22, v23, v24, v25) & 1) != 0)
    {
      v11 = 0;
    }

    else
    {
      v35 = 0;
      v26 = objc_msgSend_asString_functionSpec_argumentIndex_outError_(a1, v22, a2, a3, a4, &v35);
      v28 = TSCEArgumentAccessor::TSUFormattedDateValueFromDateString(v26, a2, v27);
      if (objc_msgSend_isNil(v28, v29, v30, v31, v32))
      {
        v34 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(a1, v33, a2, a3, a4, a6);
      }

      else
      {
        v34 = v28;
      }

      v11 = v34;
    }

    goto LABEL_4;
  }

  v13 = objc_msgSend_errorWithContext_(a1, a2, a2, a4, a5);
  *a6 = v13;
  v11 = objc_msgSend_errorValue_(TSCEErrorValue, v14, v13, v15, v16);

LABEL_4:

  return v11;
}

uint64_t TSCEArgumentAccessor::isFromAReference(TSCEArgumentAccessor *this, TSCEValue *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a2;
  v7 = objc_msgSend_nativeType(this, a2, a3, a4, a5);
  if (v7 == 6)
  {
    v12 = 1;
  }

  else
  {
    v12 = v5;
  }

  if (v7 == 7 && v5)
  {
    v13 = objc_msgSend_asStringValue(this, v8, v9, v10, v11);
    v18 = v13;
    if (v13)
    {
      v12 = v12 & (objc_msgSend_isLiteralString(v13, v14, v15, v16, v17) ^ 1);
    }
  }

  return v12;
}

uint64_t TSCEArgumentAccessor::convertToNilIfIgnoring(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = MEMORY[0x277D81150];
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "virtual TSCEError *TSCEArgumentAccessor::convertToNilIfIgnoring(TSCEValue *__autoreleasing *, TSCEGridAccessContext &, BOOL)", a4, a5);
  v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEArgumentAccessor.mm", v9, v10);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v12, v7, v11, 319, 0, "Should be unreachable now - each derived type needs to implement its specific accessing, context: %d", *(a1 + 8));

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14, v15, v16);
  return 0;
}

uint64_t TSCEArgumentAccessor::argAccessorForContext(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (qword_27CFB54D8 != -1)
  {
    sub_2216F7AB4();
  }

  switch(a1)
  {
    case 0:
      result = qword_27CFB54E0;
      break;
    case 1:
      result = qword_27CFB54F8;
      break;
    case 2:
      result = qword_27CFB5500;
      break;
    case 3:
      result = qword_27CFB5508;
      break;
    case 4:
      result = qword_27CFB5518;
      break;
    case 5:
      result = qword_27CFB5510;
      break;
    case 6:
      result = qword_27CFB5520;
      break;
    case 7:
      result = qword_27CFB5528;
      break;
    case 8:
      result = qword_27CFB5530;
      break;
    case 9:
      result = qword_27CFB5538;
      break;
    case 10:
      result = qword_27CFB5540;
      break;
    case 11:
      result = qword_27CFB5548;
      break;
    case 12:
      result = qword_27CFB5550;
      break;
    case 13:
      result = qword_27CFB5558;
      break;
    case 14:
      result = qword_27CFB54E8;
      break;
    case 15:
      result = qword_27CFB54F0;
      break;
    case 16:
      result = qword_27CFB5560;
      break;
    default:
      v7 = MEMORY[0x277D81150];
      v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "static TSCEArgumentAccessor *TSCEArgumentAccessor::argAccessorForContext(TSCEArgumentContext)", a4, a5);
      v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEArgumentAccessor.mm", v10, v11);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v13, v8, v12, 404, 0, "No argument accessor class for context: %d", a1);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15, v16, v17);
      result = 0;
      break;
  }

  return result;
}

id TSCENoCheckArgumentAccessor::convertToNilIfIgnoring(uint64_t a1, void **a2, TSCEGridAccessContext *a3, uint64_t a4, uint64_t a5)
{
  if (TSCEArgumentAccessor::shouldEarlyReturnForEmpty(a2, a3, a3, a4, a5) & 1) != 0 || (objc_msgSend_isNil(*a2, v7, v8, v9, v10))
  {
    v11 = 0;
  }

  else
  {
    v12 = a3->var0;
    v13 = *a2;
    v24 = 0;
    v16 = objc_msgSend_deepType_outError_(v13, v14, v12, &v24, v15);
    v17 = v24;
    v18 = *a2;
    v23 = v17;
    v20 = TSCEArgumentAccessor::boundsCheckAndCoerce(v18, a3, v16, &v23, v19);
    v11 = v23;

    v21 = v20;
    *a2 = v20;
  }

  return v11;
}

id TSCEAndArgumentAccessor::convertToNilIfIgnoring(uint64_t a1, void **a2, uint64_t a3, TSCEValue *a4, uint64_t a5)
{
  if (TSCEArgumentAccessor::shouldEarlyReturnForEmpty(a2, a3, a3, a4, a5))
  {
    v8 = 0;
    goto LABEL_23;
  }

  v9 = *a3;
  v14 = objc_msgSend_nativeType(*a2, v10, v11, v12, v13);
  v15 = *a2;
  v51 = 0;
  v18 = objc_msgSend_deepType_outError_(v15, v16, v9, &v51, v17);
  v19 = v51;
  if (TSCEArgumentAccessor::isFromAReference(*a2, a4, v20, v21, v22))
  {
    if ((v18 & 0xFFFFFFFB) == 3)
    {
      *a2 = objc_msgSend_nilValue(TSCENilValue, v23, v24, v25, v26);
    }

    goto LABEL_16;
  }

  v27 = objc_msgSend_locale(v9, v23, v24, v25, v26);
  v28 = *(a3 + 8);
  if (v14 == 3)
  {
    v37 = objc_msgSend_typeErrorForValue_context_functionSpec_argumentIndex_(TSCEError, v23, *a2, v9, *(a3 + 8), *(a3 + 24));

    v19 = v37;
    goto LABEL_16;
  }

  if (v14 != 7)
  {
LABEL_16:
    isNil = objc_msgSend_isNil(*a2, v23, v24, v25, v26);
    if (v19)
    {
      v44 = 1;
    }

    else
    {
      v44 = isNil;
    }

    if ((v44 & 1) == 0)
    {
      v45 = *a2;
      v49 = 0;
      v46 = TSCEArgumentAccessor::boundsCheckAndCoerce(v45, a3, v18, &v49, v43);
      v19 = v49;
      v47 = v46;
      *a2 = v46;
    }

    v8 = v19;
    goto LABEL_22;
  }

  v29 = v27;
  v30 = *a2;
  v31 = *(a3 + 24);
  v50 = v19;
  v32 = objc_msgSend_asString_functionSpec_argumentIndex_outError_(v30, v23, v9, v28, v31, &v50);
  v33 = v50;

  if (!v33)
  {
    if (objc_msgSend_localizedStringIsTrue_(v29, v34, v32, v35, v36) & 1) != 0 || (objc_msgSend_localizedStringIsFalse_(v29, v38, v32, v39, v40))
    {
      v19 = 0;
    }

    else
    {
      v19 = objc_msgSend_typeErrorForValue_context_functionSpec_argumentIndex_(TSCEError, v41, *a2, v9, v28, *(a3 + 24));
    }

    goto LABEL_16;
  }

  v8 = v33;

LABEL_22:
LABEL_23:

  return v8;
}

id TSCESumArgumentAccessor::convertToNilIfIgnoring(uint64_t a1, void **a2, uint64_t a3, TSCEValue *a4, uint64_t a5)
{
  if (TSCEArgumentAccessor::shouldEarlyReturnForEmpty(a2, a3, a3, a4, a5))
  {
    v8 = 0;
    goto LABEL_30;
  }

  v9 = *a3;
  v14 = objc_msgSend_nativeType(*a2, v10, v11, v12, v13);
  v15 = *a2;
  v68 = 0;
  v18 = objc_msgSend_deepType_outError_(v15, v16, v9, &v68, v17);
  v19 = v68;
  if (TSCEArgumentAccessor::isFromAReference(*a2, a4, v20, v21, v22))
  {
    if (v18 == 7 || v18 == 2)
    {
      *a2 = objc_msgSend_nilValue(TSCENilValue, v23, v24, v25, v26);
    }

    goto LABEL_23;
  }

  v27 = objc_msgSend_locale(v9, v23, v24, v25, v26);
  v28 = *(a3 + 8);
  if (v14 == 2)
  {
    v37 = objc_msgSend_typeErrorForValue_context_functionSpec_argumentIndex_(TSCEError, v23, *a2, v9, *(a3 + 8), *(a3 + 24));

    v19 = v37;
    goto LABEL_23;
  }

  if (v14 != 7)
  {
LABEL_23:
    isNil = objc_msgSend_isNil(*a2, v23, v24, v25, v26);
    if (v19)
    {
      v60 = 1;
    }

    else
    {
      v60 = isNil;
    }

    if ((v60 & 1) == 0)
    {
      v61 = *a2;
      v65 = 0;
      v62 = TSCEArgumentAccessor::boundsCheckAndCoerce(v61, a3, v18, &v65, v59);
      v19 = v65;
      v63 = v62;
      *a2 = v62;
    }

    v8 = v19;
    goto LABEL_29;
  }

  v29 = *a2;
  v30 = *(a3 + 24);
  v67 = v19;
  v31 = objc_msgSend_asString_functionSpec_argumentIndex_outError_(v29, v23, v9, v28, v30, &v67);
  v32 = v67;

  if (!v32)
  {
    if (objc_msgSend_length(v31, v33, v34, v35, v36))
    {
      v46 = TSUCreateDateFromString();
      if (v46)
      {
        *a2 = objc_msgSend_dateValue_(TSCEDateValue, v42, v46, v44, v45);
        v18 = 3;
      }

      else
      {
        v47 = objc_msgSend_asStringValue(*a2, v42, v43, v44, v45);
        v49 = v47;
        if (v47)
        {
          v50 = *(a3 + 24);
          v66 = 0;
          v51 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v47, v48, v9, v28, v50, &v66);
          v52 = v66;
          v53 = v51;
          *a2 = v51;
          if (v52)
          {
            *a2 = objc_msgSend_nilValue(TSCENilValue, v54, v55, v56, v57);
          }

          else
          {
            v18 = 5;
          }
        }
      }
    }

    else
    {
      *a2 = objc_msgSend_nilValue(TSCENilValue, v38, v39, v40, v41);
    }

    v19 = 0;
    goto LABEL_23;
  }

  v8 = v32;

LABEL_29:
LABEL_30:

  return v8;
}

id TSCEProductArgumentAccessor::convertToNilIfIgnoring(uint64_t a1, void **a2, TSCEGridAccessContext *a3, TSCEValue *a4, uint64_t a5)
{
  if (TSCEArgumentAccessor::shouldEarlyReturnForEmpty(a2, a3, a3, a4, a5))
  {
    v8 = 0;
    goto LABEL_24;
  }

  v9 = a3->var0;
  v14 = objc_msgSend_nativeType(*a2, v10, v11, v12, v13);
  v15 = *a2;
  v60 = 0;
  v18 = objc_msgSend_deepType_outError_(v15, v16, v9, &v60, v17);
  v19 = v60;
  if (TSCEArgumentAccessor::isFromAReference(*a2, a4, v20, v21, v22))
  {
    if (v18 == 7 || v18 == 2)
    {
LABEL_16:
      *a2 = objc_msgSend_nilValue(TSCENilValue, v23, v24, v25, v26);
      goto LABEL_17;
    }

    goto LABEL_17;
  }

  var1 = a3->var1;
  v28 = objc_msgSend_locale(v9, v23, v24, v25, v26);
  if (v14 <= 6u)
  {
    if (v14 == 2 || v14 == 3)
    {
      v37 = objc_msgSend_typeErrorForValue_context_functionSpec_argumentIndex_(TSCEError, v23, *a2, v9, var1, a3->var3);

      v19 = v37;
    }

    goto LABEL_17;
  }

  if (v14 == 10)
  {
    goto LABEL_16;
  }

  if (v14 != 7)
  {
LABEL_17:
    isNil = objc_msgSend_isNil(*a2, v23, v24, v25, v26);
    if (v19)
    {
      v40 = 1;
    }

    else
    {
      v40 = isNil;
    }

    if ((v40 & 1) == 0)
    {
      v41 = *a2;
      v57 = 0;
      v42 = TSCEArgumentAccessor::boundsCheckAndCoerce(v41, a3, v18, &v57, v39);
      v19 = v57;
      v43 = v42;
      *a2 = v42;
    }

    v8 = v19;
    goto LABEL_23;
  }

  v29 = *a2;
  var3 = a3->var3;
  v59 = v19;
  v31 = objc_msgSend_asString_functionSpec_argumentIndex_outError_(v29, v23, v9, var1, var3, &v59);
  v32 = v59;

  if (!v32)
  {
    if (objc_msgSend_length(v31, v33, v34, v35, v36))
    {
      v52 = TSUCreateDateFromString();
      if (v52)
      {
        v53 = objc_msgSend_dateValue_(TSCEDateValue, v49, v52, v50, v51);
        v19 = 0;
        v18 = 3;
      }

      else
      {
        v54 = *a2;
        v55 = a3->var3;
        v58 = 0;
        v53 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v54, v49, v9, var1, v55, &v58);
        v19 = v58;
        v18 = 5;
      }

      v56 = v53;
      *a2 = v53;
    }

    else
    {
      objc_msgSend_nilValue(TSCENilValue, v45, v46, v47, v48);
      v18 = 0;
      *a2 = v19 = 0;
    }

    goto LABEL_17;
  }

  v8 = v32;

LABEL_23:
LABEL_24:

  return v8;
}

id TSCEModeArgumentAccessor::convertToNilIfIgnoring(uint64_t a1, void **a2, uint64_t a3, TSCEValue *a4)
{
  v7 = *a3;
  v12 = objc_msgSend_nativeType(*a2, v8, v9, v10, v11);
  v13 = *a2;
  v87 = 0;
  v16 = objc_msgSend_deepType_outError_(v13, v14, v7, &v87, v15);
  v17 = v87;
  v22 = TSCEGridAccessContext::argSpec(a3, v18, v19, v20, v21);
  v27 = v22;
  if (v22)
  {
    v28 = objc_msgSend_argumentType(v22, v23, v24, v25, v26);
  }

  else
  {
    v28 = 0;
  }

  if (!objc_msgSend_valueIsEmptyWithContext_(*a2, v23, v7, v25, v26))
  {
    v33 = v12;
    goto LABEL_18;
  }

  if (v12 == 6)
  {
    v33 = 6;
    if (v28 == 6 || v28 == 255)
    {
LABEL_18:
      if (objc_msgSend_isNil(*a2, v29, v30, v31, v32))
      {
        objc_msgSend_nilValue(TSCENilValue, v40, v41, v42, v43);
        *a2 = v44 = 0;
        goto LABEL_46;
      }

      v45 = TSCEArgumentAccessor::isFromAReference(*a2, a4, v41, v42, v43);
      v50 = *(a3 + 8);
      if (v45)
      {
        if (v16 != 7 && v16 != 2)
        {
          if (!v16)
          {
            v51 = objc_msgSend_nilValue(TSCENilValue, v46, v47, v48, v49);
            v16 = 0;
LABEL_34:
            *a2 = v51;
            goto LABEL_39;
          }

          goto LABEL_39;
        }

        if (TSCERangeRef::isReferenceRange((a3 + 40)))
        {
          if (v16 == 7 || v16 == 2)
          {
            v51 = objc_msgSend_nilValue(TSCENilValue, v46, v47, v48, v49);
            goto LABEL_34;
          }

LABEL_39:
          isNil = objc_msgSend_isNil(*a2, v46, v47, v48, v49);
          if (v17)
          {
            v66 = 1;
          }

          else
          {
            v66 = isNil;
          }

          if ((v66 & 1) == 0)
          {
            v67 = *a2;
            v83 = 0;
            v68 = TSCEArgumentAccessor::boundsCheckAndCoerce(v67, a3, v16, &v83, v65);
            v17 = v83;
            v69 = v68;
            *a2 = v68;
          }

          v39 = v17;
          goto LABEL_45;
        }

        v62 = objc_msgSend_typeErrorForValue_context_functionSpec_argumentIndex_(TSCEError, v46, *a2, v7, v50, *(a3 + 24));
      }

      else if (v33 == 2)
      {
        v62 = objc_msgSend_typeErrorForValue_context_functionSpec_argumentIndex_(TSCEError, v46, *a2, v7, *(a3 + 8), *(a3 + 24));
      }

      else
      {
        if (v33 != 10)
        {
          if (v33 == 7)
          {
            v52 = objc_msgSend_locale(v7, v46, v47, v48, v49);
            v53 = *a2;
            v54 = *(a3 + 24);
            v85 = v17;
            v56 = objc_msgSend_asString_functionSpec_argumentIndex_outError_(v53, v55, v7, v50, v54, &v85);
            v57 = v85;

            if (v57)
            {
              v17 = v57;

              v44 = v17;
              goto LABEL_46;
            }

            if (objc_msgSend_length(v56, v58, v59, v60, v61))
            {
              v78 = TSUCreateDateFromString();
              if (v78)
              {
                v79 = objc_msgSend_dateValue_(TSCEDateValue, v75, v78, v76, v77);
                v17 = 0;
                v16 = 3;
              }

              else
              {
                v80 = *a2;
                v81 = *(a3 + 24);
                v84 = 0;
                v79 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v80, v75, v7, v50, v81, &v84);
                v17 = v84;
                v16 = 5;
              }

              v82 = v79;
              *a2 = v79;
            }

            else
            {
              objc_msgSend_nilValue(TSCENilValue, v71, v72, v73, v74);
              v16 = 0;
              *a2 = v17 = 0;
            }
          }

          goto LABEL_39;
        }

        v62 = objc_msgSend_emptyArgumentError(TSCEError, v46, v47, v48, v49);
      }

      v63 = v62;

      v17 = v63;
      goto LABEL_39;
    }
  }

  if (TSCERangeRef::isReferenceRange((a3 + 40)))
  {
LABEL_13:
    if (v12 == 6 && v27 && (objc_msgSend_referenceForGeometryOnly(v27, v29, v30, v31, v32) & 1) != 0)
    {
      v33 = 6;
    }

    else
    {
      objc_msgSend_nilValue(TSCENilValue, v29, v30, v31, v32);
      *a2 = v33 = 0;
    }

    goto LABEL_18;
  }

  v34 = objc_msgSend_functionName(*(a3 + 8), v29, v30, v31, v32);
  v35 = *(a3 + 56);
  v86[0] = *(a3 + 40);
  v86[1] = v35;
  v38 = objc_msgSend_referenceToEmptyCellErrorForFunctionName_rangeReference_(TSCEError, v36, v34, v86, v37);

  if (!v38)
  {
    v17 = 0;
    goto LABEL_13;
  }

  v39 = v38;
LABEL_45:
  v17 = v39;
  v44 = v39;
LABEL_46:

  return v44;
}

id TSCEGcdArgumentAccessor::convertToNilIfIgnoring(int a1, TSCEArgumentAccessor **a2, TSCEGridAccessContext *a3, TSCEValue *a4, uint64_t a5)
{
  v7 = TSCEArgumentAccessor::isFromAReference(*a2, a4, a3, a4, a5);
  v8 = a3->var0;
  v13 = objc_msgSend_nativeType(*a2, v9, v10, v11, v12);
  v14 = *a2;
  v69 = 0;
  v17 = objc_msgSend_deepType_outError_(v14, v15, v8, &v69, v16);
  v18 = v69;
  if (TSCEArgumentAccessor::shouldEarlyReturnForEmpty(a2, a3, v19, v20, v21))
  {
    *a2 = objc_msgSend_nilValue(TSCENilValue, v22, v23, v24, v25);
  }

  var1 = a3->var1;
  if (v7)
  {
    if (TSCERangeRef::isReferenceRange(&a3->var11))
    {
      if (objc_msgSend_isNil(*a2, v22, v23, v24, v25))
      {
        v27 = objc_msgSend_zero(TSCENumberValue, v22, v23, v24, v25);
LABEL_22:
        *a2 = v27;
        v17 = 5;
        goto LABEL_23;
      }

      if (v17 == 7)
      {
        v39 = objc_msgSend_locale(v8, v22, v23, v24, v25);
        TSUDecimal::operator=();
        v40 = MEMORY[0x277D81290];
        v41 = *a2;
        var3 = a3->var3;
        v67 = v18;
        v44 = objc_msgSend_asString_functionSpec_argumentIndex_outError_(v41, v43, v8, var1, var3, &v67);
        v45 = v67;

        v47 = objc_msgSend_numberValueFromString_locale_outDecimalValue_(v40, v46, v44, v39, v68);
        if (v47)
        {
          v18 = v45;
        }

        else
        {
          v55 = *a2;
          v56 = a3->var1;
          v18 = objc_msgSend_typeErrorForValue_context_functionSpec_argumentIndex_(TSCEError, v57, v55, v8, v56, a3->var3);
        }

        v27 = objc_msgSend_zero(TSCENumberValue, v48, v49, v50, v51);
        goto LABEL_22;
      }

      if ((v17 & 0xFFFFFFFE) != 2)
      {
        goto LABEL_23;
      }

      v52 = *a2;
      v53 = a3->var1;
      v34 = objc_msgSend_typeErrorForValue_context_functionSpec_argumentIndex_(TSCEError, v54, v52, v8, v53, a3->var3);

LABEL_19:
      v18 = v34;
      goto LABEL_23;
    }

    if (!v13)
    {
      *a2 = objc_msgSend_nilValue(TSCENilValue, v22, v23, v24, v25);
    }
  }

  else
  {
    if (v13 == 7)
    {
      v28 = objc_msgSend_locale(v8, v22, v23, v24, v25);
      TSUDecimal::operator=();
      v29 = MEMORY[0x277D81290];
      v30 = *a2;
      v31 = a3->var3;
      v66 = v18;
      v33 = objc_msgSend_asString_functionSpec_argumentIndex_outError_(v30, v32, v8, var1, v31, &v66);
      v34 = v66;

      v36 = objc_msgSend_numberValueFromString_locale_outDecimalValue_(v29, v35, v33, v28, v68);
      if ((v36 & 1) == 0)
      {
        v37 = objc_msgSend_typeErrorForValue_context_functionSpec_argumentIndex_(TSCEError, v22, *a2, v8, var1, a3->var3);

        v34 = v37;
      }

      goto LABEL_19;
    }

    if ((v13 & 0xFFFFFFFE) == 2)
    {
      v38 = objc_msgSend_typeErrorForValue_context_functionSpec_argumentIndex_(TSCEError, v22, *a2, v8, a3->var1, a3->var3);

      v18 = v38;
    }
  }

LABEL_23:
  isNil = objc_msgSend_isNil(*a2, v22, v23, v24, v25);
  if (v18)
  {
    v60 = 1;
  }

  else
  {
    v60 = isNil;
  }

  if ((v60 & 1) == 0)
  {
    v61 = *a2;
    v65 = 0;
    v62 = TSCEArgumentAccessor::boundsCheckAndCoerce(v61, a3, v17, &v65, v59);
    v18 = v65;
    v63 = v62;
    *a2 = v62;
  }

  return v18;
}

id TSCEStatArgumentAccessor::convertToNilIfIgnoring(uint64_t a1, void **a2, uint64_t a3, TSCEValue *a4, uint64_t a5)
{
  if (TSCEArgumentAccessor::shouldEarlyReturnForEmpty(a2, a3, a3, a4, a5))
  {
    v8 = 0;
    goto LABEL_25;
  }

  v9 = *a3;
  v14 = objc_msgSend_nativeType(*a2, v10, v11, v12, v13);
  v15 = *a2;
  v113 = 0;
  v18 = objc_msgSend_deepType_outError_(v15, v16, v9, &v113, v17);
  v19 = v113;
  v24 = TSCEGridAccessContext::argSpec(a3, v20, v21, v22, v23);
  if (v24)
  {
    v29 = objc_msgSend_argumentContext(v24, v25, v26, v27, v28);
  }

  else
  {
    v29 = 0;
  }

  v30 = TSCEArgumentAccessor::isFromAReference(*a2, a4, v26, v27, v28);
  if (v29 == 6)
  {
    if (!v30)
    {
      v66 = *(a3 + 8);
      if (v14 == 2)
      {
        v76 = objc_msgSend_typeErrorForValue_context_functionSpec_argumentIndex_(TSCEError, v31, *a2, v9, *(a3 + 8), *(a3 + 24));

        v19 = v76;
        goto LABEL_18;
      }

      if (v14 != 7)
      {
        goto LABEL_18;
      }

      v67 = objc_msgSend_locale(v9, v31, v32, v33, v34);
      v68 = *a2;
      v69 = *(a3 + 24);
      v112 = v19;
      v59 = objc_msgSend_asString_functionSpec_argumentIndex_outError_(v68, v70, v9, v66, v69, &v112);
      v71 = v112;

      if (v71)
      {
        v65 = v71;
        goto LABEL_36;
      }

      if (objc_msgSend_length(v59, v72, v73, v74, v75))
      {
        v84 = TSUCreateDateFromString();
        if (v84)
        {
          objc_msgSend_dateValue_(TSCEDateValue, v89, v84, v90, v91);
          *a2 = v19 = 0;
          v18 = 3;
          goto LABEL_57;
        }

        v93 = *a2;
        v101 = *a2;
        v102 = *(a3 + 24);
        v111 = 0;
        v104 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v101, v103, v9, v66, v102, &v111);
        v19 = v111;
        v105 = v104;
        *a2 = v104;
        if (v19)
        {
          v100 = objc_msgSend_typeErrorForValue_context_functionSpec_argumentIndex_(TSCEError, v106, v93, v9, v66, *(a3 + 24));
          goto LABEL_54;
        }

LABEL_55:
        v18 = 5;
        goto LABEL_56;
      }

      v92 = objc_msgSend_nilValue(TSCENilValue, v85, v86, v87, v88);
LABEL_49:
      v18 = 0;
      v19 = 0;
      *a2 = v92;
LABEL_58:

      goto LABEL_18;
    }

    if (v18 != 7 && v18 != 2)
    {
      goto LABEL_18;
    }

LABEL_15:
    v35 = objc_msgSend_nilValue(TSCENilValue, v31, v32, v33, v34);
    goto LABEL_16;
  }

  if (v29 != 7)
  {
    v36 = MEMORY[0x277D81150];
    v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v31, "virtual TSCEError *TSCEStatArgumentAccessor::convertToNilIfIgnoring(TSCEValue *__autoreleasing *, TSCEGridAccessContext &, BOOL)", v33, v34);
    v41 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v38, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEArgumentAccessor.mm", v39, v40);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v36, v42, v37, v41, 907, 0, "Wrong context for this method.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v43, v44, v45, v46);
    goto LABEL_18;
  }

  if (v30)
  {
    if (v18 == 7)
    {
      *a2 = objc_msgSend_zero(TSCENumberValue, v31, v32, v33, v34);
      v18 = 5;
      goto LABEL_18;
    }

    if (!v18)
    {
      v35 = objc_msgSend_nilValue(TSCENilValue, v31, v32, v33, v34);
      v18 = 0;
LABEL_16:
      *a2 = v35;
    }

LABEL_18:
    isNil = objc_msgSend_isNil(*a2, v31, v32, v33, v34);
    if (v19)
    {
      v49 = 1;
    }

    else
    {
      v49 = isNil;
    }

    if ((v49 & 1) == 0)
    {
      v50 = *a2;
      v108 = 0;
      v51 = TSCEArgumentAccessor::boundsCheckAndCoerce(v50, a3, v18, &v108, v48);
      v19 = v108;
      v52 = v51;
      *a2 = v51;
    }

    v8 = v19;
    goto LABEL_24;
  }

  if (v14 == 2)
  {
    if (!a4)
    {
      goto LABEL_18;
    }

    goto LABEL_15;
  }

  if (v14 != 7)
  {
    goto LABEL_18;
  }

  v54 = *(a3 + 8);
  v55 = objc_msgSend_locale(v9, v31, v32, v33, v34);
  v56 = *a2;
  v57 = *(a3 + 24);
  v110 = v19;
  v59 = objc_msgSend_asString_functionSpec_argumentIndex_outError_(v56, v58, v9, v54, v57, &v110);
  v60 = v110;

  if (!v60)
  {
    if (objc_msgSend_length(v59, v61, v62, v63, v64))
    {
      v84 = TSUCreateDateFromString();
      if (v84)
      {
        objc_msgSend_dateValue_(TSCEDateValue, v81, v84, v82, v83);
        *a2 = v19 = 0;
LABEL_57:

        goto LABEL_58;
      }

      v93 = *a2;
      v94 = *a2;
      v95 = *(a3 + 24);
      v109 = 0;
      v97 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v94, v96, v9, v54, v95, &v109);
      v19 = v109;
      v98 = v97;
      *a2 = v97;
      if (v19)
      {
        v100 = objc_msgSend_typeErrorForValue_context_functionSpec_argumentIndex_(TSCEError, v99, v93, v9, v54, *(a3 + 24));
LABEL_54:
        v107 = v100;

        v18 = 9;
        v19 = v107;
LABEL_56:

        goto LABEL_57;
      }

      goto LABEL_55;
    }

    v92 = objc_msgSend_nilValue(TSCENilValue, v77, v78, v79, v80);
    goto LABEL_49;
  }

  v65 = v60;
LABEL_36:
  v8 = v65;

LABEL_24:
LABEL_25:

  return v8;
}

id TSCECountArgumentAccessor::convertToNilIfIgnoring(uint64_t a1, void **a2, TSCEGridAccessContext *a3, TSCEValue *a4, uint64_t a5)
{
  if (TSCEArgumentAccessor::shouldEarlyReturnForEmpty(a2, a3, a3, a4, a5))
  {
    v8 = 0;
    goto LABEL_44;
  }

  v9 = a3->var0;
  v14 = objc_msgSend_nativeType(*a2, v10, v11, v12, v13);
  v15 = *a2;
  v88 = 0;
  v18 = objc_msgSend_deepType_outError_(v15, v16, v9, &v88, v17);
  v8 = v88;
  v23 = TSCEGridAccessContext::argSpec(a3, v19, v20, v21, v22);
  if (v23)
  {
    v28 = objc_msgSend_argumentContext(v23, v24, v25, v26, v27);
  }

  else
  {
    v28 = 0;
  }

  v29 = TSCEArgumentAccessor::isFromAReference(*a2, a4, v25, v26, v27);
  if (v28 != 8)
  {
    if (v28 == 9)
    {
      if (v18)
      {
        v34 = 0;
      }

      else
      {
        v34 = v29;
      }

      if (v34 != 1)
      {
        goto LABEL_38;
      }

      v35 = objc_msgSend_nilValue(TSCENilValue, v30, v31, v32, v33);
      goto LABEL_13;
    }

    v50 = MEMORY[0x277D81150];
    v51 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, "virtual TSCEError *TSCECountArgumentAccessor::convertToNilIfIgnoring(TSCEValue *__autoreleasing *, TSCEGridAccessContext &, BOOL)", v32, v33);
    v55 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v52, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEArgumentAccessor.mm", v53, v54);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v50, v56, v51, v55, 997, 0, "Wrong context for this method.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v57, v58, v59, v60);
    goto LABEL_38;
  }

  if (!v18 || v29 && (v18 == 7 || v18 == 2))
  {
    *a2 = objc_msgSend_nilValue(TSCENilValue, v30, v31, v32, v33);
  }

  isNil = objc_msgSend_isNil(*a2, v30, v31, v32, v33);
  if (v14 == 9)
  {
    v42 = 1;
  }

  else
  {
    v42 = isNil;
  }

  v43 = *a2;
  if ((v42 & 1) == 0)
  {
    v44 = TSCEArgumentAccessor::valueSufficesForArgumentType(v43, 5, v14, v18, v9, 0);
    v43 = *a2;
    if ((v44 & 1) == 0)
    {
      if (TSCEArgumentAccessor::valueSufficesForArgumentType(v43, 3, v14, v18, v9, 0))
      {
        v49 = objc_msgSend_isNil(*a2, v45, v46, v47, v48);
        goto LABEL_29;
      }

      v43 = objc_msgSend_nilValue(TSCENilValue, v45, v46, v47, v48);
      *a2 = v43;
    }
  }

  v49 = objc_msgSend_isNil(v43, v38, v39, v40, v41);
LABEL_29:
  if ((v49 & 1) == 0)
  {
    v61 = *a2;
    v63 = a3->var1;
    var3 = a3->var3;
    if (v18 == 2)
    {
      v87 = v8;
      v65 = &v87;
      objc_msgSend_asBoolean_functionSpec_argumentIndex_outError_(v61, v62, v9, v63, var3, &v87);
    }

    else
    {
      v86 = v8;
      v65 = &v86;
      v66 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v61, v62, v9, v63, var3, &v86);
    }

    v36 = *v65;

    if ((objc_msgSend_isInvalidReferenceError(v36, v67, v68, v69, v70) & 1) != 0 || objc_msgSend_isCircularReferenceError(v36, v30, v71, v32, v33))
    {
      v35 = objc_msgSend_errorValue_(TSCEErrorValue, v30, v36, v32, v33);
      goto LABEL_36;
    }

    if (!v36 || v18 != 3)
    {
      goto LABEL_37;
    }

    v79 = *a2;
    v80 = a3->var1;
    v81 = a3->var3;
    v85 = 0;
    v83 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(v79, v82, v9, v80, v81, &v85);
    v8 = v85;

    if (!v8)
    {
      goto LABEL_38;
    }

    v35 = objc_msgSend_nilValue(TSCENilValue, v30, v31, v32, v33);
LABEL_13:
    v36 = v8;
LABEL_36:
    *a2 = v35;
LABEL_37:
    v8 = v36;
  }

LABEL_38:
  v72 = objc_msgSend_isNil(*a2, v30, v31, v32, v33);
  if (v8)
  {
    v74 = 1;
  }

  else
  {
    v74 = v72;
  }

  if ((v74 & 1) == 0)
  {
    v75 = *a2;
    v84 = 0;
    v76 = TSCEArgumentAccessor::boundsCheckAndCoerce(v75, a3, v18, &v84, v73);
    v8 = v84;
    v77 = v76;
    *a2 = v76;
  }

LABEL_44:

  return v8;
}

uint64_t TSCEArgumentAccessor::valueSufficesForArgumentType(void *a1, const char *a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v6 = a2 + 1;
  if (a2 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = a4;
  }

  if (a2 == -1)
  {
    v7 = 1;
  }

  if (a3 != 1)
  {
    v7 = a3;
  }

  if ((v6 > 7 || ((1 << v6) & 0x85) == 0) && (a3 & 0xFFFFFFF7) == 6)
  {
    v10 = a4;
  }

  else
  {
    v10 = v7;
  }

  v11 = a6;
  v15 = 0;
  v16 = 1;
  switch(a2)
  {
    case -1:
    case 0:
    case 1:
    case 6:
    case 15:
    case 18:
      goto LABEL_62;
    case 2:
      if (v10 > 0xC)
      {
        goto LABEL_18;
      }

      if (((1 << v10) & 0x1425) != 0)
      {
        goto LABEL_61;
      }

      if (v10 != 7)
      {
        goto LABEL_18;
      }

      if (!a6)
      {
        v11 = objc_msgSend_locale(a5, a2, a3, a4, a5);
      }

      if (a5)
      {
        v86 = 0;
        v28 = objc_msgSend_asString_outError_(a1, a2, a5, &v86, a5);
        v15 = v86;
      }

      else
      {
        v28 = objc_msgSend_asStringWithLocale_(a1, a2, v11, a4, a5);
        v15 = 0;
      }

      if (objc_msgSend_localizedStringIsTrue_(v11, v33, v28, v34, v35))
      {
        goto LABEL_92;
      }

      IsFalse = objc_msgSend_localizedStringIsFalse_(v11, v72, v28, v73, v74);
      goto LABEL_86;
    case 3:
      v15 = 0;
      if (v10 > 4u)
      {
        if (v10 == 5)
        {
          goto LABEL_62;
        }

        if (v10 == 7)
        {
          if (!a6)
          {
            v11 = objc_msgSend_locale(a5, a2, a3, a4, a5);
          }

          if (a5)
          {
            v87 = 0;
            v49 = objc_msgSend_asString_outError_(a1, a2, a5, &v87, a5);
            v15 = v87;
          }

          else
          {
            v49 = objc_msgSend_asStringWithLocale_(a1, a2, v11, a4, a5);
            v15 = 0;
          }

          objc_msgSend_lock(MEMORY[0x277D81288], v50, v51, v52, v53);
          v28 = TSUCreateDateFromString();

          objc_msgSend_unlock(MEMORY[0x277D81288], v68, v69, v70, v71);
          v16 = v28 != 0;
          goto LABEL_92;
        }
      }

      else if (!v10 || v10 == 3)
      {
        goto LABEL_62;
      }

      goto LABEL_18;
    case 4:
      if (v10 == 4)
      {
        goto LABEL_61;
      }

      if (v10 == 7)
      {
        if (!a6)
        {
          v11 = objc_msgSend_locale(a5, a2, a3, a4, a5);
        }

        if (a5)
        {
          v84 = 0;
          v54 = objc_msgSend_asString_outError_(a1, a2, a5, &v84, a5);
          v15 = v84;
        }

        else
        {
          v54 = objc_msgSend_asStringWithLocale_(a1, a2, v11, a4, a5);
          v15 = 0;
        }

        objc_msgSend_lock(MEMORY[0x277D81288], v55, v56, v57, v58);
        v16 = TSUDurationFormatterTimeIntervalFromString();

        objc_msgSend_unlock(MEMORY[0x277D81288], v59, v60, v61, v62);
        goto LABEL_62;
      }

      if (v10 != 5)
      {
        goto LABEL_18;
      }

      if (!a6)
      {
        v11 = objc_msgSend_locale(a5, a2, a3, a4, a5);
      }

      if (a5)
      {
        v85 = 0;
        v28 = objc_msgSend_asNumber_outError_(a1, a2, a5, &v85, a5);
        v15 = v85;
      }

      else
      {
        v28 = objc_msgSend_asNumberWithLocale_(a1, a2, v11, a4, a5);
        v15 = 0;
      }

      IsFalse = objc_msgSend_isDuration(v28, v29, v30, v31, v32);
LABEL_86:
      v16 = IsFalse;
      goto LABEL_92;
    case 5:
      if (v10 > 0xC)
      {
        goto LABEL_18;
      }

      if (((1 << v10) & 0x1425) != 0)
      {
LABEL_61:
        v15 = 0;
      }

      else if (v10 == 7)
      {
        if (!a6)
        {
          v11 = objc_msgSend_locale(a5, a2, a3, a4, a5);
        }

        if (a5)
        {
          v91 = 0;
          v28 = objc_msgSend_asString_outError_(a1, a2, a5, &v91, a5);
          v15 = v91;
        }

        else
        {
          v28 = objc_msgSend_asStringWithLocale_(a1, a2, v11, a4, a5);
          v15 = 0;
        }

        if (objc_msgSend_length(v28, v36, v37, v38, v39))
        {
          MEMORY[0x223D9F8D0](v90, v11);
          TSUUnivNumberParser::parseAsNumber(v90, v28);
          if (v89 == -999)
          {
            objc_msgSend_lock(MEMORY[0x277D81288], v75, v76, v77, v78);
            v16 = TSUDurationFormatterTimeIntervalFromString();
            objc_msgSend_unlock(MEMORY[0x277D81288], v79, v80, v81, v82);
          }

          MEMORY[0x223D9F890](v88);
          sub_2211AF274(v90);
        }

LABEL_92:
      }

      else
      {
LABEL_18:
        v15 = 0;
        v16 = 0;
      }

LABEL_62:

      return v16;
    case 7:
      if (v10 > 0xC || ((1 << v10) & 0x14AD) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_61;
    case 8:
      if (TSCEArgumentAccessor::valueSufficesForArgumentType(a1, 5, v10, a4, a5, a6) & 1) != 0 || (TSCEArgumentAccessor::valueSufficesForArgumentType(a1, 3, v10, a4, a5, v11))
      {
        goto LABEL_61;
      }

      if (!v11)
      {
        v11 = objc_msgSend_locale(a5, v40, v41, v42, v43);
      }

      if (a5)
      {
        v83 = 0;
        v28 = objc_msgSend_asString_outError_(a1, v40, a5, &v83, v43);
        v15 = v83;
      }

      else
      {
        v28 = objc_msgSend_asStringWithLocale_(a1, v40, v11, v42, v43);
        v15 = 0;
      }

      if (v28)
      {
        objc_msgSend_lock(MEMORY[0x277D81288], v44, v45, v46, v47);
        v16 = TSUDurationFormatterTimeIntervalFromString();
        objc_msgSend_unlock(MEMORY[0x277D81288], v64, v65, v66, v67);
      }

      else
      {
        v16 = 0;
      }

      goto LABEL_92;
    case 9:
      if (v10 == 9)
      {
        goto LABEL_61;
      }

      goto LABEL_18;
    case 10:
      v17 = MEMORY[0x277D81150];
      v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "static BOOL TSCEArgumentAccessor::valueSufficesForArgumentType(TSCEValue *__unsafe_unretained, TSCEArgumentType, TSCEArgumentType, TSCEArgumentType, TSCEEvaluationContext *__unsafe_unretained, TSULocale *__unsafe_unretained)", a4, a5);
      v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEArgumentAccessor.mm", v20, v21);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v23, v18, v22, 1350, 0, "empty arguments should never be required");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25, v26, v27);
      goto LABEL_18;
    case 12:
      if (v10 == 12)
      {
        goto LABEL_61;
      }

      goto LABEL_18;
    case 19:
      if (v10 == 19)
      {
        goto LABEL_61;
      }

      goto LABEL_18;
    case 21:
      if ((TSCEArgumentAccessor::valueSufficesForArgumentType(a1, 5, v10, a4, a5, a6) & 1) == 0)
      {
        v16 = TSCEArgumentAccessor::valueSufficesForArgumentType(a1, 2, v10, a4, a5, v11);
      }

      goto LABEL_61;
    default:
      goto LABEL_18;
  }
}

void sub_2213E574C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va1, a6);
  va_start(va, a6);
  v9 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  objc_end_catch();
  MEMORY[0x223D9F890](va);
  sub_2211AF274(va1);

  _Unwind_Resume(a1);
}

id TSCEVarArgumentAccessor::convertToNilIfIgnoring(uint64_t a1, void **a2, uint64_t a3, TSCEValue *a4, uint64_t a5)
{
  if (TSCEArgumentAccessor::shouldEarlyReturnForEmpty(a2, a3, a3, a4, a5))
  {
    v8 = 0;
    goto LABEL_54;
  }

  v9 = *a3;
  v14 = objc_msgSend_nativeType(*a2, v10, v11, v12, v13);
  v15 = *a2;
  v107 = 0;
  v18 = objc_msgSend_deepType_outError_(v15, v16, v9, &v107, v17);
  v19 = v107;
  v24 = TSCEGridAccessContext::argSpec(a3, v20, v21, v22, v23);
  if (v24)
  {
    v29 = objc_msgSend_argumentContext(v24, v25, v26, v27, v28);
  }

  else
  {
    v29 = 0;
  }

  v30 = TSCEArgumentAccessor::isFromAReference(*a2, a4, v26, v27, v28);
  if (v29 == 10)
  {
    if (!v30)
    {
      v66 = *(a3 + 8);
      if (v14 != 2)
      {
        if (v14 == 10)
        {
LABEL_31:
          *a2 = objc_msgSend_zero(TSCENumberValue, v31, v32, v33, v34);
          v18 = 5;
          goto LABEL_47;
        }

        if (v14 != 7)
        {
LABEL_47:
          isNil = objc_msgSend_isNil(*a2, v31, v32, v33, v34);
          if (v19)
          {
            v97 = 1;
          }

          else
          {
            v97 = isNil;
          }

          if ((v97 & 1) == 0)
          {
            v98 = *a2;
            v102 = 0;
            v99 = TSCEArgumentAccessor::boundsCheckAndCoerce(v98, a3, v18, &v102, v96);
            v19 = v102;
            v100 = v99;
            *a2 = v99;
          }

          v19 = v19;
          v8 = v19;
          goto LABEL_53;
        }

        v67 = objc_msgSend_locale(v9, v31, v32, v33, v34);
        v68 = *a2;
        v69 = *(a3 + 24);
        v106 = v19;
        v51 = objc_msgSend_asString_functionSpec_argumentIndex_outError_(v68, v70, v9, v66, v69, &v106);
        v52 = v106;

        if (!v52)
        {
          if (objc_msgSend_length(v51, v71, v72, v73, v74))
          {
            v64 = TSUCreateDateFromString();
            if (v64)
            {
              v65 = objc_msgSend_dateValue_(TSCEDateValue, v84, v64, v85, v86);
              goto LABEL_38;
            }

            v92 = *a2;
            v93 = *(a3 + 24);
            v105 = 0;
            v87 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v92, v84, v9, v66, v93, &v105);
            v91 = v105;
LABEL_44:
            v19 = v91;
            v18 = 5;
            goto LABEL_45;
          }

          v88 = objc_msgSend_nilValue(TSCENilValue, v80, v81, v82, v83);
LABEL_41:
          v18 = 0;
          v19 = 0;
          *a2 = v88;
LABEL_46:

          goto LABEL_47;
        }

        goto LABEL_28;
      }

LABEL_34:
      v79 = objc_msgSend_typeErrorForValue_context_functionSpec_argumentIndex_(TSCEError, v31, *a2, v9, *(a3 + 8), *(a3 + 24));

      v19 = v79;
      goto LABEL_47;
    }

    if (v18 != 2)
    {
      if (v18 == 9)
      {
        v75 = objc_msgSend_functionName(*(a3 + 8), v31, v32, v33, v34);
        v8 = objc_msgSend_argumentErrorForFunctionName_(TSCEError, v76, v75, v77, v78);

        goto LABEL_53;
      }

      if (v18 != 7)
      {
        goto LABEL_47;
      }
    }

LABEL_15:
    *a2 = objc_msgSend_nilValue(TSCENilValue, v31, v32, v33, v34);
    goto LABEL_47;
  }

  if (v29 != 11)
  {
    v35 = MEMORY[0x277D81150];
    v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v31, "virtual TSCEError *TSCEVarArgumentAccessor::convertToNilIfIgnoring(TSCEValue *__autoreleasing *, TSCEGridAccessContext &, BOOL)", v33, v34);
    v40 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v37, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEArgumentAccessor.mm", v38, v39);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v35, v41, v36, v40, 1119, 0, "Wrong context for this method.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v42, v43, v44, v45);
    goto LABEL_47;
  }

  if (v30)
  {
    if (v18 == 7)
    {
      goto LABEL_31;
    }

    goto LABEL_47;
  }

  if (v14 == 2)
  {
    if (!a4)
    {
      goto LABEL_47;
    }

    goto LABEL_15;
  }

  v46 = *(a3 + 8);
  if (v14 == 3)
  {
    goto LABEL_34;
  }

  if (v14 != 7)
  {
    goto LABEL_47;
  }

  v47 = objc_msgSend_locale(v9, v31, v32, v33, v34);
  v48 = *a2;
  v49 = *(a3 + 24);
  v104 = v19;
  v51 = objc_msgSend_asString_functionSpec_argumentIndex_outError_(v48, v50, v9, v46, v49, &v104);
  v52 = v104;

  if (!v52)
  {
    if (objc_msgSend_length(v51, v53, v54, v55, v56))
    {
      v64 = TSUCreateDateFromString();
      if (v64)
      {
        v65 = objc_msgSend_dateValue_(TSCEDateValue, v61, v64, v62, v63);
LABEL_38:
        v87 = v65;
        v19 = 0;
        v18 = 3;
LABEL_45:
        v94 = v87;
        *a2 = v87;

        goto LABEL_46;
      }

      v89 = *a2;
      v90 = *(a3 + 24);
      v103 = 0;
      v87 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v89, v61, v9, v46, v90, &v103);
      v91 = v103;
      goto LABEL_44;
    }

    v88 = objc_msgSend_nilValue(TSCENilValue, v57, v58, v59, v60);
    goto LABEL_41;
  }

LABEL_28:
  v19 = v52;

  v8 = v19;
LABEL_53:

LABEL_54:

  return v8;
}

id TSCEMatchArgumentAccessor::convertToNilIfIgnoring(uint64_t a1, TSCEArgumentAccessor **a2, TSCEGridAccessContext *a3, TSCEValue *a4, uint64_t a5)
{
  if (TSCEArgumentAccessor::shouldEarlyReturnForEmpty(a2, a3, a3, a4, a5))
  {
    v8 = 0;
  }

  else
  {
    v9 = a3->var0;
    v10 = *a2;
    v32 = 0;
    v13 = objc_msgSend_deepType_outError_(v10, v11, v9, &v32, v12);
    v8 = v32;
    v17 = TSCEArgumentAccessor::isFromAReference(*a2, a4, v14, v15, v16);
    if (v13)
    {
      v22 = 0;
    }

    else
    {
      v22 = v17;
    }

    if (v22)
    {
      v23 = objc_msgSend_nilValue(TSCENilValue, v18, v19, v20, v21);
      *a2 = v23;
    }

    else
    {
      v23 = *a2;
    }

    isNil = objc_msgSend_isNil(v23, v18, v19, v20, v21);
    if (v8)
    {
      v26 = 1;
    }

    else
    {
      v26 = isNil;
    }

    if ((v26 & 1) == 0)
    {
      v27 = *a2;
      v31 = 0;
      v28 = TSCEArgumentAccessor::boundsCheckAndCoerce(v27, a3, v13, &v31, v25);
      v8 = v31;
      v29 = v28;
      *a2 = v28;
    }
  }

  return v8;
}

id TSCEDateVectorArgumentAccessor::convertToNilIfIgnoring(uint64_t a1, TSCEArgumentAccessor **a2, TSCEGridAccessContext *a3, TSCEValue *a4, uint64_t a5)
{
  if (TSCEArgumentAccessor::shouldEarlyReturnForEmpty(a2, a3, a3, a4, a5))
  {
    v8 = 0;
  }

  else
  {
    v9 = a3->var0;
    v10 = *a2;
    v35 = 0;
    v13 = objc_msgSend_deepType_outError_(v10, v11, v9, &v35, v12);
    v8 = v35;
    v17 = TSCEArgumentAccessor::isFromAReference(*a2, a4, v14, v15, v16);
    if (v13 == 2)
    {
      v22 = v17;
    }

    else
    {
      v22 = 0;
    }

    if (v22 == 1)
    {
      v23 = *a2;
      v24 = a3->var1;
      v26 = objc_msgSend_typeErrorForValue_context_functionSpec_argumentIndex_(TSCEError, v25, v23, v9, v24, a3->var3);

      v8 = v26;
    }

    isNil = objc_msgSend_isNil(*a2, v18, v19, v20, v21);
    if (v8)
    {
      v29 = 1;
    }

    else
    {
      v29 = isNil;
    }

    if ((v29 & 1) == 0)
    {
      v30 = *a2;
      v34 = 0;
      v31 = TSCEArgumentAccessor::boundsCheckAndCoerce(v30, a3, v13, &v34, v28);
      v8 = v34;
      v32 = v31;
      *a2 = v31;
    }
  }

  return v8;
}

id TSCEStrictNumberArgumentAccessor::convertToNilIfIgnoring(uint64_t a1, void **a2, TSCEGridAccessContext *a3, uint64_t a4, uint64_t a5)
{
  if (TSCEArgumentAccessor::shouldEarlyReturnForEmpty(a2, a3, a3, a4, a5))
  {
    v7 = 0;
  }

  else
  {
    v8 = a3->var0;
    v9 = *a2;
    v30 = 0;
    v12 = objc_msgSend_deepType_outError_(v9, v10, v8, &v30, v11);
    v7 = v30;
    if (v12)
    {
      v17 = v12 == 5;
    }

    else
    {
      v17 = 1;
    }

    if (!v17)
    {
      v18 = *a2;
      v19 = a3->var1;
      v21 = objc_msgSend_typeErrorForValue_context_functionSpec_argumentIndex_(TSCEError, v20, v18, v8, v19, a3->var3);

      v7 = v21;
    }

    isNil = objc_msgSend_isNil(*a2, v13, v14, v15, v16);
    if (v7)
    {
      v24 = 1;
    }

    else
    {
      v24 = isNil;
    }

    if ((v24 & 1) == 0)
    {
      v25 = *a2;
      v29 = 0;
      v26 = TSCEArgumentAccessor::boundsCheckAndCoerce(v25, a3, v12, &v29, v23);
      v7 = v29;
      v27 = v26;
      *a2 = v26;
    }
  }

  return v7;
}

uint64_t TSCEArgumentAccessor::shouldTreatValueAsDateArgument(TSCEArgumentAccessor *this, TSCEValue *a2, TSCEEvaluationContext *a3, uint64_t a4, uint64_t a5)
{
  v16 = 0;
  v7 = objc_msgSend_deepType_outError_(this, a2, a2, &v16, a5);
  v12 = v16;
  v13 = 0;
  if (v7 && v7 != 5)
  {
    v14 = objc_msgSend_nativeType(this, v8, v9, v10, v11);
    v13 = TSCEArgumentAccessor::valueSufficesForArgumentType(this, 3, v14, v7, a2, 0);
  }

  return v13;
}

uint64_t TSCEArgumentAccessor::shouldTreatValueAsDateArgumentWithLocale(TSCEArgumentAccessor *this, TSCEValue *a2, TSULocale *a3, uint64_t a4, uint64_t a5)
{
  v16 = 0;
  v7 = objc_msgSend_deepType_outError_(this, a2, 0, &v16, a5);
  v12 = v16;
  v13 = 0;
  if (v7 && v7 != 5)
  {
    v14 = objc_msgSend_nativeType(this, v8, v9, v10, v11);
    v13 = TSCEArgumentAccessor::valueSufficesForArgumentType(this, 3, v14, v7, 0, a2);
  }

  return v13;
}

void sub_2213E6BDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, objc_super a11)
{
  a11.super_class = TSCEFormulasToSet;
  [(_Unwind_Exception *)&a11 dealloc];
  _Unwind_Resume(a1);
}

void sub_2213E6DD0(uint64_t a1)
{
  v30 = objc_opt_new();
  os_unfair_lock_lock((*(a1 + 32) + 8));
  v2 = *(a1 + 32);
  if ((*(v2 + 32) & 2) != 0 && (isEmpty = TSCECellRefSet::isEmpty((v2 + 40)), v2 = *(a1 + 32), (isEmpty & 1) == 0))
  {
    v15 = *(v2 + 144);
    os_unfair_lock_unlock((v2 + 8));
    if ((v15 & 1) == 0)
    {
      objc_msgSend__flushFormulasToRemoveWithDepTracker_startTime_timeout_(*(a1 + 32), v16, *(a1 + 40), v30, v17, 0.2);
      objc_msgSend_timeIntervalSinceNow(v30, v18, v19, v20, v21);
      if (v22 < -0.2)
      {
        goto LABEL_13;
      }
    }
  }

  else
  {
    os_unfair_lock_unlock((v2 + 8));
  }

  os_unfair_lock_lock((*(a1 + 32) + 8));
  v4 = *(a1 + 32);
  if ((*(v4 + 32) & 4) != 0 && *(v4 + 112))
  {
    v5 = *(v4 + 144);
    os_unfair_lock_unlock((v4 + 8));
    if ((v5 & 1) == 0)
    {
      objc_msgSend__flushFormulasToReplaceWithDepTracker_startTime_timeout_(*(a1 + 32), v6, *(a1 + 40), v30, v7, 0.2);
      objc_msgSend_timeIntervalSinceNow(v30, v8, v9, v10, v11);
      if (v12 < -0.2)
      {
        goto LABEL_13;
      }
    }
  }

  else
  {
    os_unfair_lock_unlock((v4 + 8));
  }

  os_unfair_lock_lock((*(a1 + 32) + 8));
  v13 = *(a1 + 32);
  if ((*(v13 + 32) & 8) != 0 && (v14 = TSCECellRefSet::isEmpty((v13 + 64)), v13 = *(a1 + 32), (v14 & 1) == 0))
  {
    v23 = *(v13 + 144);
    os_unfair_lock_unlock((v13 + 8));
    if ((v23 & 1) == 0)
    {
      objc_msgSend__flushFormulasToResetWithDepTracker_startTime_timeout_(*(a1 + 32), v24, *(a1 + 40), v30, v25, 0.2);
      objc_msgSend_timeIntervalSinceNow(v30, v26, v27, v28, v29);
    }
  }

  else
  {
    os_unfair_lock_unlock((v13 + 8));
  }

LABEL_13:
  os_unfair_lock_lock((*(a1 + 32) + 8));
  *(*(a1 + 32) + 145) = 0;
  os_unfair_lock_unlock((*(a1 + 32) + 8));
}

void sub_2213E7234(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_2213E7534(va);

  _Unwind_Resume(a1);
}

void sub_2213E7278(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = (a1 + 96);
  v6 = *(a1 + 96);
  if (v6 == 0x7FFFFFFF || (v6 & 0xFFFF00000000) == 0x7FFF00000000)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEFormulasToSet replaceFormula:atCellCoord:inOwner:replaceOptions:]_block_invoke", a4, a5);
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulasToSet.mm", v12, v13);
    v15 = NSStringFromTSUCellCoord();
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v16, v10, v14, 240, 0, "Can only place formulas at valid, non-spanning cell coords, not: %@", v15);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19, v20);
  }

  if (*(a1 + 32))
  {
    if (*v7 != 0x7FFFFFFF && (*v7 & 0xFFFF00000000) != 0x7FFF00000000)
    {
      v26 = objc_msgSend_emptyReferenceSetWrapper(*(*(a1 + 40) + 16), a2, a3, a4, a5);
      if (!v26)
      {
        v27 = MEMORY[0x277D81150];
        v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "[TSCEFormulasToSet replaceFormula:atCellCoord:inOwner:replaceOptions:]_block_invoke", v24, v25);
        v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulasToSet.mm", v30, v31);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v27, v33, v28, v32, 244, 0, "invalid nil value for '%{public}s'", "precedents");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v34, v35, v36, v37);
      }

      v38 = *(a1 + 32);
      v39 = objc_msgSend_referenceSet(v26, v22, v23, v24, v25);
      v40 = *(*(a1 + 40) + 16);
      v45 = *(a1 + 96);
      v46 = *(a1 + 48);
      objc_msgSend_getPrecedents_calcEngine_hostCell_allowImplicitIntersection_returnUidReferences_(v38, v41, v39, v40, &v45, 0, 1);
      v42 = *(a1 + 40);
      TSCEReplaceFormulaOptions::TSCEReplaceFormulaOptions(&v44, a1 + 64);
      objc_msgSend_replaceFormulaAt_inOwner_precedents_replaceOptions_(v42, v43, v7, a1 + 48, v26, &v44);
    }
  }
}

uint64_t sub_2213E74DC(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v4;
  TSCEReplaceFormulaOptions::operator=(a1 + 24, a2 + 24);
  objc_storeStrong((a1 + 56), *(a2 + 7));
  objc_storeStrong((a1 + 64), *(a2 + 8));
  return a1;
}

void sub_2213E7688(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_2213E7534(va);

  _Unwind_Resume(a1);
}

uint64_t sub_2213E78A4(uint64_t a1, TSUCellCoord *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5.coordinate = *a2;
  v5._tableUID = *v3;
  return TSCECellRefSet::removeCellRef((v2 + 64), &v5);
}

TSCECellCoordSet *sub_2213E7B34(uint64_t a1, TSUCellCoord *a2)
{
  v3 = *a2;
  v8.coordinate = *a2;
  v8._tableUID = *(a1 + 40);
  v4 = *(a1 + 32);
  tableUID = v8._tableUID;
  v5 = sub_2210875C4((v4 + 88), &tableUID);
  if (v5)
  {
    tableUID._lower = v3;
    sub_2213E9A58(v5 + 4, &tableUID);
  }

  TSCECellRefSet::removeCellRef((*(a1 + 32) + 64), &v8);
  return TSCECellRefSet::addCellRef((*(a1 + 32) + 40), &v8);
}

TSCECellCoordSet *sub_2213E7CF4(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v7 = *(a2 + 8);
  v5 = sub_2210875C4((v4 + 88), &v7);
  if (v5)
  {
    *&v7 = *a2;
    sub_2213E9A58(v5 + 4, &v7);
  }

  TSCECellRefSet::removeCellRef((*(a1 + 32) + 64), a2);
  return TSCECellRefSet::addCellRef((*(a1 + 32) + 40), a2);
}

void sub_2213E81F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  _Block_object_dispose(&a22, 8);
  _Block_object_dispose(&a26, 8);
  sub_22107C800(v42 + 48, a33);
  _Block_object_dispose(&a41, 8);

  _Block_object_dispose((v43 - 224), 8);
  _Block_object_dispose((v43 - 192), 8);
  sub_22107C800(v43 - 144, *(v43 - 136));

  _Unwind_Resume(a1);
}

TSCECellCoordSet *sub_2213E82A8(uint64_t a1, const TSCECellRef *a2, _BYTE *a3)
{
  result = TSCECellRefSet::addCellRef((*(*(a1 + 32) + 8) + 48), a2);
  if (++*(*(*(a1 + 40) + 8) + 24) >= 0x12CuLL)
  {
    *a3 = 1;
  }

  return result;
}

uint64_t sub_2213E830C(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a1 + 32);
  v16 = *(a2 + 8);
  objc_msgSend_removeFormulaForOwner_cellCoord_(v8, a2, &v16, *a2, a5);
  result = TSCECellRefSet::addCellRef((*(*(a1 + 48) + 8) + 48), a2);
  if (*(a1 + 40))
  {
    if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0)
    {
      v14 = *(*(a1 + 64) + 8);
      if (*(v14 + 24) >= 0x15uLL)
      {
        *(v14 + 24) = 0;
        result = objc_msgSend_timeIntervalSinceNow(*(a1 + 40), v10, v11, v12, v13);
        if (*(a1 + 72) < -v15)
        {
          *a3 = 1;
          *(*(*(a1 + 56) + 8) + 24) = 1;
        }
      }
    }
  }

  ++*(*(*(a1 + 64) + 8) + 24);
  return result;
}

void sub_2213E86B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32)
{
  sub_2213E7534((v34 - 176));

  _Unwind_Resume(a1);
}

void sub_2213E870C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a1 + 40;
  v5 = *(a1 + 40);
  if (v5 != 0x7FFFFFFF && (v5 & 0xFFFF00000000) != 0x7FFF00000000)
  {
    v13 = objc_msgSend_formulaObject(*(a1 + 120), a2, a3, a4, a5);
    if (v13)
    {
      v18 = objc_msgSend_emptyReferenceSetWrapper(*(*(a1 + 32) + 16), v9, v10, v11, v12);
      if (!v18)
      {
        v19 = MEMORY[0x277D81150];
        v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "[TSCEFormulasToSet _flushFormulasToReplaceWithDepTracker:startTime:timeout:]_block_invoke", v16, v17);
        v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulasToSet.mm", v22, v23);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v25, v20, v24, 579, 0, "invalid nil value for '%{public}s'", "precedents");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27, v28, v29);
      }

      v30 = objc_msgSend_referenceSet(v18, v14, v15, v16, v17);
      objc_msgSend_getPrecedents_calcEngine_hostCell_allowImplicitIntersection_returnUidReferences_(v13, v31, v30, *(*(a1 + 32) + 16), v6, 0, 1);
      v32 = *(a1 + 32);
      v36 = *(a1 + 40);
      v35 = *(a1 + 48);
      TSCEReplaceFormulaOptions::TSCEReplaceFormulaOptions(&v34, a1 + 88);
      objc_msgSend_replaceFormulaAt_inOwner_precedents_replaceOptions_(v32, v33, &v36, &v35, v18, &v34);
    }
  }
}

void sub_2213E88D0(uint64_t a1)
{
  v2 = *(a1 + 112);
}

BOOL sub_2213E90F8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a1 + 32);
  result = 0;
  if (v6)
  {
    objc_msgSend_timeIntervalSinceNow(v6, a2, a3, a4, a5);
    if (*(a1 + 40) < -v7)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_2213E91EC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = a4;
  v8 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v8;
  TSCEReplaceFormulaOptions::TSCEReplaceFormulaOptions((a1 + 24), a3);
  *(a1 + 56) = v7;
  *(a1 + 64) = 0;
  return a1;
}

uint64_t sub_2213E9258(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = a4;
  v8 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v8;
  TSCEReplaceFormulaOptions::TSCEReplaceFormulaOptions((a1 + 24), a3);
  *(a1 + 56) = 0;
  *(a1 + 64) = v7;
  return a1;
}

uint64_t sub_2213E92C4(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v4;
  TSCEReplaceFormulaOptions::TSCEReplaceFormulaOptions((a1 + 24), a2 + 24);
  *(a1 + 56) = *(a2 + 7);
  *(a1 + 64) = *(a2 + 8);
  return a1;
}

void *sub_2213E931C(void *a1, void *a2)
{
  v2 = a2[1];
  v3 = v2 ^ *a2;
  v4 = a1[1];
  if (!*&v4)
  {
    goto LABEL_22;
  }

  v5 = vcnt_s8(v4);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = v2 ^ *a2;
    if (v3 >= *&v4)
    {
      v6 = v3 % *&v4;
    }
  }

  else
  {
    v6 = (*&v4 - 1) & v3;
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7 || (v8 = *v7) == 0)
  {
LABEL_22:
    operator new();
  }

  while (1)
  {
    v9 = v8[1];
    if (v9 == v3)
    {
      break;
    }

    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v4)
      {
        v9 %= *&v4;
      }
    }

    else
    {
      v9 &= *&v4 - 1;
    }

    if (v9 != v6)
    {
      goto LABEL_22;
    }

LABEL_21:
    v8 = *v8;
    if (!v8)
    {
      goto LABEL_22;
    }
  }

  if (v8[2] != *a2 || v8[3] != v2)
  {
    goto LABEL_21;
  }

  return v8;
}

void sub_2213E957C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2213E9590(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2213E9590(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_2213E95DC(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t sub_2213E95DC(uint64_t a1)
{
  sub_2213E9618(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_2213E9618(uint64_t a1, id *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_2213E965C(v2 + 2);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void *sub_2213E9698(void *a1, unsigned int *a2)
{
  v2 = *a2 + 16 * *(a2 + 2);
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_23;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2 + 16 * *(a2 + 2);
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (result = *v6) == 0)
  {
LABEL_23:
    sub_2213E98E4();
  }

  v8 = *a2;
  while (1)
  {
    v9 = result[1];
    if (v9 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v9 >= *&v3)
      {
        v9 %= *&v3;
      }
    }

    else
    {
      v9 &= *&v3 - 1;
    }

    if (v9 != v5)
    {
      goto LABEL_23;
    }

LABEL_22:
    result = *result;
    if (!result)
    {
      goto LABEL_23;
    }
  }

  v10 = result[2];
  v12 = v10 == v8;
  v11 = (v8 ^ v10) & 0x101FFFF00000000;
  v12 = v12 && v11 == 0;
  if (!v12)
  {
    goto LABEL_22;
  }

  return result;
}

void sub_2213E98C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id *a10, uint64_t a11)
{
  if (a10)
  {
    sub_2213E99A0(&a11, a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_2213E9984(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_2213E99A0(v3, v2);
  _Unwind_Resume(a1);
}

void sub_2213E99A0(uint64_t a1, id *a2)
{
  if (*(a1 + 8) == 1)
  {
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

uint64_t sub_2213E9A0C(void *a1, void *a2)
{
  result = sub_2210875C4(a1, a2);
  if (result)
  {
    sub_221087680(a1, result, v4);
    sub_2213E9590(v4);
    return 1;
  }

  return result;
}

uint64_t *sub_2213E9A58(void *a1, unsigned int *a2)
{
  result = sub_221087F14(a1, a2);
  if (result)
  {
    sub_2213E9A90(a1, result);
    return 1;
  }

  return result;
}

uint64_t sub_2213E9A90(void *a1, uint64_t *a2)
{
  v2 = *a2;
  sub_221087680(a1, a2, &v5);
  v3 = v5;
  v5 = 0;
  if (v3)
  {
    sub_2213E99A0(&v6, v3);
  }

  return v2;
}

uint64_t sub_2213E9ADC(uint64_t a1)
{
  sub_2213E9B18(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_2213E9B18(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_2213E95DC((v2 + 4));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void sub_2213EB388(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

uint64_t sub_2213EB7F8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v9 = objc_msgSend_baseIndex(v3, v5, v6, v7, v8);
  LODWORD(v4) = objc_msgSend_containsIndex_(v4, v10, v9, v11, v12);

  return v4 ^ 1;
}

void sub_2213EC0AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, TSUIndexSet *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  TSUIndexSet::~TSUIndexSet(&a22);
  TSUIndexSet::~TSUIndexSet((v38 + 40));
  _Block_object_dispose(&a34, 8);
  *(v41 - 96) = v39;
  sub_22107C2C0((v41 - 96));

  TSUIndexSet::~TSUIndexSet(v40 + 1);
  TSUIndexSet::~TSUIndexSet((v41 - 192));

  _Unwind_Resume(a1);
}

__n128 sub_2213EC198(__n128 *a1, __n128 *a2)
{
  a1[3].n128_u64[0] = 0;
  a1[3].n128_u64[1] = 0;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  a2[4].n128_u64[0] = 0;
  return result;
}

uint64_t sub_2213EC1E8(uint64_t a1, unsigned int *a2)
{
  for (i = *a2; i <= a2[2]; ++i)
  {
    result = TSUIndexSet::enumerateRangesUsingBlock();
  }

  return result;
}

void sub_2213EC2C4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *a2;
  if (*(a2 + 4) >= *a2)
  {
    v8 = *a2;
    do
    {
      v9 = *(a1 + 48);
      if (v9 <= *(a1 + 60) && *(a1 + 64) >= v5)
      {
        v41 = (v9 | (v5 << 32));
        v35 = *(a1 + 40);
        v40[0]._flags = 0;
        v36 = TSCETableResolverWrapper::makeReferenceWithTopLeft(v35, &v41, &v41, v40);
        v37 = [TSCEReferenceValue alloc];
        v39 = 0;
        *&v40[0]._flags = objc_msgSend_initWithEvalRef_hostCell_preserveFlags_permitsAccessInsideMergeRegions_isOutputOfAFunction_(v37, v38, v36, &unk_2217E1AEC, &v39, 1, 0);
        sub_221179A54((*(*(a1 + 32) + 8) + 48), v40);
      }

      else
      {
        v10 = MEMORY[0x277D81150];
        v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "+[TSCEFunction___CHART evaluateForArgsWithContext:functionSpec:arguments:]_block_invoke_2", a4, a5);
        v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEChartFunctions.mm", v13, v14);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v16, v11, v15, 88, 0, "apparentTractRefForTractRef let us exceeed tableSize?? (%d,%d)", v8, *(a1 + 48));

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19, v20);
        v21 = *(*(a1 + 32) + 8);
        v26 = objc_msgSend_emptyCellValue(TSCEEmptyCellValue, v22, v23, v24, v25);
        v28 = v21[7];
        v27 = v21[8];
        if (v28 >= v27)
        {
          v30 = v21[6];
          v31 = (v28 - v30) >> 3;
          if ((v31 + 1) >> 61)
          {
            sub_22107C148();
          }

          v32 = v27 - v30;
          v33 = v32 >> 2;
          if (v32 >> 2 <= (v31 + 1))
          {
            v33 = v31 + 1;
          }

          if (v32 >= 0x7FFFFFFFFFFFFFF8)
          {
            v34 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v34 = v33;
          }

          v45 = v21 + 6;
          if (v34)
          {
            sub_22107C1F0((v21 + 6), v34);
          }

          v41 = 0;
          v42 = (8 * v31);
          v44 = 0;
          *v42 = v26;
          v43 = 8 * v31 + 8;
          sub_22107C098((v21 + 6), &v41);
          v29 = v21[7];
          sub_22107C26C(&v41);
        }

        else
        {
          *v28 = v26;
          v29 = v28 + 1;
          v21[7] = v29;
        }

        v21[7] = v29;
      }

      LOWORD(v5) = v5 + 1;
      v8 = v5;
    }

    while (*(a2 + 4) >= v5);
  }
}

__n128 sub_2213EC558(uint64_t a1, uint64_t a2)
{
  *(a1 + 40) |= 3u;
  *&v4.f64[0] = 0x8000000080000000;
  *&v4.f64[1] = 0x8000000080000000;
  v6 = vnegq_f64(v4);
  *(a1 + 48) = v6;
  *(a1 + 64) = 0;
  TSUIndexSet::operator=();
  *(a1 + 72) |= 3u;
  *(a1 + 80) = v6;
  *(a1 + 96) = 0;
  TSUIndexSet::operator=();
  result = *(a2 + 104);
  *(a1 + 117) = *(a2 + 117);
  *(a1 + 104) = result;
  return result;
}

void sub_2213EC604(uint64_t a1)
{
  TSUIndexSet::~TSUIndexSet((a1 + 72));

  TSUIndexSet::~TSUIndexSet((a1 + 40));
}

uint64_t sub_2213EC640(uint64_t a1, uint64_t a2)
{
  *a1 |= 3u;
  *&v4.f64[0] = 0x8000000080000000;
  *&v4.f64[1] = 0x8000000080000000;
  v7 = vnegq_f64(v4);
  *(a1 + 8) = v7;
  *(a1 + 24) = 0;
  TSUIndexSet::operator=();
  *(a1 + 32) |= 3u;
  *(a1 + 40) = v7;
  *(a1 + 56) = 0;
  TSUIndexSet::operator=();
  v5 = *(a2 + 64);
  *(a1 + 77) = *(a2 + 77);
  *(a1 + 64) = v5;
  return a1;
}

void sub_2213ECB04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, void *a16)
{
  v22 = v20;

  _Unwind_Resume(a1);
}

void sub_2213ECB74(uint64_t a1, void *a2)
{
  v133 = a2;
  objc_opt_class();
  v3 = TSUDynamicCast();
  v8 = objc_msgSend_modelCellID(v3, v4, v5, v6, v7);
  v13 = objc_msgSend_layoutMergeRange(v3, v9, v10, v11, v12);
  v15 = v14;
  v19 = objc_msgSend_wpColumn(v3, v14, v16, v17, v18);
  objc_msgSend_sizeOfText(v3, v20, v21, v22, v23);
  v30 = v29;
  if (v19)
  {
    if (objc_msgSend_hasContent(v3, v24, v25, v26, v27) && (objc_msgSend_layoutCacheFlags(v3, v24, v25, v26, v27) & 1) != 0 && !objc_msgSend_verticalAlignment(v3, v24, v25, v26, v27))
    {
      v31 = *(a1 + 32);
      v32 = objc_msgSend_numberWithUnsignedLongLong_(MEMORY[0x277CCABB0], v24, (v8 << 15) | WORD2(v8), v26, v27);
      objc_msgSend_setObject_forKey_(v31, v33, v19, v32, v34);
    }
  }

  else if (v28 == *MEMORY[0x277CBF3A8] && v29 == *(MEMORY[0x277CBF3A8] + 8))
  {
    goto LABEL_58;
  }

  if ((objc_msgSend_inDynamicLayout(v3, v24, v25, v26, v27) & 1) == 0 && objc_msgSend_cellPropsRowHeight(v3, v36, v37, v38, v39))
  {
    if (v13 != 0x7FFFFFFF && (v13 & 0xFFFF00000000) != 0x7FFF00000000 && v15 >> 32 && v15)
    {
      objc_msgSend_paddingInsets(v3, v40, v41, v42, v43);
      v45 = v44;
      v47 = v46;
      v49 = v48;
      v51 = v50;
      v56 = objc_msgSend_cell(v3, v52, v53, v54, v55);
      if (objc_msgSend_valueType(v56, v57, v58, v59, v60) == 6)
      {
        v65 = objc_msgSend_cell(v3, v61, v62, v63, v64);
        v70 = objc_msgSend_formatType(v65, v66, v67, v68, v69) == 263;
      }

      else
      {
        v70 = 0;
      }

      WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 8));
      v110 = objc_msgSend_cellRange(WeakRetained, v106, v107, v108, v109);
      v112 = v111;

      v113 = objc_loadWeakRetained((*(a1 + 40) + 8));
      v119 = objc_msgSend_mergeRangesForLayoutPass(v113, v114, v115, v116, v117);
      v120 = 0;
      v121 = 0x7FFFLL;
      v122 = 0x7FFFFFFF;
      if (v110 != 0x7FFFFFFF)
      {
        v123 = 0;
        if ((v110 & 0xFFFF00000000) == 0x7FFF00000000)
        {
          goto LABEL_56;
        }

        v120 = 0;
        v121 = 0x7FFFLL;
        if (HIDWORD(v112))
        {
          v123 = 0;
          if (v112)
          {
            v122 = *MEMORY[0x277D813C8];
            v121 = *(MEMORY[0x277D813C8] + 4);
            v120 = *(MEMORY[0x277D813C8] + 8);
            if (WORD2(v13) <= WORD2(v110))
            {
              v124 = WORD2(v110);
            }

            else
            {
              v124 = WORD2(v13);
            }

            v118 = v110;
            if (v13 <= v110)
            {
              v125 = v110;
            }

            else
            {
              v125 = v13;
            }

            LOWORD(v126) = v15 + WORD2(v13) - 1;
            if (WORD2(v13) == 0x7FFF || v15 == 0)
            {
              LOWORD(v126) = 0x7FFF;
            }

            v126 = v126;
            v128 = v112 + WORD2(v110) - 1;
            if (WORD2(v110) == 0x7FFF || v112 == 0)
            {
              v128 = 0x7FFF;
            }

            if (v126 >= v128)
            {
              v126 = v128;
            }

            if (v13 + HIDWORD(v15) - 1 >= (v110 + HIDWORD(v112) - 1))
            {
              v130 = v110 + HIDWORD(v112) - 1;
            }

            else
            {
              v130 = v13 + HIDWORD(v15) - 1;
            }

            v131 = v130 >= v125;
            v132 = v130 - v125;
            if (v131 && v124 <= v126)
            {
              objc_msgSend_addRange_height_paddingInsets_isCheckbox_(v119, v110, (v124 << 32) | v125, (v126 - v124 + 1) | ((v132 + 1) << 32), v70, v30, v45, v47, v49, v51);
LABEL_57:

              goto LABEL_58;
            }

            v123 = *(MEMORY[0x277D813C8] + 6) << 48;
          }

LABEL_56:
          objc_msgSend_addRange_height_paddingInsets_isCheckbox_(v119, v118, v123 | (v121 << 32) | v122, v120, v70, v30, v45, v47, v49, v51);
          goto LABEL_57;
        }
      }

      v123 = 0;
      goto LABEL_56;
    }

    v71 = objc_msgSend_modelCellID(v3, v40, v41, v42, v43);
    v76 = objc_msgSend_cell(v3, v72, v73, v74, v75);
    if (objc_msgSend_valueType(v76, v77, v78, v79, v80) == 6)
    {
      v85 = objc_msgSend_cell(v3, v81, v82, v83, v84);
      objc_msgSend_formatType(v85, v86, v87, v88, v89);
    }

    if (v30 > 0.0)
    {
      objc_msgSend_paddingInsets(v3, v90, v91, v92, v93);
      v95 = v94;
      objc_msgSend_paddingInsets(v3, v96, v97, v98, v99);
      v104 = v30 + v95 + v103;
      if (v104 < 8.0)
      {
        v104 = 8.0;
      }

      objc_msgSend_addFittingHeight_forCellID_(*(a1 + 48), v100, v71, v101, v102, v104);
    }
  }

LABEL_58:
}

void sub_2213ED5BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24)
{
  _Block_object_dispose(&a17, 8);
  if (__p)
  {
    a24 = __p;
    operator delete(__p);
  }

  v28 = *(v26 - 88);
  if (v28)
  {
    *(v26 - 80) = v28;
    operator delete(v28);
  }

  _Unwind_Resume(a1);
}

__n128 sub_2213ED618(__n128 *a1, __n128 *a2)
{
  a1[3].n128_u64[0] = 0;
  a1[3].n128_u64[1] = 0;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  a2[4].n128_u64[0] = 0;
  return result;
}

void sub_2213ED63C(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void sub_2213ED654(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v35._lower = objc_msgSend_rowUIDForRowIndex_(*(a1 + 32), a2, a2, a4, a5);
  v35._upper = v7;
  v8 = sub_2210875C4((*(a1 + 40) + 8), &v35);
  if (v8)
  {
    v13 = *(a1 + 32);
    v14 = v8[4];
    if (v14)
    {
      objc_msgSend_uuidsAsVector(v14, v9, v10, v11, v12);
    }

    else
    {
      __p = 0;
      v33 = 0;
      v34 = 0;
    }

    v30 = objc_msgSend_columnIndexesForUIDs_(v13, v9, &__p, v11, v12);
    if (__p)
    {
      v33 = __p;
      operator delete(__p);
    }

    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = sub_2213ED840;
    v31[3] = &unk_278464958;
    v31[5] = a2;
    v31[6] = 1;
    v31[4] = *(a1 + 48);
    objc_msgSend_enumerateRangesUsingBlock_(v30, v27, v31, v28, v29);
  }

  else if (v35 != 0uLL)
  {
    v15 = MEMORY[0x277D81150];
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSTConcurrentMutableCellUIDSet reapAccumulatedCellRegionWithTable:]_block_invoke", v11, v12);
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConcurrentMutableCellUIDSet.mm", v18, v19);
    v21 = TSKUIDStruct::description(&v35);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v22, v16, v20, 110, 0, "Search not found: %{public}@", v21);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25, v26);
  }
}

void sub_2213ED7F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19)
{
  v22 = v21;

  _Unwind_Resume(a1);
}

void sub_2213ED840(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = a1[5];
  v8 = a1[6];
  if (a2 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], 0x7FFFFFFFFFFFFFFFLL, "TSUCellRect TSUMakeCellRectFromNSRanges(NSRange, NSRange)", a4, a5);
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Binaries/iWorkImport/install/Symbols/BuiltProducts/TSUtility.framework/Headers/TSUColumnRowRect.h", v13, v14);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v16, v11, v15, 168, 0, "Invalid column range");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19, v20);
  }

  if (v9 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v21 = MEMORY[0x277D81150];
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "TSUCellRect TSUMakeCellRectFromNSRanges(NSRange, NSRange)", a4, a5);
    v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "/Library/Caches/com.apple.xbs/Binaries/iWorkImport/install/Symbols/BuiltProducts/TSUtility.framework/Headers/TSUColumnRowRect.h", v24, v25);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v21, v27, v22, v26, 169, 0, "Invalid row range");
    v28 = 0x7FFF7FFFFFFFLL;

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v29, v30, v31, v32);
    v33 = 0;
  }

  else
  {
    v34 = v9 | (a2 << 32);
    v35 = a3 | (v8 << 32);
    if (!v8)
    {
      v34 = 0x7FFF7FFFFFFFLL;
      v35 = 0;
    }

    if (!a3)
    {
      v34 = 0x7FFF7FFFFFFFLL;
      v35 = 0;
    }

    if (a2 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v28 = 0x7FFF7FFFFFFFLL;
    }

    else
    {
      v28 = v34;
    }

    if (a2 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v33 = 0;
    }

    else
    {
      v33 = v35;
    }
  }

  v36 = *(a1[4] + 8);
  v38 = v36[7];
  v37 = v36[8];
  if (v38 >= v37)
  {
    v40 = v36[6];
    v41 = (v38 - v40) >> 4;
    v42 = v41 + 1;
    if ((v41 + 1) >> 60)
    {
      sub_22107C148();
    }

    v43 = v37 - v40;
    if (v43 >> 3 > v42)
    {
      v42 = v43 >> 3;
    }

    if (v43 >= 0x7FFFFFFFFFFFFFF0)
    {
      v44 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v44 = v42;
    }

    if (v44)
    {
      sub_221086F74((v36 + 6), v44);
    }

    v45 = (16 * v41);
    *v45 = v28;
    v45[1] = v33;
    v39 = 16 * v41 + 16;
    v46 = v36[6];
    v47 = v36[7] - v46;
    v48 = 16 * v41 - v47;
    memcpy(v45 - v47, v46, v47);
    v49 = v36[6];
    v36[6] = v48;
    v36[7] = v39;
    v36[8] = 0;
    if (v49)
    {
      operator delete(v49);
    }
  }

  else
  {
    *v38 = v28;
    v38[1] = v33;
    v39 = (v38 + 2);
  }

  v36[7] = v39;
}

void *sub_2213EDAC0(void *a1, void *a2)
{
  v2 = a2[1];
  v3 = v2 ^ *a2;
  v4 = a1[1];
  if (!*&v4)
  {
    goto LABEL_22;
  }

  v5 = vcnt_s8(v4);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = v2 ^ *a2;
    if (v3 >= *&v4)
    {
      v6 = v3 % *&v4;
    }
  }

  else
  {
    v6 = (*&v4 - 1) & v3;
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7 || (v8 = *v7) == 0)
  {
LABEL_22:
    operator new();
  }

  while (1)
  {
    v9 = v8[1];
    if (v9 == v3)
    {
      break;
    }

    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v4)
      {
        v9 %= *&v4;
      }
    }

    else
    {
      v9 &= *&v4 - 1;
    }

    if (v9 != v6)
    {
      goto LABEL_22;
    }

LABEL_21:
    v8 = *v8;
    if (!v8)
    {
      goto LABEL_22;
    }
  }

  if (v8[2] != *a2 || v8[3] != v2)
  {
    goto LABEL_21;
  }

  return v8;
}

void sub_2213EDD14(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_221087224(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2213EF280(TSUDecimal *a1, TSUDecimal *a2, void *a3)
{
  v5 = a3;
  TSUDecimal::doubleValue(a1);
  v7 = v6;
  TSUDecimal::doubleValue(a2);
  v9 = v8;
  if (TSUDecimal::operator==())
  {
    v14 = 0;
  }

  else
  {
    v15 = objc_msgSend_isEqualViaFormattingAsDouble::(v5, v10, v11, v12, v13, v7, v9);
    v16 = -1;
    if (v7 >= v9)
    {
      v16 = 1;
    }

    if (v15)
    {
      v14 = 0;
    }

    else
    {
      v14 = v16;
    }
  }

  return v14;
}

TSCEASTRewriter *sub_2213F245C(TSCEASTRewriter *a1, TSCEASTNodeArray *a2, TSCEFormulaRewriteContext *a3, void *a4)
{
  v7 = a4;
  TSCEASTRewriter::TSCEASTRewriter(a1, a2, a3, 0);
  *a1 = &unk_2834A7AC8;
  *(a1 + 25) = v7;
  return a1;
}

TSCEASTElementWithChildren *sub_2213F24E0(uint64_t a1, TSCEASTElementWithChildren *this)
{
  v57 = *MEMORY[0x277D85DE8];
  v4 = TSCEASTElementWithChildren::child(this, 0);
  v5 = TSCEASTElementWithChildren::child(this, 1u);
  if (v4)
  {
    v6 = v5;
    if (v5)
    {
      v7 = (*(*v4 + 40))(v4, a1);
      v8 = (*(*v6 + 40))(v6, a1);
      v9 = TSCEASTElement::tag(v7, a1);
      v43 = a1;
      v10 = TSCEASTElement::tag(v8, a1);
      if (TSCEASTRelativeCoordRefElement::isReferenceTag(v9) && TSCEASTRelativeCoordRefElement::isReferenceTag(v10))
      {
        v54[0] = TSCEFormulaRewriteContext::containingCell(*(a1 + 8))->var0.var0.coordinate;
        (*(*v7 + 136))(v55, v7, a1, v54);
        __p = TSCEFormulaRewriteContext::containingCell(*(a1 + 8))->var0.var0.coordinate;
        (*(*v8 + 136))(v54, v8, a1, &__p);
        v11 = v55[1];
        v12 = v54[1];
        v44 = v54[2];
        v45 = v55[2];
        TSCEASTRelativeCoordRefElement::preserveFlags(v7, a1);
        TSCEASTRelativeCoordRefElement::preserveFlags(v8, a1);
        if (v11 != v12 || v45 != v44)
        {
          __p = 0;
          v52 = 0;
          v53 = 0;
          v47 = 0u;
          v48 = 0u;
          v49 = 0u;
          v50 = 0u;
          obj = *(a1 + 200);
          v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v13, &v47, v56, 16);
          if (!v18)
          {
            goto LABEL_30;
          }

          v42 = *v48;
          while (1)
          {
            for (i = 0; i != v18; ++i)
            {
              if (*v48 != v42)
              {
                objc_enumerationMutation(obj);
              }

              v20 = objc_msgSend_second(*(*(&v47 + 1) + 8 * i), v14, v15, v16, v17);
              v28 = objc_msgSend_count(v20, v21, v22, v23, v24);
              if (!v28)
              {
                goto LABEL_23;
              }

              v29 = 0;
              LOBYTE(v30) = 0;
              v31 = 0;
              while (1)
              {
                v32 = objc_msgSend_objectAtIndex_(v20, v25, v31, v26, v27);
                v46.coordinate = 0;
                v46._tableUID._lower = 0;
                v33 = TSKMakeUIDStructFromNSUUID();
                v46.coordinate = v33;
                v46._tableUID._lower = v34;
                if ((v30 & 1) == 0)
                {
                  v30 = 0;
                  if (v11 != v33 || v45 != v34)
                  {
                    goto LABEL_21;
                  }

                  goto LABEL_20;
                }

                if (v12 == v33 && v44 == v34)
                {
                  break;
                }

LABEL_20:
                sub_221083454(&__p, &v46);
                v30 = 1;
LABEL_21:

                v29 = ++v31 >= v28;
                if (v28 == v31)
                {
                  if (v30)
                  {

                    LOBYTE(v18) = 1;
                    goto LABEL_30;
                  }

LABEL_23:

                  goto LABEL_25;
                }
              }

              sub_221083454(&__p, &v46);

              if (!v29)
              {
                LOBYTE(v18) = 0;
                goto LABEL_30;
              }

LABEL_25:
              ;
            }

            v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v14, &v47, v56, 16);
            if (!v18)
            {
LABEL_30:

              if ((v52 - __p) > 0xFFFFFFFE0)
              {
                v39 = 1;
              }

              else
              {
                v39 = v18;
              }

              if (v52 != __p && (v39 & 1) == 0)
              {
                TSCEASTIteratorBase::createBool(v43, 0, v36, v37, v38);
              }

              TSCEASTIteratorBase::createReferenceError(v43, v35, v36, v37, v38);
            }
          }
        }
      }
    }
  }

  return this;
}

void sub_2213F2AB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *__p, uint64_t a39)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2213F2B30(id *a1)
{

  TSCEASTRewriter::~TSCEASTRewriter(a1);
}

void sub_2213F2B6C(id *a1)
{
  TSCEASTRewriter::~TSCEASTRewriter(a1);

  JUMPOUT(0x223DA1450);
}

void sub_2213F2DBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = TSTWPTokenAttachment;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_2213F33D8(uint64_t a1, void *a2)
{
  objc_storeStrong((*(a1 + 32) + 80), a2);
  v7 = a2;
  objc_msgSend_setTokenAttachment_(*(*(a1 + 32) + 80), v4, *(a1 + 32), v5, v6);
}

void sub_2213F4870(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void **a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  a21 = &a31;
  sub_22107C2C0(&a21);
  a21 = (v32 - 160);
  sub_22107C2C0(&a21);
  v34 = *(v32 - 136);
  if (v34)
  {
    operator delete(v34);
  }

  a21 = (v32 - 112);
  sub_22107C2C0(&a21);

  _Unwind_Resume(a1);
}

uint64_t sub_2213F4AD0(uint64_t result, _BYTE *a2)
{
  v3 = result;
  v4 = *(result + 8);
  v5 = *(result + 16);
  if (v4 == v5 << 6)
  {
    if ((v4 + 1) < 0)
    {
      sub_22107C148();
    }

    v6 = v5 << 7;
    if (v6 <= (v4 & 0x3FFFFFFFFFFFFFC0) + 64)
    {
      v6 = (v4 & 0x3FFFFFFFFFFFFFC0) + 64;
    }

    if (v4 <= 0x3FFFFFFFFFFFFFFELL)
    {
      v7 = v6;
    }

    else
    {
      v7 = 0x7FFFFFFFFFFFFFFFLL;
    }

    result = sub_22133500C(result, v7);
    v4 = v3[1];
  }

  v3[1] = v4 + 1;
  v8 = *v3;
  v9 = v4 >> 6;
  v10 = 1 << v4;
  if (*a2 == 1)
  {
    v11 = *(v8 + 8 * v9) | v10;
  }

  else
  {
    v11 = *(v8 + 8 * v9) & ~v10;
  }

  *(v8 + 8 * v9) = v11;
  return result;
}

uint64_t sub_2213F5020(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_2210BC26C(result, a4);
  }

  return result;
}

id TSTExpressionTreeCreator::expressionTreeFromFormula(TSTExpressionTreeCreator *this, TSCEFormulaRewriteContext *a2, TSCEFormulaRewriteContext *a3, TSPObjectContext *a4)
{
  v7 = this;
  v8 = a3;
  v13 = objc_msgSend_const_astNodeArray(v7, v9, v10, v11, v12);
  if (sub_2215C5C84(v13))
  {
    v14 = 0;
  }

  else
  {
    v14 = TSTExpressionTreeCreator::expressionTreeFromASTNodeArray(v13, a2, v8, a4);
  }

  return v14;
}

id TSTExpressionTreeCreator::expressionTreeFromASTNodeArray(TSCEASTNodeArray *this, TSCEFormulaRewriteContext *a2, TSCEFormulaRewriteContext *a3, TSPObjectContext *a4)
{
  v4 = a4;
  v7 = a3;
  v12 = objc_msgSend_documentLocale(a2->var0, v8, v9, v10, v11);
  TSCESymbolTable::TSCESymbolTable(&v24, v12);

  sub_2213F9488(v23, this, a2, &v24, v7, v4);
  TSCEASTRewriter::rewrite(v23, v13, v14, v15, v16);
  v21 = TSTExpressionTreeCreator::expressionNode(v23, v17, v18, v19, v20);
  TSTExpressionTreeCreator::~TSTExpressionTreeCreator(v23);
  v23[0] = &v24._undoSymbolTableMaps;
  sub_2210C8268(v23);
  sub_221087B80(&v24._identifierMap);
  sub_2210C82EC(&v24._symbolTableMap);

  return v21;
}

void sub_2213F5240(_Unwind_Exception *a1)
{
  sub_2210C8214((v2 - 168));

  _Unwind_Resume(a1);
}

id TSTExpressionTreeCreator::expressionNode(void **this, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (objc_msgSend_count(this[28], a2, a3, a4, a5))
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "TSTExpressionNode *TSTExpressionTreeCreator::expressionNode()", v8, v9);
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTExpressionTreeCreator.mm", v13, v14);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v16, v11, v15, 867, 0, "_exprNodeStack should be empty, all partial work processed");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19, v20);
  }

  TSTExpressionTreeCreator::completedNodeAndChildren(this, v6, v7, v8, v9);
  v25 = objc_msgSend_count(this[28], v21, v22, v23, v24);
  if (v25)
  {
    v29 = MEMORY[0x277D81150];
    v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, "TSTExpressionNode *TSTExpressionTreeCreator::expressionNode()", v27, v28);
    v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v31, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTExpressionTreeCreator.mm", v32, v33);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v29, v35, v30, v34, 870, 0, "_exprNodeStack should now REALLY be empty, we processed remaining work, in theory");

    v25 = objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v36, v37, v38, v39);
  }

  v40 = this[27];
  if (v40)
  {
    v41 = TSTExpressionTreeCreator::combineSpillRangeOpIntoRefNode(v25, v40);
    v42 = this[27];
    this[27] = v41;

    v43 = this[27];
  }

  else
  {
    v43 = 0;
  }

  return v43;
}

void TSTExpressionTreeCreator::~TSTExpressionTreeCreator(TSTExpressionTreeCreator *this)
{
  *this = &unk_2834A7C30;
  v3 = (this + 288);
  sub_22107C2C0(&v3);
  v3 = (this + 264);
  sub_22107C2C0(&v3);
  v2 = *(this + 30);
  if (v2)
  {
    *(this + 31) = v2;
    operator delete(v2);
  }

  TSCEASTRewriter::~TSCEASTRewriter(this);
}

{
  TSTExpressionTreeCreator::~TSTExpressionTreeCreator(this);

  JUMPOUT(0x223DA1450);
}

void TSTExpressionTreeCreator::addWhitespaceBefore(TSTExpressionTreeCreator *this, NSString *a2)
{
  v3 = a2;
  v8 = v3;
  if (objc_msgSend_length(v3, v4, v5, v6, v7))
  {
    sub_2210C4258(this + 33, &v8);
    v3 = v8;
  }
}

void TSTExpressionTreeCreator::addWhitespaceAfter(TSTExpressionTreeCreator *this, NSString *a2)
{
  v3 = a2;
  v8 = v3;
  if (objc_msgSend_length(v3, v4, v5, v6, v7))
  {
    sub_2210C4258(this + 36, &v8);
    v3 = v8;
  }
}

void TSTExpressionTreeCreator::addExpression(TSTExpressionTreeCreator *this, TSTExpressionNode *a2, int a3)
{
  v10 = a2;
  v99 = a3;
  if (v10)
  {
    for (i = *(this + 34); *(this + 33) != i; i = *(this + 34))
    {
      v12 = *(i - 8);
      v13 = *(this + 34);

      *(this + 34) = v13 - 8;
      v22 = objc_msgSend_whitespaceBefore(v10, v14, v15, v16, v17);
      if (v22)
      {
        v23 = objc_msgSend_whitespaceBefore(v10, v18, v19, v20, v21);
      }

      else
      {
        v23 = &stru_2834BADA0;
      }

      v27 = objc_msgSend_stringByAppendingString_(v12, v24, v23, v25, v26);
      objc_msgSend_setWhitespaceBefore_(v10, v28, v27, v29, v30);
    }

    for (j = *(this + 37); *(this + 36) != j; j = *(this + 37))
    {
      v32 = *(j - 8);
      v33 = *(this + 37);

      *(this + 37) = v33 - 8;
      v42 = objc_msgSend_whitespaceAfter(v10, v34, v35, v36, v37);
      if (v42)
      {
        v43 = objc_msgSend_whitespaceAfter(v10, v38, v39, v40, v41);
      }

      else
      {
        v43 = &stru_2834BADA0;
      }

      v47 = objc_msgSend_stringByAppendingString_(v43, v44, v32, v45, v46);
      objc_msgSend_setWhitespaceAfter_(v10, v48, v47, v49, v50);
    }

    if (objc_msgSend_count(*(this + 29), v6, v7, v8, v9))
    {
      v55 = objc_msgSend_lastObject(*(this + 29), v51, v52, v53, v54);
      objc_msgSend_addObject_(v55, v56, v10, v57, v58);
    }

    else if (!a3)
    {
      if (objc_msgSend_count(*(this + 28), v51, v52, v53, v54))
      {
        v73 = MEMORY[0x277D81150];
        v74 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v70, "void TSTExpressionTreeCreator::addExpression(TSTExpressionNode *__strong, uint32_t)", v71, v72);
        v78 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v75, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTExpressionTreeCreator.mm", v76, v77);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v73, v79, v74, v78, 127, 0, "Expecting exprNodeStack to be empty in this case, we are top-level");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v80, v81, v82, v83);
      }

      objc_msgSend_addObject_(*(this + 28), v70, v10, v71, v72);
      if (*(this + 27))
      {
        v84 = MEMORY[0x277D81150];
        v85 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v51, "void TSTExpressionTreeCreator::addExpression(TSTExpressionNode *__strong, uint32_t)", v53, v54);
        v89 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v86, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTExpressionTreeCreator.mm", v87, v88);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v84, v90, v85, v89, 129, 0, "Expecting _topLevelExpr to be nil in this case, we are top-level");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v91, v92, v93, v94);
      }
    }

    if (*(this + 27))
    {
      if (!a3)
      {
        goto LABEL_25;
      }
    }

    else
    {
      objc_storeStrong(this + 27, a2);
      if (!a3)
      {
LABEL_25:
        TSTExpressionTreeCreator::completedNodeAndChildren(this, v51, v52, v53, v54);
        goto LABEL_26;
      }
    }

    objc_msgSend_addObject_(*(this + 28), v51, v10, v53, v54);
    v95 = objc_opt_new();
    objc_msgSend_addObject_(*(this + 29), v96, v95, v97, v98);
    sub_2210C47D0(this + 30, &v99);

    if (!v99)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v59 = MEMORY[0x277D81150];
    v60 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "void TSTExpressionTreeCreator::addExpression(TSTExpressionNode *__strong, uint32_t)", v8, v9);
    v64 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v61, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTExpressionTreeCreator.mm", v62, v63);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v59, v65, v60, v64, 100, 0, "invalid nil value for '%{public}s'", "exprNode");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v66, v67, v68, v69);
  }

LABEL_26:
}

uint64_t TSTExpressionTreeCreator::completedNodeAndChildren(TSTExpressionTreeCreator *this, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = objc_msgSend_count(*(this + 28), a2, a3, a4, a5);
  if (result)
  {
    v259 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
    while (1)
    {
      v11 = objc_msgSend_lastObject(*(this + 28), v7, v8, v9, v10);
      if (objc_msgSend_count(*(this + 29), v12, v13, v14, v15) && (v20 = *(*(this + 31) - 4), v20))
      {
        v21 = objc_msgSend_lastObject(*(this + 29), v16, v17, v18, v19);
        v26 = objc_msgSend_count(v21, v22, v23, v24, v25);
        v30 = v26 == v20;
        if (v26 == v20)
        {
          objc_msgSend_setChildren_(v11, v27, v21, v28, v29);
          *(this + 31) -= 4;
          objc_msgSend_removeLastObject(*(this + 29), v31, v32, v33, v34);
        }

        else
        {

          v11 = 0;
        }
      }

      else
      {
        v30 = 1;
      }

      if (objc_msgSend_isColonNode(v11, v16, v17, v18, v19))
      {
        break;
      }

      if (objc_msgSend_isContinuedLetNode(v11, v35, v36, v37, v38))
      {
        if (objc_msgSend_count(*(this + 28), v127, v128, v129, v130) < 2 || (v135 = *(this + 28), v136 = objc_msgSend_count(v135, v131, v132, v133, v134), objc_msgSend_objectAtIndexedSubscript_(v135, v137, v136 - 2, v138, v139), (v39 = objc_claimAutoreleasedReturnValue()) == 0))
        {
          v199 = MEMORY[0x277D81150];
          v200 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v131, "void TSTExpressionTreeCreator::completedNodeAndChildren()", v133, v134);
          v204 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v201, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTExpressionTreeCreator.mm", v202, v203);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v199, v205, v200, v204, 279, 0, "Didn't find a parent LET for LET-continued node");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v206, v207, v208, v209);
LABEL_37:
          if (v11)
          {
            goto LABEL_38;
          }

          goto LABEL_61;
        }

        v141 = objc_msgSend_lastObject(*(this + 29), v131, v140, v133, v134);
        v47 = v141;
        if (v141)
        {
          v149 = objc_msgSend_indexOfObjectIdenticalTo_(v141, v142, v11, v143, v144);
          if (v149 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v51 = objc_msgSend_children(v11, v145, v146, v147, v148);
            if (!objc_msgSend_count(v51, v150, v151, v152, v153))
            {
              v157 = MEMORY[0x277D81150];
              v158 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v154, "void TSTExpressionTreeCreator::completedNodeAndChildren()", v155, v156);
              v162 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v159, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTExpressionTreeCreator.mm", v160, v161);
              objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v157, v163, v158, v162, 290, 0, "CompletedNode should already have its children");

              objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v164, v165, v166, v167);
            }

            objc_msgSend_removeObjectAtIndex_(v47, v154, v149, v155, v156);
            v168 = MEMORY[0x277CCAA78];
            v173 = objc_msgSend_count(v51, v169, v170, v171, v172);
            v60 = objc_msgSend_indexSetWithIndexesInRange_(v168, v174, v149, v173, v175);
            objc_msgSend_insertObjects_atIndexes_(v47, v176, v51, v60, v177);
            v178 = *(this + 31);
            v262._topLeft.row = *(v178 - 4);
            *(this + 31) = v178 - 4;
            v183 = objc_msgSend_count(v51, v179, v180, v181, v182);
            v262._topLeft.row = v183 + v262._topLeft.row - 1;
            sub_2210C47D0(this + 30, &v262);
LABEL_57:

            goto LABEL_58;
          }
        }

LABEL_59:

        goto LABEL_60;
      }

      if (!objc_msgSend_isFunctionNode(v11, v127, v128, v129, v130))
      {
        goto LABEL_37;
      }

      objc_opt_class();
      v39 = TSUDynamicCast();
      objc_msgSend_resurrectModeTokens(v39, v188, v189, v190, v191);
LABEL_60:

      if (v11)
      {
LABEL_38:
        objc_msgSend_removeLastObject(*(this + 28), v184, v185, v186, v187);
        goto LABEL_62;
      }

LABEL_61:
      v30 = 0;
LABEL_62:

      result = objc_msgSend_count(*(this + 28), v242, v243, v244, v245);
      if (!result || !v30)
      {
        return result;
      }
    }

    v39 = objc_msgSend_children(v11, v35, v36, v37, v38);
    if (objc_msgSend_count(v39, v40, v41, v42, v43) != 2)
    {
      goto LABEL_60;
    }

    v47 = objc_msgSend_objectAtIndexedSubscript_(v39, v44, 0, v45, v46);
    v51 = objc_msgSend_objectAtIndexedSubscript_(v39, v48, 1, v49, v50);
    if (objc_msgSend_isReferenceNode(v47, v52, v53, v54, v55) && objc_msgSend_isReferenceNode(v51, v56, v57, v58, v59))
    {
      objc_opt_class();
      v60 = TSUDynamicCast();
      objc_opt_class();
      v61 = TSUDynamicCast();
      v66 = v61;
      if (v60 && v61 && (objc_msgSend_spillRangeSuffix(v60, v62, v63, v64, v65) & 1) == 0 && (objc_msgSend_spillRangeSuffix(v66, v67, v68, v69, v70) & 1) == 0 && (objc_msgSend_isCategoryRef(v60, v71, v72, v73, v74) & 1) == 0 && (objc_msgSend_isCategoryRef(v66, v75, v76, v77, v78) & 1) == 0)
      {
        v254 = objc_msgSend_tableUID(v60, v79, v80, v81, v82);
        v84 = v83;
        v85 = sub_221089E8C(this);
        v87 = objc_msgSend_tableInfoForTableUID_withCalcEngine_(TSTTableInfo, v86, v254, v84, v85);

        v258 = v87;
        if (objc_msgSend_isCategorized(v87, v88, v89, v90, v91))
        {
          v92 = v60;
          v252 = v66;
          v255 = v92;
          v97 = objc_msgSend_baseTopLeftCoord(v92, v93, v94, v95, v96);
          v102 = objc_msgSend_baseBottomRightCoord(v252, v98, v99, v100, v101);
          if ((v97 & 0xFFFFFFFFFFFFLL) == 0x7FFF7FFFFFFFLL || (v102 & 0xFFFFFFFFFFFFLL) == 0x7FFF7FFFFFFFLL)
          {
            v216 = [TSTReferenceNode alloc];
            v250 = *(this + 25);
            v248 = sub_221089E8C(this);
            tableUID = TSCEFormulaRewriteContext::containingCell(*(this + 1))->var0.var0._tableUID;
            v262 = v259;
            v263 = tableUID;
            v218 = TSCEFormulaRewriteContext::containingCell(*(this + 1));
            v260 = *&v218->var0.var0.coordinate.row;
            upper = v218->var0.var0._tableUID._upper;
            LOBYTE(v246) = *(this + 208);
            started = objc_msgSend_initWithContext_calculationEngine_baseRangeRef_preserveFlags_hostCellRef_referenceColorHelper_suppressAutomaticNamedReferenceInvalidation_(v216, v219, v250, v248, &v262, 0, &v260, 0, v246);
          }

          else
          {
            v260._topLeft = v97;
            v260._bottomRight = v102;
            v107 = objc_msgSend_basePreserveFlags(v255, v103, v104, v105, v106);
            v264._flags = v107 & 3 | (4 * (objc_msgSend_basePreserveFlags(v252, v108, v109, v110, v111) & 3));
            TSCERangeCoordinate::fixInversions(&v260, &v264);
            v249 = [TSTUIDRectRef alloc];
            v116 = objc_msgSend_calcEngine(v87, v112, v113, v114, v115);
            v121 = objc_msgSend_tableUID(v87, v117, v118, v119, v120);
            v262 = v260;
            v263._lower = v121;
            v263._upper = v122;
            v250 = objc_msgSend_initWithCalcEngine_baseRangeRef_preserveFlags_(v249, v122, v116, &v262, v264._flags);

            v123 = [TSTReferenceNode alloc];
            v248 = *(this + 25);
            v247 = sub_221089E8C(this);
            v124 = TSCEFormulaRewriteContext::containingCell(*(this + 1));
            v262 = *&v124->var0.var0.coordinate.row;
            v263._lower = v124->var0.var0._tableUID._upper;
            started = objc_msgSend_initWithContext_calculationEngine_uidRectRef_hostCellRef_referenceColorHelper_suppressAutomaticNamedReferenceInvalidation_(v123, v125, v248, v247, v250, &v262, 0, *(this + 208));
          }
        }

        else
        {
          v210 = [TSTReferenceNode alloc];
          started = objc_msgSend_initWithReferenceStart_referenceEnd_suppressAutomaticNamedReferenceInvalidation_(v210, v211, v60, v66, *(this + 208));
        }

        if (started)
        {
          if (objc_msgSend_count(*(this + 29), v212, v213, v214, v215) && (objc_msgSend_lastObject(*(this + 29), v220, v221, v222, v223), (v224 = objc_claimAutoreleasedReturnValue()) != 0))
          {
            v256 = v224;
            v229 = objc_msgSend_indexOfObjectIdenticalTo_(v224, v225, v11, v226, v227);
            if (v229 == 0x7FFFFFFFFFFFFFFFLL)
            {
              v232 = MEMORY[0x277D81150];
              v253 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v228, "void TSTExpressionTreeCreator::completedNodeAndChildren()", v230, v231);
              v251 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v233, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTExpressionTreeCreator.mm", v234, v235);
              objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v232, v236, v253, v251, 250, 0, "Expecting to locate a valid replaceIndex");

              objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v237, v238, v239, v240);
            }

            else
            {
              objc_msgSend_replaceObjectAtIndex_withObject_(v256, v228, v229, started, v231);
            }

            v241 = v256;
          }

          else
          {
            v241 = 0;
          }

          if (*(this + 27) == v11)
          {
            v257 = v241;
            objc_storeStrong(this + 27, started);
            v241 = v257;
          }
        }
      }

      goto LABEL_57;
    }

    if (objc_msgSend_isReferenceNode(v47, v56, v57, v58, v59) || objc_msgSend_isReferenceNode(v51, v192, v193, v194, v195))
    {
      objc_opt_class();
      v60 = TSUDynamicCast();
      objc_msgSend_setRangeWithFunction_(v60, v196, 1, v197, v198);
      goto LABEL_57;
    }

LABEL_58:

    goto LABEL_59;
  }

  return result;
}