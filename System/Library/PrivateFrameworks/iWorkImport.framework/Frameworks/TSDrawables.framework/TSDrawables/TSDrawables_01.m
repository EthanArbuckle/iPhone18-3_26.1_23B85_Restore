void sub_2766B949C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v11 = v10;

  _Unwind_Resume(a1);
}

void sub_2766BB998(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = qword_280A4C270;
  qword_280A4C270 = v1;

  if (!qword_280A4C270)
  {
    v4 = MEMORY[0x277D81150];
    v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, "+[TSDFrameImageCache sharedFrameImageCache]_block_invoke");
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDFrameImageCache.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v8, v5, v7, 117, 0, "invalid nil value for '%{public}s'", "instance");

    v11 = MEMORY[0x277D81150];

    objc_msgSend_logBacktraceThrottled(v11, v9, v10);
  }
}

void sub_2766BC0B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_2766BC0C8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2766BC0E0(uint64_t a1, const char *a2)
{
  objc_msgSend_p_loadBrushIfNeeded_(*(a1 + 48), a2, *(a1 + 32));
  v12 = objc_msgSend_p_storagesByBrushName(*(a1 + 48), v3, v4);
  v6 = objc_msgSend_objectForKeyedSubscript_(v12, v5, *(a1 + 32));
  v9 = objc_msgSend_deepCopy(v6, v7, v8);
  v10 = *(*(a1 + 40) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;
}

void sub_2766BC344(uint64_t a1, const char *a2)
{
  v4[8] = *MEMORY[0x277D85DE8];
  v4[0] = @"Chalk2";
  v4[1] = @"Dry Brush";
  v4[2] = @"Feathered Brush";
  v4[3] = @"Pen";
  v4[4] = @"Crayon";
  v4[5] = @"Pencil";
  v4[6] = @"Basic";
  v4[7] = @"Basic Rounded";
  v2 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], a2, v4, 8);
  v3 = qword_280A4C280;
  qword_280A4C280 = v2;
}

void sub_2766BC584(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2766BC59C(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CBEA78]);
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  objc_msgSend_setObject_forKeyedSubscript_(*(a1 + 32), v5, *(*(*(a1 + 40) + 8) + 40), @"TSDBrushStrokeLoaderStorageCache");
  v9 = objc_msgSend_p_allStorageCaches(*(a1 + 48), v6, v7);
  objc_msgSend_addObject_(v9, v8, *(*(*(a1 + 40) + 8) + 40));
}

void sub_2766BC674(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, a3);
  v4 = qword_280A4C290;
  qword_280A4C290 = v3;
}

void sub_2766BC6F8()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.iwork.TSDBrushStrokeLoadQueue", v2);
  v1 = qword_280A4C2A0;
  qword_280A4C2A0 = v0;
}

void sub_2766BC7A0(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, a3);
  v4 = qword_280A4C2B0;
  qword_280A4C2B0 = v3;
}

void sub_2766BC824()
{
  v0 = objc_alloc(MEMORY[0x277D81350]);
  v2 = objc_msgSend_initWithSignature_error_(v0, v1, @"Brushes", 0);
  v3 = qword_280A4C2C0;
  qword_280A4C2C0 = v2;
}

id sub_2766BCC78(xmlDoc *a1, void *a2)
{
  v3 = a2;
  v4 = xmlXPathNewContext(a1);
  if (!v4)
  {
    NSLog(&cfstr_UnableToCreate.isa);
LABEL_13:
    v14 = 0;
    goto LABEL_14;
  }

  v5 = v4;
  xmlXPathRegisterNs(v4, "svg", "http://www.w3.org/2000/svg");
  v6 = v3;
  v8 = objc_msgSend_cStringUsingEncoding_(v6, v7, 4);
  v9 = MEMORY[0x277C9CBE0](v8, v5);
  if (!v9)
  {
    NSLog(&cfstr_UnableToEvalua.isa);
    goto LABEL_13;
  }

  v12 = v9;
  v13 = *(v9 + 8);
  if (!v13)
  {
    NSLog(&cfstr_NodesWasNil.isa);
    goto LABEL_13;
  }

  v14 = objc_msgSend_array(MEMORY[0x277CBEB18], v10, v11);
  if (*v13 >= 1)
  {
    v15 = 0;
    do
    {
      v17 = sub_2766BE518(*(*(v13 + 1) + 8 * v15), 0);
      if (v17)
      {
        objc_msgSend_addObject_(v14, v16, v17);
      }

      ++v15;
    }

    while (v15 < *v13);
  }

  xmlXPathFreeObject(v12);
  xmlXPathFreeContext(v5);
LABEL_14:

  return v14;
}

id sub_2766BE518(void *a1, void *a2)
{
  v3 = a2;
  v7 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v4, v5);
  v8 = a1[2];
  if (v8)
  {
    v9 = objc_msgSend_stringWithCString_encoding_(MEMORY[0x277CCACA8], v6, v8, 4);
    objc_msgSend_setObject_forKey_(v7, v10, v9, @"nodeName");
  }

  v11 = a1[10];
  if ((v11 + 1) >= 2)
  {
    v35 = objc_msgSend_stringWithCString_encoding_(MEMORY[0x277CCACA8], v6, v11, 4);
    v37 = objc_msgSend_objectForKey_(v7, v36, @"nodeName");
    isEqual = objc_msgSend_isEqual_(v37, v38, @"text");

    if (v3 && isEqual)
    {
      v42 = objc_msgSend_whitespaceAndNewlineCharacterSet(MEMORY[0x277CCA900], v40, v41);
      v44 = objc_msgSend_stringByTrimmingCharactersInSet_(v35, v43, v42);

      v46 = objc_msgSend_objectForKey_(v3, v45, @"nodeContent");
      v48 = v46;
      if (v46)
      {
        v49 = objc_msgSend_stringByAppendingString_(v46, v47, v44);
      }

      else
      {
        v49 = v44;
      }

      v51 = v49;
      objc_msgSend_setObject_forKey_(v3, v50, v49, @"nodeContent");

      v33 = 0;
      goto LABEL_22;
    }

    objc_msgSend_setObject_forKey_(v7, v40, v35, @"nodeContent");
  }

  v12 = a1[11];
  if (v12)
  {
    v52 = v3;
    v15 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v6, v11);
    do
    {
      v16 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v13, v14);
      v19 = objc_msgSend_stringWithCString_encoding_(MEMORY[0x277CCACA8], v17, v12[2], 4);
      v20 = v12[3];
      if (v20)
      {
        v21 = sub_2766BE518(v20, v16);
      }

      if (v19)
      {
        v22 = objc_msgSend_objectForKey_(v16, v18, @"nodeContent");

        if (v22)
        {
          v24 = objc_msgSend_objectForKey_(v16, v23, @"nodeContent");
          objc_msgSend_setObject_forKey_(v15, v25, v24, v19);
        }
      }

      v12 = v12[6];
    }

    while (v12);
    objc_msgSend_setObject_forKey_(v7, v13, v15, @"nodeAttributes");

    v3 = v52;
  }

  v26 = a1[3];
  if (v26)
  {
    v27 = objc_msgSend_array(MEMORY[0x277CBEB18], v6, v11);
    do
    {
      v29 = sub_2766BE518(v26, v7);
      if (v29)
      {
        objc_msgSend_addObject_(v27, v28, v29);
      }

      v26 = *(v26 + 48);
    }

    while (v26);
    if (objc_msgSend_count(v27, v30, v31))
    {
      objc_msgSend_setObject_forKey_(v7, v32, v27, @"nodeChildArray");
    }
  }

  v33 = v7;
LABEL_22:

  return v33;
}

void sub_2766BF784(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  v6 = v4;

  TSD::SmartStrokeArchive::~SmartStrokeArchive(va);
  _Unwind_Resume(a1);
}

void sub_2766BFA7C(uint64_t a1, char *__s)
{
  *(a1 + 16) |= 1u;
  v3 = strlen(__s);
  if (v3 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_276658138();
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

void sub_2766BFB74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2766BFD14()
{
  if (qword_280A4C2D0 != -1)
  {
    sub_2768089F0();
  }

  return qword_280A4C2D8;
}

void sub_2766BFD4C()
{
  v0 = dispatch_queue_create("TSDGLRenderQueue", 0);
  qword_280A4C2D8 = v0;
  if (v0)
  {
    v1 = qword_280A4B2E8;
    v2 = qword_280A4B2E8;

    dispatch_queue_set_specific(v0, v1, v2, 0);
  }
}

uint64_t sub_2766BFDA4()
{
  if (!dispatch_get_specific(qword_280A4B2E8))
  {
    v1 = MEMORY[0x277D81150];
    v2 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v0, "BOOL TSDGLGetIsOpenGLSafe()");
    v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDGLUtility.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v1, v5, v2, v4, 55, 0, "TSDGLGetIsOpenGLSafe() not called on render queue!");
    objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v6, v7);
  }

  return 0;
}

void sub_2766C3850(unsigned int *a1, int a2)
{
  v2 = a1[1];
  if (v2 >= a2)
  {
    return;
  }

  if (v2 < 1)
  {
    v4 = *(a1 + 1);
    v5 = 0;
    if (!v2)
    {
      if (a2 < 4)
      {
        goto LABEL_6;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v4 = *(a1 + 1);
    v5 = (v4 - 8);
  }

  v4 = *(v4 - 8);
  if (a2 < 4)
  {
LABEL_6:
    v6 = 4;
    goto LABEL_13;
  }

  if (v2 > 0x3FFFFFFF)
  {
    v6 = 0x7FFFFFFF;
    goto LABEL_13;
  }

LABEL_10:
  v7 = 2 * v2;
  if (v7 <= a2)
  {
    v6 = a2;
  }

  else
  {
    v6 = v7;
  }

LABEL_13:
  v8 = 4 * v6;
  if (v4)
  {
    sub_2766C3954(v4, v8 + 8);
  }

  else
  {
    v9 = operator new(v8 + 8);
  }

  *v9 = v4;
  v10 = v9 + 1;
  a1[1] = v6;
  *(a1 + 1) = v10;
  v11 = *a1;
  if (v11 >= 1)
  {
    memcpy(v10, v5 + 1, 4 * v11);
  }

  if (v5 && !*v5)
  {

    operator delete(v5);
  }
}

void sub_2766C3954(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    sub_276808A04(a1, (a2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  JUMPOUT(0x277C9BB90);
}

uint64_t TSDMixingTypeBestFromMixingTypes(uint64_t result, uint64_t a2)
{
  if (result >= a2)
  {
    return a2;
  }

  return result;
}

uint64_t TSDMixingTypeWithObjects(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v8 = a3;
  v9 = 5;
  if (v5 == v6 || !(v5 | v6))
  {
    goto LABEL_40;
  }

  if (objc_msgSend_isEqual_(v5, v7, v6))
  {
    v9 = 5;
    goto LABEL_40;
  }

  if (!v5 || (objc_msgSend_null(MEMORY[0x277CBEB68], v10, v11), v12 = objc_claimAutoreleasedReturnValue(), v12, v12 == v5))
  {
    if (objc_msgSend_conformsToProtocol_(v6, v10, &unk_28859E080) && (objc_opt_class(), (objc_opt_respondsToSelector() & 1) != 0))
    {
      v18 = objc_opt_class();
      canMixWithNilObjects = objc_msgSend_canMixWithNilObjects(v18, v19, v20);
    }

    else
    {
      canMixWithNilObjects = 0;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 || canMixWithNilObjects)
    {
      goto LABEL_21;
    }

    goto LABEL_39;
  }

  if (v6)
  {
    v14 = objc_msgSend_null(MEMORY[0x277CBEB68], v10, v13);

    if (v14 != v6)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
      {
LABEL_11:
        if (!objc_msgSend_conformsToProtocol_(v5, v15, &unk_28859E080) || !objc_msgSend_conformsToProtocol_(v6, v16, &unk_28859E080))
        {
          v9 = 2;
          goto LABEL_40;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          goto LABEL_27;
        }

LABEL_21:
        v22 = objc_msgSend_mixingTypeWithObject_context_(v6, v17, v5, v8);
        goto LABEL_22;
      }

      objc_opt_class();
      v34 = objc_opt_respondsToSelector();
      if (v34)
      {
        v35 = objc_opt_class();
        v14 = objc_msgSend_mixableObjectClasses(v35, v36, v37);
        v38 = objc_opt_class();
        if (objc_msgSend_containsObject_(v14, v39, v38))
        {

          goto LABEL_11;
        }
      }

      objc_opt_class();
      if (objc_opt_respondsToSelector())
      {
        v40 = objc_opt_class();
        v43 = objc_msgSend_mixableObjectClasses(v40, v41, v42);
        v44 = objc_opt_class();
        v46 = objc_msgSend_containsObject_(v43, v45, v44);

        if (v34)
        {

          if (v46)
          {
            goto LABEL_11;
          }
        }

        else if (v46)
        {
          goto LABEL_11;
        }
      }

      else if (v34)
      {
      }

LABEL_39:
      v9 = 1;
      goto LABEL_40;
    }
  }

  if (!objc_msgSend_conformsToProtocol_(v5, v10, &unk_28859E080))
  {
    goto LABEL_39;
  }

  objc_opt_class();
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    goto LABEL_39;
  }

  v31 = objc_opt_class();
  if (!objc_msgSend_canMixWithNilObjects(v31, v32, v33))
  {
    goto LABEL_39;
  }

LABEL_27:
  v22 = objc_msgSend_mixingTypeWithObject_context_(v5, v17, v6, v8);
LABEL_22:
  v9 = v22;
  if (!v22)
  {
    v24 = MEMORY[0x277D81150];
    v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "TSDMixingType TSDMixingTypeWithObjects(NSObject<TSDMixing> *__strong, NSObject<TSDMixing> *__strong, __strong id<TSDMixingTypeContext>)");
    v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/animation/TSDMagicMove.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v24, v28, v25, v27, 133, 0, "TSDMixingType is Undefined!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v29, v30);
    v9 = 0;
  }

LABEL_40:

  return v9;
}

id TSDMixingMixedObjectWithFraction(void *a1, void *a2, double a3)
{
  v5 = a1;
  v6 = a2;
  if (TSDMixingTypeWithObjects(v5, v6, 0) == 1)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "id TSDMixingMixedObjectWithFraction(NSObject<TSDMixing> *__strong, NSObject<TSDMixing> *__strong, CGFloat)");
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/animation/TSDMagicMove.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v12, v9, v11, 142, 0, "Cannot mix with object!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14);
  }

  if (v5 == v6 || objc_msgSend_isEqual_(v5, v7, v6))
  {
    v15 = v5;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_msgSend_mixedObjectWithFraction_ofObject_(v5, v16, v6, a3);
    }

    else
    {
      objc_msgSend_mixedObjectWithFraction_ofObject_(v6, v16, v5, 1.0 - a3);
    }
    v15 = ;
  }

  v17 = v15;

  return v17;
}

uint64_t sub_2766C4C28(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  objc_opt_class();
  v5 = TSUCheckedDynamicCast();

  if (objc_msgSend_isEqualToNumber_(a1, v6, v5))
  {
    v7 = 5;
  }

  else
  {
    v7 = 3;
  }

  return v7;
}

id sub_2766C4CA0(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  objc_opt_class();
  v5 = TSUCheckedDynamicCast();

  v6 = MEMORY[0x277CCABB0];
  objc_msgSend_doubleValue(a1, v7, v8);
  objc_msgSend_doubleValue(v5, v9, v10);
  TSUMixFloats();
  v13 = objc_msgSend_numberWithDouble_(v6, v11, v12);

  return v13;
}

uint64_t sub_2766C4D50(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = MEMORY[0x277CBEB68];
  v4 = a3;
  v7 = objc_msgSend_null(v3, v5, v6);

  if (v7 != v4)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[NSNull(TSDMixingAdditions) mixingTypeWithObject:context:]");
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/animation/TSDMagicMove.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v13, v10, v12, 182, 0, "other object isn't NSNull!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15);
  }

  return 5;
}

id sub_2766C4E0C(void *a1, double a2, uint64_t a3, void *a4)
{
  v6 = a4;
  if (objc_msgSend_null(MEMORY[0x277CBEB68], v7, v8) == v6)
  {
    v10 = a1;
  }

  else
  {
    v10 = objc_msgSend_mixedObjectWithFraction_ofObject_(v6, v9, a1, 1.0 - a2);
  }

  v11 = v10;

  return v11;
}

uint64_t sub_2766C4E90(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  objc_opt_class();
  v5 = TSUCheckedDynamicCast();

  if (objc_msgSend_isEqualToValue_(a1, v6, v5))
  {
    v7 = 5;
  }

  else
  {
    v8 = a1;
    v11 = objc_msgSend_objCType(v8, v9, v10);
    v12 = a1;
    v15 = objc_msgSend_objCType(v12, v13, v14);
    if (!strcmp(v11, v15))
    {
      v7 = 3;
    }

    else
    {
      v7 = 1;
    }
  }

  return v7;
}

id sub_2766C4F38(void *a1, double a2, uint64_t a3, void *a4)
{
  v6 = a4;
  objc_opt_class();
  v7 = TSUDynamicCast();

  v8 = a1;
  v11 = objc_msgSend_objCType(v8, v9, v10);
  if (!strcmp(v11, "{CGPoint=dd}"))
  {
    objc_msgSend_CGPointValue(a1, v12, v13);
    objc_msgSend_CGPointValue(v7, v53, v54);
    v55 = MEMORY[0x277CCAE60];
    TSUMixPoints();
    v58 = objc_msgSend_valueWithCGPoint_(v55, v56, v57);
  }

  else
  {
    v14 = a1;
    v17 = objc_msgSend_objCType(v14, v15, v16);
    if (!strcmp(v17, "{CGSize=dd}"))
    {
      objc_msgSend_CGSizeValue(a1, v18, v19);
      objc_msgSend_CGSizeValue(v7, v59, v60);
      v61 = MEMORY[0x277CCAE60];
      TSUMixSizes();
      v58 = objc_msgSend_valueWithCGSize_(v61, v62, v63);
    }

    else
    {
      v20 = a1;
      v23 = objc_msgSend_objCType(v20, v21, v22);
      if (!strcmp(v23, "{CGRect={CGPoint=dd}{CGSize=dd}}"))
      {
        objc_msgSend_CGRectValue(a1, v24, v25);
        objc_msgSend_CGRectValue(v7, v64, v65);
        v66 = MEMORY[0x277CCAE60];
        TSUMixRects();
        v58 = objc_msgSend_valueWithCGRect_(v66, v67, v68, *&a2);
      }

      else
      {
        v26 = a1;
        v29 = objc_msgSend_objCType(v26, v27, v28);
        if (!strcmp(v29, "{CGAffineTransform=dddddd}"))
        {
          v106 = 0u;
          v107 = 0u;
          v105 = 0u;
          objc_msgSend_CGAffineTransformValue(a1, v30, v31);
          v98 = 0u;
          v99 = 0u;
          v97 = 0u;
          if (v7)
          {
            objc_msgSend_CGAffineTransformValue(v7, v69, v70);
          }

          v71 = MEMORY[0x277CCAE60];
          v81 = v105;
          v82 = v106;
          v83 = v107;
          v113 = v97;
          v114 = v98;
          v115 = v99;
          TSUTransformMixAffineTransforms();
          v58 = objc_msgSend_valueWithCGAffineTransform_(v71, v72, &v89);
        }

        else
        {
          v32 = a1;
          v35 = objc_msgSend_objCType(v32, v33, v34);
          if (strcmp(v35, "{CATransform3D=dddddddddddddddd}"))
          {
            v38 = MEMORY[0x277D81150];
            v39 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v36, "[NSValue(TSDMixingAdditions) mixedObjectWithFraction:ofObject:]");
            v41 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v40, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/animation/TSDMagicMove.m");
            v42 = MEMORY[0x277CCACA8];
            v43 = a1;
            v46 = objc_msgSend_objCType(v43, v44, v45);
            v48 = objc_msgSend_stringWithUTF8String_(v42, v47, v46);
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v38, v49, v39, v41, 246, 0, "Unknown objcType in NSValue: %@", v48);

            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v50, v51);
            v52 = 0;
            goto LABEL_17;
          }

          v111 = 0u;
          v112 = 0u;
          v109 = 0u;
          v110 = 0u;
          v107 = 0u;
          v108 = 0u;
          v105 = 0u;
          v106 = 0u;
          objc_msgSend_CATransform3DValue(a1, v36, v37);
          v103 = 0u;
          v104 = 0u;
          v101 = 0u;
          v102 = 0u;
          v99 = 0u;
          v100 = 0u;
          v97 = 0u;
          v98 = 0u;
          if (v7)
          {
            objc_msgSend_CATransform3DValue(v7, v73, v74);
          }

          v75 = *(MEMORY[0x277CD9DE8] + 80);
          v93 = *(MEMORY[0x277CD9DE8] + 64);
          v94 = v75;
          v76 = *(MEMORY[0x277CD9DE8] + 112);
          v95 = *(MEMORY[0x277CD9DE8] + 96);
          v96 = v76;
          v77 = *(MEMORY[0x277CD9DE8] + 16);
          v89 = *MEMORY[0x277CD9DE8];
          v90 = v77;
          v78 = *(MEMORY[0x277CD9DE8] + 48);
          v91 = *(MEMORY[0x277CD9DE8] + 32);
          v92 = v78;
          MEMORY[0x277C99BC0](&v89, &v105, &v97, a2);
          v85 = v93;
          v86 = v94;
          v87 = v95;
          v88 = v96;
          v81 = v89;
          v82 = v90;
          v83 = v91;
          v84 = v92;
          v58 = objc_msgSend_valueWithCATransform3D_(MEMORY[0x277CCAE60], v79, &v81);
        }
      }
    }
  }

  v52 = v58;
LABEL_17:

  return v52;
}

uint64_t sub_2766C531C(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  objc_opt_class();
  v5 = TSUCheckedDynamicCast();

  if (objc_msgSend_isEqual_(a1, v6, v5))
  {
    v7 = 5;
  }

  else
  {
    v7 = 4;
  }

  return v7;
}

id sub_2766C5390(void *a1, double a2, uint64_t a3, void *a4)
{
  v6 = a4;
  objc_opt_class();
  v7 = TSUCheckedDynamicCast();

  v9 = objc_msgSend_blendedColorWithFraction_ofColor_(a1, v8, v7, a2);

  return v9;
}

uint64_t sub_2766C81B4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v8 = a3;
  if (*(a1 + 32) >= 0.5)
  {
    v18 = objc_msgSend_incomingZIndex(v5, v6, v7);
    if (v18 != objc_msgSend_incomingZIndex(v8, v19, v20))
    {
      goto LABEL_3;
    }
  }

  else
  {
    v9 = objc_msgSend_outgoingZIndex(v5, v6, v7);
    if (v9 == objc_msgSend_outgoingZIndex(v8, v10, v11))
    {
LABEL_3:
      v14 = objc_msgSend_incomingZIndex(v5, v12, v13);
      v17 = objc_msgSend_incomingZIndex(v8, v15, v16);
      goto LABEL_6;
    }
  }

  v14 = objc_msgSend_outgoingZIndex(v5, v12, v13);
  v17 = objc_msgSend_outgoingZIndex(v8, v21, v22);
LABEL_6:
  if (v14 < v17)
  {
    v23 = -1;
  }

  else
  {
    v23 = v14 > v17;
  }

  return v23;
}

uint64_t sub_2766C84BC(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  objc_msgSend_interpolatedZIndexAtPercent_(a2, v7, v8, v5);
  v10 = v9;
  objc_msgSend_interpolatedZIndexAtPercent_(v6, v11, v12, *(a1 + 32));
  v14 = v13;

  if (v10 < v14)
  {
    return -1;
  }

  else
  {
    return v10 > v14;
  }
}

void sub_2766C9E08(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = objc_msgSend_set(MEMORY[0x277CBEB58], a2, a3);
  v8 = objc_msgSend_objectAtIndexedSubscript_(*(*(a1 + 32) + 8), v6, a2);
  for (i = (a2 + 1); i < *(a1 + 48); ++i)
  {
    v10 = objc_msgSend_objectAtIndexedSubscript_(*(*(a1 + 32) + 8), v7, i);
    if (objc_msgSend_intersectsZOrdererMatch_(v8, v11, v10))
    {
      objc_msgSend_intersectionPercentWithZOrdererMatch_(v8, v12, v10);
      v16 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v14, v15, floor(v13 * 1000.0) / 1000.0);
      objc_msgSend_addObject_(v5, v17, v16);
    }
  }

  v18 = *(*(a1 + 32) + 48);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = sub_2766C9F94;
  v20[3] = &unk_27A6CCBD8;
  v21 = *(a1 + 40);
  v22 = v5;
  v19 = v5;
  dispatch_sync(v18, v20);
}

uint64_t sub_2766CA85C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(*(a1 + 32) + 16);
  v6 = a3;
  v8 = objc_msgSend_indexOfObject_(v5, v7, a2);
  v10 = objc_msgSend_indexOfObject_(*(*(a1 + 32) + 16), v9, v6);

  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSDMagicMoveTextureZOrderer p_addFlattenableAnimationMatches:toArray:]_block_invoke");
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/animation/TSDMagicMove.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v16, v13, v15, 1523, 0, "expected inequality between %{public}s and %{public}s", "obj1Index", "NSNotFound");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18);
  }

  if (v10 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v19 = MEMORY[0x277D81150];
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSDMagicMoveTextureZOrderer p_addFlattenableAnimationMatches:toArray:]_block_invoke");
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/animation/TSDMagicMove.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v23, v20, v22, 1524, 0, "expected inequality between %{public}s and %{public}s", "obj2Index", "NSNotFound");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25);
  }

  if (v8 < v10)
  {
    return -1;
  }

  else
  {
    return v8 > v10;
  }
}

