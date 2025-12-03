@interface TSTFormulaPredArg
+ (id)defaultPredicateArg;
- (BOOL)BOOLValue;
- (BOOL)isBoolValueInList:(BOOL)list;
- (BOOL)isCellValueInList:(id)list;
- (BOOL)isDateValueInListYear:(int64_t)year month:(int64_t)month day:(int64_t)day;
- (BOOL)isDurationValueInList:(double)list;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqual:(id)equal atHostCoord:(TSUModelCellCoord)coord;
- (BOOL)isNumberValueInList:(const TSUDecimal *)list locale:(id)locale;
- (BOOL)isStringValueInList:(id)list;
- (NSArray)dataList;
- (NSDate)date;
- (NSNumber)number;
- (NSString)string;
- (TSCECategoryRef)categoryRef;
- (TSCECellRef)cellRefForHostCoord:(SEL)coord;
- (TSCECrossTableReference)crossTableRef;
- (TSCEFormulaCreator)formulaCreatorForPredArg;
- (TSCEFormulaCreator)formulaCreatorForPredArg0UsingLinkedRef:(BOOL)ref useColumnRef:(BOOL)columnRef;
- (TSCENumberValue)duration;
- (TSCEViewTractRef)viewTractRef;
- (TSTFormulaPredArg)init;
- (TSTFormulaPredArg)initWithBaseCellRef:(const void *)ref preserveFlags:(const TSUPreserveFlags *)flags;
- (TSTFormulaPredArg)initWithBaseCellReference:(id)reference preserveColumn:(BOOL)column preserveRow:(BOOL)row;
- (TSTFormulaPredArg)initWithBool:(BOOL)bool;
- (TSTFormulaPredArg)initWithCategoryRef:(id)ref;
- (TSTFormulaPredArg)initWithCrossTableRef:(const TSCECrossTableReference *)ref;
- (TSTFormulaPredArg)initWithDataList:(id)list;
- (TSTFormulaPredArg)initWithDate:(id)date;
- (TSTFormulaPredArg)initWithDouble:(double)double;
- (TSTFormulaPredArg)initWithDuration:(double)duration units:(unsigned __int8)units;
- (TSTFormulaPredArg)initWithNumber:(id)number;
- (TSTFormulaPredArg)initWithRelativeCellRef:(const TSCERelativeCellRef *)ref;
- (TSTFormulaPredArg)initWithString:(id)string;
- (TSTFormulaPredArg)initWithTableUID:(const TSKUIDStruct *)d uidTractList:(id)list;
- (TSTFormulaPredArg)initWithViewTractRef:(id)ref;
- (TSTUIDRectRef)uidRectRef;
- (TSUPreserveFlags)preserveFlags;
- (const)baseCellRef;
- (const)relativeCellRef;
- (double)durationValue;
- (double)numberValue;
- (id).cxx_construct;
- (id)cellReference;
- (id)convertToRelativeRefIfPossible;
- (id)copyWithZone:(_NSZone *)zone;
- (id)initAsBadRefWithTableUID:(const TSKUIDStruct *)d uidTractList:(id)list;
- (id)initFromArchive:(const void *)archive;
- (id)rewriteWithContext:(TSCEFormulaRewriteContext *)context forArgAt:(int64_t)at usingLinkedRef:(BOOL)ref useColumnRef:(BOOL)columnRef hostCellRef:(TSCEUidCellRef *)cellRef rewriteBlock:(id)block;
- (unint64_t)hash;
- (unsigned)durationUnits;
- (void)encodeToArchive:(void *)archive archiver:(id)archiver;
- (void)setBaseCellRef:(const void *)ref;
- (void)setBaseCellRef:(const void *)ref preserveColumn:(BOOL)column preserveRow:(BOOL)row;
- (void)setBaseCellRef:(const void *)ref preserveFlags:(const TSUPreserveFlags *)flags;
- (void)setBaseCellReference:(id)reference;
- (void)setBaseCellReference:(id)reference preserveColumn:(BOOL)column preserveRow:(BOOL)row;
- (void)setBoolValue:(BOOL)value;
- (void)setDate:(id)date;
- (void)setDurationUnits:(unsigned __int8)units;
- (void)setDurationValue:(double)value;
- (void)setNumber:(id)number;
- (void)setNumberValue:(double)value;
- (void)setPreserveFlags:(TSUPreserveFlags)flags;
- (void)setRelativeCellRef:(const TSCERelativeCellRef *)ref;
- (void)setString:(id)string;
@end

@implementation TSTFormulaPredArg

- (TSTFormulaPredArg)init
{
  v3.receiver = self;
  v3.super_class = TSTFormulaPredArg;
  result = [(TSTFormulaPredArg *)&v3 init];
  if (result)
  {
    result->_type = 0;
    result->_hostCellCoord = 0x7FFF7FFFFFFFLL;
  }

  return result;
}

+ (id)defaultPredicateArg
{
  objc_opt_class();
  v2 = objc_opt_new();

  return v2;
}

- (id)initFromArchive:(const void *)archive
{
  v47.receiver = self;
  v47.super_class = TSTFormulaPredArg;
  v4 = [(TSTFormulaPredArg *)&v47 init];
  v8 = v4;
  if (!v4)
  {
    return v8;
  }

  v9 = *(archive + 104);
  v4->_type = v9;
  v4->_hostCellCoord = 0x7FFF7FFFFFFFLL;
  if (v9 <= 8)
  {
    if ((v9 - 1) < 3 || (v9 - 5) < 2)
    {
      if (*(archive + 16))
      {
        v10 = [TSTFormulaPredArgData alloc];
        if (*(archive + 6))
        {
          v14 = objc_msgSend_initFromArchive_(v10, v11, *(archive + 6), v12, v13);
        }

        else
        {
          v14 = objc_msgSend_initFromArchive_(v10, v11, &TST::_FormulaPredArgDataArchive_default_instance_, v12, v13);
        }

        data = v8->_data;
        v8->_data = v14;
        goto LABEL_43;
      }

      return v8;
    }

    if (v9 != 4)
    {
      return v8;
    }

    v24 = *(archive + 4);
    if ((v24 & 0x200) != 0)
    {
      v4->_preserveFlags._flags = v4->_preserveFlags._flags & 0xFE | *(archive + 109);
      if ((v24 & 0x100) == 0)
      {
LABEL_27:
        if ((v24 & 4) == 0)
        {
          goto LABEL_28;
        }

LABEL_49:
        sub_221269BB4(*(archive + 8), v5, v46);
        *&v8->_relativeCellRef.relativeCoord._row = *v46;
        *(&v8->_relativeCellRef.tableUID + 1) = *(&v46[1] + 1);
        v8->_hasRelativeCellRef = 1;
        if ((*(archive + 4) & 0x10) != 0)
        {
          goto LABEL_50;
        }

LABEL_54:
        v44 = *(archive + 4);
        if ((v44 & 2) != 0)
        {
          sub_221269DB8(*(archive + 7), v46);
          v8->_baseCellRef._ref.coordinate = v46[0];
          v8->_baseCellRef._ref._tableUID = *&v46[1];
          v44 = *(archive + 4);
        }

        if ((v44 & 0x20) != 0)
        {
          v8->_hostCellCoord = sub_2212697C0(*(archive + 11));
        }

        return v8;
      }
    }

    else if ((v24 & 0x100) == 0)
    {
      goto LABEL_27;
    }

    if (*(archive + 108))
    {
      v37 = 2;
    }

    else
    {
      v37 = 0;
    }

    v4->_preserveFlags._flags = v4->_preserveFlags._flags & 0xFD | v37;
    if ((v24 & 4) == 0)
    {
LABEL_28:
      if ((v24 & 0x10) == 0)
      {
        goto LABEL_54;
      }

LABEL_50:
      v38 = [TSCEUndoTractList alloc];
      if (*(archive + 10))
      {
        v42 = objc_msgSend_initWithArchive_(v38, v39, *(archive + 10), v40, v41);
      }

      else
      {
        v42 = objc_msgSend_initWithArchive_(v38, v39, &TSCE::_ASTNodeArrayArchive_ASTUidTractList_default_instance_, v40, v41);
      }

      uidTractList = v8->_uidTractList;
      v8->_uidTractList = v42;

      goto LABEL_54;
    }

    goto LABEL_49;
  }

  if (v9 > 10)
  {
    if (v9 == 11)
    {
      v26 = *(archive + 8);
      v27 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v5, v26, v6, v7);
      if (v26 >= 1)
      {
        v28 = 8;
        do
        {
          v29 = [TSTFormulaPredArgData alloc];
          v36 = objc_msgSend_initFromArchive_(v29, v30, *(*(archive + 5) + v28), v31, v32);
          if (v36)
          {
            objc_msgSend_addObject_(v27, v33, v36, v34, v35);
          }

          v28 += 8;
          --v26;
        }

        while (v26);
      }

      data = v8->_dataList;
      v8->_dataList = v27;
      goto LABEL_43;
    }

    if (v9 != 12)
    {
      if (v9 == 13 && (*(archive + 16) & 0x40) != 0)
      {
        v16 = sub_22126A4CC(*(archive + 12), v5);
        viewTractRef = v8->_viewTractRef;
        v8->_viewTractRef = v16;

        v8->_preserveFlags._flags = objc_msgSend_preserveFlags(v8->_viewTractRef, v18, v19, v20, v21);
      }

      return v8;
    }

LABEL_19:
    v23 = *(archive + 4);
    if ((v23 & 0x200) != 0)
    {
      v4->_preserveFlags._flags = v4->_preserveFlags._flags & 0xFE | *(archive + 109);
      if ((v23 & 0x100) == 0)
      {
LABEL_21:
        if ((v23 & 4) == 0)
        {
          goto LABEL_22;
        }

        goto LABEL_35;
      }
    }

    else if ((v23 & 0x100) == 0)
    {
      goto LABEL_21;
    }

    if (*(archive + 108))
    {
      v25 = 2;
    }

    else
    {
      v25 = 0;
    }

    v4->_preserveFlags._flags = v4->_preserveFlags._flags & 0xFD | v25;
    if ((v23 & 4) == 0)
    {
LABEL_22:
      if ((v23 & 0x10) != 0)
      {
        goto LABEL_50;
      }

      goto LABEL_54;
    }

LABEL_35:
    sub_221269BB4(*(archive + 8), v5, v46);
    *&v8->_relativeCellRef.relativeCoord._row = *v46;
    *(&v8->_relativeCellRef.tableUID + 1) = *(&v46[1] + 1);
    if ((*(archive + 4) & 0x10) != 0)
    {
      goto LABEL_50;
    }

    goto LABEL_54;
  }

  if (v9 == 9)
  {
    goto LABEL_19;
  }

  if ((*(archive + 16) & 8) != 0)
  {
    v22 = sub_22126A0F4(*(archive + 9), v5);
    data = v8->_categoryRef;
    v8->_categoryRef = v22;
LABEL_43:
  }

  return v8;
}

