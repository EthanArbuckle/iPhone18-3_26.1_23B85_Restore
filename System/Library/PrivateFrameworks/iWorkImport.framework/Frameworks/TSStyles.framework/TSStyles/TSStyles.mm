id String(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = MEMORY[0x277CCACA8];
  v8 = a4;
  v10 = objc_msgSend_stringWithFormat_(v7, v9, @"%@-%lu-%@", a1, a2, a3);
  v12 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v11, @"%@-%@", v10, v8);

  return v12;
}

__CFString *String(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v6 = objc_msgSend_componentsSeparatedByString_(v3, v5, @"-");
  v9 = v6;
  if (v6 && objc_msgSend_count(v6, v7, v8) == 3)
  {
    v11 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v10, @"%@-%@", v3, v4);
  }

  else
  {
    v11 = &stru_2885E7A20;
  }

  return v11;
}

uint64_t String(void *a1, const char *a2)
{
  v2 = objc_msgSend_componentsSeparatedByString_(a1, a2, @"-");
  v5 = v2;
  if (v2 && objc_msgSend_count(v2, v3, v4) >= 3)
  {
    v7 = objc_msgSend_objectAtIndexedSubscript_(v5, v6, 1);
    v10 = objc_msgSend_intValue(v7, v8, v9);
  }

  else
  {
    v10 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v10;
}

__CFString *String(void *a1, const char *a2)
{
  v2 = objc_msgSend_componentsSeparatedByString_(a1, a2, @"-");
  v5 = v2;
  if (v2 && objc_msgSend_count(v2, v3, v4) >= 3)
  {
    v7 = objc_msgSend_objectAtIndexedSubscript_(v5, v6, 0);
  }

  else
  {
    v7 = &stru_2885E7A20;
  }

  return v7;
}

{
  v2 = objc_msgSend_componentsSeparatedByString_(a1, a2, @"-");
  v5 = v2;
  if (v2 && objc_msgSend_count(v2, v3, v4) >= 3)
  {
    v7 = objc_msgSend_objectAtIndexedSubscript_(v5, v6, 2);
  }

  else
  {
    v7 = &stru_2885E7A20;
  }

  return v7;
}

id String(void *a1, const char *a2)
{
  v2 = objc_msgSend_componentsSeparatedByString_(a1, a2, @"-");
  v5 = v2;
  if (v2 && objc_msgSend_count(v2, v3, v4) == 4)
  {
    v7 = objc_msgSend_objectAtIndexedSubscript_(v5, v6, 3);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

__CFString *String(void *a1)
{
  v1 = a1;
  v6 = objc_msgSend_styleIdentifier(v1, v2, v3);
  if (v6)
  {
    v7 = MEMORY[0x277CCACA8];
    v8 = objc_msgSend_styleIdentifier(v1, v4, v5);
    v10 = objc_msgSend_stringWithFormat_(v7, v9, @"<%@>", v8);
  }

  else
  {
    v10 = &stru_2885E7A20;
  }

  return v10;
}

{
  v1 = a1;
  v6 = objc_msgSend_name(v1, v2, v3);
  if (v6)
  {
    v7 = MEMORY[0x277CCACA8];
    v8 = objc_msgSend_name(v1, v4, v5);
    v10 = objc_msgSend_stringWithFormat_(v7, v9, @"'%@'", v8);
  }

  else
  {
    v10 = &stru_2885E7A20;
  }

  return v10;
}

{
  v1 = a1;
  v4 = v1;
  if (v1)
  {
    v5 = objc_msgSend_styleIdentifier(v1, v2, v3);

    if (v5)
    {
      v8 = String(v4);
    }

    else
    {
      v10 = objc_msgSend_name(v4, v6, v7);
      if (v10 && (v13 = v10, objc_msgSend_name(v4, v11, v12), v14 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend_length(v14, v15, v16), v14, v13, v17))
      {
        v8 = String(v4);
      }

      else
      {
        v8 = TSUObjectReferenceDescription();
      }
    }

    v9 = v8;
  }

  else
  {
    v9 = &stru_2885E7A20;
  }

  return v9;
}

BOOL String(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v9 = objc_msgSend_stylesheet(v3, v5, v6);
  if (v9)
  {
    v10 = objc_msgSend_stylesheet(v3, v7, v8);
    v15 = objc_msgSend_stylesheet(v4, v11, v12);
    if (v10 == v15)
    {
      v29 = 1;
    }

    else
    {
      v16 = objc_msgSend_stylesheet(v3, v13, v14);
      v21 = objc_msgSend_parent(v16, v17, v18);
      if (v21)
      {
        v22 = objc_msgSend_stylesheet(v3, v19, v20);
        v25 = objc_msgSend_parent(v22, v23, v24);
        v28 = objc_msgSend_stylesheet(v4, v26, v27);
        v29 = v25 == v28;
      }

      else
      {
        v29 = 0;
      }
    }
  }

  else
  {
    v29 = 1;
  }

  return v29;
}

void sub_276C9C784(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_276C9C79C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_276C9C7B4(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = *(*(*(a1 + 40) + 8) + 40);
  v6 = String(a2);
  objc_msgSend_appendFormat_(v4, v7, @"%@%3d %@", v5, a2, v6);

  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = @"\n";
}

void sub_276C9CB2C(uint64_t a1, const char *a2)
{
  v5 = objc_msgSend_boxedDefaultValueForProperty_(*(a1 + 40), a2, a2);
  objc_msgSend_setBoxedObject_forProperty_(*(a1 + 32), v4, v5, a2);
}

void sub_276C9D3F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_276C9D418(uint64_t a1, uint64_t a2, int a3, void *a4, _BYTE *a5)
{
  v12 = a4;
  v11 = objc_msgSend_boxedObjectForProperty_(*(*(a1 + 32) + 64), v9, a2);
  if (a3 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    if (objc_msgSend_isEqual_(v12, v10, v11))
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if ((objc_msgSend_isEqualToStyle_ignoreObjectContext_ignoreObjectUUID_(v12, v10, v11, *(a1 + 48), *(a1 + 49)) & 1) == 0)
  {
LABEL_7:
    *(*(*(a1 + 40) + 8) + 24) = 0;
    *a5 = 0;
  }

LABEL_8:
}

uint64_t sub_276C9E57C(uint64_t a1, const char *a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 64);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_276C9E5FC;
  v5[3] = &unk_27A6EE7F8;
  v5[4] = v2;
  return objc_msgSend_enumerateReferencedDataForProperty_usingBlock_(v3, a2, a2, v5);
}

uint64_t sub_276C9E604(uint64_t a1, const char *a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 64);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_276C9E684;
  v5[3] = &unk_27A6EE7F8;
  v5[4] = v2;
  return objc_msgSend_enumerateReferencedDataForProperty_usingBlock_(v3, a2, a2, v5);
}

id String(void *a1)
{
  v1 = a1;
  v4 = v1;
  if (v1)
  {
    v7 = objc_msgSend_propertyMap(v1, v2, v3);
    if (!v7)
    {
      v7 = objc_msgSend_propertyMap(TSSPropertyMap, v5, v6);
    }

    v8 = objc_opt_class();
    v11 = objc_msgSend_properties(v8, v9, v10);
    v14 = objc_msgSend_mutableCopy(v11, v12, v13);

    v17 = objc_msgSend_allProperties(v7, v15, v16);
    objc_msgSend_removeProperties_(v14, v18, v17);

    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = sub_276CA1204;
    v24[3] = &unk_27A6EE8E8;
    v25 = v4;
    v19 = v7;
    v26 = v19;
    objc_msgSend_enumeratePropertiesUsingBlock_(v14, v20, v24);
    v21 = v26;
    v22 = v19;
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

void sub_276C9F710(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_276C9F728(uint64_t a1, const char *a2, _BYTE *a3)
{
  result = objc_msgSend_p_hasEqualValuesTo_forProperty_(*(a1 + 32), a2, *(a1 + 40), a2);
  if ((result & 1) == 0)
  {
    *a3 = 1;
    *(*(*(a1 + 48) + 8) + 24) = 0;
  }

  return result;
}

void sub_276C9F8B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_276C9F8D0(uint64_t a1, const char *a2, _BYTE *a3)
{
  result = objc_msgSend_p_hasEqualValuesTo_forProperty_(*(a1 + 32), a2, *(a1 + 40), a2);
  if ((result & 1) == 0)
  {
    *a3 = 1;
    *(*(*(a1 + 48) + 8) + 24) = 0;
  }

  return result;
}

void sub_276C9FAD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_276C9FAE8(uint64_t a1, uint64_t a2, int a3, void *a4, _BYTE *a5)
{
  isKindOfClass = a4;
  v10 = isKindOfClass;
  if (!a3)
  {
    v56 = isKindOfClass;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v10 = v56;
    if (isKindOfClass)
    {
      v11 = v56;
      v15 = objc_msgSend_objectForProperty_(*(a1 + 32), v12, a2);
      if (v15 != v11)
      {
        v16 = objc_msgSend_stylesheet(v11, v13, v14);
        v19 = objc_msgSend_rootAncestor(v16, v17, v18);
        v22 = objc_msgSend_stylesheet(v15, v20, v21);
        v25 = objc_msgSend_rootAncestor(v22, v23, v24);

        if (v19 != v25)
        {
          goto LABEL_5;
        }

        if (objc_msgSend_isVariation(v11, v26, v27))
        {
          if ((objc_msgSend_isVariation(v15, v28, v29) & 1) == 0)
          {
            v32 = MEMORY[0x277D81150];
            v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, "[TSSStyle overridePropertyMapIsEqualTo:]_block_invoke");
            v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v34, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/styles/TSSStyle.m");
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v32, v36, v33, v35, 1316, 0, "styles that are -isEqual: should be both variations or neither");

            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v37, v38);
          }

          v39 = objc_msgSend_parent(v11, v30, v31);
          v42 = objc_msgSend_stylesheet(v39, v40, v41);
          v45 = objc_msgSend_rootAncestor(v42, v43, v44);
          v48 = objc_msgSend_parent(v15, v46, v47);
          v51 = objc_msgSend_stylesheet(v48, v49, v50);
          v54 = objc_msgSend_rootAncestor(v51, v52, v53);

          if (v45 != v54)
          {
LABEL_5:
            *(*(*(a1 + 40) + 8) + 24) = 0;
            *a5 = 1;
          }
        }
      }

      v10 = v56;
    }
  }

  return MEMORY[0x2821F96F8](isKindOfClass, v10);
}

void sub_276CA0500(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v9 + 40));
  _Unwind_Resume(a1);
}

void sub_276CA0538(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v5 = v3;
  if (*(a1 + 32))
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, &v17, v21, 16);
    if (v6)
    {
      v8 = v6;
      v9 = *v18;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v18 != v9)
          {
            objc_enumerationMutation(v5);
          }

          v11 = *(*(&v17 + 1) + 8 * i);
          objc_msgSend_addObject_(*(a1 + 40), v7, v11);
          WeakRetained = objc_loadWeakRetained((*(*(a1 + 48) + 8) + 40));
          v15 = objc_msgSend_children(v11, v13, v14);
          WeakRetained[2](WeakRetained, v15);
        }

        v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v7, &v17, v21, 16);
      }

      while (v8);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

uint64_t sub_276CA0EA0(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  isKindOfClass = a4;
  v7 = isKindOfClass;
  if (!a3)
  {
    v9 = isKindOfClass;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v7 = v9;
    if (isKindOfClass)
    {
      isKindOfClass = objc_msgSend_addObject_(*(a1 + 32), v9, v9);
      v7 = v9;
    }
  }

  return MEMORY[0x2821F96F8](isKindOfClass, v7);
}

uint64_t sub_276CA0FD0(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  v7 = a4;
  v8 = v7;
  if (!a3)
  {
    v12 = v7;
    v7 = objc_msgSend_conformsToProtocol_(v7, v7, &unk_2885FD130);
    v8 = v12;
    if (v7)
    {
      v10 = (*(*(a1 + 40) + 16))();
      if (v10 != v12)
      {
        objc_msgSend_setValue_forProperty_(*(a1 + 32), v9, v10, a2);
      }

      v8 = v12;
    }
  }

  return MEMORY[0x2821F96F8](v7, v8);
}

uint64_t sub_276CA1204(uint64_t a1, const char *a2)
{
  v4 = objc_msgSend_boxedValueForProperty_(*(a1 + 32), a2, a2);
  if (v4)
  {
    objc_msgSend_setBoxedObject_forProperty_(*(a1 + 40), v4, v4, a2);
  }

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_276CA1770()
{
  v0 = objc_opt_new();
  v1 = qword_280A53958;
  qword_280A53958 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

void sub_276CA1888(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = a2;
  v8 = objc_msgSend_presetSources(v3, v5, v6);
  objc_msgSend_setObject_forKeyedSubscript_(v8, v7, v2, v4);
}

void sub_276CA1A74(uint64_t a1, uint64_t a2, void *a3)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_276CA1B04;
  v6[3] = &unk_27A6EE950;
  v4 = *(a1 + 40);
  v6[4] = *(a1 + 32);
  v7 = v4;
  objc_msgSend_enumerateObjectsUsingBlock_(a3, v5, v6);
}

void sub_276CA1B04(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v10 = TSUDynamicCast();
  shouldDoDOLCForPreset = objc_msgSend_p_shouldDoDOLCForPreset_(*(a1 + 32), v4, v3);

  if (shouldDoDOLCForPreset)
  {
    v8 = objc_msgSend_context(*(a1 + 40), v6, v7);
    objc_msgSend_wasAddedToDocumentWithContext_(v10, v9, v8);
  }
}

void sub_276CA1C70(uint64_t a1, uint64_t a2, void *a3)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_276CA1D00;
  v6[3] = &unk_27A6EE950;
  v4 = *(a1 + 40);
  v6[4] = *(a1 + 32);
  v7 = v4;
  objc_msgSend_enumerateObjectsUsingBlock_(a3, v5, v6);
}

void sub_276CA1D00(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v10 = TSUDynamicCast();
  shouldDoDOLCForPreset = objc_msgSend_p_shouldDoDOLCForPreset_(*(a1 + 32), v4, v3);

  if (shouldDoDOLCForPreset)
  {
    v8 = objc_msgSend_context(*(a1 + 40), v6, v7);
    objc_msgSend_willBeRemovedFromDocumentWithContext_(v10, v9, v8);
  }
}

void sub_276CA2904(uint64_t a1, uint64_t a2, void *a3)
{
  v15 = a3;
  if (objc_msgSend_count(v15, v4, v5))
  {
    v7 = objc_msgSend_objectAtIndexedSubscript_(v15, v6, 0);
    v9 = objc_msgSend_conformsToProtocol_(v7, v8, &unk_2885FD5F8);

    if (v9)
    {
      v12 = *(a1 + 32);
      v13 = objc_msgSend_objectEnumerator(v15, v10, v11);
      objc_msgSend_addObject_(v12, v14, v13);
    }
  }
}

void sub_276CA3318(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = objc_msgSend_documentRoot(*(a1 + 32), v4, v5);
  v9 = objc_msgSend_stylesheet(v6, v7, v8);
  v22 = v3;
  if (!objc_msgSend_containsStyle_(v9, v10, v22))
  {

    goto LABEL_5;
  }

  v13 = objc_msgSend_stylesheet(v22, v11, v12);

  if (v13 != v9)
  {
LABEL_5:
    v15 = MEMORY[0x277D81150];
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "[TSSTheme checkThemeStylesheetConsistency]_block_invoke");
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/styles/TSSTheme.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v19, v16, v18, 546, 0, "theme content refers to a style %@ not in the theme stylesheet", v22);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21);
  }
}

void sub_276CA3508(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = a3;
  if (objc_msgSend_count(v10, v4, v5))
  {
    v7 = objc_msgSend_objectAtIndexedSubscript_(v10, v6, 0);
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      objc_msgSend_addObjectsFromArray_(*(a1 + 32), v9, v10);
    }
  }
}

void sub_276CA387C(uint64_t a1, void *a2)
{
  obj = a2;
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 72));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v5 = objc_loadWeakRetained((*(a1 + 32) + 72));

    if (v5 != obj)
    {
      v7 = MEMORY[0x277D81150];
      v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSSStyle(Archiving) loadFromArchive:unarchiver:]_block_invoke_2");
      v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/styles/TSSStyle_Archiving.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v11, v8, v10, 50, 0, "Unexpected stylesheet.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13);
    }
  }

  objc_storeWeak((*(a1 + 32) + 72), obj);
}

_BYTE *sub_276CA3CD4(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_276CA3D8C();
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

void sub_276CA3DA4(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_276CA3E00(exception, a1);
  __cxa_throw(exception, off_27A6EE770, MEMORY[0x277D825F0]);
}

std::logic_error *sub_276CA3E00(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

void sub_276CA3E34(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_276CA3EC8;
  v7[3] = &unk_27A6EEA78;
  v8 = v4;
  v5 = v4;
  objc_msgSend_enumerateUsingBlock_(a1, v6, v7);
}

void sub_276CA3EC8(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v5 = TSUClassAndProtocolCast();

  v4 = v5;
  if (v5)
  {
    (*(*(a1 + 32) + 16))(*(a1 + 32));
    v4 = v5;
  }
}

void sub_276CA3F70(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v14 = 0;
  v15 = &v14;
  v16 = 0x3042000000;
  v17 = sub_276CA40CC;
  v18 = sub_276CA40D8;
  v19 = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_276CA40E0;
  v10[3] = &unk_27A6EEAA0;
  v6 = v5;
  v11 = v6;
  v7 = v4;
  v12 = v7;
  v13 = &v14;
  v8 = MEMORY[0x277CA0D60](v10);
  objc_storeWeak(v15 + 5, v8);
  objc_msgSend_enumerateUsingBlock_(a1, v9, v8);

  _Block_object_dispose(&v14, 8);
  objc_destroyWeak(&v19);
}

void sub_276CA40AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v9 + 40));
  _Unwind_Resume(a1);
}

void sub_276CA40E0(uint64_t a1, void *a2, _BYTE *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if ((objc_opt_respondsToSelector() & 1) != 0 && (objc_msgSend_containsObject_(*(a1 + 32), v6, v5) & 1) == 0)
  {
    objc_msgSend_addObject_(*(a1 + 32), v7, v5);
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v10 = objc_msgSend_referencedStyles(v5, v8, v9, 0);
    v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v20, v24, 16);
    if (v12)
    {
      v13 = v12;
      v14 = *v21;
LABEL_5:
      v15 = 0;
      while (1)
      {
        if (*v21 != v14)
        {
          objc_enumerationMutation(v10);
        }

        v16 = *(*(&v20 + 1) + 8 * v15);
        (*(*(a1 + 40) + 16))();
        if (*a3)
        {
          break;
        }

        WeakRetained = objc_loadWeakRetained((*(*(a1 + 48) + 8) + 40));
        WeakRetained[2](WeakRetained, v16, a3);

        if (*a3)
        {
          break;
        }

        if (v13 == ++v15)
        {
          v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v18, &v20, v24, 16);
          if (v13)
          {
            goto LABEL_5;
          }

          break;
        }
      }
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

void sub_276CA4274(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277D81258]);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_276CA4338;
  v9[3] = &unk_27A6EEAC8;
  v10 = v5;
  v11 = v4;
  v6 = v4;
  v7 = v5;
  objc_msgSend_enumerateModelAndReferencedStylesUsingBlock_(a1, v8, v9);
}

void sub_276CA4338(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  if ((objc_msgSend_containsObject_(*(a1 + 32), v4, v6) & 1) == 0)
  {
    (*(*(a1 + 40) + 16))();
  }

  objc_msgSend_addObject_(*(a1 + 32), v5, v6);
}

void sub_276CA55B4(uint64_t a1, void *a2)
{
  objc_storeStrong((*(a1 + 32) + 80), a2);
  v5 = a2;
  objc_msgSend_setChild_(*(*(a1 + 32) + 80), v4, *(a1 + 32));
}

void sub_276CA563C(uint64_t a1, uint64_t a2)
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_276CA56F0;
  v7[3] = &unk_27A6EEAF0;
  v3 = *(a1 + 32);
  v7[4] = *(a1 + 40);
  v4 = v3;
  v5 = objc_opt_class();
  objc_msgSend_readRepeatedWeakReferenceMessage_class_protocol_completion_(v4, v6, a2, v5, 0, v7);
}

void sub_276CA56F0(uint64_t a1, void *a2)
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = a2;
  objc_msgSend_addObjectsFromArray_(*(*(a1 + 32) + 72), v4, v3, v3);
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = v3;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v5, &v31, v35, 16);
  if (v8)
  {
    v9 = *v32;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v32 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v31 + 1) + 8 * i);
        v14 = objc_msgSend_stylesheet(v11, v6, v7);
        if (v14)
        {
          v15 = objc_msgSend_stylesheet(v11, v12, v13);
          v16 = v15 == *(a1 + 32);

          if (!v16)
          {
            v17 = MEMORY[0x277D81150];
            v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[TSSStylesheet(Archiving) loadFromUnarchiver:]_block_invoke_3");
            v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/styles/TSSStylesheet_Archiving.mm");
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v21, v18, v20, 132, 0, "Unexpected stylesheet.");

            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23);
          }
        }

        objc_msgSend_setStylesheet_(v11, v12, *(a1 + 32));
        v24 = *(*(a1 + 32) + 104);
        v27 = objc_msgSend_objectUUID(v11, v25, v26);
        objc_msgSend_setObject_forKeyedSubscript_(v24, v28, v11, v27);
      }

      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v6, &v31, v35, 16);
    }

    while (v8);
  }

  v29 = *MEMORY[0x277D85DE8];
}

void sub_276CA596C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 >= 1)
  {
    v5 = 8;
    v6 = MEMORY[0x277D80A18];
    do
    {
      v7 = *(*(a2 + 16) + v5);
      v8 = objc_msgSend_tsp_stringWithProtobufString_(MEMORY[0x277CCACA8], a2, *(v7 + 24) & 0xFFFFFFFFFFFFFFFELL);
      v9 = *(v7 + 32);
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = sub_276CA5AC0;
      v15[3] = &unk_27A6EEB40;
      v10 = *(a1 + 32);
      v15[4] = *(a1 + 40);
      v11 = v8;
      v16 = v11;
      v12 = v10;
      v14 = objc_opt_class();
      if (v9)
      {
        objc_msgSend_readReferenceMessage_class_protocol_completion_(v12, v13, v9, v14, 0, v15);
      }

      else
      {
        objc_msgSend_readReferenceMessage_class_protocol_completion_(v12, v13, v6, v14, 0, v15);
      }

      v5 += 8;
      --v2;
    }

    while (v2);
  }
}

void sub_276CA5AC0(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    objc_msgSend_setObject_forKeyedSubscript_(*(*(a1 + 32) + 64), v3, v4, *(a1 + 40));
  }
}

void sub_276CA5B38(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 >= 1)
  {
    v4 = MEMORY[0x277D85DD0];
    v5 = 8;
    do
    {
      v6 = *(*(a2 + 16) + v5);
      if (*(v6 + 48))
      {
        v7 = *(v6 + 48);
      }

      else
      {
        v7 = MEMORY[0x277D80A18];
      }

      v14[0] = v4;
      v14[1] = 3221225472;
      v14[2] = sub_276CA5C78;
      v14[3] = &unk_27A6EEB68;
      v8 = *(a1 + 32);
      v14[4] = *(a1 + 40);
      v9 = v8;
      v10 = objc_opt_class();
      v11 = objc_opt_class();
      objc_msgSend_readWeakReferenceMessage_class_protocol_repeatedMessage_class_protocol_completion_(v9, v12, v7, v10, 0, v6 + 24, v11, 0, v14);

      v5 += 8;
      --v2;
    }

    while (v2);
  }
}

void sub_276CA5C78(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v6 = a3;
  if (v7 && v6)
  {
    objc_msgSend_setObject_forKeyedSubscript_(*(*(a1 + 32) + 96), v5, v6, v7);
  }
}

uint64_t sub_276CA5D10(void *a1)
{
  (*(a1[4] + 16))();
  (*(a1[5] + 16))();
  v2 = *(a1[6] + 16);

  return v2();
}

void sub_276CA5D7C(uint64_t a1, void *a2)
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_alloc(MEMORY[0x277D81268]);
  v6 = objc_msgSend_initWithArray_(v4, v5, v3);
  v7 = *(a1 + 32);
  v8 = *(v7 + 72);
  *(v7 + 72) = v6;

  v9 = objc_alloc(MEMORY[0x277CBEB38]);
  v12 = objc_msgSend_count(v3, v10, v11);
  v14 = objc_msgSend_initWithCapacity_(v9, v13, v12);
  v15 = *(a1 + 32);
  v16 = *(v15 + 104);
  *(v15 + 104) = v14;

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v17 = *(*(a1 + 32) + 72);
  v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v18, &v30, v34, 16);
  if (v20)
  {
    v21 = *v31;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v31 != v21)
        {
          objc_enumerationMutation(v17);
        }

        v23 = *(*(&v30 + 1) + 8 * i);
        objc_msgSend_setStylesheet_(v23, v19, *(a1 + 32), v30);
        v24 = *(*(a1 + 32) + 104);
        v27 = objc_msgSend_objectUUID(v23, v25, v26);
        objc_msgSend_setObject_forKeyedSubscript_(v24, v28, v23, v27);
      }

      v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v19, &v30, v34, 16);
    }

    while (v20);
  }

  v29 = *MEMORY[0x277D85DE8];
}

void sub_276CA5F68(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = objc_alloc(MEMORY[0x277CBEB38]);
  v5 = objc_msgSend_initWithObjects_forKeys_(v3, v4, v8, *(a1 + 40));
  v6 = *(a1 + 32);
  v7 = *(v6 + 64);
  *(v6 + 64) = v5;
}

void sub_276CA5FF4(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v6 = a3;
  if (v7 && v6)
  {
    objc_msgSend_setObject_forKeyedSubscript_(*(*(a1 + 32) + 96), v5, v6, v7);
  }
}

uint64_t sub_276CA608C(uint64_t a1, const char *a2, uint64_t a3)
{
  result = objc_msgSend_shouldAlwaysArchiveWhenInMemory(*(a1 + 32), a2, a3);
  if (result)
  {
    v5 = *(a1 + 32);

    return MEMORY[0x2821F9670](v5, sel_willModifyForUpgradeWithOptions_, 2);
  }

  return result;
}

void sub_276CA63D0(void *a1, void *a2)
{
  v21 = a2;
  v6 = objc_msgSend_objectForKeyedSubscript_(*(a1[4] + 64), v3, v21);
  v7 = a1[5];
  if (v7 && !objc_msgSend_containsObject_(v7, v4, v6))
  {
    goto LABEL_15;
  }

  v8 = a1[7];
  v9 = *(v8 + 64);
  if (!v9)
  {
    v13 = *(v8 + 60);
    goto LABEL_8;
  }

  v10 = *(v8 + 56);
  v11 = *v9;
  if (v10 >= *v9)
  {
    if (v11 != *(v8 + 60))
    {
LABEL_9:
      *v9 = v11 + 1;
      v12 = google::protobuf::Arena::CreateMaybeMessage<TSS::StylesheetArchive_IdentifiedStyleEntry>(*(v8 + 48));
      v14 = *(v8 + 56);
      v15 = *(v8 + 64) + 8 * v14;
      *(v8 + 56) = v14 + 1;
      *(v15 + 8) = v12;
      goto LABEL_10;
    }

LABEL_8:
    google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v8 + 48));
    v9 = *(v8 + 64);
    v11 = *v9;
    goto LABEL_9;
  }

  *(v8 + 56) = v10 + 1;
  v12 = *&v9[2 * v10 + 2];
LABEL_10:
  v16 = objc_msgSend_tsp_protobufString(v21, v4, v5);
  sub_276CA6558(v12, v16);
  v18 = a1[6];
  *(v12 + 16) |= 2u;
  v19 = *(v12 + 32);
  if (!v19)
  {
    v20 = *(v12 + 8);
    if (v20)
    {
      v20 = *(v20 & 0xFFFFFFFFFFFFFFFELL);
    }

    v19 = MEMORY[0x277CA0650](v20);
    *(v12 + 32) = v19;
  }

  objc_msgSend_setStrongReference_message_(v18, v17, v6, v19);
LABEL_15:
}

void sub_276CA6558(uint64_t a1, char *__s)
{
  *(a1 + 16) |= 1u;
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_276CA3D8C();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  v9 = v4;
  if (v4)
  {
    memcpy(&__dst, __s, v4);
  }

  *(&__dst + v5) = 0;
  v6 = *(a1 + 8);
  if (v6)
  {
    v7 = *(v6 & 0xFFFFFFFFFFFFFFFELL);
  }

  google::protobuf::internal::ArenaStringPtr::Set();
  if (v9 < 0)
  {
    operator delete(__dst);
  }
}

void sub_276CA6650(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_276CA666C(uint64_t a1, void *a2, void *a3)
{
  v30 = a2;
  v7 = a3;
  v8 = *(a1 + 32);
  if (!v8)
  {
    goto LABEL_14;
  }

  if (!objc_msgSend_containsObject_(v8, v5, v30))
  {
    goto LABEL_26;
  }

  if (!*(a1 + 32))
  {
LABEL_14:
    v9 = v7;
    if (v7)
    {
      goto LABEL_10;
    }

LABEL_15:
    v7 = 0;
    goto LABEL_26;
  }

  v9 = objc_msgSend_mutableCopy(v7, v5, v6);

  v12 = objc_msgSend_count(v9, v10, v11);
  if (v12)
  {
    v13 = v12 - 1;
    do
    {
      v14 = objc_msgSend_objectAtIndexedSubscript_(v9, v5, v13);
      if ((objc_msgSend_containsObject_(*(a1 + 32), v15, v14) & 1) == 0)
      {
        objc_msgSend_removeObjectAtIndex_(v9, v16, v13);
      }

      --v13;
    }

    while (v13 != -1);
  }

  if (!v9)
  {
    goto LABEL_15;
  }

LABEL_10:
  if (objc_msgSend_count(v9, v5, v6))
  {
    v18 = *(a1 + 48);
    v19 = *(v18 + 88);
    if (v19)
    {
      v20 = *(v18 + 80);
      v21 = *v19;
      if (v20 < *v19)
      {
        *(v18 + 80) = v20 + 1;
        v22 = *&v19[2 * v20 + 2];
LABEL_20:
        v26 = *(a1 + 40);
        *(v22 + 16) |= 1u;
        v27 = *(v22 + 48);
        if (!v27)
        {
          v28 = *(v22 + 8);
          if (v28)
          {
            v28 = *(v28 & 0xFFFFFFFFFFFFFFFELL);
          }

          v27 = MEMORY[0x277CA0650](v28);
          *(v22 + 48) = v27;
        }

        objc_msgSend_setStrongReference_message_(v26, v17, v30, v27);
        objc_msgSend_setStrongReferenceArray_message_(*(a1 + 40), v29, v9, v22 + 24);
        goto LABEL_25;
      }

      if (v21 != *(v18 + 84))
      {
LABEL_19:
        *v19 = v21 + 1;
        v22 = google::protobuf::Arena::CreateMaybeMessage<TSS::StylesheetArchive_StyleChildrenEntry>(*(v18 + 72));
        v24 = *(v18 + 80);
        v25 = *(v18 + 88) + 8 * v24;
        *(v18 + 80) = v24 + 1;
        *(v25 + 8) = v22;
        goto LABEL_20;
      }
    }

    else
    {
      v23 = *(v18 + 84);
    }

    google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v18 + 72));
    v19 = *(v18 + 88);
    v21 = *v19;
    goto LABEL_19;
  }

LABEL_25:
  v7 = v9;
LABEL_26:
}

void sub_276CA75A4(void *a1, void *a2)
{
  v26 = a2;
  v4 = objc_msgSend_objectForKeyedSubscript_(*(a1[4] + 64), v3, v26);
  Version = objc_msgSend_minimumReadVersion(v4, v5, v6);
  if (Version > UnsafePointer())
  {
    v10 = a1[5];
    v11 = objc_msgSend_numberWithUnsignedLongLong_(MEMORY[0x277CCABB0], v8, Version);
    objc_msgSend_addObject_(v10, v12, v11);

    goto LABEL_15;
  }

  v13 = a1[7];
  v14 = *(v13 + 64);
  if (!v14)
  {
    v18 = *(v13 + 60);
    goto LABEL_8;
  }

  v15 = *(v13 + 56);
  v16 = *v14;
  if (v15 >= *v14)
  {
    if (v16 != *(v13 + 60))
    {
LABEL_9:
      *v14 = v16 + 1;
      v17 = google::protobuf::Arena::CreateMaybeMessage<TSS::StylesheetArchive_IdentifiedStyleEntry>(*(v13 + 48));
      v19 = *(v13 + 56);
      v20 = *(v13 + 64) + 8 * v19;
      *(v13 + 56) = v19 + 1;
      *(v20 + 8) = v17;
      goto LABEL_10;
    }

LABEL_8:
    google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v13 + 48));
    v14 = *(v13 + 64);
    v16 = *v14;
    goto LABEL_9;
  }

  *(v13 + 56) = v15 + 1;
  v17 = *&v14[2 * v15 + 2];
LABEL_10:
  v21 = objc_msgSend_tsp_protobufString(v26, v8, v9);
  sub_276CA6558(v17, v21);
  v23 = a1[6];
  *(v17 + 16) |= 2u;
  v24 = *(v17 + 32);
  if (!v24)
  {
    v25 = *(v17 + 8);
    if (v25)
    {
      v25 = *(v25 & 0xFFFFFFFFFFFFFFFELL);
    }

    v24 = MEMORY[0x277CA0650](v25);
    *(v17 + 32) = v24;
  }

  objc_msgSend_setStrongReference_message_(v23, v22, v4, v24);
LABEL_15:
}

