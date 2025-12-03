@interface TSCEUndoTract
+ (void)saveToArchive:(void *)archive columnUids:(const void *)uids rowUids:(const void *)rowUids purpose:(unsigned __int8)purpose isRangeRef:(BOOL)ref preserveRectangularRange:(BOOL)range;
+ (void)saveToArchive:(void *)archive tsuColumnUids:(const void *)uids tsuRowUids:(const void *)rowUids purpose:(unsigned __int8)purpose isRangeRef:(BOOL)ref preserveRectangularRange:(BOOL)range;
- (BOOL)isEqual:(id)equal;
- (BOOL)remapUsingColumnUidMap:(const void *)map rowUidMap:(const void *)uidMap clearIfMissing:(BOOL)missing;
- (TSCEUndoTract)initWithArchive:(const void *)archive;
- (TSCEUndoTract)initWithColumnUid:(TSKUIDStruct)uid rowUid:(TSKUIDStruct)rowUid purpose:(unsigned __int8)purpose;
- (TSCEUndoTract)initWithColumnUids:(const void *)uids rowUids:(const void *)rowUids purpose:(unsigned __int8)purpose;
- (TSCEUndoTract)initWithPurpose:(unsigned __int8)purpose;
- (id).cxx_construct;
- (id)copyWithZone:(_NSZone *)zone;
- (void)appendColumnUid:(TSKUIDStruct)uid rowUid:(TSKUIDStruct)rowUid;
- (void)saveToArchive:(void *)archive;
@end

@implementation TSCEUndoTract

- (TSCEUndoTract)initWithPurpose:(unsigned __int8)purpose
{
  v5.receiver = self;
  v5.super_class = TSCEUndoTract;
  result = [(TSCEUndoTract *)&v5 init];
  if (result)
  {
    result->_purpose = purpose;
    result->_preserveRectangularRange = 1;
  }

  return result;
}

- (TSCEUndoTract)initWithColumnUid:(TSKUIDStruct)uid rowUid:(TSKUIDStruct)rowUid purpose:(unsigned __int8)purpose
{
  uidCopy = uid;
  rowUidCopy = rowUid;
  v9.receiver = self;
  v9.super_class = TSCEUndoTract;
  v6 = [(TSCEUndoTract *)&v9 init];
  v7 = v6;
  if (v6)
  {
    sub_221083454(&v6->_columnUids, &uidCopy);
    sub_221083454(&v7->_rowUids, &rowUidCopy);
    v7->_purpose = purpose;
    v7->_preserveRectangularRange = 1;
  }

  return v7;
}

- (TSCEUndoTract)initWithColumnUids:(const void *)uids rowUids:(const void *)rowUids purpose:(unsigned __int8)purpose
{
  v13.receiver = self;
  v13.super_class = TSCEUndoTract;
  v8 = [(TSCEUndoTract *)&v13 init];
  v9 = v8;
  if (v8)
  {
    p_columnUids = &v8->_columnUids;
    if (&v9->_columnUids != uids)
    {
      sub_2210BD068(p_columnUids, *uids, *(uids + 1), (*(uids + 1) - *uids) >> 4);
    }

    if (&v9->_rowUids != rowUids)
    {
      sub_2210BD068(&v9->_rowUids.__begin_, *rowUids, *(rowUids + 1), (*(rowUids + 1) - *rowUids) >> 4);
    }

    v11 = 1;
    if ((v9->_columnUids.__end_ - v9->_columnUids.__begin_) <= 0x10)
    {
      v11 = (v9->_rowUids.__end_ - v9->_rowUids.__begin_) > 0x10;
    }

    v9->_isRangeRef = v11;
    v9->_preserveRectangularRange = 1;
    v9->_purpose = purpose;
  }

  return v9;
}