- (void)encodeToArchive:(void *)archive archiver:(id)archiver
{
  v67 = *MEMORY[0x277D85DE8];
  archiverCopy = archiver;
  type = self->_type;
  v11 = *(archive + 4);
  *(archive + 4) = v11 | 0x80;
  *(archive + 26) = type;
  hostCellCoord = self->_hostCellCoord;
  if (hostCellCoord._coord.row != 0x7FFFFFFF && (*&hostCellCoord & 0xFFFF00000000) != 0x7FFF00000000)
  {
    v65 = self->_hostCellCoord;
    *(archive + 4) = v11 | 0xA0;
    v14 = *(archive + 11);
    if (!v14)
    {
      v15 = *(archive + 1);
      if (v15)
      {
        v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
      }

      v14 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellCoordinateArchive>(v15);
      *(archive + 11) = v14;
    }

    sub_221269820(&v65, v14);
    type = self->_type;
  }

  if (type <= 8)
  {
    if ((type - 1) >= 3 && (type - 5) >= 2)
    {
      if (type == 4)
      {
        v35 = *(archive + 4);
        if (self->_hasRelativeCellRef)
        {
          *(archive + 4) = v35 | 4;
          v36 = *(archive + 8);
          if (!v36)
          {
            v37 = *(archive + 1);
            if (v37)
            {
              v37 = *(v37 & 0xFFFFFFFFFFFFFFFELL);
            }

            v36 = google::protobuf::Arena::CreateMaybeMessage<TSCE::RelativeCellRefArchive>(v37);
            *(archive + 8) = v36;
          }

          sub_221269AA8(&self->_relativeCellRef, v36);
          v35 = *(archive + 4);
        }

        flags = self->_preserveFlags._flags;
        *(archive + 109) = flags & 1;
        *(archive + 4) = v35 | 0x300;
        *(archive + 108) = (flags & 2) != 0;
        coordinate = self->_baseCellRef._ref.coordinate;
        if (coordinate.row != 0x7FFFFFFF && (*&coordinate & 0xFFFF00000000) != 0x7FFF00000000 && (self->_baseCellRef._ref._tableUID._lower || self->_baseCellRef._ref._tableUID._upper))
        {
          *(archive + 4) = v35 | 0x302;
          v40 = *(archive + 7);
          if (!v40)
          {
            v41 = *(archive + 1);
            if (v41)
            {
              v41 = *(v41 & 0xFFFFFFFFFFFFFFFELL);
            }

            v40 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellReferenceArchive>(v41);
            *(archive + 7) = v40;
          }

          sub_221269A28(&self->_baseCellRef, v40);
        }

        uidTractList = self->_uidTractList;
        if (uidTractList)
        {
          *(archive + 4) |= 0x10u;
          v43 = *(archive + 10);
          if (!v43)
          {
            v44 = *(archive + 1);
            if (v44)
            {
              v44 = *(v44 & 0xFFFFFFFFFFFFFFFELL);
            }

            v43 = google::protobuf::Arena::CreateMaybeMessage<TSCE::ASTNodeArrayArchive_ASTUidTractList>(v44);
            *(archive + 10) = v43;
          }

          objc_msgSend_saveToArchive_(uidTractList, v6, v43, v7, v8);
        }
      }
    }

    else
    {
      data = self->_data;
      *(archive + 4) |= 1u;
      v17 = *(archive + 6);
      if (!v17)
      {
        v18 = *(archive + 1);
        if (v18)
        {
          v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
        }

        v17 = google::protobuf::Arena::CreateMaybeMessage<TST::FormulaPredArgDataArchive>(v18);
        *(archive + 6) = v17;
      }

      objc_msgSend_encodeToArchive_archiver_(data, v6, v17, archiverCopy, v8);
    }

    goto LABEL_18;
  }

  if (type > 10)
  {
    if (type != 11)
    {
      if (type != 12)
      {
        if (type == 13)
        {
          viewTractRef = self->_viewTractRef;
          *(archive + 4) |= 0x40u;
          v20 = *(archive + 12);
          if (!v20)
          {
            v21 = *(archive + 1);
            if (v21)
            {
              v21 = *(v21 & 0xFFFFFFFFFFFFFFFELL);
            }

            v20 = google::protobuf::Arena::CreateMaybeMessage<TSCE::ViewTractRefArchive>(v21);
            *(archive + 12) = v20;
          }

          sub_22126A2E4(viewTractRef, v20);
        }

        goto LABEL_18;
      }

      goto LABEL_34;
    }

    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v45 = self->_dataList;
    v49 = objc_msgSend_countByEnumeratingWithState_objects_count_(v45, v46, &v61, v66, 16);
    if (!v49)
    {
      goto LABEL_92;
    }

    v50 = *v62;
LABEL_80:
    v51 = 0;
    while (1)
    {
      if (*v62 != v50)
      {
        objc_enumerationMutation(v45);
      }

      v52 = *(*(&v61 + 1) + 8 * v51);
      v53 = *(archive + 5);
      if (!v53)
      {
        goto LABEL_88;
      }

      v54 = *(archive + 8);
      v55 = *v53;
      if (v54 >= *v53)
      {
        break;
      }

      *(archive + 8) = v54 + 1;
      objc_msgSend_encodeToArchive_archiver_(v52, v47, *&v53[2 * v54 + 2], archiverCopy, v48, v61);
LABEL_90:
      if (v49 == ++v51)
      {
        v49 = objc_msgSend_countByEnumeratingWithState_objects_count_(v45, v47, &v61, v66, 16);
        if (!v49)
        {
LABEL_92:

          goto LABEL_18;
        }

        goto LABEL_80;
      }
    }

    if (v55 == *(archive + 9))
    {
LABEL_88:
      google::protobuf::internal::RepeatedPtrFieldBase::Reserve((archive + 24));
      v53 = *(archive + 5);
      v55 = *v53;
    }

    *v53 = v55 + 1;
    v56 = google::protobuf::Arena::CreateMaybeMessage<TST::FormulaPredArgDataArchive>(*(archive + 3));
    v57 = *(archive + 8);
    v58 = *(archive + 5) + 8 * v57;
    *(archive + 8) = v57 + 1;
    *(v58 + 8) = v56;
    objc_msgSend_encodeToArchive_archiver_(v52, v59, v56, archiverCopy, v60, v61);
    goto LABEL_90;
  }

  if (type == 9)
  {
LABEL_34:
    if (self->_relativeCellRef.tableUID._lower || self->_relativeCellRef.tableUID._upper)
    {
      *(archive + 4) |= 4u;
      v27 = *(archive + 8);
      if (!v27)
      {
        v28 = *(archive + 1);
        if (v28)
        {
          v28 = *(v28 & 0xFFFFFFFFFFFFFFFELL);
        }

        v27 = google::protobuf::Arena::CreateMaybeMessage<TSCE::RelativeCellRefArchive>(v28);
        *(archive + 8) = v27;
      }

      sub_221269AA8(&self->_relativeCellRef, v27);
    }

    v29 = self->_uidTractList;
    if (v29)
    {
      *(archive + 4) |= 0x10u;
      v30 = *(archive + 10);
      if (!v30)
      {
        v31 = *(archive + 1);
        if (v31)
        {
          v31 = *(v31 & 0xFFFFFFFFFFFFFFFELL);
        }

        v30 = google::protobuf::Arena::CreateMaybeMessage<TSCE::ASTNodeArrayArchive_ASTUidTractList>(v31);
        *(archive + 10) = v30;
      }

      objc_msgSend_saveToArchive_(v29, v6, v30, v7, v8);
    }

    v32 = self->_baseCellRef._ref.coordinate;
    if (v32.row != 0x7FFFFFFF && (*&v32 & 0xFFFF00000000) != 0x7FFF00000000 && (self->_baseCellRef._ref._tableUID._lower || self->_baseCellRef._ref._tableUID._upper))
    {
      *(archive + 4) |= 2u;
      v33 = *(archive + 7);
      if (!v33)
      {
        v34 = *(archive + 1);
        if (v34)
        {
          v34 = *(v34 & 0xFFFFFFFFFFFFFFFELL);
        }

        v33 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellReferenceArchive>(v34);
        *(archive + 7) = v33;
      }

      sub_221269A28(&self->_baseCellRef, v33);
    }

    goto LABEL_18;
  }

  categoryRef = self->_categoryRef;
  *(archive + 4) |= 8u;
  v23 = *(archive + 9);
  if (!v23)
  {
    v24 = *(archive + 1);
    if (v24)
    {
      v24 = *(v24 & 0xFFFFFFFFFFFFFFFELL);
    }

    v23 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CategoryReferenceArchive>(v24);
    *(archive + 9) = v23;
  }

  sub_221269E08(categoryRef, v23);
  v25 = self->_preserveFlags._flags;
  v26 = *(archive + 4);
  *(archive + 109) = v25 & 1;
  *(archive + 4) = v26 | 0x300;
  *(archive + 108) = (v25 & 2) != 0;
LABEL_18:
}

- (TSTFormulaPredArg)initWithBool:(BOOL)bool
{
  boolCopy = bool;
  v13.receiver = self;
  v13.super_class = TSTFormulaPredArg;
  v4 = [(TSTFormulaPredArg *)&v13 init];
  v5 = v4;
  if (v4)
  {
    v4->_type = 6;
    v6 = [TSTFormulaPredArgData alloc];
    v10 = objc_msgSend_initWithBool_(v6, v7, boolCopy, v8, v9);
    data = v5->_data;
    v5->_data = v10;

    v5->_hostCellCoord = 0x7FFF7FFFFFFFLL;
  }

  return v5;
}

- (BOOL)BOOLValue
{
  if (self->_type != 6)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTFormulaPredArg BOOLValue]", v3, v4);
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTFormulaPredArg.mm", v9, v10);
    v12 = objc_opt_class();
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v13, v7, v11, 608, 0, "Wrong type accessor called on %@", v12);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15, v16, v17);
  }

  data = self->_data;

  return objc_msgSend_BOOLValue(data, a2, v2, v3, v4);
}

- (void)setBoolValue:(BOOL)value
{
  valueCopy = value;
  if (self->_type)
  {
    v7 = self->_type == 6;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTFormulaPredArg setBoolValue:]", v3, v4);
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTFormulaPredArg.mm", v11, v12);
    v14 = objc_opt_class();
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v15, v9, v13, 613, 0, "Wrong type accessor called on %@", v14);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17, v18, v19);
  }

  v20 = [TSTFormulaPredArgData alloc];
  v24 = objc_msgSend_initWithBool_(v20, v21, valueCopy, v22, v23);
  data = self->_data;
  self->_data = v24;

  self->_type = 6;
}

- (TSTFormulaPredArg)initWithDouble:(double)double
{
  v7 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], a2, v3, v4, v5, double);
  v11 = objc_msgSend_initWithNumber_(self, v8, v7, v9, v10);

  return v11;
}

- (TSTFormulaPredArg)initWithNumber:(id)number
{
  numberCopy = number;
  v14.receiver = self;
  v14.super_class = TSTFormulaPredArg;
  v5 = [(TSTFormulaPredArg *)&v14 init];
  v6 = v5;
  if (v5)
  {
    v5->_type = 1;
    v7 = [TSTFormulaPredArgData alloc];
    v11 = objc_msgSend_initWithNumber_(v7, v8, numberCopy, v9, v10);
    data = v6->_data;
    v6->_data = v11;

    v6->_hostCellCoord = 0x7FFF7FFFFFFFLL;
  }

  return v6;
}

