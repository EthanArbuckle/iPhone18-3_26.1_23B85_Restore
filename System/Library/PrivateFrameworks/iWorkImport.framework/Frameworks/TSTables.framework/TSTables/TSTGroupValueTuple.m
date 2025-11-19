@interface TSTGroupValueTuple
+ (TSKUIDStruct)groupValueUidForTuple:(id)a3 appendingTuple:(id)a4;
- (BOOL)isEqual:(id)a3;
- (TSKUIDStruct)groupValueUid;
- (TSTGroupValueTuple)initWithTSCEValues:(const void *)a3 locale:(id)a4;
- (TSTGroupValueTuple)initWithValueArray:(id)a3;
- (TSTGroupValueTuple)initWithValues:(id)a3;
- (const)combinedCanonicalKeyStringAsUtf8;
- (id).cxx_construct;
- (id)canonicalKeyStringAtLevel:(unsigned __int8)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)groupValueAtLevel:(unsigned __int8)a3;
- (id)groupValueTupleByAppendingTuple:(id)a3;
- (id)groupValueTupleByAppendingValue:(id)a3;
- (id)groupValueTupleByDemotingValueAtLevel:(unsigned __int8)a3 toLevel:(unsigned __int8)a4;
- (id)groupValueTupleByMergingTuple:(id)a3 toLevel:(unsigned __int8)a4;
- (id)groupValueTupleByPromotingValueAtLevel:(unsigned __int8)a3 toLevel:(unsigned __int8)a4;
- (id)groupValueTupleByRemovingValueAtLevel:(unsigned __int8)a3;
- (id)groupValueTupleByReplacingValue:(id)a3 atLevel:(unsigned __int8)a4;
- (id)locale;
- (id)prefixTupleToLevel:(unsigned __int8)a3;
- (unint64_t)hash;
- (void)updateWithDocumentRoot:(id)a3;
@end

@implementation TSTGroupValueTuple

- (TSTGroupValueTuple)initWithValues:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v9 = v5;
  if (v4)
  {
    objc_msgSend_addObject_(v5, v6, v4, v7, v8);
    v10 = 0;
    v15 = &v16;
    while (1)
    {
      v11 = v10;
      v12 = v15++;
      v10 = *v12;

      if (!v10)
      {
        break;
      }

      objc_msgSend_addObject_(v9, v6, v10, v7, v8);
    }
  }

  v13 = objc_msgSend_initWithValueArray_(self, v6, v9, v7, v8);

  return v13;
}

- (TSTGroupValueTuple)initWithValueArray:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = TSTGroupValueTuple;
  v9 = [(TSTGroupValueTuple *)&v13 init];
  if (v9)
  {
    v10 = objc_msgSend_copy(v4, v5, v6, v7, v8);
    groupValues = v9->_groupValues;
    v9->_groupValues = v10;

    v9->_groupValueUid._lower = 0;
    v9->_groupValueUid._upper = 0;
  }

  return v9;
}

- (TSTGroupValueTuple)initWithTSCEValues:(const void *)a3 locale:(id)a4
{
  v6 = a4;
  v7 = objc_alloc(MEMORY[0x277CBEB18]);
  v14 = objc_msgSend_initWithCapacity_(v7, v8, (*(a3 + 1) - *a3) >> 3, v9, v10);
  v15 = *a3;
  v16 = *(a3 + 1);
  if (*a3 != v16)
  {
    do
    {
      v17 = *v15;
      v20 = objc_msgSend_newCellValueFromTSCEValue_withLocale_(TSCECellValue, v18, v17, v6, v19);
      objc_msgSend_addObject_(v14, v21, v20, v22, v23);

      ++v15;
    }

    while (v15 != v16);
  }

  v24 = objc_msgSend_initWithValueArray_(self, v11, v14, v12, v13);

  return v24;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [TSTGroupValueTuple alloc];
  groupValues = self->_groupValues;

  return objc_msgSend_initWithValueArray_(v4, v5, groupValues, v6, v7);
}

