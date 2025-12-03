@interface TSCEFormulaObject
+ (id)formulaResultForFormattedValue:(id)value context:(id)context suppressCycleCheck:(BOOL)check formatAsPercent:(BOOL)percent;
+ (id)formulaResultForFormattedValueWithKnownCycleState:(id)state context:(id)context isInACycle:(BOOL)cycle outErrorIsDueToCycle:(BOOL *)toCycle formatAsPercent:(BOOL)percent;
+ (id)parseFormula:(id)formula calcEngine:(id)engine containingCellRef:(const TSCECellRef *)ref parseOptionsContext:(id)context;
+ (id)parseFormula:(id)formula calcEngine:(id)engine hostTableInfo:(id)info containingCellRef:(const TSCECellRef *)ref parseOptionsContext:(id)context;
- (BOOL)containsColons;
- (BOOL)containsInvalidRef;
- (BOOL)hasBadRefWithUidInfo;
- (BOOL)hasHostCell;
- (BOOL)hasUidTracts;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToFormula:(id)formula;
- (BOOL)isEquivalentToFormula:(id)formula context:(unint64_t)context thisContainingCell:(TSCECellRef *)cell thatContainingCell:(TSCECellRef *)containingCell;
- (BOOL)isSpillFormula;
- (BOOL)isSpillFormulaForOriginCell:(const TSUCellCoord *)cell;
- (BOOL)usesFunctionsWithDateArgs;
- (TSCEFormulaObject)initWithArchive:(const void *)archive isPreUFF:(BOOL)f;
- (TSCEFormulaObject)initWithCreator:(TSCEFormulaCreator)creator;
- (TSCEFormulaObject)initWithCreator:(TSCEFormulaCreator)creator argInfo:(TSCEASTNodeArgInfo *)info translationFlags:(TSCEFormulaTranslationFlags)flags;
- (TSCEFormulaObject)initWithCreator:(TSCEFormulaCreator)creator translationFlags:(TSCEFormulaTranslationFlags)flags;
- (TSCEFormulaObject)initWithNodeArray:(const TSCEASTNodeArray *)array translationFlags:(TSCEFormulaTranslationFlags)flags;
- (TSCEFormulaObject)initWithNodeArray:(const TSCEASTNodeArray *)array translationFlags:(TSCEFormulaTranslationFlags)flags hostTableUID:(const TSKUIDStruct *)d hostColumnUID:(const TSKUIDStruct *)iD hostRowUID:(const TSKUIDStruct *)uID;
- (TSUCellCoord)spillOrigin;
- (id)copyByAddingTranslationFlags:(unsigned __int8)flags;
- (id)copyByClearingHostCell;
- (id)copyByClearingUids:(id)uids containingTableUID:(const TSKUIDStruct *)d;
- (id)copyByConvertingColonToColonTract:(TSCEFormulaRewriteContext *)tract;
- (id)copyByConvertingColonTractToColon:(TSCEFormulaRewriteContext *)colon breakUpIntoRefs:(BOOL)refs;
- (id)copyByForceSettingOwnerUIDs:(const TSKUIDStruct *)ds calcEngine:(id)engine;
- (id)copyByFreezingRefs:(id)refs containingCell:(const TSCEFormulaContainingCell *)cell;
- (id)copyByMakingAllCategoryRefsIndirect:(TSCEFormulaRewriteContext *)indirect;
- (id)copyByOffsettingRelativeReferences:(TSUColumnRowOffset)references;
- (id)copyByOffsettingRelativeReferences:(id)references oldContainingCell:(const TSCECellRef *)cell newContainingTable:(const TSKUIDStruct *)table offset:(TSUColumnRowOffset)offset;
- (id)copyByRemappingHostCellAgnosticOwnerUIDs:(const void *)ds rewriteContext:(TSCEFormulaRewriteContext *)context outError:(BOOL *)error;
- (id)copyByRemappingOwnerUIDs:(const void *)ds rewriteContext:(TSCEFormulaRewriteContext *)context outBadRefFound:(BOOL *)found;
- (id)copyByRemappingUids:(const void *)uids rowMap:(const void *)map ownerMap:(const void *)ownerMap clearIfMissing:(BOOL)missing;
- (id)copyByRemovingNumberToDateCoercion:(id)coercion;
- (id)copyByRemovingTranslationFlags:(unsigned __int8)flags;
- (id)copyByRepairingBadReferences:(TSCEFormulaRewriteContext *)references clearUidHistory:(BOOL)history;
- (id)copyByRepairingMissingThunks:(TSCEFormulaRewriteContext *)thunks;
- (id)copyByRewritingForExcelImport:(id)import outFormulaReplacedForExcelCompatWarning:(BOOL *)warning functionNameReplacedForExcelCompat:(id *)compat formulaFormatFromCell:(unsigned int)cell;
- (id)copyByRewritingForSageExport:(id)export targetDocumentSupportsCrossTableReferences:(BOOL)references outshouldBakeWholeFormula:(BOOL *)formula outFeaturesUsed:(char *)used;
- (id)copyByRewritingForSageImport:(id)import containingCell:(const TSCECellRef *)cell;
- (id)copyByRewritingForTranspose:(id)transpose calcEngine:(id)engine containingCell:(const TSCEFormulaContainingCell *)cell outTransposeWarning:(BOOL *)warning;
- (id)copyByRewritingGroupUid:(const TSKUIDStruct *)uid groupByUID:(const TSKUIDStruct *)d;
- (id)copyByRewritingNumberToDurationForSageImport:(const TSCECellRef *)import durationUnitLargest:(unsigned __int8)largest;
- (id)copyByRewritingReferencesToGeometricForm:(TSCEFormulaRewriteContext *)form;
- (id)copyByRewritingReferencesToUidForm:(TSCEFormulaRewriteContext *)form;
- (id)copyByRewritingWithSpec:(id)spec calcEngine:(id)engine containingCell:(const TSCEFormulaContainingCell *)cell;
- (id)copyBySettingHostTableUID:(const TSKUIDStruct *)d hostColumnUID:(const TSKUIDStruct *)iD hostRowUID:(const TSKUIDStruct *)uID;
- (id)copyBySettingTranslationFlags:(TSCEFormulaTranslationFlags)flags;
- (id)copyByThawingRefs:(id)refs containingCell:(const TSCEFormulaContainingCell *)cell;
- (id)copyByUpdatingLinkedTable:(const TSKUIDStruct *)table outfoundLinkedRef:(BOOL *)ref;
- (id)copyByUpgradingToArrayMode:(TSCEFormulaRewriteContext *)mode isExcelImport:(BOOL)import outArrayModeWarning:(BOOL *)warning;
- (id)evaluateForPartialResultsWithContext:(id)context;
- (id)evaluateWithContext:(id)context;
- (id)evaluateWithContext:(id)context isInACycle:(BOOL)cycle outErrorIsDueToCycle:(BOOL *)toCycle;
- (id)evaluateWithContextGridResult:(id)result;
- (id)formulaNodeTreeForExcelExport:(id)export;
- (id)hostedDescriptionAtCell:(const TSCECellRef *)cell calcEngine:(id)engine;
- (id)hostedDescriptionAtCell:(const TSCECellRef *)cell calcEngine:(id)engine hideUids:(BOOL)uids;
- (id)sageFormulaStringForContainingCell:(const TSCECellRef *)cell outHasSageUnsupportedFunctions:(BOOL *)functions;
- (unint64_t)hash;
- (unsigned)encodeToArchive:(void *)archive archiver:(id)archiver;
- (void)appendExternalTableUIDs:(void *)ds groupByUIDs:(void *)iDs;
- (void)dealloc;
- (void)getPrecedents:(void *)precedents calcEngine:(id)engine hostCell:(const TSCECellRef *)cell allowImplicitIntersection:(BOOL)intersection returnUidReferences:(BOOL)references;
@end

@implementation TSCEFormulaObject

- (void)dealloc
{
  TSCEASTNodeArray::freeNodeArray(self->_astNodeArray, a2);
  v3.receiver = self;
  v3.super_class = TSCEFormulaObject;
  [(TSCEFormulaObject *)&v3 dealloc];
}

- (TSCEFormulaObject)initWithNodeArray:(const TSCEASTNodeArray *)array translationFlags:(TSCEFormulaTranslationFlags)flags hostTableUID:(const TSKUIDStruct *)d hostColumnUID:(const TSKUIDStruct *)iD hostRowUID:(const TSKUIDStruct *)uID
{
  v10 = objc_msgSend_initWithNodeArray_translationFlags_(self, a2, array, flags._flags, d);
  v14 = v10;
  if (v10)
  {
    if ((*(v10 + 16) & 0x20) == 0)
    {
      v15 = MEMORY[0x277D81150];
      v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSCEFormulaObject initWithNodeArray:translationFlags:hostTableUID:hostColumnUID:hostRowUID:]", v12, v13);
      v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulaObject.mm", v18, v19);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v21, v16, v20, 185, 0, "Can only set hostCellUID on uid-form formula");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25);
    }

    v14->_hostTableUID = *d;
    v14->_hostColumnUID = *iD;
    v14->_hostRowUID = *uID;
  }

  return v14;
}

- (TSCEFormulaObject)initWithNodeArray:(const TSCEASTNodeArray *)array translationFlags:(TSCEFormulaTranslationFlags)flags
{
  v9.receiver = self;
  v9.super_class = TSCEFormulaObject;
  v7 = [(TSCEFormulaObject *)&v9 init];
  if (v7)
  {
    v7->_astNodeArray = TSCEASTNodeArray::copyNodeArray(array, v6);
    v7->_translationFlags = flags;
    v7->_hostTableUID = 0u;
    v7->_hostColumnUID = 0u;
    v7->_hostRowUID = 0u;
  }

  return v7;
}

- (TSCEFormulaObject)initWithCreator:(TSCEFormulaCreator)creator argInfo:(TSCEASTNodeArgInfo *)info translationFlags:(TSCEFormulaTranslationFlags)flags
{
  v8.receiver = self;
  v8.super_class = TSCEFormulaObject;
  v6 = [(TSCEFormulaObject *)&v8 init];
  if (v6)
  {
    v6->_translationFlags = flags;
    v6->_hostTableUID = 0u;
    v6->_hostColumnUID = 0u;
    v6->_hostRowUID = 0u;
    __C();
  }

  return 0;
}

- (TSCEFormulaObject)initWithCreator:(TSCEFormulaCreator)creator translationFlags:(TSCEFormulaTranslationFlags)flags
{
  TSCEASTNodeArgInfo::TSCEASTNodeArgInfo(&v11);
  TSCEFormulaCreator::TSCEFormulaCreator(&v10, creator.var0);
  v8 = objc_msgSend_initWithCreator_argInfo_translationFlags_(self, v7, &v10, &v11, flags._flags);

  return v8;
}

- (TSCEFormulaObject)initWithCreator:(TSCEFormulaCreator)creator
{
  TSCEASTNodeArgInfo::TSCEASTNodeArgInfo(&v9);
  TSCEFormulaCreator::TSCEFormulaCreator(&v8, creator.var0);
  v6 = objc_msgSend_initWithCreator_argInfo_translationFlags_(self, v5, &v8, &v9, 0);

  return v6;
}

- (TSCEFormulaObject)initWithArchive:(const void *)archive isPreUFF:(BOOL)f
{
  fCopy = f;
  v21.receiver = self;
  v21.super_class = TSCEFormulaObject;
  v6 = [(TSCEFormulaObject *)&v21 init];
  v7 = v6;
  if (v6)
  {
    v6->_translationFlags._flags = 0;
    v6->_hostTableUID = 0u;
    v6->_hostColumnUID = 0u;
    v6->_hostRowUID = 0u;
    v20 = 0;
    v19 = 0;
    v8 = *(archive + 4);
    if ((~v8 & 0x60) == 0)
    {
      v19 = (*(archive + 73) << 48) | (*(archive + 72) << 56) | (*(archive + 32) << 32) | *(archive + 17);
    }

    if (fCopy)
    {
      v6->_translationFlags._flags = 4;
    }

    else if ((v8 & 2) != 0)
    {
      TSCE::FormulaTranslationFlagsArchive::FormulaTranslationFlagsArchive(&v18, *(archive + 4));
      if (LOBYTE(v18.var2.var0.var0._tableUID._lower))
      {
        v9 = 2;
      }

      else
      {
        v9 = 0;
      }

      if (BYTE1(v18.var2.var0.var0._tableUID._lower))
      {
        v10 = 4;
      }

      else
      {
        v10 = 0;
      }

      v11 = v10 | v9;
      if (BYTE2(v18.var2.var0.var0._tableUID._lower))
      {
        v12 = 32;
      }

      else
      {
        v12 = 0;
      }

      v13 = v11 | v12;
      if (BYTE3(v18.var2.var0.var0._tableUID._lower))
      {
        v14 = 0x80;
      }

      else
      {
        v14 = 0;
      }

      v15 = v13 | v14;
      if (BYTE4(v18.var2.var0.var0._tableUID._lower))
      {
        v16 = 8;
      }

      else
      {
        v16 = 0;
      }

      v7->_translationFlags._flags = v15 | v16 | v7->_translationFlags._flags & 0x51;
      TSCE::FormulaTranslationFlagsArchive::~FormulaTranslationFlagsArchive(&v18);
    }

    sub_2215C8740();
  }

  return 0;
}

- (BOOL)hasHostCell
{
  if (!self->_hostColumnUID._lower && !self->_hostColumnUID._upper)
  {
    return 0;
  }

  if (self->_hostRowUID._lower)
  {
    return 1;
  }

  return self->_hostRowUID._upper != 0;
}

