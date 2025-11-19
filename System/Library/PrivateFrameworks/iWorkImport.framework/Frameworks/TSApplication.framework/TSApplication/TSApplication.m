__CFString *sub_27608F088(double a1, uint64_t a2, const char *a3, uint64_t a4, uint64_t a5)
{
  if (a1 < 600.0 || a1 < 3570.0 || (v8 = (a1 / 3600.0), (v8 - 1) <= 8) && ((a1 / 60.0) / 6) % 10 >= 1 || v8 <= 99)
  {
    v5 = objc_msgSend_currentLocale(MEMORY[0x277D81228], a3, a4, a5);
    v6 = TSUDurationFormatterStringFromTimeIntervalWithFormatAndRounding();
  }

  else
  {
    v6 = &stru_288512028;
  }

  return v6;
}

id sub_27608F228(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a3;
  v8 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(a1, v7, @"/", @":");
  v11 = objc_msgSend_tsu_tolerantStringByAppendingPathExtension_(v8, v9, v6, v10);

  v14 = objc_msgSend_tsa_filenameTruncatedToCharacterLimit_(v11, v12, a4, v13);

  return v14;
}

id sub_27608F2C0(void *a1, uint64_t a2, size_t a3)
{
  v4 = a1;
  v5 = v4;
  v9 = objc_msgSend_fileSystemRepresentation(v5, v6, v7, v8);
  if (strlen(v9) > a3)
  {
    v13 = objc_msgSend_stringByDeletingPathExtension(v4, v10, v11, v12);
    v17 = objc_msgSend_length(v13, v14, v15, v16);
    v21 = objc_msgSend_substringFromIndex_(v4, v18, v17, v19);
    v22 = v17 - 1;
    do
    {
      v23 = objc_msgSend_rangeOfComposedCharacterSequencesForRange_(v13, v20, 0, v22);
      v25 = objc_msgSend_substringWithRange_(v13, v24, v23, v24);
      v28 = objc_msgSend_stringByAppendingString_(v25, v26, v21, v27);

      if (!v22)
      {
        break;
      }

      v31 = v28;
      v35 = objc_msgSend_fileSystemRepresentation(v31, v32, v33, v34);
      --v22;
      v13 = v28;
    }

    while (strlen(v35) > a3);
    v36 = objc_msgSend_whitespaceCharacterSet(MEMORY[0x277CCA900], v20, v29, v30);
    v39 = objc_msgSend_stringByTrimmingCharactersInSet_(v28, v37, v36, v38);

    v4 = v39;
  }

  return v4;
}

id sub_27608F400(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v4 = objc_msgSend_stringByDeletingPathExtension(a1, a2, a3, a4);
  }

  else
  {
    v4 = a1;
  }

  v6 = v4;
  v7 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v4, v5, @":", @"/");

  return v7;
}

id sub_27608F468(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  if (objc_msgSend_canBeConvertedToEncoding_(a1, a2, 5, a4))
  {
    v32[0] = 0;
    v32[1] = v32;
    v32[2] = 0x2020000000;
    v32[3] = 0;
    v9 = objc_msgSend_string(MEMORY[0x277CCAB68], v6, v7, v8);
    v13 = objc_msgSend_punctuationCharacterSet(MEMORY[0x277CCA900], v10, v11, v12);
    v16 = objc_msgSend_tsu_stringByRemovingCharactersInSet_(a1, v14, v13, v15);

    v20 = objc_msgSend_length(v16, v17, v18, v19);
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = sub_27608F5E0;
    v28[3] = &unk_27A6AF5E8;
    v21 = v9;
    v29 = v21;
    v30 = v32;
    v31 = a3;
    objc_msgSend_enumerateSubstringsInRange_options_usingBlock_(v16, v22, 0, v20, 1027, v28);
    v26 = objc_msgSend_uppercaseString(v21, v23, v24, v25);

    _Block_object_dispose(v32, 8);
  }

  else
  {
    v26 = 0;
  }

  return v26;
}

void sub_27608F5C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_27608F5E0(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  v9 = a1[4];
  v10 = objc_msgSend_substringToIndex_(a2, a2, 1, a4);
  objc_msgSend_appendString_(v9, v11, v10, v12);

  ++*(*(a1[5] + 8) + 24);
  v13 = a1[6];
  if (v13)
  {
    LOBYTE(v13) = *(*(a1[5] + 8) + 24) >= v13;
  }

  *a7 = v13;
}

id sub_27608F668(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  if (objc_msgSend_canBeConvertedToEncoding_(a1, a2, 5, a4))
  {
    v8 = objc_msgSend_string(MEMORY[0x277CCAB68], v5, v6, v7);
    v12 = objc_msgSend_length(a1, v9, v10, v11);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = sub_27608F760;
    v17[3] = &unk_27A6AF610;
    v13 = v8;
    v18 = v13;
    v19 = a1;
    objc_msgSend_enumerateSubstringsInRange_options_usingBlock_(a1, v14, 0, v12, 1027, v17);
    v15 = v13;
  }

  else
  {
    v15 = a1;
  }

  return v15;
}

void sub_27608F760(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  v32 = a2;
  if (objc_msgSend_length(v32, v9, v10, v11) >= 2)
  {
    v15 = objc_msgSend_tsu_resourcesBundle(MEMORY[0x277CCA8D8], v12, v13, v14);
    v17 = objc_msgSend_localizedStringForKey_value_table_(v15, v16, @"%@.%@", &stru_288512028, @"TSApplication");

    v18 = *(a1 + 32);
    v21 = objc_msgSend_substringToIndex_(v32, v19, 1, v20);
    v22 = *(a1 + 40);
    v26 = objc_msgSend_length(v32, v23, v24, v25);
    v29 = objc_msgSend_substringFromIndex_(v22, v27, v26, v28);
    objc_msgSend_appendFormat_(v18, v30, v17, v31, v21, v29);
  }

  *a7 = 1;
}

uint64_t sub_27608F85C(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_tsa_sharedPropertiesProvider(TSABaseApplicationDelegate, a2, a3, a4);
  v9 = objc_msgSend_nativeDocumentTypes(v5, v6, v7, v8);
  v12 = objc_msgSend_tsu_conformsToAnyUTI_(a1, v10, v9, v11);

  return v12;
}

BOOL sub_27608F8C0(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v5 = objc_msgSend_rootIdentifiedAncestor(v1, v2, v3, v4);
    v9 = objc_msgSend_styleIdentifier(v5, v6, v7, v8);

    if (v9)
    {
      v10 = String();
      v13 = v10;
      v20 = !v10 || (objc_msgSend_isEqualToString_(v10, v11, *MEMORY[0x277D80090], v12) & 1) == 0 && (objc_msgSend_isEqualToString_(v13, v14, *MEMORY[0x277D80D80], v15) & 1) == 0 && (objc_msgSend_isEqualToString_(v13, v16, *MEMORY[0x277D80D70], v17) & 1) == 0 && !objc_msgSend_isEqualToString_(v13, v18, *MEMORY[0x277D80FC8], v19);
    }

    else
    {
      v20 = 1;
    }
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

uint64_t sub_27608FA20(void *a1)
{
  v1 = a1;
  if (sub_27608F8C0(v1))
  {
    v5 = objc_msgSend_rootAncestor(v1, v2, v3, v4);
    isNamed = objc_msgSend_isNamed(v5, v6, v7, v8);
  }

  else
  {
    isNamed = 0;
  }

  return isNamed;
}

BOOL sub_27608FA80(void *a1)
{
  v1 = a1;
  if (sub_27608F8C0(v1))
  {
    v5 = objc_msgSend_rootAncestor(v1, v2, v3, v4);
    v9 = objc_msgSend_contentTag(v5, v6, v7, v8);
    v13 = objc_msgSend_length(v9, v10, v11, v12) != 0;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

BOOL sub_27608FAF4(void *a1)
{
  v1 = a1;
  v2 = objc_opt_class();
  if (v2 == objc_opt_class())
  {
    v7 = objc_msgSend_rootIdentifiedAncestor(v1, v3, v4, v5);
    v11 = objc_msgSend_styleIdentifier(v7, v8, v9, v10);

    if (v11)
    {
      v12 = String();
      v15 = v12;
      v6 = v12 && ((objc_msgSend_isEqualToString_(v12, v13, *MEMORY[0x277D80D70], v14) & 1) != 0 || objc_msgSend_isEqualToString_(v15, v16, *MEMORY[0x277D80D80], v17));
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t sub_27608FBD0(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_rootIdentifiedAncestor(a1, a2, a3, a4);
  v8 = objc_msgSend_styleIdentifier(v4, v5, v6, v7);

  if (v8)
  {
    if (objc_msgSend_isEqualToString_(v8, v9, *MEMORY[0x277D81038], v10) & 1) != 0 || (objc_msgSend_isEqualToString_(v8, v11, *MEMORY[0x277D81040], v12) & 1) != 0 || (objc_msgSend_isEqualToString_(v8, v13, *MEMORY[0x277D81048], v14) & 1) != 0 || (objc_msgSend_isEqualToString_(v8, v15, *MEMORY[0x277D81050], v16) & 1) != 0 || (objc_msgSend_isEqualToString_(v8, v17, *MEMORY[0x277D81018], v18) & 1) != 0 || (objc_msgSend_isEqualToString_(v8, v19, *MEMORY[0x277D80FD0], v20))
    {
      isEqualToString = 1;
    }

    else
    {
      isEqualToString = objc_msgSend_isEqualToString_(v8, v21, *MEMORY[0x277D80FE0], v22);
    }
  }

  else
  {
    isEqualToString = 0;
  }

  return isEqualToString;
}

uint64_t sub_276090914()
{
  *MEMORY[0x277D813B0] = TSULogCreateCategory();

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_276090958()
{
  *MEMORY[0x277D813B0] = TSULogCreateCategory();

  return MEMORY[0x2821F96F8]();
}

void sub_276091948(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

void sub_276091AE4(_Unwind_Exception *a1)
{
  v8 = v7;

  _Unwind_Resume(a1);
}

void sub_276092424(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

id sub_27609287C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_mappedStyleForStyle_(*(a1 + 32), a2, a2, a4);

  return v4;
}

void sub_276093AB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, void *a42)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  if (a42)
  {
    free(a42);
  }

  _Unwind_Resume(a1);
}

id sub_276093B54(void *a1)
{
  v2 = a1[5];
  v3 = a1[6];
  *(v3 + 40) |= 1u;
  v4 = *(v3 + 48);
  if (!v4)
  {
    v5 = *(v3 + 8);
    if (v5)
    {
      v5 = *(v5 & 0xFFFFFFFFFFFFFFFELL);
    }

    v4 = MEMORY[0x277C95070](v5);
    *(v3 + 48) = v4;
  }

  v6 = a1[4];
  v8.receiver = v2;
  v8.super_class = TSAWebVideoInfo;
  return objc_msgSendSuper2(&v8, sel_saveToArchive_archiver_, v4, v6);
}

_BYTE *sub_276093EA0(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_276093F58();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

void sub_276093F70(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_276093FCC(exception, a1);
  __cxa_throw(exception, off_27A6AF5D8, MEMORY[0x277D825F0]);
}

std::logic_error *sub_276093FCC(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

uint64_t sub_27609406C(uint64_t a1, CFStringRef theString)
{
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  v4 = (a1 + 128);
  CStringPtr = CFStringGetCStringPtr(theString, 0x8000100u);
  v4[1] = CStringPtr;
  if (!CStringPtr)
  {
    maxBufLen = 0;
    Length = CFStringGetLength(theString);
    if (Length <= 30 && (v11.location = 0, v11.length = Length, CFStringGetBytes(theString, v11, 0x8000100u, 0, 0, a1, 127, &maxBufLen) == Length))
    {
      *(a1 + maxBufLen) = 0;
      *(a1 + 136) = a1;
    }

    else if (!*(a1 + 136))
    {
      maxBufLen = 0;
      v12.location = 0;
      v12.length = Length;
      if (CFStringGetBytes(theString, v12, 0x8000100u, 0, 0, 0, 0, &maxBufLen) == Length)
      {
        v7 = malloc_type_malloc(maxBufLen + 1, 0x100004077774924uLL);
        *v4 = v7;
        if (v7)
        {
          usedBufLen = 0;
          v13.location = 0;
          v13.length = Length;
          CFStringGetBytes(theString, v13, 0x8000100u, 0, 0, v7, maxBufLen, &usedBufLen);
          if (usedBufLen == maxBufLen)
          {
            *(*(a1 + 128) + usedBufLen) = 0;
            *(a1 + 136) = *(a1 + 128);
          }
        }
      }
    }
  }

  return a1;
}

void TSARegisterPersistentClasses(void *a1)
{
  v25 = a1;
  v1 = TSA::DocumentArchive::default_instance(v25);
  google::protobuf::internal::AssignDescriptors();
  v3 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v25, v2, 600, v1, *off_2812F3500, "TSADocumentRoot");
  v4 = TSA::FunctionBrowserStateArchive::default_instance(v3);
  google::protobuf::internal::AssignDescriptors();
  v6 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v25, v5, 601, v4, off_2812F3500[2], "TSAFunctionBrowserState");
  v7 = TSA::ShortcutControllerArchive::default_instance(v6);
  google::protobuf::internal::AssignDescriptors();
  objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v25, v8, 603, v7, off_2812F3500[8], "TSAShortcutController");
  objc_msgSend_setDeprecatedMessageType_(v25, v9, 608, v10);
  v13 = objc_msgSend_setDeprecatedMessageType_(v25, v11, 609, v12);
  v14 = TSA::GalleryItem::default_instance(v13);
  google::protobuf::internal::AssignDescriptors();
  v16 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v25, v15, 623, v14, off_2812F3500[42], "TSAGalleryItem");
  v17 = TSA::GalleryItemSelection::default_instance(v16);
  google::protobuf::internal::AssignDescriptors();
  v19 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v25, v18, 625, v17, off_2812F3500[48], "TSAArchivedGalleryItemSelection");
  v20 = TSA::CaptionInfoArchive::default_instance(v19);
  google::protobuf::internal::AssignDescriptors();
  v22 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v25, v21, 633, v20, off_2812F3500[64], "TSACaptionInfo");
  v23 = TSA::CaptionPlacementArchive::default_instance(v22);
  google::protobuf::internal::AssignDescriptors();
  objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v25, v24, 634, v23, off_2812F3500[62], "TSACaptionPlacement");
}

void sub_276096D40(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

BOOL sub_276097500(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return (isKindOfClass & 1) == 0;
}

void sub_276097E0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = TSADocumentRoot;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_276098208(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_27609823C(uint64_t a1, void *a2, _BYTE *a3, uint64_t a4)
{
  v6 = objc_msgSend_stylesheet(a2, a2, a3, a4);
  v10 = objc_msgSend_stylesheet(*(a1 + 32), v7, v8, v9);

  if (v6 != v10)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a3 = 1;
  }
}

void sub_276098DE8(uint64_t a1, void *a2)
{
  v9 = a2;
  v6 = objc_msgSend_object(v9, v3, v4, v5);
  v7 = *(a1 + 32);
  v8 = *(v7 + 368);
  *(v7 + 368) = v6;
}

void sub_276098E60(uint64_t a1, void *a2)
{
  v8 = a2;
  objc_msgSend_setCalculationEngine_(*(a1 + 32), v3, v8, v4);
  objc_msgSend_clearLegacyGlobalIDs(*(*(a1 + 32) + 352), v5, v6, v7);
}

void sub_276098EF0(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = objc_alloc(MEMORY[0x277D80868]);
  v6 = objc_msgSend_initWithObject_(v3, v4, v9, v5);
  v7 = *(a1 + 32);
  v8 = *(v7 + 320);
  *(v7 + 320) = v6;
}

void sub_276098F74(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = a1;
  v227 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  if (v5[46])
  {
    objc_msgSend_p_upgradeCustomFormatList(v5, a2, a3, a4);
  }

  v6 = *(v4 + 40);
  if (v6 < UnsafePointer())
  {
    objc_msgSend_p_upgradeRemainingOutlinedTextStylesWithFileFormatVersion_(*(v4 + 32), v7, *(v4 + 40), v9);
    objc_msgSend_upgradeTablesIfNeeded_forDocumentRoot_(MEMORY[0x277D80D40], v10, *(v4 + 40), *(v4 + 32));
  }

  v204 = v4;
  if (*(v4 + 56) == 1)
  {
    v222 = 0u;
    v223 = 0u;
    v220 = 0u;
    v221 = 0u;
    obj = objc_msgSend_modelEnumerator(*(v4 + 32), v7, v8, v9);
    v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v11, &v220, v226, 16);
    if (v12)
    {
      v13 = *v221;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v221 != v13)
          {
            objc_enumerationMutation(obj);
          }

          objc_opt_class();
          v15 = TSUDynamicCast();
          v19 = v15;
          if (v15)
          {
            v20 = objc_msgSend_range(v15, v16, v17, v18);
            v22 = v21;
            v218[0] = MEMORY[0x277D85DD0];
            v218[1] = 3221225472;
            v218[2] = sub_276099AA8;
            v218[3] = &unk_27A6AF828;
            v219 = v19;
            objc_msgSend_enumerateWithAttributeKind_inRange_usingBlock_(v219, v23, 3, v20, v22, v218);
            v24 = v219;
          }

          else
          {
            objc_opt_class();
            v25 = TSUDynamicCast();
            v24 = v25;
            if (v25)
            {
              objc_msgSend_upgradeFromPreUFF(v25, v26, v27, v28);
            }

            else
            {
              objc_opt_class();
              v29 = TSUDynamicCast();
              v33 = v29;
              if (v29)
              {
                v34 = objc_msgSend_chart(v29, v30, v31, v32);
                objc_msgSend_willModifyForUpgrade(v33, v35, v36, v37);
                v41 = objc_msgSend_preset(v34, v38, v39, v40);
                objc_msgSend_upgradePresetIfNecessaryFromFinalizeHandlerWithOptionalPreUFFVersion_(v41, v42, v204 + 48, v43);

                objc_msgSend_preserveAppearanceForCurrentPresetAdoptingStylesheet_(v34, v44, 0, v45);
              }
            }
          }
        }

        v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v46, &v220, v226, 16);
      }

      while (v12);
    }

    objc_msgSend_upgradeTextStylesForUnityBeforeSingleStylesheetUpgrade(*(v204 + 32), v47, v48, v49);
    v4 = v204;
  }

  objc_msgSend_upgradeToSingleStylesheet(*(v4 + 32), v7, v8, v9);
  v53 = v204;
  if (*(v204 + 40) <= 0x2000000000028uLL)
  {
    v216 = 0u;
    v217 = 0u;
    v214 = 0u;
    v215 = 0u;
    v54 = objc_msgSend_modelEnumerator(*(v204 + 32), v50, v51, v52);
    v56 = objc_msgSend_countByEnumeratingWithState_objects_count_(v54, v55, &v214, v225, 16);
    if (v56)
    {
      v57 = *v215;
      do
      {
        for (j = 0; j != v56; ++j)
        {
          if (*v215 != v57)
          {
            objc_enumerationMutation(v54);
          }

          v59 = objc_autoreleasePoolPush();
          objc_opt_class();
          v60 = TSUDynamicCast();
          v64 = v60;
          if (v60)
          {
            v65 = objc_msgSend_chart(v60, v61, v62, v63);
            if ((objc_msgSend_appearancePreservedForCurrentPreset(v65, v66, v67, v68) & 1) == 0)
            {
              objc_msgSend_willModifyForUpgrade(v64, v69, v70, v71);
              v75 = objc_msgSend_preset(v65, v72, v73, v74);
              objc_msgSend_upgradePresetIfNecessaryFromFinalizeHandlerWithOptionalPreUFFVersion_(v75, v76, 0, v77);

              objc_msgSend_preserveAppearanceForCurrentPresetAdoptingStylesheet_(v65, v78, 0, v79);
            }
          }

          objc_autoreleasePoolPop(v59);
        }

        v56 = objc_msgSend_countByEnumeratingWithState_objects_count_(v54, v80, &v214, v225, 16);
      }

      while (v56);
    }

    v53 = v204;
  }

  if (*(v53 + 56) == 1)
  {
    objc_msgSend_upgradeTextStylesForUnityAfterSingleStylesheetUpgrade(*(v53 + 32), v50, v51, v52);
    v53 = v204;
  }

  if (*(v53 + 40) < *MEMORY[0x277D80958])
  {
    v212 = 0u;
    v213 = 0u;
    v210 = 0u;
    v211 = 0u;
    v81 = objc_msgSend_modelEnumerator(*(v53 + 32), v50, v51, v52);
    v83 = objc_msgSend_countByEnumeratingWithState_objects_count_(v81, v82, &v210, v224, 16);
    if (v83)
    {
      v84 = *v211;
      do
      {
        for (k = 0; k != v83; ++k)
        {
          if (*v211 != v84)
          {
            objc_enumerationMutation(v81);
          }

          objc_opt_class();
          v88 = TSUDynamicCast();
          if (v88)
          {
            objc_msgSend_upgradeCommentInfoStorage_(MEMORY[0x277D80E20], v86, v88, v87);
          }
        }

        v83 = objc_msgSend_countByEnumeratingWithState_objects_count_(v81, v89, &v210, v224, 16);
      }

      while (v83);
    }

    v53 = v204;
  }

  objc_msgSend_stickyCommentScaleMultiplier(*(v53 + 32), v50, v51, v52);
  v91 = v90;
  v92 = MEMORY[0x277D80E20];
  v96 = objc_msgSend_stylesheet(*(v53 + 32), v93, v94, v95);
  objc_msgSend_upgradeCommentParagraphStylesForStylesheet_withCommentScale_(v92, v97, v96, v98, v91);

  objc_msgSend_upgradeTextStylesForUnityPlusFromFileFormatVersion_(*(v204 + 32), v99, *(v204 + 40), v100);
  objc_msgSend_upgradeCellStyles(*(v204 + 32), v101, v102, v103);
  objc_msgSend_upgradeTextboxPresets(*(v204 + 32), v104, v105, v106);
  v110 = objc_msgSend_theme(*(v204 + 32), v107, v108, v109);
  v111 = v110 == 0;

  if (v111)
  {
    v115 = MEMORY[0x277D81150];
    v116 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v112, "[TSADocumentRoot loadFromArchive:unarchiver:]_block_invoke_7", v114);
    v119 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v117, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSADocumentRoot.mm", v118);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v115, v120, v116, v119, 1657, 0, "invalid nil value for '%{public}s'", "self.theme");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v121, v122, v123);
  }

  v124 = objc_msgSend_theme(*(v204 + 32), v112, v113, v114);
  v127 = objc_msgSend_presetsOfKind_(v124, v125, *MEMORY[0x277D80AF8], v126);
  v131 = objc_msgSend_count(v127, v128, v129, v130) == 0;

  if (v131)
  {
    v209[0] = MEMORY[0x277D85DD0];
    v209[1] = 3221225472;
    v209[2] = sub_276099C5C;
    v209[3] = &unk_27A6AF850;
    v209[4] = *(v204 + 32);
    objc_msgSend_performUpgradeUsingBlock_(MEMORY[0x277D80870], v132, v209, v134);
  }

  v135 = objc_msgSend_theme(*(v204 + 32), v132, v133, v134);
  v138 = objc_msgSend_presetsOfKind_(v135, v136, *MEMORY[0x277D80B40], v137);
  v142 = objc_msgSend_count(v138, v139, v140, v141) == 0;

  if (v142)
  {
    v208[0] = MEMORY[0x277D85DD0];
    v208[1] = 3221225472;
    v208[2] = sub_276099CBC;
    v208[3] = &unk_27A6AF850;
    v208[4] = *(v204 + 32);
    objc_msgSend_performUpgradeUsingBlock_(MEMORY[0x277D80870], v143, v208, v145);
  }

  v146 = objc_msgSend_stylesheet(*(v204 + 32), v143, v144, v145);
  v150 = sub_2760ACCE8(v146, v147, v148, v149);
  v153 = objc_msgSend_styleWithIdentifier_(v146, v151, v150, v152);
  v157 = v153;
  if (v153)
  {
    v158 = sub_2760ACD70(v153, v154, v155, v156);
    v161 = objc_msgSend_styleWithIdentifier_(v146, v159, v158, v160);
    v162 = v161 == 0;

    if (!v162)
    {
      goto LABEL_58;
    }
  }

  else
  {
  }

  v207[0] = MEMORY[0x277D85DD0];
  v207[1] = 3221225472;
  v207[2] = sub_276099D1C;
  v207[3] = &unk_27A6AF850;
  v207[4] = *(v204 + 32);
  objc_msgSend_performUpgradeUsingBlock_(MEMORY[0x277D80870], v163, v207, v164);
LABEL_58:
  objc_msgSend_p_upgradeRemainingOutlinedTextStylesWithFileFormatVersion_(*(v204 + 32), v163, *(v204 + 40), v164);
  v206[0] = MEMORY[0x277D85DD0];
  v206[1] = 3221225472;
  v206[2] = sub_276099D24;
  v206[3] = &unk_27A6AF878;
  v165 = *(v204 + 40);
  v206[4] = *(v204 + 32);
  v206[5] = v165;
  objc_msgSend_performUpgradeUsingBlock_(MEMORY[0x277D80870], v166, v206, v167);
  if ((objc_msgSend_canCullStyles(v146, v168, v169, v170) & 1) == 0)
  {
    if (*(v204 + 40) >= 0x2000100000006uLL)
    {
      v174 = MEMORY[0x277D81150];
      v175 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v171, "[TSADocumentRoot loadFromArchive:unarchiver:]_block_invoke_7", v173);
      v178 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v176, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSADocumentRoot.mm", v177);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v174, v179, v175, v178, 1691, 0, "Found a document stylesheet with canCullStyles == NO in a document with a document version that is after we decided to set canCullStyles to YES in all documents. Setting canCullStyles to YES.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v180, v181, v182);
    }

    objc_msgSend_willModifyForUpgrade(v146, v171, v172, v173);
    objc_msgSend_setCanCullStyles_(v146, v183, 1, v184);
  }

  objc_msgSend_upgradeToFixNonVariationChildStylesWithFileFormatVersion_(*(v204 + 32), v171, *(v204 + 40), v173);
  v187 = v204;
  v188 = *(v204 + 32);
  if (!v188[44])
  {
    v189 = objc_alloc(MEMORY[0x277D80C28]);
    v193 = objc_msgSend_context(*(v204 + 32), v190, v191, v192);
    v196 = objc_msgSend_initWithContext_(v189, v194, v193, v195);
    v197 = *(v204 + 32);
    v198 = *(v197 + 352);
    *(v197 + 352) = v196;

    objc_msgSend_setLoadFromFileVersion_(*(*(v204 + 32) + 352), v199, *(v204 + 40), v200);
    v187 = v204;
    v188 = *(v204 + 32);
  }

  v201 = objc_msgSend_readBuildVersionHistoryFromDiskHasPreUFFVersion_(v188, v185, *(v187 + 56), v186);
  objc_msgSend_setBuildVersionHistory_(*(v204 + 32), v202, v201, v203);
}

void sub_276099AA8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v30 = a2;
  v7 = objc_autoreleasePoolPush();
  objc_opt_class();
  v8 = TSUDynamicCast();
  v12 = v8;
  if (v8)
  {
    v13 = objc_msgSend_propertyMap(v8, v9, v10, v11);
    v17 = objc_msgSend_properties(MEMORY[0x277D80DB0], v14, v15, v16);
    v20 = objc_msgSend_propertyMapWithProperties_(v13, v18, v17, v19);

    v22 = objc_msgSend_paragraphStyleAtCharIndex_effectiveRange_(*(a1 + 32), v21, a3, 0);
    v26 = objc_msgSend_stylesheet(*(a1 + 32), v23, v24, v25);
    v28 = objc_msgSend_variationOfCharacterStyle_paragraphStyle_propertyMap_(v26, v27, 0, v22, v20);

    objc_msgSend_setCharacterStyle_range_undoTransaction_(*(a1 + 32), v29, v28, a3, a4, 0);
  }

  objc_autoreleasePoolPop(v7);
}

void sub_276099C5C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v7 = objc_msgSend_theme(*(a1 + 32), a2, a3, a4);
  objc_msgSend_addCaptionTextStylePresets(v7, v4, v5, v6);
}

void sub_276099CBC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v7 = objc_msgSend_theme(*(a1 + 32), a2, a3, a4);
  objc_msgSend_installSVGImportedShapePresetsInStylesheet(v7, v4, v5, v6);
}

id sub_27609A170(void *a1)
{
  v2 = a1[5];
  v3 = a1[6];
  *(v3 + 16) |= 4u;
  v4 = *(v3 + 64);
  if (!v4)
  {
    v5 = *(v3 + 8);
    if (v5)
    {
      v5 = *(v5 & 0xFFFFFFFFFFFFFFFELL);
    }

    v4 = MEMORY[0x277C950E0](v5);
    *(v3 + 64) = v4;
  }

  v6 = a1[4];
  v8.receiver = v2;
  v8.super_class = TSADocumentRoot;
  return objc_msgSendSuper2(&v8, sel_saveToArchive_archiver_, v4, v6);
}

id sub_27609A430(void *a1)
{
  v1 = a1;
  v5 = v1;
  v6 = v1;
  if (!v1)
  {
    v1 = objc_msgSend_array(MEMORY[0x277CBEA60], v2, v3, v4);
    v6 = v1;
  }

  v7 = sub_2760A8F64(v1, v2, v3, v4);
  objc_opt_class();
  v11 = objc_msgSend_lastObject(v6, v8, v9, v10);
  v12 = TSUDynamicCast();

  isEqualToString = objc_msgSend_isEqualToString_(v12, v13, v7, v14);
  if (v7)
  {
    v18 = isEqualToString;
  }

  else
  {
    v18 = 1;
  }

  if ((v18 & 1) == 0)
  {
    v19 = objc_msgSend_arrayByAddingObject_(v6, v16, v7, v17);

    v6 = v19;
  }

  return v6;
}

uint64_t sub_27609AE34()
{
  *MEMORY[0x277D81410] = TSULogCreateCategory();

  return MEMORY[0x2821F96F8]();
}

void sub_27609B700(uint64_t a1, const char *a2)
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = @"preview";
  v2 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], a2, v4, 1);
  v3 = qword_280A424B8;
  qword_280A424B8 = v2;
}

void sub_27609B7C0()
{
  v0 = qword_280A424C8;
  qword_280A424C8 = &unk_28851B3D8;
}

uint64_t sub_27609C108(uint64_t result, int a2)
{
  v2 = *(*(result + 32) + 8);
  if (a2)
  {
    v3 = *(v2 + 24);
  }

  else
  {
    v3 = 0;
  }

  *(v2 + 24) = v3 & 1;
  return result;
}

uint64_t sub_27609C12C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 32);
  v5 = objc_msgSend_stringByAppendingPathExtension_(@"preview", a2, @"jpg", a4);
  v8 = objc_msgSend_newCGDataConsumerAtRelativePath_(v4, v6, v5, v7);

  return v8;
}

uint64_t sub_27609C190(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 32);
  v5 = objc_msgSend_stringByAppendingPathExtension_(@"preview-micro", a2, @"jpg", a4);
  v8 = objc_msgSend_newCGDataConsumerAtRelativePath_(v4, v6, v5, v7);

  return v8;
}

uint64_t sub_27609C1F4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 32);
  v5 = objc_msgSend_stringByAppendingPathExtension_(@"preview-web", a2, @"jpg", a4);
  v8 = objc_msgSend_newCGDataConsumerAtRelativePath_(v4, v6, v5, v7);

  return v8;
}