- (id)locale
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = self->_groupValues;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v3, &v13, v17, 16);
  if (v8)
  {
    v9 = *v14;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v14 != v9)
      {
        objc_enumerationMutation(v2);
      }

      v11 = objc_msgSend_locale(*(*(&v13 + 1) + 8 * v10), v4, v5, v6, v7, v13);
      if (v11)
      {
        break;
      }

      if (v8 == ++v10)
      {
        v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v4, &v13, v17, 16);
        if (v8)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v11 = 0;
  }

  return v11;
}

- (void)updateWithDocumentRoot:(id)a3
{
  v46 = *MEMORY[0x277D85DE8];
  v7 = a3;
  if (v7)
  {
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v8 = self->_groupValues;
    v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v41, v45, 16);
    if (v14)
    {
      v15 = *v42;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v42 != v15)
          {
            objc_enumerationMutation(v8);
          }

          v17 = *(*(&v41 + 1) + 8 * i);
          v18 = objc_msgSend_documentLocale(v7, v10, v11, v12, v13);
          objc_msgSend_setLocale_(v17, v19, v18, v20, v21);

          v26 = objc_msgSend_customFormatList(v7, v22, v23, v24, v25);
          objc_msgSend_updateWithCustomFormatList_(v17, v27, v26, v28, v29);
        }

        v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v10, &v41, v45, 16);
      }

      while (v14);
    }
  }

  else
  {
    v30 = MEMORY[0x277D81150];
    v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSTGroupValueTuple updateWithDocumentRoot:]", v5, v6);
    v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v32, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupValueTuple.mm", v33, v34);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v30, v36, v31, v35, 100, 0, "invalid nil value for '%{public}s'", "documentRoot");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v37, v38, v39, v40);
  }
}

- (const)combinedCanonicalKeyStringAsUtf8
{
  v42 = *MEMORY[0x277D85DE8];
  p_combinedCanonicalKeyStringAsUtf8 = &self->_combinedCanonicalKeyStringAsUtf8;
  v3 = *(&self->_combinedCanonicalKeyStringAsUtf8.__rep_.__l + 23);
  if ((v3 & 0x8000000000000000) == 0)
  {
    if (*(&self->_combinedCanonicalKeyStringAsUtf8.__rep_.__l + 23))
    {
      goto LABEL_3;
    }

LABEL_6:
    v5 = self;
    objc_sync_enter(v5);
    if ((*(&p_combinedCanonicalKeyStringAsUtf8->__rep_.__l + 23) & 0x8000000000000000) != 0)
    {
      if (p_combinedCanonicalKeyStringAsUtf8->__rep_.__l.__size_)
      {
        goto LABEL_27;
      }
    }

    else if (*(&p_combinedCanonicalKeyStringAsUtf8->__rep_.__l + 23))
    {
      goto LABEL_27;
    }

    if (objc_msgSend_numberOfLevels(v5, v6, v7, v8, v9))
    {
      v10 = objc_opt_new();
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v11 = v5->_groupValues;
      v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v37, v41, 16);
      if (v17)
      {
        v18 = *v38;
        do
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v38 != v18)
            {
              objc_enumerationMutation(v11);
            }

            v20 = objc_msgSend_canonicalKeyString(*(*(&v37 + 1) + 8 * i), v13, v14, v15, v16);
            objc_msgSend_appendString_(v10, v21, v20, v22, v23);

            objc_msgSend_appendString_(v10, v24, @"\uFFFF", v25, v26);
          }

          v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v13, &v37, v41, 16);
        }

        while (v17);
      }

      v27 = v10;
      v32 = objc_msgSend_UTF8String(v10, v28, v29, v30, v31);
      v33 = strlen(v32);
      if (v33 >= 0x7FFFFFFFFFFFFFF8)
      {
        sub_22108CD88();
      }

      v34 = v33;
      if (v33 >= 0x17)
      {
        operator new();
      }

      HIBYTE(v36) = v33;
      if (v33)
      {
        memmove(&__dst, v32, v33);
      }

      *(&__dst + v34) = 0;
      if (*(&p_combinedCanonicalKeyStringAsUtf8->__rep_.__l + 23) < 0)
      {
        operator delete(p_combinedCanonicalKeyStringAsUtf8->__rep_.__l.__data_);
      }

      *p_combinedCanonicalKeyStringAsUtf8->__rep_.__s.__data_ = __dst;
      *(&p_combinedCanonicalKeyStringAsUtf8->__rep_.__l + 2) = v36;
    }