void sub_276CA7768(uint64_t a1, void *a2, void *a3)
{
  v40 = a2;
  v5 = a3;
  v8 = v5;
  if (!v5 || !objc_msgSend_count(v5, v6, v7))
  {
    goto LABEL_30;
  }

  if (*(*(a1 + 32) + 113) == 1)
  {
    v11 = *(a1 + 56);
    v12 = *(v11 + 88);
    if (v12)
    {
      v13 = *(v11 + 80);
      v14 = *v12;
      if (v13 < *v12)
      {
        *(v11 + 80) = v13 + 1;
        v15 = *&v12[2 * v13 + 2];
LABEL_16:
        v29 = *(a1 + 40);
        *(v15 + 16) |= 1u;
        v30 = *(v15 + 48);
        if (!v30)
        {
          v31 = *(v15 + 8);
          if (v31)
          {
            v31 = *(v31 & 0xFFFFFFFFFFFFFFFELL);
          }

          v30 = MEMORY[0x277CA0650](v31);
          *(v15 + 48) = v30;
        }

        objc_msgSend_setWeakReference_message_(v29, v9, v40, v30);
        objc_msgSend_setWeakReferenceArray_message_(*(a1 + 40), v32, v8, v15 + 24);
        goto LABEL_30;
      }

      if (v14 != *(v11 + 84))
      {
LABEL_15:
        *v12 = v14 + 1;
        v15 = google::protobuf::Arena::CreateMaybeMessage<TSS::StylesheetArchive_StyleChildrenEntry>(*(v11 + 72));
        v27 = *(v11 + 80);
        v28 = *(v11 + 88) + 8 * v27;
        *(v11 + 80) = v27 + 1;
        *(v28 + 8) = v15;
        goto LABEL_16;
      }
    }

    else
    {
      v26 = *(v11 + 84);
    }

    google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v11 + 72));
    v12 = *(v11 + 88);
    v14 = *v12;
    goto LABEL_15;
  }

  Version = objc_msgSend_minimumReadVersion(v40, v9, v10);
  if (Version > UnsafePointer())
  {
    v18 = *(a1 + 48);
    v19 = objc_msgSend_numberWithUnsignedLongLong_(MEMORY[0x277CCABB0], v17, Version);
    objc_msgSend_addObject_(v18, v20, v19);

    goto LABEL_30;
  }

  v21 = *(a1 + 56);
  v22 = *(v21 + 88);
  if (!v22)
  {
    v33 = *(v21 + 84);
    goto LABEL_23;
  }

  v23 = *(v21 + 80);
  v24 = *v22;
  if (v23 >= *v22)
  {
    if (v24 != *(v21 + 84))
    {
LABEL_24:
      *v22 = v24 + 1;
      v25 = google::protobuf::Arena::CreateMaybeMessage<TSS::StylesheetArchive_StyleChildrenEntry>(*(v21 + 72));
      v34 = *(v21 + 80);
      v35 = *(v21 + 88) + 8 * v34;
      *(v21 + 80) = v34 + 1;
      *(v35 + 8) = v25;
      goto LABEL_25;
    }

LABEL_23:
    google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v21 + 72));
    v22 = *(v21 + 88);
    v24 = *v22;
    goto LABEL_24;
  }

  *(v21 + 80) = v23 + 1;
  v25 = *&v22[2 * v23 + 2];
LABEL_25:
  v36 = *(a1 + 40);
  *(v25 + 16) |= 1u;
  v37 = *(v25 + 48);
  if (!v37)
  {
    v38 = *(v25 + 8);
    if (v38)
    {
      v38 = *(v38 & 0xFFFFFFFFFFFFFFFELL);
    }

    v37 = MEMORY[0x277CA0650](v38);
    *(v25 + 48) = v37;
  }

  objc_msgSend_setStrongReference_message_(v36, v17, v40, v37);
  objc_msgSend_setStrongReferenceArray_message_(*(a1 + 40), v39, v8, v25 + 24);
LABEL_30:
}

void sub_276CA7E0C(void *a1, void *a2)
{
  v22 = a2;
  v4 = objc_msgSend_objectForKeyedSubscript_(*(a1[4] + 64), v3, v22);
  if (objc_msgSend_minimumReadVersion(v4, v5, v6) != a1[6])
  {
    goto LABEL_14;
  }

  v9 = a1[7];
  v10 = *(v9 + 56);
  if (!v10)
  {
    v14 = *(v9 + 52);
    goto LABEL_7;
  }

  v11 = *(v9 + 48);
  v12 = *v10;
  if (v11 >= *v10)
  {
    if (v12 != *(v9 + 52))
    {
LABEL_8:
      *v10 = v12 + 1;
      v13 = google::protobuf::Arena::CreateMaybeMessage<TSS::StylesheetArchive_IdentifiedStyleEntry>(*(v9 + 40));
      v15 = *(v9 + 48);
      v16 = *(v9 + 56) + 8 * v15;
      *(v9 + 48) = v15 + 1;
      *(v16 + 8) = v13;
      goto LABEL_9;
    }

LABEL_7:
    google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v9 + 40));
    v10 = *(v9 + 56);
    v12 = *v10;
    goto LABEL_8;
  }

  *(v9 + 48) = v11 + 1;
  v13 = *&v10[2 * v11 + 2];
LABEL_9:
  v17 = objc_msgSend_tsp_protobufString(v22, v7, v8);
  sub_276CA6558(v13, v17);
  v19 = a1[5];
  *(v13 + 16) |= 2u;
  v20 = *(v13 + 32);
  if (!v20)
  {
    v21 = *(v13 + 8);
    if (v21)
    {
      v21 = *(v21 & 0xFFFFFFFFFFFFFFFELL);
    }

    v20 = MEMORY[0x277CA0650](v21);
    *(v13 + 32) = v20;
  }

  objc_msgSend_setStrongReference_message_(v19, v18, v4, v20);
LABEL_14:
}

void sub_276CA7F90(uint64_t a1, void *a2, void *a3)
{
  v27 = a2;
  v5 = a3;
  v8 = v5;
  if (!v5 || !objc_msgSend_count(v5, v6, v7) || objc_msgSend_minimumReadVersion(v27, v9, v10) != *(a1 + 48))
  {
    goto LABEL_22;
  }

  v12 = *(a1 + 56);
  v13 = *(v12 + 80);
  if (!v13)
  {
    v17 = *(v12 + 76);
LABEL_9:
    google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v12 + 64));
    v13 = *(v12 + 80);
    v15 = *v13;
    goto LABEL_10;
  }

  v14 = *(v12 + 72);
  v15 = *v13;
  if (v14 < *v13)
  {
    *(v12 + 72) = v14 + 1;
    v16 = *&v13[2 * v14 + 2];
    goto LABEL_11;
  }

  if (v15 == *(v12 + 76))
  {
    goto LABEL_9;
  }

LABEL_10:
  *v13 = v15 + 1;
  v16 = google::protobuf::Arena::CreateMaybeMessage<TSS::StylesheetArchive_StyleChildrenEntry>(*(v12 + 64));
  v18 = *(v12 + 72);
  v19 = *(v12 + 80) + 8 * v18;
  *(v12 + 72) = v18 + 1;
  *(v19 + 8) = v16;
LABEL_11:
  v20 = *(a1 + 40);
  v21 = *(*(a1 + 32) + 113);
  *(v16 + 16) |= 1u;
  v22 = *(v16 + 48);
  if (v21 == 1)
  {
    if (!v22)
    {
      v23 = *(v16 + 8);
      if (v23)
      {
        v23 = *(v23 & 0xFFFFFFFFFFFFFFFELL);
      }

      v22 = MEMORY[0x277CA0650](v23);
      *(v16 + 48) = v22;
    }

    objc_msgSend_setWeakReference_message_(v20, v11, v27, v22);
    objc_msgSend_setWeakReferenceArray_message_(*(a1 + 40), v24, v8, v16 + 24);
  }

  else
  {
    if (!v22)
    {
      v25 = *(v16 + 8);
      if (v25)
      {
        v25 = *(v25 & 0xFFFFFFFFFFFFFFFELL);
      }

      v22 = MEMORY[0x277CA0650](v25);
      *(v16 + 48) = v22;
    }

    objc_msgSend_setStrongReference_message_(v20, v11, v27, v22);
    objc_msgSend_setStrongReferenceArray_message_(*(a1 + 40), v26, v8, v16 + 24);
  }

LABEL_22:
}

uint64_t sub_276CA8174(uint64_t a1)
{
  *(a1 + 16) |= 0x800u;
  result = *(a1 + 184);
  if (!result)
  {
    v3 = *(a1 + 8);
    if (v3)
    {
      v3 = *(v3 & 0xFFFFFFFFFFFFFFFELL);
    }

    result = google::protobuf::Arena::CreateMaybeMessage<TSS::StylesheetArchive_VersionedStyles>(v3);
    *(a1 + 184) = result;
  }

  return result;
}

uint64_t sub_276CA81C4(uint64_t a1)
{
  *(a1 + 16) |= 0x1000u;
  result = *(a1 + 192);
  if (!result)
  {
    v3 = *(a1 + 8);
    if (v3)
    {
      v3 = *(v3 & 0xFFFFFFFFFFFFFFFELL);
    }

    result = google::protobuf::Arena::CreateMaybeMessage<TSS::StylesheetArchive_VersionedStyles>(v3);
    *(a1 + 192) = result;
  }

  return result;
}

uint64_t sub_276CA8214(uint64_t a1)
{
  *(a1 + 16) |= 0x2000u;
  result = *(a1 + 200);
  if (!result)
  {
    v3 = *(a1 + 8);
    if (v3)
    {
      v3 = *(v3 & 0xFFFFFFFFFFFFFFFELL);
    }

    result = google::protobuf::Arena::CreateMaybeMessage<TSS::StylesheetArchive_VersionedStyles>(v3);
    *(a1 + 200) = result;
  }

  return result;
}

uint64_t sub_276CA8264(uint64_t a1)
{
  *(a1 + 16) |= 0x4000u;
  result = *(a1 + 208);
  if (!result)
  {
    v3 = *(a1 + 8);
    if (v3)
    {
      v3 = *(v3 & 0xFFFFFFFFFFFFFFFELL);
    }

    result = google::protobuf::Arena::CreateMaybeMessage<TSS::StylesheetArchive_VersionedStyles>(v3);
    *(a1 + 208) = result;
  }

  return result;
}

uint64_t sub_276CA82B4(uint64_t a1)
{
  *(a1 + 16) |= 0x8000u;
  result = *(a1 + 216);
  if (!result)
  {
    v3 = *(a1 + 8);
    if (v3)
    {
      v3 = *(v3 & 0xFFFFFFFFFFFFFFFELL);
    }

    result = google::protobuf::Arena::CreateMaybeMessage<TSS::StylesheetArchive_VersionedStyles>(v3);
    *(a1 + 216) = result;
  }

  return result;
}

uint64_t sub_276CA8304(uint64_t a1)
{
  *(a1 + 16) |= 0x10000u;
  result = *(a1 + 224);
  if (!result)
  {
    v3 = *(a1 + 8);
    if (v3)
    {
      v3 = *(v3 & 0xFFFFFFFFFFFFFFFELL);
    }

    result = google::protobuf::Arena::CreateMaybeMessage<TSS::StylesheetArchive_VersionedStyles>(v3);
    *(a1 + 224) = result;
  }

  return result;
}

uint64_t sub_276CA8354(uint64_t a1)
{
  *(a1 + 16) |= 0x20000u;
  result = *(a1 + 232);
  if (!result)
  {
    v3 = *(a1 + 8);
    if (v3)
    {
      v3 = *(v3 & 0xFFFFFFFFFFFFFFFELL);
    }

    result = google::protobuf::Arena::CreateMaybeMessage<TSS::StylesheetArchive_VersionedStyles>(v3);
    *(a1 + 232) = result;
  }

  return result;
}

void *sub_276CA83A4(uint64_t a1, uint64_t *a2)
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

uint64_t *sub_276CA8470(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
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

  result = sub_276CA84C8(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

uint64_t *sub_276CA84C8(uint64_t *result, uint64_t *a2)
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

void sub_276CA8664(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_276CA8664(a1, *a2);
    sub_276CA8664(a1, a2[1]);

    operator delete(a2);
  }
}

void sub_276CA86B8(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          TSP::Reference::~Reference(*v3);
          MEMORY[0x277CA0980]();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void sub_276CA87A8(uint64_t a1, const char *a2)
{
  v2 = MEMORY[0x277D81150];
  v3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSKDocumentRoot(TSSAdditions) theme]");
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/styles/TSKDocumentRoot_TSSAdditions.m");
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v2, v8, v3, v5, 23, 0, "Abstract method not overridden by %{public}@", v7);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v9, v10);
  v11 = MEMORY[0x277CBEAD8];
  v12 = *MEMORY[0x277CBE658];
  v13 = MEMORY[0x277CCACA8];
  v14 = objc_opt_class();
  v15 = NSStringFromClass(v14);
  v17 = objc_msgSend_stringWithFormat_(v13, v16, @"Abstract method not overridden by %@: %s", v15, "[TSKDocumentRoot(TSSAdditions) theme]");
  v19 = objc_msgSend_exceptionWithName_reason_userInfo_(v11, v18, v12, v17, 0);
  v20 = v19;

  objc_exception_throw(v19);
}

void sub_276CA88D0(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = MEMORY[0x277D81150];
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSKDocumentRoot(TSSAdditions) setTheme:]");
  v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/styles/TSKDocumentRoot_TSSAdditions.m");
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v11, v6, v8, 27, 0, "Abstract method not overridden by %{public}@", v10);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13);
  v14 = MEMORY[0x277CBEAD8];
  v15 = *MEMORY[0x277CBE658];
  v16 = MEMORY[0x277CCACA8];
  v17 = objc_opt_class();
  v18 = NSStringFromClass(v17);
  v20 = objc_msgSend_stringWithFormat_(v16, v19, @"Abstract method not overridden by %@: %s", v18, "[TSKDocumentRoot(TSSAdditions) setTheme:]");
  v22 = objc_msgSend_exceptionWithName_reason_userInfo_(v14, v21, v15, v20, 0);
  v23 = v22;

  objc_exception_throw(v22);
}

void sub_276CA89FC(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = MEMORY[0x277D81150];
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSKDocumentRoot(TSSAdditions) setThemeForTemplateImport:]");
  v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/styles/TSKDocumentRoot_TSSAdditions.m");
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v11, v6, v8, 31, 0, "Abstract method not overridden by %{public}@", v10);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13);
  v14 = MEMORY[0x277CBEAD8];
  v15 = *MEMORY[0x277CBE658];
  v16 = MEMORY[0x277CCACA8];
  v17 = objc_opt_class();
  v18 = NSStringFromClass(v17);
  v20 = objc_msgSend_stringWithFormat_(v16, v19, @"Abstract method not overridden by %@: %s", v18, "[TSKDocumentRoot(TSSAdditions) setThemeForTemplateImport:]");
  v22 = objc_msgSend_exceptionWithName_reason_userInfo_(v14, v21, v15, v20, 0);
  v23 = v22;

  objc_exception_throw(v22);
}

void sub_276CA8B28(uint64_t a1, const char *a2)
{
  v2 = MEMORY[0x277D81150];
  v3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSKDocumentRoot(TSSAdditions) stylesheet]");
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/styles/TSKDocumentRoot_TSSAdditions.m");
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v2, v8, v3, v5, 35, 0, "Abstract method not overridden by %{public}@", v7);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v9, v10);
  v11 = MEMORY[0x277CBEAD8];
  v12 = *MEMORY[0x277CBE658];
  v13 = MEMORY[0x277CCACA8];
  v14 = objc_opt_class();
  v15 = NSStringFromClass(v14);
  v17 = objc_msgSend_stringWithFormat_(v13, v16, @"Abstract method not overridden by %@: %s", v15, "[TSKDocumentRoot(TSSAdditions) stylesheet]");
  v19 = objc_msgSend_exceptionWithName_reason_userInfo_(v11, v18, v12, v17, 0);
  v20 = v19;

  objc_exception_throw(v19);
}

void sub_276CA8C50(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v5 = a3;
  v6 = a4;
  v7 = MEMORY[0x277D81150];
  v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSKDocumentRoot(TSSAdditions) setStylesheet:andThemeForImport:]");
  v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/styles/TSKDocumentRoot_TSSAdditions.m");
  v12 = objc_opt_class();
  v13 = NSStringFromClass(v12);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v14, v9, v11, 39, 0, "Abstract method not overridden by %{public}@", v13);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16);
  v17 = MEMORY[0x277CBEAD8];
  v18 = *MEMORY[0x277CBE658];
  v19 = MEMORY[0x277CCACA8];
  v20 = objc_opt_class();
  v21 = NSStringFromClass(v20);
  v23 = objc_msgSend_stringWithFormat_(v19, v22, @"Abstract method not overridden by %@: %s", v21, "[TSKDocumentRoot(TSSAdditions) setStylesheet:andThemeForImport:]");
  v25 = objc_msgSend_exceptionWithName_reason_userInfo_(v17, v24, v18, v23, 0);
  v26 = v25;

  objc_exception_throw(v25);
}

void sub_276CA8D84(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = MEMORY[0x277D81150];
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSKDocumentRoot(TSSAdditions) setStylesheetForUpgradeToSingleStylesheet:]");
  v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/styles/TSKDocumentRoot_TSSAdditions.m");
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v11, v6, v8, 43, 0, "Abstract method not overridden by %{public}@", v10);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13);
  v14 = MEMORY[0x277CBEAD8];
  v15 = *MEMORY[0x277CBE658];
  v16 = MEMORY[0x277CCACA8];
  v17 = objc_opt_class();
  v18 = NSStringFromClass(v17);
  v20 = objc_msgSend_stringWithFormat_(v16, v19, @"Abstract method not overridden by %@: %s", v18, "[TSKDocumentRoot(TSSAdditions) setStylesheetForUpgradeToSingleStylesheet:]");
  v22 = objc_msgSend_exceptionWithName_reason_userInfo_(v14, v21, v15, v20, 0);
  v23 = v22;

  objc_exception_throw(v22);
}

void sub_276CA8EB0(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v5 = a3;
  v6 = a4;
  v7 = MEMORY[0x277D81150];
  v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSKDocumentRoot(TSSAdditions) migrateStylesInObjects:changePropagationMap:]");
  v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/styles/TSKDocumentRoot_TSSAdditions.m");
  v12 = objc_opt_class();
  v13 = NSStringFromClass(v12);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v14, v9, v11, 47, 0, "Abstract method not overridden by %{public}@", v13);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16);
  v17 = MEMORY[0x277CBEAD8];
  v18 = *MEMORY[0x277CBE658];
  v19 = MEMORY[0x277CCACA8];
  v20 = objc_opt_class();
  v21 = NSStringFromClass(v20);
  v23 = objc_msgSend_stringWithFormat_(v19, v22, @"Abstract method not overridden by %@: %s", v21, "[TSKDocumentRoot(TSSAdditions) migrateStylesInObjects:changePropagationMap:]");
  v25 = objc_msgSend_exceptionWithName_reason_userInfo_(v17, v24, v18, v23, 0);
  v26 = v25;

  objc_exception_throw(v25);
}

void sub_276CA8FE4(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = MEMORY[0x277D81150];
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSKDocumentRoot(TSSAdditions) migrateStylesInObjects:]");
  v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/styles/TSKDocumentRoot_TSSAdditions.m");
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v11, v6, v8, 51, 0, "Abstract method not overridden by %{public}@", v10);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13);
  v14 = MEMORY[0x277CBEAD8];
  v15 = *MEMORY[0x277CBE658];
  v16 = MEMORY[0x277CCACA8];
  v17 = objc_opt_class();
  v18 = NSStringFromClass(v17);
  v20 = objc_msgSend_stringWithFormat_(v16, v19, @"Abstract method not overridden by %@: %s", v18, "[TSKDocumentRoot(TSSAdditions) migrateStylesInObjects:]");
  v22 = objc_msgSend_exceptionWithName_reason_userInfo_(v14, v21, v15, v20, 0);
  v23 = v22;

  objc_exception_throw(v22);
}

void sub_276CA9110(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = MEMORY[0x277D81150];
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSKDocumentRoot(TSSAdditions) migratedStyleForStyle:]");
  v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/styles/TSKDocumentRoot_TSSAdditions.m");
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v11, v6, v8, 55, 0, "Abstract method not overridden by %{public}@", v10);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13);
  v14 = MEMORY[0x277CBEAD8];
  v15 = *MEMORY[0x277CBE658];
  v16 = MEMORY[0x277CCACA8];
  v17 = objc_opt_class();
  v18 = NSStringFromClass(v17);
  v20 = objc_msgSend_stringWithFormat_(v16, v19, @"Abstract method not overridden by %@: %s", v18, "[TSKDocumentRoot(TSSAdditions) migratedStyleForStyle:]");
  v22 = objc_msgSend_exceptionWithName_reason_userInfo_(v14, v21, v15, v20, 0);
  v23 = v22;

  objc_exception_throw(v22);
}

id sub_276CA9244(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v7 = objc_msgSend_theme(a1, v5, v6);
  v9 = objc_msgSend_migratedPresetForPreset_(v7, v8, v4);

  return v9;
}

void sub_276CA92B0(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = MEMORY[0x277D81150];
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSKDocumentRoot(TSSAdditions) migratedPropertyMapForPropertyMap:]");
  v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/styles/TSKDocumentRoot_TSSAdditions.m");
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v11, v6, v8, 68, 0, "Abstract method not overridden by %{public}@", v10);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13);
  v14 = MEMORY[0x277CBEAD8];
  v15 = *MEMORY[0x277CBE658];
  v16 = MEMORY[0x277CCACA8];
  v17 = objc_opt_class();
  v18 = NSStringFromClass(v17);
  v20 = objc_msgSend_stringWithFormat_(v16, v19, @"Abstract method not overridden by %@: %s", v18, "[TSKDocumentRoot(TSSAdditions) migratedPropertyMapForPropertyMap:]");
  v22 = objc_msgSend_exceptionWithName_reason_userInfo_(v14, v21, v15, v20, 0);
  v23 = v22;

  objc_exception_throw(v22);
}

void sub_276CA98B4(uint64_t a1, char *__s)
{
  *(a1 + 40) |= 1u;
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_276CA3D8C();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  v9 = v4;
  if (v4)
  {
    memcpy(&__dst, __s, v4);
  }

  *(&__dst + v5) = 0;
  v6 = *(a1 + 8);
  if (v6)
  {
    v7 = *(v6 & 0xFFFFFFFFFFFFFFFELL);
  }

  google::protobuf::internal::ArenaStringPtr::Set();
  if (v9 < 0)
  {
    operator delete(__dst);
  }
}

void sub_276CA99AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void String(void *a1)
{
  v3 = a1;
  if (!v3)
  {
    v4 = MEMORY[0x277D81150];
    v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v1, "void TSSMoveStyleToParentStylesheet(TSSStyle *__strong _Nonnull)");
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/styles/TSSStylesheet.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v8, v5, v7, 37, 0, "invalid nil value for '%{public}s'", "style");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v9, v10);
  }

  v11 = objc_msgSend_stylesheet(v3, v1, v2);

  if (!v11)
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "void TSSMoveStyleToParentStylesheet(TSSStyle *__strong _Nonnull)");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/styles/TSSStylesheet.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v18, v15, v17, 38, 0, "invalid nil value for '%{public}s'", "style.stylesheet");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20);
  }

  v21 = objc_msgSend_stylesheet(v3, v12, v13);
  v24 = objc_msgSend_parent(v21, v22, v23);

  if (!v24)
  {
    v27 = MEMORY[0x277D81150];
    v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "void TSSMoveStyleToParentStylesheet(TSSStyle *__strong _Nonnull)");
    v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/styles/TSSStylesheet.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v27, v31, v28, v30, 39, 0, "invalid nil value for '%{public}s'", "style.stylesheet.parent");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v32, v33);
  }

  if (v3)
  {
    v34 = objc_msgSend_stylesheet(v3, v25, v26);
    if (v34)
    {
      v37 = v34;
      v38 = objc_msgSend_stylesheet(v3, v35, v36);
      v41 = objc_msgSend_parent(v38, v39, v40);

      if (v41)
      {
        v44 = objc_msgSend_stylesheet(v3, v42, v43);
        v47 = objc_msgSend_parent(v44, v45, v46);

        v50 = objc_msgSend_parent(v3, v48, v49);
        v55 = objc_msgSend_styleIdentifier(v3, v51, v52);
        if (!v55 || (objc_msgSend_styleWithIdentifier_(v47, v53, v55), v56 = objc_claimAutoreleasedReturnValue(), v56, !v56))
        {
          v57 = objc_msgSend_stylesheet(v3, v53, v54);
          objc_msgSend_removeStyle_(v57, v58, v3);

          v60[0] = MEMORY[0x277D85DD0];
          v60[1] = 3221225472;
          v60[2] = sub_276CA9F40;
          v60[3] = &unk_27A6EEDD0;
          v61 = v47;
          v62 = v3;
          v63 = v50;
          v64 = v55;
          objc_msgSend_unlockStylesheetForDurationOfBlock_(v61, v59, v60);
        }
      }
    }
  }
}

{
  v9 = a1;
  v1 = TSS::StyleArchive::default_instance(v9);
  google::protobuf::internal::AssignDescriptors();
  v3 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v9, v2, 400, v1, *off_2812FAF80, "TSSStyle");
  v4 = TSS::StylesheetArchive::default_instance(v3);
  google::protobuf::internal::AssignDescriptors();
  v6 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v9, v5, 401, v4, off_2812FAF80[8], "TSSStylesheet");
  v7 = TSS::ThemeArchive::default_instance(v6);
  google::protobuf::internal::AssignDescriptors();
  objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v9, v8, 402, v7, off_2812FAF80[10], "TSSTheme");
}

void sub_276CAA130(_Unwind_Exception *a1)
{
  objc_sync_exit(v2);
  objc_sync_exit(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_276CABD20(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = (*(*(a1 + 32) + 16))();
  *a3 = result;
  return result;
}

uint64_t sub_276CABDD4(uint64_t a1, void *a2)
{
  v3 = a2;
  v7 = objc_msgSend_name(v3, v4, v5);
  if (v7)
  {
    isMemberOfClass = objc_msgSend_isMemberOfClass_(v3, v6, *(a1 + 32));
  }

  else
  {
    isMemberOfClass = 0;
  }

  return isMemberOfClass;
}

uint64_t sub_276CAD280(uint64_t a1, uint64_t a2)
{
  result = MEMORY[0x277CA0D60](*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

BOOL sub_276CAD2B4(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = objc_msgSend_stylesheet(v3, v4, v5);
  v9 = v6;
  if (v6 == *(a1 + 32))
  {
  }

  else
  {
    v10 = objc_msgSend_stylesheet(v3, v7, v8);

    if (v10)
    {
      goto LABEL_9;
    }
  }

  objc_msgSend_stylesheet(v3, v11, v12);

  v15 = objc_msgSend_parent(v3, v13, v14);

  if (v15)
  {
    v18 = *(*(*(a1 + 48) + 8) + 40);
    v19 = objc_msgSend_parent(v3, v16, v17);
    LOBYTE(v18) = (*(v18 + 16))(v18, v19);

    if ((v18 & 1) == 0)
    {
      v21 = objc_msgSend_propertyMap(v3, v16, v20);
      objc_msgSend_setOverridePropertyMap_(v3, v22, v21);

      objc_msgSend_setIsVariation_(v3, v23, 0);
      objc_msgSend_setParent_(v3, v24, 0);
    }
  }

  objc_msgSend_moveStyle_toStylesheet_stripIdentifiers_overwriteIdentifiers_(*(a1 + 32), v16, v3, *(a1 + 40), *(a1 + 56), 0);
LABEL_9:
  v25 = objc_msgSend_stylesheet(v3, v11, v12);
  v26 = v25 == *(a1 + 40);

  return v26;
}

uint64_t sub_276CAFA74(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v6 = objc_msgSend_tss_propertyValue(a2, a2, a3);

  return objc_msgSend_setBoxedObject_forProperty_(v4, v5, a3, v6);
}

unint64_t *sub_276CAFBC4(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = sub_276CB3B00(*a1);
  v3 = v2;
  if (v2)
  {
    if (*a1)
    {
      memcpy(v2[1], *(a1 + 8), 16 * *a1);
      v4 = *a1;
      *v3 = *a1;
      if (v4)
      {
        v5 = 0;
        v6 = 1;
        do
        {
          v7 = v3[1] + 16 * v5;
          if (!*(v7 + 10))
          {
            v8 = *v7;
            v4 = *v3;
          }

          v5 = v6;
        }

        while (v4 > v6++);
      }
    }
  }

  return v3;
}

void *sub_276CAFD00(const char *a1, double *a2)
{
  v2 = a1;
  v32 = a2;
  v33 = a2;
  v34 = a2;
  v3 = 0;
  if (a1)
  {
    do
    {
      v5 = String(a1);
      if (v5 - 2 < 2 || v5 <= 1)
      {
        ++v34;
      }

      ++v3;
      v4 = v34++;
      LODWORD(a1) = *v4;
    }

    while (*v4);
  }

  v6 = v3;
  v7 = sub_276CB3B00(v3);
  v8 = v7;
  if (v7)
  {
    *v7 = v6;
    if (v6)
    {
      v9 = v7[1];
      while (1)
      {
        while (1)
        {
          v10 = v2;
          if (!v2)
          {
            v11 = v33++;
            v10 = *v11;
            if (!v10)
            {
              if (sub_276CB3B84(v8))
              {
                v19 = *v8 - 1;
                if (*v8 != 1)
                {
                  v20 = 16 * *v8;
                  do
                  {
                    v21 = v8[1] + v20;
                    v22 = *(v21 - 8);
                    if (v22 == *(v21 - 24))
                    {
                      v23 = MEMORY[0x277D81150];
                      v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "TSSPropertyStoreRef i_TSSPropertyStoreCreateWithFirstPropertyAndArgumentList(TSSProperty, va_list)");
                      v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/styles/TSSPropertyMap.m");
                      v27 = String(v22);
                      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v23, v28, v24, v26, 1303, 0, "Duplicate entries for property %@", v27, v32);
                      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v29, v30);
                    }

                    v20 -= 16;
                    --v19;
                  }

                  while (v19);
                }
              }

              else
              {
                sub_276CAFFB0(v8);
                return 0;
              }

              return v8;
            }
          }

          v12 = String(v10);
          v2 = 0;
          if (v12 <= 1)
          {
            break;
          }

          if (v12 == 2)
          {
            v16 = v33++;
            v17 = *v16;
            sub_276CB2C6C(v9, v10, v17);
LABEL_22:
            v2 = 0;
            v9 += 16;
          }

          else if (v12 == 3)
          {
            v14 = v33++;
            sub_276CB2E50(v9, v10, *v14);
            goto LABEL_22;
          }
        }

        if (!v12)
        {
          v15 = v33++;
          sub_276CB28B4(v9, v10, *v15);
          goto LABEL_22;
        }

        if (v12 == 1)
        {
          v13 = v33++;
          sub_276CB2A94(v9, v10, *v13);
          goto LABEL_22;
        }
      }
    }
  }

  return v8;
}

void sub_276CAFFB0(void *a1)
{
  if (a1)
  {
    v2 = *a1;
    if (*a1)
    {
      v3 = 0;
      v4 = 0;
      do
      {
        v5 = *(a1 + 1) + 16 * v3;
        if (!*(v5 + 10))
        {
        }

        v3 = ++v4;
      }

      while (v2 > v4);
    }

    free(*(a1 + 1));

    free(a1);
  }
}

BOOL sub_276CB00A4(unint64_t *a1, unint64_t *a2, double a3)
{
  if (a1 == a2)
  {
    return 1;
  }

  result = 0;
  if (a1 && a2)
  {
    v6 = *a1;
    if (*a1 == *a2)
    {
      if (v6)
      {
        v7 = 0;
        for (i = 0; i < v6; ++i)
        {
          v9 = sub_276CB3978(a1[1] + v7, a2[1] + v7, a3);
          v6 = *a1;
          if (!v9)
          {
            break;
          }

          v7 += 16;
        }
      }

      else
      {
        i = 0;
      }

      return i == v6;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

unint64_t *sub_276CB01A8(unint64_t *result)
{
  if (result)
  {
    v1 = result;
    v2 = *result;
    if (*result)
    {
      v3 = 0;
      result = 0;
      v4 = (v1[1] + 10);
      do
      {
        result = (result + 0x10000 * *(v4 - 1) + v3);
        if (*v4 == 1)
        {
          result = (result + v3 + *(v4 - 10));
        }

        v4 += 16;
        ++v3;
      }

      while (v2 > v3);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_276CB059C(uint64_t *a1, const char *a2, uint64_t a3)
{
  v5 = objc_msgSend_string(MEMORY[0x277CCAB68], a2, a3);
  if (a1)
  {
    v6 = *a1;
    if (*a1)
    {
      v7 = 0;
      v8 = 0;
      v9 = &stru_2885E7A20;
      do
      {
        v10 = sub_276CB3F28((a1[1] + v7), v4);
        objc_msgSend_appendFormat_(v5, v11, @"%@%@", v9, v10);
        ++v8;
        v6 = *a1;
        v7 += 16;
        v9 = @"\n";
      }

      while (v8 < *a1);
    }
  }

  else
  {
    v6 = 0;
  }

  v12 = MEMORY[0x277CCACA8];
  v13 = objc_msgSend_tsu_stringByIndentingString_(MEMORY[0x277CCACA8], v4, v5);
  return objc_msgSend_stringWithFormat_(v12, v14, @"TSSPropertyStoreDescription(%p) %lu entries {\n%@\n}", a1, v6, v13);
}

uint64_t sub_276CB0700(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 40);
  v7 = String(a2);
  v9 = objc_msgSend_boxedObjectForProperty_(*(a1 + 32), v8, a2);
  v10 = *(v6 + 16);

  return v10(v6, a2, v7, v9, a3);
}

uint64_t sub_276CB0A58(uint64_t result, const char *a2, int a3, uint64_t a4, uint64_t a5)
{
  if (!a3)
  {
    return objc_msgSend_p_enumerateReferencedDataForProperty_withObject_stop_usingBlock_(*(result + 32), a2, a2, a4, a5, *(result + 40));
  }

  return result;
}

__CFString *sub_276CB0A70(int a1)
{
  if (a1 > 1)
  {
    if (a1 != 3)
    {
      if (a1 == 2)
      {
        return @"float";
      }

      return &stru_2885E7A20;
    }

    return @"double";
  }

  else
  {
    if (a1)
    {
      if (a1 == 1)
      {
        return @"int";
      }

      return &stru_2885E7A20;
    }

    return TSUObjectReferenceDescription();
  }
}

__CFString *sub_276CB0ACC(uint64_t a1, void *a2)
{
  if (objc_opt_respondsToSelector())
  {

    return MEMORY[0x2821F9670](a2, sel_performSelector_, sel_tssPropertySummary);
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {

      return objc_msgSend_description(a2, v3, v4);
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        return @"NSNull";
      }

      else
      {
        return &stru_2885E7A20;
      }
    }
  }
}

uint64_t sub_276CB0C74(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  v6 = *(a1 + 32);
  v7 = MEMORY[0x277CCACA8];
  v8 = String(a2);
  v9 = sub_276CB0ACC(0, a4);
  v10 = sub_276CB0A70(a3);
  v13 = objc_msgSend_stringWithFormat_(v7, v11, @"%@|%@|%@", v8, v9, v10);

  return objc_msgSend_addObject_(v6, v12, v13);
}

double sub_276CB0E68(size_t *a1, unsigned __int16 a2)
{
  v2 = sub_276CB3BF4(a1, a2);
  if (!v2)
  {
    return INFINITY;
  }

  v5 = *(v2 + 10);
  if (v5 != 3)
  {
    if (v5 == 2)
    {
      return sub_276CB3210(v2, v3, v4);
    }

    return INFINITY;
  }

  return sub_276CB33F0(v2, v3);
}

void sub_276CB0ED0(size_t *a1, const char *a2, void *a3)
{
  if (!a1)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "void TSSPropertyStoreSetBoxedObjectForProperty(TSSPropertyStoreRef, TSSProperty, id)");
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/styles/TSSPropertyMap.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v10, v7, v9, 1475, 0, "nil map reference");
    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12);
  }

  v13 = sub_276CB3BF4(a1, a2);
  if (v13)
  {
    v14 = v13;
    if (!*(v13 + 10))
    {
    }

    sub_276CB26EC(v14, a2, a3);
  }

  else
  {
    v15[0] = 0;
    v15[1] = 0;
    sub_276CB26EC(v15, a2, a3);
    sub_276CB3C54(a1, v15, 1uLL);
  }
}

void sub_276CB1000(size_t *a1, const char *a2, void *a3)
{
  if (!a1)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "void TSSPropertyStoreSetObjectForProperty(TSSPropertyStoreRef, TSSProperty, id)");
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/styles/TSSPropertyMap.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v10, v7, v9, 1460, 0, "nil map reference");
    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12);
  }

  v13 = sub_276CB3BF4(a1, a2);
  if (v13)
  {
    v14 = v13;
    if (!*(v13 + 10))
    {
    }

    sub_276CB28B4(v14, a2, a3);
  }

  else
  {
    v15[0] = 0;
    v15[1] = 0;
    sub_276CB28B4(v15, a2, a3);
    sub_276CB3C54(a1, v15, 1uLL);
  }
}

