@interface TSTFormulaPredicate
+ (id)defaultPredicateForType:(unsigned __int8)type argumentCellRef:(TSCECellRef *)ref hostCell:(TSUCellCoord)cell;
+ (id)defaultPredicateForType:(unsigned __int8)type argumentCellReference:(id)reference hostCell:(TSUCellCoord)cell;
- (BOOL)evaluateAtCellID:(TSUCellCoord)d onOwnerUID:(const TSKUIDStruct *)iD calcEngine:(id)engine;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualForInspector:(id)inspector atHostCoordinate:(TSUCellCoord)coordinate;
- (BOOL)p_isEqualForNonFormulaItems:(id)items;
- (BOOL)p_testDataTypesForArg0:(unsigned __int8)arg0 arg1:(unsigned __int8)arg1 arg2:(unsigned __int8)arg2 predShouldReturn:(BOOL *)return;
- (TSCECrossTableReference)crossTableRefParam1;
- (TSCECrossTableReference)crossTableRefParam2;
- (TSCEFormulaCreator)p_creatorForPeriodBoundaryWithScale:(unsigned __int8)w2_0 direction:(unsigned __int8)w3_0 offset:(id)offset argIndex:(unsigned int)index earlierBound:(BOOL)bound isCalPers:(BOOL)pers;
- (TSCEUidCellRef)hostCellRef;
- (TSTFormulaPredArg)predArg1;
- (TSTFormulaPredArg)predArg2;
- (TSTFormulaPredicate)init;
- (TSTFormulaPredicate)initWithLiteralDateType:(unsigned __int8)type date1:(id)date1 date2:(id)date2 number1:(double)number1 number2:(double)number2 qualifier1:(unsigned __int8)qualifier1 qualifier2:(unsigned __int8)qualifier2 argumentCellRef:(TSCECellRef *)self0 hostCell:(TSUCellCoord)self1 forConditionalStyle:(BOOL)self2;
- (TSTFormulaPredicate)initWithLiteralDurationType:(unsigned __int8)type duration1:(double)duration1 durationUnits1:(unsigned __int8)units1 duration2:(double)duration2 durationUnits2:(unsigned __int8)units2 qualifier:(unsigned __int8)qualifier argumentCellRef:(TSCECellRef *)ref hostCell:(TSUCellCoord)self0;
- (TSTFormulaPredicate)initWithLiteralNumberType:(unsigned __int8)type number1:(double)number1 number2:(double)number2 qualifier:(unsigned __int8)qualifier argumentCellRef:(TSCECellRef *)ref hostCell:(TSUCellCoord)cell;
- (TSTFormulaPredicate)initWithLiteralTextType:(unsigned __int8)type string:(id)string argumentCellRef:(TSCECellRef *)ref hostCell:(TSUCellCoord)cell;
- (TSTFormulaPredicate)initWithPredicateType:(unsigned __int8)type arg0:(id)arg0 arg1:(id)arg1 arg2:(id)arg2 qualifier1:(unsigned __int8)qualifier1 qualifier2:(unsigned __int8)qualifier2 forConditionalStyle:(BOOL)style;
- (TSTFormulaPredicate)initWithPredicateType:(unsigned __int8)type arg1:(id)arg1 arg2:(id)arg2 qualifier1:(unsigned __int8)qualifier1 qualifier2:(unsigned __int8)qualifier2 argumentCellRef:(TSCECellRef *)ref hostCell:(TSUCellCoord)cell forConditionalStyle:(BOOL)self0;
- (TSTFormulaPredicate)initWithPredicateType:(unsigned __int8)type arg1:(id)arg1 arg2:(id)arg2 qualifier1:(unsigned __int8)qualifier1 qualifier2:(unsigned __int8)qualifier2 argumentCellReference:(id)reference hostCell:(TSUCellCoord)cell forConditionalStyle:(BOOL)self0;
- (id).cxx_construct;
- (id)copyByClearingUids:(id)uids containingTableUID:(const TSKUIDStruct *)d;
- (id)copyByConvertingBaseToChrome:(id)chrome inOwner:(id)owner inCellCoordinate:(TSUCellCoord)coordinate;
- (id)copyByConvertingChromeToBase:(id)base inOwner:(id)owner inCellCoordinate:(TSUCellCoord)coordinate;
- (id)copyByOffsettingRelativeReferencesWithOffset:(TSUColumnRowOffset)offset;
- (id)copyByRemappingHostCellAgnosticOwnerUIDsWithMap:(const void *)map rewriteContext:(TSCEFormulaRewriteContext *)context error:(BOOL *)error;
- (id)copyByRemappingOwnerUIDsWithMap:(const void *)map rewriteContext:(TSCEFormulaRewriteContext *)context error:(BOOL *)error;
- (id)copyByRewritingWithContext:(TSCEFormulaRewriteContext *)context rewriteBlock:(id)block;
- (id)copyByRewritingWithSpec:(id)spec inOwner:(id)owner inCellCoordinate:(TSUCellCoord)coordinate;
- (id)copyByUpdatingLinkedTable:(const TSKUIDStruct *)table hostCell:(TSUCellCoord)cell;
- (id)copyByUpgradingToLinkedRefForTable:(const TSKUIDStruct *)table hostCell:(TSUCellCoord)cell;
- (id)copyToGeometricFormForHiddenRowsWithTableInfo:(id)info containsBadRef:(BOOL *)ref;
- (id)copyToUidFormForConditionalStylesWithTableInfo:(id)info containingCell:(TSUCellCoord)cell preserveHostCell:(BOOL)hostCell;
- (id)copyToUidFormForHiddenRowsWithTableInfo:(id)info;
- (id)copyWithZone:(_NSZone *)zone;
- (id)downgradeForPrePivotFormatForLocale:(id)locale;
- (id)durationParam1;
- (id)durationParam2;
- (id)initFromArchive:(const void *)archive;
- (id)initFromPrePivotArchive:(const void *)archive;
- (id)predicateArg1atBaseHostCoord:(TSUModelCellCoord)coord calcEngine:(id)engine;
- (id)predicateArg2atBaseHostCoord:(TSUModelCellCoord)coord calcEngine:(id)engine;
- (unint64_t)hash;
- (unsigned)expectedArgTypeForPredicateType:(unsigned __int8)type firstArg:(BOOL)arg;
- (unsigned)p_argTypeForPredArg:(id)arg argNum:(unint64_t)num calculationEngine:(id)engine hostCell:(TSUCellCoord)cell;
- (unsigned)predArg0Type;
- (unsigned)predArg1Type;
- (unsigned)predArg2Type;
- (void)encodeToArchive:(void *)archive archiver:(id)archiver;
- (void)encodeToPrePivotArchive:(void *)archive archiver:(id)archiver encodingForSOS:(BOOL)s;
- (void)getPrecedents:(void *)precedents calcEngine:(id)engine hostOwnerUID:(const TSKUIDStruct *)d hostCellID:(const TSUCellCoord *)iD;
- (void)p_populateMembersFromFormula;
- (void)recreateFormula;
- (void)remapOwnerUIDsWithMap:(const void *)map rewriteContext:(TSCEFormulaRewriteContext *)context error:(BOOL *)error;
- (void)rewriteFormulaWithBlock:(id)block;
- (void)rewriteNumberToDurationForSageImport:(const TSCECellRef *)import durationUnitLargest:(unsigned __int8)largest;
- (void)setArgumentAt:(int64_t)at withPredArg:(id)arg;
- (void)setFormula:(id)formula;
- (void)setHostCell:(const TSKUIDStruct *)cell hostColumnUID:(const TSKUIDStruct *)d hostRowUID:(const TSKUIDStruct *)iD;
- (void)setHostCellRef:(TSCEUidCellRef *)ref;
- (void)upgradeTopAndBottom;
@end

@implementation TSTFormulaPredicate

- (TSTFormulaPredicate)init
{
  v3.receiver = self;
  v3.super_class = TSTFormulaPredicate;
  result = [(TSTFormulaPredicate *)&v3 init];
  if (result)
  {
    *&result->_predicateType = 0;
    result->_qualifier2 = 0;
    *&result->_argIndex0 = -1;
    result->_argIndex2 = -1;
  }

  return result;
}

- (TSTFormulaPredArg)predArg1
{
  predArg1 = self->_predArg1;
  if (!predArg1)
  {
    v7 = objc_msgSend_defaultPredicateArg(TSTFormulaPredArg, a2, v2, v3, v4);
    v8 = self->_predArg1;
    self->_predArg1 = v7;

    predArg1 = self->_predArg1;
  }

  return predArg1;
}

- (TSTFormulaPredArg)predArg2
{
  predArg2 = self->_predArg2;
  if (!predArg2)
  {
    v7 = objc_msgSend_defaultPredicateArg(TSTFormulaPredArg, a2, v2, v3, v4);
    v8 = self->_predArg2;
    self->_predArg2 = v7;

    predArg2 = self->_predArg2;
  }

  return predArg2;
}

- (unint64_t)hash
{
  v6 = objc_msgSend_hash(self->_predArg0, a2, v2, v3, v4);
  v11 = v6 | (4 * objc_msgSend_hash(self->_predArg1, v7, v8, v9, v10));
  v16 = v11 | (16 * objc_msgSend_hash(self->_predArg2, v12, v13, v14, v15)) | (self->_qualifier1 << 6) | (self->_qualifier2 << 10) | (self->_predicateType << 14);
  return v16 ^ objc_msgSend_hash(self->_formula, v17, v18, v19, v20);
}

- (BOOL)p_isEqualForNonFormulaItems:(id)items
{
  itemsCopy = items;
  v8 = itemsCopy;
  v15 = 0;
  if (itemsCopy)
  {
    if (self->_predicateType == itemsCopy[16] && self->_qualifier1 == itemsCopy[17] && self->_qualifier2 == itemsCopy[18] && self->_forConditionalStyle == itemsCopy[56])
    {
      predArg0 = self->_predArg0;
      v10 = *(v8 + 4);
      if (predArg0 == v10 || objc_msgSend_isEqual_(predArg0, v5, v10, v6, v7))
      {
        predArg1 = self->_predArg1;
        v12 = *(v8 + 5);
        if (predArg1 == v12 || objc_msgSend_isEqual_(predArg1, v5, v12, v6, v7))
        {
          predArg2 = self->_predArg2;
          v14 = *(v8 + 6);
          if (predArg2 == v14 || (objc_msgSend_isEqual_(predArg2, v5, v14, v6, v7) & 1) != 0)
          {
            v15 = 1;
          }
        }
      }
    }
  }

  return v15;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy && (objc_opt_class(), v5 = TSUDynamicCast(), (objc_msgSend_p_isEqualForNonFormulaItems_(self, v6, v5, v7, v8) & 1) != 0))
  {
    v13 = objc_msgSend_const_astNodeArray(self->_formula, v9, v10, v11, v12);
    v18 = objc_msgSend_const_astNodeArray(v5[1], v14, v15, v16, v17);
    v19 = sub_2215C5CA0(v13, v18);
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (BOOL)isEqualForInspector:(id)inspector atHostCoordinate:(TSUCellCoord)coordinate
{
  inspectorCopy = inspector;
  if (objc_msgSend_p_isEqualForNonFormulaItems_(self, v7, inspectorCopy, v8, v9))
  {
    v14 = objc_msgSend_const_astNodeArray(self->_formula, v10, v11, v12, v13);
    v19 = objc_msgSend_const_astNodeArray(inspectorCopy[1], v15, v16, v17, v18);
    if (sub_2215C5CF4(v14, v19, 3, 0, 0))
    {
      isEqual_atHostCoord = 1;
    }

    else
    {
      v23 = objc_msgSend_predicateArg1atBaseHostCoord_calcEngine_(self, v20, *&coordinate, 0, v21);
      v26 = objc_msgSend_predicateArg1atBaseHostCoord_calcEngine_(inspectorCopy, v24, *&coordinate, 0, v25);
      if (objc_msgSend_isEqual_atHostCoord_(v23, v27, v26, *&coordinate, v28))
      {
        v31 = objc_msgSend_predicateArg2atBaseHostCoord_calcEngine_(self, v29, *&coordinate, 0, v30);
        v34 = objc_msgSend_predicateArg2atBaseHostCoord_calcEngine_(inspectorCopy, v32, *&coordinate, 0, v33);
        isEqual_atHostCoord = objc_msgSend_isEqual_atHostCoord_(v31, v35, v34, *&coordinate, v36);
      }

      else
      {
        isEqual_atHostCoord = 0;
      }
    }
  }

  else
  {
    isEqual_atHostCoord = 0;
  }

  return isEqual_atHostCoord;
}

- (TSTFormulaPredicate)initWithPredicateType:(unsigned __int8)type arg0:(id)arg0 arg1:(id)arg1 arg2:(id)arg2 qualifier1:(unsigned __int8)qualifier1 qualifier2:(unsigned __int8)qualifier2 forConditionalStyle:(BOOL)style
{
  arg0Copy = arg0;
  arg1Copy = arg1;
  arg2Copy = arg2;
  v22 = objc_msgSend_init(self, v18, v19, v20, v21);
  v23 = v22;
  if (v22)
  {
    objc_storeStrong((v22 + 32), arg0);
    objc_storeStrong(&v23->_predArg1, arg1);
    objc_storeStrong(&v23->_predArg2, arg2);
    v23->_predicateType = type;
    v23->_qualifier1 = qualifier1;
    v23->_qualifier2 = qualifier2;
    v23->_forConditionalStyle = style;
    objc_msgSend_recreateFormula(v23, v24, v25, v26, v27);
  }

  return v23;
}

- (TSTFormulaPredicate)initWithPredicateType:(unsigned __int8)type arg1:(id)arg1 arg2:(id)arg2 qualifier1:(unsigned __int8)qualifier1 qualifier2:(unsigned __int8)qualifier2 argumentCellRef:(TSCECellRef *)ref hostCell:(TSUCellCoord)cell forConditionalStyle:(BOOL)self0
{
  arg1Copy = arg1;
  arg2Copy = arg2;
  v20 = objc_msgSend_init(self, v16, v17, v18, v19);
  v21 = v20;
  v22 = v20;
  if (v20)
  {
    objc_storeStrong((v20 + 40), arg1);
    objc_storeStrong((v21 + 48), arg2);
    if (style && (*&ref->coordinate != cell.row || ((*&ref->coordinate ^ *&cell) & 0x101FFFF00000000) != 0))
    {
      v26 = MEMORY[0x277D81150];
      v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "[TSTFormulaPredicate initWithPredicateType:arg1:arg2:qualifier1:qualifier2:argumentCellRef:hostCell:forConditionalStyle:]", v24, v25);
      v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTFormulaPredicate.mm", v29, v30);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v26, v32, v27, v31, 234, 0, "Conditional styles are not allowed to use anything other than an arg0 of (+0,+0) relative coordinate");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v33, v34, v35, v36);
    }

    v22->_predicateType = type;
    v22->_qualifier1 = qualifier1;
    v22->_qualifier2 = qualifier2;
    v22->_forConditionalStyle = style;
    objc_msgSend_setHostCellCoord_(v22->_predArg1, v23, *&cell, v24, v25);
    objc_msgSend_setHostCellCoord_(*(v21 + 48), v37, *&cell, v38, v39);
    coordinate = ref->coordinate;
    LOBYTE(tableUID._lower) = 0;
    v41 = &tableUID;
    RelativeCellCoordinateFromAbsoluteCoordinates = TSCERelativeCellCoordinate::makeRelativeCellCoordinateFromAbsoluteCoordinates(*&cell, coordinate, v41, v42);
    tableUID = ref->_tableUID;
    v74 = RelativeCellCoordinateFromAbsoluteCoordinates;
    v71[0]._flags = 0;
    TSCERelativeCellCoordinate::setPreserveFlags(&v74, v71);
    if (v22->_forConditionalStyle)
    {
      v70._flags = 0;
      *&v71[0]._flags = ref->_tableUID;
      v72 = 0;
      TSCERelativeCellCoordinate::setPreserveFlags(&v72, &v70);
      if (objc_msgSend_useColumnRefForArg0(v22, v48, v49, v50, v51))
      {
        v72 = 0x7FFFFFFFLL;
      }

      v52 = [TSTFormulaPredArg alloc];
      v56 = objc_msgSend_initWithCrossTableRef_(v52, v53, v71, v54, v55);
    }

    else
    {
      *&v71[0]._flags = tableUID;
      v72 = v74;
      if (objc_msgSend_useColumnRefForArg0(v22, v44, v45, v46, v47))
      {
        LODWORD(v72) = 0x7FFFFFFF;
      }

      v57 = [TSTFormulaPredArg alloc];
      v56 = objc_msgSend_initWithCrossTableRef_(v57, v58, v71, v59, v60);
    }

    predArg0 = v22->_predArg0;
    v22->_predArg0 = v56;

    objc_msgSend_recreateFormula(v22, v62, v63, v64, v65);
  }

  return v22;
}

- (TSTFormulaPredicate)initWithPredicateType:(unsigned __int8)type arg1:(id)arg1 arg2:(id)arg2 qualifier1:(unsigned __int8)qualifier1 qualifier2:(unsigned __int8)qualifier2 argumentCellReference:(id)reference hostCell:(TSUCellCoord)cell forConditionalStyle:(BOOL)self0
{
  qualifier2Copy = qualifier2;
  qualifier1Copy = qualifier1;
  typeCopy = type;
  arg1Copy = arg1;
  arg2Copy = arg2;
  referenceCopy = reference;
  v23 = referenceCopy;
  if (referenceCopy)
  {
    objc_msgSend_cellRef(referenceCopy, v19, v20, v21, v22);
  }

  else
  {
    memset(v26, 0, sizeof(v26));
  }

  v24 = objc_msgSend_initWithPredicateType_arg1_arg2_qualifier1_qualifier2_argumentCellRef_hostCell_forConditionalStyle_(self, v19, typeCopy, arg1Copy, arg2Copy, qualifier1Copy, qualifier2Copy, v26, cell, style);

  return v24;
}

+ (id)defaultPredicateForType:(unsigned __int8)type argumentCellRef:(TSCECellRef *)ref hostCell:(TSUCellCoord)cell
{
  v5 = 0;
  if (type <= 0x3Cu)
  {
    typeCopy = type;
    if (((1 << type) & 0x1F9CC00C000F9800) != 0)
    {
      v9 = [TSTFormulaPredicate alloc];
      v14 = objc_msgSend_defaultPredicateArg(TSTFormulaPredArg, v10, v11, v12, v13);
      v19 = objc_msgSend_defaultPredicateArg(TSTFormulaPredArg, v15, v16, v17, v18);
      v24 = *&ref->coordinate.row;
      upper = ref->_tableUID._upper;
      v5 = objc_msgSend_initWithPredicateType_arg1_arg2_qualifier1_qualifier2_argumentCellRef_hostCell_(v9, v20, typeCopy, v14, v19, 0, 0, &v24, cell);
    }

    else if (type == 33)
    {
      v22 = [TSTFormulaPredicate alloc];
      v24 = *&ref->coordinate.row;
      upper = ref->_tableUID._upper;
      v5 = objc_msgSend_initWithPredicateType_arg1_arg2_qualifier1_qualifier2_argumentCellRef_hostCell_(v22, v23, 33, 0, 0, 3, 0, &v24, cell);
    }
  }

  return v5;
}

+ (id)defaultPredicateForType:(unsigned __int8)type argumentCellReference:(id)reference hostCell:(TSUCellCoord)cell
{
  typeCopy = type;
  referenceCopy = reference;
  v13 = referenceCopy;
  if (referenceCopy)
  {
    objc_msgSend_cellRef(referenceCopy, v9, v10, v11, v12);
  }

  else
  {
    memset(v16, 0, sizeof(v16));
  }

  v14 = objc_msgSend_defaultPredicateForType_argumentCellRef_hostCell_(self, v9, typeCopy, v16, *&cell);

  return v14;
}