- (BOOL)containsColons
{
  astNodeArray = self->_astNodeArray;
  if (astNodeArray)
  {
    if (TSCEASTNodeArray::containsTag(astNodeArray, 0x1Cu))
    {
      LOBYTE(astNodeArray) = 1;
    }

    else
    {
      v4 = self->_astNodeArray;

      LOBYTE(astNodeArray) = TSCEASTNodeArray::containsTag(v4, 0x2Du);
    }
  }

  return astNodeArray;
}

- (BOOL)containsInvalidRef
{
  astNodeArray = self->_astNodeArray;
  if (astNodeArray)
  {
    LOBYTE(astNodeArray) = TSCEASTNodeArray::containsTag(astNodeArray, 0x1Du);
  }

  return astNodeArray;
}

- (BOOL)hasBadRefWithUidInfo
{
  TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v12);
  TSCEASTStreamIterator::TSCEASTStreamIterator(v9, self->_astNodeArray, &v12);
  v9[0] = &unk_2834A4F90;
  v11 = 0;
  v10 = 1;
  TSCEASTStreamIterator::rewrite(v9, v3, v4, v5, v6);
  LOBYTE(self) = v11;
  TSCEASTStreamIterator::~TSCEASTStreamIterator(v9, v7);
  return self;
}

- (void)appendExternalTableUIDs:(void *)ds groupByUIDs:(void *)iDs
{
  TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v16);
  v7 = sub_22130ABA8(v11, self->_astNodeArray, &v16);
  (*(v11[0] + 48))(v11, v7);
  for (i = v13; i; i = *i)
  {
    sub_2210C2B00(ds, i + 2);
  }

  for (j = v15; j; j = *j)
  {
    sub_2210C2B00(iDs, j + 2);
  }

  v11[0] = &unk_2834A49B0;
  sub_2210BDEC0(&v14);
  sub_2210BDEC0(&v12);
  TSCEASTStreamIterator::~TSCEASTStreamIterator(v11, v10);
}

- (BOOL)usesFunctionsWithDateArgs
{
  TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v7);
  sub_2214AB81C(v5, self->_astNodeArray, &v7);
  (*(v5[0] + 48))(v5);
  LOBYTE(self) = v6;
  TSCEASTStreamIterator::~TSCEASTStreamIterator(v5, v3);
  return self;
}

- (BOOL)hasUidTracts
{
  TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v7);
  sub_2214180A4(v5, self->_astNodeArray, &v7);
  (*(v5[0] + 48))(v5);
  LOBYTE(self) = v6;
  TSCEASTStreamIterator::~TSCEASTStreamIterator(v5, v3);
  return self;
}

- (unint64_t)hash
{
  result = self->_hash;
  if (!result)
  {
    result = self->_astNodeArray;
    if (result)
    {
      result = TSCEASTNodeArray::hash(result) ^ (self->_translationFlags._flags >> 1) & 7;
      self->_hash = result;
    }
  }

  return result;
}

+ (id)formulaResultForFormattedValueWithKnownCycleState:(id)state context:(id)context isInACycle:(BOOL)cycle outErrorIsDueToCycle:(BOOL *)toCycle formatAsPercent:(BOOL)percent
{
  percentCopy = percent;
  stateCopy = state;
  contextCopy = context;
  if (cycle)
  {
    v14 = objc_msgSend_formulaResultForFormattedValue_context_suppressCycleCheck_formatAsPercent_(TSCEFormulaObject, v12, stateCopy, contextCopy, 1, percentCopy);
    v18 = objc_msgSend_errorWithContext_(v14, v15, contextCopy, v16, v17);
    v23 = v18;
    if (v18 && objc_msgSend_errorType(v18, v19, v20, v21, v22) == 143)
    {
      v24 = objc_msgSend_errorValue_(TSCEErrorValue, v19, v23, v21, v22);
    }

    else
    {
      if (toCycle)
      {
        if (objc_msgSend_deepType_(v14, v19, contextCopy, v21, v22) == 9)
        {
          isCircularReferenceError = objc_msgSend_isCircularReferenceError(v23, v19, v20, v21, v22);
        }

        else
        {
          isCircularReferenceError = 1;
        }

        *toCycle = isCircularReferenceError;
      }

      v26 = objc_msgSend_circularReferenceError(TSCEError, v19, v20, v21, v22);
      v24 = objc_msgSend_errorValue_(TSCEErrorValue, v27, v26, v28, v29);
    }
  }

  else
  {
    v24 = objc_msgSend_formulaResultForFormattedValue_context_suppressCycleCheck_formatAsPercent_(TSCEFormulaObject, v12, stateCopy, contextCopy, 1, percentCopy);
  }

  return v24;
}

+ (id)formulaResultForFormattedValue:(id)value context:(id)context suppressCycleCheck:(BOOL)check formatAsPercent:(BOOL)percent
{
  percentCopy = percent;
  valueCopy = value;
  contextCopy = context;
  v15 = valueCopy;
  if (qword_27CFB52C0 != -1)
  {
    sub_2216F7484();
  }

  v20 = objc_msgSend_nativeType(v15, v11, v12, v13, v14);
  v21 = v15;
  if (v20 == 6)
  {
    v22 = objc_msgSend_asReferenceValue(v15, v16, v17, v18, v19);
    v27 = v22;
    if (v22)
    {
      if (objc_msgSend_isOutputOfAFunction(v22, v23, v24, v25, v26))
      {
        objc_msgSend_anyRef(v27, v28, v29, v30, v31);
        objc_msgSend_addCalculatedPrecedent_(contextCopy, v32, v175, v33, v34);
      }

      v35 = objc_msgSend_referredToValue_fetchRichTextAttributesIfPlainText_(v27, v28, contextCopy, 1, v31);

      v20 = objc_msgSend_nativeType(v35, v36, v37, v38, v39);
    }

    else
    {
      v20 = 6;
      v35 = v15;
    }

    v21 = v35;
  }

  if (v20 != 1)
  {
    v73 = v21;
LABEL_20:
    if (v20 == 6)
    {
      v74 = objc_msgSend_asReferenceValue(v73, v16, v17, v18, v19);
      v79 = v74;
      if (v74)
      {
        if (objc_msgSend_isOutputOfAFunction(v74, v75, v76, v77, v78))
        {
          objc_msgSend_anyRef(v79, v80, v81, v82, v83);
          objc_msgSend_addCalculatedPrecedent_(contextCopy, v84, v175, v85, v86);
        }

        v87 = objc_msgSend_referredToValue_fetchRichTextAttributesIfPlainText_(v79, v80, contextCopy, 1, v83);

        LOBYTE(v20) = objc_msgSend_nativeType(v87, v88, v89, v90, v91);
        v73 = v87;
      }

      else
      {
        LOBYTE(v20) = 6;
      }
    }

    v21 = v73;
    if (v20 <= 0xFu)
    {
      if (v20)
      {
        if (v20 == 5)
        {
          v173 = 0;
          v116 = objc_msgSend_asNumber_outError_(v73, v16, contextCopy, &v173, v19);
          v117 = v173;
          v174._decimal.w[0] = objc_msgSend_decimalRepresentation(v116, v118, v119, v120, v121);
          v174._decimal.w[1] = v122;

          if (v117)
          {
            v72 = objc_msgSend_raiseErrorOrConvert_(contextCopy, v123, v117, v124, v125);
          }

          else
          {
            if ((TSUDecimal::isNaN(&v174) & 1) == 0 && !TSUDecimal::isInf(&v174))
            {
              if (percentCopy)
              {
                TSCEFormat::TSCEFormat(&v172, qword_27CFB52B8, 0);
                TSCEFormat::TSCEFormat(v175, &v172);
                objc_msgSend_setFormat_(v21, v168, v175, v169, v170);
              }

              goto LABEL_14;
            }

            v157 = objc_msgSend_numberError(TSCEError, v16, v17, v18, v19);
            v72 = objc_msgSend_raiseErrorOrConvert_(contextCopy, v158, v157, v159, v160);
          }

          goto LABEL_61;
        }
      }

      else if (percentCopy)
      {
        v146 = [TSCENumberValue alloc];
        TSUDecimal::operator=();
        TSCEFormat::TSCEFormat(v175, qword_27CFB52B8, 0);
        v43 = objc_msgSend_initWithDecimal_format_(v146, v147, &v174, v175, v148);
        goto LABEL_13;
      }

LABEL_14:
      if (!check && (objc_msgSend_suppressCycleCheck(contextCopy, v16, v17, v18, v19) & 1) == 0)
      {
        v49 = objc_msgSend_containingCell(contextCopy, v45, v46, v47, v48);
        v54 = objc_msgSend_containingTable(contextCopy, v50, v51, v52, v53);
        v175[0] = *v49;
        *&v175[1] = *v54;
        v59 = objc_msgSend_calcEngine(contextCopy, v55, v56, v57, v58);
        LODWORD(v49) = objc_msgSend_cellIsInACycle_(v59, v60, v175, v61, v62);

        if (v49)
        {
          v67 = objc_msgSend_circularReferenceError(TSCEError, v63, v64, v65, v66);
          v71 = objc_msgSend_errorValue_(TSCEErrorValue, v68, v67, v69, v70);

          v21 = v71;
        }
      }

      v21 = v21;
      v72 = v21;
      goto LABEL_61;
    }

    if (v20 == 19)
    {
      v126 = objc_msgSend_topLevelLambdaResultError(TSCEError, v16, v17, v18, v19);
      v72 = objc_msgSend_raiseErrorOrConvert_(contextCopy, v149, v126, v150, v151);
    }

    else
    {
      if (v20 != 16 || (objc_msgSend_inArrayMode(contextCopy, v16, v17, v18, v19) & 1) != 0)
      {
        goto LABEL_14;
      }

      v126 = objc_msgSend_asValueGridValue(v73, v16, v17, v18, v19);
      v131 = objc_msgSend_implicitIntersectionCoord(v126, v127, v128, v129, v130);
      v174._decimal.w[0] = v131;
      v140 = objc_msgSend_valueGrid(v126, v132, v133, v134, v135);
      if (v140)
      {
        if (v131 != 0x7FFFFFFF && (v131 & 0xFFFFFFFF00000000) != 0x7FFFFFFF00000000 && (objc_msgSend_implicitIntersectionOffTable(v126, v136, v137, v138, v139) & 1) == 0)
        {
          v171 = objc_msgSend_valueAtCoord_(v140, v136, &v174, v138, v139);

          v21 = v171;
          goto LABEL_14;
        }

        *v175 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
        v175[2] = 0;
        v175[3] = 0;
        v141 = objc_msgSend_invalidRangeUsageErrorForReference_(TSCEError, v136, v175, v138, v139);
        v145 = objc_msgSend_raiseErrorOrConvert_(contextCopy, v142, v141, v143, v144);
      }

      else
      {
        v141 = objc_msgSend_argumentSetUsedOutOfContextError(TSCEError, v136, v137, v138, v139);
        v145 = objc_msgSend_raiseErrorOrConvert_(contextCopy, v164, v141, v165, v166);
      }

      v72 = v145;
    }

    goto LABEL_61;
  }

  if (objc_msgSend_inArrayMode(contextCopy, v16, v17, v18, v19))
  {
    v43 = objc_msgSend_deepResolveInPlace_(v21, v40, contextCopy, v41, v42);
LABEL_13:
    v44 = v43;

    v21 = v44;
    goto LABEL_14;
  }

  v96 = contextCopy;
  v175[0] = v96;
  v175[1] = 0;
  v175[2] = 0;
  v175[3] = 0xFFFFFFFFLL;
  *(&v175[3] + 7) = 0;
  v176 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
  v177 = 0;
  v178 = 0;
  while (1)
  {
    v97 = objc_msgSend_gridValue(v21, v92, v93, v94, v95);
    if (!objc_msgSend_gridKind(v97, v98, v99, v100, v101) && !objc_msgSend_count(v97, v102, v103, v104, v105))
    {
      break;
    }

    if ((objc_msgSend_gridKind(v97, v102, v103, v104, v105) || !objc_msgSend_count(v97, v106, v107, v108, v109)) && objc_msgSend_count(v97, v106, v107, v108, v109) != 1)
    {
      v152 = objc_msgSend_argumentSetUsedOutOfContextError(TSCEError, v106, v110, v111, v109);
      v156 = objc_msgSend_raiseErrorOrConvert_(v96, v153, v152, v154, v155);
      goto LABEL_57;
    }

    v73 = objc_msgSend_valueAtIndex_accessContext_(v97, v106, 0, v175, v109);

    v20 = objc_msgSend_nativeType(v73, v112, v113, v114, v115);
    v21 = v73;
    if (v20 != 1)
    {

      goto LABEL_20;
    }
  }

  v152 = objc_msgSend_emptyArrayError(TSCEError, v102, v103, v104, v105);
  v156 = objc_msgSend_raiseErrorOrConvert_(v96, v161, v152, v162, v163);
LABEL_57:
  v72 = v156;

LABEL_61:

  return v72;
}