void sub_276CB1130(size_t *a1, const char *a2, int a3)
{
  if (!a1)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "void TSSPropertyStoreSetIntValueForProperty(TSSPropertyStoreRef, TSSProperty, int)");
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/styles/TSSPropertyMap.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v10, v7, v9, 1394, 0, "nil map reference");
    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12);
  }

  v13 = sub_276CB3BF4(a1, a2);
  if (v13)
  {

    sub_276CB2A94(v13, a2, a3);
  }

  else
  {
    v14[0] = 0;
    v14[1] = 0;
    sub_276CB2A94(v14, a2, a3);
    sub_276CB3C54(a1, v14, 1uLL);
  }
}

void sub_276CB1248(size_t *a1, const char *a2, float a3)
{
  if (!a1)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "void TSSPropertyStoreSetFloatValueForProperty(TSSPropertyStoreRef, TSSProperty, float)");
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/styles/TSSPropertyMap.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v10, v7, v9, 1408, 0, "nil map reference");
    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12);
  }

  v13 = sub_276CB3BF4(a1, a2);
  if (v13)
  {

    sub_276CB2C6C(v13, a2, a3);
  }

  else
  {
    v14[0] = 0;
    v14[1] = 0;
    sub_276CB2C6C(v14, a2, a3);
    sub_276CB3C54(a1, v14, 1uLL);
  }
}

void sub_276CB1360(size_t *a1, const char *a2, double a3)
{
  if (!a1)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "void TSSPropertyStoreSetDoubleValueForProperty(TSSPropertyStoreRef, TSSProperty, double)");
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/styles/TSSPropertyMap.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v10, v7, v9, 1422, 0, "nil map reference");
    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12);
  }

  v13 = sub_276CB3BF4(a1, a2);
  if (v13)
  {
    v14 = v13;
    if (!*(v13 + 10))
    {
    }

    sub_276CB2E50(v14, a2, a3);
  }

  else
  {
    v15[0] = 0;
    v15[1] = 0;
    sub_276CB2E50(v15, a2, a3);
    sub_276CB3C54(a1, v15, 1uLL);
  }
}

void sub_276CB1490(size_t *a1, const char *a2, double a3)
{
  if (!a1)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "void TSSPropertyStoreSetCGFloatValueForProperty(TSSPropertyStoreRef, TSSProperty, CGFloat)");
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/styles/TSSPropertyMap.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v10, v7, v9, 1437, 0, "nil map reference");
    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12);
  }

  v13 = sub_276CB3BF4(a1, a2);
  v17[0] = 0;
  v17[1] = 0;
  if (v13)
  {
    v14 = v13;
    if (!*(v13 + 10))
    {
    }
  }

  else
  {
    v14 = v17;
  }

  v15 = String(a2);
  if (v15 == 3)
  {
    sub_276CB2E50(v14, a2, a3);
  }

  else if (v15 == 2)
  {
    v16 = a3;
    sub_276CB2C6C(v14, a2, v16);
  }

  if (v14 == v17)
  {
    sub_276CB3C54(a1, v17, 1uLL);
  }
}

void sub_276CB15D4(size_t *a1, const char *a2, void *a3)
{
  v6 = objc_msgSend_count(a3, a2, a3);
  v7 = malloc_type_calloc(v6, 0x10uLL, 0x10820400B94AB5FuLL);
  if (objc_msgSend_count(a3, v8, v9))
  {
    v11 = 0;
    v12 = 0;
    do
    {
      v13 = *&a2[4 * v12];
      v14 = objc_msgSend_objectAtIndexedSubscript_(a3, v10, v12);
      v15 = sub_276CB3BF4(a1, v13);
      if (v15)
      {
        v16 = v15;
        if (!*(v15 + 10))
        {
        }
      }

      else
      {
        v16 = &v7[16 * v11++];
      }

      sub_276CB26EC(v16, v13, v14);
      ++v12;
    }

    while (v12 < objc_msgSend_count(a3, v17, v18));
    sub_276CB3E24(a1, v7, v11);
    if (v11)
    {
      v19 = v7;
      do
      {
        if (!v19[10])
        {
        }

        v19 += 16;
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    sub_276CB3E24(a1, v7, 0);
  }

  free(v7);
}

void sub_276CB172C(int64_t *a1, int64_t *a2)
{
  v3 = *a2;
  if (*a2)
  {
    if (*a1)
    {
      if (v3 >= 1)
      {
        v5 = 0;
        v6 = 0;
        v7 = a2[1];
        v8 = a1[1];
        v9 = v7;
        do
        {
          v10 = a1[1] + 16 * *a1;
          if (v8 >= v10)
          {
LABEL_10:
            if (!v6)
            {
              v6 = malloc_type_calloc(v3 - ((v9 - v7) >> 4), 0x10uLL, 0x10820400B94AB5FuLL);
              v5 = v6;
            }

            *v5 = *v9;
            if (!v5[10])
            {
              v13 = *v5;
            }

            v9 += 16;
            v5 += 16;
          }

          else
          {
            v11 = *(v9 + 8);
            while (1)
            {
              v12 = *(v8 + 8);
              if (v12 == v11)
              {
                break;
              }

              if (v12 < v11)
              {
                v8 += 16;
                if (v8 < v10)
                {
                  continue;
                }
              }

              goto LABEL_10;
            }

            if (!*(v9 + 10))
            {
              v14 = *v9;
            }

            if (!*(v8 + 10))
            {
            }

            v15 = *v9;
            v9 += 16;
            *v8 = v15;
            v8 += 16;
          }

          v3 = *a2;
          v7 = a2[1];
        }

        while (v9 < v7 + 16 * *a2);
        if (v6)
        {
          sub_276CB3C54(a1, v6, (v5 - v6) >> 4);

          free(v6);
        }
      }
    }

    else
    {
      v16 = malloc_type_calloc(v3, 0x10uLL, 0x10820400B94AB5FuLL);
      a1[1] = v16;
      if (v16)
      {
        v18 = *a2;
        v17 = a2[1];
        *a1 = *a2;
        memcpy(v16, v17, 16 * v18);
        v19 = *a1;
        if (*a1)
        {
          v20 = 0;
          v21 = 1;
          do
          {
            v22 = a1[1] + 16 * v20;
            if (!*(v22 + 10))
            {
              v23 = *v22;
              v19 = *a1;
            }

            v20 = v21;
          }

          while (v19 > v21++);
        }
      }
    }
  }
}

void sub_276CB1914(unint64_t *a1, uint64_t a2, double a3)
{
  v4 = *a1;
  if (*a2 >= 1)
  {
    v6 = *(a2 + 8);
    v7 = v6 + 16 * *a2;
    v8 = a1[1];
    do
    {
      v9 = *a1;
      v10 = a1[1] + 16 * *a1;
      while (v8 >= v10)
      {
LABEL_9:
        v6 += 16;
        if (v6 >= v7)
        {
          goto LABEL_17;
        }
      }

      v11 = *(v6 + 8);
      while (1)
      {
        v12 = *(v8 + 8);
        if (v12 == v11)
        {
          break;
        }

        if (v12 < v11)
        {
          v8 += 16;
          if (v8 < v10)
          {
            continue;
          }
        }

        goto LABEL_9;
      }

      if (sub_276CB3978(v8, v6, a3))
      {
        if (!*(v8 + 10))
        {
        }

        *(v8 + 8) = 0;
        --v4;
      }

      v8 += 16;
      v6 += 16;
      v7 = *(a2 + 8) + 16 * *a2;
    }

    while (v6 < v7);
    v9 = *a1;
LABEL_17:
    if (v4 < v9)
    {
      v13 = a1[1];
      if (v9 < 1)
      {
        v15 = a1[1];
      }

      else
      {
        v14 = a1[1];
        v15 = v14;
        do
        {
          if (*(v14 + 8))
          {
            if (v14 != v15)
            {
              *v15 = *v14;
              v9 = *a1;
              v13 = a1[1];
            }

            ++v15;
          }

          v14 += 16;
        }

        while (v14 < v13 + 16 * v9);
      }

      if ((v15 - v13) >> 4 != v4)
      {
        v16 = MEMORY[0x277D81150];
        v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "void TSSPropertyStoreRemovePropertiesFromStore(TSSPropertyStoreRef, TSSPropertyStoreRef)");
        v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/styles/TSSPropertyMap.m");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v20, v17, v19, 2036, 0, "mismatch in entry count");
        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22);
      }
    }
  }

  if (v4)
  {
    v23 = malloc_type_realloc(a1[1], 16 * v4, 0x10820400B94AB5FuLL);
    if (!v23)
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

  if (*a1)
  {
    free(a1[1]);
    v23 = 0;
LABEL_34:
    a1[1] = v23;
  }

LABEL_35:
  *a1 = v4;
}

void sub_276CB1BC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

size_t *sub_276CB1BD8(uint64_t a1, unsigned __int16 a2, _BYTE *a3)
{
  result = sub_276CB3BF4(*(*(a1 + 32) + 8), a2);
  *(*(*(a1 + 40) + 8) + 24) = result != 0;
  *a3 = *(*(*(a1 + 40) + 8) + 24);
  return result;
}

void sub_276CB1DE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_276CB1E00(uint64_t result, int a2)
{
  v2 = *(result + 40);
  v3 = *(*(result + 32) + 8);
  v4 = *(v3 + 24);
  *(v3 + 24) = v4 + 1;
  *(v2 + 4 * v4) = a2;
  return result;
}

void sub_276CB1E1C(unint64_t *a1, uint64_t a2, unint64_t a3)
{
  v3 = a1[1];
  if (v3)
  {
    v4 = a3 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    v8 = 0;
    v9 = 0;
    v10 = *a1;
    do
    {
      if (v10)
      {
        v11 = 0;
        v12 = *(a2 + 4 * v8);
        v13 = 1;
        while (1)
        {
          v14 = v3 + 16 * v11;
          if (v12 == *(v14 + 8))
          {
            break;
          }

          v11 = v13;
          if (v10 <= v13++)
          {
            goto LABEL_15;
          }
        }

        if (!*(v14 + 10))
        {
        }

        if (--v10 > v11)
        {
          *v14 = *(v3 + 16 * v10);
        }
      }

LABEL_15:
      v8 = ++v9;
    }

    while (v9 < a3);
    if (v10 != *a1)
    {
      v16 = a1[1];
      if (v10)
      {
        v17 = malloc_type_realloc(v16, 16 * v10, 0x10820400B94AB5FuLL);
        if (!v17)
        {
          goto LABEL_23;
        }
      }

      else
      {
        free(v16);
        v17 = 0;
      }

      a1[1] = v17;
LABEL_23:
      *a1 = v10;

      sub_276CB3B84(a1);
    }
  }
}

void sub_276CB1F58(unint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v4 = 0;
    v5 = 1;
    do
    {
      v6 = &v2[16 * v4];
      if (!*(v6 + 10))
      {
      }

      v4 = v5;
    }

    while (v3 > v5++);
    v2 = a1[1];
  }

  free(v2);
  *a1 = 0;
  a1[1] = 0;
}

void sub_276CB2060(uint64_t a1, const char *a2)
{
  v2 = a2;
  if ((objc_msgSend_containsProperty_(*(a1 + 32), a2, a2) & 1) == 0)
  {
    v4 = *(*(a1 + 40) + 8);
    v5 = v2;
    sub_276CB1E1C(v4, &v5, 1uLL);
  }
}

void *sub_276CB2148(void *a1, char *a2, uint64_t a3)
{
  v3 = a3;
  v6 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, a3);
  v9 = objc_msgSend_array(MEMORY[0x277CBEB18], v7, v8);
  v12 = objc_msgSend_array(MEMORY[0x277CBEB18], v10, v11);
  v14 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v13, @"TSSPropertyStoreRef %p", a1);
  objc_msgSend_addObject_(v6, v15, v14);
  v17 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v16, @"TSSPropertyStoreRef %p", a2);
  objc_msgSend_addObject_(v9, v18, v17);
  objc_msgSend_addObject_(v12, v19, @" ");
  v56 = 0;
  v57 = &v56;
  v58 = 0x2020000000;
  Object = objc_msgSend_lastObject(v6, v20, v21);
  v59 = objc_msgSend_length(Object, v23, v24);
  v25 = sub_276CB40BC(a1);
  v26 = sub_276CB40BC(a2);
  v28 = objc_msgSend_propertySetByAddingPropertiesFromSet_(v25, v27, v26);
  v54[0] = MEMORY[0x277D85DD0];
  v54[1] = 3221225472;
  v54[2] = sub_276CB4138;
  v54[3] = &unk_27A6EF060;
  v54[8] = a1;
  v54[9] = a2;
  v55 = v3;
  v54[4] = v12;
  v54[5] = v6;
  v54[6] = v9;
  v54[7] = &v56;
  objc_msgSend_enumeratePropertiesUsingBlock_(v28, v29, v54);
  v34 = objc_msgSend_string(MEMORY[0x277CCAB68], v30, v31);
  v35 = 0;
  v36 = &stru_2885E7A20;
  while (v35 < objc_msgSend_count(v12, v32, v33))
  {
    v38 = objc_msgSend_objectAtIndexedSubscript_(v6, v37, v35);
    for (i = objc_msgSend_length(v38, v39, v40); i < v57[3]; i = objc_msgSend_length(v38, v44, v45))
    {
      v38 = objc_msgSend_stringByAppendingString_(v38, v42, @"         ");
    }

    v46 = objc_msgSend_length(v38, v42, v43);
    v48 = v57[3];
    if (v46 > v48)
    {
      v38 = objc_msgSend_substringToIndex_(v38, v47, v48);
    }

    v49 = objc_msgSend_objectAtIndexedSubscript_(v12, v47, v35);
    v51 = objc_msgSend_objectAtIndexedSubscript_(v9, v50, v35);
    objc_msgSend_appendFormat_(v34, v52, @"%@%@ %@   %@", v36, v49, v38, v51);
    ++v35;
    v36 = @"\n";
  }

  _Block_object_dispose(&v56, 8);
  return v34;
}

void sub_276CB23A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_276CB2458(void *a1, void *a2)
{
  v17[3] = *MEMORY[0x277D85DE8];
  v4 = objc_alloc_init(TSSMutablePropertySet);
  v5 = objc_alloc_init(TSSMutablePropertySet);
  v6 = objc_alloc_init(TSSMutablePropertySet);
  v17[0] = v4;
  v17[1] = v5;
  v17[2] = v6;
  v8 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v7, v17, 3);
  v9 = sub_276CB40BC(a1);
  v10 = sub_276CB40BC(a2);
  v12 = objc_msgSend_propertySetByAddingPropertiesFromSet_(v9, v11, v10);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_276CB4440;
  v16[3] = &unk_27A6EF088;
  v16[7] = a1;
  v16[8] = a2;
  v16[4] = v4;
  v16[5] = v5;
  v16[6] = v6;
  objc_msgSend_enumeratePropertiesUsingBlock_(v12, v13, v16);
  v14 = *MEMORY[0x277D85DE8];
  return v8;
}

id sub_276CB26EC(uint64_t a1, const char *a2, void *a3)
{
  if (!qword_280A53960)
  {
    qword_280A53960 = objc_msgSend_null(MEMORY[0x277CBEB68], a2, a3);
  }

  v6 = String(a2);
  if (v6 > 1)
  {
    if (v6 == 2)
    {
      if (a3)
      {
        objc_msgSend_floatValue(a3, v7, v8);
      }

      else
      {
        v20 = INFINITY;
      }

      return sub_276CB2C6C(a1, a2, v20);
    }

    else
    {
      if (v6 != 3)
      {
LABEL_12:
        v11 = MEMORY[0x277D81150];
        v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "void TSSPropertyEntryInit(TSSPropertyEntry *, TSSProperty, NSObject *)");
        v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/styles/TSSPropertyMap.m");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v15, v12, v14, 940, 0, "Unexpected entry type");
        v18 = MEMORY[0x277D81150];

        return objc_msgSend_logBacktraceThrottled(v18, v16, v17);
      }

      if (a3)
      {
        objc_msgSend_doubleValue(a3, v7, v8);
      }

      else
      {
        v10 = INFINITY;
      }

      return sub_276CB2E50(a1, a2, v10);
    }
  }

  else
  {
    if (v6)
    {
      if (v6 == 1)
      {
        if (a3)
        {
          v9 = objc_msgSend_intValue(a3, v7, v8);
        }

        else
        {
          v9 = 0x80000000;
        }

        return sub_276CB2A94(a1, a2, v9);
      }

      goto LABEL_12;
    }

    return sub_276CB28B4(a1, a2, a3);
  }
}

id sub_276CB28B4(uint64_t a1, const char *a2, void *a3)
{
  if (a2 >> 1 >= 0x907)
  {
    v5 = MEMORY[0x277D81150];
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "void TSSPropertyEntryInitWithRetainedObject(TSSPropertyEntry *, TSSProperty, id)");
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/styles/TSSPropertyMap.m");
    v10 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v9, a2);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v11, v6, v8, 139, 0, "Property ID <%{public}@> out of range.", v10);
    objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v12, v13);
  }

  if (String(a2))
  {
    v15 = MEMORY[0x277D81150];
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "void TSSPropertyEntryInitWithRetainedObject(TSSPropertyEntry *, TSSProperty, id)");
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/styles/TSSPropertyMap.m");
    v19 = String(a2);
    v21 = sub_276CB6680(v19, v20);
    v22 = String(a2);
    v24 = sub_276CB6680(0, v23);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v25, v16, v18, 140, 0, "Unexpected property type of '%{public}@' for property '%{public}@'. Expected '%{public}@'.", v21, v22, v24);
    objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v26, v27);
  }

  v28 = a3;
  if (!a3)
  {
    v29 = MEMORY[0x277D81150];
    v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "void TSSPropertyEntryInitWithRetainedObject(TSSPropertyEntry *, TSSProperty, id)");
    v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v31, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/styles/TSSPropertyMap.m");
    v33 = String(a2);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v29, v34, v30, v32, 141, 0, "Illegal to set undefined value for property %d %{public}@", a2, v33);
    objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v35, v36);
    v28 = 0;
  }

  *(a1 + 8) = a2;
  *(a1 + 10) = 0;
  *a1 = v28;

  return v28;
}

uint64_t sub_276CB2A94(uint64_t a1, const char *a2, int a3)
{
  if (a2 >> 1 >= 0x907)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "void TSSPropertyEntryInitWithInt(TSSPropertyEntry *, TSSProperty, int)");
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/styles/TSSPropertyMap.m");
    v11 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v10, a2);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v12, v7, v9, 84, 0, "Property ID <%{public}@> out of range.", v11);
    objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v13, v14);
  }

  result = String(a2);
  if (result != 1)
  {
    v17 = MEMORY[0x277D81150];
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "void TSSPropertyEntryInitWithInt(TSSPropertyEntry *, TSSProperty, int)");
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/styles/TSSPropertyMap.m");
    v21 = String(a2);
    v23 = sub_276CB6680(v21, v22);
    v24 = String(a2);
    v26 = sub_276CB6680(1u, v25);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v27, v18, v20, 85, 0, "Unexpected property type of '%{public}@' for property '%{public}@'. Expected '%{public}@'.", v23, v24, v26);
    result = objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v28, v29);
  }

  if (a3 == 0x80000000)
  {
    v30 = MEMORY[0x277D81150];
    v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "void TSSPropertyEntryInitWithInt(TSSPropertyEntry *, TSSProperty, int)");
    v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v32, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/styles/TSSPropertyMap.m");
    v34 = String(a2);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v30, v35, v31, v33, 86, 0, "Illegal to set undefined value for property %d %{public}@", a2, v34);
    result = objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v36, v37);
  }

  *(a1 + 8) = a2;
  *(a1 + 10) = 1;
  *a1 = a3;
  return result;
}

uint64_t sub_276CB2C6C(uint64_t a1, const char *a2, float a3)
{
  if (a2 >> 1 >= 0x907)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "void TSSPropertyEntryInitWithFloat(TSSPropertyEntry *, TSSProperty, float)");
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/styles/TSSPropertyMap.m");
    v11 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v10, a2);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v12, v7, v9, 95, 0, "Property ID <%{public}@> out of range.", v11);
    objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v13, v14);
  }

  result = String(a2);
  if (result != 2)
  {
    v17 = MEMORY[0x277D81150];
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "void TSSPropertyEntryInitWithFloat(TSSPropertyEntry *, TSSProperty, float)");
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/styles/TSSPropertyMap.m");
    v21 = String(a2);
    v23 = sub_276CB6680(v21, v22);
    v24 = String(a2);
    v26 = sub_276CB6680(2u, v25);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v27, v18, v20, 96, 0, "Unexpected property type of '%{public}@' for property '%{public}@'. Expected '%{public}@'.", v23, v24, v26);
    result = objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v28, v29);
  }

  if (a3 == INFINITY)
  {
    v30 = MEMORY[0x277D81150];
    v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "void TSSPropertyEntryInitWithFloat(TSSPropertyEntry *, TSSProperty, float)");
    v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v32, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/styles/TSSPropertyMap.m");
    v34 = String(a2);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v30, v35, v31, v33, 97, 0, "Illegal to set undefined value for property %d %{public}@", a2, v34);
    result = objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v36, v37);
  }

  *(a1 + 8) = a2;
  *(a1 + 10) = 2;
  *a1 = a3;
  return result;
}

uint64_t sub_276CB2E50(uint64_t a1, const char *a2, double a3)
{
  if (a2 >> 1 >= 0x907)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "void TSSPropertyEntryInitWithDouble(TSSPropertyEntry *, TSSProperty, double)");
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/styles/TSSPropertyMap.m");
    v11 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v10, a2);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v12, v7, v9, 125, 0, "Property ID <%{public}@> out of range.", v11);
    objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v13, v14);
  }

  result = String(a2);
  if (result != 3)
  {
    v17 = MEMORY[0x277D81150];
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "void TSSPropertyEntryInitWithDouble(TSSPropertyEntry *, TSSProperty, double)");
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/styles/TSSPropertyMap.m");
    v21 = String(a2);
    v23 = sub_276CB6680(v21, v22);
    v24 = String(a2);
    v26 = sub_276CB6680(3u, v25);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v27, v18, v20, 126, 0, "Unexpected property type of '%{public}@' for property '%{public}@'. Expected '%{public}@'.", v23, v24, v26);
    result = objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v28, v29);
  }

  if (a3 == INFINITY)
  {
    v30 = MEMORY[0x277D81150];
    v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "void TSSPropertyEntryInitWithDouble(TSSPropertyEntry *, TSSProperty, double)");
    v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v32, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/styles/TSSPropertyMap.m");
    v34 = String(a2);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v30, v35, v31, v33, 127, 0, "Illegal to set undefined value for property %d %{public}@", a2, v34);
    result = objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v36, v37);
  }

  *(a1 + 8) = a2;
  *(a1 + 10) = 3;
  *a1 = a3;
  return result;
}

uint64_t sub_276CB3034(unsigned int *a1, const char *a2)
{
  if (!a1)
  {
    v3 = MEMORY[0x277D81150];
    v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "int TSSPropertyEntryGetIntValue(const TSSPropertyEntry *)");
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/styles/TSSPropertyMap.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v3, v7, v4, v6, 946, 0, "invalid nil value for '%{public}s'", "entry");
    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v8, v9);
  }

  v10 = *(a1 + 10);
  if ((v10 - 2) < 2)
  {
    goto LABEL_6;
  }

  if (v10 != 1)
  {
    if (*(a1 + 10))
    {
      v20 = MEMORY[0x277D81150];
      v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "int TSSPropertyEntryGetIntValue(const TSSPropertyEntry *)");
      v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/styles/TSSPropertyMap.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v24, v21, v23, 960, 0, "Unexpected entry type", v34);
      goto LABEL_10;
    }

LABEL_6:
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "int TSSPropertyEntryGetIntValue(const TSSPropertyEntry *)");
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/styles/TSSPropertyMap.m");
    v35 = sub_276CB6680(*(a1 + 10), v15);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v16, v12, v14, 957, 0, "Asked for int value of a %@-valued property.", v35);
LABEL_10:
    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18);
    goto LABEL_11;
  }

  result = *a1;
  if (result == 0x80000000)
  {
LABEL_11:
    v25 = MEMORY[0x277D81150];
    v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "int TSSPropertyEntryGetIntValue(const TSSPropertyEntry *)");
    v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/styles/TSSPropertyMap.m");
    v29 = *(a1 + 4);
    v30 = String(v29);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v25, v31, v26, v28, 964, 0, "Undefined value in entry for property %d %@", v29, v30);
    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v32, v33);
    return 0x80000000;
  }

  return result;
}

float sub_276CB3210(uint64_t a1, const char *a2, double a3)
{
  if (!a1)
  {
    v4 = MEMORY[0x277D81150];
    v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "float TSSPropertyEntryGetFloatValue(const TSSPropertyEntry *)");
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/styles/TSSPropertyMap.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v8, v5, v7, 969, 0, "invalid nil value for '%{public}s'", "entry");
    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v9, v10);
  }

  v11 = *(a1 + 10);
  if (v11 < 2)
  {
    goto LABEL_6;
  }

  if (v11 != 2)
  {
    if (v11 != 3)
    {
      v20 = MEMORY[0x277D81150];
      v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "float TSSPropertyEntryGetFloatValue(const TSSPropertyEntry *)");
      v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/styles/TSSPropertyMap.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v24, v21, v23, 983, 0, "Unexpected entry type", v35);
      goto LABEL_10;
    }

LABEL_6:
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "float TSSPropertyEntryGetFloatValue(const TSSPropertyEntry *)");
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/styles/TSSPropertyMap.m");
    v36 = sub_276CB6680(*(a1 + 10), v16);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v17, v13, v15, 980, 0, "Asked for float value of a %@-valued property.", v36);
LABEL_10:
    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19);
LABEL_11:
    v25 = MEMORY[0x277D81150];
    v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "float TSSPropertyEntryGetFloatValue(const TSSPropertyEntry *)", a3);
    v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/styles/TSSPropertyMap.m");
    v29 = *(a1 + 8);
    v30 = String(v29);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v25, v31, v26, v28, 987, 0, "Undefined value in entry for property %d %{public}@", v29, v30);
    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v32, v33);
    LODWORD(a3) = 2139095040;
    return *&a3;
  }

  LODWORD(a3) = *a1;
  if (*a1 == INFINITY)
  {
    goto LABEL_11;
  }

  return *&a3;
}

double sub_276CB33F0(uint64_t a1, const char *a2)
{
  if (!a1)
  {
    v3 = MEMORY[0x277D81150];
    v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "double TSSPropertyEntryGetDoubleValue(const TSSPropertyEntry *)");
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/styles/TSSPropertyMap.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v3, v7, v4, v6, 992, 0, "invalid nil value for '%{public}s'", "entry");
    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v8, v9);
  }

  v10 = *(a1 + 10);
  if (v10 >= 3)
  {
    if (v10 == 3)
    {
      result = *a1;
      if (*a1 != INFINITY)
      {
        return result;
      }

      goto LABEL_10;
    }

    v20 = MEMORY[0x277D81150];
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "double TSSPropertyEntryGetDoubleValue(const TSSPropertyEntry *)");
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/styles/TSSPropertyMap.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v24, v21, v23, 1006, 0, "Unexpected entry type", v34);
  }

  else
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "double TSSPropertyEntryGetDoubleValue(const TSSPropertyEntry *)");
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/styles/TSSPropertyMap.m");
    v35 = sub_276CB6680(*(a1 + 10), v15);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v16, v12, v14, 1003, 0, "Asked for double value of a %@-valued property.", v35);
  }

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18);
LABEL_10:
  v25 = MEMORY[0x277D81150];
  v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "double TSSPropertyEntryGetDoubleValue(const TSSPropertyEntry *)", result);
  v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/styles/TSSPropertyMap.m");
  v29 = *(a1 + 8);
  v30 = String(v29);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v25, v31, v26, v28, 1010, 0, "Undefined value in entry for property %d %{public}@", v29, v30);
  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v32, v33);
  return INFINITY;
}

uint64_t sub_276CB35C8(uint64_t *a1, const char *a2)
{
  if (!a1)
  {
    v3 = MEMORY[0x277D81150];
    v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "id TSSPropertyEntryGetObjectValue(const TSSPropertyEntry *)");
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/styles/TSSPropertyMap.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v3, v7, v4, v6, 1015, 0, "invalid nil value for '%{public}s'", "entry");
    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v8, v9);
  }

  if (*(a1 + 10) - 1 >= 3)
  {
    if (!*(a1 + 10))
    {
      result = *a1;
      if (*a1)
      {
        return result;
      }

      goto LABEL_10;
    }

    v19 = MEMORY[0x277D81150];
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "id TSSPropertyEntryGetObjectValue(const TSSPropertyEntry *)");
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/styles/TSSPropertyMap.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v23, v20, v22, 1029, 0, "Unexpected entry type", v33);
  }

  else
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "id TSSPropertyEntryGetObjectValue(const TSSPropertyEntry *)");
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/styles/TSSPropertyMap.m");
    v34 = sub_276CB6680(*(a1 + 10), v14);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v15, v11, v13, 1026, 0, "Asked for object value of a %@-valued property.", v34);
  }

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17);
LABEL_10:
  v24 = MEMORY[0x277D81150];
  v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "id TSSPropertyEntryGetObjectValue(const TSSPropertyEntry *)");
  v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/styles/TSSPropertyMap.m");
  v28 = *(a1 + 4);
  v29 = String(v28);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v24, v30, v25, v27, 1033, 0, "Undefined value in entry for property %d %{public}@", v28, v29);
  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v31, v32);
  return 0;
}

uint64_t sub_276CB3794(unsigned int *a1, const char *a2, uint64_t a3, double a4)
{
  if (!a1)
  {
    v5 = MEMORY[0x277D81150];
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "id TSSPropertyEntryGetBoxedObjectValue(const TSSPropertyEntry *)");
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/styles/TSSPropertyMap.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v9, v6, v8, 1038, 0, "invalid nil value for '%{public}s'", "entry");
    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v10, v11);
  }

  v12 = *(a1 + 10);
  if (v12 > 1)
  {
    if (v12 == 2)
    {
      LODWORD(a4) = *a1;
      result = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], a2, a3, a4);
      if (result)
      {
        return result;
      }

      goto LABEL_16;
    }

    if (v12 == 3)
    {
      result = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], a2, a3, *a1);
      if (result)
      {
        return result;
      }

      goto LABEL_16;
    }
  }

  else
  {
    if (!*(a1 + 10))
    {
      result = *a1;
      if (*a1)
      {
        return result;
      }

      goto LABEL_16;
    }

    if (v12 == 1)
    {
      result = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], a2, *a1);
      if (result)
      {
        return result;
      }

      goto LABEL_16;
    }
  }

  v14 = MEMORY[0x277D81150];
  v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "id TSSPropertyEntryGetBoxedObjectValue(const TSSPropertyEntry *)");
  v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/styles/TSSPropertyMap.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v18, v15, v17, 1057, 0, "Unexpected entry type");
  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20);
LABEL_16:
  v21 = MEMORY[0x277D81150];
  v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "id TSSPropertyEntryGetBoxedObjectValue(const TSSPropertyEntry *)");
  v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/styles/TSSPropertyMap.m");
  v25 = *(a1 + 4);
  v26 = String(v25);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v21, v27, v22, v24, 1061, 0, "Undefined value in entry for property %d %{public}@", v25, v26);
  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v28, v29);
  return 0;
}