uint64_t sub_2766CA9F0(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v6 = objc_msgSend_firstObject(*(a1 + 32), v4, v5);
  v8 = objc_msgSend_indexOfObject_(v3, v7, v6);

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v9 = *(a1 + 32);
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v21, v25, 16);
  if (v11)
  {
    v13 = v11;
    v14 = *v22;
    while (2)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v22 != v14)
        {
          objc_enumerationMutation(v9);
        }

        v16 = *(*(&v21 + 1) + 8 * i);
        v17 = objc_msgSend_indexOfObject_(*(a1 + 32), v12, v16, v21);
        if (v17 != objc_msgSend_indexOfObject_(v3, v18, v16) - v8)
        {
          v19 = 0;
          goto LABEL_11;
        }
      }

      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v12, &v21, v25, 16);
      if (v13)
      {
        continue;
      }

      break;
    }
  }

  v19 = 1;
LABEL_11:

  return v19;
}

void sub_2766CAEAC(uint64_t a1, const char *a2)
{
  v4 = objc_msgSend_objectAtIndexedSubscript_(*(*(a1 + 32) + 16), a2, a2);
  v7 = objc_msgSend_p_zOrderMatchForTextureRectangle_withTextureSets_(*(a1 + 32), v5, v4, *(a1 + 40));
  if (!v7)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSDMagicMoveTextureZOrderer p_outgoingTextureMatchesInZOrderWithTextureSets:]_block_invoke");
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/animation/TSDMagicMove.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v12, v9, v11, 1584, 0, "invalid nil value for '%{public}s'", "match");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14);
  }

  v15 = *(*(a1 + 32) + 48);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2766CB020;
  block[3] = &unk_27A6CCE08;
  v16 = *(a1 + 48);
  v20 = v7;
  v21 = a2;
  v19 = v16;
  v17 = v7;
  dispatch_sync(v15, block);
}

uint64_t sub_2766CC9E0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  matched = objc_msgSend_matchCost(v5, v7, v8);
  if (matched >= objc_msgSend_matchCost(v6, v10, v11))
  {
    v15 = objc_msgSend_matchCost(v5, v12, v13);
    if (v15 <= objc_msgSend_matchCost(v6, v16, v17))
    {
      v19 = objc_msgSend_indexOfObject_(*(a1 + 32), v18, v5);
      v21 = objc_msgSend_indexOfObject_(*(a1 + 32), v20, v6);
      if (v19 >= v21)
      {
        v14 = v19 > v21;
      }

      else
      {
        v14 = -1;
      }
    }

    else
    {
      v14 = 1;
    }
  }

  else
  {
    v14 = -1;
  }

  return v14;
}

uint64_t sub_2766CD2D8(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  objc_msgSend_time(a2, v5, v6);
  v8 = v7;
  objc_msgSend_time(v4, v9, v10);
  v12 = v11;

  if (v8 < v12)
  {
    return -1;
  }

  else
  {
    return v8 > v12;
  }
}

uint64_t sub_2766CDCB8(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  objc_msgSend_time(a2, v5, v6);
  v8 = v7;
  objc_msgSend_time(v4, v9, v10);
  v12 = v11;

  if (v8 < v12)
  {
    return -1;
  }

  else
  {
    return v8 > v12;
  }
}

id TSDInfoUUIDPathFromInfo(void *a1)
{
  v1 = a1;
  v4 = objc_msgSend_array(MEMORY[0x277CBEB18], v2, v3);
  if ((objc_opt_respondsToSelector() & 1) == 0 || (objc_msgSend_uuidPathPrefixComponentsProvider(v1, v5, v6), v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend_uuidPathPrefixComponentsForInfo_(v7, v8, v1), v9 = objc_claimAutoreleasedReturnValue(), v7, !v9))
  {
    v10 = objc_msgSend_parentInfo(v1, v5, v6);
    if (v10)
    {
      objc_opt_class();
      v11 = TSUDynamicCast();
      v14 = v11;
      if (v11)
      {
        v15 = objc_msgSend_objectUUIDPath(v11, v12, v13);
        v18 = objc_msgSend_uuids(v15, v16, v17);
        v9 = v18;
        if (!v18 || !objc_msgSend_count(v18, v19, v20))
        {
          v21 = MEMORY[0x277D81150];
          v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "TSUUUIDPath * _Nonnull TSDInfoUUIDPathFromInfo(TSPObject<TSDInfo> * _Nonnull __strong)");
          v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDInfo_Collaboration.m");
          v25 = objc_opt_class();
          v26 = NSStringFromClass(v25);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v21, v27, v22, v24, 45, 0, "Parent info of class %@ should have a well formed UUID path.", v26);

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v28, v29);
        }
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  if (objc_msgSend_count(v9, v5, v6))
  {
    objc_msgSend_addObjectsFromArray_(v4, v30, v9);
  }

  v33 = objc_msgSend_objectUUID(v1, v30, v31);
  if (v33)
  {
    objc_msgSend_addObject_(v4, v32, v33);
  }

  else
  {
    v34 = MEMORY[0x277D81150];
    v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v32, "TSUUUIDPath * _Nonnull TSDInfoUUIDPathFromInfo(TSPObject<TSDInfo> * _Nonnull __strong)");
    v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v36, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDInfo_Collaboration.m");
    v38 = objc_opt_class();
    v39 = NSStringFromClass(v38);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v34, v40, v35, v37, 56, 0, "Info of class %@ should have a UUID.", v39);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v41, v42);
  }

  v43 = objc_alloc(MEMORY[0x277D81360]);
  v45 = objc_msgSend_initWithArray_(v43, v44, v4);

  return v45;
}

void *sub_2766CDFC0(void *a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_init(a1, a2, a3);
  if (v4)
  {
    v5 = *(a3 + 24);
    if (v5 >= 1)
    {
      v6 = 8;
      do
      {
        MEMORY[0x277C9B4D0](v44, *(*(a3 + 32) + v6));
        if (v47 <= 2)
        {
          if (v47 == 1)
          {
            if (v45 <= 0)
            {
              v35 = MEMORY[0x277D81150];
              v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSUBezierPath(PersistenceAdditions) initWithArchive:]");
              v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v36, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSUBezierPath-TSDPersistenceAdditions.mm");
              objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v35, v37, v12, v14, 32, 0, "No points in bezier path moveTo element.");
              goto LABEL_21;
            }

            TSPCGPointFromMessage(v46[1]);
            objc_msgSend_moveToPoint_(v4, v19, v20);
          }

          else if (v47 == 2)
          {
            if (v45 <= 0)
            {
              v38 = MEMORY[0x277D81150];
              v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSUBezierPath(PersistenceAdditions) initWithArchive:]");
              v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v39, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSUBezierPath-TSDPersistenceAdditions.mm");
              objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v38, v40, v12, v14, 42, 0, "No points in bezier path lineTo element.");
              goto LABEL_21;
            }

            TSPCGPointFromMessage(v46[1]);
            objc_msgSend_lineToPoint_(v4, v9, v10);
          }
        }

        else
        {
          if (v47 == 3)
          {
            v11 = MEMORY[0x277D81150];
            v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSUBezierPath(PersistenceAdditions) initWithArchive:]");
            v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSUBezierPath-TSDPersistenceAdditions.mm");
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v15, v12, v14, 51, 0, "quadratic segments not supported yet");
LABEL_21:

            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v41, v42);
            goto LABEL_22;
          }

          if (v47 != 4)
          {
            if (v47 == 5)
            {
              objc_msgSend_closePath(v4, v7, v8);
            }

            goto LABEL_22;
          }

          if (v45 <= 2)
          {
            v16 = MEMORY[0x277D81150];
            v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSUBezierPath(PersistenceAdditions) initWithArchive:]");
            v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSUBezierPath-TSDPersistenceAdditions.mm");
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v18, v12, v14, 57, 0, "Not enough points in bezier path curveTo element.");
            goto LABEL_21;
          }

          v22 = v46[1];
          v21 = v46[2];
          TSPCGPointFromMessage(v46[3]);
          v24 = v23;
          v26 = v25;
          TSPCGPointFromMessage(v22);
          v28 = v27;
          v30 = v29;
          TSPCGPointFromMessage(v21);
          objc_msgSend_curveToPoint_controlPoint1_controlPoint2_(v4, v31, v32, v24, v26, v28, v30, v33, v34);
        }

LABEL_22:
        MEMORY[0x277C9B4E0](v44);
        v6 += 8;
        --v5;
      }

      while (v5);
    }
  }

  return v4;
}

void sub_2766CE2A8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  MEMORY[0x277C9B4E0](va);
  _Unwind_Resume(a1);
}

uint64_t sub_2766CE2FC(void *a1, const char *a2, uint64_t a3)
{
  v27[5] = *MEMORY[0x277D85DE8];
  result = objc_msgSend_elementCount(a1, a2, a3);
  if (result)
  {
    v7 = result;
    v8 = 0;
    for (i = 0; i != v7; ++i)
    {
      result = objc_msgSend_elementAtIndex_associatedPoints_(a1, v6, i, v26);
      v10 = result;
      v11 = *(a3 + 32);
      if (!v11)
      {
        goto LABEL_8;
      }

      v12 = *(a3 + 24);
      v13 = *v11;
      if (v12 < *v11)
      {
        *(a3 + 24) = v12 + 1;
        v14 = *&v11[2 * v12 + 2];
        goto LABEL_10;
      }

      if (v13 == *(a3 + 28))
      {
LABEL_8:
        google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a3 + 16));
        v11 = *(a3 + 32);
        v13 = *v11;
      }

      *v11 = v13 + 1;
      result = MEMORY[0x277C9BA80](*(a3 + 16));
      v14 = result;
      v15 = *(a3 + 24);
      v16 = *(a3 + 32) + 8 * v15;
      *(a3 + 24) = v15 + 1;
      *(v16 + 8) = result;
LABEL_10:
      if (v10 <= 1)
      {
        if (!v10)
        {
          v17 = 1;
          goto LABEL_20;
        }

        if (v10 == 1)
        {
          v17 = 2;
LABEL_20:
          v8 = 1;
LABEL_22:
          *(v14 + 16) |= 1u;
          *(v14 + 48) = v17;
LABEL_23:
          v18 = v27;
          v19 = v8;
LABEL_24:
          v20 = *(v14 + 40);
          if (!v20)
          {
            goto LABEL_29;
          }

          v21 = *(v14 + 32);
          v22 = *v20;
          if (v21 < *v20)
          {
            *(v14 + 32) = v21 + 1;
            v23 = *&v20[2 * v21 + 2];
            goto LABEL_31;
          }

          if (v22 == *(v14 + 36))
          {
LABEL_29:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v14 + 24));
            v20 = *(v14 + 40);
            v22 = *v20;
          }

          *v20 = v22 + 1;
          v23 = MEMORY[0x277C9BB00](*(v14 + 24));
          v24 = *(v14 + 32);
          v25 = *(v14 + 40) + 8 * v24;
          *(v14 + 32) = v24 + 1;
          *(v25 + 8) = v23;
LABEL_31:
          result = TSPCGPointCopyToMessage(*(v18 - 1), v23);
          v18 += 2;
          if (!--v19)
          {
            continue;
          }

          goto LABEL_24;
        }

LABEL_17:
        if (v8)
        {
          goto LABEL_23;
        }

        continue;
      }

      if (v10 == 2)
      {
        v17 = 4;
        v8 = 3;
        goto LABEL_22;
      }

      if (v10 != 3)
      {
        goto LABEL_17;
      }

      v8 = 0;
      *(v14 + 16) |= 1u;
      *(v14 + 48) = 5;
    }
  }

  return result;
}

uint64_t sub_2766CEE2C(void *a1, void *a2)
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

void sub_2766CF068(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_2766D14E8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  v5 = v4;

  TSD::FrameArchive::~FrameArchive(va);
  _Unwind_Resume(a1);
}

void sub_2766D1628(uint64_t a1, char *__s)
{
  *(a1 + 16) |= 1u;
  v3 = strlen(__s);
  if (v3 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_276658138();
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

void sub_2766D1720(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2766D1D7C(uint64_t a1, const char *a2)
{
  v4[13] = *MEMORY[0x277D85DE8];
  xmmword_280A4C2E0 = xmmword_276825DD0;
  v3[0] = &unk_28859C400;
  v3[1] = &unk_28859C418;
  v4[0] = @"GL_CLAMP_TO_EDGE";
  v4[1] = @"GL_LINEAR";
  v3[2] = &unk_28859C430;
  v3[3] = &unk_28859C448;
  v4[2] = @"GL_LINEAR_MIPMAP_LINEAR";
  v4[3] = @"GL_LINEAR_MIPMAP_NEAREST";
  v3[4] = &unk_28859C460;
  v3[5] = &unk_28859C478;
  v4[4] = @"GL_MIRRORED_REPEAT";
  v4[5] = @"GL_NEAREST";
  v3[6] = &unk_28859C490;
  v3[7] = &unk_28859C4A8;
  v4[6] = @"GL_NEAREST_MIPMAP_LINEAR";
  v4[7] = @"GL_NEAREST_MIPMAP_NEAREST";
  v3[8] = &unk_28859C4C0;
  v3[9] = &unk_28859C4D8;
  v4[8] = @"GL_REPEAT";
  v4[9] = @"GL_TEXTURE_MAG_FILTER";
  v3[10] = &unk_28859C4F0;
  v3[11] = &unk_28859C508;
  v4[10] = @"GL_TEXTURE_WRAP_S";
  v4[11] = @"GL_TEXTURE_WRAP_T";
  v3[12] = &unk_28859C520;
  v4[12] = @"GL_TEXTURE_MIN_FILTER";
  result = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], a2, v4, v3, 13);
  qword_280A4C2F0 = result;
  return result;
}

double sub_2766D482C(void *a1)
{
  v23 = *MEMORY[0x277D85DE8];
  TSUClamp();
  v4 = v3;
  if (v3 != 0.0 && v3 != 1.0)
  {
    if (qword_280A4C358 != -1)
    {
      sub_276808D90();
    }

    v6 = 0;
    while (qword_280A4C308[v6] != a1)
    {
      if (++v6 == 5)
      {
        objc_msgSend_getControlPointAtIndex_values_(a1, v2, 0, v22);
        objc_msgSend_getControlPointAtIndex_values_(a1, v7, 1, v21);
        objc_msgSend_getControlPointAtIndex_values_(a1, v8, 2, v20);
        objc_msgSend_getControlPointAtIndex_values_(a1, v9, 3, v19);
        v10 = objc_opt_new();
        objc_msgSend_moveToPoint_(v10, v11, v12, v22[0], v22[1]);
        objc_msgSend_curveToPoint_controlPoint1_controlPoint2_(v10, v13, v14, v19[0], v19[1], v21[0], v21[1], v20[0], v20[1]);
        goto LABEL_12;
      }
    }

    v10 = qword_280A4C330[v6];
LABEL_12:
    objc_msgSend_yValueFromXValue_(v10, v15, v16, v4);
    v4 = v17;
  }

  return v4;
}

void sub_2766D49A0(uint64_t a1, const char *a2)
{
  v35 = *MEMORY[0x277D85DE8];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v2 = *MEMORY[0x277CDA7B0];
  v33[0] = *MEMORY[0x277CDA7A8];
  v33[1] = v2;
  v3 = *MEMORY[0x277CDA7C0];
  v33[2] = *MEMORY[0x277CDA7B8];
  v33[3] = v3;
  v33[4] = *MEMORY[0x277CDA7C8];
  obj = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], a2, v33, 5);
  v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v4, &v25, v34, 16);
  if (v5)
  {
    v7 = v5;
    v8 = 0;
    v9 = *v26;
    do
    {
      v10 = 0;
      do
      {
        if (*v26 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = objc_msgSend_functionWithName_(MEMORY[0x277CD9EF8], v6, *(*(&v25 + 1) + 8 * v10));
        objc_msgSend_getControlPointAtIndex_values_(v11, v12, 0, v32);
        objc_msgSend_getControlPointAtIndex_values_(v11, v13, 1, v31);
        objc_msgSend_getControlPointAtIndex_values_(v11, v14, 2, v30);
        objc_msgSend_getControlPointAtIndex_values_(v11, v15, 3, v29);
        v16 = objc_opt_new();
        objc_msgSend_moveToPoint_(v16, v17, v18, v32[0], v32[1]);
        objc_msgSend_curveToPoint_controlPoint1_controlPoint2_(v16, v19, v20, v29[0], v29[1], v31[0], v31[1], v30[0], v30[1]);
        v21 = qword_280A4C308[v8];
        qword_280A4C308[v8] = v11;
        v22 = v11;

        v23 = qword_280A4C330[v8];
        qword_280A4C330[v8] = v16;

        ++v8;
        ++v10;
      }

      while (v7 != v10);
      v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v6, &v25, v34, 16);
    }

    while (v7);
  }
}

void sub_2766D5EA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
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

uint64_t sub_2766D5ED0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2766D5EE8(uint64_t a1, const char *a2, unint64_t a3)
{
  v5 = *(*(*(a1 + 48) + 8) + 40);
  v6 = *(*(*(a1 + 56) + 8) + 40);
  v7 = objc_msgSend_count(*(a1 + 32), a2, a3) - 1 == a3;
  v9 = 0.0;
  if (v7)
  {
    v9 = 1.0;
  }

  v24[0] = v5;
  v24[1] = v6;
  *&v24[2] = v9;
  v10 = objc_msgSend_valueWithContentBlend_(MEMORY[0x277CCAE60], v8, v24);
  objc_msgSend_setObject_atIndexedSubscript_(*(a1 + 40), v11, v10, a3);

  if (objc_msgSend_count(*(a1 + 32), v12, v13) - 2 > a3)
  {
    objc_opt_class();
    v15 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 32), v14, a3 + 1);
    v16 = TSUDynamicCast();
    v17 = *(*(a1 + 48) + 8);
    v18 = *(v17 + 40);
    *(v17 + 40) = v16;

    objc_opt_class();
    v20 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 32), v19, a3 + 2);
    v21 = TSUDynamicCast();
    v22 = *(*(a1 + 56) + 8);
    v23 = *(v22 + 40);
    *(v22 + 40) = v21;
  }
}

uint64_t sub_2766D7140(uint64_t a1, const char *a2)
{
  v2 = MEMORY[0x277D81150];
  v3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[CAAnimation(TSDCAAnimationContextCache) TSDCAAnimationContextCache]");
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/animation/CAAnimationAdditions.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v2, v6, v3, v5, 722, 0, "Implement me in subclass!");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v7, v8);
  return 0;
}

id sub_2766D71D4(uint64_t a1)
{
  v2 = [TSDCAPropertyAnimationContextCache alloc];
  v4 = objc_msgSend_initWithAnimation_(v2, v3, a1);

  return v4;
}

id sub_2766D7218(uint64_t a1)
{
  v2 = [TSDCABasicAnimationContextCache alloc];
  v4 = objc_msgSend_initWithAnimation_(v2, v3, a1);

  return v4;
}

id sub_2766D725C(uint64_t a1)
{
  v2 = [TSDCAKeyframeAnimationContextCache alloc];
  v4 = objc_msgSend_initWithAnimation_(v2, v3, a1);

  return v4;
}

id sub_2766D72A0(uint64_t a1)
{
  v2 = [TSDCAAnimationGroupContextCache alloc];
  v4 = objc_msgSend_initWithAnimation_(v2, v3, a1);

  return v4;
}

id sub_2766D72E4(void *a1, double a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v9 = objc_msgSend_TSDCAAnimationContextCache(a1, v7, v8);
  v11 = objc_msgSend_valueForKeyPath_atTime_animationCache_(v9, v10, v6, 0, a2);

  return v11;
}

void sub_2766D73A8(uint64_t a1, const char *a2)
{
  v4[23] = *MEMORY[0x277D85DE8];
  v4[0] = @"anchorPoint";
  v4[1] = @"anchorPointZ";
  v4[2] = @"borderColor";
  v4[3] = @"borderWidth";
  v4[4] = @"bounds";
  v4[5] = @"contents";
  v4[6] = @"doubleSided";
  v4[7] = @"hidden";
  v4[8] = @"opacity";
  v4[9] = @"position";
  v4[10] = @"transform";
  v4[11] = @"transform.rotation";
  v4[12] = @"transform.rotation.x";
  v4[13] = @"transform.rotation.y";
  v4[14] = @"transform.rotation.z";
  v4[15] = @"transform.scale.x";
  v4[16] = @"transform.scale.y";
  v4[17] = @"transform.scale.xy";
  v4[18] = @"transform.translation";
  v4[19] = @"transform.translation.x";
  v4[20] = @"transform.translation.y";
  v4[21] = @"transform.translation.z";
  v4[22] = @"zPosition";
  v2 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], a2, v4, 23);
  v3 = qword_280A4C360;
  qword_280A4C360 = v2;
}

uint64_t sub_2766D96A4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return MEMORY[0x2821F9670](a1, sel_getValue_, a2);
}

void sub_2766DA420(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  v4 = v3;

  TSD::SmartStrokeArchive::~SmartStrokeArchive(va);
  _Unwind_Resume(a1);
}

double sub_2766DDEFC(double *a1, double *a2, uint64_t a3)
{
  v4 = 1.0 - *a2;
  v5 = a1[1];
  result = *a1 * powf(v4, v5);
  *a3 = 0;
  *(a3 + 8) = result;
  return result;
}

void sub_2766DE260(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = objc_msgSend_blockToExcludeCaptionsAndDescendantsOfCaptions(v4, a2, a3);
  objc_msgSend_drawInContextWithoutEffects_withContent_strokeDrawOptions_withOpacity_forAlphaOnly_drawChildren_keepingChildrenPassingTest_(v4, v6, a2, 1, 7, 0, 0, v5, v7);
}

BOOL sub_2766DE374(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = objc_msgSend_info(a2, a2, a3);
  v7 = objc_msgSend_styledInfo(*(a1 + 32), v5, v6);
  v10 = v7;
  v11 = 1;
  if (v4 && v4 != v7)
  {
    while (1)
    {
      v12 = objc_msgSend_title(v10, v8, v9);
      v15 = v12;
      if (v12 == v4)
      {
        break;
      }

      v16 = objc_msgSend_caption(v10, v13, v14);

      v11 = v16 != v4;
      if (v16 == v4)
      {
        goto LABEL_9;
      }

      v19 = objc_msgSend_parentInfo(v4, v17, v18);

      if (v19)
      {
        v4 = v19;
        if (v19 != v10)
        {
          continue;
        }
      }

      goto LABEL_10;
    }

    v11 = 0;
  }

LABEL_9:
  v19 = v4;
LABEL_10:

  return v11;
}

void sub_2766DEB30(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v9 = objc_opt_self();
  v7 = objc_msgSend_blockToExcludeCaptionsAndDescendantsOfCaptions(v9, v5, v6);
  objc_msgSend_drawInContextWithoutEffects_withContent_strokeDrawOptions_withOpacity_forAlphaOnly_drawChildren_keepingChildrenPassingTest_(v3, v8, a2, 1, 7, 0, 0, v4, v7);
}

void sub_2766E02F8(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x270], 8);
  _Block_object_dispose(&STACK[0x2B8], 8);
  _Unwind_Resume(a1);
}

BOOL sub_2766E034C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v6 = objc_msgSend_info(v2, v4, v5);
  v9 = objc_msgSend_info(v3, v7, v8);

  v14 = objc_msgSend_title(v6, v10, v11);
  if (v14 == v9)
  {
    v16 = 0;
  }

  else
  {
    v15 = objc_msgSend_caption(v6, v12, v13);
    v16 = v15 != v9;
  }

  return v16;
}

void sub_2766E03E8(uint64_t a1, CGContextRef c)
{
  CGContextSaveGState(c);
  v5 = objc_msgSend_newShadowImageWithSize_unflipped_withChildren_(*(a1 + 32), v4, 1, *(a1 + 144), *(a1 + 64), *(a1 + 72));
  if (objc_msgSend_isCurvedShadow(*(a1 + 40), v6, v7))
  {
    memset(&v40, 0, sizeof(v40));
    v10 = objc_msgSend_layout(*(a1 + 32), v8, v9);
    v13 = v10;
    if (v10)
    {
      objc_msgSend_transformInRoot(v10, v11, v12);
    }

    else
    {
      memset(&t1, 0, sizeof(t1));
    }

    v14 = objc_msgSend_layout(*(a1 + 32), v11, v12);
    v17 = v14;
    if (v14)
    {
      objc_msgSend_transformInRoot(v14, v15, v16);
      v18 = v36;
    }

    else
    {
      v18 = 0.0;
    }

    v19 = -v18;
    v20 = objc_msgSend_layout(*(a1 + 32), v15, v16);
    v23 = v20;
    if (v20)
    {
      objc_msgSend_transformInRoot(v20, v21, v22);
      v24 = v35;
    }

    else
    {
      v24 = 0.0;
    }

    CGAffineTransformMakeTranslation(&t2, v19, -v24);
    CGAffineTransformConcat(&v39, &t1, &t2);
    CGAffineTransformInvert(&v40, &v39);

    v27 = objc_msgSend_layout(*(a1 + 32), v25, v26);
    v30 = v27;
    if (v27)
    {
      objc_msgSend_transformInRoot(v27, v28, v29);
    }

    else
    {
      memset(&v39, 0, sizeof(v39));
    }

    v31 = TSUIsTransformFlipped();

    if (v31)
    {
      v39 = v40;
      TSUTransformAngleInRadians();
      t1 = v40;
      CGAffineTransformRotate(&v39, &t1, v32 + v32);
      v40 = v39;
    }

    memset(&v39, 0, sizeof(v39));
    CGAffineTransformMakeTranslation(&v39, *(a1 + 96) * 0.5, *(a1 + 104) * 0.5);
    t1 = v39;
    CGContextConcatCTM(c, &t1);
    t1 = v40;
    CGContextConcatCTM(c, &t1);
    t2 = v39;
    CGAffineTransformInvert(&t1, &t2);
    CGContextConcatCTM(c, &t1);
    TSUCenterRectOverRect();
    TSUSubtractPoints();
    CGAffineTransformMakeTranslation(&t1, v33, v34);
    CGContextConcatCTM(c, &t1);
  }

  else if (objc_msgSend_isContactShadow(*(a1 + 40), v8, v9))
  {
    CGContextTranslateCTM(c, 0.0, *(a1 + 136));
    CGContextScaleCTM(c, 1.0, -1.0);
  }

  TSURectWithSize();
  CGContextDrawImage(c, v41, v5);
  CGImageRelease(v5);
  CGContextRestoreGState(c);
}

