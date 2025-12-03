@interface TSWPColumns
+ (id)columns;
+ (id)instanceWithArchive:(const Message *)archive unarchiver:(id)unarchiver;
- (BOOL)isEqual:(id)equal;
- (BOOL)p_validate:(BOOL)p_validate;
- (TSWPColumns)initWithArchive:(const void *)archive unarchiver:(id)unarchiver;
- (TSWPColumns)initWithColumnCount:(unint64_t)count equalWidth:(BOOL)width widthArray:(const double *)array gapArray:(const double *)gapArray assert:(BOOL)assert;
- (TSWPColumns)initWithEqualColumnCount:(unint64_t)count gapFraction:(double)fraction assert:(BOOL)assert;
- (double)p_equalGapForEqualWidth:(double)width;
- (double)p_equalWidthForEqualGap:(double)gap;
- (double)p_maxEqualGapForBodyWidth:(double)width;
- (double)positionForColumnIndex:(unint64_t)index bodyWidth:(double)width outWidth:(double *)outWidth outGap:(double *)gap;
- (id)copyWithColumnCount:(unint64_t)count;
- (id)copyWithEqualWidth:(BOOL)width;
- (id)copyWithGap:(double)gap forColumnIndex:(unint64_t)index bodyWidth:(double)width;
- (id)copyWithWidth:(double)width forColumnIndex:(unint64_t)index bodyWidth:(double)bodyWidth;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)p_description;
- (unint64_t)hash;
- (void)p_setColumnCount:(unint64_t)count;
- (void)p_setEqualWidth:(double)width equalGap:(double)gap;
- (void)p_setGap:(double)gap forColumnIndex:(unint64_t)index bodyWidth:(double)width;
- (void)p_setWidth:(double)width forColumnIndex:(unint64_t)index bodyWidth:(double)bodyWidth;
- (void)saveToArchive:(void *)archive archiver:(id)archiver;
- (void)setEqualWidth:(BOOL)width;
@end

@implementation TSWPColumns

+ (id)columns
{
  v2 = [self alloc];
  v4 = objc_msgSend_initWithColumnCount_(v2, v3, 1);

  return v4;
}

- (TSWPColumns)initWithColumnCount:(unint64_t)count equalWidth:(BOOL)width widthArray:(const double *)array gapArray:(const double *)gapArray assert:(BOOL)assert
{
  assertCopy = assert;
  v19.receiver = self;
  v19.super_class = TSWPColumns;
  v12 = [(TSWPColumns *)&v19 init];
  v14 = v12;
  if (v12)
  {
    if (count)
    {
      countCopy = 10;
      if (count < 0xA)
      {
        countCopy = count;
      }

      v12->_columnCount = countCopy;
      v12->_equalWidth = width;
      v16 = 8 * countCopy;
      memcpy(v12->_widthArray, array, 8 * countCopy);
      memcpy(v14->_gapArray, gapArray, v16 - 8);
      objc_msgSend_p_validate_(v14, v17, assertCopy);
    }

    else
    {
      objc_msgSend_p_setColumnCount_gapFraction_(v12, v13, 1, 0.0500000007);
    }
  }

  return v14;
}

- (TSWPColumns)initWithEqualColumnCount:(unint64_t)count gapFraction:(double)fraction assert:(BOOL)assert
{
  assertCopy = assert;
  v12.receiver = self;
  v12.super_class = TSWPColumns;
  v8 = [(TSWPColumns *)&v12 init];
  v10 = v8;
  if (v8)
  {
    v8->_equalWidth = 1;
    objc_msgSend_p_setColumnCount_gapFraction_(v8, v9, count, fraction);
  }

  objc_msgSend_p_validate_(v10, v9, assertCopy);
  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_msgSend_allocWithZone_(TSWPColumns, a2, zone);
  columnCount = self->_columnCount;
  equalWidth = self->_equalWidth;

  return objc_msgSend_initWithColumnCount_equalWidth_widthArray_gapArray_assert_(v4, v5, columnCount, equalWidth, self->_widthArray, self->_gapArray, 0);
}

- (id)copyWithEqualWidth:(BOOL)width
{
  widthCopy = width;
  v4 = objc_msgSend_copy(self, a2, width);
  objc_msgSend_setEqualWidth_(v4, v5, widthCopy);
  return v4;
}