void sub_27609C400(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, void *a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id a28)
{
  _Block_object_dispose(&a23, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_27609C444(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

CGDataConsumerRef sub_27609C45C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], a2, a3, a4);
  v8 = v5;
  if (*(a1 + 56) == 1 && (objc_msgSend_fileExistsAtPath_(v5, v6, *(a1 + 32), v7) & 1) == 0)
  {
    v9 = *(a1 + 32);
    v23 = 0;
    if ((objc_msgSend_createDirectoryAtPath_withIntermediateDirectories_attributes_error_(v8, v6, v9, 1, 0, &v23) & 1) == 0)
    {
      v21 = 0;
      goto LABEL_10;
    }
  }

  v10 = *(a1 + 32);
  v11 = objc_msgSend_stringByAppendingPathExtension_(*(a1 + 40), v6, @"jpg", v7);
  v14 = objc_msgSend_stringByAppendingPathComponent_(v10, v12, v11, v13);
  v15 = *(*(a1 + 48) + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = v14;

  v18 = *(*(*(a1 + 48) + 8) + 40);
  if (!v18)
  {
    v20 = 0;
    goto LABEL_8;
  }

  v19 = objc_msgSend_fileURLWithPath_isDirectory_(MEMORY[0x277CBEBC0], v17, v18, 0);
  v20 = v19;
  if (!v19)
  {
LABEL_8:
    v21 = 0;
    goto LABEL_9;
  }

  v21 = CGDataConsumerCreateWithURL(v19);
LABEL_9:

LABEL_10:
  return v21;
}

uint64_t sub_27609C5A8(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0 && *MEMORY[0x277D81408] != -1)
  {
    sub_27610CA20();
  }

  result = *(a1 + 32);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

uint64_t sub_27609C61C()
{
  *MEMORY[0x277D81410] = TSULogCreateCategory();

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_27609C8AC(uint64_t a1)
{
  v15[1] = *MEMORY[0x277D85DE8];
  v2 = (*(*(a1 + 32) + 16))();
  if (v2)
  {
    v6 = v2;
    v7 = objc_msgSend_identifier(*MEMORY[0x277CE1DC0], v3, v4, v5);
    v8 = CGImageDestinationCreateWithDataConsumer(v6, v7, 1uLL, 0);

    if (v8)
    {
      v14 = *MEMORY[0x277CD2D48];
      v15[0] = &unk_28851B408;
      v10 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v9, v15, &v14, 1);
      CGImageDestinationAddImage(v8, *(a1 + 48), v10);
      v11 = CGImageDestinationFinalize(v8);
      CFRelease(v8);
    }

    else
    {
      v11 = 0;
    }

    CGDataConsumerRelease(v6);
    CGImageRelease(*(a1 + 48));
    result = *(a1 + 40);
    if (result)
    {
      return (*(result + 16))(result, v11);
    }
  }

  else
  {
    CGImageRelease(*(a1 + 48));
    result = *(a1 + 40);
    if (result)
    {
      v13 = *(result + 16);

      return v13();
    }
  }

  return result;
}

uint64_t sub_27609D7D0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_message(a2, a2, a3, a4);
  isEqualToString = objc_msgSend_isEqualToString_(v5, v6, *(a1 + 32), v7);

  return isEqualToString;
}

void sub_27609DA00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_27609DA30(uint64_t a1, void *a2, _BYTE *a3)
{
  v12 = a2;
  if (objc_msgSend_isReimportable(v12, v6, v7, v8) && objc_msgSend_isNewlyImported(v12, v9, v10, v11))
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a3 = 1;
  }
}

void sub_27609DCF0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_calculationEngine(*(a1 + 32), a2, a3, a4);
  v6 = objc_opt_new();
  v7 = *(a1 + 32);
  v8 = objc_opt_class();
  v11 = objc_msgSend_modelEnumeratorForObjectsOfClass_(v7, v9, v8, v10);
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = sub_27609DF08;
  v28[3] = &unk_27A6AFA08;
  v12 = v5;
  v29 = v12;
  v13 = v6;
  v30 = v13;
  objc_msgSend_enumerateUsingBlock_(v11, v14, v28, v15);
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v16 = v13;
  v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v17, &v24, v31, 16);
  if (v21)
  {
    v22 = *v25;
    do
    {
      v23 = 0;
      do
      {
        if (*v25 != v22)
        {
          objc_enumerationMutation(v16);
        }

        objc_msgSend_processDeferredImportActions(*(*(&v24 + 1) + 8 * v23++), v18, v19, v20, v24);
      }

      while (v21 != v23);
      v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v18, &v24, v31, 16);
    }

    while (v21);
  }
}

void sub_27609DF08(uint64_t a1, void *a2)
{
  v20 = a2;
  objc_opt_class();
  v5 = TSUDynamicCast();
  if (!v5)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, "[TSADocumentRoot p_registerAllFormulasAfterImport]_block_invoke_2", v4);
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSADocumentRoot.mm", v9);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v11, v7, v10, 3028, 0, "model enumerator returned a bogus object");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13, v14);
  }

  objc_msgSend_registerAllFormulasWithCalculationEngine_(v5, v3, *(a1 + 32), v4);
  if (objc_msgSend_hasDeferredImportActions(v5, v15, v16, v17))
  {
    objc_msgSend_addObject_(*(a1 + 40), v18, v5, v19);
  }
}

void sub_27609E108(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_27609E510(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_27609E5C4(uint64_t a1)
{
  v2 = objc_alloc(*(a1 + 48));
  *(*(*(a1 + 40) + 8) + 40) = objc_msgSend_initWithDocumentRoot_(v2, v3, *(a1 + 32), v4);

  return MEMORY[0x2821F96F8]();
}

void sub_27609E844(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, void *a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a19, 8);

  _Block_object_dispose((v28 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_27609E8A8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_context(*(a1 + 32), a2, a3, a4);
  objc_msgSend_beginAssertOnModify(v5, v6, v7, v8);
  v13 = objc_msgSend_tsu_fileURLWithPath_(MEMORY[0x277CBEBC0], v9, *(a1 + 40), v10);
  if (v13)
  {
    v14 = *(a1 + 48);
    v15 = *(a1 + 56);
    v16 = *(*(a1 + 72) + 8);
    obj = *(v16 + 40);
    v17 = objc_msgSend_exportToURL_delegate_error_(v14, v11, v13, v15, &obj);
    objc_storeStrong((v16 + 40), obj);
    *(*(*(a1 + 64) + 8) + 24) = v17;
  }

  else
  {
    v18 = objc_msgSend_tsu_fileWriteUnknownErrorWithUserInfo_(MEMORY[0x277CCA9B8], v11, 0, v12);
    v19 = *(*(a1 + 72) + 8);
    v20 = *(v19 + 40);
    *(v19 + 40) = v18;
  }

  objc_msgSend_endAssertOnModify(v5, v21, v22, v23);
  if ((*(*(*(a1 + 64) + 8) + 24) & 1) == 0 && *MEMORY[0x277D81408] != -1)
  {
    sub_27610CA34();
  }
}

void sub_27609E9C4(void *a1, int a2)
{
  if (a2 == 2)
  {
    objc_begin_catch(a1);
    v6 = MEMORY[0x277CCA9B8];
    v10 = objc_msgSend_tsu_resourcesBundle(MEMORY[0x277CCA8D8], v7, v8, v9);
    v12 = objc_msgSend_localizedStringForKey_value_table_(v10, v11, @"Unknown error", &stru_288512028, @"TSApplication");
    v14 = objc_msgSend_tsu_errorWithDomain_code_description_recoverySuggestion_(v6, v13, @"com.apple.iWork.TSApplication", 1, v12, 0);
    v15 = *(*(v2 + 72) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;

    objc_end_catch();
    JUMPOUT(0x27609E964);
  }

  objc_begin_catch(a1);
  JUMPOUT(0x27609E968);
}

uint64_t sub_27609EACC()
{
  *MEMORY[0x277D81410] = TSULogCreateCategory();

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_27609F13C(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v15 = 0;
  v14 = 0;
  v6 = *(a1 + 32);
  v7 = objc_msgSend_name(a2, a2, a3, a4);
  v9 = objc_msgSend_p_parseNumberOutOfBasename_hasNumber_number_(v6, v8, v7, &v15, &v14);

  if (!objc_msgSend_isEqualToString_(v9, v10, *(a1 + 40), v11) || *(a1 + 56) == 1 && v15 == 1 && v14 >= *(a1 + 48))
  {
    v12 = 0;
  }

  else
  {
    v12 = 1;
    *a4 = 1;
  }

  return v12;
}

uint64_t sub_27609F218(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v16 = 0;
  v15 = 0;
  v6 = *(a1 + 32);
  v7 = objc_msgSend_name(a2, a2, a3, a4, 0);
  v9 = objc_msgSend_p_parseNumberOutOfBasename_hasNumber_number_(v6, v8, v7, &v16, &v15);

  v12 = objc_msgSend_indexOfObject_(*(a1 + 40), v10, v9, v11);
  if (v12 == 0x7FFFFFFFFFFFFFFFLL || v12 > *(a1 + 48))
  {
    v13 = 0;
  }

  else
  {
    v13 = 1;
    *a4 = 1;
  }

  return v13;
}

void sub_27609FCC4(uint64_t a1, void *a2)
{
  v3 = a2;
  v7 = objc_msgSend_referencedStyles(v3, v4, v5, v6);
  v10 = objc_msgSend_intersectsSet_(v7, v8, *(a1 + 32), v9);

  if (v10)
  {
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = sub_27609FE00;
    v18[3] = &unk_27A6AFAD0;
    *&v11 = *(a1 + 32);
    *(&v11 + 1) = *(a1 + 40);
    v17 = v11;
    v12 = *(a1 + 48);
    v13 = *(a1 + 56);
    *&v14 = v12;
    *(&v14 + 1) = v13;
    v19 = v17;
    v20 = v14;
    objc_msgSend_replaceReferencedStylesUsingBlock_(v3, v15, v18, v16);
  }
}

id sub_27609FE00(uint64_t a1, void *a2)
{
  v3 = a2;
  v9 = v3;
  if (objc_msgSend_containsObject_(*(a1 + 32), v4, v3, v5))
  {
    v10 = objc_msgSend_stylesheet(*(a1 + 40), v6, v7, v8);
    v9 = objc_msgSend_variationOfStyleMatchingStyle_withNewParentStyle_(v10, v11, v3, *(a1 + 48));

    objc_msgSend_addObject_(*(a1 + 56), v12, v9, v13);
    v17 = objc_msgSend_parent(v9, v14, v15, v16);

    if (v17)
    {
      v21 = *(a1 + 56);
      v22 = objc_msgSend_parent(v9, v18, v19, v20);
      objc_msgSend_addObject_(v21, v23, v22, v24);
    }
  }

  return v9;
}

void sub_2760A007C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_2760A11A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13, void *a14, void *a15, void *a16, uint64_t a17, void *a18, void *a19, uint64_t a20, void *a21, void *a22, void *a23, void *a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a68, 8);

  _Unwind_Resume(a1);
}

void sub_2760A1578(uint64_t a1, void *a2, void *a3)
{
  v66 = a2;
  v5 = a3;
  v9 = objc_msgSend_stylesheet(*(a1 + 32), v6, v7, v8);
  v12 = objc_msgSend_cascadedStyleWithIdentifier_(v9, v10, v66, v11);

  if (v12)
  {
    v16 = objc_msgSend_stylesheet(*(a1 + 32), v13, v14, v15);
    v19 = objc_msgSend_cascadedStyleWithIdentifier_(v16, v17, v5, v18);

    isEqualToString = objc_msgSend_isEqualToString_(*MEMORY[0x277D81008], v20, v66, v21);
    if (v19)
    {
      v25 = isEqualToString;
    }

    else
    {
      v25 = 1;
    }

    if (v25)
    {
      if (!v19)
      {
        objc_opt_class();
        v29 = TSUClassAndProtocolCast();
        if (v29)
        {
          v30 = objc_msgSend_theme(*(a1 + 32), v26, v27, v28, &unk_28854A698);
          v33 = objc_msgSend_indexOfPreset_(v30, v31, v29, v32);

          if (v33 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v37 = objc_msgSend_theme(*(a1 + 32), v34, v35, v36);
            objc_msgSend_removePreset_(v37, v38, v29, v39);
          }

          v40 = objc_msgSend_stylesheet(v12, v34, v35, v36);
          objc_msgSend_removeStyle_(v40, v41, v12, v42);

          v46 = objc_msgSend_stylesheet(*(a1 + 32), v43, v44, v45);
          objc_msgSend_addStyle_withIdentifier_(v46, v47, v12, v5);

          if (v33 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v51 = objc_msgSend_theme(*(a1 + 32), v48, v49, v50);
            v55 = objc_msgSend_presetKind(v29, v52, v53, v54);
            objc_msgSend_insertPreset_ofKind_atIndex_(v51, v56, v29, v55, v33);
          }
        }
      }
    }

    else
    {
      v57 = MEMORY[0x277D81150];
      v58 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "[TSADocumentRoot upgradeTextStylesForUnityAfterSingleStylesheetUpgrade]_block_invoke", v24);
      v61 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v59, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSADocumentRoot.mm", v60);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v57, v62, v58, v61, 3567, 0, "Unexpected: Document has styles with old and new style identifiers: %@ and %@", v66, v5);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v63, v64, v65);
    }
  }
}

void sub_2760A17D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, id a12)
{
  v18 = v16;

  _Unwind_Resume(a1);
}

BOOL sub_2760A186C(uint64_t a1, void *a2)
{
  v2 = a2;
  if (objc_msgSend_isNamed(v2, v3, v4, v5))
  {
    v9 = 0;
  }

  else
  {
    v10 = objc_msgSend_parent(v2, v6, v7, v8);
    v9 = v10 == 0;
  }

  return v9;
}

void sub_2760A18D0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_class();
  v7 = objc_msgSend_stylesOfClass_(v3, v5, v4, v6);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_2760A19D4;
  v10[3] = &unk_27A6AFB68;
  v12 = *(a1 + 40);
  v11 = *(a1 + 32);
  objc_msgSend_enumerateObjectsUsingBlock_(v7, v8, v10, v9);
}

void sub_2760A19D4(uint64_t a1, void *a2)
{
  v5 = a2;
  if ((*(*(a1 + 40) + 16))())
  {
    objc_msgSend_addObject_(*(a1 + 32), v3, v5, v4);
  }
}

BOOL sub_2760A1A50(uint64_t a1, void *a2)
{
  v3 = a2;
  v10 = objc_msgSend_parent(v3, v4, v5, v6);
  if (v10 == *(a1 + 32))
  {
    v12 = objc_msgSend_overridePropertyMap(v3, v7, v8, v9);
    v11 = v12 == 0;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

void sub_2760A1AE0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_class();
  v7 = objc_msgSend_stylesOfClass_(v3, v5, v4, v6);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_2760A1BE4;
  v10[3] = &unk_27A6AFBE0;
  v12 = *(a1 + 40);
  v11 = *(a1 + 32);
  objc_msgSend_enumerateObjectsUsingBlock_(v7, v8, v10, v9);
}

void sub_2760A1BE4(uint64_t a1, void *a2)
{
  v5 = a2;
  if ((*(*(a1 + 40) + 16))())
  {
    objc_msgSend_addObject_(*(a1 + 32), v3, v5, v4);
  }
}

void sub_2760A1C60(uint64_t a1, void *a2)
{
  v3 = a2;
  v7 = objc_msgSend_referencedStyles(v3, v4, v5, v6);
  v10 = objc_msgSend_intersectsSet_(v7, v8, *(a1 + 32), v9);

  if (v10)
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = sub_2760A1D68;
    v13[3] = &unk_27A6AFC08;
    v14 = *(a1 + 32);
    v15 = *(a1 + 40);
    objc_msgSend_replaceReferencedStylesUsingBlock_(v3, v11, v13, v12);
  }
}

void *sub_2760A1D68(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = v3;
  if (objc_msgSend_containsObject_(*(a1 + 32), v4, v3, v5))
  {
    v6 = *(a1 + 40);
  }

  v7 = v6;

  return v6;
}

void sub_2760A1DD0(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20[0] = objc_opt_class();
  v20[1] = objc_opt_class();
  v5 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v4, v20, 2);
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v16, v21, 16);
  if (v9)
  {
    v10 = *v17;
    do
    {
      v11 = 0;
      do
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v5);
        }

        v12 = objc_msgSend_stylesOfClass_(v3, v7, *(*(&v16 + 1) + 8 * v11), v8);
        v15[0] = MEMORY[0x277D85DD0];
        v15[1] = 3221225472;
        v15[2] = sub_2760A1FB0;
        v15[3] = &unk_27A6AFC58;
        v15[4] = *(a1 + 32);
        objc_msgSend_enumerateObjectsUsingBlock_(v12, v13, v15, v14);

        ++v11;
      }

      while (v9 != v11);
      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v7, &v16, v21, 16);
    }

    while (v9);
  }
}

void sub_2760A1FB0(uint64_t a1, void *a2)
{
  v43 = a2;
  if (objc_msgSend_overridesProperty_(v43, v3, 107, v4))
  {
    v8 = objc_msgSend_valueForProperty_(v43, v5, 107, v7);
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || (objc_msgSend_stylesheet(*(a1 + 32), v9, v10, v11), v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend_cascadedStyleWithIdentifier_(v12, v13, v8, v14), v15 = objc_claimAutoreleasedReturnValue(), v12, !v15) && (objc_msgSend_null(MEMORY[0x277CBEB68], v16, v17, v18), (v15 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      objc_opt_class();
      objc_opt_isKindOfClass();
      v15 = objc_msgSend_null(MEMORY[0x277CBEB68], v19, v20, v21);
    }

    objc_msgSend_removeValueForProperty_(v43, v16, 107, v18);

    if (!v15)
    {
      goto LABEL_16;
    }

LABEL_11:
    v29 = objc_msgSend_null(MEMORY[0x277CBEB68], v22, v23, v24);
    v30 = v29;
    if (v15 == v29)
    {
    }

    else
    {
      v31 = String();

      if ((v31 & 1) == 0)
      {
        v34 = MEMORY[0x277D81150];
        v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v32, "[TSADocumentRoot upgradeTextStylesForUnityAfterSingleStylesheetUpgrade]_block_invoke_11", v33);
        v38 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v36, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSADocumentRoot.mm", v37);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v34, v39, v35, v38, 3746, 0, "Theme-referenced document style should have been moved to the theme by this point in the upgrade.");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v40, v41, v42);
      }
    }

    objc_msgSend_setValue_forProperty_(v43, v32, v15, 95);
    goto LABEL_16;
  }

  v25 = objc_msgSend_parent(v43, v5, v6, v7);

  if (v25)
  {
    v15 = 0;
    goto LABEL_16;
  }

  v15 = objc_msgSend_null(MEMORY[0x277CBEB68], v26, v27, v28);
  if (v15)
  {
    goto LABEL_11;
  }

LABEL_16:
}

void sub_2760A2230(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_class();
  v7 = objc_msgSend_stylesOfClass_(v3, v5, v4, v6);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_2760A2300;
  v10[3] = &unk_27A6AFCA8;
  v10[4] = *(a1 + 32);
  objc_msgSend_enumerateObjectsUsingBlock_(v7, v8, v10, v9);
}

void sub_2760A2300(uint64_t a1, void *a2)
{
  v9 = a2;
  if ((objc_msgSend_overridesProperty_(v9, v3, 108, v4) & 1) != 0 || objc_msgSend_overridesProperty_(v9, v5, 109, v6))
  {
    objc_msgSend_removeValueForProperty_(v9, v5, 108, v6);
    objc_msgSend_removeValueForProperty_(v9, v7, 109, v8);
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }
}

void sub_2760A239C(id *a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_class();
  v7 = objc_msgSend_stylesOfClass_(v3, v5, v4, v6);
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = sub_2760A25E4;
  v27[3] = &unk_27A6AFCF8;
  v28 = a1[4];
  v29 = a1[5];
  v30 = a1[6];
  objc_msgSend_enumerateObjectsUsingBlock_(v7, v8, v27, v9);

  v13 = objc_msgSend_theme(a1[7], v10, v11, v12);
  v16 = objc_msgSend_presetsOfKind_(v13, v14, *MEMORY[0x277D80BB0], v15);

  v17 = objc_opt_class();
  v20 = objc_msgSend_stylesOfClass_(v3, v18, v17, v19);
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = sub_2760A279C;
  v24[3] = &unk_27A6AFD20;
  v21 = v16;
  v25 = v21;
  v26 = a1[8];
  objc_msgSend_enumerateObjectsUsingBlock_(v20, v22, v24, v23);
}

void sub_2760A25E4(uint64_t a1, void *a2)
{
  v27 = a2;
  v8 = objc_msgSend_objectForKeyedSubscript_(*(a1 + 32), v3, v27, v4);
  if (!v8)
  {
    v21 = objc_msgSend_parent(v27, v5, v6, v7);
    if (v21)
    {
    }

    else
    {
      v8 = objc_msgSend_initialListStyle(v27, v22, v23, v24);

      if (!v8)
      {
        objc_msgSend_setInitialListStyle_(v27, v25, *(a1 + 48), v26);
        goto LABEL_13;
      }
    }

    v8 = 0;
    goto LABEL_13;
  }

  if (objc_msgSend_containsObject_(*(a1 + 40), v5, v8, v7))
  {
    v9 = *(a1 + 48);

    v8 = v9;
  }

  if ((String() & 1) == 0)
  {
    String();
  }

  if ((String() & 1) == 0)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSADocumentRoot upgradeTextStylesForUnityAfterSingleStylesheetUpgrade]_block_invoke_15", v11);
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSADocumentRoot.mm", v15);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v17, v13, v16, 3808, 0, "Theme-referenced document style should have been moved to the theme by this point in the upgrade.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20);
  }

  objc_msgSend_setInitialListStyle_(v27, v10, v8, v11);
LABEL_13:
}

void sub_2760A279C(uint64_t a1, void *a2)
{
  v30 = a2;
  v8 = objc_msgSend_overrideIntValueForProperty_(v30, v3, 188, v4);
  if (v8 >= 1)
  {
    v9 = objc_msgSend_count(*(a1 + 32), v5, v6, v7);
    v6 = v8;
    if (v9 > v8)
    {
      v10 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 32), v5, v8, v7);
      v14 = objc_msgSend_paragraphStyle(v10, v11, v12, v13);
      objc_msgSend_setDefaultParagraphStyle_(v30, v15, v14, v16);

LABEL_8:
      goto LABEL_9;
    }
  }

  v10 = objc_msgSend_parent(v30, v5, v6, v7);
  if (v10 || !objc_msgSend_isIdentified(v30, v17, v18, v19))
  {
    goto LABEL_8;
  }

  v23 = objc_msgSend_styleIdentifier(v30, v20, v21, v22);
  v24 = String();
  isEqualToString = objc_msgSend_isEqualToString_(v24, v25, @"textbox", v26);

  if (isEqualToString)
  {
    objc_msgSend_setDefaultParagraphStyle_(v30, v28, *(a1 + 40), v29);
  }

LABEL_9:
  objc_msgSend_removeValueForProperty_(v30, v28, 188, v29);
}

void sub_2760A2A90(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_class();
  v7 = objc_msgSend_stylesOfClass_(v3, v5, v4, v6);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_2760A2B78;
  v10[3] = &unk_27A6AFD70;
  v11 = *(a1 + 32);
  objc_msgSend_enumerateObjectsUsingBlock_(v7, v8, v10, v9);
}

void sub_2760A2B78(uint64_t a1, void *a2)
{
  v28 = a2;
  v5 = objc_msgSend_objectForProperty_(v28, v3, 189, v4);
  v9 = objc_msgSend_null(MEMORY[0x277CBEB68], v6, v7, v8);

  if (v9 == v5)
  {
    v10 = 0;
  }

  else
  {
    v10 = v5;
  }

  if (!v10)
  {
    v17 = objc_msgSend_parent(v28, v11, v12, v13);
    if (v17 || !objc_msgSend_isIdentified(v28, v14, v15, v16))
    {
    }

    else
    {
      v21 = objc_msgSend_styleIdentifier(v28, v18, v19, v20);
      v22 = String();
      isEqualToString = objc_msgSend_isEqualToString_(v22, v23, @"textbox", v24);

      if (isEqualToString)
      {
        objc_msgSend_setDefaultParagraphStyle_(v28, v26, *(a1 + 32), v27);
      }
    }
  }
}

void sub_2760A2CC0(uint64_t a1, void *a2)
{
  v19 = a2;
  v8 = objc_msgSend_textStorage(v19, v2, v3, v4);
  if (v8)
  {
    v9 = objc_msgSend_textStorage(v19, v5, v6, v7);
    v13 = objc_msgSend_wpKind(v9, v10, v11, v12);

    if (v13 == 7)
    {
      v17 = objc_msgSend_textStorage(v19, v14, v15, v16);
      objc_msgSend_nonUndoableSetWPKind_keepHighlights_(v17, v18, 3, 0);
    }
  }
}

void sub_2760A2D94(uint64_t a1, void *a2)
{
  v8 = a2;
  v2 = objc_opt_class();
  v5 = objc_msgSend_stylesOfClass_(v8, v3, v2, v4);
  objc_msgSend_enumerateObjectsUsingBlock_(v5, v6, &unk_28850F670, v7);
}

void sub_2760A2E24(uint64_t a1, void *a2)
{
  v14 = a2;
  if (objc_msgSend_isIdentified(v14, v2, v3, v4))
  {
    v8 = objc_msgSend_styleIdentifier(v14, v5, v6, v7);
    isEqualToString = objc_msgSend_isEqualToString_(v8, v9, *MEMORY[0x277D80FE0], v10);

    if (isEqualToString)
    {
      objc_msgSend_upgradeCommentInfoStyle_(MEMORY[0x277D80E20], v12, v14, v13);
    }
  }
}

uint64_t sub_2760A3500(uint64_t a1, void *a2)
{
  v2 = a2;
  v8 = objc_msgSend_valueForProperty_(v2, v3, 516, v4);
  if (v8)
  {
    v9 = objc_msgSend_null(MEMORY[0x277CBEB68], v5, v6, v7);
    v13 = v9;
    if (v8 == v9)
    {
    }

    else
    {
      isClear = objc_msgSend_isClear(v8, v10, v11, v12);

      if ((isClear & 1) == 0)
      {
        isNullStroke = 0;
        goto LABEL_13;
      }
    }
  }

  v19 = objc_msgSend_valueForProperty_(v2, v5, 517, v7);
  if (v19)
  {
    v23 = objc_msgSend_null(MEMORY[0x277CBEB68], v16, v17, v18);
    if (v19 == v23)
    {
      isNullStroke = 1;
    }

    else
    {
      isNullStroke = objc_msgSend_isNullStroke(v19, v20, v21, v22);
    }
  }

  else
  {
    isNullStroke = 1;
  }

LABEL_13:
  return isNullStroke;
}

void sub_2760A3620(uint64_t a1, void *a2)
{
  v21 = a2;
  v6 = objc_msgSend_tswpShapeStyle(v21, v3, v4, v5);
  v12 = objc_msgSend_baseStyleForVariation(v6, v7, v8, v9);
  if (v12 != *(a1 + 32) && objc_msgSend_containsObject_(*(a1 + 40), v10, v12, v11))
  {
    if ((*(*(a1 + 64) + 16))())
    {
      v16 = objc_msgSend_stylesheet(*(a1 + 48), v13, v14, v15);
      v18 = objc_msgSend_variationOfStyleMatchingStyle_withNewParentStyle_(v16, v17, v6, *(a1 + 32));
      objc_msgSend_setStyle_(v21, v19, v18, v20);
    }

    else
    {
      objc_msgSend_addObject_(*(a1 + 56), v13, v12, v15);
    }
  }
}

void sub_2760A3708(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v12;

  _Unwind_Resume(a1);
}

void sub_2760A3754(void **a1, void *a2)
{
  v25 = a2;
  if (objc_msgSend_containsObject_(a1[4], v3, v25, v4))
  {
    v8 = objc_msgSend_styleIdentifier(v25, v5, v6, v7);
    v12 = objc_msgSend_stylesheet(a1[5], v9, v10, v11);
    v13 = TSWPShapePackageStringForPresetKind();
    v14 = String();
    v15 = String();
    v17 = objc_msgSend_unusedStyleIdentifierWithPackageString_styleDescriptor_contentTag_(v12, v16, v13, v14, v15);

    v21 = objc_msgSend_stylesheet(a1[5], v18, v19, v20);
    objc_msgSend_setIdentifier_ofStyle_(v21, v22, v17, v25);

    objc_msgSend_addObject_(a1[6], v23, v25, v24);
  }
}

void sub_2760A3B04(uint64_t a1, void *a2)
{
  v7 = a2;
  if ((objc_msgSend_overridesProperty_(v7, v3, 899, v4) & 1) != 0 || (objc_msgSend_overridesProperty_(v7, v5, 901, v6) & 1) != 0 || (objc_msgSend_overridesProperty_(v7, v5, 900, v6) & 1) != 0 || objc_msgSend_overridesProperty_(v7, v5, 902, v6))
  {
    objc_msgSend_addObject_(*(a1 + 32), v5, v7, v6);
  }
}

void sub_2760A3E44(uint64_t a1, void *a2)
{
  v5 = a2;
  if (objc_opt_respondsToSelector())
  {
    objc_msgSend_setStylesheetForUpgradeToSingleStylesheet_(v5, v3, *(a1 + 32), v4);
  }
}

void sub_2760A4610(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, id a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, id a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, id a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a36, 8);
  objc_destroyWeak(&a41);

  _Block_object_dispose(&a61, 8);
  _Block_object_dispose(&a67, 8);
  objc_destroyWeak(&a72);
  _Block_object_dispose(&STACK[0x200], 8);
  _Block_object_dispose(&STACK[0x220], 8);

  _Block_object_dispose(&STACK[0x250], 8);
  _Block_object_dispose(&STACK[0x280], 8);

  _Unwind_Resume(a1);
}