uint64_t sub_2766E06F0(uint64_t a1, CGContextRef c)
{
  CGContextSetAllowsFontSubpixelQuantization(c, 0);
  CGContextSetShouldSubpixelQuantizeFonts(c, 0);
  if (*(a1 + 144) == 1)
  {
    v6 = objc_msgSend_layout(*(a1 + 32), v4, v5);
    v9 = v6;
    if (v6)
    {
      objc_msgSend_transformInRoot(v6, v7, v8);
    }

    else
    {
      memset(&transform, 0, sizeof(transform));
    }

    TSUTransformAngleInDegrees();
    sub_2766479AC(c, v10);
  }

  CGContextTranslateCTM(c, -*(a1 + 56), -*(a1 + 64));
  CGContextScaleCTM(c, *(a1 + 88), *(a1 + 88));
  v11 = *(a1 + 112);
  *&transform.a = *(a1 + 96);
  *&transform.c = v11;
  *&transform.tx = *(a1 + 128);
  CGContextConcatCTM(c, &transform);
  if ((objc_msgSend_shouldSeparateShadow(*(a1 + 40), v12, v13) & 1) == 0)
  {
    objc_msgSend_drawShadowInContext_withChildren_withDrawableOpacity_(*(a1 + 32), v14, c, *(a1 + 145), 0);
  }

  if (objc_msgSend_shouldSeparateStroke(*(a1 + 40), v14, v15))
  {
    objc_msgSend_drawInContextWithoutEffects_withContent_strokeDrawOptions_withOpacity_forAlphaOnly_drawChildren_keepingChildrenPassingTest_(*(a1 + 32), v16, c, 1, 0, 0, 0, *(a1 + 145), *(a1 + 48));
  }

  else
  {
    objc_msgSend_drawInContextWithoutEffects_withContent_strokeDrawOptions_withOpacity_forAlphaOnly_drawChildren_keepingChildrenPassingTest_(*(a1 + 32), v16, c, 1, 7, 0, 0, *(a1 + 145), *(a1 + 48));
  }

  result = objc_msgSend_shouldSeparateReflection(*(a1 + 40), v17, v18);
  if ((result & 1) == 0)
  {
    return objc_msgSend_drawReflectionInContext_drawChildren_(*(a1 + 32), v20, c, *(a1 + 145));
  }

  return result;
}

BOOL sub_2766E0840(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  objc_msgSend_strokeBoundsWithOptions_fallbackBounds_(*(a1 + 32), a2, a2, *(a1 + 80), *(a1 + 88), *(a1 + 96), *(a1 + 104));
  x = v70.origin.x;
  y = v70.origin.y;
  width = v70.size.width;
  height = v70.size.height;
  IsEmpty = CGRectIsEmpty(v70);
  if (!IsEmpty)
  {
    if (a4)
    {
      v15 = *(a1 + 80);
      v16 = *(a1 + 88);
      v17 = *(a1 + 96);
      v18 = *(a1 + 104);
    }

    else
    {
      if (a2 & 1) != 0 && (*(a1 + 200))
      {
        objc_msgSend_naturalBounds(*(a1 + 32), v12, v13);
        x = v19;
        y = v20;
        width = v21;
        height = v22;
      }

      v23 = *(a1 + 128);
      *&v69.a = *(a1 + 112);
      *&v69.c = v23;
      *&v69.tx = *(a1 + 144);
      v24 = x;
      *&v23 = y;
      v25 = width;
      v26 = height;
      CGRectApplyAffineTransform(*(&v23 - 8), &v69);
      TSUMultiplyRectScalar();
      v72 = CGRectIntegral(v71);
      v73 = CGRectInset(v72, -1.0, -1.0);
      v15 = v73.origin.x;
      v16 = v73.origin.y;
      v17 = v73.size.width;
      v18 = v73.size.height;
    }

    v56[0] = MEMORY[0x277D85DD0];
    v56[1] = 3221225472;
    v27 = *(a1 + 160);
    v61 = v18;
    v62 = v27;
    v28 = *(a1 + 128);
    v63 = *(a1 + 112);
    v64 = v28;
    v56[2] = sub_2766E0B14;
    v56[3] = &unk_27A6CCF78;
    v67 = *(a1 + 200);
    v56[4] = *(a1 + 32);
    v58 = v15;
    v59 = v16;
    v60 = v17;
    v65 = *(a1 + 144);
    v66 = a2;
    v57 = *(a1 + 56);
    v68 = a4;
    v29 = MEMORY[0x277C9C8B0](v56);
    TSUSubtractPoints();
    v31 = v30;
    v33 = v32;
    v34 = [TSDTexturedRectangle alloc];
    v36 = objc_msgSend_initWithSize_offset_renderBlock_(v34, v35, v29, v17, v18, v31, v33);
    objc_msgSend_setTextureType_(v36, v37, a3);
    objc_msgSend_setTextureOpacity_(v36, v38, v39, 1.0);
    v41 = *(a1 + 40);
    if (a4)
    {
      objc_msgSend_addFinalTexture_forStage_(v41, v40, v36, 0);
    }

    else
    {
      objc_msgSend_addRenderable_(v41, v40, v36);
    }

    if (objc_msgSend_shouldAddMasks(*(a1 + 48), v42, v43) && (a2 & 9) == 1 && *(*(*(a1 + 64) + 8) + 24))
    {
      v46 = [TSDTexturedRectangle alloc];
      v48 = objc_msgSend_initWithCGImage_(v46, v47, *(*(*(a1 + 64) + 8) + 24));
      objc_msgSend_setTextureType_(v48, v49, 12);
      TSUMultiplyPointScalar();
      objc_msgSend_setOffset_(v48, v50, v51);
      objc_msgSend_addRenderable_(*(a1 + 40), v52, v48);
    }

    else if ((a2 & 8) != 0)
    {
      objc_msgSend_setTextureOpacity_(v36, v44, v45, 0.0);
      v53 = TSUDeviceRGBColorSpace();
      objc_msgSend_setColorSpace_(v36, v54, v53);
    }
  }

  return !IsEmpty;
}

uint64_t sub_2766E0B14(uint64_t a1, char *c, uint64_t a3)
{
  if (*(a1 + 144) == 1)
  {
    v5 = objc_msgSend_layout(*(a1 + 32), c, a3);
    v8 = v5;
    if (v5)
    {
      objc_msgSend_transformInRoot(v5, v6, v7);
    }

    else
    {
      memset(&transform, 0, sizeof(transform));
    }

    TSUTransformAngleInDegrees();
    sub_2766479AC(c, v9);
  }

  CGContextTranslateCTM(c, -*(a1 + 48), -*(a1 + 56));
  CGContextScaleCTM(c, *(a1 + 80), *(a1 + 80));
  v10 = *(a1 + 104);
  *&transform.a = *(a1 + 88);
  *&transform.c = v10;
  *&transform.tx = *(a1 + 120);
  CGContextConcatCTM(c, &transform);
  CGContextSetAllowsFontSubpixelQuantization(c, 0);
  CGContextSetShouldSubpixelQuantizeFonts(c, 0);
  result = objc_msgSend_drawInContextWithoutEffects_withContent_strokeDrawOptions_withOpacity_forAlphaOnly_drawChildren_keepingChildrenPassingTest_(*(a1 + 32), v11, c, 0, *(a1 + 136), 0, 0, 0, *(a1 + 40));
  if (*(a1 + 145) == 1)
  {
    return objc_msgSend_drawShadowInContext_withChildren_withDrawableOpacity_(*(a1 + 32), v13, c, 0, 0);
  }

  return result;
}

void sub_2766E0C38(uint64_t a1, CGContextRef c)
{
  CGContextTranslateCTM(c, -*(a1 + 40), -*(a1 + 48));
  CGContextScaleCTM(c, *(a1 + 72), *(a1 + 72));
  v6 = objc_msgSend_layout(*(a1 + 32), v4, v5);
  v9 = v6;
  if (v6)
  {
    objc_msgSend_transformInRoot(v6, v7, v8);
  }

  else
  {
    memset(&v10, 0, sizeof(v10));
  }

  CGContextConcatCTM(c, &v10);

  CGContextSetAllowsFontSubpixelQuantization(c, 0);
  CGContextSetShouldSubpixelQuantizeFonts(c, 0);
}

void sub_2766E0CE0(uint64_t a1, uint64_t a2)
{
  (*(*(a1 + 40) + 16))();
  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_2766E0DA8;
  v6[3] = &unk_27A6CCFF0;
  v6[4] = v4;
  v8 = *(a1 + 56);
  v7 = *(a1 + 48);
  objc_msgSend_drawReflectionInContext_withTransparencyLayer_applyingOpacity_shouldClipGradient_withBlock_(v4, v5, a2, 0, 0, 0, v6);
}

uint64_t sub_2766E0DEC(uint64_t a1, uint64_t a2)
{
  (*(*(a1 + 40) + 16))();
  v4 = *(a1 + 32);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v5 = *(a1 + 64);
  v9 = *(a1 + 48);
  v10 = v5;
  v8[2] = sub_2766E0E9C;
  v8[3] = &unk_27A6CD040;
  v8[4] = v4;
  v11 = *(a1 + 80);
  return objc_msgSend_drawReflectionInContext_withTransparencyLayer_applyingOpacity_shouldClipGradient_withBlock_(v4, v6, a2, 0, 0, 0, v8);
}

void sub_2766E0E9C(uint64_t a1, CGContextRef c)
{
  CGContextSaveGState(c);
  CGContextSetRGBFillColor(c, 1.0, 1.0, 1.0, 1.0);
  objc_msgSend_naturalBounds(*(a1 + 32), v4, v5);
  v6 = *(a1 + 56);
  *&v7.a = *(a1 + 40);
  *&v7.c = v6;
  *&v7.tx = *(a1 + 72);
  CGRectApplyAffineTransform(v8, &v7);
  TSURectWithOriginAndSize();
  CGContextFillRect(c, v9);
  CGContextRestoreGState(c);
}

uint64_t sub_2766E13BC(void *a1, double a2, double a3, uint64_t a4, CGContext *a5, void *a6)
{
  v10 = a6;
  v13 = v10;
  if (a5)
  {
    if (v10)
    {
      v14 = MEMORY[0x277D81150];
      v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSUImage(TSDAdditions) CGImageForSize:inContext:orContentsScaleProvider:]");
      v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSUImage-TSDAdditions.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v18, v15, v17, 25, 0, "using context to determine requested image size. contents scale provider should be nil");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20);
    }

    if ((TSDCGContextIsPrintContext(a5) & 1) != 0 || TSDCGContextIsPDFContext(a5))
    {
      goto LABEL_11;
    }

    TSDCGContextAssociatedScreenScale(a5);
    TSUMultiplySizeScalar();
    CGContextGetCTM(&v34, a5);
    TSUTransformScale();
    TSUMultiplySizeScalar();
    a2 = v23;
    a3 = v24;
  }

  else if (v10)
  {
    objc_msgSend_contentsScale(v10, v11, v12);
    a2 = a2 * v25;
    objc_msgSend_contentsScale(v13, v26, v27);
    a3 = a3 * v28;
  }

  objc_msgSend_size(a1, v11, v12);
  if (a2 <= v29)
  {
    objc_msgSend_size(a1, v21, v22);
    if (a3 <= v30)
    {
      v31 = objc_msgSend_CGImageForContentsScale_(a1, v21, v22, 1.0);
      goto LABEL_12;
    }
  }

LABEL_11:
  v31 = objc_msgSend_CGImageForContentsScale_(a1, v21, v22, 2.0);
LABEL_12:
  v32 = v31;

  return v32;
}

id sub_2766E1550(void *a1, CGFloat a2, uint64_t a3, void *a4, CGBlendMode a5)
{
  v8 = a4;
  objc_msgSend_scale(a1, v9, v10);
  v12 = v11;
  objc_msgSend_size(a1, v13, v14);
  TSUMultiplySizeScalar();
  v17 = TSDBitmapContextCreate(3, v15, v16);
  TSURectWithSize();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v28 = objc_msgSend_CGImageForContentsScale_(a1, v26, v27, v12);
  v37.origin.x = v19;
  v37.origin.y = v21;
  v37.size.width = v23;
  v37.size.height = v25;
  CGContextDrawImage(v17, v37, v28);
  v31 = objc_msgSend_CGColor(v8, v29, v30);

  CGContextSetFillColorWithColor(v17, v31);
  CGContextSetAlpha(v17, a2);
  CGContextSetBlendMode(v17, a5);
  v38.origin.x = v19;
  v38.origin.y = v21;
  v38.size.width = v23;
  v38.size.height = v25;
  CGContextFillRect(v17, v38);
  Image = CGBitmapContextCreateImage(v17);
  v34 = objc_msgSend_imageWithCGImage_scale_orientation_(MEMORY[0x277D811F8], v33, Image, 0, v12);
  CGImageRelease(Image);
  CGContextRelease(v17);

  return v34;
}

id sub_2766E16B0(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a4;
  v7 = a3;
  objc_msgSend_scale(a1, v8, v9);
  v11 = v10;
  objc_msgSend_size(a1, v12, v13);
  TSUMultiplySizeScalar();
  v16 = TSDBitmapContextCreate(3, v14, v15);
  TSURectWithSize();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v27 = objc_msgSend_CGImageForContentsScale_(a1, v25, v26, v11);
  v40.origin.x = v18;
  v40.origin.y = v20;
  v40.size.width = v22;
  v40.size.height = v24;
  CGContextDrawImage(v16, v40, v27);
  objc_msgSend_alphaComponent(v6, v28, v29);
  v31 = objc_msgSend_compositedImageWithColor_alpha_blendMode_(v7, v30, v6, 20);

  v34 = objc_msgSend_CGImageForContentsScale_(v31, v32, v33, v11);
  v41.origin.x = v18;
  v41.origin.y = v20;
  v41.size.width = v22;
  v41.size.height = v24;
  CGContextDrawImage(v16, v41, v34);
  Image = CGBitmapContextCreateImage(v16);
  v37 = objc_msgSend_imageWithCGImage_scale_orientation_(MEMORY[0x277D811F8], v36, Image, 0, v11);
  CGImageRelease(Image);
  CGContextRelease(v16);

  return v37;
}

uint64_t sub_2766E181C(double a1, double a2, uint64_t a3, const char *a4)
{
  if (a1 == 0.0 && a2 == -1.0)
  {
    return 0;
  }

  if (a1 == 1.0 && a2 == -1.0)
  {
    return 1;
  }

  if (a1 == 1.0 && a2 == 0.0)
  {
    return 2;
  }

  if (a1 == 1.0 && a2 == 1.0)
  {
    return 3;
  }

  if (a1 == 0.0 && a2 == 1.0)
  {
    return 4;
  }

  if (a1 == -1.0 && a2 == 1.0)
  {
    return 5;
  }

  if (a1 == -1.0 && a2 == 0.0)
  {
    return 6;
  }

  if (a1 == -1.0 && a2 == -1.0)
  {
    return 7;
  }

  v9 = MEMORY[0x277D81150];
  v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a4, "TSDDirection directionForVector(CGPoint)");
  v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDImageTracer.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v13, v10, v12, 79, 0, "can't find direction for invalid vector (%f, %f)", *&a1, *&a2);
  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15);
  return 8;
}

__n128 sub_2766E1980(_OWORD *a1, char *a2, double a3, double a4, double a5, double a6)
{
  v7 = a5 - a3;
  v8 = a6 - a4;
  if (v7 == -0.5 && v8 == -0.5)
  {
    *a1 = xmmword_276825E20;
    v22 = &xmmword_276825E30;
LABEL_24:
    result = *v22;
    *a2 = *v22;
    return result;
  }

  if (v7 == 0.5 && v8 == -0.5)
  {
    *a1 = xmmword_276825E30;
    v22 = &xmmword_276825E40;
    goto LABEL_24;
  }

  if (v7 == 0.5 && v8 == 0.5)
  {
    *a1 = xmmword_276825E40;
    v22 = &xmmword_276825E50;
    goto LABEL_24;
  }

  if (v7 == -0.5 && v8 == 0.5)
  {
    *a1 = xmmword_276825E50;
    v22 = &xmmword_276825E20;
    goto LABEL_24;
  }

  v13 = MEMORY[0x277D81150];
  v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "void nextPivotAndBlackVectors(CGPoint, CGPoint, CGPoint &, CGPoint &)", v8);
  v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDImageTracer.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v17, v14, v16, 112, 0, "unexpected pivot and black points while tracing");
  v20 = MEMORY[0x277D81150];

  objc_msgSend_logBacktraceThrottled(v20, v18, v19);
  return result;
}

void sub_2766E1AC4(void *a1, __int128 **a2, double a3)
{
  v5 = *a2;
  v4 = a2[1];
  v6 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a2) >> 3);
  if (v6 > 0x31)
  {
    goto LABEL_12;
  }

  v7 = *(MEMORY[0x277CBF398] + 16);
  v8 = *(MEMORY[0x277CBF398] + 24);
  if (v4 != v5)
  {
    if (v6 <= 1)
    {
      v9 = 1;
    }

    else
    {
      v9 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a2) >> 3);
    }

    v10 = v5 + 8;
    do
    {
      TSUGrowRectToPoint();
      v10 += 24;
      --v9;
    }

    while (v9);
  }

  if (v7 >= 5.0 && v8 >= 5.0)
  {
LABEL_12:
    __p = 0;
    v46 = 0;
    v47 = 0;
    sub_2766E1D64(&__p, v5);
    for (i = 0; i < v6 - 1; sub_2766E1D64(&__p, (v15 + 24 * i)))
    {
      v15 = *a2;
      v16 = i + 1;
      v17 = i + 2;
      if (i + 2 < v6)
      {
        v18 = v15 + 3 * i;
        v19 = *v18;
        v20 = v18[1];
        v21 = v18 + 4;
        ++i;
        v22 = v17;
        while (1)
        {
          if (v16 >= v22)
          {
            LOBYTE(v32) = 1;
          }

          else
          {
            v23 = v15 + 3 * v22;
            v24 = v23[1];
            v25 = *v23 - v19;
            v26 = v21;
            v27 = v17;
            do
            {
              v28 = (v24 - v20) * (*(v26 - 1) - v19);
              v29 = v25 * (*v26 - v20);
              if (v28 == v29)
              {
                v32 = 1;
              }

              else
              {
                v30 = vabdd_f64(v28, v29);
                TSUDistance();
                *&v31 = v30 / v31;
                v32 = *&v31 <= a3;
              }

              if (v27 >= v22)
              {
                break;
              }

              ++v27;
              v26 += 3;
            }

            while (v32);
            if (!v32)
            {
              goto LABEL_27;
            }
          }

          i = v22;
LABEL_27:
          if (++v22 >= v6 || !v32)
          {
            goto LABEL_31;
          }
        }
      }

      ++i;
LABEL_31:
      ;
    }

    v33 = __p;
    v34 = 0xAAAAAAAAAAAAAAABLL * ((v46 - __p) >> 3);
    if (v34 >= 3)
    {
      v35 = *__p;
      v36 = *(__p + 1);
      if (v46 - __p == 72 && v35 == *(__p + 6) && v36 == *(__p + 7))
      {
LABEL_42:
        v46 = v33;
        operator delete(v33);
        return;
      }

      v38 = a1;
      objc_msgSend_moveToPoint_(a1, v12, v13, v35, v36, a1);
      v41 = 0;
      v42 = v34 - 1;
      do
      {
        objc_msgSend_lineToPoint_(v38, v39, v40, *(__p + v41 + 24), *(__p + v41 + 32));
        v41 += 24;
        --v42;
      }

      while (v42);
      objc_msgSend_closePath(v38, v39, v40);
      v33 = __p;
    }

    if (!v33)
    {
      return;
    }

    goto LABEL_42;
  }
}

void sub_2766E1D3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2766E1D64(uint64_t a1, __int128 *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    v9 = v8 + 1;
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_2766E23A4();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x555555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      sub_2766E23BC(a1, v11);
    }

    v12 = 24 * v8;
    v13 = *a2;
    *(v12 + 16) = *(a2 + 2);
    *v12 = v13;
    v7 = 24 * v8 + 24;
    v14 = *(a1 + 8) - *a1;
    v15 = v12 - v14;
    memcpy((v12 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v7;
    *(a1 + 16) = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    v6 = *a2;
    *(v5 + 16) = *(a2 + 2);
    *v5 = v6;
    v7 = v5 + 24;
  }

  *(a1 + 8) = v7;
}

void *sub_2766E1E6C(int a1, int a2, CGImageRef image, double a4, double a5)
{
  Width = CGImageGetWidth(image);
  Height = CGImageGetHeight(image);
  v10 = objc_msgSend_bezierPath(MEMORY[0x277D81160], v8, v9);
  AlphaInfo = CGImageGetAlphaInfo(image);
  if (AlphaInfo <= kCGImageAlphaNoneSkipFirst && ((1 << AlphaInfo) & 0x61) != 0)
  {
    TSURectWithSize();
    objc_msgSend_appendBezierPathWithRect_(v10, v12, v13);
  }

  else
  {
    v16 = fminf(Width, 1024.0) / Width;
    v17 = fminf(Height, 1024.0) / Height;
    if (v17 < v16)
    {
      v16 = v17;
    }

    v56 = v16;
    v55 = v16;
    v18 = ceil(Height * v16);
    v19 = ceil(Width * v16) + 2.0;
    v20 = v19;
    v21 = v18 + 2.0;
    v22 = malloc_type_calloc(((v18 + 2.0) * v19), 1uLL, 0x100004077774924uLL);
    v23 = CGBitmapContextCreate(v22, v20, v21, 8uLL, v20, 0, 7u);
    CGContextSetBlendMode(v23, kCGBlendModeCopy);
    v70.size.width = v19 + -2.0;
    v70.size.height = v21 + -2.0;
    v70.origin.x = 1.0;
    v70.origin.y = 1.0;
    CGContextDrawImage(v23, v70, image);
    CGContextFlush(v23);
    CGContextRelease(v23);
    TSUClamp();
    v25 = v21 + -1.0;
    if (v25 <= 1.0)
    {
      v68 = 0;
      v69 = 0;
      v67 = &v68;
      __p = 0;
      v65 = 0;
      v66 = 0;
    }

    else
    {
      v26 = (v24 * 255.0);
      v27 = v19 + -1.0;
      v28 = 1.0;
      do
      {
        if (v27 > 1.0)
        {
          v29 = &v22[v28 * v20 + 1];
          v30 = 2;
          do
          {
            *v29 = *v29 >= v26;
            ++v29;
            v31 = v30++;
          }

          while (v27 > v31);
        }

        v28 = v28 + 1.0;
      }

      while (v28 < v25);
      v68 = 0;
      v69 = 0;
      v67 = &v68;
      v32 = 1.0;
      do
      {
        if (v27 > 1.0)
        {
          v33 = &v22[v32 * v20];
          v34 = *v33;
          v35 = 1.0;
          do
          {
            v36 = v34;
            v34 = v33[v35];
            if (v36 != 1 && v34 == 1)
            {
              v59.a = v35 + 0.5;
              v59.b = v32 + 0.5;
              sub_2766E249C(&v67, &v59.a);
            }

            v35 = v35 + 1.0;
          }

          while (v35 < v27);
        }

        v32 = v32 + 1.0;
      }

      while (v32 < v25);
      __p = 0;
      v65 = 0;
      v66 = 0;
      if (v69)
      {
        v37 = MEMORY[0x277D814D8];
        v38 = MEMORY[0x277CBF348];
        do
        {
          v63 = v67[2];
          sub_2766E2794(&v67, v63.f64);
          v65 = __p;
          v62 = v63;
          TSUFlooredPoint();
          v41 = v39;
          if (v22[(v40 - v37[1]) * v20 + (v39 - *v37)])
          {
            v42 = v40 + 1.0;
          }

          else
          {
            v42 = v40;
          }

          *&v59.c = 8;
          v59.a = v39 + -1.0;
          v59.b = v42 + -1.0;
          sub_2766E1D64(&__p, &v59);
          v43 = v42;
          v44 = v41;
          do
          {
            v60 = *v38;
            v61 = v60;
            sub_2766E1980(&v61, &v60, *&v62, *(&v62 + 1), v44, v43);
            v45 = vaddq_f64(v62, v61);
            v46 = v45.f64[1];
            v58 = v45.f64[0];
            v47 = TSUFlooredPoint();
            if (v22[v49 * v20 + v50])
            {
              v62 = __PAIR128__(*&v46, *&v58);
              sub_2766E2794(&v67, &v62);
            }

            else
            {
              v51 = v60;
              v52 = sub_2766E181C(v60.f64[0], v60.f64[1], v47, v48);
              v44 = v44 + v51.f64[0];
              v43 = v43 + v51.f64[1];
              v59.a = v44 + -1.0;
              v59.b = v43 + -1.0;
              *&v59.c = v52;
              if (v65 != __p && *(v65 - 2) == v52)
              {
                v65 -= 24;
              }

              sub_2766E1D64(&__p, &v59);
            }
          }

          while (v41 != v44 || v42 != v43);
          if (0xAAAAAAAAAAAAAAABLL * ((v65 - __p) >> 3) >= 2)
          {
            sub_2766E1AC4(v10, &__p, a5);
          }
        }

        while (v69);
      }
    }

    free(v22);
    if (v56 != 1.0)
    {
      CGAffineTransformMakeScale(&v59, 1.0 / v55, 1.0 / v55);
      objc_msgSend_transformUsingAffineTransform_(v10, v53, &v59);
    }

    if (__p)
    {
      v65 = __p;
      operator delete(__p);
    }

    sub_2766E2448(&v67, v68);
  }

  if (objc_msgSend_elementCount(v10, v14, v15) <= 0)
  {
    return 0;
  }

  else
  {
    return v10;
  }
}