+ (id)instanceWithArchive:(const Message *)archive unarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  v6 = [TSWPColumns alloc];
  v8 = objc_msgSend_initWithArchive_unarchiver_(v6, v7, archive, unarchiverCopy);

  return v8;
}

- (TSWPColumns)initWithArchive:(const void *)archive unarchiver:(id)unarchiver
{
  v43[9] = *MEMORY[0x277D85DE8];
  unarchiverCopy = unarchiver;
  if (*(archive + 16))
  {
    v14 = *(archive + 3);
    v15 = *(v14 + 6);
    if (v15 >= 0xB)
    {
      v16 = MEMORY[0x277D81150];
      v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSWPColumns initWithArchive:unarchiver:]");
      v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPColumns.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v20, v17, v19, 134, 0, "Too many column gaps in archive");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22);
      v14 = *(archive + 3);
    }

    if (v15 >= 0xA)
    {
      v7 = 10;
    }

    else
    {
      v7 = v15;
    }

    if (!v14)
    {
      v14 = &TSWP::_ColumnsArchive_EqualColumnsArchive_default_instance_;
    }

    v12 = 0.0;
    if ((v14[2] & 2) != 0)
    {
      v12 = *(v14 + 7);
    }

    if (v15)
    {
      v23 = objc_msgSend_initWithEqualColumnCount_gapFraction_assert_(self, v6, v7, 0, v12);
LABEL_32:
      v38 = v23;
      goto LABEL_33;
    }

LABEL_31:
    v23 = objc_msgSend_init(self, v6, v7, v12);
    goto LABEL_32;
  }

  if (*(archive + 4))
  {
    v9 = *(archive + 4);
  }

  else
  {
    v9 = &TSWP::_ColumnsArchive_NonEqualColumnsArchive_default_instance_;
  }

  v10 = *(v9 + 8);
  v11 = v10 + 1;
  if ((v10 + 1) >= 0xB)
  {
    v24 = MEMORY[0x277D81150];
    v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSWPColumns initWithArchive:unarchiver:]");
    v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPColumns.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v24, v28, v25, v27, 143, 0, "Too many column gaps in archive");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v29, v30);
    v42 = v9[12];
    v13 = 10;
  }

  else
  {
    v12 = v9[12];
    v42 = v12;
    v13 = v10 + 1;
    if (v11 < 2)
    {
      goto LABEL_22;
    }
  }

  v31 = (*(v9 + 5) + 8);
  v32 = v43;
  v33 = v13 - 1;
  v34 = v41;
  do
  {
    v35 = *v31++;
    v36 = *(v35 + 28);
    *v34++ = *(v35 + 24);
    v12 = v36;
    *v32++ = v36;
    --v33;
  }

  while (v33);
LABEL_22:
  if (!v11)
  {
    goto LABEL_31;
  }

  v37 = objc_msgSend_initWithColumnCount_equalWidth_widthArray_gapArray_assert_(self, v6, v13, 0, &v42, v41, 0);
  v38 = v37;
  for (i = 0; i != 80; i += 8)
  {
    if (*(v37 + i + 8) < 0.0)
    {
      *(v37 + i + 8) = 0;
    }

    if (i == 72)
    {
      break;
    }

    if (*(v37 + i + 88) < 0.0)
    {
      *(v37 + i + 88) = 0;
    }
  }

LABEL_33:

  return v38;
}