- (id)evaluateWithContext:(id)context isInACycle:(BOOL)cycle outErrorIsDueToCycle:(BOOL *)toCycle
{
  cycleCopy = cycle;
  contextCopy = context;
  astNodeArray = self->_astNodeArray;
  if (astNodeArray && astNodeArray->var1)
  {
    v14 = sub_221250CB8(astNodeArray, contextCopy, 0);
    objc_msgSend_formulaResultForFormattedValueWithKnownCycleState_context_isInACycle_outErrorIsDueToCycle_formatAsPercent_(TSCEFormulaObject, v15, v14, contextCopy, cycleCopy, toCycle, (self->_translationFlags._flags >> 3) & 1);
  }

  else
  {
    v16 = objc_msgSend_syntaxError(TSCEError, v8, v9, v10, v11);
    v14 = objc_msgSend_errorValue_(TSCEErrorValue, v17, v16, v18, v19);

    objc_msgSend_formulaResultForFormattedValueWithKnownCycleState_context_isInACycle_outErrorIsDueToCycle_formatAsPercent_(TSCEFormulaObject, v20, v14, contextCopy, cycleCopy, toCycle, (self->_translationFlags._flags >> 3) & 1);
  }
  v21 = ;

  return v21;
}

- (id)evaluateWithContext:(id)context
{
  contextCopy = context;
  v9 = sub_221250CB8(self->_astNodeArray, contextCopy, 0);
  if (!v9)
  {
    v9 = objc_msgSend_nilValue(TSCENilValue, v5, v6, v7, v8);
  }

  v10 = objc_msgSend_formulaResultForFormattedValue_context_suppressCycleCheck_formatAsPercent_(TSCEFormulaObject, v5, v9, contextCopy, 0, (self->_translationFlags._flags >> 3) & 1);

  return v10;
}

- (id)evaluateWithContextGridResult:(id)result
{
  v3 = sub_221250CB8(self->_astNodeArray, result, 0);

  return v3;
}

- (id)evaluateForPartialResultsWithContext:(id)context
{
  contextCopy = context;
  v5 = objc_opt_new();
  v6 = sub_221250CB8(self->_astNodeArray, contextCopy, v5);

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    isEqualToFormula = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      isEqualToFormula = objc_msgSend_isEqualToFormula_(self, v5, equalCopy, v6, v7);
    }

    else
    {
      isEqualToFormula = 0;
    }
  }

  return isEqualToFormula;
}

- (BOOL)isEqualToFormula:(id)formula
{
  formulaCopy = formula;
  v9 = formulaCopy;
  if (self == formulaCopy)
  {
    v21 = 1;
  }

  else
  {
    v21 = formulaCopy && (flags = self->_translationFlags._flags, ((flags ^ objc_msgSend_translationFlags(formulaCopy, v5, v6, v7, v8)) & 2) == 0) && (v15 = self->_translationFlags._flags, ((v15 ^ objc_msgSend_translationFlags(v9, v11, v12, v13, v14)) & 4) == 0) && (v20 = self->_translationFlags._flags, ((v20 ^ objc_msgSend_translationFlags(v9, v16, v17, v18, v19)) & 8) == 0) && sub_2215C5CA0(self->_astNodeArray, v9[1]);
  }

  return v21;
}

- (BOOL)isEquivalentToFormula:(id)formula context:(unint64_t)context thisContainingCell:(TSCECellRef *)cell thatContainingCell:(TSCECellRef *)containingCell
{
  formulaCopy = formula;
  v15 = formulaCopy;
  if (formulaCopy)
  {
    if (self == formulaCopy)
    {
      v30 = 1;
    }

    else
    {
      flags = self->_translationFlags._flags;
      v17 = objc_msgSend_translationFlags(formulaCopy, v11, v12, v13, v14);
      v18 = self->_translationFlags._flags;
      v23 = objc_msgSend_translationFlags(v15, v19, v20, v21, v22);
      contextCopy = context;
      v24 = self->_translationFlags._flags;
      v29 = objc_msgSend_translationFlags(v15, v25, v26, v27, v28);
      v30 = 0;
      if (!(((flags ^ v17) >> 1) & 1 | (((v18 ^ v23) & 4) >> 2) & 1) && (((v24 ^ v29) >> 3) & 1) == 0)
      {
        selfCopy = self;
        if (cell && (self->_translationFlags._flags & 0x40) != 0)
        {
          TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v49, 0, cell);
          v35 = objc_msgSend_copyByConvertingColonToColonTract_(selfCopy, v32, &v49, v33, v34);

          selfCopy = v35;
        }

        v36 = v15;
        v41 = v36;
        if (containingCell && (objc_msgSend_translationFlags(v36, v37, v38, v39, v40) & 0x40) != 0)
        {
          TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v49, 0, containingCell);
          v45 = objc_msgSend_copyByConvertingColonToColonTract_(v41, v42, &v49, v43, v44);

          v41 = v45;
        }

        v46 = sub_2215C5CF4(selfCopy->_astNodeArray, v41[1], contextCopy, cell, containingCell);

        v30 = v46 & 1;
      }
    }
  }

  else
  {
    v30 = 0;
  }

  return v30;
}

- (void)getPrecedents:(void *)precedents calcEngine:(id)engine hostCell:(const TSCECellRef *)cell allowImplicitIntersection:(BOOL)intersection returnUidReferences:(BOOL)references
{
  intersectionCopy = intersection;
  engineCopy = engine;
  sub_2212C7294(v18, cell);
  TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v21, engineCopy, v18);
  sub_22126254C(v18, self->_astNodeArray, &v21, precedents);
  if (intersectionCopy)
  {
    v19[32] = 1;
  }

  v19[33] = references;
  sub_221262B44(v18, v13, v14, v15, v16);
  v18[0].var0.coordinate = &unk_2834A37F0;

  v22 = v19;
  sub_2211FEAB8(&v22);
  TSCEASTStreamIterator::~TSCEASTStreamIterator(v18, v17);
}

- (id)hostedDescriptionAtCell:(const TSCECellRef *)cell calcEngine:(id)engine hideUids:(BOOL)uids
{
  TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v22, engine, cell);
  sub_2211F32A8(v18, self->_astNodeArray, &v22);
  sub_2211F32AC(v18, 1);
  uidsCopy = uids;
  TSCEASTStreamIterator::rewrite(v18, v7, v8, v9, v10);
  v15 = sub_2211F3A28(v18, v11, v12, v13, v14);

  TSCEASTStreamIterator::~TSCEASTStreamIterator(v18, v16);

  return v15;
}

- (id)hostedDescriptionAtCell:(const TSCECellRef *)cell calcEngine:(id)engine
{
  v4 = objc_msgSend_hostedDescriptionAtCell_calcEngine_hideUids_(self, a2, cell, engine, 1);

  return v4;
}

- (id)sageFormulaStringForContainingCell:(const TSCECellRef *)cell outHasSageUnsupportedFunctions:(BOOL *)functions
{
  TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v8, 0, cell);
  v6 = sub_2213779BC(self->_astNodeArray, &v8, functions);

  return v6;
}

- (BOOL)isSpillFormula
{
  memset(&v16, 0, sizeof(v16));
  TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v17, 0, &v16);
  v7 = objc_msgSend_const_astNodeArray(self, v3, v4, v5, v6);
  sub_22134B2F4(&v16, v7, &v17);
  v8 = sub_22134B3CC(&v16);
  if (!v8)
  {
    goto LABEL_7;
  }

  v9 = TSCEASTElement::tag(v8, &v16);
  if (v9 != 29 && v9 != 36)
  {
    goto LABEL_7;
  }

  v10 = sub_22134B3CC(&v16);
  v11 = v10;
  if (v10)
  {
    if (TSCEASTElement::tag(v10, &v16) == 16)
    {
      LOBYTE(v11) = TSCEASTFunctionElement::functionIndex(v11, &v16, v12, v13, v14) == 337;
      goto LABEL_8;
    }

LABEL_7:
    LOBYTE(v11) = 0;
  }

LABEL_8:
  sub_22134B390(&v16);
  return v11;
}

- (TSUCellCoord)spillOrigin
{
  TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v49);
  v7 = objc_msgSend_const_astNodeArray(self, v3, v4, v5, v6);
  sub_22134B2F4(v48, v7, &v49);
  v8 = sub_22134B3CC(v48);
  v9 = v8;
  v10 = 0x7FFF7FFFFFFFLL;
  if (v8)
  {
    if (TSCEASTElement::tag(v8, v48) == 36)
    {
      v14 = TSCEASTRelativeCoordRefElement::relativeCoord(v9, v48, v11, v12, v13);
      v15 = v14 & 0xFFFFFFFFFFFFLL;
      if ((v14 & 0xFFFFFFFFFFFFLL) != 0x7FFF7FFFFFFFLL)
      {
        v16 = sub_22134B3CC(v48);
        v17 = v16;
        if (v16)
        {
          if (TSCEASTElement::tag(v16, v48) == 16)
          {
            v21 = TSCEASTFunctionElement::functionIndex(v17, v48, v18, v19, v20);
            if (sub_22134B3CC(v48))
            {
              v25 = MEMORY[0x277D81150];
              v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "[TSCEFormulaObject spillOrigin]", v23, v24);
              v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulaObject.mm", v28, v29);
              objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v25, v31, v26, v30, 788, 0, "Expected formula to be done, odd looking __SPILL: %@", self);

              objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v32, v33, v34, v35);
            }

            else if (v21 == 337)
            {
              if ((~v14 & 0x101000000000000) != 0)
              {
                v36 = MEMORY[0x277D81150];
                v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "[TSCEFormulaObject spillOrigin]", v23, v24);
                v41 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v38, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulaObject.mm", v39, v40);
                objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v36, v42, v37, v41, 792, 0, "Absolute reference expected for __SPILL, saw relative");

                objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v43, v44, v45, v46);
              }

              v10 = v15;
            }
          }
        }
      }
    }
  }

  sub_22134B390(v48);
  return v10;
}

- (BOOL)isSpillFormulaForOriginCell:(const TSUCellCoord *)cell
{
  v6 = objc_msgSend_spillOrigin(self, a2, cell, v3, v4);
  v8 = v6 != 0x7FFFFFFF && (v6 & 0xFFFF00000000) != 0x7FFF00000000;
  v9 = ((*cell ^ v6) & 0x101FFFF00000000) == 0 && v8;
  return v6 == cell->row && v9;
}

- (id)copyByRewritingForTranspose:(id)transpose calcEngine:(id)engine containingCell:(const TSCEFormulaContainingCell *)cell outTransposeWarning:(BOOL *)warning
{
  transposeCopy = transpose;
  selfCopy = self;
  TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v33, engine, cell);
  v16 = objc_msgSend_astNodeArrayCopy(selfCopy, v12, v13, v14, v15);
  sub_2210F0F20(v28, v16, &v33, transposeCopy);
  TSCEASTRewriter::rewrite(v28, v17, v18, v19, v20);
  if (v29 == 1)
  {
    v21 = TSCEASTRewriter::resultArray(v28);
    v22 = [TSCEFormulaObject alloc];
    v25 = objc_msgSend_initWithNodeArray_translationFlags_(v22, v23, v21, selfCopy->_translationFlags._flags, v24);

    selfCopy = v25;
    TSCEASTNodeArray::freeNodeArray(v21, v26);
  }

  if (warning)
  {
    *warning = v31 == 1;
  }

  v28[0] = &unk_2834A1BE8;
  sub_2210BDEC0(&v32);

  TSCEASTRewriter::~TSCEASTRewriter(v28);
  return selfCopy;
}