- (TSCEFormulaCreator)p_creatorForPeriodBoundaryWithScale:(unsigned __int8)w2_0 direction:(unsigned __int8)w3_0 offset:(id)offset argIndex:(unsigned int)index earlierBound:(BOOL)bound isCalPers:(BOOL)pers
{
  persCopy = pers;
  boundCopy = bound;
  v11 = *&index;
  v12 = w2_0;
  v13 = v8;
  offsetCopy = offset;
  if (v12 <= 3)
  {
    if (v12 == 2)
    {
      if (boundCopy)
      {
        TSCEFormulaCreationMagic::TODAY(v14, v15, v16, v17, &v345);
        TSUDecimal::operator=();
        v382._decimal.w[0] = v341;
        TSCEFormulaCreationMagic::number(v340, v382, v47, v48, &v342);
        if (offsetCopy)
        {
          objc_msgSend_formulaCreatorForPredArg(offsetCopy, v49, v50.var0, v51, v52);
        }

        else
        {
          v338 = 0;
        }

        TSCEFormulaCreationMagic::arg(v11, v50, &v338, &v339);
        v147.var0 = &v339;
        TSCEFormulaCreationMagic::DURATION(&v342, v147, v363, &v343);
        TSUDecimal::operator=();
        v386._decimal.w[0] = v341;
        TSCEFormulaCreationMagic::number(v340, v386, v148, v149, &v337);
        TSCEFormulaCreationMagic::operator*(&v343, &v337, &v344);
        TSCEFormulaCreationMagic::operator+(&v345, &v344, v13);

        v28 = &v345;
        v29 = &v342;
        var0 = v338;
      }

      else
      {
        TSCEFormulaCreationMagic::TODAY(v14, v15, v16, v17, &v335);
        TSUDecimal::operator=();
        v383._decimal.w[0] = v341;
        TSCEFormulaCreationMagic::number(v340, v383, v90, v91, &v332);
        if (offsetCopy)
        {
          objc_msgSend_formulaCreatorForPredArg(offsetCopy, v92, v93.var0, v94, v95);
        }

        else
        {
          v330 = 0;
        }

        TSCEFormulaCreationMagic::arg(v11, v93, &v330, &v331);
        v150.var0 = &v331;
        TSCEFormulaCreationMagic::DURATION(&v332, v150, v364, &v333);
        TSUDecimal::operator=();
        v387._decimal.w[0] = v341;
        TSCEFormulaCreationMagic::number(v340, v387, v151, v152, &v329);
        TSCEFormulaCreationMagic::operator*(&v333, &v329, &v334);
        TSCEFormulaCreationMagic::operator+(&v335, &v334, &v336);
        TSCEFormulaCreationMagic::duration(3, v153, v154, v155, v156, &v328, 86400.0);
        TSCEFormulaCreationMagic::operator+(&v336, &v328, v13);

        v28 = &v335;
        v29 = &v332;
        var0 = v330;
      }

      goto LABEL_69;
    }

    if (v12 == 3)
    {
      if (persCopy)
      {
        if (boundCopy)
        {
          TSCEFormulaCreationMagic::TODAY(v14, v15, v16, v17, &v327);
          TSCEFormulaCreationMagic::TODAY(v31, v32, v33, v34, &v324);
          TSCEFormulaCreationMagic::WEEKDAY(&v324, v350, &v325);
          TSUDecimal::operator=();
          v380._decimal.w[0] = v341;
          TSCEFormulaCreationMagic::number(v340, v380, v35, v36, &v323);
          TSCEFormulaCreationMagic::operator-(&v325, &v323, &v326);
          TSCEFormulaCreationMagic::operator-(&v327, &v326, v13);

          v28 = &v327;
          v29 = &v324;
          var0 = v325;
        }

        else
        {
          TSCEFormulaCreationMagic::TODAY(v14, v15, v16, v17, &v321);
          TSCEFormulaCreationMagic::TODAY(v135, v136, v137, v138, &v318);
          TSCEFormulaCreationMagic::WEEKDAY(&v318, v360, &v319);
          TSCEFormulaCreator::TSCEFormulaCreator(&v317, 1);
          TSCEFormulaCreationMagic::operator-(&v319, &v317, &v320);
          TSCEFormulaCreationMagic::operator-(&v321, &v320, &v322);
          TSCEFormulaCreationMagic::duration(3, v139, v140, v141, v142, &v316, 604800.0);
          TSCEFormulaCreationMagic::operator+(&v322, &v316, v13);

          v28 = &v321;
          v29 = &v318;
          var0 = v319;
        }
      }

      else if (boundCopy)
      {
        TSCEFormulaCreationMagic::TODAY(v14, v15, v16, v17, &v315);
        if (offsetCopy)
        {
          objc_msgSend_formulaCreatorForPredArg(offsetCopy, v100, v101.var0, v102, v103);
        }

        else
        {
          v311 = 0;
        }

        TSCEFormulaCreationMagic::arg(v11, v101, &v311, &v312);
        TSUDecimal::operator=();
        v394._decimal.w[0] = v341;
        TSCEFormulaCreationMagic::number(v340, v394, v187, v188, &v310);
        v189.var0 = &v310;
        TSCEFormulaCreationMagic::DURATION(&v312, v189, v371, &v313);
        TSUDecimal::operator=();
        v395._decimal.w[0] = v341;
        TSCEFormulaCreationMagic::number(v340, v395, v190, v191, &v309);
        TSCEFormulaCreationMagic::operator*(&v313, &v309, &v314);
        TSCEFormulaCreationMagic::operator+(&v315, &v314, v13);

        v28 = &v315;
        v29 = &v311;
        var0 = v312;
      }

      else
      {
        TSCEFormulaCreationMagic::TODAY(v14, v15, v16, v17, &v307);
        if (offsetCopy)
        {
          objc_msgSend_formulaCreatorForPredArg(offsetCopy, v143, v144.var0, v145, v146);
        }

        else
        {
          v303 = 0;
        }

        TSCEFormulaCreationMagic::arg(v11, v144, &v303, &v304);
        TSUDecimal::operator=();
        v396._decimal.w[0] = v341;
        TSCEFormulaCreationMagic::number(v340, v396, v192, v193, &v302);
        v194.var0 = &v302;
        TSCEFormulaCreationMagic::DURATION(&v304, v194, v372, &v305);
        TSUDecimal::operator=();
        v397._decimal.w[0] = v341;
        TSCEFormulaCreationMagic::number(v340, v397, v195, v196, &v301);
        TSCEFormulaCreationMagic::operator*(&v305, &v301, &v306);
        TSCEFormulaCreationMagic::operator+(&v307, &v306, &v308);
        TSCEFormulaCreationMagic::duration(3, v197, v198, v199, v200, &v300, 86400.0);
        TSCEFormulaCreationMagic::operator+(&v308, &v300, v13);

        v28 = &v307;
        v29 = &v303;
        var0 = v304;
      }

      goto LABEL_69;
    }
  }

  else
  {
    switch(v12)
    {
      case 4:
        if (persCopy)
        {
          if (boundCopy)
          {
            TSCEFormulaCreationMagic::TODAY(v14, v15, v16, v17, &v298);
            TSCEFormulaCreationMagic::YEAR(&v298, v351, &v299);
            TSCEFormulaCreationMagic::TODAY(v37, v38, v39, v40, &v296);
            TSCEFormulaCreationMagic::MONTH(&v296, v352, &v297);
            TSUDecimal::operator=();
            v381._decimal.w[0] = v341;
            TSCEFormulaCreationMagic::number(v340, v381, v41, v42, &v295);
            v43.var0 = &v297;
            v44.var0 = &v295;
            TSCEFormulaCreationMagic::DATE(&v299, v43, v44, v374, v13);

            v28 = &v298;
            v29 = &v299;
            var0 = v296;
          }

          else
          {
            TSCEFormulaCreationMagic::TODAY(v14, v15, v16, v17, &v293);
            TSCEFormulaCreationMagic::YEAR(&v293, v354, &v294);
            TSCEFormulaCreationMagic::TODAY(v104, v105, v106, v107, &v290);
            TSCEFormulaCreationMagic::MONTH(&v290, v355, &v291);
            TSCEFormulaCreator::TSCEFormulaCreator(&v289, 1);
            TSCEFormulaCreationMagic::operator+(&v291, &v289, &v292);
            TSUDecimal::operator=();
            v384._decimal.w[0] = v341;
            TSCEFormulaCreationMagic::number(v340, v384, v108, v109, &v288);
            v110.var0 = &v292;
            v111.var0 = &v288;
            TSCEFormulaCreationMagic::DATE(&v294, v110, v111, v376, v13);

            v28 = &v293;
            v29 = &v294;
            var0 = v290;
          }
        }

        else if (boundCopy)
        {
          TSCEFormulaCreationMagic::TODAY(v14, v15, v16, v17, &v287);
          if (offsetCopy)
          {
            objc_msgSend_formulaCreatorForPredArg(offsetCopy, v82, v83.var0, v84, v85);
          }

          else
          {
            v284 = 0;
          }

          TSCEFormulaCreationMagic::arg(v11, v83, &v284, &v285);
          TSUDecimal::operator=();
          v388._decimal.w[0] = v341;
          TSCEFormulaCreationMagic::number(v340, v388, v157, v158, &v283);
          TSCEFormulaCreationMagic::operator*(&v285, &v283, &v286);
          v159.var0 = &v286;
          TSCEFormulaCreationMagic::EDATE(&v287, v159, v365, v13);

          v28 = &v287;
          v29 = &v284;
          var0 = v285;
        }

        else
        {
          TSCEFormulaCreationMagic::TODAY(v14, v15, v16, v17, &v281);
          if (offsetCopy)
          {
            objc_msgSend_formulaCreatorForPredArg(offsetCopy, v112, v113.var0, v114, v115);
          }

          else
          {
            v278 = 0;
          }

          TSCEFormulaCreationMagic::arg(v11, v113, &v278, &v279);
          TSUDecimal::operator=();
          v389._decimal.w[0] = v341;
          TSCEFormulaCreationMagic::number(v340, v389, v160, v161, &v277);
          TSCEFormulaCreationMagic::operator*(&v279, &v277, &v280);
          v162.var0 = &v280;
          TSCEFormulaCreationMagic::EDATE(&v281, v162, v366, &v282);
          TSCEFormulaCreationMagic::duration(3, v163, v164, v165, v166, &v276, 86400.0);
          TSCEFormulaCreationMagic::operator+(&v282, &v276, v13);

          v28 = &v281;
          v29 = &v278;
          var0 = v279;
        }

        goto LABEL_69;
      case 5:
        if (persCopy)
        {
          if (boundCopy)
          {
            TSCEFormulaCreationMagic::TODAY(v14, v15, v16, v17, &v226);
            TSCEFormulaCreationMagic::YEAR(&v226, v353, &v227);
            TSCEFormulaCreator::TSCEFormulaCreator(&v225, 1);
            TSCEFormulaCreator::TSCEFormulaCreator(&v224, 1);
            v45.var0 = &v225;
            v46.var0 = &v224;
            TSCEFormulaCreationMagic::DATE(&v227, v45, v46, v375, v13);

            v28 = &v226;
            v29 = &v227;
            var0 = v225.var0;
          }

          else
          {
            TSCEFormulaCreationMagic::TODAY(v14, v15, v16, v17, &v221);
            TSCEFormulaCreationMagic::YEAR(&v221, v356, &v222);
            TSCEFormulaCreator::TSCEFormulaCreator(&v220, 1);
            TSCEFormulaCreationMagic::operator+(&v222, &v220, &v223);
            TSCEFormulaCreator::TSCEFormulaCreator(&v219, 1);
            TSCEFormulaCreator::TSCEFormulaCreator(&v218, 1);
            v116.var0 = &v219;
            v117.var0 = &v218;
            TSCEFormulaCreationMagic::DATE(&v223, v116, v117, v377, v13);

            v28 = &v221;
            v29 = &v222;
            var0 = v220.var0;
          }
        }

        else if (boundCopy)
        {
          TSCEFormulaCreationMagic::TODAY(v14, v15, v16, v17, &v217);
          if (offsetCopy)
          {
            objc_msgSend_formulaCreatorForPredArg(offsetCopy, v86, v87.var0, v88, v89);
          }

          else
          {
            v213 = 0;
          }

          TSCEFormulaCreationMagic::arg(v11, v87, &v213, &v214);
          TSCEFormulaCreator::TSCEFormulaCreator(&v212, 12);
          TSCEFormulaCreationMagic::operator*(&v214, &v212, &v215);
          TSUDecimal::operator=();
          v390._decimal.w[0] = v341;
          TSCEFormulaCreationMagic::number(v340, v390, v167, v168, &v211);
          TSCEFormulaCreationMagic::operator*(&v215, &v211, &v216);
          v169.var0 = &v216;
          TSCEFormulaCreationMagic::EDATE(&v217, v169, v367, v13);

          v28 = &v217;
          v29 = &v213;
          var0 = v214;
        }

        else
        {
          TSCEFormulaCreationMagic::TODAY(v14, v15, v16, v17, &v209);
          if (offsetCopy)
          {
            objc_msgSend_formulaCreatorForPredArg(offsetCopy, v118, v119.var0, v120, v121);
          }

          else
          {
            v205 = 0;
          }

          TSCEFormulaCreationMagic::arg(v11, v119, &v205, &v206);
          TSCEFormulaCreator::TSCEFormulaCreator(&v204, 12);
          TSCEFormulaCreationMagic::operator*(&v206, &v204, &v207);
          TSUDecimal::operator=();
          v391._decimal.w[0] = v341;
          TSCEFormulaCreationMagic::number(v340, v391, v170, v171, &v203);
          TSCEFormulaCreationMagic::operator*(&v207, &v203, &v208);
          v172.var0 = &v208;
          TSCEFormulaCreationMagic::EDATE(&v209, v172, v368, &v210);
          TSCEFormulaCreationMagic::duration(3, v173, v174, v175, v176, &v202, 86400.0);
          TSCEFormulaCreationMagic::operator+(&v210, &v202, v13);

          v28 = &v209;
          v29 = &v205;
          var0 = v206;
        }

        goto LABEL_69;
      case 8:
        if (persCopy)
        {
          if (boundCopy)
          {
            TSCEFormulaCreationMagic::TODAY(v14, v15, v16, v17, &v274);
            TSCEFormulaCreationMagic::YEAR(&v274, v347, &v275);
            TSCEFormulaCreationMagic::TODAY(v19, v20, v21, v22, &v266);
            TSCEFormulaCreationMagic::MONTH(&v266, v348, &v267);
            TSCEFormulaCreator::TSCEFormulaCreator(&v265, 3);
            TSCEFormulaCreationMagic::operator/(&v267, &v265, &v268);
            TSCEFormulaCreator::TSCEFormulaCreator(&v264, 1);
            v23.var0 = &v264;
            TSCEFormulaCreationMagic::CEILING(&v268, v23, v361, &v269);
            TSCEFormulaCreator::TSCEFormulaCreator(&v263, 1);
            TSCEFormulaCreationMagic::operator-(&v269, &v263, &v270);
            TSCEFormulaCreationMagic::parens(&v270, v349, &v271);
            TSCEFormulaCreator::TSCEFormulaCreator(&v262, 3);
            TSCEFormulaCreationMagic::operator*(&v271, &v262, &v272);
            TSCEFormulaCreator::TSCEFormulaCreator(&v261, 1);
            TSCEFormulaCreationMagic::operator+(&v272, &v261, &v273);
            TSUDecimal::operator=();
            v379._decimal.w[0] = v341;
            TSCEFormulaCreationMagic::number(v340, v379, v24, v25, &v260);
            v26.var0 = &v273;
            v27.var0 = &v260;
            TSCEFormulaCreationMagic::DATE(&v275, v26, v27, v373, v13);

            v28 = &v274;
            v29 = &v275;
            var0 = v266;
          }

          else
          {
            TSCEFormulaCreationMagic::TODAY(v14, v15, v16, v17, &v258);
            TSCEFormulaCreationMagic::YEAR(&v258, v357, &v259);
            TSCEFormulaCreationMagic::TODAY(v122, v123, v124, v125, &v250);
            TSCEFormulaCreationMagic::MONTH(&v250, v358, &v251);
            TSCEFormulaCreator::TSCEFormulaCreator(&v249, 3);
            TSCEFormulaCreationMagic::operator/(&v251, &v249, &v252);
            TSCEFormulaCreator::TSCEFormulaCreator(&v248, 1);
            v126.var0 = &v248;
            TSCEFormulaCreationMagic::CEILING(&v252, v126, v362, &v253);
            TSCEFormulaCreator::TSCEFormulaCreator(&v247, 1);
            TSCEFormulaCreationMagic::operator-(&v253, &v247, &v254);
            TSCEFormulaCreationMagic::parens(&v254, v359, &v255);
            TSCEFormulaCreator::TSCEFormulaCreator(&v246, 3);
            TSCEFormulaCreationMagic::operator*(&v255, &v246, &v256);
            TSCEFormulaCreator::TSCEFormulaCreator(&v245, 4);
            TSCEFormulaCreationMagic::operator+(&v256, &v245, &v257);
            TSUDecimal::operator=();
            v385._decimal.w[0] = v341;
            TSCEFormulaCreationMagic::number(v340, v385, v127, v128, &v244);
            v129.var0 = &v257;
            v130.var0 = &v244;
            TSCEFormulaCreationMagic::DATE(&v259, v129, v130, v378, v13);

            v28 = &v258;
            v29 = &v259;
            var0 = v250;
          }
        }

        else if (boundCopy)
        {
          TSCEFormulaCreationMagic::TODAY(v14, v15, v16, v17, &v243);
          if (offsetCopy)
          {
            objc_msgSend_formulaCreatorForPredArg(offsetCopy, v96, v97.var0, v98, v99);
          }

          else
          {
            v239 = 0;
          }

          TSCEFormulaCreationMagic::arg(v11, v97, &v239, &v240);
          TSCEFormulaCreator::TSCEFormulaCreator(&v238, 3);
          TSCEFormulaCreationMagic::operator*(&v240, &v238, &v241);
          TSUDecimal::operator=();
          v392._decimal.w[0] = v341;
          TSCEFormulaCreationMagic::number(v340, v392, v177, v178, &v237);
          TSCEFormulaCreationMagic::operator*(&v241, &v237, &v242);
          v179.var0 = &v242;
          TSCEFormulaCreationMagic::EDATE(&v243, v179, v369, v13);

          v28 = &v243;
          v29 = &v239;
          var0 = v240;
        }

        else
        {
          TSCEFormulaCreationMagic::TODAY(v14, v15, v16, v17, &v235);
          if (offsetCopy)
          {
            objc_msgSend_formulaCreatorForPredArg(offsetCopy, v131, v132.var0, v133, v134);
          }

          else
          {
            v231 = 0;
          }

          TSCEFormulaCreationMagic::arg(v11, v132, &v231, &v232);
          TSCEFormulaCreator::TSCEFormulaCreator(&v230, 3);
          TSCEFormulaCreationMagic::operator*(&v232, &v230, &v233);
          TSUDecimal::operator=();
          v393._decimal.w[0] = v341;
          TSCEFormulaCreationMagic::number(v340, v393, v180, v181, &v229);
          TSCEFormulaCreationMagic::operator*(&v233, &v229, &v234);
          v182.var0 = &v234;
          TSCEFormulaCreationMagic::EDATE(&v235, v182, v370, &v236);
          TSCEFormulaCreationMagic::duration(3, v183, v184, v185, v186, &v228, 86400.0);
          TSCEFormulaCreationMagic::operator+(&v236, &v228, v13);

          v28 = &v235;
          v29 = &v231;
          var0 = v232;
        }

LABEL_69:

        goto LABEL_70;
    }
  }

  v53 = MEMORY[0x277D81150];
  v54 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "[TSTFormulaPredicate p_creatorForPeriodBoundaryWithScale:direction:offset:argIndex:earlierBound:isCalPers:]", v16, v17);
  v58 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v55, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTFormulaPredicate.mm", v56, v57);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v53, v59, v54, v58, 467, 0, "Not a valid date scale");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v60, v61, v62, v63);
  v64 = MEMORY[0x277D81150];
  v68 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v65, "[TSTFormulaPredicate p_creatorForPeriodBoundaryWithScale:direction:offset:argIndex:earlierBound:isCalPers:]", v66, v67);
  v72 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v69, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTFormulaPredicate.mm", v70, v71);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v64, v73, v68, v72, 471, 0, "This is expected to be unreachable.");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v74, v75, v76, v77);
  TSCEFormulaCreationMagic::nop(v78, v79, v80, v81, v13);