void sub_2766E2360(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_2766E2448(v30 - 152, *(v30 - 144));
  _Unwind_Resume(a1);
}

void sub_2766E23BC(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_2766E2414();
}

void sub_2766E2414()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x277D82778], MEMORY[0x277D82620]);
}

void sub_2766E2448(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_2766E2448(a1, *a2);
    sub_2766E2448(a1, a2[1]);

    operator delete(a2);
  }
}

uint64_t sub_2766E249C(uint64_t a1, double *a2)
{
  v2 = *sub_2766E2530(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void *sub_2766E2530(uint64_t a1, void *a2, double *a3)
{
  v5 = *(a1 + 8);
  result = (a1 + 8);
  v4 = v5;
  if (v5)
  {
    v7 = *a3;
    v6 = a3[1];
    while (1)
    {
      while (1)
      {
        v8 = v4;
        v9 = *(v4 + 5);
        if (v6 >= v9)
        {
          break;
        }

LABEL_6:
        v4 = *v4;
        result = v8;
        if (!*v8)
        {
          goto LABEL_18;
        }
      }

      if (v6 == v9)
      {
        v10 = *(v4 + 4);
        if (v7 < v10)
        {
          goto LABEL_6;
        }

        if (v9 >= v6 && v10 >= v7)
        {
          goto LABEL_18;
        }
      }

      else if (v9 >= v6)
      {
        goto LABEL_18;
      }

      result = v4 + 1;
      v4 = v4[1];
      if (!v4)
      {
        goto LABEL_18;
      }
    }
  }

  v8 = result;
LABEL_18:
  *a2 = v8;
  return result;
}

uint64_t *sub_2766E25A0(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = sub_2766E25F8(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

uint64_t *sub_2766E25F8(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (v2[3])
      {
        break;
      }

      v3 = v2[2];
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = v2[1];
            v12 = *v11;
            v2[1] = *v11;
            v13 = v2;
            if (v12)
            {
              v12[2] = v2;
              v3 = v2[2];
              v13 = *v3;
            }

            v11[2] = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            v2[2] = v11;
            v3 = v11[2];
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = v2[2];
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            v2[2] = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

uint64_t sub_2766E2794(uint64_t **a1, double *a2)
{
  v3 = sub_2766E27E8(a1, a2);
  if (a1 + 1 == v3)
  {
    return 0;
  }

  v4 = v3;
  sub_2766E2864(a1, v3);
  operator delete(v4);
  return 1;
}

double *sub_2766E27E8(uint64_t a1, double *a2)
{
  v4 = *(a1 + 8);
  v2 = (a1 + 8);
  v3 = v4;
  if (!v4)
  {
    return v2;
  }

  v5 = *a2;
  v6 = a2[1];
  v7 = v2;
  do
  {
    v8 = v3[5];
    if (v8 >= v6)
    {
      if (v8 == v6)
      {
        v9 = v3[4];
        if (v9 >= v5)
        {
          v7 = v3;
        }

        v3 += v9 < v5;
      }

      else
      {
        v7 = v3;
      }
    }

    else
    {
      ++v3;
    }

    v3 = *v3;
  }

  while (v3);
  if (v7 == v2)
  {
    return v2;
  }

  v10 = v7[5];
  if (v6 < v10 || v6 == v10 && v5 < v7[4])
  {
    return v2;
  }

  return v7;
}

uint64_t *sub_2766E2864(uint64_t **a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    do
    {
      v3 = v2;
      v2 = *v2;
    }

    while (v2);
  }

  else
  {
    v4 = a2;
    do
    {
      v3 = v4[2];
      v5 = *v3 == v4;
      v4 = v3;
    }

    while (!v5);
  }

  if (*a1 == a2)
  {
    *a1 = v3;
  }

  v6 = a1[1];
  a1[2] = (a1[2] - 1);
  sub_2766E28D8(v6, a2);
  return v3;
}

uint64_t *sub_2766E28D8(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2;
  if (*a2)
  {
    v4 = a2[1];
    if (!v4)
    {
      v3 = a2;
      goto LABEL_7;
    }

    do
    {
      v3 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  v2 = v3[1];
  if (v2)
  {
LABEL_7:
    v6 = 0;
    v5 = v3[2];
    *(v2 + 16) = v5;
    goto LABEL_8;
  }

  v5 = v3[2];
  v6 = 1;
LABEL_8:
  v7 = *v5;
  if (*v5 == v3)
  {
    *v5 = v2;
    if (v3 == result)
    {
      v7 = 0;
      result = v2;
    }

    else
    {
      v7 = v5[1];
    }
  }

  else
  {
    v5[1] = v2;
  }

  v8 = *(v3 + 24);
  if (v3 != a2)
  {
    v9 = a2[2];
    v3[2] = v9;
    v9[*v9 != a2] = v3;
    v11 = *a2;
    v10 = a2[1];
    *(v11 + 16) = v3;
    *v3 = v11;
    v3[1] = v10;
    if (v10)
    {
      *(v10 + 16) = v3;
    }

    *(v3 + 24) = *(a2 + 24);
    if (result == a2)
    {
      result = v3;
    }
  }

  if (!result || !v8)
  {
    return result;
  }

  if (!v6)
  {
    *(v2 + 24) = 1;
    return result;
  }

  while (1)
  {
    v12 = v7[2];
    v13 = *v12;
    if (*v12 == v7)
    {
      break;
    }

    if ((v7[3] & 1) == 0)
    {
      *(v7 + 24) = 1;
      *(v12 + 24) = 0;
      v14 = v12[1];
      v15 = *v14;
      v12[1] = *v14;
      if (v15)
      {
        *(v15 + 16) = v12;
      }

      v16 = v12[2];
      v14[2] = v16;
      v16[*v16 != v12] = v14;
      *v14 = v12;
      v12[2] = v14;
      if (result == *v7)
      {
        result = v7;
      }

      v7 = *(*v7 + 8);
    }

    v17 = *v7;
    if (*v7 && *(v17 + 24) != 1)
    {
      v18 = v7[1];
      if (!v18)
      {
        goto LABEL_55;
      }

LABEL_54:
      if (*(v18 + 24) == 1)
      {
LABEL_55:
        *(v17 + 24) = 1;
        *(v7 + 24) = 0;
        v26 = v17[1];
        *v7 = v26;
        if (v26)
        {
          *(v26 + 16) = v7;
        }

        v27 = v7[2];
        v17[2] = v27;
        v27[*v27 != v7] = v17;
        v17[1] = v7;
        v7[2] = v17;
        v18 = v7;
      }

      else
      {
        v17 = v7;
      }

      v28 = v17[2];
      *(v17 + 24) = *(v28 + 24);
      *(v28 + 24) = 1;
      *(v18 + 24) = 1;
      v29 = *(v28 + 8);
      v30 = *v29;
      *(v28 + 8) = *v29;
      if (v30)
      {
        *(v30 + 16) = v28;
      }

      v31 = *(v28 + 16);
      v29[2] = v31;
      v31[*v31 != v28] = v29;
      *v29 = v28;
      goto LABEL_72;
    }

    v18 = v7[1];
    if (v18 && *(v18 + 24) != 1)
    {
      goto LABEL_54;
    }

    *(v7 + 24) = 0;
    v19 = v7[2];
    if (v19 == result || (v19[3] & 1) == 0)
    {
      goto LABEL_52;
    }

LABEL_49:
    v7 = *(v19[2] + 8 * (*v19[2] == v19));
  }

  if ((v7[3] & 1) == 0)
  {
    *(v7 + 24) = 1;
    *(v12 + 24) = 0;
    v20 = v13[1];
    *v12 = v20;
    if (v20)
    {
      *(v20 + 16) = v12;
    }

    v21 = v12[2];
    v13[2] = v21;
    v21[*v21 != v12] = v13;
    v13[1] = v12;
    v12[2] = v13;
    v22 = v7[1];
    if (result == v22)
    {
      result = v7;
    }

    v7 = *v22;
  }

  v23 = *v7;
  if (*v7 && *(v23 + 24) != 1)
  {
    goto LABEL_68;
  }

  v24 = v7[1];
  if (!v24 || *(v24 + 24) == 1)
  {
    *(v7 + 24) = 0;
    v19 = v7[2];
    if (*(v19 + 24) != 1 || v19 == result)
    {
LABEL_52:
      *(v19 + 24) = 1;
      return result;
    }

    goto LABEL_49;
  }

  if (!v23)
  {
    goto LABEL_65;
  }

  if (v23[3])
  {
    v24 = v7[1];
LABEL_65:
    *(v24 + 24) = 1;
    *(v7 + 24) = 0;
    v32 = *v24;
    v7[1] = *v24;
    if (v32)
    {
      *(v32 + 16) = v7;
    }

    v33 = v7[2];
    v24[2] = v33;
    v33[*v33 != v7] = v24;
    *v24 = v7;
    v7[2] = v24;
    v23 = v7;
  }

  else
  {
LABEL_68:
    v24 = v7;
  }

  v28 = v24[2];
  *(v24 + 24) = *(v28 + 24);
  *(v28 + 24) = 1;
  *(v23 + 24) = 1;
  v29 = *v28;
  v34 = *(*v28 + 8);
  *v28 = v34;
  if (v34)
  {
    *(v34 + 16) = v28;
  }

  v35 = *(v28 + 16);
  v29[2] = v35;
  v35[*v35 != v28] = v29;
  v29[1] = v28;
LABEL_72:
  *(v28 + 16) = v29;
  return result;
}

void TSDTransform3DMakeProjection(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  if (a2 <= 0.0)
  {
    v10 = MEMORY[0x277CD9DE8];
    v11 = *(MEMORY[0x277CD9DE8] + 80);
    *(a1 + 64) = *(MEMORY[0x277CD9DE8] + 64);
    *(a1 + 80) = v11;
    v12 = v10[7];
    *(a1 + 96) = v10[6];
    *(a1 + 112) = v12;
    v13 = v10[1];
    *a1 = *v10;
    *(a1 + 16) = v13;
    v14 = v10[3];
    *(a1 + 32) = v10[2];
    *(a1 + 48) = v14;
  }

  else
  {
    v9 = 1.0 / tan(a2 * 0.5);
    *a1 = v9 / a3;
    *(a1 + 8) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 40) = v9;
    *(a1 + 48) = 0u;
    *(a1 + 64) = 0u;
    *(a1 + 80) = a5 / (a4 - a5);
    *(a1 + 96) = 0;
    *(a1 + 104) = 0;
    *(a1 + 88) = 0xBFF0000000000000;
    *(a1 + 112) = a4 * a5 / (a4 - a5);
    *(a1 + 120) = 0;
  }
}

double TSDTransform3DMakeOrtho@<D0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>, double a6@<D4>, double a7@<D5>)
{
  *a1 = 2.0 / (a3 - a2);
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 2.0 / (a5 - a4);
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = -2.0 / (a7 - a6);
  *(a1 + 88) = 0;
  *(a1 + 96) = -(a2 + a3) / (a3 - a2);
  *(a1 + 104) = -(a4 + a5) / (a5 - a4);
  result = -(a6 + a7) / (a7 - a6);
  *(a1 + 112) = result;
  *(a1 + 120) = 0x3FF0000000000000;
  return result;
}

long double sub_2766E2D98(double a1, double a2)
{
  if (a1 >= a2)
  {
    v2 = a2;
  }

  else
  {
    v2 = a1;
  }

  return tan(0.174532925) * 15.0 * v2;
}

uint64_t sub_2766E37B4(void *a1)
{
  v1 = MEMORY[0x277CCA900];
  v2 = a1;
  v5 = objc_msgSend_decimalDigitCharacterSet(v1, v3, v4);
  v7 = objc_msgSend_componentsSeparatedByCharactersInSet_(v2, v6, v5);

  v10 = objc_msgSend_firstObject(v7, v8, v9);

  if (objc_msgSend_length(v10, v11, v12))
  {
    if (objc_msgSend_isEqualToString_(v10, v13, @"iPad"))
    {
      v15 = 1;
    }

    else if (objc_msgSend_isEqualToString_(v10, v14, @"iPhone"))
    {
      v15 = 2;
    }

    else if (objc_msgSend_isEqualToString_(v10, v16, @"iPod"))
    {
      v15 = 3;
    }

    else if (objc_msgSend_isEqualToString_(v10, v17, @"iMac"))
    {
      v15 = 4;
    }

    else if (objc_msgSend_isEqualToString_(v10, v18, @"MacBook"))
    {
      v15 = 5;
    }

    else if (objc_msgSend_isEqualToString_(v10, v19, @"MacBookAir"))
    {
      v15 = 6;
    }

    else if (objc_msgSend_isEqualToString_(v10, v20, @"MacBookPro"))
    {
      v15 = 7;
    }

    else if (objc_msgSend_isEqualToString_(v10, v21, @"Macmini"))
    {
      v15 = 8;
    }

    else if (objc_msgSend_isEqualToString_(v10, v22, @"MacPro"))
    {
      v15 = 9;
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

uint64_t sub_2766E3A5C(uint64_t a1)
{
  v2 = objc_opt_new();
  v3 = qword_280A4C378;
  qword_280A4C378 = v2;

  result = objc_msgSend_p_isMetalCapable(*(a1 + 32), v4, v5);
  byte_280A4C380 = result;
  return result;
}

void sub_2766E3AEC()
{
  v0 = objc_alloc_init(TSDCapabilities);
  v1 = qword_280A4C390;
  qword_280A4C390 = v0;
}

uint64_t sub_2766E8E64(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v4 = objc_msgSend_info(a2, a2, a3);
  isNonGroupedChild = objc_msgSend_isNonGroupedChild_(v3, v5, v4);

  return isNonGroupedChild;
}

unint64_t sub_2766EE284(unint64_t result)
{
  if (result >= 7)
  {
    return 0;
  }

  return result;
}

void sub_2766EEF0C(uint64_t a1, void *a2)
{
  v13 = a2;
  if (*(a1 + 48) == 1)
  {
    v6 = objc_msgSend_documentRoot(*(a1 + 32), v4, v5);
    objc_msgSend_willBeAddedToDocumentRoot_dolcContext_(v13, v7, v6, *(a1 + 40));
  }

  objc_storeStrong((*(a1 + 32) + 216), a2);
  objc_msgSend_setParentInfoDuringUnarchiving_inDocument_(*(*(a1 + 32) + 216), v8, *(a1 + 32), *(a1 + 49));
  if (*(a1 + 48) == 1)
  {
    v11 = objc_msgSend_documentRoot(*(a1 + 32), v9, v10);
    objc_msgSend_wasAddedToDocumentRoot_dolcContext_(v13, v12, v11, *(a1 + 40));
  }
}

void sub_2766F18E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_2766F1900(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2766F1918(uint64_t a1, const char *a2)
{
  v3 = objc_msgSend_groupGeometryFromChildrenInfos_currentlyLaidOutWithLayoutController_(*(a1 + 48), a2, *(a1 + 32), a2);
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_2766F1CAC(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = *(*(a1 + 40) + 8);
  v5 = objc_msgSend_pureGeometry(*(a1 + 32), a2, a3);
  v8 = v5;
  if (v5)
  {
    objc_msgSend_fullTransform(v5, v6, v7);
  }

  else
  {
    memset(&v9, 0, sizeof(v9));
  }

  v10.origin.x = 0.0;
  v10.origin.y = 0.0;
  v10.size.width = 1.0;
  v10.size.height = 1.0;
  v11 = CGRectApplyAffineTransform(v10, &v9);
  *(*(*(a1 + 40) + 8) + 32) = CGRectUnion(v4[1], v11);
}

void sub_2766F667C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  _Block_object_dispose(&a26, 8);

  _Unwind_Resume(a1);
}

__n128 sub_2766F66BC(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 48);
  v3 = *(a2 + 64);
  *(a1 + 48) = result;
  *(a1 + 64) = v3;
  return result;
}

void sub_2766F66CC(uint64_t a1, const char *a2, uint64_t a3)
{
  v19 = objc_msgSend_bezierPath(MEMORY[0x277D81160], a2, a3);
  objc_msgSend_moveToPoint_(v19, v5, v6, *(a1 + 64), *(a1 + 72));
  sub_276646070(a2);
  TSUMultiplyPointScalar();
  objc_msgSend_relativeLineToPoint_(v19, v7, v8);
  v10 = objc_msgSend_clipPath_onLayout_outset_reversed_isValid_(*(a1 + 32), v9, v19, *(a1 + 40), 0, *(*(a1 + 48) + 8) + 24, *(a1 + 88));
  v13 = v10;
  if (v10 && *(*(*(a1 + 48) + 8) + 24) == 1)
  {
    objc_msgSend_point(v10, v11, v12);
    TSUGrowRectToPoint();
    v14 = *(*(a1 + 56) + 8);
    v14[6] = v15;
    v14[7] = v16;
    v14[8] = v17;
    v14[9] = v18;
  }
}

__n128 sub_2766F6800@<Q0>(__n128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __n128 *a4@<X8>)
{
  v7 = a1[1].n128_u64[1];
  if (!v7)
  {
    if (!a1[1].n128_u64[0])
    {
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  v9 = a1[1];
  v17 = *a1;
  v18 = v9;
  v10 = sub_27677AFD0(&v17);
  v11 = a1[1].n128_u64[0];
  if (a2 == v10)
  {
    --a1->n128_u64[0];
    a1[1].n128_u64[0] = ++v11;
  }

  v12 = a1[1];
  v17 = *a1;
  v18 = v12;
  if (a2 == sub_27677AFD8(&v17))
  {
    a1[1].n128_u64[0] = ++v11;
  }

  if (v11)
  {
LABEL_9:
    v13 = a1[1];
    v17 = *a1;
    v18 = v13;
    if (a3 == sub_27677AFE8(&v17))
    {
      --a1->n128_u64[1];
      a1[1].n128_u64[1] = ++v7;
    }

    v14 = a1[1];
    v17 = *a1;
    v18 = v14;
    if (a3 == sub_27677AFF0(&v17))
    {
      a1[1].n128_u64[1] = v7 + 1;
    }
  }

LABEL_13:
  result = *a1;
  v16 = a1[1];
  *a4 = *a1;
  a4[1] = v16;
  return result;
}

void sub_2766F6D98(const void **a1, void *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 3) + 1;
    if (v9 >> 61)
    {
      sub_2766E23A4();
    }

    v10 = v4 - v7;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFF8;
    v12 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      sub_2766F9400(a1, v12);
    }

    v13 = (8 * (v8 >> 3));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

void sub_2766F743C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *__p, uint64_t a48, uint64_t a49, char a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, void *a56, uint64_t a57)
{
  _Block_object_dispose((v58 - 240), 8);
  _Block_object_dispose(&a41, 8);
  if (__p)
  {
    a48 = __p;
    operator delete(__p);
  }

  _Block_object_dispose(&a50, 8);
  if (a56)
  {
    a57 = a56;
    operator delete(a56);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2766F7738(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  if (v2 != *a2)
  {
    return v2 ^ 1u;
  }

  v2 = a1[1];
  if (v2 != a2[1])
  {
    return v2 ^ 1u;
  }

  v3 = *(a1 + 1);
  v4 = *(a2 + 1);
  v5 = v3 < v4;
  if (v3 != v4)
  {
    return v5;
  }

  v6 = *(a1 + 2);
  v7 = *(a2 + 2);
  v5 = v6 < v7;
  if (v6 != v7)
  {
    return v5;
  }

  v8 = *(a1 + 3);
  v9 = *(a2 + 3);
  v10 = v8 < v9;
  if (v8 != v9)
  {
    return v10;
  }

  v11 = *(a1 + 4);
  v12 = *(a2 + 4);
  v10 = v11 < v12;
  if (v11 != v12)
  {
    return v10;
  }

  v14 = *(a1 + 5);
  v15 = *(a2 + 5);
  return v14 != v15 && v14 < v15;
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> sub_2766F77C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  sub_2766F9500(a3, &v6);
  sub_2766F9500(a4, &v5);
}

uint64_t sub_2766F781C(__int128 *a1, uint64_t a2)
{
  if (a2 > 1)
  {
    if (a2 == 2)
    {
      v11 = a1[1];
      v12 = *a1;
      v13 = v11;
      v7 = sub_27677AFD0(&v12);
    }

    else
    {
      if (a2 != 3)
      {
        return 0;
      }

      v6 = a1[1];
      v12 = *a1;
      v13 = v6;
      v7 = sub_27677AFD8(&v12);
    }

    v10 = *(a1 + 5);
    return nullsub_4(v7, v10);
  }

  if (!a2)
  {
    v3 = *(a1 + 4);
    v9 = a1[1];
    v12 = *a1;
    v13 = v9;
    v5 = sub_27677AFF0(&v12);
    goto LABEL_10;
  }

  if (a2 != 1)
  {
    return 0;
  }

  v3 = *(a1 + 4);
  v4 = a1[1];
  v12 = *a1;
  v13 = v4;
  v5 = sub_27677AFE8(&v12);
LABEL_10:
  v10 = v5;
  v7 = v3;
  return nullsub_4(v7, v10);
}

uint64_t sub_2766F78DC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v4 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v9 = sub_2766F7994;
  v10 = &unk_27A6CD148;
  v11 = a2;
  v12 = a3;
  v13 = a1;
  v14 = a4;
  do
  {
    v5 = qword_276825F20[v4];
    v15 = 0;
    result = (v9)(v8, v5, &v15);
    if (v15)
    {
      break;
    }
  }

  while (v4++ != 3);
  return result;
}

uint64_t sub_2766F7994(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = v4[1];
  v19 = *v4;
  v20 = v6;
  v7 = *v5;
  v8 = *(v5 + 8);
  if (sub_27677B000(&v19, *v5, v8))
  {
    do
    {
      v5 = *(v5 + 8 * a2 + 16);
      v9 = v4[1];
      v19 = *v4;
      v20 = v9;
    }

    while (sub_27677B000(&v19, *v5, *(v5 + 8)));
    v7 = *v5;
    v8 = *(v5 + 8);
  }

  v10 = sub_2766F781C(v4, a2);
  v12 = v11;
  result = sub_27677AEEC(v10, v11, v7, v8);
  if ((result & 1) == 0)
  {
    v14 = *(a1 + 48);
    v24 = 0;
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    *&v19 = v10;
    *(&v19 + 1) = v12;
    sub_2766F7AC4(v14, &v19);
    v15 = *(*(a1 + 48) + 8);
    result = sub_276646060(a2);
    *(v15 - 72 + 8 * a2) = v5;
    v16 = v5 + 8 * result;
    v17 = *(v16 + 16);
    *(v15 - 72 + 8 * result) = v17;
    *(v17 + 8 * a2 + 16) = v15 - 88;
    *(v16 + 16) = v15 - 88;
    v5 = v15 - 88;
  }

  v18 = *(v5 + 80) | 2;
  *(v5 + 80) = v18;
  *(v5 + 80) = v18 & 0xBF | (*(a1 + 56) << 6);
  *(*(a1 + 40) + 8 * a2 + 56) = v5;
  return result;
}

void sub_2766F7AC4(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v11 = 0x2E8BA2E8BA2E8BA3 * ((v4 - *a1) >> 3);
    v12 = v11 + 1;
    if ((v11 + 1) > 0x2E8BA2E8BA2E8BALL)
    {
      sub_2766E23A4();
    }

    v13 = 0x2E8BA2E8BA2E8BA3 * ((v5 - *a1) >> 3);
    if (2 * v13 > v12)
    {
      v12 = 2 * v13;
    }

    if (v13 >= 0x1745D1745D1745DLL)
    {
      v14 = 0x2E8BA2E8BA2E8BALL;
    }

    else
    {
      v14 = v12;
    }

    if (v14)
    {
      sub_2766F95CC(a1, v14);
    }

    v15 = 88 * v11;
    v16 = *(a2 + 16);
    *v15 = *a2;
    *(v15 + 16) = v16;
    v17 = *(a2 + 32);
    v18 = *(a2 + 48);
    v19 = *(a2 + 64);
    *(v15 + 80) = *(a2 + 80);
    *(v15 + 48) = v18;
    *(v15 + 64) = v19;
    *(v15 + 32) = v17;
    v10 = 88 * v11 + 88;
    v20 = *(a1 + 8) - *a1;
    v21 = v15 - v20;
    memcpy((v15 - v20), *a1, v20);
    v22 = *a1;
    *a1 = v21;
    *(a1 + 8) = v10;
    *(a1 + 16) = 0;
    if (v22)
    {
      operator delete(v22);
    }
  }

  else
  {
    v6 = *(a2 + 16);
    *v4 = *a2;
    *(v4 + 16) = v6;
    v7 = *(a2 + 32);
    v8 = *(a2 + 48);
    v9 = *(a2 + 64);
    *(v4 + 80) = *(a2 + 80);
    *(v4 + 48) = v8;
    *(v4 + 64) = v9;
    *(v4 + 32) = v7;
    v10 = v4 + 88;
  }

  *(a1 + 8) = v10;
}

void sub_2766F8304(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_2766E2448(v27 - 240, *(v27 - 232));
  sub_2766E2448(v27 - 216, *(v27 - 208));
  _Unwind_Resume(a1);
}

void *sub_2766F8360(void *result, unint64_t a2)
{
  if (0x2E8BA2E8BA2E8BA3 * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0x2E8BA2E8BA2E8BBLL)
    {
      sub_2766F95CC(result, a2);
    }

    sub_2766E23A4();
  }

  return result;
}

void sub_2766F842C(void *a1, unint64_t a2)
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
    sub_2766F9628(a1, a2 - v2);
  }
}

double sub_2766F845C(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    v2 = a1;
    v3 = *a1;
    v4 = 0.0;
    v5 = 0.0;
    v6 = 0.0;
    v7 = 0.0;
    do
    {
      v8 = *(v2 + 176);
      v2 = v1;
      v9 = *v1;
      if ((v8 & 2) == 0 || (*(v1 + 176) & 2) == 0)
      {
        v10 = sub_27677B07C(*v3, v3[1], *v9);
        if (v10 == 0 && v11 > 0)
        {
          v4 = v4 + v11;
        }

        if (v10 == 0 && v11 < 0)
        {
          v5 = v5 - v11;
        }

        if (v11 == 0 && v10 > 0)
        {
          v7 = v7 + v10;
        }

        if (v11 == 0 && v10 < 0)
        {
          v6 = v6 - v10;
        }
      }

      v1 = *(v2 + 24);
      v3 = v9;
    }

    while (v1);
  }

  else
  {
    v7 = 0.0;
    v6 = 0.0;
    v5 = 0.0;
    v4 = 0.0;
  }

  return fmin(v6, v7) + fmin(v4, v5);
}

uint64_t sub_2766F8558(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (a2)
  {
    sub_27677B094(**a1, *(*a1 + 8), *a2, a2[1]);
    v6 = *(a1 + 8);
    if (v6 != a3)
    {
      sub_276646060(v6);
    }

    v7 = a1;
    do
    {
      if (*v7 == a2)
      {
        break;
      }

      v7 = v7[3];
    }

    while (v7);
    operator new();
  }

  return 0;
}

uint64_t sub_2766F8758(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = result;
  *(result + 176) |= 2u;
  do
  {
    if (*result == a3)
    {
      break;
    }

    v7 = sub_2766F8558(result, *(*result + 8 * a2 + 16), a2);
    result = v8;
    if (v7 != v8)
    {
      sub_2766F87E8(a4, &v8);
      v8 = v7;
      result = v7;
    }
  }

  while (result);
  return result;
}

void sub_2766F87E8(uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      sub_2766E23A4();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      sub_2766F973C(a1, v10);
    }

    v11 = (8 * v7);
    *v11 = *a2;
    v6 = 8 * v7 + 8;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

uint64_t sub_2766F88BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_276646060(a6);
  if (a1 == a4 && a2 == a5)
  {
    if (a3 == a6)
    {
      v13 = 4;
    }

    else
    {
      v13 = 1;
    }

    v14 = v12 == a3;
LABEL_7:
    if (v14)
    {
      return 0;
    }

    else
    {
      return v13;
    }
  }

  if (v12 == a3)
  {
    v16 = sub_27677B068(a3);
    v18 = v17;
    v19 = sub_27677B07C(a4, a5, a1);
    if (sub_27677B088(v16, v18, v19, v20) < 0)
    {
      return 4;
    }

    v21 = sub_276646070(a3);
    if (a1 == a4 && v21 == 0.0)
    {
      return 0;
    }

    v14 = a2 == a5 && v22 == 0.0;
    v13 = 2;
    goto LABEL_7;
  }

  if (a3 == a6)
  {
    v23 = sub_276646070(a6);
    result = 4;
    if (a1 != a4 || v23 != 0.0)
    {
      if (a2 == a5 && v24 == 0.0)
      {
        return 4;
      }

      else
      {
        return 2;
      }
    }
  }

  else
  {
    v26 = sub_27677B068(a3);
    v28 = v27;
    v29 = sub_27677B07C(a4, a5, a1);
    v31 = sub_27677B088(v26, v28, v29, v30);
    v32 = sub_27677B068(a6);
    v34 = v33;
    v35 = sub_27677B07C(a1, a2, a4);
    if ((v31 | sub_27677B088(v32, v34, v35, v36)) >= 0)
    {
      return 1;
    }

    else
    {
      return 3;
    }
  }

  return result;
}

void sub_2766F8A78(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *(a5 + 16) = 0u;
  *(a5 + 32) = 0u;
  *a5 = 0u;
  v9 = *(a3 + 8 * a4 + 88);
  v10 = *(a1 + 16);
  v11 = *a1;
  v23 = a3 + 8 * a4;
  if ((v10 & 1) != 0 || (*(v11 + 80) & 8) != 0)
  {
    v19 = *v11;
    v20 = *(v11 + 8);
    v21 = *v9;
    v22 = *(v9 + 8);
    *(a5 + 32) = sub_27677B094(*v11, v20, *v9, v22);
    *(a5 + 8) = sub_2766F88BC(v19, v20, a1[1], v21, v22, a4);
    if (v10)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v12 = *a2;
    v13 = *(a2 + 8);
    v14 = sub_27677B094(*v11, *(v11 + 8), *a2, v13);
    v15 = sub_27677B094(v12, v13, *v9, *(v9 + 8));
    v16 = 0;
    *(a5 + 32) = v14 + v15;
    v32 = 0;
    v33 = &v32;
    v34 = 0x2020000000;
    v35 = 0x7FFFFFFFFFFFFFFFLL;
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v25 = sub_2766F8C8C;
    v26 = &unk_27A6CD170;
    v29 = a2;
    v30 = v9;
    v31 = a4;
    v27 = &v32;
    v28 = a1;
    do
    {
      v17 = qword_276825F20[v16];
      v36 = 0;
      (v25)(v24, v17, &v36);
      if (v36)
      {
        break;
      }
    }

    while (v16++ != 3);
    *(a5 + 8) = v33[3];
    _Block_object_dispose(&v32, 8);
    if (a1[2])
    {
      goto LABEL_11;
    }
  }

  if ((*(a2 + 80) & 0x10) != 0)
  {
LABEL_13:
    *(a5 + 1) = 1;
    return;
  }

LABEL_11:
  if ((*(v9 + 80) & 0x10) != 0 || (*(*(v23 + 56) + 80) & 0x10) != 0)
  {
    goto LABEL_13;
  }
}

void sub_2766F8C74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_2766F8C8C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 48);
  v5 = *v4;
  v6 = v4[1];
  v7 = sub_2766F88BC(***(a1 + 40), *(**(a1 + 40) + 8), *(*(a1 + 40) + 8), *v4, v6, a2);
  v8 = sub_276646060(a2);
  result = sub_2766F88BC(v5, v6, v8, **(a1 + 56), *(*(a1 + 56) + 8), *(a1 + 64));
  v10 = (result + v7);
  v11 = *(*(a1 + 32) + 8);
  if (*(v11 + 24) < v10)
  {
    v10 = *(v11 + 24);
  }

  *(v11 + 24) = v10;
  return result;
}