- (id)copyByRewritingWithSpec:(id)spec calcEngine:(id)engine containingCell:(const TSCEFormulaContainingCell *)cell
{
  specCopy = spec;
  engineCopy = engine;
  flags = self->_translationFlags._flags;
  selfCopy = self;
  TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v434, engineCopy, cell);
  if ((objc_msgSend_translationFlags(selfCopy, v12, v13, v14, v15) & 0x40) != 0)
  {
    v20 = objc_msgSend_astNodeArrayCopy(selfCopy, v16, v17, v18, v19);
    sub_2214CAD34(v414, v20, &v434);
    TSCEASTRewriter::rewrite(v414, v21, v22, v23, v24);
    if (v415 == 1)
    {
      v25 = TSCEASTRewriter::resultArray(v414);
      v26 = [TSCEFormulaObject alloc];
      v29 = objc_msgSend_initWithNodeArray_translationFlags_(v26, v27, v25, flags & 0xFFFFFFFFFFFFFFBFLL, v28);

      selfCopy = v29;
      TSCEASTNodeArray::freeNodeArray(v25, v30);
    }

    TSCEASTRewriter::~TSCEASTRewriter(v414);
    LOBYTE(flags) = flags & 0xBF;
  }

  switch(objc_msgSend_rewriteType(specCopy, v16, v17, v18, v19))
  {
    case 0u:
      v35 = objc_msgSend_astNodeArrayCopy(selfCopy, v31, v32, v33, v34);
      sub_2214BF3BC(v414, v35, &v434, specCopy);
      var2 = cell->var2;
      isInverse = objc_msgSend_isInverse(specCopy, v36, v37, v38, v39);
      TSCEASTRewriter::rewrite(v414, v40, v41, v42, v43);
      if (v415 != 1)
      {
        goto LABEL_79;
      }

      goto LABEL_78;
    case 1u:
      v174 = objc_msgSend_astNodeArrayCopy(selfCopy, v31, v32, v33, v34);
      sub_2212F79E8(v414, v174, &v434, specCopy);
      var2 = cell->var2;
      isInverse = objc_msgSend_isInverse(specCopy, v175, v176, v177, v178);
      TSCEASTRewriter::rewrite(v414, v179, v180, v181, v182);
      if (v415 == 1)
      {
        goto LABEL_78;
      }

      goto LABEL_79;
    case 2u:
      v183 = objc_msgSend_astNodeArrayCopy(selfCopy, v31, v32, v33, v34);
      sub_2213BAC6C(v414, v183, &v434, specCopy);
      var2 = cell->var2;
      isInverse = objc_msgSend_isInverse(specCopy, v184, v185, v186, v187);
      TSCEASTRewriter::rewrite(v414, v188, v189, v190, v191);
      if (v415 == 1)
      {
        goto LABEL_78;
      }

      goto LABEL_79;
    case 3u:
      if (cell->var3)
      {
        goto LABEL_80;
      }

      v290 = objc_msgSend_astNodeArrayCopy(selfCopy, v31, v32, v33, v34);
      v295 = objc_msgSend_rowColumnInfo(specCopy, v291, v292, v293, v294);
      sub_2212E5F60(v414, v290, &v434, specCopy, v295);

      var2 = cell->var2;
      isInverse = objc_msgSend_isInverse(specCopy, v296, v297, v298, v299);
      TSCEASTStreamIterator::rewrite(v414, v300, v301, v302, v303);
      if (v415 == 1)
      {
        v304 = v418;
        v418 = 0;
        v305 = [TSCEFormulaObject alloc];
        v308 = objc_msgSend_initWithNodeArray_translationFlags_(v305, v306, v304, flags, v307);

        selfCopy = v308;
        TSCEASTNodeArray::freeNodeArray(v304, v309);
      }

      goto LABEL_58;
    case 4u:
      goto LABEL_24;
    case 5u:
      if (cell->var2)
      {
LABEL_24:
        *v433 = *&cell->var0.coordinate.row;
        *&v433[16] = cell->var0._tableUID._upper;
        v136 = *v433;
        v137 = objc_msgSend_astNodeArrayCopy(selfCopy, v31, v32, v33, v34);
        v138 = selfCopy;
        *v414 = *&v433[8];
        v413 = v138;
        if (objc_msgSend_isForTable_(specCopy, v139, v414, v140, v141) && ((objc_msgSend_rowColumnInfo(specCopy, v142, v143, v144, v145), v146 = objc_claimAutoreleasedReturnValue(), isRows = objc_msgSend_isRows(v146, v147, v148, v149, v150), v146, objc_msgSend_rowColumnInfo(specCopy, v152, v153, v154, v155), v156 = objc_claimAutoreleasedReturnValue(), v160 = v156, !isRows) ? (IsAffected = objc_msgSend_indexIsAffected_(v156, v157, WORD2(v136), v158, v159)) : (IsAffected = objc_msgSend_indexIsAffected_(v156, v157, v136, v158, v159)), v162 = IsAffected, v160, v162))
        {
          sub_2214C17A8(v414, v137, &v434);
          TSCEASTStreamIterator::rewrite(v414, v163, v164, v165, v166);
          v137 = v418;
          v418 = 0;
          v167 = v415;
          TSCEASTStreamIterator::~TSCEASTStreamIterator(v414, v168);
          v169 = 1;
        }

        else
        {
          v169 = 0;
          v167 = 0;
        }

        v170 = objc_msgSend_rowColumnInfo(specCopy, v142, v143, v144, v145);
        v173 = v170;
        if (v170)
        {
          objc_msgSend_updatedCellRefForRewriteType_originalCellRef_(v170, v171, 2, v433, v172);
        }

        else
        {
          memset(v432, 0, 24);
        }

        sub_2212C726C(&v431, v433, v432);
        TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v430, engineCopy, &v431);
        v412 = v169;
        sub_2213BAC6C(v414, v137, &v430, specCopy);
        v334 = v136;
        var2 = cell->var2;
        isInverse = objc_msgSend_isInverse(specCopy, v335, v336, v337, v338);
        TSCEASTRewriter::rewrite(v414, v339, v340, v341, v342);
        v343 = TSCEASTRewriter::resultArray(v414);
        v344 = v415;

        TSCEASTRewriter::~TSCEASTRewriter(v414);
        if (v432[0].n128_u32[0] == 0x7FFFFFFF || (v432[0].n128_u64[0] & 0xFFFF00000000) == 0x7FFF00000000 || *(v432 + 8) == 0)
        {
          v432[0] = *&cell->var1.coordinate.row;
          v432[1].n128_u64[0] = cell->var1._tableUID._upper;
        }

        *v414 = *&cell->var1.coordinate.row;
        *&v414[16] = cell->var1._tableUID._upper;
        sub_2212C726C(&v429, v432, v414);
        TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v430, engineCopy, &v429);
        v349 = objc_msgSend_rowColumnInfo(specCopy, v345, v346, v347, v348);
        v354 = objc_msgSend_auxRowColumnInfo(v349, v350, v351, v352, v353);
        sub_2212E5F60(v414, v343, &v430, specCopy, v354);

        var2 = cell->var2;
        isInverse = objc_msgSend_isInverse(specCopy, v355, v356, v357, v358);
        TSCEASTStreamIterator::rewrite(v414, v359, v360, v361, v362);
        v363 = v418;
        v418 = 0;
        if ((v167 | v344))
        {
          v364 = 1;
        }

        else
        {
          v364 = v415;
        }

        TSCEASTStreamIterator::~TSCEASTStreamIterator(v414, v365);
        if (v412)
        {
          sub_2214C1DB8(v414, v363, &v430);
          TSCEASTStreamIterator::rewrite(v414, v370, v371, v372, v373);
          v363 = v418;
          v418 = 0;
          v364 |= v415;
          TSCEASTStreamIterator::~TSCEASTStreamIterator(v414, v374);
        }

        if (objc_msgSend_isInverse(specCopy, v366, v367, v368, v369))
        {
          tableUID = cell->var0._tableUID;
          *v414 = v334;
          *&v414[8] = tableUID;
          if (specCopy)
          {
            objc_msgSend_updatedCellRefForOriginalCellRef_(specCopy, v375, v414, v376, v377);
            coordinate = v429.var0.coordinate;
            tableUID = cell->var0._tableUID;
          }

          else
          {
            coordinate = 0;
            memset(&v429, 0, 24);
          }

          *v414 = coordinate;
          *&v414[8] = tableUID;
          sub_2212C7294(&v431, v414);
          TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v430, engineCopy, &v431);
          sub_2210C1C64(v414, v363, &v430, specCopy);
          var2 = cell->var2;
          isInverse = objc_msgSend_isInverse(specCopy, v396, v397, v398, v399);
          TSCEASTRewriter::rewrite(v414, v400, v401, v402, v403);
          v363 = TSCEASTRewriter::resultArray(v414);
          v404 = v364 | v415;

          TSCEASTRewriter::~TSCEASTRewriter(v414);
          selfCopy = v413;
          if ((v404 & 1) == 0)
          {
            goto LABEL_86;
          }
        }

        else
        {
          selfCopy = v413;
          if ((v364 & 1) == 0)
          {
LABEL_86:
            TSCEASTNodeArray::freeNodeArray(v363, v375);

            goto LABEL_80;
          }
        }

        v405 = [TSCEFormulaObject alloc];
        v408 = objc_msgSend_initWithNodeArray_translationFlags_(v405, v406, v363, flags, v407);

        if (objc_msgSend_isEqualToFormula_(v408, v409, v413, v410, v411))
        {
          selfCopy = v413;
        }

        else
        {
          selfCopy = v408;
        }

        goto LABEL_86;
      }

      v380 = objc_msgSend_astNodeArrayCopy(selfCopy, v31, v32, v33, v34);
      sub_2215A7490(v414, v380, &v434, specCopy);
      var2 = cell->var2;
      isInverse = objc_msgSend_isInverse(specCopy, v381, v382, v383, v384);
      TSCEASTRewriter::rewrite(v414, v385, v386, v387, v388);
      if (v415 == 1)
      {
LABEL_78:
        v389 = TSCEASTRewriter::resultArray(v414);
        v390 = [TSCEFormulaObject alloc];
        v393 = objc_msgSend_initWithNodeArray_translationFlags_(v390, v391, v389, flags, v392);

        selfCopy = v393;
        TSCEASTNodeArray::freeNodeArray(v389, v394);
      }

LABEL_79:

      TSCEASTRewriter::~TSCEASTRewriter(v414);
LABEL_80:

      return selfCopy;
    case 6u:
      v64 = selfCopy;
      v272 = objc_msgSend_astNodeArrayCopy(v64, v268, v269, v270, v271);
      sub_2210C90A0(v414, v272, &v434, specCopy);
      var2 = cell->var2;
      isInverse = objc_msgSend_isInverse(specCopy, v273, v274, v275, v276);
      TSCEASTRewriter::rewrite(v414, v277, v278, v279, v280);
      selfCopy = v64;
      if (v415 == 1)
      {
        v281 = TSCEASTRewriter::resultArray(v414);
        v282 = [TSCEFormulaObject alloc];
        selfCopy = objc_msgSend_initWithNodeArray_translationFlags_(v282, v283, v281, flags, v284);

        TSCEASTNodeArray::freeNodeArray(v281, v285);
        if (objc_msgSend_isEqualToFormula_(selfCopy, v286, v64, v287, v288))
        {
          v289 = v64;

          selfCopy = v289;
        }
      }

      *v414 = &unk_2834A1A70;
      sub_2210BDEC0(&v428);
      sub_2210BDEC0(&v427);
      sub_2210BDEC0(&v425);

      TSCEASTRewriter::~TSCEASTRewriter(v414);
      goto LABEL_51;
    case 7u:
      v253 = objc_msgSend_astNodeArrayCopy(selfCopy, v31, v32, v33, v34);
      sub_221463CFC(v414, v253, &v434, specCopy);
      var2 = cell->var2;
      isInverse = objc_msgSend_isInverse(specCopy, v254, v255, v256, v257);
      TSCEASTRewriter::rewrite(v414, v258, v259, v260, v261);
      if (v415 == 1)
      {
        v262 = TSCEASTRewriter::resultArray(v414);
        v263 = [TSCEFormulaObject alloc];
        v266 = objc_msgSend_initWithNodeArray_translationFlags_(v263, v264, v262, flags, v265);

        selfCopy = v266;
        TSCEASTNodeArray::freeNodeArray(v262, v267);
      }

      *v414 = &unk_2834A83C8;
      sub_2210BDEC0(&v425);
      goto LABEL_79;
    case 8u:
      v325 = objc_msgSend_astNodeArrayCopy(selfCopy, v31, v32, v33, v34);
      sub_221464F08(v414, v325, &v434, specCopy);
      var2 = cell->var2;
      isInverse = objc_msgSend_isInverse(specCopy, v326, v327, v328, v329);
      TSCEASTRewriter::rewrite(v414, v330, v331, v332, v333);
      if (v415 == 1)
      {
        goto LABEL_78;
      }

      goto LABEL_79;
    case 9u:
      v127 = objc_msgSend_astNodeArrayCopy(selfCopy, v31, v32, v33, v34);
      sub_2214AAF34(v414, v127, &v434, specCopy);
      var2 = cell->var2;
      isInverse = objc_msgSend_isInverse(specCopy, v128, v129, v130, v131);
      TSCEASTRewriter::rewrite(v414, v132, v133, v134, v135);
      if (v415 == 1)
      {
        goto LABEL_78;
      }

      goto LABEL_79;
    case 0xAu:
      v59 = objc_msgSend_tableUIDHistory(engineCopy, v31, v32, v33, v34);
      v64 = v59;
      if (v59)
      {
        v65 = objc_msgSend_tableUIDMap(v59, v60, v61, v62, v63);
        v70 = objc_msgSend_astNodeArrayCopy(selfCopy, v66, v67, v68, v69);
        TSCEASTStreamIterator::TSCEASTStreamIterator(v414, v70, &v434);
        *v414 = &unk_2834A4B40;
        v419 = v65;
        v420 = 0u;
        v421 = 0u;
        v422 = 0;
        v423 = 1065353216;
        var2 = cell->var2;
        isInverse = objc_msgSend_isInverse(specCopy, v71, v72, v73, v74);
        TSCEASTStreamIterator::rewrite(v414, v75, v76, v77, v78);
        if (v415 == 1)
        {
          v79 = v418;
          v418 = 0;
          v80 = [TSCEFormulaObject alloc];
          v83 = objc_msgSend_initWithNodeArray_translationFlags_(v80, v81, v79, flags, v82);

          selfCopy = v83;
          TSCEASTNodeArray::freeNodeArray(v79, v84);
        }

        *v414 = &unk_2834A4B40;
        sub_2210BDEC0(&v420 + 8);
        TSCEASTStreamIterator::~TSCEASTStreamIterator(v414, v85);
      }

      v86 = objc_msgSend_tableUIDInfo(specCopy, v60, v61, v62, v63);

      if (v86)
      {
        if (!v64 || (v91 = objc_msgSend_tableUIDMap(v64, v87, v88, v89, v90), objc_msgSend_tableUIDInfo(specCopy, v92, v93, v94, v95), v96 = objc_claimAutoreleasedReturnValue(), v101 = objc_msgSend_tableUIDMap(v96, v97, v98, v99, v100), LOBYTE(v91) = sub_2211FB7FC(v91, v101), v96, (v91 & 1) == 0))
        {
          v102 = objc_msgSend_astNodeArrayCopy(selfCopy, v87, v88, v89, v90);
          v107 = objc_msgSend_tableUIDInfo(specCopy, v103, v104, v105, v106);
          v112 = objc_msgSend_tableUIDMap(v107, v108, v109, v110, v111);
          TSCEASTStreamIterator::TSCEASTStreamIterator(v414, v102, &v434);
          *v414 = &unk_2834A4B40;
          v419 = v112;
          v420 = 0u;
          v421 = 0u;
          v422 = 0;
          v423 = 1065353216;

          var2 = cell->var2;
          isInverse = objc_msgSend_isInverse(specCopy, v113, v114, v115, v116);
          TSCEASTStreamIterator::rewrite(v414, v117, v118, v119, v120);
          if (v415 == 1)
          {
            v121 = v418;
            v418 = 0;
            v122 = [TSCEFormulaObject alloc];
            v125 = objc_msgSend_initWithNodeArray_translationFlags_(v122, v123, v121, flags, v124);

            selfCopy = v125;
            TSCEASTNodeArray::freeNodeArray(v121, v126);
          }

          sub_2211FB7A8(v414);
        }
      }