- (NSNumber)number
{
  if (self->_type != 1)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTFormulaPredArg number]", v3, v4);
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTFormulaPredArg.mm", v9, v10);
    v12 = objc_opt_class();
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v13, v7, v11, 633, 0, "Wrong type accessor called on %@", v12);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15, v16, v17);
  }

  data = self->_data;

  return objc_msgSend_number(data, a2, v2, v3, v4);
}

- (void)setNumber:(id)number
{
  numberCopy = number;
  if (self->_type >= 2u)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSTFormulaPredArg setNumber:]", v5, v6);
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTFormulaPredArg.mm", v10, v11);
    v13 = objc_opt_class();
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v14, v8, v12, 638, 0, "Wrong type accessor called on %@", v13);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16, v17, v18);
  }

  v19 = [TSTFormulaPredArgData alloc];
  v23 = objc_msgSend_initWithNumber_(v19, v20, numberCopy, v21, v22);
  data = self->_data;
  self->_data = v23;

  self->_type = 1;
}

- (double)numberValue
{
  v5 = objc_msgSend_number(self, a2, v2, v3, v4);
  objc_msgSend_doubleValue(v5, v6, v7, v8, v9);
  v11 = v10;

  return v11;
}

- (void)setNumberValue:(double)value
{
  v10 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], a2, v3, v4, v5, value);
  objc_msgSend_setNumber_(self, v7, v10, v8, v9);
}

- (TSTFormulaPredArg)initWithDate:(id)date
{
  dateCopy = date;
  v14.receiver = self;
  v14.super_class = TSTFormulaPredArg;
  v5 = [(TSTFormulaPredArg *)&v14 init];
  v6 = v5;
  if (v5)
  {
    v5->_type = 2;
    v7 = [TSTFormulaPredArgData alloc];
    v11 = objc_msgSend_initWithDate_(v7, v8, dateCopy, v9, v10);
    data = v6->_data;
    v6->_data = v11;

    v6->_hostCellCoord = 0x7FFF7FFFFFFFLL;
  }

  return v6;
}

- (TSUPreserveFlags)preserveFlags
{
  type = self->_type;
  v6 = type > 0xD;
  v7 = (1 << type) & 0x2610;
  if (v6 || v7 == 0)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTFormulaPredArg preserveFlags]", v2, v3);
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTFormulaPredArg.mm", v13, v14);
    v16 = objc_opt_class();
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v17, v11, v15, 662, 0, "Wrong type accessor called on %@", v16);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20, v21);
  }

  return self->_preserveFlags;
}

- (void)setPreserveFlags:(TSUPreserveFlags)flags
{
  if (self->_hasRelativeCellRef)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTFormulaPredArg setPreserveFlags:]", v3, v4);
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTFormulaPredArg.mm", v10, v11);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v13, v8, v12, 667, 0, "Must set the entire relative reference, if you are relative");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15, v16, v17);
  }

  type = self->_type;
  v19 = type > 0xD;
  v20 = (1 << type) & 0x2610;
  if (v19 || v20 == 0)
  {
    v22 = MEMORY[0x277D81150];
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTFormulaPredArg setPreserveFlags:]", v3, v4);
    v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTFormulaPredArg.mm", v25, v26);
    v28 = objc_opt_class();
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v22, v29, v23, v27, 668, 0, "Wrong type accessor called on %@", v28);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v30, v31, v32, v33);
  }

  self->_preserveFlags = flags;
}

- (NSDate)date
{
  if (self->_type != 2)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTFormulaPredArg date]", v3, v4);
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTFormulaPredArg.mm", v9, v10);
    v12 = objc_opt_class();
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v13, v7, v11, 681, 0, "Wrong type accessor called on %@", v12);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15, v16, v17);
  }

  data = self->_data;

  return objc_msgSend_date(data, a2, v2, v3, v4);
}

- (void)setDate:(id)date
{
  dateCopy = date;
  if ((self->_type | 2) != 2)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSTFormulaPredArg setDate:]", v5, v6);
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTFormulaPredArg.mm", v10, v11);
    v13 = objc_opt_class();
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v14, v8, v12, 686, 0, "Wrong type accessor called on %@", v13);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16, v17, v18);
  }

  v19 = [TSTFormulaPredArgData alloc];
  v23 = objc_msgSend_initWithDate_(v19, v20, dateCopy, v21, v22);
  data = self->_data;
  self->_data = v23;

  self->_type = 2;
}

- (TSTFormulaPredArg)initWithString:(id)string
{
  stringCopy = string;
  v14.receiver = self;
  v14.super_class = TSTFormulaPredArg;
  v5 = [(TSTFormulaPredArg *)&v14 init];
  v6 = v5;
  if (v5)
  {
    v5->_type = 3;
    v7 = [TSTFormulaPredArgData alloc];
    v11 = objc_msgSend_initWithString_(v7, v8, stringCopy, v9, v10);
    data = v6->_data;
    v6->_data = v11;

    v6->_hostCellCoord = 0x7FFF7FFFFFFFLL;
  }

  return v6;
}

- (NSString)string
{
  if (self->_type != 3)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTFormulaPredArg string]", v3, v4);
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTFormulaPredArg.mm", v9, v10);
    v12 = objc_opt_class();
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v13, v7, v11, 702, 0, "Wrong type accessor called on %@", v12);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15, v16, v17);
  }

  data = self->_data;

  return objc_msgSend_string(data, a2, v2, v3, v4);
}

- (void)setString:(id)string
{
  stringCopy = string;
  if (self->_type)
  {
    v7 = self->_type == 3;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSTFormulaPredArg setString:]", v5, v6);
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTFormulaPredArg.mm", v11, v12);
    v14 = objc_opt_class();
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v15, v9, v13, 707, 0, "Wrong type accessor called on %@", v14);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17, v18, v19);
  }

  v20 = [TSTFormulaPredArgData alloc];
  v24 = objc_msgSend_initWithString_(v20, v21, stringCopy, v22, v23);
  data = self->_data;
  self->_data = v24;

  self->_type = 3;
}

- (TSTFormulaPredArg)initWithDataList:(id)list
{
  v51 = *MEMORY[0x277D85DE8];
  listCopy = list;
  v49.receiver = self;
  v49.super_class = TSTFormulaPredArg;
  v5 = [(TSTFormulaPredArg *)&v49 init];
  v10 = v5;
  if (v5)
  {
    v5->_type = 11;
    v11 = objc_msgSend_copy(listCopy, v6, v7, v8, v9);
    dataList = v10->_dataList;
    v10->_dataList = v11;

    v10->_hostCellCoord = 0x7FFF7FFFFFFFLL;
    v13 = objc_alloc(MEMORY[0x277CBEB58]);
    v18 = objc_msgSend_count(listCopy, v14, v15, v16, v17);
    v22 = objc_msgSend_initWithCapacity_(v13, v19, v18, v20, v21);
    listItemsSet = v10->_listItemsSet;
    v10->_listItemsSet = v22;

    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v24 = listCopy;
    v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v24, v25, &v45, v50, 16);
    if (v30)
    {
      v31 = *v46;
      do
      {
        for (i = 0; i != v30; ++i)
        {
          if (*v46 != v31)
          {
            objc_enumerationMutation(v24);
          }

          v33 = *(*(&v45 + 1) + 8 * i);
          if (objc_msgSend_dataType(v33, v26, v27, v28, v29, v45) == 3)
          {
            v34 = objc_msgSend_string(v33, v26, v27, v28, v29);
            v39 = objc_msgSend_lowercaseString(v34, v35, v36, v37, v38);

            if (v39)
            {
              v43 = v39;
              objc_msgSend_addObject_(v10->_listItemsSet, v40, v39, v41, v42);
            }

            else
            {
              v43 = &stru_2834BADA0;
              objc_msgSend_addObject_(v10->_listItemsSet, v40, &stru_2834BADA0, v41, v42);
            }
          }
        }

        v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v24, v26, &v45, v50, 16);
      }

      while (v30);
    }
  }

  return v10;
}

- (NSArray)dataList
{
  if (self->_type != 11)
  {
    v5 = MEMORY[0x277D81150];
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTFormulaPredArg dataList]", v2, v3);
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTFormulaPredArg.mm", v8, v9);
    v11 = objc_opt_class();
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v12, v6, v10, 737, 0, "Wrong type accessor called on %@", v11);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14, v15, v16);
  }

  dataList = self->_dataList;

  return dataList;
}

- (BOOL)isStringValueInList:(id)list
{
  listCopy = list;
  v9 = objc_msgSend_lowercaseString(listCopy, v5, v6, v7, v8);

  if (v9)
  {
    v13 = v9;
    v14 = objc_msgSend_containsObject_(self->_listItemsSet, v10, v9, v11, v12);
  }

  else
  {
    v13 = &stru_2834BADA0;
    v14 = objc_msgSend_containsObject_(self->_listItemsSet, v10, &stru_2834BADA0, v11, v12);
  }

  v15 = v14;

  return v15;
}

- (BOOL)isDateValueInListYear:(int64_t)year month:(int64_t)month day:(int64_t)day
{
  v25 = *MEMORY[0x277D85DE8];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = self->_dataList;
  v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v20, v24, 16);
  if (v14)
  {
    v15 = *v21;
    while (2)
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v21 != v15)
        {
          objc_enumerationMutation(v8);
        }

        v17 = *(*(&v20 + 1) + 8 * i);
        if (objc_msgSend_dataType(v17, v10, v11, v12, v13, v20) == 2 && objc_msgSend_day(v17, v10, v11, v12, v13) == day && objc_msgSend_year(v17, v10, v11, v12, v13) == year && objc_msgSend_month(v17, v10, v11, v12, v13) == month)
        {
          v18 = 1;
          goto LABEL_14;
        }
      }

      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v10, &v20, v24, 16);
      if (v14)
      {
        continue;
      }

      break;
    }
  }

  v18 = 0;
LABEL_14:

  return v18;
}

- (BOOL)isNumberValueInList:(const TSUDecimal *)list locale:(id)locale
{
  v30 = *MEMORY[0x277D85DE8];
  localeCopy = locale;
  TSUDecimal::doubleValue(list);
  v8 = v7;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v9 = self->_dataList;
  v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v25, v29, 16);
  if (v15)
  {
    v16 = *v26;
    while (2)
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v26 != v16)
        {
          objc_enumerationMutation(v9);
        }

        v18 = *(*(&v25 + 1) + 8 * i);
        if (objc_msgSend_dataType(v18, v11, v12, v13, v14, v25) == 1)
        {
          objc_msgSend_doubleValue(v18, v11, v12, v13, v14);
          if (objc_msgSend_isEqualViaFormattingAsDouble::(localeCopy, v19, v20, v21, v22, v8, v23))
          {
            LOBYTE(v15) = 1;
            goto LABEL_12;
          }
        }
      }

      v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v11, &v25, v29, 16);
      if (v15)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  return v15;
}