void sub_2766F8D20(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v5 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x6012000000;
  v20 = sub_2766F8E70;
  v21 = nullsub_2;
  v22 = "";
  v23 = xmmword_276825EF0;
  v24 = unk_276825F00;
  v25 = xmmword_276825F10;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v11 = sub_2766F8E88;
  v12 = &unk_27A6CD198;
  v13 = &v17;
  v14 = a1;
  v15 = a2;
  v16 = a3;
  do
  {
    v6 = qword_276825F20[v5];
    v26 = 0;
    (v11)(v10, v6, &v26);
    if (v26)
    {
      break;
    }
  }

  while (v5++ != 3);
  v8 = v18;
  v9 = *(v18 + 4);
  *a4 = *(v18 + 3);
  a4[1] = v9;
  a4[2] = *(v8 + 5);
  _Block_object_dispose(&v17, 8);
}

void sub_2766F8E58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__n128 sub_2766F8E70(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 48);
  v3 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v3;
  *(a1 + 48) = result;
  return result;
}

__n128 sub_2766F8E88(void *a1, uint64_t a2)
{
  v4 = a1[4];
  v3 = a1[5];
  v5 = *(v4 + 8);
  v6 = v5[4];
  v12[0] = v5[3];
  v12[1] = v6;
  v12[2] = v5[5];
  memset(v11, 0, sizeof(v11));
  sub_2766F8A78(v3, a1[6], a1[7], a2, v11);
  if (sub_2766F7738(v12, v11))
  {
    v7 = v12;
  }

  else
  {
    v7 = v11;
  }

  result = v7[2];
  v14 = v7[1];
  v9 = v14;
  v15 = result;
  v13 = *v7;
  v10 = *(a1[4] + 8);
  v10[3] = v13;
  v10[4] = v9;
  v10[5] = result;
  return result;
}

__n128 sub_2766F8F28(__n128 *a1, __n128 *a2)
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

void sub_2766F8F4C(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

uint64_t sub_2766F90A0(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v6 = *(a1 + 40);
  result = sub_276646060(v6[1]);
  if (result != a2)
  {
    if (*(*v6 + 8 * a2 + 16))
    {
      *(*(*(a1 + 32) + 8) + 24) = 0;
      *a3 = 1;
    }
  }

  return result;
}

void sub_2766F9108(void *a1, uint64_t a2)
{
  v4 = a1[7];
  if (sub_276646060(v4[1]) != a2 || *(*(a1[4] + 8) + 24) == 1)
  {
    v33 = 0;
    v34 = &v33;
    v35 = 0x2020000000;
    v36 = sub_2766F8558(v4, *(*v4 + 8 * a2 + 16), a2);
    v5 = v34;
    v6 = v34[3];
    if (v6)
    {
      if (*(v6 + 16) == 1 && (*(*v6 + 80) & 4) != 0)
      {
        v7 = 0;
        v26[0] = MEMORY[0x277D85DD0];
        v26[1] = 3221225472;
        v27 = sub_2766F9350;
        v28 = &unk_27A6CD210;
        v8 = a1[8];
        v31 = a2;
        v32 = v8;
        v9 = a1[5];
        v29 = &v33;
        v30 = v9;
        do
        {
          v10 = qword_276825F20[v7];
          LOBYTE(v22) = 0;
          v27(v26, v10, &v22);
          if (v22)
          {
            break;
          }
        }

        while (v7++ != 3);
        v5 = v34;
        v6 = v34[3];
      }

      if (*(v6 + 176))
      {
        v15 = 0;
        v16 = 0;
        v12 = 0uLL;
        v13 = 0uLL;
        v14 = 0.0;
      }

      else
      {
        sub_2766F8D20(v6, a1[9], a1[8], &v22);
        v12 = v23;
        v13 = v24;
        v14 = v25;
        v15 = BYTE1(v22);
        v16 = v22;
        v5 = v34;
        v6 = v34[3];
      }

      v17 = *(v6 + 81);
      v18 = v14 + *(v6 + 120);
      *(v6 + 128) = (*(v6 + 80) | v16) & 1;
      *(v6 + 129) = (v17 | v15) & 1;
      *(v6 + 136) = vaddq_s64(*(v6 + 88), v12);
      *(v6 + 152) = vaddq_f64(v13, *(v6 + 104));
      *(v6 + 168) = v18;
      sub_2766F87E8(*(a1[6] + 8) + 48, v5 + 3);
      v19 = *(a1[6] + 8);
      v20 = *(v19 + 48);
      v21 = *(v19 + 56);
      v22 = sub_2766F7728;
      sub_2766F98E0(v20, v21, &v22, (v21 - v20) >> 3);
    }

    _Block_object_dispose(&v33, 8);
  }
}

void *sub_2766F9350(void *result, uint64_t a2, _BYTE *a3)
{
  if (result[6] != a2)
  {
    v3 = result;
    v4 = *(*(result[4] + 8) + 24);
    v5 = result[7] + 8 * a2;
    if (*v4 == *(v5 + 88))
    {
      v7 = sub_276646060(a2);
      result = sub_2766F8758(v4, v7, *(v5 + 56), *(v3[5] + 8) + 48);
      *(*(v3[4] + 8) + 24) = result;
      v8 = *(*(v3[4] + 8) + 24);
      *(v8 + 176) |= 1u;
      *a3 = 1;
    }
  }

  return result;
}

void sub_2766F9400(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_2766E2414();
}

uint64_t sub_2766F9448(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_2766F94C4(result, a4);
  }

  return result;
}

void sub_2766F94A8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_2766F94C4(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    sub_2766F9400(a1, a2);
  }

  sub_2766E23A4();
}

void *sub_2766F9500(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = v2[4];
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void sub_2766F95CC(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x2E8BA2E8BA2E8BBLL)
  {
    operator new();
  }

  sub_2766E2414();
}

void sub_2766F9628(uint64_t a1, unint64_t a2)
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
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 3);
    if (v7 >> 61)
    {
      sub_2766E23A4();
    }

    v8 = v4 - *a1;
    if (v8 >> 2 > v7)
    {
      v7 = v8 >> 2;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v9 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_2766F973C(a1, v9);
    }

    v10 = (8 * (v6 >> 3));
    bzero(v10, 8 * a2);
    v11 = &v10[8 * a2];
    v12 = *(a1 + 8) - *a1;
    v13 = &v10[-v12];
    memcpy(&v10[-v12], *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v11;
    *(a1 + 16) = 0;
    if (v14)
    {

      operator delete(v14);
    }
  }
}

void sub_2766F973C(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_2766E2414();
}

uint64_t sub_2766F9784(uint64_t result, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  if (a3 >= 2)
  {
    v4 = a4 - result;
    v5 = (a3 - 2) >> 1;
    if (v5 >= (a4 - result) >> 3)
    {
      v6 = v4 >> 2;
      v7 = (v4 >> 2) | 1;
      v8 = (result + 8 * v7);
      v9 = v6 + 2;
      if (v9 < a3)
      {
        v10 = v8[1];
        v11 = *v8 >= v10;
        v8 += *v8 < v10;
        if (!v11)
        {
          v7 = v9;
        }
      }

      v12 = *v8;
      v13 = *a4;
      if (*v8 >= *a4)
      {
        do
        {
          *a4 = v12;
          a4 = v8;
          if (v5 < v7)
          {
            break;
          }

          v14 = (2 * v7) | 1;
          v8 = (result + 8 * v14);
          v7 = 2 * v7 + 2;
          if (v7 >= a3)
          {
            v7 = v14;
          }

          else
          {
            v15 = v8[1];
            v11 = *v8 >= v15;
            v8 += *v8 < v15;
            if (v11)
            {
              v7 = v14;
            }
          }

          v12 = *v8;
        }

        while (*v8 >= v13);
        *a4 = v13;
      }
    }
  }

  return result;
}

void *sub_2766F9834(void *a1, uint64_t (**a2)(void, void), uint64_t a3)
{
  v6 = 0;
  v7 = (a3 - 2) / 2;
  do
  {
    v8 = &a1[v6 + 1];
    v9 = (2 * v6) | 1;
    v10 = 2 * v6 + 2;
    if (v10 < a3)
    {
      v11 = (*a2)(a1[v6 + 1], a1[v6 + 2]);
      if (v11)
      {
        v12 = 8;
      }

      else
      {
        v12 = 0;
      }

      v8 = (v8 + v12);
      if (v11)
      {
        v9 = v10;
      }
    }

    *a1 = *v8;
    a1 = v8;
    v6 = v9;
  }

  while (v9 <= v7);
  return v8;
}

uint64_t sub_2766F98E0(uint64_t result, uint64_t a2, uint64_t (**a3)(uint64_t, uint64_t), uint64_t a4)
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

uint64_t sub_2766F9AC4(uint64_t a1, const char *a2, uint64_t a3)
{
  *(*(a1 + 32) + 89) = 1;
  objc_msgSend_defaultOriginalSize(*(a1 + 32), a2, a3);
  v6 = *(a1 + 32);

  return objc_msgSend_setOriginalSize_(v6, v4, v5);
}

uint64_t sub_2766FEB48(uint64_t a1, const char *a2, uint64_t a3)
{
  v54[1] = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_needsDownload(*(*(a1 + 32) + 8), a2, a3);
  if (v4)
  {
    v7 = 0;
    goto LABEL_13;
  }

  v8 = *(*(a1 + 32) + 8);
  if (!v8)
  {
    goto LABEL_10;
  }

  v9 = objc_msgSend_null(MEMORY[0x277D80828], v5, v6);
  v12 = v9;
  if (v8 == v9)
  {

    goto LABEL_10;
  }

  isReadable = objc_msgSend_isReadable(*(*(a1 + 32) + 8), v10, v11);

  if ((isReadable & 1) == 0)
  {
LABEL_10:
    v53 = *MEMORY[0x277CCA450];
    v26 = sub_2767B590C(v4, v5, v6);
    v28 = objc_msgSend_localizedStringForKey_value_table_(v26, v27, @"Some images can\\U2019t be displayed.", &stru_28857D120, @"TSDrawables");
    v54[0] = v28;
    v14 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v29, v54, &v53, 1);

    v31 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v30, @"com.apple.iWork.TSDErrorDomainMediaCompatibility", 100, v14);
    v7 = 0;
    v32 = *(a1 + 32);
    v33 = *(v32 + 24);
    *(v32 + 24) = v31;
    goto LABEL_11;
  }

  v14 = objc_msgSend_type(*(*(a1 + 32) + 8), v5, v6);
  v15 = *MEMORY[0x277D81468];
  v52[0] = *MEMORY[0x277D81480];
  v52[1] = v15;
  v7 = 2;
  v17 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v16, v52, 2);
  v19 = objc_msgSend_tsu_conformsToAnyUTI_(v14, v18, v17);

  if ((v19 & 1) == 0)
  {
    v21 = objc_msgSend_typeWithIdentifier_(MEMORY[0x277CE1CB8], v20, v14);
    v23 = objc_msgSend_conformsToType_(v21, v22, *MEMORY[0x277CE1E68]);

    if (v23)
    {
      v7 = 4;
      goto LABEL_12;
    }

    if (objc_msgSend_isCancelled(*(a1 + 32), v24, v25))
    {
      v7 = 0;
      goto LABEL_12;
    }

    v38 = objc_msgSend_sharedPool(TSDImageProviderPool, v36, v37);
    v7 = 1;
    v33 = objc_msgSend_temporaryProviderForData_shouldValidate_(v38, v39, *(*(a1 + 32) + 8), 1);

    if ((objc_msgSend_isError(v33, v40, v41) & 1) == 0)
    {
      v44 = objc_msgSend_imageTypesThatRequireConversion(MEMORY[0x277D81200], v42, v43);
      v46 = objc_msgSend_tsu_conformsToAnyUTI_(v14, v45, v44);

      if (v46)
      {
        v7 = 2;
      }

      else
      {
        v49 = objc_msgSend_highEfficiencyImageTypes(MEMORY[0x277D81200], v47, v48);
        v51 = objc_msgSend_tsu_conformsToAnyUTI_(v14, v50, v49);

        if (v51)
        {
          v7 = 4;
        }

        else
        {
          v7 = 5;
        }
      }
    }

LABEL_11:
  }

LABEL_12:

LABEL_13:
  v34 = *(a1 + 48);
  if (v7 < v34)
  {
    v34 = v7;
  }

  *(*(a1 + 32) + 16) = v34;
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t sub_2766FF384(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSDArchives.sos.pb.cc", a4);
  *&v4 = 0;
  unk_2812F5D70 = v4;
  TSDSOS::_BaseShapeStylePropertyChangeSetArchive_default_instance_ = &unk_2885756D0;
  if (atomic_load_explicit(scc_info_BaseShapeStylePropertyChangeSetArchive_TSDArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  unk_2812F5DAF = 0u;
  unk_2812F5DA0 = 0u;
  unk_2812F5D90 = 0u;
  unk_2812F5D80 = 0u;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSDSOS::_BaseShapeStylePropertyChangeSetArchive_default_instance_);
}

uint64_t sub_2766FF444(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSDArchives.sos.pb.cc", a4);
  *&v4 = 0;
  unk_2812F5DC8 = v4;
  TSDSOS::_MediaStylePropertyChangeSetArchive_default_instance_ = &unk_288575780;
  if (atomic_load_explicit(scc_info_MediaStylePropertyChangeSetArchive_TSDArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  dword_2812F5DF8 = 0;
  unk_2812F5DE8 = 0u;
  unk_2812F5DD8 = 0u;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSDSOS::_MediaStylePropertyChangeSetArchive_default_instance_);
}

uint64_t sub_2766FF500(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSDArchives.sos.pb.cc", a4);
  *&v4 = 0;
  unk_2812F5C68 = v4;
  TSDSOS::_SpecFillArchive_default_instance_ = &unk_288575360;
  if (atomic_load_explicit(scc_info_SpecFillArchive_TSDArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  unk_2812F5C88 = 0u;
  unk_2812F5C78 = 0u;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSDSOS::_SpecFillArchive_default_instance_);
}

uint64_t sub_2766FF5B8(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSDArchives.sos.pb.cc", a4);
  *&v4 = 0;
  unk_2812F5CA0 = v4;
  TSDSOS::_SpecLineEndArchive_default_instance_ = &unk_288575410;
  if (atomic_load_explicit(scc_info_SpecLineEndArchive_TSDArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812F5CB0 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSDSOS::_SpecLineEndArchive_default_instance_);
}

uint64_t sub_2766FF668(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSDArchives.sos.pb.cc", a4);
  *&v4 = 0;
  unk_2812F5CC0 = v4;
  TSDSOS::_SpecReflectionArchive_default_instance_ = &unk_2885754C0;
  if (atomic_load_explicit(scc_info_SpecReflectionArchive_TSDArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812F5CD0 = 0;
  unk_2812F5CD8 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSDSOS::_SpecReflectionArchive_default_instance_);
}

uint64_t sub_2766FF718(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSDArchives.sos.pb.cc", a4);
  *&v4 = 0;
  unk_2812F5BA0 = v4;
  TSDSOS::_SpecSetFillArchive_default_instance_ = &unk_288574FF0;
  if (atomic_load_explicit(scc_info_SpecSetFillArchive_TSDArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  byte_2812F5BB8 = 0;
  qword_2812F5BB0 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSDSOS::_SpecSetFillArchive_default_instance_);
}

uint64_t sub_2766FF7CC(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSDArchives.sos.pb.cc", a4);
  *&v4 = 0;
  unk_2812F5BC8 = v4;
  TSDSOS::_SpecSetLineEndArchive_default_instance_ = &unk_2885750A0;
  if (atomic_load_explicit(scc_info_SpecSetLineEndArchive_TSDArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  byte_2812F5BE0 = 0;
  qword_2812F5BD8 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSDSOS::_SpecSetLineEndArchive_default_instance_);
}

uint64_t sub_2766FF880(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSDArchives.sos.pb.cc", a4);
  *&v4 = 0;
  *algn_2812F5BF0 = v4;
  TSDSOS::_SpecSetReflectionArchive_default_instance_ = &unk_288575150;
  if (atomic_load_explicit(scc_info_SpecSetReflectionArchive_TSDArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  byte_2812F5C08 = 0;
  qword_2812F5C00 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSDSOS::_SpecSetReflectionArchive_default_instance_);
}

uint64_t sub_2766FF934(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSDArchives.sos.pb.cc", a4);
  *&v4 = 0;
  unk_2812F5C18 = v4;
  TSDSOS::_SpecSetShadowArchive_default_instance_ = &unk_288575200;
  if (atomic_load_explicit(scc_info_SpecSetShadowArchive_TSDArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  byte_2812F5C30 = 0;
  qword_2812F5C28 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSDSOS::_SpecSetShadowArchive_default_instance_);
}

uint64_t sub_2766FF9E8(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSDArchives.sos.pb.cc", a4);
  *&v4 = 0;
  unk_2812F5C40 = v4;
  TSDSOS::_SpecSetStrokeArchive_default_instance_ = &unk_2885752B0;
  if (atomic_load_explicit(scc_info_SpecSetStrokeArchive_TSDArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  byte_2812F5C58 = 0;
  qword_2812F5C50 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSDSOS::_SpecSetStrokeArchive_default_instance_);
}

uint64_t sub_2766FFA9C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSDArchives.sos.pb.cc", a4);
  *&v4 = 0;
  unk_2812F5CE8 = v4;
  TSDSOS::_SpecShadowArchive_default_instance_ = &unk_288575570;
  if (atomic_load_explicit(scc_info_SpecShadowArchive_TSDArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  unk_2812F5D18 = 0u;
  unk_2812F5D08 = 0u;
  unk_2812F5CF8 = 0u;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSDSOS::_SpecShadowArchive_default_instance_);
}

uint64_t sub_2766FFB58(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSDArchives.sos.pb.cc", a4);
  *&v4 = 0;
  unk_2812F5D30 = v4;
  TSDSOS::_SpecStrokeArchive_default_instance_ = &unk_288575620;
  if (atomic_load_explicit(scc_info_SpecStrokeArchive_TSDArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812F5D60 = 0;
  unk_2812F5D50 = 0u;
  unk_2812F5D40 = 0u;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSDSOS::_SpecStrokeArchive_default_instance_);
}

uint64_t *TSDSOS::SpecSetFillArchive::clear_fill(TSDSOS::SpecSetFillArchive *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSD::FillArchive::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSDSOS::SpecSetFillArchive *TSDSOS::SpecSetFillArchive::SpecSetFillArchive(TSDSOS::SpecSetFillArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_288574FF0;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_SpecSetFillArchive_TSDArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 32) = 0;
  *(this + 3) = 0;
  return this;
}

{
  *this = &unk_288574FF0;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_SpecSetFillArchive_TSDArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 32) = 0;
  *(this + 3) = 0;
  return this;
}

TSDSOS::SpecSetFillArchive *TSDSOS::SpecSetFillArchive::SpecSetFillArchive(TSDSOS::SpecSetFillArchive *this, const TSDSOS::SpecSetFillArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288574FF0;
  v5 = *(a2 + 4);
  *(this + 2) = v5;
  v6 = *(a2 + 1);
  if (v6)
  {
    sub_27670B0F8(v4, (v6 & 0xFFFFFFFFFFFFFFFELL) + 8);
    v5 = *(a2 + 4);
  }

  if (v5)
  {
    operator new();
  }

  *(this + 3) = 0;
  *(this + 32) = *(a2 + 32);
  return this;
}

void TSDSOS::SpecSetFillArchive::~SpecSetFillArchive(TSDSOS::SpecSetFillArchive *this)
{
  if (this != &TSDSOS::_SpecSetFillArchive_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      TSD::FillArchive::~FillArchive(v2);
      MEMORY[0x277C9C1D0]();
    }
  }

  sub_2766FFE58(this + 1);
}

{
  TSDSOS::SpecSetFillArchive::~SpecSetFillArchive(this);

  JUMPOUT(0x277C9C1D0);
}

uint64_t *sub_2766FFE58(uint64_t *result)
{
  v1 = *result;
  if (*result)
  {
    v2 = v1 & 0xFFFFFFFFFFFFFFFELL;
    if (!*(v1 & 0xFFFFFFFFFFFFFFFELL) && v2 != 0)
    {
      v4 = *(v2 + 8);
      if (v4 != *(v2 + 16))
      {
        google::protobuf::UnknownFieldSet::ClearFallback((v2 + 8));
        v4 = *(v2 + 8);
      }

      if (v4)
      {
        *(v2 + 16) = v4;
        operator delete(v4);
      }

      JUMPOUT(0x277C9C1D0);
    }
  }

  return result;
}

uint64_t *TSDSOS::SpecSetFillArchive::default_instance(TSDSOS::SpecSetFillArchive *this)
{
  if (atomic_load_explicit(scc_info_SpecSetFillArchive_TSDArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSDSOS::_SpecSetFillArchive_default_instance_;
}

uint64_t *TSDSOS::SpecSetFillArchive::Clear(uint64_t *this)
{
  v1 = this;
  if (this[2])
  {
    this = TSD::FillArchive::Clear(this[3]);
  }

  v3 = *(v1 + 8);
  v2 = v1 + 8;
  *(v2 + 24) = 0;
  *(v2 + 8) = 0;
  if (v3)
  {

    return sub_27670B144(v2);
  }

  return this;
}

google::protobuf::internal *TSDSOS::SpecSetFillArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v22 = a2;
  v5 = 0;
  if ((sub_27670AF08(a3, &v22) & 1) == 0)
  {
    while (1)
    {
      v7 = (v22 + 1);
      v8 = *v22;
      if ((*v22 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v22, (v9 - 128));
      v22 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_37;
      }

      v7 = TagFallback;
      v8 = v19;
LABEL_7:
      if (v8 >> 3 != 2)
      {
        if (v8 >> 3 == 1 && v8 == 10)
        {
          *(a1 + 16) |= 1u;
          v16 = *(a1 + 24);
          if (!v16)
          {
            v17 = *(a1 + 8);
            if (v17)
            {
              v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
            }

            v16 = google::protobuf::Arena::CreateMaybeMessage<TSD::FillArchive>(v17);
            *(a1 + 24) = v16;
            v7 = v22;
          }

          v12 = sub_276808E5C(a3, v16, v7);
        }

        else
        {
LABEL_12:
          if (v8)
          {
            v11 = (v8 & 7) == 4;
          }

          else
          {
            v11 = 1;
          }

          if (v11)
          {
            *(a3 + 80) = v8 - 1;
            goto LABEL_2;
          }

          if ((*(a1 + 8) & 1) == 0)
          {
            sub_27670AF80((a1 + 8));
          }

          v12 = google::protobuf::internal::UnknownFieldParse();
        }

        v22 = v12;
        if (!v12)
        {
          goto LABEL_37;
        }

        goto LABEL_30;
      }

      if (v8 != 16)
      {
        goto LABEL_12;
      }

      v5 |= 2u;
      v14 = (v7 + 1);
      v13 = *v7;
      if ((v13 & 0x8000000000000000) == 0)
      {
        goto LABEL_23;
      }

      v15 = *v14;
      v13 = (v15 << 7) + v13 - 128;
      if ((v15 & 0x80000000) == 0)
      {
        v14 = (v7 + 2);
LABEL_23:
        v22 = v14;
        *(a1 + 32) = v13 != 0;
        goto LABEL_30;
      }

      v20 = google::protobuf::internal::VarintParseSlow64(v7, v13);
      v22 = v20;
      *(a1 + 32) = v21 != 0;
      if (!v20)
      {
LABEL_37:
        v22 = 0;
        goto LABEL_2;
      }

LABEL_30:
      if (sub_27670AF08(a3, &v22))
      {
        goto LABEL_2;
      }
    }

    v7 = (v22 + 2);
LABEL_6:
    v22 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v22;
}

unsigned __int8 *TSDSOS::SpecSetFillArchive::_InternalSerialize(TSDSOS::SpecSetFillArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v6 = *(this + 4);
  if (v6)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v7 = *(this + 3);
    *a2 = 10;
    v8 = *(v7 + 11);
    if (v8 > 0x7F)
    {
      a2[1] = v8 | 0x80;
      v10 = v8 >> 7;
      if (v8 >> 14)
      {
        v9 = a2 + 3;
        do
        {
          *(v9 - 1) = v10 | 0x80;
          v11 = v10 >> 7;
          ++v9;
          v12 = v10 >> 14;
          v10 >>= 7;
        }

        while (v12);
        *(v9 - 1) = v11;
      }

      else
      {
        a2[2] = v10;
        v9 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v8;
      v9 = a2 + 2;
    }

    a2 = TSD::FillArchive::_InternalSerialize(v7, v9, a3);
  }

  if ((v6 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v13 = *(this + 32);
    *a2 = 16;
    a2[1] = v13;
    a2 += 2;
  }

  v14 = *(this + 1);
  if ((v14 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v14 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

uint64_t TSDSOS::SpecSetFillArchive::ByteSizeLong(TSDSOS::SpecSetFillArchive *this)
{
  v2 = *(this + 4);
  v3 = v2 & 2;
  if (v2)
  {
    v4 = TSD::FillArchive::ByteSizeLong(*(this + 3));
    v3 += v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  if (*(this + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(this + 5) = v3;
    return v3;
  }
}

void TSDSOS::SpecSetFillArchive::MergeFrom(TSDSOS::SpecSetFillArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    TSDSOS::SpecSetFillArchive::MergeFrom(this, v4);
  }

  else
  {

    MEMORY[0x2821EACE0](lpsrc, this);
  }
}

void TSDSOS::SpecSetFillArchive::MergeFrom(TSDSOS::SpecSetFillArchive *this, const TSDSOS::SpecSetFillArchive *a2)
{
  v4 = *(a2 + 1);
  if (v4)
  {
    sub_27670B0F8(this + 1, (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 4);
  if ((v5 & 3) != 0)
  {
    if (v5)
    {
      *(this + 4) |= 1u;
      v6 = *(this + 3);
      if (!v6)
      {
        v7 = *(this + 1);
        if (v7)
        {
          v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
        }

        v6 = google::protobuf::Arena::CreateMaybeMessage<TSD::FillArchive>(v7);
        *(this + 3) = v6;
      }

      if (*(a2 + 3))
      {
        v8 = *(a2 + 3);
      }

      else
      {
        v8 = &TSD::_FillArchive_default_instance_;
      }

      TSD::FillArchive::MergeFrom(v6, v8);
    }

    if ((v5 & 2) != 0)
    {
      *(this + 32) = *(a2 + 32);
    }

    *(this + 4) |= v5;
  }
}

void TSDSOS::SpecSetFillArchive::CopyFrom(TSDSOS::SpecSetFillArchive *this, const Message *a2)
{
  if (a2 != this)
  {
    TSDSOS::SpecSetFillArchive::Clear(this);

    TSDSOS::SpecSetFillArchive::MergeFrom(this, a2);
  }
}

void TSDSOS::SpecSetFillArchive::CopyFrom(TSDSOS::SpecSetFillArchive *this, const TSDSOS::SpecSetFillArchive *a2)
{
  if (a2 != this)
  {
    TSDSOS::SpecSetFillArchive::Clear(this);

    TSDSOS::SpecSetFillArchive::MergeFrom(this, a2);
  }
}

uint64_t TSDSOS::SpecSetFillArchive::IsInitialized(TSDSOS::SpecSetFillArchive *this)
{
  v1 = *(this + 4);
  if ((v1 & 2) == 0)
  {
    return 0;
  }

  if ((v1 & 1) == 0)
  {
    return 1;
  }

  result = TSD::FillArchive::IsInitialized(*(this + 3));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t *TSDSOS::SpecSetFillArchive::InternalSwap(TSDSOS::SpecSetFillArchive *this, TSDSOS::SpecSetFillArchive *a2)
{
  result = sub_276700610(this + 1, a2 + 1);
  v5 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v5;
  v6 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v6;
  LOBYTE(v6) = *(this + 32);
  *(this + 32) = *(a2 + 32);
  *(a2 + 32) = v6;
  return result;
}

uint64_t *sub_276700610(uint64_t *result, uint64_t *a2)
{
  v2 = result;
  v3 = *a2;
  if (*result)
  {
    if ((v3 & 1) == 0)
    {
      v4 = sub_27670AF80(a2);
      goto LABEL_6;
    }
  }

  else if ((v3 & 1) == 0)
  {
    return result;
  }

  v4 = ((v3 & 0xFFFFFFFFFFFFFFFELL) + 8);
LABEL_6:

  return sub_27670B194(v2, v4);
}

uint64_t *TSDSOS::SpecSetLineEndArchive::clear_line_end(TSDSOS::SpecSetLineEndArchive *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSD::LineEndArchive::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSDSOS::SpecSetLineEndArchive *TSDSOS::SpecSetLineEndArchive::SpecSetLineEndArchive(TSDSOS::SpecSetLineEndArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2885750A0;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_SpecSetLineEndArchive_TSDArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 32) = 0;
  *(this + 3) = 0;
  return this;
}

{
  *this = &unk_2885750A0;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_SpecSetLineEndArchive_TSDArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 32) = 0;
  *(this + 3) = 0;
  return this;
}

TSDSOS::SpecSetLineEndArchive *TSDSOS::SpecSetLineEndArchive::SpecSetLineEndArchive(TSDSOS::SpecSetLineEndArchive *this, const TSDSOS::SpecSetLineEndArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2885750A0;
  v5 = *(a2 + 4);
  *(this + 2) = v5;
  v6 = *(a2 + 1);
  if (v6)
  {
    sub_27670B0F8(v4, (v6 & 0xFFFFFFFFFFFFFFFELL) + 8);
    v5 = *(a2 + 4);
  }

  if (v5)
  {
    operator new();
  }

  *(this + 3) = 0;
  *(this + 32) = *(a2 + 32);
  return this;
}

void TSDSOS::SpecSetLineEndArchive::~SpecSetLineEndArchive(TSDSOS::SpecSetLineEndArchive *this)
{
  if (this != &TSDSOS::_SpecSetLineEndArchive_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      TSD::LineEndArchive::~LineEndArchive(v2);
      MEMORY[0x277C9C1D0]();
    }
  }

  sub_2766FFE58(this + 1);
}

{
  TSDSOS::SpecSetLineEndArchive::~SpecSetLineEndArchive(this);

  JUMPOUT(0x277C9C1D0);
}

uint64_t *TSDSOS::SpecSetLineEndArchive::default_instance(TSDSOS::SpecSetLineEndArchive *this)
{
  if (atomic_load_explicit(scc_info_SpecSetLineEndArchive_TSDArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSDSOS::_SpecSetLineEndArchive_default_instance_;
}

uint64_t *TSDSOS::SpecSetLineEndArchive::Clear(uint64_t *this)
{
  v1 = this;
  if (this[2])
  {
    this = TSD::LineEndArchive::Clear(this[3]);
  }

  v3 = *(v1 + 8);
  v2 = v1 + 8;
  *(v2 + 24) = 0;
  *(v2 + 8) = 0;
  if (v3)
  {

    return sub_27670B144(v2);
  }

  return this;
}

google::protobuf::internal *TSDSOS::SpecSetLineEndArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v22 = a2;
  v5 = 0;
  if ((sub_27670AF08(a3, &v22) & 1) == 0)
  {
    while (1)
    {
      v7 = (v22 + 1);
      v8 = *v22;
      if ((*v22 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v22, (v9 - 128));
      v22 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_37;
      }

      v7 = TagFallback;
      v8 = v19;
LABEL_7:
      if (v8 >> 3 != 2)
      {
        if (v8 >> 3 == 1 && v8 == 10)
        {
          *(a1 + 16) |= 1u;
          v16 = *(a1 + 24);
          if (!v16)
          {
            v17 = *(a1 + 8);
            if (v17)
            {
              v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
            }

            v16 = google::protobuf::Arena::CreateMaybeMessage<TSD::LineEndArchive>(v17);
            *(a1 + 24) = v16;
            v7 = v22;
          }

          v12 = sub_276808F2C(a3, v16, v7);
        }

        else
        {
LABEL_12:
          if (v8)
          {
            v11 = (v8 & 7) == 4;
          }

          else
          {
            v11 = 1;
          }

          if (v11)
          {
            *(a3 + 80) = v8 - 1;
            goto LABEL_2;
          }

          if ((*(a1 + 8) & 1) == 0)
          {
            sub_27670AF80((a1 + 8));
          }

          v12 = google::protobuf::internal::UnknownFieldParse();
        }

        v22 = v12;
        if (!v12)
        {
          goto LABEL_37;
        }

        goto LABEL_30;
      }

      if (v8 != 16)
      {
        goto LABEL_12;
      }

      v5 |= 2u;
      v14 = (v7 + 1);
      v13 = *v7;
      if ((v13 & 0x8000000000000000) == 0)
      {
        goto LABEL_23;
      }

      v15 = *v14;
      v13 = (v15 << 7) + v13 - 128;
      if ((v15 & 0x80000000) == 0)
      {
        v14 = (v7 + 2);
LABEL_23:
        v22 = v14;
        *(a1 + 32) = v13 != 0;
        goto LABEL_30;
      }

      v20 = google::protobuf::internal::VarintParseSlow64(v7, v13);
      v22 = v20;
      *(a1 + 32) = v21 != 0;
      if (!v20)
      {
LABEL_37:
        v22 = 0;
        goto LABEL_2;
      }

LABEL_30:
      if (sub_27670AF08(a3, &v22))
      {
        goto LABEL_2;
      }
    }

    v7 = (v22 + 2);
LABEL_6:
    v22 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v22;
}

unsigned __int8 *TSDSOS::SpecSetLineEndArchive::_InternalSerialize(TSDSOS::SpecSetLineEndArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v6 = *(this + 4);
  if (v6)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v7 = *(this + 3);
    *a2 = 10;
    v8 = *(v7 + 5);
    if (v8 > 0x7F)
    {
      a2[1] = v8 | 0x80;
      v10 = v8 >> 7;
      if (v8 >> 14)
      {
        v9 = a2 + 3;
        do
        {
          *(v9 - 1) = v10 | 0x80;
          v11 = v10 >> 7;
          ++v9;
          v12 = v10 >> 14;
          v10 >>= 7;
        }

        while (v12);
        *(v9 - 1) = v11;
      }

      else
      {
        a2[2] = v10;
        v9 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v8;
      v9 = a2 + 2;
    }

    a2 = TSD::LineEndArchive::_InternalSerialize(v7, v9, a3);
  }

  if ((v6 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v13 = *(this + 32);
    *a2 = 16;
    a2[1] = v13;
    a2 += 2;
  }

  v14 = *(this + 1);
  if ((v14 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v14 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

uint64_t TSDSOS::SpecSetLineEndArchive::ByteSizeLong(TSDSOS::SpecSetLineEndArchive *this)
{
  v2 = *(this + 4);
  v3 = v2 & 2;
  if (v2)
  {
    v4 = TSD::LineEndArchive::ByteSizeLong(*(this + 3));
    v3 += v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  if (*(this + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(this + 5) = v3;
    return v3;
  }
}

uint64_t TSDSOS::SpecSetLineEndArchive::MergeFrom(TSDSOS::SpecSetLineEndArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSDSOS::SpecSetLineEndArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSDSOS::SpecSetLineEndArchive::MergeFrom(uint64_t this, const TSDSOS::SpecSetLineEndArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_27670B0F8((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 4);
  if ((v5 & 3) != 0)
  {
    if (v5)
    {
      *(v3 + 16) |= 1u;
      v6 = *(v3 + 24);
      if (!v6)
      {
        v7 = *(v3 + 8);
        if (v7)
        {
          v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
        }

        v6 = google::protobuf::Arena::CreateMaybeMessage<TSD::LineEndArchive>(v7);
        *(v3 + 24) = v6;
      }

      if (*(a2 + 3))
      {
        v8 = *(a2 + 3);
      }

      else
      {
        v8 = &TSD::_LineEndArchive_default_instance_;
      }

      this = TSD::LineEndArchive::MergeFrom(v6, v8);
    }

    if ((v5 & 2) != 0)
    {
      *(v3 + 32) = *(a2 + 32);
    }

    *(v3 + 16) |= v5;
  }

  return this;
}

uint64_t *TSDSOS::SpecSetLineEndArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSDSOS::SpecSetLineEndArchive::Clear(this);

    return TSDSOS::SpecSetLineEndArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSDSOS::SpecSetLineEndArchive::CopyFrom(uint64_t *this, const TSDSOS::SpecSetLineEndArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSDSOS::SpecSetLineEndArchive::Clear(this);

    return TSDSOS::SpecSetLineEndArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSDSOS::SpecSetLineEndArchive::IsInitialized(TSDSOS::SpecSetLineEndArchive *this)
{
  v1 = *(this + 4);
  if ((v1 & 2) == 0)
  {
    return 0;
  }

  if ((v1 & 1) == 0)
  {
    return 1;
  }

  result = TSD::LineEndArchive::IsInitialized(*(this + 3));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t *TSDSOS::SpecSetLineEndArchive::InternalSwap(TSDSOS::SpecSetLineEndArchive *this, TSDSOS::SpecSetLineEndArchive *a2)
{
  result = sub_276700610(this + 1, a2 + 1);
  v5 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v5;
  v6 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v6;
  LOBYTE(v6) = *(this + 32);
  *(this + 32) = *(a2 + 32);
  *(a2 + 32) = v6;
  return result;
}

uint64_t *TSDSOS::SpecSetReflectionArchive::clear_reflection(TSDSOS::SpecSetReflectionArchive *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSD::ReflectionArchive::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSDSOS::SpecSetReflectionArchive *TSDSOS::SpecSetReflectionArchive::SpecSetReflectionArchive(TSDSOS::SpecSetReflectionArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_288575150;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_SpecSetReflectionArchive_TSDArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 32) = 0;
  *(this + 3) = 0;
  return this;
}

{
  *this = &unk_288575150;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_SpecSetReflectionArchive_TSDArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 32) = 0;
  *(this + 3) = 0;
  return this;
}

TSDSOS::SpecSetReflectionArchive *TSDSOS::SpecSetReflectionArchive::SpecSetReflectionArchive(TSDSOS::SpecSetReflectionArchive *this, const TSDSOS::SpecSetReflectionArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288575150;
  v5 = *(a2 + 4);
  *(this + 2) = v5;
  v6 = *(a2 + 1);
  if (v6)
  {
    sub_27670B0F8(v4, (v6 & 0xFFFFFFFFFFFFFFFELL) + 8);
    v5 = *(a2 + 4);
  }

  if (v5)
  {
    operator new();
  }

  *(this + 3) = 0;
  *(this + 32) = *(a2 + 32);
  return this;
}

void TSDSOS::SpecSetReflectionArchive::~SpecSetReflectionArchive(TSDSOS::SpecSetReflectionArchive *this)
{
  if (this != &TSDSOS::_SpecSetReflectionArchive_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      TSD::ReflectionArchive::~ReflectionArchive(v2);
      MEMORY[0x277C9C1D0]();
    }
  }

  sub_2766FFE58(this + 1);
}

{
  TSDSOS::SpecSetReflectionArchive::~SpecSetReflectionArchive(this);

  JUMPOUT(0x277C9C1D0);
}

uint64_t *TSDSOS::SpecSetReflectionArchive::default_instance(TSDSOS::SpecSetReflectionArchive *this)
{
  if (atomic_load_explicit(scc_info_SpecSetReflectionArchive_TSDArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSDSOS::_SpecSetReflectionArchive_default_instance_;
}

uint64_t *TSDSOS::SpecSetReflectionArchive::Clear(uint64_t *this)
{
  v1 = this;
  if (this[2])
  {
    this = TSD::ReflectionArchive::Clear(this[3]);
  }

  v3 = *(v1 + 8);
  v2 = v1 + 8;
  *(v2 + 24) = 0;
  *(v2 + 8) = 0;
  if (v3)
  {

    return sub_27670B144(v2);
  }

  return this;
}

google::protobuf::internal *TSDSOS::SpecSetReflectionArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v22 = a2;
  v5 = 0;
  if ((sub_27670AF08(a3, &v22) & 1) == 0)
  {
    while (1)
    {
      v7 = (v22 + 1);
      v8 = *v22;
      if ((*v22 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v22, (v9 - 128));
      v22 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_37;
      }

      v7 = TagFallback;
      v8 = v19;
LABEL_7:
      if (v8 >> 3 != 2)
      {
        if (v8 >> 3 == 1 && v8 == 10)
        {
          *(a1 + 16) |= 1u;
          v16 = *(a1 + 24);
          if (!v16)
          {
            v17 = *(a1 + 8);
            if (v17)
            {
              v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
            }

            v16 = google::protobuf::Arena::CreateMaybeMessage<TSD::ReflectionArchive>(v17);
            *(a1 + 24) = v16;
            v7 = v22;
          }

          v12 = sub_276808FFC(a3, v16, v7);
        }

        else
        {
LABEL_12:
          if (v8)
          {
            v11 = (v8 & 7) == 4;
          }

          else
          {
            v11 = 1;
          }

          if (v11)
          {
            *(a3 + 80) = v8 - 1;
            goto LABEL_2;
          }

          if ((*(a1 + 8) & 1) == 0)
          {
            sub_27670AF80((a1 + 8));
          }

          v12 = google::protobuf::internal::UnknownFieldParse();
        }

        v22 = v12;
        if (!v12)
        {
          goto LABEL_37;
        }

        goto LABEL_30;
      }

      if (v8 != 16)
      {
        goto LABEL_12;
      }

      v5 |= 2u;
      v14 = (v7 + 1);
      v13 = *v7;
      if ((v13 & 0x8000000000000000) == 0)
      {
        goto LABEL_23;
      }

      v15 = *v14;
      v13 = (v15 << 7) + v13 - 128;
      if ((v15 & 0x80000000) == 0)
      {
        v14 = (v7 + 2);
LABEL_23:
        v22 = v14;
        *(a1 + 32) = v13 != 0;
        goto LABEL_30;
      }

      v20 = google::protobuf::internal::VarintParseSlow64(v7, v13);
      v22 = v20;
      *(a1 + 32) = v21 != 0;
      if (!v20)
      {
LABEL_37:
        v22 = 0;
        goto LABEL_2;
      }

LABEL_30:
      if (sub_27670AF08(a3, &v22))
      {
        goto LABEL_2;
      }
    }

    v7 = (v22 + 2);
LABEL_6:
    v22 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v22;
}

unsigned __int8 *TSDSOS::SpecSetReflectionArchive::_InternalSerialize(TSDSOS::SpecSetReflectionArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v6 = *(this + 4);
  if (v6)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v7 = *(this + 3);
    *a2 = 10;
    v8 = *(v7 + 5);
    if (v8 > 0x7F)
    {
      a2[1] = v8 | 0x80;
      v10 = v8 >> 7;
      if (v8 >> 14)
      {
        v9 = a2 + 3;
        do
        {
          *(v9 - 1) = v10 | 0x80;
          v11 = v10 >> 7;
          ++v9;
          v12 = v10 >> 14;
          v10 >>= 7;
        }

        while (v12);
        *(v9 - 1) = v11;
      }

      else
      {
        a2[2] = v10;
        v9 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v8;
      v9 = a2 + 2;
    }

    a2 = TSD::ReflectionArchive::_InternalSerialize(v7, v9, a3, a4);
  }

  if ((v6 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v13 = *(this + 32);
    *a2 = 16;
    a2[1] = v13;
    a2 += 2;
  }

  v14 = *(this + 1);
  if ((v14 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v14 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

uint64_t TSDSOS::SpecSetReflectionArchive::ByteSizeLong(TSDSOS::SpecSetReflectionArchive *this)
{
  v2 = *(this + 4);
  v3 = v2 & 2;
  if (v2)
  {
    v4 = TSD::ReflectionArchive::ByteSizeLong(*(this + 3));
    v3 += v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  if (*(this + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(this + 5) = v3;
    return v3;
  }
}

void TSDSOS::SpecSetReflectionArchive::MergeFrom(TSDSOS::SpecSetReflectionArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    TSDSOS::SpecSetReflectionArchive::MergeFrom(this, v4);
  }

  else
  {

    MEMORY[0x2821EACE0](lpsrc, this);
  }
}

void TSDSOS::SpecSetReflectionArchive::MergeFrom(TSDSOS::SpecSetReflectionArchive *this, const TSDSOS::SpecSetReflectionArchive *a2)
{
  v4 = *(a2 + 1);
  if (v4)
  {
    sub_27670B0F8(this + 1, (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 4);
  if ((v5 & 3) != 0)
  {
    if (v5)
    {
      *(this + 4) |= 1u;
      v6 = *(this + 3);
      if (!v6)
      {
        v7 = *(this + 1);
        if (v7)
        {
          v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
        }

        v6 = google::protobuf::Arena::CreateMaybeMessage<TSD::ReflectionArchive>(v7);
        *(this + 3) = v6;
      }

      if (*(a2 + 3))
      {
        v8 = *(a2 + 3);
      }

      else
      {
        v8 = &TSD::_ReflectionArchive_default_instance_;
      }

      TSD::ReflectionArchive::MergeFrom(v6, v8);
    }

    if ((v5 & 2) != 0)
    {
      *(this + 32) = *(a2 + 32);
    }

    *(this + 4) |= v5;
  }
}

void TSDSOS::SpecSetReflectionArchive::CopyFrom(TSDSOS::SpecSetReflectionArchive *this, const Message *a2)
{
  if (a2 != this)
  {
    TSDSOS::SpecSetReflectionArchive::Clear(this);

    TSDSOS::SpecSetReflectionArchive::MergeFrom(this, a2);
  }
}

void TSDSOS::SpecSetReflectionArchive::CopyFrom(TSDSOS::SpecSetReflectionArchive *this, const TSDSOS::SpecSetReflectionArchive *a2)
{
  if (a2 != this)
  {
    TSDSOS::SpecSetReflectionArchive::Clear(this);

    TSDSOS::SpecSetReflectionArchive::MergeFrom(this, a2);
  }
}

uint64_t *TSDSOS::SpecSetReflectionArchive::InternalSwap(TSDSOS::SpecSetReflectionArchive *this, TSDSOS::SpecSetReflectionArchive *a2)
{
  result = sub_276700610(this + 1, a2 + 1);
  v5 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v5;
  v6 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v6;
  LOBYTE(v6) = *(this + 32);
  *(this + 32) = *(a2 + 32);
  *(a2 + 32) = v6;
  return result;
}

uint64_t *TSDSOS::SpecSetShadowArchive::clear_shadow(TSDSOS::SpecSetShadowArchive *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSD::ShadowArchive::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSDSOS::SpecSetShadowArchive *TSDSOS::SpecSetShadowArchive::SpecSetShadowArchive(TSDSOS::SpecSetShadowArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_288575200;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_SpecSetShadowArchive_TSDArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 32) = 0;
  *(this + 3) = 0;
  return this;
}

{
  *this = &unk_288575200;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_SpecSetShadowArchive_TSDArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 32) = 0;
  *(this + 3) = 0;
  return this;
}

TSDSOS::SpecSetShadowArchive *TSDSOS::SpecSetShadowArchive::SpecSetShadowArchive(TSDSOS::SpecSetShadowArchive *this, const TSDSOS::SpecSetShadowArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288575200;
  v5 = *(a2 + 4);
  *(this + 2) = v5;
  v6 = *(a2 + 1);
  if (v6)
  {
    sub_27670B0F8(v4, (v6 & 0xFFFFFFFFFFFFFFFELL) + 8);
    v5 = *(a2 + 4);
  }

  if (v5)
  {
    operator new();
  }

  *(this + 3) = 0;
  *(this + 32) = *(a2 + 32);
  return this;
}

void TSDSOS::SpecSetShadowArchive::~SpecSetShadowArchive(TSDSOS::SpecSetShadowArchive *this)
{
  if (this != &TSDSOS::_SpecSetShadowArchive_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      TSD::ShadowArchive::~ShadowArchive(v2);
      MEMORY[0x277C9C1D0]();
    }
  }

  sub_2766FFE58(this + 1);
}

{
  TSDSOS::SpecSetShadowArchive::~SpecSetShadowArchive(this);

  JUMPOUT(0x277C9C1D0);
}

uint64_t *TSDSOS::SpecSetShadowArchive::default_instance(TSDSOS::SpecSetShadowArchive *this)
{
  if (atomic_load_explicit(scc_info_SpecSetShadowArchive_TSDArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSDSOS::_SpecSetShadowArchive_default_instance_;
}

uint64_t *TSDSOS::SpecSetShadowArchive::Clear(uint64_t *this)
{
  v1 = this;
  if (this[2])
  {
    this = TSD::ShadowArchive::Clear(this[3]);
  }

  v3 = *(v1 + 8);
  v2 = v1 + 8;
  *(v2 + 24) = 0;
  *(v2 + 8) = 0;
  if (v3)
  {

    return sub_27670B144(v2);
  }

  return this;
}

google::protobuf::internal *TSDSOS::SpecSetShadowArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v22 = a2;
  v5 = 0;
  if ((sub_27670AF08(a3, &v22) & 1) == 0)
  {
    while (1)
    {
      v7 = (v22 + 1);
      v8 = *v22;
      if ((*v22 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v22, (v9 - 128));
      v22 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_37;
      }

      v7 = TagFallback;
      v8 = v19;
LABEL_7:
      if (v8 >> 3 != 2)
      {
        if (v8 >> 3 == 1 && v8 == 10)
        {
          *(a1 + 16) |= 1u;
          v16 = *(a1 + 24);
          if (!v16)
          {
            v17 = *(a1 + 8);
            if (v17)
            {
              v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
            }

            v16 = google::protobuf::Arena::CreateMaybeMessage<TSD::ShadowArchive>(v17);
            *(a1 + 24) = v16;
            v7 = v22;
          }

          v12 = sub_2768090CC(a3, v16, v7);
        }

        else
        {
LABEL_12:
          if (v8)
          {
            v11 = (v8 & 7) == 4;
          }

          else
          {
            v11 = 1;
          }

          if (v11)
          {
            *(a3 + 80) = v8 - 1;
            goto LABEL_2;
          }

          if ((*(a1 + 8) & 1) == 0)
          {
            sub_27670AF80((a1 + 8));
          }

          v12 = google::protobuf::internal::UnknownFieldParse();
        }

        v22 = v12;
        if (!v12)
        {
          goto LABEL_37;
        }

        goto LABEL_30;
      }

      if (v8 != 16)
      {
        goto LABEL_12;
      }

      v5 |= 2u;
      v14 = (v7 + 1);
      v13 = *v7;
      if ((v13 & 0x8000000000000000) == 0)
      {
        goto LABEL_23;
      }

      v15 = *v14;
      v13 = (v15 << 7) + v13 - 128;
      if ((v15 & 0x80000000) == 0)
      {
        v14 = (v7 + 2);
LABEL_23:
        v22 = v14;
        *(a1 + 32) = v13 != 0;
        goto LABEL_30;
      }

      v20 = google::protobuf::internal::VarintParseSlow64(v7, v13);
      v22 = v20;
      *(a1 + 32) = v21 != 0;
      if (!v20)
      {
LABEL_37:
        v22 = 0;
        goto LABEL_2;
      }

LABEL_30:
      if (sub_27670AF08(a3, &v22))
      {
        goto LABEL_2;
      }
    }

    v7 = (v22 + 2);
LABEL_6:
    v22 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v22;
}

unsigned __int8 *TSDSOS::SpecSetShadowArchive::_InternalSerialize(TSDSOS::SpecSetShadowArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v6 = *(this + 4);
  if (v6)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v7 = *(this + 3);
    *a2 = 10;
    v8 = *(v7 + 5);
    if (v8 > 0x7F)
    {
      a2[1] = v8 | 0x80;
      v10 = v8 >> 7;
      if (v8 >> 14)
      {
        v9 = a2 + 3;
        do
        {
          *(v9 - 1) = v10 | 0x80;
          v11 = v10 >> 7;
          ++v9;
          v12 = v10 >> 14;
          v10 >>= 7;
        }

        while (v12);
        *(v9 - 1) = v11;
      }

      else
      {
        a2[2] = v10;
        v9 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v8;
      v9 = a2 + 2;
    }

    a2 = TSD::ShadowArchive::_InternalSerialize(v7, v9, a3, a4);
  }

  if ((v6 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v13 = *(this + 32);
    *a2 = 16;
    a2[1] = v13;
    a2 += 2;
  }

  v14 = *(this + 1);
  if ((v14 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v14 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

uint64_t TSDSOS::SpecSetShadowArchive::ByteSizeLong(TSDSOS::SpecSetShadowArchive *this)
{
  v2 = *(this + 4);
  v3 = v2 & 2;
  if (v2)
  {
    v4 = TSD::ShadowArchive::ByteSizeLong(*(this + 3));
    v3 += v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  if (*(this + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(this + 5) = v3;
    return v3;
  }
}

void TSDSOS::SpecSetShadowArchive::MergeFrom(TSDSOS::SpecSetShadowArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    TSDSOS::SpecSetShadowArchive::MergeFrom(this, v4);
  }

  else
  {

    MEMORY[0x2821EACE0](lpsrc, this);
  }
}

void TSDSOS::SpecSetShadowArchive::MergeFrom(TSDSOS::SpecSetShadowArchive *this, const TSDSOS::SpecSetShadowArchive *a2)
{
  v4 = *(a2 + 1);
  if (v4)
  {
    sub_27670B0F8(this + 1, (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 4);
  if ((v5 & 3) != 0)
  {
    if (v5)
    {
      *(this + 4) |= 1u;
      v6 = *(this + 3);
      if (!v6)
      {
        v7 = *(this + 1);
        if (v7)
        {
          v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
        }

        v6 = google::protobuf::Arena::CreateMaybeMessage<TSD::ShadowArchive>(v7);
        *(this + 3) = v6;
      }

      if (*(a2 + 3))
      {
        v8 = *(a2 + 3);
      }

      else
      {
        v8 = &TSD::_ShadowArchive_default_instance_;
      }

      TSD::ShadowArchive::MergeFrom(v6, v8);
    }

    if ((v5 & 2) != 0)
    {
      *(this + 32) = *(a2 + 32);
    }

    *(this + 4) |= v5;
  }
}

void TSDSOS::SpecSetShadowArchive::CopyFrom(TSDSOS::SpecSetShadowArchive *this, const Message *a2)
{
  if (a2 != this)
  {
    TSDSOS::SpecSetShadowArchive::Clear(this);

    TSDSOS::SpecSetShadowArchive::MergeFrom(this, a2);
  }
}

void TSDSOS::SpecSetShadowArchive::CopyFrom(TSDSOS::SpecSetShadowArchive *this, const TSDSOS::SpecSetShadowArchive *a2)
{
  if (a2 != this)
  {
    TSDSOS::SpecSetShadowArchive::Clear(this);

    TSDSOS::SpecSetShadowArchive::MergeFrom(this, a2);
  }
}

uint64_t TSDSOS::SpecSetShadowArchive::IsInitialized(TSDSOS::SpecSetShadowArchive *this)
{
  v1 = *(this + 4);
  if ((v1 & 2) == 0)
  {
    return 0;
  }

  if ((v1 & 1) == 0)
  {
    return 1;
  }

  result = TSD::ShadowArchive::IsInitialized(*(this + 3));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t *TSDSOS::SpecSetShadowArchive::InternalSwap(TSDSOS::SpecSetShadowArchive *this, TSDSOS::SpecSetShadowArchive *a2)
{
  result = sub_276700610(this + 1, a2 + 1);
  v5 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v5;
  v6 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v6;
  LOBYTE(v6) = *(this + 32);
  *(this + 32) = *(a2 + 32);
  *(a2 + 32) = v6;
  return result;
}

uint64_t *TSDSOS::SpecSetStrokeArchive::clear_stroke(TSDSOS::SpecSetStrokeArchive *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSD::StrokeArchive::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSDSOS::SpecSetStrokeArchive *TSDSOS::SpecSetStrokeArchive::SpecSetStrokeArchive(TSDSOS::SpecSetStrokeArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2885752B0;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_SpecSetStrokeArchive_TSDArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 32) = 0;
  *(this + 3) = 0;
  return this;
}

{
  *this = &unk_2885752B0;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_SpecSetStrokeArchive_TSDArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 32) = 0;
  *(this + 3) = 0;
  return this;
}

TSDSOS::SpecSetStrokeArchive *TSDSOS::SpecSetStrokeArchive::SpecSetStrokeArchive(TSDSOS::SpecSetStrokeArchive *this, const TSDSOS::SpecSetStrokeArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2885752B0;
  v5 = *(a2 + 4);
  *(this + 2) = v5;
  v6 = *(a2 + 1);
  if (v6)
  {
    sub_27670B0F8(v4, (v6 & 0xFFFFFFFFFFFFFFFELL) + 8);
    v5 = *(a2 + 4);
  }

  if (v5)
  {
    operator new();
  }

  *(this + 3) = 0;
  *(this + 32) = *(a2 + 32);
  return this;
}

void TSDSOS::SpecSetStrokeArchive::~SpecSetStrokeArchive(TSDSOS::SpecSetStrokeArchive *this)
{
  if (this != &TSDSOS::_SpecSetStrokeArchive_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      TSD::StrokeArchive::~StrokeArchive(v2);
      MEMORY[0x277C9C1D0]();
    }
  }

  sub_2766FFE58(this + 1);
}

{
  TSDSOS::SpecSetStrokeArchive::~SpecSetStrokeArchive(this);

  JUMPOUT(0x277C9C1D0);
}

uint64_t *TSDSOS::SpecSetStrokeArchive::default_instance(TSDSOS::SpecSetStrokeArchive *this)
{
  if (atomic_load_explicit(scc_info_SpecSetStrokeArchive_TSDArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSDSOS::_SpecSetStrokeArchive_default_instance_;
}

uint64_t *TSDSOS::SpecSetStrokeArchive::Clear(uint64_t *this)
{
  v1 = this;
  if (this[2])
  {
    this = TSD::StrokeArchive::Clear(this[3]);
  }

  v3 = *(v1 + 8);
  v2 = v1 + 8;
  *(v2 + 24) = 0;
  *(v2 + 8) = 0;
  if (v3)
  {

    return sub_27670B144(v2);
  }

  return this;
}

google::protobuf::internal *TSDSOS::SpecSetStrokeArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v22 = a2;
  v5 = 0;
  if ((sub_27670AF08(a3, &v22) & 1) == 0)
  {
    while (1)
    {
      v7 = (v22 + 1);
      v8 = *v22;
      if ((*v22 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v22, (v9 - 128));
      v22 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_37;
      }

      v7 = TagFallback;
      v8 = v19;
LABEL_7:
      if (v8 >> 3 != 2)
      {
        if (v8 >> 3 == 1 && v8 == 10)
        {
          *(a1 + 16) |= 1u;
          v16 = *(a1 + 24);
          if (!v16)
          {
            v17 = *(a1 + 8);
            if (v17)
            {
              v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
            }

            v16 = google::protobuf::Arena::CreateMaybeMessage<TSD::StrokeArchive>(v17);
            *(a1 + 24) = v16;
            v7 = v22;
          }

          v12 = sub_27680919C(a3, v16, v7);
        }

        else
        {
LABEL_12:
          if (v8)
          {
            v11 = (v8 & 7) == 4;
          }

          else
          {
            v11 = 1;
          }

          if (v11)
          {
            *(a3 + 80) = v8 - 1;
            goto LABEL_2;
          }

          if ((*(a1 + 8) & 1) == 0)
          {
            sub_27670AF80((a1 + 8));
          }

          v12 = google::protobuf::internal::UnknownFieldParse();
        }

        v22 = v12;
        if (!v12)
        {
          goto LABEL_37;
        }

        goto LABEL_30;
      }

      if (v8 != 16)
      {
        goto LABEL_12;
      }

      v5 |= 2u;
      v14 = (v7 + 1);
      v13 = *v7;
      if ((v13 & 0x8000000000000000) == 0)
      {
        goto LABEL_23;
      }

      v15 = *v14;
      v13 = (v15 << 7) + v13 - 128;
      if ((v15 & 0x80000000) == 0)
      {
        v14 = (v7 + 2);
LABEL_23:
        v22 = v14;
        *(a1 + 32) = v13 != 0;
        goto LABEL_30;
      }

      v20 = google::protobuf::internal::VarintParseSlow64(v7, v13);
      v22 = v20;
      *(a1 + 32) = v21 != 0;
      if (!v20)
      {
LABEL_37:
        v22 = 0;
        goto LABEL_2;
      }

LABEL_30:
      if (sub_27670AF08(a3, &v22))
      {
        goto LABEL_2;
      }
    }

    v7 = (v22 + 2);
LABEL_6:
    v22 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v22;
}

unsigned __int8 *TSDSOS::SpecSetStrokeArchive::_InternalSerialize(TSDSOS::SpecSetStrokeArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v6 = *(this + 4);
  if (v6)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v7 = *(this + 3);
    *a2 = 10;
    v8 = *(v7 + 5);
    if (v8 > 0x7F)
    {
      a2[1] = v8 | 0x80;
      v10 = v8 >> 7;
      if (v8 >> 14)
      {
        v9 = a2 + 3;
        do
        {
          *(v9 - 1) = v10 | 0x80;
          v11 = v10 >> 7;
          ++v9;
          v12 = v10 >> 14;
          v10 >>= 7;
        }

        while (v12);
        *(v9 - 1) = v11;
      }

      else
      {
        a2[2] = v10;
        v9 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v8;
      v9 = a2 + 2;
    }

    a2 = TSD::StrokeArchive::_InternalSerialize(v7, v9, a3, a4);
  }

  if ((v6 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v13 = *(this + 32);
    *a2 = 16;
    a2[1] = v13;
    a2 += 2;
  }

  v14 = *(this + 1);
  if ((v14 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v14 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

uint64_t TSDSOS::SpecSetStrokeArchive::ByteSizeLong(TSDSOS::SpecSetStrokeArchive *this)
{
  v2 = *(this + 4);
  v3 = v2 & 2;
  if (v2)
  {
    v4 = TSD::StrokeArchive::ByteSizeLong(*(this + 3));
    v3 += v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  if (*(this + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(this + 5) = v3;
    return v3;
  }
}

void TSDSOS::SpecSetStrokeArchive::MergeFrom(TSDSOS::SpecSetStrokeArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    TSDSOS::SpecSetStrokeArchive::MergeFrom(this, v4);
  }

  else
  {

    MEMORY[0x2821EACE0](lpsrc, this);
  }
}

void TSDSOS::SpecSetStrokeArchive::MergeFrom(TSDSOS::SpecSetStrokeArchive *this, const TSDSOS::SpecSetStrokeArchive *a2)
{
  v4 = *(a2 + 1);
  if (v4)
  {
    sub_27670B0F8(this + 1, (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 4);
  if ((v5 & 3) != 0)
  {
    if (v5)
    {
      *(this + 4) |= 1u;
      v6 = *(this + 3);
      if (!v6)
      {
        v7 = *(this + 1);
        if (v7)
        {
          v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
        }

        v6 = google::protobuf::Arena::CreateMaybeMessage<TSD::StrokeArchive>(v7);
        *(this + 3) = v6;
      }

      if (*(a2 + 3))
      {
        v8 = *(a2 + 3);
      }

      else
      {
        v8 = &TSD::_StrokeArchive_default_instance_;
      }

      TSD::StrokeArchive::MergeFrom(v6, v8);
    }

    if ((v5 & 2) != 0)
    {
      *(this + 32) = *(a2 + 32);
    }

    *(this + 4) |= v5;
  }
}

void TSDSOS::SpecSetStrokeArchive::CopyFrom(TSDSOS::SpecSetStrokeArchive *this, const Message *a2)
{
  if (a2 != this)
  {
    TSDSOS::SpecSetStrokeArchive::Clear(this);

    TSDSOS::SpecSetStrokeArchive::MergeFrom(this, a2);
  }
}

void TSDSOS::SpecSetStrokeArchive::CopyFrom(TSDSOS::SpecSetStrokeArchive *this, const TSDSOS::SpecSetStrokeArchive *a2)
{
  if (a2 != this)
  {
    TSDSOS::SpecSetStrokeArchive::Clear(this);

    TSDSOS::SpecSetStrokeArchive::MergeFrom(this, a2);
  }
}

uint64_t TSDSOS::SpecSetStrokeArchive::IsInitialized(TSDSOS::SpecSetStrokeArchive *this)
{
  v1 = *(this + 4);
  if ((v1 & 2) == 0)
  {
    return 0;
  }

  if ((v1 & 1) == 0)
  {
    return 1;
  }

  result = TSD::StrokeArchive::IsInitialized(*(this + 3));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t *TSDSOS::SpecSetStrokeArchive::InternalSwap(TSDSOS::SpecSetStrokeArchive *this, TSDSOS::SpecSetStrokeArchive *a2)
{
  result = sub_276700610(this + 1, a2 + 1);
  v5 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v5;
  v6 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v6;
  LOBYTE(v6) = *(this + 32);
  *(this + 32) = *(a2 + 32);
  *(a2 + 32) = v6;
  return result;
}

uint64_t *TSDSOS::SpecFillArchive::clear_spec_color_fill_set_color(TSDSOS::SpecFillArchive *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSD::SpecColorFillSetColorArchive::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

uint64_t *TSDSOS::SpecFillArchive::clear_spec_gradient_fill_set_angle(TSDSOS::SpecFillArchive *this)
{
  result = *(this + 4);
  if (result)
  {
    result = TSD::SpecGradientFillSetAngleArchive::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

uint64_t *TSDSOS::SpecFillArchive::clear_spec_image_fill_set_technique(TSDSOS::SpecFillArchive *this)
{
  result = *(this + 5);
  if (result)
  {
    result = TSD::SpecImageFillSetTechniqueArchive::Clear(result);
  }

  *(this + 4) &= ~4u;
  return result;
}

TSDSOS::SpecFillArchive *TSDSOS::SpecFillArchive::SpecFillArchive(TSDSOS::SpecFillArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_288575360;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_SpecFillArchive_TSDArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 40) = 0u;
  *(this + 24) = 0u;
  return this;
}

{
  *this = &unk_288575360;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_SpecFillArchive_TSDArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 40) = 0u;
  *(this + 24) = 0u;
  return this;
}

TSDSOS::SpecFillArchive *TSDSOS::SpecFillArchive::SpecFillArchive(TSDSOS::SpecFillArchive *this, const TSDSOS::SpecFillArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288575360;
  v5 = *(a2 + 4);
  *(this + 2) = v5;
  v6 = *(a2 + 1);
  if (v6)
  {
    sub_27670B0F8(v4, (v6 & 0xFFFFFFFFFFFFFFFELL) + 8);
    v5 = *(a2 + 4);
  }

  if (v5)
  {
    operator new();
  }

  *(this + 3) = 0;
  if ((v5 & 2) != 0)
  {
    operator new();
  }

  *(this + 4) = 0;
  if ((v5 & 4) != 0)
  {
    operator new();
  }

  *(this + 5) = 0;
  if ((v5 & 8) != 0)
  {
    operator new();
  }

  *(this + 6) = 0;
  return this;
}

void TSDSOS::SpecFillArchive::~SpecFillArchive(TSDSOS::SpecFillArchive *this)
{
  sub_276703064(this);
  sub_2766FFE58(this + 1);
}

{
  TSDSOS::SpecFillArchive::~SpecFillArchive(this);

  JUMPOUT(0x277C9C1D0);
}

uint64_t *sub_276703064(uint64_t *result)
{
  if (result != &TSDSOS::_SpecFillArchive_default_instance_)
  {
    v1 = result;
    v2 = result[3];
    if (v2)
    {
      TSD::SpecColorFillSetColorArchive::~SpecColorFillSetColorArchive(v2);
      MEMORY[0x277C9C1D0]();
    }

    v3 = v1[4];
    if (v3)
    {
      TSD::SpecGradientFillSetAngleArchive::~SpecGradientFillSetAngleArchive(v3);
      MEMORY[0x277C9C1D0]();
    }

    v4 = v1[5];
    if (v4)
    {
      TSD::SpecImageFillSetTechniqueArchive::~SpecImageFillSetTechniqueArchive(v4);
      MEMORY[0x277C9C1D0]();
    }

    result = v1[6];
    if (result)
    {
      TSDSOS::SpecSetFillArchive::~SpecSetFillArchive(result);

      JUMPOUT(0x277C9C1D0);
    }
  }

  return result;
}

uint64_t *TSDSOS::SpecFillArchive::default_instance(TSDSOS::SpecFillArchive *this)
{
  if (atomic_load_explicit(scc_info_SpecFillArchive_TSDArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSDSOS::_SpecFillArchive_default_instance_;
}

uint64_t *TSDSOS::SpecFillArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 4);
  if ((v2 & 0xF) == 0)
  {
    goto LABEL_7;
  }

  if ((v2 & 1) == 0)
  {
    if ((v2 & 2) == 0)
    {
      goto LABEL_4;
    }

LABEL_12:
    this = TSD::SpecGradientFillSetAngleArchive::Clear(*(v1 + 32));
    if ((v2 & 4) == 0)
    {
LABEL_5:
      if ((v2 & 8) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    goto LABEL_13;
  }

  this = TSD::SpecColorFillSetColorArchive::Clear(this[3]);
  if ((v2 & 2) != 0)
  {
    goto LABEL_12;
  }

LABEL_4:
  if ((v2 & 4) == 0)
  {
    goto LABEL_5;
  }

LABEL_13:
  this = TSD::SpecImageFillSetTechniqueArchive::Clear(*(v1 + 40));
  if ((v2 & 8) != 0)
  {
LABEL_6:
    this = TSDSOS::SpecSetFillArchive::Clear(*(v1 + 48));
  }

LABEL_7:
  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_27670B144(v3);
  }

  return this;
}

google::protobuf::internal *TSDSOS::SpecFillArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v23 = a2;
  while ((sub_27670AF08(a3, &v23) & 1) == 0)
  {
    v5 = (v23 + 1);
    v6 = *v23;
    if ((*v23 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v7 = v6 + (*v5 << 7);
    v6 = v7 - 128;
    if ((*v5 & 0x80000000) == 0)
    {
      v5 = (v23 + 2);
LABEL_6:
      v23 = v5;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v23, (v7 - 128));
    v23 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v5 = TagFallback;
    v6 = v21;
LABEL_7:
    v8 = v6 >> 3;
    if (v6 >> 3 > 2)
    {
      if (v8 == 3)
      {
        if (v6 != 26)
        {
          goto LABEL_39;
        }

        *(a1 + 16) |= 4u;
        v17 = *(a1 + 40);
        if (!v17)
        {
          v18 = *(a1 + 8);
          if (v18)
          {
            v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
          }

          v17 = google::protobuf::Arena::CreateMaybeMessage<TSD::SpecImageFillSetTechniqueArchive>(v18);
          *(a1 + 40) = v17;
          v5 = v23;
        }

        v12 = sub_27680940C(a3, v17, v5);
      }

      else
      {
        if (v8 != 4 || v6 != 34)
        {
          goto LABEL_39;
        }

        *(a1 + 16) |= 8u;
        v13 = *(a1 + 48);
        if (!v13)
        {
          v14 = *(a1 + 8);
          if (v14)
          {
            v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
          }

          v13 = google::protobuf::Arena::CreateMaybeMessage<TSDSOS::SpecSetFillArchive>(v14);
          *(a1 + 48) = v13;
          v5 = v23;
        }

        v12 = sub_2768094DC(a3, v13, v5);
      }
    }

    else if (v8 == 1)
    {
      if (v6 != 10)
      {
        goto LABEL_39;
      }

      *(a1 + 16) |= 1u;
      v15 = *(a1 + 24);
      if (!v15)
      {
        v16 = *(a1 + 8);
        if (v16)
        {
          v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
        }

        v15 = google::protobuf::Arena::CreateMaybeMessage<TSD::SpecColorFillSetColorArchive>(v16);
        *(a1 + 24) = v15;
        v5 = v23;
      }

      v12 = sub_27680926C(a3, v15, v5);
    }

    else
    {
      if (v8 != 2 || v6 != 18)
      {
LABEL_39:
        if (v6)
        {
          v19 = (v6 & 7) == 4;
        }

        else
        {
          v19 = 1;
        }

        if (v19)
        {
          *(a3 + 80) = v6 - 1;
          return v23;
        }

        if ((*(a1 + 8) & 1) == 0)
        {
          sub_27670AF80((a1 + 8));
        }

        v12 = google::protobuf::internal::UnknownFieldParse();
        goto LABEL_46;
      }

      *(a1 + 16) |= 2u;
      v10 = *(a1 + 32);
      if (!v10)
      {
        v11 = *(a1 + 8);
        if (v11)
        {
          v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
        }

        v10 = google::protobuf::Arena::CreateMaybeMessage<TSD::SpecGradientFillSetAngleArchive>(v11);
        *(a1 + 32) = v10;
        v5 = v23;
      }

      v12 = sub_27680933C(a3, v10, v5);
    }

LABEL_46:
    v23 = v12;
    if (!v12)
    {
      return 0;
    }
  }

  return v23;
}

unsigned __int8 *TSDSOS::SpecFillArchive::_InternalSerialize(TSDSOS::SpecFillArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v6 = *(this + 4);
  if (v6)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v7 = *(this + 3);
    *a2 = 10;
    v8 = *(v7 + 5);
    if (v8 > 0x7F)
    {
      a2[1] = v8 | 0x80;
      v10 = v8 >> 7;
      if (v8 >> 14)
      {
        v9 = a2 + 3;
        do
        {
          *(v9 - 1) = v10 | 0x80;
          v11 = v10 >> 7;
          ++v9;
          v12 = v10 >> 14;
          v10 >>= 7;
        }

        while (v12);
        *(v9 - 1) = v11;
      }

      else
      {
        a2[2] = v10;
        v9 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v8;
      v9 = a2 + 2;
    }

    a2 = TSD::SpecColorFillSetColorArchive::_InternalSerialize(v7, v9, a3, a4);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_26;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v13 = *(this + 4);
  *a2 = 18;
  v14 = *(v13 + 5);
  if (v14 > 0x7F)
  {
    a2[1] = v14 | 0x80;
    v16 = v14 >> 7;
    if (v14 >> 14)
    {
      v15 = a2 + 3;
      do
      {
        *(v15 - 1) = v16 | 0x80;
        v17 = v16 >> 7;
        ++v15;
        v18 = v16 >> 14;
        v16 >>= 7;
      }

      while (v18);
      *(v15 - 1) = v17;
    }

    else
    {
      a2[2] = v16;
      v15 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v14;
    v15 = a2 + 2;
  }

  a2 = TSD::SpecGradientFillSetAngleArchive::_InternalSerialize(v13, v15, a3, a4);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_36;
  }

LABEL_26:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v19 = *(this + 5);
  *a2 = 26;
  v20 = *(v19 + 5);
  if (v20 > 0x7F)
  {
    a2[1] = v20 | 0x80;
    v22 = v20 >> 7;
    if (v20 >> 14)
    {
      v21 = a2 + 3;
      do
      {
        *(v21 - 1) = v22 | 0x80;
        v23 = v22 >> 7;
        ++v21;
        v24 = v22 >> 14;
        v22 >>= 7;
      }

      while (v24);
      *(v21 - 1) = v23;
    }

    else
    {
      a2[2] = v22;
      v21 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v20;
    v21 = a2 + 2;
  }

  a2 = TSD::SpecImageFillSetTechniqueArchive::_InternalSerialize(v19, v21, a3, a4);
  if ((v6 & 8) != 0)
  {
LABEL_36:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v25 = *(this + 6);
    *a2 = 34;
    v26 = *(v25 + 5);
    if (v26 > 0x7F)
    {
      a2[1] = v26 | 0x80;
      v28 = v26 >> 7;
      if (v26 >> 14)
      {
        v27 = a2 + 3;
        do
        {
          *(v27 - 1) = v28 | 0x80;
          v29 = v28 >> 7;
          ++v27;
          v30 = v28 >> 14;
          v28 >>= 7;
        }

        while (v30);
        *(v27 - 1) = v29;
      }

      else
      {
        a2[2] = v28;
        v27 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v26;
      v27 = a2 + 2;
    }

    a2 = TSDSOS::SpecSetFillArchive::_InternalSerialize(v25, v27, a3, a4);
  }

LABEL_46:
  v31 = *(this + 1);
  if ((v31 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v31 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

uint64_t TSDSOS::SpecFillArchive::ByteSizeLong(TSDSOS::SpecFillArchive *this)
{
  v2 = *(this + 4);
  if ((v2 & 0xF) == 0)
  {
    v3 = 0;
    goto LABEL_11;
  }

  if (v2)
  {
    v4 = TSD::SpecColorFillSetColorArchive::ByteSizeLong(*(this + 3));
    v3 = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v3 = 0;
  if ((v2 & 2) != 0)
  {
LABEL_7:
    v5 = TSD::SpecGradientFillSetAngleArchive::ByteSizeLong(*(this + 4));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_8:
  if ((v2 & 4) == 0)
  {
    if ((v2 & 8) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v8 = TSD::SpecImageFillSetTechniqueArchive::ByteSizeLong(*(this + 5));
  v3 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 8) != 0)
  {
LABEL_10:
    v6 = TSDSOS::SpecSetFillArchive::ByteSizeLong(*(this + 6));
    v3 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_11:
  if (*(this + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(this + 5) = v3;
    return v3;
  }
}

void TSDSOS::SpecFillArchive::MergeFrom(TSDSOS::SpecFillArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    TSDSOS::SpecFillArchive::MergeFrom(this, v4);
  }

  else
  {

    MEMORY[0x2821EACE0](lpsrc, this);
  }
}

void TSDSOS::SpecFillArchive::MergeFrom(TSDSOS::SpecFillArchive *this, const TSDSOS::SpecFillArchive *a2)
{
  v4 = *(a2 + 1);
  if (v4)
  {
    sub_27670B0F8(this + 1, (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 4);
  if ((v5 & 0xF) == 0)
  {
    return;
  }

  if ((v5 & 1) == 0)
  {
    if ((v5 & 2) == 0)
    {
      goto LABEL_6;
    }

LABEL_17:
    *(this + 4) |= 2u;
    v9 = *(this + 4);
    if (!v9)
    {
      v10 = *(this + 1);
      if (v10)
      {
        v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
      }

      v9 = google::protobuf::Arena::CreateMaybeMessage<TSD::SpecGradientFillSetAngleArchive>(v10);
      *(this + 4) = v9;
    }

    if (*(a2 + 4))
    {
      v11 = *(a2 + 4);
    }

    else
    {
      v11 = &TSD::_SpecGradientFillSetAngleArchive_default_instance_;
    }

    TSD::SpecGradientFillSetAngleArchive::MergeFrom(v9, v11);
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
        return;
      }

      goto LABEL_33;
    }

    goto LABEL_25;
  }

  *(this + 4) |= 1u;
  v6 = *(this + 3);
  if (!v6)
  {
    v7 = *(this + 1);
    if (v7)
    {
      v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
    }

    v6 = google::protobuf::Arena::CreateMaybeMessage<TSD::SpecColorFillSetColorArchive>(v7);
    *(this + 3) = v6;
  }

  if (*(a2 + 3))
  {
    v8 = *(a2 + 3);
  }

  else
  {
    v8 = &TSD::_SpecColorFillSetColorArchive_default_instance_;
  }

  TSD::SpecColorFillSetColorArchive::MergeFrom(v6, v8);
  if ((v5 & 2) != 0)
  {
    goto LABEL_17;
  }

LABEL_6:
  if ((v5 & 4) == 0)
  {
    goto LABEL_7;
  }

LABEL_25:
  *(this + 4) |= 4u;
  v12 = *(this + 5);
  if (!v12)
  {
    v13 = *(this + 1);
    if (v13)
    {
      v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
    }

    v12 = google::protobuf::Arena::CreateMaybeMessage<TSD::SpecImageFillSetTechniqueArchive>(v13);
    *(this + 5) = v12;
  }

  if (*(a2 + 5))
  {
    v14 = *(a2 + 5);
  }

  else
  {
    v14 = &TSD::_SpecImageFillSetTechniqueArchive_default_instance_;
  }

  TSD::SpecImageFillSetTechniqueArchive::MergeFrom(v12, v14);
  if ((v5 & 8) != 0)
  {
LABEL_33:
    *(this + 4) |= 8u;
    v15 = *(this + 6);
    if (!v15)
    {
      v16 = *(this + 1);
      if (v16)
      {
        v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
      }

      v15 = google::protobuf::Arena::CreateMaybeMessage<TSDSOS::SpecSetFillArchive>(v16);
      *(this + 6) = v15;
    }

    if (*(a2 + 6))
    {
      v17 = *(a2 + 6);
    }

    else
    {
      v17 = &TSDSOS::_SpecSetFillArchive_default_instance_;
    }

    TSDSOS::SpecSetFillArchive::MergeFrom(v15, v17);
  }
}

void TSDSOS::SpecFillArchive::CopyFrom(TSDSOS::SpecFillArchive *this, const Message *a2)
{
  if (a2 != this)
  {
    TSDSOS::SpecFillArchive::Clear(this);

    TSDSOS::SpecFillArchive::MergeFrom(this, a2);
  }
}

void TSDSOS::SpecFillArchive::CopyFrom(TSDSOS::SpecFillArchive *this, const TSDSOS::SpecFillArchive *a2)
{
  if (a2 != this)
  {
    TSDSOS::SpecFillArchive::Clear(this);

    TSDSOS::SpecFillArchive::MergeFrom(this, a2);
  }
}

uint64_t TSDSOS::SpecFillArchive::IsInitialized(TSDSOS::SpecFillArchive *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    result = TSD::SpecColorFillSetColorArchive::IsInitialized(*(this + 3));
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 2) != 0)
  {
    result = TSD::SpecGradientFillSetAngleArchive::IsInitialized(*(this + 4));
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 4) != 0)
  {
    result = TSD::SpecImageFillSetTechniqueArchive::IsInitialized(*(this + 5));
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  result = 1;
  if ((v2 & 8) != 0)
  {
    v4 = *(this + 6);
    v5 = *(v4 + 16);
    if ((v5 & 2) == 0 || (v5 & 1) != 0 && (TSD::FillArchive::IsInitialized(*(v4 + 24)) & 1) == 0)
    {
      return 0;
    }
  }

  return result;
}

__n128 TSDSOS::SpecFillArchive::InternalSwap(TSDSOS::SpecFillArchive *this, TSDSOS::SpecFillArchive *a2)
{
  sub_276700610(this + 1, a2 + 1);
  v4 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v4;
  v5 = *(this + 3);
  v6 = *(this + 4);
  *(this + 24) = *(a2 + 24);
  *(a2 + 3) = v5;
  *(a2 + 4) = v6;
  v7 = *(this + 5);
  v8 = *(this + 6);
  result = *(a2 + 40);
  *(this + 40) = result;
  *(a2 + 5) = v7;
  *(a2 + 6) = v8;
  return result;
}

TSDSOS::SpecLineEndArchive *TSDSOS::SpecLineEndArchive::SpecLineEndArchive(TSDSOS::SpecLineEndArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_288575410;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_SpecLineEndArchive_TSDArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  return this;
}

{
  *this = &unk_288575410;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_SpecLineEndArchive_TSDArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  return this;
}

TSDSOS::SpecLineEndArchive *TSDSOS::SpecLineEndArchive::SpecLineEndArchive(TSDSOS::SpecLineEndArchive *this, const TSDSOS::SpecLineEndArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288575410;
  v5 = *(a2 + 4);
  *(this + 2) = v5;
  v6 = *(a2 + 1);
  if (v6)
  {
    sub_27670B0F8(v4, (v6 & 0xFFFFFFFFFFFFFFFELL) + 8);
    v5 = *(a2 + 4);
  }

  if (v5)
  {
    operator new();
  }

  *(this + 3) = 0;
  return this;
}

void TSDSOS::SpecLineEndArchive::~SpecLineEndArchive(TSDSOS::SpecLineEndArchive *this)
{
  if (this != &TSDSOS::_SpecLineEndArchive_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      TSDSOS::SpecSetLineEndArchive::~SpecSetLineEndArchive(v2);
      MEMORY[0x277C9C1D0]();
    }
  }

  sub_2766FFE58(this + 1);
}

{
  TSDSOS::SpecLineEndArchive::~SpecLineEndArchive(this);

  JUMPOUT(0x277C9C1D0);
}

uint64_t *TSDSOS::SpecLineEndArchive::default_instance(TSDSOS::SpecLineEndArchive *this)
{
  if (atomic_load_explicit(scc_info_SpecLineEndArchive_TSDArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSDSOS::_SpecLineEndArchive_default_instance_;
}

uint64_t *TSDSOS::SpecLineEndArchive::Clear(uint64_t *this)
{
  v1 = this;
  if (this[2])
  {
    this = TSDSOS::SpecSetLineEndArchive::Clear(this[3]);
  }

  v3 = *(v1 + 8);
  v2 = v1 + 8;
  *(v2 + 8) = 0;
  if (v3)
  {

    return sub_27670B144(v2);
  }

  return this;
}

google::protobuf::internal *TSDSOS::SpecLineEndArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v15 = a2;
  while ((sub_27670AF08(a3, &v15) & 1) == 0)
  {
    v5 = (v15 + 1);
    v6 = *v15;
    if ((*v15 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v7 = v6 + (*v5 << 7);
    v6 = v7 - 128;
    if ((*v5 & 0x80000000) == 0)
    {
      v5 = (v15 + 2);
LABEL_6:
      v15 = v5;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v15, (v7 - 128));
    v15 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v5 = TagFallback;
    v6 = v13;
LABEL_7:
    if (v6 == 10)
    {
      *(a1 + 16) |= 1u;
      v10 = *(a1 + 24);
      if (!v10)
      {
        v11 = *(a1 + 8);
        if (v11)
        {
          v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
        }

        v10 = google::protobuf::Arena::CreateMaybeMessage<TSDSOS::SpecSetLineEndArchive>(v11);
        *(a1 + 24) = v10;
        v5 = v15;
      }

      v9 = sub_2768095AC(a3, v10, v5);
    }

    else
    {
      if (v6)
      {
        v8 = (v6 & 7) == 4;
      }

      else
      {
        v8 = 1;
      }

      if (v8)
      {
        *(a3 + 80) = v6 - 1;
        return v15;
      }

      if ((*(a1 + 8) & 1) == 0)
      {
        sub_27670AF80((a1 + 8));
      }

      v9 = google::protobuf::internal::UnknownFieldParse();
    }

    v15 = v9;
    if (!v9)
    {
      return 0;
    }
  }

  return v15;
}

unsigned __int8 *TSDSOS::SpecLineEndArchive::_InternalSerialize(TSDSOS::SpecLineEndArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  if (*(this + 16))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v6 = *(this + 3);
    *a2 = 10;
    v7 = *(v6 + 5);
    if (v7 > 0x7F)
    {
      a2[1] = v7 | 0x80;
      v9 = v7 >> 7;
      if (v7 >> 14)
      {
        v8 = a2 + 3;
        do
        {
          *(v8 - 1) = v9 | 0x80;
          v10 = v9 >> 7;
          ++v8;
          v11 = v9 >> 14;
          v9 >>= 7;
        }

        while (v11);
        *(v8 - 1) = v10;
      }

      else
      {
        a2[2] = v9;
        v8 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v7;
      v8 = a2 + 2;
    }

    a2 = TSDSOS::SpecSetLineEndArchive::_InternalSerialize(v6, v8, a3, a4);
  }

  v12 = *(this + 1);
  if ((v12 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v12 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

uint64_t TSDSOS::SpecLineEndArchive::ByteSizeLong(TSDSOS::SpecSetLineEndArchive **this)
{
  if (this[2])
  {
    v3 = TSDSOS::SpecSetLineEndArchive::ByteSizeLong(this[3]);
    v2 = v3 + ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  else
  {
    v2 = 0;
  }

  if (this[1])
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(this + 5) = v2;
    return v2;
  }
}

uint64_t TSDSOS::SpecLineEndArchive::MergeFrom(TSDSOS::SpecLineEndArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSDSOS::SpecLineEndArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSDSOS::SpecLineEndArchive::MergeFrom(uint64_t this, const TSDSOS::SpecLineEndArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_27670B0F8((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  if (*(a2 + 16))
  {
    v5 = *(a2 + 3);
    *(v3 + 16) |= 1u;
    v6 = *(v3 + 24);
    if (!v6)
    {
      v7 = *(v3 + 8);
      if (v7)
      {
        v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
      }

      v6 = google::protobuf::Arena::CreateMaybeMessage<TSDSOS::SpecSetLineEndArchive>(v7);
      *(v3 + 24) = v6;
      v5 = *(a2 + 3);
    }

    if (v5)
    {
      v8 = v5;
    }

    else
    {
      v8 = &TSDSOS::_SpecSetLineEndArchive_default_instance_;
    }

    return TSDSOS::SpecSetLineEndArchive::MergeFrom(v6, v8);
  }

  return this;
}

uint64_t *TSDSOS::SpecLineEndArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSDSOS::SpecLineEndArchive::Clear(this);

    return TSDSOS::SpecLineEndArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSDSOS::SpecLineEndArchive::CopyFrom(uint64_t *this, const TSDSOS::SpecLineEndArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSDSOS::SpecLineEndArchive::Clear(this);

    return TSDSOS::SpecLineEndArchive::MergeFrom(v4, a2);
  }

  return this;
}

BOOL TSDSOS::SpecLineEndArchive::IsInitialized(TSDSOS::SpecLineEndArchive *this)
{
  result = 1;
  if (*(this + 16))
  {
    v2 = *(this + 3);
    v3 = *(v2 + 16);
    if ((v3 & 2) == 0 || (v3 & 1) != 0 && (TSD::LineEndArchive::IsInitialized(*(v2 + 24)) & 1) == 0)
    {
      return 0;
    }
  }

  return result;
}

uint64_t *TSDSOS::SpecLineEndArchive::InternalSwap(TSDSOS::SpecLineEndArchive *this, TSDSOS::SpecLineEndArchive *a2)
{
  result = sub_276700610(this + 1, a2 + 1);
  v5 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v5;
  v6 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v6;
  return result;
}

uint64_t *TSDSOS::SpecReflectionArchive::clear_spec_reflection_set_opacity(TSDSOS::SpecReflectionArchive *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSD::SpecReflectionSetOpacityArchive::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSDSOS::SpecReflectionArchive *TSDSOS::SpecReflectionArchive::SpecReflectionArchive(TSDSOS::SpecReflectionArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2885754C0;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_SpecReflectionArchive_TSDArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  return this;
}

{
  *this = &unk_2885754C0;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_SpecReflectionArchive_TSDArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  return this;
}

TSDSOS::SpecReflectionArchive *TSDSOS::SpecReflectionArchive::SpecReflectionArchive(TSDSOS::SpecReflectionArchive *this, const TSDSOS::SpecReflectionArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2885754C0;
  v5 = *(a2 + 4);
  *(this + 2) = v5;
  v6 = *(a2 + 1);
  if (v6)
  {
    sub_27670B0F8(v4, (v6 & 0xFFFFFFFFFFFFFFFELL) + 8);
    v5 = *(a2 + 4);
  }

  if (v5)
  {
    operator new();
  }

  *(this + 3) = 0;
  if ((v5 & 2) != 0)
  {
    operator new();
  }

  *(this + 4) = 0;
  return this;
}

void TSDSOS::SpecReflectionArchive::~SpecReflectionArchive(TSDSOS::SpecReflectionArchive *this)
{
  if (this != &TSDSOS::_SpecReflectionArchive_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      TSD::SpecReflectionSetOpacityArchive::~SpecReflectionSetOpacityArchive(v2);
      MEMORY[0x277C9C1D0]();
    }

    v3 = *(this + 4);
    if (v3)
    {
      TSDSOS::SpecSetReflectionArchive::~SpecSetReflectionArchive(v3);
      MEMORY[0x277C9C1D0]();
    }
  }

  sub_2766FFE58(this + 1);
}

{
  TSDSOS::SpecReflectionArchive::~SpecReflectionArchive(this);

  JUMPOUT(0x277C9C1D0);
}

uint64_t *TSDSOS::SpecReflectionArchive::default_instance(TSDSOS::SpecReflectionArchive *this)
{
  if (atomic_load_explicit(scc_info_SpecReflectionArchive_TSDArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSDSOS::_SpecReflectionArchive_default_instance_;
}

uint64_t *TSDSOS::SpecReflectionArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 4);
  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      this = TSD::SpecReflectionSetOpacityArchive::Clear(this[3]);
    }

    if ((v2 & 2) != 0)
    {
      this = TSDSOS::SpecSetReflectionArchive::Clear(*(v1 + 32));
    }
  }

  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_27670B144(v3);
  }

  return this;
}

google::protobuf::internal *TSDSOS::SpecReflectionArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v18 = a2;
  while ((sub_27670AF08(a3, &v18) & 1) == 0)
  {
    v5 = (v18 + 1);
    v6 = *v18;
    if ((*v18 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v7 = v6 + (*v5 << 7);
    v6 = v7 - 128;
    if ((*v5 & 0x80000000) == 0)
    {
      v5 = (v18 + 2);
LABEL_6:
      v18 = v5;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v18, (v7 - 128));
    v18 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v5 = TagFallback;
    v6 = v16;
LABEL_7:
    if (v6 >> 3 == 2)
    {
      if (v6 != 18)
      {
        goto LABEL_12;
      }

      *(a1 + 16) |= 2u;
      v11 = *(a1 + 32);
      if (!v11)
      {
        v12 = *(a1 + 8);
        if (v12)
        {
          v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
        }

        v11 = google::protobuf::Arena::CreateMaybeMessage<TSDSOS::SpecSetReflectionArchive>(v12);
        *(a1 + 32) = v11;
        v5 = v18;
      }

      v10 = sub_27680974C(a3, v11, v5);
    }

    else
    {
      if (v6 >> 3 != 1 || v6 != 10)
      {
LABEL_12:
        if (v6)
        {
          v9 = (v6 & 7) == 4;
        }

        else
        {
          v9 = 1;
        }

        if (v9)
        {
          *(a3 + 80) = v6 - 1;
          return v18;
        }

        if ((*(a1 + 8) & 1) == 0)
        {
          sub_27670AF80((a1 + 8));
        }

        v10 = google::protobuf::internal::UnknownFieldParse();
        goto LABEL_30;
      }

      *(a1 + 16) |= 1u;
      v13 = *(a1 + 24);
      if (!v13)
      {
        v14 = *(a1 + 8);
        if (v14)
        {
          v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
        }

        v13 = google::protobuf::Arena::CreateMaybeMessage<TSD::SpecReflectionSetOpacityArchive>(v14);
        *(a1 + 24) = v13;
        v5 = v18;
      }

      v10 = sub_27680967C(a3, v13, v5);
    }

LABEL_30:
    v18 = v10;
    if (!v10)
    {
      return 0;
    }
  }

  return v18;
}

unsigned __int8 *TSDSOS::SpecReflectionArchive::_InternalSerialize(TSDSOS::SpecReflectionArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v6 = *(this + 4);
  if (v6)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v7 = *(this + 3);
    *a2 = 10;
    v8 = *(v7 + 5);
    if (v8 > 0x7F)
    {
      a2[1] = v8 | 0x80;
      v10 = v8 >> 7;
      if (v8 >> 14)
      {
        v9 = a2 + 3;
        do
        {
          *(v9 - 1) = v10 | 0x80;
          v11 = v10 >> 7;
          ++v9;
          v12 = v10 >> 14;
          v10 >>= 7;
        }

        while (v12);
        *(v9 - 1) = v11;
      }

      else
      {
        a2[2] = v10;
        v9 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v8;
      v9 = a2 + 2;
    }

    a2 = TSD::SpecReflectionSetOpacityArchive::_InternalSerialize(v7, v9, a3, a4);
  }

  if ((v6 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v13 = *(this + 4);
    *a2 = 18;
    v14 = *(v13 + 5);
    if (v14 > 0x7F)
    {
      a2[1] = v14 | 0x80;
      v16 = v14 >> 7;
      if (v14 >> 14)
      {
        v15 = a2 + 3;
        do
        {
          *(v15 - 1) = v16 | 0x80;
          v17 = v16 >> 7;
          ++v15;
          v18 = v16 >> 14;
          v16 >>= 7;
        }

        while (v18);
        *(v15 - 1) = v17;
      }

      else
      {
        a2[2] = v16;
        v15 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v14;
      v15 = a2 + 2;
    }

    a2 = TSDSOS::SpecSetReflectionArchive::_InternalSerialize(v13, v15, a3, a4);
  }

  v19 = *(this + 1);
  if ((v19 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v19 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}