LABEL_51:

      goto LABEL_80;
    case 0xBu:
      v44 = objc_msgSend_astNodeArrayCopy(selfCopy, v31, v32, v33, v34);
      sub_2210F0F20(v414, v44, &v434, specCopy);
      var2 = cell->var2;
      isInverse = objc_msgSend_isInverse(specCopy, v45, v46, v47, v48);
      TSCEASTRewriter::rewrite(v414, v49, v50, v51, v52);
      if (v415 == 1)
      {
        v53 = TSCEASTRewriter::resultArray(v414);
        v54 = [TSCEFormulaObject alloc];
        v57 = objc_msgSend_initWithNodeArray_translationFlags_(v54, v55, v53, flags, v56);

        selfCopy = v57;
        TSCEASTNodeArray::freeNodeArray(v53, v58);
      }

      *v414 = &unk_2834A1BE8;
      sub_2210BDEC0(&v426);
      goto LABEL_79;
    case 0xCu:
      v203 = objc_msgSend_astNodeArrayCopy(selfCopy, v31, v32, v33, v34);
      sub_2214AEF5C(v414, v203, &v434, specCopy);
      var2 = cell->var2;
      isInverse = objc_msgSend_isInverse(specCopy, v204, v205, v206, v207);
      TSCEASTRewriter::rewrite(v414, v208, v209, v210, v211);
      if (v415 == 1)
      {
        goto LABEL_78;
      }

      goto LABEL_79;
    case 0xDu:
      v212 = objc_msgSend_groupNodeUIDInfo(specCopy, v31, v32, v33, v34);

      if (!v212)
      {
        goto LABEL_80;
      }

      v217 = objc_msgSend_astNodeArrayCopy(selfCopy, v213, v214, v215, v216);
      v222 = objc_msgSend_groupNodeUIDInfo(specCopy, v218, v219, v220, v221);
      v227 = objc_msgSend_groupByUid(v222, v223, v224, v225, v226);
      v232 = objc_msgSend_groupNodeUIDInfo(specCopy, v228, v229, v230, v231);
      v237 = objc_msgSend_groupNodeUIDMap(v232, v233, v234, v235, v236);
      sub_2214CE8E8(v414, v217, &v434, v227, v237);

      isInverse = objc_msgSend_isInverse(specCopy, v238, v239, v240, v241);
      TSCEASTStreamIterator::rewrite(v414, v242, v243, v244, v245);
      if (v415 == 1)
      {
        v246 = v418;
        v418 = 0;
        v247 = [TSCEFormulaObject alloc];
        v250 = objc_msgSend_initWithNodeArray_translationFlags_(v247, v248, v246, flags, v249);

        selfCopy = v250;
        TSCEASTNodeArray::freeNodeArray(v246, v251);
      }

      *v414 = &unk_2834A9B38;
      sub_2210BDEC0(&v420 + 8);
LABEL_59:
      TSCEASTStreamIterator::~TSCEASTStreamIterator(v414, v252);
      goto LABEL_80;
    case 0x10u:
      v310 = objc_msgSend_astNodeArrayCopy(selfCopy, v31, v32, v33, v34);
      sub_2214CEC00(v414, v310, &v434, specCopy);
      isInverse = objc_msgSend_isInverse(specCopy, v311, v312, v313, v314);
      TSCEASTStreamIterator::rewrite(v414, v315, v316, v317, v318);
      if (v415 == 1)
      {
        v319 = v418;
        v418 = 0;
        v320 = [TSCEFormulaObject alloc];
        v323 = objc_msgSend_initWithNodeArray_translationFlags_(v320, v321, v319, flags, v322);

        selfCopy = v323;
        TSCEASTNodeArray::freeNodeArray(v319, v324);
      }

LABEL_58:

      goto LABEL_59;
    case 0x11u:
    case 0x12u:
      goto LABEL_80;
    default:
      v192 = MEMORY[0x277D81150];
      v193 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v31, "[TSCEFormulaObject copyByRewritingWithSpec:calcEngine:containingCell:]", v33, v34);
      v197 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v194, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulaObject.mm", v195, v196);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v192, v198, v193, v197, 876, 0, "Warning, no rewriter created for this formula rewrite type (yet).");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v199, v200, v201, v202);
      goto LABEL_80;
  }
}

- (id)copyBySettingHostTableUID:(const TSKUIDStruct *)d hostColumnUID:(const TSKUIDStruct *)iD hostRowUID:(const TSKUIDStruct *)uID
{
  v9 = [TSCEFormulaObject alloc];
  v15 = objc_msgSend_initWithNodeArray_translationFlags_(v9, v10, self->_astNodeArray, self->_translationFlags._flags, v11);
  if ((self->_translationFlags._flags & 0x20) == 0)
  {
    v16 = MEMORY[0x277D81150];
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[TSCEFormulaObject copyBySettingHostTableUID:hostColumnUID:hostRowUID:]", v13, v14);
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulaObject.mm", v19, v20);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v22, v17, v21, 1267, 0, "Can only set hostCellUID on uid-form formula");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25, v26);
  }

  v15[2] = *d;
  v15[3] = *iD;
  v15[4] = *uID;
  return v15;
}

- (id)copyByClearingHostCell
{
  selfCopy = self;
  if (objc_msgSend_hasHostCell(selfCopy, v3, v4, v5, v6))
  {
    v7 = [TSCEFormulaObject alloc];
    v10 = objc_msgSend_initWithNodeArray_translationFlags_(v7, v8, selfCopy->_astNodeArray, selfCopy->_translationFlags._flags, v9);

    v10[3] = 0u;
    v10[4] = 0u;
    v10[2] = 0u;
    return v10;
  }

  return selfCopy;
}

- (id)copyBySettingTranslationFlags:(TSCEFormulaTranslationFlags)flags
{
  selfCopy = self;
  if (selfCopy->_translationFlags._flags != flags._flags)
  {
    v5 = [TSCEFormulaObject alloc];
    v8 = objc_msgSend_initWithNodeArray_translationFlags_(v5, v6, selfCopy->_astNodeArray, flags._flags, v7);

    return v8;
  }

  return selfCopy;
}

- (id)copyByAddingTranslationFlags:(unsigned __int8)flags
{
  v7 = (objc_msgSend_translationFlags(self, a2, flags, v3, v4) | flags);

  return objc_msgSend_copyBySettingTranslationFlags_(self, v6, v7, v8, v9);
}

- (id)copyByRemovingTranslationFlags:(unsigned __int8)flags
{
  v7 = (objc_msgSend_translationFlags(self, a2, flags, v3, v4) & ~flags);

  return objc_msgSend_copyBySettingTranslationFlags_(self, v6, v7, v8, v9);
}

- (id)copyByRewritingReferencesToUidForm:(TSCEFormulaRewriteContext *)form
{
  v5 = form->var0;
  v6 = TSCEFormulaRewriteContext::containingTableUID(form);
  v8 = v7;
  v13 = TSCEFormulaRewriteContext::containingCellCoord(form);
  flags = self->_translationFlags._flags;
  if ((flags & 0x40) != 0)
  {
    v16 = objc_msgSend_copyByConvertingColonToColonTract_(self, v9, form, *&v11, *&v12);
    v15 = objc_msgSend_astNodeArrayCopy(v16, v17, v18, v19, v20);
    flags = objc_msgSend_translationFlags(v16, v21, v22, v23, v24);

    if ((flags & 0x20) != 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v15 = objc_msgSend_astNodeArrayCopy(self, v9, *&v10, *&v11, *&v12);
    if ((flags & 0x20) != 0)
    {
      goto LABEL_8;
    }
  }

  v69[0].coordinate = v13;
  v69[0]._tableUID._lower = v6;
  v69[0]._tableUID._upper = v8;
  TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v73, v5, v69);
  sub_22142DF10(v69, v15, &v73);
  TSCEASTStreamIterator::rewrite(v69, v25, v26, v27, v28);
  v15 = v71;
  v71 = 0;
  if (v70)
  {
    flags |= 0x20u;
  }

  TSCEASTStreamIterator::~TSCEASTStreamIterator(v69, v29);
LABEL_8:
  v30 = [TSCEFormulaObject alloc];
  v33 = objc_msgSend_initWithNodeArray_translationFlags_(v30, v31, v15, flags, v32);
  TSCEASTNodeArray::freeNodeArray(v15, v34);
  if ((TSCEFormulaRewriteContext::preserveHostCell(form) & ((flags & 0x20) >> 5)) == 1)
  {
    v35 = TSCEFormulaRewriteContext::resolverTableUID(form);
    if (v35 | v36)
    {
      v37 = TSCEFormulaRewriteContext::resolverTableUID(form);
      v40 = objc_msgSend_resolverForTableUID_(v5, v38, v37, v38, v39);
      v44 = v40;
      if (v40)
      {
        v45 = objc_msgSend_columnUIDForColumnIndex_(v40, v41, v13.column, v42, v43);
        v47 = v46;
        v69[0].coordinate = v45;
        v69[0]._tableUID._lower = v46;
        v50 = objc_msgSend_rowUIDForRowIndex_(v44, v46, *&v13, v48, v49);
        v73.var0 = v50;
        v73.var1 = v51;
        if (v45 | v47 && v50 | v51)
        {
          v68[0] = TSCEFormulaRewriteContext::resolverTableUID(form);
          v68[1] = v52;
          v53 = objc_msgSend_copyBySettingHostTableUID_hostColumnUID_hostRowUID_(v33, v52, v68, v69, &v73);

          v33 = v53;
        }
      }

      else
      {
        v54 = MEMORY[0x277D81150];
        v55 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v41, "[TSCEFormulaObject copyByRewritingReferencesToUidForm:]", v42, v43);
        v59 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v56, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulaObject.mm", v57, v58);
        v69[0].coordinate = TSCEFormulaRewriteContext::resolverTableUID(form);
        v69[0]._tableUID._lower = v60;
        v61 = TSKUIDStruct::description(v69);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v54, v62, v55, v59, 1358, 0, "preserveHostCell requested, but resolverTableUID %@ not found", v61);

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v63, v64, v65, v66);
      }
    }
  }

  return v33;
}

- (id)copyByRewritingReferencesToGeometricForm:(TSCEFormulaRewriteContext *)form
{
  flags = self->_translationFlags._flags;
  selfCopy = self;
  v6 = selfCopy;
  if ((flags & 0x20) == 0)
  {
    return selfCopy;
  }

  v8 = form->var0;
  v9 = TSCEFormulaRewriteContext::containingTableUID(form);
  v11 = v10;
  v12 = TSCEFormulaRewriteContext::containingCellCoord(form);
  v13 = TSCEFormulaRewriteContext::hostCellOverridesTableID(form);
  v85 = TSCEFormulaRewriteContext::restoreBadRefs(form);
  v84 = objc_msgSend_ownerKindForOwnerUID_(v8, v14, v9, v11, v15);
  v86 = objc_msgSend_astNodeArrayCopy(v6, v16, v17, v18, v19);
  if (v6->_hostTableUID._lower || v6->_hostTableUID._upper)
  {
    v23 = objc_msgSend_tableResolverForTableUID_(v8, v20, &v6->_hostTableUID, v21, v22);
    v27 = v23;
    if (!v23 || (v28 = objc_msgSend_columnIndexForColumnUID_(v23, v24, &v6->_hostColumnUID, v25, v26), v32 = objc_msgSend_rowIndexForRowUID_(v27, v29, &v6->_hostRowUID, v30, v31), v28 == 0x7FFF) || v32 == 0x7FFFFFFF || (v12.row = v32, *&v12.column = v28, !v13) || (v84 != 3 ? (lower = v6->_hostTableUID._lower, upper = v6->_hostTableUID._upper) : (lower = objc_msgSend_conditionalStyleFormulaOwnerUID(v27, v33, v34, v35, v36), upper = v33), v9 == lower && v11 == upper))
    {
      lower = v9;
      upper = v11;
    }

    else
    {
      v83 = MEMORY[0x277D81150];
      v72 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v33, "[TSCEFormulaObject copyByRewritingReferencesToGeometricForm:]", v35, v36);
      v77 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v73, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulaObject.mm", v74, v75);
      v78 = @"table";
      if (v84 == 3)
      {
        v78 = @"conditional style";
      }

      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v83, v76, v72, v77, 1412, 0, "Over-riding hostTableUID for %@", v78);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v79, v80, v81, v82);
    }

    v9 = lower;
    v11 = upper;
  }

  v87.n128_u64[0] = v12;
  v87.n128_u64[1] = v9;
  v88 = v11;
  sub_2212C7294(&v94, &v87);
  v43 = TSCEFormulaRewriteContext::setContainingCell(form, &v94);
  v44 = v86;
  if (v8)
  {
    v45 = objc_msgSend_tableUIDHistory(v8, v39, v40, v41, v42, v43);

    if (v45)
    {
      v50 = objc_msgSend_tableUIDHistory(v8, v46, v47, v48, v49);
      v55 = objc_msgSend_tableUIDMap(v50, v51, v52, v53, v54);
      TSCEASTStreamIterator::TSCEASTStreamIterator(&v87, v86, form);
      v87.n128_u64[0] = &unk_2834A4B40;
      *v90 = v55;
      *&v90[8] = 0u;
      v91 = 0u;
      v92 = 0;
      v93 = 1065353216;

      TSCEASTStreamIterator::rewrite(&v87, v56, v57, v58, v59);
      v44 = v89;
      v89 = 0;
      v87.n128_u64[0] = &unk_2834A4B40;
      sub_2210BDEC0(&v90[16]);
      TSCEASTStreamIterator::~TSCEASTStreamIterator(&v87, v60);
    }
  }

  sub_2214C3C08(&v87, v44, form);
  v90[1] = v85;
  *&v90[4] = TSCEFormulaRewriteContext::fromOffset(form);
  TSCEASTStreamIterator::rewrite(&v87, v61, v62, v63, v64);
  v65 = v89;
  v89 = 0;
  TSCEFormulaRewriteContext::setContainsBadRef(form, v90[0]);
  v66 = [TSCEFormulaObject alloc];
  v7 = objc_msgSend_initWithNodeArray_translationFlags_(v66, v67, v65, flags & 0xFFFFFFFFFFFFFFDFLL, v68);

  TSCEASTNodeArray::freeNodeArray(v65, v69);
  TSCEASTStreamIterator::~TSCEASTStreamIterator(&v87, v70);

  return v7;
}