uint64_t sub_2760A4774(uint64_t a1, uint64_t a2)
{
  result = MEMORY[0x277C95D60](*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

id sub_2760A47A8(uint64_t a1, void *a2)
{
  v195 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v7 = v3;
  if (!v3)
  {
    v24 = 0;
    goto LABEL_32;
  }

  if (!objc_msgSend_isObsolete(v3, v4, v5, v6))
  {
    if (objc_msgSend_isVariation(v7, v8, v9, v10))
    {
      v28 = objc_msgSend_parent(v7, v25, v26, v27);

      if (!v28)
      {
        v82 = v7;
        v89 = objc_msgSend_parentStyleForFixingOrphanVariation(v82, v83, v84, v85);
        if (v89)
        {
          v90 = objc_msgSend_stylesheet(*(a1 + 32), v86, v87, v88);
          v94 = objc_msgSend_overridePropertyMap(v82, v91, v92, v93);
          v24 = objc_msgSend_variationOfStyle_propertyMap_(v90, v95, v89, v94);

          v99 = objc_msgSend_stylesheet(v82, v96, v97, v98);
          objc_msgSend_removeStyle_(v99, v100, v82, v101);

          objc_msgSend_addObject_(*(a1 + 40), v102, v82, v103);
          goto LABEL_32;
        }

        objc_msgSend_setIsVariation_(v82, v86, 0, v88);
      }
    }

    v29 = objc_msgSend_parent(v7, v25, v26, v27);
    if (v29)
    {
      WeakRetained = objc_loadWeakRetained((*(*(a1 + 56) + 8) + 40));
      v34 = objc_msgSend_parent(v7, v31, v32, v33);
      v35 = WeakRetained[2](WeakRetained, v34);
    }

    else
    {
      v35 = 0;
    }

    v39 = objc_msgSend_stylesheet(v7, v36, v37, v38);
    v40 = *(*(*(a1 + 64) + 8) + 40);

    if (v39 != v40)
    {
      v44 = v7;
      v48 = objc_msgSend_stylesheet(v44, v45, v46, v47);
      objc_msgSend_setIsLocked_(v48, v49, 0, v50);

      v54 = objc_msgSend_stylesheet(v44, v51, v52, v53);
      objc_msgSend_removeStyle_(v54, v55, v44, v56);

      objc_msgSend_addStyle_withParent_identifier_shouldDoDOLC_(*(*(*(a1 + 64) + 8) + 40), v57, v44, v35, 0, 0);
      *(*(*(a1 + 72) + 8) + 24) = 1;
    }

    if (!objc_msgSend_isVariation(v7, v41, v42, v43) || (objc_msgSend_overridePropertyMap(v7, v58, v59, v60), (v62 = objc_claimAutoreleasedReturnValue()) != 0) && (objc_msgSend_overridePropertyMap(v7, v58, v61, v60), v63 = objc_claimAutoreleasedReturnValue(), v67 = objc_msgSend_count(v63, v64, v65, v66), v63, v62, v67))
    {
      if (objc_msgSend_isVariation(v7, v58, v59, v60))
      {
        v71 = objc_msgSend_parent(v7, v68, v69, v70);

        if (v71)
        {
          v72 = *(*(*(a1 + 64) + 8) + 40);
          v73 = objc_msgSend_parent(v7, v68, v69, v70);
          v77 = objc_msgSend_overridePropertyMap(v7, v74, v75, v76);
          v24 = objc_msgSend_variationOfStyle_propertyMap_(v72, v78, v73, v77);

          if (v24 != v7)
          {
            objc_msgSend_addObject_(*(a1 + 40), v79, v7, v80);
LABEL_31:

            goto LABEL_32;
          }
        }
      }

      if ((objc_msgSend_isVariation(v7, v68, v69, v70) & 1) == 0)
      {
        v107 = objc_msgSend_name(v7, v104, v105, v106);
        if (v107 || (objc_msgSend_parent(v7, v108, v109, v110), (v107 = objc_claimAutoreleasedReturnValue()) != 0))
        {
        }

        else
        {
          v115 = objc_msgSend_styleIdentifier(v7, v111, v112, v113);

          if (!v115)
          {
            v118 = *(*(*(a1 + 80) + 8) + 40);
            if (!v118)
            {
              v119 = objc_alloc_init(MEMORY[0x277D812B8]);
              v120 = *(*(a1 + 80) + 8);
              v121 = *(v120 + 40);
              *(v120 + 40) = v119;

              v118 = *(*(*(a1 + 80) + 8) + 40);
            }

            v122 = objc_msgSend_objectForKeyedSubscript_(v118, v116, v7, v117);
            if (v122)
            {
              goto LABEL_64;
            }

            context = objc_autoreleasePoolPush();
            v126 = objc_msgSend_overridePropertyMap(v7, v123, v124, v125);
            v127 = *(*(*(a1 + 64) + 8) + 40);
            v191[0] = MEMORY[0x277D85DD0];
            v191[1] = 3221225472;
            v191[2] = sub_2760A511C;
            v191[3] = &unk_27A6AFEB8;
            v24 = v7;
            v192 = v24;
            v185 = v126;
            v193 = v185;
            v186 = objc_msgSend_stylesPassingTest_(v127, v128, v191, v129);
            v133 = objc_msgSend_overridePropertyMap(v24, v130, v131, v132);
            IsEqualTo = objc_msgSend_overridePropertyMapIsEqualTo_(v24, v134, v133, v135);

            if (!objc_msgSend_count(v186, v137, v138, v139))
            {
              v142 = MEMORY[0x277D81150];
              v182 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v140, "[TSADocumentRoot removeRedundantStyleOverridesAndEnsureReferencedStylesAreInStylesheetWithFileFormatVersion:]_block_invoke", v141);
              v181 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v143, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSADocumentRoot.mm", v144);
              v148 = objc_msgSend_styles(*(*(*(a1 + 64) + 8) + 40), v145, v146, v147);
              if (objc_msgSend_containsObject_(v148, v149, v24, v150))
              {
                v154 = @"YES";
              }

              else
              {
                v154 = @"NO";
              }

              if (IsEqualTo)
              {
                v155 = @"YES";
              }

              else
              {
                v155 = @"NO";
              }

              if (IsEqualTo)
              {
                v156 = @"None";
              }

              else
              {
                v180 = objc_msgSend_overridePropertyMap(v24, v151, v152, v153);
                v179 = objc_msgSend_overridePropertyMap(v24, v157, v158, v159);
                v156 = objc_msgSend_diffOnlyDifferences_(v180, v160, v179, v161);
              }

              objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v142, v151, v182, v181, 4228, 0, "Found no matching styles for style %{public}@. It should have matched itself at least. Possible  reasons it didn't match itself:\nIs the style in the document stylesheet? (if not, it wouldn't match itself) %{public}@\nIs [style overridePropertyMapIsEqualTo:style.overridePropertyMap] == YES? (if not, it wouldn't match itself) %{public}@ Differences against itself: %{public}@", v24, v154, v155, v156);
              if ((IsEqualTo & 1) == 0)
              {
              }

              objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v162, v163, v164);
            }

            v165 = objc_msgSend_sortedArrayUsingComparator_(v186, v140, &unk_28850F6B0, v141);
            v171 = objc_msgSend_count(v165, v166, v167, v168);
            if (v171)
            {
              v122 = objc_msgSend_objectAtIndexedSubscript_(v165, v169, 0, v170);
              v183 = v171;
              v189 = 0u;
              v190 = 0u;
              v187 = 0u;
              v188 = 0u;
              v172 = v186;
              v175 = objc_msgSend_countByEnumeratingWithState_objects_count_(v172, v173, &v187, v194, 16);
              if (v175)
              {
                v176 = *v188;
                do
                {
                  for (i = 0; i != v175; ++i)
                  {
                    if (*v188 != v176)
                    {
                      objc_enumerationMutation(v172);
                    }

                    objc_msgSend_setObject_forKeyedSubscript_(*(*(*(a1 + 80) + 8) + 40), v174, v122, *(*(&v187 + 1) + 8 * i));
                  }

                  v175 = objc_msgSend_countByEnumeratingWithState_objects_count_(v172, v174, &v187, v194, 16);
                }

                while (v175);
              }

              v171 = v183;
            }

            else
            {
              v178 = v24;
              v122 = 0;
            }

            objc_autoreleasePoolPop(context);
            if (v171)
            {
LABEL_64:
              v122 = v122;
              v24 = v122;
            }

            goto LABEL_31;
          }
        }
      }

      v81 = v7;
    }

    else
    {
      objc_msgSend_addObject_(*(a1 + 40), v58, v7, v60);
      v81 = v35;
    }

    v24 = v81;
    goto LABEL_31;
  }

  *(*(*(a1 + 48) + 8) + 24) = 1;
  v11 = *(a1 + 88);
  if (v11 >= UnsafePointer())
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[TSADocumentRoot removeRedundantStyleOverridesAndEnsureReferencedStylesAreInStylesheetWithFileFormatVersion:]_block_invoke", v13);
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSADocumentRoot.mm", v17);
    v19 = NSStringFromTSPVersion();
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v20, v15, v18, 4135, 0, "found obsolete style %{public}@ in document from current version %{public}@. Obsolete styles should have been cleaned up", v7, v19);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23);
  }

  v24 = v7;
LABEL_32:

  return v24;
}

uint64_t sub_2760A511C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_class();
  if (objc_msgSend_isMemberOfClass_(v3, v5, v4, v6))
  {
    v13 = objc_msgSend_styleIdentifier(v3, v7, v8, v9);
    if (v13 || (objc_msgSend_isVariation(v3, v10, v11, v12) & 1) != 0)
    {
      IsEqualTo = 0;
    }

    else
    {
      v21 = objc_msgSend_parent(v3, v14, v15, v16);
      if (v21)
      {
        IsEqualTo = 0;
      }

      else
      {
        IsEqualTo = objc_msgSend_overridePropertyMapIsEqualTo_(v3, v19, *(a1 + 40), v20);
      }
    }
  }

  else
  {
    IsEqualTo = 0;
  }

  return IsEqualTo;
}

uint64_t sub_2760A51E8(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v8 = objc_msgSend_objectUUID(a2, v5, v6, v7);
  v12 = objc_msgSend_UUIDString(v8, v9, v10, v11);
  v16 = objc_msgSend_objectUUID(v4, v13, v14, v15);
  v20 = objc_msgSend_UUIDString(v16, v17, v18, v19);
  v23 = objc_msgSend_compare_(v12, v21, v20, v22);

  return v23;
}

void sub_2760A52C0(void *a1, void *a2)
{
  v3 = a2;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_2760A5390;
  v8[3] = &unk_27A6AFF28;
  v4 = a1[4];
  v11 = a1[5];
  v9 = v4;
  v10 = v3;
  v12 = a1[6];
  v5 = v3;
  objc_msgSend_replaceReferencedStylesUsingBlock_(v5, v6, v8, v7);
}

id sub_2760A5390(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = (*(*(*(*(a1 + 48) + 8) + 40) + 16))();
  if (v6 != v3)
  {
    if (objc_msgSend_containsObject_(*(a1 + 32), v4, v3, v5))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        *(*(*(a1 + 56) + 8) + 24) = 1;
      }
    }
  }

  return v6;
}

void sub_2760A5460(void *a1, void *a2)
{
  v3 = a2;
  v7 = objc_msgSend_parent(v3, v4, v5, v6);
  if (v7)
  {
    WeakRetained = objc_loadWeakRetained((*(a1[4] + 8) + 40));
    WeakRetained[2](WeakRetained, v7);
  }

  v9 = (*(*(*(a1[5] + 8) + 40) + 16))();

  if (v9 == v3)
  {
    v13 = objc_msgSend_propertyMap(v3, v10, v11, v12);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = sub_2760A55A4;
    v17[3] = &unk_27A6AFF78;
    v14 = a1[4];
    v17[4] = a1[6];
    v17[5] = v14;
    objc_msgSend_enumeratePropertiesAndObjectsUsingBlock_(v13, v15, v17, v16);
  }
}

void sub_2760A55A4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v13 = a4;
  objc_opt_class();
  v5 = TSUDynamicCast();
  v9 = v5;
  if (v5)
  {
    v10 = objc_msgSend_stylesheet(v5, v6, v7, v8);
    v11 = *(*(*(a1 + 32) + 8) + 40);

    if (v10 != v11)
    {
      WeakRetained = objc_loadWeakRetained((*(*(a1 + 40) + 8) + 40));
      WeakRetained[2](WeakRetained, v9);
    }
  }
}

void sub_2760A5664(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_2760A5694(uint64_t a1, void *a2, void *a3)
{
  v20 = a2;
  v4 = a3;
  if (objc_msgSend_isObsolete(v4, v5, v6, v7))
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSADocumentRoot removeRedundantStyleOverridesAndEnsureReferencedStylesAreInStylesheetWithFileFormatVersion:]_block_invoke_8", v9);
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSADocumentRoot.mm", v13);
    v15 = NSStringFromTSPVersion();
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v16, v11, v14, 4352, 0, "object %{public}@ uses obsolete style %{public}@. Upgrade code should have removed all references to obsolete styles. Document version: %{public}@", v20, v4, v15);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19);
  }
}

void sub_2760A578C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, id a12)
{
  v16 = v15;

  _Unwind_Resume(a1);
}

void sub_2760A6340(int8x16_t *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  v8 = objc_autoreleasePoolPush();
  objc_opt_class();
  v9 = TSUCheckedDynamicCast();
  v12 = v9;
  if (v9 && objc_msgSend_overridesProperty_(v9, v10, 32, v11) && (objc_msgSend_overridesProperty_(v12, v13, 50, v14) & 1) == 0)
  {
    objc_msgSend_overrideCGFloatValueForProperty_(v12, v15, 32, v16);
    if (v19 <= 0.0)
    {
      v21 = MEMORY[0x277D81150];
      v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "[TSADocumentRoot p_upgradeRemainingOutlinedTextStylesWithFileFormatVersion:]_block_invoke", v18);
      v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSADocumentRoot.mm", v24);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v21, v26, v22, v25, 4490, 0, "Should have upgraded this style in-place in TSSStyle (TSWPArchivingAdditions).");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v28, v29);
    }

    else
    {
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = sub_2760A6520;
      v30[3] = &unk_27A6AFFE8;
      v30[4] = v12;
      v32 = v19;
      v20 = a1[2];
      v31 = vextq_s8(v20, v20, 8uLL);
      v33 = a3;
      v34 = a4;
      objc_msgSend_enumerateWithAttributeKind_inRange_usingBlock_(v20.i64[0], v17, 0, a3, a4, v30);
    }
  }

  objc_autoreleasePoolPop(v8);
}

void sub_2760A6520(uint64_t a1, void *a2, NSUInteger a3, NSUInteger a4)
{
  v79 = a2;
  objc_opt_class();
  v9 = TSUCheckedDynamicCast();
  if (!v9)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSADocumentRoot p_upgradeRemainingOutlinedTextStylesWithFileFormatVersion:]_block_invoke_2", v8);
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSADocumentRoot.mm", v13);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v15, v11, v14, 4500, 0, "invalid nil value for '%{public}s'", "currentParagraphStyle");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17, v18);
  }

  objc_opt_class();
  v19 = TSWPResolvePropertyForStyles();
  v20 = TSUCheckedDynamicCast();

  objc_opt_class();
  v21 = TSWPResolvePropertyForStyles();
  v22 = TSUCheckedDynamicCast();

  if (v20)
  {
    if (v22)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  objc_opt_class();
  v26 = TSWPResolvePropertyForStyles();
  v27 = TSUCheckedDynamicCast();

  v31 = MEMORY[0x277D801F8];
  if (v27)
  {
    v32 = objc_msgSend_color(v27, v28, v29, v30);
    v20 = objc_msgSend_colorWithColor_(v31, v33, v32, v34);
  }

  else
  {
    v20 = objc_msgSend_clearColor(MEMORY[0x277D801F8], v28, v29, v30);
  }

  if (!v22)
  {
LABEL_10:
    v35 = MEMORY[0x277D81150];
    v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "[TSADocumentRoot p_upgradeRemainingOutlinedTextStylesWithFileFormatVersion:]_block_invoke_2", v25);
    v39 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v37, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSADocumentRoot.mm", v38);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v35, v40, v36, v39, 4523, 0, "Should be able to resolve a font size for stroke upgrade.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v41, v42, v43);
    v22 = &unk_28851B418;
  }

LABEL_11:
  v44 = objc_msgSend_clearColor(MEMORY[0x277D801F8], v23, v24, v25);
  isEqual = objc_msgSend_isEqual_(v20, v45, v44, v46);

  if (isEqual)
  {
    v54 = objc_msgSend_null(MEMORY[0x277CBEB68], v48, v49, v50);
  }

  else
  {
    objc_msgSend_tsu_CGFloatValue(v22, v48, v49, v50);
    v56 = v55;
    v57 = *(a1 + 56);
    v58 = MEMORY[0x277D803C0];
    v62 = objc_msgSend_referenceColor(v20, v59, v60, v61);
    v54 = objc_msgSend_strokeWithColor_width_(v58, v63, v62, v64, v56 * v57 * 0.01);
  }

  v65 = MEMORY[0x277D80AB8];
  v66 = objc_msgSend_null(MEMORY[0x277CBEB68], v51, v52, v53);
  v69 = objc_msgSend_propertyMapWithPropertiesAndValues_(v65, v67, 50, v68, v54, 48, v66, 0);

  objc_msgSend_willModifyForUpgrade(*(a1 + 40), v70, v71, v72);
  objc_msgSend_willModifyForUpgrade(*(a1 + 48), v73, v74, v75);
  v77 = objc_msgSend_variationOfStyle_propertyMap_(*(a1 + 40), v76, *(a1 + 32), v69);
  v81.location = a3;
  v81.length = a4;
  v78 = NSIntersectionRange(*(a1 + 64), v81);
  objc_msgSend_setCharacterStyle_range_undoTransaction_(*(a1 + 48), v78.length, v77, v78.location, v78.length, 0);
}

void sub_2760A7270(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_2760A72B8(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = MEMORY[0x277CBEA90];
  if (*(a1[4] + 416))
  {
    v11 = objc_msgSend_tsu_fileURLWithPath_(MEMORY[0x277CBEBC0], a2, a1[5], a4);
    v7 = objc_msgSend_tsp_dataWithContentsOfURL_decryptionKey_(v5, v6, v11, *(a1[4] + 416));
    v8 = *(a1[6] + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;
  }

  else
  {
    *(*(a1[6] + 8) + 40) = objc_msgSend_dataWithContentsOfFile_(MEMORY[0x277CBEA90], a2, a1[5], a4);
  }

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_2760A7414(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], a2, a3, a4);
  v9 = objc_msgSend_documentCachePath(*(a1 + 32), v6, v7, v8);
  objc_msgSend_removeItemAtPath_error_(v5, v10, v9, 0);

  v14 = objc_msgSend_context(*(a1 + 32), v11, v12, v13);
  v18 = objc_msgSend_decryptionKey(v14, v15, v16, v17);
  v19 = *(a1 + 32);
  v20 = *(v19 + 416);
  *(v19 + 416) = v18;

  v23 = *(a1 + 32);

  return MEMORY[0x2821F9670](v23, sel_documentCacheWasInvalidated, v21, v22);
}

void sub_2760A7880(_Unwind_Exception *a1)
{
  _Block_object_dispose((v6 - 120), 8);

  _Unwind_Resume(a1);
}

void sub_2760A7958(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = a1[5];
  if (*(a1[4] + 416))
  {
    v32 = objc_msgSend_tsu_fileURLWithPath_(MEMORY[0x277CBEBC0], a2, a1[6], a4);
    *(*(a1[7] + 8) + 24) = objc_msgSend_tsp_writeToURL_encryptionKey_(v5, v6, v32, *(a1[4] + 416));
  }

  else
  {
    v7 = a1[6];
    v8 = *(a1[8] + 8);
    obj = *(v8 + 40);
    v9 = objc_msgSend_writeToFile_options_error_(v5, a2, v7, 0, &obj);
    objc_storeStrong((v8 + 40), obj);
    *(*(a1[7] + 8) + 24) = v9;
    if ((*(*(a1[7] + 8) + 24) & 1) == 0)
    {
      v12 = MEMORY[0x277D81150];
      v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSADocumentRoot writeData:atDocumentCachePath:]_block_invoke", v11);
      v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSADocumentRoot.mm", v15);
      v17 = a1[6];
      v18 = objc_opt_class();
      v19 = NSStringFromClass(v18);
      v23 = objc_msgSend_domain(*(*(a1[8] + 8) + 40), v20, v21, v22);
      v27 = objc_msgSend_code(*(*(a1[8] + 8) + 40), v24, v25, v26);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v28, v13, v16, 4709, 0, "Unable to write to cache path: %@. errorClass=%{public}@, domain=%{public}@, code=%zd (%@) ", v17, v19, v23, v27, *(*(a1[8] + 8) + 40));

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v29, v30, v31);
    }
  }
}

void sub_2760A7D6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2760A7DC4(uint64_t a1)
{
  if (*(*(a1 + 32) + 416))
  {
    v2 = objc_autoreleasePoolPush();
    v4 = objc_msgSend_tsp_dataWithContentsOfURL_decryptionKey_(MEMORY[0x277CBEA90], v3, *(a1 + 48), *(*(a1 + 32) + 416));
    *(*(*(a1 + 64) + 8) + 24) = CGImageSourceCreateWithData(v4, *(a1 + 56));

    objc_autoreleasePoolPop(v2);
  }

  else
  {
    v5 = CFURLCreateWithFileSystemPath(*MEMORY[0x277CBECE8], *(a1 + 40), kCFURLPOSIXPathStyle, 0);
    if (v5)
    {
      v6 = v5;
      *(*(*(a1 + 64) + 8) + 24) = CGImageSourceCreateWithURL(*(a1 + 48), *(a1 + 56));

      CFRelease(v6);
    }
  }
}

void sub_2760A7F98(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_2760A8270(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (*(a1 + 32) != v5)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = sub_2760A8338;
    v8[3] = &unk_27A6B00D8;
    v9 = *(a1 + 40);
    v10 = a3;
    objc_msgSend_enumeratePencilAnnotationsUsingBlock_(v5, v6, v8, v7);
  }
}

uint64_t sub_2760A8338(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = (*(*(a1 + 32) + 16))();
  if (a3)
  {
    v6 = *(a1 + 40);
    if (v6)
    {
      *v6 = *a3;
    }
  }

  return result;
}

id sub_2760A8F64(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v127 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_mainBundle(MEMORY[0x277CCA8D8], a2, a3, a4);
  v8 = objc_msgSend_bundlePath(v4, v5, v6, v7);
  v11 = objc_msgSend_stringByAppendingPathComponent_(v8, v9, @"Contents", v10);

  v14 = objc_msgSend_stringByAppendingPathComponent_(v11, v12, @"version.plist", v13);

  v18 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v15, v16, v17);
  LODWORD(v8) = objc_msgSend_fileExistsAtPath_(v18, v19, v14, v20);

  if (!v8)
  {
    goto LABEL_7;
  }

  v24 = objc_msgSend_dictionaryWithContentsOfFile_(MEMORY[0x277CBEAC0], v21, v14, v23);
  v27 = objc_msgSend_objectForKey_(v24, v25, @"CFBundleShortVersionString", v26);
  v30 = objc_msgSend_objectForKey_(v24, v28, @"CFBundleVersion", v29);
  v33 = objc_msgSend_objectForKey_(v24, v31, @"BuildVersion", v32);
  v36 = v33;
  v37 = 0;
  if (v27 && v30 && v33)
  {
    v37 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v34, @"%@-%@-%@", v35, v27, v30, v33);
  }

  if (!v37)
  {
LABEL_7:
    v38 = objc_msgSend_mainBundle(MEMORY[0x277CCA8D8], v21, v22, v23);
    v40 = objc_msgSend_pathForResource_ofType_(v38, v39, @"BuildVersion", @"plist");

    v43 = objc_msgSend_dictionaryWithContentsOfFile_(MEMORY[0x277CBEAC0], v41, v40, v42);
    v37 = objc_msgSend_objectForKey_(v43, v44, @"build", v45);

    if (v37)
    {
      v14 = v40;
      goto LABEL_40;
    }

    v47 = objc_msgSend_mainBundle(MEMORY[0x277CCA8D8], v21, v46, v23);
    v14 = objc_msgSend_pathForResource_ofType_inDirectory_(v47, v48, @"Root", @"plist", @"Settings.bundle");

    v51 = objc_msgSend_dictionaryWithContentsOfFile_(MEMORY[0x277CBEAC0], v49, v14, v50);
    v121 = v51;
    if (v51)
    {
      v54 = objc_msgSend_objectForKey_(v51, v52, @"PreferenceSpecifiers", v53);
      v120 = v54;
      if (v54)
      {
        v124 = 0u;
        v125 = 0u;
        v122 = 0u;
        v123 = 0u;
        v55 = v54;
        v59 = objc_msgSend_countByEnumeratingWithState_objects_count_(v55, v56, &v122, v126, 16);
        if (v59)
        {
          v60 = *v123;
          while (2)
          {
            for (i = 0; i != v59; ++i)
            {
              if (*v123 != v60)
              {
                objc_enumerationMutation(v55);
              }

              v62 = *(*(&v122 + 1) + 8 * i);
              v63 = objc_msgSend_objectForKey_(v62, v57, @"Key", v58);
              isEqualToString = objc_msgSend_isEqualToString_(v63, v64, @"TSABuildID", v65);

              if (isEqualToString)
              {
                v68 = objc_msgSend_objectForKey_(v62, v57, @"Titles", v58);
                v72 = v68;
                if (v68 && objc_msgSend_count(v68, v69, v70, v71))
                {
                  v37 = objc_msgSend_objectAtIndex_(v72, v73, 0, v74);
                  v80 = objc_msgSend_rangeOfString_(v37, v75, @"-", v76);
                  if (v80 != 0x7FFFFFFFFFFFFFFFLL)
                  {
                    if (v80 == objc_msgSend_length(v37, v77, v78, v79) - 1)
                    {
                      v83 = MEMORY[0x277D81150];
                      v84 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v81, "NSString *TSABuildVersionString()", v82);
                      v87 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v85, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSADocumentRoot.mm", v86);
                      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v83, v88, v84, v87, 5431, 0, "Not expecting to find a build version string with the only hyphen as the last character");

                      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v89, v90, v91);
                    }

                    else
                    {
                      v119 = objc_msgSend_substringFromIndex_(v37, v81, v80 + 1, v82);

                      v37 = v119;
                    }
                  }
                }

                else
                {
                  v37 = 0;
                }

                goto LABEL_29;
              }
            }

            v59 = objc_msgSend_countByEnumeratingWithState_objects_count_(v55, v57, &v122, v126, 16);
            if (v59)
            {
              continue;
            }

            break;
          }
        }

        v37 = 0;
LABEL_29:
      }

      else
      {
        v37 = 0;
      }

      v67 = objc_msgSend_isEqualToString_(v37, v92, @"Local Build", v93);
    }

    else
    {
      v37 = 0;
      v67 = objc_msgSend_isEqualToString_(0, v52, @"Local Build", v53);
    }

    if (v67)
    {
    }

    else
    {

      if (v37)
      {
        goto LABEL_40;
      }
    }

    v95 = objc_msgSend_mainBundle(MEMORY[0x277CCA8D8], v21, v94, v23);
    v99 = objc_msgSend_bundlePath(v95, v96, v97, v98);

    if (v99)
    {
      v103 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v100, v101, v102);
      v105 = objc_msgSend_attributesOfItemAtPath_error_(v103, v104, v99, 0);
      v109 = objc_msgSend_fileModificationDate(v105, v106, v107, v108);

      if (v109)
      {
        v37 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v110, @"local build-%@", v111, v109);

        if (v37)
        {
          goto LABEL_40;
        }
      }

      else
      {
      }
    }

    v112 = objc_alloc(MEMORY[0x277CCACA8]);
    v114 = objc_msgSend_initWithCString_encoding_(v112, v113, "Oct 11 2025", 4);
    v37 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v115, @"local build-%@", v116, v114);
  }

LABEL_40:
  v117 = objc_msgSend_stringByAppendingString_(@"T", v21, v37, v23);

  return v117;
}

BOOL sub_2760AAEE8(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return (isKindOfClass & 1) == 0;
}

BOOL sub_2760AB758(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v7 = objc_msgSend_containedRep(v2, v4, v5, v6);

  return v7 != v3;
}

void sub_2760AC0BC(uint64_t a1, uint64_t a2)
{
  v71[1] = *MEMORY[0x277D85DE8];
  v4 = objc_alloc_init(MEMORY[0x277D801E0]);
  objc_msgSend_setDelegate_(v4, v5, *(a1 + 32), v6);
  objc_msgSend_setUnscaledSize_(v4, v7, v8, v9, *(a1 + 56), *(a1 + 64));
  objc_msgSend_setViewScale_(v4, v10, v11, v12, *(a1 + 72));
  v71[0] = *(a1 + 40);
  v14 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v13, v71, 1);
  objc_msgSend_setInfosToDisplay_(v4, v15, v14, v16);

  v20 = objc_msgSend_documentRoot(*(a1 + 32), v17, v18, v19);
  v24 = objc_msgSend_accessController(v20, v21, v22, v23);
  v70[0] = MEMORY[0x277D85DD0];
  v70[1] = 3221225472;
  v70[2] = sub_2760AC3E8;
  v70[3] = &unk_27A6B0170;
  v70[4] = v4;
  objc_msgSend_performRead_(v24, v25, v70, v26);

  v30 = objc_msgSend_layoutController(v4, v27, v28, v29);
  objc_opt_class();
  v33 = objc_msgSend_layoutForInfo_(v30, v31, *(a1 + 40), v32);
  v34 = TSUCheckedDynamicCast();

  if (v34)
  {
    objc_msgSend_setCurrentItem_(v34, v35, *(a1 + 48), v36);
    objc_msgSend_validateLayoutWithDependencies_(v30, v37, v34, v38);
    objc_opt_class();
    v41 = objc_msgSend_repForLayout_(v4, v39, v34, v40);
    v42 = TSUCheckedDynamicCast();

    if (!v42)
    {
      v45 = MEMORY[0x277D81150];
      v46 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v43, "[TSAGalleryRep p_newTextureForStage:isIncoming:includeImage:includeCaption:size:offset:renderTransform:]_block_invoke", v44);
      v49 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v47, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSAGalleryRep.m", v48);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v45, v50, v46, v49, 3418, 0, "invalid nil value for '%{public}s'", "temporaryGalleryRep");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v51, v52, v53);
    }

    v54 = *(a1 + 128);
    v55 = *(a1 + 129);
    v56 = *(a1 + 96);
    v69[0] = *(a1 + 80);
    v69[1] = v56;
    v69[2] = *(a1 + 112);
    objc_msgSend_p_renderTextureInContext_includeImage_includeCaption_renderTransform_(v42, v43, a2, v54, v55, v69);
  }

  else
  {
    v60 = MEMORY[0x277D81150];
    v61 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v35, "[TSAGalleryRep p_newTextureForStage:isIncoming:includeImage:includeCaption:size:offset:renderTransform:]_block_invoke", v36);
    v64 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v62, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSAGalleryRep.m", v63);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v60, v65, v61, v64, 3407, 0, "invalid nil value for '%{public}s'", "temporaryGalleryLayout");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v66, v67, v68);
  }

  objc_msgSend_teardown(v4, v57, v58, v59);
}

id sub_2760ACCE8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_presetStyleDescriptor(MEMORY[0x277D80F18], a2, a3, a4);
  v8 = sub_2760ACDF8(v4, v5, v6, v7);
  v9 = String();

  return v9;
}

id sub_2760ACD70(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_presetStyleDescriptor(MEMORY[0x277D80F18], a2, a3, a4);
  v8 = sub_2760ACE64(v4, v5, v6, v7);
  v9 = String();

  return v9;
}

id sub_2760ACDF8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_tsu_resourcesBundle(MEMORY[0x277CCA8D8], a2, a3, a4);
  v6 = objc_msgSend_localizedStringForKey_value_table_(v4, v5, @"Object Title", &stru_288512028, @"TSApplication");

  return v6;
}

id sub_2760ACE64(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_tsu_resourcesBundle(MEMORY[0x277CCA8D8], a2, a3, a4);
  v6 = objc_msgSend_localizedStringForKey_value_table_(v4, v5, @"Object Caption", &stru_288512028, @"TSApplication");

  return v6;
}

void sub_2760AF23C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v53[8] = *MEMORY[0x277D85DE8];
  v52[0] = *MEMORY[0x277D80B50];
  v51 = objc_msgSend_tsu_resourcesBundle(MEMORY[0x277CCA8D8], a2, a3, a4);
  v50 = objc_msgSend_localizedStringForKey_value_table_(v51, v4, @"Line", &stru_288512028, @"TSApplication");
  v53[0] = v50;
  v52[1] = *MEMORY[0x277D80B88];
  v49 = objc_msgSend_tsu_resourcesBundle(MEMORY[0x277CCA8D8], v5, v6, v7);
  v48 = objc_msgSend_localizedStringForKey_value_table_(v49, v8, @"Shape", &stru_288512028, @"TSApplication");
  v53[1] = v48;
  v52[2] = *MEMORY[0x277D80BB8];
  v47 = objc_msgSend_tsu_resourcesBundle(MEMORY[0x277CCA8D8], v9, v10, v11);
  v46 = objc_msgSend_localizedStringForKey_value_table_(v47, v12, @"Text Box", &stru_288512028, @"TSApplication");
  v53[2] = v46;
  v52[3] = *MEMORY[0x277D80B38];
  v45 = objc_msgSend_tsu_resourcesBundle(MEMORY[0x277CCA8D8], v13, v14, v15);
  v17 = objc_msgSend_localizedStringForKey_value_table_(v45, v16, @"Image", &stru_288512028, @"TSApplication");
  v53[3] = v17;
  v52[4] = *MEMORY[0x277D80BA8];
  v21 = objc_msgSend_tsu_resourcesBundle(MEMORY[0x277CCA8D8], v18, v19, v20);
  v23 = objc_msgSend_localizedStringForKey_value_table_(v21, v22, @"Table", &stru_288512028, @"TSApplication");
  v53[4] = v23;
  v52[5] = *MEMORY[0x277D80B08];
  v27 = objc_msgSend_tsu_resourcesBundle(MEMORY[0x277CCA8D8], v24, v25, v26);
  v29 = objc_msgSend_localizedStringForKey_value_table_(v27, v28, @"Chart", &stru_288512028, @"TSApplication");
  v53[5] = v29;
  v52[6] = *MEMORY[0x277D80B68];
  v33 = objc_msgSend_tsu_resourcesBundle(MEMORY[0x277CCA8D8], v30, v31, v32);
  v35 = objc_msgSend_localizedStringForKey_value_table_(v33, v34, @"Movie", &stru_288512028, @"TSApplication");
  v53[6] = v35;
  v52[7] = *MEMORY[0x277D80B60];
  v39 = objc_msgSend_tsu_resourcesBundle(MEMORY[0x277CCA8D8], v36, v37, v38);
  v41 = objc_msgSend_localizedStringForKey_value_table_(v39, v40, @"Motion Background", &stru_288512028, @"TSApplication");
  v53[7] = v41;
  v43 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v42, v53, v52, 8);
  v44 = qword_280A424E0;
  qword_280A424E0 = v43;
}