- (void)saveToArchive:(void *)archive archiver:(id)archiver
{
  archiverCopy = archiver;
  if (self->_equalWidth || !self->_columnCount)
  {
    *(archive + 4) |= 1u;
    v53 = *(archive + 3);
    if (!v53)
    {
      v54 = *(archive + 1);
      if (v54)
      {
        v54 = *(v54 & 0xFFFFFFFFFFFFFFFELL);
      }

      v53 = google::protobuf::Arena::CreateMaybeMessage<TSWP::ColumnsArchive_EqualColumnsArchive>(v54);
      *(archive + 3) = v53;
    }

    columnCount = self->_columnCount;
    if (HIDWORD(columnCount))
    {
      v61 = MEMORY[0x277D81150];
      v62 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSWPColumns saveToArchive:archiver:]");
      v64 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v63, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPColumns.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v61, v65, v62, v64, 183, 0, "Out-of-bounds type assignment was clamped to max");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v66, v67);
      columnCount = self->_columnCount;
      LODWORD(v56) = -1;
    }

    else
    {
      v56 = self->_columnCount;
    }

    *(v53 + 16) |= 1u;
    *(v53 + 24) = v56;
    if (columnCount < 2)
    {
      goto LABEL_60;
    }

    *(archive + 4) |= 1u;
    v57 = *(archive + 3);
    if (!v57)
    {
      v58 = *(archive + 1);
      if (v58)
      {
        v58 = *(v58 & 0xFFFFFFFFFFFFFFFELL);
      }

      v57 = google::protobuf::Arena::CreateMaybeMessage<TSWP::ColumnsArchive_EqualColumnsArchive>(v58);
      *(archive + 3) = v57;
    }

    v59 = self->_gapArray[0];
    if ((*&v59 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_58;
    }

    if (v59 > 0.0 && v59 > 3.40282347e38)
    {
      v68 = MEMORY[0x277D81150];
      v69 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSWPColumns saveToArchive:archiver:]");
      v71 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v70, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPColumns.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v68, v72, v69, v71, 185, 0, "Out-of-bounds type assignment was clamped to max");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v73, v74);
      v75 = 2139095039;
    }

    else
    {
      if (v59 >= 0.0 || v59 >= -3.40282347e38)
      {
LABEL_58:
        v60 = v59;
LABEL_59:
        *(v57 + 16) |= 2u;
        *(v57 + 28) = v60;
        goto LABEL_60;
      }

      v76 = MEMORY[0x277D81150];
      v77 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSWPColumns saveToArchive:archiver:]");
      v79 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v78, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPColumns.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v76, v80, v77, v79, 185, 0, "Out-of-bounds type assignment was clamped to min");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v81, v82);
      v75 = -8388609;
    }

    v60 = *&v75;
    goto LABEL_59;
  }

  *(archive + 4) |= 2u;
  v7 = *(archive + 4);
  if (!v7)
  {
    v8 = *(archive + 1);
    if (v8)
    {
      v8 = *(v8 & 0xFFFFFFFFFFFFFFFELL);
    }

    v7 = google::protobuf::Arena::CreateMaybeMessage<TSWP::ColumnsArchive_NonEqualColumnsArchive>(v8);
    *(archive + 4) = v7;
  }

  v9 = self->_widthArray[0];
  if ((*&v9 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_12;
  }

  if (v9 > 0.0 && v9 > 3.40282347e38)
  {
    v83 = MEMORY[0x277D81150];
    v84 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSWPColumns saveToArchive:archiver:]");
    v86 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v85, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPColumns.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v83, v87, v84, v86, 190, 0, "Out-of-bounds type assignment was clamped to max");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v88, v89);
    v90 = 2139095039;
  }

  else
  {
    if (v9 >= 0.0 || v9 >= -3.40282347e38)
    {
LABEL_12:
      v10 = v9;
      goto LABEL_13;
    }

    v91 = MEMORY[0x277D81150];
    v92 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSWPColumns saveToArchive:archiver:]");
    v94 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v93, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPColumns.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v91, v95, v92, v94, 190, 0, "Out-of-bounds type assignment was clamped to min");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v96, v97);
    v90 = -8388609;
  }

  v10 = *&v90;
LABEL_13:
  *(v7 + 16) |= 1u;
  *(v7 + 48) = v10;
  if (self->_columnCount >= 2)
  {
    v11 = 2;
    v12 = 1;
    v13 = 0x277D81000uLL;
    do
    {
      v14 = *(v7 + 40);
      if (!v14)
      {
        goto LABEL_20;
      }

      v15 = *(v7 + 32);
      v16 = *v14;
      if (v15 < *v14)
      {
        *(v7 + 32) = v15 + 1;
        v17 = *&v14[2 * v15 + 2];
        goto LABEL_22;
      }

      if (v16 == *(v7 + 36))
      {
LABEL_20:
        google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v7 + 24));
        v14 = *(v7 + 40);
        v16 = *v14;
      }

      *v14 = v16 + 1;
      v17 = google::protobuf::Arena::CreateMaybeMessage<TSWP::ColumnsArchive_NonEqualColumnsArchive_GapWidthArchive>(*(v7 + 24));
      v18 = *(v7 + 32);
      v19 = *(v7 + 40) + 8 * v18;
      *(v7 + 32) = v18 + 1;
      *(v19 + 8) = v17;