- (id)copyByRepairingBadReferences:(TSCEFormulaRewriteContext *)references clearUidHistory:(BOOL)history
{
  historyCopy = history;
  v8 = objc_msgSend_translationFlags(self, a2, references, history, v4);
  v13 = objc_msgSend_astNodeArrayCopy(self, v9, v10, v11, v12);
  v18 = objc_msgSend_translationFlags(self, v14, v15, v16, v17);
  if ((v18 & 0x40) != 0)
  {
    sub_2214CAD34(v52, v13, references);
    TSCEASTRewriter::rewrite(v52, v19, v20, v21, v22);
    v13 = TSCEASTRewriter::resultArray(v52);
    v8 &= ~0x40u;
    TSCEASTRewriter::~TSCEASTRewriter(v52);
  }

  TSCEFormulaRewriteContext::setUseOnlyActiveTract(references, 1);
  sub_22114F728(v52, v13, references);
  v54 = historyCopy;
  TSCEASTStreamIterator::rewrite(v52, v23, v24, v25, v26);
  v27 = v18 & 0x40;
  v28 = v53;
  v53 = 0;
  v29 = v52[97] | (v27 >> 6);
  if (historyCopy)
  {
    sub_2212CE9B0(v50, v28, references);
    TSCEASTStreamIterator::rewrite(v50, v30, v31, v32, v33);
    if (v50[97] == 1)
    {
      v28 = v51;
      v51 = 0;
      TSCEASTStreamIterator::~TSCEASTStreamIterator(v50, v34);
      selfCopy = self;
      goto LABEL_8;
    }

    v50[96] = 1;
    TSCEASTStreamIterator::~TSCEASTStreamIterator(v50, v34);
  }

  selfCopy2 = self;
  if ((v29 & 1) == 0)
  {
    v47 = selfCopy2;
    goto LABEL_12;
  }

LABEL_8:
  v38 = [TSCEFormulaObject alloc];
  v41 = objc_msgSend_initWithNodeArray_translationFlags_(v38, v39, v28, v8, v40);

  if (objc_msgSend_hasHostCell(self, v42, v43, v44, v45))
  {
    v46 = objc_msgSend_copyBySettingHostTableUID_hostColumnUID_hostRowUID_(v41, v37, &self->_hostTableUID, &self->_hostColumnUID, &self->_hostRowUID);

    v47 = v46;
  }

  else
  {
    v47 = v41;
  }

LABEL_12:
  TSCEASTNodeArray::freeNodeArray(v28, v37);
  TSCEASTStreamIterator::~TSCEASTStreamIterator(v52, v48);
  return v47;
}

- (id)copyByRepairingMissingThunks:(TSCEFormulaRewriteContext *)thunks
{
  selfCopy = self;
  v9 = objc_msgSend_astNodeArrayCopy(selfCopy, v5, v6, v7, v8);
  sub_2216D13D8(v21, v9, thunks);
  TSCEASTRewriter::rewrite(v21, v10, v11, v12, v13);
  if (v21[97] == 1)
  {
    v14 = TSCEASTRewriter::resultArray(v21);
    v15 = [TSCEFormulaObject alloc];
    v18 = objc_msgSend_initWithNodeArray_translationFlags_(v15, v16, v14, selfCopy->_translationFlags._flags, v17);

    selfCopy = v18;
    TSCEASTNodeArray::freeNodeArray(v14, v19);
  }

  TSCEASTRewriter::~TSCEASTRewriter(v21);
  return selfCopy;
}

- (id)copyByFreezingRefs:(id)refs containingCell:(const TSCEFormulaContainingCell *)cell
{
  refsCopy = refs;
  v11 = objc_msgSend_astNodeArrayCopy(self, v7, v8, v9, v10);
  TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v29, refsCopy, cell);
  sub_2214C17A8(v27, v11, &v29);
  TSCEASTStreamIterator::rewrite(v27, v12, v13, v14, v15);
  selfCopy = self;
  v18 = selfCopy;
  if (v27[97] == 1)
  {
    v19 = v28;
    v28 = 0;
    flags = selfCopy->_translationFlags._flags;
    v21 = [TSCEFormulaObject alloc];
    v24 = objc_msgSend_initWithNodeArray_translationFlags_(v21, v22, v19, flags | 0x80, v23);

    v18 = v24;
    TSCEASTNodeArray::freeNodeArray(v19, v25);
  }

  TSCEASTStreamIterator::~TSCEASTStreamIterator(v27, v17);

  return v18;
}

- (id)copyByThawingRefs:(id)refs containingCell:(const TSCEFormulaContainingCell *)cell
{
  refsCopy = refs;
  selfCopy = self;
  if (objc_msgSend_translationFlags(selfCopy, v8, v9, v10, v11) < 0)
  {
    v17 = objc_msgSend_astNodeArrayCopy(selfCopy, v12, v13, v14, v15);
    TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v31, refsCopy, cell);
    sub_2214C1DB8(v29, v17, &v31);
    TSCEASTStreamIterator::rewrite(v29, v18, v19, v20, v21);
    v22 = v30;
    v30 = 0;
    LOBYTE(v17) = selfCopy->_translationFlags._flags;
    v23 = [TSCEFormulaObject alloc];
    v16 = objc_msgSend_initWithNodeArray_translationFlags_(v23, v24, v22, v17 & 0x7F, v25);

    TSCEASTNodeArray::freeNodeArray(v22, v26);
    TSCEASTStreamIterator::~TSCEASTStreamIterator(v29, v27);
  }

  else
  {
    v16 = selfCopy;
  }

  return v16;
}

- (id)copyByConvertingColonTractToColon:(TSCEFormulaRewriteContext *)colon breakUpIntoRefs:(BOOL)refs
{
  selfCopy = self;
  v11 = objc_msgSend_astNodeArrayCopy(selfCopy, v7, v8, v9, v10);
  flags = selfCopy->_translationFlags._flags;
  sub_221126A6C(v24, v11, colon);
  v24[200] = refs;
  TSCEASTRewriter::rewrite(v24, v13, v14, v15, v16);
  if (v24[97] == 1)
  {
    v17 = TSCEASTRewriter::resultArray(v24);
    v18 = [TSCEFormulaObject alloc];
    v21 = objc_msgSend_initWithNodeArray_translationFlags_(v18, v19, v17, flags | 0x40, v20);

    selfCopy = v21;
    TSCEASTNodeArray::freeNodeArray(v17, v22);
  }

  TSCEASTRewriter::~TSCEASTRewriter(v24);
  return selfCopy;
}

- (id)copyByConvertingColonToColonTract:(TSCEFormulaRewriteContext *)tract
{
  selfCopy = self;
  v5 = TSCEFormulaRewriteContext::containingCellCoord(tract);
  if (v5.row != 0x7FFFFFFF && (*&v5 & 0xFFFF00000000) != 0x7FFF00000000)
  {
    flags = selfCopy->_translationFlags._flags;
    v11 = objc_msgSend_astNodeArrayCopy(selfCopy, v6, *&v7, *&v8, *&v9);
    sub_2214CAD34(v23, v11, tract);
    TSCEASTRewriter::rewrite(v23, v12, v13, v14, v15);
    if ((v23[97] & 1) != 0 || (flags & 0x40) != 0)
    {
      v16 = TSCEASTRewriter::resultArray(v23);
      v17 = [TSCEFormulaObject alloc];
      v20 = objc_msgSend_initWithNodeArray_translationFlags_(v17, v18, v16, flags & 0xFFFFFFFFFFFFFFBFLL, v19);

      selfCopy = v20;
      TSCEASTNodeArray::freeNodeArray(v16, v21);
    }

    TSCEASTRewriter::~TSCEASTRewriter(v23);
  }

  return selfCopy;
}

- (id)copyByClearingUids:(id)uids containingTableUID:(const TSKUIDStruct *)d
{
  uidsCopy = uids;
  selfCopy = self;
  objc_msgSend_astNodeArrayCopy(selfCopy, v8, v9, v10, v11);
  v13.coordinate = 0;
  v13._tableUID = *d;
  TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v14, uidsCopy, &v13);
  operator new();
}

- (id)copyByMakingAllCategoryRefsIndirect:(TSCEFormulaRewriteContext *)indirect
{
  selfCopy = self;
  v9 = objc_msgSend_astNodeArrayCopy(selfCopy, v5, v6, v7, v8);
  sub_2214CE9E0(v22, v9, indirect, 11);
  TSCEASTStreamIterator::rewrite(v22, v10, v11, v12, v13);
  if (v22[97] == 1)
  {
    v15 = v23;
    v23 = 0;
    v16 = [TSCEFormulaObject alloc];
    v19 = objc_msgSend_initWithNodeArray_translationFlags_(v16, v17, v15, selfCopy->_translationFlags._flags, v18);

    selfCopy = v19;
    TSCEASTNodeArray::freeNodeArray(v15, v20);
  }

  TSCEASTStreamIterator::~TSCEASTStreamIterator(v22, v14);
  return selfCopy;
}

- (id)copyByRemappingOwnerUIDs:(const void *)ds rewriteContext:(TSCEFormulaRewriteContext *)context outBadRefFound:(BOOL *)found
{
  selfCopy = self;
  v13 = objc_msgSend_astNodeArrayCopy(selfCopy, v9, v10, v11, v12);
  TSCEASTStreamIterator::TSCEASTStreamIterator(v31, v13, context);
  v31[0] = &unk_2834A4B40;
  dsCopy = ds;
  foundCopy = found;
  memset(v36, 0, sizeof(v36));
  v37 = 1065353216;
  TSCEASTStreamIterator::rewrite(v31, v14, v15, v16, v17);
  if (v32 == 1)
  {
    v18 = v33;
    v33 = 0;
    v19 = [TSCEFormulaObject alloc];
    v22 = objc_msgSend_initWithNodeArray_translationFlags_(v19, v20, v18, selfCopy->_translationFlags._flags, v21);

    TSCEASTNodeArray::freeNodeArray(v18, v23);
    if (objc_msgSend_hasHostCell(selfCopy, v24, v25, v26, v27))
    {
      selfCopy = objc_msgSend_copyBySettingHostTableUID_hostColumnUID_hostRowUID_(v22, v28, &selfCopy->_hostTableUID, &selfCopy->_hostColumnUID, &selfCopy->_hostRowUID);
    }

    else
    {
      selfCopy = v22;
    }
  }

  v31[0] = &unk_2834A4B40;
  sub_2210BDEC0(v36);
  TSCEASTStreamIterator::~TSCEASTStreamIterator(v31, v29);
  return selfCopy;
}

- (id)copyByRemappingHostCellAgnosticOwnerUIDs:(const void *)ds rewriteContext:(TSCEFormulaRewriteContext *)context outError:(BOOL *)error
{
  selfCopy = self;
  if (objc_msgSend_hasHostCell(selfCopy, v9, v10, v11, v12))
  {
    if (error)
    {
      *error = 1;
    }
  }

  else
  {
    v17 = objc_msgSend_astNodeArrayCopy(selfCopy, v13, v14, v15, v16);
    TSCEASTStreamIterator::TSCEASTStreamIterator(v30, v17, context);
    dsCopy = ds;
    errorCopy = error;
    memset(v35, 0, sizeof(v35));
    v36 = 1065353216;
    v30[0] = &unk_2834A4E20;
    v37 = 0;
    TSCEASTStreamIterator::rewrite(v30, v18, v19, v20, v21);
    if (v37 == 1)
    {
      if (error)
      {
        *error = 1;
      }
    }

    else if (v31 == 1)
    {
      v22 = v32;
      v32 = 0;
      v23 = [TSCEFormulaObject alloc];
      v26 = objc_msgSend_initWithNodeArray_translationFlags_(v23, v24, v22, selfCopy->_translationFlags._flags, v25);

      selfCopy = v26;
      TSCEASTNodeArray::freeNodeArray(v22, v27);
    }

    v30[0] = &unk_2834A4B40;
    sub_2210BDEC0(v35);
    TSCEASTStreamIterator::~TSCEASTStreamIterator(v30, v28);
  }

  return selfCopy;
}