LABEL_70:

  return v201;
}

- (TSTFormulaPredicate)initWithLiteralDateType:(unsigned __int8)type date1:(id)date1 date2:(id)date2 number1:(double)number1 number2:(double)number2 qualifier1:(unsigned __int8)qualifier1 qualifier2:(unsigned __int8)qualifier2 argumentCellRef:(TSCECellRef *)self0 hostCell:(TSUCellCoord)self1 forConditionalStyle:(BOOL)self2
{
  qualifier2Copy = qualifier2;
  qualifier1Copy = qualifier1;
  typeCopy = type;
  date1Copy = date1;
  date2Copy = date2;
  v22 = [TSTFormulaPredArg alloc];
  if (date1Copy)
  {
    v27 = objc_msgSend_initWithDate_(v22, v23, date1Copy, v25, v26);
  }

  else
  {
    v27 = objc_msgSend_initWithDouble_(v22, v23, v24, v25, v26, number1);
  }

  v28 = v27;
  v29 = [TSTFormulaPredArg alloc];
  if (date2Copy)
  {
    v34 = objc_msgSend_initWithDate_(v29, v30, date2Copy, v32, v33);
  }

  else
  {
    v34 = objc_msgSend_initWithDouble_(v29, v30, v31, v32, v33, number2);
  }

  v36 = v34;
  v39 = *&ref->coordinate.row;
  upper = ref->_tableUID._upper;
  v37 = objc_msgSend_initWithPredicateType_arg1_arg2_qualifier1_qualifier2_argumentCellRef_hostCell_forConditionalStyle_(self, v35, typeCopy, v28, v34, qualifier1Copy, qualifier2Copy, &v39, cell, style);

  return v37;
}

- (TSTFormulaPredicate)initWithLiteralNumberType:(unsigned __int8)type number1:(double)number1 number2:(double)number2 qualifier:(unsigned __int8)qualifier argumentCellRef:(TSCECellRef *)ref hostCell:(TSUCellCoord)cell
{
  qualifierCopy = qualifier;
  typeCopy = type;
  v15 = [TSTFormulaPredArg alloc];
  v20 = objc_msgSend_initWithDouble_(v15, v16, v17, v18, v19, number1);
  v21 = [TSTFormulaPredArg alloc];
  v26 = objc_msgSend_initWithDouble_(v21, v22, v23, v24, v25, number2);
  v30 = *ref;
  v28 = objc_msgSend_initWithPredicateType_arg1_arg2_qualifier1_qualifier2_argumentCellRef_hostCell_(self, v27, typeCopy, v20, v26, qualifierCopy, 0, &v30, cell);

  return v28;
}

- (TSTFormulaPredicate)initWithLiteralDurationType:(unsigned __int8)type duration1:(double)duration1 durationUnits1:(unsigned __int8)units1 duration2:(double)duration2 durationUnits2:(unsigned __int8)units2 qualifier:(unsigned __int8)qualifier argumentCellRef:(TSCECellRef *)ref hostCell:(TSUCellCoord)self0
{
  qualifierCopy = qualifier;
  units2Copy = units2;
  units1Copy = units1;
  typeCopy = type;
  v19 = [TSTFormulaPredArg alloc];
  v23 = objc_msgSend_initWithDuration_units_(v19, v20, units1Copy, v21, v22, duration1);
  v24 = [TSTFormulaPredArg alloc];
  v28 = objc_msgSend_initWithDuration_units_(v24, v25, units2Copy, v26, v27, duration2);
  v32 = *ref;
  v30 = objc_msgSend_initWithPredicateType_arg1_arg2_qualifier1_qualifier2_argumentCellRef_hostCell_(self, v29, typeCopy, v23, v28, qualifierCopy, 0, &v32, cell);

  return v30;
}

- (TSTFormulaPredicate)initWithLiteralTextType:(unsigned __int8)type string:(id)string argumentCellRef:(TSCECellRef *)ref hostCell:(TSUCellCoord)cell
{
  typeCopy = type;
  stringCopy = string;
  v11 = [TSTFormulaPredArg alloc];
  v15 = objc_msgSend_initWithString_(v11, v12, stringCopy, v13, v14);
  v20 = objc_msgSend_defaultPredicateArg(TSTFormulaPredArg, v16, v17, v18, v19);
  v24 = *ref;
  v22 = objc_msgSend_initWithPredicateType_arg1_arg2_qualifier1_qualifier2_argumentCellRef_hostCell_(self, v21, typeCopy, v15, v20, 0, 0, &v24, cell);

  return v22;
}