BOOL sub_276CB3978(uint64_t a1, uint64_t a2, double a3)
{
  if (*(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  v28 = v3;
  v12 = *(a1 + 10);
  if (v12 != *(a2 + 10))
  {
    return 0;
  }

  if (*(a1 + 10) <= 1u)
  {
    if (*(a1 + 10))
    {
      v13 = sub_276CB3034(a1, a2);
      if (v13 == sub_276CB3034(a2, v14))
      {
        return 1;
      }
    }

    else
    {
      v25 = *a1;
      if (v25 == *a2 || (objc_msgSend_isEqual_(v25, a2, *a2) & 1) != 0)
      {
        return 1;
      }
    }

    return 0;
  }

  if (v12 != 2)
  {
    if (v12 == 3)
    {
      v16 = sub_276CB33F0(a1, a2);
      return v16 == sub_276CB33F0(a2, v17);
    }

    v18 = MEMORY[0x277D81150];
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "BOOL TSSPropertyEntryEqual(const TSSPropertyEntry *, const TSSPropertyEntry *)", v10, v9, v6, v5, v4, v28, v7, v8);
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/styles/TSSPropertyMap.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v18, v22, v19, v21, 1113, 0, "Unexpected entry type");
    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24);
    return 0;
  }

  *&v26 = sub_276CB3210(a1, a2, a3);
  return *&v26 == sub_276CB3210(a2, v27, v26);
}

void *sub_276CB3B00(size_t a1)
{
  v2 = malloc_type_malloc(0x10uLL, 0x10200405730B0C9uLL);
  v3 = v2;
  if (v2)
  {
    *v2 = a1;
    if (a1)
    {
      v4 = malloc_type_calloc(a1, 0x10uLL, 0x10820400B94AB5FuLL);
      v3[1] = v4;
      if (!v4)
      {
        free(v3);
        return 0;
      }
    }

    else
    {
      v2[1] = 0;
    }
  }

  return v3;
}

uint64_t sub_276CB3B84(uint64_t a1)
{
  if (*a1 < 2uLL)
  {
    return 1;
  }

  v1 = mergesort(*(a1 + 8), *a1, 0x10uLL, sub_276CB3AF0);
  if (!v1)
  {
    return 1;
  }

  NSLog(&cfstr_PTsspropertyst.isa, v1);
  return 0;
}

size_t *sub_276CB3BF4(size_t *result, unsigned __int16 a2)
{
  if (result)
  {
    v3 = result[1];
    if (v3)
    {
      v4[0] = 0;
      v4[1] = a2;
      return bsearch(v4, v3, *result, 0x10uLL, sub_276CB3AF0);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_276CB3C54(uint64_t a1, const char *a2, size_t a3)
{
  if (a1)
  {
    if (a2)
    {
      v4 = a3;
      if (a3)
      {
        v6 = *(a1 + 8);
        if ((v6 != 0) == (*a1 == 0))
        {
          v7 = MEMORY[0x277D81150];
          v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "void p_TSSPropertyStoreAddNewEntries(TSSPropertyStore *, TSSPropertyEntry *, NSUInteger)");
          v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/styles/TSSPropertyMap.m");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v11, v8, v10, 1340, 0, "mEntries should be non-nil iff mEntryCount is nonzero");
          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13);
          v6 = *(a1 + 8);
        }

        v14 = v6 ? *a1 : 0;
        v15 = malloc_type_calloc(v14 + v4, 0x10uLL, 0x10820400B94AB5FuLL);
        if (v15)
        {
          v16 = v15;
          *a1 += v4;
          v17 = &v15[16 * v14];
          memcpy(v17, a2, 16 * v4);
          qsort(v17, v4, 0x10uLL, sub_276CB3AF0);
          if (v14)
          {
            v18 = *(a1 + 8);
            v19 = v16;
            while (1)
            {
              v20 = 0;
              v21 = v18;
              v22 = 8;
              while (*&v18[v22] <= v17[4])
              {
                ++v20;
                v22 += 16;
                if (v14 == v20)
                {
                  v20 = v14;
                  goto LABEL_17;
                }
              }

              if (!v20)
              {
                goto LABEL_18;
              }

LABEL_17:
              memcpy(v19, v18, 16 * v20);
LABEL_18:
              v14 -= v20;
              if (!v14)
              {
                break;
              }

              v23 = &v19[16 * v20];
              v18 = &v21[16 * v20];
              v19 = v23 + 16;
              v24 = *v17;
              v17 += 8;
              *v23 = v24;
              if (!--v4)
              {
                if (v21)
                {
                  memcpy(v23 + 16, v18, 16 * v14);
                }

                break;
              }
            }
          }

          free(*(a1 + 8));
          *(a1 + 8) = v16;
        }
      }
    }
  }
}

void sub_276CB3E24(size_t *a1, const char *a2, size_t a3)
{
  if (a3)
  {
    v4 = (a2 + 8);
    v5 = 16 * a3;
    v6 = (a2 + 8);
    do
    {
      v7 = *v6;
      v6 += 8;
      if (sub_276CB3BF4(a1, v7))
      {
        v9 = MEMORY[0x277D81150];
        v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "void i_TSSPropertyStoreAddNewEntries(TSSPropertyStoreRef, TSSPropertyEntry *, NSUInteger)");
        v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/styles/TSSPropertyMap.m");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v13, v10, v12, 1501, 0, "Error: found duplicate property");
        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15);
      }

      if (!*(v4 + 2))
      {
        v16 = *(v4 - 1);
      }

      v4 = v6;
      v5 -= 16;
    }

    while (v5);
  }

  sub_276CB3C54(a1, a2, a3);
}

uint64_t sub_276CB3F28(void **a1, const char *a2)
{
  v3 = *(a1 + 4);
  v4 = *(a1 + 10);
  if (v4 > 1)
  {
    if (v4 != 2)
    {
      if (v4 == 3)
      {
        v8 = MEMORY[0x277CCACA8];
        v9 = String(*(a1 + 4));
        return objc_msgSend_stringWithFormat_(v8, v10, @"double  %3ld (%@) = %g", v3, v9, *a1);
      }

      goto LABEL_8;
    }

    v26 = MEMORY[0x277CCACA8];
    v27 = String(*(a1 + 4));
    return objc_msgSend_stringWithFormat_(v26, v28, @"float   %3ld (%@) = %f", v3, v27, *a1);
  }

  else
  {
    if (*(a1 + 10))
    {
      if (v4 == 1)
      {
        v5 = MEMORY[0x277CCACA8];
        v29 = String(*(a1 + 4));
        return objc_msgSend_stringWithFormat_(v5, v6, @"int     %3ld (%@) = %d", v3, v29, *a1);
      }

LABEL_8:
      v11 = MEMORY[0x277D81150];
      v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "NSString *TSSPropertyEntryDescription(TSSPropertyEntry *)");
      v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/styles/TSSPropertyMap.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v15, v12, v14, 1774, 0, "Invalid property type value");
      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17);
      return 0;
    }

    v18 = MEMORY[0x277CCACA8];
    v19 = String(*(a1 + 4));
    v20 = *a1;
    v21 = objc_opt_class();
    v22 = NSStringFromClass(v21);
    v30 = objc_msgSend_description(*a1, v23, v24);
    return objc_msgSend_stringWithFormat_(v18, v25, @"%@  %3ld (%@) = %p (%@) '%@'", @"Object", v3, v19, v20, v22, v30);
  }
}

TSSMutablePropertySet *sub_276CB40BC(void *a1)
{
  v3 = objc_alloc_init(TSSMutablePropertySet);
  if (a1 && *a1)
  {
    v4 = 0;
    v5 = 1;
    do
    {
      objc_msgSend_addProperty_(v3, v2, *(a1[1] + 16 * v4 + 8));
      v4 = v5;
    }

    while (*a1 > v5++);
  }

  return v3;
}

unint64_t sub_276CB4138(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = a2;
  v71 = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, a3);
  v8 = objc_msgSend_array(MEMORY[0x277CBEB18], v6, v7);
  v9 = sub_276CB3BF4(*(a1 + 64), v3);
  v10 = sub_276CB3BF4(*(a1 + 72), v3);
  v14 = v10;
  v15 = @" ";
  if (v9)
  {
    if (v10)
    {
      if (sub_276CB3978(v9, v10, v13))
      {
        v16 = @" ";
      }

      else
      {
        v16 = @"!";
      }
    }

    else
    {
      v16 = @"+";
    }

    v17 = sub_276CB3F28(v9, v11);
    v19 = objc_msgSend_componentsSeparatedByString_(v17, v18, @"\n");
    objc_msgSend_addObjectsFromArray_(v5, v20, v19);
    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v21, &v66, v70, 16);
    if (v22)
    {
      v23 = v22;
      v24 = *v67;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v67 != v24)
          {
            objc_enumerationMutation(v5);
          }

          v26 = *(*(*(a1 + 56) + 8) + 24);
          v27 = objc_msgSend_length(*(*(&v66 + 1) + 8 * i), v11, v12);
          if (v26 <= v27)
          {
            v28 = v27;
          }

          else
          {
            v28 = v26;
          }

          *(*(*(a1 + 56) + 8) + 24) = v28;
        }

        v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v11, &v66, v70, 16);
      }

      while (v23);
    }

    v15 = v16;
    if (v14)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v16 = @"-";
    if (v10)
    {
LABEL_20:
      v29 = sub_276CB3F28(v14, v11);
      v31 = objc_msgSend_componentsSeparatedByString_(v29, v30, @"\n");
      objc_msgSend_addObjectsFromArray_(v8, v32, v31);
      v15 = v16;
    }
  }

  v33 = objc_msgSend_count(v5, v11, v12);
  if (v33 < objc_msgSend_count(v8, v34, v35))
  {
    do
    {
      objc_msgSend_addObject_(v5, v36, &stru_2885E7A20);
      v40 = objc_msgSend_count(v5, v38, v39);
    }

    while (v40 < objc_msgSend_count(v8, v41, v42));
  }

  v43 = objc_msgSend_count(v8, v36, v37);
  if (v43 < objc_msgSend_count(v5, v44, v45))
  {
    do
    {
      objc_msgSend_addObject_(v8, v46, &stru_2885E7A20);
      v50 = objc_msgSend_count(v8, v48, v49);
    }

    while (v50 < objc_msgSend_count(v5, v51, v52));
  }

  result = objc_msgSend_count(v5, v46, v47);
  if (result)
  {
    for (j = 0; j < result; ++j)
    {
      if ((*(a1 + 80) & 1) != 0 || (objc_msgSend_isEqualToString_(v15, v54, @" ") & 1) == 0)
      {
        objc_msgSend_addObject_(*(a1 + 32), v54, v15);
        v57 = *(a1 + 40);
        v59 = objc_msgSend_objectAtIndexedSubscript_(v5, v58, j);
        objc_msgSend_addObject_(v57, v60, v59);
        v61 = *(a1 + 48);
        v63 = objc_msgSend_objectAtIndexedSubscript_(v8, v62, j);
        objc_msgSend_addObject_(v61, v64, v63);
      }

      result = objc_msgSend_count(v5, v54, v56);
    }
  }

  v65 = *MEMORY[0x277D85DE8];
  return result;
}

size_t *sub_276CB4440(uint64_t a1, uint64_t a2)
{
  v4 = sub_276CB3BF4(*(a1 + 56), a2);
  result = sub_276CB3BF4(*(a1 + 64), a2);
  if (v4)
  {
    if (result)
    {
      v7 = sub_276CB3BF4(*(a1 + 56), a2);
      v8 = sub_276CB3BF4(*(a1 + 64), a2);
      result = sub_276CB3978(v7, v8, v9);
      if (result)
      {
        return result;
      }

      v10 = 32;
    }

    else
    {
      v10 = 40;
    }
  }

  else
  {
    if (!result)
    {
      return result;
    }

    v10 = 48;
  }

  v11 = *(a1 + v10);

  return objc_msgSend_addProperty_(v11, v6, a2);
}

id sub_276CB47B0(uint64_t a1, id a2)
{
  if (*(a1 + 32) == a2)
  {
    a2 = *(a1 + 40);
  }

  return a2;
}

BOOL sub_276CB4B00(void *a1, const char *a2)
{
  v2 = String(a1, a2);
  v8 = (objc_msgSend_isEqualToString_(v2, v3, @"imported") & 1) == 0 && (objc_msgSend_isEqualToString_(v2, v4, @"character") & 1) == 0 && (objc_msgSend_isEqualToString_(v2, v5, @"list") & 1) == 0 && (objc_msgSend_isEqualToString_(v2, v6, @"paragraph") & 1) == 0 && !objc_msgSend_isEqualToString_(v2, v7, @"column");

  return v8;
}

uint64_t sub_276CB4E3C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_class();
  v5 = *(a1 + 32);
  if (v4 == objc_opt_class())
  {
    v9 = objc_msgSend_contentTag(v3, v6, v7);
    isEqualToString = objc_msgSend_isEqualToString_(v9, v10, *(a1 + 40));
  }

  else
  {
    isEqualToString = 0;
  }

  return isEqualToString;
}

uint64_t sub_276CB509C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_class();
  v5 = *(a1 + 32);
  if (v4 == objc_opt_class())
  {
    v9 = objc_msgSend_name(v3, v6, v7);
    isEqualToString = objc_msgSend_isEqualToString_(v9, v10, *(a1 + 40));
  }

  else
  {
    isEqualToString = 0;
  }

  return isEqualToString;
}

uint64_t sub_276CB5114(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = objc_msgSend_styleIdentifier(a2, a2, a3);
  isEqualToString = objc_msgSend_isEqualToString_(v4, v5, *(a1 + 32));

  return isEqualToString;
}

id sub_276CB5C08(uint64_t a1, const char *a2)
{
  v3 = objc_msgSend__mappedStyleForStyle_depth_(*(a1 + 32), a2, a2, *(a1 + 48) + 1);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_msgSend_addObject_(*(a1 + 40), v4, v3);
  }

  return v3;
}

void sub_276CB5C80(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  v7 = a4;
  if (!a3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = (*(*(a1 + 40) + 16))();
      objc_msgSend_setObject_forProperty_(*(a1 + 32), v10, v9, a2);
    }

    else if (objc_msgSend_conformsToProtocol_(v7, v8, &unk_2885FD7C0))
    {
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = sub_276CB5D90;
      v12[3] = &unk_27A6EF178;
      v13 = *(a1 + 40);
      objc_msgSend_replaceReferencedStylesUsingBlock_(v7, v11, v12);
    }
  }
}

void sub_276CB5DA0(uint64_t a1, const char *a2)
{
  if (objc_msgSend_definesProperty_(*(a1 + 32), a2, a2) && (objc_msgSend_definesProperty_(*(a1 + 40), v4, a2) & 1) == 0)
  {
    v6 = objc_msgSend_valueForProperty_(*(a1 + 32), v5, a2);
    if (v6)
    {
      v15 = v6;
      v9 = objc_msgSend_null(MEMORY[0x277CBEB68], v7, v8);

      v6 = v15;
      if (v15 != v9)
      {
        v12 = *(a1 + 48);
        v13 = objc_msgSend_null(MEMORY[0x277CBEB68], v10, v11);
        objc_msgSend_setObject_forProperty_(v12, v14, v13, a2);

        v6 = v15;
      }
    }
  }
}

void sub_276CB5E80(uint64_t a1, uint64_t a2, int a3, void *a4, _BYTE *a5)
{
  v9 = a4;
  if (a3)
  {
    goto LABEL_2;
  }

  v25 = v9;
  objc_opt_class();
  v10 = TSUDynamicCast();
  if (v10)
  {
    v13 = v10;
    if (v10 != *(a1 + 32))
    {

      v9 = v25;
LABEL_2:
      *(*(*(a1 + 64) + 8) + 24) = 1;
      *a5 = 1;
      goto LABEL_3;
    }

    v19 = objc_msgSend_parent(*(a1 + 40), v11, v12);
    v21 = objc_msgSend_valueForProperty_(v19, v20, a2);
    v24 = objc_msgSend_parent(*(a1 + 48), v22, v23);

    v9 = v25;
    if (v21 != v24)
    {
      goto LABEL_2;
    }
  }

  else
  {
    objc_opt_class();
    v16 = TSUDynamicCast();
    v9 = v25;
    if (!v16)
    {
      goto LABEL_2;
    }

    if (objc_msgSend_isVariation(v16, v14, v15) && objc_msgSend_indexOfObjectIdenticalTo_(*(a1 + 56), v17, v16) == 0x7FFFFFFFFFFFFFFFLL)
    {
      objc_msgSend_addObject_(*(a1 + 56), v18, v16);
    }

    v9 = v25;
  }

LABEL_3:
}

void sub_276CB6068(uint64_t a1, void *a2)
{
  key = a2;
  v4 = qword_280A53968;
  if (!qword_280A53968)
  {
    if (qword_280A53970)
    {
      v5 = MEMORY[0x277D81150];
      v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, "void p_registerProperty(TSSProperty, NSString *__strong)");
      v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/styles/TSSProperties.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v9, v6, v8, 35, 0, "Two-way dictionaries not set up correctly.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v10, v11);
    }

    qword_280A53968 = CFDictionaryCreateMutable(0, 4622, MEMORY[0x277CBF138], 0);
    qword_280A53970 = CFDictionaryCreateMutable(0, 4622, 0, MEMORY[0x277CBF150]);
    v4 = qword_280A53968;
  }

  Count = CFDictionaryGetCount(v4);
  CFDictionaryAddValue(qword_280A53968, key, a1);
  if (CFDictionaryGetCount(qword_280A53968) != Count + 1)
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "void p_registerProperty(TSSProperty, NSString *__strong)");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/styles/TSSProperties.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v18, v15, v17, 47, 0, "Likely collision in string to property dictionary around %@ (%d)", key, a1);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20);
  }

  v21 = CFDictionaryGetCount(qword_280A53970);
  CFDictionaryAddValue(qword_280A53970, a1, key);
  if (CFDictionaryGetCount(qword_280A53970) != v21 + 1)
  {
    v23 = MEMORY[0x277D81150];
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "void p_registerProperty(TSSProperty, NSString *__strong)");
    v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/styles/TSSProperties.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v23, v27, v24, v26, 52, 0, "Likely collision in property to string dictionary around %@ (%d)", key, a1);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v28, v29);
  }

  v30 = CFDictionaryGetCount(qword_280A53968);
  if (v30 != CFDictionaryGetCount(qword_280A53970))
  {
    v32 = MEMORY[0x277D81150];
    v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v31, "void p_registerProperty(TSSProperty, NSString *__strong)");
    v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v34, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/styles/TSSProperties.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v32, v36, v33, v35, 55, 0, "Two-way string to property id dictionaries are out of sync.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v37, v38);
  }

  v39 = dword_280A53978;
  if (dword_280A53978 <= a1)
  {
    v39 = a1;
  }

  dword_280A53978 = v39;
}

BOOL sub_276CB6360(void *a1, _DWORD *a2)
{
  v3 = a1;
  if (qword_280A54B98 != -1)
  {
    sub_276CE1790();
  }

  value = 0;
  ValueIfPresent = CFDictionaryGetValueIfPresent(qword_280A53968, v3, &value);
  if (a2)
  {
    *a2 = value;
  }

  v5 = ValueIfPresent != 0;

  return v5;
}

uint64_t String(void *a1)
{
  v1 = a1;
  v12 = 0;
  if (!sub_276CB6360(v1, &v12))
  {
    v3 = MEMORY[0x277D81150];
    v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v2, "TSSProperty TSSPropertyFromString(NSString *__strong _Nonnull)");
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/styles/TSSProperties.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v3, v7, v4, v6, 104, 0, "Unknown property key string: %@", v1);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v8, v9);
  }

  v10 = v12;

  return v10;
}

BOOL sub_276CB64A4(int a1, void *a2)
{
  if (qword_280A54B98 != -1)
  {
    sub_276CE1790();
  }

  value = 0;
  ValueIfPresent = CFDictionaryGetValueIfPresent(qword_280A53970, a1, &value);
  if (a2)
  {
    *a2 = value;
  }

  return ValueIfPresent != 0;
}

id String(uint64_t a1)
{
  v13 = 0;
  v2 = sub_276CB64A4(a1, &v13);
  v4 = v13;
  if (!v2)
  {
    v5 = MEMORY[0x277D81150];
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, "NSString * _Nullable TSSStringFromProperty(TSSProperty)");
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/styles/TSSProperties.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v9, v6, v8, 127, 0, "Unknown property key integer %u", a1);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v10, v11);
  }

  return v4;
}

BOOL sub_276CB65F8(_BOOL8 result)
{
  if (result)
  {
    return sub_276CB64A4(result, 0);
  }

  return result;
}

uint64_t String(int a1)
{
  if (qword_280A54B90 != -1)
  {
    sub_276CE17A4();
  }

  return byte_280A5397C[a1];
}

void sub_276CB664C()
{
  for (i = 0; i != 1009; ++i)
  {
    byte_280A5397C[dword_276CEB178[i]] = BYTE2(dword_276CEB178[i]);
  }
}

__CFString *sub_276CB6680(unsigned int a1, const char *a2)
{
  if (a1 < 4)
  {
    return off_27A6EF1E8[a1];
  }

  v3 = MEMORY[0x277D81150];
  v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "NSString * _Nonnull TSSStringFromValueType(TSSValueType)");
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/styles/TSSProperties.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v3, v7, v4, v6, 175, 0, "Unexpected entry type.");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v8, v9);
  return 0;
}