LABEL_27:
    objc_sync_exit(v5);

    if ((*(&p_combinedCanonicalKeyStringAsUtf8->__rep_.__l + 23) & 0x80) == 0)
    {
      return p_combinedCanonicalKeyStringAsUtf8->__rep_.__s.__data_;
    }

    return p_combinedCanonicalKeyStringAsUtf8->__rep_.__l.__data_;
  }

  if (!self->_combinedCanonicalKeyStringAsUtf8.__rep_.__l.__size_)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v3 & 0x80) != 0)
  {
    return p_combinedCanonicalKeyStringAsUtf8->__rep_.__l.__data_;
  }

  return p_combinedCanonicalKeyStringAsUtf8->__rep_.__s.__data_;
}

- (TSKUIDStruct)groupValueUid
{
  p_groupValueUid = &self->_groupValueUid;
  lower = self->_groupValueUid._lower;
  upper = p_groupValueUid->_upper;
  if (!lower)
  {
    if (upper)
    {
      lower = 0;
    }

    else
    {
      if (objc_msgSend_numberOfLevels(self, 0, v2, v3, v4))
      {
        v13 = objc_msgSend_combinedCanonicalKeyStringAsUtf8(self, v9, v10, v11, v12);
        lower = sub_2211A9368(v13);
      }

      else
      {
        lower = objc_msgSend_groupByRootUid(TSCECategoryRef, v9, v10, v11, v12);
      }

      p_groupValueUid->_lower = lower;
      p_groupValueUid->_upper = upper;
    }
  }

  result._upper = upper;
  result._lower = lower;
  return result;
}

+ (TSKUIDStruct)groupValueUidForTuple:(id)a3 appendingTuple:(id)a4
{
  v5 = a3;
  v10 = a4;
  if (!v5)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "+[TSTGroupValueTuple groupValueUidForTuple:appendingTuple:]", v8, v9);
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupValueTuple.mm", v14, v15);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v17, v12, v16, 154, 0, "invalid nil value for '%{public}s'", "upperTuple");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20, v21);
  }

  if (!v10)
  {
    v22 = MEMORY[0x277D81150];
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "+[TSTGroupValueTuple groupValueUidForTuple:appendingTuple:]", v8, v9);
    v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupValueTuple.mm", v25, v26);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v22, v28, v23, v27, 155, 0, "invalid nil value for '%{public}s'", "lowerTuple");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v29, v30, v31, v32);
  }

  v33 = objc_msgSend_combinedCanonicalKeyStringAsUtf8(v10, v6, v7, v8, v9);
  v38 = v33;
  if (v33 && *v33)
  {
    v39 = objc_msgSend_combinedCanonicalKeyStringAsUtf8(v5, v34, v35, v36, v37);
    v42 = sub_2211A9410(v39, v38, 0, v40, v41);
  }

  else
  {
    v42 = objc_msgSend_groupValueUid(v5, v34, v35, v36, v37);
  }

  v44 = v42;
  v45 = v43;

  v46 = v44;
  v47 = v45;
  result._upper = v47;
  result._lower = v46;
  return result;
}