- (BOOL)isDurationValueInList:(double)list
{
  v21 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = self->_dataList;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v16, v20, 16);
  if (v10)
  {
    v11 = *v17;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v4);
        }

        v13 = *(*(&v16 + 1) + 8 * i);
        if (objc_msgSend_dataType(v13, v6, v7, v8, v9, v16) == 5)
        {
          objc_msgSend_durationValue(v13, v6, v7, v8, v9);
          if (v14 == list)
          {
            LOBYTE(v10) = 1;
            goto LABEL_12;
          }
        }
      }

      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v6, &v16, v20, 16);
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  return v10;
}

- (BOOL)isBoolValueInList:(BOOL)list
{
  listCopy = list;
  v21 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = self->_dataList;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v16, v20, 16);
  if (v10)
  {
    v11 = *v17;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v4);
        }

        v13 = *(*(&v16 + 1) + 8 * i);
        if (objc_msgSend_dataType(v13, v6, v7, v8, v9, v16) == 6 && objc_msgSend_BOOLValue(v13, v6, v7, v8, v9) == listCopy)
        {
          v14 = 1;
          goto LABEL_12;
        }
      }

      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v6, &v16, v20, 16);
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v14 = 0;
LABEL_12:

  return v14;
}

- (BOOL)isCellValueInList:(id)list
{
  listCopy = list;
  v9 = objc_msgSend_formattedValue(listCopy, v5, v6, v7, v8);
  isStringValueInList = objc_msgSend_isStringValueInList_(self, v10, v9, v11, v12);

  if ((isStringValueInList & 1) == 0)
  {
    v19 = objc_msgSend_valueType(listCopy, v14, v15, v16, v17);
    v18 = 0;
    if (v19 > 5)
    {
      switch(v19)
      {
        case 6:
          v39 = objc_msgSend_BOOLValue(listCopy, v20, v21, v22, v23);
          isBoolValueInList = objc_msgSend_isBoolValueInList_(self, v40, v39, v41, v42);
          break;
        case 7:
          objc_msgSend_durationTimeIntervalValue(listCopy, v20, v21, v22, v23);
          isBoolValueInList = objc_msgSend_isDurationValueInList_(self, v44, v45, v46, v47);
          break;
        case 10:
          goto LABEL_11;
        default:
          goto LABEL_16;
      }

      v18 = isBoolValueInList;
      goto LABEL_16;
    }

    if (v19 != 2)
    {
      if (v19 != 5)
      {
        goto LABEL_16;
      }

      v24 = objc_msgSend_dateValue(listCopy, v20, v21, v22, v23);
      v50 = 0x7FFFFFFFFFFFFFFFLL;
      v51[0] = 0x7FFFFFFFFFFFFFFFLL;
      v49 = 0x7FFFFFFFFFFFFFFFLL;
      v29 = objc_msgSend_gregorianCalendar(TSCECalendar, v25, v26, v27, v28);
      objc_msgSend_extractComponentsFromDate_year_month_day_(v29, v30, v24, v51, &v50, &v49);
      isDateValueInListYear_month_day = objc_msgSend_isDateValueInListYear_month_day_(self, v31, v51[0], v50, v49);
LABEL_12:
      v18 = isDateValueInListYear_month_day;

      goto LABEL_16;
    }

LABEL_11:
    v51[0] = objc_msgSend_underlyingDecimalValue(listCopy, v20, v21, v22, v23);
    v51[1] = v33;
    v24 = objc_msgSend_locale(listCopy, v33, v34, v35, v36);
    isDateValueInListYear_month_day = objc_msgSend_isNumberValueInList_locale_(self, v37, v51, v24, v38);
    goto LABEL_12;
  }

  v18 = 1;
LABEL_16:

  return v18;
}

- (TSTFormulaPredArg)initWithRelativeCellRef:(const TSCERelativeCellRef *)ref
{
  v10.receiver = self;
  v10.super_class = TSTFormulaPredArg;
  v4 = [(TSTFormulaPredArg *)&v10 init];
  v8 = v4;
  if (v4)
  {
    v4->_type = 4;
    objc_msgSend_setRelativeCellRef_(v4, v5, ref, v6, v7);
    v8->_hostCellCoord = 0x7FFF7FFFFFFFLL;
  }

  return v8;
}

- (const)relativeCellRef
{
  if ((self->_type | 4) != 4)
  {
    v5 = MEMORY[0x277D81150];
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTFormulaPredArg relativeCellRef]", v2, v3);
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTFormulaPredArg.mm", v8, v9);
    v11 = objc_opt_class();
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v12, v6, v10, 873, 0, "Wrong type accessor called on %@", v11);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14, v15, v16);
  }

  if (self->_hasRelativeCellRef)
  {
    return &self->_relativeCellRef;
  }

  if (atomic_load_explicit(&qword_27CFB53D8, memory_order_acquire))
  {
    return &qword_27CFB53E0;
  }

  sub_2216F764C(&v18);
  return v18;
}

- (void)setRelativeCellRef:(const TSCERelativeCellRef *)ref
{
  if ((self->_type | 4) != 4)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTFormulaPredArg setRelativeCellRef:]", v3, v4);
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTFormulaPredArg.mm", v10, v11);
    v13 = objc_opt_class();
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v14, v8, v12, 885, 0, "Wrong type accessor called on %@", v13);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16, v17, v18);
  }

  v19 = *&ref->relativeCoord._row;
  *(&self->_relativeCellRef.tableUID + 1) = *(&ref->tableUID + 1);
  *&self->_relativeCellRef.relativeCoord._row = v19;
  *&self->_hasRelativeCellRef = 1025;
  self->_baseCellRef._ref.coordinate = 0x7FFF7FFFFFFFLL;
  self->_preserveFlags._flags = *(&self->_relativeCellRef + 24) & 3;
}

- (TSTFormulaPredArg)initWithCrossTableRef:(const TSCECrossTableReference *)ref
{
  var1 = ref->var1;
  v6 = *&var1 & 0xFFFF00000000;
  v7 = var1._row != 0x7FFFFFFFLL;
  v8 = 4 * ((*&var1 & 0xFFFF00000000) != 0x7FFF00000000);
  if (var1._row != 0x7FFFFFFFLL)
  {
    v8 = 0;
  }

  v12 = ref->var1;
  var0 = ref->var0;
  v9 = (*&var1 >> 47) & 2 | *&var1._preserveColumn;
  v10 = 8 * v7;
  if (v6 != 0x7FFF00000000)
  {
    v10 = 0;
  }

  v14 = v8 | v10 | v9;
  return objc_msgSend_initWithRelativeCellRef_(self, a2, &v12, v3, v4);
}

- (TSCECrossTableReference)crossTableRef
{
  if (self->_hasRelativeCellRef)
  {
    v8 = objc_msgSend_relativeCellRef(self, a3, v3, v4, v5);
    v9 = *v8;
    retstr->var0 = *(v8 + 8);
    v27._flags = *(v8 + 24) & 3;
    retstr->var1 = v9;
    return TSCERelativeCellCoordinate::setPreserveFlags(&retstr->var1, &v27);
  }

  else
  {
    hostCellCoord = self->_hostCellCoord;
    if (hostCellCoord._coord.row == 0x7FFFFFFF || (*&hostCellCoord & 0xFFFF00000000) == 0x7FFF00000000)
    {
      v13 = MEMORY[0x277D81150];
      v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a3, "[TSTFormulaPredArg crossTableRef]", v4, v5);
      v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTFormulaPredArg.mm", v16, v17);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v19, v14, v18, 912, 0, "Need a host-cell if we aren't storing a relativeRef");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22, v23);
      hostCellCoord = self->_hostCellCoord;
    }

    coordinate = self->_baseCellRef._ref.coordinate;
    p_preserveFlags = &self->_preserveFlags;
    RelativeCellCoordinateFromAbsoluteCoordinates = TSCERelativeCellCoordinate::makeRelativeCellCoordinateFromAbsoluteCoordinates(*&hostCellCoord, coordinate, p_preserveFlags, v4);
    retstr->var0 = self->_baseCellRef._ref._tableUID;
    retstr->var1 = RelativeCellCoordinateFromAbsoluteCoordinates;

    return TSCERelativeCellCoordinate::setPreserveFlags(&retstr->var1, &self->_preserveFlags);
  }
}

- (TSTUIDRectRef)uidRectRef
{
  if (self->_type == 13 && (viewTractRef = self->_viewTractRef) != 0)
  {
    v7 = objc_msgSend_tract(viewTractRef, a2, v2, v3, v4);
    v12 = v7;
    memset(v50, 0, sizeof(v50));
    *__p = 0u;
    if (v7)
    {
      v13 = objc_msgSend_columnUids(v7, v8, v9, v10, v11);
      v18 = objc_msgSend_rowUids(v12, v14, v15, v16, v17);
      sub_2210BBBE8(v45, v13, v18);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      *__p = *v45;
      v50[0] = v46;
      v45[1] = 0;
      v46 = 0;
      v45[0] = 0;
      v19 = v50[1];
      if (v50[1])
      {
        v50[2] = v50[1];
        operator delete(v50[1]);
        v19 = v45[0];
      }

      *&v50[1] = v47;
      v50[3] = v48;
      v48 = 0;
      v47 = 0uLL;
      if (v19)
      {
        v45[1] = v19;
        operator delete(v19);
      }
    }

    v20 = objc_msgSend_preserveFlags(self->_viewTractRef, v8, v9, v10, v11, v45[0], v45[1], v46, v47, v48);
    v21 = [TSTUIDRectRef alloc];
    v45[0] = objc_msgSend_tableUID(self->_viewTractRef, v22, v23, v24, v25);
    v45[1] = v26;
    v27 = objc_msgSend_initWithCalcEngine_tableUID_uidRange_preserveFlags_(v21, v26, 0, v45, __p, v20);
  }

  else
  {
    v28 = objc_msgSend_includedUidsTract(self->_uidTractList, a2, v2, v3, v4);
    v12 = v28;
    memset(v50, 0, sizeof(v50));
    *__p = 0u;
    if (v28)
    {
      v33 = objc_msgSend_columnUids(v28, v29, v30, v31, v32);
      v38 = objc_msgSend_rowUids(v12, v34, v35, v36, v37);
      sub_2210BBBE8(v45, v33, v38);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      *__p = *v45;
      v50[0] = v46;
      v45[1] = 0;
      v46 = 0;
      v45[0] = 0;
      v39 = v50[1];
      if (v50[1])
      {
        v50[2] = v50[1];
        operator delete(v50[1]);
        v39 = v45[0];
      }

      *&v50[1] = v47;
      v50[3] = v48;
      v48 = 0;
      v47 = 0uLL;
      if (v39)
      {
        v45[1] = v39;
        operator delete(v39);
      }
    }

    v40 = objc_msgSend_preserveFlags(self->_uidTractList, v29, v30, v31, v32, v45[0], v45[1], v46, v47, v48);
    v41 = [TSTUIDRectRef alloc];
    v27 = objc_msgSend_initWithCalcEngine_tableUID_uidRange_preserveFlags_(v41, v42, 0, &self->_relativeCellRef.tableUID, __p, v40);
  }

  v43 = v27;
  if (v50[1])
  {
    v50[2] = v50[1];
    operator delete(v50[1]);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return v43;
}

- (TSTFormulaPredArg)initWithCategoryRef:(id)ref
{
  refCopy = ref;
  v11.receiver = self;
  v11.super_class = TSTFormulaPredArg;
  v5 = [(TSTFormulaPredArg *)&v11 init];
  v9 = v5;
  if (v5)
  {
    objc_msgSend_setCategoryRef_(v5, v6, refCopy, v7, v8);
  }

  return v9;
}

- (TSCECategoryRef)categoryRef
{
  if ((objc_msgSend_hasCategoryRef(self, a2, v2, v3, v4) & 1) == 0)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSTFormulaPredArg categoryRef]", v7, v8);
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTFormulaPredArg.mm", v12, v13);
    v15 = objc_opt_class();
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v16, v10, v14, 960, 0, "Wrong type accessor called on %@", v15);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19, v20);
  }

  categoryRef = self->_categoryRef;

  return categoryRef;
}