void sub_276CB6748()
{
  sub_276CB6068(0, @"invalidProperty");
  sub_276CB6068(1, @"testString");
  sub_276CB6068(2, @"testDate");
  sub_276CB6068(3, @"testObject");
  sub_276CB6068(4, @"testObject2");
  sub_276CB6068(5, @"testTSPObject");
  sub_276CB6068(6, @"testTSPContainedObject");
  sub_276CB6068(7, @"testStyle");
  sub_276CB6068(8, @"testBool");
  sub_276CB6068(9, @"testInteger");
  sub_276CB6068(10, @"testInteger2");
  sub_276CB6068(11, @"testEnum");
  sub_276CB6068(12, @"testFloat");
  sub_276CB6068(13, @"testFloat2");
  sub_276CB6068(14, @"testDouble");
  sub_276CB6068(15, @"testDouble2");
  sub_276CB6068(16, @"fontName");
  sub_276CB6068(17, @"fontSize");
  sub_276CB6068(18, @"fontColor");
  sub_276CB6068(19, @"bold");
  sub_276CB6068(20, @"italic");
  sub_276CB6068(21, @"capitalization");
  sub_276CB6068(22, @"capitalizationUsesLinguistics");
  sub_276CB6068(23, @"underline");
  sub_276CB6068(24, @"underlineWidth");
  sub_276CB6068(25, @"underlineColor");
  sub_276CB6068(26, @"word_underline");
  sub_276CB6068(27, @"strikethru");
  sub_276CB6068(28, @"strikethruWidth");
  sub_276CB6068(29, @"strikethruColor");
  sub_276CB6068(30, @"word_strikethrough");
  sub_276CB6068(31, @"hidden");
  sub_276CB6068(32, @"outline");
  sub_276CB6068(33, @"outlineColor");
  sub_276CB6068(34, @"baselineShift");
  sub_276CB6068(35, @"kerning");
  sub_276CB6068(36, @"tracking");
  sub_276CB6068(37, @"superscript");
  sub_276CB6068(38, @"textBackground");
  sub_276CB6068(39, @"language");
  sub_276CB6068(40, @"textShadow");
  sub_276CB6068(41, @"ligatures");
  sub_276CB6068(42, @"hotKey");
  sub_276CB6068(43, @"coreTextFontFeatures");
  sub_276CB6068(44, @"writingDirection");
  sub_276CB6068(45, @"emphasisMarks");
  sub_276CB6068(46, @"compatibilityFont");
  sub_276CB6068(47, @"isNamedPointSize");
  sub_276CB6068(48, @"characterFill");
  sub_276CB6068(49, @"characterFillShouldFillTextContainer");
  sub_276CB6068(50, @"characterStroke");
  sub_276CB6068(51, @"fontSizeDelta");
  sub_276CB6068(52, @"pseudoCapitalization");
  sub_276CB6068(53, @"pseudoFont");
  sub_276CB6068(80, @"firstLineIndent");
  sub_276CB6068(81, @"leftIndent");
  sub_276CB6068(82, @"rightIndent");
  sub_276CB6068(83, @"defaultTabStops");
  sub_276CB6068(84, @"tabs");
  sub_276CB6068(85, @"lineSpacing");
  sub_276CB6068(86, @"alignment");
  sub_276CB6068(87, @"spaceBefore");
  sub_276CB6068(88, @"spaceAfter");
  sub_276CB6068(89, @"keepLinesTogether");
  sub_276CB6068(90, @"keepWithNext");
  sub_276CB6068(91, @"pageBreakBefore");
  sub_276CB6068(92, @"widowControl");
  sub_276CB6068(93, @"hyphenate");
  sub_276CB6068(94, @"paragraphFill");
  sub_276CB6068(95, @"followingParagraphStyle");
  sub_276CB6068(96, @"decimalTab");
  sub_276CB6068(97, @"paragraphBorderType");
  sub_276CB6068(98, @"paragraphStroke");
  sub_276CB6068(99, @"paragraphRuleWidth");
  sub_276CB6068(100, @"paragraphRuleOffset");
  sub_276CB6068(101, @"outlineLevel");
  sub_276CB6068(102, @"outlineStyleType");
  sub_276CB6068(103, @"listStyle");
  sub_276CB6068(104, @"showInTOCNavigator");
  sub_276CB6068(105, @"paragraphBorderPositions");
  sub_276CB6068(106, @"roundedCorners");
  sub_276CB6068(107, @"followingParagraphStyleIdentifier");
  sub_276CB6068(108, @"showInTOC");
  sub_276CB6068(109, @"tocStyle");
  sub_276CB6068(110, @"textIndent");
  sub_276CB6068(111, @"labelIndent");
  sub_276CB6068(112, @"labelType");
  sub_276CB6068(113, @"labelGeometry");
  sub_276CB6068(114, @"labelImage");
  sub_276CB6068(115, @"labelString");
  sub_276CB6068(116, @"labelNumberType");
  sub_276CB6068(117, @"labelTieredNumber");
  sub_276CB6068(118, @"labelFontName");
  sub_276CB6068(119, @"labelFontColor");
  sub_276CB6068(120, @"listWritingDirection");
  sub_276CB6068(121, @"showInBookmarksList");
  sub_276CB6068(136, @"TSWPTOCShowPageNumber");
  sub_276CB6068(137, @"TSWPTOCPageNumberStyle");
  sub_276CB6068(144, @"layoutParagraphStyle");
  sub_276CB6068(145, @"layoutMargins");
  sub_276CB6068(146, @"padding");
  sub_276CB6068(147, @"minimumHorizontalInset");
  sub_276CB6068(148, @"columns");
  sub_276CB6068(149, @"verticalAlignment");
  sub_276CB6068(150, @"followingLayoutStyle");
  sub_276CB6068(151, @"layoutContinuous");
  sub_276CB6068(152, @"shrinkTextToFit");
  sub_276CB6068(153, @"verticalText");
  sub_276CB6068(154, @"columnWritingDirection");
  sub_276CB6068(176, @"listTextIndents");
  sub_276CB6068(177, @"listLabelIndents");
  sub_276CB6068(178, @"listClassicTextIndents");
  sub_276CB6068(179, @"listClassicFontSize");
  sub_276CB6068(180, @"listLabelType");
  sub_276CB6068(181, @"listLabelGeometries");
  sub_276CB6068(182, @"listLabelImages");
  sub_276CB6068(183, @"listLabelStrings");
  sub_276CB6068(184, @"listLabelNumbers");
  sub_276CB6068(185, @"listLabelTieredNumbers");
  sub_276CB6068(186, @"listClassicGeometries");
  sub_276CB6068(187, @"listFontColor");
  sub_276CB6068(188, @"defaultTextStylePresetIndex");
  sub_276CB6068(189, @"defaultParagraphStyle");
  sub_276CB6068(224, @"pageTemplateInheritsHeadersFooters");
  sub_276CB6068(225, @"pageTemplateBackgroundFill");
  sub_276CB6068(226, @"pageTemplateHideHeadersFooters");
  sub_276CB6068(227, @"equationString");
  sub_276CB6068(228, @"instructionalText");
  sub_276CB6068(256, @"dropCapModel");
  sub_276CB6068(257, @"dropCapShapeFill");
  sub_276CB6068(258, @"dropCapShapeStroke");
  sub_276CB6068(512, @"geometry");
  sub_276CB6068(513, @"geometryPosition");
  sub_276CB6068(514, @"children");
  sub_276CB6068(515, @"style");
  sub_276CB6068(516, @"fill");
  sub_276CB6068(517, @"stroke");
  sub_276CB6068(518, @"opacity");
  sub_276CB6068(519, @"reflection");
  sub_276CB6068(520, @"shadow");
  sub_276CB6068(521, @"externalTextWrap");
  sub_276CB6068(522, @"headLineEnd");
  sub_276CB6068(523, @"tailLineEnd");
  sub_276CB6068(524, @"hyperlinkURL");
  sub_276CB6068(525, @"aspectRatioLocked");
  sub_276CB6068(526, @"locked");
  sub_276CB6068(527, @"pathSource");
  sub_276CB6068(528, @"mediaFlags");
  sub_276CB6068(529, @"media");
  sub_276CB6068(530, @"mask");
  sub_276CB6068(531, @"instantAlpha");
  sub_276CB6068(532, @"imageAdjustments");
  sub_276CB6068(533, @"movieMedia");
  sub_276CB6068(534, @"posterImageData");
  sub_276CB6068(535, @"startTime");
  sub_276CB6068(536, @"endTime");
  sub_276CB6068(537, @"posterTime");
  sub_276CB6068(538, @"loopOption");
  sub_276CB6068(539, @"volume");
  sub_276CB6068(540, @"playsAcrossSlides");
  sub_276CB6068(541, @"connectedTo");
  sub_276CB6068(542, @"connectedFrom");
  sub_276CB6068(543, @"freehandAnimation");
  sub_276CB6068(544, @"accessibilityDescription");
  sub_276CB6068(545, @"caption");
  sub_276CB6068(546, @"captionHidden");
  sub_276CB6068(547, @"title");
  sub_276CB6068(548, @"titlePlacement");
  sub_276CB6068(549, @"titleHidden");
  sub_276CB6068(550, @"comment");
  sub_276CB6068(551, @"pencilAnnotations");
  sub_276CB6068(552, @"captionMode");
  sub_276CB6068(592, @"TSAObject3DPlaysAnimationsProperty");
  sub_276CB6068(593, @"TSAObject3DPoseProperty");
  sub_276CB6068(768, @"TSTAutoResize");
  sub_276CB6068(769, @"TSTBandedRows");
  sub_276CB6068(770, @"TSTBandedCellFill");
  sub_276CB6068(771, @"TSTBodyCellsHorizontalBorderStroke");
  sub_276CB6068(772, @"TSTBodyCellsVerticalBorderStroke");
  sub_276CB6068(773, @"TSTBodyCellsHorizontalStroke");
  sub_276CB6068(774, @"TSTBodyCellsVerticalStroke");
  sub_276CB6068(775, @"TSTHeaderColumnSeparatorStroke");
  sub_276CB6068(776, @"TSTHeaderColumnHorizontalStroke");
  sub_276CB6068(777, @"TSTHeaderColumnVerticalStroke");
  sub_276CB6068(778, @"TSTHeaderColumnBorderStroke");
  sub_276CB6068(779, @"TSTHeaderRowSeparatorStroke");
  sub_276CB6068(780, @"TSTHeaderRowVerticalStroke");
  sub_276CB6068(781, @"TSTHeaderRowHorizontalStroke");
  sub_276CB6068(782, @"TSTHeaderRowBorderStroke");
  sub_276CB6068(783, @"TSTFooterRowSeparatorStroke");
  sub_276CB6068(784, @"TSTFooterRowVerticalStroke");
  sub_276CB6068(785, @"TSTFooterRowHorizontalStroke");
  sub_276CB6068(786, @"TSTFooterRowBorderStroke");
  sub_276CB6068(787, @"TSTTableStrokePresetList");
  sub_276CB6068(788, @"TSTTableVerticalStrokesVisible");
  sub_276CB6068(789, @"TSTTableHorizontalStrokesVisible");
  sub_276CB6068(790, @"TSTTableHeaderRowSepVisible");
  sub_276CB6068(791, @"TSTTableHeaderRowVerticalsVisible");
  sub_276CB6068(792, @"TSTTableHeaderColSepVisible");
  sub_276CB6068(793, @"TSTTableHeaderColHorizontalsVisible");
  sub_276CB6068(794, @"TSTTableFooterSepVisible");
  sub_276CB6068(795, @"TSTTableFooterVerticalsVisible");
  sub_276CB6068(796, @"TSTTableBorderStrokesVisible");
  sub_276CB6068(797, @"TSTTableMasterFontFamily");
  sub_276CB6068(798, @"TSTTableWritingDirection");
  sub_276CB6068(799, @"TSTTableBehavesLikeSpreadsheet");
  sub_276CB6068(800, @"TSTTableDefaultGeometry");
  sub_276CB6068(801, @"TSTTableDefaultInlineGeometry");
  sub_276CB6068(802, @"TSTTableDefaultRowCount");
  sub_276CB6068(803, @"TSTTableDefaultColumnCount");
  sub_276CB6068(804, @"TSTTableDefaultHeaderRowCount");
  sub_276CB6068(805, @"TSTTableDefaultHeaderColumnCount");
  sub_276CB6068(806, @"TSTTableDefaultFooterRowCount");
  sub_276CB6068(807, @"table preset");
  sub_276CB6068(808, @"TSTCategoryLevel1TopStroke");
  sub_276CB6068(809, @"TSTCategoryLevel2TopStroke");
  sub_276CB6068(810, @"TSTCategoryLevel3TopStroke");
  sub_276CB6068(811, @"TSTCategoryLevel4TopStroke");
  sub_276CB6068(812, @"TSTCategoryLevel5TopStroke");
  sub_276CB6068(813, @"TSTCategoryLevel1BottomStroke");
  sub_276CB6068(814, @"TSTCategoryLevel2BottomStroke");
  sub_276CB6068(815, @"TSTCategoryLevel3BottomStroke");
  sub_276CB6068(816, @"TSTCategoryLevel4BottomStroke");
  sub_276CB6068(817, @"TSTCategoryLevel5BottomStroke");
  sub_276CB6068(818, @"TSTCategoryLevel1LabelSeparatorStroke");
  sub_276CB6068(819, @"TSTCategoryLevel2LabelSeparatorStroke");
  sub_276CB6068(820, @"TSTCategoryLevel3LabelSeparatorStroke");
  sub_276CB6068(821, @"TSTCategoryLevel4LabelSeparatorStroke");
  sub_276CB6068(822, @"TSTCategoryLevel5LabelSeparatorStroke");
  sub_276CB6068(823, @"TSTCategoryLevel1InteriorStroke");
  sub_276CB6068(824, @"TSTCategoryLevel2InteriorStroke");
  sub_276CB6068(825, @"TSTCategoryLevel3InteriorStroke");
  sub_276CB6068(826, @"TSTCategoryLevel4InteriorStroke");
  sub_276CB6068(827, @"TSTCategoryLevel5InteriorStroke");
  sub_276CB6068(828, @"TSTBodyCellsPivotGroupHorizontalStroke");
  sub_276CB6068(829, @"TSTBodyCellsPivotGroupVerticalStroke");
  sub_276CB6068(830, @"TSTBodyCellsPivotDeEmphasisHorizontalStroke");
  sub_276CB6068(831, @"TSTBodyCellsPivotEmphasisVerticalStroke");
  sub_276CB6068(832, @"TSTHeaderColumnPivotGroupHorizontalStroke");
  sub_276CB6068(833, @"TSTHeaderColumnPivotGroupDeEmphasisStroke");
  sub_276CB6068(834, @"TSTHeaderColumnPivotSeparatorStroke");
  sub_276CB6068(835, @"TSTHeaderRowPivotGroupVerticalStroke");
  sub_276CB6068(836, @"TSTHeaderRowPivotGroupDeEmphasisStroke");
  sub_276CB6068(837, @"TSTHeaderRowPivotTitleStroke");
  sub_276CB6068(838, @"TSTFooterRowPivotGroupVerticalStroke");
  sub_276CB6068(896, @"TSTCellTextWrap");
  sub_276CB6068(897, @"TSTCellType");
  sub_276CB6068(898, @"TSTCellFill");
  sub_276CB6068(899, @"TSTCellTopStroke");
  sub_276CB6068(900, @"TSTCellBottomStroke");
  sub_276CB6068(901, @"TSTCellLeftStroke");
  sub_276CB6068(902, @"TSTCellRightStroke");
  sub_276CB6068(903, @"TSTCellVerticalAlignment");
  sub_276CB6068(904, @"TSTCellPadding");
  sub_276CB6068(905, @"TSTCellDiffObject(TSTCellStyle)");
  sub_276CB6068(906, @"TSTCellDiffObject(TSWPParagraphStyle)");
  sub_276CB6068(907, @"TSTCellDiffObject(TSTCellFormatAndValue)");
  sub_276CB6068(908, @"TSTCellDiffObject(TSTImportWarningSet)");
  sub_276CB6068(909, @"TSTCellDiffConditionalStyleSet");
  sub_276CB6068(910, @"TSTCellDiffObject(TSTCommentStorageWrapper)");
  sub_276CB6068(911, @"TSTCellDiffObject(TSTCellFormulaSpec)");
  sub_276CB6068(912, @"TSTCellDiffObject(TSTCellBorder)");
  sub_276CB6068(913, @"TSTCellDiffObject(TSTCellSpec)");
  sub_276CB6068(914, @"TSTCellDiffSuppressCustomFormatHandling");
  sub_276CB6068(1024, @"TSCHChartAxis1_0DateFormatProperty");
  sub_276CB6068(1025, @"TSCHChartAxis1_0NumberFormatProperty");
  sub_276CB6068(1026, @"TSCHChartAxis3DGridlineOpacityProperty");
  sub_276CB6068(1027, @"TSCHChartAxis3DGridlineStrokeProperty");
  sub_276CB6068(1028, @"TSCHChartAxis3DLabelPositionProperty");
  sub_276CB6068(1029, @"TSCHChartAxisDateFormatProperty");
  sub_276CB6068(1030, @"TSCHChartAxisDurationFormatProperty");
  sub_276CB6068(1031, @"TSCHChartAxisHorizontalSpacingProperty");
  sub_276CB6068(1032, @"TSCHChartAxisLabelAngleBaselineDirectionProperty");
  sub_276CB6068(1033, @"TSCHChartAxisLabelExplosionProperty");
  sub_276CB6068(1034, @"TSCHChartAxisLabelParagraphStyleIndexProperty");
  sub_276CB6068(1035, @"TSCHChartAxisLabelsOrientationProperty");
  sub_276CB6068(1036, @"TSCHChartAxisMajorGridlineOpacityProperty");
  sub_276CB6068(1037, @"TSCHChartAxisMajorGridlineShadowProperty");
  sub_276CB6068(1038, @"TSCHChartAxisMajorGridlineStrokeProperty");
  sub_276CB6068(1039, @"TSCHChartAxisMinorGridlineOpacityProperty");
  sub_276CB6068(1040, @"TSCHChartAxisMinorGridlineShadowProperty");
  sub_276CB6068(1041, @"TSCHChartAxisMinorGridlineStrokeProperty");
  sub_276CB6068(1042, @"TSCHChartAxisNumberFormatProperty");
  sub_276CB6068(1043, @"TSCHChartAxisNumberFormatTypeProperty");
  sub_276CB6068(1044, @"TSCHChartAxisNumberOfDecadesProperty");
  sub_276CB6068(1045, @"TSCHChartAxisNumberOfMajorGridlinesProperty");
  sub_276CB6068(1046, @"TSCHChartAxisNumberOfMinorGridlinesProperty");
  sub_276CB6068(1047, @"TSCHChartAxisPlotToEdgesProperty");
  sub_276CB6068(1048, @"TSCHChartAxisScaleProperty");
  sub_276CB6068(1049, @"TSCHChartAxisShowAxisProperty");
  sub_276CB6068(1050, @"TSCHChartAxisShowExtensionLinesProperty");
  sub_276CB6068(1051, @"TSCHChartAxisShowGridlineTickmarksProperty");
  sub_276CB6068(1052, @"TSCHChartAxisShowLabelsProperty");
  sub_276CB6068(1053, @"TSCHChartAxisShowLastLabelProperty");
  sub_276CB6068(1054, @"TSCHChartAxisShowMajorGridlinesProperty");
  sub_276CB6068(1055, @"TSCHChartAxisShowMajorTickmarksProperty");
  sub_276CB6068(1056, @"TSCHChartAxisShowMinimumLabelProperty");
  sub_276CB6068(1057, @"TSCHChartAxisShowMinorGridlinesProperty");
  sub_276CB6068(1058, @"TSCHChartAxisShowMinorTickmarksProperty");
  sub_276CB6068(1059, @"TSCHChartAxisShowSeriesLabelsProperty");
  sub_276CB6068(1060, @"TSCHChartAxisShowTitleProperty");
  sub_276CB6068(1061, @"TSCHChartAxisTickmarkLocationProperty");
  sub_276CB6068(1062, @"TSCHChartAxisTitleProperty");
  sub_276CB6068(1063, @"TSCHChartAxisTitleParagraphStyleIndexProperty");
  sub_276CB6068(1064, @"TSCHChartAxisUserMaxProperty");
  sub_276CB6068(1065, @"TSCHChartAxisUserMinProperty");
  sub_276CB6068(1066, @"TSCHChartAxisVerticalSpacingProperty");
  sub_276CB6068(1067, @"TSCHChartInfo3DBarShapeProperty");
  sub_276CB6068(1068, @"TSCHChartInfo3DBevelEdgesProperty");
  sub_276CB6068(1069, @"TSCHChartInfo3DChartOpacityProperty");
  sub_276CB6068(1070, @"TSCHChartInfo3DInterSetDepthGapProperty");
  sub_276CB6068(1071, @"TSCHChartInfo3DLightingPackageProperty");
  sub_276CB6068(1072, @"TSCHChartInfo3DRotationProperty");
  sub_276CB6068(1073, @"TSCHChartInfo3DScaleProperty");
  sub_276CB6068(1074, @"TSCHChartInfo3DViewportProperty");
  sub_276CB6068(1075, @"TSCHChartInfoAxisAnchorLabelAtEndsProperty");
  sub_276CB6068(1076, @"TSCHChartInfoBackgroundFillProperty");
  sub_276CB6068(1077, @"TSCHChartInfoBackgroundStrokeProperty");
  sub_276CB6068(1078, @"TSCHChartInfoBorderOpacityProperty");
  sub_276CB6068(1079, @"TSCHChartInfoBorderShadowProperty");
  sub_276CB6068(1080, @"TSCHChartInfoBorderStrokeProperty");
  sub_276CB6068(1081, @"TSCHChartInfoCalloutLineTypeProperty");
  sub_276CB6068(1082, @"TSCHChartInfoCombineLayersProperty");
  sub_276CB6068(1083, @"TSCHChartInfoDEPRECATED3DBarShapeProperty");
  sub_276CB6068(1084, @"TSCHChartInfoDEPRECATED3DBevelEdgesProperty");
  sub_276CB6068(1085, @"TSCHChartInfoDEPRECATED3DLightingPackageProperty");
  sub_276CB6068(1086, @"TSCHChartInfoDEPRECATED3DShadowProperty");
  sub_276CB6068(1087, @"TSCHChartInfoDEPRECATEDAGAINMainFontNamedSizeProperty");
  sub_276CB6068(1088, @"TSCHChartInfoDEPRECATEDMainFontFamilyProperty");
  sub_276CB6068(1089, @"TSCHChartInfoDEPRECATEDMainFontNamedSizeProperty");
  sub_276CB6068(1090, @"TSCHChartInfoDEPRECATEDRoundedCornerOuterEndOnlyProperty");
  sub_276CB6068(1091, @"TSCHChartInfoDEPRECATEDRoundedCornerRadiusProperty");
  sub_276CB6068(1092, @"TSCHChartInfoDEPRECATEDTrendlineEquationOpacityProperty");
  sub_276CB6068(1093, @"TSCHChartInfoDEPRECATEDTrendlineEquationParagraphStyleIndexProperty");
  sub_276CB6068(1094, @"TSCHChartInfoDEPRECATEDTrendlineEquationShadowProperty");
  sub_276CB6068(1095, @"TSCHChartInfoDEPRECATEDTrendlineRSquaredOpacityProperty");
  sub_276CB6068(1096, @"TSCHChartInfoDEPRECATEDTrendlineRSquaredParagraphStyleIndexProperty");
  sub_276CB6068(1097, @"TSCHChartInfoDEPRECATEDTrendlineRSquaredShadowProperty");
  sub_276CB6068(1098, @"TSCHChartInfoDataSetNameLocationProperty");
  sub_276CB6068(1099, @"TSCHChartInfoDataSetNameParagraphStyleIndexProperty");
  sub_276CB6068(1100, @"TSCHChartInfoDonutPlaceTitleAtCenterProperty");
  sub_276CB6068(1101, @"TSCHChartInfoGridBackgroundFillProperty");
  sub_276CB6068(1102, @"TSCHChartInfoGridBackgroundOpacityProperty");
  sub_276CB6068(1103, @"TSCHChartInfoInnerRadiusProperty");
  sub_276CB6068(1104, @"TSCHChartInfoInterBarGapProperty");
  sub_276CB6068(1105, @"TSCHChartInfoInterSetGapProperty");
  sub_276CB6068(1106, @"TSCHChartInfoMultiDataControlTypeProperty");
  sub_276CB6068(1107, @"TSCHChartInfoPieStartAngleProperty");
  sub_276CB6068(1108, @"TSCHChartInfoRadarRadiusGridlineCurveProperty");
  sub_276CB6068(1109, @"TSCHChartInfoRadarStartAngleProperty");
  sub_276CB6068(1110, @"TSCHChartInfoRoundedCornerOuterEndOnlyProperty");
  sub_276CB6068(1111, @"TSCHChartInfoRoundedCornerRadiusProperty");
  sub_276CB6068(1112, @"TSCHChartInfoShowBorderProperty");
  sub_276CB6068(1113, @"TSCHChartInfoShowLegendProperty");
  sub_276CB6068(1114, @"TSCHChartInfoShowTitleProperty");
  sub_276CB6068(1115, @"TSCHChartInfoSkipHiddenDataProperty");
  sub_276CB6068(1116, @"TSCHChartInfoSummaryLabelDateFormatProperty");
  sub_276CB6068(1117, @"TSCHChartInfoSummaryLabelDurationFormatProperty");
  sub_276CB6068(1118, @"TSCHChartInfoSummaryLabelNumberFormatProperty");
  sub_276CB6068(1119, @"TSCHChartInfoSummaryLabelNumberFormatTypeProperty");
  sub_276CB6068(1120, @"TSCHChartInfoSummaryLabelOffsetProperty");
  sub_276CB6068(1121, @"TSCHChartInfoSummaryLabelParagraphStyleIndexProperty");
  sub_276CB6068(1122, @"TSCHChartInfoSummaryLabelShowLabelsProperty");
  sub_276CB6068(1123, @"TSCHChartInfoSummaryLabelValueLabelSpacingProperty");
  sub_276CB6068(1124, @"TSCHChartInfoTitleProperty");
  sub_276CB6068(1125, @"TSCHChartInfoTitleColorProperty");
  sub_276CB6068(1126, @"TSCHChartInfoTitleParagraphStyleIndexProperty");
  sub_276CB6068(1127, @"TSCHChartSeries1_0DateFormatProperty");
  sub_276CB6068(1128, @"TSCHChartSeries1_0NumberFormatProperty");
  sub_276CB6068(1129, @"TSCHChartSeries2_3LabelExplosionProperty");
  sub_276CB6068(1130, @"TSCHChartSeriesAdjustmentScaleProperty");
  sub_276CB6068(1131, @"TSCHChartSeriesCalloutLineEndLineEndProperty");
  sub_276CB6068(1132, @"TSCHChartSeriesCalloutLineStartLineEndProperty");
  sub_276CB6068(1133, @"TSCHChartSeriesCalloutLineStrokeStyleProperty");
  sub_276CB6068(1134, @"TSCHChartSeriesDEPRECATED3DFillProperty");
  sub_276CB6068(1135, @"TSCHChartSeriesDEPRECATEDSeriesLabelsOnProperty");
  sub_276CB6068(1136, @"TSCHChartSeriesDateFormatProperty");
  sub_276CB6068(1137, @"TSCHChartSeriesDurationFormatProperty");
  sub_276CB6068(1138, @"TSCHChartSeriesEnableCalloutLineProperty");
  sub_276CB6068(1139, @"TSCHChartSeriesErrorBarCustomNegativeDataProperty");
  sub_276CB6068(1140, @"TSCHChartSeriesErrorBarCustomNegativeDataScatterXProperty");
  sub_276CB6068(1141, @"TSCHChartSeriesErrorBarCustomPositiveDataProperty");
  sub_276CB6068(1142, @"TSCHChartSeriesErrorBarCustomPositiveDataScatterXProperty");
  sub_276CB6068(1143, @"TSCHChartSeriesErrorBarFixedValueProperty");
  sub_276CB6068(1144, @"TSCHChartSeriesErrorBarFixedValueScatterXProperty");
  sub_276CB6068(1145, @"TSCHChartSeriesErrorBarLineEndProperty");
  sub_276CB6068(1146, @"TSCHChartSeriesErrorBarLineEndScatterXProperty");
  sub_276CB6068(1147, @"TSCHChartSeriesErrorBarPercentValueProperty");
  sub_276CB6068(1148, @"TSCHChartSeriesErrorBarPercentValueScatterXProperty");
  sub_276CB6068(1149, @"TSCHChartSeriesErrorBarSettingProperty");
  sub_276CB6068(1150, @"TSCHChartSeriesErrorBarSettingScatterXProperty");
  sub_276CB6068(1151, @"TSCHChartSeriesErrorBarShadowProperty");
  sub_276CB6068(1152, @"TSCHChartSeriesErrorBarSpacingProperty");
  sub_276CB6068(1153, @"TSCHChartSeriesErrorBarSpacingScatterXProperty");
  sub_276CB6068(1154, @"TSCHChartSeriesErrorBarStdDevValueProperty");
  sub_276CB6068(1155, @"TSCHChartSeriesErrorBarStdDevValueScatterXProperty");
  sub_276CB6068(1156, @"TSCHChartSeriesErrorBarStrokeProperty");
  sub_276CB6068(1157, @"TSCHChartSeriesErrorBarStrokeScatterXProperty");
  sub_276CB6068(1158, @"TSCHChartSeriesErrorBarTypeProperty");
  sub_276CB6068(1159, @"TSCHChartSeriesErrorBarTypeScatterXProperty");
  sub_276CB6068(1160, @"TSCHChartSeriesFillProperty");
  sub_276CB6068(1161, @"TSCHChartSeriesFillUseSeriesStrokeProperty");
  sub_276CB6068(1162, @"TSCHChartSeriesFillUseSeriesStrokeAlphaMultiplierProperty");
  sub_276CB6068(1163, @"TSCHChartSeriesLabelExplosionProperty");
  sub_276CB6068(1164, @"TSCHChartSeriesLabelParagraphStyleIndexProperty");
  sub_276CB6068(1165, @"TSCHChartSeriesLineTypeProperty");
  sub_276CB6068(1166, @"TSCHChartSeriesNumberFormatProperty");
  sub_276CB6068(1167, @"TSCHChartSeriesNumberFormatTypeProperty");
  sub_276CB6068(1168, @"TSCHChartSeriesOpacityProperty");
  sub_276CB6068(1169, @"TSCHChartSeriesOutsideLabelParagraphStyleIndexProperty");
  sub_276CB6068(1170, @"TSCHChartSeriesPercentNumberFormatProperty");
  sub_276CB6068(1171, @"TSCHChartSeriesSeriesTypeProperty");
  sub_276CB6068(1172, @"TSCHChartSeriesShadowProperty");
  sub_276CB6068(1173, @"TSCHChartSeriesShowErrorBarProperty");
  sub_276CB6068(1174, @"TSCHChartSeriesShowErrorBarScatterXProperty");
  sub_276CB6068(1175, @"TSCHChartSeriesShowLabelsInFrontProperty");
  sub_276CB6068(1176, @"TSCHChartSeriesShowLineProperty");
  sub_276CB6068(1177, @"TSCHChartSeriesShowNegativeDataProperty");
  sub_276CB6068(1178, @"TSCHChartSeriesShowSeriesLabelsProperty");
  sub_276CB6068(1179, @"TSCHChartSeriesShowSymbolProperty");
  sub_276CB6068(1180, @"TSCHChartSeriesShowTrendLineProperty");
  sub_276CB6068(1181, @"TSCHChartSeriesShowValueLabelsProperty");
  sub_276CB6068(1182, @"TSCHChartSeriesSizeDimensionProperty");
  sub_276CB6068(1183, @"TSCHChartSeriesStackLabelsProperty");
  sub_276CB6068(1184, @"TSCHChartSeriesStrokeProperty");
  sub_276CB6068(1185, @"TSCHChartSeriesSymbolFillProperty");
  sub_276CB6068(1186, @"TSCHChartSeriesSymbolFillUseSeriesFillProperty");
  sub_276CB6068(1187, @"TSCHChartSeriesSymbolFillUseSeriesStrokeProperty");
  sub_276CB6068(1188, @"TSCHChartSeriesSymbolSizeProperty");
  sub_276CB6068(1189, @"TSCHChartSeriesSymbolStrokeProperty");
  sub_276CB6068(1190, @"TSCHChartSeriesSymbolTypeProperty");
  sub_276CB6068(1191, @"TSCHChartSeriesTrendLineEquationOffsetXProperty");
  sub_276CB6068(1192, @"TSCHChartSeriesTrendLineEquationOffsetYProperty");
  sub_276CB6068(1193, @"TSCHChartSeriesTrendLineLabelStringProperty");
  sub_276CB6068(1194, @"TSCHChartSeriesTrendLineOrderProperty");
  sub_276CB6068(1195, @"TSCHChartSeriesTrendLinePeriodProperty");
  sub_276CB6068(1196, @"TSCHChartSeriesTrendLineRSquaredOffsetXProperty");
  sub_276CB6068(1197, @"TSCHChartSeriesTrendLineRSquaredOffsetYProperty");
  sub_276CB6068(1198, @"TSCHChartSeriesTrendLineShadowProperty");
  sub_276CB6068(1199, @"TSCHChartSeriesTrendLineShowEquationProperty");
  sub_276CB6068(1200, @"TSCHChartSeriesTrendLineShowLabelProperty");
  sub_276CB6068(1201, @"TSCHChartSeriesTrendLineShowR2ValueProperty");
  sub_276CB6068(1202, @"TSCHChartSeriesTrendLineStrokeProperty");
  sub_276CB6068(1203, @"TSCHChartSeriesTrendLineTypeProperty");
  sub_276CB6068(1204, @"TSCHChartSeriesTrendlineEquationOpacityProperty");
  sub_276CB6068(1205, @"TSCHChartSeriesTrendlineEquationParagraphStyleIndexProperty");
  sub_276CB6068(1206, @"TSCHChartSeriesTrendlineRSquaredOpacityProperty");
  sub_276CB6068(1207, @"TSCHChartSeriesTrendlineRSquaredParagraphStyleIndexProperty");
  sub_276CB6068(1208, @"TSCHChartSeriesValueLabelPositionProperty");
  sub_276CB6068(1209, @"TSCHChartSeriesValueLabelSpacingProperty");
  sub_276CB6068(1210, @"TSCHChartSeriesValueLabelsAxisProperty");
  sub_276CB6068(1211, @"TSCHChartSeriesWedgeExplosionProperty");
  sub_276CB6068(1212, @"TSCHChartSeriesYAxisOrdinalProperty");
  sub_276CB6068(1213, @"TSCHLegendModelFillProperty");
  sub_276CB6068(1214, @"TSCHLegendModelLabelParagraphStyleIndexProperty");
  sub_276CB6068(1215, @"TSCHLegendModelOpacityProperty");
  sub_276CB6068(1216, @"TSCHLegendModelShadowProperty");
  sub_276CB6068(1217, @"TSCHLegendModelStrokeProperty");
  sub_276CB6068(1218, @"TSCHReferenceLineCustomValueProperty");
  sub_276CB6068(1219, @"TSCHReferenceLineLabelProperty");
  sub_276CB6068(1220, @"TSCHReferenceLineLabelParagraphStyleIndexProperty");
  sub_276CB6068(1221, @"TSCHReferenceLineShadowProperty");
  sub_276CB6068(1222, @"TSCHReferenceLineShowLabelProperty");
  sub_276CB6068(1223, @"TSCHReferenceLineShowLineProperty");
  sub_276CB6068(1224, @"TSCHReferenceLineShowValueLabelProperty");
  sub_276CB6068(1225, @"TSCHReferenceLineStrokeProperty");
  sub_276CB6068(1226, @"TSCHReferenceLineTypeProperty");
  sub_276CB6068(1227, @"TSCHReferenceLineValueLabelParagraphStyleIndexProperty");
  sub_276CB6068(1228, @"TSCHChartAxisDefault1_0DateFormatProperty");
  sub_276CB6068(1229, @"TSCHChartAxisDefault1_0NumberFormatProperty");
  sub_276CB6068(1230, @"TSCHChartAxisCategory3DGridlineOpacityProperty");
  sub_276CB6068(1231, @"TSCHChartAxisValue3DGridlineOpacityProperty");
  sub_276CB6068(1232, @"TSCHChartAxisCategory3DGridlineStrokeProperty");
  sub_276CB6068(1233, @"TSCHChartAxisValue3DGridlineStrokeProperty");
  sub_276CB6068(1234, @"TSCHChartAxisDefault3DLabelPositionProperty");
  sub_276CB6068(1235, @"TSCHChartAxisDefaultDateFormatProperty");
  sub_276CB6068(1236, @"TSCHChartAxisDefaultDurationFormatProperty");
  sub_276CB6068(1237, @"TSCHChartAxisCategoryHorizontalSpacingProperty");
  sub_276CB6068(1238, @"TSCHChartAxisDefaultLabelAngleBaselineDirectionProperty");
  sub_276CB6068(1239, @"TSCHChartAxisDefaultLabelExplosionProperty");
  sub_276CB6068(1240, @"TSCHChartAxisCategoryLabelParagraphStyleIndexProperty");
  sub_276CB6068(1241, @"TSCHChartAxisDefaultLabelParagraphStyleIndexProperty");
  sub_276CB6068(1242, @"TSCHChartAxisValueLabelParagraphStyleIndexProperty");
  sub_276CB6068(1243, @"TSCHChartAxisCategoryLabelsOrientationProperty");
  sub_276CB6068(1244, @"TSCHChartAxisDefaultLabelsOrientationProperty");
  sub_276CB6068(1245, @"TSCHChartAxisValueLabelsOrientationProperty");
  sub_276CB6068(1246, @"TSCHChartAxisCategoryMajorGridlineOpacityProperty");
  sub_276CB6068(1247, @"TSCHChartAxisValueMajorGridlineOpacityProperty");
  sub_276CB6068(1248, @"TSCHChartAxisCategoryMajorGridlineShadowProperty");
  sub_276CB6068(1249, @"TSCHChartAxisValueMajorGridlineShadowProperty");
  sub_276CB6068(1250, @"TSCHChartAxisCategoryMajorGridlineStrokeProperty");
  sub_276CB6068(1251, @"TSCHChartAxisValueMajorGridlineStrokeProperty");
  sub_276CB6068(1252, @"TSCHChartAxisCategoryMinorGridlineOpacityProperty");
  sub_276CB6068(1253, @"TSCHChartAxisValueMinorGridlineOpacityProperty");
  sub_276CB6068(1254, @"TSCHChartAxisCategoryMinorGridlineShadowProperty");
  sub_276CB6068(1255, @"TSCHChartAxisValueMinorGridlineShadowProperty");
  sub_276CB6068(1256, @"TSCHChartAxisCategoryMinorGridlineStrokeProperty");
  sub_276CB6068(1257, @"TSCHChartAxisValueMinorGridlineStrokeProperty");
  sub_276CB6068(1258, @"TSCHChartAxisDefaultNumberFormatProperty");
  sub_276CB6068(1259, @"TSCHChartAxisDefaultNumberFormatTypeProperty");
  sub_276CB6068(1260, @"TSCHChartAxisValueNumberOfDecadesProperty");
  sub_276CB6068(1261, @"TSCHChartAxisValueNumberOfMajorGridlinesProperty");
  sub_276CB6068(1262, @"TSCHChartAxisValueNumberOfMinorGridlinesProperty");
  sub_276CB6068(1263, @"TSCHChartAxisCategoryPlotToEdgesProperty");
  sub_276CB6068(1264, @"TSCHChartAxisValueScaleProperty");
  sub_276CB6068(1265, @"TSCHChartAxisCategoryShowAxisProperty");
  sub_276CB6068(1266, @"TSCHChartAxisValueShowAxisProperty");
  sub_276CB6068(1267, @"TSCHChartAxisDefaultShowExtensionLinesProperty");
  sub_276CB6068(1268, @"TSCHChartAxisCategoryShowGridlineTickmarksProperty");
  sub_276CB6068(1269, @"TSCHChartAxisValueShowGridlineTickmarksProperty");
  sub_276CB6068(1270, @"TSCHChartAxisCategoryShowLabelsProperty");
  sub_276CB6068(1271, @"TSCHChartAxisDefaultShowLabelsProperty");
  sub_276CB6068(1272, @"TSCHChartAxisValueShowLabelsProperty");
  sub_276CB6068(1273, @"TSCHChartAxisCategoryShowLastLabelProperty");
  sub_276CB6068(1274, @"TSCHChartAxisCategoryShowMajorGridlinesProperty");
  sub_276CB6068(1275, @"TSCHChartAxisPolarCategoryShowMajorGridlinesProperty");
  sub_276CB6068(1276, @"TSCHChartAxisValueShowMajorGridlinesProperty");
  sub_276CB6068(1277, @"TSCHChartAxisCategoryShowMajorTickmarksProperty");
  sub_276CB6068(1278, @"TSCHChartAxisValueShowMajorTickmarksProperty");
  sub_276CB6068(1279, @"TSCHChartAxisValueShowMinimumLabelProperty");
  sub_276CB6068(1280, @"TSCHChartAxisCategoryShowMinorGridlinesProperty");
  sub_276CB6068(1281, @"TSCHChartAxisValueShowMinorGridlinesProperty");
  sub_276CB6068(1282, @"TSCHChartAxisCategoryShowMinorTickmarksProperty");
  sub_276CB6068(1283, @"TSCHChartAxisValueShowMinorTickmarksProperty");
  sub_276CB6068(1284, @"TSCHChartAxisCategoryShowSeriesLabelsProperty");
  sub_276CB6068(1285, @"TSCHChartAxisMultiDataShowSeriesLabelsProperty");
  sub_276CB6068(1286, @"TSCHChartAxisCategoryShowTitleProperty");
  sub_276CB6068(1287, @"TSCHChartAxisValueShowTitleProperty");
  sub_276CB6068(1288, @"TSCHChartAxisCategoryTickmarkLocationProperty");
  sub_276CB6068(1289, @"TSCHChartAxisValueTickmarkLocationProperty");
  sub_276CB6068(1290, @"TSCHChartAxisCategoryTitleProperty");
  sub_276CB6068(1291, @"TSCHChartAxisCategoryTitleParagraphStyleIndexProperty");
  sub_276CB6068(1292, @"TSCHChartAxisDefaultTitleParagraphStyleIndexProperty");
  sub_276CB6068(1293, @"TSCHChartAxisValueTitleParagraphStyleIndexProperty");
  sub_276CB6068(1294, @"TSCHChartAxisValueTitleProperty");
  sub_276CB6068(1295, @"TSCHChartAxisDefaultUserMaxProperty");
  sub_276CB6068(1296, @"TSCHChartAxisDefaultUserMinProperty");
  sub_276CB6068(1297, @"TSCHChartAxisCategoryVerticalSpacingProperty");
  sub_276CB6068(1298, @"TSCHChartInfoDefault3DBarShapeProperty");
  sub_276CB6068(1299, @"TSCHChartInfoDefault3DBevelEdgesProperty");
  sub_276CB6068(1300, @"TSCHChartInfoDefault3DChartOpacityProperty");
  sub_276CB6068(1301, @"TSCHChartInfoDefault3DInterSetDepthGapProperty");
  sub_276CB6068(1302, @"TSCHChartInfoArea3DLightingPackageProperty");
  sub_276CB6068(1303, @"TSCHChartInfoBar3DLightingPackageProperty");
  sub_276CB6068(1304, @"TSCHChartInfoColumn3DLightingPackageProperty");
  sub_276CB6068(1305, @"TSCHChartInfoDefault3DLightingPackageProperty");
  sub_276CB6068(1306, @"TSCHChartInfoLine3DLightingPackageProperty");
  sub_276CB6068(1307, @"TSCHChartInfoPie3DLightingPackageProperty");
  sub_276CB6068(1308, @"TSCHChartInfoDefault3DRotationProperty");
  sub_276CB6068(1309, @"TSCHChartInfoArea3DScaleProperty");
  sub_276CB6068(1310, @"TSCHChartInfoBar3DScaleProperty");
  sub_276CB6068(1311, @"TSCHChartInfoColumn3DScaleProperty");
  sub_276CB6068(1312, @"TSCHChartInfoDefault3DScaleProperty");
  sub_276CB6068(1313, @"TSCHChartInfoLine3DScaleProperty");
  sub_276CB6068(1314, @"TSCHChartInfoPie3DScaleProperty");
  sub_276CB6068(1315, @"TSCHChartInfoDefault3DViewportProperty");
  sub_276CB6068(1316, @"TSCHChartInfoDefaultAxisAnchorLabelAtEndsProperty");
  sub_276CB6068(1317, @"TSCHChartInfoDefaultBackgroundFillProperty");
  sub_276CB6068(1318, @"TSCHChartInfoDefaultBackgroundStrokeProperty");
  sub_276CB6068(1319, @"TSCHChartInfoDefaultBorderOpacityProperty");
  sub_276CB6068(1320, @"TSCHChartInfoDefaultBorderShadowProperty");
  sub_276CB6068(1321, @"TSCHChartInfoDefaultBorderStrokeProperty");
  sub_276CB6068(1322, @"TSCHChartInfoAreaCalloutLineTypeProperty");
  sub_276CB6068(1323, @"TSCHChartInfoBarCalloutLineTypeProperty");
  sub_276CB6068(1324, @"TSCHChartInfoBubbleCalloutLineTypeProperty");
  sub_276CB6068(1325, @"TSCHChartInfoDefaultCalloutLineTypeProperty");
  sub_276CB6068(1326, @"TSCHChartInfoLineCalloutLineTypeProperty");
  sub_276CB6068(1327, @"TSCHChartInfoPieCalloutLineTypeProperty");
  sub_276CB6068(1328, @"TSCHChartInfoScatterCalloutLineTypeProperty");
  sub_276CB6068(1329, @"TSCHChartInfoStackedAreaCalloutLineTypeProperty");
  sub_276CB6068(1330, @"TSCHChartInfoStackedBarCalloutLineTypeProperty");
  sub_276CB6068(1331, @"TSCHChartInfoDefaultCombineLayersProperty");
  sub_276CB6068(1332, @"TSCHChartInfoDefaultDEPRECATEDRoundedCornerOuterEndOnlyProperty");
  sub_276CB6068(1333, @"TSCHChartInfoDefaultDEPRECATEDRoundedCornerRadiusProperty");
  sub_276CB6068(1334, @"TSCHChartInfoDefaultDataSetNameLocationProperty");
  sub_276CB6068(1335, @"TSCHChartInfoDefaultDataSetNameParagraphStyleIndexProperty");
  sub_276CB6068(1336, @"TSCHChartInfoDefaultDonutPlaceTitleAtCenterProperty");
  sub_276CB6068(1337, @"TSCHChartInfoDefaultGridBackgroundFillProperty");
  sub_276CB6068(1338, @"TSCHChartInfoDefaultGridBackgroundOpacityProperty");
  sub_276CB6068(1339, @"TSCHChartInfoDefaultInnerRadiusProperty");
  sub_276CB6068(1340, @"TSCHChartInfoDefaultInterBarGapProperty");
  sub_276CB6068(1341, @"TSCHChartInfoDefaultInterSetGapProperty");
  sub_276CB6068(1342, @"TSCHChartInfoDefaultMultiDataControlTypeProperty");
  sub_276CB6068(1343, @"TSCHChartInfoDefaultPieStartAngleProperty");
  sub_276CB6068(1344, @"TSCHChartInfoDefaultRadarRadiusGridlineCurveProperty");
  sub_276CB6068(1345, @"TSCHChartInfoDefaultRadarStartAngleProperty");
  sub_276CB6068(1346, @"TSCHChartInfoDefaultRoundedCornerOuterEndOnlyProperty");
  sub_276CB6068(1347, @"TSCHChartInfoDefaultRoundedCornerRadiusProperty");
  sub_276CB6068(1348, @"TSCHChartInfoDefaultShowBorderProperty");
  sub_276CB6068(1349, @"TSCHChartInfoDefaultShowLegendProperty");
  sub_276CB6068(1350, @"TSCHChartInfoDefaultShowTitleProperty");
  sub_276CB6068(1351, @"TSCHChartInfoDefaultSkipHiddenDataProperty");
  sub_276CB6068(1352, @"TSCHChartInfoDefaultSummaryLabelDateFormatProperty");
  sub_276CB6068(1353, @"TSCHChartInfoDefaultSummaryLabelDurationFormatProperty");
  sub_276CB6068(1354, @"TSCHChartInfoDefaultSummaryLabelNumberFormatProperty");
  sub_276CB6068(1355, @"TSCHChartInfoDefaultSummaryLabelNumberFormatTypeProperty");
  sub_276CB6068(1356, @"TSCHChartInfoDefaultSummaryLabelOffsetProperty");
  sub_276CB6068(1357, @"TSCHChartInfoDefaultSummaryLabelParagraphStyleIndexProperty");
  sub_276CB6068(1358, @"TSCHChartInfoDefaultSummaryLabelShowLabelsProperty");
  sub_276CB6068(1359, @"TSCHChartInfoDefaultSummaryLabelValueLabelSpacingProperty");
  sub_276CB6068(1360, @"TSCHChartInfoDefaultTitleColorProperty");
  sub_276CB6068(1361, @"TSCHChartInfoDefaultTitleProperty");
  sub_276CB6068(1362, @"TSCHChartInfoDefaultTitleParagraphStyleIndexProperty");
  sub_276CB6068(1363, @"TSCHChartSeriesDefault1_0DateFormatProperty");
  sub_276CB6068(1364, @"TSCHChartSeriesDefault1_0NumberFormatProperty");
  sub_276CB6068(1365, @"TSCHChartSeriesPie1_0NumberFormatProperty");
  sub_276CB6068(1366, @"TSCHChartSeriesPie2_3LabelExplosionProperty");
  sub_276CB6068(1367, @"TSCHChartSeriesBubbleAdjustmentScaleProperty");
  sub_276CB6068(1368, @"TSCHChartSeriesDefaultCalloutLineEndLineEndProperty");
  sub_276CB6068(1369, @"TSCHChartSeriesDefaultCalloutLineStartLineEndProperty");
  sub_276CB6068(1370, @"TSCHChartSeriesDefaultCalloutLineStrokeStyleProperty");
  sub_276CB6068(1371, @"TSCHChartSeriesDefaultDateFormatProperty");
  sub_276CB6068(1372, @"TSCHChartSeriesDefaultDurationFormatProperty");
  sub_276CB6068(1373, @"TSCHChartSeriesAreaEnableCalloutLineProperty");
  sub_276CB6068(1374, @"TSCHChartSeriesBarEnableCalloutLineProperty");
  sub_276CB6068(1375, @"TSCHChartSeriesBubbleEnableCalloutLineProperty");
  sub_276CB6068(1376, @"TSCHChartSeriesDefaultEnableCalloutLineProperty");
  sub_276CB6068(1377, @"TSCHChartSeriesLineEnableCalloutLineProperty");
  sub_276CB6068(1378, @"TSCHChartSeriesPieEnableCalloutLineProperty");
  sub_276CB6068(1379, @"TSCHChartSeriesScatterEnableCalloutLineProperty");
  sub_276CB6068(1380, @"TSCHChartSeriesStackedAreaEnableCalloutLineProperty");
  sub_276CB6068(1381, @"TSCHChartSeriesStackedBarEnableCalloutLineProperty");
  sub_276CB6068(1382, @"TSCHChartSeriesDefaultErrorBarCustomNegativeDataProperty");
  sub_276CB6068(1383, @"TSCHChartSeriesDefaultErrorBarCustomNegativeDataScatterXProperty");
  sub_276CB6068(1384, @"TSCHChartSeriesDefaultErrorBarCustomPositiveDataProperty");
  sub_276CB6068(1385, @"TSCHChartSeriesDefaultErrorBarCustomPositiveDataScatterXProperty");
  sub_276CB6068(1386, @"TSCHChartSeriesDefaultErrorBarFixedValueProperty");
  sub_276CB6068(1387, @"TSCHChartSeriesDefaultErrorBarFixedValueScatterXProperty");
  sub_276CB6068(1388, @"TSCHChartSeriesDefaultErrorBarLineEndProperty");
  sub_276CB6068(1389, @"TSCHChartSeriesDefaultErrorBarLineEndScatterXProperty");
  sub_276CB6068(1390, @"TSCHChartSeriesDefaultErrorBarPercentValueProperty");
  sub_276CB6068(1391, @"TSCHChartSeriesDefaultErrorBarPercentValueScatterXProperty");
  sub_276CB6068(1392, @"TSCHChartSeriesDefaultErrorBarSettingProperty");
  sub_276CB6068(1393, @"TSCHChartSeriesDefaultErrorBarSettingScatterXProperty");
  sub_276CB6068(1394, @"TSCHChartSeriesDefaultErrorBarShadowProperty");
  sub_276CB6068(1395, @"TSCHChartSeriesDefaultErrorBarSpacingProperty");
  sub_276CB6068(1396, @"TSCHChartSeriesDefaultErrorBarSpacingScatterXProperty");
  sub_276CB6068(1397, @"TSCHChartSeriesDefaultErrorBarStdDevValueProperty");
  sub_276CB6068(1398, @"TSCHChartSeriesDefaultErrorBarStdDevValueScatterXProperty");
  sub_276CB6068(1399, @"TSCHChartSeriesDefaultErrorBarStrokeProperty");
  sub_276CB6068(1400, @"TSCHChartSeriesDefaultErrorBarStrokeScatterXProperty");
  sub_276CB6068(1401, @"TSCHChartSeriesDefaultErrorBarTypeProperty");
  sub_276CB6068(1402, @"TSCHChartSeriesDefaultErrorBarTypeScatterXProperty");
  sub_276CB6068(1403, @"TSCHChartSeries3DAreaFillProperty");
  sub_276CB6068(1404, @"TSCHChartSeries3DBarFillProperty");
  sub_276CB6068(1405, @"TSCHChartSeries3DColumnFillProperty");
  sub_276CB6068(1406, @"TSCHChartSeries3DLineFillProperty");
  sub_276CB6068(1407, @"TSCHChartSeries3DPieFillProperty");
  sub_276CB6068(1408, @"TSCHChartSeriesAreaFillProperty");
  sub_276CB6068(1409, @"TSCHChartSeriesBarFillProperty");
  sub_276CB6068(1410, @"TSCHChartSeriesColumnFillProperty");
  sub_276CB6068(1411, @"TSCHChartSeriesDefaultFillProperty");
  sub_276CB6068(1412, @"TSCHChartSeriesMixedAreaFillProperty");
  sub_276CB6068(1413, @"TSCHChartSeriesMixedColumnFillProperty");
  sub_276CB6068(1414, @"TSCHChartSeriesPieFillProperty");
  sub_276CB6068(1415, @"TSCHChartSeriesRadarAreaFillProperty");
  sub_276CB6068(1416, @"TSCHChartSeriesRadarAreaFillUseSeriesStrokeAlphaMultiplierProperty");
  sub_276CB6068(1417, @"TSCHChartSeriesRadarAreaFillUseSeriesStrokeProperty");
  sub_276CB6068(1418, @"TSCHChartSeriesPieLabelExplosionProperty");
  sub_276CB6068(1419, @"TSCHChartSeriesAreaLabelParagraphStyleIndexProperty");
  sub_276CB6068(1420, @"TSCHChartSeriesBarLabelParagraphStyleIndexProperty");
  sub_276CB6068(1421, @"TSCHChartSeriesDefaultLabelParagraphStyleIndexProperty");
  sub_276CB6068(1422, @"TSCHChartSeriesDonutLabelParagraphStyleIndexProperty");
  sub_276CB6068(1423, @"TSCHChartSeriesLineLabelParagraphStyleIndexProperty");
  sub_276CB6068(1424, @"TSCHChartSeriesMixedLabelParagraphStyleIndexProperty");
  sub_276CB6068(1425, @"TSCHChartSeriesPieLabelParagraphStyleIndexProperty");
  sub_276CB6068(1426, @"TSCHChartSeriesRadarLabelParagraphStyleIndexProperty");
  sub_276CB6068(1427, @"TSCHChartSeriesBubbleLineTypeProperty");
  sub_276CB6068(1428, @"TSCHChartSeriesLineLineTypeProperty");
  sub_276CB6068(1429, @"TSCHChartSeriesMixedLineLineTypeProperty");
  sub_276CB6068(1430, @"TSCHChartSeriesRadarAreaLineTypeProperty");
  sub_276CB6068(1431, @"TSCHChartSeriesScatterLineTypeProperty");
  sub_276CB6068(1432, @"TSCHChartSeriesDefaultNumberFormatProperty");
  sub_276CB6068(1433, @"TSCHChartSeriesPieNumberFormatProperty");
  sub_276CB6068(1434, @"TSCHChartSeriesDefaultNumberFormatTypeProperty");
  sub_276CB6068(1435, @"TSCHChartSeriesPieNumberFormatTypeProperty");
  sub_276CB6068(1436, @"TSCHChartSeriesDefaultOpacityProperty");
  sub_276CB6068(1437, @"TSCHChartSeriesAreaOutsideLabelParagraphStyleIndexProperty");
  sub_276CB6068(1438, @"TSCHChartSeriesBarOutsideLabelParagraphStyleIndexProperty");
  sub_276CB6068(1439, @"TSCHChartSeriesDefaultOutsideLabelParagraphStyleIndexProperty");
  sub_276CB6068(1440, @"TSCHChartSeriesDonutOutsideLabelParagraphStyleIndexProperty");
  sub_276CB6068(1441, @"TSCHChartSeriesMixedOutsideLabelParagraphStyleIndexProperty");
  sub_276CB6068(1442, @"TSCHChartSeriesPieOutsideLabelParagraphStyleIndexProperty");
  sub_276CB6068(1443, @"TSCHChartSeriesRadarOutsideLabelParagraphStyleIndexProperty");
  sub_276CB6068(1444, @"TSCHChartSeriesStackedPercentNumberFormatProperty");
  sub_276CB6068(1445, @"TSCHChartSeriesDefaultSeriesTypeProperty");
  sub_276CB6068(1446, @"TSCHChartSeries3DAreaShadowProperty");
  sub_276CB6068(1447, @"TSCHChartSeries3DBarShadowProperty");
  sub_276CB6068(1448, @"TSCHChartSeries3DColumnShadowProperty");
  sub_276CB6068(1449, @"TSCHChartSeries3DLineShadowProperty");
  sub_276CB6068(1450, @"TSCHChartSeries3DPieShadowProperty");
  sub_276CB6068(1451, @"TSCHChartSeriesAreaShadowProperty");
  sub_276CB6068(1452, @"TSCHChartSeriesBarShadowProperty");
  sub_276CB6068(1453, @"TSCHChartSeriesBubbleShadowProperty");
  sub_276CB6068(1454, @"TSCHChartSeriesDefaultShadowProperty");
  sub_276CB6068(1455, @"TSCHChartSeriesLineShadowProperty");
  sub_276CB6068(1456, @"TSCHChartSeriesMixedAreaShadowProperty");
  sub_276CB6068(1457, @"TSCHChartSeriesMixedColumnShadowProperty");
  sub_276CB6068(1458, @"TSCHChartSeriesMixedLineShadowProperty");
  sub_276CB6068(1459, @"TSCHChartSeriesPieShadowProperty");
  sub_276CB6068(1460, @"TSCHChartSeriesRadarAreaShadowProperty");
  sub_276CB6068(1461, @"TSCHChartSeriesScatterShadowProperty");
  sub_276CB6068(1462, @"TSCHChartSeriesDefaultShowErrorBarProperty");
  sub_276CB6068(1463, @"TSCHChartSeriesDefaultShowErrorBarScatterXProperty");
  sub_276CB6068(1464, @"TSCHChartSeriesBubbleShowLabelsInFrontProperty");
  sub_276CB6068(1465, @"TSCHChartSeriesDefaultShowLabelsInFrontProperty");
  sub_276CB6068(1466, @"TSCHChartSeriesScatterShowLineProperty");
  sub_276CB6068(1467, @"TSCHChartSeriesBubbleShowNegativeDataProperty");
  sub_276CB6068(1468, @"TSCHChartSeriesBubbleShowSeriesLabelsProperty");
  sub_276CB6068(1469, @"TSCHChartSeriesPieShowSeriesLabelsProperty");
  sub_276CB6068(1470, @"TSCHChartSeriesScatterShowSeriesLabelsProperty");
  sub_276CB6068(1471, @"TSCHChartSeriesAreaShowSymbolProperty");
  sub_276CB6068(1472, @"TSCHChartSeriesLineShowSymbolProperty");
  sub_276CB6068(1473, @"TSCHChartSeriesMixedAreaShowSymbolProperty");
  sub_276CB6068(1474, @"TSCHChartSeriesMixedLineShowSymbolProperty");
  sub_276CB6068(1475, @"TSCHChartSeriesRadarAreaShowSymbolProperty");
  sub_276CB6068(1476, @"TSCHChartSeriesScatterShowSymbolProperty");
  sub_276CB6068(1477, @"TSCHChartSeriesDefaultShowTrendLineProperty");
  sub_276CB6068(1478, @"TSCHChartSeriesAreaShowValueLabelsProperty");
  sub_276CB6068(1479, @"TSCHChartSeriesBarShowValueLabelsProperty");
  sub_276CB6068(1480, @"TSCHChartSeriesBubbleShowValueLabelsProperty");
  sub_276CB6068(1481, @"TSCHChartSeriesDefaultShowValueLabelsProperty");
  sub_276CB6068(1482, @"TSCHChartSeriesLineShowValueLabelsProperty");
  sub_276CB6068(1483, @"TSCHChartSeriesMixedShowValueLabelsProperty");
  sub_276CB6068(1484, @"TSCHChartSeriesPieShowValueLabelsProperty");
  sub_276CB6068(1485, @"TSCHChartSeriesRadarShowValueLabelsProperty");
  sub_276CB6068(1486, @"TSCHChartSeriesScatterShowValueLabelsProperty");
  sub_276CB6068(1487, @"TSCHChartSeriesBubbleSizeDimensionProperty");
  sub_276CB6068(1488, @"TSCHChartSeriesAreaStackLabelsProperty");
  sub_276CB6068(1489, @"TSCHChartSeriesBarStackLabelsProperty");
  sub_276CB6068(1490, @"TSCHChartSeriesBubbleStackLabelsProperty");
  sub_276CB6068(1491, @"TSCHChartSeriesDefaultStackLabelsProperty");
  sub_276CB6068(1492, @"TSCHChartSeriesLineStackLabelsProperty");
  sub_276CB6068(1493, @"TSCHChartSeriesPieStackLabelsProperty");
  sub_276CB6068(1494, @"TSCHChartSeriesScatterStackLabelsProperty");
  sub_276CB6068(1495, @"TSCHChartSeriesStackedAreaStackLabelsProperty");
  sub_276CB6068(1496, @"TSCHChartSeriesStackedBarStackLabelsProperty");
  sub_276CB6068(1497, @"TSCHChartSeriesAreaStrokeProperty");
  sub_276CB6068(1498, @"TSCHChartSeriesBarStrokeProperty");
  sub_276CB6068(1499, @"TSCHChartSeriesBubbleStrokeProperty");
  sub_276CB6068(1500, @"TSCHChartSeriesLineStrokeProperty");
  sub_276CB6068(1501, @"TSCHChartSeriesMixedAreaStrokeProperty");
  sub_276CB6068(1502, @"TSCHChartSeriesMixedColumnStrokeProperty");
  sub_276CB6068(1503, @"TSCHChartSeriesMixedLineStrokeProperty");
  sub_276CB6068(1504, @"TSCHChartSeriesPieStrokeProperty");
  sub_276CB6068(1505, @"TSCHChartSeriesRadarAreaStrokeProperty");
  sub_276CB6068(1506, @"TSCHChartSeriesScatterStrokeProperty");
  sub_276CB6068(1507, @"TSCHChartSeriesAreaSymbolFillProperty");
  sub_276CB6068(1508, @"TSCHChartSeriesBubbleSymbolFillProperty");
  sub_276CB6068(1509, @"TSCHChartSeriesLineSymbolFillProperty");
  sub_276CB6068(1510, @"TSCHChartSeriesMixedAreaSymbolFillProperty");
  sub_276CB6068(1511, @"TSCHChartSeriesMixedLineSymbolFillProperty");
  sub_276CB6068(1512, @"TSCHChartSeriesRadarAreaSymbolFillProperty");
  sub_276CB6068(1513, @"TSCHChartSeriesScatterSymbolFillProperty");
  sub_276CB6068(1514, @"TSCHChartSeriesAreaSymbolFillUseSeriesFillProperty");
  sub_276CB6068(1515, @"TSCHChartSeriesLineSymbolFillUseSeriesFillProperty");
  sub_276CB6068(1516, @"TSCHChartSeriesMixedAreaSymbolFillUseSeriesFillProperty");
  sub_276CB6068(1517, @"TSCHChartSeriesMixedLineSymbolFillUseSeriesFillProperty");
  sub_276CB6068(1518, @"TSCHChartSeriesRadarAreaSymbolFillUseSeriesFillProperty");
  sub_276CB6068(1519, @"TSCHChartSeriesAreaSymbolFillUseSeriesStrokeProperty");
  sub_276CB6068(1520, @"TSCHChartSeriesBubbleSymbolFillUseSeriesStrokeProperty");
  sub_276CB6068(1521, @"TSCHChartSeriesLineSymbolFillUseSeriesStrokeProperty");
  sub_276CB6068(1522, @"TSCHChartSeriesMixedAreaSymbolFillUseSeriesStrokeProperty");
  sub_276CB6068(1523, @"TSCHChartSeriesMixedLineSymbolFillUseSeriesStrokeProperty");
  sub_276CB6068(1524, @"TSCHChartSeriesRadarAreaSymbolFillUseSeriesStrokeProperty");
  sub_276CB6068(1525, @"TSCHChartSeriesScatterSymbolFillUseSeriesStrokeProperty");
  sub_276CB6068(1526, @"TSCHChartSeriesAreaSymbolSizeProperty");
  sub_276CB6068(1527, @"TSCHChartSeriesLineSymbolSizeProperty");
  sub_276CB6068(1528, @"TSCHChartSeriesMixedAreaSymbolSizeProperty");
  sub_276CB6068(1529, @"TSCHChartSeriesMixedLineSymbolSizeProperty");
  sub_276CB6068(1530, @"TSCHChartSeriesRadarAreaSymbolSizeProperty");
  sub_276CB6068(1531, @"TSCHChartSeriesScatterSymbolSizeProperty");
  sub_276CB6068(1532, @"TSCHChartSeriesAreaSymbolStrokeProperty");
  sub_276CB6068(1533, @"TSCHChartSeriesBubbleSymbolStrokeProperty");
  sub_276CB6068(1534, @"TSCHChartSeriesLineSymbolStrokeProperty");
  sub_276CB6068(1535, @"TSCHChartSeriesMixedAreaSymbolStrokeProperty");
  sub_276CB6068(1536, @"TSCHChartSeriesMixedLineSymbolStrokeProperty");
  sub_276CB6068(1537, @"TSCHChartSeriesRadarAreaSymbolStrokeProperty");
  sub_276CB6068(1538, @"TSCHChartSeriesScatterSymbolStrokeProperty");
  sub_276CB6068(1539, @"TSCHChartSeriesAreaSymbolTypeProperty");
  sub_276CB6068(1540, @"TSCHChartSeriesLineSymbolTypeProperty");
  sub_276CB6068(1541, @"TSCHChartSeriesMixedAreaSymbolTypeProperty");
  sub_276CB6068(1542, @"TSCHChartSeriesMixedLineSymbolTypeProperty");
  sub_276CB6068(1543, @"TSCHChartSeriesRadarAreaSymbolTypeProperty");
  sub_276CB6068(1544, @"TSCHChartSeriesScatterSymbolTypeProperty");
  sub_276CB6068(1545, @"TSCHChartSeriesDefaultTrendLineEquationOffsetXProperty");
  sub_276CB6068(1546, @"TSCHChartSeriesDefaultTrendLineEquationOffsetYProperty");
  sub_276CB6068(1547, @"TSCHChartSeriesDefaultTrendLineLabelStringProperty");
  sub_276CB6068(1548, @"TSCHChartSeriesDefaultTrendLineOrderProperty");
  sub_276CB6068(1549, @"TSCHChartSeriesDefaultTrendLinePeriodProperty");
  sub_276CB6068(1550, @"TSCHChartSeriesDefaultTrendLineRSquaredOffsetXProperty");
  sub_276CB6068(1551, @"TSCHChartSeriesDefaultTrendLineRSquaredOffsetYProperty");
  sub_276CB6068(1552, @"TSCHChartSeriesDefaultTrendLineShadowProperty");
  sub_276CB6068(1553, @"TSCHChartSeriesDefaultTrendLineShowEquationProperty");
  sub_276CB6068(1554, @"TSCHChartSeriesDefaultTrendLineShowLabelProperty");
  sub_276CB6068(1555, @"TSCHChartSeriesDefaultTrendLineShowR2ValueProperty");
  sub_276CB6068(1556, @"TSCHChartSeriesDefaultTrendLineStrokeProperty");
  sub_276CB6068(1557, @"TSCHChartSeriesDefaultTrendLineTypeProperty");
  sub_276CB6068(1558, @"TSCHChartSeriesDefaultTrendlineEquationOpacityProperty");
  sub_276CB6068(1559, @"TSCHChartSeriesDefaultTrendlineEquationParagraphStyleIndexProperty");
  sub_276CB6068(1560, @"TSCHChartSeriesDefaultTrendlineRSquaredOpacityProperty");
  sub_276CB6068(1561, @"TSCHChartSeriesDefaultTrendlineRSquaredParagraphStyleIndexProperty");
  sub_276CB6068(1562, @"TSCHChartSeriesAreaValueLabelPositionProperty");
  sub_276CB6068(1563, @"TSCHChartSeriesBarValueLabelPositionProperty");
  sub_276CB6068(1564, @"TSCHChartSeriesBubbleValueLabelPositionProperty");
  sub_276CB6068(1565, @"TSCHChartSeriesDefaultValueLabelPositionProperty");
  sub_276CB6068(1566, @"TSCHChartSeriesLineValueLabelPositionProperty");
  sub_276CB6068(1567, @"TSCHChartSeriesMixedAreaValueLabelPositionProperty");
  sub_276CB6068(1568, @"TSCHChartSeriesMixedColumnValueLabelPositionProperty");
  sub_276CB6068(1569, @"TSCHChartSeriesMixedLineValueLabelPositionProperty");
  sub_276CB6068(1570, @"TSCHChartSeriesRadarAreaValueLabelPositionProperty");
  sub_276CB6068(1571, @"TSCHChartSeriesScatterValueLabelPositionProperty");
  sub_276CB6068(1572, @"TSCHChartSeriesStackedAreaValueLabelPositionProperty");
  sub_276CB6068(1573, @"TSCHChartSeriesStackedBarValueLabelPositionProperty");
  sub_276CB6068(1574, @"TSCHChartSeriesDefaultValueLabelSpacingProperty");
  sub_276CB6068(1575, @"TSCHChartSeriesBubbleValueLabelsAxisProperty");
  sub_276CB6068(1576, @"TSCHChartSeriesScatterValueLabelsAxisProperty");
  sub_276CB6068(1577, @"TSCHChartSeriesPieWedgeExplosionProperty");
  sub_276CB6068(1578, @"TSCHChartSeriesDefaultYAxisOrdinalProperty");
  sub_276CB6068(1579, @"TSCHLegendModelDefaultFillProperty");
  sub_276CB6068(1580, @"TSCHLegendModelDefaultLabelParagraphStyleIndexProperty");
  sub_276CB6068(1581, @"TSCHLegendModelDefaultOpacityProperty");
  sub_276CB6068(1582, @"TSCHLegendModelDefaultShadowProperty");
  sub_276CB6068(1583, @"TSCHLegendModelDefaultStrokeProperty");
  sub_276CB6068(1584, @"TSCHReferenceLineDefaultCustomValueProperty");
  sub_276CB6068(1585, @"TSCHReferenceLineDefaultLabelProperty");
  sub_276CB6068(1586, @"TSCHReferenceLineDefaultLabelParagraphStyleIndexProperty");
  sub_276CB6068(1587, @"TSCHReferenceLineDefaultShadowProperty");
  sub_276CB6068(1588, @"TSCHReferenceLineDefaultShowLabelProperty");
  sub_276CB6068(1589, @"TSCHReferenceLineDefaultShowLineProperty");
  sub_276CB6068(1590, @"TSCHReferenceLineDefaultShowValueLabelProperty");
  sub_276CB6068(1591, @"TSCHReferenceLineDefaultStrokeProperty");
  sub_276CB6068(1592, @"TSCHReferenceLineDefaultTypeProperty");
  sub_276CB6068(1593, @"TSCHReferenceLineDefaultValueLabelParagraphStyleIndexProperty");
  sub_276CB6068(1594, @"TSCHChartInfoDefaultDEPRECATED3DBarShapeProperty");
  sub_276CB6068(1595, @"TSCHChartInfoBarDEPRECATED3DBevelEdgesProperty");
  sub_276CB6068(1596, @"TSCHChartInfoColumnDEPRECATED3DBevelEdgesProperty");
  sub_276CB6068(1597, @"TSCHChartInfoDefaultDEPRECATED3DBevelEdgesProperty");
  sub_276CB6068(1598, @"TSCHChartInfoPieDEPRECATED3DBevelEdgesProperty");
  sub_276CB6068(1599, @"TSCHChartInfoAreaDEPRECATED3DLightingPackageProperty");
  sub_276CB6068(1600, @"TSCHChartInfoBarDEPRECATED3DLightingPackageProperty");
  sub_276CB6068(1601, @"TSCHChartInfoColumnDEPRECATED3DLightingPackageProperty");
  sub_276CB6068(1602, @"TSCHChartInfoDefaultDEPRECATED3DLightingPackageProperty");
  sub_276CB6068(1603, @"TSCHChartInfoLineDEPRECATED3DLightingPackageProperty");
  sub_276CB6068(1604, @"TSCHChartInfoPieDEPRECATED3DLightingPackageProperty");
  sub_276CB6068(1605, @"TSCHChartInfoAreaDEPRECATED3DShadowProperty");
  sub_276CB6068(1606, @"TSCHChartInfoBarDEPRECATED3DShadowProperty");
  sub_276CB6068(1607, @"TSCHChartInfoColumnDEPRECATED3DShadowProperty");
  sub_276CB6068(1608, @"TSCHChartInfoLineDEPRECATED3DShadowProperty");
  sub_276CB6068(1609, @"TSCHChartInfoPieDEPRECATED3DShadowProperty");
  sub_276CB6068(1610, @"TSCHChartInfoDefaultDEPRECATEDAGAINMainFontNamedSizeProperty");
  sub_276CB6068(1611, @"TSCHChartInfoDefaultDEPRECATEDMainFontFamilyProperty");
  sub_276CB6068(1612, @"TSCHChartInfoDefaultDEPRECATEDMainFontNamedSizeProperty");
  sub_276CB6068(1613, @"TSCHChartInfoDefaultDEPRECATEDTrendlineEquationOpacityProperty");
  sub_276CB6068(1614, @"TSCHChartInfoDefaultDEPRECATEDTrendlineEquationParagraphStyleIndexProperty");
  sub_276CB6068(1615, @"TSCHChartInfoDefaultDEPRECATEDTrendlineEquationShadowProperty");
  sub_276CB6068(1616, @"TSCHChartInfoDefaultDEPRECATEDTrendlineRSquaredOpacityProperty");
  sub_276CB6068(1617, @"TSCHChartInfoDefaultDEPRECATEDTrendlineRSquaredParagraphStyleIndexProperty");
  sub_276CB6068(1618, @"TSCHChartInfoDefaultDEPRECATEDTrendlineRSquaredShadowProperty");
  sub_276CB6068(1619, @"TSCHChartSeriesAreaDEPRECATED3DFillProperty");
  sub_276CB6068(1620, @"TSCHChartSeriesBarDEPRECATED3DFillProperty");
  sub_276CB6068(1621, @"TSCHChartSeriesColumnDEPRECATED3DFillProperty");
  sub_276CB6068(1622, @"TSCHChartSeriesDefaultDEPRECATED3DFillProperty");
  sub_276CB6068(1623, @"TSCHChartSeriesLineDEPRECATED3DFillProperty");
  sub_276CB6068(1624, @"TSCHChartSeriesPieDEPRECATED3DFillProperty");
  sub_276CB6068(1625, @"TSCHChartSeriesPieDEPRECATEDSeriesLabelsOnProperty");
  sub_276CB6068(4096, @"TKSlideTransitionProperty");
  sub_276CB6068(4097, @"TKSlideTitlePlaceholderVisibilityProperty");
  sub_276CB6068(4098, @"TKSlideBodyPlaceholderVisibilityProperty");
  sub_276CB6068(4099, @"TKSlideImagePlaceholderVisibilityProperty");
  sub_276CB6068(4100, @"TKSlideSlideNumberPlaceholderVisibilityProperty");
  sub_276CB6068(4101, @"backgroundName");
  sub_276CB6068(4102, @"variant");
  sub_276CB6068(4103, @"blendMode");
  sub_276CB6068(4104, @"sourceBlendFactor");
  sub_276CB6068(4105, @"destBlendFactor");
  sub_276CB6068(4106, @"motion");
  sub_276CB6068(4107, @"colorGradient");
  sub_276CB6068(4108, @"backgroundColor");
  sub_276CB6068(4109, @"foregroundColor");
  sub_276CB6068(4110, @"lineColor");
  sub_276CB6068(4111, @"pointColor");
  sub_276CB6068(4112, @"randomNumberSeed");
  sub_276CB6068(4113, @"alpha");
  sub_276CB6068(4114, @"border");
  sub_276CB6068(4115, @"blend");
  sub_276CB6068(4116, @"brightness");
  sub_276CB6068(4117, @"borderLightness");
  sub_276CB6068(4118, @"colorBlurSigma");
  sub_276CB6068(4119, @"colorContrast");
  sub_276CB6068(4120, @"colorGamma");
  sub_276CB6068(4121, @"colorSaturation");
  sub_276CB6068(4122, @"colorBrightness");
  sub_276CB6068(4123, @"colorHue");
  sub_276CB6068(4124, @"colorVibrance");
  sub_276CB6068(4125, @"contrast");
  sub_276CB6068(4126, @"damping");
  sub_276CB6068(4127, @"density");
  sub_276CB6068(4128, @"diffusePower");
  sub_276CB6068(4129, @"distortion");
  sub_276CB6068(4130, @"entropy");
  sub_276CB6068(4131, @"exposure");
  sub_276CB6068(4132, @"filter");
  sub_276CB6068(4133, @"fogDistance");
  sub_276CB6068(4134, @"fogPower");
  sub_276CB6068(4135, @"gamma");
  sub_276CB6068(4136, @"grainAmount");
  sub_276CB6068(4137, @"grainIntensity");
  sub_276CB6068(4138, @"hue");
  sub_276CB6068(4139, @"lightness");
  sub_276CB6068(4140, @"lineAlpha");
  sub_276CB6068(4141, @"lineCenter");
  sub_276CB6068(4142, @"lineFade");
  sub_276CB6068(4143, @"lineFadePower");
  sub_276CB6068(4144, @"lineLength");
  sub_276CB6068(4145, @"lineWidth");
  sub_276CB6068(4146, @"noiseAmplitude");
  sub_276CB6068(4147, @"noiseMovement");
  sub_276CB6068(4148, @"noiseOctaves");
  sub_276CB6068(4149, @"noiseScale");
  sub_276CB6068(4150, @"noiseScaleHorizontal");
  sub_276CB6068(4151, @"noiseScaleVertical");
  sub_276CB6068(4152, @"noiseGain");
  sub_276CB6068(4153, @"noiseLacunarity");
  sub_276CB6068(4154, @"noiseSizeScale");
  sub_276CB6068(4155, @"noiseSizeWeight");
  sub_276CB6068(4156, @"noiseSpeed");
  sub_276CB6068(4157, @"noiseVariance");
  sub_276CB6068(4158, @"offset");
  sub_276CB6068(4159, @"motionBackgroundOpacity");
  sub_276CB6068(4160, @"pointDepthAlpha");
  sub_276CB6068(4161, @"pointSize");
  sub_276CB6068(4162, @"power");
  sub_276CB6068(4163, @"radius");
  sub_276CB6068(4164, @"refraction");
  sub_276CB6068(4165, @"resolution");
  sub_276CB6068(4166, @"saturation");
  sub_276CB6068(4167, @"scale");
  sub_276CB6068(4168, @"shadowAlpha");
  sub_276CB6068(4169, @"shadowAngle");
  sub_276CB6068(4170, @"shadowOffset");
  sub_276CB6068(4171, @"shadowScale");
  sub_276CB6068(4172, @"shadowValue");
  sub_276CB6068(4173, @"speed");
  sub_276CB6068(4174, @"texturePower");
  sub_276CB6068(4175, @"time");
  sub_276CB6068(4176, @"zoom");
  sub_276CB6068(4177, @"colorPaletteOffset");
  sub_276CB6068(4178, @"invert");
  sub_276CB6068(4179, @"drawPoints");
  sub_276CB6068(4180, @"drawLines");
  sub_276CB6068(4181, @"drawShadows");
  sub_276CB6068(4182, @"pixelsPerDivision");
  sub_276CB6068(4183, @"symmetry");
  sub_276CB6068(4184, @"lockFocus");
  sub_276CB6068(4185, @"amplitude");
  sub_276CB6068(4186, @"envelope");
  sub_276CB6068(4187, @"yOffset");
  sub_276CB6068(4188, @"focus");
  sub_276CB6068(4189, @"blur");
  sub_276CB6068(4190, @"grainSpeed");
  sub_276CB6068(4191, @"meshColor");
  sub_276CB6068(4192, @"angle");
  sub_276CB6068(4193, @"meshLineWidth");
  sub_276CB6068(4194, @"deltaTime");
  sub_276CB6068(4195, @"threshold");
  sub_276CB6068(4196, @"timeStart");
  sub_276CB6068(4197, @"instanceCount");
  sub_276CB6068(4198, @"extrusion");
  sub_276CB6068(4199, @"noiseOffset");
  sub_276CB6068(4200, @"colorHueOffset");
  sub_276CB6068(4201, @"shadowHue");
  sub_276CB6068(4202, @"shadowHueOffset");
  sub_276CB6068(4203, @"shadowSaturation");
  sub_276CB6068(4204, @"shadowBrightness");
  sub_276CB6068(4205, @"shadowIntensity");
  sub_276CB6068(4206, @"shadowPower");
  sub_276CB6068(4207, @"noiseOctavesIterations");
  sub_276CB6068(4208, @"text(Propagation)");
  sub_276CB6068(4209, @"firstParagraphStyle(Propagation)");
  sub_276CB6068(4210, @"firstListStyle(Propagation)");
  sub_276CB6068(4211, @"firstDropCapStyle(Propagation)");
  sub_276CB6068(4212, @"TKMasterSlideBodyParagraphStyles");
  sub_276CB6068(4213, @"TKMasterSlideBodyListStyles");
  sub_276CB6068(4214, @"TKSlideContentsProperty");
  sub_276CB6068(4215, @"TKSlidePlaceholdersForTagsProperty");
  sub_276CB6068(4216, @"TKTemplateSlideSlideObjectsLayerWithTemplatesProperty");
  sub_276CB6068(4217, @"TKObjectsChangingZOrderProperty");
  sub_276CB6068(4576, @"TKLiveVideoSourceProperty");
  sub_276CB6068(4577, @"TKLiveVideoScaleProperty");
  sub_276CB6068(4578, @"TKLiveVideoNormalizedOffsetProperty");
  sub_276CB6068(4579, @"TKLiveVideoMaskKindProperty");
  sub_276CB6068(4580, @"TKLiveVideoMaskCornerRadiusProperty");
  sub_276CB6068(4581, @"TKLiveVideoBackgroundKindProperty");
  sub_276CB6068(4582, @"TKLiveVideoBackgroundFillProperty");
  sub_276CB6068(4608, @"TRWorkspaceCanvasScaleProperty");
  sub_276CB6068(4609, @"TRWorkspaceContentScaleProperty");
  sub_276CB6068(4610, @"TRWorkspacePaginatedProperty");
  sub_276CB6068(4611, @"TRWorkspacePageGutterProperty");
  sub_276CB6068(4612, @"TRWorkspacePageOrientationProperty");
  sub_276CB6068(4613, @"TRWorkspaceTopMarginProperty");
  sub_276CB6068(4614, @"TRWorkspaceLeftMarginProperty");
  sub_276CB6068(4615, @"TRWorkspaceRightMarginProperty");
  sub_276CB6068(4616, @"TRWorkspaceBottomMarginProperty");
  sub_276CB6068(4617, @"TRWorkspacePageNumberOrientationProperty");
  sub_276CB6068(4618, @"TRWorkspaceUsePrinterMarginsProperty");
  sub_276CB6068(4619, @"TRWorkspaceStartPageNumberProperty");
  sub_276CB6068(4620, @"TRWorkspaceUseStartPageNumberProperty");

  sub_276CB6068(4621, @"TRFitToSinglePage");
}