- (TSCEUndoTract)initWithArchive:(const void *)archive
{
  v16.receiver = self;
  v16.super_class = TSCEUndoTract;
  v4 = [(TSCEUndoTract *)&v16 init];
  if (v4)
  {
    v5 = &TSCE::_ASTNodeArrayArchive_ASTUidList_default_instance_;
    if (*(archive + 3))
    {
      v6 = *(archive + 3);
    }

    else
    {
      v6 = &TSCE::_ASTNodeArrayArchive_ASTUidList_default_instance_;
    }

    v7 = *(v6 + 6);
    if (v7 >= 1)
    {
      v8 = 8;
      do
      {
        TSP::UUIDData::UUIDData(&v17, *(v6[4] + v8));
        v15 = v17;
        sub_221083454(&v4->_columnUids, &v15);
        v8 += 8;
        --v7;
      }

      while (v7);
    }

    if (*(archive + 4))
    {
      v5 = *(archive + 4);
    }

    v9 = *(v5 + 6);
    if (v9 >= 1)
    {
      v10 = 8;
      do
      {
        TSP::UUIDData::UUIDData(&v17, *(v5[4] + v10));
        v15 = v17;
        sub_221083454(&v4->_rowUids, &v15);
        v10 += 8;
        --v9;
      }

      while (v9);
    }

    v11 = *(archive + 4);
    if ((v11 & 4) != 0)
    {
      v12 = *(archive + 40);
    }

    else
    {
      v12 = (v4->_rowUids.__end_ - v4->_rowUids.__begin_) > 0x10 || (v4->_columnUids.__end_ - v4->_columnUids.__begin_) > 0x10;
    }

    v4->_isRangeRef = v12;
    v4->_purpose = *(archive + 44) & (v11 << 28 >> 31);
    if ((v11 & 0x10) != 0)
    {
      v13 = *(archive + 48);
    }

    else
    {
      v13 = 1;
    }

    v4->_preserveRectangularRange = v13;
  }

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_opt_new();
  v9 = objc_msgSend_columnUids(v4, v5, v6, v7, v8);
  if (v9 != &self->_columnUids)
  {
    sub_2210BD068(v9, self->_columnUids.__begin_, self->_columnUids.__end_, self->_columnUids.__end_ - self->_columnUids.__begin_);
  }

  v14 = objc_msgSend_rowUids(v4, v10, v11, v12, v13);
  if (v14 != &self->_rowUids)
  {
    sub_2210BD068(v14, self->_rowUids.__begin_, self->_rowUids.__end_, self->_rowUids.__end_ - self->_rowUids.__begin_);
  }

  objc_msgSend_setIsRangeRef_(v4, v15, self->_isRangeRef, v16, v17);
  objc_msgSend_setPreserveRectangularRange_(v4, v18, self->_preserveRectangularRange, v19, v20);
  objc_msgSend_setPurpose_(v4, v21, self->_purpose, v22, v23);
  return v4;
}

+ (void)saveToArchive:(void *)archive tsuColumnUids:(const void *)uids tsuRowUids:(const void *)rowUids purpose:(unsigned __int8)purpose isRangeRef:(BOOL)ref preserveRectangularRange:(BOOL)range
{
  purposeCopy = purpose;
  *(archive + 4) |= 1u;
  v14 = *(archive + 3);
  if (!v14)
  {
    v15 = *(archive + 1);
    if (v15)
    {
      v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
    }

    v14 = google::protobuf::Arena::CreateMaybeMessage<TSCE::ASTNodeArrayArchive_ASTUidList>(v15);
    *(archive + 3) = v14;
  }

  v16 = *uids;
  v17 = *(uids + 1);
  while (v16 != v17)
  {
    v18 = *(v14 + 32);
    if (!v18)
    {
      goto LABEL_12;
    }

    v19 = *(v14 + 24);
    v20 = *v18;
    if (v19 < *v18)
    {
      *(v14 + 24) = v19 + 1;
      v21 = *&v18[2 * v19 + 2];
      goto LABEL_14;
    }

    if (v20 == *(v14 + 28))
    {
LABEL_12:
      google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v14 + 16));
      v18 = *(v14 + 32);
      v20 = *v18;
    }

    *v18 = v20 + 1;
    v21 = MEMORY[0x223DA0360](*(v14 + 16));
    v22 = *(v14 + 24);
    v23 = *(v14 + 32) + 8 * v22;
    *(v14 + 24) = v22 + 1;
    *(v23 + 8) = v21;