LABEL_22:
      v20 = self->_widthArray[v11 + 8];
      if ((*&v20 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_27;
      }

      if (v20 > 0.0 && v20 > 3.40282347e38)
      {
        v98 = *(v13 + 336);
        v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSWPColumns saveToArchive:archiver:]");
        v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPColumns.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v98, v28, v25, v27, 194, 0, "Out-of-bounds type assignment was clamped to max");

        v13 = 0x277D81000uLL;
        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v29, v30);
        v31 = 2139095039;
      }

      else
      {
        if (v20 >= 0.0 || v20 >= -3.40282347e38)
        {
LABEL_27:
          v21 = v20;
          goto LABEL_28;
        }

        v40 = *(v13 + 336);
        v100 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSWPColumns saveToArchive:archiver:]");
        v42 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v41, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPColumns.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v40, v43, v100, v42, 194, 0, "Out-of-bounds type assignment was clamped to min");

        v13 = 0x277D81000uLL;
        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v44, v45);
        v31 = -8388609;
      }

      v21 = *&v31;
LABEL_28:
      *(v17 + 16) |= 1u;
      *(v17 + 24) = v21;
      v22 = self->_widthArray[v12];
      if ((*&v22 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        if (v22 > 0.0 && v22 > 3.40282347e38)
        {
          v99 = *(v13 + 336);
          v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSWPColumns saveToArchive:archiver:]");
          v33 = v13;
          v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v34, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPColumns.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v99, v36, v32, v35, 195, 0, "Out-of-bounds type assignment was clamped to max");

          v13 = v33;
          objc_msgSend_logBacktraceThrottled(*(v33 + 336), v37, v38);
          v39 = 2139095039;
LABEL_41:
          v23 = *&v39;
          goto LABEL_34;
        }

        if (v22 < 0.0 && v22 < -3.40282347e38)
        {
          v101 = *(v13 + 336);
          v46 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSWPColumns saveToArchive:archiver:]");
          v47 = v13;
          v49 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v48, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPColumns.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v101, v50, v46, v49, 195, 0, "Out-of-bounds type assignment was clamped to min");

          v13 = v47;
          objc_msgSend_logBacktraceThrottled(*(v47 + 336), v51, v52);
          v39 = -8388609;
          goto LABEL_41;
        }
      }

      v23 = v22;
LABEL_34:
      *(v17 + 16) |= 2u;
      *(v17 + 28) = v23;
      v12 = v11;
    }

    while (self->_columnCount > v11++);
  }

LABEL_60:
}

- (void)p_setEqualWidth:(double)width equalGap:(double)gap
{
  columnCount = self->_columnCount;
  if (columnCount)
  {
    gapArray = self->_gapArray;
    v6 = 11;
    do
    {
      *(gapArray - 10) = width;
      if (columnCount - 1 > v6 - 11)
      {
        *gapArray = gap;
      }

      v7 = (v6++ - 10);
      ++gapArray;
    }

    while (columnCount > v7);
  }
}

- (id)copyWithColumnCount:(unint64_t)count
{
  v5 = objc_msgSend_copy(self, a2, count);
  objc_msgSend_p_setColumnCount_(v5, v6, count);
  v8 = objc_msgSend_p_validate_(self, v7, 0);
  objc_msgSend_p_validate_(v5, v9, v8);
  return v5;
}

- (void)p_setColumnCount:(unint64_t)count
{
  if (count - 1 <= 9)
  {
    v3 = 0.0500000007;
    if (self->_equalWidth && self->_columnCount >= 2)
    {
      v3 = self->_gapArray[0];
    }

    objc_msgSend_p_setColumnCount_gapFraction_(self, a2, count, v3);
  }
}