- (void)recreateFormula
{
  if (!self->_predArg0)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], x1_0, "[TSTFormulaPredicate recreateFormula]", v3, v4);
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTFormulaPredicate.mm", v9, v10);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v12, v7, v11, 596, 0, "Should already have _predArg0 defined");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14, v15, v16);
  }

  predArg1 = self->_predArg1;
  if (predArg1)
  {
    v18 = objc_msgSend_convertToRelativeRefIfPossible(predArg1, x1_0, v2, v3, v4);
    v19 = self->_predArg1;
    self->_predArg1 = v18;
  }

  predArg2 = self->_predArg2;
  if (predArg2)
  {
    v21 = objc_msgSend_convertToRelativeRefIfPossible(predArg2, x1_0, v2, v3, v4);
    v22 = self->_predArg2;
    self->_predArg2 = v21;
  }

  predArg0 = self->_predArg0;
  forConditionalStyle = self->_forConditionalStyle;
  v25 = objc_msgSend_useColumnRefForArg0(self, x1_0, v2, v3, v4);
  if (predArg0)
  {
    objc_msgSend_formulaCreatorForPredArg0UsingLinkedRef_useColumnRef_(predArg0, v26, forConditionalStyle, v25, v29);
  }

  else
  {
    v823.var0 = 0;
  }

  v30 = self->_predArg1;
  if (v30)
  {
    objc_msgSend_formulaCreatorForPredArg(v30, v26, v27, v28, v29);
  }

  else
  {
    TSCEFormulaCreationMagic::nop(v26, v27, v28, v29, &v822);
  }

  v35 = self->_predArg2;
  if (v35)
  {
    objc_msgSend_formulaCreatorForPredArg(v35, v31, v32, v33, v34);
  }

  else
  {
    TSCEFormulaCreationMagic::nop(v31, v32, v33, v34, &v821);
  }

  TSCEFormulaCreationMagic::nop(v36, v37, v38, v39, &v820);
  switch(self->_predicateType)
  {
    case 1u:
      TSCEFormulaCreator::TSCEFormulaCreator(&v720, &v822);
      sub_2214413CC(&v720, &v721);
      TSCEFormulaCreator::TSCEFormulaCreator(&v718, &v823);
      sub_22144136C(&v718, &v719);
      v191.var0 = &v719;
      TSCEFormulaCreationMagic::FIND_CASEINSENSITIVE(&v721, v191, v919, &v722);
      TSUDecimal::operator=();
      v999._decimal.w[0] = v444;
      TSCEFormulaCreationMagic::number(v443.var0, v999, v192, v193, &v717);
      v194.var0 = &v717;
      TSCEFormulaCreationMagic::EQ(&v722, v194, v920, &v819);
      TSCEFormulaCreator::operator=(&v820, &v819.var0, v195, v196, v197);

      var0 = v720.var0;
      goto LABEL_64;
    case 2u:
      TSCEFormulaCreator::TSCEFormulaCreator(&v715, &v822);
      sub_2214413CC(&v715, &v716);
      TSCEFormulaCreator::TSCEFormulaCreator(&v712, &v823);
      sub_22144136C(&v712, &v713);
      TSCEFormulaCreator::TSCEFormulaCreator(&v710, &v822);
      TSCEFormulaCreationMagic::LEN(&v710, v838, &v711);
      v202.var0 = &v711;
      TSCEFormulaCreationMagic::RIGHT(&v713, v202, v922, &v714);
      v203.var0 = &v714;
      TSCEFormulaCreationMagic::FIND_CASEINSENSITIVE(&v716, v203, v923, &v443);
      TSCEFormulaCreator::operator=(&v820, &v443.var0, v204, v205, v206);

      var0 = v715.var0;
      goto LABEL_64;
    case 3u:
      TSCEFormulaCreator::TSCEFormulaCreator(&v730, &v822);
      sub_2214413CC(&v730, &v731);
      TSCEFormulaCreator::TSCEFormulaCreator(&v728, &v823);
      sub_22144136C(&v728, &v729);
      v207.var0 = &v729;
      TSCEFormulaCreationMagic::FIND_CASEINSENSITIVE(&v731, v207, v924, &v732);
      TSCEFormulaCreationMagic::ISERROR(&v732, v839, &v733);
      TSCEFormulaCreationMagic::NOT(&v733, v840, &v443);
      TSCEFormulaCreator::operator=(&v820, &v443.var0, v208, v209, v210);

      var0 = v730.var0;
      goto LABEL_64;
    case 4u:
      TSCEFormulaCreator::TSCEFormulaCreator(&v725, &v822);
      sub_2214413CC(&v725, &v726);
      TSCEFormulaCreator::TSCEFormulaCreator(&v723, &v823);
      sub_22144136C(&v723, &v724);
      v198.var0 = &v724;
      TSCEFormulaCreationMagic::FIND_CASEINSENSITIVE(&v726, v198, v921, &v727);
      TSCEFormulaCreationMagic::ISERROR(&v727, v837, &v443);
      TSCEFormulaCreator::operator=(&v820, &v443.var0, v199, v200, v201);

      var0 = v725.var0;
      goto LABEL_64;
    case 5u:
    case 0x26u:
      TSCEFormulaCreator::TSCEFormulaCreator(&v817, &v823);
      TSCEFormulaCreator::TSCEFormulaCreator(&v443, &v817);
      TSCEFormulaCreationMagic::arg(0, v892, &v443, &v818);

      TSCEFormulaCreator::TSCEFormulaCreator(&v815, &v822);
      TSCEFormulaCreator::TSCEFormulaCreator(&v443, &v815);
      TSCEFormulaCreationMagic::arg(1, v893, &v443, &v816);

      v84.var0 = &v816;
      TSCEFormulaCreationMagic::EQ(&v818, v84, v894, &v819);
      TSCEFormulaCreator::operator=(&v820, &v819.var0, v85, v86, v87);

      var0 = v817.var0;
      goto LABEL_64;
    case 6u:
    case 0x27u:
      TSCEFormulaCreator::TSCEFormulaCreator(&v813, &v823);
      TSCEFormulaCreator::TSCEFormulaCreator(&v443, &v813);
      TSCEFormulaCreationMagic::arg(0, v886, &v443, &v814);

      TSCEFormulaCreator::TSCEFormulaCreator(&v811, &v822);
      TSCEFormulaCreator::TSCEFormulaCreator(&v443, &v811);
      TSCEFormulaCreationMagic::arg(1, v887, &v443, &v812);

      v76.var0 = &v812;
      TSCEFormulaCreationMagic::NE(&v814, v76, v888, &v819);
      TSCEFormulaCreator::operator=(&v820, &v819.var0, v77, v78, v79);

      var0 = v813.var0;
      goto LABEL_64;
    case 7u:
    case 0x28u:
      TSCEFormulaCreator::TSCEFormulaCreator(&v809, &v823);
      TSCEFormulaCreator::TSCEFormulaCreator(&v443, &v809);
      TSCEFormulaCreationMagic::arg(0, v895, &v443, &v810);

      TSCEFormulaCreator::TSCEFormulaCreator(&v807, &v822);
      TSCEFormulaCreator::TSCEFormulaCreator(&v443, &v807);
      TSCEFormulaCreationMagic::arg(1, v896, &v443, &v808);

      v88.var0 = &v808;
      TSCEFormulaCreationMagic::GT(&v810, v88, v897, &v819);
      TSCEFormulaCreator::operator=(&v820, &v819.var0, v89, v90, v91);

      var0 = v809.var0;
      goto LABEL_64;
    case 8u:
    case 0x29u:
      TSCEFormulaCreator::TSCEFormulaCreator(&v805, &v823);
      TSCEFormulaCreator::TSCEFormulaCreator(&v443, &v805);
      TSCEFormulaCreationMagic::arg(0, v889, &v443, &v806);

      TSCEFormulaCreator::TSCEFormulaCreator(&v803, &v822);
      TSCEFormulaCreator::TSCEFormulaCreator(&v443, &v803);
      TSCEFormulaCreationMagic::arg(1, v890, &v443, &v804);

      v80.var0 = &v804;
      TSCEFormulaCreationMagic::GE(&v806, v80, v891, &v819);
      TSCEFormulaCreator::operator=(&v820, &v819.var0, v81, v82, v83);

      var0 = v805.var0;
      goto LABEL_64;
    case 9u:
    case 0x2Au:
      TSCEFormulaCreator::TSCEFormulaCreator(&v801, &v823);
      TSCEFormulaCreator::TSCEFormulaCreator(&v443, &v801);
      TSCEFormulaCreationMagic::arg(0, v883, &v443, &v802);

      TSCEFormulaCreator::TSCEFormulaCreator(&v799, &v822);
      TSCEFormulaCreator::TSCEFormulaCreator(&v443, &v799);
      TSCEFormulaCreationMagic::arg(1, v884, &v443, &v800);

      v72.var0 = &v800;
      TSCEFormulaCreationMagic::LT(&v802, v72, v885, &v819);
      TSCEFormulaCreator::operator=(&v820, &v819.var0, v73, v74, v75);

      var0 = v801.var0;
      goto LABEL_64;
    case 0xAu:
    case 0x2Bu:
      TSCEFormulaCreator::TSCEFormulaCreator(&v797, &v823);
      TSCEFormulaCreator::TSCEFormulaCreator(&v443, &v797);
      TSCEFormulaCreationMagic::arg(0, v898, &v443, &v798);

      TSCEFormulaCreator::TSCEFormulaCreator(&v795, &v822);
      TSCEFormulaCreator::TSCEFormulaCreator(&v443, &v795);
      TSCEFormulaCreationMagic::arg(1, v899, &v443, &v796);

      v92.var0 = &v796;
      TSCEFormulaCreationMagic::LE(&v798, v92, v900, &v819);
      TSCEFormulaCreator::operator=(&v820, &v819.var0, v93, v94, v95);

      var0 = v797.var0;
      goto LABEL_64;
    case 0xBu:
    case 0xCu:
    case 0xFu:
    case 0x10u:
    case 0x2Eu:
    case 0x2Fu:
    case 0x34u:
    case 0x35u:
    case 0x36u:
      TSCEFormulaCreator::TSCEFormulaCreator(&v739, &v823);
      TSCEFormulaCreator::TSCEFormulaCreator(&v443, &v739);
      TSCEFormulaCreationMagic::arg(0, v860, &v443, &v740);

      TSCEFormulaCreationMagic::SUM(&v740, v824, &v819);
      TSCEFormulaCreator::operator=(&v820, &v819.var0, v41, v42, v43);

      var0 = v739.var0;
      goto LABEL_64;
    case 0xDu:
    case 0x2Cu:
      TSCEFormulaCreator::TSCEFormulaCreator(&v778, &v822);
      TSCEFormulaCreator::TSCEFormulaCreator(&v443, &v778);
      TSCEFormulaCreationMagic::arg(1, v863, &v443, &v779);

      TSCEFormulaCreator::TSCEFormulaCreator(&v776, &v821);
      TSCEFormulaCreator::TSCEFormulaCreator(&v443, &v776);
      TSCEFormulaCreationMagic::arg(2, v864, &v443, &v777);

      v48.var0 = &v777;
      TSCEFormulaCreationMagic::LE(&v779, v48, v865, &v780);
      TSCEFormulaCreator::TSCEFormulaCreator(&v772, &v823);
      TSCEFormulaCreator::TSCEFormulaCreator(&v443, &v772);
      TSCEFormulaCreationMagic::arg(0, v866, &v443, &v773);

      TSCEFormulaCreator::TSCEFormulaCreator(&v771, &v822);
      v49.var0 = &v771;
      TSCEFormulaCreationMagic::GE(&v773, v49, v867, &v774);
      TSCEFormulaCreator::TSCEFormulaCreator(&v769, &v823);
      TSCEFormulaCreator::TSCEFormulaCreator(&v768, &v821);
      v50.var0 = &v768;
      TSCEFormulaCreationMagic::LE(&v769, v50, v868, &v770);
      v51.var0 = &v770;
      TSCEFormulaCreationMagic::AND(&v774, v51, v869, &v775);
      TSCEFormulaCreator::TSCEFormulaCreator(&v765, &v823);
      TSCEFormulaCreator::TSCEFormulaCreator(&v764, &v821);
      v52.var0 = &v764;
      TSCEFormulaCreationMagic::GE(&v765, v52, v870, &v766);
      TSCEFormulaCreator::TSCEFormulaCreator(&v762, &v823);
      TSCEFormulaCreator::TSCEFormulaCreator(&v761, &v822);
      v53.var0 = &v761;
      TSCEFormulaCreationMagic::LE(&v762, v53, v871, &v763);
      v54.var0 = &v763;
      TSCEFormulaCreationMagic::AND(&v766, v54, v872, &v767);
      v55.var0 = &v775;
      v56.var0 = &v767;
      TSCEFormulaCreationMagic::IF(&v780, v55, v56, v983, &v819);
      TSCEFormulaCreator::operator=(&v820, &v819.var0, v57, v58, v59);

      var0 = v778.var0;
      goto LABEL_64;
    case 0x11u:
      TSCEFormulaCreator::TSCEFormulaCreator(&v658, &v823);
      sub_22144136C(&v658, &v659);
      TSCEFormulaCreationMagic::TODAY(v149, v150, v151, v152, &v657);
      v153.var0 = &v657;
      TSCEFormulaCreationMagic::GE(&v659, v153, v912, &v660);
      TSCEFormulaCreator::TSCEFormulaCreator(&v655, &v823);
      TSCEFormulaCreationMagic::TODAY(v154, v155, v156, v157, &v653);
      TSCEFormulaCreationMagic::duration(3, v158, v159, v160, v161, &v652, 86400.0);
      TSCEFormulaCreationMagic::operator+(&v653, &v652, &v654);
      v162.var0 = &v654;
      TSCEFormulaCreationMagic::LT(&v655, v162, v913, &v656);
      v163.var0 = &v656;
      TSCEFormulaCreationMagic::AND(&v660, v163, v914, &v443);
      TSCEFormulaCreator::operator=(&v820, &v443.var0, v164, v165, v166);

      var0 = v658.var0;
      goto LABEL_64;
    case 0x12u:
      TSCEFormulaCreator::TSCEFormulaCreator(&v649, &v823);
      sub_22144136C(&v649, &v650);
      TSCEFormulaCreationMagic::TODAY(v253, v254, v255, v256, &v647);
      TSCEFormulaCreationMagic::duration(3, v257, v258, v259, v260, &v646, 86400.0);
      TSCEFormulaCreationMagic::operator-(&v647, &v646, &v648);
      v261.var0 = &v648;
      TSCEFormulaCreationMagic::GE(&v650, v261, v931, &v651);
      TSCEFormulaCreator::TSCEFormulaCreator(&v644, &v823);
      TSCEFormulaCreationMagic::TODAY(v262, v263, v264, v265, &v643);
      v266.var0 = &v643;
      TSCEFormulaCreationMagic::LT(&v644, v266, v932, &v645);
      v267.var0 = &v645;
      TSCEFormulaCreationMagic::AND(&v651, v267, v933, &v443);
      TSCEFormulaCreator::operator=(&v820, &v443.var0, v268, v269, v270);

      var0 = v649.var0;
      goto LABEL_64;
    case 0x13u:
      TSCEFormulaCreator::TSCEFormulaCreator(&v640, &v823);
      sub_22144136C(&v640, &v641);
      TSCEFormulaCreationMagic::TODAY(v289, v290, v291, v292, &v638);
      TSCEFormulaCreationMagic::duration(3, v293, v294, v295, v296, &v637, 86400.0);
      TSCEFormulaCreationMagic::operator+(&v638, &v637, &v639);
      v297.var0 = &v639;
      TSCEFormulaCreationMagic::GE(&v641, v297, v938, &v642);
      TSCEFormulaCreator::TSCEFormulaCreator(&v635, &v823);
      TSCEFormulaCreationMagic::TODAY(v298, v299, v300, v301, &v633);
      TSCEFormulaCreationMagic::duration(3, v302, v303, v304, v305, &v632, 172800.0);
      TSCEFormulaCreationMagic::operator+(&v633, &v632, &v634);
      v306.var0 = &v634;
      TSCEFormulaCreationMagic::LT(&v635, v306, v939, &v636);
      v307.var0 = &v636;
      TSCEFormulaCreationMagic::AND(&v642, v307, v940, &v443);
      TSCEFormulaCreator::operator=(&v820, &v443.var0, v308, v309, v310);

      var0 = v640.var0;
      goto LABEL_64;
    case 0x14u:
      TSCEFormulaCreator::TSCEFormulaCreator(&v628, &v822);
      sub_2214413CC(&v628, &v629);
      TSCEFormulaCreationMagic::YEAR(&v629, v847, &v630);
      TSCEFormulaCreator::TSCEFormulaCreator(&v625, &v823);
      sub_22144136C(&v625, &v626);
      TSCEFormulaCreationMagic::YEAR(&v626, v848, &v627);
      v357.var0 = &v627;
      TSCEFormulaCreationMagic::EQ(&v630, v357, v958, &v631);
      TSCEFormulaCreator::TSCEFormulaCreator(&v622, &v822);
      TSCEFormulaCreationMagic::MONTH(&v622, v849, &v623);
      TSCEFormulaCreator::TSCEFormulaCreator(&v620, &v823);
      TSCEFormulaCreationMagic::MONTH(&v620, v850, &v621);
      v358.var0 = &v621;
      TSCEFormulaCreationMagic::EQ(&v623, v358, v959, &v624);
      TSCEFormulaCreator::TSCEFormulaCreator(&v617, &v822);
      TSCEFormulaCreationMagic::DAY(&v617, v851, &v618);
      TSCEFormulaCreator::TSCEFormulaCreator(&v615, &v823);
      TSCEFormulaCreationMagic::DAY(&v615, v852, &v616);
      v359.var0 = &v616;
      TSCEFormulaCreationMagic::EQ(&v618, v359, v960, &v619);
      v360.var0 = &v624;
      v361.var0 = &v619;
      TSCEFormulaCreationMagic::AND(&v631, v360, v361, v991, &v443);
      TSCEFormulaCreator::operator=(&v820, &v443.var0, v362, v363, v364);

      var0 = v628.var0;
      goto LABEL_64;
    case 0x15u:
      TSCEFormulaCreator::TSCEFormulaCreator(&v612, &v823);
      sub_22144136C(&v612, &v613);
      TSCEFormulaCreator::TSCEFormulaCreator(&v610, &v822);
      sub_2214413CC(&v610, &v611);
      v352.var0 = &v611;
      TSCEFormulaCreationMagic::LT(&v613, v352, v956, &v614);
      TSCEFormulaCreator::TSCEFormulaCreator(&v607, &v823);
      TSCEFormulaCreationMagic::ISBLANK(&v607, v845, &v608);
      TSCEFormulaCreationMagic::NOT(&v608, v846, &v609);
      v353.var0 = &v609;
      TSCEFormulaCreationMagic::AND(&v614, v353, v957, &v443);
      TSCEFormulaCreator::operator=(&v820, &v443.var0, v354, v355, v356);

      var0 = v612.var0;
      goto LABEL_64;
    case 0x16u:
      TSCEFormulaCreator::TSCEFormulaCreator(&v605, &v823);
      sub_22144136C(&v605, &v606);
      TSCEFormulaCreator::TSCEFormulaCreator(&v602, &v822);
      sub_2214413CC(&v602, &v603);
      TSCEFormulaCreationMagic::duration(3, v211, v212, v213, v214, &v601, 86400.0);
      TSCEFormulaCreationMagic::operator+(&v603, &v601, &v604);
      v215.var0 = &v604;
      TSCEFormulaCreationMagic::GE(&v606, v215, v925, &v443);
      TSCEFormulaCreator::operator=(&v820, &v443.var0, v216, v217, v218);

      var0 = v605.var0;
      goto LABEL_64;
    case 0x17u:
      TSCEFormulaCreator::TSCEFormulaCreator(&v598, &v822);
      sub_2214413CC(&v598, &v599);
      TSCEFormulaCreator::TSCEFormulaCreator(&v596, &v821);
      sub_22144142C(&v596, &v597);
      v332.var0 = &v597;
      TSCEFormulaCreationMagic::LE(&v599, v332, v949, &v600);
      TSCEFormulaCreator::TSCEFormulaCreator(&v592, &v823);
      sub_22144136C(&v592, &v593);
      TSCEFormulaCreator::TSCEFormulaCreator(&v591, &v822);
      v333.var0 = &v591;
      TSCEFormulaCreationMagic::GE(&v593, v333, v950, &v594);
      TSCEFormulaCreator::TSCEFormulaCreator(&v589, &v823);
      TSCEFormulaCreator::TSCEFormulaCreator(&v587, &v821);
      TSCEFormulaCreationMagic::duration(3, v334, v335, v336, v337, &v586, 86400.0);
      TSCEFormulaCreationMagic::operator+(&v587, &v586, &v588);
      v338.var0 = &v588;
      TSCEFormulaCreationMagic::LT(&v589, v338, v951, &v590);
      v339.var0 = &v590;
      TSCEFormulaCreationMagic::AND(&v594, v339, v952, &v595);
      TSCEFormulaCreator::TSCEFormulaCreator(&v583, &v823);
      TSCEFormulaCreator::TSCEFormulaCreator(&v582, &v821);
      v340.var0 = &v582;
      TSCEFormulaCreationMagic::GE(&v583, v340, v953, &v584);
      TSCEFormulaCreator::TSCEFormulaCreator(&v580, &v823);
      TSCEFormulaCreator::TSCEFormulaCreator(&v578, &v822);
      TSCEFormulaCreationMagic::duration(3, v341, v342, v343, v344, &v577, 86400.0);
      TSCEFormulaCreationMagic::operator+(&v578, &v577, &v579);
      v345.var0 = &v579;
      TSCEFormulaCreationMagic::LT(&v580, v345, v954, &v581);
      v346.var0 = &v581;
      TSCEFormulaCreationMagic::AND(&v584, v346, v955, &v585);
      v347.var0 = &v595;
      v348.var0 = &v585;
      TSCEFormulaCreationMagic::IF(&v600, v347, v348, v990, &v443);
      TSCEFormulaCreator::operator=(&v820, &v443.var0, v349, v350, v351);

      var0 = v598.var0;
      goto LABEL_64;
    case 0x18u:
      objc_msgSend_p_creatorForPeriodBoundaryWithScale_direction_offset_argIndex_earlierBound_isCalPers_(self, v40, self->_qualifier1, 7, self->_predArg1, 1, 0, 0);
      TSCEFormulaCreator::TSCEFormulaCreator(&v574, &v823);
      sub_22144136C(&v574, &v575);
      TSCEFormulaCreationMagic::TODAY(v108, v109, v110, v111, &v573);
      v112.var0 = &v573;
      TSCEFormulaCreationMagic::GE(&v575, v112, v904, &v576);
      TSCEFormulaCreator::TSCEFormulaCreator(&v571, &v823);
      TSCEFormulaCreator::TSCEFormulaCreator(&v570, &v443);
      v113.var0 = &v570;
      TSCEFormulaCreationMagic::LT(&v571, v113, v905, &v572);
      v114.var0 = &v572;
      TSCEFormulaCreationMagic::AND(&v576, v114, v906, &v819);
      TSCEFormulaCreator::operator=(&v820, &v819.var0, v115, v116, v117);

      v104 = v574.var0;
      goto LABEL_63;
    case 0x19u:
      objc_msgSend_p_creatorForPeriodBoundaryWithScale_direction_offset_argIndex_earlierBound_isCalPers_(self, v40, self->_qualifier1, 6, self->_predArg1, 1, 1, 0);
      TSCEFormulaCreator::TSCEFormulaCreator(&v567, &v823);
      sub_22144136C(&v567, &v568);
      TSCEFormulaCreator::TSCEFormulaCreator(&v566, &v443);
      v236.var0 = &v566;
      TSCEFormulaCreationMagic::GE(&v568, v236, v928, &v569);
      TSCEFormulaCreator::TSCEFormulaCreator(&v564, &v823);
      TSCEFormulaCreationMagic::TODAY(v237, v238, v239, v240, &v562);
      TSCEFormulaCreationMagic::duration(3, v241, v242, v243, v244, &v561, 86400.0);
      TSCEFormulaCreationMagic::operator+(&v562, &v561, &v563);
      v245.var0 = &v563;
      TSCEFormulaCreationMagic::LT(&v564, v245, v929, &v565);
      v246.var0 = &v565;
      TSCEFormulaCreationMagic::AND(&v569, v246, v930, &v819);
      TSCEFormulaCreator::operator=(&v820, &v819.var0, v247, v248, v249);

      v104 = v567.var0;
      goto LABEL_63;
    case 0x1Au:
      objc_msgSend_p_creatorForPeriodBoundaryWithScale_direction_offset_argIndex_earlierBound_isCalPers_(self, v40, self->_qualifier1, self->_qualifier2, self->_predArg1, 1, 1, 0);
      TSCEFormulaCreator::TSCEFormulaCreator(&v557, &v823);
      sub_22144136C(&v557, &v558);
      TSCEFormulaCreator::TSCEFormulaCreator(&v556, &v819);
      TSCEFormulaCreationMagic::string(@"D", &v555);
      v281.var0 = &v556;
      v282.var0 = &v555;
      TSCEFormulaCreationMagic::DATEDIF(&v558, v281, v282, v988, &v559);
      TSUDecimal::operator=();
      v1001._decimal.w[0] = v444;
      TSCEFormulaCreationMagic::number(v443.var0, v1001, v283, v284, &v554);
      v285.var0 = &v554;
      TSCEFormulaCreationMagic::EQ(&v559, v285, v937, &v560);
      TSCEFormulaCreator::operator=(&v820, &v560.var0, v286, v287, v288);

      var0 = v819.var0;
      goto LABEL_64;
    case 0x1Bu:
      objc_msgSend_p_creatorForPeriodBoundaryWithScale_direction_offset_argIndex_earlierBound_isCalPers_(self, v40, self->_qualifier1, self->_qualifier2, self->_predArg1, 1, 1, 0);
      TSCEFormulaCreator::TSCEFormulaCreator(&v551, &v823);
      sub_22144136C(&v551, &v552);
      TSCEFormulaCreator::TSCEFormulaCreator(&v550, &v443);
      v99.var0 = &v550;
      TSCEFormulaCreationMagic::LT(&v552, v99, v902, &v553);
      TSCEFormulaCreator::TSCEFormulaCreator(&v547, &v823);
      TSCEFormulaCreationMagic::ISBLANK(&v547, v828, &v548);
      TSCEFormulaCreationMagic::NOT(&v548, v829, &v549);
      v100.var0 = &v549;
      TSCEFormulaCreationMagic::AND(&v553, v100, v903, &v819);
      TSCEFormulaCreator::operator=(&v820, &v819.var0, v101, v102, v103);

      v104 = v551.var0;
      goto LABEL_63;
    case 0x1Cu:
      objc_msgSend_p_creatorForPeriodBoundaryWithScale_direction_offset_argIndex_earlierBound_isCalPers_(self, v40, self->_qualifier1, self->_qualifier2, self->_predArg1, 1, 0, 0);
      TSCEFormulaCreator::TSCEFormulaCreator(&v545, &v823);
      sub_22144136C(&v545, &v546);
      TSCEFormulaCreator::TSCEFormulaCreator(&v544, &v443);
      v311.var0 = &v544;
      TSCEFormulaCreationMagic::GE(&v546, v311, v941, &v819);
      TSCEFormulaCreator::operator=(&v820, &v819.var0, v312, v313, v314);

      v104 = v545.var0;
      goto LABEL_63;
    case 0x1Du:
      objc_msgSend_p_creatorForPeriodBoundaryWithScale_direction_offset_argIndex_earlierBound_isCalPers_(self, v40, self->_qualifier1, self->_qualifier2, self->_predArg1, 3, 1, 0);
      objc_msgSend_p_creatorForPeriodBoundaryWithScale_direction_offset_argIndex_earlierBound_isCalPers_(self, v315, self->_qualifier1, self->_qualifier2, self->_predArg2, 3, 0, 0);
      objc_msgSend_p_creatorForPeriodBoundaryWithScale_direction_offset_argIndex_earlierBound_isCalPers_(self, v316, self->_qualifier1, self->_qualifier2, self->_predArg1, 3, 0, 0);
      objc_msgSend_p_creatorForPeriodBoundaryWithScale_direction_offset_argIndex_earlierBound_isCalPers_(self, v317, self->_qualifier1, self->_qualifier2, self->_predArg2, 3, 1, 0);
      qualifier2 = self->_qualifier2;
      if (qualifier2 == 6)
      {
        TSCEFormulaCreator::TSCEFormulaCreator(&v519, &v822);
        sub_2214413CC(&v519, &v520);
        TSCEFormulaCreator::TSCEFormulaCreator(&v517, &v821);
        sub_22144142C(&v517, &v518);
        v431.var0 = &v518;
        TSCEFormulaCreationMagic::LE(&v520, v431, v976, &v521);
        TSCEFormulaCreator::TSCEFormulaCreator(&v513, &v823);
        sub_22144136C(&v513, &v514);
        TSCEFormulaCreator::TSCEFormulaCreator(&v512, &v543);
        v432.var0 = &v512;
        TSCEFormulaCreationMagic::GE(&v514, v432, v977, &v515);
        TSCEFormulaCreator::TSCEFormulaCreator(&v510, &v823);
        TSCEFormulaCreator::TSCEFormulaCreator(&v509, &v560);
        v433.var0 = &v509;
        TSCEFormulaCreationMagic::LT(&v510, v433, v978, &v511);
        v434.var0 = &v511;
        TSCEFormulaCreationMagic::AND(&v515, v434, v979, &v516);
        TSCEFormulaCreator::TSCEFormulaCreator(&v506, &v823);
        TSCEFormulaCreator::TSCEFormulaCreator(&v505, &v443);
        v435.var0 = &v505;
        TSCEFormulaCreationMagic::GE(&v506, v435, v980, &v507);
        TSCEFormulaCreator::TSCEFormulaCreator(&v503, &v823);
        TSCEFormulaCreator::TSCEFormulaCreator(&v502, &v819);
        v436.var0 = &v502;
        TSCEFormulaCreationMagic::LT(&v503, v436, v981, &v504);
        v437.var0 = &v504;
        TSCEFormulaCreationMagic::AND(&v507, v437, v982, &v508);
        v438.var0 = &v516;
        v439.var0 = &v508;
        TSCEFormulaCreationMagic::IF(&v521, v438, v439, v995, &v542);
        TSCEFormulaCreator::operator=(&v820, &v542, v440, v441, v442);

        v331 = v519.var0;
      }

      else
      {
        if (qualifier2 != 7)
        {
LABEL_62:

          v104 = v819.var0;
LABEL_63:

          var0 = v443.var0;
LABEL_64:

LABEL_65:
          __C();
        }

        TSCEFormulaCreator::TSCEFormulaCreator(&v539, &v822);
        sub_2214413CC(&v539, &v540);
        TSCEFormulaCreator::TSCEFormulaCreator(&v537, &v821);
        sub_22144142C(&v537, &v538);
        v319.var0 = &v538;
        TSCEFormulaCreationMagic::LE(&v540, v319, v942, &v541);
        TSCEFormulaCreator::TSCEFormulaCreator(&v533, &v823);
        sub_22144136C(&v533, &v534);
        TSCEFormulaCreator::TSCEFormulaCreator(&v532, &v443);
        v320.var0 = &v532;
        TSCEFormulaCreationMagic::GE(&v534, v320, v943, &v535);
        TSCEFormulaCreator::TSCEFormulaCreator(&v530, &v823);
        TSCEFormulaCreator::TSCEFormulaCreator(&v529, &v819);
        v321.var0 = &v529;
        TSCEFormulaCreationMagic::LT(&v530, v321, v944, &v531);
        v322.var0 = &v531;
        TSCEFormulaCreationMagic::AND(&v535, v322, v945, &v536);
        TSCEFormulaCreator::TSCEFormulaCreator(&v526, &v823);
        TSCEFormulaCreator::TSCEFormulaCreator(&v525, &v543);
        v323.var0 = &v525;
        TSCEFormulaCreationMagic::GE(&v526, v323, v946, &v527);
        TSCEFormulaCreator::TSCEFormulaCreator(&v523, &v823);
        TSCEFormulaCreator::TSCEFormulaCreator(&v522, &v560);
        v324.var0 = &v522;
        TSCEFormulaCreationMagic::LT(&v523, v324, v947, &v524);
        v325.var0 = &v524;
        TSCEFormulaCreationMagic::AND(&v527, v325, v948, &v528);
        v326.var0 = &v536;
        v327.var0 = &v528;
        TSCEFormulaCreationMagic::IF(&v541, v326, v327, v989, &v542);
        TSCEFormulaCreator::operator=(&v820, &v542, v328, v329, v330);

        v331 = v539.var0;
      }

      goto LABEL_62;
    case 0x1Eu:
    case 0x1Fu:
    case 0x30u:
    case 0x31u:
      TSCEFormulaCreator::TSCEFormulaCreator(&v736, &v823);
      TSCEFormulaCreator::TSCEFormulaCreator(&v443, &v736);
      TSCEFormulaCreationMagic::arg(0, v861, &v443, &v737);

      TSCEFormulaCreationMagic::SUM(&v737, v825, &v738);
      TSCEFormulaCreator::TSCEFormulaCreator(&v734, &v822);
      TSCEFormulaCreator::TSCEFormulaCreator(&v443, &v734);
      TSCEFormulaCreationMagic::arg(1, v862, &v443, &v735);

      TSCEFormulaCreationMagic::operator+(&v738, &v735, &v819);
      TSCEFormulaCreator::operator=(&v820, &v819.var0, v45, v46, v47);

      var0 = v736.var0;
      goto LABEL_64;
    case 0x20u:
    case 0x2Du:
      TSCEFormulaCreator::TSCEFormulaCreator(&v758, &v822);
      TSCEFormulaCreator::TSCEFormulaCreator(&v443, &v758);
      TSCEFormulaCreationMagic::arg(1, v873, &v443, &v759);

      TSCEFormulaCreator::TSCEFormulaCreator(&v756, &v821);
      TSCEFormulaCreator::TSCEFormulaCreator(&v443, &v756);
      TSCEFormulaCreationMagic::arg(2, v874, &v443, &v757);

      v60.var0 = &v757;
      TSCEFormulaCreationMagic::LE(&v759, v60, v875, &v760);
      TSCEFormulaCreator::TSCEFormulaCreator(&v752, &v823);
      TSCEFormulaCreator::TSCEFormulaCreator(&v443, &v752);
      TSCEFormulaCreationMagic::arg(0, v876, &v443, &v753);

      TSCEFormulaCreator::TSCEFormulaCreator(&v751, &v822);
      v61.var0 = &v751;
      TSCEFormulaCreationMagic::LT(&v753, v61, v877, &v754);
      TSCEFormulaCreator::TSCEFormulaCreator(&v749, &v823);
      TSCEFormulaCreator::TSCEFormulaCreator(&v748, &v821);
      v62.var0 = &v748;
      TSCEFormulaCreationMagic::GT(&v749, v62, v878, &v750);
      v63.var0 = &v750;
      TSCEFormulaCreationMagic::OR(&v754, v63, v879, &v755);
      TSCEFormulaCreator::TSCEFormulaCreator(&v745, &v823);
      TSCEFormulaCreator::TSCEFormulaCreator(&v744, &v821);
      v64.var0 = &v744;
      TSCEFormulaCreationMagic::LT(&v745, v64, v880, &v746);
      TSCEFormulaCreator::TSCEFormulaCreator(&v742, &v823);
      TSCEFormulaCreator::TSCEFormulaCreator(&v741, &v822);
      v65.var0 = &v741;
      TSCEFormulaCreationMagic::GT(&v742, v65, v881, &v743);
      v66.var0 = &v743;
      TSCEFormulaCreationMagic::OR(&v746, v66, v882, &v747);
      v67.var0 = &v755;
      v68.var0 = &v747;
      TSCEFormulaCreationMagic::IF(&v760, v67, v68, v984, &v819);
      TSCEFormulaCreator::operator=(&v820, &v819.var0, v69, v70, v71);

      var0 = v758.var0;
      goto LABEL_64;
    case 0x21u:
      v118 = [TSTFormulaPredArg alloc];
      v123 = objc_msgSend_initWithDouble_(v118, v119, v120, v121, v122, 1.0);
      objc_msgSend_p_creatorForPeriodBoundaryWithScale_direction_offset_argIndex_earlierBound_isCalPers_(self, v124, self->_qualifier1, self->_qualifier2, v123, 3, 1, 1);
      objc_msgSend_p_creatorForPeriodBoundaryWithScale_direction_offset_argIndex_earlierBound_isCalPers_(self, v125, self->_qualifier1, self->_qualifier2, v123, 3, 0, 1);
      TSCEFormulaCreator::TSCEFormulaCreator(&v499, &v823);
      sub_22144136C(&v499, &v500);
      TSCEFormulaCreator::TSCEFormulaCreator(&v498, &v443);
      v126.var0 = &v498;
      TSCEFormulaCreationMagic::GE(&v500, v126, v907, &v501);
      TSCEFormulaCreator::TSCEFormulaCreator(&v496, &v823);
      TSCEFormulaCreator::TSCEFormulaCreator(&v495, &v819);
      v127.var0 = &v495;
      TSCEFormulaCreationMagic::LT(&v496, v127, v908, &v497);
      v128.var0 = &v497;
      TSCEFormulaCreationMagic::AND(&v501, v128, v909, &v560);
      TSCEFormulaCreator::operator=(&v820, &v560.var0, v129, v130, v131);

      goto LABEL_65;
    case 0x22u:
      TSCEFormulaCreator::TSCEFormulaCreator(&v493, &v823);
      sub_22144136C(&v493, &v494);
      TSCEFormulaCreationMagic::ISBLANK(&v494, v842, &v443);
      TSCEFormulaCreator::operator=(&v820, &v443.var0, v250, v251, v252);

      var0 = v493.var0;
      goto LABEL_64;
    case 0x23u:
      TSCEFormulaCreator::TSCEFormulaCreator(&v490, &v823);
      sub_22144136C(&v490, &v491);
      TSCEFormulaCreationMagic::ISBLANK(&v491, v830, &v492);
      TSCEFormulaCreationMagic::NOT(&v492, v831, &v443);
      TSCEFormulaCreator::operator=(&v820, &v443.var0, v105, v106, v107);

      var0 = v490.var0;
      goto LABEL_64;
    case 0x24u:
      TSCEFormulaCreator::TSCEFormulaCreator(&v688, &v822);
      sub_2214413CC(&v688, &v689);
      TSCEFormulaCreationMagic::LEN(&v689, v856, &v690);
      TSCEFormulaCreator::TSCEFormulaCreator(&v685, &v823);
      sub_22144136C(&v685, &v686);
      TSCEFormulaCreationMagic::LEN(&v686, v857, &v687);
      v398.var0 = &v687;
      TSCEFormulaCreationMagic::EQ(&v690, v398, v968, &v691);
      TSCEFormulaCreator::TSCEFormulaCreator(&v682, &v822);
      TSCEFormulaCreator::TSCEFormulaCreator(&v681, &v823);
      v399.var0 = &v681;
      TSCEFormulaCreationMagic::FIND_CASEINSENSITIVE(&v682, v399, v969, &v683);
      TSUDecimal::operator=();
      v1004._decimal.w[0] = v444;
      TSCEFormulaCreationMagic::number(v443.var0, v1004, v400, v401, &v680);
      v402.var0 = &v680;
      TSCEFormulaCreationMagic::EQ(&v683, v402, v970, &v684);
      v403.var0 = &v684;
      TSCEFormulaCreationMagic::IF(&v691, v403, v971, &v819);
      TSCEFormulaCreator::operator=(&v820, &v819.var0, v404, v405, v406);

      var0 = v688.var0;
      goto LABEL_64;
    case 0x25u:
      TSCEFormulaCreator::TSCEFormulaCreator(&v676, &v822);
      sub_2214413CC(&v676, &v677);
      TSCEFormulaCreationMagic::LEN(&v677, v853, &v678);
      TSCEFormulaCreator::TSCEFormulaCreator(&v673, &v823);
      sub_22144136C(&v673, &v674);
      TSCEFormulaCreationMagic::LEN(&v674, v854, &v675);
      v377.var0 = &v675;
      TSCEFormulaCreationMagic::NE(&v678, v377, v964, &v679);
      TSCEFormulaCreationMagic::BOOLean(1, v378, v379, v380, v381, &v672);
      TSCEFormulaCreator::TSCEFormulaCreator(&v668, &v822);
      TSCEFormulaCreator::TSCEFormulaCreator(&v667, &v823);
      v382.var0 = &v667;
      TSCEFormulaCreationMagic::FIND_CASEINSENSITIVE(&v668, v382, v965, &v669);
      TSCEFormulaCreationMagic::ISERROR(&v669, v855, &v670);
      TSCEFormulaCreationMagic::BOOLean(1, v383, v384, v385, v386, &v666);
      TSCEFormulaCreator::TSCEFormulaCreator(&v663, &v822);
      TSCEFormulaCreator::TSCEFormulaCreator(&v662, &v823);
      v387.var0 = &v662;
      TSCEFormulaCreationMagic::FIND_CASEINSENSITIVE(&v663, v387, v966, &v664);
      TSUDecimal::operator=();
      v1003._decimal.w[0] = v444;
      TSCEFormulaCreationMagic::number(v443.var0, v1003, v388, v389, &v661);
      v390.var0 = &v661;
      TSCEFormulaCreationMagic::NE(&v664, v390, v967, &v665);
      v391.var0 = &v666;
      v392.var0 = &v665;
      TSCEFormulaCreationMagic::IF(&v670, v391, v392, v992, &v671);
      v393.var0 = &v672;
      v394.var0 = &v671;
      TSCEFormulaCreationMagic::IF(&v679, v393, v394, v993, &v819);
      TSCEFormulaCreator::operator=(&v820, &v819.var0, v395, v396, v397);

      var0 = v676.var0;
      goto LABEL_64;
    case 0x32u:
    case 0x33u:
      TSCEFormulaCreator::TSCEFormulaCreator(&v445, &v823);
      TSCEFormulaCreator::TSCEFormulaCreator(&v443, &v445);
      TSCEFormulaCreationMagic::arg(0, v901, &v443, &v446);

      TSCEFormulaCreationMagic::ISBLANK(&v446, v826, &v447);
      TSCEFormulaCreationMagic::NOT(&v447, v827, &v819);
      TSCEFormulaCreator::operator=(&v820, &v819.var0, v96, v97, v98);

      var0 = v445.var0;
      goto LABEL_64;
    case 0x37u:
      TSCEFormulaCreator::TSCEFormulaCreator(&v487, &v823);
      sub_22144136C(&v487, &v488);
      TSCEFormulaCreator::TSCEFormulaCreator(&v483, &v823);
      sub_22144136C(&v483, &v484);
      TSCEFormulaCreationMagic::__INTERACTIONTYPE(&v484, v858, &v485);
      TSUDecimal::operator=();
      v1005._decimal.w[0] = v444;
      TSCEFormulaCreationMagic::number(v443.var0, v1005, v407, v408, &v482);
      v409.var0 = &v482;
      TSCEFormulaCreationMagic::EQ(&v485, v409, v972, &v486);
      v410.var0 = &v486;
      TSCEFormulaCreationMagic::AND(&v488, v410, v973, &v489);
      TSCEFormulaCreationMagic::BOOLean(1, v411, v412, v413, v414, &v481);
      TSCEFormulaCreationMagic::BOOLean(0, v415, v416, v417, v418, &v480);
      v419.var0 = &v481;
      v420.var0 = &v480;
      TSCEFormulaCreationMagic::IF(&v489, v419, v420, v994, &v819);
      TSCEFormulaCreator::operator=(&v820, &v819.var0, v421, v422, v423);

      var0 = v487.var0;
      goto LABEL_64;
    case 0x38u:
      TSCEFormulaCreator::TSCEFormulaCreator(&v476, &v823);
      sub_22144136C(&v476, &v477);
      TSCEFormulaCreationMagic::NOT(&v477, v832, &v478);
      TSCEFormulaCreator::TSCEFormulaCreator(&v472, &v823);
      sub_22144136C(&v472, &v473);
      TSCEFormulaCreationMagic::__INTERACTIONTYPE(&v473, v833, &v474);
      TSUDecimal::operator=();
      v996._decimal.w[0] = v444;
      TSCEFormulaCreationMagic::number(v443.var0, v996, v132, v133, &v471);
      v134.var0 = &v471;
      TSCEFormulaCreationMagic::EQ(&v474, v134, v910, &v475);
      v135.var0 = &v475;
      TSCEFormulaCreationMagic::AND(&v478, v135, v911, &v479);
      TSCEFormulaCreationMagic::BOOLean(1, v136, v137, v138, v139, &v470);
      TSCEFormulaCreationMagic::BOOLean(0, v140, v141, v142, v143, &v469);
      v144.var0 = &v470;
      v145.var0 = &v469;
      TSCEFormulaCreationMagic::IF(&v479, v144, v145, v985, &v819);
      TSCEFormulaCreator::operator=(&v820, &v819.var0, v146, v147, v148);

      var0 = v476.var0;
      goto LABEL_64;
    case 0x39u:
      TSCEFormulaCreator::TSCEFormulaCreator(&v792, &v823);
      sub_22144136C(&v792, &v793);
      TSUDecimal::operator=();
      v997._decimal.w[0] = v444;
      TSCEFormulaCreationMagic::number(v443.var0, v997, v167, v168, &v791);
      v169.var0 = &v791;
      TSCEFormulaCreationMagic::GT(&v793, v169, v915, &v794);
      TSCEFormulaCreator::TSCEFormulaCreator(&v788, &v823);
      sub_22144136C(&v788, &v789);
      TSCEFormulaCreationMagic::ISNUMBER(&v789, v834, &v790);
      v170.var0 = &v790;
      TSCEFormulaCreationMagic::AND(&v794, v170, v916, &v819);
      TSCEFormulaCreator::operator=(&v820, &v819.var0, v171, v172, v173);

      var0 = v792.var0;
      goto LABEL_64;
    case 0x3Au:
      TSCEFormulaCreator::TSCEFormulaCreator(&v785, &v823);
      sub_22144136C(&v785, &v786);
      TSUDecimal::operator=();
      v1006._decimal.w[0] = v444;
      TSCEFormulaCreationMagic::number(v443.var0, v1006, v424, v425, &v784);
      v426.var0 = &v784;
      TSCEFormulaCreationMagic::LT(&v786, v426, v974, &v787);
      TSCEFormulaCreator::TSCEFormulaCreator(&v781, &v823);
      sub_22144136C(&v781, &v782);
      TSCEFormulaCreationMagic::ISNUMBER(&v782, v859, &v783);
      v427.var0 = &v783;
      TSCEFormulaCreationMagic::AND(&v787, v427, v975, &v819);
      TSCEFormulaCreator::operator=(&v820, &v819.var0, v428, v429, v430);

      var0 = v785.var0;
      goto LABEL_64;
    case 0x3Bu:
      TSCEFormulaCreator::TSCEFormulaCreator(&v464, &v823);
      sub_22144136C(&v464, &v465);
      TSCEFormulaCreationMagic::__CELLVALUETYPE(&v465, v841, &v466);
      TSUDecimal::operator=();
      v1000._decimal.w[0] = v444;
      TSCEFormulaCreationMagic::number(v443.var0, v1000, v219, v220, &v463);
      v221.var0 = &v463;
      TSCEFormulaCreationMagic::EQ(&v466, v221, v926, &v467);
      TSCEFormulaCreator::TSCEFormulaCreator(&v461, &v823);
      sub_22144136C(&v461, &v462);
      v222.var0 = &v462;
      TSCEFormulaCreationMagic::AND(&v467, v222, v927, &v468);
      TSCEFormulaCreationMagic::BOOLean(1, v223, v224, v225, v226, &v460);
      TSCEFormulaCreationMagic::BOOLean(0, v227, v228, v229, v230, &v459);
      v231.var0 = &v460;
      v232.var0 = &v459;
      TSCEFormulaCreationMagic::IF(&v468, v231, v232, v987, &v819);
      TSCEFormulaCreator::operator=(&v820, &v819.var0, v233, v234, v235);

      var0 = v464.var0;
      goto LABEL_64;
    case 0x3Cu:
      TSCEFormulaCreator::TSCEFormulaCreator(&v454, &v823);
      sub_22144136C(&v454, &v455);
      TSCEFormulaCreationMagic::__CELLVALUETYPE(&v455, v835, &v456);
      TSUDecimal::operator=();
      v998._decimal.w[0] = v444;
      TSCEFormulaCreationMagic::number(v443.var0, v998, v174, v175, &v453);
      v176.var0 = &v453;
      TSCEFormulaCreationMagic::EQ(&v456, v176, v917, &v457);
      TSCEFormulaCreator::TSCEFormulaCreator(&v450, &v823);
      sub_22144136C(&v450, &v451);
      TSCEFormulaCreationMagic::NOT(&v451, v836, &v452);
      v177.var0 = &v452;
      TSCEFormulaCreationMagic::AND(&v457, v177, v918, &v458);
      TSCEFormulaCreationMagic::BOOLean(1, v178, v179, v180, v181, &v449);
      TSCEFormulaCreationMagic::BOOLean(0, v182, v183, v184, v185, &v448);
      v186.var0 = &v449;
      v187.var0 = &v448;
      TSCEFormulaCreationMagic::IF(&v458, v186, v187, v986, &v819);
      TSCEFormulaCreator::operator=(&v820, &v819.var0, v188, v189, v190);

      var0 = v454.var0;
      goto LABEL_64;
    case 0x3Du:
      TSCEFormulaCreator::TSCEFormulaCreator(&v706, &v822);
      sub_2214413CC(&v706, &v707);
      TSCEFormulaCreator::TSCEFormulaCreator(&v704, &v823);
      sub_22144136C(&v704, &v705);
      v365.var0 = &v705;
      TSCEFormulaCreationMagic::FIND_CASEINSENSITIVE(&v707, v365, v961, &v708);
      TSUDecimal::operator=();
      v1002._decimal.w[0] = v444;
      TSCEFormulaCreationMagic::number(v443.var0, v1002, v366, v367, &v703);
      v368.var0 = &v703;
      TSCEFormulaCreationMagic::NE(&v708, v368, v962, &v709);
      TSCEFormulaCreationMagic::BOOLean(1, v369, v370, v371, v372, &v702);
      v373.var0 = &v702;
      TSCEFormulaCreationMagic::IFERROR(&v709, v373, v963, &v819);
      TSCEFormulaCreator::operator=(&v820, &v819.var0, v374, v375, v376);

      var0 = v706.var0;
      goto LABEL_64;
    case 0x3Eu:
      TSCEFormulaCreator::TSCEFormulaCreator(&v698, &v822);
      sub_2214413CC(&v698, &v699);
      TSCEFormulaCreator::TSCEFormulaCreator(&v695, &v823);
      sub_22144136C(&v695, &v696);
      TSCEFormulaCreator::TSCEFormulaCreator(&v693, &v822);
      TSCEFormulaCreationMagic::LEN(&v693, v843, &v694);
      v271.var0 = &v694;
      TSCEFormulaCreationMagic::RIGHT(&v696, v271, v934, &v697);
      v272.var0 = &v697;
      TSCEFormulaCreationMagic::FIND_CASEINSENSITIVE(&v699, v272, v935, &v700);
      TSCEFormulaCreationMagic::NOT(&v700, v844, &v701);
      TSCEFormulaCreationMagic::BOOLean(1, v273, v274, v275, v276, &v692);
      v277.var0 = &v692;
      TSCEFormulaCreationMagic::IFERROR(&v701, v277, v936, &v443);
      TSCEFormulaCreator::operator=(&v820, &v443.var0, v278, v279, v280);

      var0 = v698.var0;
      goto LABEL_64;
    default:
      goto LABEL_65;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(TSTFormulaPredicate);
  v8 = v4;
  if (v4)
  {
    objc_msgSend_p_setPredicateType_(v4, v5, self->_predicateType, v6, v7);
    v8->_forConditionalStyle = self->_forConditionalStyle;
    v13 = objc_msgSend_copy(self->_predArg0, v9, v10, v11, v12);
    objc_msgSend_setPredArg0_(v8, v14, v13, v15, v16);

    v21 = objc_msgSend_copy(self->_predArg1, v17, v18, v19, v20);
    objc_msgSend_setPredArg1_(v8, v22, v21, v23, v24);

    v29 = objc_msgSend_copy(self->_predArg2, v25, v26, v27, v28);
    objc_msgSend_setPredArg2_(v8, v30, v29, v31, v32);

    objc_msgSend_p_setQualifier1_(v8, v33, self->_qualifier1, v34, v35);
    objc_msgSend_p_setQualifier2_(v8, v36, self->_qualifier2, v37, v38);
    v8->_argIndex0 = self->_argIndex0;
    v8->_argIndex1 = self->_argIndex1;
    v8->_argIndex2 = self->_argIndex2;
    columnUid = self->_hostCellRef._columnUid;
    tableUid = self->_hostCellRef._tableUid;
    v8->_hostCellRef._rowUid = self->_hostCellRef._rowUid;
    v8->_hostCellRef._tableUid = tableUid;
    v8->_hostCellRef._columnUid = columnUid;
    objc_msgSend_setFormula_(v8, v41, self->_formula, v42, v43);
  }

  return v8;
}