LABEL_14:
    TSP::UUIDData::saveToMessage(v16, v21);
    v16 = (v16 + 16);
  }

  *(archive + 4) |= 2u;
  v24 = *(archive + 4);
  if (!v24)
  {
    v25 = *(archive + 1);
    if (v25)
    {
      v25 = *(v25 & 0xFFFFFFFFFFFFFFFELL);
    }

    v24 = google::protobuf::Arena::CreateMaybeMessage<TSCE::ASTNodeArrayArchive_ASTUidList>(v25);
    *(archive + 4) = v24;
  }

  v27 = *rowUids;
  v26 = *(rowUids + 1);
  while (2)
  {
    if (v27 != v26)
    {
      v28 = *(v24 + 32);
      if (!v28)
      {
        goto LABEL_26;
      }

      v29 = *(v24 + 24);
      v30 = *v28;
      if (v29 < *v28)
      {
        *(v24 + 24) = v29 + 1;
        v31 = *&v28[2 * v29 + 2];
LABEL_28:
        TSP::UUIDData::saveToMessage(v27, v31);
        v27 = (v27 + 16);
        continue;
      }

      if (v30 == *(v24 + 28))
      {
LABEL_26:
        google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v24 + 16));
        v28 = *(v24 + 32);
        v30 = *v28;
      }

      *v28 = v30 + 1;
      v31 = MEMORY[0x223DA0360](*(v24 + 16));
      v32 = *(v24 + 24);
      v33 = *(v24 + 32) + 8 * v32;
      *(v24 + 24) = v32 + 1;
      *(v33 + 8) = v31;
      goto LABEL_28;
    }

    break;
  }

  v34 = *(archive + 4);
  *(archive + 40) = ref;
  *(archive + 11) = purposeCopy;
  *(archive + 4) = v34 | 0x1C;
  *(archive + 48) = range;
}

+ (void)saveToArchive:(void *)archive columnUids:(const void *)uids rowUids:(const void *)rowUids purpose:(unsigned __int8)purpose isRangeRef:(BOOL)ref preserveRectangularRange:(BOOL)range
{
  purposeCopy = purpose;
  *(archive + 4) |= 1u;
  v14 = *(archive + 3);
  if (!v14)
  {
    v15 = *(archive + 1);
    if (v15)
    {
      v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
    }

    v14 = google::protobuf::Arena::CreateMaybeMessage<TSCE::ASTNodeArrayArchive_ASTUidList>(v15);
    *(archive + 3) = v14;
  }

  v16 = *uids;
  v17 = *(uids + 1);
  while (v16 != v17)
  {
    v18 = *(v14 + 32);
    if (!v18)
    {
      goto LABEL_12;
    }

    v19 = *(v14 + 24);
    v20 = *v18;
    if (v19 < *v18)
    {
      *(v14 + 24) = v19 + 1;
      v21 = *&v18[2 * v19 + 2];
      goto LABEL_14;
    }

    if (v20 == *(v14 + 28))
    {
LABEL_12:
      google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v14 + 16));
      v18 = *(v14 + 32);
      v20 = *v18;
    }

    *v18 = v20 + 1;
    v21 = MEMORY[0x223DA0360](*(v14 + 16));
    v22 = *(v14 + 24);
    v23 = *(v14 + 32) + 8 * v22;
    *(v14 + 24) = v22 + 1;
    *(v23 + 8) = v21;
LABEL_14:
    TSKUIDStruct::saveToMessage(v16++, v21);
  }

  *(archive + 4) |= 2u;
  v24 = *(archive + 4);
  if (!v24)
  {
    v25 = *(archive + 1);
    if (v25)
    {
      v25 = *(v25 & 0xFFFFFFFFFFFFFFFELL);
    }

    v24 = google::protobuf::Arena::CreateMaybeMessage<TSCE::ASTNodeArrayArchive_ASTUidList>(v25);
    *(archive + 4) = v24;
  }

  v27 = *rowUids;
  v26 = *(rowUids + 1);
  while (2)
  {
    if (v27 != v26)
    {
      v28 = *(v24 + 32);
      if (!v28)
      {
        goto LABEL_26;
      }

      v29 = *(v24 + 24);
      v30 = *v28;
      if (v29 < *v28)
      {
        *(v24 + 24) = v29 + 1;
        v31 = *&v28[2 * v29 + 2];
LABEL_28:
        TSKUIDStruct::saveToMessage(v27++, v31);
        continue;
      }

      if (v30 == *(v24 + 28))
      {
LABEL_26:
        google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v24 + 16));
        v28 = *(v24 + 32);
        v30 = *v28;
      }

      *v28 = v30 + 1;
      v31 = MEMORY[0x223DA0360](*(v24 + 16));
      v32 = *(v24 + 24);
      v33 = *(v24 + 32) + 8 * v32;
      *(v24 + 24) = v32 + 1;
      *(v33 + 8) = v31;
      goto LABEL_28;
    }

    break;
  }

  v34 = *(archive + 4);
  *(archive + 40) = ref;
  *(archive + 11) = purposeCopy;
  *(archive + 4) = v34 | 0x1C;
  *(archive + 48) = range;
}