- (id)copyByForceSettingOwnerUIDs:(const TSKUIDStruct *)ds calcEngine:(id)engine
{
  engineCopy = engine;
  selfCopy = self;
  v12 = objc_msgSend_astNodeArrayCopy(selfCopy, v8, v9, v10, v11);
  sub_2212C7250(&v29);
  TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v33, engineCopy, &v29);
  TSCEASTStreamIterator::TSCEASTStreamIterator(&v29, v12, &v33);
  v29.var0.coordinate = &unk_2834A4CB0;
  v32 = *ds;
  TSCEASTStreamIterator::rewrite(&v29, v13, v14, v15, v16);
  if (v30 == 1)
  {
    v18 = v31;
    v31 = 0;
    v19 = [TSCEFormulaObject alloc];
    v22 = objc_msgSend_initWithNodeArray_translationFlags_(v19, v20, v18, selfCopy->_translationFlags._flags, v21);

    TSCEASTNodeArray::freeNodeArray(v18, v23);
    if (objc_msgSend_hasHostCell(selfCopy, v24, v25, v26, v27))
    {
      selfCopy = objc_msgSend_copyBySettingHostTableUID_hostColumnUID_hostRowUID_(v22, v17, &selfCopy->_hostTableUID, &selfCopy->_hostColumnUID, &selfCopy->_hostRowUID);
    }

    else
    {
      selfCopy = v22;
    }
  }

  TSCEASTStreamIterator::~TSCEASTStreamIterator(&v29, v17);

  return selfCopy;
}

- (id)copyByRemappingUids:(const void *)uids rowMap:(const void *)map ownerMap:(const void *)ownerMap clearIfMissing:(BOOL)missing
{
  selfCopy = self;
  v15 = objc_msgSend_astNodeArrayCopy(selfCopy, v11, v12, v13, v14);
  TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v38);
  TSCEASTRewriter::TSCEASTRewriter(v32, v15, &v38, 0);
  v32[0] = &unk_2834BA1C0;
  uidsCopy = uids;
  mapCopy = map;
  ownerMapCopy = ownerMap;
  missingCopy = missing;
  TSCEASTRewriter::rewrite(v32, v16, v17, v18, v19);
  if (v33 == 1)
  {
    v20 = TSCEASTRewriter::resultArray(v32);
    v21 = [TSCEFormulaObject alloc];
    v24 = objc_msgSend_initWithNodeArray_translationFlags_(v21, v22, v20, selfCopy->_translationFlags._flags, v23);

    TSCEASTNodeArray::freeNodeArray(v20, v25);
    if (objc_msgSend_hasHostCell(selfCopy, v26, v27, v28, v29))
    {
      selfCopy = objc_msgSend_copyBySettingHostTableUID_hostColumnUID_hostRowUID_(v24, v30, &selfCopy->_hostTableUID, &selfCopy->_hostColumnUID, &selfCopy->_hostRowUID);
    }

    else
    {
      selfCopy = v24;
    }
  }

  TSCEASTRewriter::~TSCEASTRewriter(v32);
  return selfCopy;
}

- (id)copyByUpdatingLinkedTable:(const TSKUIDStruct *)table outfoundLinkedRef:(BOOL *)ref
{
  selfCopy = self;
  v11 = objc_msgSend_astNodeArrayCopy(selfCopy, v7, v8, v9, v10);
  TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v31);
  sub_221491114(v28, v11, &v31, table);
  TSCEASTStreamIterator::rewrite(v28, v12, v13, v14, v15);
  if (ref)
  {
    *ref = v30;
  }

  if (v28[97] == 1)
  {
    v17 = v29;
    v29 = 0;
    v18 = [TSCEFormulaObject alloc];
    v21 = objc_msgSend_initWithNodeArray_translationFlags_(v18, v19, v17, selfCopy->_translationFlags._flags, v20);

    TSCEASTNodeArray::freeNodeArray(v17, v22);
    if (objc_msgSend_hasHostCell(selfCopy, v23, v24, v25, v26))
    {
      selfCopy = objc_msgSend_copyBySettingHostTableUID_hostColumnUID_hostRowUID_(v21, v16, &selfCopy->_hostTableUID, &selfCopy->_hostColumnUID, &selfCopy->_hostRowUID);
    }

    else
    {
      selfCopy = v21;
    }
  }

  TSCEASTStreamIterator::~TSCEASTStreamIterator(v28, v16);
  return selfCopy;
}

- (id)copyByUpgradingToArrayMode:(TSCEFormulaRewriteContext *)mode isExcelImport:(BOOL)import outArrayModeWarning:(BOOL *)warning
{
  selfCopy = self;
  v13 = selfCopy;
  flags = selfCopy->_translationFlags._flags;
  if ((flags & 0x40) != 0)
  {
    v16 = objc_msgSend_copyByConvertingColonToColonTract_(selfCopy, v9, mode, v11, v12);
    v15 = objc_msgSend_astNodeArrayCopy(v16, v17, v18, v19, v20);
    flags = objc_msgSend_translationFlags(v16, v21, v22, v23, v24);
  }

  else
  {
    v15 = objc_msgSend_astNodeArrayCopy(selfCopy, v9, v10, v11, v12);
  }

  sub_2211F6EF4(v36, v15, mode);
  importCopy = import;
  TSCEASTRewriter::rewrite(v36, v25, v26, v27, v28);
  sub_2211F74D4(v36);
  if (v39 == 1 && (!import & v40 & 1) == 0 && v37 == 1)
  {
    v29 = TSCEASTRewriter::resultArray(v36);
    v30 = [TSCEFormulaObject alloc];
    v33 = objc_msgSend_initWithNodeArray_translationFlags_(v30, v31, v29, flags, v32);

    TSCEASTNodeArray::freeNodeArray(v29, v34);
    *warning = 1;
  }

  else
  {
    v33 = v13;
  }

  TSCEASTRewriter::~TSCEASTRewriter(v36);
  return v33;
}

- (id)copyByRewritingForSageExport:(id)export targetDocumentSupportsCrossTableReferences:(BOOL)references outshouldBakeWholeFormula:(BOOL *)formula outFeaturesUsed:(char *)used
{
  exportCopy = export;
  v19 = objc_msgSend_calcEngine(exportCopy, v11, v12, v13, v14);
  if (exportCopy)
  {
    objc_msgSend_containingCellRef(exportCopy, v15, v16, v17, v18);
  }

  else
  {
    memset(v44, 0, 24);
  }

  TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v56, v19, v44);

  v22 = objc_msgSend_copyByConvertingColonTractToColon_breakUpIntoRefs_(self, v20, &v56, 1, v21);
  v27 = objc_msgSend_const_astNodeArray(v22, v23, v24, v25, v26);
  sub_2211D3C68(v47, v27, &v56, references);
  (*(v47[0] + 48))(v47);
  if (v49 & 1) != 0 || (v51 & 1) != 0 || (v52 & 1) != 0 || (v53 & 1) != 0 || (v50 & 1) != 0 || (v54)
  {
    v28 = 1;
  }

  else
  {
    v28 = v55;
  }

  *formula = v28 & 1;
  if (used)
  {
    v29 = v50;
    *used = v50;
    if (v51)
    {
      v29 |= 2u;
      *used = v29;
    }

    if (v52 == 1)
    {
      v29 |= 4u;
      *used = v29;
    }

    if (v53 == 1)
    {
      v29 |= 8u;
      *used = v29;
    }

    if (v54 == 1)
    {
      v29 |= 0x10u;
      *used = v29;
    }

    if (v55 == 1)
    {
      *used = v29 | 0x20;
    }
  }

  v30 = v22;
  v32 = v30;
  v33 = v30;
  if (!*formula)
  {
    v33 = v30;
    if (v48 == 1)
    {
      sub_221207F00(v44, v30, &v56, exportCopy);
      referencesCopy = references;
      TSCEASTRewriter::rewrite(v44, v34, v35, v36, v37);
      v38 = TSCEASTRewriter::resultArray(v44);
      *formula = v46;
      v39 = [TSCEFormulaObject alloc];
      v33 = objc_msgSend_initWithNodeArray_translationFlags_(v39, v40, v38, self->_translationFlags._flags, v41);

      TSCEASTNodeArray::freeNodeArray(v38, v42);
      TSCEPartialEvalRewriter::~TSCEPartialEvalRewriter(v44);
    }
  }

  TSCEASTStreamIterator::~TSCEASTStreamIterator(v47, v31);

  return v33;
}

- (id)copyByRewritingForSageImport:(id)import containingCell:(const TSCECellRef *)cell
{
  importCopy = import;
  selfCopy = self;
  v12 = objc_msgSend_astNodeArrayCopy(selfCopy, v8, v9, v10, v11);
  TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v29, 0, cell);
  sub_2213F24DC(v27, v12, &v29, importCopy);
  TSCEASTRewriter::rewrite(v27, v13, v14, v15, v16);
  v17 = TSCEASTNodeArray::containsTag(selfCopy->_astNodeArray, 0x1Cu);
  if ((v27[97] | v17))
  {
    v18 = TSCEASTRewriter::resultArray(v27);
    flags = selfCopy->_translationFlags._flags;
    v20 = [TSCEFormulaObject alloc];
    v23 = 64;
    if (!v17)
    {
      v23 = 0;
    }

    v24 = objc_msgSend_initWithNodeArray_translationFlags_(v20, v21, v18, flags & 0xFFFFFFFFFFFFFFBFLL | v23, v22);

    selfCopy = v24;
    TSCEASTNodeArray::freeNodeArray(v18, v25);
  }

  TSCEASTRewriter::~TSCEASTRewriter(v27);
  return selfCopy;
}

- (id)copyByRewritingForExcelImport:(id)import outFormulaReplacedForExcelCompatWarning:(BOOL *)warning functionNameReplacedForExcelCompat:(id *)compat formulaFormatFromCell:(unsigned int)cell
{
  v6 = *&cell;
  importCopy = import;
  v15 = objc_msgSend_allowAbort(importCopy, v11, v12, v13, v14);
  objc_msgSend_setAllowAbort_(importCopy, v16, 0, v17, v18);
  v23 = objc_msgSend_astNodeArrayCopy(self, v19, v20, v21, v22);
  v32 = objc_msgSend_calcEngine(importCopy, v24, v25, v26, v27);
  if (importCopy)
  {
    objc_msgSend_containingCellRef(importCopy, v28, v29, v30, v31);
  }

  else
  {
    memset(&v62, 0, sizeof(v62));
  }

  TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v66, v32, &v62);

  sub_221271C84(v63, v23, &v66);
  TSCEASTRewriter::rewrite(v63, v33, v34, v35, v36);
  v37 = TSCEASTRewriter::resultArray(v63);
  v38 = v64 == 1;
  *warning = v64 == 1;
  if (compat && v38)
  {
    *compat = v65;
  }

  v39 = [TSCEFormulaObject alloc];
  v42 = objc_msgSend_initWithNodeArray_translationFlags_(v39, v40, v37, self->_translationFlags._flags, v41);
  TSCEASTNodeArray::freeNodeArray(v37, v43);
  sub_221271D88(&v62, v42, &v66, importCopy);
  TSCEASTRewriter::rewrite(&v62, v44, v45, v46, v47);
  sub_221272424(&v62, v6, v48, v49, v50);
  v51 = TSCEASTRewriter::resultArray(&v62);
  flags = self->_translationFlags._flags;
  v53 = [TSCEFormulaObject alloc];
  v56 = objc_msgSend_initWithNodeArray_translationFlags_(v53, v54, v51, flags & 0xFFFFFFFFFFFFFFB9 | 0x40, v55);
  TSCEASTNodeArray::freeNodeArray(v51, v57);
  objc_msgSend_setAllowAbort_(importCopy, v58, v15, v59, v60);
  TSCEPartialEvalRewriter::~TSCEPartialEvalRewriter(&v62);

  TSCEASTRewriter::~TSCEASTRewriter(v63);
  return v56;
}

- (id)copyByRemovingNumberToDateCoercion:(id)coercion
{
  coercionCopy = coercion;
  v9 = objc_msgSend_allowAbort(coercionCopy, v5, v6, v7, v8);
  objc_msgSend_setAllowAbort_(coercionCopy, v10, 0, v11, v12);
  v21 = objc_msgSend_calcEngine(coercionCopy, v13, v14, v15, v16);
  if (coercionCopy)
  {
    objc_msgSend_containingCellRef(coercionCopy, v17, v18, v19, v20);
  }

  else
  {
    memset(v40, 0, 24);
  }

  TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v42, v21, v40);

  sub_2212D6930(v40, self, &v42, coercionCopy);
  TSCEASTRewriter::rewrite(v40, v22, v23, v24, v25);
  v29 = self->_translationFlags._flags & 0xFB;
  if (v41 == 1)
  {
    v30 = TSCEASTRewriter::resultArray(v40);
    v31 = [TSCEFormulaObject alloc];
    v34 = objc_msgSend_initWithNodeArray_translationFlags_(v31, v32, v30, v29, v33);
    TSCEASTNodeArray::freeNodeArray(v30, v35);
  }

  else
  {
    v34 = objc_msgSend_copyBySettingTranslationFlags_(self, v26, self->_translationFlags._flags & 0xFB, v27, v28);
  }

  objc_msgSend_setAllowAbort_(coercionCopy, v36, v9, v37, v38, *&v40[0].coordinate, v40[0]._tableUID._lower, v40[0]._tableUID._upper);
  TSCEPartialEvalRewriter::~TSCEPartialEvalRewriter(v40);

  return v34;
}