- (id)copyToUidFormForHiddenRowsWithTableInfo:(id)info
{
  infoCopy = info;
  v9 = objc_msgSend_filterFormulaContainingCell(TSTHiddenStates, v5, v6, v7, v8);
  v14 = objc_msgSend_calcEngine(infoCopy, v10, v11, v12, v13);
  v19 = objc_msgSend_hiddenStates(infoCopy, v15, v16, v17, v18);
  v40.coordinate = v9;
  v40._tableUID._lower = objc_msgSend_hiddenStateOwnerForRowsUID(v19, v20, v21, v22, v23);
  v40._tableUID._upper = v24;
  TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v41, v14, &v40);

  v29 = objc_msgSend_hiddenStates(infoCopy, v25, v26, v27, v28);
  v40.coordinate = objc_msgSend_hiddenStateOwnerForRowsUID(v29, v30, v31, v32, v33);
  v40._tableUID._lower = v34;
  TSCEFormulaRewriteContext::setResolverTableUID(&v41, &v40);

  v38 = objc_msgSend_copyToUidFormWithRewriteContext_(self, v35, &v41, v36, v37);
  return v38;
}

- (id)copyToGeometricFormForHiddenRowsWithTableInfo:(id)info containsBadRef:(BOOL *)ref
{
  infoCopy = info;
  v11 = objc_msgSend_filterFormulaContainingCell(TSTHiddenStates, v7, v8, v9, v10);
  v16 = objc_msgSend_calcEngine(infoCopy, v12, v13, v14, v15);
  v21 = objc_msgSend_hiddenStates(infoCopy, v17, v18, v19, v20);
  v32.coordinate = v11;
  v32._tableUID._lower = objc_msgSend_hiddenStateOwnerForRowsUID(v21, v22, v23, v24, v25);
  v32._tableUID._upper = v26;
  TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v33, v16, &v32);

  TSCEFormulaRewriteContext::setHostCellOverridesTableID(&v33, 0);
  v30 = objc_msgSend_copyToGeometricFormWithRewriteContext_(self, v27, &v33, v28, v29);
  if (ref)
  {
    *ref = TSCEFormulaRewriteContext::containsBadRef(&v33);
  }

  return v30;
}