- (TSTFormulaPredArg)initWithViewTractRef:(id)ref
{
  refCopy = ref;
  v11.receiver = self;
  v11.super_class = TSTFormulaPredArg;
  v5 = [(TSTFormulaPredArg *)&v11 init];
  v9 = v5;
  if (v5)
  {
    objc_msgSend_setViewTractRef_(v5, v6, refCopy, v7, v8);
  }

  return v9;
}

- (TSCEViewTractRef)viewTractRef
{
  if ((objc_msgSend_hasViewTractRef(self, a2, v2, v3, v4) & 1) == 0)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSTFormulaPredArg viewTractRef]", v7, v8);
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTFormulaPredArg.mm", v12, v13);
    v15 = objc_opt_class();
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v16, v10, v14, 981, 0, "Wrong type accessor called on %@", v15);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19, v20);
  }

  viewTractRef = self->_viewTractRef;

  return viewTractRef;
}

- (id)initAsBadRefWithTableUID:(const TSKUIDStruct *)d uidTractList:(id)list
{
  result = objc_msgSend_initWithTableUID_uidTractList_(self, a2, d, list, v4);
  if (result)
  {
    *(result + 113) = 9;
  }

  return result;
}

- (TSTFormulaPredArg)initWithTableUID:(const TSKUIDStruct *)d uidTractList:(id)list
{
  listCopy = list;
  v20.receiver = self;
  v20.super_class = TSTFormulaPredArg;
  v7 = [(TSTFormulaPredArg *)&v20 init];
  v12 = v7;
  if (v7)
  {
    v7->_relativeCellRef.tableUID = *d;
    v7->_type = 12;
    v13 = objc_msgSend_copy(listCopy, v8, v9, v10, v11);
    uidTractList = v12->_uidTractList;
    v12->_uidTractList = v13;

    v12->_preserveFlags._flags = objc_msgSend_preserveFlags(listCopy, v15, v16, v17, v18);
    v12->_hostCellCoord = 0x7FFF7FFFFFFFLL;
  }

  return v12;
}

- (TSTFormulaPredArg)initWithBaseCellRef:(const void *)ref preserveFlags:(const TSUPreserveFlags *)flags
{
  v8.receiver = self;
  v8.super_class = TSTFormulaPredArg;
  result = [(TSTFormulaPredArg *)&v8 init];
  if (result)
  {
    v7 = *ref;
    result->_baseCellRef._ref._tableUID._upper = *(ref + 2);
    *&result->_baseCellRef._ref.coordinate.row = v7;
    result->_type = 4;
    result->_preserveFlags = flags->_flags;
    result->_hostCellCoord = 0x7FFF7FFFFFFFLL;
  }

  return result;
}

- (const)baseCellRef
{
  type = self->_type;
  if (type != 4 && type != 9)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTFormulaPredArg baseCellRef]", v3, v4);
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTFormulaPredArg.mm", v11, v12);
    v14 = objc_opt_class();
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v15, v9, v13, 1021, 0, "Wrong type accessor called on %@", v14);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17, v18, v19);
  }

  if (self->_hasRelativeCellRef)
  {
    hostCellCoord = self->_hostCellCoord;
    if (hostCellCoord != 0x7FFFFFFF && (hostCellCoord & 0xFFFF00000000) != 0x7FFF00000000)
    {
      objc_msgSend_cellRefForHostCoord_(self, a2, hostCellCoord, v3, v4);
      self->_baseCellRef._ref.coordinate = v31;
      v22 = *v32;
LABEL_17:
      self->_baseCellRef._ref._tableUID = v22;
    }
  }

  else if (self->_type == 9)
  {
    v23 = objc_msgSend_uidRectRef(self, a2, v2, v3, v4);
    v28 = v23;
    if (v23)
    {
      objc_msgSend_baseRangeRef(v23, v24, v25, v26, v27);
      v29 = v31;
    }

    else
    {
      v29 = 0;
      *&v32[8] = 0u;
    }

    self->_baseCellRef._ref.coordinate = v29;
    v22 = *&v32[8];
    goto LABEL_17;
  }

  return &self->_baseCellRef;
}

- (TSCECellRef)cellRefForHostCoord:(SEL)coord
{
  type = self->_type;
  if (type != 4 && type != 9)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], coord, "[TSTFormulaPredArg cellRefForHostCoord:]", v4, v5);
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTFormulaPredArg.mm", v14, v15);
    v17 = objc_opt_class();
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v18, v12, v16, 1038, 0, "Wrong type accessor called on %@", v17);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21, v22);
  }

  if (self->_hasRelativeCellRef)
  {
    coord = a4._coord;
    TSCERelativeCellRef::cellRefForHostCoord(&self->_relativeCellRef, &coord, v4, v5, retstr);
  }

  else
  {
    result = objc_msgSend_baseCellRef(self, coord, *&a4, v4, v5);
    upper = result->_tableUID._upper;
    *&retstr->coordinate.row = *&result->coordinate.row;
    retstr->_tableUID._upper = upper;
  }

  return result;
}

- (id)convertToRelativeRefIfPossible
{
  selfCopy = self;
  v3 = selfCopy;
  if (selfCopy->_type == 4 && !selfCopy->_hasRelativeCellRef)
  {
    v4 = [TSTFormulaPredArg alloc];
    objc_msgSend_crossTableRef(v3, v5, v6, v7, v8);
    v12 = objc_msgSend_initWithCrossTableRef_(v4, v9, v14, v10, v11);

    v3 = v12;
  }

  return v3;
}

- (void)setBaseCellRef:(const void *)ref
{
  if ((self->_type | 4) != 4)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTFormulaPredArg setBaseCellRef:]", v3, v4);
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTFormulaPredArg.mm", v10, v11);
    v13 = objc_opt_class();
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v14, v8, v12, 1052, 0, "Wrong type accessor called on %@", v13);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16, v17, v18);
  }

  v19 = *ref;
  self->_baseCellRef._ref._tableUID._upper = *(ref + 2);
  *&self->_baseCellRef._ref.coordinate.row = v19;
  *&self->_hasRelativeCellRef = 1024;
}

- (void)setBaseCellRef:(const void *)ref preserveFlags:(const TSUPreserveFlags *)flags
{
  objc_msgSend_setBaseCellRef_(self, a2, ref, flags, v4);
  flags = flags->_flags;

  objc_msgSend_setPreserveFlags_(self, v7, flags, v8, v9);
}

- (void)setBaseCellRef:(const void *)ref preserveColumn:(BOOL)column preserveRow:(BOOL)row
{
  rowCopy = row;
  columnCopy = column;
  objc_msgSend_setBaseCellRef_(self, a2, ref, column, row);
  v11 = 2;
  if (!rowCopy)
  {
    v11 = 0;
  }

  objc_msgSend_setPreserveFlags_(self, v8, v11 | columnCopy, v9, v10);
}

- (TSTFormulaPredArg)initWithBaseCellReference:(id)reference preserveColumn:(BOOL)column preserveRow:(BOOL)row
{
  rowCopy = row;
  TSCECellRef::TSCECellRef(&v13, reference);
  v14 = v13;
  if (rowCopy)
  {
    v10 = 2;
  }

  else
  {
    v10 = 0;
  }

  v12 = v10 | column;
  return objc_msgSend_initWithBaseCellRef_preserveFlags_(self, v8, &v14, &v12, v9);
}

- (id)cellReference
{
  v5 = objc_msgSend_baseCellRef(self, a2, v2, v3, v4);

  return TSCECellRef::wrapped(v5);
}

- (void)setBaseCellReference:(id)reference
{
  referenceCopy = reference;
  v9 = referenceCopy;
  if (referenceCopy)
  {
    objc_msgSend_cellRef(referenceCopy, v5, v6, v7, v8);
  }

  else
  {
    v10 = 0uLL;
    v11 = 0;
  }

  v12 = v10;
  v13 = v11;
  objc_msgSend_setBaseCellRef_(self, v5, &v12, v7, v8);
}

- (void)setBaseCellReference:(id)reference preserveColumn:(BOOL)column preserveRow:(BOOL)row
{
  rowCopy = row;
  referenceCopy = reference;
  v13 = referenceCopy;
  if (referenceCopy)
  {
    objc_msgSend_cellRef(referenceCopy, v9, v10, v11, v12);
  }

  else
  {
    v16 = 0uLL;
    v17 = 0;
  }

  v18 = v16;
  v19 = v17;
  if (rowCopy)
  {
    v14 = 2;
  }

  else
  {
    v14 = 0;
  }

  v15 = v14 | column;
  objc_msgSend_setBaseCellRef_preserveFlags_(self, v9, &v18, &v15, v12);
}

- (TSTFormulaPredArg)initWithDuration:(double)duration units:(unsigned __int8)units
{
  unitsCopy = units;
  v15.receiver = self;
  v15.super_class = TSTFormulaPredArg;
  v6 = [(TSTFormulaPredArg *)&v15 init];
  v7 = v6;
  if (v6)
  {
    v6->_type = 5;
    v8 = [TSTFormulaPredArgData alloc];
    v12 = objc_msgSend_initWithDuration_units_(v8, v9, unitsCopy, v10, v11, duration);
    data = v7->_data;
    v7->_data = v12;
  }

  return v7;
}

- (double)durationValue
{
  if (self->_type != 5)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTFormulaPredArg durationValue]", v3, v4);
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTFormulaPredArg.mm", v9, v10);
    v12 = objc_opt_class();
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v13, v7, v11, 1095, 0, "Wrong type accessor called on %@", v12);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15, v16, v17);
  }

  data = self->_data;

  objc_msgSend_durationValue(data, a2, v2, v3, v4);
  return result;
}

- (void)setDurationValue:(double)value
{
  type = self->_type;
  v8 = type > 5;
  v9 = (1 << type) & 0x23;
  if (v8 || v9 == 0)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTFormulaPredArg setDurationValue:]", v3, v4);
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTFormulaPredArg.mm", v14, v15);
    v17 = objc_opt_class();
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v18, v12, v16, 1102, 0, "Wrong type accessor called on %@", v17);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21, v22);
  }

  v23 = [TSTFormulaPredArgData alloc];
  v28 = objc_msgSend_durationUnits(self->_data, v24, v25, v26, v27);
  v32 = objc_msgSend_initWithDuration_units_(v23, v29, v28, v30, v31, value);
  data = self->_data;
  self->_data = v32;

  self->_type = 5;
}