- (id)formulaNodeTreeForExcelExport:(id)export
{
  exportCopy = export;
  selfCopy = self;
  v14 = objc_msgSend_calcEngine(exportCopy, v6, v7, v8, v9);
  if (exportCopy)
  {
    objc_msgSend_containingCellRef(exportCopy, v10, v11, v12, v13);
  }

  else
  {
    memset(v64, 0, 24);
  }

  TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v68, v14, v64);
  v19 = objc_msgSend_const_astNodeArray(selfCopy, v15, v16, v17, v18);
  sub_2216D3950(v65, v19, &v68);
  (*(v65[0] + 48))(v65);
  v24 = v66;
  v25 = selfCopy;
  if (v67 == 1)
  {
    v26 = objc_msgSend_astNodeArrayCopy(selfCopy, v20, v21, v22, v23);
    TSCEASTRewriter::TSCEASTRewriter(v64, v26, &v68, 0);
    v64[0].coordinate = &unk_2834A2B40;
    TSCEASTRewriter::rewrite(v64, v27, v28, v29, v30);
    v31 = TSCEASTRewriter::resultArray(v64);
    v32 = [TSCEFormulaObject alloc];
    v25 = objc_msgSend_initWithNodeArray_translationFlags_(v32, v33, v31, selfCopy->_translationFlags._flags, v34);

    TSCEASTNodeArray::freeNodeArray(v31, v35);
    TSCEASTRewriter::~TSCEASTRewriter(v64);
  }

  if (v24)
  {
    sub_221494998(v64, v25, &v68, exportCopy);
    TSCEASTRewriter::rewrite(v64, v36, v37, v38, v39);
    v40 = TSCEASTRewriter::resultArray(v64);
    v41 = [TSCEFormulaObject alloc];
    v44 = objc_msgSend_initWithNodeArray_translationFlags_(v41, v42, v40, selfCopy->_translationFlags._flags, v43);

    TSCEASTNodeArray::freeNodeArray(v40, v45);
    TSCEPartialEvalRewriter::~TSCEPartialEvalRewriter(v64);
  }

  else
  {
    v44 = v25;
  }

  v46 = objc_msgSend_copyByConvertingColonTractToColon_breakUpIntoRefs_(v44, v20, &v68, 1, v23, *&v64[0].coordinate, v64[0]._tableUID._lower, v64[0]._tableUID._upper);

  v50 = objc_msgSend_evaluateForPartialResultsWithContext_(v46, v47, exportCopy, v48, v49);
  v51 = [TSCEPartialResultMapByOffset alloc];
  v55 = objc_msgSend_initWithPartialResultTree_(v51, v52, v50, v53, v54);
  v60 = [TSCEFormulaNodeTree alloc];
  if (exportCopy)
  {
    objc_msgSend_containingCellRef(exportCopy, v56, v57, v58, v59);
  }

  else
  {
    memset(v64, 0, 24);
  }

  v61 = objc_msgSend_initWithFormula_options_partialResults_calcEngine_hostCellRef_(v60, v56, v46, 8, v55, v14, v64);

  TSCEASTStreamIterator::~TSCEASTStreamIterator(v65, v62);

  return v61;
}

- (id)copyByRewritingNumberToDurationForSageImport:(const TSCECellRef *)import durationUnitLargest:(unsigned __int8)largest
{
  selfCopy = self;
  v10 = objc_msgSend_astNodeArrayCopy(selfCopy, v6, v7, v8, v9);
  TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v27);
  TSCEASTStreamIterator::TSCEASTStreamIterator(v23, v10, &v27);
  v23[0] = &unk_2834A5120;
  largestCopy = largest;
  TSCEASTStreamIterator::rewrite(v23, v11, v12, v13, v14);
  if (v24 == 1)
  {
    v16 = v25;
    v25 = 0;
    v17 = [TSCEFormulaObject alloc];
    v20 = objc_msgSend_initWithNodeArray_translationFlags_(v17, v18, v16, selfCopy->_translationFlags._flags, v19);

    selfCopy = v20;
    TSCEASTNodeArray::freeNodeArray(v16, v21);
  }

  TSCEASTStreamIterator::~TSCEASTStreamIterator(v23, v15);
  return selfCopy;
}

- (id)copyByOffsettingRelativeReferences:(id)references oldContainingCell:(const TSCECellRef *)cell newContainingTable:(const TSKUIDStruct *)table offset:(TSUColumnRowOffset)offset
{
  referencesCopy = references;
  selfCopy = self;
  v16 = objc_msgSend_astNodeArrayCopy(selfCopy, v12, v13, v14, v15);
  TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v29, referencesCopy, cell);
  sub_221572E80(v28, v16, &v29, table->_lower, table->_upper, *&offset);
  TSCEASTRewriter::rewrite(v28, v17, v18, v19, v20);
  if (v28[97] == 1)
  {
    v21 = TSCEASTRewriter::resultArray(v28);
    v22 = [TSCEFormulaObject alloc];
    v25 = objc_msgSend_initWithNodeArray_translationFlags_(v22, v23, v21, selfCopy->_translationFlags._flags, v24);

    selfCopy = v25;
    TSCEASTNodeArray::freeNodeArray(v21, v26);
  }

  TSCEASTRewriter::~TSCEASTRewriter(v28);

  return selfCopy;
}

- (id)copyByOffsettingRelativeReferences:(TSUColumnRowOffset)references
{
  selfCopy = self;
  v9 = objc_msgSend_astNodeArrayCopy(selfCopy, v5, v6, v7, v8);
  TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v22);
  sub_221572EDC(v21, v9, &v22, *&references);
  TSCEASTRewriter::rewrite(v21, v10, v11, v12, v13);
  if (v21[97] == 1)
  {
    v14 = TSCEASTRewriter::resultArray(v21);
    v15 = [TSCEFormulaObject alloc];
    v18 = objc_msgSend_initWithNodeArray_translationFlags_(v15, v16, v14, selfCopy->_translationFlags._flags, v17);

    selfCopy = v18;
    TSCEASTNodeArray::freeNodeArray(v14, v19);
  }

  TSCEASTRewriter::~TSCEASTRewriter(v21);
  return selfCopy;
}

- (id)copyByRewritingGroupUid:(const TSKUIDStruct *)uid groupByUID:(const TSKUIDStruct *)d
{
  selfCopy = self;
  v11 = objc_msgSend_astNodeArrayCopy(selfCopy, v7, v8, v9, v10);
  TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v26);
  sub_2214CE78C(v24, v11, &v26, d, uid);
  TSCEASTStreamIterator::rewrite(v24, v12, v13, v14, v15);
  if (v24[97] == 1)
  {
    v17 = v25;
    v25 = 0;
    v18 = [TSCEFormulaObject alloc];
    v21 = objc_msgSend_initWithNodeArray_translationFlags_(v18, v19, v17, selfCopy->_translationFlags._flags, v20);

    selfCopy = v21;
    TSCEASTNodeArray::freeNodeArray(v17, v22);
  }

  TSCEASTStreamIterator::~TSCEASTStreamIterator(v24, v16);
  return selfCopy;
}

- (unsigned)encodeToArchive:(void *)archive archiver:(id)archiver
{
  archiverCopy = archiver;
  *(archive + 4) |= 1u;
  v7 = *(archive + 3);
  if (!v7)
  {
    v8 = *(archive + 1);
    if (v8)
    {
      v8 = *(v8 & 0xFFFFFFFFFFFFFFFELL);
    }

    v7 = google::protobuf::Arena::CreateMaybeMessage<TSCE::ASTNodeArrayArchive>(v8);
    *(archive + 3) = v7;
  }

  v9 = sub_2215C8348(v7, self->_astNodeArray, archiverCopy, 1);
  flags = self->_translationFlags._flags;
  if (self->_translationFlags._flags)
  {
    *(archive + 4) |= 2u;
    v11 = *(archive + 4);
    if (!v11)
    {
      v12 = *(archive + 1);
      if (v12)
      {
        v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
      }

      v11 = google::protobuf::Arena::CreateMaybeMessage<TSCE::FormulaTranslationFlagsArchive>(v12);
      *(archive + 4) = v11;
      flags = self->_translationFlags._flags;
    }

    v13 = *(v11 + 16);
    *(v11 + 24) = (flags & 2) != 0;
    *(v11 + 25) = (flags & 4) != 0;
    *(v11 + 26) = (flags & 0x20) != 0;
    *(v11 + 27) = flags >> 7;
    *(v11 + 16) = v13 | 0x1F;
    *(v11 + 28) = (flags & 8) != 0;
    if ((flags & 0x20) != 0)
    {
      if (self->_hostTableUID._lower || self->_hostTableUID._upper)
      {
        *(archive + 4) |= 4u;
        v14 = *(archive + 5);
        if (!v14)
        {
          v15 = *(archive + 1);
          if (v15)
          {
            v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
          }

          v14 = MEMORY[0x223DA0360](v15);
          *(archive + 5) = v14;
        }

        TSKUIDStruct::saveToMessage(&self->_hostTableUID, v14);
      }

      if (self->_hostColumnUID._lower || self->_hostColumnUID._upper)
      {
        *(archive + 4) |= 8u;
        v16 = *(archive + 6);
        if (!v16)
        {
          v17 = *(archive + 1);
          if (v17)
          {
            v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
          }

          v16 = MEMORY[0x223DA0360](v17);
          *(archive + 6) = v16;
        }

        TSKUIDStruct::saveToMessage(&self->_hostColumnUID, v16);
      }

      if (self->_hostRowUID._lower || self->_hostRowUID._upper)
      {
        *(archive + 4) |= 0x10u;
        v18 = *(archive + 7);
        if (!v18)
        {
          v19 = *(archive + 1);
          if (v19)
          {
            v19 = *(v19 & 0xFFFFFFFFFFFFFFFELL);
          }

          v18 = MEMORY[0x223DA0360](v19);
          *(archive + 7) = v18;
        }

        TSKUIDStruct::saveToMessage(&self->_hostRowUID, v18);
      }
    }
  }

  return v9;
}

+ (id)parseFormula:(id)formula calcEngine:(id)engine hostTableInfo:(id)info containingCellRef:(const TSCECellRef *)ref parseOptionsContext:(id)context
{
  formulaCopy = formula;
  engineCopy = engine;
  infoCopy = info;
  contextCopy = context;
  v79 = infoCopy;
  v80 = contextCopy;
  if (!engineCopy)
  {
    v19 = MEMORY[0x277D81150];
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "+[TSCEFormulaObject parseFormula:calcEngine:hostTableInfo:containingCellRef:parseOptionsContext:]", v16, v17);
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulaObject.mm", v22, v23);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v25, v20, v24, 2208, 0, "invalid nil value for '%{public}s'", "calcEngine");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27, v28, v29);
  }

  isSageUpgrade = objc_msgSend_isSageUpgrade(contextCopy, v14, v15, v16, v17);
  if (objc_msgSend_hasPrefix_(formulaCopy, v31, @"=", v32, v33))
  {
    v38 = objc_msgSend_substringFromIndex_(formulaCopy, v34, 1, v36, v37);

    formulaCopy = v38;
  }

  if (isSageUpgrade)
  {
    v39 = objc_opt_new();
    v40 = sub_221141254(v39, formulaCopy);

    formulaCopy = v40;
  }

  if ((objc_msgSend_isChartFormula(contextCopy, v34, v35, v36, v37) & 1) == 0 && objc_msgSend_hasPrefix_(formulaCopy, v41, @"__CHART("), v43, v44)
  {
    v45 = MEMORY[0x277D81150];
    v46 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v41, "+[TSCEFormulaObject parseFormula:calcEngine:hostTableInfo:containingCellRef:parseOptionsContext:]", v43, v44);
    v50 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v47, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulaObject.mm", v48, v49);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v45, v51, v46, v50, 2230, 0, "Only chart formulas should start with the chart prefix.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v52, v53, v54, v55);
  }

  v56 = objc_msgSend_documentRoot(engineCopy, v41, v42, v43, v44);
  v61 = objc_msgSend_stylesheet(v56, v57, v58, v59, v60);

  v62 = [TSCEUnpersistedStorage alloc];
  v67 = objc_msgSend_context(engineCopy, v63, v64, v65, v66);
  v69 = objc_msgSend_initWithContext_string_stylesheet_kind_(v62, v68, v67, formulaCopy, v61, 0);

  v70 = TSTParser::TSTParser(v82, engineCopy, v69, v80);
  coordinate = ref->coordinate;
  v71 = TSTParser::parse(v70, infoCopy, &coordinate);
  v72 = v83;
  v77 = v72;
  if (v71)
  {
    __C();
  }

  if (!v72)
  {
    v77 = objc_msgSend_syntaxError(TSCEError, v73, v74, v75, v76);
  }

  objc_msgSend_setError_(v80, v73, v77, v75, v76);

  TSTParser::~TSTParser(v82);

  return 0;
}

+ (id)parseFormula:(id)formula calcEngine:(id)engine containingCellRef:(const TSCECellRef *)ref parseOptionsContext:(id)context
{
  formulaCopy = formula;
  engineCopy = engine;
  contextCopy = context;
  tableUID = ref->_tableUID;
  v16 = objc_msgSend_tableResolverForTableUID_(engineCopy, v13, &tableUID, v14, v15);
  v21 = v16;
  if (v16)
  {
    v22 = objc_msgSend_tableInfo(v16, v17, v18, v19, v20);
    objc_msgSend_parseFormula_calcEngine_hostTableInfo_containingCellRef_parseOptionsContext_(self, v23, formulaCopy, engineCopy, v22, ref, contextCopy);
  }

  else
  {
    v22 = 0;
    objc_msgSend_parseFormula_calcEngine_hostTableInfo_containingCellRef_parseOptionsContext_(self, v17, formulaCopy, engineCopy, 0, ref, contextCopy);
  }
  v24 = ;

  return v24;
}

@end