void sub_276CBAF94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_276CBAFAC(uint64_t a1, const char *a2, _BYTE *a3)
{
  result = objc_msgSend_containsProperty_(*(a1 + 32), a2, a2);
  *(*(*(a1 + 40) + 8) + 24) = result;
  *a3 = *(*(*(a1 + 40) + 8) + 24);
  return result;
}

uint64_t sub_276CBB450(uint64_t a1, const char *a2)
{
  result = objc_msgSend_containsIndex_(*(a1 + 32), a2, a2);
  if (result)
  {
    v6 = *(a1 + 40);

    return objc_msgSend_addIndex_(v6, v5, a2);
  }

  return result;
}

void sub_276CBB564(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v4 = String(a2);
  objc_msgSend_addObject_(v2, v3, v4);
}

void sub_276CBB768(uint64_t a1, uint64_t a2)
{
  v4 = String(a2);
  v9 = v4;
  v5 = *(a1 + 32);
  v6 = @"<unknown>";
  if (v4)
  {
    v6 = v4;
  }

  v7 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v4, @"%@ (%d)", v6, a2);
  objc_msgSend_addFieldValue_(v5, v8, v7);
}

void sub_276CBBF24(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v17 = a4;
  if (objc_msgSend_definesProperty_(*(a1 + 32), v6, a2))
  {
    v9 = objc_msgSend_boxedValueForProperty_(*(a1 + 32), v7, a2);
    if (objc_msgSend_canApplyOnObject_(v17, v10, v9))
    {
      v12 = *(a1 + 40);
      v13 = objc_msgSend_specWithCurrentProperty_(v17, v11, v9);
      objc_msgSend_setSpec_forProperty_(v12, v14, v13, a2);
    }
  }

  else
  {
    v15 = *(a1 + 40);
    v9 = objc_msgSend_getUnsetSpec(v17, v7, v8);
    objc_msgSend_setSpec_forProperty_(v15, v16, v9, a2);
  }
}