void sub_2760AF5C0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v53[8] = *MEMORY[0x277D85DE8];
  v52[0] = *MEMORY[0x277D80B50];
  v51 = objc_msgSend_tsu_resourcesBundle(MEMORY[0x277CCA8D8], a2, a3, a4);
  v50 = objc_msgSend_localizedStringForKey_value_table_(v51, v4, @"Line Styles", &stru_288512028, @"TSApplication");
  v53[0] = v50;
  v52[1] = *MEMORY[0x277D80B88];
  v49 = objc_msgSend_tsu_resourcesBundle(MEMORY[0x277CCA8D8], v5, v6, v7);
  v48 = objc_msgSend_localizedStringForKey_value_table_(v49, v8, @"Shape Styles", &stru_288512028, @"TSApplication");
  v53[1] = v48;
  v52[2] = *MEMORY[0x277D80BB8];
  v47 = objc_msgSend_tsu_resourcesBundle(MEMORY[0x277CCA8D8], v9, v10, v11);
  v46 = objc_msgSend_localizedStringForKey_value_table_(v47, v12, @"Text Box Styles", &stru_288512028, @"TSApplication");
  v53[2] = v46;
  v52[3] = *MEMORY[0x277D80B38];
  v45 = objc_msgSend_tsu_resourcesBundle(MEMORY[0x277CCA8D8], v13, v14, v15);
  v17 = objc_msgSend_localizedStringForKey_value_table_(v45, v16, @"Image Styles", &stru_288512028, @"TSApplication");
  v53[3] = v17;
  v52[4] = *MEMORY[0x277D80BA8];
  v21 = objc_msgSend_tsu_resourcesBundle(MEMORY[0x277CCA8D8], v18, v19, v20);
  v23 = objc_msgSend_localizedStringForKey_value_table_(v21, v22, @"Table Styles", &stru_288512028, @"TSApplication");
  v53[4] = v23;
  v52[5] = *MEMORY[0x277D80B08];
  v27 = objc_msgSend_tsu_resourcesBundle(MEMORY[0x277CCA8D8], v24, v25, v26);
  v29 = objc_msgSend_localizedStringForKey_value_table_(v27, v28, @"Chart Styles", &stru_288512028, @"TSApplication");
  v53[5] = v29;
  v52[6] = *MEMORY[0x277D80B68];
  v33 = objc_msgSend_tsu_resourcesBundle(MEMORY[0x277CCA8D8], v30, v31, v32);
  v35 = objc_msgSend_localizedStringForKey_value_table_(v33, v34, @"Movie Styles", &stru_288512028, @"TSApplication");
  v53[6] = v35;
  v52[7] = *MEMORY[0x277D80B60];
  v39 = objc_msgSend_tsu_resourcesBundle(MEMORY[0x277CCA8D8], v36, v37, v38);
  v41 = objc_msgSend_localizedStringForKey_value_table_(v39, v40, @"Motion Background Styles", &stru_288512028, @"TSApplication");
  v53[7] = v41;
  v43 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v42, v53, v52, 8);
  v44 = qword_280A424F0;
  qword_280A424F0 = v43;
}

void sub_2760AF944(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v53[8] = *MEMORY[0x277D85DE8];
  v52[0] = *MEMORY[0x277D80B50];
  v51 = objc_msgSend_tsu_resourcesBundle(MEMORY[0x277CCA8D8], a2, a3, a4);
  v50 = objc_msgSend_localizedStringForKey_value_table_(v51, v4, @"Apply Line Style", &stru_288512028, @"TSApplication");
  v53[0] = v50;
  v52[1] = *MEMORY[0x277D80B88];
  v49 = objc_msgSend_tsu_resourcesBundle(MEMORY[0x277CCA8D8], v5, v6, v7);
  v48 = objc_msgSend_localizedStringForKey_value_table_(v49, v8, @"Apply Shape Style", &stru_288512028, @"TSApplication");
  v53[1] = v48;
  v52[2] = *MEMORY[0x277D80BB8];
  v47 = objc_msgSend_tsu_resourcesBundle(MEMORY[0x277CCA8D8], v9, v10, v11);
  v46 = objc_msgSend_localizedStringForKey_value_table_(v47, v12, @"Apply Text Box Style", &stru_288512028, @"TSApplication");
  v53[2] = v46;
  v52[3] = *MEMORY[0x277D80B38];
  v45 = objc_msgSend_tsu_resourcesBundle(MEMORY[0x277CCA8D8], v13, v14, v15);
  v17 = objc_msgSend_localizedStringForKey_value_table_(v45, v16, @"Apply Image Style", &stru_288512028, @"TSApplication");
  v53[3] = v17;
  v52[4] = *MEMORY[0x277D80BA8];
  v21 = objc_msgSend_tsu_resourcesBundle(MEMORY[0x277CCA8D8], v18, v19, v20);
  v23 = objc_msgSend_localizedStringForKey_value_table_(v21, v22, @"Apply Table Style", &stru_288512028, @"TSApplication");
  v53[4] = v23;
  v52[5] = *MEMORY[0x277D80B08];
  v27 = objc_msgSend_tsu_resourcesBundle(MEMORY[0x277CCA8D8], v24, v25, v26);
  v29 = objc_msgSend_localizedStringForKey_value_table_(v27, v28, @"Apply Chart Style", &stru_288512028, @"TSApplication");
  v53[5] = v29;
  v52[6] = *MEMORY[0x277D80B68];
  v33 = objc_msgSend_tsu_resourcesBundle(MEMORY[0x277CCA8D8], v30, v31, v32);
  v35 = objc_msgSend_localizedStringForKey_value_table_(v33, v34, @"Apply Movie Style", &stru_288512028, @"TSApplication");
  v53[6] = v35;
  v52[7] = *MEMORY[0x277D80B60];
  v39 = objc_msgSend_tsu_resourcesBundle(MEMORY[0x277CCA8D8], v36, v37, v38);
  v41 = objc_msgSend_localizedStringForKey_value_table_(v39, v40, @"Apply Dynamic Background Style", &stru_288512028, @"TSApplication");
  v53[7] = v41;
  v43 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v42, v53, v52, 8);
  v44 = qword_280A42500;
  qword_280A42500 = v43;
}

void sub_2760AFCC8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v53[8] = *MEMORY[0x277D85DE8];
  v52[0] = *MEMORY[0x277D80B50];
  v51 = objc_msgSend_tsu_resourcesBundle(MEMORY[0x277CCA8D8], a2, a3, a4);
  v50 = objc_msgSend_localizedStringForKey_value_table_(v51, v4, @"Create Line Style", &stru_288512028, @"TSApplication");
  v53[0] = v50;
  v52[1] = *MEMORY[0x277D80B88];
  v49 = objc_msgSend_tsu_resourcesBundle(MEMORY[0x277CCA8D8], v5, v6, v7);
  v48 = objc_msgSend_localizedStringForKey_value_table_(v49, v8, @"Create Shape Style", &stru_288512028, @"TSApplication");
  v53[1] = v48;
  v52[2] = *MEMORY[0x277D80BB8];
  v47 = objc_msgSend_tsu_resourcesBundle(MEMORY[0x277CCA8D8], v9, v10, v11);
  v46 = objc_msgSend_localizedStringForKey_value_table_(v47, v12, @"Create Text Box Style", &stru_288512028, @"TSApplication");
  v53[2] = v46;
  v52[3] = *MEMORY[0x277D80B38];
  v45 = objc_msgSend_tsu_resourcesBundle(MEMORY[0x277CCA8D8], v13, v14, v15);
  v17 = objc_msgSend_localizedStringForKey_value_table_(v45, v16, @"Create Image Style", &stru_288512028, @"TSApplication");
  v53[3] = v17;
  v52[4] = *MEMORY[0x277D80BA8];
  v21 = objc_msgSend_tsu_resourcesBundle(MEMORY[0x277CCA8D8], v18, v19, v20);
  v23 = objc_msgSend_localizedStringForKey_value_table_(v21, v22, @"Create Table Style", &stru_288512028, @"TSApplication");
  v53[4] = v23;
  v52[5] = *MEMORY[0x277D80B08];
  v27 = objc_msgSend_tsu_resourcesBundle(MEMORY[0x277CCA8D8], v24, v25, v26);
  v29 = objc_msgSend_localizedStringForKey_value_table_(v27, v28, @"Create Chart Style", &stru_288512028, @"TSApplication");
  v53[5] = v29;
  v52[6] = *MEMORY[0x277D80B68];
  v33 = objc_msgSend_tsu_resourcesBundle(MEMORY[0x277CCA8D8], v30, v31, v32);
  v35 = objc_msgSend_localizedStringForKey_value_table_(v33, v34, @"Create Movie Style", &stru_288512028, @"TSApplication");
  v53[6] = v35;
  v52[7] = *MEMORY[0x277D80B60];
  v39 = objc_msgSend_tsu_resourcesBundle(MEMORY[0x277CCA8D8], v36, v37, v38);
  v41 = objc_msgSend_localizedStringForKey_value_table_(v39, v40, @"Create Dynamic Background Style", &stru_288512028, @"TSApplication");
  v53[7] = v41;
  v43 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v42, v53, v52, 8);
  v44 = qword_280A42510;
  qword_280A42510 = v43;
}

uint64_t sub_2760B2358(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_2760B23CC;
  v6[3] = &unk_27A6B0220;
  v6[4] = v4;
  return objc_msgSend_upgradeStylesWithBlock_(v4, a2, v6, a4);
}

void sub_2760B44AC(void *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a2 == 2)
  {
    v15 = objc_begin_catch(exc_buf);
    v16 = MEMORY[0x277CCA9B8];
    v20 = objc_msgSend_tsu_resourcesBundle(MEMORY[0x277CCA8D8], v17, v18, v19);
    v22 = objc_msgSend_localizedStringForKey_value_table_(v20, v21, @"Unknown error", &stru_288512028, @"TSApplication");
    objc_msgSend_tsu_errorWithDomain_code_description_recoverySuggestion_(v16, v23, @"com.apple.iWork.TSApplication", 1, v22, 0);
    objc_claimAutoreleasedReturnValue();

    objc_end_catch();
  }

  else
  {
    objc_begin_catch(exc_buf);
  }

  JUMPOUT(0x2760B43F0);
}

uint64_t sub_2760B467C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  objc_msgSend_setInfos_(*(*(a1 + 32) + 16), a2, 0, a4);
  v6 = *(*(a1 + 32) + 16);

  return MEMORY[0x2821F9670](v6, sel_setPostRenderAction_, 0, v5);
}

void sub_2760B4B60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__n128 sub_2760B4B78(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  if (objc_msgSend_setInfosToCurrentPage(*(a1 + 32), a2, a3, a4))
  {
    objc_msgSend_advanceProgress_(*(a1 + 40), v5, v6, v7, 1.0);
    if ((objc_msgSend_supportsPaging(*(*(a1 + 32) + 32), v9, v10, v11) & 1) != 0 || (*(a1 + 104) & 1) == 0)
    {
      shouldSuppressBackgroundsForCurrentPage = objc_msgSend_shouldSuppressBackgroundsForCurrentPage(*(a1 + 32), v12, v13, v14);
      v25 = *(a1 + 32);
      v26 = *(v25 + 24);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[6] = *(a1 + 56);
      v27 = *(a1 + 80);
      v30 = *(a1 + 64);
      v31 = v27;
      block[2] = sub_2760B4CE8;
      block[3] = &unk_27A6B0270;
      v33 = shouldSuppressBackgroundsForCurrentPage;
      v28 = *(a1 + 48);
      block[4] = v25;
      block[5] = v28;
      v32 = *(a1 + 96);
      v34 = *(a1 + 104);
      dispatch_sync(v26, block);
    }

    else
    {
      v15 = MEMORY[0x277D81150];
      v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[TSARenderingExporter drawCurrentPageInContext:viewScale:unscaledClipRect:createPage:]_block_invoke", v14);
      v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSARenderingExporter.m", v18);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v20, v16, v19, 437, 0, "Attempting to create page on a rendering exporter delegate that does not support paging.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23);
      *(*(*(a1 + 48) + 8) + 24) = 0;
    }
  }

  return result;
}

uint64_t sub_2760B4CE8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  objc_msgSend_setShouldSuppressBackgrounds_(*(*(a1 + 32) + 16), a2, *(a1 + 96), a4);
  objc_msgSend_setViewScale_(*(*(a1 + 32) + 16), v5, v6, v7, *(a1 + 48));
  objc_msgSend_setUnscaledClipRect_(*(*(a1 + 32) + 16), v8, v9, v10, *(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80));
  result = objc_msgSend_drawPageInContext_createPage_(*(*(a1 + 32) + 16), v11, *(a1 + 88), *(a1 + 97));
  *(*(*(a1 + 40) + 8) + 24) = result;
  if (*(*(a1 + 32) + 72))
  {
    TSDCGContextSetPdfTagger();
    v15 = *(a1 + 88);
    v16 = *(*(a1 + 32) + 72);

    return objc_msgSend_setCGContext_(v16, v13, v15, v14);
  }

  return result;
}

void sub_2760B6290(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = TSAShortcutController;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_2760B6DE0(uint64_t a1, void *a2)
{
  v7 = a2;
  if (v7 && objc_msgSend_length(*(a1 + 32), v3, v4, v5))
  {
    objc_msgSend_setObject_forKey_(*(a1 + 40), v6, v7, *(a1 + 32));
  }
}

uint64_t sub_2760B6E54(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 80));

  if (WeakRetained)
  {
    v5 = MEMORY[0x277D81150];
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, "[TSAShortcutController loadFromArchive:unarchiver:]_block_invoke_2", v4);
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSAShortcutController.mm", v8);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v10, v6, v9, 252, 0, "expected nil value for '%{public}s'", "_documentRoot");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12, v13);
  }

  objc_opt_class();
  v17 = objc_msgSend_context(*(a1 + 32), v14, v15, v16);
  v21 = objc_msgSend_documentObject(v17, v18, v19, v20);
  v22 = TSUDynamicCast();
  objc_storeWeak((*(a1 + 32) + 80), v22);

  v23 = objc_loadWeakRetained((*(a1 + 32) + 80));
  if (!v23)
  {
    v26 = MEMORY[0x277D81150];
    v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "[TSAShortcutController loadFromArchive:unarchiver:]_block_invoke_2", v25);
    v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSAShortcutController.mm", v29);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v26, v31, v27, v30, 254, 0, "Expecting a document root");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v32, v33, v34);
  }

  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = sub_2760B708C;
  v37[3] = &unk_27A6B0310;
  v35 = *(a1 + 40);
  v37[4] = *(a1 + 32);
  return objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v35, v24, v37, v25);
}

void sub_2760B708C(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  v6 = *(a1 + 32);
  objc_opt_class();
  v7 = TSUDynamicCast();
  objc_opt_class();
  v8 = TSUDynamicCast();
  objc_msgSend_setStyle_forShortcut_(v6, v9, v7, v8);
}

void sub_2760B72D4(uint64_t a1, void *a2, void *a3)
{
  v20 = a2;
  v5 = a3;
  v6 = *(a1 + 40);
  v7 = *(v6 + 32);
  if (!v7)
  {
    goto LABEL_6;
  }

  v8 = *(v6 + 24);
  v9 = *v7;
  if (v8 < *v7)
  {
    *(v6 + 24) = v8 + 1;
    v10 = *&v7[2 * v8 + 2];
    goto LABEL_8;
  }

  if (v9 == *(v6 + 28))
  {
LABEL_6:
    google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v6 + 16));
    v7 = *(v6 + 32);
    v9 = *v7;
  }

  *v7 = v9 + 1;
  v10 = google::protobuf::Arena::CreateMaybeMessage<TSA::ShortcutControllerArchive_ShortcutMapEntry>(*(v6 + 16));
  v11 = *(v6 + 24);
  v12 = *(v6 + 32) + 8 * v11;
  *(v6 + 24) = v11 + 1;
  *(v12 + 8) = v10;
LABEL_8:
  *(v10 + 16) |= 1u;
  v13 = google::protobuf::internal::ArenaStringPtr::Mutable();
  objc_msgSend_tsp_saveToProtobufString_(v20, v14, v13, v15);
  v17 = *(a1 + 32);
  *(v10 + 16) |= 2u;
  v18 = *(v10 + 32);
  if (!v18)
  {
    v19 = *(v10 + 8);
    if (v19)
    {
      v19 = *(v19 & 0xFFFFFFFFFFFFFFFELL);
    }

    v18 = MEMORY[0x277C951B0](v19);
    *(v10 + 32) = v18;
  }

  objc_msgSend_setStrongReference_message_(v17, v16, v5, v18);
}

id sub_2760B7624(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_tsa_templatesMetadataBundle(a1, a2, a3, a4);
  v6 = objc_msgSend_URLForResource_withExtension_(v4, v5, @"TemplatesMetadata", @"plist");

  if (!v6)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "+[NSBundle(TSAAdditions) tsa_templatesMetadataURL]", v8);
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/NSBundle_TSAAdditions.m", v12);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v14, v10, v13, 30, 0, "Unable to load template metadata!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16, v17);
  }

  return v6;
}

void sub_2760B7738(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_currentLocale(MEMORY[0x277CBEAF8], a2, a3, a4);
  v10 = objc_msgSend_countryCode(v4, v5, v6, v7);

  byte_280A42520 = objc_msgSend_isEqualToString_(v10, v8, @"CN", v9) ^ 1;
}

uint64_t sub_2760B77C8(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  if ((objc_msgSend_code(a1, a2, a3, a4) - 5) > 3)
  {
    return 0;
  }

  v8 = objc_msgSend_domain(a1, v5, v6, v7);
  isEqual = objc_msgSend_isEqual_(v8, v9, @"com.apple.iWork.TSApplication", v10);

  return isEqual;
}

BOOL sub_2760B7B60(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v7 = objc_msgSend_webVideoInfo(v2, v4, v5, v6);
  objc_opt_class();
  v11 = objc_msgSend_info(v3, v8, v9, v10);

  v12 = TSUCheckedDynamicCast();

  v19 = objc_msgSend_title(v7, v13, v14, v15);
  if (v19 == v12)
  {
    v21 = 0;
  }

  else
  {
    v20 = objc_msgSend_caption(v7, v16, v17, v18);
    v21 = v20 != v12;
  }

  return v21;
}

uint64_t sub_2760B85A4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  objc_msgSend_willModifyForUpgrade(*(a1 + 32), a2, a3, a4);
  if ((*(a1 + 40) & 1) != 0 || (*(a1 + 41) & 1) != 0 || *(a1 + 42) == 1)
  {
    v8 = objc_msgSend_geometry(*(a1 + 32), v5, v6, v7);
    v12 = objc_msgSend_mutableCopy(v8, v9, v10, v11);

    if (*(a1 + 40) == 1)
    {
      objc_msgSend_setAngle_(v12, v13, v14, v15, 0.0);
    }

    if (*(a1 + 43) == 1)
    {
      objc_msgSend_setHorizontalFlip_(v12, v13, 0, v15);
    }

    if (*(a1 + 44) == 1)
    {
      objc_msgSend_setVerticalFlip_(v12, v13, 0, v15);
    }

    if (*(a1 + 41) == 1)
    {
      v16 = objc_msgSend_geometry(*(a1 + 32), v13, v14, v15);
      objc_msgSend_size(v16, v17, v18, v19);
      v21 = v20;
      v25 = objc_msgSend_geometry(*(a1 + 32), v22, v23, v24);
      objc_msgSend_size(v25, v26, v27, v28);
      v30 = fmax(v21, v29);

      objc_msgSend_setSize_(v12, v31, v32, v33, v30, v30);
    }

    objc_msgSend_setGeometry_(*(a1 + 32), v13, v12, v15);
  }

  result = objc_msgSend_aspectRatioLocked(*(a1 + 32), v5, v6, v7);
  if ((result & 1) == 0)
  {
    v35.receiver = *(a1 + 32);
    v35.super_class = TSAObject3DInfo;
    return objc_msgSendSuper2(&v35, sel_setAspectRatioLocked_, 1);
  }

  return result;
}

id sub_2760B8B7C(void *a1)
{
  v2 = a1[5];
  v3 = a1[6];
  *(v3 + 40) |= 4u;
  v4 = *(v3 + 64);
  if (!v4)
  {
    v5 = *(v3 + 8);
    if (v5)
    {
      v5 = *(v5 & 0xFFFFFFFFFFFFFFFELL);
    }

    v4 = MEMORY[0x277C95070](v5);
    *(v3 + 64) = v4;
  }

  v6 = a1[4];
  v8.receiver = v2;
  v8.super_class = TSAObject3DInfo;
  return objc_msgSendSuper2(&v8, sel_saveToArchive_archiver_, v4, v6);
}

void sub_2760B8E98(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  objc_msgSend_setImageData_(*(a1 + 32), a2, *(a1 + 40), a4);
  v7 = *(a1 + 32);
  if (!v7[19])
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSAGalleryItem initWithContext:imageData:thumbnailImageData:]_block_invoke", v6);
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSAGalleryItem.mm", v11);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v13, v9, v12, 85, 0, "invalid nil value for '%{public}s'", "_imageDataHelper");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15, v16);
    v7 = *(a1 + 32);
  }

  objc_msgSend_setThumbnailImageData_(v7, v5, *(a1 + 48), v6);
  v20 = objc_msgSend_thumbnailImageData(*(a1 + 32), v17, v18, v19);

  if (!v20)
  {
    objc_initWeak(&location, *(a1 + 32));
    v21 = *(*(a1 + 32) + 152);
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = sub_2760B903C;
    v24[3] = &unk_27A6B03B8;
    objc_copyWeak(&v25, &location);
    objc_msgSend_generateThumbnailImageDataWithCompletionHandler_(v21, v22, v24, v23);
    objc_destroyWeak(&v25);
    objc_destroyWeak(&location);
  }
}

void sub_2760B903C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v7 = v3;
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    objc_msgSend_setThumbnailImageData_(WeakRetained, v5, v7, v6);

    v3 = v7;
  }
}

__n128 sub_2760B967C(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[3] = result;
  return result;
}

uint64_t sub_2760B968C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  result = objc_msgSend_naturalSize(*(*(a1 + 32) + 152), a2, a3, a4);
  v6 = *(*(a1 + 40) + 8);
  *(v6 + 48) = v7;
  *(v6 + 56) = v8;
  return result;
}

void sub_2760BA87C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_2760BB018(uint64_t a1, void *a2)
{
  objc_storeStrong((*(a1 + 32) + 72), a2);
  v6 = a2;
  objc_msgSend_i_configureCaptionStorage_(TSAGalleryInfo, v4, *(*(a1 + 32) + 72), v5);
}

uint64_t sub_2760BB0A4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 32);
  v6 = *(v5 + 72);
  if (!v6)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSAGalleryItem loadFromMessage:unarchiver:]_block_invoke_2", a4);
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSAGalleryItem.mm", v10);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v12, v8, v11, 603, 0, "invalid nil value for '%{public}s'", "_captionStorage");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14, v15);
    v5 = *(a1 + 32);
    v6 = *(v5 + 72);
    if (!v6)
    {
      v16 = objc_msgSend_context(*(a1 + 40), a2, v5, a4);
      v19 = objc_msgSend_i_newCaptionStorageWithContext_(TSAGalleryInfo, v17, v16, v18);
      v20 = *(a1 + 32);
      v21 = *(v20 + 72);
      *(v20 + 72) = v19;

      v5 = *(a1 + 32);
      v6 = *(v5 + 72);
    }
  }

  return objc_msgSend_setParentInfo_(v6, a2, v5, a4);
}

void sub_2760BB68C(uint64_t a1, char *__s)
{
  *(a1 + 16) |= 1u;
  v3 = strlen(__s);
  if (v3 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_276093F58();
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

void sub_2760BB784(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2760BB854(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_2760BBB28(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v13 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], a2, a3, a4);
  v8 = objc_msgSend_defaultStore(MEMORY[0x277CCAD80], v5, v6, v7);
  objc_msgSend_addObserver_selector_name_object_(v13, v9, *(a1 + 32), sel_p_ubiquitousKeyValueStoreDidChange_, *MEMORY[0x277CCA7C0], v8);
  objc_msgSend_tsk_coalescedSynchronizeForDefaultStore(MEMORY[0x277CCAD80], v10, v11, v12);
}

void sub_2760BC398(uint64_t a1, void *a2, void *a3)
{
  v10 = a3;
  v5 = *(a1 + 32);
  v6 = a2;
  if (objc_msgSend_isICloudDocumentPreference_validForKey_(v5, v7, v10, v6))
  {
    objc_msgSend_setObject_forKeyedSubscript_(*(a1 + 40), v8, v10, v6);
  }

  else
  {
    objc_msgSend_addObject_(*(a1 + 48), v8, v6, v9);
  }
}

uint64_t sub_2760BD4D0()
{
  *MEMORY[0x277D81410] = TSULogCreateCategory();

  return MEMORY[0x2821F96F8]();
}

void sub_2760BD514(uint64_t a1, const char *a2)
{
  v8 = objc_msgSend_notificationWithName_object_userInfo_(MEMORY[0x277CCAB88], a2, @"TSAAnnotationAuthorNameDidChangeNotification", *(a1 + 32), *(a1 + 40));
  v5 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], v2, v3, v4);
  objc_msgSend_postNotification_(v5, v6, v8, v7);
}

void sub_2760BD590(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v6 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], a2, a3, a4);
  objc_msgSend_postNotificationName_object_userInfo_(v6, v5, @"TSAICloudDocumentPreferenceUpdateNotification", *(a1 + 32), *(a1 + 40));
}

void sub_2760BD5F0(uint64_t a1, uint64_t a2, void *a3)
{
  v16 = a3;
  v4 = qword_280A42538;
  qword_280A42538 = 0;

  if (qword_280A42538)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "+[TSKApplicationDelegate(Cirrus) setDelegate:]", v6);
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/cirrus/TSKApplicationDelegate_Cirrus.m", v10);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v12, v8, v11, 22, 0, "Tried to set the app delegate more than once outside of unit tests.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14, v15);
  }

  else
  {
    objc_storeStrong(&qword_280A42538, a3);
  }
}

void sub_2760BDE44(uint64_t a1, CGContextRef c)
{
  CGContextSetAllowsFontSubpixelQuantization(c, 0);
  CGContextTranslateCTM(c, -*(a1 + 48), -*(a1 + 56));
  if (objc_msgSend_shouldDistortToFit(*(a1 + 32), v4, v5, v6))
  {
    v7 = *(a1 + 64) / *(a1 + 96);
    v8 = *(a1 + 72) / *(a1 + 104);
    v9 = c;
  }

  else
  {
    v7 = *(a1 + 112);
    v9 = c;
    v8 = v7;
  }

  CGContextScaleCTM(v9, v7, v8);
  v10 = *(a1 + 136);
  *&v12.a = *(a1 + 120);
  *&v12.c = v10;
  *&v12.tx = *(a1 + 152);
  CGContextConcatCTM(c, &v12);
  CGContextSaveGState(c);
  objc_msgSend_p_drawInContext_withOpacity_(*(a1 + 40), v11, c, 0);
  CGContextRestoreGState(c);
}

void sub_2760BEC44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, id a27)
{
  _Block_object_dispose(&a22, 8);

  _Block_object_dispose((v28 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_2760BECA0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2760BECB8(uint64_t a1, void *a2)
{
  v5 = a2;
  if (!v5)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, "[TSAArchivedGalleryItemSelection loadFromUnarchiver:]_block_invoke", v4);
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSAArchivedGalleryItemSelection.mm", v9);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v11, v7, v10, 39, 0, "invalid nil value for '%{public}s'", "object");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13, v14);
  }

  v15 = *(*(a1 + 32) + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = v5;
}

void sub_2760BEDB0(uint64_t a1, void *a2)
{
  v8 = a2;
  v5 = objc_msgSend_orderedSetWithArray_(MEMORY[0x277CBEB70], v3, v8, v4);
  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

uint64_t sub_2760BEE30(void *a1)
{
  v2 = [TSAGalleryItemSelection alloc];
  *(a1[4] + 64) = objc_msgSend_initWithItems_displayedItem_(v2, v3, *(*(a1[5] + 8) + 40), *(*(a1[6] + 8) + 40));

  return MEMORY[0x2821F96F8]();
}

void sub_2760BF56C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2760BF58C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    v9 = sub_2760BF65C;
    v10 = &unk_27A6B0170;
    v11 = WeakRetained;
    if (objc_msgSend_isMainThread(MEMORY[0x277CCACC8], v2, v3, v4))
    {
      (v9)(block);
    }

    else
    {
      v6 = *MEMORY[0x277CBF058];
      Main = CFRunLoopGetMain();
      CFRunLoopPerformBlock(Main, v6, block);
      CFRunLoopWakeUp(Main);
    }
  }
}

uint64_t sub_2760BFF3C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, double a5)
{
  v6 = (objc_msgSend_totalUnitCount(*(a1 + 32), a2, a3, a4) * a5);
  v8 = *(a1 + 32);

  return MEMORY[0x2821F9670](v8, sel_setCompletedUnitCount_, v6, v7);
}

void sub_2760BFF90(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 32) && (objc_msgSend_isMainThread(MEMORY[0x277CCACC8], a2, a3, a4) & 1) == 0)
  {
    v5 = *MEMORY[0x277CBF058];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = sub_2760C00F0;
    v14[3] = &unk_27A6B0248;
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v15 = v6;
    v16 = v7;
    v8 = v14;
    Main = CFRunLoopGetMain();
    CFRunLoopPerformBlock(Main, v5, v8);
    CFRunLoopWakeUp(Main);
  }

  v10 = *(a1 + 56);
  if (v10)
  {
    v11 = *(a1 + 48);
    if (v11)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = sub_2760C0198;
      block[3] = &unk_27A6B05A0;
      v13 = v10;
      dispatch_async(v11, block);
    }

    else
    {
      v10[2](v10, 1, 0);
    }
  }
}

void sub_2760C00F0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  if ((objc_msgSend_isCancelled(*(a1 + 32), a2, a3, a4) & 1) == 0)
  {
    v10 = a1 + 32;
    v8 = *(a1 + 32);
    v9 = *(v10 + 8);
    v11 = MEMORY[0x277CBEBC0];
    v16 = objc_msgSend_sourcePath(v9, v5, v6, v7);
    v14 = objc_msgSend_tsu_fileURLWithPath_(v11, v12, v16, v13);
    objc_msgSend_showProgressIfNeeded_forURL_(v9, v15, v8, v14);
  }
}