- (id)groupValueTupleByReplacingValue:(id)a3 atLevel:(unsigned __int8)a4
{
  v4 = a4;
  v7 = a3;
  v12 = objc_msgSend_mutableCopy(self->_groupValues, v8, v9, v10, v11);
  v17 = v12;
  if (v4)
  {
    if (v7)
    {
      v22 = (v4 - 1);
      if (objc_msgSend_count(v12, v13, v14, v15, v16) <= v22)
      {
        if (objc_msgSend_count(v17, v18, v19, v20, v21) == v22)
        {
          objc_msgSend_addObject_(v17, v34, v7, v35, v36);
        }

        else
        {
          v37 = MEMORY[0x277D81150];
          v38 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v34, "[TSTGroupValueTuple groupValueTupleByReplacingValue:atLevel:]", v35, v36);
          v42 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v39, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupValueTuple.mm", v40, v41);
          v43 = NSStringFromSelector(a2);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v37, v44, v38, v42, 179, 0, "%{public}@: level %d is beyond this tuple's size", v43, v4);

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v45, v46, v47, v48);
        }
      }

      else
      {
        objc_msgSend_replaceObjectAtIndex_withObject_(v17, v18, (v4 - 1), v7, v21);
      }
    }
  }

  else
  {
    v23 = MEMORY[0x277D81150];
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "[TSTGroupValueTuple groupValueTupleByReplacingValue:atLevel:]", v15, v16);
    v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupValueTuple.mm", v26, v27);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v23, v29, v24, v28, 169, 0, "Don't try to replace value for the root");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v30, v31, v32, v33);
  }

  v49 = [TSTGroupValueTuple alloc];
  v53 = objc_msgSend_initWithValueArray_(v49, v50, v17, v51, v52);

  return v53;
}

- (id)groupValueTupleByAppendingValue:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_mutableCopy(self->_groupValues, v5, v6, v7, v8);
  v13 = v9;
  if (v4)
  {
    objc_msgSend_addObject_(v9, v10, v4, v11, v12);
  }

  v14 = [TSTGroupValueTuple alloc];
  v18 = objc_msgSend_initWithValueArray_(v14, v15, v13, v16, v17);

  return v18;
}

- (id)groupValueTupleByAppendingTuple:(id)a3
{
  v4 = a3;
  v13 = objc_msgSend_mutableCopy(self->_groupValues, v5, v6, v7, v8);
  if (v4 && objc_msgSend_count(v4[1], v9, v10, v11, v12))
  {
    objc_msgSend_addObjectsFromArray_(v13, v14, v4[1], v15, v16);
  }

  v17 = [TSTGroupValueTuple alloc];
  v21 = objc_msgSend_initWithValueArray_(v17, v18, v13, v19, v20);

  return v21;
}

- (id)groupValueTupleByMergingTuple:(id)a3 toLevel:(unsigned __int8)a4
{
  v4 = a4;
  v6 = a3;
  v11 = objc_msgSend_array(MEMORY[0x277CBEB18], v7, v8, v9, v10);
  v16 = objc_msgSend_numberOfLevels(self, v12, v13, v14, v15);
  v21 = objc_msgSend_numberOfLevels(v6, v17, v18, v19, v20);
  if (v16 >= v21)
  {
    v26 = v21;
  }

  else
  {
    v26 = v16;
  }

  v27 = 1;
  if (v26 >= v4)
  {
    v28 = v4;
  }

  else
  {
    v28 = v26;
  }

  if (v28)
  {
    do
    {
      v29 = objc_msgSend_groupValueAtLevel_(v6, v22, v27, v24, v25);
      objc_msgSend_addObject_(v11, v30, v29, v31, v32);

      ++v27;
    }

    while (v28 >= v27);
  }

  while (objc_msgSend_numberOfLevels(self, v22, v23, v24, v25) >= v27)
  {
    v33 = objc_msgSend_groupValueAtLevel_(self, v37, v27, v38, v39);
    objc_msgSend_addObject_(v11, v34, v33, v35, v36);

    ++v27;
  }

  v40 = [TSTGroupValueTuple alloc];
  v44 = objc_msgSend_initWithValueArray_(v40, v41, v11, v42, v43);

  return v44;
}