- (id)copyToUidFormForConditionalStylesWithTableInfo:(id)info containingCell:(TSUCellCoord)cell preserveHostCell:(BOOL)hostCell
{
  infoCopy = info;
  v13 = objc_msgSend_calcEngine(infoCopy, v9, v10, v11, v12);
  v18 = objc_msgSend_conditionalStyleFormulaOwner(infoCopy, v14, v15, v16, v17);
  v34.coordinate = cell;
  v34._tableUID._lower = objc_msgSend_ownerUID(v18, v19, v20, v21, v22);
  v34._tableUID._upper = v23;
  TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v35, v13, &v34);

  v34.coordinate = objc_msgSend_tableUID(infoCopy, v24, v25, v26, v27);
  v34._tableUID._lower = v28;
  TSCEFormulaRewriteContext::setResolverTableUID(&v35, &v34);
  TSCEFormulaRewriteContext::setPreserveHostCell(&v35, hostCell);
  v32 = objc_msgSend_copyToUidFormWithRewriteContext_(self, v29, &v35, v30, v31);

  return v32;
}

- (void)setHostCell:(const TSKUIDStruct *)cell hostColumnUID:(const TSKUIDStruct *)d hostRowUID:(const TSKUIDStruct *)iD
{
  if (objc_msgSend_containsUidReferences(self->_formula, a2, cell, d, iD))
  {
    v15 = objc_msgSend_copyBySettingHostTableUID_hostColumnUID_hostRowUID_(self->_formula, v9, cell, d, iD);
    objc_msgSend_setFormula_(self, v10, v15, v11, v12);
    v13 = *d;
    v14 = *cell;
    self->_hostCellRef._rowUid = *iD;
    self->_hostCellRef._tableUid = v14;
    self->_hostCellRef._columnUid = v13;
  }
}

- (void)getPrecedents:(void *)precedents calcEngine:(id)engine hostOwnerUID:(const TSKUIDStruct *)d hostCellID:(const TSUCellCoord *)iD
{
  formula = self->_formula;
  v7 = *iD;
  v8 = *d;
  objc_msgSend_getPrecedents_calcEngine_hostCell_allowImplicitIntersection_returnUidReferences_(formula, a2, precedents, engine, &v7, 1, 1);
}

- (unsigned)p_argTypeForPredArg:(id)arg argNum:(unint64_t)num calculationEngine:(id)engine hostCell:(TSUCellCoord)cell
{
  argCopy = arg;
  engineCopy = engine;
  if (!argCopy)
  {
    goto LABEL_28;
  }

  v16 = objc_msgSend_type(argCopy, v11, v12, v13, v14);
  v17 = v16;
  v18 = 0;
  if (v16 <= 4)
  {
    if ((v16 - 1) >= 3)
    {
      v17 = 0;
      if (v16 != 4)
      {
        goto LABEL_50;
      }

      if (num == 1)
      {
        objc_msgSend_crossTableRefParam1(self, v11, v12, v13, v14);
      }

      else if (num)
      {
        objc_msgSend_crossTableRefParam2(self, v11, v12, v13, v14);
      }

      else
      {
        predArg0 = self->_predArg0;
        if (predArg0)
        {
          objc_msgSend_crossTableRef(predArg0, v11, v12, v13, v14);
        }

        else
        {
          memset(v103, 0, sizeof(v103));
          v104 = 0;
        }
      }

      v105 = *&v103[0]._flags;
      v106 = v104;
      v103[0]._flags = (*&v104 >> 47) & 2 | v104._preserveColumn;
      cellCopy = cell;
      v84 = TSCEMakeAbsoluteCellCoordinateFromRelativeCellCoordinate(cellCopy, *&v104, v103, v13, v14);
      v87 = HIDWORD(*&cell);
      if (v84 == 0x7FFFFFFFLL || (v84 & 0xFFFF00000000) != 0x7FFF00000000)
      {
        v87 = HIDWORD(v84);
      }

      if (v84 == 0x7FFFFFFFLL && (v84 & 0xFFFF00000000) != 0x7FFF00000000)
      {
        v87 = HIDWORD(v84);
        row = cell.row;
      }

      else
      {
        row = v84;
      }

      v17 = sub_221441A40(engineCopy, &v105, v84 & 0xFFFF000000000000 | row | (v87 << 32), v85, v86);
    }

    goto LABEL_49;
  }

  if (v16 > 10)
  {
    if (v16 == 11)
    {
      goto LABEL_49;
    }

    v17 = 0;
    if (v16 != 13)
    {
      goto LABEL_50;
    }

    if (num == 1)
    {
      v43 = objc_msgSend_predicateArg1atBaseHostCoord_calcEngine_(self, v11, *&cell, engineCopy, v14);
      v48 = objc_msgSend_viewTractRef(v43, v44, v45, v46, v47);
    }

    else
    {
      if (!num)
      {
        v32 = MEMORY[0x277D81150];
        v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSTFormulaPredicate p_argTypeForPredArg:argNum:calculationEngine:hostCell:]", v13, v14);
        v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v34, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTFormulaPredicate.mm", v35, v36);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v32, v38, v33, v37, 1201, 0, "A viewTractRef as arg 0, I don't think so");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v39, v40, v41, v42);
        goto LABEL_28;
      }

      v43 = objc_msgSend_predicateArg2atBaseHostCoord_calcEngine_(self, v11, *&cell, engineCopy, v14);
      v48 = objc_msgSend_viewTractRef(v43, v55, v56, v57, v58);
    }

    v30 = v48;

    if (v30)
    {
      *&v105 = objc_msgSend_tableUID(v30, v11, v12, v13, v14);
      *(&v105 + 1) = v59;
      v62 = objc_msgSend_tableResolverForTableUID_(engineCopy, v59, &v105, v60, v61);
      v64 = v62;
      if (!v62)
      {
LABEL_35:
        v18 = 0;
        goto LABEL_36;
      }

      v101 = 0;
      v18 = objc_msgSend_valuesForViewTractRef_hidingActionMask_outError_(v62, v63, v30, 0, &v101);
LABEL_36:

LABEL_38:
      goto LABEL_29;
    }

LABEL_28:
    v18 = 0;
LABEL_29:
    v17 = 0;
    goto LABEL_50;
  }

  if ((v16 - 5) >= 2)
  {
    v17 = 0;
    if (v16 != 10)
    {
      goto LABEL_50;
    }

    if (num == 1)
    {
      v49 = objc_msgSend_predicateArg1atBaseHostCoord_calcEngine_(self, v11, *&cell, engineCopy, v14);
      v54 = objc_msgSend_categoryRef(v49, v50, v51, v52, v53);
    }

    else
    {
      if (!num)
      {
        v19 = MEMORY[0x277D81150];
        v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSTFormulaPredicate p_argTypeForPredArg:argNum:calculationEngine:hostCell:]", v13, v14);
        v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTFormulaPredicate.mm", v22, v23);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v25, v20, v24, 1174, 0, "A categoryRef as arg 0, I don't think so");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27, v28, v29);
        v30 = 0;
LABEL_37:
        v18 = 0;
        goto LABEL_38;
      }

      v49 = objc_msgSend_predicateArg2atBaseHostCoord_calcEngine_(self, v11, *&cell, engineCopy, v14);
      v54 = objc_msgSend_categoryRef(v49, v65, v66, v67, v68);
    }

    v30 = v54;

    if (!v30)
    {
      goto LABEL_37;
    }

    v71 = objc_msgSend_groupByForCategoryRef_withCalcEngine_(TSTGroupBy, v69, v30, engineCopy, v70);
    v64 = v71;
    if (!v71)
    {
      goto LABEL_37;
    }

    v76 = objc_msgSend_tableModel(v71, v72, v73, v74, v75);
    *&v105 = objc_msgSend_rowUIDForRowIndex_(v76, v77, *&cell, v78, v79);
    *(&v105 + 1) = v80;

    v102 = 0;
    v82 = objc_msgSend_valueGridForCategoryRef_atRowUid_outError_(v64, v81, v30, &v105, &v102);
    v18 = v82;
    if (v102)
    {

      goto LABEL_35;
    }

    goto LABEL_36;
  }

LABEL_49:
  v18 = 0;
LABEL_50:
  if (objc_msgSend_count(v18, v11, v12, v13, v14))
  {
    v94 = objc_msgSend_firstValue(v18, v90, v91, v92, v93);
    v99 = objc_msgSend_nativeType(v94, v95, v96, v97, v98);

    if ((v99 - 2) >= 8u)
    {
      v17 = 1;
    }

    else
    {
      v17 = 0x1030101010206uLL >> (8 * ((v99 - 2) & 0x1Fu));
    }
  }

  return v17;
}

- (BOOL)p_testDataTypesForArg0:(unsigned __int8)arg0 arg1:(unsigned __int8)arg1 arg2:(unsigned __int8)arg2 predShouldReturn:(BOOL *)return
{
  *return = 0;
  switch(self->_predicateType)
  {
    case 0u:
    case 1u:
    case 2u:
    case 3u:
    case 4u:
    case 0xEu:
    case 0xFu:
    case 0x10u:
    case 0x22u:
    case 0x23u:
    case 0x24u:
    case 0x25u:
    case 0x32u:
    case 0x33u:
    case 0x34u:
    case 0x37u:
    case 0x38u:
    case 0x39u:
    case 0x3Au:
    case 0x3Bu:
    case 0x3Cu:
    case 0x3Du:
    case 0x3Eu:
      return 1;
    case 5u:
    case 7u:
    case 8u:
    case 9u:
    case 0xAu:
    case 0x26u:
    case 0x27u:
    case 0x28u:
    case 0x29u:
    case 0x2Au:
    case 0x2Bu:
      v7 = arg0 == arg1;
      goto LABEL_39;
    case 6u:
      result = 1;
      if (arg0 == arg1)
      {
        return result;
      }

      *return = 1;
      goto LABEL_20;
    case 0xBu:
    case 0xCu:
    case 0x2Eu:
    case 0x2Fu:
      v7 = (arg0 & 0xFFFFFFFB) == 1;
      goto LABEL_39;
    case 0xDu:
    case 0x2Cu:
    case 0x2Du:
      v7 = arg0 == arg1 && arg0 == arg2;
      goto LABEL_39;
    case 0x11u:
    case 0x12u:
    case 0x13u:
    case 0x21u:
      v7 = arg0 == 2;
      goto LABEL_39;
    case 0x14u:
    case 0x15u:
    case 0x16u:
      v7 = arg0 == 2 && arg1 == 2;
      goto LABEL_39;
    case 0x17u:
      v7 = arg0 == 2 && arg1 == 2 && arg2 == 2;
      goto LABEL_39;
    case 0x18u:
    case 0x19u:
    case 0x1Au:
    case 0x1Bu:
    case 0x1Cu:
      v8 = arg0 == 2;
      goto LABEL_6;
    case 0x1Du:
      v7 = arg0 == 2 && arg1 == 1 && arg2 == 1;
      goto LABEL_39;
    case 0x1Eu:
    case 0x1Fu:
    case 0x30u:
    case 0x31u:
      v8 = (arg0 & 0xFFFFFFFB) == 1;
LABEL_6:
      v7 = v8 && arg1 == 1;
      goto LABEL_39;
    case 0x20u:
      if (arg0 == arg1 && arg0 == arg2)
      {
        return 1;
      }

      result = 0;
      if (arg0 && arg1 && arg2)
      {
        result = 0;
        *return = 1;
      }

      return result;
    case 0x35u:
    case 0x36u:
      v7 = arg1 == 11;
LABEL_39:
      result = v7;
      break;
    default:
LABEL_20:
      result = 0;
      break;
  }

  return result;
}

- (BOOL)evaluateAtCellID:(TSUCellCoord)d onOwnerUID:(const TSKUIDStruct *)iD calcEngine:(id)engine
{
  dCopy = d;
  engineCopy = engine;
  v103 = 0;
  v13 = objc_msgSend_predArg0(self, v9, v10, v11, v12);
  v15 = objc_msgSend_p_argTypeForPredArg_argNum_calculationEngine_hostCell_(self, v14, v13, 0, engineCopy, d);
  v20 = objc_msgSend_predArg1(self, v16, v17, v18, v19);
  v22 = objc_msgSend_p_argTypeForPredArg_argNum_calculationEngine_hostCell_(self, v21, v20, 1, engineCopy, d);
  v27 = objc_msgSend_predArg2(self, v23, v24, v25, v26);
  v29 = objc_msgSend_p_argTypeForPredArg_argNum_calculationEngine_hostCell_(self, v28, v27, 2, engineCopy, d);
  LODWORD(v15) = objc_msgSend_p_testDataTypesForArg0_arg1_arg2_predShouldReturn_(self, v30, v15, v22, v29, &v103);

  if (v15)
  {
    if (self->_predicateType - 53 >= 2)
    {
      v35 = objc_msgSend_contextForCalcEngine_containingTable_containingCell_inArrayMode_(TSCEEvaluationContext, v31, engineCopy, iD, *&d, 0);
      objc_msgSend_setSuppressCycleCheck_(v35, v84, 1, v85, v86);
      v45 = objc_msgSend_evaluateWithContext_(self->_formula, v87, v35, v88, v89);
      v103 = objc_msgSend_BOOLean(v45, v90, v91, v92, v93);
      goto LABEL_15;
    }

    v35 = objc_msgSend_predArg0(self, v31, v32, v33, v34);
    v40 = objc_msgSend_predArg1(self, v36, v37, v38, v39);
    v45 = v40;
    if (!v35 || !v40)
    {
      v46 = MEMORY[0x277D81150];
      v47 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v41, "[TSTFormulaPredicate evaluateAtCellID:onOwnerUID:calcEngine:]", v43, v44);
      v51 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v48, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTFormulaPredicate.mm", v49, v50);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v46, v52, v47, v51, 1429, 0, "Need both of these set");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v53, v54, v55, v56);
    }

    v57 = objc_msgSend_relativeCellRef(v35, v41, v42, v43, v44);
    v58 = v57[1];
    *&v102.relativeCoord._row = *v57;
    *&v102.tableUID._upper = v58;
    TSCERelativeCellRef::cellRefForHostCoord(&v102, &dCopy, v59, v60, &v100);
    LODWORD(v100) = dCopy.row;
    v99 = v101;
    v63 = objc_msgSend_tableModelForTableUID_withCalcEngine_(TSTTableModel, v61, &v99, engineCopy, v62);
    v68 = v63;
    if (!v63)
    {
LABEL_13:

LABEL_15:
      goto LABEL_16;
    }

    v69 = objc_msgSend_cellsPendingWrite(v63, v64, v65, v66, v67);
    v73 = objc_msgSend_cellAtCellID_(v69, v70, v100, v71, v72);

    if (v73)
    {
      v81 = v73;
    }

    else
    {
      v83 = objc_msgSend_newCell(v68, v74, v75, v76, v77);
      Cell_atBaseCellCoord_suppressCellBorder = objc_msgSend_getCell_atBaseCellCoord_suppressCellBorder_(v68, v96, v83, v100, 1);
      if (Cell_atBaseCellCoord_suppressCellBorder == 1000)
      {
        isStringValueInList = objc_msgSend_isStringValueInList_(v45, v78, &stru_2834BADA0, v79, v80);
        v103 = isStringValueInList;
        if (self->_predicateType == 54)
        {
          v103 = isStringValueInList ^ 1;
        }

        goto LABEL_12;
      }

      v81 = v83;
      if (Cell_atBaseCellCoord_suppressCellBorder)
      {
LABEL_12:

        goto LABEL_13;
      }
    }

    isCellValueInList = objc_msgSend_isCellValueInList_(v45, v78, v81, v79, v80);
    v103 = isCellValueInList;
    if (self->_predicateType == 54)
    {
      v103 = isCellValueInList ^ 1;
    }

    v83 = v81;
    goto LABEL_12;
  }

LABEL_16:
  v94 = v103;

  return v94;
}

- (void)setFormula:(id)formula
{
  formulaCopy = formula;
  if (self->_formula == formulaCopy)
  {
    goto LABEL_25;
  }

  objc_storeStrong(&self->_formula, formula);
  objc_msgSend_p_populateMembersFromFormula(self, v5, v6, v7, v8);
  predicateType = self->_predicateType;
  if ((predicateType - 5) >= 9 && (predicateType - 30) > 2)
  {
    goto LABEL_25;
  }

  if (objc_msgSend_type(self->_predArg1, v9, v10, v11, v12) != 5)
  {
    goto LABEL_25;
  }

  v14 = self->_predicateType;
  if (v14 > 8)
  {
    if (self->_predicateType > 0xCu)
    {
      if (v14 == 13)
      {
        v15 = 44;
      }

      else
      {
        if (v14 != 32)
        {
          goto LABEL_25;
        }

        v15 = 45;
      }
    }

    else if (v14 == 9)
    {
      v15 = 42;
    }

    else
    {
      if (v14 != 10)
      {
        goto LABEL_25;
      }

      v15 = 43;
    }
  }

  else if (self->_predicateType > 6u)
  {
    if (v14 == 7)
    {
      v15 = 40;
    }

    else
    {
      if (v14 != 8)
      {
        goto LABEL_25;
      }

      v15 = 41;
    }
  }

  else if (v14 == 5)
  {
    v15 = 38;
  }

  else
  {
    if (v14 != 6)
    {
      goto LABEL_25;
    }

    v15 = 39;
  }

  self->_predicateType = v15;
LABEL_25:
}