- (unsigned)durationUnits
{
  if (self->_type != 5)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTFormulaPredArg durationUnits]", v3, v4);
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTFormulaPredArg.mm", v9, v10);
    v12 = objc_opt_class();
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v13, v7, v11, 1109, 0, "Wrong type accessor called on %@", v12);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15, v16, v17);
  }

  data = self->_data;

  return objc_msgSend_durationUnits(data, a2, v2, v3, v4);
}

- (TSCENumberValue)duration
{
  if (self->_type != 5)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTFormulaPredArg duration]", v3, v4);
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTFormulaPredArg.mm", v9, v10);
    v12 = objc_opt_class();
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v13, v7, v11, 1114, 0, "Wrong type accessor called on %@", v12);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15, v16, v17);
  }

  data = self->_data;

  return objc_msgSend_duration(data, a2, v2, v3, v4);
}

- (void)setDurationUnits:(unsigned __int8)units
{
  unitsCopy = units;
  type = self->_type;
  v8 = type > 5;
  v9 = (1 << type) & 0x23;
  if (v8 || v9 == 0)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTFormulaPredArg setDurationUnits:]", v3, v4);
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTFormulaPredArg.mm", v14, v15);
    v17 = objc_opt_class();
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v18, v12, v16, 1121, 0, "Wrong type accessor called on %@", v17);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21, v22);
  }

  v23 = [TSTFormulaPredArgData alloc];
  objc_msgSend_durationValue(self->_data, v24, v25, v26, v27);
  v31 = objc_msgSend_initWithDuration_units_(v23, v28, unitsCopy, v29, v30);
  data = self->_data;
  self->_data = v31;

  self->_type = 5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6 = 0;
  type = self->_type;
  if (type > 5)
  {
    if (self->_type > 0xAu)
    {
      switch(type)
      {
        case 0xBu:
          v61 = [TSTFormulaPredArg alloc];
          v13 = objc_msgSend_dataList(self, v62, v63, v64, v65);
          inited = objc_msgSend_initWithDataList_(v61, v66, v13, v67, v68);
          break;
        case 0xCu:
          v91 = [TSTFormulaPredArg alloc];
          v13 = objc_msgSend_copy(self->_uidTractList, v92, v93, v94, v95);
          inited = objc_msgSend_initWithTableUID_uidTractList_(v91, v96, &self->_relativeCellRef.tableUID, v13, v97);
          break;
        case 0xDu:
          v39 = [TSTFormulaPredArg alloc];
          viewTractRef = self->_viewTractRef;

          return objc_msgSend_initWithViewTractRef_(v39, v40, viewTractRef, v41, v42);
        default:
          return v6;
      }
    }

    else
    {
      if (type == 6)
      {
        v44 = [TSTFormulaPredArg alloc];
        v50 = objc_msgSend_BOOLValue(self, v45, v46, v47, v48);

        return objc_msgSend_initWithBool_(v44, v49, v50, v51, v52);
      }

      if (type != 9)
      {
        if (type == 10)
        {
          v18 = [TSTFormulaPredArg alloc];
          categoryRef = self->_categoryRef;

          return objc_msgSend_initWithCategoryRef_(v18, v19, categoryRef, v20, v21);
        }

        return v6;
      }

      v77 = [TSTFormulaPredArg alloc];
      v13 = objc_msgSend_copy(self->_uidTractList, v78, v79, v80, v81);
      inited = objc_msgSend_initAsBadRefWithTableUID_uidTractList_(v77, v82, &self->_relativeCellRef.tableUID, v13, v83);
    }

LABEL_40:
    v6 = inited;

    return v6;
  }

  if (self->_type > 2u)
  {
    if (type != 3)
    {
      if (type == 4)
      {
        hasRelativeCellRef = objc_msgSend_hasRelativeCellRef(self, a2, zone, v3, v4);
        v85 = [TSTFormulaPredArg alloc];
        v90 = v85;
        if (!hasRelativeCellRef)
        {
          v98 = objc_msgSend_baseCellRef(self, v86, v87, v88, v89);
          v105 = objc_msgSend_preserveFlags(self, v99, v100, v101, v102);
          return objc_msgSend_initWithBaseCellRef_preserveFlags_(v90, v103, v98, &v105, v104);
        }

        return objc_msgSend_initWithRelativeCellRef_(v85, v86, &self->_relativeCellRef, v88, v89);
      }

      if (type == 5)
      {
        v24 = [TSTFormulaPredArg alloc];
        objc_msgSend_durationValue(self, v25, v26, v27, v28);
        v30 = v29;
        v36 = objc_msgSend_durationUnits(self, v31, v32, v33, v34);

        return objc_msgSend_initWithDuration_units_(v24, v35, v36, v37, v38, v30);
      }

      return v6;
    }

    v53 = [TSTFormulaPredArg alloc];
    v13 = objc_msgSend_string(self, v54, v55, v56, v57);
    inited = objc_msgSend_initWithString_(v53, v58, v13, v59, v60);
    goto LABEL_40;
  }

  if (self->_type)
  {
    if (type == 1)
    {
      v69 = [TSTFormulaPredArg alloc];
      v13 = objc_msgSend_number(self, v70, v71, v72, v73);
      inited = objc_msgSend_initWithNumber_(v69, v74, v13, v75, v76);
    }

    else
    {
      v8 = [TSTFormulaPredArg alloc];
      v13 = objc_msgSend_date(self, v9, v10, v11, v12);
      inited = objc_msgSend_initWithDate_(v8, v14, v13, v15, v16);
    }

    goto LABEL_40;
  }

  return objc_opt_new();
}