- (void)saveToArchive:(void *)archive
{
  v7 = objc_msgSend_columnUids(self, a2, archive, v3, v4);
  v12 = objc_msgSend_rowUids(self, v8, v9, v10, v11);
  objc_msgSend_purpose(self, v13, v14, v15, v16);
  objc_msgSend_isRangeRef(self, v17, v18, v19, v20);
  objc_msgSend_preserveRectangularRange(self, v21, v22, v23, v24);

  MEMORY[0x2821F9670](TSCEUndoTract, sel_saveToArchive_columnUids_rowUids_purpose_isRangeRef_preserveRectangularRange_, archive, v7, v12);
}

- (BOOL)remapUsingColumnUidMap:(const void *)map rowUidMap:(const void *)uidMap clearIfMissing:(BOOL)missing
{
  missingCopy = missing;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  p_columnUids = &self->_columnUids;
  sub_221083368(&v22, self->_columnUids.__end_ - self->_columnUids.__begin_);
  begin = self->_columnUids.__begin_;
  end = self->_columnUids.__end_;
  while (begin != end)
  {
    v12 = sub_221119F90(map, begin);
    if (v12)
    {
      sub_221083454(&v22, v12 + 2);
    }

    else if (!missingCopy)
    {
      v17 = 0;
      goto LABEL_21;
    }

    ++begin;
  }

  __p = 0;
  v20 = 0;
  v21 = 0;
  p_rowUids = &self->_rowUids;
  sub_221083368(&__p, self->_rowUids.__end_ - self->_rowUids.__begin_);
  v15 = self->_rowUids.__begin_;
  v14 = self->_rowUids.__end_;
  while (v15 != v14)
  {
    v16 = sub_221119F90(uidMap, v15);
    if (v16)
    {
      sub_221083454(&__p, v16 + 2);
    }

    else if (!missingCopy)
    {
      v17 = 0;
      goto LABEL_18;
    }

    ++v15;
  }

  if (p_columnUids != &v22)
  {
    sub_2210BD068(p_columnUids, v22, v23, (v23 - v22) >> 4);
  }

  if (p_rowUids != &__p)
  {
    sub_2210BD068(p_rowUids, __p, v20, (v20 - __p) >> 4);
  }

  v17 = 1;
LABEL_18:
  if (__p)
  {
    v20 = __p;
    operator delete(__p);
  }

LABEL_21:
  if (v22)
  {
    v23 = v22;
    operator delete(v22);
  }

  return v17;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = TSUDynamicCast();
  v10 = v5;
  if (!v5)
  {
    goto LABEL_27;
  }

  purpose = self->_purpose;
  if (purpose != objc_msgSend_purpose(v5, v6, v7, v8, v9))
  {
    goto LABEL_27;
  }

  isRangeRef = self->_isRangeRef;
  if (isRangeRef != objc_msgSend_isRangeRef(v10, v12, v13, v14, v15))
  {
    goto LABEL_27;
  }

  preserveRectangularRange = self->_preserveRectangularRange;
  if (preserveRectangularRange != objc_msgSend_preserveRectangularRange(v10, v17, v18, v19, v20))
  {
    goto LABEL_27;
  }

  begin = self->_columnUids.__begin_;
  end = self->_columnUids.__end_;
  v24 = v10[1];
  if (end - begin != v10[2] - v24)
  {
    goto LABEL_27;
  }

  while (begin != end)
  {
    if (begin->_lower != *v24 || begin->_upper != v24[1])
    {
      goto LABEL_27;
    }

    ++begin;
    v24 += 2;
  }

  v27 = self->_rowUids.__begin_;
  v26 = self->_rowUids.__end_;
  v28 = v10[4];
  if (v26 - v27 == v10[5] - v28)
  {
    if (v27 == v26)
    {
      LOBYTE(v34) = 1;
    }

    else
    {
      do
      {
        lower = v27->_lower;
        upper = v27->_upper;
        ++v27;
        v31 = *v28;
        v32 = v28[1];
        v28 += 2;
        v34 = lower == v31 && upper == v32;
      }

      while (v34 && v27 != v26);
    }
  }

  else
  {
LABEL_27:
    LOBYTE(v34) = 0;
  }

  return v34;
}

- (id).cxx_construct
{
  *(self + 40) = 0u;
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  return self;
}

- (void)appendColumnUid:(TSKUIDStruct)uid rowUid:(TSKUIDStruct)rowUid
{
  uidCopy = uid;
  rowUidCopy = rowUid;
  sub_221083454(&self->_columnUids, &uidCopy);
  sub_221083454(&self->_rowUids, &rowUidCopy);
}

@end