- (id)groupValueTupleByRemovingValueAtLevel:(unsigned __int8)a3
{
  v5 = a3;
  v6 = objc_msgSend_mutableCopy(self->_groupValues, a2, a3, v3, v4);
  v11 = v6;
  if ((v5 - 1) <= 0xFD)
  {
    if (objc_msgSend_count(v6, v7, v8, v9, v10) < v5)
    {
      v16 = MEMORY[0x277D81150];
      v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[TSTGroupValueTuple groupValueTupleByRemovingValueAtLevel:]", v14, v15);
      v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupValueTuple.mm", v19, v20);
      v26 = objc_msgSend_count(v11, v22, v23, v24, v25);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v27, v17, v21, 226, 0, "Removing from level %d of a %d-level tuple", v5, v26);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v28, v29, v30, v31);
    }

    if (objc_msgSend_count(v11, v12, v13, v14, v15) >= v5)
    {
      objc_msgSend_removeObjectAtIndex_(v11, v32, (v5 - 1), v33, v34);
    }
  }

  v35 = [TSTGroupValueTuple alloc];
  v39 = objc_msgSend_initWithValueArray_(v35, v36, v11, v37, v38);

  return v39;
}

- (id)groupValueTupleByPromotingValueAtLevel:(unsigned __int8)a3 toLevel:(unsigned __int8)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_msgSend_mutableCopy(self->_groupValues, a2, a3, a4, v4);
  v12 = v7;
  if (v6)
  {
    if (v5)
    {
      v17 = v5;
      if (objc_msgSend_count(v7, v8, v9, v10, v11) > v5)
      {
        v21 = (v6 - 1);
        if (v21 >= objc_msgSend_count(v12, v13, v14, v15, v16))
        {
          v22 = 0;
        }

        else
        {
          v22 = objc_msgSend_objectAtIndex_(v12, v18, (v6 - 1), v19, v20);
          objc_msgSend_removeObjectAtIndex_(v12, v23, v21, v24, v25);
          if (v22)
          {
            v30 = objc_msgSend_count(v12, v26, v27, v28, v29);
            v33 = v17 - 1;
            if (v33 <= v30)
            {
              objc_msgSend_insertObject_atIndex_(v12, v31, v22, v33, v32);
            }
          }
        }
      }
    }
  }

  v34 = [TSTGroupValueTuple alloc];
  v38 = objc_msgSend_initWithValueArray_(v34, v35, v12, v36, v37);

  return v38;
}

- (id)groupValueTupleByDemotingValueAtLevel:(unsigned __int8)a3 toLevel:(unsigned __int8)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_msgSend_mutableCopy(self->_groupValues, a2, a3, a4, v4);
  v12 = v7;
  if (v6 && v5 && objc_msgSend_count(v7, v8, v9, v10, v11) > v6)
  {
    v16 = v6 - 1;
    v17 = objc_msgSend_objectAtIndex_(v12, v13, v16, v14, v15);
    objc_msgSend_removeObjectAtIndex_(v12, v18, v16, v19, v20);
    v25 = objc_msgSend_count(v12, v21, v22, v23, v24);
    v28 = (v5 - 1);
    if (v28 <= v25)
    {
      objc_msgSend_insertObject_atIndex_(v12, v26, v17, v28, v27);
    }
  }

  v29 = [TSTGroupValueTuple alloc];
  v33 = objc_msgSend_initWithValueArray_(v29, v30, v12, v31, v32);

  return v33;
}

- (id)prefixTupleToLevel:(unsigned __int8)a3
{
  v5 = a3;
  if (objc_msgSend_numberOfLevels(self, a2, a3, v3, v4) == a3)
  {
    v11 = self;
  }

  else
  {
      ;
    }

    v21 = [TSTGroupValueTuple alloc];
    v11 = objc_msgSend_initWithValueArray_(v21, v22, i, v23, v24);
  }

  return v11;
}