- (unint64_t)hash
{
  v6 = objc_msgSend_type(self, a2, v2, v3, v4);
  v11 = objc_msgSend_type(self, v7, v8, v9, v10);
  if (v11 <= 5)
  {
    if (v11 <= 2)
    {
      if (v11 == 1)
      {
        v16 = objc_msgSend_number(self, v12, v13, v14, v15);
        v21 = objc_msgSend_hash(v16, v28, v29, v30, v31);
        goto LABEL_26;
      }

      if (v11 == 2)
      {
        v16 = objc_msgSend_date(self, v12, v13, v14, v15);
        v21 = objc_msgSend_hash(v16, v24, v25, v26, v27);
        goto LABEL_26;
      }
    }

    else
    {
      if (v11 == 3)
      {
        v16 = objc_msgSend_string(self, v12, v13, v14, v15);
        v21 = objc_msgSend_hash(v16, v40, v41, v42, v43);
        goto LABEL_26;
      }

      if (v11 == 4)
      {
        if (self->_hasRelativeCellRef)
        {
          v32 = objc_msgSend_relativeCellRef(self, v12, v13, v14, v15);
          v33 = *v32 + (*(v32 + 2) << 16);
          v34 = (*(v32 + 2) ^ *(v32 + 1)) + (v32[6] & 1) + ((*(v32 + 24) >> 1) & 1);
        }

        else
        {
          v48 = objc_msgSend_baseCellRef(self, v12, v13, v14, v15);
          v33 = *(v48 + 4) + (*v48 << 15);
          v34 = *(v48 + 16) ^ *(v48 + 8);
        }

        v23 = v34 ^ v33;
      }

      else
      {
        objc_msgSend_durationValue(self, v12, v13, v14, v15);
        v23 = (v22 * 100.0);
      }

      v6 += v23;
    }
  }

  else if (v11 > 10)
  {
    switch(v11)
    {
      case 11:
        v16 = objc_msgSend_dataList(self, v12, v13, v14, v15);
        v21 = objc_msgSend_count(v16, v44, v45, v46, v47);
        goto LABEL_26;
      case 12:
        v39 = self->_relativeCellRef.tableUID._upper ^ self->_relativeCellRef.tableUID._lower;
        v6 += v39 + objc_msgSend_hash(self->_uidTractList, v12, v13, v14, v15);
        break;
      case 13:
        v6 += objc_msgSend_hash(self->_viewTractRef, v12, v13, v14, v15);
        break;
    }
  }

  else
  {
    switch(v11)
    {
      case 6:
        v6 += objc_msgSend_BOOLValue(self, v12, v13, v14, v15);
        break;
      case 9:
        v16 = objc_msgSend_uidRectRef(self, v12, v13, v14, v15);
        v21 = objc_msgSend_hash(v16, v35, v36, v37, v38);
        goto LABEL_26;
      case 10:
        v16 = objc_msgSend_categoryRef(self, v12, v13, v14, v15);
        v21 = objc_msgSend_hash(v16, v17, v18, v19, v20);
LABEL_26:
        v6 += v21;

        break;
    }
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v9 = equalCopy;
  LOBYTE(uidTractList) = self == equalCopy;
  if (!equalCopy || self == equalCopy)
  {
    goto LABEL_52;
  }

  v11 = objc_msgSend_type(self, v5, v6, v7, v8);
  if (v11 != objc_msgSend_type(v9, v12, v13, v14, v15))
  {
    goto LABEL_51;
  }

  v20 = objc_msgSend_type(self, v16, v17, v18, v19);
  LOBYTE(uidTractList) = 1;
  if (v20 <= 5)
  {
    if (v20 <= 2)
    {
      if (v20 == 1)
      {
        v25 = objc_msgSend_number(self, v21, v22, v23, v24);
        v30 = objc_msgSend_number(v9, v66, v67, v68, v69);
        isEqual = objc_msgSend_isEqual_(v25, v70, v30, v71, v72);
        goto LABEL_34;
      }

      if (v20 == 2)
      {
        v25 = objc_msgSend_date(self, v21, v22, v23, v24);
        v30 = objc_msgSend_date(v9, v59, v60, v61, v62);
        isEqual = objc_msgSend_isEqual_(v25, v63, v30, v64, v65);
        goto LABEL_34;
      }

      goto LABEL_52;
    }

    if (v20 == 3)
    {
      v25 = objc_msgSend_string(self, v21, v22, v23, v24);
      v30 = objc_msgSend_string(v9, v88, v89, v90, v91);
      isEqual = objc_msgSend_isEqual_(v25, v92, v30, v93, v94);
      goto LABEL_34;
    }

    if (v20 != 4)
    {
      objc_msgSend_durationValue(self, v21, v22, v23, v24);
      v36 = v35;
      objc_msgSend_durationValue(v9, v37, v38, v39, v40);
      if (v36 != v45)
      {
        goto LABEL_51;
      }

      v46 = objc_msgSend_durationUnits(self, v41, v42, v43, v44);
      v51 = v46 == objc_msgSend_durationUnits(v9, v47, v48, v49, v50);
LABEL_15:
      LOBYTE(uidTractList) = v51;
      goto LABEL_52;
    }

    if (self->_hasRelativeCellRef && v9->_hasRelativeCellRef)
    {
      uidTractList = objc_msgSend_relativeCellRef(self, v21, v22, v23, v24);
      v77 = objc_msgSend_relativeCellRef(v9, v73, v74, v75, v76);
      LOBYTE(uidTractList) = sub_2212C2640(uidTractList, v77);
      goto LABEL_52;
    }

    v127 = objc_msgSend_baseCellRef(self, v21, v22, v23, v24);
    v132 = objc_msgSend_baseCellRef(v9, v128, v129, v130, v131);
    if (*v127 == *v132 && ((*v132 ^ *v127) & 0x101FFFF00000000) == 0 && v127[1] == v132[1] && v127[2] == v132[2])
    {
      v137 = objc_msgSend_preserveFlags(self, v133, v134, v135, v136);
      v51 = v137 == objc_msgSend_preserveFlags(v9, v138, v139, v140, v141);
      goto LABEL_15;
    }

LABEL_51:
    LOBYTE(uidTractList) = 0;
    goto LABEL_52;
  }

  if (v20 <= 10)
  {
    switch(v20)
    {
      case 6:
        v95 = objc_msgSend_BOOLValue(self, v21, v22, v23, v24);
        LODWORD(uidTractList) = v95 ^ objc_msgSend_BOOLValue(v9, v96, v97, v98, v99) ^ 1;
        goto LABEL_52;
      case 9:
        v25 = objc_msgSend_uidRectRef(self, v21, v22, v23, v24);
        v30 = objc_msgSend_uidRectRef(v9, v78, v79, v80, v81);
        isEqual = objc_msgSend_isEqual_(v25, v82, v30, v83, v84);
        goto LABEL_34;
      case 10:
        v25 = objc_msgSend_categoryRef(self, v21, v22, v23, v24);
        v30 = objc_msgSend_categoryRef(v9, v26, v27, v28, v29);
        isEqual = objc_msgSend_isEqual_(v25, v31, v30, v32, v33);
LABEL_34:
        LOBYTE(uidTractList) = isEqual;
LABEL_35:

        goto LABEL_36;
    }

    goto LABEL_52;
  }

  switch(v20)
  {
    case 11:
      v25 = objc_msgSend_dataList(self, v21, v22, v23, v24);
      v30 = objc_msgSend_dataList(v9, v100, v101, v102, v103);
      v108 = objc_msgSend_count(v25, v104, v105, v106, v107);
      if (v108 == objc_msgSend_count(v30, v109, v110, v111, v112))
      {
        if (v108)
        {
          v116 = 0;
          v117 = v108 - 1;
          do
          {
            v118 = objc_msgSend_objectAtIndexedSubscript_(v25, v113, v116, v114, v115);
            v122 = objc_msgSend_objectAtIndexedSubscript_(v30, v119, v116, v120, v121);
            LOBYTE(uidTractList) = objc_msgSend_isEqual_(v118, v123, v122, v124, v125);

            v51 = v117 == v116++;
            if (v51)
            {
              v126 = 0;
            }

            else
            {
              v126 = uidTractList;
            }
          }

          while ((v126 & 1) != 0);
        }

        else
        {
          LOBYTE(uidTractList) = 1;
        }
      }

      else
      {
        LOBYTE(uidTractList) = 0;
      }

      goto LABEL_35;
    case 12:
      if (self->_relativeCellRef.tableUID._lower == v9->_relativeCellRef.tableUID._lower && self->_relativeCellRef.tableUID._upper == v9->_relativeCellRef.tableUID._upper)
      {
        uidTractList = self->_uidTractList;
        v25 = objc_msgSend_uidTractList(v9, v21, v22, v23, v24);
        LOBYTE(uidTractList) = objc_msgSend_isEqual_(uidTractList, v85, v25, v86, v87);
LABEL_36:

        break;
      }

      goto LABEL_51;
    case 13:
      v25 = objc_msgSend_viewTractRef(self, v21, v22, v23, v24);
      v30 = objc_msgSend_viewTractRef(v9, v52, v53, v54, v55);
      isEqual = objc_msgSend_isEqual_(v25, v56, v30, v57, v58);
      goto LABEL_34;
  }

LABEL_52:

  return uidTractList;
}

- (BOOL)isEqual:(id)equal atHostCoord:(TSUModelCellCoord)coord
{
  equalCopy = equal;
  v11 = equalCopy;
  LOBYTE(v12) = self == equalCopy;
  if (equalCopy && self != equalCopy)
  {
    v13 = objc_msgSend_type(self, v7, v8, v9, v10);
    if (v13 == objc_msgSend_type(v11, v14, v15, v16, v17))
    {
      if (objc_msgSend_type(self, v18, v19, v20, v21) != 4)
      {
        isEqual = objc_msgSend_isEqual_(self, v22, v11, v24, v25);
        goto LABEL_9;
      }

      if (self->_hasRelativeCellRef && objc_msgSend_hasRelativeCellRef(v11, v22, v23, v24, v25))
      {
        v27 = objc_msgSend_relativeCellRef(self, v22, v26, v24, v25);
        v32 = objc_msgSend_relativeCellRef(v11, v28, v29, v30, v31);
        isEqual = sub_2212C2640(v27, v32);
LABEL_9:
        LOBYTE(v12) = isEqual;
        goto LABEL_16;
      }

      objc_msgSend_cellRefForHostCoord_(self, v22, *&coord, v24, v25);
      objc_msgSend_cellRefForHostCoord_(v11, v34, *&coord, v35, v36);
      if (v59 == v56 && ((v56 ^ v59) & 0x101FFFF00000000) == 0 && v60 == v57 && v61 == v58)
      {
        v41 = objc_msgSend_preserveColumn(self, v37, v38, v39, v40);
        if (v41 == objc_msgSend_preserveColumn(v11, v42, v43, v44, v45))
        {
          v51 = objc_msgSend_preserveRow(self, v46, v47, v48, v49);
          v12 = v51 ^ objc_msgSend_preserveRow(v11, v52, v53, v54, v55) ^ 1;
          goto LABEL_16;
        }
      }
    }

    LOBYTE(v12) = 0;
  }

LABEL_16:

  return v12;
}

- (id)rewriteWithContext:(TSCEFormulaRewriteContext *)context forArgAt:(int64_t)at usingLinkedRef:(BOOL)ref useColumnRef:(BOOL)columnRef hostCellRef:(TSCEUidCellRef *)cellRef rewriteBlock:(id)block
{
  columnRefCopy = columnRef;
  refCopy = ref;
  blockCopy = block;
  selfCopy = self;
  if (objc_msgSend_needsFormulaRewriting(selfCopy, v16, v17, v18, v19))
  {
    TSCEFormulaCreationMagic::nop(v20, v21, v22, v23, &v99);
    if (at)
    {
      objc_msgSend_formulaCreatorForPredArg(selfCopy, v24, v25, v26, v27);
    }

    else
    {
      objc_msgSend_formulaCreatorForPredArg0UsingLinkedRef_useColumnRef_(selfCopy, v24, refCopy, columnRefCopy, v27);
    }

    TSCEFormulaCreator::operator=(&v99.var0, v93, v28, v29, v30);

    v36 = objc_msgSend_type(selfCopy, v32, v33, v34, v35) == 12;
    v37 = [TSCEFormulaObject alloc];
    TSCEFormulaCreator::TSCEFormulaCreator(&v97, &v99);
    TSCEFormulaCreationMagic::SUM(v38, v101, &v98);
    v41 = objc_msgSend_initWithCreator_translationFlags_(v37, v39, &v98, 32 * v36, v40);

    if ((objc_msgSend_translationFlags(v41, v42, v43, v44, v45) & 0x20) != 0 && *&cellRef->_columnUid != 0)
    {
      p_rowUid = &cellRef->_rowUid;
      if (*&cellRef->_rowUid != 0)
      {
        v48 = objc_msgSend_copyBySettingHostTableUID_hostColumnUID_hostRowUID_(v41, v46, &cellRef->_tableUid, cellRef, p_rowUid);

        v41 = v48;
      }
    }

    v49 = objc_msgSend_copyByRewritingWithContext_rewriteBlock_(v41, v46, context, blockCopy, p_rowUid);
    if ((objc_msgSend_hasHostCell(v49, v50, v51, v52, v53) & 1) == 0)
    {
      cellRef->_rowUid = 0u;
      cellRef->_tableUid = 0u;
      cellRef->_columnUid = 0u;
    }

    v58 = objc_msgSend_const_astNodeArray(v49, v54, v55, v56, v57);
    sub_2212C3620(v93, v58, context, 0, -1, -1);
    TSCEASTStreamIterator::rewrite(v93, v59, v60, v61, v62);
    v31 = v94;

    if (!v31)
    {
      v67 = MEMORY[0x277D81150];
      v68 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v63, "[TSTFormulaPredArg rewriteWithContext:forArgAt:usingLinkedRef:useColumnRef:hostCellRef:rewriteBlock:]", v65, v66);
      v72 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v69, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTFormulaPredArg.mm", v70, v71);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v67, v73, v68, v72, 1478, 0, "Not expecting no result");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v74, v75, v76, v77);
    }

    v78 = objc_msgSend_hostColumnUID(v49, v63, v64, v65, v66);
    v83 = objc_msgSend_hostRowUID(v49, v79, v80, v81, v82);
    v88 = objc_msgSend_hostTableUID(v49, v84, v85, v86, v87);
    v89 = *v78;
    v90 = *v88;
    cellRef->_rowUid = *v83;
    cellRef->_tableUid = v90;
    cellRef->_columnUid = v89;

    TSCEASTStreamIterator::~TSCEASTStreamIterator(v93, v91);
  }

  else
  {
    v31 = selfCopy;
  }

  return v31;
}