void sub_2760C01B0(void *a1, int a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    (*(a1[5] + 16))();
  }

  else
  {
    v6 = a1[6];
    if (v6)
    {
      v7 = a1[4];
      if (v7)
      {
        v8[0] = MEMORY[0x277D85DD0];
        v8[1] = 3221225472;
        v8[2] = sub_2760C02A0;
        v8[3] = &unk_27A6B02C0;
        v10 = v6;
        v9 = v5;
        dispatch_async(v7, v8);
      }

      else
      {
        (v6)[2](v6, 0, v5);
      }
    }
  }
}

void sub_2760C0408(uint64_t a1, int a2, void *a3)
{
  v8 = a3;
  if (a2)
  {
    objc_msgSend__beginImportWithProgress_completionQueue_completionHandler_(*(a1 + 32), v5, *(a1 + 40), *(a1 + 48), *(a1 + 56));
  }

  else
  {
    if ((objc_msgSend_isCancelled(*(a1 + 40), v5, v6, v7) & 1) == 0)
    {
      objc_msgSend_cancel(*(a1 + 40), v9, v10, v11);
    }

    v12 = *(a1 + 32);
    v13 = *(a1 + 40);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = sub_2760C04F0;
    v16[3] = &unk_27A6B0618;
    v14 = *(a1 + 48);
    v17 = *(a1 + 56);
    objc_msgSend_finishImportWithProgress_success_error_completionQueue_completionHandler_(v12, v15, v13, 0, v8, v14, v16);
  }
}

uint64_t sub_2760C0C98()
{
  TSAImportCat_log_t = TSULogCreateCategory();

  return MEMORY[0x2821F96F8]();
}

void sub_2760C0CDC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v8 = a3;
  if (!v5)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSAImportController _beginImportWithProgress:completionQueue:completionHandler:]_block_invoke_3", v7);
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSAImportController.m", v12);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v14, v10, v13, 329, 0, "invalid nil value for '%{public}s'", "documentRoot");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16, v17);
  }

  v18 = v5 != 0;
  objc_msgSend_setDelegate_(v5, v6, *(a1 + 32), v7);
  objc_msgSend_setDocumentCurrentlyImporting_(v5, v19, 1, v20);
  v21 = *(a1 + 32);
  v22 = *(a1 + 40);
  v23 = *(*(*(a1 + 72) + 8) + 24);
  v24 = *(a1 + 48);
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = sub_2760C0E88;
  v27[3] = &unk_27A6B0668;
  v28 = v5;
  v30 = *(a1 + 64);
  v29 = *(a1 + 56);
  v25 = v5;
  objc_msgSend__continueImportWithProgress_success_error_completedSteps_completionQueue_completionHandler_(v21, v26, v22, v18, v8, v23, v24, v27);
}

void sub_2760C0E88(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  objc_msgSend_setDocumentCurrentlyImporting_(v5, v8, 0, v9);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = nullsub_5;
  v11[3] = &unk_27A6B0170;
  v10 = *(a1 + 48);
  v12 = *(a1 + 40);
  (*(v10 + 16))(v10, v7, v6, v11);
}

void sub_2760C0F5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = nullsub_6;
  v6[3] = &unk_27A6B0170;
  v5 = *(a1 + 40);
  v7 = *(a1 + 32);
  (*(v5 + 16))(v5, a2, a3, v6);
}

void sub_2760C1770(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v12 - 120), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_2760C17A0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2760C17B8(uint64_t a1, void *a2)
{
  v3 = a2;
  v7 = objc_msgSend_stringByStandardizingPath(*(*(a1 + 32) + 96), v4, v5, v6);
  v11 = objc_msgSend_path(v3, v8, v9, v10);
  v15 = objc_msgSend_stringByStandardizingPath(v11, v12, v13, v14);
  v18 = objc_msgSend_localizedCompare_(v7, v16, v15, v17);

  if (v18)
  {
    v22 = objc_msgSend_path(v3, v19, v20, v21);
    v26 = objc_msgSend_copy(v22, v23, v24, v25);
    v27 = *(a1 + 32);
    v28 = *(v27 + 96);
    *(v27 + 96) = v26;
  }

  v29 = objc_msgSend_progressContext(*(*(a1 + 32) + 80), v19, v20, v21);
  objc_msgSend_createStageWithSteps_takingSteps_(v29, v30, v31, v32, 23.0, (100 - *(a1 + 64)));
  v36 = 20.0;
  if (*(*(a1 + 32) + 96) && (objc_msgSend_isCancelled(*(a1 + 40), v33, v34, v35) & 1) == 0)
  {
    objc_msgSend_createStageWithSteps_takingSteps_(v29, v33, v34, v35, 1.0, 1.0);
    v40 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v37, v38, v39);
    v43 = objc_msgSend_fileExistsAtPath_(v40, v41, *(*(a1 + 32) + 96), v42);

    if (v43)
    {
      v47 = *(a1 + 32);
      v48 = *(v47 + 80);
      v49 = objc_msgSend_tsu_fileURLWithPath_(MEMORY[0x277CBEBC0], v44, *(v47 + 96), v46);
      objc_msgSend_setURL_(v48, v50, v49, v51);
    }

    else
    {
      *(*(*(a1 + 48) + 8) + 24) = 0;
    }

    v36 = 19.0;
    objc_msgSend_endStage(v29, v44, v45, v46);
  }

  if (*(*(*(a1 + 48) + 8) + 24) == 1 && (objc_msgSend_isCancelled(*(a1 + 40), v33, v34, v35) & 1) == 0)
  {
    v52 = objc_autoreleasePoolPush();
    v53 = objc_opt_respondsToSelector();
    v174[0] = MEMORY[0x277D85DD0];
    v174[1] = 3221225472;
    v174[2] = sub_2760C1FB8;
    v174[3] = &unk_27A6B06E0;
    v54 = *(a1 + 40);
    v55 = *(a1 + 32);
    v175 = v54;
    v176 = v55;
    v180 = v53 & 1;
    v56 = *(a1 + 48);
    v177 = v29;
    v178 = v56;
    v179 = 0x4000000000000000;
    if (v53)
    {
      v57 = 0.0;
    }

    else
    {
      v57 = 2.0;
    }

    v58 = MEMORY[0x277C95D60](v174);
    v59 = TSUProtocolCast();
    File = objc_msgSend_canCreateFile(v59, v60, v61, v62, &unk_28854A758);
    v64 = v36 + v57;

    v68 = *(a1 + 32);
    if (File)
    {
      v69 = v68[2];
      v68[2] = 0;

      v70 = objc_alloc(MEMORY[0x277D81350]);
      v72 = objc_msgSend_initWithSignature_error_(v70, v71, @"dff", 0);
      v73 = *(a1 + 32);
      v74 = *(v73 + 16);
      *(v73 + 16) = v72;

      v78 = objc_msgSend_URL(*(*(a1 + 32) + 16), v75, v76, v77);
      v81 = objc_msgSend_URLByAppendingPathComponent_(v78, v79, @"dff", v80);

      objc_msgSend_createStageWithSteps_takingSteps_(v29, v82, v83, v84, 100.0, v64);
      v88 = *(*(a1 + 48) + 8);
      if (*(v88 + 24) == 1)
      {
        v89 = *(*(a1 + 32) + 80);
        v90 = objc_msgSend_path(v81, v85, v86, v87);
        v91 = *(a1 + 32);
        v173 = 0;
        v93 = objc_msgSend_importToPath_delegate_error_(v89, v92, v90, v91, &v173);
        v94 = v173;
        *(*(*(a1 + 48) + 8) + 24) = v93;
      }

      else
      {
        v94 = 0;
        *(v88 + 24) = 0;
      }

      objc_msgSend_endStage(v29, v85, v86, v87);
      if (*(*(*(a1 + 48) + 8) + 24) != 1)
      {
        goto LABEL_29;
      }

      objc_storeStrong((*(a1 + 32) + 128), v81);
      v112 = objc_alloc(MEMORY[0x277D80878]);
      v113 = *(a1 + 32);
      v114 = *(v113 + 128);
      v172 = v94;
      v116 = objc_msgSend_initWithURL_delegate_error_(v112, v115, v114, v113, &v172);
      v117 = v172;

      v118 = *(a1 + 32);
      v119 = *(v118 + 112);
      *(v118 + 112) = v116;

      v123 = objc_msgSend_documentObject(*(*(a1 + 32) + 112), v120, v121, v122);
      *(*(*(a1 + 48) + 8) + 24) = v123 != 0;

      if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
      {
LABEL_28:
        v94 = v117;
LABEL_29:

        if (*(*(*(a1 + 48) + 8) + 24) == 1)
        {
          if ((objc_msgSend_isCancelled(*(a1 + 40), v128, v129, v130) & 1) == 0)
          {
            objc_msgSend_willSaveImportedDocument(*(a1 + 32), v131, v132, v133);
            objc_msgSend_prepareDocumentPreviewImage(*(a1 + 32), v134, v135, v136);
            if (objc_opt_respondsToSelector())
            {
              objc_msgSend_willSaveImportedDocument_(*(*(a1 + 32) + 88), v131, *(a1 + 32), v133);
            }
          }

          if (objc_msgSend_conformsToProtocol_(*(*(a1 + 32) + 80), v131, &unk_28854A6F8, v133))
          {
            v137 = *(*(a1 + 32) + 80);
            v141 = objc_msgSend_lastPasswordAttempted(v137, v138, v139, v140);
          }

          else
          {
            v141 = 0;
          }

          if (objc_opt_respondsToSelector())
          {
            v145 = objc_msgSend_uuidOfImportedDocument(*(*(a1 + 32) + 80), v142, v143, v144);
          }

          else
          {
            v145 = 0;
          }

          objc_msgSend__setBuildVersionHistory(*(a1 + 32), v142, v143, v144);
          v164 = v58;
          v146 = v52;
          v150 = objc_msgSend_temporaryURL(*(a1 + 32), v147, v148, v149);
          v151 = *(a1 + 32);
          v152 = v151[16];
          v165 = v94;
          v154 = objc_msgSend__saveContextToTemporaryURL_passphrase_originalURL_documentUUID_error_(v151, v153, v150, v141, v152, v145, &v165);
          v155 = v165;

          *(*(*(a1 + 48) + 8) + 24) = v154;
          v156 = *(a1 + 32);
          v157 = *(v156 + 128);
          *(v156 + 128) = v150;
          v158 = v150;

          v159 = *(a1 + 32);
          v160 = *(v159 + 16);
          *(v159 + 16) = 0;

          v94 = v155;
          v52 = v146;
          v58 = v164;
        }

        v161 = *(*(a1 + 56) + 8);
        v163 = *(v161 + 40);
        v162 = (v161 + 40);
        if (!v163)
        {
          objc_storeStrong(v162, v94);
        }

        objc_autoreleasePoolPop(v52);
        goto LABEL_43;
      }

      v127 = objc_msgSend_documentObject(*(*(a1 + 32) + 112), v124, v125, v126);
      (v58)[2](v58, v127, 1);
    }

    else
    {
      v95 = objc_msgSend_documentRoot(v68, v65, v66, v67);
      v99 = objc_msgSend_calculationEngine(v95, v96, v97, v98);
      objc_msgSend_setNeedsSubOwnerIDUpgrade_(v99, v100, 1, v101);

      v166[0] = MEMORY[0x277D85DD0];
      v166[1] = 3221225472;
      v166[2] = sub_2760C2074;
      v166[3] = &unk_27A6B0730;
      v81 = v95;
      v167 = v81;
      v168 = v29;
      v171 = v64;
      v169 = *(a1 + 32);
      v170 = *(a1 + 48);
      v102 = MEMORY[0x277C95D60](v166);
      v106 = objc_msgSend_accessController(v81, v103, v104, v105);

      if (v106)
      {
        v110 = objc_msgSend_accessController(v81, v107, v108, v109);
        objc_msgSend_performWrite_blockPrimaryThread_(v110, v111, v102, 0);
      }

      else
      {
        v102[2](v102);
      }

      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        (v58)[2](v58, v81, 0);
      }

      v117 = 0;
      v127 = v167;
    }

    goto LABEL_28;
  }

LABEL_43:
  objc_msgSend_endStage(v29, v33, v34, v35);
}

void sub_2760C1EE4(void *a1, int a2)
{
  objc_begin_catch(a1);
  if (a2 == 2)
  {
    if (TSAImportCat_init_token != -1)
    {
      sub_27610CC48();
    }
  }

  else if (TSAImportCat_init_token != -1)
  {
    sub_27610CC20();
  }

  *(*(*(v2 + 48) + 8) + 24) = 0;
  objc_end_catch();
  JUMPOUT(0x2760C1EB8);
}

uint64_t sub_2760C1F74()
{
  *MEMORY[0x277D81410] = TSULogCreateCategory();

  return MEMORY[0x2821F96F8]();
}

void sub_2760C1FB8(uint64_t a1, void *a2, char a3)
{
  v18 = a2;
  objc_msgSend_documentDidLoad(v18, v5, v6, v7);
  if ((a3 & 1) == 0 && (objc_msgSend_isCancelled(*(a1 + 32), v8, v9, v10) & 1) == 0)
  {
    objc_msgSend_importerDidFinish_(v18, v8, *(*(a1 + 40) + 80), v10);
  }

  if (*(a1 + 72) == 1 && (objc_msgSend_isCancelled(*(a1 + 32), v8, v9, v10) & 1) == 0)
  {
    objc_msgSend_createStageWithSteps_takingSteps_(*(a1 + 48), v11, v12, v13, 100.0, *(a1 + 64));
    *(*(*(a1 + 56) + 8) + 24) = objc_msgSend_postprocessRegularDocumentRoot_delegate_(*(*(a1 + 40) + 80), v14, v18, *(a1 + 40));
    objc_msgSend_endStage(*(a1 + 48), v15, v16, v17);
  }
}

void sub_2760C2074(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v111 = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_theme(*(a1 + 32), a2, a3, a4);
  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v95 = a1;
  v10 = objc_msgSend_stylesheet(*(a1 + 32), v7, v8, v9);
  v105 = 0u;
  v106 = 0u;
  v107 = 0u;
  v108 = 0u;
  v94 = v5;
  v97 = *MEMORY[0x277D80AF8];
  v13 = objc_msgSend_presetsOfKind_(v5, v11, *MEMORY[0x277D80AF8], v12);
  v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, &v105, v110, 16);
  if (v15)
  {
    v19 = v15;
    v20 = *v106;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v106 != v20)
        {
          objc_enumerationMutation(v13);
        }

        v22 = *(*(&v105 + 1) + 8 * i);
        v23 = objc_msgSend_styleIdentifier(v22, v16, v17, v18);
        objc_msgSend_setObject_forKeyedSubscript_(v6, v24, v22, v23);
        v27 = objc_msgSend_stringByAppendingString_(v23, v25, @" Temporary", v26);
        objc_msgSend_setIdentifier_ofStyle_(v10, v28, v27, v22);
      }

      v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v16, &v105, v110, 16);
    }

    while (v19);
  }

  v29 = v95;
  objc_msgSend_createStageWithSteps_takingSteps_(*(v95 + 40), v30, v31, v32, 100.0, *(v95 + 72));
  v33 = *(v95 + 48);
  v34 = *(v33 + 80);
  v35 = *(v95 + 32);
  v104 = 0;
  v37 = objc_msgSend_importToDocumentRoot_delegate_error_(v34, v36, v35, v33, &v104);
  v38 = v104;
  *(*(*(v95 + 56) + 8) + 24) = v37;
  objc_msgSend_endStage(*(v95 + 40), v39, v40, v41);
  if (*(*(*(v95 + 56) + 8) + 24) == 1)
  {
    v93 = v38;
    if (objc_msgSend_stylesheetUpdatesRequired(*(*(v95 + 48) + 80), v42, v43, v44))
    {
      objc_msgSend_performStylesheetUpdatesIfNecessaryForVersion_(*(v95 + 32), v45, *MEMORY[0x277D808B0], v47);
    }

    v48 = objc_msgSend_allKeys(v6, v45, v46, v47);
    v52 = objc_msgSend_copy(v48, v49, v50, v51);

    v102 = 0u;
    v103 = 0u;
    v100 = 0u;
    v101 = 0u;
    obj = v52;
    v54 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v53, &v100, v109, 16);
    v55 = v94;
    if (v54)
    {
      v56 = v54;
      v98 = *v101;
      do
      {
        for (j = 0; j != v56; ++j)
        {
          if (*v101 != v98)
          {
            objc_enumerationMutation(obj);
          }

          v58 = *(*(&v100 + 1) + 8 * j);
          objc_opt_class();
          v61 = objc_msgSend_styleWithIdentifier_(v10, v59, v58, v60);
          v62 = TSUCheckedDynamicCast();

          if (v62)
          {
            v65 = objc_msgSend_objectForKeyedSubscript_(v6, v63, v58, v64);
            v69 = objc_msgSend_name(v62, v66, v67, v68);
            v73 = objc_msgSend_length(v69, v70, v71, v72);

            if (!v73)
            {
              v77 = objc_msgSend_name(v65, v74, v75, v76);
              objc_msgSend_setName_(v62, v78, v77, v79);
            }

            v80 = objc_msgSend_indexOfPreset_(v94, v74, v65, v76);
            objc_msgSend_removePreset_(v94, v81, v65, v82);
            objc_msgSend_addPreset_ofKind_(v94, v83, v62, v97);
            v86 = objc_msgSend_indexOfPreset_(v94, v84, v62, v85);
            if (v86 != v80)
            {
              objc_msgSend_movePresetOfKind_fromIndex_toIndex_(v94, v87, v97, v86, v80);
            }

            objc_msgSend_setObject_forKeyedSubscript_(v6, v87, 0, v58);
          }
        }

        v56 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v88, &v100, v109, 16);
      }

      while (v56);
    }

    v99[0] = MEMORY[0x277D85DD0];
    v99[1] = 3221225472;
    v99[2] = sub_2760C24F8;
    v99[3] = &unk_27A6B0708;
    v99[4] = v10;
    objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v6, v89, v99, v90);

    v29 = v95;
    v38 = v93;
  }

  else
  {
    if (TSAImportCat_init_token != -1)
    {
      sub_27610CC70();
    }

    v55 = v94;
  }

  v91 = *(*(v29 + 64) + 8);
  v92 = *(v91 + 40);
  *(v91 + 40) = v38;
}

uint64_t sub_2760C2508()
{
  TSAImportCat_log_t = TSULogCreateCategory();

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_2760C2548()
{
  TSAImportCat_log_t = TSULogCreateCategory();

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_2760C2588()
{
  TSAImportCat_log_t = TSULogCreateCategory();

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_2760C25C8()
{
  TSAImportCat_log_t = TSULogCreateCategory();

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_2760C2B48()
{
  TSAImportCat_log_t = TSULogCreateCategory();

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_2760C2B88(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (*(a1 + 56) == 1)
  {
    v3 = *(*(a1 + 32) + 8);
  }

  else
  {
    v3 = 0;
  }

  return (*(v2 + 16))(v2, v3, *(a1 + 40));
}

uint64_t sub_2760C2C38()
{
  TSAImportCat_log_t = TSULogCreateCategory();

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_2760C38F8(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_msgSend_isNamed(v3, v4, v5, v6))
  {
    v7 = *(a1 + 32);
    v8 = objc_opt_class();
    v11 = objc_msgSend_containsObject_(v7, v9, v8, v10);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

void sub_2760C39A8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v8 = objc_msgSend_localeWithLocaleIdentifier_(MEMORY[0x277CBEAF8], a2, @"en_US", a4);
  v4 = objc_alloc(MEMORY[0x277D81228]);
  v6 = objc_msgSend_initWithLocale_documentLanguageIdentifier_(v4, v5, v8, @"en_US");
  v7 = qword_280A42540;
  qword_280A42540 = v6;
}

uint64_t sub_2760C3C40(uint64_t a1, const char *a2)
{
  qword_280A42550 = objc_msgSend_defaultFormatWithFormatType_locale_(MEMORY[0x277D80680], a2, 256, *(a1 + 32));

  return MEMORY[0x2821F96F8]();
}

void sub_2760C52C4(uint64_t a1, void *a2)
{
  v9 = a2;
  if (objc_msgSend_overridesProperty_(v9, v2, 36, v3))
  {
    objc_msgSend_floatValueForProperty_(v9, v4, 36, v5);
    if (v8 > 0.0)
    {
      objc_msgSend_setFloatValue_forProperty_(v9, v6, 36, v7, 0.0);
    }
  }
}

void sub_2760C5348(uint64_t a1, void *a2)
{
  v34 = a2;
  objc_opt_class();
  v3 = TSUCheckedDynamicCast();
  TSTLayoutGetCanvasFrame();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v15 = objc_msgSend_geometry(*(a1 + 32), v12, v13, v14);
  v19 = objc_msgSend_mutableCopy(v15, v16, v17, v18);

  objc_msgSend_position(v19, v20, v21, v22);
  v24 = v23;
  v36.origin.x = v5;
  v36.origin.y = v7;
  v36.size.width = v9;
  v36.size.height = v11;
  Width = CGRectGetWidth(v36);
  objc_msgSend_position(v19, v26, v27, v28);
  objc_msgSend_setPosition_(v19, v29, v30, v31, v24 + Width);
  objc_msgSend_setGeometry_(*(a1 + 32), v32, v19, v33);
}

uint64_t sub_2760C724C(uint64_t a1, void *a2)
{
  v3 = a2;
  v7 = objc_msgSend_currentFormat(v3, v4, v5, v6);
  v11 = objc_msgSend_currencyFormat(v3, v8, v9, v10);
  v15 = objc_msgSend_asCurrencyFormat(v11, v12, v13, v14);

  v19 = objc_msgSend_formatType(v7, v16, v17, v18);
  if (v19 == 257)
  {
    v33 = objc_msgSend_asCurrencyFormat(v7, v20, v21, v22);
    if (objc_msgSend_currencyCodeIndex(v33, v34, v35, v36) != *(a1 + 64))
    {
      v37 = v33;
      v38 = objc_alloc(MEMORY[0x277D80640]);
      v42 = objc_msgSend_decimalPlaces(v37, v39, v40, v41);
      v46 = objc_msgSend_negativeStyle(v37, v43, v44, v45);
      v50 = objc_msgSend_showThousandsSeparator(v37, v47, v48, v49);
      v54 = objc_msgSend_accountingStyle(v37, v51, v52, v53);
      v56 = objc_msgSend_initWithDecimalPlaces_negativeStyle_showSeparator_accountingStyle_currencyCode_(v38, v55, v42, v46, v50, v54, *(a1 + 32));
      IsExplicit = objc_msgSend_currentFormatIsExplicit(v3, v57, v58, v59);
      objc_msgSend_setCurrentFormat_isExplicit_(v3, v61, v56, IsExplicit);

      v62 = v37;
LABEL_14:

      v32 = 1;
      goto LABEL_15;
    }
  }

  else if (v19 == 261)
  {
    v23 = objc_msgSend_asDateTimeFormat(v7, v20, v21, v22);
    v27 = objc_msgSend_formatString(v23, v24, v25, v26);

    v31 = objc_msgSend_localizedTemplateStringForKey_value_table_templateBundle_locale_(*(a1 + 56), v28, v27, v27, @"TSATemplateLocalizableDateFormats", *(a1 + 40), *(a1 + 48));
    if (v27 == v31 || (objc_msgSend_isEqualToString_(v27, v29, v31, v30) & 1) != 0)
    {
      v32 = 0;
    }

    else
    {
      v63 = objc_alloc(MEMORY[0x277D80658]);
      v66 = objc_msgSend_initWithFormatString_(v63, v64, v31, v65);
      objc_msgSend_setCurrentFormat_isExplicit_(v3, v67, v66, 1);

      v32 = 1;
    }

    if (v15)
    {
      goto LABEL_13;
    }

    goto LABEL_15;
  }

  if (v15)
  {
LABEL_13:
    v68 = objc_msgSend_currencyFormat(v3, v20, v21, v22);
    v62 = objc_msgSend_asCurrencyFormat(v68, v69, v70, v71);

    v72 = objc_alloc(MEMORY[0x277D80640]);
    v76 = objc_msgSend_decimalPlaces(v62, v73, v74, v75);
    v80 = objc_msgSend_negativeStyle(v62, v77, v78, v79);
    v84 = objc_msgSend_showThousandsSeparator(v62, v81, v82, v83);
    v88 = objc_msgSend_accountingStyle(v62, v85, v86, v87);
    v37 = objc_msgSend_initWithDecimalPlaces_negativeStyle_showSeparator_accountingStyle_currencyCode_(v72, v89, v76, v80, v84, v88, *(a1 + 32));
    hasExplicitFormatOfType_allowMismatchedSpare = objc_msgSend_hasExplicitFormatOfType_allowMismatchedSpare_(v3, v90, 257, 1);
    objc_msgSend_setFormat_isExplicit_(v3, v92, v37, hasExplicitFormatOfType_allowMismatchedSpare);
    goto LABEL_14;
  }

  v32 = 0;
LABEL_15:

  return v32;
}

void sub_2760C7578(uint64_t a1, void *a2)
{
  v3 = a2;
  v174 = objc_msgSend_cell(v3, v4, v5, v6, v3);
  v193 = 0;
  v194 = &v193;
  v195 = 0x2020000000;
  v176 = objc_msgSend_copy(v174, v7, v8, v9);
  v196 = (*(*(a1 + 88) + 16))();
  v186[0] = MEMORY[0x277D85DD0];
  v186[1] = 3221225472;
  v186[2] = sub_2760C7ED8;
  v186[3] = &unk_27A6B0848;
  v10 = v3;
  v11 = *(a1 + 96);
  v187 = v10;
  v192 = v11;
  v12 = *(a1 + 32);
  v13 = *(a1 + 40);
  v14 = *(a1 + 48);
  v15 = *(a1 + 56);
  *&v16 = v14;
  *(&v16 + 1) = v15;
  *&v17 = v12;
  *(&v17 + 1) = v13;
  v188 = v17;
  v189 = v16;
  v190 = *(a1 + 64);
  v191 = &v193;
  v175 = MEMORY[0x277C95D60](v186);
  v177 = v10;
  v21 = objc_msgSend_cellValueType(v10, v18, v19, v20);
  switch(v21)
  {
    case 2:
      v183[0] = MEMORY[0x277D85DD0];
      v183[1] = 3221225472;
      v183[2] = sub_2760C8124;
      v183[3] = &unk_27A6B0870;
      v185 = &v193;
      v184 = v176;
      (v175)[2](v175, v183);
      v25 = v184;
      break;
    case 3:
      v25 = objc_msgSend_stringValue(v174, v22, v23, v24);
      v27 = objc_msgSend_localizedTemplateStringForKey_value_table_templateBundle_locale_(*(a1 + 96), v26, v25, v25, @"TSATemplateLocalizable", *(a1 + 56), *(a1 + 64));
      if ((objc_msgSend_isEqualToString_(v25, v28, v27, v29) & 1) == 0)
      {
        *(v194 + 24) = 1;
        objc_msgSend_setStringValue_(v176, v30, v27, v31);
      }

      break;
    case 10:
      v180[0] = MEMORY[0x277D85DD0];
      v180[1] = 3221225472;
      v180[2] = sub_2760C813C;
      v180[3] = &unk_27A6B0870;
      v182 = &v193;
      v181 = v176;
      (v175)[2](v175, v180);
      v25 = v181;
      break;
    default:
      goto LABEL_10;
  }

LABEL_10:
  v32 = objc_msgSend_cell(v10, v22, v23, v24);
  v36 = objc_msgSend_interactionType(v32, v33, v34, v35);

  if (v36 == 7)
  {
    v40 = objc_msgSend_cell(v10, v37, v38, v39);
    v44 = objc_msgSend_cellSpec(v40, v41, v42, v43);
    v48 = objc_msgSend_asChooserControlSpec(v44, v45, v46, v47);
    v52 = objc_msgSend_popupModel(v48, v49, v50, v51);

    v56 = objc_msgSend_choices(v52, v53, v54, v55);
    v60 = objc_msgSend_count(v56, v57, v58, v59);

    v61 = MEMORY[0x277CBEB18];
    v65 = objc_msgSend_choices(v52, v62, v63, v64);
    v178 = objc_msgSend_arrayWithArray_(v61, v66, v65, v67);

    if (v60)
    {
      v70 = 0;
      while (1)
      {
        v71 = objc_msgSend_valueTypeOfItemAtIndex_(v52, v68, v70, v69);
        if (v71 == 3)
        {
          v113 = objc_msgSend_formatAtIndex_(v52, v72, v70, v73);
          v74 = objc_msgSend_asDateTimeFormat(v113, v114, v115, v116);

          v76 = objc_msgSend_formatString(v74, v117, v118, v119);
          v81 = objc_msgSend_localizedTemplateStringForKey_value_table_templateBundle_locale_(*(a1 + 96), v120, v76, v76, @"TSATemplateLocalizableDateFormats", *(a1 + 56), *(a1 + 64));
          if ((objc_msgSend_isEqualToString_(v76, v121, v81, v122) & 1) == 0)
          {
            v133 = objc_msgSend_dateAtIndex_(v52, v123, v70, v124);
            v134 = objc_alloc(MEMORY[0x277D80658]);
            v137 = objc_msgSend_initWithFormatString_(v134, v135, v81, v136);
            v139 = objc_msgSend_popUpItemFromDate_format_(v52, v138, v133, v137);

            objc_msgSend_replaceObjectAtIndex_withObject_(v178, v140, v70, v139);
            goto LABEL_27;
          }

          goto LABEL_23;
        }

        if (v71 == 5)
        {
          break;
        }

        if (v71 == 7)
        {
          v74 = objc_msgSend_stringAtIndex_(v52, v72, v70, v73);
          v76 = objc_msgSend_localizedTemplateStringForKey_value_table_templateBundle_locale_(*(a1 + 96), v75, v74, v74, @"TSATemplateLocalizable", *(a1 + 56), *(a1 + 64));
          if ((objc_msgSend_isEqualToString_(v74, v77, v76, v78) & 1) == 0)
          {
            v81 = objc_msgSend_popUpItemFromString_(v52, v79, v76, v80);
            objc_msgSend_replaceObjectAtIndex_withObject_(v178, v82, v70, v81);
LABEL_27:

            goto LABEL_28;
          }

LABEL_23:

LABEL_24:
        }

        objc_opt_class();
        v127 = objc_msgSend_objectAtIndexedSubscript_(v178, v125, v70, v126);
        v74 = TSUDynamicCast();

        v76 = objc_msgSend_objectLocale(v52, v128, v129, v130);
        objc_msgSend_setLocale_(v74, v131, v76, v132);
LABEL_28:

        if (v60 == ++v70)
        {
          goto LABEL_29;
        }
      }

      v83 = objc_msgSend_formatAtIndex_(v52, v72, v70, v73);
      v74 = objc_msgSend_asCurrencyFormat(v83, v84, v85, v86);

      if (v74 && objc_msgSend_currencyCodeIndex(v74, v87, v88, v89) != *(a1 + 104))
      {
        v90 = objc_alloc(MEMORY[0x277D80640]);
        v94 = objc_msgSend_decimalPlaces(v74, v91, v92, v93);
        v98 = objc_msgSend_negativeStyle(v74, v95, v96, v97);
        v102 = objc_msgSend_showThousandsSeparator(v74, v99, v100, v101);
        v106 = objc_msgSend_accountingStyle(v74, v103, v104, v105);
        v76 = objc_msgSend_initWithDecimalPlaces_negativeStyle_showSeparator_accountingStyle_currencyCode_(v90, v107, v94, v98, v102, v106, *(a1 + 72));
        objc_msgSend_numberAtIndex_(v52, v108, v70, v109);
        v81 = objc_msgSend_popUpItemFromNumber_format_(v52, v110, v76, v111);
        objc_msgSend_replaceObjectAtIndex_withObject_(v178, v112, v70, v81);
        goto LABEL_27;
      }

      goto LABEL_24;
    }

LABEL_29:
    *(v194 + 24) = 1;
    v141 = objc_alloc(MEMORY[0x277D80D38]);
    v145 = objc_msgSend_context(v52, v142, v143, v144);
    v147 = objc_msgSend_initWithItems_context_(v141, v146, v178, v145);

    v148 = MEMORY[0x277D80CD0];
    v152 = objc_msgSend_cell(v177, v149, v150, v151);
    v156 = objc_msgSend_cellSpec(v152, v153, v154, v155);
    v160 = objc_msgSend_asChooserControlSpec(v156, v157, v158, v159);
    Item = objc_msgSend_startWithFirstItem(v160, v161, v162, v163);
    v166 = objc_msgSend_popupCellSpec_startWithFirstItem_(v148, v165, v147, Item);

    objc_msgSend_setCellSpec_(v176, v167, v166, v168);
  }

  if (*(v194 + 24) == 1)
  {
    v169 = *(a1 + 80);
    v170 = *(a1 + 40);
    v171 = objc_msgSend_cellID(v177, v37, v38, v39);
    if (v170)
    {
      objc_msgSend_cellUIDForCellID_(v170, v172, v171, v173);
    }

    else
    {
      memset(v179, 0, sizeof(v179));
    }

    objc_msgSend_addCell_andCellUID_(v169, v172, v176, v179);
  }

  _Block_object_dispose(&v193, 8);
}

void sub_2760C7CF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, void *a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, void *a36, void *a37, void *a38, void *a39, void *a40)
{
  _Block_object_dispose((v41 - 144), 8);

  _Unwind_Resume(a1);
}

void sub_2760C7ED8(uint64_t a1, void *a2)
{
  v3 = a2;
  v7 = objc_msgSend_cellID(*(a1 + 32), v4, v5, v6);
  v11 = objc_msgSend_cell(*(a1 + 32), v8, v9, v10);
  objc_msgSend_underlyingDoubleValue(v11, v12, v13, v14);
  v16 = v15;

  v50 = v16;
  v17 = *(a1 + 88);
  v18 = *(a1 + 40);
  v19 = *(a1 + 48);
  v20 = *(a1 + 56);
  v49 = 0;
  v22 = objc_msgSend__localizedStringKeyForValue_templateName_tableInfo_unlocalizedTableName_cellAddress_defaultValue_(v17, v21, v18, v19, v20, v7, &v49, v16);
  v23 = v49;
  v25 = objc_msgSend_localizedTemplateStringForKey_value_table_templateBundle_locale_(*(a1 + 88), v24, v22, v23, @"TSATemplateLocalizableTableValues", *(a1 + 64), *(a1 + 72));
  if ((objc_msgSend_isEqualToString_(v25, v26, v23, v27) & 1) == 0)
  {
    *(*(*(a1 + 80) + 8) + 24) = 1;
    v28 = objc_opt_class();
    v32 = objc_msgSend__localeForUnlocalizedValues(v28, v29, v30, v31);
    if ((objc_msgSend_numberValueFromString_locale_outDoubleValue_(MEMORY[0x277D81290], v33, v25, v32, &v50) & 1) == 0)
    {
      v36 = MEMORY[0x277D81150];
      v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v34, "+[TSADocumentRoot(Localization) localizeTableInfo:templateBundle:andLocale:]_block_invoke_3", v35);
      v40 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v38, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSADocumentRoot_Localization.mm", v39);
      v44 = objc_msgSend_documentLanguageIdentifier(*(a1 + 72), v41, v42, v43);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v36, v45, v37, v40, 1083, 0, "Unable to parse localized value %{public}@, for key: %{public}@, in locale (%{public}@). The value should be in English.", v25, v22, v44);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v46, v47, v48);
    }

    v3[2](v3, v50);
  }
}

void sub_2760C80B0(_Unwind_Exception *a1)
{
  v9 = v5;

  _Unwind_Resume(a1);
}

uint64_t sub_2760C8A88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v9 = a6;
  v12 = objc_msgSend_attachmentAtCharIndex_(*(a1 + 32), v10, a5, v11);
  objc_msgSend_setObject_forKeyedSubscript_(*(a1 + 40), v13, v12, v9);
  objc_msgSend_replaceCharactersInRange_withString_undoTransaction_(*(a1 + 32), v14, a5, 1, v9, 0);
  objc_msgSend_length(v9, v15, v16, v17);

  return a2;
}

uint64_t sub_2760C90D8(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v8 = v4;
  if (!v3)
  {
    v14 = 1;
    if (!v4)
    {
      v10 = 0;
      goto LABEL_18;
    }

    isEqual = 1;
    goto LABEL_8;
  }

  v9 = objc_msgSend_null(MEMORY[0x277CBEB68], v5, v6, v7);
  v10 = v9;
  if (v9 != v3)
  {
    isEqual = objc_msgSend_isEqual_(v9, v5, v3, v7);
    if (v8)
    {
      goto LABEL_4;
    }

LABEL_13:
    v14 = 1;
    if (!isEqual)
    {
      goto LABEL_21;
    }

    goto LABEL_18;
  }

  isEqual = 1;
  if (!v8)
  {
    goto LABEL_13;
  }

LABEL_4:
  if (v10)
  {
    v12 = 0;
    v13 = v10;
    goto LABEL_9;
  }

LABEL_8:
  v10 = 0;
  v13 = objc_msgSend_null(MEMORY[0x277CBEB68], v5, v6, v7);
  v12 = 1;
LABEL_9:
  v15 = v10;
  v10 = v13;

  if (v10 == v8)
  {
    v14 = 1;
    if (!v12)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  v14 = objc_msgSend_isEqual_(v10, v5, v8, v7);
  if (v12)
  {
LABEL_16:
  }

LABEL_17:
  if (!isEqual)
  {
LABEL_21:
    v16 = objc_msgSend_isEqual_(v3, v5, v8, v7);
    goto LABEL_22;
  }

LABEL_18:
  if ((v14 & 1) == 0)
  {
    goto LABEL_21;
  }

  v16 = 1;
LABEL_22:

  return v16;
}

void sub_2760C921C(_Unwind_Exception *a1)
{
  if (v5)
  {
  }

  _Unwind_Resume(a1);
}

id sub_2760C93E8(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v34 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, a3, a4);
  v33 = objc_msgSend_paragraphCount(a1, v5, v6, v7);
  v11 = objc_msgSend_characterStyleAttributeCount(a1, v8, v9, v10);
  if (v33 >= 1)
  {
    v14 = v11;
    v15 = v33;
    do
    {
      v36 = v15 - 1;
      v16 = objc_msgSend_textRangeForParagraphAtIndex_(a1, length, v15 - 1, v13);
      v35 = v15;
      v17 = v15 < v33;
      if (length)
      {
        v18 = &length[-v17];
        if (length != v17)
        {
          v19 = v16;
          for (i = v18 + v16 - 1; i >= v19; i = v25 - 1)
          {
            location = v19;
            v22 = v18;
            if (v14)
            {
              v23 = objc_msgSend_characterStyleAtCharIndex_effectiveRange_(a1, length, i, &v37);
              v39.location = v19;
              v39.length = v18;
              v24 = NSIntersectionRange(v37, v39);
              length = v24.length;
              location = v24.location;
              v22 = v24.length;
            }

            if (v22)
            {
              v25 = location;
            }

            else
            {
              v25 = i;
            }

            if (v22)
            {
              v26 = v22;
              v27 = location;
              while (objc_msgSend_characterAtIndex_(a1, length, v27, v13) == 65532)
              {
                ++v27;
                if (!--v26)
                {
                  goto LABEL_22;
                }
              }

              v28 = location + v22 - 1;
              while (objc_msgSend_characterAtIndex_(a1, length, v28, v13) == 65532)
              {
                --v28;
                if (!--v26)
                {
                  goto LABEL_22;
                }
              }

              v29 = objc_msgSend_valueWithRange_(MEMORY[0x277CCAE60], length, v27, v26);
              objc_msgSend_addObject_(v34, v30, v29, v31);
            }

LABEL_22:
            ;
          }
        }
      }

      v15 = v36;
    }

    while (v35 > 1);
  }

  return v34;
}

void sub_2760CB0D8(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_2760CB2EC(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if ((a1 & 1) == 0)
  {
    v9 = sub_2760D2A18(@"PDF assertion failure: ", a2, &a9);
    if (objc_msgSend_length(v9, v10, v11, v12))
    {
      if (TSAPdfTaggingLogCat_init_token != -1)
      {
        sub_27610CCD4();
      }
    }

    objc_msgSend_raise_format_(MEMORY[0x277CBEAD8], v13, *MEMORY[0x277CBE658], @"%@", v9, &a9);
  }
}

void sub_2760CBB34(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a1 + 32);
  v8 = objc_msgSend_valueWithNonretainedObject_(MEMORY[0x277CCAE60], a2, a5, a4);
  objc_msgSend_addObject_(v5, v6, v8, v7);
}

void sub_2760CCED4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);

  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 64), 8);

  _Unwind_Resume(a1);
}