- (void)setEqualWidth:(BOOL)width
{
  self->_equalWidth = width;
  if (width)
  {
    objc_msgSend_p_setColumnCount_gapFraction_(self, a2, self->_columnCount, 0.0500000007);
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = TSUDynamicCast();
  v6 = equalCopy == self;
  if (equalCopy != self && v5)
  {
    columnCount = self->_columnCount;
    if (columnCount == *(v5 + 168) && self->_equalWidth == *(v5 + 160))
    {
      if (columnCount)
      {
        v8 = 0;
        v9 = 1;
        while (1)
        {
          v10 = *(v5 + 8 + 8 * v8);
          v11 = self->_widthArray[v8];
          if (v10 != v11 && vabdd_f64(v10, v11) >= fabs(v11 * 0.000000999999997))
          {
            break;
          }

          v8 = v9;
          v12 = columnCount > v9++;
          if (!v12)
          {
            v13 = columnCount - 1;
            if (v13)
            {
              goto LABEL_13;
            }

LABEL_17:
            v6 = 1;
            goto LABEL_19;
          }
        }
      }

      else
      {
        v13 = -1;
LABEL_13:
        v14 = 0;
        v15 = 1;
        while (1)
        {
          v16 = *(v5 + 88 + 8 * v14);
          v17 = self->_gapArray[v14];
          if (v16 != v17 && vabdd_f64(v16, v17) >= fabs(v17 * 0.000000999999997))
          {
            break;
          }

          v14 = v15;
          v12 = v13 > v15++;
          if (!v12)
          {
            goto LABEL_17;
          }
        }
      }
    }

    v6 = 0;
  }

LABEL_19:

  return v6;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x277D811E8]);
  objc_msgSend_addUnsignedInteger_(v3, v4, self->_columnCount);
  objc_msgSend_addBool_(v3, v5, self->_equalWidth);
  v8 = objc_msgSend_hashValue(v3, v6, v7);

  return v8;
}

- (double)positionForColumnIndex:(unint64_t)index bodyWidth:(double)width outWidth:(double *)outWidth outGap:(double *)gap
{
  v6 = self->_columnCount - 1;
  v7 = 0.0;
  v8 = 11;
  gapArray = self->_gapArray;
  do
  {
    v10 = v7;
    v7 = v7 + *(gapArray - 10);
    if (v6 > v8 - 11)
    {
      v7 = v7 + *gapArray;
    }

    v11 = (v8++ - 10);
    ++gapArray;
  }

  while (v11 <= index);
  if (outWidth)
  {
    *outWidth = self->_widthArray[index] * width;
  }

  if (gap)
  {
    v12 = 0.0;
    if (v6 > index)
    {
      v12 = self->_gapArray[index] * width;
    }

    *gap = v12;
  }

  return v10 * width;
}

- (double)p_equalGapForEqualWidth:(double)width
{
  columnCount = self->_columnCount;
  v4 = 0.0;
  if (columnCount >= 2)
  {
    v5 = columnCount * width;
    if (v5 <= 0.0 || v5 > 1.0)
    {
      v8 = MEMORY[0x277D81150];
      v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSWPColumns p_equalGapForEqualWidth:]");
      v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPColumns.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v12, v9, v11, 346, 0, "Bad column width fraction");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14);
      columnCount = self->_columnCount;
    }

    v4 = 0.0;
    if ((1.0 - v5) / (columnCount - 1) >= 0.0)
    {
      return (1.0 - v5) / (columnCount - 1);
    }
  }

  return v4;
}

- (double)p_equalWidthForEqualGap:(double)gap
{
  columnCount = self->_columnCount;
  v4 = 1.0;
  if (columnCount >= 2)
  {
    v5 = (columnCount - 1) * gap;
    if (v5 < 0.0 || v5 > 1.0)
    {
      v8 = MEMORY[0x277D81150];
      v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSWPColumns p_equalWidthForEqualGap:]");
      v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPColumns.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v12, v9, v11, 365, 0, "Bad column gap fraction");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14);
      columnCount = self->_columnCount;
    }

    if ((1.0 - v5) / columnCount <= 1.0)
    {
      return (1.0 - v5) / columnCount;
    }

    else
    {
      return 1.0;
    }
  }

  return v4;
}

- (id)copyWithWidth:(double)width forColumnIndex:(unint64_t)index bodyWidth:(double)bodyWidth
{
  v9 = objc_msgSend_copy(self, a2, index);
  objc_msgSend_p_setWidth_forColumnIndex_bodyWidth_(v9, v10, index, width, bodyWidth);
  v12 = objc_msgSend_p_validate_(self, v11, 0);
  objc_msgSend_p_validate_(v9, v13, v12);
  return v9;
}