- (void)setArgumentAt:(int64_t)at withPredArg:(id)arg
{
  argCopy = arg;
  v11 = argCopy;
  if (at)
  {
    if (at == 2)
    {
      if (!argCopy)
      {
        v11 = objc_opt_new();
      }

      v40 = v11;
      objc_msgSend_setPredArg2_(self, v11, v11, v9, v10);
    }

    else if (at == 1)
    {
      if (!argCopy)
      {
        v11 = objc_opt_new();
      }

      v40 = v11;
      objc_msgSend_setPredArg1_(self, v11, v11, v9, v10);
    }

    else
    {
      v40 = argCopy;
      v28 = MEMORY[0x277D81150];
      v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], argCopy, "[TSTFormulaPredicate setArgumentAt:withPredArg:]", v9, v10);
      v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTFormulaPredicate.mm", v31, v32);
      v34 = NSStringFromSelector(a2);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v28, v35, v29, v33, 1588, 0, "%@: Not allowed for argument at position %d", v34, at);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v36, v37, v38, v39);
    }
  }

  else
  {
    v40 = argCopy;
    v12 = objc_msgSend_type(argCopy, argCopy, v8, v9, v10);
    v16 = v12;
    if (v12 > 0xC || ((1 << v12) & 0x1210) == 0)
    {
      v17 = MEMORY[0x277D81150];
      v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "[TSTFormulaPredicate setArgumentAt:withPredArg:]", v14, v15);
      v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTFormulaPredicate.mm", v20, v21);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v23, v18, v22, 1582, 0, "Only a limited set of types are allowed for predArg0, and not %d", v16);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25, v26, v27);
    }

    objc_msgSend_setPredArg0_(self, v13, v40, v14, v15);
  }
}

- (unsigned)predArg0Type
{
  predArg0 = self->_predArg0;
  if (predArg0)
  {
    LOBYTE(predArg0) = objc_msgSend_type(predArg0, a2, v2, v3, v4);
  }

  return predArg0;
}

- (unsigned)predArg1Type
{
  predArg1 = self->_predArg1;
  if (predArg1)
  {
    LOBYTE(predArg1) = objc_msgSend_type(predArg1, a2, v2, v3, v4);
  }

  return predArg1;
}

- (unsigned)predArg2Type
{
  predArg2 = self->_predArg2;
  if (predArg2)
  {
    LOBYTE(predArg2) = objc_msgSend_type(predArg2, a2, v2, v3, v4);
  }

  return predArg2;
}

- (id)durationParam1
{
  predArg1 = self->_predArg1;
  if (predArg1)
  {
    objc_msgSend_duration(predArg1, a2, v2, v3, v4);
  }

  else
  {
    objc_msgSend_zero(TSCENumberValue, a2, v2, v3, v4);
  }
  v6 = ;

  return v6;
}

- (id)durationParam2
{
  predArg2 = self->_predArg2;
  if (predArg2)
  {
    objc_msgSend_duration(predArg2, a2, v2, v3, v4);
  }

  else
  {
    objc_msgSend_zero(TSCENumberValue, a2, v2, v3, v4);
  }
  v6 = ;

  return v6;
}

- (TSCECrossTableReference)crossTableRefParam1
{
  result = self->_predArg1;
  if (result)
  {
    return objc_msgSend_crossTableRef(result, a3, v3, v4, v5);
  }

  retstr->var0._lower = 0;
  retstr->var0._upper = 0;
  retstr->var1 = 0;
  return result;
}

- (TSCECrossTableReference)crossTableRefParam2
{
  result = self->_predArg2;
  if (result)
  {
    return objc_msgSend_crossTableRef(result, a3, v3, v4, v5);
  }

  retstr->var0._lower = 0;
  retstr->var0._upper = 0;
  retstr->var1 = 0;
  return result;
}

- (id)predicateArg1atBaseHostCoord:(TSUModelCellCoord)coord calcEngine:(id)engine
{
  engineCopy = engine;
  sub_221442B38(self->_predArg1, *&coord);
  v11 = objc_msgSend_type(self->_predArg1, v7, v8, v9, v10);
  if (engineCopy && v11 == 9)
  {
    v16 = objc_msgSend_uidRectRef(self->_predArg1, v12, v13, v14, v15);
    objc_msgSend_setCalcEngine_(v16, v17, engineCopy, v18, v19);
  }

  objc_msgSend_setHostCellCoord_(self->_predArg1, v12, *&coord, v14, v15);
  predArg1 = self->_predArg1;
  v21 = predArg1;

  return predArg1;
}

- (id)predicateArg2atBaseHostCoord:(TSUModelCellCoord)coord calcEngine:(id)engine
{
  engineCopy = engine;
  sub_221442B38(self->_predArg2, *&coord);
  v11 = objc_msgSend_type(self->_predArg2, v7, v8, v9, v10);
  if (engineCopy && v11 == 9)
  {
    v16 = objc_msgSend_uidRectRef(self->_predArg2, v12, v13, v14, v15);
    objc_msgSend_setCalcEngine_(v16, v17, engineCopy, v18, v19);
  }

  objc_msgSend_setHostCellCoord_(self->_predArg2, v12, *&coord, v14, v15);
  predArg2 = self->_predArg2;
  v21 = predArg2;

  return predArg2;
}

- (void)p_populateMembersFromFormula
{
  v6 = objc_msgSend_hostColumnUID(self->_formula, a2, v2, v3, v4);
  v11 = objc_msgSend_hostRowUID(self->_formula, v7, v8, v9, v10);
  v16 = objc_msgSend_hostTableUID(self->_formula, v12, v13, v14, v15);
  v17 = *v6;
  v18 = *v16;
  self->_hostCellRef._rowUid = *v11;
  self->_hostCellRef._tableUid = v18;
  self->_hostCellRef._columnUid = v17;
  if (self->_predicateType - 53 >= 2)
  {
    predArg1 = self->_predArg1;
    self->_predArg1 = 0;
  }

  predArg2 = self->_predArg2;
  self->_predArg2 = 0;

  if (self->_argIndex0 == -1)
  {
    v24 = MEMORY[0x277D81150];
    v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "[TSTFormulaPredicate p_populateMembersFromFormula]", v22, v23);
    v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTFormulaPredicate.mm", v27, v28);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v24, v30, v25, v29, 1765, 0, "We don't have valid offsets at the moment");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v31, v32, v33, v34);
  }

  TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v54);
  v39 = objc_msgSend_const_astNodeArray(self->_formula, v35, v36, v37, v38);
  sub_2212C3620(v49, v39, &v54, self->_argIndex0, self->_argIndex1, self->_argIndex2);
  TSCEASTStreamIterator::rewrite(v49, v40, v41, v42, v43);
  if (v50)
  {
    self->_forConditionalStyle = v50;
  }

  objc_msgSend_setArgumentAt_withPredArg_(self, v44, 0, v51, v45);
  if (self->_predicateType - 53 >= 2)
  {
    objc_msgSend_setArgumentAt_withPredArg_(self, v46, 1, v52, v47);
  }

  objc_msgSend_setArgumentAt_withPredArg_(self, v46, 2, v53, v47);

  TSCEASTStreamIterator::~TSCEASTStreamIterator(v49, v48);
}

- (id)copyByRemappingOwnerUIDsWithMap:(const void *)map rewriteContext:(TSCEFormulaRewriteContext *)context error:(BOOL *)error
{
  v8 = objc_msgSend_copy(self, a2, map, context, error);
  objc_msgSend_remapOwnerUIDsWithMap_rewriteContext_error_(v8, v9, map, context, error);
  return v8;
}

- (void)remapOwnerUIDsWithMap:(const void *)map rewriteContext:(TSCEFormulaRewriteContext *)context error:(BOOL *)error
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_2214430E4;
  v5[3] = &unk_278465380;
  v5[4] = map;
  v5[5] = context;
  v5[6] = error;
  objc_msgSend_rewriteFormulaWithBlock_(self, a2, v5, context, error);
}

- (void)rewriteNumberToDurationForSageImport:(const TSCECellRef *)import durationUnitLargest:(unsigned __int8)largest
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_221443188;
  v5[3] = &unk_2784653A0;
  v5[4] = import;
  largestCopy = largest;
  objc_msgSend_rewriteFormulaWithBlock_(self, a2, v5, largest, v4);
}

- (void)rewriteFormulaWithBlock:(id)block
{
  v7 = (*(block + 2))(block, self->_formula);
  objc_msgSend_setFormula_(self, v4, v7, v5, v6);
}

- (id)copyByRemappingHostCellAgnosticOwnerUIDsWithMap:(const void *)map rewriteContext:(TSCEFormulaRewriteContext *)context error:(BOOL *)error
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_2214432A8;
  v6[3] = &unk_2784653C0;
  v6[4] = map;
  v6[5] = error;
  return objc_msgSend_copyByRewritingWithContext_rewriteBlock_(self, a2, context, v6, error);
}

- (id)copyByConvertingBaseToChrome:(id)chrome inOwner:(id)owner inCellCoordinate:(TSUCellCoord)coordinate
{
  chromeCopy = chrome;
  ownerCopy = owner;
  v14 = objc_msgSend_rewriteType(chromeCopy, v10, v11, v12, v13);
  if (objc_msgSend_isMoveRewriteType_(TSTConvertFormulasForCategoriesByRewritingWrapper, v15, v14, v16, v17))
  {
    v22 = objc_msgSend_tableModel(ownerCopy, v18, v19, v20, v21);
    v27 = objc_msgSend_calcEngine(v22, v23, v24, v25, v26);

    v32 = objc_msgSend_tableModel(ownerCopy, v28, v29, v30, v31);
    *&v58 = coordinate;
    *(&v58 + 1) = objc_msgSend_tableUID(v32, v33, v34, v35, v36);
    v59 = v37;

    if (chromeCopy)
    {
      objc_msgSend_updatedCellRefForOriginalCellRef_(chromeCopy, v38, &v58, v39, v40);
    }

    else
    {
      v56 = 0uLL;
      v57 = 0;
    }

    sub_2212C726C(&v55, &v58, &v56);
    v42 = [TSTConvertFormulasForCategoriesByRewritingWrapper alloc];
    v45 = objc_msgSend_initWithCalcEngine_rewriteSpec_(v42, v43, v27, chromeCopy, v44);
    TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v54, v27, &v55);
    v51[0] = MEMORY[0x277D85DD0];
    v51[1] = 3321888768;
    v51[2] = sub_221443524;
    v51[3] = &unk_2834A81D0;
    v46 = v45;
    v52 = v46;
    *&v47 = sub_2212C72BC(&v53, &v55).n128_u64[0];
    v41 = objc_msgSend_copyByRewritingWithContext_rewriteBlock_(self, v48, &v54, v51, v49, v47);
  }

  else
  {
    v41 = objc_msgSend_copy(self, v18, v19, v20, v21);
  }

  return v41;
}

- (id)copyByConvertingChromeToBase:(id)base inOwner:(id)owner inCellCoordinate:(TSUCellCoord)coordinate
{
  baseCopy = base;
  ownerCopy = owner;
  v14 = objc_msgSend_rewriteType(baseCopy, v10, v11, v12, v13);
  if (objc_msgSend_isMoveRewriteType_(TSTConvertFormulasForCategoriesByRewritingWrapper, v15, v14, v16, v17))
  {
    v22 = objc_msgSend_tableModel(ownerCopy, v18, v19, v20, v21);
    v27 = objc_msgSend_calcEngine(v22, v23, v24, v25, v26);

    v32 = objc_msgSend_tableModel(ownerCopy, v28, v29, v30, v31);
    *&v58 = coordinate;
    *(&v58 + 1) = objc_msgSend_tableUID(v32, v33, v34, v35, v36);
    v59 = v37;

    if (baseCopy)
    {
      objc_msgSend_updatedCellRefForOriginalCellRef_(baseCopy, v38, &v58, v39, v40);
    }

    else
    {
      v56 = 0uLL;
      v57 = 0;
    }

    sub_2212C726C(&v55, &v58, &v56);
    v42 = [TSTConvertFormulasForCategoriesByRewritingWrapper alloc];
    v45 = objc_msgSend_initWithCalcEngine_rewriteSpec_(v42, v43, v27, baseCopy, v44);
    TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v54, v27, &v55);
    v51[0] = MEMORY[0x277D85DD0];
    v51[1] = 3321888768;
    v51[2] = sub_221443780;
    v51[3] = &unk_2834A81D0;
    v46 = v45;
    v52 = v46;
    *&v47 = sub_2212C72BC(&v53, &v55).n128_u64[0];
    v41 = objc_msgSend_copyByRewritingWithContext_rewriteBlock_(self, v48, &v54, v51, v49, v47);
  }

  else
  {
    v41 = objc_msgSend_copy(self, v18, v19, v20, v21);
  }

  return v41;
}

- (id)copyByRewritingWithSpec:(id)spec inOwner:(id)owner inCellCoordinate:(TSUCellCoord)coordinate
{
  specCopy = spec;
  ownerCopy = owner;
  v14 = objc_msgSend_rewriteType(specCopy, v10, v11, v12, v13);
  if (v14 >= 0xE)
  {
    v32 = 0;
    if (v14 > 0x12)
    {
      goto LABEL_9;
    }

    if (((1 << v14) & 0x2C000) != 0)
    {
      v33 = MEMORY[0x277D81150];
      v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "[TSTFormulaPredicate copyByRewritingWithSpec:inOwner:inCellCoordinate:]", v17, v18);
      v38 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v35, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTFormulaPredicate.mm", v36, v37);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v33, v39, v34, v38, 1912, 0, "Not implemented yet for this type");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v40, v41, v42, v43);
      v32 = 0;
      goto LABEL_9;
    }

    if (((1 << v14) & 0x50000) == 0)
    {
      goto LABEL_9;
    }
  }

  v19 = objc_msgSend_tableModel(ownerCopy, v15, v16, v17, v18);
  v24 = objc_msgSend_calcEngine(v19, v20, v21, v22, v23);

  *&v57 = coordinate;
  *(&v57 + 1) = objc_msgSend_ownerUID(ownerCopy, v25, v26, v27, v28);
  v58 = v29;
  if (specCopy)
  {
    objc_msgSend_updatedCellRefForOriginalCellRef_(specCopy, v29, &v57, v30, v31);
  }

  else
  {
    v55 = 0uLL;
    v56 = 0;
  }

  sub_2212C726C(&v54, &v57, &v55);
  TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v53, v24, &v54);
  v49[0] = MEMORY[0x277D85DD0];
  v49[1] = 3321888768;
  v49[2] = sub_221443A38;
  v49[3] = &unk_2834A8208;
  v50 = specCopy;
  v44 = v24;
  v51 = v44;
  *&v45 = sub_2212C72BC(&v52, &v54).n128_u64[0];
  v32 = objc_msgSend_copyByRewritingWithContext_rewriteBlock_(self, v46, &v53, v49, v47, v45);

LABEL_9:
  return v32;
}

- (id)copyByOffsettingRelativeReferencesWithOffset:(TSUColumnRowOffset)offset
{
  TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v9);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_221443B08;
  v8[3] = &unk_2784653E0;
  v8[4] = offset;
  return objc_msgSend_copyByRewritingWithContext_rewriteBlock_(self, v5, &v9, v8, v6);
}

- (id)copyByUpgradingToLinkedRefForTable:(const TSKUIDStruct *)table hostCell:(TSUCellCoord)cell
{
  column = cell.column;
  v9 = objc_msgSend_predicateArg1atBaseHostCoord_calcEngine_(self, a2, *&cell, 0, v4);
  v14 = v9;
  if (v9 && objc_msgSend_type(v9, v10, v11, v12, v13) == 4 && (objc_msgSend_cellRefForHostCoord_(v14, v10, *&cell, v15, v13), (v82 & 0xFFFFFFFFFFFFLL) == 0x7FFF7FFFFFFFLL) && objc_msgSend_hasRelativeCellRef(v14, v10, v16, v17, v13))
  {
    v20 = objc_msgSend_relativeCellRef(v14, v10, v18, v19, v13);
    v21 = *v20;
    v22 = *(v20 + 4);
    v23 = *(v20 + 24);
    v26 = objc_msgSend_predicateArg1atBaseHostCoord_calcEngine_(self, v24, *&cell, 0, v25);
    if (cell.row <= -v21)
    {
      row = -v21;
    }

    else
    {
      row = cell.row;
    }

    if (v21 < 0 && (v23 & 0xA) == 0)
    {
      v29 = row;
    }

    else
    {
      v29 = cell.row;
    }

    if (column <= -v22)
    {
      v30 = -v22;
    }

    else
    {
      v30 = column;
    }

    if ((((v23 & 4) == 0) & ~v23 & (v22 < 0)) != 0)
    {
      column = v30;
    }

    v14 = v26;
  }

  else
  {
    v29 = cell.row;
  }

  v31 = objc_msgSend_predicateArg2atBaseHostCoord_calcEngine_(self, v10, *&cell, 0, v13);
  v36 = v31;
  if (v31)
  {
    if (objc_msgSend_type(v31, v32, v33, v34, v35) == 4)
    {
      objc_msgSend_cellRefForHostCoord_(v36, v37, *&cell, v38, v39);
      if ((v82 & 0xFFFFFFFFFFFFLL) == 0x7FFF7FFFFFFFLL)
      {
        if (objc_msgSend_hasRelativeCellRef(v36, v40, v41, v42, v43))
        {
          v48 = objc_msgSend_relativeCellRef(v36, v44, v45, v46, v47);
          v51 = *v48;
          v52 = *(v48 + 4);
          v53 = *(v48 + 24);
          v54 = (v52 & 0x8000u) != 0;
          v55 = -v52;
          if (column > v55)
          {
            LOWORD(v55) = column;
          }

          if ((((v53 & 4) == 0) & ~v53 & v54) != 0)
          {
            column = v55;
          }

          if (v29 <= -v51)
          {
            v56 = -v51;
          }

          else
          {
            v56 = v29;
          }

          if (v51 < 0 && (v53 & 0xA) == 0)
          {
            v29 = v56;
          }

          v58 = objc_msgSend_predicateArg1atBaseHostCoord_calcEngine_(self, v49, *&cell, 0, v50);

          v61 = objc_msgSend_predicateArg2atBaseHostCoord_calcEngine_(self, v59, *&cell, 0, v60);

          v36 = v61;
          v14 = v58;
        }
      }
    }
  }

  v81 = *table;
  v62 = [TSTFormulaPredicate alloc];
  v67 = objc_msgSend_predicateType(self, v63, v64, v65, v66);
  v72 = objc_msgSend_qualifier1(self, v68, v69, v70, v71);
  v77 = objc_msgSend_qualifier2(self, v73, v74, v75, v76);
  v82 = *&cell & 0xFFFF000000000000 | (column << 32) | v29;
  v83 = v81;
  v79 = objc_msgSend_initWithPredicateType_arg1_arg2_qualifier1_qualifier2_argumentCellRef_hostCell_forConditionalStyle_(v62, v78, v67, v14, v36, v72, v77, &v82, v82, 1);

  return v79;
}

- (id)copyByUpdatingLinkedTable:(const TSKUIDStruct *)table hostCell:(TSUCellCoord)cell
{
  TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v19);
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_221443F5C;
  v14[3] = &unk_278465408;
  v14[4] = &v15;
  v14[5] = table;
  v11 = objc_msgSend_copyByRewritingWithContext_rewriteBlock_(self, v7, &v19, v14, v8);
  if ((v16[3] & 1) == 0)
  {
    v12 = objc_msgSend_copyByUpgradingToLinkedRefForTable_hostCell_(self, v9, table, *&cell, v10);

    v11 = v12;
  }

  _Block_object_dispose(&v15, 8);
  return v11;
}