void sub_2760CCF08(uint64_t a1, void *a2, _BYTE *a3)
{
  v24 = a2;
  v8 = objc_msgSend_hiddenStates(v24, v5, v6, v7);
  v12 = objc_msgSend_numberOfRows(v24, v9, v10, v11);
  v16 = objc_msgSend_numberOfHiddenRows(v8, v13, v14, v15);
  v20 = objc_msgSend_numberOfColumns(v24, v17, v18, v19);
  *(*(*(a1 + 32) + 8) + 24) += (v12 - v16) * (v20 - objc_msgSend_numberOfHiddenColumns(v8, v21, v22, v23));
  if (*(*(*(a1 + 32) + 8) + 24) >= 0x2711uLL)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a3 = 1;
  }
}

void sub_2760CD160(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_2760D2BD4(&__p, 4 * a1);
  v11 = objc_msgSend_stringWithCharacters_length_(MEMORY[0x277CCACA8], v10, __p, (v17 - __p) >> 1);
  if (__p)
  {
    v17 = __p;
    operator delete(__p);
  }

  v12 = sub_2760D2A18(v11, a2, &a9);

  if (objc_msgSend_length(v12, v13, v14, v15) && TSAPdfTaggingLogCat_init_token != -1)
  {
    sub_27610CCFC();
  }
}

void sub_2760CDE84(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v29 = objc_msgSend_topOfContextStack(*(a1 + 32), a2, a3, a4);
  objc_opt_class();
  v5 = TSUDynamicCast();
  v9 = v5;
  if (v5)
  {
    v10 = objc_msgSend_taggerStateOutsideCore(v5, v6, v7, v8);

    if (v10)
    {
      v14 = *(a1 + 32);
      v15 = objc_msgSend_taggerStateOutsideCore(v9, v11, v12, v13);
      objc_msgSend_setState_(v14, v16, v15, v17);

      objc_msgSend_setTaggerStateOutsideCore_(v9, v18, 0, v19);
    }
  }

  v20 = [TSAPdfTaggerTextStorageChunkContext alloc];
  v22 = objc_msgSend_initWithStateOfTagger_textStorageChunk_limitSelection_(v20, v21, *(a1 + 32), *(a1 + 40), *(a1 + 48));
  objc_msgSend_pushContext_(*(a1 + 32), v23, v22, v24);
  if (objc_msgSend_textStorageChunkIsFootnote_(*(a1 + 32), v25, *(a1 + 40), v26))
  {
    objc_msgSend_beginTagWithType_(*(a1 + 32), v27, 502, v28);
  }
}

uint64_t sub_2760CE02C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = objc_opt_class();

  return objc_msgSend_restoreStateFromTopOfContextStackWithExpectedClass_(v1, v2, v3, v4);
}

void sub_2760CE154(uint64_t *a1)
{
  v2 = [TSAPdfTaggerOneColumnTextOwnerContext alloc];
  v6 = objc_msgSend_initWithStateOfTagger_textColumn_limitSelection_(v2, v3, a1[4], a1[5], a1[6]);
  objc_msgSend_pushContext_(a1[4], v4, v6, v5);
}

uint64_t sub_2760CE23C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = objc_opt_class();

  return objc_msgSend_restoreStateFromTopOfContextStackWithExpectedClass_(v1, v2, v3, v4);
}

void sub_2760CE364(uint64_t *a1)
{
  v2 = [TSAPdfTaggerTextColumnContext alloc];
  v6 = objc_msgSend_initWithStateOfTagger_column_limitSelection_(v2, v3, a1[4], a1[5], a1[6]);
  objc_msgSend_pushContext_(a1[4], v4, v6, v5);
}

uint64_t sub_2760CE44C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = objc_opt_class();

  return objc_msgSend_restoreStateFromTopOfContextStackWithExpectedClass_(v1, v2, v3, v4);
}

void sub_2760CEC9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  v19 = v16;

  _Block_object_dispose(va, 8);
  _Block_object_dispose((v18 - 80), 8);

  _Unwind_Resume(a1);
}

uint64_t sub_2760CED10(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  *(*(*(result + 32) + 8) + 24) = 1;
  *(*(*(result + 40) + 8) + 24) = 1;
  *a5 = 1;
  return result;
}

uint64_t sub_2760CED34(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  *(*(*(result + 32) + 8) + 24) = 1;
  *(*(*(result + 40) + 8) + 24) = 1;
  *a5 = 1;
  return result;
}

void sub_2760CF4C4(void *a1, void *a2, unint64_t a3, uint64_t a4)
{
  v9 = a2;
  v10 = a1[4];
  v11 = a1[6];
  if (a3 > v11 || v11 > a3 + a4)
  {
    objc_msgSend_assertCharIndexRelativeToParagraphRange_(v10, v7, 0, v8);
  }

  else
  {
    objc_msgSend_assertCharIndexRelativeToParagraphRange_(v10, v7, 1, v8);
  }

  v14 = a1[6];
  if (v14 > a3)
  {
    v15 = MEMORY[0x277D81490];
    do
    {
      v16 = *v15;
      if ((objc_msgSend_hasHiddenTextAtCharIndex_range_(v9, v13, v14 - 1, &v16) & 1) == 0)
      {
        break;
      }

      v14 = v16;
    }

    while (v16 > a3);
  }

  if (v14 > a3)
  {
    *(*(a1[5] + 8) + 24) = v14 - 1;
  }
}

void sub_2760CF658(void *a1, void *a2, unint64_t a3, uint64_t a4)
{
  v9 = a2;
  v10 = a1[4];
  v11 = a1[6];
  v13 = a3 > v11;
  v12 = a3 + a4;
  v13 = v13 || v11 > v12;
  if (v13)
  {
    objc_msgSend_assertCharIndexRelativeToParagraphRange_(v10, v7, 0, v8);
  }

  else
  {
    objc_msgSend_assertCharIndexRelativeToParagraphRange_(v10, v7, 1, v8);
  }

  v15 = a1[6];
  if (v15 < v12)
  {
    v16 = MEMORY[0x277D81490];
    do
    {
      v17 = *v16;
      if ((objc_msgSend_hasHiddenTextAtCharIndex_range_(v9, v14, v15, &v17) & 1) == 0)
      {
        break;
      }

      v15 = *(&v17 + 1) + v17;
    }

    while (*(&v17 + 1) + v17 < v12);
  }

  if (v15 < v12)
  {
    *(*(a1[5] + 8) + 24) = v15;
  }
}

uint64_t sub_2760CF79C(uint64_t result, const char *a2, uint64_t a3, uint64_t a4)
{
  if (*(result + 48))
  {
    v4 = result;
    objc_msgSend_advanceParagraphEnumeratorToCharIndex_(*(result + 32), a2, *(result + 40), a4);
    if (objc_msgSend_charIndexIsAtStartOfParagraph_(*(v4 + 32), v5, *(v4 + 40), v6))
    {
      objc_msgSend_beginParagraphWithLineFragmentRange_(*(v4 + 32), v7, *(v4 + 40), *(v4 + 48));
    }

    v9 = *(v4 + 32);

    return objc_msgSend_assertTopOfContextStackIsParagraph_(v9, v7, 1, v8);
  }

  return result;
}

uint64_t sub_2760CF878(uint64_t result, const char *a2, uint64_t a3, uint64_t a4)
{
  if (*(result + 48))
  {
    v4 = result;
    objc_msgSend_assertTopOfContextStackIsParagraph_(*(result + 32), a2, 1, a4);
    result = objc_msgSend_charIndexIsAtEndOfParagraph_(*(v4 + 32), v5, *(v4 + 48) + *(v4 + 40), v6);
    if (result)
    {
      v7 = *(v4 + 32);
      v8 = *(v4 + 40);
      v9 = *(v4 + 48);

      return MEMORY[0x2821F9670](v7, sel_endParagraphWithLineFragmentRange_, v8, v9);
    }
  }

  return result;
}

void sub_2760CF954(uint64_t a1)
{
  v2 = [TSAPdfTaggerListLabelContext alloc];
  v15 = objc_msgSend_initWithStateOfTagger_(v2, v3, *(a1 + 32), v4);
  objc_msgSend_pushContext_(*(a1 + 32), v5, v15, v6);
  v10 = objc_msgSend_topmostTagType(*(a1 + 32), v7, v8, v9);
  if ((objc_msgSend_isHeaderTag_(TSAPdfTagger, v11, v10, v12) & 1) == 0)
  {
    objc_msgSend_beginTagWithType_(*(a1 + 32), v13, 302, v14);
  }
}

uint64_t sub_2760CFA64(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = objc_opt_class();

  return objc_msgSend_restoreStateFromTopOfContextStackWithExpectedClass_(v1, v2, v3, v4);
}

void sub_2760CFB1C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 48))
  {
    if (objc_msgSend_charIndexIsAtStartOfParagraph_(*(a1 + 32), a2, *(a1 + 40), a4))
    {
      objc_msgSend_beginParagraphBodyWithLineFragmentRange_(*(a1 + 32), v5, *(a1 + 40), *(a1 + 48));
    }

    v6 = [TSAPdfTaggerLineFragmentContext alloc];
    v10 = objc_msgSend_initWithStateOfTagger_lineFragmentCharRange_(v6, v7, *(a1 + 32), *(a1 + 40), *(a1 + 48));
    objc_msgSend_pushContext_(*(a1 + 32), v8, v10, v9);
  }
}

uint64_t sub_2760CFC3C(uint64_t result)
{
  if (*(result + 48))
  {
    v1 = result;
    v2 = *(result + 32);
    v3 = objc_opt_class();
    objc_msgSend_restoreStateFromTopOfContextStackWithExpectedClass_(v2, v4, v3, v5);
    result = objc_msgSend_charIndexIsAtEndOfParagraph_(*(v1 + 32), v6, *(v1 + 48) + *(v1 + 40), v7);
    if (result)
    {
      v8 = *(v1 + 32);
      v9 = *(v1 + 40);
      v10 = *(v1 + 48);

      return MEMORY[0x2821F9670](v8, sel_endParagraphBodyWithLineFragmentRange_, v9, v10);
    }
  }

  return result;
}

void sub_2760CFE00(uint64_t a1)
{
  v2 = [TSAPdfTaggerPrimaryTextRunContext alloc];
  v4 = objc_msgSend_initWithStateOfTagger_charRange_(v2, v3, *(a1 + 32), *(a1 + 40), *(a1 + 48));
  objc_msgSend_pushContext_(*(a1 + 32), v5, v4, v6);
  if (*(a1 + 56) == 1)
  {
    v10 = objc_msgSend_topmostParagraphContext(*(a1 + 32), v7, v8, v9);
    if (objc_msgSend_needsSpans(v10, v11, v12, v13))
    {
      VisibleCharInParagraphAtOrAfterCharIndex = objc_msgSend_indexOfFirstVisibleCharInParagraphAtOrAfterCharIndex_(*(a1 + 32), v14, *(a1 + 40), v15);
      v22 = 0;
      v18 = objc_msgSend_retrieveHighestInfoAtCharIndex_returnTagType_(*(a1 + 32), v17, VisibleCharInParagraphAtOrAfterCharIndex, &v22);
      v21 = v22;
      if (!v22)
      {
        v21 = 500;
        v22 = 500;
      }

      objc_msgSend_beginTagWithType_(*(a1 + 32), v19, v21, v20);
    }
  }
}

uint64_t sub_2760CFF58(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = objc_opt_class();

  return objc_msgSend_restoreStateFromTopOfContextStackWithExpectedClass_(v1, v2, v3, v4);
}

void sub_2760D0014(uint64_t *a1)
{
  v2 = [TSAPdfTaggerAncillaryTextRunContext alloc];
  v23 = objc_msgSend_initWithStateOfTagger_charRange_baseTextRange_(v2, v3, a1[4], a1[5], a1[6], a1[7], a1[8]);
  objc_msgSend_pushContext_(a1[4], v4, v23, v5);
  v9 = objc_msgSend_topmostParagraphContext(a1[4], v6, v7, v8);
  if (objc_msgSend_needsSpans(v9, v10, v11, v12))
  {
    if (a1[7] == 0x7FFFFFFFFFFFFFFFLL)
    {
      objc_msgSend_beginTagWithType_(a1[4], v13, 500, v15);
    }

    else
    {
      v16 = objc_msgSend_topmostTextStorage(a1[4], v13, v14, v15);
      v19 = objc_msgSend_footnoteReferenceAttachmentOrFootnoteMarkAttachmentAtCharIndex_(v16, v17, a1[7], v18);
      if (v19)
      {
        v20 = 503;
      }

      else
      {
        v20 = 500;
      }

      objc_msgSend_beginTagWithType_(a1[4], v21, v20, v22);
    }
  }
}

uint64_t sub_2760D01A0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = objc_opt_class();

  return objc_msgSend_restoreStateFromTopOfContextStackWithExpectedClass_(v1, v2, v3, v4);
}

void sub_2760D025C(uint64_t *a1)
{
  v2 = [TSAPdfTaggerRubyTextRunContext alloc];
  v10 = objc_msgSend_initWithStateOfTagger_charRange_baseTextRange_(v2, v3, a1[4], a1[5], a1[6], a1[7], a1[8]);
  objc_msgSend_pushContext_(a1[4], v4, v10, v5);
  objc_msgSend_beginTagWithType_(a1[4], v6, 600, v7);
  objc_msgSend_beginTagWithType_(a1[4], v8, 602, v9);
}

uint64_t sub_2760D0360(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = objc_opt_class();

  return objc_msgSend_restoreStateFromTopOfContextStackWithExpectedClass_(v1, v2, v3, v4);
}

void sub_2760D041C(uint64_t *a1)
{
  v2 = [TSAPdfTaggerTateChuYokoTextRunContext alloc];
  v4 = objc_msgSend_initWithStateOfTagger_charRange_baseTextRange_(v2, v3, a1[4], a1[5], a1[6], a1[7], a1[8]);
  objc_msgSend_pushContext_(a1[4], v5, v4, v6);
  v12 = 0;
  v8 = objc_msgSend_retrieveHighestInfoAtCharIndex_returnTagType_(a1[4], v7, a1[7], &v12);
  v11 = v12;
  if (!v12)
  {
    v11 = 500;
    v12 = 500;
  }

  objc_msgSend_beginTagWithType_(a1[4], v9, v11, v10);
}

uint64_t sub_2760D052C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = objc_opt_class();

  return objc_msgSend_restoreStateFromTopOfContextStackWithExpectedClass_(v1, v2, v3, v4);
}

void sub_2760D0964(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_2760D0984(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2760D0BF0(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = objc_opt_class();
  if (objc_msgSend_shouldMapDrawableRep_(v3, v4, v8, v5))
  {
    objc_msgSend_beginDrawable_(*(a1 + 32), v6, v8, v7);
  }
}

void sub_2760D0D74(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = objc_opt_class();
  if (objc_msgSend_shouldMapDrawableRep_(v3, v4, v8, v5))
  {
    objc_msgSend_endDrawable_(*(a1 + 32), v6, v8, v7);
  }
}

void sub_2760D1768(uint64_t a1)
{
  v2 = [TSAPdfTaggerTableNameContext alloc];
  v7 = objc_msgSend_initWithStateOfTagger_(v2, v3, *(a1 + 32), v4);
  objc_msgSend_pushContext_(*(a1 + 32), v5, v7, v6);
}

uint64_t sub_2760D184C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = objc_opt_class();

  return objc_msgSend_restoreStateFromTopOfContextStackWithExpectedClass_(v1, v2, v3, v4);
}

void sub_2760D193C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = objc_opt_class();
  v23 = objc_msgSend_topOfContextStackWithExpectedClass_(v2, v4, v3, v5);
  if (objc_msgSend_multispace(v23, v6, v7, v8) && objc_msgSend_firstSpace(v23, v9, v10, v11))
  {
    objc_msgSend_setFirstSpace_(v23, v12, 0, v13);
    objc_msgSend_beginTagWithType_(*(a1 + 32), v14, 104, v15);
  }

  v16 = [TSAPdfTaggerTableLayoutSpaceContext alloc];
  v18 = objc_msgSend_initWithStateOfTagger_tableLayoutSpace_(v16, v17, *(a1 + 32), *(a1 + 40));
  objc_msgSend_pushContext_(*(a1 + 32), v19, v18, v20);
  objc_msgSend_beginTagWithType_(*(a1 + 32), v21, 400, v22);
}

uint64_t sub_2760D1A90(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = objc_opt_class();

  return objc_msgSend_restoreStateFromTopOfContextStackWithExpectedClass_(v1, v2, v3, v4);
}

void sub_2760D1B48(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = objc_opt_class();
  v19 = objc_msgSend_topOfContextStackWithExpectedClass_(v2, v4, v3, v5);
  v9 = objc_msgSend_currentTableRegion(v19, v6, v7, v8);
  objc_msgSend_addRow_(v19, v10, *(a1 + 40), v11);
  v18 = objc_msgSend_currentTableRegion(v19, v12, v13, v14);
  if (v18 != v9)
  {
    if (v9)
    {
      objc_msgSend_endTag(*(a1 + 32), v15, v16, v17);
    }

    objc_msgSend_beginTagWithType_(*(a1 + 32), v15, v18, v17);
  }

  objc_msgSend_beginTagWithType_(*(a1 + 32), v15, 401, v17);
}

void sub_2760D1D04(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  if ((*(a1 + 48) & 1) == 0)
  {
    v5 = *(a1 + 32);
    v6 = objc_msgSend_taggingPreventionDepth(v5, a2, a3, a4);
    objc_msgSend_setTaggingPreventionDepth_(v5, v7, v6 + 1, v8);
  }

  v9 = [TSAPdfTaggerTableCellContext alloc];
  v11 = objc_msgSend_initWithStateOfTagger_cellID_(v9, v10, *(a1 + 32), *(a1 + 40));
  objc_msgSend_pushContext_(*(a1 + 32), v12, v11, v13);
  v17 = objc_msgSend_tableLayoutSpaceContext(v11, v14, v15, v16);
  v33.origin = objc_msgSend_bodyCellRange(v17, v18, v19, v20);
  v33.size = v21;
  v22 = *(a1 + 40);
  v26 = TSUCellRect::contains(&v33, v22);
  if (*(a1 + 49))
  {
    v27 = 0;
  }

  else
  {
    v28 = objc_msgSend_tsu_resourcesBundle(MEMORY[0x277CCA8D8], v23, v24, v25);
    v30 = objc_msgSend_localizedStringForKey_value_table_(v28, v29, @"Empty cell", &stru_288512028, @"TSApplication");

    v27 = objc_msgSend_tagPropertiesWithActualText_alternativeText_titleText_(TSAPdfTagInfo, v31, v30, 0, 0);
  }

  v32 = *(a1 + 32);
  if (v26)
  {
    objc_msgSend_beginTagWithType_tagProperties_(v32, v23, 403, v27);
  }

  else
  {
    objc_msgSend_beginTagWithType_tagProperties_(v32, v23, 402, v27);
  }
}

uint64_t sub_2760D1EF0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = objc_opt_class();
  result = objc_msgSend_restoreStateFromTopOfContextStackWithExpectedClass_(v2, v4, v3, v5);
  if ((*(a1 + 40) & 1) == 0)
  {
    v10 = *(a1 + 32);
    v12 = objc_msgSend_taggingPreventionDepth(v10, v7, v8, v9) - 1;

    return objc_msgSend_setTaggingPreventionDepth_(v10, v11, v12, v13);
  }

  return result;
}

void sub_2760D1FD8(uint64_t a1)
{
  v24[1] = *MEMORY[0x277D85DE8];
  v2 = [TSAPdfTaggerCheckboxCellContext alloc];
  v5 = objc_msgSend_initWithStateOfTagger_(v2, v3, *(a1 + 32), v4);
  objc_msgSend_pushContext_(*(a1 + 32), v6, v5, v7);
  if ((atomic_load_explicit(&qword_280A42568, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280A42568))
  {
    v16 = objc_msgSend_tsu_resourcesBundle(MEMORY[0x277CCA8D8], v13, v14, v15);
    qword_280A42560 = objc_msgSend_localizedStringForKey_value_table_(v16, v17, @"checkbox cell. checkbox checked.", &stru_288512028, @"TSApplication");

    __cxa_guard_release(&qword_280A42568);
  }

  if ((atomic_load_explicit(&qword_280A42578, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280A42578))
  {
    v21 = objc_msgSend_tsu_resourcesBundle(MEMORY[0x277CCA8D8], v18, v19, v20);
    qword_280A42570 = objc_msgSend_localizedStringForKey_value_table_(v21, v22, @"checkbox cell. checkbox unchecked.", &stru_288512028, @"TSApplication");

    __cxa_guard_release(&qword_280A42578);
  }

  v8 = &qword_280A42560;
  if (!*(a1 + 40))
  {
    v8 = &qword_280A42570;
  }

  v9 = *v8;
  v23 = *MEMORY[0x277CBF600];
  v24[0] = v9;
  v11 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v10, v24, &v23, 1);
  objc_msgSend_beginTagWithType_tagProperties_(*(a1 + 32), v12, 700, v11);
}

void sub_2760D21AC(_Unwind_Exception *a1)
{
  __cxa_guard_abort(&qword_280A42578);

  _Unwind_Resume(a1);
}

uint64_t sub_2760D2288(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = objc_opt_class();

  return objc_msgSend_restoreStateFromTopOfContextStackWithExpectedClass_(v1, v2, v3, v4);
}

void sub_2760D2340(uint64_t a1)
{
  v24[1] = *MEMORY[0x277D85DE8];
  v2 = [TSAPdfTaggerRatingCellContext alloc];
  v5 = objc_msgSend_initWithStateOfTagger_(v2, v3, *(a1 + 32), v4);
  objc_msgSend_pushContext_(*(a1 + 32), v6, v5, v7);
  if ((atomic_load_explicit(qword_280A42588, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(qword_280A42588))
  {
    v21 = objc_msgSend_tsu_resourcesBundle(MEMORY[0x277CCA8D8], v8, v9, v10);
    qword_280A42580 = objc_msgSend_localizedStringForKey_value_table_(v21, v22, @"rating cell. %@ out of 5 stars selected.", &stru_288512028, @"TSApplication");

    __cxa_guard_release(qword_280A42588);
  }

  v11 = MEMORY[0x277CCABB8];
  v12 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v8, v9, v10, fmax(*(a1 + 40), 0.0));
  v14 = objc_msgSend_localizedStringFromNumber_numberStyle_(v11, v13, v12, 1);

  v17 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v15, qword_280A42580, v16, v14);
  v23 = *MEMORY[0x277CBF600];
  v24[0] = v17;
  v19 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v18, v24, &v23, 1);
  objc_msgSend_beginTagWithType_tagProperties_(*(a1 + 32), v20, 700, v19);
}

void sub_2760D24EC(_Unwind_Exception *a1)
{
  __cxa_guard_abort(qword_280A42588);

  _Unwind_Resume(a1);
}

uint64_t sub_2760D25C8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = objc_opt_class();

  return objc_msgSend_restoreStateFromTopOfContextStackWithExpectedClass_(v1, v2, v3, v4);
}