- (void)p_setWidth:(double)width forColumnIndex:(unint64_t)index bodyWidth:(double)bodyWidth
{
  if (self->_columnCount < 2)
  {
LABEL_10:

    MEMORY[0x2821F9670](self, sel_p_setEqualWidth_equalGap_, index);
    return;
  }

  if (bodyWidth <= 0.0)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSWPColumns p_setWidth:forColumnIndex:bodyWidth:]");
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPColumns.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v13, v10, v12, 387, 0, "Attempting to set column width with zero bodyWidth.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15);
  }

  v16 = 36.0 / bodyWidth;
  columnCount = self->_columnCount;
  v18 = width / bodyWidth;
  if (self->_equalWidth)
  {
    if (v18 >= v16)
    {
      v19 = width / bodyWidth;
    }

    else
    {
      v19 = 36.0 / bodyWidth;
    }

    if (v19 < (1.0 / columnCount))
    {
      objc_msgSend_p_equalGapForEqualWidth_(self, a2, index, v19, 0.0);
    }

    goto LABEL_10;
  }

  v20 = 1.0 - v16 * (columnCount - 1);
  if (columnCount != 1)
  {
    gapArray = self->_gapArray;
    v22 = 1;
    do
    {
      v23 = *gapArray++;
      v20 = v20 - v23;
    }

    while (columnCount - 1 > v22++);
  }

  if (v18 <= v20)
  {
    v20 = width / bodyWidth;
  }

  if (v20 >= v16)
  {
    v25 = v20;
  }

  else
  {
    v25 = 36.0 / bodyWidth;
  }

  widthArray = self->_widthArray;
  v27 = self->_widthArray[index] - v25;
  if (v27 == 0.0)
  {
    return;
  }

  if (index + 1 < columnCount)
  {
    v28 = index + 1;
  }

  else
  {
    v28 = 0;
  }

  if (v27 >= 0.0)
  {
    widthArray[v28] = v27 + widthArray[v28];
    goto LABEL_39;
  }

  v29 = self->_widthArray[index] - v25;
  if (v28 == index)
  {
    goto LABEL_38;
  }

  v29 = v27;
  while (1)
  {
    v30 = widthArray[v28];
    if (v30 > v16)
    {
      break;
    }

LABEL_31:
    if (v28 + 1 < columnCount)
    {
      ++v28;
    }

    else
    {
      v28 = 0;
    }

    if (v28 == index)
    {
      goto LABEL_38;
    }
  }

  if (v29 + v30 < v16)
  {
    v29 = v29 + v30 - v16;
    widthArray[v28] = v16;
    if (fabs(v29) < 0.000001)
    {
      goto LABEL_38;
    }

    goto LABEL_31;
  }

  widthArray[v28] = v29 + v30;
  v29 = 0.0;
LABEL_38:
  v25 = widthArray[index] + v29 - v27;
LABEL_39:
  widthArray[index] = v25;
}

- (double)p_maxEqualGapForBodyWidth:(double)width
{
  columnCount = self->_columnCount;
  v4 = 0.0;
  if (columnCount >= 2)
  {
    v5 = ((columnCount * -36.0) / width + 1.0) / (columnCount - 1);
    v4 = 0.0;
    if (v5 >= 0.0)
    {
      return v5;
    }
  }

  return v4;
}

- (id)copyWithGap:(double)gap forColumnIndex:(unint64_t)index bodyWidth:(double)width
{
  v9 = objc_msgSend_copy(self, a2, index);
  objc_msgSend_p_setGap_forColumnIndex_bodyWidth_(v9, v10, index, gap, width);
  v12 = objc_msgSend_p_validate_(self, v11, 0);
  objc_msgSend_p_validate_(v9, v13, v12);
  return v9;
}