- (id)copyByClearingUids:(id)uids containingTableUID:(const TSKUIDStruct *)d
{
  uidsCopy = uids;
  v15.coordinate = 0;
  v15._tableUID = *d;
  TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v16, uidsCopy, &v15);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_221444080;
  v12[3] = &unk_27845DC60;
  v7 = uidsCopy;
  v13 = v7;
  dCopy = d;
  v10 = objc_msgSend_copyByRewritingWithContext_rewriteBlock_(self, v8, &v16, v12, v9);

  return v10;
}

- (id)copyByRewritingWithContext:(TSCEFormulaRewriteContext *)context rewriteBlock:(id)block
{
  blockCopy = block;
  v11 = objc_msgSend_predArg0(self, v7, v8, v9, v10);
  v16 = objc_msgSend_predArg1(self, v12, v13, v14, v15);
  v21 = objc_msgSend_predArg2(self, v17, v18, v19, v20);
  rowUid = self->_hostCellRef._rowUid;
  columnUid = self->_hostCellRef._columnUid;
  v75 = rowUid;
  v23 = self->_hostCellRef._rowUid;
  v25 = self->_hostCellRef._columnUid;
  v24 = v23;
  tableUid = self->_hostCellRef._tableUid;
  v71 = self->_hostCellRef._columnUid;
  v72 = v23;
  v26 = self->_hostCellRef._rowUid;
  v73 = self->_hostCellRef._tableUid;
  v68 = self->_hostCellRef._columnUid;
  v69 = v26;
  v70 = self->_hostCellRef._tableUid;
  v65 = v25;
  v66 = v24;
  v67 = self->_hostCellRef._tableUid;
  if (objc_msgSend_needsFormulaRewriting(v11, v27, v28, v29, v30))
  {
    forConditionalStyle = self->_forConditionalStyle;
    v36 = objc_msgSend_useColumnRefForArg0(self, v31, v32, v33, v34);
    v38 = objc_msgSend_rewriteWithContext_forArgAt_usingLinkedRef_useColumnRef_hostCellRef_rewriteBlock_(v11, v37, context, 0, forConditionalStyle, v36, &v71, blockCopy);

    columnUid = v71;
    v75 = v72;
    tableUid = v73;
    v11 = v38;
  }

  if (objc_msgSend_needsFormulaRewriting(v16, v31, v32, v33, v34))
  {
    v43 = objc_msgSend_rewriteWithContext_forArgAt_usingLinkedRef_useColumnRef_hostCellRef_rewriteBlock_(v16, v39, context, 1, 0, 0, &v68, blockCopy);

    columnUid = v68;
    v75 = v69;
    tableUid = v70;
    v16 = v43;
  }

  if (objc_msgSend_needsFormulaRewriting(v21, v39, v40, v41, v42))
  {
    v48 = objc_msgSend_rewriteWithContext_forArgAt_usingLinkedRef_useColumnRef_hostCellRef_rewriteBlock_(v21, v44, context, 2, 0, 0, &v65, blockCopy);

    columnUid = v65;
    v75 = v66;
    tableUid = v67;
    v21 = v48;
  }

  v49 = objc_msgSend_copy(self, v44, v45, v46, v47);
  objc_msgSend_setPredArg0_(v49, v50, v11, v51, v52);
  objc_msgSend_setPredArg1_(v49, v53, v16, v54, v55);
  objc_msgSend_setPredArg2_(v49, v56, v21, v57, v58);
  v59 = v75;
  v49[4] = columnUid;
  v49[5] = v59;
  v49[6] = tableUid;
  objc_msgSend_recreateFormula(v49, v60, v61, v62, v63);

  return v49;
}

- (void)upgradeTopAndBottom
{
  if (!self->_predArg0)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTFormulaPredicate upgradeTopAndBottom]", v3, v4);
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTFormulaPredicate.mm", v9, v10);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v12, v7, v11, 2073, 0, "invalid nil value for '%{public}s'", "_predArg0");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14, v15, v16);
  }

  predicateType = self->_predicateType;
  v18 = predicateType > 0x31;
  v19 = (1 << predicateType) & 0x30000C0000000;
  v20 = v18 || v19 == 0;
  if (!v20 && *(objc_msgSend_const_astNodeArray(self->_formula, a2, v2, v3, v4) + 8) == 41)
  {

    objc_msgSend_recreateFormula(self, v21, v22, v23, v24);
  }
}

- (id)downgradeForPrePivotFormatForLocale:(id)locale
{
  v6 = objc_msgSend_predicateType(self, a2, locale, v3, v4);
  if ((v6 - 57) > 1)
  {
    v30 = 0;
  }

  else
  {
    if (v6 == 57)
    {
      v11 = 7;
    }

    else
    {
      v11 = 9;
    }

    v12 = objc_msgSend_predArg0(self, v7, v8, v9, v10);
    v17 = objc_msgSend_copy(v12, v13, v14, v15, v16);

    v18 = [TSTFormulaPredArg alloc];
    v23 = objc_msgSend_initWithDouble_(v18, v19, v20, v21, v22, 0.0);
    v24 = [TSTFormulaPredicate alloc];
    v32 = objc_msgSend_forConditionalStyle(self, v25, v26, v27, v28);
    v30 = objc_msgSend_initWithPredicateType_arg0_arg1_arg2_qualifier1_qualifier2_forConditionalStyle_(v24, v29, v11, v17, v23, 0, 0, 0, v32);
  }

  return v30;
}

- (void)encodeToPrePivotArchive:(void *)archive archiver:(id)archiver encodingForSOS:(BOOL)s
{
  sCopy = s;
  archiverCopy = archiver;
  if (((objc_msgSend_backwardCompatiblePrePivot(self, v8, v9, v10, v11) | sCopy) & 1) == 0)
  {
    v15 = MEMORY[0x277D81150];
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[TSTFormulaPredicate encodeToPrePivotArchive:archiver:encodingForSOS:]", v13, v14);
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTFormulaPredicate.mm", v18, v19);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v21, v16, v20, 2166, 0, "We need to be backward compatible to use this archiving method");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25);
  }

  formula = self->_formula;
  *(archive + 4) |= 1u;
  v27 = *(archive + 3);
  if (!v27)
  {
    v28 = *(archive + 1);
    if (v28)
    {
      v28 = *(v28 & 0xFFFFFFFFFFFFFFFELL);
    }

    v27 = google::protobuf::Arena::CreateMaybeMessage<TSCE::FormulaArchive>(v28);
    *(archive + 3) = v27;
  }

  v29 = objc_msgSend_encodeToArchive_archiver_(formula, v12, v27, archiverCopy, v14);
  v32 = *(archive + 4);
  qualifier1 = self->_qualifier1;
  *(archive + 8) = self->_predicateType;
  *(archive + 9) = qualifier1;
  argIndex1 = self->_argIndex1;
  *(archive + 10) = self->_qualifier2;
  *(archive + 11) = argIndex1;
  argIndex0 = self->_argIndex0;
  argIndex2 = self->_argIndex2;
  *(archive + 4) = v32 | 0x7E;
  *(archive + 12) = argIndex2;
  *(archive + 13) = argIndex0;
  if ((v29 & 6) != 0)
  {
    objc_msgSend_requiresDocumentVersion_featureIdentifier_(archiverCopy, v30, 0x300020000000ALL, @"TSTCategorizedTables", v31);
  }
}

- (id)initFromPrePivotArchive:(const void *)archive
{
  v6 = objc_msgSend_init(self, a2, archive, v3, v4);
  v11 = v6;
  if (v6)
  {
    v12 = *(archive + 9);
    *(v6 + 16) = *(archive + 8);
    *(v6 + 17) = v12;
    v13 = *(archive + 11);
    *(v6 + 18) = *(archive + 10);
    v14 = *(archive + 12);
    *(v6 + 20) = *(archive + 13);
    *(v6 + 22) = v13;
    *(v6 + 24) = v14;
    if (*(archive + 16))
    {
      v15 = [TSCEFormulaObject alloc];
      if (*(archive + 3))
      {
        isPreUFF = objc_msgSend_initWithArchive_isPreUFF_(v15, v16, *(archive + 3), 0, v17);
      }

      else
      {
        isPreUFF = objc_msgSend_initWithArchive_isPreUFF_(v15, v16, &TSCE::_FormulaArchive_default_instance_, 0, v17);
      }

      v19 = *(v11 + 8);
      *(v11 + 8) = isPreUFF;

      v24 = *(v11 + 8);
      if (!v24)
      {

        return 0;
      }

      if (objc_msgSend_hasHostCell(v24, v20, v21, v22, v23))
      {
        v25 = objc_msgSend_hostColumnUID(*(v11 + 8), v7, v8, v9, v10);
        v30 = objc_msgSend_hostRowUID(*(v11 + 8), v26, v27, v28, v29);
        v35 = objc_msgSend_hostTableUID(*(v11 + 8), v31, v32, v33, v34);
        v36 = *v25;
        v37 = *v35;
        *(v11 + 80) = *v30;
        *(v11 + 96) = v37;
        *(v11 + 64) = v36;
      }
    }

    objc_msgSend_p_populateMembersFromFormula(v11, v7, v8, v9, v10);
    objc_msgSend_upgradeTopAndBottom(v11, v38, v39, v40, v41);
  }

  return v11;
}

- (void)encodeToArchive:(void *)archive archiver:(id)archiver
{
  archiverCopy = archiver;
  formula = self->_formula;
  *(archive + 4) |= 8u;
  v10 = *(archive + 6);
  if (!v10)
  {
    v11 = *(archive + 1);
    if (v11)
    {
      v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
    }

    v10 = google::protobuf::Arena::CreateMaybeMessage<TSCE::FormulaArchive>(v11);
    *(archive + 6) = v10;
  }

  v16 = objc_msgSend_encodeToArchive_archiver_(formula, v6, v10, archiverCopy, v7);
  v17 = *(archive + 4);
  qualifier1 = self->_qualifier1;
  *(archive + 20) = self->_predicateType;
  *(archive + 21) = qualifier1;
  *(archive + 22) = self->_qualifier2;
  forConditionalStyle = self->_forConditionalStyle;
  *(archive + 4) = v17 | 0x780;
  *(archive + 92) = forConditionalStyle;
  predArg0 = self->_predArg0;
  if (predArg0)
  {
    *(archive + 4) = v17 | 0x781;
    v21 = *(archive + 3);
    if (!v21)
    {
      v22 = *(archive + 1);
      if (v22)
      {
        v22 = *(v22 & 0xFFFFFFFFFFFFFFFELL);
      }

      v21 = google::protobuf::Arena::CreateMaybeMessage<TST::FormulaPredArgArchive>(v22);
      *(archive + 3) = v21;
    }

    objc_msgSend_encodeToArchive_archiver_(predArg0, v12, v21, archiverCopy, v15);
  }

  predArg1 = self->_predArg1;
  if (predArg1)
  {
    *(archive + 4) |= 2u;
    v24 = *(archive + 4);
    if (!v24)
    {
      v25 = *(archive + 1);
      if (v25)
      {
        v25 = *(v25 & 0xFFFFFFFFFFFFFFFELL);
      }

      v24 = google::protobuf::Arena::CreateMaybeMessage<TST::FormulaPredArgArchive>(v25);
      *(archive + 4) = v24;
    }

    objc_msgSend_encodeToArchive_archiver_(predArg1, v12, v24, archiverCopy, v15);
  }

  predArg2 = self->_predArg2;
  if (predArg2)
  {
    *(archive + 4) |= 4u;
    v27 = *(archive + 5);
    if (!v27)
    {
      v28 = *(archive + 1);
      if (v28)
      {
        v28 = *(v28 & 0xFFFFFFFFFFFFFFFELL);
      }

      v27 = google::protobuf::Arena::CreateMaybeMessage<TST::FormulaPredArgArchive>(v28);
      *(archive + 5) = v27;
    }

    objc_msgSend_encodeToArchive_archiver_(predArg2, v12, v27, archiverCopy, v15);
  }

  if ((self->_hostCellRef._columnUid._lower || self->_hostCellRef._columnUid._upper) && (self->_hostCellRef._rowUid._lower || self->_hostCellRef._rowUid._upper))
  {
    tableUid = self->_hostCellRef._tableUid;
    columnUid = self->_hostCellRef._columnUid;
    v44 = tableUid;
    rowUid = self->_hostCellRef._rowUid;
    if (tableUid != 0uLL)
    {
      *(archive + 4) |= 0x10u;
      v30 = *(archive + 7);
      if (!v30)
      {
        v31 = *(archive + 1);
        if (v31)
        {
          v31 = *(v31 & 0xFFFFFFFFFFFFFFFELL);
        }

        v30 = MEMORY[0x223DA0360](v31);
        *(archive + 7) = v30;
      }

      TSKUIDStruct::saveToMessage(&v44, v30);
    }

    if (columnUid != 0uLL)
    {
      *(archive + 4) |= 0x20u;
      v32 = *(archive + 8);
      if (!v32)
      {
        v33 = *(archive + 1);
        if (v33)
        {
          v33 = *(v33 & 0xFFFFFFFFFFFFFFFELL);
        }

        v32 = MEMORY[0x223DA0360](v33);
        *(archive + 8) = v32;
      }

      TSKUIDStruct::saveToMessage(&columnUid, v32);
    }

    if (rowUid != 0uLL)
    {
      *(archive + 4) |= 0x40u;
      v34 = *(archive + 9);
      if (!v34)
      {
        v35 = *(archive + 1);
        if (v35)
        {
          v35 = *(v35 & 0xFFFFFFFFFFFFFFFELL);
        }

        v34 = MEMORY[0x223DA0360](v35);
        *(archive + 9) = v34;
      }

      TSKUIDStruct::saveToMessage(&rowUid, v34);
    }
  }

  if ((v16 & 6) != 0)
  {
    objc_msgSend_requiresDocumentVersion_featureIdentifier_(archiverCopy, v12, 0x300020000000ALL, @"TSTCategorizedTables", v15);
  }

  if ((objc_msgSend_backwardCompatiblePrePivot(self, v12, v13, v14, v15, rowUid) & 1) == 0 && (objc_msgSend_canDowngradeForPrePivotFormat(self, v36, v37, v38, v39) & 1) == 0)
  {
    objc_msgSend_requiresDocumentVersion_featureIdentifier_(archiverCopy, v40, 0xB000200000006, @"TSTPivotTables", v41);
  }
}

- (id)initFromArchive:(const void *)archive
{
  v8 = objc_msgSend_init(self, a2, archive, v3, v4);
  v13 = v8;
  if (v8)
  {
    v14 = *(archive + 21);
    v8[16] = *(archive + 20);
    v8[17] = v14;
    v8[18] = *(archive + 22);
    v15 = *(archive + 4);
    if ((v15 & 0x400) != 0)
    {
      v8[56] = *(archive + 92);
    }

    if (v15)
    {
      v16 = [TSTFormulaPredArg alloc];
      if (*(archive + 3))
      {
        v20 = objc_msgSend_initFromArchive_(v16, v17, *(archive + 3), v18, v19);
      }

      else
      {
        v20 = objc_msgSend_initFromArchive_(v16, v17, &TST::_FormulaPredArgArchive_default_instance_, v18, v19);
      }

      v21 = v13[4];
      v13[4] = v20;

      v15 = *(archive + 4);
    }

    if ((v15 & 2) != 0)
    {
      v22 = [TSTFormulaPredArg alloc];
      if (*(archive + 4))
      {
        v26 = objc_msgSend_initFromArchive_(v22, v23, *(archive + 4), v24, v25);
      }

      else
      {
        v26 = objc_msgSend_initFromArchive_(v22, v23, &TST::_FormulaPredArgArchive_default_instance_, v24, v25);
      }

      v27 = v13[5];
      v13[5] = v26;

      v15 = *(archive + 4);
    }

    if ((v15 & 4) != 0)
    {
      v28 = [TSTFormulaPredArg alloc];
      if (*(archive + 5))
      {
        v32 = objc_msgSend_initFromArchive_(v28, v29, *(archive + 5), v30, v31);
      }

      else
      {
        v32 = objc_msgSend_initFromArchive_(v28, v29, &TST::_FormulaPredArgArchive_default_instance_, v30, v31);
      }

      v33 = v13[6];
      v13[6] = v32;
    }

    if (!v13[4])
    {
      v6 = MEMORY[0x277D81150];
      v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSTFormulaPredicate initFromArchive:]", v11, v12);
      v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v34, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTFormulaPredicate.mm", v35, v36);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v38, v5, v37, 2286, 0, "Have to have archived the _predArg0 argument for upgraded archive format");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v39, v40, v41, v42);
    }

    v43 = *(archive + 4);
    if ((v43 & 8) != 0)
    {
      v44 = [TSCEFormulaObject alloc];
      if (*(archive + 6))
      {
        isPreUFF = objc_msgSend_initWithArchive_isPreUFF_(v44, v45, *(archive + 6), 0, v46);
      }

      else
      {
        isPreUFF = objc_msgSend_initWithArchive_isPreUFF_(v44, v45, &TSCE::_FormulaArchive_default_instance_, 0, v46);
      }

      v48 = v13[1];
      v13[1] = isPreUFF;

      v43 = *(archive + 4);
    }

    if ((v43 & 0x20) != 0 && (v43 & 0x40) != 0)
    {
      if ((v43 & 0x10) != 0)
      {
        v5 = TSKUIDStruct::loadFromMessage(*(archive + 7), v9);
        v6 = v9;
      }

      v49 = MEMORY[0x277D809E0];
      if (*(archive + 8))
      {
        v50 = *(archive + 8);
      }

      else
      {
        v50 = MEMORY[0x277D809E0];
      }

      v52 = TSKUIDStruct::loadFromMessage(v50, v9);
      v53 = v51;
      if (*(archive + 9))
      {
        v54 = *(archive + 9);
      }

      else
      {
        v54 = v49;
      }

      v55 = TSKUIDStruct::loadFromMessage(v54, v51);
      v13[8] = v52;
      v13[9] = v53;
      v13[10] = v55;
      v13[11] = v9;
      v13[12] = v5;
      v13[13] = v6;
    }

    if (v13[4])
    {
      objc_msgSend_recreateFormula(v13, v9, v10, v11, v12);
    }
  }

  return v13;
}

- (unsigned)expectedArgTypeForPredicateType:(unsigned __int8)type firstArg:(BOOL)arg
{
  if (arg)
  {
    if ((type - 1) >= 0x3E)
    {
      return 0;
    }

    else
    {
      return byte_2217E1C7B[(type - 1)];
    }
  }

  else
  {
    if (type == 23)
    {
      v5 = 2;
    }

    else
    {
      v5 = 0;
    }

    if (((1 << type) & 0x300000000000) != 0)
    {
      v5 = 5;
    }

    if (((1 << type) & 0x120002000) != 0)
    {
      v5 = 1;
    }

    if (type <= 0x2Du)
    {
      return v5;
    }

    else
    {
      return 0;
    }
  }
}

- (TSCEUidCellRef)hostCellRef
{
  tableUid = self[1]._tableUid;
  retstr->_columnUid = self[1]._rowUid;
  retstr->_rowUid = tableUid;
  retstr->_tableUid = self[2]._columnUid;
  return self;
}

- (void)setHostCellRef:(TSCEUidCellRef *)ref
{
  columnUid = ref->_columnUid;
  tableUid = ref->_tableUid;
  self->_hostCellRef._rowUid = ref->_rowUid;
  self->_hostCellRef._tableUid = tableUid;
  self->_hostCellRef._columnUid = columnUid;
}

- (id).cxx_construct
{
  *(self + 5) = 0u;
  *(self + 6) = 0u;
  *(self + 4) = 0u;
  return self;
}

@end