- (id)groupValueAtLevel:(unsigned __int8)a3
{
  if (a3)
  {
    v7 = a3;
    if (objc_msgSend_count(self->_groupValues, a2, a3, v3, v4) >= a3)
    {
      v11 = objc_msgSend_objectAtIndex_(self->_groupValues, v8, (v7 - 1), v9, v10);
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)canonicalKeyStringAtLevel:(unsigned __int8)a3
{
  if (a3 && (v6 = a3, objc_msgSend_count(self->_groupValues, a2, a3, v3, v4) >= a3))
  {
    v11 = objc_msgSend_objectAtIndex_(self->_groupValues, v7, (v6 - 1), v8, v9);
    v10 = objc_msgSend_canonicalKeyString(v11, v12, v13, v14, v15);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)description
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCAB68];
  v4 = objc_opt_class();
  v8 = objc_msgSend_stringWithFormat_(v3, v5, @"%@ [", v6, v7, v4);
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v9 = self->_groupValues;
  v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v21, v25, 16);
  if (v14)
  {
    v15 = *v22;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v22 != v15)
        {
          objc_enumerationMutation(v9);
        }

        objc_msgSend_appendFormat_(v8, v11, @"%@ | ", v12, v13, *(*(&v21 + 1) + 8 * i));
      }

      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v11, &v21, v25, 16);
    }

    while (v14);
  }

  objc_msgSend_appendString_(v8, v17, @"]", v18, v19);

  return v8;
}

- (unint64_t)hash
{
  v24 = *MEMORY[0x277D85DE8];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v2 = self->_groupValues;
  v4 = 0;
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v3, &v19, v23, 16);
  if (v9)
  {
    v10 = *v20;
    do
    {
      v11 = 0;
      do
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v2);
        }

        v12 = objc_msgSend_tsceValue(*(*(&v19 + 1) + 8 * v11), v5, v6, v7, v8, v19);
        v17 = objc_msgSend_hash(v12, v13, v14, v15, v16);

        v4 = v17 + 16 * v4;
        ++v11;
      }

      while (v9 != v11);
      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v5, &v19, v23, 16);
    }

    while (v9);
  }

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v9 = TSUDynamicCast();
  if (v9 && (v10 = objc_msgSend_numberOfLevels(self, v5, v6, v7, v8), v10 == objc_msgSend_numberOfLevels(v9, v11, v12, v13, v14)))
  {
    v15 = v9[1];
    v20 = objc_msgSend_count(self->_groupValues, v16, v17, v18, v19);
    if (v20 == objc_msgSend_count(v15, v21, v22, v23, v24))
    {
      v29 = objc_msgSend_count(self->_groupValues, v25, v26, v27, v28);
      if (v29)
      {
        v33 = 0;
        v34 = v29 - 1;
        do
        {
          v35 = objc_msgSend_objectAtIndex_(self->_groupValues, v30, v33, v31, v32);
          v39 = objc_msgSend_objectAtIndex_(v15, v36, v33, v37, v38);
          isEqualToCellValue = objc_msgSend_isEqualToCellValue_(v35, v40, v39, v41, v42);

          if (isEqualToCellValue)
          {
            v44 = v34 == v33;
          }

          else
          {
            v44 = 1;
          }

          ++v33;
        }

        while (!v44);
      }

      else
      {
        LOBYTE(isEqualToCellValue) = 1;
      }
    }

    else
    {
      LOBYTE(isEqualToCellValue) = 0;
    }
  }

  else
  {
    LOBYTE(isEqualToCellValue) = 0;
  }

  return isEqualToCellValue;
}

- (id).cxx_construct
{
  *(self + 40) = 0uLL;
  *(self + 4) = 0;
  return self;
}

@end