void sub_276CBC0F4(uint64_t a1, const char *a2, uint64_t a3, void *a4)
{
  v5 = *(a1 + 32);
  v7 = objc_msgSend_getUnsetSpec(a4, a2, a3);
  objc_msgSend_setSpec_forProperty_(v5, v6, v7, a2);
}

void sub_276CBC254(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v15 = a4;
  if (objc_msgSend_isUnsetSpec(v15, v6, v7))
  {
    objc_msgSend_removeValueForProperty_(*(a1 + 32), v8, a2);
  }

  else
  {
    v9 = objc_msgSend_boxedValueForProperty_(*(a1 + 40), v8, a2);
    if (objc_msgSend_canApplyOnObject_(v15, v10, v9))
    {
      v14 = objc_msgSend_apply_(v15, v11, v9);
      if (!v14)
      {
        v14 = objc_msgSend_null(MEMORY[0x277CBEB68], v12, v13);
      }

      objc_msgSend_setBoxedObject_forProperty_(*(a1 + 32), v12, v14, a2);
    }
  }
}

void sub_276CBC5A0(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

void sub_276CBC6A0(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v12 = a3;
  v9 = objc_msgSend_operationPropertyName(a4, v6, v7);
  v10 = v12;
  if (v9)
  {
    v11 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v12, @"%@.%@", v12, v9);

    v10 = v11;
  }

  objc_msgSend_addObject_(*(a1 + 32), v8, v10);
}

void sub_276CBC824(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_276CBC94C(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v16 = v7;
  v11 = objc_msgSend_operationPropertyName(v8, v9, v10);
  v12 = v16;
  v13 = v16;
  if (v11)
  {
    v14 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v16, @"%@.%@", v16, v11);

    v13 = v14;
  }

  if (objc_msgSend_containsObject_(*(a1 + 32), v12, v13))
  {
    objc_msgSend_setSpec_forProperty_(*(a1 + 40), v15, v8, a2);
  }
}

void sub_276CBCBCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20)
{
  _Block_object_dispose((v22 - 80), 8);

  _Unwind_Resume(a1);
}

void sub_276CBCC10(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v14 = a3;
  v9 = a4;
  v10 = v9;
  if (!v9)
  {
    v10 = objc_msgSend_null(MEMORY[0x277CBEB68], v7, v8);
  }

  v11 = *(a1 + 32);
  v12 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v7, a2);
  objc_msgSend_setObject_forKeyedSubscript_(v11, v13, v10, v12);

  if (!v9)
  {
  }
}

void sub_276CBCD00(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a4;
  objc_opt_class();
  v7 = *(a1 + 32);
  v9 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v8, a2);
  v11 = objc_msgSend_objectForKeyedSubscript_(v7, v10, v9);
  v12 = TSUDynamicCast();

  v13 = v12;
  v19 = v6;
  if (v19 | v13)
  {
    isEqual = objc_msgSend_isEqual_(v13, v14, v19);

    if ((isEqual & 1) == 0)
    {
      *(*(*(a1 + 40) + 8) + 24) = 0;
    }
  }

  v16 = *(a1 + 32);
  v17 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v14, a2);
  objc_msgSend_removeObjectForKey_(v16, v18, v17);
}

void sub_276CBCF9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_276CBCFB4(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v12 = a3;
  v6 = a4;
  v9 = objc_msgSend_hash(v12, v7, v8);
  *(*(*(a1 + 32) + 8) + 24) ^= objc_msgSend_hash(v6, v10, v11) ^ v9;
}

void sub_276CBD184(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_276CBD1B0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_276CBD1C8(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v21 = v6;
  v11 = objc_msgSend_operationPropertyName(v7, v8, v9);
  v12 = v21;
  v13 = v21;
  if (v11)
  {
    v14 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v21, @"%@.%@", v21, v11);

    v13 = v14;
  }

  v15 = *(*(*(a1 + 32) + 8) + 40);
  v16 = objc_msgSend_description(v7, v12, v10);
  v18 = objc_msgSend_stringByAppendingFormat_(v15, v17, @"\n    %@ %@", v13, v16);
  v19 = *(*(a1 + 32) + 8);
  v20 = *(v19 + 40);
  *(v19 + 40) = v18;
}

void sub_276CBD7AC()
{
  v0 = dispatch_get_global_queue(0, 0);
  dispatch_async(v0, &unk_2885E6380);
}

uint64_t sub_276CBD868()
{
  v0 = objc_alloc_init(TSSPropertyCommandObjectRegistry);
  v1 = qword_280A54BA0;
  qword_280A54BA0 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

void sub_276CBDC50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, char a29)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  TSS::CommandPropertyEntryArchive::~CommandPropertyEntryArchive(&a29);

  _Unwind_Resume(a1);
}

uint64_t sub_276CBDCDC(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  *a2 = 0;
  v5 = *a1;
  *a1 = v4;

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  v6 = *(a2 + 1);
  *(a1 + 24) = a2[3];
  *(a1 + 8) = v6;
  *(a2 + 31) = 0;
  *(a2 + 8) = 0;
  return a1;
}

uint64_t sub_276CBE18C(uint64_t a1)
{
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

uint64_t *sub_276CBE1C8(uint64_t a1, int *a2)
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
      v5 = *(v2 + 32);
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

uint64_t sub_276CBE2C0(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_276CBE30C(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

void sub_276CBE30C(uint64_t a1)
{
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  v2 = *(a1 + 8);
}

void *sub_276CBE350(void *a1, id *a2, __int128 *a3)
{
  *a1 = *a2;
  v5 = a1 + 1;
  if (*(a3 + 23) < 0)
  {
    sub_276CBE3C4(v5, *a3, *(a3 + 1));
  }

  else
  {
    v6 = *a3;
    a1[3] = *(a3 + 2);
    *v5 = v6;
  }

  return a1;
}

void *sub_276CBE3C4(_BYTE *__dst, void *__src, unint64_t a3)
{
  if (a3 > 0x16)
  {
    if (a3 < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    sub_276CA3D8C();
  }

  __dst[23] = a3;
  v3 = a3 + 1;

  return memmove(__dst, __src, v3);
}

void *sub_276CBE468(uint64_t a1, unint64_t *a2)
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

uint64_t sub_276CBE55C(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
    }

    operator delete(v2);
  }

  return a1;
}

void sub_276CBE5A8(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_276CBE5A8(a1, *a2);
    sub_276CBE5A8(a1, a2[1]);
    sub_276CBE30C((a2 + 4));

    operator delete(a2);
  }
}

void sub_276CBE604(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_276CBE604(a1, *a2);
    sub_276CBE604(a1, a2[1]);

    operator delete(a2);
  }
}

id sub_276CBE660()
{
  if (qword_280A54BD8 != -1)
  {
    sub_276CE1914();
  }

  v1 = qword_280A54BE0;

  return v1;
}

uint64_t sub_276CBE6A4()
{
  v0 = dispatch_queue_create("TSSValidation", 0);
  v1 = qword_280A54BE0;
  qword_280A54BE0 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t sub_276CBE6E4()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 1;
  v0 = sub_276CBE660();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_276CBE79C;
  block[3] = &unk_27A6EF358;
  block[4] = &v4;
  dispatch_sync(v0, block);

  v1 = *(v5 + 24);
  _Block_object_dispose(&v4, 8);
  return v1;
}

double sub_276CBE79C(uint64_t a1)
{
  *(*(*(a1 + 32) + 8) + 24) = qword_280A54DD8 == 0;
  if ((*(*(*(a1 + 32) + 8) + 24) & 1) == 0)
  {
    v1 = CFAbsoluteTimeGetCurrent() - *&qword_280A54DE0;
    result = *&qword_280A53828;
    if (v1 > *&qword_280A53828)
    {
      result = *&qword_280A53828 + *&qword_280A53828;
      *&qword_280A53828 = *&qword_280A53828 + *&qword_280A53828;
    }
  }

  return result;
}

void sub_276CBE854()
{
  if (!--qword_280A54DD8)
  {
    CFAbsoluteTimeGetCurrent();
    qword_280A54DE0 = 0;
  }
}

void sub_276CBE8D8()
{
  if (!qword_280A54DD8++)
  {
    qword_280A54DE0 = CFAbsoluteTimeGetCurrent();
    qword_280A53828 = 0x4000000000000000;
  }
}

void sub_276CBE920(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v15 = a3;
  v5 = a4;
  objc_opt_class();
  v6 = TSUDynamicCast();
  v9 = v6;
  if (v6)
  {
    v10 = objc_msgSend_stylesheet(v6, v7, v8);
    if (v10)
    {
      objc_opt_class();
      v12 = objc_msgSend_proxyForReferencedObject_(v15, v11, v10);
      v13 = TSUDynamicCast();

      if (v13)
      {
        objc_msgSend_addStyleReference_(v13, v14, v9);
      }
    }
  }
}

void sub_276CBEA0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

id sub_276CBEA58(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v6 = objc_alloc(MEMORY[0x277D81180]);
  v8 = objc_msgSend_initWithArchive_unarchiver_(v6, v7, a3, v5);

  return v8;
}

uint64_t sub_276CBEACC(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x277CA0560](v7, a3);
  v5 = objc_msgSend_initWithMessage_(a1, v4, v7);
  TSP::Color::~Color(v7);
  return v5;
}

void sub_276CBEB1C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  TSP::Color::~Color(va);
  _Unwind_Resume(a1);
}

uint64_t sub_276CBEBAC()
{
  v0 = [TSSPropertyTypesafeDefinitionUtility alloc];
  inited = objc_msgSend_initPrivate(v0, v1, v2);
  v4 = qword_280A54BE8;
  qword_280A54BE8 = inited;

  return MEMORY[0x2821F96F8](inited, v4);
}

uint64_t sub_276CBEDC8(void *a1)
{
  v2 = a1[4];
  result = (*(a1[5] + 16))();
  *(*(a1[6] + 8) + 24) = *(a1[4] + 8);
  return result;
}

uint64_t sub_276CC2F94(void *a1, const char *a2, unsigned int a3)
{
  v3 = objc_msgSend_objectAtIndexedSubscript_(a1, a2, a3);
  v6 = objc_msgSend_intValue(v3, v4, v5);

  return v6;
}

void sub_276CC2FD0(void *a1, const char *a2, uint64_t a3)
{
  v5 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], a2, a3);
  objc_msgSend_addObject_(a1, v4, v5);
}

uint64_t sub_276CC302C(void *a1)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v2 = objc_opt_class();
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_276CC30FC;
  v6[3] = &unk_27A6EF3A8;
  v6[4] = &v7;
  v6[5] = v2;
  objc_msgSend_enumerateObjectsUsingBlock_(a1, v3, v6);
  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v4;
}

void sub_276CC30E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_276CC30FC(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  v6 = *(a1 + 40);
  v11 = v5;
  isKindOfClass = objc_opt_isKindOfClass();
  if ((isKindOfClass & 1) == 0)
  {
    sub_276CE193C();
  }

  v9 = v11;
  if (v11)
  {
    isKindOfClass = objc_msgSend_isVariation(v11, v11, v8);
    v9 = v11;
    if (isKindOfClass)
    {
      *(*(*(a1 + 32) + 8) + 24) = 1;
      *a3 = 1;
    }
  }

  return MEMORY[0x2821F96F8](isKindOfClass, v9);
}

uint64_t sub_276CC317C(void *a1, uint64_t a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  objc_opt_class();
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = a1;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v17, v21, 16);
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          sub_276CE19E0();
        }

        if (v11 == v4 || (objc_msgSend_isDescendentOf_(v11, v12, v4, v17) & 1) != 0)
        {
          v14 = 1;
          goto LABEL_14;
        }
      }

      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v13, &v17, v21, 16);
      v14 = 0;
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v14 = 0;
  }

LABEL_14:

  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