- (TSCEFormulaCreator)formulaCreatorForPredArg
{
  v7 = v5;
  type = self->_type;
  if (type > 5)
  {
    if (self->_type > 0xAu)
    {
      switch(type)
      {
        case 0xBu:

          return TSCEFormulaCreationMagic::nop(a2, v2, v3, v4, v7);
        case 0xCu:
          lower = self->_relativeCellRef.tableUID._lower;
          v33._lower = self->_relativeCellRef.tableUID._upper;
          v33._upper = self->_uidTractList;

          TSCEFormulaCreationMagic::uidRef(lower, v33, v7);
          break;
        case 0xDu:
          viewTractRef = self->_viewTractRef;

          TSCEFormulaCreationMagic::viewTractRef(viewTractRef, v7);
          break;
        default:
          return TSCEFormulaCreationMagic::nop(a2, v2, v3, v4, v7);
      }
    }

    else
    {
      if (type != 6)
      {
        if (type != 9)
        {
          if (type == 10)
          {
            categoryRef = self->_categoryRef;

            TSCEFormulaCreationMagic::categoryRef(categoryRef, v7);
            return v10;
          }

          return TSCEFormulaCreationMagic::nop(a2, v2, v3, v4, v7);
        }

        v26 = objc_msgSend_uidRectRef(self, a2, v2, v3, v4);
        v31 = v26;
        if (v26)
        {
          objc_msgSend_baseRangeRef(v26, v27, v28, v29, v30);
        }

        else
        {
          *&v106[0].row = 0u;
          v107 = 0u;
        }

        isValidOrSpanning = TSCERangeCoordinate::isValidOrSpanning(v106);

        if (!isValidOrSpanning)
        {
          v81 = self->_relativeCellRef.tableUID._lower;
          upper = self->_relativeCellRef.tableUID._upper;
          v113._upper = objc_msgSend_preserveFlags(self->_uidTractList, v42, v43, v44, v45);
          v113._lower = upper;
          TSCEFormulaCreationMagic::refErrorWithUUID(v81, v113, self->_uidTractList, v7);
          return v10;
        }

        hostCellCoord = self->_hostCellCoord;
        if (hostCellCoord == 0x7FFFFFFF || (hostCellCoord & 0xFFFF00000000) == 0x7FFF00000000)
        {
          v47 = MEMORY[0x277D81150];
          v48 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v42, "[TSTFormulaPredArg formulaCreatorForPredArg]", v44, v45);
          v52 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v49, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTFormulaPredArg.mm", v50, v51);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v47, v53, v48, v52, 1530, 0, "Need a host-cell for this");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v54, v55, v56, v57);
          hostCellCoord = self->_hostCellCoord;
        }

        objc_msgSend_cellRefForHostCoord_(self, v42, hostCellCoord, v44, v45);
        if (v106[0].row == 0x7FFFFFFF || (*v106 & 0xFFFF00000000) == 0x7FFF00000000)
        {
          return TSCEFormulaCreationMagic::nop(a2, v2, v3, v4, v7);
        }

        v58 = objc_msgSend_preserveColumn(self, a2, v2, v3, v4);
        if (objc_msgSend_preserveRow(self, v59, v60, v61, v62))
        {
          v64 = 2;
        }

        else
        {
          v64 = 0;
        }

        v105 = v64 | v58;
        v65 = v106[0];
        v66 = &v105;
        RelativeCellCoordinateFromAbsoluteCoordinates = TSCERelativeCellCoordinate::makeRelativeCellCoordinateFromAbsoluteCoordinates(*&self->_hostCellCoord, v65, v66, v63);
        v68 = v106[1];
        v69 = v107;
        v74 = objc_msgSend_preserveColumn(self, v70, v71, v72, v73);
        v79 = objc_msgSend_preserveRow(self, v75, v76, v77, v78);
        *&v108 = v68;
        *(&v108 + 1) = v69;
        v109 = RelativeCellCoordinateFromAbsoluteCoordinates;
        if (v79)
        {
          v80 = 2;
        }

        else
        {
          v80 = 0;
        }

        v103[0]._flags = v80 | v74;
        TSCERelativeCellCoordinate::setPreserveFlags(&v109, v103);
        *&v103[0]._flags = v108;
        v104 = v109;
        uidTractList = self->_uidTractList;
        v40 = v103;
LABEL_61:
        TSCEFormulaCreationMagic::cellRef(v40, uidTractList, v7);
        return v10;
      }

      v34 = objc_msgSend_BOOLValue(self, a2, v2, v3, v4);

      return TSCEFormulaCreationMagic::BOOLean(v34, v35, v36, v37, v38, v7);
    }

    return v10;
  }

  if (self->_type <= 2u)
  {
    if (type == 1)
    {
      objc_msgSend_numberValue(self, a2, v2, v3, v4);
      TSUDecimal::operator=();
      v112._decimal.w[0] = v106[1];
      return TSCEFormulaCreationMagic::number(*v106, v112, v20, v21, v7);
    }

    if (type != 2)
    {
      return TSCEFormulaCreationMagic::nop(a2, v2, v3, v4, v7);
    }

    v102 = objc_msgSend_date(self, a2, v2, v3, v4);
    TSCEFormulaCreationMagic::date(v102, 0, v7);
    goto LABEL_37;
  }

  if (type == 3)
  {
    v102 = objc_msgSend_string(self, a2, v2, v3, v4);
    TSCEFormulaCreationMagic::string(v102, v7);
LABEL_37:

    return v10;
  }

  if (type == 4)
  {
    objc_msgSend_crossTableRef(self, a2, v2, v3, v4);
    if (v107 == 0x7FFFFFFF && WORD2(v107) == 0x7FFF)
    {
      return TSCEFormulaCreationMagic::refError(v22, v23, v24, v25, v7);
    }

    v108 = *&v106[0].row;
    v109 = v107;
    uidTractList = self->_uidTractList;
    v40 = &v108;
    goto LABEL_61;
  }

  if (type != 5)
  {
    return TSCEFormulaCreationMagic::nop(a2, v2, v3, v4, v7);
  }

  v11 = objc_msgSend_durationUnits(self, a2, v2, v3, v4);
  if (v11)
  {
    v16 = 32;
    do
    {
      v17 = v16 & v11;
      if (v16 < 2)
      {
        break;
      }

      v16 >>= 1;
    }

    while (!v17);
    v18 = (2 * v17) | 1;
  }

  else
  {
    v18 = 1;
  }

  v83 = objc_msgSend_durationUnits(self, v12, v13, v14, v15);
  if (v83)
  {
    for (i = 1; i != 64; i *= 2)
    {
      v89 = i & v83;
      if ((i & v83) != 0)
      {
        break;
      }
    }

    v90 = (v89 & 0x3F) << 8;
  }

  else
  {
    v90 = 0;
  }

  objc_msgSend_durationValue(self, v84, v85, v86, v87);
  v92 = v91;
  v97 = objc_msgSend_durationUnits(self, v93, v94, v95, v96);
  v98 = sub_221387C78(v97);

  return TSCEFormulaCreationMagic::duration(v98, (v90 | v18), v99, v100, v101, v7, v92);
}

- (TSCEFormulaCreator)formulaCreatorForPredArg0UsingLinkedRef:(BOOL)ref useColumnRef:(BOOL)columnRef
{
  columnRefCopy = columnRef;
  refCopy = ref;
  v9 = v5;
  type = self->_type;
  if (type > 0xC || ((1 << type) & 0x1210) == 0)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTFormulaPredArg formulaCreatorForPredArg0UsingLinkedRef:useColumnRef:]", columnRef, v4);
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTFormulaPredArg.mm", v15, v16);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v18, v13, v17, 1566, 0, "Only references types are supported for predArg0, saw %d", self->_type);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21, v22);
    type = self->_type;
  }

  if (type != 12)
  {
    if (type == 9)
    {
      v27 = objc_msgSend_uidRectRef(self, a2, ref, columnRef, v4);
      v32 = v27;
      if (v27)
      {
        objc_msgSend_baseRangeRef(v27, v28, v29, v30, v31);
      }

      else
      {
        *&v82[0].row = 0u;
        v83 = 0u;
      }

      isValidOrSpanning = TSCERangeCoordinate::isValidOrSpanning(v82);

      if (!isValidOrSpanning)
      {
        lower = self->_relativeCellRef.tableUID._lower;
        upper = self->_relativeCellRef.tableUID._upper;
        v88._upper = objc_msgSend_preserveFlags(self->_uidTractList, v36, v37, v38, v39);
        v88._lower = upper;
        TSCEFormulaCreationMagic::refErrorWithUUID(lower, v88, self->_uidTractList, v9);
        return v26;
      }

      hostCellCoord = self->_hostCellCoord;
      if (hostCellCoord == 0x7FFFFFFF || (hostCellCoord & 0xFFFF00000000) == 0x7FFF00000000)
      {
        v41 = MEMORY[0x277D81150];
        v42 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v36, "[TSTFormulaPredArg formulaCreatorForPredArg0UsingLinkedRef:useColumnRef:]", v38, v39);
        v46 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v43, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTFormulaPredArg.mm", v44, v45);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v41, v47, v42, v46, 1593, 0, "Need a host-cell for this");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v48, v49, v50, v51);
        hostCellCoord = self->_hostCellCoord;
      }

      objc_msgSend_cellRefForHostCoord_(self, v36, hostCellCoord, v38, v39);
      if (v82[0].row != 0x7FFFFFFF && (*v82 & 0xFFFF00000000) != 0x7FFF00000000)
      {
        v52 = objc_msgSend_preserveColumn(self, a2, ref, columnRef, v4);
        if (objc_msgSend_preserveRow(self, v53, v54, v55, v56))
        {
          v58 = 2;
        }

        else
        {
          v58 = 0;
        }

        v81 = v58 | v52;
        v59 = v82[0];
        v60 = &v81;
        RelativeCellCoordinateFromAbsoluteCoordinates = TSCERelativeCellCoordinate::makeRelativeCellCoordinateFromAbsoluteCoordinates(*&self->_hostCellCoord, v59, v60, v57);
        v62 = v82[1];
        v63 = v83;
        v68 = objc_msgSend_preserveColumn(self, v64, v65, v66, v67);
        v73 = objc_msgSend_preserveRow(self, v69, v70, v71, v72);
        *&v84 = v62;
        *(&v84 + 1) = v63;
        v85[0] = RelativeCellCoordinateFromAbsoluteCoordinates;
        if (v73)
        {
          v74 = 2;
        }

        else
        {
          v74 = 0;
        }

        v79[0]._flags = v74 | v68;
        TSCERelativeCellCoordinate::setPreserveFlags(v85, v79);
        *&v79[0]._flags = v84;
        v80 = v85[0];
        uidTractList = self->_uidTractList;
        v76 = v79;
        goto LABEL_40;
      }
    }

    else if (type == 4)
    {
      objc_msgSend_crossTableRef(self, a2, ref, columnRef, v4);
      if (v83 == 0x7FFFFFFF && WORD2(v83) == 0x7FFF)
      {
        return TSCEFormulaCreationMagic::refError(v23._lower, v23._upper, v24, v25, v9);
      }

      if (refCopy)
      {
        v23._lower = v82[1];
        if (columnRefCopy)
        {
          return TSCEFormulaCreationMagic::linkedColumnRef(*v82, v23, v24, v25, v9);
        }

        else
        {
          return TSCEFormulaCreationMagic::linkedCellRef(*v82, v23, v24, v25, v9);
        }
      }

      if (columnRefCopy)
      {
        v84 = *&v82[0].row;
        v85[0] = ((DWORD1(v83) << 32) | 0x7FFFFFFF);
        v79[0]._flags = 0;
        TSCERelativeCellCoordinate::setPreserveFlags(v85, v79);
        *&v82[0].row = v84;
        *&v83 = v85[0];
      }

      v84 = *&v82[0].row;
      v85[0] = v83;
      uidTractList = self->_uidTractList;
      v76 = &v84;
LABEL_40:
      TSCEFormulaCreationMagic::cellRef(v76, uidTractList, v9);
      return v26;
    }

    return TSCEFormulaCreationMagic::nop(a2, ref, columnRef, v4, v9);
  }

  v33 = self->_relativeCellRef.tableUID._lower;
  v34._lower = self->_relativeCellRef.tableUID._upper;
  v34._upper = self->_uidTractList;

  TSCEFormulaCreationMagic::uidRef(v33, v34, v9);
  return v26;
}

- (id).cxx_construct
{
  *(self + 5) = 0;
  *(self + 6) = 0;
  *(self + 4) = 0x7FFF7FFFFFFFLL;
  *(self + 11) = 0;
  *(self + 12) = 0;
  *(self + 104) = *(self + 104) & 0xF0 | 3;
  *(self + 10) = 0x101000000000000;
  *(self + 114) = 0;
  return self;
}

@end