void sub_2760D269C(uint64_t a1)
{
  v2 = [TSAPdfTaggerPencilAnnotationContext alloc];
  v9 = objc_msgSend_initWithStateOfTagger_(v2, v3, *(a1 + 32), v4);
  objc_msgSend_pushContext_(*(a1 + 32), v5, v9, v6);
  objc_msgSend_beginTagWithType_(*(a1 + 32), v7, 507, v8);
}

uint64_t sub_2760D278C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = objc_opt_class();

  return objc_msgSend_restoreStateFromTopOfContextStackWithExpectedClass_(v1, v2, v3, v4);
}

void sub_2760D2840(uint64_t a1)
{
  v2 = [TSAPdfTaggerCommentContext alloc];
  v9 = objc_msgSend_initWithStateOfTagger_(v2, v3, *(a1 + 32), v4);
  objc_msgSend_pushContext_(*(a1 + 32), v5, v9, v6);
  objc_msgSend_beginTagWithType_(*(a1 + 32), v7, 507, v8);
}

uint64_t sub_2760D2930(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = objc_opt_class();

  return objc_msgSend_restoreStateFromTopOfContextStackWithExpectedClass_(v1, v2, v3, v4);
}

id sub_2760D2A18(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, a2, v7);
  v9 = objc_alloc(MEMORY[0x277CCACA8]);
  v11 = objc_msgSend_initWithFormat_arguments_(v9, v10, v8, a3);
  if (objc_msgSend_length(v5, v12, v13, v14))
  {
    v17 = objc_msgSend_stringByAppendingString_(v5, v15, v11, v16);

    v11 = v17;
  }

  return v11;
}

uint64_t sub_2760D2AE8()
{
  TSAPdfTaggingLogCat_log_t = TSULogCreateCategory();

  return MEMORY[0x2821F96F8]();
}

__CFString *sub_2760D2B28(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"%lu", a4, a1);
  if (a1 == 0x7FFFFFFFFFFFFFFFLL)
  {

    v5 = @"NotFound";
  }

  return v5;
}

uint64_t sub_2760D2B94()
{
  TSAPdfTaggingLogCat_log_t = TSULogCreateCategory();

  return MEMORY[0x2821F96F8]();
}

void *sub_2760D2BD4(void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_2760D2D70(result, a2);
  }

  return result;
}

void sub_2760D2D54(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_2760D2D70(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    sub_2760D2DC0(a1, a2);
  }

  sub_2760D2DA8();
}

void sub_2760D2DC0(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  sub_2760D2E04();
}

void sub_2760D2E04()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x277D82778], MEMORY[0x277D82620]);
}

BOOL sub_2760D2FFC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_unsignedIntValue(a2, a2, a3, a4);
  v7 = objc_msgSend_functionSpecForFunctionIndex_(MEMORY[0x277D80C78], v5, v4, v6);
  v8 = v7 == 0;

  return v8;
}

void sub_2760D3AF0(_Unwind_Exception *a1)
{
  v8 = v6;

  _Unwind_Resume(a1);
}

id sub_2760D43F4(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = *(a1 + 32);
  v4.receiver = *(a1 + 40);
  v4.super_class = TSACaptionInfo;
  return objc_msgSendSuper2(&v4, sel_saveToArchive_archiver_, v1, v2);
}

uint64_t sub_2760D55DC(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSAArchives.pb.cc", a4);
  *&v4 = 0;
  unk_2812F3980 = v4;
  TSA::_AddCustomFormatCommandArchive_default_instance_ = &unk_28850FEF0;
  if (atomic_load_explicit(scc_info_AddCustomFormatCommandArchive_TSAArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812F3990 = 0;
  unk_2812F3998 = 0;
  qword_2812F39A0 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSA::_AddCustomFormatCommandArchive_default_instance_);
}

uint64_t sub_2760D5690(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSAArchives.pb.cc", a4);
  TSA::CaptionInfoArchive::CaptionInfoArchive(&TSA::_CaptionInfoArchive_default_instance_, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSA::_CaptionInfoArchive_default_instance_);
}

uint64_t sub_2760D5700(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSAArchives.pb.cc", a4);
  qword_2812F3EC0 = 0;
  unk_2812F3EC8 = 0;
  TSA::_CaptionPlacementArchive_default_instance_ = &unk_288510F70;
  qword_2812F3ED0 = 0;
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSA::_CaptionPlacementArchive_default_instance_);
}

uint64_t sub_2760D577C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSAArchives.pb.cc", a4);
  TSA::ChangeDocumentLocaleCommandArchive::ChangeDocumentLocaleCommandArchive(&TSA::_ChangeDocumentLocaleCommandArchive_default_instance_, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSA::_ChangeDocumentLocaleCommandArchive_default_instance_);
}

uint64_t sub_2760D57EC(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSAArchives.pb.cc", a4);
  TSA::CollaboratorGalleryItemCursor::CollaboratorGalleryItemCursor(&TSA::_CollaboratorGalleryItemCursor_default_instance_, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSA::_CollaboratorGalleryItemCursor_default_instance_);
}

uint64_t sub_2760D585C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSAArchives.pb.cc", a4);
  TSA::DocumentArchive::DocumentArchive(&TSA::_DocumentArchive_default_instance_, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSA::_DocumentArchive_default_instance_);
}

uint64_t sub_2760D58CC(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSAArchives.pb.cc", a4);
  TSA::_FunctionBrowserStateArchive_default_instance_ = &unk_28850FAD0;
  unk_2812F3820 = 0;
  xmmword_2812F3828 = 0u;
  unk_2812F3838 = 0u;
  xmmword_2812F3848 = 0u;
  *(&xmmword_2812F3848 + 12) = 0u;
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSA::_FunctionBrowserStateArchive_default_instance_);
}

uint64_t sub_2760D5950(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSAArchives.pb.cc", a4);
  TSA::GalleryInfo::GalleryInfo(&TSA::_GalleryInfo_default_instance_, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSA::_GalleryInfo_default_instance_);
}

uint64_t sub_2760D59C0(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSAArchives.pb.cc", a4);
  TSA::GalleryInfoInsertItemsCommandArchive::GalleryInfoInsertItemsCommandArchive(&TSA::_GalleryInfoInsertItemsCommandArchive_default_instance_, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSA::_GalleryInfoInsertItemsCommandArchive_default_instance_);
}

uint64_t sub_2760D5A30(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSAArchives.pb.cc", a4);
  *&v4 = 0;
  unk_2812F3C28 = v4;
  TSA::_GalleryInfoRemoveItemsCommandArchive_default_instance_ = &unk_288510730;
  if (atomic_load_explicit(scc_info_GalleryInfoRemoveItemsCommandArchive_TSAArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812F3C38 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSA::_GalleryInfoRemoveItemsCommandArchive_default_instance_);
}

uint64_t sub_2760D5AE0(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSAArchives.pb.cc", a4);
  *&v4 = 0;
  unk_2812F3BB0 = v4;
  TSA::_GalleryInfoSetValueCommandArchive_default_instance_ = &unk_2885105D0;
  if (atomic_load_explicit(scc_info_GalleryInfoSetValueCommandArchive_TSAArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  dword_2812F3BE0 = 0;
  unk_2812F3BD0 = 0u;
  unk_2812F3BC0 = 0u;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSA::_GalleryInfoSetValueCommandArchive_default_instance_);
}

uint64_t sub_2760D5B9C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSAArchives.pb.cc", a4);
  *&v4 = 0;
  *algn_2812F3B90 = v4;
  TSA::_GalleryInfoSetValueCommandArchive_PropertyValue_default_instance_ = &unk_288510520;
  dword_2812F3BA0 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSA::_GalleryInfoSetValueCommandArchive_PropertyValue_default_instance_);
}

uint64_t sub_2760D5C20(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSAArchives.pb.cc", a4);
  TSA::GalleryItem::GalleryItem(&TSA::_GalleryItem_default_instance_, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSA::_GalleryItem_default_instance_);
}

uint64_t sub_2760D5C90(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSAArchives.pb.cc", a4);
  TSA::GalleryItemSelection::GalleryItemSelection(&TSA::_GalleryItemSelection_default_instance_, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSA::_GalleryItemSelection_default_instance_);
}