uint64_t sub_276CC33C8(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSSArchives.pb.cc", a4);
  *&v4 = 0;
  *algn_2812FB410 = v4;
  TSS::_ApplyThemeChildCommandArchive_default_instance_ = &unk_2885E6920;
  if (atomic_load_explicit(scc_info_ApplyThemeChildCommandArchive_TSSArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812FB420 = 0;
  unk_2812FB428 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSS::_ApplyThemeChildCommandArchive_default_instance_);
}

uint64_t sub_276CC3478(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSSArchives.pb.cc", a4);
  TSS::ApplyThemeCommandArchive::ApplyThemeCommandArchive(&TSS::_ApplyThemeCommandArchive_default_instance_, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSS::_ApplyThemeCommandArchive_default_instance_);
}

uint64_t sub_276CC34E8(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSSArchives.pb.cc", a4);
  TSS::CommandPropertyEntryArchive::CommandPropertyEntryArchive(&TSS::_CommandPropertyEntryArchive_default_instance_, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSS::_CommandPropertyEntryArchive_default_instance_);
}

uint64_t sub_276CC3558(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSSArchives.pb.cc", a4);
  TSS::CommandPropertyMapArchive::CommandPropertyMapArchive(&TSS::_CommandPropertyMapArchive_default_instance_, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSS::_CommandPropertyMapArchive_default_instance_);
}

uint64_t sub_276CC35C8(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSSArchives.pb.cc", a4);
  TSS::StyleArchive::StyleArchive(&TSS::_StyleArchive_default_instance_, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSS::_StyleArchive_default_instance_);
}

uint64_t sub_276CC3638(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSSArchives.pb.cc", a4);
  TSS::StyleUpdatePropertyMapCommandArchive::StyleUpdatePropertyMapCommandArchive(&TSS::_StyleUpdatePropertyMapCommandArchive_default_instance_, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSS::_StyleUpdatePropertyMapCommandArchive_default_instance_);
}

uint64_t sub_276CC36A8(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSSArchives.pb.cc", a4);
  TSS::StylesheetArchive::StylesheetArchive(&TSS::_StylesheetArchive_default_instance_, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSS::_StylesheetArchive_default_instance_);
}

uint64_t sub_276CC3718(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSSArchives.pb.cc", a4);
  TSS::StylesheetArchive_IdentifiedStyleEntry::StylesheetArchive_IdentifiedStyleEntry(&TSS::_StylesheetArchive_IdentifiedStyleEntry_default_instance_, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSS::_StylesheetArchive_IdentifiedStyleEntry_default_instance_);
}

uint64_t sub_276CC3788(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSSArchives.pb.cc", a4);
  TSS::StylesheetArchive_StyleChildrenEntry::StylesheetArchive_StyleChildrenEntry(&TSS::_StylesheetArchive_StyleChildrenEntry_default_instance_, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSS::_StylesheetArchive_StyleChildrenEntry_default_instance_);
}

uint64_t sub_276CC37F8(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSSArchives.pb.cc", a4);
  TSS::StylesheetArchive_VersionedStyles::StylesheetArchive_VersionedStyles(&TSS::_StylesheetArchive_VersionedStyles_default_instance_, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSS::_StylesheetArchive_VersionedStyles_default_instance_);
}

uint64_t sub_276CC3868(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSSArchives.pb.cc", a4);
  TSS::ThemeAddStylePresetCommandArchive::ThemeAddStylePresetCommandArchive(&TSS::_ThemeAddStylePresetCommandArchive_default_instance_, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSS::_ThemeAddStylePresetCommandArchive_default_instance_);
}

uint64_t sub_276CC38D8(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSSArchives.pb.cc", a4);
  TSS::ThemeArchive::ThemeArchive(&TSS::_ThemeArchive_default_instance_, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSS::_ThemeArchive_default_instance_);
}

uint64_t sub_276CC3948(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSSArchives.pb.cc", a4);
  *&v4 = 0;
  *algn_2812FB590 = v4;
  TSS::_ThemeMovePresetCommandArchive_default_instance_ = &unk_2885E6D40;
  if (atomic_load_explicit(scc_info_ThemeMovePresetCommandArchive_TSSArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *&algn_2812FB590[32] = 0u;
  *&algn_2812FB590[16] = 0u;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSS::_ThemeMovePresetCommandArchive_default_instance_);
}

uint64_t sub_276CC3A00(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSSArchives.pb.cc", a4);
  TSS::ThemeRemoveStylePresetCommandArchive::ThemeRemoveStylePresetCommandArchive(&TSS::_ThemeRemoveStylePresetCommandArchive_default_instance_, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSS::_ThemeRemoveStylePresetCommandArchive_default_instance_);
}

uint64_t sub_276CC3A70(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSSArchives.pb.cc", a4);
  *&v4 = 0;
  unk_2812FB4B8 = v4;
  TSS::_ThemeReplaceColorPresetCommandArchive_default_instance_ = &unk_2885E6B30;
  if (atomic_load_explicit(scc_info_ThemeReplaceColorPresetCommandArchive_TSSArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  dword_2812FB4E8 = 0;
  unk_2812FB4D8 = 0u;
  unk_2812FB4C8 = 0u;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSS::_ThemeReplaceColorPresetCommandArchive_default_instance_);
}

uint64_t sub_276CC3B2C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSSArchives.pb.cc", a4);
  *&v4 = 0;
  unk_2812FB480 = v4;
  TSS::_ThemeReplacePresetCommandArchive_default_instance_ = &unk_2885E6A80;
  if (atomic_load_explicit(scc_info_ThemeReplacePresetCommandArchive_TSSArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812FB490 = 0;
  unk_2812FB498 = 0;
  dword_2812FB4A8 = 0;
  qword_2812FB4A0 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSS::_ThemeReplacePresetCommandArchive_default_instance_);
}

uint64_t sub_276CC3BE4(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSSArchives.pb.cc", a4);
  *&v4 = 0;
  unk_2812FB5C8 = v4;
  TSS::_ThemeReplaceStylePresetAndDisconnectStylesCommandArchive_default_instance_ = &unk_2885E6DF0;
  if (atomic_load_explicit(scc_info_ThemeReplaceStylePresetAndDisconnectStylesCommandArchive_TSSArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812FB5D8 = 0;
  unk_2812FB5E0 = 0;
  qword_2812FB5E8 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSS::_ThemeReplaceStylePresetAndDisconnectStylesCommandArchive_default_instance_);
}

TSP::Reference *TSS::StyleArchive::clear_parent(TSS::StyleArchive *this)
{
  result = *(this + 5);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~4u;
  return result;
}

TSP::Reference *TSS::StyleArchive::clear_stylesheet(TSS::StyleArchive *this)
{
  result = *(this + 6);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~8u;
  return result;
}

TSS::StyleArchive *TSS::StyleArchive::StyleArchive(TSS::StyleArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2885E6450;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_StyleArchive_TSSArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v3 = MEMORY[0x277D80A90];
  *(this + 3) = MEMORY[0x277D80A90];
  *(this + 4) = v3;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 56) = 0;
  return this;
}

TSS::StyleArchive *TSS::StyleArchive::StyleArchive(TSS::StyleArchive *this, const TSS::StyleArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2885E6450;
  v5 = *(a2 + 4);
  *(this + 2) = v5;
  v6 = *(a2 + 1);
  if (v6)
  {
    sub_276CD80C8(this + 1, (v6 & 0xFFFFFFFFFFFFFFFELL) + 8);
    v5 = *(a2 + 4);
  }

  v7 = MEMORY[0x277D80A90];
  *(this + 3) = MEMORY[0x277D80A90];
  if (v5)
  {
    v8 = *(a2 + 3);
    if (*v4)
    {
      v11 = *(*v4 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::internal::ArenaStringPtr::Set();
    v5 = *(a2 + 4);
  }

  *(this + 4) = v7;
  if ((v5 & 2) != 0)
  {
    v9 = *(a2 + 4);
    if (*v4)
    {
      v12 = *(*v4 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::internal::ArenaStringPtr::Set();
    v5 = *(a2 + 4);
  }

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
  *(this + 56) = *(a2 + 56);
  return this;
}

void TSS::StyleArchive::~StyleArchive(TSS::StyleArchive *this)
{
  sub_276CC3FA8(this);
  sub_276CC409C(this + 1);
}

{
  TSS::StyleArchive::~StyleArchive(this);

  JUMPOUT(0x277CA0980);
}

TSP::Reference *sub_276CC3FA8(TSP::Reference *result)
{
  v1 = result;
  v2 = *(result + 3);
  v3 = MEMORY[0x277D80A90];
  if (v2 != MEMORY[0x277D80A90])
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    result = MEMORY[0x277CA0980](v2, 0x1012C40EC159624);
  }

  v4 = *(v1 + 4);
  if (v4 != v3)
  {
    if (*(v4 + 23) < 0)
    {
      operator delete(*v4);
    }

    result = MEMORY[0x277CA0980](v4, 0x1012C40EC159624);
  }

  if (v1 != &TSS::_StyleArchive_default_instance_)
  {
    v5 = *(v1 + 5);
    if (v5)
    {
      TSP::Reference::~Reference(v5);
      MEMORY[0x277CA0980]();
    }

    result = *(v1 + 6);
    if (result)
    {
      TSP::Reference::~Reference(result);

      JUMPOUT(0x277CA0980);
    }
  }

  return result;
}

uint64_t *sub_276CC409C(uint64_t *result)
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

      JUMPOUT(0x277CA0980);
    }
  }

  return result;
}

void *TSS::StyleArchive::default_instance(TSS::StyleArchive *this)
{
  if (atomic_load_explicit(scc_info_StyleArchive_TSSArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSS::_StyleArchive_default_instance_;
}

uint64_t *TSS::StyleArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 4);
  if ((v2 & 0xF) == 0)
  {
    goto LABEL_7;
  }

  if (v2)
  {
    v5 = this[3] & 0xFFFFFFFFFFFFFFFELL;
    if (*(v5 + 23) < 0)
    {
      **v5 = 0;
      *(v5 + 8) = 0;
      if ((v2 & 2) != 0)
      {
        goto LABEL_15;
      }
    }

    else
    {
      *v5 = 0;
      *(v5 + 23) = 0;
      if ((v2 & 2) != 0)
      {
        goto LABEL_15;
      }
    }

LABEL_4:
    if ((v2 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

  if ((v2 & 2) == 0)
  {
    goto LABEL_4;
  }

LABEL_15:
  v6 = this[4] & 0xFFFFFFFFFFFFFFFELL;
  if (*(v6 + 23) < 0)
  {
    **v6 = 0;
    *(v6 + 8) = 0;
    if ((v2 & 4) != 0)
    {
      goto LABEL_19;
    }

LABEL_5:
    if ((v2 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  *v6 = 0;
  *(v6 + 23) = 0;
  if ((v2 & 4) == 0)
  {
    goto LABEL_5;
  }

LABEL_19:
  this = TSP::Reference::Clear(this[5]);
  if ((v2 & 8) != 0)
  {
LABEL_6:
    this = TSP::Reference::Clear(*(v1 + 48));
  }

LABEL_7:
  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 48) = 0;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_276CD8114(v3);
  }

  return this;
}

google::protobuf::internal *TSS::StyleArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v32 = a2;
  v5 = *(a3 + 92);
  v6 = 0;
  if ((sub_276CD7ED8(a3, &v32) & 1) == 0)
  {
    while (1)
    {
      v8 = (v32 + 1);
      v9 = *v32;
      if ((*v32 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v10 = v9 + (*v8 << 7);
      v9 = v10 - 128;
      if ((*v8 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v32, (v10 - 128));
      v32 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_56;
      }

      v8 = TagFallback;
      v9 = v27;
LABEL_7:
      v11 = v9 >> 3;
      if (v9 >> 3 <= 2)
      {
        if (v11 == 1)
        {
          if (v9 != 10)
          {
            goto LABEL_41;
          }

          *(a1 + 16) |= 1u;
          v23 = *(a1 + 8);
          if (v23)
          {
            v30 = *(v23 & 0xFFFFFFFFFFFFFFFELL);
          }
        }

        else
        {
          if (v11 != 2 || v9 != 18)
          {
            goto LABEL_41;
          }

          *(a1 + 16) |= 2u;
          v16 = *(a1 + 8);
          if (v16)
          {
            v31 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
          }
        }

        google::protobuf::internal::ArenaStringPtr::Mutable();
        v19 = google::protobuf::internal::InlineGreedyStringParser();
LABEL_48:
        v32 = v19;
        if (!v19)
        {
          goto LABEL_56;
        }

        goto LABEL_49;
      }

      if (v11 == 3)
      {
        if (v9 != 26)
        {
          goto LABEL_41;
        }

        *(a1 + 16) |= 4u;
        v12 = *(a1 + 40);
        if (!v12)
        {
          v17 = *(a1 + 8);
          if (v17)
          {
            v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
          }

          v18 = MEMORY[0x277CA0650](v17);
          LODWORD(v12) = v18;
          *(a1 + 40) = v18;
LABEL_30:
          v8 = v32;
        }

LABEL_31:
        v19 = sub_276CE1A84(a3, v12, v8);
        goto LABEL_48;
      }

      if (v11 != 4)
      {
        if (v11 == 5 && v9 == 42)
        {
          *(a1 + 16) |= 8u;
          v12 = *(a1 + 48);
          if (!v12)
          {
            v13 = *(a1 + 8);
            if (v13)
            {
              v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
            }

            v14 = MEMORY[0x277CA0650](v13);
            LODWORD(v12) = v14;
            *(a1 + 48) = v14;
            goto LABEL_30;
          }

          goto LABEL_31;
        }

LABEL_41:
        if (v9)
        {
          v24 = (v9 & 7) == 4;
        }

        else
        {
          v24 = 1;
        }

        if (v24)
        {
          *(a3 + 80) = v9 - 1;
          goto LABEL_2;
        }

        if ((*(a1 + 8) & 1) == 0)
        {
          sub_276CD7F50((a1 + 8));
        }

        v19 = google::protobuf::internal::UnknownFieldParse();
        goto LABEL_48;
      }

      if (v9 != 32)
      {
        goto LABEL_41;
      }

      v6 |= 0x10u;
      v21 = (v8 + 1);
      v20 = *v8;
      if ((v20 & 0x8000000000000000) == 0)
      {
        goto LABEL_36;
      }

      v22 = *v21;
      v20 = (v22 << 7) + v20 - 128;
      if ((v22 & 0x80000000) == 0)
      {
        v21 = (v8 + 2);
LABEL_36:
        v32 = v21;
        *(a1 + 56) = v20 != 0;
        goto LABEL_49;
      }

      v28 = google::protobuf::internal::VarintParseSlow64(v8, v20);
      v32 = v28;
      *(a1 + 56) = v29 != 0;
      if (!v28)
      {
LABEL_56:
        v32 = 0;
        goto LABEL_2;
      }

LABEL_49:
      v25 = *(a3 + 92);
      if (sub_276CD7ED8(a3, &v32))
      {
        goto LABEL_2;
      }
    }

    v8 = (v32 + 2);
LABEL_6:
    v32 = v8;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v6;
  return v32;
}

unsigned __int8 *TSS::StyleArchive::_InternalSerialize(TSS::StyleArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(this + 4);
  if (v6)
  {
    v4 = sub_276CC4788(a3, 1, (*(this + 3) & 0xFFFFFFFFFFFFFFFELL), a2);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v4 = sub_276CC4788(a3, 2, (*(this + 4) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_9:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v7 = *(this + 5);
  *v4 = 26;
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

  v4 = TSP::Reference::_InternalSerialize(v7, v9, a3);
  if ((v6 & 0x10) == 0)
  {
LABEL_5:
    if ((v6 & 8) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_22;
  }

LABEL_19:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v13 = *(this + 56);
  *v4 = 32;
  v4[1] = v13;
  v4 += 2;
  if ((v6 & 8) != 0)
  {
LABEL_22:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v14 = *(this + 6);
    *v4 = 42;
    v15 = *(v14 + 5);
    if (v15 > 0x7F)
    {
      v4[1] = v15 | 0x80;
      v17 = v15 >> 7;
      if (v15 >> 14)
      {
        v16 = v4 + 3;
        do
        {
          *(v16 - 1) = v17 | 0x80;
          v18 = v17 >> 7;
          ++v16;
          v19 = v17 >> 14;
          v17 >>= 7;
        }

        while (v19);
        *(v16 - 1) = v18;
      }

      else
      {
        v4[2] = v17;
        v16 = v4 + 3;
      }
    }

    else
    {
      v4[1] = v15;
      v16 = v4 + 2;
    }

    v4 = TSP::Reference::_InternalSerialize(v14, v16, a3);
  }

LABEL_32:
  v20 = *(this + 1);
  if ((v20 & 1) == 0)
  {
    return v4;
  }

  return MEMORY[0x2821EAC40]((v20 & 0xFFFFFFFFFFFFFFFELL) + 8, v4, a3);
}

uint64_t sub_276CC4788(uint64_t *a1, int a2, const void **a3, _BYTE *a4)
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

uint64_t TSS::StyleArchive::ByteSizeLong(TSS::StyleArchive *this)
{
  v2 = *(this + 4);
  if ((v2 & 0x1F) == 0)
  {
    v4 = 0;
    goto LABEL_16;
  }

  if ((v2 & 1) == 0)
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  v5 = *(this + 3) & 0xFFFFFFFFFFFFFFFELL;
  v6 = *(v5 + 23);
  v7 = *(v5 + 8);
  if ((v6 & 0x80u) == 0)
  {
    v7 = v6;
  }

  v3 = v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 2) != 0)
  {
LABEL_9:
    v8 = *(this + 4) & 0xFFFFFFFFFFFFFFFELL;
    v9 = *(v8 + 23);
    v10 = *(v8 + 8);
    if ((v9 & 0x80u) == 0)
    {
      v10 = v9;
    }

    v3 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_12:
  if ((v2 & 4) != 0)
  {
    v13 = TSP::Reference::ByteSizeLong(*(this + 5));
    v3 += v13 + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 8) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if ((v2 & 8) != 0)
  {
LABEL_14:
    v11 = TSP::Reference::ByteSizeLong(*(this + 6));
    v3 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_15:
  v4 = v3 + ((v2 >> 3) & 2);
LABEL_16:
  if (*(this + 8))
  {

    return MEMORY[0x2821EADD8](this + 8, v4, this + 20);
  }

  else
  {
    *(this + 5) = v4;
    return v4;
  }
}

uint64_t TSS::StyleArchive::MergeFrom(TSS::StyleArchive *this, const Message *lpsrc)
{
  v4 = *lpsrc->var0;
  if (v5)
  {

    return TSS::StyleArchive::MergeFrom(this, v5);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSS::StyleArchive::MergeFrom(uint64_t this, const TSS::StyleArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_276CD80C8((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 4);
  if ((v5 & 0x1F) != 0)
  {
    if (v5)
    {
      v6 = *(a2 + 3);
      *(v3 + 16) |= 1u;
      v7 = *(v3 + 8);
      if (v7)
      {
        v17 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
      }

      this = google::protobuf::internal::ArenaStringPtr::Set();
    }

    if ((v5 & 2) != 0)
    {
      v8 = *(a2 + 4);
      *(v3 + 16) |= 2u;
      v9 = *(v3 + 8);
      if (v9)
      {
        v18 = *(v9 & 0xFFFFFFFFFFFFFFFELL);
      }

      this = google::protobuf::internal::ArenaStringPtr::Set();
    }

    v10 = MEMORY[0x277D80A18];
    if ((v5 & 4) != 0)
    {
      *(v3 + 16) |= 4u;
      v11 = *(v3 + 40);
      if (!v11)
      {
        v12 = *(v3 + 8);
        if (v12)
        {
          v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
        }

        v11 = MEMORY[0x277CA0650](v12);
        *(v3 + 40) = v11;
      }

      if (*(a2 + 5))
      {
        v13 = *(a2 + 5);
      }

      else
      {
        v13 = v10;
      }

      this = TSP::Reference::MergeFrom(v11, v13);
      if ((v5 & 8) == 0)
      {
LABEL_14:
        if ((v5 & 0x10) == 0)
        {
LABEL_16:
          *(v3 + 16) |= v5;
          return this;
        }

LABEL_15:
        *(v3 + 56) = *(a2 + 56);
        goto LABEL_16;
      }
    }

    else if ((v5 & 8) == 0)
    {
      goto LABEL_14;
    }

    *(v3 + 16) |= 8u;
    v14 = *(v3 + 48);
    if (!v14)
    {
      v15 = *(v3 + 8);
      if (v15)
      {
        v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
      }

      v14 = MEMORY[0x277CA0650](v15);
      *(v3 + 48) = v14;
    }

    if (*(a2 + 6))
    {
      v16 = *(a2 + 6);
    }

    else
    {
      v16 = v10;
    }

    this = TSP::Reference::MergeFrom(v14, v16);
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  return this;
}

uint64_t *TSS::StyleArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSS::StyleArchive::Clear(this);

    return TSS::StyleArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSS::StyleArchive::CopyFrom(uint64_t *this, const TSS::StyleArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSS::StyleArchive::Clear(this);

    return TSS::StyleArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSS::StyleArchive::IsInitialized(TSS::StyleArchive *this)
{
  v2 = *(this + 4);
  if ((v2 & 4) != 0)
  {
    result = TSP::Reference::IsInitialized(*(this + 5));
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 8) == 0)
  {
    return 1;
  }

  result = TSP::Reference::IsInitialized(*(this + 6));
  if (result)
  {
    return 1;
  }

  return result;
}

__n128 TSS::StyleArchive::InternalSwap(TSS::StyleArchive *this, TSS::StyleArchive *a2)
{
  sub_276CC4DA4(this + 1, a2 + 1);
  v4 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v4;
  v5 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v5;
  v6 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v6;
  v7 = *(this + 5);
  v8 = *(this + 6);
  result = *(a2 + 40);
  *(this + 40) = result;
  *(a2 + 5) = v7;
  *(a2 + 6) = v8;
  LOBYTE(v7) = *(this + 56);
  *(this + 56) = *(a2 + 56);
  *(a2 + 56) = v7;
  return result;
}

uint64_t *sub_276CC4DA4(uint64_t *result, uint64_t *a2)
{
  v2 = result;
  v3 = *a2;
  if (*result)
  {
    if ((v3 & 1) == 0)
    {
      v4 = sub_276CD7F50(a2);
      goto LABEL_6;
    }
  }

  else if ((v3 & 1) == 0)
  {
    return result;
  }

  v4 = ((v3 & 0xFFFFFFFFFFFFFFFELL) + 8);
LABEL_6:

  return sub_276CD8164(v2, v4);
}

uint64_t TSS::StyleArchive::GetMetadata(TSS::StyleArchive *this)
{
  google::protobuf::internal::AssignDescriptors();
  result = *off_2812FAF80;
  v2 = off_2812FAF80[1];
  return result;
}

TSP::Reference *TSS::StylesheetArchive_IdentifiedStyleEntry::clear_style(TSS::StylesheetArchive_IdentifiedStyleEntry *this)
{
  result = *(this + 4);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

TSS::StylesheetArchive_IdentifiedStyleEntry *TSS::StylesheetArchive_IdentifiedStyleEntry::StylesheetArchive_IdentifiedStyleEntry(TSS::StylesheetArchive_IdentifiedStyleEntry *this, google::protobuf::Arena *a2)
{
  *this = &unk_2885E6500;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_StylesheetArchive_IdentifiedStyleEntry_TSSArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = MEMORY[0x277D80A90];
  *(this + 4) = 0;
  return this;
}

TSS::StylesheetArchive_IdentifiedStyleEntry *TSS::StylesheetArchive_IdentifiedStyleEntry::StylesheetArchive_IdentifiedStyleEntry(TSS::StylesheetArchive_IdentifiedStyleEntry *this, const TSS::StylesheetArchive_IdentifiedStyleEntry *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2885E6500;
  v5 = *(a2 + 4);
  *(this + 2) = v5;
  v6 = *(a2 + 1);
  if (v6)
  {
    sub_276CD80C8(this + 1, (v6 & 0xFFFFFFFFFFFFFFFELL) + 8);
    v5 = *(a2 + 4);
  }

  *(this + 3) = MEMORY[0x277D80A90];
  if (v5)
  {
    v7 = *(a2 + 3);
    if (*v4)
    {
      v9 = *(*v4 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::internal::ArenaStringPtr::Set();
    v5 = *(a2 + 4);
  }

  if ((v5 & 2) != 0)
  {
    operator new();
  }

  *(this + 4) = 0;
  return this;
}

void TSS::StylesheetArchive_IdentifiedStyleEntry::~StylesheetArchive_IdentifiedStyleEntry(TSS::StylesheetArchive_IdentifiedStyleEntry *this)
{
  v2 = *(this + 3);
  if (v2 != MEMORY[0x277D80A90])
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x277CA0980](v2, 0x1012C40EC159624);
  }

  if (this != &TSS::_StylesheetArchive_IdentifiedStyleEntry_default_instance_)
  {
    v3 = *(this + 4);
    if (v3)
    {
      TSP::Reference::~Reference(v3);
      MEMORY[0x277CA0980]();
    }
  }

  sub_276CC409C(this + 1);
}

{
  TSS::StylesheetArchive_IdentifiedStyleEntry::~StylesheetArchive_IdentifiedStyleEntry(this);

  JUMPOUT(0x277CA0980);
}

void *TSS::StylesheetArchive_IdentifiedStyleEntry::default_instance(TSS::StylesheetArchive_IdentifiedStyleEntry *this)
{
  if (atomic_load_explicit(scc_info_StylesheetArchive_IdentifiedStyleEntry_TSSArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSS::_StylesheetArchive_IdentifiedStyleEntry_default_instance_;
}

uint64_t *TSS::StylesheetArchive_IdentifiedStyleEntry::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 4);
  if ((v2 & 3) != 0)
  {
    if ((v2 & 1) == 0)
    {
      goto LABEL_5;
    }

    v3 = this[3] & 0xFFFFFFFFFFFFFFFELL;
    if ((*(v3 + 23) & 0x80000000) == 0)
    {
      *v3 = 0;
      *(v3 + 23) = 0;
LABEL_5:
      if ((v2 & 2) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    **v3 = 0;
    *(v3 + 8) = 0;
    if ((v2 & 2) != 0)
    {
LABEL_6:
      this = TSP::Reference::Clear(this[4]);
    }
  }

LABEL_7:
  v5 = *(v1 + 8);
  v4 = v1 + 8;
  *(v4 + 8) = 0;
  if (v5)
  {

    return sub_276CD8114(v4);
  }

  return this;
}

google::protobuf::internal *TSS::StylesheetArchive_IdentifiedStyleEntry::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v21 = a2;
  v5 = *(a3 + 92);
  while ((sub_276CD7ED8(a3, &v21) & 1) == 0)
  {
    v6 = (v21 + 1);
    v7 = *v21;
    if ((*v21 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v8 = v7 + (*v6 << 7);
    v7 = v8 - 128;
    if ((*v6 & 0x80000000) == 0)
    {
      v6 = (v21 + 2);
LABEL_6:
      v21 = v6;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v21, (v8 - 128));
    v21 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v6 = TagFallback;
    v7 = v18;
LABEL_7:
    if (v7 >> 3 == 2)
    {
      if (v7 == 18)
      {
        *(a1 + 16) |= 2u;
        v12 = *(a1 + 32);
        if (!v12)
        {
          v13 = *(a1 + 8);
          if (v13)
          {
            v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
          }

          v14 = MEMORY[0x277CA0650](v13);
          LODWORD(v12) = v14;
          *(a1 + 32) = v14;
          v6 = v21;
        }

        v11 = sub_276CE1A84(a3, v12, v6);
        goto LABEL_28;
      }
    }

    else if (v7 >> 3 == 1 && v7 == 10)
    {
      *(a1 + 16) |= 1u;
      v15 = *(a1 + 8);
      if (v15)
      {
        v19 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
      }

      google::protobuf::internal::ArenaStringPtr::Mutable();
      v11 = google::protobuf::internal::InlineGreedyStringParser();
      goto LABEL_28;
    }

    if (v7)
    {
      v10 = (v7 & 7) == 4;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      *(a3 + 80) = v7 - 1;
      return v21;
    }

    if ((*(a1 + 8) & 1) == 0)
    {
      sub_276CD7F50((a1 + 8));
    }

    v11 = google::protobuf::internal::UnknownFieldParse();
LABEL_28:
    v21 = v11;
    if (!v11)
    {
      return 0;
    }

    v16 = *(a3 + 92);
  }

  return v21;
}

unsigned __int8 *TSS::StylesheetArchive_IdentifiedStyleEntry::_InternalSerialize(TSS::StylesheetArchive_IdentifiedStyleEntry *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(this + 4);
  if (v6)
  {
    v4 = sub_276CC4788(a3, 1, (*(this + 3) & 0xFFFFFFFFFFFFFFFELL), a2);
  }

  if ((v6 & 2) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v7 = *(this + 4);
    *v4 = 18;
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

    v4 = TSP::Reference::_InternalSerialize(v7, v9, a3);
  }

  v13 = *(this + 1);
  if ((v13 & 1) == 0)
  {
    return v4;
  }

  return MEMORY[0x2821EAC40]((v13 & 0xFFFFFFFFFFFFFFFELL) + 8, v4, a3);
}

uint64_t TSS::StylesheetArchive_IdentifiedStyleEntry::RequiredFieldsByteSizeFallback(TSS::StylesheetArchive_IdentifiedStyleEntry *this)
{
  v1 = *(this + 4);
  if ((v1 & 1) == 0)
  {
    v2 = 0;
    if ((v1 & 2) == 0)
    {
      return v2;
    }

    goto LABEL_7;
  }

  v3 = *(this + 3) & 0xFFFFFFFFFFFFFFFELL;
  v4 = *(v3 + 23);
  v5 = *(v3 + 8);
  if ((v4 & 0x80u) == 0)
  {
    v5 = v4;
  }

  v2 = v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v1 & 2) != 0)
  {
LABEL_7:
    v6 = TSP::Reference::ByteSizeLong(*(this + 4));
    v2 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  return v2;
}

uint64_t TSS::StylesheetArchive_IdentifiedStyleEntry::ByteSizeLong(TSP::Reference **this)
{
  if ((~*(this + 4) & 3) != 0)
  {
    v8 = TSS::StylesheetArchive_IdentifiedStyleEntry::RequiredFieldsByteSizeFallback(this);
  }

  else
  {
    v2 = this[4];
    v3 = this[3] & 0xFFFFFFFFFFFFFFFELL;
    v4 = *(v3 + 23);
    v5 = *(v3 + 8);
    if ((v4 & 0x80u) == 0)
    {
      v6 = v4;
    }

    else
    {
      v6 = v5;
    }

    v7 = TSP::Reference::ByteSizeLong(v2);
    v8 = v6 + v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

  if (this[1])
  {

    return MEMORY[0x2821EADD8](this + 1, v8, this + 20);
  }

  else
  {
    *(this + 5) = v8;
    return v8;
  }
}

uint64_t TSS::StylesheetArchive_IdentifiedStyleEntry::MergeFrom(TSS::StylesheetArchive_IdentifiedStyleEntry *this, const Message *lpsrc)
{
  v4 = *lpsrc->var0;
  if (v5)
  {

    return TSS::StylesheetArchive_IdentifiedStyleEntry::MergeFrom(this, v5);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSS::StylesheetArchive_IdentifiedStyleEntry::MergeFrom(uint64_t this, const TSS::StylesheetArchive_IdentifiedStyleEntry *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_276CD80C8((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 4);
  if ((v5 & 3) != 0)
  {
    if (v5)
    {
      v6 = *(a2 + 3);
      *(v3 + 16) |= 1u;
      v7 = *(v3 + 8);
      if (v7)
      {
        v11 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
      }

      this = google::protobuf::internal::ArenaStringPtr::Set();
    }

    if ((v5 & 2) != 0)
    {
      *(v3 + 16) |= 2u;
      v8 = *(v3 + 32);
      if (!v8)
      {
        v9 = *(v3 + 8);
        if (v9)
        {
          v9 = *(v9 & 0xFFFFFFFFFFFFFFFELL);
        }

        v8 = MEMORY[0x277CA0650](v9);
        *(v3 + 32) = v8;
      }

      if (*(a2 + 4))
      {
        v10 = *(a2 + 4);
      }

      else
      {
        v10 = MEMORY[0x277D80A18];
      }

      return TSP::Reference::MergeFrom(v8, v10);
    }
  }

  return this;
}

uint64_t *TSS::StylesheetArchive_IdentifiedStyleEntry::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSS::StylesheetArchive_IdentifiedStyleEntry::Clear(this);

    return TSS::StylesheetArchive_IdentifiedStyleEntry::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSS::StylesheetArchive_IdentifiedStyleEntry::CopyFrom(uint64_t *this, const TSS::StylesheetArchive_IdentifiedStyleEntry *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSS::StylesheetArchive_IdentifiedStyleEntry::Clear(this);

    return TSS::StylesheetArchive_IdentifiedStyleEntry::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSS::StylesheetArchive_IdentifiedStyleEntry::IsInitialized(TSP::Reference **this)
{
  if ((~*(this + 4) & 3) != 0)
  {
    return 0;
  }

  else
  {
    return TSP::Reference::IsInitialized(this[4]);
  }
}

uint64_t *TSS::StylesheetArchive_IdentifiedStyleEntry::InternalSwap(TSS::StylesheetArchive_IdentifiedStyleEntry *this, TSS::StylesheetArchive_IdentifiedStyleEntry *a2)
{
  result = sub_276CC4DA4(this + 1, a2 + 1);
  v5 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v5;
  v6 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v6;
  v7 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v7;
  return result;
}

uint64_t TSS::StylesheetArchive_IdentifiedStyleEntry::GetMetadata(TSS::StylesheetArchive_IdentifiedStyleEntry *this)
{
  google::protobuf::internal::AssignDescriptors();
  result = off_2812FAF80[2];
  v2 = off_2812FAF80[3];
  return result;
}

TSP::Reference *TSS::StylesheetArchive_StyleChildrenEntry::clear_parent(TSS::StylesheetArchive_StyleChildrenEntry *this)
{
  result = *(this + 6);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

uint64_t TSS::StylesheetArchive_StyleChildrenEntry::clear_children(uint64_t this)
{
  v1 = *(this + 32);
  if (v1 >= 1)
  {
    v2 = this;
    v3 = (*(this + 40) + 8);
    do
    {
      v4 = *v3++;
      this = TSP::Reference::Clear(v4);
      --v1;
    }

    while (v1);
    *(v2 + 32) = 0;
  }

  return this;
}

TSS::StylesheetArchive_StyleChildrenEntry *TSS::StylesheetArchive_StyleChildrenEntry::StylesheetArchive_StyleChildrenEntry(TSS::StylesheetArchive_StyleChildrenEntry *this, google::protobuf::Arena *a2)
{
  *this = &unk_2885E65B0;
  *(this + 1) = a2;
  *(this + 3) = a2;
  *(this + 2) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  if (atomic_load_explicit(scc_info_StylesheetArchive_StyleChildrenEntry_TSSArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 6) = 0;
  return this;
}

TSS::StylesheetArchive_StyleChildrenEntry *TSS::StylesheetArchive_StyleChildrenEntry::StylesheetArchive_StyleChildrenEntry(TSS::StylesheetArchive_StyleChildrenEntry *this, const TSS::StylesheetArchive_StyleChildrenEntry *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2885E65B0;
  *(this + 4) = *(a2 + 4);
  *(this + 11) = 0;
  *(this + 28) = 0;
  *(this + 36) = 0;
  *(this + 20) = 0;
  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 5);
    v7 = *(a2 + 8);
    v8 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 24));
    sub_276CD81CC(this + 24, v8, (v6 + 8), v5, **(this + 5) - *(this + 8));
    v9 = *(this + 8) + v5;
    *(this + 8) = v9;
    v10 = *(this + 5);
    if (*v10 < v9)
    {
      *v10 = v9;
    }
  }

  v11 = *(a2 + 1);
  if (v11)
  {
    sub_276CD80C8(v4, (v11 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  if (*(a2 + 16))
  {
    operator new();
  }

  *(this + 6) = 0;
  return this;
}

void sub_276CC5B20(_Unwind_Exception *a1)
{
  MEMORY[0x277CA0980](v2, 0x1081C407D3F2757);
  sub_276CA86B8((v1 + 24));
  _Unwind_Resume(a1);
}

void TSS::StylesheetArchive_StyleChildrenEntry::~StylesheetArchive_StyleChildrenEntry(TSS::StylesheetArchive_StyleChildrenEntry *this)
{
  if (this != &TSS::_StylesheetArchive_StyleChildrenEntry_default_instance_)
  {
    v2 = *(this + 6);
    if (v2)
    {
      TSP::Reference::~Reference(v2);
      MEMORY[0x277CA0980]();
    }
  }

  sub_276CC409C(this + 1);
  sub_276CA86B8(this + 3);
}

{
  TSS::StylesheetArchive_StyleChildrenEntry::~StylesheetArchive_StyleChildrenEntry(this);

  JUMPOUT(0x277CA0980);
}

void *TSS::StylesheetArchive_StyleChildrenEntry::default_instance(TSS::StylesheetArchive_StyleChildrenEntry *this)
{
  if (atomic_load_explicit(scc_info_StylesheetArchive_StyleChildrenEntry_TSSArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSS::_StylesheetArchive_StyleChildrenEntry_default_instance_;
}

uint64_t *TSS::StylesheetArchive_StyleChildrenEntry::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 8);
  if (v2 >= 1)
  {
    v3 = (this[5] + 8);
    do
    {
      v4 = *v3++;
      this = TSP::Reference::Clear(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  if (*(v1 + 16))
  {
    this = TSP::Reference::Clear(*(v1 + 48));
  }

  v6 = *(v1 + 8);
  v5 = v1 + 8;
  *(v5 + 8) = 0;
  if (v6)
  {

    return sub_276CD8114(v5);
  }

  return this;
}

google::protobuf::internal *TSS::StylesheetArchive_StyleChildrenEntry::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v29 = a2;
  v5 = *(a3 + 92);
  while (1)
  {
    if (sub_276CD7ED8(a3, &v29))
    {
      return v29;
    }

    v6 = (v29 + 1);
    v7 = *v29;
    if ((*v29 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v8 = v7 + (*v6 << 7);
    v7 = v8 - 128;
    if ((*v6 & 0x80000000) == 0)
    {
      v6 = (v29 + 2);
LABEL_6:
      v29 = v6;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v29, (v8 - 128));
    v29 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v6 = TagFallback;
    v7 = v27;
LABEL_7:
    if (v7 >> 3 == 2)
    {
      break;
    }

    if (v7 >> 3 != 1 || v7 != 10)
    {
      goto LABEL_12;
    }

    *(a1 + 16) |= 1u;
    v22 = *(a1 + 48);
    if (!v22)
    {
      v23 = *(a1 + 8);
      if (v23)
      {
        v23 = *(v23 & 0xFFFFFFFFFFFFFFFELL);
      }

      v24 = MEMORY[0x277CA0650](v23);
      LODWORD(v22) = v24;
      *(a1 + 48) = v24;
      v6 = v29;
    }

    v11 = sub_276CE1A84(a3, v22, v6);
LABEL_38:
    v29 = v11;
    if (!v11)
    {
      return 0;
    }

LABEL_39:
    v25 = *(a3 + 92);
  }

  if (v7 == 18)
  {
    v12 = v6 - 1;
    while (1)
    {
      v13 = (v12 + 1);
      v29 = (v12 + 1);
      v14 = *(a1 + 40);
      if (!v14)
      {
        break;
      }

      v21 = *(a1 + 32);
      v16 = *v14;
      if (v21 < *v14)
      {
        *(a1 + 32) = v21 + 1;
        v18 = *&v14[2 * v21 + 2];
        goto LABEL_27;
      }

      if (v16 == *(a1 + 36))
      {
        goto LABEL_23;
      }

LABEL_24:
      *v14 = v16 + 1;
      v17 = MEMORY[0x277CA0650](*(a1 + 24));
      LODWORD(v18) = v17;
      v19 = *(a1 + 32);
      v20 = *(a1 + 40) + 8 * v19;
      *(a1 + 32) = v19 + 1;
      *(v20 + 8) = v17;
      v13 = v29;
LABEL_27:
      v12 = sub_276CE1A84(a3, v18, v13);
      v29 = v12;
      if (!v12)
      {
        return 0;
      }

      if (*a3 <= v12 || *v12 != 18)
      {
        goto LABEL_39;
      }
    }

    v15 = *(a1 + 36);
LABEL_23:
    google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
    v14 = *(a1 + 40);
    v16 = *v14;
    goto LABEL_24;
  }

LABEL_12:
  if (v7)
  {
    v10 = (v7 & 7) == 4;
  }

  else
  {
    v10 = 1;
  }

  if (!v10)
  {
    if ((*(a1 + 8) & 1) == 0)
    {
      sub_276CD7F50((a1 + 8));
    }

    v11 = google::protobuf::internal::UnknownFieldParse();
    goto LABEL_38;
  }

  *(a3 + 80) = v7 - 1;
  return v29;
}

unsigned __int8 *TSS::StylesheetArchive_StyleChildrenEntry::_InternalSerialize(TSS::StylesheetArchive_StyleChildrenEntry *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  if (*(this + 16))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v5 = *(this + 6);
    *a2 = 10;
    v6 = *(v5 + 5);
    if (v6 > 0x7F)
    {
      a2[1] = v6 | 0x80;
      v8 = v6 >> 7;
      if (v6 >> 14)
      {
        v7 = a2 + 3;
        do
        {
          *(v7 - 1) = v8 | 0x80;
          v9 = v8 >> 7;
          ++v7;
          v10 = v8 >> 14;
          v8 >>= 7;
        }

        while (v10);
        *(v7 - 1) = v9;
      }

      else
      {
        a2[2] = v8;
        v7 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v6;
      v7 = a2 + 2;
    }

    a2 = TSP::Reference::_InternalSerialize(v5, v7, a3);
  }

  v11 = *(this + 8);
  if (v11)
  {
    for (i = 0; i != v11; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v13 = *(*(this + 5) + 8 * i + 8);
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

      a2 = TSP::Reference::_InternalSerialize(v13, v15, a3);
    }
  }

  v19 = *(this + 1);
  if ((v19 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v19 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}

uint64_t TSS::StylesheetArchive_StyleChildrenEntry::ByteSizeLong(TSP::Reference **this)
{
  if (this[2])
  {
    v3 = TSP::Reference::ByteSizeLong(this[6]);
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
      v10 = TSP::Reference::ByteSizeLong(v9);
      v5 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6);
      v8 -= 8;
    }

    while (v8);
  }

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

uint64_t TSS::StylesheetArchive_StyleChildrenEntry::MergeFrom(TSS::StylesheetArchive_StyleChildrenEntry *this, const Message *lpsrc)
{
  v4 = *lpsrc->var0;
  if (v5)
  {

    return TSS::StylesheetArchive_StyleChildrenEntry::MergeFrom(this, v5);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSS::StylesheetArchive_StyleChildrenEntry::MergeFrom(uint64_t this, const TSS::StylesheetArchive_StyleChildrenEntry *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_276CD80C8((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 5);
    v7 = *(a2 + 8);
    v8 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 24));
    this = sub_276CD81CC(v3 + 24, v8, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
    v9 = *(v3 + 32) + v5;
    *(v3 + 32) = v9;
    v10 = *(v3 + 40);
    if (*v10 < v9)
    {
      *v10 = v9;
    }
  }

  if (*(a2 + 16))
  {
    v11 = *(a2 + 6);
    *(v3 + 16) |= 1u;
    v12 = *(v3 + 48);
    if (!v12)
    {
      v13 = *(v3 + 8);
      if (v13)
      {
        v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
      }

      v12 = MEMORY[0x277CA0650](v13);
      *(v3 + 48) = v12;
      v11 = *(a2 + 6);
    }

    if (v11)
    {
      v14 = v11;
    }

    else
    {
      v14 = MEMORY[0x277D80A18];
    }

    return TSP::Reference::MergeFrom(v12, v14);
  }

  return this;
}

uint64_t *TSS::StylesheetArchive_StyleChildrenEntry::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSS::StylesheetArchive_StyleChildrenEntry::Clear(this);

    return TSS::StylesheetArchive_StyleChildrenEntry::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSS::StylesheetArchive_StyleChildrenEntry::CopyFrom(uint64_t *this, const TSS::StylesheetArchive_StyleChildrenEntry *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSS::StylesheetArchive_StyleChildrenEntry::Clear(this);

    return TSS::StylesheetArchive_StyleChildrenEntry::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSS::StylesheetArchive_StyleChildrenEntry::IsInitialized(TSS::StylesheetArchive_StyleChildrenEntry *this)
{
  if ((*(this + 16) & 1) == 0)
  {
    return 0;
  }

  v3 = *(this + 8);
  while (v3 >= 1)
  {
    v4 = v3 - 1;
    IsInitialized = TSP::Reference::IsInitialized(*(*(this + 5) + 8 * v3));
    v3 = v4;
    if ((IsInitialized & 1) == 0)
    {
      return 0;
    }
  }

  if ((*(this + 16) & 1) == 0)
  {
    return 1;
  }

  result = TSP::Reference::IsInitialized(*(this + 6));
  if (result)
  {
    return 1;
  }

  return result;
}

__n128 TSS::StylesheetArchive_StyleChildrenEntry::InternalSwap(__n128 *this, __n128 *a2)
{
  sub_276CC4DA4(&this->n128_i64[1], &a2->n128_i64[1]);
  v4 = this[1].n128_u32[0];
  this[1].n128_u32[0] = a2[1].n128_u32[0];
  a2[1].n128_u32[0] = v4;
  v5 = this[2].n128_u64[0];
  v6 = this[2].n128_u64[1];
  result = a2[2];
  this[2] = result;
  a2[2].n128_u64[0] = v5;
  a2[2].n128_u64[1] = v6;
  v8 = this[3].n128_u64[0];
  this[3].n128_u64[0] = a2[3].n128_u64[0];
  a2[3].n128_u64[0] = v8;
  return result;
}

uint64_t TSS::StylesheetArchive_StyleChildrenEntry::GetMetadata(TSS::StylesheetArchive_StyleChildrenEntry *this)
{
  google::protobuf::internal::AssignDescriptors();
  result = off_2812FAF80[4];
  v2 = off_2812FAF80[5];
  return result;
}

uint64_t TSS::StylesheetArchive_VersionedStyles::clear_styles(uint64_t this)
{
  v1 = *(this + 24);
  if (v1 >= 1)
  {
    v2 = this;
    v3 = (*(this + 32) + 8);
    do
    {
      v4 = *v3++;
      this = TSP::Reference::Clear(v4);
      --v1;
    }

    while (v1);
    *(v2 + 24) = 0;
  }

  return this;
}

TSS::StylesheetArchive_VersionedStyles *TSS::StylesheetArchive_VersionedStyles::StylesheetArchive_VersionedStyles(TSS::StylesheetArchive_VersionedStyles *this, google::protobuf::Arena *a2)
{
  *this = &unk_2885E6660;
  *(this + 1) = a2;
  *(this + 2) = a2;
  *(this + 5) = a2;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 8) = a2;
  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 22) = 0;
  if (atomic_load_explicit(scc_info_StylesheetArchive_VersionedStyles_TSSArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return this;
}

void sub_276CC65EC(_Unwind_Exception *a1)
{
  sub_276CD8310(v3);
  sub_276CD828C(v2);
  sub_276CA86B8(v1);
  _Unwind_Resume(a1);
}

TSS::StylesheetArchive_VersionedStyles *TSS::StylesheetArchive_VersionedStyles::StylesheetArchive_VersionedStyles(TSS::StylesheetArchive_VersionedStyles *this, const TSS::StylesheetArchive_VersionedStyles *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *(this + 2) = 0;
  v5 = this + 16;
  *this = &unk_2885E6660;
  *(this + 3) = 0;
  *(this + 4) = 0;
  v6 = *(a2 + 6);
  if (v6)
  {
    v7 = *(a2 + 4);
    v8 = *(a2 + 6);
    v9 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 16));
    sub_276CD81CC(v5, v9, (v7 + 8), v6, **(this + 4) - *(this + 6));
    v10 = *(this + 6) + v6;
    *(this + 6) = v10;
    v11 = *(this + 4);
    if (*v11 < v10)
    {
      *v11 = v10;
    }
  }

  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 7) = 0;
  v12 = *(a2 + 12);
  if (v12)
  {
    v13 = *(a2 + 7);
    v14 = *(a2 + 12);
    v15 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 40));
    sub_276CD8394(this + 40, v15, (v13 + 8), v12, **(this + 7) - *(this + 12));
    v16 = *(this + 12) + v12;
    *(this + 12) = v16;
    v17 = *(this + 7);
    if (*v17 < v16)
    {
      *v17 = v16;
    }
  }

  *(this + 8) = 0;
  *(this + 9) = 0;
  *(this + 10) = 0;
  v18 = *(a2 + 18);
  if (v18)
  {
    v19 = *(a2 + 10);
    v20 = *(a2 + 18);
    v21 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 64));
    sub_276CD8454(this + 64, v21, (v19 + 8), v18, **(this + 10) - *(this + 18));
    v22 = *(this + 18) + v18;
    *(this + 18) = v22;
    v23 = *(this + 10);
    if (*v23 < v22)
    {
      *v23 = v22;
    }
  }

  *(this + 22) = 0;
  v24 = *(a2 + 1);
  if (v24)
  {
    sub_276CD80C8(v4, (v24 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  return this;
}

void sub_276CC67D8(_Unwind_Exception *a1)
{
  sub_276CD8310(v3);
  sub_276CD828C(v2);
  sub_276CA86B8(v1);
  _Unwind_Resume(a1);
}

void TSS::StylesheetArchive_VersionedStyles::~StylesheetArchive_VersionedStyles(TSS::StylesheetArchive_VersionedStyles *this)
{
  sub_276CC409C(this + 1);
  sub_276CD8310(this + 8);
  sub_276CD828C(this + 5);
  sub_276CA86B8(this + 2);
}

{
  TSS::StylesheetArchive_VersionedStyles::~StylesheetArchive_VersionedStyles(this);

  JUMPOUT(0x277CA0980);
}

void *TSS::StylesheetArchive_VersionedStyles::default_instance(TSS::StylesheetArchive_VersionedStyles *this)
{
  if (atomic_load_explicit(scc_info_StylesheetArchive_VersionedStyles_TSSArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSS::_StylesheetArchive_VersionedStyles_default_instance_;
}

uint64_t *TSS::StylesheetArchive_VersionedStyles::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 6);
  if (v2 >= 1)
  {
    v3 = (this[4] + 8);
    do
    {
      v4 = *v3++;
      this = TSP::Reference::Clear(v4);
      --v2;
    }

    while (v2);
    *(v1 + 24) = 0;
  }

  v5 = *(v1 + 48);
  if (v5 >= 1)
  {
    v6 = (*(v1 + 56) + 8);
    do
    {
      v7 = *v6++;
      this = TSS::StylesheetArchive_IdentifiedStyleEntry::Clear(v7);
      --v5;
    }

    while (v5);
    *(v1 + 48) = 0;
  }

  v8 = *(v1 + 72);
  if (v8 >= 1)
  {
    v9 = (*(v1 + 80) + 8);
    do
    {
      v10 = *v9++;
      this = TSS::StylesheetArchive_StyleChildrenEntry::Clear(v10);
      --v8;
    }

    while (v8);
    *(v1 + 72) = 0;
  }

  v12 = *(v1 + 8);
  v11 = (v1 + 8);
  if (v12)
  {

    return sub_276CD8114(v11);
  }

  return this;
}