- (void)p_setGap:(double)gap forColumnIndex:(unint64_t)index bodyWidth:(double)width
{
  selfCopy = self;
  if (self->_columnCount < 2)
  {
LABEL_9:

    MEMORY[0x2821F9670](self, sel_p_setEqualWidth_equalGap_, index);
    return;
  }

  if (width <= 0.0)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSWPColumns p_setGap:forColumnIndex:bodyWidth:]");
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPColumns.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v13, v10, v12, 499, 0, "Attempting to set gap width with zero bodyWidth.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15);
  }

  if (selfCopy->_equalWidth)
  {
    objc_msgSend_p_maxEqualGapForBodyWidth_(selfCopy, a2, index, width);
    if (gap / width <= v18)
    {
      objc_msgSend_p_equalWidthForEqualGap_(selfCopy, v16, v17, gap / width);
    }

    else
    {
      objc_msgSend_p_equalWidthForEqualGap_(selfCopy, v16, v17, v18);
    }

    self = selfCopy;
    goto LABEL_9;
  }

  v19 = gap / width;
  v20 = 36.0 / width;
  columnCount = selfCopy->_columnCount;
  v22 = 1.0 - 36.0 / width * columnCount;
  if (columnCount != 1)
  {
    gapArray = selfCopy->_gapArray;
    v24 = 1;
    indexCopy = index;
    do
    {
      if (indexCopy)
      {
        v22 = v22 - *gapArray;
      }

      --indexCopy;
      ++gapArray;
    }

    while (columnCount - 1 > v24++);
  }

  if (v19 > v22)
  {
    v19 = v22;
  }

  v27 = 0.0;
  if (v19 >= 0.0)
  {
    v27 = v19;
  }

  v28 = selfCopy->_gapArray;
  v29 = selfCopy->_gapArray[index] - v27;
  if (v29 == 0.0)
  {
    return;
  }

  if (index + 1 < columnCount)
  {
    v30 = index + 1;
  }

  else
  {
    v30 = 0;
  }

  if (v29 >= 0.0)
  {
    selfCopy->_widthArray[v30] = v29 + selfCopy->_widthArray[v30];
    goto LABEL_39;
  }

  v31 = selfCopy->_gapArray[index] - v27;
  if (v30 == index)
  {
    goto LABEL_38;
  }

  widthArray = selfCopy->_widthArray;
  v31 = v29;
  while (1)
  {
    v33 = widthArray[v30];
    if (v33 > v20)
    {
      break;
    }

LABEL_31:
    if (v30 + 1 < columnCount)
    {
      ++v30;
    }

    else
    {
      v30 = 0;
    }

    if (v30 == index)
    {
      goto LABEL_38;
    }
  }

  if (v31 + v33 < v20)
  {
    v31 = v31 + v33 - v20;
    widthArray[v30] = v20;
    if (fabs(v31) < 0.000001)
    {
      goto LABEL_38;
    }

    goto LABEL_31;
  }

  widthArray[v30] = v31 + v33;
  v31 = 0.0;
LABEL_38:
  v27 = v28[index] + v31 - v29;
LABEL_39:
  v28[index] = v27;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v8 = objc_msgSend_p_description(self, v6, v7);
  v10 = objc_msgSend_stringWithFormat_(v3, v9, @"<%@: %p>%@", v5, self, v8);

  return v10;
}

- (id)p_description
{
  if (self->_equalWidth)
  {
    v3 = objc_alloc(MEMORY[0x277CCACA8]);
    v5 = objc_msgSend_initWithFormat_(v3, v4, @" %lu equal columns", self->_columnCount);
  }

  else
  {
    v6 = objc_alloc(MEMORY[0x277CCAB68]);
    v9 = objc_msgSend_initWithFormat_(v6, v7, @"%f", *&self->_widthArray[0]);
    if (self->_columnCount >= 2)
    {
      v10 = 2;
      v11 = 1;
      do
      {
        objc_msgSend_appendFormat_(v9, v8, @" (%f) %f", *&self->_widthArray[v10 + 8], *&self->_widthArray[v11]);
        v11 = v10;
      }

      while (self->_columnCount > v10++);
    }

    v13 = objc_alloc(MEMORY[0x277CCACA8]);
    v5 = objc_msgSend_initWithFormat_(v13, v14, @" %lu columns: { %@ }", self->_columnCount, v9);
  }

  return v5;
}

- (BOOL)p_validate:(BOOL)p_validate
{
  columnCount = self->_columnCount;
  if (columnCount - 11 <= 0xFFFFFFFFFFFFFFF5 && p_validate)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSWPColumns p_validate:]");
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPColumns.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v14, v11, v13, 604, 0, "Bad column count %lu", self->_columnCount);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16);
    return 0;
  }

  if (columnCount - 11 < 0xFFFFFFFFFFFFFFF6)
  {
    return 0;
  }

  if (columnCount)
  {
    gapArray = self->_gapArray;
    v7 = 0.0;
    v8 = 11;
    do
    {
      v7 = v7 + *(gapArray - 10);
      if (columnCount - 1 > v8 - 11)
      {
        v7 = v7 + *gapArray;
      }

      v9 = (v8++ - 10);
      ++gapArray;
    }

    while (columnCount > v9);
  }

  else
  {
    v7 = 0.0;
  }

  v18 = vabdd_f64(1.0, v7);
  result = v18 < 0.000001;
  if (v18 < 0.000001 && p_validate)
  {
    if (*MEMORY[0x277D81500] != -1)
    {
      sub_276F4F310();
    }

    return 1;
  }

  return result;
}

@end