uint64_t sub_2760D5D00(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSAArchives.pb.cc", a4);
  *&v4 = 0;
  *algn_2812F3D90 = v4;
  TSA::_GalleryItemSelectionTransformer_default_instance_ = &unk_288510B50;
  if (atomic_load_explicit(scc_info_GalleryItemSelectionTransformer_TSAArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812F3DA0 = 0;
  unk_2812F3DA8 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSA::_GalleryItemSelectionTransformer_default_instance_);
}

uint64_t sub_2760D5DB0(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSAArchives.pb.cc", a4);
  TSA::GalleryItemSelectionTransformerHelper::GalleryItemSelectionTransformerHelper(&TSA::_GalleryItemSelectionTransformerHelper_default_instance_, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSA::_GalleryItemSelectionTransformerHelper_default_instance_);
}

uint64_t sub_2760D5E20(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSAArchives.pb.cc", a4);
  TSA::GalleryItemSetGeometryCommand::GalleryItemSetGeometryCommand(&TSA::_GalleryItemSetGeometryCommand_default_instance_, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSA::_GalleryItemSetGeometryCommand_default_instance_);
}

uint64_t sub_2760D5E90(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSAArchives.pb.cc", a4);
  *&v4 = 0;
  unk_2812F3E18 = v4;
  TSA::_GalleryItemSetValueCommand_default_instance_ = &unk_288510D60;
  if (atomic_load_explicit(scc_info_GalleryItemSetValueCommand_TSAArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  dword_2812F3E48 = 0;
  unk_2812F3E38 = 0u;
  unk_2812F3E28 = 0u;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSA::_GalleryItemSetValueCommand_default_instance_);
}

uint64_t sub_2760D5F4C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSAArchives.pb.cc", a4);
  TSA::GalleryItemSetValueCommand_PropertyValue::GalleryItemSetValueCommand_PropertyValue(&TSA::_GalleryItemSetValueCommand_PropertyValue_default_instance_, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSA::_GalleryItemSetValueCommand_PropertyValue_default_instance_);
}

uint64_t sub_2760D5FBC(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSAArchives.pb.cc", a4);
  *&v4 = 0;
  unk_2812F3D28 = v4;
  TSA::_GallerySelectionTransformer_default_instance_ = &unk_2885109F0;
  if (atomic_load_explicit(scc_info_GallerySelectionTransformer_TSAArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812F3D38 = 0;
  unk_2812F3D40 = 0;
  qword_2812F3D48 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSA::_GallerySelectionTransformer_default_instance_);
}

uint64_t sub_2760D6070(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSAArchives.pb.cc", a4);
  TSA::InducedVerifyObjectsWithServerCommandArchive::InducedVerifyObjectsWithServerCommandArchive(&TSA::_InducedVerifyObjectsWithServerCommandArchive_default_instance_, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSA::_InducedVerifyObjectsWithServerCommandArchive_default_instance_);
}

uint64_t sub_2760D60E0(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSAArchives.pb.cc", a4);
  TSA::InducedVerifyTransformHistoryWithServerCommandArchive::InducedVerifyTransformHistoryWithServerCommandArchive(&TSA::_InducedVerifyTransformHistoryWithServerCommandArchive_default_instance_, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSA::_InducedVerifyTransformHistoryWithServerCommandArchive_default_instance_);
}

uint64_t sub_2760D6150(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSAArchives.pb.cc", a4);
  *&v4 = 0;
  unk_2812F3A20 = v4;
  TSA::_NeedsMediaCompatibilityUpgradeCommandArchive_default_instance_ = &unk_288510100;
  if (atomic_load_explicit(scc_info_NeedsMediaCompatibilityUpgradeCommandArchive_TSAArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(&qword_2812F3A30 + 6) = 0;
  qword_2812F3A30 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSA::_NeedsMediaCompatibilityUpgradeCommandArchive_default_instance_);
}

uint64_t sub_2760D6204(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSAArchives.pb.cc", a4);
  *&v4 = 0;
  unk_2812F3F48 = v4;
  TSA::_Object3DInfo_default_instance_ = &unk_288511180;
  if (atomic_load_explicit(scc_info_Object3DInfo_TSAArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  unk_2812F3F72 = 0u;
  unk_2812F3F68 = 0u;
  unk_2812F3F58 = 0u;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSA::_Object3DInfo_default_instance_);
}

uint64_t sub_2760D62C0(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSAArchives.pb.cc", a4);
  *&v4 = 0;
  unk_2812F3F90 = v4;
  TSA::_Object3DInfoCommandArchive_default_instance_ = &unk_288511230;
  if (atomic_load_explicit(scc_info_Object3DInfoCommandArchive_TSAArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812F3FF0 = 0;
  unk_2812F3FE0 = 0u;
  unk_2812F3FD0 = 0u;
  unk_2812F3FC0 = 0u;
  unk_2812F3FB0 = 0u;
  unk_2812F3FA0 = 0u;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSA::_Object3DInfoCommandArchive_default_instance_);
}

uint64_t sub_2760D6388(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSAArchives.pb.cc", a4);
  TSA::Object3DInfoSetValueCommandArchive::Object3DInfoSetValueCommandArchive(&TSA::_Object3DInfoSetValueCommandArchive_default_instance_, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSA::_Object3DInfoSetValueCommandArchive_default_instance_);
}

uint64_t sub_2760D63F8(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSAArchives.pb.cc", a4);
  qword_2812F4000 = 0;
  unk_2812F4008 = 0;
  TSA::_Object3DInfoSetValueCommandArchive_PropertyValue_default_instance_ = &unk_2885112E0;
  qword_2812F4010 = 0;
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSA::_Object3DInfoSetValueCommandArchive_PropertyValue_default_instance_);
}

uint64_t sub_2760D6474(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSAArchives.pb.cc", a4);
  *&v4 = 0;
  *algn_2812F3910 = v4;
  TSA::_PropagatePresetCommandArchive_default_instance_ = &unk_28850FD90;
  if (atomic_load_explicit(scc_info_PropagatePresetCommandArchive_TSAArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812F3920 = 0;
  unk_2812F3928 = 0;
  byte_2812F3930 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSA::_PropagatePresetCommandArchive_default_instance_);
}

uint64_t sub_2760D6528(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSAArchives.pb.cc", a4);
  TSA::RemoteDataChangeCommandArchive::RemoteDataChangeCommandArchive(&TSA::_RemoteDataChangeCommandArchive_default_instance_, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSA::_RemoteDataChangeCommandArchive_default_instance_);
}

uint64_t sub_2760D6598(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSAArchives.pb.cc", a4);
  *&v4 = 0;
  unk_2812F39E8 = v4;
  TSA::_ReplaceCustomFormatCommandArchive_default_instance_ = &unk_288510050;
  if (atomic_load_explicit(scc_info_ReplaceCustomFormatCommandArchive_TSAArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  unk_2812F3A08 = 0u;
  unk_2812F39F8 = 0u;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSA::_ReplaceCustomFormatCommandArchive_default_instance_);
}

uint64_t sub_2760D6650(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSAArchives.pb.cc", a4);
  TSA::ShortcutCommandArchive::ShortcutCommandArchive(&TSA::_ShortcutCommandArchive_default_instance_, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSA::_ShortcutCommandArchive_default_instance_);
}

uint64_t sub_2760D66C0(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSAArchives.pb.cc", a4);
  TSA::ShortcutControllerArchive::ShortcutControllerArchive(&TSA::_ShortcutControllerArchive_default_instance_, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSA::_ShortcutControllerArchive_default_instance_);
}

uint64_t sub_2760D6730(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSAArchives.pb.cc", a4);
  TSA::ShortcutControllerArchive_ShortcutMapEntry::ShortcutControllerArchive_ShortcutMapEntry(&TSA::_ShortcutControllerArchive_ShortcutMapEntry_default_instance_, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSA::_ShortcutControllerArchive_ShortcutMapEntry_default_instance_);
}

uint64_t sub_2760D67A0(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSAArchives.pb.cc", a4);
  *&v4 = 0;
  unk_2812F3B28 = v4;
  TSA::_StyleUpdatePropertyMapCommandArchive_default_instance_ = &unk_2885103C0;
  if (atomic_load_explicit(scc_info_StyleUpdatePropertyMapCommandArchive_TSAArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812F3B38 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSA::_StyleUpdatePropertyMapCommandArchive_default_instance_);
}

uint64_t sub_2760D6850(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSAArchives.pb.cc", a4);
  TSA::ThemePresetsArchive::ThemePresetsArchive(&TSA::_ThemePresetsArchive_default_instance_, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSA::_ThemePresetsArchive_default_instance_);
}

uint64_t sub_2760D68C0(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSAArchives.pb.cc", a4);
  TSA::TitlePlacementCommandArchive::TitlePlacementCommandArchive(&TSA::_TitlePlacementCommandArchive_default_instance_, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSA::_TitlePlacementCommandArchive_default_instance_);
}

uint64_t sub_2760D6930(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSAArchives.pb.cc", a4);
  *&v4 = 0;
  unk_2812F39B0 = v4;
  TSA::_UpdateCustomFormatCommandArchive_default_instance_ = &unk_28850FFA0;
  if (atomic_load_explicit(scc_info_UpdateCustomFormatCommandArchive_TSAArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  unk_2812F39D0 = 0u;
  unk_2812F39C0 = 0u;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSA::_UpdateCustomFormatCommandArchive_default_instance_);
}

uint64_t sub_2760D69E8(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSAArchives.pb.cc", a4);
  TSA::WebVideoInfo::WebVideoInfo(&TSA::_WebVideoInfo_default_instance_, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSA::_WebVideoInfo_default_instance_);
}

TSK::DocumentArchive *TSA::DocumentArchive::clear_super(TSA::DocumentArchive *this)
{
  result = *(this + 8);
  if (result)
  {
    result = TSK::DocumentArchive::Clear(result);
  }

  *(this + 4) &= ~4u;
  return result;
}

uint64_t TSA::DocumentArchive::clear_text_preset_display_items(uint64_t this)
{
  v1 = *(this + 32);
  if (v1 >= 1)
  {
    v2 = this;
    v3 = (*(this + 40) + 8);
    do
    {
      v4 = *v3++;
      this = TSWP::TextPresetDisplayItemArchive::Clear(v4);
      --v1;
    }

    while (v1);
    *(v2 + 32) = 0;
  }

  return this;
}

TSP::Reference *TSA::DocumentArchive::clear_calculation_engine(TSA::DocumentArchive *this)
{
  result = *(this + 9);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~8u;
  return result;
}

TSP::Reference *TSA::DocumentArchive::clear_view_state(TSA::DocumentArchive *this)
{
  result = *(this + 10);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~0x10u;
  return result;
}

TSP::Reference *TSA::DocumentArchive::clear_function_browser_state(TSA::DocumentArchive *this)
{
  result = *(this + 11);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~0x20u;
  return result;
}

TSP::Reference *TSA::DocumentArchive::clear_tables_custom_format_list(TSA::DocumentArchive *this)
{
  result = *(this + 12);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~0x40u;
  return result;
}

TSP::Reference *TSA::DocumentArchive::clear_shortcut_controller(TSA::DocumentArchive *this)
{
  result = *(this + 13);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~0x80u;
  return result;
}

TSP::Reference *TSA::DocumentArchive::clear_annotation_cache_deprecated(TSA::DocumentArchive *this)
{
  result = *(this + 14);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~0x100u;
  return result;
}

TSP::Reference *TSA::DocumentArchive::clear_custom_format_list(TSA::DocumentArchive *this)
{
  result = *(this + 15);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~0x200u;
  return result;
}

TSP::Reference *TSA::DocumentArchive::clear_annotation_cache_deprecated_2(TSA::DocumentArchive *this)
{
  result = *(this + 16);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~0x400u;
  return result;
}

TSA::DocumentArchive *TSA::DocumentArchive::DocumentArchive(TSA::DocumentArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_28850FA20;
  *(this + 1) = a2;
  *(this + 3) = a2;
  *(this + 2) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  if (atomic_load_explicit(scc_info_DocumentArchive_TSAArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v3 = MEMORY[0x277D80A90];
  *(this + 6) = MEMORY[0x277D80A90];
  *(this + 7) = v3;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 124) = 0u;
  return this;
}

TSA::DocumentArchive *TSA::DocumentArchive::DocumentArchive(TSA::DocumentArchive *this, const TSA::DocumentArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_28850FA20;
  *(this + 4) = *(a2 + 4);
  *(this + 11) = 0;
  *(this + 28) = 0;
  *(this + 36) = 0;
  *(this + 20) = 0;
  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 5);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 24));
    sub_2760FB884(this + 24, v7, (v6 + 8), v5, **(this + 5) - *(this + 8));
    v8 = *(this + 8) + v5;
    *(this + 8) = v8;
    v9 = *(this + 5);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  v10 = *(a2 + 1);
  if (v10)
  {
    sub_2760FB7E8(v4, (v10 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v11 = MEMORY[0x277D80A90];
  *(this + 6) = MEMORY[0x277D80A90];
  v12 = *(a2 + 4);
  if (v12)
  {
    google::protobuf::internal::ArenaStringPtr::Set();
    v12 = *(a2 + 4);
  }

  *(this + 7) = v11;
  if ((v12 & 2) != 0)
  {
    google::protobuf::internal::ArenaStringPtr::Set();
    v12 = *(a2 + 4);
  }

  if ((v12 & 4) != 0)
  {
    operator new();
  }

  *(this + 8) = 0;
  if ((v12 & 8) != 0)
  {
    operator new();
  }

  *(this + 9) = 0;
  if ((v12 & 0x10) != 0)
  {
    operator new();
  }

  *(this + 10) = 0;
  if ((v12 & 0x20) != 0)
  {
    operator new();
  }

  *(this + 11) = 0;
  if ((v12 & 0x40) != 0)
  {
    operator new();
  }

  *(this + 12) = 0;
  if ((v12 & 0x80) != 0)
  {
    operator new();
  }

  *(this + 13) = 0;
  if ((v12 & 0x100) != 0)
  {
    operator new();
  }

  *(this + 14) = 0;
  if ((v12 & 0x200) != 0)
  {
    operator new();
  }

  *(this + 15) = 0;
  if ((v12 & 0x400) != 0)
  {
    operator new();
  }

  *(this + 16) = 0;
  *(this + 34) = *(a2 + 34);
  return this;
}

void sub_2760D71FC(_Unwind_Exception *a1)
{
  MEMORY[0x277C95910](v2, 0x1081C407D3F2757);
  sub_2760FB764((v1 + 24));
  _Unwind_Resume(a1);
}

void TSA::DocumentArchive::~DocumentArchive(TSA::DocumentArchive *this)
{
  sub_2760D72AC(this);
  sub_2760D7438(this + 1);
  sub_2760FB764(this + 3);
}

{
  TSA::DocumentArchive::~DocumentArchive(this);

  JUMPOUT(0x277C95910);
}

TSP::Reference *sub_2760D72AC(TSP::Reference *result)
{
  v1 = result;
  v2 = *(result + 6);
  v3 = MEMORY[0x277D80A90];
  if (v2 != MEMORY[0x277D80A90])
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    result = MEMORY[0x277C95910](v2, 0x1012C40EC159624);
  }

  v4 = *(v1 + 7);
  if (v4 != v3)
  {
    if (*(v4 + 23) < 0)
    {
      operator delete(*v4);
    }

    result = MEMORY[0x277C95910](v4, 0x1012C40EC159624);
  }

  if (v1 != &TSA::_DocumentArchive_default_instance_)
  {
    if (*(v1 + 8))
    {
      v5 = MEMORY[0x277C94AB0]();
      MEMORY[0x277C95910](v5, 0x10A1C40C4176315);
    }

    v6 = *(v1 + 9);
    if (v6)
    {
      TSP::Reference::~Reference(v6);
      MEMORY[0x277C95910]();
    }

    v7 = *(v1 + 10);
    if (v7)
    {
      TSP::Reference::~Reference(v7);
      MEMORY[0x277C95910]();
    }

    v8 = *(v1 + 11);
    if (v8)
    {
      TSP::Reference::~Reference(v8);
      MEMORY[0x277C95910]();
    }

    v9 = *(v1 + 12);
    if (v9)
    {
      TSP::Reference::~Reference(v9);
      MEMORY[0x277C95910]();
    }

    v10 = *(v1 + 13);
    if (v10)
    {
      TSP::Reference::~Reference(v10);
      MEMORY[0x277C95910]();
    }

    v11 = *(v1 + 14);
    if (v11)
    {
      TSP::Reference::~Reference(v11);
      MEMORY[0x277C95910]();
    }

    v12 = *(v1 + 15);
    if (v12)
    {
      TSP::Reference::~Reference(v12);
      MEMORY[0x277C95910]();
    }

    result = *(v1 + 16);
    if (result)
    {
      TSP::Reference::~Reference(result);

      JUMPOUT(0x277C95910);
    }
  }

  return result;
}

uint64_t *sub_2760D7438(uint64_t *result)
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

      JUMPOUT(0x277C95910);
    }
  }

  return result;
}

void *TSA::DocumentArchive::default_instance(TSA::DocumentArchive *this)
{
  if (atomic_load_explicit(scc_info_DocumentArchive_TSAArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSA::_DocumentArchive_default_instance_;
}

uint64_t *TSA::DocumentArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 8);
  if (v2 >= 1)
  {
    v3 = (this[5] + 8);
    do
    {
      v4 = *v3++;
      this = TSWP::TextPresetDisplayItemArchive::Clear(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  v5 = *(v1 + 16);
  if (!v5)
  {
    goto LABEL_15;
  }

  if ((v5 & 1) == 0)
  {
    if ((v5 & 2) == 0)
    {
      goto LABEL_8;
    }

LABEL_31:
    v9 = *(v1 + 56) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v9 + 23) < 0)
    {
      **v9 = 0;
      *(v9 + 8) = 0;
      if ((v5 & 4) != 0)
      {
        goto LABEL_35;
      }
    }

    else
    {
      *v9 = 0;
      *(v9 + 23) = 0;
      if ((v5 & 4) != 0)
      {
        goto LABEL_35;
      }
    }

LABEL_9:
    if ((v5 & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_36;
  }

  v8 = *(v1 + 48) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v8 + 23) < 0)
  {
    **v8 = 0;
    *(v8 + 8) = 0;
    if ((v5 & 2) != 0)
    {
      goto LABEL_31;
    }
  }

  else
  {
    *v8 = 0;
    *(v8 + 23) = 0;
    if ((v5 & 2) != 0)
    {
      goto LABEL_31;
    }
  }

LABEL_8:
  if ((v5 & 4) == 0)
  {
    goto LABEL_9;
  }

LABEL_35:
  this = TSK::DocumentArchive::Clear(*(v1 + 64));
  if ((v5 & 8) == 0)
  {
LABEL_10:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_37;
  }

LABEL_36:
  this = TSP::Reference::Clear(*(v1 + 72));
  if ((v5 & 0x10) == 0)
  {
LABEL_11:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_12;
    }

LABEL_38:
    this = TSP::Reference::Clear(*(v1 + 88));
    if ((v5 & 0x40) == 0)
    {
LABEL_13:
      if ((v5 & 0x80) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }

    goto LABEL_39;
  }

LABEL_37:
  this = TSP::Reference::Clear(*(v1 + 80));
  if ((v5 & 0x20) != 0)
  {
    goto LABEL_38;
  }

LABEL_12:
  if ((v5 & 0x40) == 0)
  {
    goto LABEL_13;
  }

LABEL_39:
  this = TSP::Reference::Clear(*(v1 + 96));
  if ((v5 & 0x80) != 0)
  {
LABEL_14:
    this = TSP::Reference::Clear(*(v1 + 104));
  }

LABEL_15:
  if ((v5 & 0x700) == 0)
  {
    goto LABEL_20;
  }

  if ((v5 & 0x100) != 0)
  {
    this = TSP::Reference::Clear(*(v1 + 112));
    if ((v5 & 0x200) == 0)
    {
LABEL_18:
      if ((v5 & 0x400) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }
  }

  else if ((v5 & 0x200) == 0)
  {
    goto LABEL_18;
  }

  this = TSP::Reference::Clear(*(v1 + 120));
  if ((v5 & 0x400) != 0)
  {
LABEL_19:
    this = TSP::Reference::Clear(*(v1 + 128));
  }

LABEL_20:
  v7 = *(v1 + 8);
  v6 = v1 + 8;
  *(v6 + 128) = 0;
  *(v6 + 8) = 0;
  if (v7)
  {

    return sub_2760FB834(v6);
  }

  return this;
}

google::protobuf::internal *TSA::DocumentArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v63 = a2;
  v5 = 0;
  if ((sub_2760FB2F0(a3, &v63) & 1) == 0)
  {
    while (2)
    {
      v7 = (v63 + 1);
      v8 = *v63;
      if (*v63 < 0)
      {
        v9 = v8 + (*v7 << 7);
        v8 = v9 - 128;
        if (*v7 < 0)
        {
          TagFallback = google::protobuf::internal::ReadTagFallback(v63, (v9 - 128));
          v63 = TagFallback;
          if (!TagFallback)
          {
            goto LABEL_115;
          }

          v7 = TagFallback;
          v8 = v15;
LABEL_7:
          switch(v8 >> 3)
          {
            case 1u:
              if (v8 != 10)
              {
                goto LABEL_99;
              }

              *(a1 + 16) |= 4u;
              v10 = *(a1 + 64);
              if (!v10)
              {
                v11 = *(a1 + 8);
                if (v11)
                {
                  v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
                }

                v12 = MEMORY[0x277C950E0](v11);
                LODWORD(v10) = v12;
                *(a1 + 64) = v12;
                v7 = v63;
              }

              v13 = sub_27610CD24(a3, v10, v7);
              goto LABEL_93;
            case 2u:
              if (v8 != 18)
              {
                goto LABEL_99;
              }

              v36 = v7 - 1;
              break;
            case 3u:
              if (v8 != 26)
              {
                goto LABEL_99;
              }

              *(a1 + 16) |= 1u;
              goto LABEL_98;
            case 4u:
              if (v8 != 34)
              {
                goto LABEL_99;
              }

              *(a1 + 16) |= 8u;
              v19 = *(a1 + 72);
              if (v19)
              {
                goto LABEL_92;
              }

              v31 = *(a1 + 8);
              if (v31)
              {
                v31 = *(v31 & 0xFFFFFFFFFFFFFFFELL);
              }

              v32 = MEMORY[0x277C951B0](v31);
              LODWORD(v19) = v32;
              *(a1 + 72) = v32;
              goto LABEL_91;
            case 5u:
              if (v8 != 42)
              {
                goto LABEL_99;
              }

              *(a1 + 16) |= 0x10u;
              v19 = *(a1 + 80);
              if (v19)
              {
                goto LABEL_92;
              }

              v22 = *(a1 + 8);
              if (v22)
              {
                v22 = *(v22 & 0xFFFFFFFFFFFFFFFELL);
              }

              v23 = MEMORY[0x277C951B0](v22);
              LODWORD(v19) = v23;
              *(a1 + 80) = v23;
              goto LABEL_91;
            case 6u:
              if (v8 != 50)
              {
                goto LABEL_99;
              }

              *(a1 + 16) |= 0x20u;
              v19 = *(a1 + 88);
              if (v19)
              {
                goto LABEL_92;
              }

              v45 = *(a1 + 8);
              if (v45)
              {
                v45 = *(v45 & 0xFFFFFFFFFFFFFFFELL);
              }

              v46 = MEMORY[0x277C951B0](v45);
              LODWORD(v19) = v46;
              *(a1 + 88) = v46;
              goto LABEL_91;
            case 7u:
              if (v8 != 58)
              {
                goto LABEL_99;
              }

              *(a1 + 16) |= 0x40u;
              v19 = *(a1 + 96);
              if (v19)
              {
                goto LABEL_92;
              }

              v50 = *(a1 + 8);
              if (v50)
              {
                v50 = *(v50 & 0xFFFFFFFFFFFFFFFELL);
              }

              v51 = MEMORY[0x277C951B0](v50);
              LODWORD(v19) = v51;
              *(a1 + 96) = v51;
              goto LABEL_91;
            case 8u:
              if (v8 != 64)
              {
                goto LABEL_99;
              }

              v5 |= 0x800u;
              v34 = (v7 + 1);
              v33 = *v7;
              if ((v33 & 0x8000000000000000) == 0)
              {
                goto LABEL_57;
              }

              v35 = *v34;
              v33 = (v35 << 7) + v33 - 128;
              if (v35 < 0)
              {
                v59 = google::protobuf::internal::VarintParseSlow64(v7, v33);
                v63 = v59;
                *(a1 + 136) = v60 != 0;
                if (!v59)
                {
                  goto LABEL_115;
                }
              }

              else
              {
                v34 = (v7 + 2);
LABEL_57:
                v63 = v34;
                *(a1 + 136) = v33 != 0;
              }

              goto LABEL_94;
            case 9u:
              if (v8 != 74)
              {
                goto LABEL_99;
              }

              *(a1 + 16) |= 2u;
LABEL_98:
              google::protobuf::internal::ArenaStringPtr::Mutable();
              v13 = google::protobuf::internal::InlineGreedyStringParser();
              goto LABEL_93;
            case 0xAu:
              if (v8 != 82)
              {
                goto LABEL_99;
              }

              *(a1 + 16) |= 0x80u;
              v19 = *(a1 + 104);
              if (v19)
              {
                goto LABEL_92;
              }

              v26 = *(a1 + 8);
              if (v26)
              {
                v26 = *(v26 & 0xFFFFFFFFFFFFFFFELL);
              }

              v27 = MEMORY[0x277C951B0](v26);
              LODWORD(v19) = v27;
              *(a1 + 104) = v27;
              goto LABEL_91;
            case 0xBu:
              if (v8 != 90)
              {
                goto LABEL_99;
              }

              *(a1 + 16) |= 0x100u;
              v19 = *(a1 + 112);
              if (v19)
              {
                goto LABEL_92;
              }

              v52 = *(a1 + 8);
              if (v52)
              {
                v52 = *(v52 & 0xFFFFFFFFFFFFFFFELL);
              }

              v53 = MEMORY[0x277C951B0](v52);
              LODWORD(v19) = v53;
              *(a1 + 112) = v53;
              goto LABEL_91;
            case 0xCu:
              if (v8 != 98)
              {
                goto LABEL_99;
              }

              *(a1 + 16) |= 0x200u;
              v19 = *(a1 + 120);
              if (v19)
              {
                goto LABEL_92;
              }

              v20 = *(a1 + 8);
              if (v20)
              {
                v20 = *(v20 & 0xFFFFFFFFFFFFFFFELL);
              }

              v21 = MEMORY[0x277C951B0](v20);
              LODWORD(v19) = v21;
              *(a1 + 120) = v21;
              goto LABEL_91;
            case 0xDu:
              if (v8 != 106)
              {
                goto LABEL_99;
              }

              *(a1 + 16) |= 0x400u;
              v19 = *(a1 + 128);
              if (v19)
              {
                goto LABEL_92;
              }

              v24 = *(a1 + 8);
              if (v24)
              {
                v24 = *(v24 & 0xFFFFFFFFFFFFFFFELL);
              }

              v25 = MEMORY[0x277C951B0](v24);
              LODWORD(v19) = v25;
              *(a1 + 128) = v25;
LABEL_91:
              v7 = v63;
LABEL_92:
              v13 = sub_27610EC84(a3, v19, v7);
              goto LABEL_93;
            case 0xEu:
              if (v8 != 112)
              {
                goto LABEL_99;
              }

              v5 |= 0x1000u;
              v48 = (v7 + 1);
              v47 = *v7;
              if ((v47 & 0x8000000000000000) == 0)
              {
                goto LABEL_80;
              }

              v49 = *v48;
              v47 = (v49 << 7) + v47 - 128;
              if (v49 < 0)
              {
                v61 = google::protobuf::internal::VarintParseSlow64(v7, v47);
                v63 = v61;
                *(a1 + 137) = v62 != 0;
                if (!v61)
                {
                  goto LABEL_115;
                }
              }

              else
              {
                v48 = (v7 + 2);
LABEL_80:
                v63 = v48;
                *(a1 + 137) = v47 != 0;
              }

              goto LABEL_94;
            case 0xFu:
              if (v8 != 120)
              {
                goto LABEL_99;
              }

              v5 |= 0x2000u;
              v17 = (v7 + 1);
              v16 = *v7;
              if ((v16 & 0x8000000000000000) == 0)
              {
                goto LABEL_20;
              }

              v18 = *v17;
              v16 = (v18 << 7) + v16 - 128;
              if (v18 < 0)
              {
                v55 = google::protobuf::internal::VarintParseSlow64(v7, v16);
                v63 = v55;
                *(a1 + 138) = v56 != 0;
                if (!v55)
                {
                  goto LABEL_115;
                }
              }

              else
              {
                v17 = (v7 + 2);
LABEL_20:
                v63 = v17;
                *(a1 + 138) = v16 != 0;
              }

              goto LABEL_94;
            case 0x10u:
              if (v8 != 128)
              {
                goto LABEL_99;
              }

              v5 |= 0x4000u;
              v29 = (v7 + 1);
              v28 = *v7;
              if ((v28 & 0x8000000000000000) == 0)
              {
                goto LABEL_47;
              }

              v30 = *v29;
              v28 = (v30 << 7) + v28 - 128;
              if (v30 < 0)
              {
                v57 = google::protobuf::internal::VarintParseSlow64(v7, v28);
                v63 = v57;
                *(a1 + 139) = v58 != 0;
                if (!v57)
                {
                  goto LABEL_115;
                }
              }

              else
              {
                v29 = (v7 + 2);
LABEL_47:
                v63 = v29;
                *(a1 + 139) = v28 != 0;
              }

              goto LABEL_94;
            default:
LABEL_99:
              if (v8)
              {
                v54 = (v8 & 7) == 4;
              }

              else
              {
                v54 = 1;
              }

              if (v54)
              {
                *(a3 + 80) = v8 - 1;
                goto LABEL_2;
              }

              if ((*(a1 + 8) & 1) == 0)
              {
                sub_2760FB5A0((a1 + 8));
              }

              v13 = google::protobuf::internal::UnknownFieldParse();
LABEL_93:
              v63 = v13;
              if (!v13)
              {
LABEL_115:
                v63 = 0;
                goto LABEL_2;
              }

LABEL_94:
              if (sub_2760FB2F0(a3, &v63))
              {
                goto LABEL_2;
              }

              continue;
          }

          while (1)
          {
            v37 = (v36 + 1);
            v63 = (v36 + 1);
            v38 = *(a1 + 40);
            if (!v38)
            {
              goto LABEL_61;
            }

            v44 = *(a1 + 32);
            v39 = *v38;
            if (v44 < *v38)
            {
              *(a1 + 32) = v44 + 1;
              v41 = *&v38[2 * v44 + 2];
              goto LABEL_65;
            }

            if (v39 == *(a1 + 36))
            {
LABEL_61:
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
              v38 = *(a1 + 40);
              v39 = *v38;
            }

            *v38 = v39 + 1;
            v40 = MEMORY[0x277C951F0](*(a1 + 24));
            LODWORD(v41) = v40;
            v42 = *(a1 + 32);
            v43 = *(a1 + 40) + 8 * v42;
            *(a1 + 32) = v42 + 1;
            *(v43 + 8) = v40;
            v37 = v63;
LABEL_65:
            v36 = sub_27610CDF4(a3, v41, v37);
            v63 = v36;
            if (!v36)
            {
              goto LABEL_115;
            }

            if (*a3 <= v36 || *v36 != 18)
            {
              goto LABEL_94;
            }
          }
        }

        v7 = (v63 + 2);
      }

      break;
    }

    v63 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v63;
}

unsigned __int8 *TSA::DocumentArchive::_InternalSerialize(TSA::DocumentArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(this + 4);
  if ((v6 & 4) != 0)
  {
    if (*a3 <= a2)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v7 = *(this + 8);
    *v4 = 10;
    v8 = *(v7 + 5);
    if (v8 > 0x7F)
    {
      v4[1] = v8 | 0x80;
      v10 = v8 >> 7;
      if (v8 >> 14)
      {
        v9 = v4 + 3;
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
        v4[2] = v10;
        v9 = v4 + 3;
      }
    }

    else
    {
      v4[1] = v8;
      v9 = v4 + 2;
    }

    v4 = TSK::DocumentArchive::_InternalSerialize(v7, v9, a3);
  }

  v13 = *(this + 8);
  if (v13)
  {
    for (i = 0; i != v13; ++i)
    {
      if (*a3 <= v4)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v15 = *(*(this + 5) + 8 * i + 8);
      *v4 = 18;
      v16 = *(v15 + 5);
      if (v16 > 0x7F)
      {
        v4[1] = v16 | 0x80;
        v18 = v16 >> 7;
        if (v16 >> 14)
        {
          v17 = v4 + 3;
          do
          {
            *(v17 - 1) = v18 | 0x80;
            v19 = v18 >> 7;
            ++v17;
            v20 = v18 >> 14;
            v18 >>= 7;
          }

          while (v20);
          *(v17 - 1) = v19;
        }

        else
        {
          v4[2] = v18;
          v17 = v4 + 3;
        }
      }

      else
      {
        v4[1] = v16;
        v17 = v4 + 2;
      }

      v4 = TSWP::TextPresetDisplayItemArchive::_InternalSerialize(v15, v17, a3);
    }
  }

  if (v6)
  {
    v4 = sub_2760D85BC(a3, 3, (*(this + 6) & 0xFFFFFFFFFFFFFFFELL), v4);
    if ((v6 & 8) == 0)
    {
LABEL_26:
      if ((v6 & 0x10) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_50;
    }
  }

  else if ((v6 & 8) == 0)
  {
    goto LABEL_26;
  }

  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v21 = *(this + 9);
  *v4 = 34;
  v22 = *(v21 + 5);
  if (v22 > 0x7F)
  {
    v4[1] = v22 | 0x80;
    v24 = v22 >> 7;
    if (v22 >> 14)
    {
      v23 = v4 + 3;
      do
      {
        *(v23 - 1) = v24 | 0x80;
        v25 = v24 >> 7;
        ++v23;
        v26 = v24 >> 14;
        v24 >>= 7;
      }

      while (v26);
      *(v23 - 1) = v25;
    }

    else
    {
      v4[2] = v24;
      v23 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v22;
    v23 = v4 + 2;
  }

  v4 = TSP::Reference::_InternalSerialize(v21, v23, a3);
  if ((v6 & 0x10) == 0)
  {
LABEL_27:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_60;
  }

LABEL_50:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v27 = *(this + 10);
  *v4 = 42;
  v28 = *(v27 + 5);
  if (v28 > 0x7F)
  {
    v4[1] = v28 | 0x80;
    v30 = v28 >> 7;
    if (v28 >> 14)
    {
      v29 = v4 + 3;
      do
      {
        *(v29 - 1) = v30 | 0x80;
        v31 = v30 >> 7;
        ++v29;
        v32 = v30 >> 14;
        v30 >>= 7;
      }

      while (v32);
      *(v29 - 1) = v31;
    }

    else
    {
      v4[2] = v30;
      v29 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v28;
    v29 = v4 + 2;
  }

  v4 = TSP::Reference::_InternalSerialize(v27, v29, a3);
  if ((v6 & 0x20) == 0)
  {
LABEL_28:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_70;
  }

LABEL_60:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v33 = *(this + 11);
  *v4 = 50;
  v34 = *(v33 + 5);
  if (v34 > 0x7F)
  {
    v4[1] = v34 | 0x80;
    v36 = v34 >> 7;
    if (v34 >> 14)
    {
      v35 = v4 + 3;
      do
      {
        *(v35 - 1) = v36 | 0x80;
        v37 = v36 >> 7;
        ++v35;
        v38 = v36 >> 14;
        v36 >>= 7;
      }

      while (v38);
      *(v35 - 1) = v37;
    }

    else
    {
      v4[2] = v36;
      v35 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v34;
    v35 = v4 + 2;
  }

  v4 = TSP::Reference::_InternalSerialize(v33, v35, a3);
  if ((v6 & 0x40) == 0)
  {
LABEL_29:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_80;
  }

LABEL_70:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v39 = *(this + 12);
  *v4 = 58;
  v40 = *(v39 + 5);
  if (v40 > 0x7F)
  {
    v4[1] = v40 | 0x80;
    v42 = v40 >> 7;
    if (v40 >> 14)
    {
      v41 = v4 + 3;
      do
      {
        *(v41 - 1) = v42 | 0x80;
        v43 = v42 >> 7;
        ++v41;
        v44 = v42 >> 14;
        v42 >>= 7;
      }

      while (v44);
      *(v41 - 1) = v43;
    }

    else
    {
      v4[2] = v42;
      v41 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v40;
    v41 = v4 + 2;
  }

  v4 = TSP::Reference::_InternalSerialize(v39, v41, a3);
  if ((v6 & 0x800) == 0)
  {
LABEL_30:
    if ((v6 & 2) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_83;
  }

LABEL_80:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v45 = *(this + 136);
  *v4 = 64;
  v4[1] = v45;
  v4 += 2;
  if ((v6 & 2) == 0)
  {
LABEL_31:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_84;
  }

LABEL_83:
  v4 = sub_2760D85BC(a3, 9, (*(this + 7) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 0x80) == 0)
  {
LABEL_32:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_94;
  }

LABEL_84:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v46 = *(this + 13);
  *v4 = 82;
  v47 = *(v46 + 5);
  if (v47 > 0x7F)
  {
    v4[1] = v47 | 0x80;
    v49 = v47 >> 7;
    if (v47 >> 14)
    {
      v48 = v4 + 3;
      do
      {
        *(v48 - 1) = v49 | 0x80;
        v50 = v49 >> 7;
        ++v48;
        v51 = v49 >> 14;
        v49 >>= 7;
      }

      while (v51);
      *(v48 - 1) = v50;
    }

    else
    {
      v4[2] = v49;
      v48 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v47;
    v48 = v4 + 2;
  }

  v4 = TSP::Reference::_InternalSerialize(v46, v48, a3);
  if ((v6 & 0x100) == 0)
  {
LABEL_33:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_104;
  }

LABEL_94:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v52 = *(this + 14);
  *v4 = 90;
  v53 = *(v52 + 5);
  if (v53 > 0x7F)
  {
    v4[1] = v53 | 0x80;
    v55 = v53 >> 7;
    if (v53 >> 14)
    {
      v54 = v4 + 3;
      do
      {
        *(v54 - 1) = v55 | 0x80;
        v56 = v55 >> 7;
        ++v54;
        v57 = v55 >> 14;
        v55 >>= 7;
      }

      while (v57);
      *(v54 - 1) = v56;
    }

    else
    {
      v4[2] = v55;
      v54 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v53;
    v54 = v4 + 2;
  }

  v4 = TSP::Reference::_InternalSerialize(v52, v54, a3);
  if ((v6 & 0x200) == 0)
  {
LABEL_34:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_114;
  }

LABEL_104:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v58 = *(this + 15);
  *v4 = 98;
  v59 = *(v58 + 5);
  if (v59 > 0x7F)
  {
    v4[1] = v59 | 0x80;
    v61 = v59 >> 7;
    if (v59 >> 14)
    {
      v60 = v4 + 3;
      do
      {
        *(v60 - 1) = v61 | 0x80;
        v62 = v61 >> 7;
        ++v60;
        v63 = v61 >> 14;
        v61 >>= 7;
      }

      while (v63);
      *(v60 - 1) = v62;
    }

    else
    {
      v4[2] = v61;
      v60 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v59;
    v60 = v4 + 2;
  }

  v4 = TSP::Reference::_InternalSerialize(v58, v60, a3);
  if ((v6 & 0x400) == 0)
  {
LABEL_35:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_124;
  }

LABEL_114:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v64 = *(this + 16);
  *v4 = 106;
  v65 = *(v64 + 5);
  if (v65 > 0x7F)
  {
    v4[1] = v65 | 0x80;
    v67 = v65 >> 7;
    if (v65 >> 14)
    {
      v66 = v4 + 3;
      do
      {
        *(v66 - 1) = v67 | 0x80;
        v68 = v67 >> 7;
        ++v66;
        v69 = v67 >> 14;
        v67 >>= 7;
      }

      while (v69);
      *(v66 - 1) = v68;
    }

    else
    {
      v4[2] = v67;
      v66 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v65;
    v66 = v4 + 2;
  }

  v4 = TSP::Reference::_InternalSerialize(v64, v66, a3);
  if ((v6 & 0x1000) == 0)
  {
LABEL_36:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_127;
  }

LABEL_124:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v70 = *(this + 137);
  *v4 = 112;
  v4[1] = v70;
  v4 += 2;
  if ((v6 & 0x2000) == 0)
  {
LABEL_37:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_133;
    }

    goto LABEL_130;
  }

LABEL_127:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v71 = *(this + 138);
  *v4 = 120;
  v4[1] = v71;
  v4 += 2;
  if ((v6 & 0x4000) != 0)
  {
LABEL_130:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v72 = *(this + 139);
    *v4 = 384;
    v4[2] = v72;
    v4 += 3;
  }

LABEL_133:
  v73 = *(this + 1);
  if ((v73 & 1) == 0)
  {
    return v4;
  }

  return MEMORY[0x2821EAC40]((v73 & 0xFFFFFFFFFFFFFFFELL) + 8, v4, a3);
}

uint64_t sub_2760D85BC(uint64_t *a1, int a2, const void **a3, _BYTE *a4)
{
  v4 = *(a3 + 23);
  if ((v4 & 0x8000000000000000) == 0 || (v4 = a3[1], v4 <= 127))
  {
    v5 = *a1;
    v6 = 8 * a2;
    if ((8 * a2) >= 0x80)
    {
      v8 = 2;
      v9 = 3;
      v10 = 4;
      if (v6 >> 28)
      {
        v10 = 5;
      }

      if (v6 >= 0x200000)
      {
        v9 = v10;
      }

      if (v6 >= 0x4000)
      {
        v8 = v9;
      }

      if ((v5 + ~&a4[v8] + 16) >= v4)
      {
        *a4 = v6 | 0x82;
        v11 = v6 >> 7;
        if (v6 >> 14)
        {
          v7 = a4 + 2;
          do
          {
            *(v7 - 1) = v11 | 0x80;
            v12 = v11 >> 7;
            ++v7;
            v13 = v11 >> 14;
            v11 >>= 7;
          }

          while (v13);
          *(v7 - 1) = v12;
        }

        else
        {
          a4[1] = v11;
          v7 = a4 + 2;
        }

LABEL_18:
        *v7 = v4;
        v14 = v7 + 1;
        if (*(a3 + 23) >= 0)
        {
          v15 = a3;
        }

        else
        {
          v15 = *a3;
        }

        memcpy(v14, v15, v4);
        return v14 + v4;
      }
    }

    else if (v5 - a4 + 14 >= v4)
    {
      *a4 = v6 | 2;
      v7 = a4 + 1;
      goto LABEL_18;
    }
  }

  return MEMORY[0x2821EAB50]();
}

uint64_t TSA::DocumentArchive::ByteSizeLong(TSK::DocumentArchive **this)
{
  if ((this[2] & 4) != 0)
  {
    v3 = TSK::DocumentArchive::ByteSizeLong(this[8]);
    v2 = v3 + ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  else
  {
    v2 = 0;
  }

  v4 = *(this + 8);
  v5 = v2 + v4;
  v6 = this[5];
  if (v6)
  {
    v7 = (v6 + 8);
  }

  else
  {
    v7 = 0;
  }

  if (v4)
  {
    v8 = 8 * v4;
    do
    {
      v9 = *v7++;
      v10 = TSWP::TextPresetDisplayItemArchive::ByteSizeLong(v9);
      v5 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6);
      v8 -= 8;
    }

    while (v8);
  }

  v11 = *(this + 4);
  if ((v11 & 3) != 0)
  {
    if (v11)
    {
      v12 = this[6] & 0xFFFFFFFFFFFFFFFELL;
      v13 = *(v12 + 23);
      v14 = *(v12 + 8);
      if ((v13 & 0x80u) == 0)
      {
        v14 = v13;
      }

      v5 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v11 & 2) != 0)
    {
      v15 = this[7] & 0xFFFFFFFFFFFFFFFELL;
      v16 = *(v15 + 23);
      v17 = *(v15 + 8);
      if ((v16 & 0x80u) == 0)
      {
        v17 = v16;
      }

      v5 += v17 + ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

  if ((v11 & 0xF8) == 0)
  {
    goto LABEL_26;
  }

  if ((v11 & 8) != 0)
  {
    v22 = TSP::Reference::ByteSizeLong(this[9]);
    v5 += v22 + ((9 * (__clz(v22 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v11 & 0x10) == 0)
    {
LABEL_22:
      if ((v11 & 0x20) == 0)
      {
        goto LABEL_23;
      }

LABEL_38:
      v24 = TSP::Reference::ByteSizeLong(this[11]);
      v5 += v24 + ((9 * (__clz(v24 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v11 & 0x40) == 0)
      {
LABEL_24:
        if ((v11 & 0x80) == 0)
        {
          goto LABEL_26;
        }

        goto LABEL_25;
      }

      goto LABEL_39;
    }
  }

  else if ((v11 & 0x10) == 0)
  {
    goto LABEL_22;
  }

  v23 = TSP::Reference::ByteSizeLong(this[10]);
  v5 += v23 + ((9 * (__clz(v23 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v11 & 0x20) != 0)
  {
    goto LABEL_38;
  }

LABEL_23:
  if ((v11 & 0x40) == 0)
  {
    goto LABEL_24;
  }

LABEL_39:
  v25 = TSP::Reference::ByteSizeLong(this[12]);
  v5 += v25 + ((9 * (__clz(v25 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v11 & 0x80) != 0)
  {
LABEL_25:
    v18 = TSP::Reference::ByteSizeLong(this[13]);
    v5 += v18 + ((9 * (__clz(v18 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_26:
  if ((v11 & 0x7F00) == 0)
  {
    goto LABEL_34;
  }

  if ((v11 & 0x100) != 0)
  {
    v26 = TSP::Reference::ByteSizeLong(this[14]);
    v5 += v26 + ((9 * (__clz(v26 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v11 & 0x200) == 0)
    {
LABEL_29:
      if ((v11 & 0x400) == 0)
      {
        goto LABEL_31;
      }

      goto LABEL_30;
    }
  }

  else if ((v11 & 0x200) == 0)
  {
    goto LABEL_29;
  }

  v27 = TSP::Reference::ByteSizeLong(this[15]);
  v5 += v27 + ((9 * (__clz(v27 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v11 & 0x400) != 0)
  {
LABEL_30:
    v19 = TSP::Reference::ByteSizeLong(this[16]);
    v5 += v19 + ((9 * (__clz(v19 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_31:
  v20 = (v11 >> 12) & 2;
  if ((v11 & 0x4000) != 0)
  {
    v5 += ((v11 >> 11) & 2) + ((v11 >> 10) & 2) + v20 + 3;
  }

  else
  {
    v5 += ((v11 >> 11) & 2) + ((v11 >> 10) & 2) + v20;
  }

LABEL_34:
  if (this[1])
  {

    return MEMORY[0x2821EADD8](this + 1, v5, this + 20);
  }

  else
  {
    *(this + 5) = v5;
    return v5;
  }
}

uint64_t TSA::DocumentArchive::MergeFrom(uint64_t a1, void *lpsrc)
{
  if (v4)
  {

    return TSA::DocumentArchive::MergeFrom(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t TSA::DocumentArchive::MergeFrom(uint64_t this, const TSA::DocumentArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_2760FB7E8((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 5);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 24));
    this = sub_2760FB884(v3 + 24, v7, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
    v8 = *(v3 + 32) + v5;
    *(v3 + 32) = v8;
    v9 = *(v3 + 40);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  v10 = *(a2 + 4);
  if (!v10)
  {
    goto LABEL_67;
  }

  if (v10)
  {
    *(v3 + 16) |= 1u;
    this = google::protobuf::internal::ArenaStringPtr::Set();
    if ((v10 & 2) == 0)
    {
LABEL_9:
      if ((v10 & 4) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_13;
    }
  }

  else if ((v10 & 2) == 0)
  {
    goto LABEL_9;
  }

  *(v3 + 16) |= 2u;
  this = google::protobuf::internal::ArenaStringPtr::Set();
  if ((v10 & 4) == 0)
  {
    goto LABEL_21;
  }

LABEL_13:
  *(v3 + 16) |= 4u;
  v11 = *(v3 + 64);
  if (!v11)
  {
    v12 = *(v3 + 8);
    if (v12)
    {
      v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
    }

    v11 = MEMORY[0x277C950E0](v12);
    *(v3 + 64) = v11;
  }

  if (*(a2 + 8))
  {
    v13 = *(a2 + 8);
  }

  else
  {
    v13 = MEMORY[0x277D80720];
  }

  this = TSK::DocumentArchive::MergeFrom(v11, v13);
LABEL_21:
  v14 = MEMORY[0x277D80A18];
  if ((v10 & 8) != 0)
  {
    *(v3 + 16) |= 8u;
    v15 = *(v3 + 72);
    if (!v15)
    {
      v16 = *(v3 + 8);
      if (v16)
      {
        v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
      }

      v15 = MEMORY[0x277C951B0](v16);
      *(v3 + 72) = v15;
    }

    if (*(a2 + 9))
    {
      v17 = *(a2 + 9);
    }

    else
    {
      v17 = v14;
    }

    this = TSP::Reference::MergeFrom(v15, v17);
    if ((v10 & 0x10) == 0)
    {
LABEL_23:
      if ((v10 & 0x20) == 0)
      {
        goto LABEL_24;
      }

LABEL_43:
      *(v3 + 16) |= 0x20u;
      v21 = *(v3 + 88);
      if (!v21)
      {
        v22 = *(v3 + 8);
        if (v22)
        {
          v22 = *(v22 & 0xFFFFFFFFFFFFFFFELL);
        }

        v21 = MEMORY[0x277C951B0](v22);
        *(v3 + 88) = v21;
      }

      if (*(a2 + 11))
      {
        v23 = *(a2 + 11);
      }

      else
      {
        v23 = v14;
      }

      this = TSP::Reference::MergeFrom(v21, v23);
      if ((v10 & 0x40) == 0)
      {
LABEL_25:
        if ((v10 & 0x80) == 0)
        {
          goto LABEL_67;
        }

        goto LABEL_59;
      }

      goto LABEL_51;
    }
  }

  else if ((v10 & 0x10) == 0)
  {
    goto LABEL_23;
  }

  *(v3 + 16) |= 0x10u;
  v18 = *(v3 + 80);
  if (!v18)
  {
    v19 = *(v3 + 8);
    if (v19)
    {
      v19 = *(v19 & 0xFFFFFFFFFFFFFFFELL);
    }

    v18 = MEMORY[0x277C951B0](v19);
    *(v3 + 80) = v18;
  }

  if (*(a2 + 10))
  {
    v20 = *(a2 + 10);
  }

  else
  {
    v20 = v14;
  }

  this = TSP::Reference::MergeFrom(v18, v20);
  if ((v10 & 0x20) != 0)
  {
    goto LABEL_43;
  }

LABEL_24:
  if ((v10 & 0x40) == 0)
  {
    goto LABEL_25;
  }

LABEL_51:
  *(v3 + 16) |= 0x40u;
  v24 = *(v3 + 96);
  if (!v24)
  {
    v25 = *(v3 + 8);
    if (v25)
    {
      v25 = *(v25 & 0xFFFFFFFFFFFFFFFELL);
    }

    v24 = MEMORY[0x277C951B0](v25);
    *(v3 + 96) = v24;
  }

  if (*(a2 + 12))
  {
    v26 = *(a2 + 12);
  }

  else
  {
    v26 = v14;
  }

  this = TSP::Reference::MergeFrom(v24, v26);
  if ((v10 & 0x80) != 0)
  {
LABEL_59:
    *(v3 + 16) |= 0x80u;
    v27 = *(v3 + 104);
    if (!v27)
    {
      v28 = *(v3 + 8);
      if (v28)
      {
        v28 = *(v28 & 0xFFFFFFFFFFFFFFFELL);
      }

      v27 = MEMORY[0x277C951B0](v28);
      *(v3 + 104) = v27;
    }

    if (*(a2 + 13))
    {
      v29 = *(a2 + 13);
    }

    else
    {
      v29 = v14;
    }

    this = TSP::Reference::MergeFrom(v27, v29);
  }

LABEL_67:
  if ((v10 & 0x7F00) == 0)
  {
    return this;
  }

  if ((v10 & 0x100) != 0)
  {
    *(v3 + 16) |= 0x100u;
    v30 = *(v3 + 112);
    if (!v30)
    {
      v31 = *(v3 + 8);
      if (v31)
      {
        v31 = *(v31 & 0xFFFFFFFFFFFFFFFELL);
      }

      v30 = MEMORY[0x277C951B0](v31);
      *(v3 + 112) = v30;
    }

    if (*(a2 + 14))
    {
      v32 = *(a2 + 14);
    }

    else
    {
      v32 = MEMORY[0x277D80A18];
    }

    this = TSP::Reference::MergeFrom(v30, v32);
    if ((v10 & 0x200) == 0)
    {
LABEL_70:
      if ((v10 & 0x400) == 0)
      {
        goto LABEL_71;
      }

      goto LABEL_94;
    }
  }

  else if ((v10 & 0x200) == 0)
  {
    goto LABEL_70;
  }

  *(v3 + 16) |= 0x200u;
  v33 = *(v3 + 120);
  if (!v33)
  {
    v34 = *(v3 + 8);
    if (v34)
    {
      v34 = *(v34 & 0xFFFFFFFFFFFFFFFELL);
    }

    v33 = MEMORY[0x277C951B0](v34);
    *(v3 + 120) = v33;
  }

  if (*(a2 + 15))
  {
    v35 = *(a2 + 15);
  }

  else
  {
    v35 = MEMORY[0x277D80A18];
  }

  this = TSP::Reference::MergeFrom(v33, v35);
  if ((v10 & 0x400) == 0)
  {
LABEL_71:
    if ((v10 & 0x800) == 0)
    {
      goto LABEL_72;
    }

    goto LABEL_102;
  }

LABEL_94:
  *(v3 + 16) |= 0x400u;
  v36 = *(v3 + 128);
  if (!v36)
  {
    v37 = *(v3 + 8);
    if (v37)
    {
      v37 = *(v37 & 0xFFFFFFFFFFFFFFFELL);
    }

    v36 = MEMORY[0x277C951B0](v37);
    *(v3 + 128) = v36;
  }

  if (*(a2 + 16))
  {
    v38 = *(a2 + 16);
  }

  else
  {
    v38 = MEMORY[0x277D80A18];
  }

  this = TSP::Reference::MergeFrom(v36, v38);
  if ((v10 & 0x800) == 0)
  {
LABEL_72:
    if ((v10 & 0x1000) == 0)
    {
      goto LABEL_73;
    }

    goto LABEL_103;
  }

LABEL_102:
  *(v3 + 136) = *(a2 + 136);
  if ((v10 & 0x1000) == 0)
  {
LABEL_73:
    if ((v10 & 0x2000) == 0)
    {
      goto LABEL_74;
    }

LABEL_104:
    *(v3 + 138) = *(a2 + 138);
    if ((v10 & 0x4000) == 0)
    {
      goto LABEL_76;
    }

    goto LABEL_75;
  }

LABEL_103:
  *(v3 + 137) = *(a2 + 137);
  if ((v10 & 0x2000) != 0)
  {
    goto LABEL_104;
  }

LABEL_74:
  if ((v10 & 0x4000) != 0)
  {
LABEL_75:
    *(v3 + 139) = *(a2 + 139);
  }

LABEL_76:
  *(v3 + 16) |= v10;
  return this;
}