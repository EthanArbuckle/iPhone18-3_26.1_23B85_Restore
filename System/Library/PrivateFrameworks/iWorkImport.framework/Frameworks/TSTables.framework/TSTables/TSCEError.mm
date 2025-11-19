@interface TSCEError
+ (BOOL)errorForRichTextStorage:(id)a3 outValue:(id *)a4;
+ (TSCEError)errorWithDictionary:(id)a3;
+ (id)argumentEqualsToZeroErrorForFunctionName:(id)a3 argumentNumber:(int)a4;
+ (id)argumentErrorForFunctionName:(id)a3;
+ (id)arrayTooLargeError:(id)a3;
+ (id)arrayValueNotNumberErrorForFunctionName:(id)a3 argumentNumber:(int)a4;
+ (id)attachmentError;
+ (id)attachmentErrorInTextCell:(BOOL)a3;
+ (id)autoNumberAttachmentError;
+ (id)autoNumberAttachmentErrorInTextCell:(BOOL)a3;
+ (id)cannotAcceptLambdaError:(id)a3 argIndex:(int)a4;
+ (id)checkForTooLargeArrayNumColumns:(unsigned int)a3 numRows:(unsigned int)a4 functionName:(id)a5;
+ (id)checkForTooLargeMatrixNumColumns:(unsigned int)a3 numRows:(unsigned int)a4 functionName:(id)a5;
+ (id)comparisonTypeErrorForLeftType:(char)a3 rightType:(char)a4;
+ (id)contentBlockedSpillError:(id)a3 spillRange:(TSUCellRect)a4 spillBlocker:(TSUCellRect)a5;
+ (id)currencyNotAllowedErrorForFunctionName:(id)a3 argumentNumber:(int)a4;
+ (id)dateEarlierThanStartingDateErrorForFunctionName:(id)a3;
+ (id)delimiterValueNotProvided:(id)a3;
+ (id)differentDimensionsErrorForFunctionName:(id)a3;
+ (id)differentNumberOfDataPointsErrorForFunctionName:(id)a3;
+ (id)differentNumberOfElementsErrorForFunctionName:(id)a3;
+ (id)disallowedStockModeError:(id)a3;
+ (id)durationNotAllowedError:(id)a3 argumentNumber:(int)a4;
+ (id)emptyArgumentSpecificErrorForArgumentNumber:(int)a3;
+ (id)errorForErrorType:(int64_t)a3;
+ (id)errorForErrorType:(int64_t)a3 functionName:(id)a4;
+ (id)errorForErrorType:(int64_t)a3 functionName:(id)a4 argIndex:(int)a5;
+ (id)errorForInvalidReference:(TSCERangeRef *)a3 orString:(id)a4 contextEntityUID:(const TSKUIDStruct *)a5;
+ (id)errorForInvalidReference:(TSCERangeRef *)a3 orString:(id)a4 contextEntityUID:(const TSKUIDStruct *)a5 invalidMergeReference:(BOOL)a6 disqualifiedFromEndCell:(BOOL)a7;
+ (id)evaluationRecursingTooDeepError:(id)a3;
+ (id)inconsistantParameterFormatError:(int)a3 argIndex2:(int)a4 functionName:(id)a5;
+ (id)indirectErrorForRangeReference:(TSCERangeRef *)a3 hostTableUID:(const TSKUIDStruct *)a4;
+ (id)invalidAggregateColumnErrorForFunctionName:(id)a3 argumentNumber:(int)a4;
+ (id)invalidArgumentEqualityRelationshipErrorForFunctionName:(id)a3 argIndex1:(int)a4 argIndex2:(int)a5;
+ (id)invalidArgumentPairingsErrorForFunctionName:(id)a3 hasInitialUnrelatedArgument:(BOOL)a4;
+ (id)invalidArgumentRelationshipErrorForFunctionName:(id)a3 argIndex1:(int)a4 argIndex2:(int)a5 argsAscending:(BOOL)a6 equalityPermitted:(BOOL)a7;
+ (id)invalidArgumentsErrorForFunctionName:(id)a3 argumentIndex:(int)a4;
+ (id)invalidBaseCharacterErrorForCharacter:(unsigned __int16)a3 base:(signed __int16)a4;
+ (id)invalidDecimalNumberErrorForArgument:(int)a3 argIndex2:(int)a4 argIndex3:(int)a5 functionName:(id)a6;
+ (id)invalidDecimalNumberErrorForArgument:(int)a3 argIndex2:(int)a4 functionName:(id)a5;
+ (id)invalidDecimalNumberErrorForArgument:(int)a3 functionName:(id)a4;
+ (id)invalidFrequencyErrorForFunctionName:(id)a3 argumentNumber:(int)a4;
+ (id)invalidGroupingColumnErrorForFunctionName:(id)a3 argumentNumber:(int)a4;
+ (id)invalidIndexForChooseError:(int)a3;
+ (id)invalidIntersectionError:(vector<TSCEReferenceValue *) hostTableUID:(std:(const TSKUIDStruct *)a4 :(id)a5 allocator<TSCEReferenceValue *>> *)a3 calcEngine:;
+ (id)invalidMergeReference:(TSCERangeRef *)a3 contextEntityUID:(const TSKUIDStruct *)a4;
+ (id)invalidProbabilityErrorForFunctionName:(id)a3;
+ (id)invalidRangeUsageErrorForReference:(const TSCERangeRef *)a3;
+ (id)invalidRegexError:(id)a3;
+ (id)invalidStockCodeError:(id)a3;
+ (id)invalidTailErrorForFunctionName:(id)a3 argumentNumber:(int)a4;
+ (id)invalidTypeErrorForFunctionName:(id)a3 argumentNumber:(int)a4;
+ (id)invalidUnitStringError:(id)a3;
+ (id)loadFromArchive:(const void *)a3;
+ (id)matchNotFoundErrorForValue:(id)a3 isRegex:(BOOL)a4 afterMatch:(BOOL)a5 previousValueToMatch:(id)a6 previousValueIsRegex:(BOOL)a7 occurrence:(int)a8 matchesFound:(int)a9 functionName:(id)a10;
+ (id)matchNotFoundErrorForValue:(id)a3 isRegex:(BOOL)a4 functionName:(id)a5;
+ (id)matrixNotSquareError:(id)a3 argIndex:(int)a4;
+ (id)matrixTooLargeError:(id)a3;
+ (id)mergeBlockedSpillError:(id)a3 spillRange:(TSUCellRect)a4 spillBlocker:(TSUCellRect)a5;
+ (id)mismatchedCurrenciesErrorForFunctionName:(id)a3;
+ (id)mismatchedUnitsErrorForFunctionName:(id)a3;
+ (id)mismatchedUnitsErrorForFunctionName:(id)a3 argumentNumberString:(id)a4;
+ (id)missingPivotTableErrorForFunctionName:(id)a3 argumentNumber:(int)a4;
+ (id)mixedTypeManipulationErrorForFunctionName:(id)a3;
+ (id)multipleDurationsErrorForFunctionName:(id)a3;
+ (id)negativeArrayValueErrorForFunctionName:(id)a3 argumentNumber:(int)a4;
+ (id)noConditionIsTrueErrorForFunctionName:(id)a3;
+ (id)noSuitableArgumentsFoundErrorForFunctionName:(id)a3 requiredType:(char)a4;
+ (id)noTradingInformationErrorWithNextAvailableDate:(id)a3;
+ (id)nonEmptyStringRequiredErrorForFunctionName:(id)a3;
+ (id)nonMetricUnitPrefixErrorForUnitString:(id)a3;
+ (id)notAReferenceErrorForFunctionName:(id)a3;
+ (id)notEnoughInputsErrorForFunctionName:(id)a3 argumentNumber:(int)a4 required:(int)a5;
+ (id)numberDoesNotConvergeErrorForFunctionName:(id)a3;
+ (id)numberDoesNotConvergeWithEstimateErrorForFunctionName:(id)a3;
+ (id)numberErrorForFunctionName:(id)a3;
+ (id)onlyPositiveOrNegativeErrorForFunctionName:(id)a3;
+ (id)outOfArrayBoundsError:(id)a3;
+ (id)outOfBoundsArgumentErrorForArgument:(int)a3 functionName:(id)a4 lowerBound:(double)a5 lowerBoundInclusive:(BOOL)a6;
+ (id)outOfBoundsArgumentErrorForArgument:(int)a3 functionName:(id)a4 lowerBound:(double)a5 lowerBoundInclusive:(BOOL)a6 upperBound:(double)a7 upperBoundInclusive:(BOOL)a8;
+ (id)outOfBoundsArgumentErrorForArgument:(int)a3 functionName:(id)a4 upperBound:(double)a5 upperBoundInclusive:(BOOL)a6;
+ (id)padWithValuesNotProvided:(id)a3;
+ (id)positionLargerThanArrayErrorForFunctionName:(id)a3;
+ (id)rangeDoesNotSumToOneForFunctionName:(id)a3 argumentNumber:(int)a4;
+ (id)rangeSizeMismatchErrorForFunctionName:(id)a3;
+ (id)referenceToEmptyCellErrorForFunctionName:(id)a3 rangeReference:(TSCERangeRef *)a4;
+ (id)referenceToNonexistentTableError:(TSKUIDStruct)a3;
+ (id)remoteDataUnavailableErrorWithAttribute:(id)a3;
+ (id)repeatedIdentifierError:(id)a3;
+ (id)requiresIdentifierError:(id)a3 argIndex:(int)a4;
+ (id)requiresLambdaArgumentError:(id)a3 argIndex:(int)a4;
+ (id)requiresOneDimArrayInputError:(id)a3 argumentNumber:(int)a4;
+ (id)signsMustMatchErrorForFunctionName:(id)a3;
+ (id)sizeMismatchInputError:(id)a3;
+ (id)startNumberExceedsStringLengthErrorForFunctionName:(id)a3;
+ (id)stringDoesNotRepresentDateErrorForFunctionName:(id)a3 string:(id)a4;
+ (id)stringDoesNotRepresentNumberErrorForFunctionName:(id)a3 string:(id)a4;
+ (id)sumMixedDurationsAndUnitlessWithoutADateErrorForFunctionName:(id)a3;
+ (id)tableSizeBlockedSpillError:(id)a3 spillRange:(TSUCellRect)a4;
+ (id)tooFewDataPointsErrorForFunctionName:(id)a3;
+ (id)tooManyArguments:(id)a3 maximum:(unint64_t)a4 provided:(unint64_t)a5;
+ (id)typeErrorForValue:(id)a3 context:(id)a4 functionSpec:(id)a5 argumentIndex:(int)a6;
+ (id)unacceptableIdentifierError:(id)a3;
+ (id)unboundVariableError:(id)a3 variableName:(id)a4;
+ (id)unitsNotAllowedErrorForFunctionName:(id)a3 argumentNumber:(int)a4;
+ (id)unknownFunctionError:(id)a3;
+ (id)valueNotAvailableErrorForFunctionName:(id)a3;
+ (id)wrongArityForLambdaError:(id)a3 providedArity:(int)a4 expectedArity:(int)a5;
+ (id)wrongNumberOfArgumentsErrorForFunctionName:(id)a3 provided:(unint64_t)a4;
+ (int)errorFlavorForErrorType:(int64_t)a3;
+ (int64_t)errorTypeForErrorKey:(id)a3;
+ (int64_t)possibleErrorTypeForErrorFlavor:(int)a3;
- ($85CD2974BE96D4886BB301820D1C36C2)spillRangeSize;
- (BOOL)BOOLForKey:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isInvalidMergeReference;
- (BOOL)isNativelyEqual:(id)a3;
- (NSString)errorTypeKey;
- (TSCEError)initWithErrorType:(int64_t)a3;
- (TSCERangeRef)rangeRef;
- (TSKUIDStruct)cellRangeOwnerUID;
- (TSKUIDStruct)ownerUID;
- (TSUCellRect)cellRange;
- (TSUCellRect)spillBlocker;
- (TSUCellRect)spillRange;
- (double)doubleValue;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dateValue;
- (id)displayStringWithCalculationEngine:(id)a3 forTable:(TSKUIDStruct)a4 andCellID:(TSUCellCoord)a5;
- (id)displayStringWithLocale:(id)a3;
- (id)errorDictionary;
- (id)numberForKey:(id)a3;
- (id)stringForKey:(id)a3;
- (id)stringValue;
- (unint64_t)hash;
- (void)raiseException;
- (void)saveToArchive:(void *)a3;
- (void)setBool:(BOOL)a3 forKey:(id)a4;
- (void)setCellRange:(TSUCellRect)a3;
- (void)setCellRangeOwnerUID:(TSKUIDStruct)a3;
- (void)setFunctionName:(id)a3;
- (void)setNumber:(id)a3 forKey:(id)a4;
- (void)setOwnerUID:(TSKUIDStruct)a3;
- (void)setRangeRef:(TSCERangeRef *)a3;
- (void)setSpillBlocker:(TSUCellRect)a3;
- (void)setSpillRange:(TSUCellRect)a3;
- (void)setSpillRangeSize:(id)a3;
- (void)setString:(id)a3 forKey:(id)a4;
@end

@implementation TSCEError

+ (int64_t)errorTypeForErrorKey:(id)a3
{
  v3 = a3;
  if (objc_msgSend_hasPrefix_(v3, v4, @"err:", v5, v6))
  {
    v11 = objc_msgSend_length(@"err:", v7, v8, v9, v10);
    v15 = objc_msgSend_substringFromIndex_(v3, v12, v11, v13, v14);
    v20 = objc_msgSend_integerValue(v15, v16, v17, v18, v19);
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (TSCEError)initWithErrorType:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = TSCEError;
  result = [(TSCEError *)&v5 init];
  if (result)
  {
    result->_errorType = a3;
  }

  return result;
}

+ (id)errorForErrorType:(int64_t)a3
{
  v4 = [TSCEError alloc];
  v8 = objc_msgSend_initWithErrorType_(v4, v5, a3, v6, v7);

  return v8;
}

+ (id)errorForErrorType:(int64_t)a3 functionName:(id)a4
{
  v5 = a4;
  v9 = objc_msgSend_errorForErrorType_(TSCEError, v6, a3, v7, v8);
  v13 = v9;
  if (v5)
  {
    objc_msgSend_setFunctionName_(v9, v10, v5, v11, v12);
  }

  return v13;
}

+ (id)errorForErrorType:(int64_t)a3 functionName:(id)a4 argIndex:(int)a5
{
  v5 = *&a5;
  v6 = objc_msgSend_errorForErrorType_functionName_(TSCEError, a2, a3, a4, *&a5);
  v10 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v7, v5, v8, v9);
  objc_msgSend_setArgIndex_(v6, v11, v10, v12, v13);

  return v6;
}

+ (int)errorFlavorForErrorType:(int64_t)a3
{
  if (a3 > 12)
  {
    if (a3 != 123)
    {
      if (a3 == 13)
      {
        return 2;
      }

      return 1;
    }

    return 4;
  }

  else
  {
    if (a3)
    {
      if (a3 == 7)
      {
        return 3;
      }

      return 1;
    }

    return 0;
  }
}

+ (int64_t)possibleErrorTypeForErrorFlavor:(int)a3
{
  if (a3 > 4)
  {
    return 1;
  }

  else
  {
    return qword_2217F2FE0[a3];
  }
}

+ (TSCEError)errorWithDictionary:(id)a3
{
  v59 = *MEMORY[0x277D85DE8];
  v51 = a3;
  v52 = objc_msgSend_objectForKey_(v51, v3, @"TSCEErrorTypeKey", v4, v5);
  if (!v52)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "+[TSCEError errorWithDictionary:]", v7, v8);
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEError.mm", v12, v13);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v15, v10, v14, 201, 0, "Must have errorTypeKey set to use this API");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17, v18, v19);
  }

  v20 = objc_msgSend_errorTypeForErrorKey_(TSCEError, v6, v52, v7, v8);
  v53 = objc_msgSend_errorForErrorType_(TSCEError, v21, v20, v22, v23);
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v24 = v51;
  v29 = objc_msgSend_countByEnumeratingWithState_objects_count_(v24, v25, &v54, v58, 16);
  if (v29)
  {
    v30 = *v55;
    do
    {
      for (i = 0; i != v29; ++i)
      {
        if (*v55 != v30)
        {
          objc_enumerationMutation(v24);
        }

        v32 = *(*(&v54 + 1) + 8 * i);
        if (objc_msgSend_isEqualToString_(v32, v26, @"TSCEErrorTypeKey", v27, v28))
        {
          v33 = objc_msgSend_objectForKey_(v24, v26, v32, v27, v28);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            objc_msgSend_setString_forKey_(v53, v34, v33, v32, v35);
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              objc_msgSend_setNumber_forKey_(v53, v36, v33, v32, v38);
            }

            else
            {
              v39 = MEMORY[0x277D81150];
              v40 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v36, "+[TSCEError errorWithDictionary:]", v37, v38);
              v44 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v41, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEError.mm", v42, v43);
              objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v39, v45, v40, v44, 215, 0, "Should only have NSNumber and NSString objects in an errorDictionary");

              objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v46, v47, v48, v49);
            }
          }
        }
      }

      v29 = objc_msgSend_countByEnumeratingWithState_objects_count_(v24, v26, &v54, v58, 16);
    }

    while (v29);
  }

  return v53;
}

+ (id)loadFromArchive:(const void *)a3
{
  v4 = *(a3 + 12);
  v5 = [TSCEError alloc];
  v12 = objc_msgSend_initWithErrorType_(v5, v6, v4, v7, v8);
  v13 = *(a3 + 8);
  if (v13 >= 1)
  {
    v14 = 8;
    while (1)
    {
      v15 = *(*(a3 + 5) + v14);
      v20 = objc_msgSend_tsp_stringWithProtobufString_(MEMORY[0x277CCACA8], v9, *(v15 + 24) & 0xFFFFFFFFFFFFFFFELL, v10, v11);
      v21 = *(v15 + 16);
      if ((v21 & 2) != 0)
      {
        break;
      }

      if ((v21 & 4) != 0)
      {
        v22 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v16, v17, v18, v19, *(v15 + 40));
        objc_msgSend_setNumber_forKey_(v12, v23, v22, v20, v24);
LABEL_7:
      }

      v14 += 8;
      if (!--v13)
      {
        goto LABEL_9;
      }
    }

    v22 = objc_msgSend_tsp_stringWithProtobufString_(MEMORY[0x277CCACA8], v16, *(v15 + 32) & 0xFFFFFFFFFFFFFFFELL, v18, v19);
    objc_msgSend_setString_forKey_(v12, v25, v22, v20, v26);
    goto LABEL_7;
  }

LABEL_9:

  return v12;
}

- (void)saveToArchive:(void *)a3
{
  v55 = *MEMORY[0x277D85DE8];
  errorType = self->_errorType;
  *(a3 + 4) |= 1u;
  *(a3 + 12) = errorType;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v6 = self->_errorDictionary;
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v48, v54, 16);
  if (v11)
  {
    v12 = *v49;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v49 != v12)
        {
          objc_enumerationMutation(v6);
        }

        v14 = *(*(&v48 + 1) + 8 * i);
        v15 = objc_msgSend_objectForKey_(self->_errorDictionary, v8, v14, v9, v10);
        if (v15)
        {
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();
          if (isKindOfClass & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
          {
            v21 = *(a3 + 5);
            if (!v21)
            {
              goto LABEL_15;
            }

            v22 = *(a3 + 8);
            v23 = *v21;
            if (v22 < *v21)
            {
              *(a3 + 8) = v22 + 1;
              v24 = *&v21[2 * v22 + 2];
              goto LABEL_17;
            }

            if (v23 == *(a3 + 9))
            {
LABEL_15:
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a3 + 24));
              v21 = *(a3 + 5);
              v23 = *v21;
            }

            *v21 = v23 + 1;
            v24 = google::protobuf::Arena::CreateMaybeMessage<TSCE::ErrorArchive_ErrorDictionaryEntry>(*(a3 + 3));
            v37 = *(a3 + 8);
            v38 = *(a3 + 5) + 8 * v37;
            *(a3 + 8) = v37 + 1;
            *(v38 + 8) = v24;
LABEL_17:
            v39 = objc_msgSend_tsp_protobufString(v14, v16, v17, v18, v19);
            *(v24 + 16) |= 1u;
            sub_22108CCD0(__p, v39);
            google::protobuf::internal::ArenaStringPtr::Set();
            if (v53 < 0)
            {
              operator delete(__p[0]);
            }

            v40 = v15;
            v45 = v40;
            if (isKindOfClass)
            {
              objc_msgSend_doubleValue(v40, v41, v42, v43, v44);
              *(v24 + 16) |= 4u;
              *(v24 + 40) = v46;
            }

            else
            {
              v47 = objc_msgSend_tsp_protobufString(v40, v41, v42, v43, v44);
              *(v24 + 16) |= 2u;
              sub_22108CCD0(__p, v47);
              google::protobuf::internal::ArenaStringPtr::Set();
              if (v53 < 0)
              {
                operator delete(__p[0]);
              }
            }
          }

          else
          {
            v25 = MEMORY[0x277D81150];
            v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "[TSCEError saveToArchive:]", v18, v19);
            v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEError.mm", v28, v29);
            v31 = objc_opt_class();
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v25, v32, v26, v30, 260, 0, "Type of %@ cannot be stored in error dictionary", v31);

            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v33, v34, v35, v36);
          }

          continue;
        }
      }

      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v8, &v48, v54, 16);
    }

    while (v11);
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v9 = objc_msgSend_errorType(self, v5, v6, v7, v8);
  v13 = objc_msgSend_initWithErrorType_(v4, v10, v9, v11, v12);
  v18 = objc_msgSend_mutableCopy(self->_errorDictionary, v14, v15, v16, v17);
  v19 = v13[2];
  v13[2] = v18;

  return v13;
}

- (NSString)errorTypeKey
{
  v6 = objc_msgSend_errorType(self, a2, v2, v3, v4);

  return objc_msgSend_errorKeyForErrorType_(TSCEError, v5, v6, v7, v8);
}

- (id)numberForKey:(id)a3
{
  v5 = objc_msgSend_objectForKey_(self->_errorDictionary, a2, a3, v3, v4);
  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v9 = MEMORY[0x277D81150];
      v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSCEError numberForKey:]", v7, v8);
      v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEError.mm", v12, v13);
      v15 = objc_opt_class();
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v16, v10, v14, 295, 0, "Only expecting NSNumber here, got %@", v15);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19, v20);
    }
  }

  return v5;
}

- (BOOL)BOOLForKey:(id)a3
{
  v5 = objc_msgSend_numberForKey_(self, a2, a3, v3, v4);
  v10 = v5;
  if (v5)
  {
    v11 = objc_msgSend_BOOLValue(v5, v6, v7, v8, v9);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)stringForKey:(id)a3
{
  v5 = objc_msgSend_objectForKey_(self->_errorDictionary, a2, a3, v3, v4);
  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v9 = MEMORY[0x277D81150];
      v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSCEError stringForKey:]", v7, v8);
      v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEError.mm", v12, v13);
      v15 = objc_opt_class();
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v16, v10, v14, 313, 0, "Only expecting NSString here, got %@", v15);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19, v20);
    }
  }

  return v5;
}

- (void)setNumber:(id)a3 forKey:(id)a4
{
  v13 = a3;
  v9 = a4;
  if (v13 && v9)
  {
    errorDictionary = self->_errorDictionary;
    if (!errorDictionary)
    {
      v11 = objc_opt_new();
      v12 = self->_errorDictionary;
      self->_errorDictionary = v11;

      errorDictionary = self->_errorDictionary;
    }

    objc_msgSend_setObject_forKey_(errorDictionary, v6, v13, v9, v8);
  }

  else if (v9)
  {
    objc_msgSend_removeObjectForKey_(self->_errorDictionary, v6, v9, v7, v8);
  }
}

- (void)setString:(id)a3 forKey:(id)a4
{
  v13 = a3;
  v9 = a4;
  if (v13 && v9)
  {
    errorDictionary = self->_errorDictionary;
    if (!errorDictionary)
    {
      v11 = objc_opt_new();
      v12 = self->_errorDictionary;
      self->_errorDictionary = v11;

      errorDictionary = self->_errorDictionary;
    }

    objc_msgSend_setObject_forKey_(errorDictionary, v6, v13, v9, v8);
  }

  else if (v9)
  {
    objc_msgSend_removeObjectForKey_(self->_errorDictionary, v6, v9, v7, v8);
  }
}

- (void)setBool:(BOOL)a3 forKey:(id)a4
{
  v4 = a3;
  v15 = a4;
  if (v15 && v4)
  {
    errorDictionary = self->_errorDictionary;
    if (!errorDictionary)
    {
      v10 = objc_opt_new();
      v11 = self->_errorDictionary;
      self->_errorDictionary = v10;

      errorDictionary = self->_errorDictionary;
    }

    v12 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v6, 1, v7, v8);
    objc_msgSend_setObject_forKey_(errorDictionary, v13, v12, v15, v14);
  }

  else if (v15)
  {
    objc_msgSend_removeObjectForKey_(self->_errorDictionary, v6, v15, v7, v8);
  }
}

- (void)setFunctionName:(id)a3
{
  v8 = objc_msgSend_copy(a3, a2, a3, v3, v4);
  objc_msgSend_setString_forKey_(self, v6, v8, @"TSCEFunctionNameKey", v7);
}

- (TSKUIDStruct)ownerUID
{
  v4 = objc_msgSend_stringForKey_(self, a2, @"kTSCEOwnerUIDKey", v2, v3);
  if (v4)
  {
    v5 = TSKMakeUIDStructFromString();
    v7 = v6;
  }

  else
  {
    v7 = 0;
    v5 = 0;
  }

  v8 = v5;
  v9 = v7;
  result._upper = v9;
  result._lower = v8;
  return result;
}

- (void)setOwnerUID:(TSKUIDStruct)a3
{
  v8 = a3;
  if (a3._lower | a3._upper)
  {
    v5 = TSKUIDStruct::description(&v8);
    objc_msgSend_setString_forKey_(self, v6, v5, @"kTSCEOwnerUIDKey", v7, v8._lower, v8._upper);
  }

  else
  {

    objc_msgSend_setString_forKey_(self, a2, 0, @"kTSCEOwnerUIDKey", v3);
  }
}

- (TSKUIDStruct)cellRangeOwnerUID
{
  v4 = objc_msgSend_stringForKey_(self, a2, @"kTSCECellRangeOwnerUIDKey", v2, v3);
  if (v4)
  {
    v5 = TSKMakeUIDStructFromString();
    v7 = v6;
  }

  else
  {
    v7 = 0;
    v5 = 0;
  }

  v8 = v5;
  v9 = v7;
  result._upper = v9;
  result._lower = v8;
  return result;
}

- (void)setCellRangeOwnerUID:(TSKUIDStruct)a3
{
  v8 = a3;
  if (a3._lower | a3._upper)
  {
    v5 = TSKUIDStruct::description(&v8);
    objc_msgSend_setString_forKey_(self, v6, v5, @"kTSCECellRangeOwnerUIDKey", v7, v8._lower, v8._upper);
  }

  else
  {

    objc_msgSend_setString_forKey_(self, a2, 0, @"kTSCECellRangeOwnerUIDKey", v3);
  }
}

- (TSUCellRect)cellRange
{
  v4 = 0x7FFF7FFFFFFFLL;
  v5 = objc_msgSend_stringForKey_(self, a2, @"kTSCECellRectKey", v2, v3);
  v9 = v5;
  if (!v5)
  {
    v29 = 0;
    goto LABEL_43;
  }

  v10 = objc_msgSend_componentsSeparatedByString_(v5, v6, @":", v7, v8);
  if (objc_msgSend_count(v10, v11, v12, v13, v14))
  {
    v18 = objc_msgSend_objectAtIndexedSubscript_(v10, v15, 0, v16, v17);
    v19 = TSUCellCoordFromString();

    v27 = v19;
    if (objc_msgSend_count(v10, v20, v21, v22, v23) >= 2)
    {
      v28 = objc_msgSend_objectAtIndexedSubscript_(v10, v24, 1, v25, v26);
      v27 = TSUCellCoordFromString();
    }

    v29 = 0;
    if ((v19 & 0xFFFFFFFFFFFFLL) == 0x7FFF7FFFFFFFLL || (v27 & 0xFFFFFFFFFFFFLL) == 0x7FFF7FFFFFFFLL)
    {
      goto LABEL_41;
    }

    v30 = v19 & 0xFFFF00000000;
    v31 = v19;
    v32 = (v19 & 0xFFFF00000000) != 0x7FFF00000000 || v19 == 0x7FFFFFFFLL;
    v33 = !v32;
    v34 = (v27 & 0xFFFF00000000) != 0x7FFF00000000 || v27 == 0x7FFFFFFFLL;
    v35 = !v34;
    if (v33 == v35)
    {
      v36 = v19 != 0x7FFFFFFFLL || v30 == 0x7FFF00000000;
      v37 = !v36;
      v38 = v27 != 0x7FFFFFFFLL || (v27 & 0xFFFF00000000) == 0x7FFF00000000;
      v39 = v38;
      if (v37 != v39)
      {
        v40 = HIDWORD(v19);
        v41 = HIDWORD(v27);
        if (v37)
        {
          goto LABEL_34;
        }

        v46 = v19 == 0x7FFFFFFF && v30 != 0x7FFF00000000;
        if (v19 <= v27)
        {
          v46 = 1;
        }

        if (v19 < v27 || !v46)
        {
          goto LABEL_56;
        }

        if ((v33 & 1) == 0)
        {
LABEL_34:
          if (v30 == 0x7FFF00000000)
          {
            v42 = 0x7FFF;
          }

          else
          {
            v42 = WORD2(v19);
          }

          if (WORD2(v19) > WORD2(v27) || v42 < WORD2(v27))
          {
LABEL_56:
            v47 = 0;
            if (WORD2(v19) >= WORD2(v27))
            {
              v48 = HIDWORD(v27);
            }

            else
            {
              v48 = HIDWORD(v19);
            }

            if (WORD2(v19) == 0x7FFF)
            {
              LOWORD(v40) = 0x7FFF;
            }

            if (WORD2(v27) <= v40)
            {
              LOWORD(v41) = v40;
            }

            if (v19 >= v27)
            {
              v31 = v27;
            }

            else
            {
              v31 = v19;
            }

            LOWORD(v40) = v48;
            if (v19 <= v27)
            {
              v49 = v27;
            }

            else
            {
              v49 = v19;
            }

            v29 = ((v41 - v48 + 1) | ((v49 - v31) << 32)) + 0x100000000;
            goto LABEL_70;
          }
        }

        v47 = v19 & 0xFFFF000000000000;
        v29 = 0x100000001;
LABEL_70:
        v4 = v47 | v31 | (v40 << 32);
        goto LABEL_41;
      }
    }
  }

  v29 = 0;
LABEL_41:

LABEL_43:
  v43 = v4;
  v44 = v29;
  result.size = v44;
  result.origin = v43;
  return result;
}

- (void)setCellRange:(TSUCellRect)a3
{
  v9 = a3;
  if (TSUCellRect::isValidOrSpanning(&v9))
  {
    v6 = TSUCellRect::asString(&v9);
    objc_msgSend_setString_forKey_(self, v7, v6, @"kTSCECellRectKey", v8);
  }

  else
  {
    v6 = 0;
    objc_msgSend_setString_forKey_(self, v4, 0, @"kTSCECellRectKey", v5);
  }
}

- (TSCERangeRef)rangeRef
{
  v15.origin = objc_msgSend_cellRange(self, a3, v3, v4, v5);
  v15.size = v8;
  v14._lower = objc_msgSend_cellRangeOwnerUID(self, v8, v9, v10, v11);
  v14._upper = v12;
  TSCERangeRef::TSCERangeRef(retstr, &v15, &v14);
  return result;
}

- (void)setRangeRef:(TSCERangeRef *)a3
{
  if (TSCERangeRef::isValid(a3))
  {
    TSCERangeCoordinate::asCellRect(&a3->range);
    objc_msgSend_setCellRange_(self, v7, v6, v7, v8);
  }

  lower = a3->_tableUID._lower;
  upper = a3->_tableUID._upper;

  MEMORY[0x2821F9670](self, sel_setCellRangeOwnerUID_, lower, upper, v5);
}

- ($85CD2974BE96D4886BB301820D1C36C2)spillRangeSize
{
  v4 = objc_msgSend_stringForKey_(self, a2, @"TSCESpillRangeSizeKey", v2, v3);
  v5 = v4;
  if (v4)
  {
    v6 = TSUColumnRowSizeFromNxMDescription(v4);
  }

  else
  {
    v6 = 0x100000001;
  }

  return v6;
}

- (void)setSpillRangeSize:(id)a3
{
  v6 = TSUColumnRowSizeDescriptionNxM();
  objc_msgSend_setString_forKey_(self, v4, v6, @"TSCESpillRangeSizeKey", v5);
}

- (TSUCellRect)spillRange
{
  v4 = objc_msgSend_stringForKey_(self, a2, @"TSCESpillRangeKey", v2, v3);
  v7 = v4;
  if (v4)
  {
    v15._topLeft = TSCERangeCoordinate::rangeCoordFromString(v4, 0x4000, 0x100000, v5, v6);
    v15._bottomRight = v8;
    TSCERangeCoordinate::asCellRect(&v15);
    v10 = v9;
    v12 = v11;
  }

  else
  {
    v12 = 0;
    v10 = 0x7FFF7FFFFFFFLL;
  }

  v13 = v10;
  v14 = v12;
  result.size = v14;
  result.origin = v13;
  return result;
}

- (void)setSpillRange:(TSUCellRect)a3
{
  v7 = a3;
  v4 = TSUCellRect::asString(&v7);
  objc_msgSend_setString_forKey_(self, v5, v4, @"TSCESpillRangeKey", v6);
}

- (TSUCellRect)spillBlocker
{
  v4 = objc_msgSend_stringForKey_(self, a2, @"TSCESpillBlockerKey", v2, v3);
  v7 = v4;
  if (v4)
  {
    v15._topLeft = TSCERangeCoordinate::rangeCoordFromString(v4, 0x3E8, 1000000, v5, v6);
    v15._bottomRight = v8;
    TSCERangeCoordinate::asCellRect(&v15);
    v10 = v9;
    v12 = v11;
  }

  else
  {
    v12 = 0;
    v10 = 0x7FFF7FFFFFFFLL;
  }

  v13 = v10;
  v14 = v12;
  result.size = v14;
  result.origin = v13;
  return result;
}

- (void)setSpillBlocker:(TSUCellRect)a3
{
  v7 = a3;
  v4 = TSUCellRect::asString(&v7);
  objc_msgSend_setString_forKey_(self, v5, v4, @"TSCESpillBlockerKey", v6);
}

- (double)doubleValue
{
  v4 = MEMORY[0x277D81150];
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEError doubleValue]", v2, v3);
  v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEError.mm", v7, v8);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v10, v5, v9, 677, 0, "What the heck?");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12, v13, v14);
  return 0.0;
}

- (id)dateValue
{
  v4 = MEMORY[0x277D81150];
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEError dateValue]", v2, v3);
  v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEError.mm", v7, v8);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v10, v5, v9, 683, 0, "What the heck?");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12, v13, v14);
  return 0;
}

- (id)stringValue
{
  v4 = MEMORY[0x277D81150];
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEError stringValue]", v2, v3);
  v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEError.mm", v7, v8);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v10, v5, v9, 688, 0, "What the heck?");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12, v13, v14);
  return 0;
}

- (void)raiseException
{
  v2 = self;
  exception = __cxa_allocate_exception(8uLL);
  *exception = v2;
  __cxa_throw(exception, &unk_2834A36D0, sub_221595E98);
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    errorDictionary = self->_errorDictionary;
    v11 = objc_msgSend_errorDictionary(v5, v7, v8, v9, v10);

    if (errorDictionary == v11)
    {
      isEqual = 1;
    }

    else
    {
      v16 = self->_errorDictionary;
      v17 = objc_msgSend_errorDictionary(v5, v12, v13, v14, v15);
      isEqual = objc_msgSend_isEqual_(v16, v18, v17, v19, v20);
    }
  }

  else
  {
    isEqual = 0;
  }

  return isEqual;
}

- (unint64_t)hash
{
  errorType = self->_errorType;
  if (objc_msgSend_count(self->_errorDictionary, a2, v2, v3, v4))
  {
    errorType |= objc_msgSend_hash(self->_errorDictionary, v7, v8, v9, v10) << 16;
  }

  return errorType;
}

- (id)displayStringWithLocale:(id)a3
{
  v8 = a3;
  if (!v8)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSCEError displayStringWithLocale:]", v6, v7);
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEError.mm", v12, v13);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v15, v10, v14, 727, 0, "invalid nil value for '%{public}s'", "locale");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17, v18, v19);
  }

  v20 = objc_msgSend_errorType(self, v4, v5, v6, v7);
  v25 = 0;
  switch(v20)
  {
    case 1:
      v26 = sub_22159A004(v20, v8);
      goto LABEL_209;
    case 2:
      v436 = objc_msgSend_functionName(self, v21, v22, v23, v24);
      v441 = objc_msgSend_tsce_internationalWhitespaceCharacterSet(MEMORY[0x277CCA900], v437, v438, v439, v440);
      v27 = objc_msgSend_stringByTrimmingCharactersInSet_(v436, v442, v441, v443, v444);

      v445 = MEMORY[0x277CCACA8];
      v31 = sub_22159A0DC(v446, v8);
      v77 = objc_msgSend_stringWithFormat_(v445, v447, v31, v448, v449, v27);
      goto LABEL_312;
    case 3:
      v1204 = objc_msgSend_functionName(self, v21, v22, v23, v24);
      v1209 = objc_msgSend_tsce_internationalWhitespaceCharacterSet(MEMORY[0x277CCA900], v1205, v1206, v1207, v1208);
      v27 = objc_msgSend_stringByTrimmingCharactersInSet_(v1204, v1210, v1209, v1211, v1212);

      v1213 = MEMORY[0x277CCACA8];
      v31 = sub_22159A094(v1214, v8);
      v77 = objc_msgSend_stringWithFormat_(v1213, v1215, v31, v1216, v1217, v27);
      goto LABEL_312;
    case 4:
      v26 = sub_22159A5EC(v20, v8);
      goto LABEL_209;
    case 5:
      v26 = sub_22159A124(v20, v8);
      goto LABEL_209;
    case 6:
      v26 = sub_22159A16C(v20, v8);
      goto LABEL_209;
    case 7:
      v26 = sub_22159A244(v20, v8);
      goto LABEL_209;
    case 9:
      v52 = objc_msgSend_extraInfoNumber(self, v21, v22, v23, v24);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v181 = MEMORY[0x277D81150];
        v182 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v177, "[TSCEError displayStringWithLocale:]", v179, v180);
        v186 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v183, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEError.mm", v184, v185);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v181, v187, v182, v186, 796, 0, "invalid number of arguments error exception");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v188, v189, v190, v191);
      }

      v192 = objc_msgSend_functionName(self, v177, v178, v179, v180);
      v196 = objc_msgSend_localizedNameForFunction_(v8, v193, v192, v194, v195);
      v204 = objc_msgSend_functionSpecForFunctionName_(TSCEFunctionSpec, v197, v192, v198, v199);
      if (!v204)
      {
        v205 = MEMORY[0x277D81150];
        v206 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v200, "[TSCEError displayStringWithLocale:]", v202, v203);
        v210 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v207, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEError.mm", v208, v209);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v205, v211, v206, v210, 800, 0, "spec not found for function %@", v192);

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v212, v213, v214, v215);
      }

      v216 = objc_msgSend_minArguments(v204, v200, v201, v202, v203);
      if (v216 == 1)
      {
        v221 = sub_22159A3AC(1, v8);
      }

      else
      {
        v1304 = sub_22159A3F4(v216, v8);
        v1309 = objc_msgSend_minArguments(v204, v1305, v1306, v1307, v1308);
        v221 = objc_msgSend_localizedStringWithFormat_(v8, v1310, v1304, v1311, v1312, v1309);
      }

      if (objc_msgSend_maxArguments(v204, v217, v218, v219, v220) == -1)
      {
        v1339 = objc_msgSend_minArguments(v204, v1313, v1314, v1315, v1316);
        if (v1339 == 1)
        {
          v1323 = sub_22159A43C(1, v8);
          objc_msgSend_localizedStringWithFormat_(v8, v1340, v1323, v1341, v1342, v196, v221);
        }

        else
        {
          v1323 = sub_22159A484(v1339, v8);
          objc_msgSend_localizedStringWithFormat_(v8, v1437, v1323, v1438, v1439, v196, v221, v52);
        }
      }

      else
      {
        v1317 = objc_msgSend_maxArguments(v204, v1313, v1314, v1315, v1316);
        v1322 = objc_msgSend_minArguments(v204, v1318, v1319, v1320, v1321);
        if (v1317 == v1322)
        {
          v1323 = sub_22159A514(v1322, v8);
          objc_msgSend_localizedStringWithFormat_(v8, v1324, v1323, v1325, v1326, v196, v221, v52);
        }

        else
        {
          v1323 = sub_22159A4CC(v1322, v8);
          v1399 = objc_msgSend_minArguments(v204, v1395, v1396, v1397, v1398);
          v1404 = objc_msgSend_maxArguments(v204, v1400, v1401, v1402, v1403);
          objc_msgSend_localizedStringWithFormat_(v8, v1405, v1323, v1406, v1407, v196, v1399, v1404, v52);
        }
      }
      v1327 = ;
      v25 = v1327;

      goto LABEL_304;
    case 10:
      v52 = objc_msgSend_functionName(self, v21, v22, v23, v24);
      v1089 = objc_msgSend_maxArgsAllowed(self, v1085, v1086, v1087, v1088);
      v1094 = objc_msgSend_unsignedLongValue(v1089, v1090, v1091, v1092, v1093);

      v192 = objc_msgSend_providedArgs(self, v1095, v1096, v1097, v1098);
      v196 = objc_msgSend_localizedNameForFunction_(v8, v1099, v52, v1100, v1101);
      v204 = objc_msgSend_functionSpecForFunctionName_(TSCEFunctionSpec, v1102, v52, v1103, v1104);
      v221 = sub_22159A4CC(v204, v8);
      v1109 = objc_msgSend_minArguments(v204, v1105, v1106, v1107, v1108);
      v25 = objc_msgSend_localizedStringWithFormat_(v8, v1110, v221, v1111, v1112, v196, v1109, v1094, v192);
LABEL_304:

      goto LABEL_305;
    case 11:
      v27 = objc_msgSend_functionName(self, v21, v22, v23, v24);
      if (!v27)
      {
        v545 = sub_22159A5A4(0, v8);
        goto LABEL_266;
      }

      v31 = objc_msgSend_localizedNameForFunction_(v8, v510, v27, v511, v512);
      v513 = MEMORY[0x277CCACA8];
      v33 = sub_22159A55C(v31, v8);
      v37 = objc_msgSend_stringWithFormat_(v513, v514, v33, v515, v516, v31);
LABEL_205:
      v25 = v37;
      goto LABEL_206;
    case 14:
      v52 = objc_msgSend_functionName(self, v21, v22, v23, v24);
      v226 = objc_msgSend_argIndex(self, v222, v223, v224, v225);
      v231 = objc_msgSend_intValue(v226, v227, v228, v229, v230);

      v192 = objc_msgSend_localizedNameForFunction_(v8, v232, v52, v233, v234);
      v235 = MEMORY[0x277CCACA8];
      v196 = sub_22159A634(v192, v8);
      v239 = objc_msgSend_localizedStringWithFormat_(v235, v236, v196, v237, v238, v231, v192);
      goto LABEL_52;
    case 15:
      v26 = sub_22159A67C(v20, v8);
      goto LABEL_209;
    case 16:
      v26 = sub_22159A6C4(v20, v8);
      goto LABEL_209;
    case 17:
      v26 = sub_22159A70C(v20, v8);
      goto LABEL_209;
    case 18:
      v27 = objc_msgSend_referenceList(self, v21, v22, v23, v24);
      v422 = MEMORY[0x277CCACA8];
      v31 = sub_22159A754(v27, v8);
      v77 = objc_msgSend_stringWithFormat_(v422, v423, v31, v424, v425, v27);
      goto LABEL_312;
    case 19:
      v27 = objc_msgSend_functionName(self, v21, v22, v23, v24);
      v31 = objc_msgSend_localizedNameForFunction_(v8, v45, v27, v46, v47);
      v48 = MEMORY[0x277CCACA8];
      v33 = sub_22159A79C(v31, v8);
      v37 = objc_msgSend_stringWithFormat_(v48, v49, v33, v50, v51, v31);
      goto LABEL_205;
    case 20:
      v27 = objc_msgSend_functionName(self, v21, v22, v23, v24);
      v31 = objc_msgSend_localizedNameForFunction_(v8, v1152, v27, v1153, v1154);
      v1155 = MEMORY[0x277CCACA8];
      v33 = sub_22159A7E4(v31, v8);
      v37 = objc_msgSend_stringWithFormat_(v1155, v1156, v33, v1157, v1158, v31);
      goto LABEL_205;
    case 21:
      v27 = objc_msgSend_functionName(self, v21, v22, v23, v24);
      v31 = objc_msgSend_localizedNameForFunction_(v8, v952, v27, v953, v954);
      v955 = MEMORY[0x277CCACA8];
      v33 = sub_22159A82C(v31, v8);
      v37 = objc_msgSend_stringWithFormat_(v955, v956, v33, v957, v958, v31);
      goto LABEL_205;
    case 22:
      v52 = objc_msgSend_functionName(self, v21, v22, v23, v24);
      v56 = objc_msgSend_localizedNameForFunction_(v8, v829, v52, v830, v831);
      v287 = objc_msgSend_valueToMatch(self, v832, v833, v834, v835);
      v844 = objc_msgSend_afterMatch(self, v836, v837, v838, v839);
      if (v844)
      {
        v297 = objc_msgSend_previousMatch(self, v840, v841, v842, v843);
        IsRegex = objc_msgSend_previousValueIsRegex(self, v845, v846, v847, v848);
      }

      else
      {
        IsRegex = 0;
        v297 = 0;
      }

      v1257 = objc_msgSend_occurrence(self, v840, v841, v842, v843);
      v1238 = objc_msgSend_intValue(v1257, v1258, v1259, v1260, v1261);

      v1266 = objc_msgSend_matchesFound(self, v1262, v1263, v1264, v1265);
      v1248 = objc_msgSend_intValue(v1266, v1267, v1268, v1269, v1270);

      v1273 = (v1238 - 2) < 0xFFFFFFFD && v1248 > 0;
      if (!v844)
      {
        if (v1273)
        {
          v1252 = sub_22159A994(v1271, v8);
          objc_msgSend_localizedStringWithFormat_(v8, v1280, v1252, v1281, v1282, v56, v1238, v287, v1248);
        }

        else
        {
          v1252 = sub_22159A9DC(v1271, v8);
          objc_msgSend_localizedStringWithFormat_(v8, v1426, v1252, v1427, v1428, v56, v287);
        }

        goto LABEL_249;
      }

      if (v1273)
      {
        if (IsRegex)
        {
          sub_22159A874(v1271, v8);
        }

        else
        {
          sub_22159A8BC(v1271, v8);
        }

        goto LABEL_228;
      }

      if (IsRegex)
      {
        sub_22159A904(v1271, v8);
      }

      else
      {
        sub_22159A94C(v1271, v8);
      }

      goto LABEL_293;
    case 23:
      v52 = objc_msgSend_functionName(self, v21, v22, v23, v24);
      v56 = objc_msgSend_localizedNameForFunction_(v8, v280, v52, v281, v282);
      v287 = objc_msgSend_valueToMatch(self, v283, v284, v285, v286);
      v296 = objc_msgSend_afterMatch(self, v288, v289, v290, v291);
      if (v296)
      {
        v297 = objc_msgSend_previousMatch(self, v292, v293, v294, v295);
        v302 = objc_msgSend_previousValueIsRegex(self, v298, v299, v300, v301);
      }

      else
      {
        v302 = 0;
        v297 = 0;
      }

      v1233 = objc_msgSend_occurrence(self, v292, v293, v294, v295);
      v1238 = objc_msgSend_intValue(v1233, v1234, v1235, v1236, v1237);

      v1243 = objc_msgSend_matchesFound(self, v1239, v1240, v1241, v1242);
      v1248 = objc_msgSend_intValue(v1243, v1244, v1245, v1246, v1247);

      v1251 = (v1238 - 2) < 0xFFFFFFFD && v1248 > 0;
      if (v296)
      {
        if (v1251)
        {
          if (v302)
          {
            sub_22159AA24(v1249, v8);
          }

          else
          {
            sub_22159AA6C(v1249, v8);
          }

          v1252 = LABEL_228:;
          v1256 = objc_msgSend_localizedStringWithFormat_(v8, v1253, v1252, v1254, v1255, v56, v1238, v287, v297, v1248);
        }

        else
        {
          if (v302)
          {
            sub_22159AAB4(v1249, v8);
          }

          else
          {
            sub_22159AAFC(v1249, v8);
          }

          v1252 = LABEL_293:;
          v1256 = objc_msgSend_localizedStringWithFormat_(v8, v1420, v1252, v1421, v1422, v56, v287, v297);
        }
      }

      else
      {
        if (v1251)
        {
          v1252 = sub_22159AB44(v1249, v8);
          objc_msgSend_localizedStringWithFormat_(v8, v1277, v1252, v1278, v1279, v56, v1238, v287, v1248);
        }

        else
        {
          v1252 = sub_22159AB8C(v1249, v8);
          objc_msgSend_localizedStringWithFormat_(v8, v1423, v1252, v1424, v1425, v56, v287);
        }

        v1256 = LABEL_249:;
      }

      v25 = v1256;

      goto LABEL_325;
    case 24:
      v52 = objc_msgSend_functionName(self, v21, v22, v23, v24);
      v1479 = objc_msgSend_localizedNameForFunction_(v8, v989, v52, v990, v991);
      v996 = objc_msgSend_lowerBound(self, v992, v993, v994, v995);
      v1001 = objc_msgSend_lowerBoundInclusive(self, v997, v998, v999, v1000);
      v1006 = objc_msgSend_upperBound(self, v1002, v1003, v1004, v1005);
      v1011 = objc_msgSend_upperBoundInclusive(self, v1007, v1008, v1009, v1010);
      v1016 = objc_msgSend_argIndex(self, v1012, v1013, v1014, v1015);
      v1021 = objc_msgSend_intValue(v1016, v1017, v1018, v1019, v1020);

      v1025 = objc_msgSend_functionSpecForFunctionName_(TSCEFunctionSpec, v1022, v52, v1023, v1024);
      v1029 = objc_msgSend_accessorModeForArgumentIndex_(v1025, v1026, v1021 - 1, v1027, v1028);
      if (v1029 == 4)
      {
        sub_22159AC1C(v1029, v8);
      }

      else
      {
        sub_22159AC64(v1029, v8);
      }
      v1030 = ;
      v1283 = objc_msgSend_localizedStringWithFormat_(v8, v1031, v1030, v1032, v1033, v1021);

      if (v1006)
      {
        if (v996)
        {
          if (v1001)
          {
            if (v1011)
            {
              sub_22159ADCC(v1284, v8);
            }

            else
            {
              sub_22159AE14(v1284, v8);
            }
          }

          else if (v1011)
          {
            sub_22159AE5C(v1284, v8);
          }

          else
          {
            sub_22159AEA4(v1284, v8);
          }
          v1288 = ;
          objc_msgSend_doubleValue(v996, v1289, v1290, v1291, v1292);
          v1294 = v1293;
          objc_msgSend_doubleValue(v1006, v1295, v1296, v1297, v1298);
          v1303 = objc_msgSend_localizedStringWithFormat_(v8, v1299, v1288, v1300, v1301, v1283, v1479, v1294, v1302);
        }

        else
        {
          if (v1011)
          {
            sub_22159AD3C(v1284, v8);
          }

          else
          {
            sub_22159AD84(v1284, v8);
          }
          v1288 = ;
          objc_msgSend_doubleValue(v1006, v1429, v1430, v1431, v1432);
          v1303 = objc_msgSend_localizedStringWithFormat_(v8, v1433, v1288, v1434, v1435, v1283, v1479, v1436);
        }
      }

      else
      {
        if (!v996)
        {
          v1456 = MEMORY[0x277D81150];
          v1457 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v1285, "[TSCEError displayStringWithLocale:]", v1286, v1287);
          v1461 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v1458, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEError.mm", v1459, v1460);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v1456, v1462, v1457, v1461, 999, 0, "Can't be out of bounds without bounds specified");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v1463, v1464, v1465, v1466);
          v25 = 0;
          goto LABEL_331;
        }

        if (v1001)
        {
          sub_22159ACAC(v1284, v8);
        }

        else
        {
          sub_22159ACF4(v1284, v8);
        }
        v1288 = ;
        objc_msgSend_doubleValue(v996, v1331, v1332, v1333, v1334);
        v1303 = objc_msgSend_localizedStringWithFormat_(v8, v1335, v1288, v1336, v1337, v1283, v1479, v1338);
      }

      v25 = v1303;

LABEL_331:
      goto LABEL_307;
    case 25:
      v26 = sub_22159AEEC(v20, v8);
      goto LABEL_209;
    case 26:
      v27 = objc_msgSend_functionName(self, v21, v22, v23, v24);
      v31 = objc_msgSend_localizedNameForFunction_(v8, v1218, v27, v1219, v1220);
      v1221 = MEMORY[0x277CCACA8];
      v33 = sub_22159AF34(v31, v8);
      v37 = objc_msgSend_stringWithFormat_(v1221, v1222, v33, v1223, v1224, v31);
      goto LABEL_205;
    case 27:
      v26 = sub_22159AFC4(v20, v8);
      goto LABEL_209;
    case 28:
      v27 = objc_msgSend_functionName(self, v21, v22, v23, v24);
      v73 = MEMORY[0x277CCACA8];
      v31 = sub_22159AF7C(v27, v8);
      v77 = objc_msgSend_stringWithFormat_(v73, v74, v31, v75, v76, v27);
      goto LABEL_312;
    case 29:
      v26 = sub_22159B00C(v20, v8);
      goto LABEL_209;
    case 30:
      v27 = objc_msgSend_functionName(self, v21, v22, v23, v24);
      v31 = objc_msgSend_localizedNameForFunction_(v8, v966, v27, v967, v968);
      v969 = MEMORY[0x277CCACA8];
      v33 = sub_22159B054(v31, v8);
      v37 = objc_msgSend_stringWithFormat_(v969, v970, v33, v971, v972, v31);
      goto LABEL_205;
    case 31:
      v26 = sub_22159B09C(v20, v8);
      goto LABEL_209;
    case 32:
      v26 = sub_22159B12C(v20, v8);
      goto LABEL_209;
    case 33:
      v1178 = objc_msgSend_argIndex(self, v21, v22, v23, v24);
      v1183 = objc_msgSend_intValue(v1178, v1179, v1180, v1181, v1182);

      v27 = sub_22159B174(v1184, v8);
      v545 = objc_msgSend_localizedStringWithFormat_(v8, v1185, v27, v1186, v1187, v1183);
      goto LABEL_266;
    case 34:
      v26 = sub_22159B1BC(v20, v8);
      goto LABEL_209;
    case 35:
      v27 = objc_msgSend_functionName(self, v21, v22, v23, v24);
      v31 = objc_msgSend_localizedNameForFunction_(v8, v28, v27, v29, v30);
      v32 = MEMORY[0x277CCACA8];
      v33 = sub_22159B204(v31, v8);
      v37 = objc_msgSend_stringWithFormat_(v32, v34, v33, v35, v36, v31);
      goto LABEL_205;
    case 36:
      v26 = sub_22159B24C(v20, v8);
      goto LABEL_209;
    case 37:
      v26 = sub_22159B294(v20, v8);
      goto LABEL_209;
    case 38:
      v27 = objc_msgSend_functionName(self, v21, v22, v23, v24);
      v31 = objc_msgSend_localizedNameForFunction_(v8, v877, v27, v878, v879);
      v880 = MEMORY[0x277CCACA8];
      v33 = sub_22159ABD4(v31, v8);
      v37 = objc_msgSend_stringWithFormat_(v880, v881, v33, v882, v883, v31);
      goto LABEL_205;
    case 39:
      v52 = objc_msgSend_functionName(self, v21, v22, v23, v24);
      v56 = objc_msgSend_localizedNameForFunction_(v8, v461, v52, v462, v463);
      v467 = objc_msgSend_numberForKey_(self, v464, @"kTSCEExpectedTypeKey", v465, v466);
      v472 = objc_msgSend_intValue(v467, v468, v469, v470, v471);

      v68 = objc_msgSend_localizedTypeStringForArgumentType_(v8, v473, v472, v474, v475);
      v476 = MEMORY[0x277CCACA8];
      v86 = sub_22159B2DC(v68, v8);
      v90 = objc_msgSend_stringWithFormat_(v476, v477, v86, v478, v479, v56, v68);
      goto LABEL_268;
    case 40:
      v850 = objc_msgSend_argIndex(self, v21, v22, v23, v24);
      v855 = objc_msgSend_intValue(v850, v851, v852, v853, v854);

      v860 = objc_msgSend_argIndex2(self, v856, v857, v858, v859);
      v865 = objc_msgSend_intValue(v860, v861, v862, v863, v864);

      v870 = objc_msgSend_argsAscending(self, v866, v867, v868, v869);
      v875 = objc_msgSend_equalityPermitted(self, v871, v872, v873, v874);
      if ((v875 & v870) == 1)
      {
        v876 = sub_22159B324(v875, v8);
      }

      else if (v875)
      {
        v876 = sub_22159B36C(v875, v8);
      }

      else
      {
        if (v870)
        {
          sub_22159B3B4(v875, v8);
        }

        else
        {
          sub_22159B3FC(v875, v8);
        }
        v876 = ;
      }

      v1473 = v876;
      v1474 = MEMORY[0x277CCACA8];
      v1475 = sub_22159B444(v876, v8);
      v25 = objc_msgSend_stringWithFormat_(v1474, v1476, v1475, v1477, v1478, v855, v1473, v865);

      goto LABEL_315;
    case 41:
      v525 = objc_msgSend_argIndex(self, v21, v22, v23, v24);
      v530 = objc_msgSend_intValue(v525, v526, v527, v528, v529);

      v535 = objc_msgSend_argIndex2(self, v531, v532, v533, v534);
      v540 = objc_msgSend_intValue(v535, v536, v537, v538, v539);

      v27 = sub_22159B48C(v541, v8);
      v545 = objc_msgSend_localizedStringWithFormat_(v8, v542, v27, v543, v544, v530, v540);
      goto LABEL_266;
    case 42:
      v973 = objc_msgSend_chooseIndex(self, v21, v22, v23, v24);
      v978 = objc_msgSend_intValue(v973, v974, v975, v976, v977);

      v27 = objc_msgSend_localizedNameForFunction_(v8, v979, @"CHOOSE", v980, v981);
      v31 = sub_22159B4D4(v27, v8);
      v77 = objc_msgSend_localizedStringWithFormat_(v8, v982, v31, v983, v984, v27, v978);
      goto LABEL_312;
    case 43:
      v27 = objc_msgSend_functionName(self, v21, v22, v23, v24);
      v31 = objc_msgSend_localizedNameForFunction_(v8, v38, v27, v39, v40);
      v41 = MEMORY[0x277CCACA8];
      v33 = sub_22159B51C(v31, v8);
      v37 = objc_msgSend_stringWithFormat_(v41, v42, v33, v43, v44, v31);
      goto LABEL_205;
    case 44:
      v52 = objc_msgSend_functionName(self, v21, v22, v23, v24);
      v56 = objc_msgSend_localizedNameForFunction_(v8, v78, v52, v79, v80);
      v68 = objc_msgSend_extraInfoString(self, v81, v82, v83, v84);
      v85 = MEMORY[0x277CCACA8];
      v86 = sub_22159B564(v68, v8);
      v90 = objc_msgSend_stringWithFormat_(v85, v87, v86, v88, v89, v56, v68);
      goto LABEL_268;
    case 45:
      v52 = objc_msgSend_functionName(self, v21, v22, v23, v24);
      v56 = objc_msgSend_localizedNameForFunction_(v8, v450, v52, v451, v452);
      v68 = objc_msgSend_extraInfoString(self, v453, v454, v455, v456);
      v457 = MEMORY[0x277CCACA8];
      v86 = sub_22159B5AC(v68, v8);
      v90 = objc_msgSend_stringWithFormat_(v457, v458, v86, v459, v460, v56, v68);
      goto LABEL_268;
    case 46:
      v27 = objc_msgSend_functionName(self, v21, v22, v23, v24);
      v31 = objc_msgSend_localizedNameForFunction_(v8, v133, v27, v134, v135);
      v136 = MEMORY[0x277CCACA8];
      v33 = sub_22159B5F4(v31, v8);
      v37 = objc_msgSend_stringWithFormat_(v136, v137, v33, v138, v139, v31);
      goto LABEL_205;
    case 47:
      v52 = objc_msgSend_functionName(self, v21, v22, v23, v24);
      v56 = objc_msgSend_localizedNameForFunction_(v8, v912, v52, v913, v914);
      v919 = objc_msgSend_argIndex(self, v915, v916, v917, v918);
      v924 = objc_msgSend_intValue(v919, v920, v921, v922, v923);

      v68 = sub_22159B63C(v925, v8);
      v72 = objc_msgSend_localizedStringWithFormat_(v8, v926, v68, v927, v928, v924, v56);
      goto LABEL_216;
    case 48:
      v26 = sub_22159B684(v20, v8);
      goto LABEL_209;
    case 49:
      v26 = sub_22159B6CC(v20, v8);
      goto LABEL_209;
    case 50:
      v26 = sub_22159B714(v20, v8);
      goto LABEL_209;
    case 51:
      v26 = sub_22159B75C(v20, v8);
      goto LABEL_209;
    case 52:
      v27 = objc_msgSend_functionName(self, v21, v22, v23, v24);
      v31 = objc_msgSend_localizedNameForFunction_(v8, v273, v27, v274, v275);
      v276 = MEMORY[0x277CCACA8];
      v33 = sub_22159B7A4(v31, v8);
      v37 = objc_msgSend_stringWithFormat_(v276, v277, v33, v278, v279, v31);
      goto LABEL_205;
    case 53:
      v26 = sub_22159B7EC(v20, v8);
      goto LABEL_209;
    case 54:
      v52 = objc_msgSend_functionName(self, v21, v22, v23, v24);
      v56 = objc_msgSend_localizedNameForFunction_(v8, v929, v52, v930, v931);
      v936 = objc_msgSend_argIndex(self, v932, v933, v934, v935);
      v941 = objc_msgSend_intValue(v936, v937, v938, v939, v940);

      v68 = sub_22159B834(v942, v8);
      v72 = objc_msgSend_localizedStringWithFormat_(v8, v943, v68, v944, v945, v941, v56);
      goto LABEL_216;
    case 55:
      v27 = objc_msgSend_functionName(self, v21, v22, v23, v24);
      v31 = objc_msgSend_localizedNameForFunction_(v8, v959, v27, v960, v961);
      v962 = MEMORY[0x277CCACA8];
      v33 = sub_22159B87C(v31, v8);
      v37 = objc_msgSend_stringWithFormat_(v962, v963, v33, v964, v965, v31);
      goto LABEL_205;
    case 56:
      v52 = objc_msgSend_functionName(self, v21, v22, v23, v24);
      v56 = objc_msgSend_localizedNameForFunction_(v8, v53, v52, v54, v55);
      v61 = objc_msgSend_argIndex(self, v57, v58, v59, v60);
      v66 = objc_msgSend_intValue(v61, v62, v63, v64, v65);

      v68 = sub_22159B8C4(v67, v8);
      v72 = objc_msgSend_localizedStringWithFormat_(v8, v69, v68, v70, v71, v66, v56);
      goto LABEL_216;
    case 57:
      v52 = objc_msgSend_functionName(self, v21, v22, v23, v24);
      v56 = objc_msgSend_localizedNameForFunction_(v8, v91, v52, v92, v93);
      v98 = objc_msgSend_argIndex(self, v94, v95, v96, v97);
      v103 = objc_msgSend_intValue(v98, v99, v100, v101, v102);

      v68 = sub_22159B90C(v104, v8);
      v72 = objc_msgSend_localizedStringWithFormat_(v8, v105, v68, v106, v107, v103, v56);
      goto LABEL_216;
    case 58:
      v52 = objc_msgSend_functionName(self, v21, v22, v23, v24);
      v56 = objc_msgSend_localizedNameForFunction_(v8, v303, v52, v304, v305);
      v310 = objc_msgSend_argIndex(self, v306, v307, v308, v309);
      v315 = objc_msgSend_intValue(v310, v311, v312, v313, v314);

      v68 = sub_22159B954(v316, v8);
      v72 = objc_msgSend_localizedStringWithFormat_(v8, v317, v68, v318, v319, v315, v56);
      goto LABEL_216;
    case 59:
      v26 = sub_22159B99C(v20, v8);
      goto LABEL_209;
    case 60:
      v27 = objc_msgSend_functionName(self, v21, v22, v23, v24);
      v31 = objc_msgSend_localizedNameForFunction_(v8, v126, v27, v127, v128);
      v129 = MEMORY[0x277CCACA8];
      v33 = sub_22159B9E4(v31, v8);
      v37 = objc_msgSend_stringWithFormat_(v129, v130, v33, v131, v132, v31);
      goto LABEL_205;
    case 61:
      v27 = objc_msgSend_functionName(self, v21, v22, v23, v24);
      v31 = objc_msgSend_localizedNameForFunction_(v8, v163, v27, v164, v165);
      v166 = MEMORY[0x277CCACA8];
      v33 = sub_22159BA2C(v31, v8);
      v37 = objc_msgSend_stringWithFormat_(v166, v167, v33, v168, v169, v31);
      goto LABEL_205;
    case 63:
      v26 = sub_22159BB4C(v20, v8);
      goto LABEL_209;
    case 64:
      v27 = objc_msgSend_functionName(self, v21, v22, v23, v24);
      v31 = objc_msgSend_localizedNameForFunction_(v8, v1054, v27, v1055, v1056);
      v1057 = MEMORY[0x277CCACA8];
      v33 = sub_22159BA74(v31, v8);
      v37 = objc_msgSend_stringWithFormat_(v1057, v1058, v33, v1059, v1060, v31);
      goto LABEL_205;
    case 65:
      v27 = objc_msgSend_functionName(self, v21, v22, v23, v24);
      v31 = objc_msgSend_localizedNameForFunction_(v8, v266, v27, v267, v268);
      v269 = MEMORY[0x277CCACA8];
      v33 = sub_22159BABC(v31, v8);
      v37 = objc_msgSend_stringWithFormat_(v269, v270, v33, v271, v272, v31);
      goto LABEL_205;
    case 66:
      v27 = objc_msgSend_functionName(self, v21, v22, v23, v24);
      v31 = objc_msgSend_localizedNameForFunction_(v8, v1061, v27, v1062, v1063);
      v1064 = MEMORY[0x277CCACA8];
      v33 = sub_22159BB04(v31, v8);
      v37 = objc_msgSend_stringWithFormat_(v1064, v1065, v33, v1066, v1067, v31);
      goto LABEL_205;
    case 67:
      v26 = sub_22159BB94(v20, v8);
      goto LABEL_209;
    case 68:
      v26 = sub_22159BBDC(v20, v8);
      goto LABEL_209;
    case 69:
      v52 = objc_msgSend_functionName(self, v21, v22, v23, v24);
      v56 = objc_msgSend_localizedNameForFunction_(v8, v608, v52, v609, v610);
      v615 = objc_msgSend_extraInfoString(self, v611, v612, v613, v614);
      v68 = v615;
      v616 = MEMORY[0x277CCACA8];
      if (v615)
      {
        v86 = sub_22159BC6C(v615, v8);
        objc_msgSend_stringWithFormat_(v616, v617, v86, v618, v619, v56, v68);
      }

      else
      {
        v86 = sub_22159BC24(0, v8);
        objc_msgSend_stringWithFormat_(v616, v1328, v86, v1329, v1330, v56);
      }
      v90 = ;
      goto LABEL_268;
    case 70:
      v52 = objc_msgSend_functionName(self, v21, v22, v23, v24);
      v56 = objc_msgSend_localizedNameForFunction_(v8, v1159, v52, v1160, v1161);
      v1166 = objc_msgSend_argIndex(self, v1162, v1163, v1164, v1165);
      v152 = objc_msgSend_intValue(v1166, v1167, v1168, v1169, v1170);

      v68 = objc_msgSend_functionSpecForFunctionName_(TSCEFunctionSpec, v1171, v52, v1172, v1173);
      v1177 = objc_msgSend_accessorModeForArgumentIndex_(v68, v1174, v152 - 1, v1175, v1176);
      if ((v1177 & 0xFFFFFFFD) == 1)
      {
        sub_22159BCB4(v1177, v8);
      }

      else
      {
        sub_22159BCFC(v1177, v8);
      }

      goto LABEL_26;
    case 71:
      v52 = objc_msgSend_functionName(self, v21, v22, v23, v24);
      v56 = objc_msgSend_localizedNameForFunction_(v8, v140, v52, v141, v142);
      v147 = objc_msgSend_argIndex(self, v143, v144, v145, v146);
      v152 = objc_msgSend_intValue(v147, v148, v149, v150, v151);

      v68 = objc_msgSend_functionSpecForFunctionName_(TSCEFunctionSpec, v153, v52, v154, v155);
      v159 = objc_msgSend_accessorModeForArgumentIndex_(v68, v156, v152 - 1, v157, v158);
      if ((v159 & 0xFFFFFFFD) == 1)
      {
        sub_22159BD44(v159, v8);
      }

      else
      {
        sub_22159BD8C(v159, v8);
      }

      v86 = LABEL_26:;
      v90 = objc_msgSend_localizedStringWithFormat_(v8, v160, v86, v161, v162, v152, v56);
      goto LABEL_268;
    case 72:
      v52 = objc_msgSend_functionName(self, v21, v22, v23, v24);
      v56 = objc_msgSend_localizedNameForFunction_(v8, v1113, v52, v1114, v1115);
      v1120 = objc_msgSend_argIndex(self, v1116, v1117, v1118, v1119);
      v1125 = objc_msgSend_intValue(v1120, v1121, v1122, v1123, v1124);

      v68 = objc_msgSend_functionSpecForFunctionName_(TSCEFunctionSpec, v1126, v52, v1127, v1128);
      v1132 = objc_msgSend_accessorModeForArgumentIndex_(v68, v1129, v1125 - 1, v1130, v1131);
      v1136 = objc_msgSend_preferredTypeForArgumentIndex_(v68, v1133, v1125 - 1, v1134, v1135);
      if ((v1132 & 0xFFFFFFFD) == 1 || v1136 == 8)
      {
        v86 = sub_22159BDD4(v1136, v8);
        v90 = objc_msgSend_localizedStringWithFormat_(v8, v1274, v86, v1275, v1276, v1125, v56);
LABEL_268:
        v25 = v90;
      }

      else
      {
        v86 = objc_msgSend_localizedTypeStringForArgumentType_(v8, v1137, v1136, v1138, v1139);
        v1140 = MEMORY[0x277CCACA8];
        v1141 = sub_22159BE1C(v86, v8);
        v25 = objc_msgSend_stringWithFormat_(v1140, v1142, v1141, v1143, v1144, v56, v86);
      }

      goto LABEL_270;
    case 73:
      v27 = objc_msgSend_functionName(self, v21, v22, v23, v24);
      v31 = objc_msgSend_localizedNameForFunction_(v8, v628, v27, v629, v630);
      v631 = MEMORY[0x277CCACA8];
      v33 = sub_22159BE64(v31, v8);
      v37 = objc_msgSend_stringWithFormat_(v631, v632, v33, v633, v634, v31);
      goto LABEL_205;
    case 74:
      v27 = objc_msgSend_functionName(self, v21, v22, v23, v24);
      v31 = objc_msgSend_localizedNameForFunction_(v8, v240, v27, v241, v242);
      v243 = MEMORY[0x277CCACA8];
      v33 = sub_22159BEAC(v31, v8);
      v37 = objc_msgSend_stringWithFormat_(v243, v244, v33, v245, v246, v31);
      goto LABEL_205;
    case 75:
      v52 = objc_msgSend_functionName(self, v21, v22, v23, v24);
      v56 = objc_msgSend_localizedNameForFunction_(v8, v557, v52, v558, v559);
      v287 = objc_msgSend_extraInfoNumber(self, v560, v561, v562, v563);
      v568 = objc_msgSend_argIndex(self, v564, v565, v566, v567);
      v573 = objc_msgSend_intValue(v568, v569, v570, v571, v572);

      v575 = sub_22159BEF4(v574, v8);
      v579 = objc_msgSend_localizedStringWithFormat_(v8, v576, v575, v577, v578, v573, v56, v287);
      goto LABEL_230;
    case 76:
      v52 = objc_msgSend_functionName(self, v21, v22, v23, v24);
      v56 = objc_msgSend_localizedNameForFunction_(v8, v108, v52, v109, v110);
      v115 = objc_msgSend_extraInfoNumber(self, v111, v112, v113, v114);
      v120 = objc_msgSend_BOOLValue(v115, v116, v117, v118, v119);

      v122 = MEMORY[0x277CCACA8];
      if (v120)
      {
        sub_22159BF3C(v121, v8);
      }

      else
      {
        sub_22159BF84(v121, v8);
      }
      v68 = ;
      v72 = objc_msgSend_stringWithFormat_(v122, v123, v68, v124, v125, v56);
      goto LABEL_216;
    case 77:
      v27 = objc_msgSend_functionName(self, v21, v22, v23, v24);
      v31 = objc_msgSend_localizedNameForFunction_(v8, v1145, v27, v1146, v1147);
      v1148 = MEMORY[0x277CCACA8];
      v33 = sub_22159BFCC(v31, v8);
      v37 = objc_msgSend_stringWithFormat_(v1148, v1149, v33, v1150, v1151, v31);
      goto LABEL_205;
    case 78:
      v26 = sub_22159C014(v20, v8);
      goto LABEL_209;
    case 79:
      v52 = objc_msgSend_extraInfoString(self, v21, v22, v23, v24);
      v255 = objc_msgSend_argIndex(self, v251, v252, v253, v254);
      v260 = objc_msgSend_intValue(v255, v256, v257, v258, v259);

      v192 = sub_22159C05C(v261, v8);
      v265 = objc_msgSend_localizedStringWithFormat_(v8, v262, v192, v263, v264, v52, v260);
      goto LABEL_214;
    case 80:
      v27 = objc_msgSend_unitName(self, v21, v22, v23, v24);
      v1034 = MEMORY[0x277CCACA8];
      v31 = sub_22159C0A4(v27, v8);
      v77 = objc_msgSend_stringWithFormat_(v1034, v1035, v31, v1036, v1037, v27);
      goto LABEL_312;
    case 81:
      v27 = objc_msgSend_functionName(self, v21, v22, v23, v24);
      v31 = objc_msgSend_localizedNameForFunction_(v8, v888, v27, v889, v890);
      v891 = MEMORY[0x277CCACA8];
      v33 = sub_22159C0EC(v31, v8);
      v37 = objc_msgSend_stringWithFormat_(v891, v892, v33, v893, v894, v31);
      goto LABEL_205;
    case 82:
      v27 = objc_msgSend_unitName(self, v21, v22, v23, v24);
      v884 = MEMORY[0x277CCACA8];
      v31 = sub_22159C134(v27, v8);
      v77 = objc_msgSend_stringWithFormat_(v884, v885, v31, v886, v887, v27);
      goto LABEL_312;
    case 83:
      v26 = sub_22159C17C(v20, v8);
      goto LABEL_209;
    case 84:
      v26 = sub_22159C1C4(v20, v8);
      goto LABEL_209;
    case 85:
      v26 = sub_22159C20C(v20, v8);
      goto LABEL_209;
    case 86:
      v26 = sub_22159C254(v20, v8);
      goto LABEL_209;
    case 87:
      v26 = sub_22159C29C(v20, v8);
      goto LABEL_209;
    case 88:
      v26 = sub_22159C2E4(v20, v8);
      goto LABEL_209;
    case 89:
      v26 = sub_22159C32C(v20, v8);
      goto LABEL_209;
    case 90:
      v26 = sub_22159C374(v20, v8);
      goto LABEL_209;
    case 91:
      v26 = sub_22159C3BC(v20, v8);
      goto LABEL_209;
    case 92:
      v52 = objc_msgSend_functionName(self, v21, v22, v23, v24);
      v56 = objc_msgSend_localizedNameForFunction_(v8, v369, v52, v370, v371);
      v376 = objc_msgSend_argIndex(self, v372, v373, v374, v375);
      v381 = objc_msgSend_intValue(v376, v377, v378, v379, v380);

      v68 = sub_22159C404(v382, v8);
      v72 = objc_msgSend_localizedStringWithFormat_(v8, v383, v68, v384, v385, v56, v381);
      goto LABEL_216;
    case 93:
      v26 = sub_22159C44C(v20, v8);
      goto LABEL_209;
    case 94:
      v26 = sub_22159C494(v20, v8);
      goto LABEL_209;
    case 95:
      v26 = sub_22159C4DC(v20, v8);
      goto LABEL_209;
    case 96:
      v320 = objc_msgSend_argIndex(self, v21, v22, v23, v24);
      v325 = objc_msgSend_intValue(v320, v321, v322, v323, v324);
      v52 = objc_msgSend_localizedTypeStringForArgumentType_(v8, v326, v325, v327, v328);

      v333 = objc_msgSend_argIndex2(self, v329, v330, v331, v332);
      v338 = objc_msgSend_intValue(v333, v334, v335, v336, v337);
      v192 = objc_msgSend_localizedTypeStringForArgumentType_(v8, v339, v338, v340, v341);

      v342 = MEMORY[0x277CCACA8];
      v196 = sub_22159C524(v343, v8);
      v239 = objc_msgSend_stringWithFormat_(v342, v344, v196, v345, v346, v52, v192);
LABEL_52:
      v25 = v239;
LABEL_305:

      goto LABEL_306;
    case 97:
      v27 = objc_msgSend_functionName(self, v21, v22, v23, v24);
      v31 = objc_msgSend_localizedNameForFunction_(v8, v170, v27, v171, v172);
      v173 = MEMORY[0x277CCACA8];
      v33 = sub_22159C56C(v31, v8);
      v37 = objc_msgSend_stringWithFormat_(v173, v174, v33, v175, v176, v31);
      goto LABEL_205;
    case 98:
      v26 = sub_22159C5B4(v20, v8);
      goto LABEL_209;
    case 99:
      v52 = objc_msgSend_functionName(self, v21, v22, v23, v24);
      v56 = objc_msgSend_localizedNameForFunction_(v8, v1068, v52, v1069, v1070);
      v1075 = objc_msgSend_argIndex(self, v1071, v1072, v1073, v1074);
      v1080 = objc_msgSend_intValue(v1075, v1076, v1077, v1078, v1079);

      v68 = sub_22159C5FC(v1081, v8);
      v72 = objc_msgSend_localizedStringWithFormat_(v8, v1082, v68, v1083, v1084, v56, v1080);
      goto LABEL_216;
    case 100:
      v26 = sub_22159C644(v20, v8);
      goto LABEL_209;
    case 101:
      v26 = sub_22159C68C(v20, v8);
      goto LABEL_209;
    case 102:
      v26 = sub_22159C6D4(v20, v8);
      goto LABEL_209;
    case 103:
      v26 = sub_22159C71C(v20, v8);
      goto LABEL_209;
    case 104:
      v26 = sub_22159C764(v20, v8);
      goto LABEL_209;
    case 105:
      v26 = sub_22159C7AC(v20, v8);
      goto LABEL_209;
    case 106:
      v26 = sub_22159C7F4(v20, v8);
      goto LABEL_209;
    case 107:
      v26 = sub_22159CEB4(v20, v8);
      goto LABEL_209;
    case 108:
      v26 = sub_22159CEFC(v20, v8);
      goto LABEL_209;
    case 109:
      v27 = objc_msgSend_valueToMatch(self, v21, v22, v23, v24);
      v432 = MEMORY[0x277CCACA8];
      v31 = sub_22159C95C(v27, v8);
      v77 = objc_msgSend_stringWithFormat_(v432, v433, v31, v434, v435, v27);
      goto LABEL_312;
    case 110:
      v27 = objc_msgSend_functionName(self, v21, v22, v23, v24);
      v31 = objc_msgSend_localizedNameForFunction_(v8, v946, v27, v947, v948);
      v33 = sub_22159C9EC(v31, v8);
      v37 = objc_msgSend_localizedStringWithFormat_(v8, v949, v33, v950, v951, v31);
      goto LABEL_205;
    case 111:
      v26 = sub_22159CA34(v20, v8);
      goto LABEL_209;
    case 112:
      v26 = sub_22159CA7C(v20, v8);
      goto LABEL_209;
    case 113:
      v26 = sub_22159CAC4(v20, v8);
      goto LABEL_209;
    case 114:
      v26 = sub_22159CB0C(v20, v8);
      goto LABEL_209;
    case 115:
      v26 = sub_22159CB54(v20, v8);
      goto LABEL_209;
    case 116:
      v1038 = objc_msgSend_dateAsTimeInterval(self, v21, v22, v23, v24);
      v27 = v1038;
      if (!v1038)
      {
        v545 = sub_22159CBE4(0, v8);
LABEL_266:
        v25 = v545;
        goto LABEL_314;
      }

      v1043 = MEMORY[0x277CBEAA8];
      objc_msgSend_doubleValue(v1038, v1039, v1040, v1041, v1042);
      v31 = objc_msgSend_dateWithTimeIntervalSinceReferenceDate_(v1043, v1044, v1045, v1046, v1047);
      v33 = sub_22159CB9C(v31, v8);
      v1048 = MEMORY[0x277CCACA8];
      v1049 = TSUShortestCompleteDateOnlyFormat();
      v1050 = TSUDateFormatterStringFromDateWithFormat();
      v25 = objc_msgSend_localizedStringWithFormat_(v1048, v1051, v33, v1052, v1053, v1050);

LABEL_206:
      goto LABEL_313;
    case 117:
      v27 = objc_msgSend_extraInfoString(self, v21, v22, v23, v24);
      v247 = MEMORY[0x277CCACA8];
      v31 = sub_22159CC2C(v27, v8);
      v77 = objc_msgSend_stringWithFormat_(v247, v248, v31, v249, v250, v27);
      goto LABEL_312;
    case 118:
      v26 = sub_22159CC74(v20, v8);
      goto LABEL_209;
    case 119:
      v26 = sub_22159CCBC(v20, v8);
      goto LABEL_209;
    case 120:
      v27 = objc_msgSend_extraInfoString(self, v21, v22, v23, v24);
      v365 = MEMORY[0x277CCACA8];
      v31 = sub_22159CD04(v27, v8);
      v77 = objc_msgSend_stringWithFormat_(v365, v366, v31, v367, v368, v27);
      goto LABEL_312;
    case 121:
      v985 = MEMORY[0x277CCACA8];
      v27 = sub_22159CD4C(v20, v8);
      v545 = objc_msgSend_stringWithString_(v985, v986, v27, v987, v988);
      goto LABEL_266;
    case 122:
      v27 = objc_msgSend_problemMode(self, v21, v22, v23, v24);
      isEqualToString = objc_msgSend_isEqualToString_(v27, v818, @"Ask Price", v819, v820);
      if (isEqualToString)
      {
        v825 = MEMORY[0x277CCACA8];
        v31 = sub_22159CD94(isEqualToString, v8);
        v77 = objc_msgSend_stringWithString_(v825, v826, v31, v827, v828);
      }

      else
      {
        v1225 = objc_msgSend_isEqualToString_(v27, v822, @"Bid Price", v823, v824);
        if (v1225)
        {
          v1229 = MEMORY[0x277CCACA8];
          v31 = sub_22159CDDC(v1225, v8);
          v77 = objc_msgSend_stringWithString_(v1229, v1230, v31, v1231, v1232);
        }

        else
        {
          v1412 = objc_msgSend_isEqualToString_(v27, v1226, @"Ask Size", v1227, v1228);
          if (v1412)
          {
            v1416 = MEMORY[0x277CCACA8];
            v31 = sub_22159CE24(v1412, v8);
            v77 = objc_msgSend_stringWithString_(v1416, v1417, v31, v1418, v1419);
          }

          else
          {
            v1467 = objc_msgSend_isEqualToString_(v27, v1413, @"Bid Size", v1414, v1415);
            if (!v1467)
            {
              v25 = 0;
              goto LABEL_314;
            }

            v1468 = MEMORY[0x277CCACA8];
            v31 = sub_22159CE6C(v1467, v8);
            v77 = objc_msgSend_stringWithString_(v1468, v1469, v31, v1470, v1471);
          }
        }
      }

LABEL_312:
      v25 = v77;
LABEL_313:

LABEL_314:
      goto LABEL_315;
    case 123:
      v26 = sub_22159C9A4(v20, v8);
      goto LABEL_209;
    case 124:
      v26 = sub_22159A04C(v20, v8);
      goto LABEL_209;
    case 125:
      v26 = sub_22159C83C(v20, v8);
      goto LABEL_209;
    case 126:
      v26 = sub_22159C884(v20, v8);
      goto LABEL_209;
    case 127:
      v26 = sub_22159C8CC(v20, v8);
      goto LABEL_209;
    case 128:
      v26 = sub_22159C914(v20, v8);
      goto LABEL_209;
    case 130:
      v26 = sub_22159A28C(v20, v8);
      goto LABEL_209;
    case 131:
      v347 = objc_msgSend_functionName(self, v21, v22, v23, v24);
      v52 = objc_msgSend_localizedNameForFunction_(v8, v348, v347, v349, v350);

      v355 = objc_msgSend_argIndex(self, v351, v352, v353, v354);
      v360 = objc_msgSend_intValue(v355, v356, v357, v358, v359);

      v192 = sub_22159A2D4(v361, v8);
      v265 = objc_msgSend_localizedStringWithFormat_(v8, v362, v192, v363, v364, v360, v52);
      goto LABEL_214;
    case 132:
      v404 = objc_msgSend_functionName(self, v21, v22, v23, v24);
      v52 = objc_msgSend_localizedNameForFunction_(v8, v405, v404, v406, v407);

      v412 = objc_msgSend_argIndex(self, v408, v409, v410, v411);
      v417 = objc_msgSend_intValue(v412, v413, v414, v415, v416);

      v192 = sub_22159A31C(v418, v8);
      v265 = objc_msgSend_localizedStringWithFormat_(v8, v419, v192, v420, v421, v417, v52);
      goto LABEL_214;
    case 133:
      v386 = objc_msgSend_functionName(self, v21, v22, v23, v24);
      v52 = objc_msgSend_localizedNameForFunction_(v8, v387, v386, v388, v389);

      v394 = objc_msgSend_argIndex(self, v390, v391, v392, v393);
      v399 = objc_msgSend_intValue(v394, v395, v396, v397, v398);

      v192 = sub_22159A364(v400, v8);
      v265 = objc_msgSend_localizedStringWithFormat_(v8, v401, v192, v402, v403, v399, v52);
      goto LABEL_214;
    case 134:
      v26 = sub_22159A1B4(v20, v8);
      goto LABEL_209;
    case 135:
      v26 = sub_22159B0E4(v20, v8);
      goto LABEL_209;
    case 137:
      v52 = objc_msgSend_functionName(self, v21, v22, v23, v24);
      v56 = objc_msgSend_localizedNameForFunction_(v8, v764, v52, v765, v766);
      v287 = objc_msgSend_array(MEMORY[0x277CBEB18], v767, v768, v769, v770);
      v775 = objc_msgSend_argIndex(self, v771, v772, v773, v774);
      objc_msgSend_addObject_(v287, v776, v775, v777, v778);

      v783 = objc_msgSend_argIndex2(self, v779, v780, v781, v782);

      if (v783)
      {
        v788 = objc_msgSend_argIndex2(self, v784, v785, v786, v787);
        objc_msgSend_addObject_(v287, v789, v788, v790, v791);
      }

      v792 = objc_msgSend_argIndex3(self, v784, v785, v786, v787);

      if (v792)
      {
        v797 = objc_msgSend_argIndex3(self, v793, v794, v795, v796);
        objc_msgSend_addObject_(v287, v798, v797, v799, v800);
      }

      v801 = objc_msgSend_count(v287, v793, v794, v795, v796);
      if (v801 == 2)
      {
        v575 = sub_22159CF8C(2, v8);
        v809 = objc_msgSend_objectAtIndexedSubscript_(v287, v1343, 0, v1344, v1345);
        v1350 = objc_msgSend_intValue(v809, v1346, v1347, v1348, v1349);
        v1354 = objc_msgSend_objectAtIndexedSubscript_(v287, v1351, 1, v1352, v1353);
        v1359 = objc_msgSend_intValue(v1354, v1355, v1356, v1357, v1358);
        v25 = objc_msgSend_localizedStringWithFormat_(v8, v1360, v575, v1361, v1362, v1350, v1359, v56);
      }

      else
      {
        if (v801 == 1)
        {
          v575 = sub_22159CF44(1, v8);
          v809 = objc_msgSend_objectAtIndexedSubscript_(v287, v806, 0, v807, v808);
          v814 = objc_msgSend_intValue(v809, v810, v811, v812, v813);
          v25 = objc_msgSend_localizedStringWithFormat_(v8, v815, v575, v816, v817, v814, v56);
          goto LABEL_282;
        }

        v1363 = objc_msgSend_count(v287, v802, v803, v804, v805);
        if (v1363 < 3)
        {
          v1440 = MEMORY[0x277D81150];
          v1441 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v1364, "[TSCEError displayStringWithLocale:]", v1365, v1366);
          v1445 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v1442, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEError.mm", v1443, v1444);
          v1450 = objc_msgSend_count(v287, v1446, v1447, v1448, v1449);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v1440, v1451, v1441, v1445, 1653, 0, "The %@ function raised an error with %d arguments and something unexpected happened. We shouldn't be here.", v56, v1450);

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v1452, v1453, v1454, v1455);
          v25 = 0;
          goto LABEL_325;
        }

        v575 = sub_22159CFD4(v1363, v8);
        v809 = objc_msgSend_objectAtIndexedSubscript_(v287, v1367, 0, v1368, v1369);
        v1374 = objc_msgSend_intValue(v809, v1370, v1371, v1372, v1373);
        v1354 = objc_msgSend_objectAtIndexedSubscript_(v287, v1375, 1, v1376, v1377);
        v1382 = objc_msgSend_intValue(v1354, v1378, v1379, v1380, v1381);
        v1386 = objc_msgSend_objectAtIndexedSubscript_(v287, v1383, 2, v1384, v1385);
        v1391 = objc_msgSend_intValue(v1386, v1387, v1388, v1389, v1390);
        v25 = objc_msgSend_localizedStringWithFormat_(v8, v1392, v575, v1393, v1394, v1374, v1382, v1391, v56);
      }

LABEL_282:
LABEL_283:

LABEL_325:
LABEL_271:

LABEL_307:
LABEL_315:

      return v25;
    case 138:
      v620 = objc_msgSend_spillRangeSize(self, v21, v22, v23, v24);
      if ((HIDWORD(v620) > 2 || v620 >= 2) && (v620 >> 33 || v620 > 2))
      {
        v1480.origin = objc_msgSend_spillRange(self, v621, v622, v623, v624);
        v1480.size = v1408;
        v27 = TSUCellRect::asString(&v1480);
        v31 = sub_22159D064(v27, v8);
        v77 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v1409, v31, v1410, v1411, v27);
      }

      else
      {
        objc_msgSend_spillBlocker(self, v621, v622, v623, v624);
        v27 = NSStringFromTSUCellCoord();
        v31 = sub_22159D01C(v27, v8);
        v77 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v625, v31, v626, v627, v27);
      }

      goto LABEL_312;
    case 139:
      v1480.origin = objc_msgSend_spillRange(self, v21, v22, v23, v24);
      v1480.size = v760;
      v27 = TSUCellRect::asString(&v1480);
      v31 = sub_22159D0AC(v27, v8);
      v77 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v761, v31, v762, v763, v27);
      goto LABEL_312;
    case 141:
      v26 = sub_22159D0F4(v20, v8);
      goto LABEL_209;
    case 142:
    case 143:
      goto LABEL_315;
    case 144:
      v26 = sub_22159D2A4(v20, v8);
      goto LABEL_209;
    case 145:
      v493 = objc_msgSend_functionName(self, v21, v22, v23, v24);
      v52 = objc_msgSend_localizedNameForFunction_(v8, v494, v493, v495, v496);

      v56 = sub_22159D2EC(v497, v8);
      v68 = objc_msgSend_argIndex(self, v498, v499, v500, v501);
      v506 = objc_msgSend_intValue(v68, v502, v503, v504, v505);
      v72 = objc_msgSend_localizedStringWithFormat_(v8, v507, v56, v508, v509, v506, v52);
      goto LABEL_216;
    case 146:
      v26 = sub_22159D334(v20, v8);
      goto LABEL_209;
    case 147:
      v26 = sub_22159D37C(v20, v8);
      goto LABEL_209;
    case 148:
      v895 = objc_msgSend_functionName(self, v21, v22, v23, v24);
      v52 = objc_msgSend_localizedNameForFunction_(v8, v896, v895, v897, v898);

      v56 = sub_22159D3C4(v899, v8);
      v68 = objc_msgSend_argIndex(self, v900, v901, v902, v903);
      v908 = objc_msgSend_intValue(v68, v904, v905, v906, v907);
      v72 = objc_msgSend_localizedStringWithFormat_(v8, v909, v56, v910, v911, v908, v52);
      goto LABEL_216;
    case 149:
      v688 = objc_msgSend_functionName(self, v21, v22, v23, v24);
      v52 = objc_msgSend_localizedNameForFunction_(v8, v689, v688, v690, v691);

      v56 = sub_22159D40C(v692, v8);
      v68 = objc_msgSend_argIndex(self, v693, v694, v695, v696);
      v701 = objc_msgSend_intValue(v68, v697, v698, v699, v700);
      v72 = objc_msgSend_localizedStringWithFormat_(v8, v702, v56, v703, v704, v701, v52);
      goto LABEL_216;
    case 150:
      v652 = objc_msgSend_functionName(self, v21, v22, v23, v24);
      v52 = objc_msgSend_localizedNameForFunction_(v8, v653, v652, v654, v655);

      v660 = objc_msgSend_argIndex3(self, v656, v657, v658, v659);
      v665 = objc_msgSend_intValue(v660, v661, v662, v663, v664);

      if (v665 == 1)
      {
        sub_22159D454(v666, v8);
      }

      else
      {
        sub_22159D49C(v666, v8);
      }
      v56 = ;
      v287 = objc_msgSend_argIndex3(self, v667, v668, v669, v670);
      v675 = objc_msgSend_intValue(v287, v671, v672, v673, v674);
      v575 = objc_msgSend_argIndex2(self, v676, v677, v678, v679);
      v684 = objc_msgSend_intValue(v575, v680, v681, v682, v683);
      v579 = objc_msgSend_localizedStringWithFormat_(v8, v685, v56, v686, v687, v52, v675, v684);
LABEL_230:
      v25 = v579;
      goto LABEL_283;
    case 151:
      v26 = sub_22159D4E4(v20, v8);
      goto LABEL_209;
    case 152:
      v716 = objc_msgSend_functionName(self, v21, v22, v23, v24);
      v720 = objc_msgSend_isEqualToString_(v716, v717, @"LET", v718, v719);

      if (v720)
      {
        sub_22159D52C(v721, v8);
      }

      else
      {
        sub_22159D574(v721, v8);
      }
      v52 = ;
      v192 = objc_msgSend_argIndex(self, v722, v723, v724, v725);
      v730 = objc_msgSend_intValue(v192, v726, v727, v728, v729);
      v265 = objc_msgSend_localizedStringWithFormat_(v8, v731, v52, v732, v733, v730);
      goto LABEL_214;
    case 153:
      v635 = objc_msgSend_functionName(self, v21, v22, v23, v24);
      v52 = objc_msgSend_localizedNameForFunction_(v8, v636, v635, v637, v638);

      v56 = sub_22159D5BC(v639, v8);
      v68 = objc_msgSend_argIndex(self, v640, v641, v642, v643);
      v648 = objc_msgSend_intValue(v68, v644, v645, v646, v647);
      v72 = objc_msgSend_localizedStringWithFormat_(v8, v649, v56, v650, v651, v648, v52);
      goto LABEL_216;
    case 154:
      v426 = objc_msgSend_functionName(self, v21, v22, v23, v24);
      v430 = objc_msgSend_isEqualToString_(v426, v427, @"LET", v428, v429);

      if (v430)
      {
        sub_22159D604(v431, v8);
      }

      else
      {
        sub_22159D64C(v431, v8);
      }
      v26 = ;
      goto LABEL_209;
    case 155:
      v27 = sub_22159D724(v20, v8);
      v545 = objc_msgSend_localizedStringWithFormat_(v8, v546, v27, v547, v548, @"_");
      goto LABEL_266;
    case 156:
      v26 = sub_22159A1FC(v20, v8);
      goto LABEL_209;
    case 157:
      v27 = sub_22159D76C(v20, v8);
      v545 = objc_msgSend_localizedStringWithFormat_(v8, v705, v27, v706, v707, 1100000, 1100000);
      goto LABEL_266;
    case 158:
      v26 = sub_22159D13C(v20, v8);
      goto LABEL_209;
    case 159:
      v26 = sub_22159D184(v20, v8);
      goto LABEL_209;
    case 160:
      v734 = objc_msgSend_functionName(self, v21, v22, v23, v24);
      v52 = objc_msgSend_localizedNameForFunction_(v8, v735, v734, v736, v737);

      v56 = sub_22159D1CC(v738, v8);
      v68 = objc_msgSend_argIndex(self, v739, v740, v741, v742);
      v747 = objc_msgSend_intValue(v68, v743, v744, v745, v746);
      v72 = objc_msgSend_localizedStringWithFormat_(v8, v748, v56, v749, v750, v747, v52);
LABEL_216:
      v25 = v72;
LABEL_270:

      goto LABEL_271;
    case 161:
      v26 = sub_22159D7B4(v20, v8);
      goto LABEL_209;
    case 162:
      v751 = objc_msgSend_functionName(self, v21, v22, v23, v24);
      v27 = objc_msgSend_localizedNameForFunction_(v8, v752, v751, v753, v754);

      v755 = MEMORY[0x277CCACA8];
      v31 = sub_22159D214(v756, v8);
      v77 = objc_msgSend_stringWithFormat_(v755, v757, v31, v758, v759, v27);
      goto LABEL_312;
    case 163:
      v26 = sub_22159D25C(v20, v8);
      goto LABEL_209;
    case 164:
      v708 = objc_msgSend_functionName(self, v21, v22, v23, v24);
      v27 = objc_msgSend_localizedNameForFunction_(v8, v709, v708, v710, v711);

      v31 = sub_22159D7FC(v712, v8);
      v77 = objc_msgSend_localizedStringWithFormat_(v8, v713, v31, v714, v715, v27);
      goto LABEL_312;
    case 165:
      v26 = sub_22159D844(v20, v8);
      goto LABEL_209;
    case 166:
      v52 = objc_msgSend_extraInfoString(self, v21, v22, v23, v24);
      v484 = objc_msgSend_functionName(self, v480, v481, v482, v483);
      v488 = objc_msgSend_isEqualToString_(v484, v485, @"LET", v486, v487);

      if (v488)
      {
        sub_22159D694(v489, v8);
      }

      else
      {
        sub_22159D6DC(v489, v8);
      }
      v192 = ;
      v265 = objc_msgSend_localizedStringWithFormat_(v8, v490, v192, v491, v492, v52);
      goto LABEL_214;
    case 167:
      v549 = objc_msgSend_functionName(self, v21, v22, v23, v24);
      v27 = objc_msgSend_localizedNameForFunction_(v8, v550, v549, v551, v552);

      v31 = sub_22159D88C(v553, v8);
      v77 = objc_msgSend_localizedStringWithFormat_(v8, v554, v31, v555, v556, v27);
      goto LABEL_312;
    case 168:
      v517 = objc_msgSend_functionName(self, v21, v22, v23, v24);
      v27 = objc_msgSend_localizedNameForFunction_(v8, v518, v517, v519, v520);

      v31 = sub_22159D8D4(v521, v8);
      v77 = objc_msgSend_localizedStringWithFormat_(v8, v522, v31, v523, v524, v27);
      goto LABEL_312;
    case 170:
      v580 = objc_msgSend_functionName(self, v21, v22, v23, v24);
      v52 = objc_msgSend_localizedNameForFunction_(v8, v581, v580, v582, v583);

      v588 = objc_msgSend_argIndex1(self, v584, v585, v586, v587);
      v593 = objc_msgSend_intValue(v588, v589, v590, v591, v592);

      v598 = objc_msgSend_argIndex2(self, v594, v595, v596, v597);
      v603 = objc_msgSend_intValue(v598, v599, v600, v601, v602);

      v192 = sub_22159D91C(v604, v8);
      v265 = objc_msgSend_localizedStringWithFormat_(v8, v605, v192, v606, v607, v593, v603, v52);
LABEL_214:
      v25 = v265;
LABEL_306:

      goto LABEL_307;
    case 171:
      v26 = sub_22159D964(v20, v8);
LABEL_209:
      v25 = v26;
      goto LABEL_315;
    default:
      v1188 = MEMORY[0x277D81150];
      v1189 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "[TSCEError displayStringWithLocale:]", v23, v24);
      v1193 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v1190, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEError.mm", v1191, v1192);
      v1198 = objc_msgSend_errorType(self, v1194, v1195, v1196, v1197);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v1188, v1199, v1189, v1193, 1855, 0, "This error requires more specific context: %d", v1198);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v1200, v1201, v1202, v1203);
      v25 = 0;
      goto LABEL_315;
  }
}

- (id)displayStringWithCalculationEngine:(id)a3 forTable:(TSKUIDStruct)a4 andCellID:(TSUCellCoord)a5
{
  upper = a4._upper;
  lower = a4._lower;
  v8 = a3;
  v13 = objc_msgSend_errorType(self, v9, v10, v11, v12);
  v22 = objc_msgSend_documentLocale(v8, v14, v15, v16, v17);
  if (!v22)
  {
    v23 = MEMORY[0x277D81150];
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "[TSCEError displayStringWithCalculationEngine:forTable:andCellID:]", v20, v21);
    v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEError.mm", v26, v27);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v23, v29, v24, v28, 1867, 0, "invalid nil value for '%{public}s'", "locale");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v30, v31, v32, v33);
  }

  if (v13 <= 128)
  {
    if (v13 != 8)
    {
      if (v13 != 13)
      {
        if (v13 == 62)
        {
          v34 = objc_msgSend_functionName(self, v18, v19, v20, v21);
          v38 = objc_msgSend_localizedNameForFunction_(v22, v35, v34, v36, v37);
          objc_msgSend_rangeRef(self, v39, v40, v41, v42);
          v43 = objc_opt_new();
          objc_msgSend_setHostTableUID_(v43, v44, lower, upper, v45);
          v50 = objc_msgSend_namer(v8, v46, v47, v48, v49);
          v397 = v399;
          v398 = v400;
          v53 = objc_msgSend_chromeNameForBaseRangeRef_namingContext_(v50, v51, &v397, v43, v52);

          v55 = MEMORY[0x277CCACA8];
          if (v53)
          {
            v56 = objc_msgSend_localizedStringForKey_value_table_(v22, v54, @"%@ refers to %@, which is empty.", &stru_2834BADA0, @"TSCalculationEngine");
            objc_msgSend_stringWithFormat_(v55, v57, v56, v58, v59, v38, v53);
          }

          else
          {
            v56 = objc_msgSend_localizedStringForKey_value_table_(v22, v54, @"%@ refers to an empty cell.", &stru_2834BADA0, @"TSCalculationEngine");
            objc_msgSend_stringWithFormat_(v55, v287, v56, v288, v289, v38);
          }
          v175 = ;

          goto LABEL_45;
        }

        goto LABEL_23;
      }

      v34 = objc_opt_new();
      objc_msgSend_setHostTableUID_(v34, v192, lower, upper, v193);
      v198 = objc_msgSend_namer(v8, v194, v195, v196, v197);
      objc_msgSend_rangeRef(self, v199, v200, v201, v202);
      v399 = v397;
      v400 = v398;
      v38 = objc_msgSend_chromeNameForBaseRangeRef_namingContext_(v198, v203, &v399, v34, v204);

      if (v38)
      {
        v206 = MEMORY[0x277CCACA8];
        v43 = objc_msgSend_localizedStringForKey_value_table_(v22, v205, @"Cell “%@” contains an error.", &stru_2834BADA0, @"TSCalculationEngine");
        v77 = objc_msgSend_stringWithFormat_(v206, v207, v43, v208, v209, v38);
        goto LABEL_33;
      }

      v286 = objc_msgSend_localizedStringForKey_value_table_(v22, v205, @"The formula refers to a cell which contains an error.", &stru_2834BADA0, @"TSCalculationEngine");
      goto LABEL_42;
    }

    v78 = objc_msgSend_functionName(self, v18, v19, v20, v21);
    v82 = objc_msgSend_functionSpecForFunctionName_(TSCEFunctionSpec, v79, v78, v80, v81);

    v395 = v82;
    v391 = objc_msgSend_displayStringForLocale_(v82, v83, v22, v84, v85);
    v89 = objc_msgSend_numberForKey_(self, v86, @"kTSCEExpectedTypeKey", v87, v88);
    v94 = objc_msgSend_intValue(v89, v90, v91, v92, v93);

    v390 = objc_msgSend_localizedTypeStringForArgumentType_(v22, v95, v94, v96, v97);
    v101 = objc_msgSend_numberForKey_(self, v98, @"kTSCEFoundTypeKey", v99, v100);
    v106 = objc_msgSend_intValue(v101, v102, v103, v104, v105);

    v388 = v106;
    v389 = v106;
    v393 = objc_msgSend_localizedTypeStringForArgumentType_(v22, v107, v389, v108, v109);
    if (!v390)
    {
      v113 = MEMORY[0x277D81150];
      v114 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v110, "[TSCEError displayStringWithCalculationEngine:forTable:andCellID:]", v111, v112);
      v118 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v115, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEError.mm", v116, v117);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v113, v119, v114, v118, 1879, 0, "Did not find localized string for expected data type: %d", v389);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v120, v121, v122, v123);
    }

    if (!v393)
    {
      v124 = MEMORY[0x277D81150];
      v125 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v110, "[TSCEError displayStringWithCalculationEngine:forTable:andCellID:]", v111, v112);
      v129 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v126, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEError.mm", v127, v128);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v124, v130, v125, v129, 1880, 0, "Did not find localized string for found data type: %d", v389);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v131, v132, v133, v134);
    }

    v135 = objc_msgSend_numberForKey_(self, v110, @"kTSCEArgumentIndexKey", v111, v112);
    v140 = objc_msgSend_intValue(v135, v136, v137, v138, v139);

    v144 = objc_msgSend_accessorModeForArgumentIndex_(v395, v141, v140, v142, v143);
    v153 = objc_msgSend_minArguments(v395, v145, v146, v147, v148) != 1 || objc_msgSend_maxArguments(v395, v149, v150, v151, v152) != 1;
    if ((((v144 & 0xFFFFFFFD) == 1) & ~objc_msgSend_isOperator(v395, v149, v150, v151, v152) & v153) != 0)
    {
      v266 = objc_msgSend_localizedStringForKey_value_table_(v22, v262, @"Argument %d of %@", &stru_2834BADA0, @"TSCalculationEngine");
      v270 = objc_msgSend_localizedStringWithFormat_(v22, v267, v266, v268, v269, (v140 + 1), v391);

      if (v94 == -1)
      {
        v272 = MEMORY[0x277CCACA8];
        v273 = v395;
        v274 = objc_msgSend_localizedStringForKey_value_table_(v22, v271, @" can\\U2019t be %@.", &stru_2834BADA0, @"TSCalculationEngine");
        v278 = objc_msgSend_stringWithFormat_(v272, v275, v274, v276, v277, v393);
LABEL_55:
        v300 = v278;

        v175 = objc_msgSend_stringByAppendingString_(v270, v301, v300, v302, v303);

LABEL_74:
        goto LABEL_47;
      }
    }

    else
    {
      isOperator = objc_msgSend_isOperator(v395, v262, v263, v264, v265);
      v281 = MEMORY[0x277CCACA8];
      if (isOperator)
      {
        objc_msgSend_localizedStringForKey_value_table_(v22, v280, @"The operator “%@”", &stru_2834BADA0, @"TSCalculationEngine");
      }

      else
      {
        objc_msgSend_localizedStringForKey_value_table_(v22, v280, @"The function “%@”", &stru_2834BADA0, @"TSCalculationEngine");
      }
      v282 = ;
      v270 = objc_msgSend_stringWithFormat_(v281, v283, v282, v284, v285, v391);
      v273 = v395;

      if (v94 == -1)
      {
        v296 = MEMORY[0x277CCACA8];
        v274 = objc_msgSend_localizedStringForKey_value_table_(v22, v271, @" can\\U2019t take %@.", &stru_2834BADA0, @"TSCalculationEngine");
        v278 = objc_msgSend_stringWithFormat_(v296, v297, v274, v298, v299, v393);
        goto LABEL_55;
      }
    }

    v304 = v270;
    v305 = objc_msgSend_localizedStringForKey_value_table_(v22, v271, @" expects %@", &stru_2834BADA0, @"TSCalculationEngine");
    v270 = objc_msgSend_stringByAppendingFormat_(v270, v306, v305, v307, v308, v390);

    if (objc_msgSend_problemNodeIsCellReference(self, v309, v310, v311, v312))
    {
      v317 = objc_opt_new();
      objc_msgSend_setHostTableUID_(v317, v318, lower, upper, v319);
      v324 = objc_msgSend_namer(v8, v320, v321, v322, v323);
      objc_msgSend_rangeRef(self, v325, v326, v327, v328);
      v399 = v397;
      v400 = v398;
      v331 = objc_msgSend_chromeNameForBaseRangeRef_namingContext_(v324, v329, &v399, v317, v330);

      v332 = MEMORY[0x277CCACA8];
      v334 = objc_msgSend_localizedStringForKey_value_table_(v22, v333, @", but cell %@ contains %@.", &stru_2834BADA0, @"TSCalculationEngine");
      v338 = objc_msgSend_stringWithFormat_(v332, v335, v334, v336, v337, v331, v393);

LABEL_73:
      v175 = objc_msgSend_stringByAppendingString_(v270, v339, v338, v340, v341);

      v273 = v395;
      goto LABEL_74;
    }

    v342 = objc_msgSend_problemExpressionString(self, v313, v314, v315, v316);
    v347 = objc_msgSend_length(v342, v343, v344, v345, v346);
    if (v347)
    {
      v352 = MEMORY[0x277CCACA8];
      v353 = objc_msgSend_localizedStringForKey_value_table_(v22, v348, @" but found “%@”.", &stru_2834BADA0, @"TSCalculationEngine");
      v357 = objc_msgSend_stringWithFormat_(v352, v354, v353, v355, v356, v342);
    }

    else
    {
      if (!v388 || v389 == 10 || (v347 = objc_msgSend_length(v393, v348, v349, v350, v351)) == 0)
      {
        v338 = sub_22159EC7C(v347, v22);
        goto LABEL_72;
      }

      v366 = MEMORY[0x277CCACA8];
      v353 = sub_22159EC34(v347, v22);
      v357 = objc_msgSend_stringWithFormat_(v366, v367, v353, v368, v369, v393);
    }

    v338 = v357;

LABEL_72:
    goto LABEL_73;
  }

  switch(v13)
  {
    case 129:
      v34 = objc_opt_new();
      objc_msgSend_setHostTableUID_(v34, v154, lower, upper, v155);
      v160 = objc_msgSend_namer(v8, v156, v157, v158, v159);
      objc_msgSend_rangeRef(self, v161, v162, v163, v164);
      v399 = v397;
      v400 = v398;
      v38 = objc_msgSend_chromeNameForBaseRangeRef_namingContext_(v160, v165, &v399, v34, v166);

      if (v38)
      {
        v168 = MEMORY[0x277CCACA8];
        v43 = objc_msgSend_localizedStringForKey_value_table_(v22, v167, @"The range %@ can\\U2019t be used as a single value.", &stru_2834BADA0, @"TSCalculationEngine");
        v77 = objc_msgSend_stringWithFormat_(v168, v169, v43, v170, v171, v38);
LABEL_33:
        v175 = v77;
LABEL_45:

        goto LABEL_46;
      }

      v286 = objc_msgSend_localizedStringForKey_value_table_(v22, v167, @"The formula contains an invalid reference.", &stru_2834BADA0, @"TSCalculationEngine");
LABEL_42:
      v175 = v286;
LABEL_46:

      goto LABEL_47;
    case 140:
      v210 = objc_msgSend_spillRangeSize(self, v18, v19, v20, v21);
      v396 = objc_msgSend_resolverForTableUID_(v8, v211, lower, upper, v212);
      v394 = objc_msgSend_tableInfo(v396, v213, v214, v215, v216);
      v392 = objc_msgSend_baseTableModel(v394, v217, v218, v219, v220);
      v225 = objc_msgSend_sharedTableConfiguration(TSTConfiguration, v221, v222, v223, v224);
      v399.origin = objc_msgSend_spillRange(self, v226, v227, v228, v229);
      v399.size = v230;
      v234 = objc_msgSend_numberOfRows(v392, v230, v231, v232, v233);
      row = v399.origin.row;
      v240 = objc_msgSend_numberOfColumns(v392, v236, v237, v238, v239);
      column = v399.origin.column;
      v246 = objc_msgSend_maxNumberOfRows(v225, v242, v243, v244, v245);
      v251 = objc_msgSend_maxNumberOfColumns(v225, v247, v248, v249, v250);
      if (TSUCellRect::maxRow(&v399) <= v246 || v251 >= TSUCellRect::maxColumn(&v399))
      {
        if (TSUCellRect::maxRow(&v399) <= v246)
        {
          v291 = TSUCellRect::maxColumn(&v399);
          if (v251 >= v291)
          {
            v358 = row - v234 + HIDWORD(v210);
            v359 = v210 - v240 + column;
            if (v358 <= 0 && v359 == 1)
            {
              v253 = sub_22159ECC4(v291, v22);
              v257 = objc_msgSend_localizedStringWithFormat_(MEMORY[0x277CCACA8], v360, v253, v361, v362, 1);
            }

            else if (v358 > 0 || v359 < 2)
            {
              if (v358 == 1 && v359 <= 0)
              {
                v253 = sub_22159ED54(v291, v22);
                v257 = objc_msgSend_localizedStringWithFormat_(MEMORY[0x277CCACA8], v370, v253, v371, v372, 1);
              }

              else if (v358 == 1 && v359 == 1)
              {
                v253 = sub_22159ED9C(v291, v22);
                v257 = objc_msgSend_localizedStringWithFormat_(MEMORY[0x277CCACA8], v373, v253, v374, v375, 1, 1);
              }

              else if (v358 == 1 && v359 >= 2)
              {
                v253 = sub_22159EDE4(v291, v22);
                v257 = objc_msgSend_localizedStringWithFormat_(MEMORY[0x277CCACA8], v376, v253, v377, v378, v359);
              }

              else if (v358 < 2 || v359 >= 1)
              {
                if (v358 > 1 && v359 == 1)
                {
                  v253 = sub_22159EE74(v291, v22);
                  v257 = objc_msgSend_localizedStringWithFormat_(MEMORY[0x277CCACA8], v382, v253, v383, v384, v358);
                }

                else
                {
                  if (v358 < 2 || v359 < 2)
                  {
                    v175 = sub_22159EF04(v291, v22);
                    goto LABEL_94;
                  }

                  v253 = sub_22159EEBC(v291, v22);
                  v257 = objc_msgSend_localizedStringWithFormat_(MEMORY[0x277CCACA8], v385, v253, v386, v387, v358, v359);
                }
              }

              else
              {
                v253 = sub_22159EE2C(v291, v22);
                v257 = objc_msgSend_localizedStringWithFormat_(MEMORY[0x277CCACA8], v379, v253, v380, v381, v358);
              }
            }

            else
            {
              v253 = sub_22159ED0C(v291, v22);
              v257 = objc_msgSend_localizedStringWithFormat_(MEMORY[0x277CCACA8], v363, v253, v364, v365, v359);
            }
          }

          else
          {
            v253 = objc_msgSend_localizedStringForKey_value_table_(v22, v292, @"The formula’s spilled results exceed the table limit of %1$d columns.", &stru_2834BADA0, @"TSCalculationEngine");
            v257 = objc_msgSend_localizedStringWithFormat_(MEMORY[0x277CCACA8], v293, v253, v294, v295, v251);
          }
        }

        else
        {
          v253 = objc_msgSend_localizedStringForKey_value_table_(v22, v258, @"The formula’s spilled results exceed the table limit of %1$d rows.", &stru_2834BADA0, @"TSCalculationEngine");
          v257 = objc_msgSend_localizedStringWithFormat_(MEMORY[0x277CCACA8], v259, v253, v260, v261, v246);
        }
      }

      else
      {
        v253 = objc_msgSend_localizedStringForKey_value_table_(v22, v252, @"The formula’s spilled results exceed the table limit of %1$d rows and %2$d columns.", &stru_2834BADA0, @"TSCalculationEngine");
        v257 = objc_msgSend_localizedStringWithFormat_(MEMORY[0x277CCACA8], v254, v253, v255, v256, v246, v251);
      }

      v175 = v257;

LABEL_94:
      goto LABEL_47;
    case 169:
      v60 = objc_msgSend_functionName(self, v18, v19, v20, v21);
      v34 = objc_msgSend_functionSpecForFunctionName_(TSCEFunctionSpec, v61, v60, v62, v63);

      v38 = objc_msgSend_displayStringForLocale_(v34, v64, v22, v65, v66);
      v71 = objc_msgSend_isOperator(v34, v67, v68, v69, v70);
      v73 = MEMORY[0x277CCACA8];
      if (v71)
      {
        objc_msgSend_localizedStringForKey_value_table_(v22, v72, @"The operator “%@” had an error in its arguments.", &stru_2834BADA0, @"TSCalculationEngine");
      }

      else
      {
        objc_msgSend_localizedStringForKey_value_table_(v22, v72, @"The function “%@” had an error in its arguments.", &stru_2834BADA0, @"TSCalculationEngine");
      }
      v43 = ;
      v77 = objc_msgSend_stringWithFormat_(v73, v74, v43, v75, v76, v38);
      goto LABEL_33;
  }

LABEL_23:
  v175 = objc_msgSend_displayStringWithLocale_(self, v18, v22, v20, v21);
  if (!v175)
  {
    v176 = MEMORY[0x277D81150];
    v177 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v172, "[TSCEError displayStringWithCalculationEngine:forTable:andCellID:]", v173, v174);
    v181 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v178, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEError.mm", v179, v180);
    v186 = objc_msgSend_errorTypeKey(self, v182, v183, v184, v185);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v176, v187, v177, v181, 2078, 0, "No specified error, type %d %{public}@ dictionary: %{public}@", v13, v186, self->_errorDictionary);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v188, v189, v190, v191);
    v175 = 0;
  }

LABEL_47:

  return v175;
}

+ (id)missingPivotTableErrorForFunctionName:(id)a3 argumentNumber:(int)a4
{
  v5 = *&a4;
  v6 = objc_msgSend_errorForErrorType_functionName_(TSCEError, a2, 131, a3, v4);
  v10 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v7, v5, v8, v9);
  objc_msgSend_setArgIndex_(v6, v11, v10, v12, v13);

  return v6;
}

+ (id)invalidAggregateColumnErrorForFunctionName:(id)a3 argumentNumber:(int)a4
{
  v5 = *&a4;
  v6 = objc_msgSend_errorForErrorType_functionName_(TSCEError, a2, 132, a3, v4);
  v10 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v7, v5, v8, v9);
  objc_msgSend_setArgIndex_(v6, v11, v10, v12, v13);

  return v6;
}

+ (id)invalidGroupingColumnErrorForFunctionName:(id)a3 argumentNumber:(int)a4
{
  v5 = *&a4;
  v6 = objc_msgSend_errorForErrorType_functionName_(TSCEError, a2, 133, a3, v4);
  v10 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v7, v5, v8, v9);
  objc_msgSend_setArgIndex_(v6, v11, v10, v12, v13);

  return v6;
}

+ (id)referenceToNonexistentTableError:(TSKUIDStruct)a3
{
  upper = a3._upper;
  lower = a3._lower;
  v6 = objc_msgSend_errorForErrorType_(TSCEError, a2, 4, a3._upper, v3);
  v9 = v6;
  if (lower | upper)
  {
    objc_msgSend_setOwnerUID_(v6, v7, lower, upper, v8);
  }

  return v9;
}

+ (id)autoNumberAttachmentError
{
  v4 = objc_msgSend_errorForErrorType_(TSCEError, a2, 15, v2, v3);
  objc_msgSend_setAttachmentErrorRaisedInTextCell_(v4, v5, 1, v6, v7);

  return v4;
}

+ (id)attachmentError
{
  v4 = objc_msgSend_errorForErrorType_(TSCEError, a2, 16, v2, v3);
  objc_msgSend_setAttachmentErrorRaisedInTextCell_(v4, v5, 1, v6, v7);

  return v4;
}

- (BOOL)isInvalidMergeReference
{
  if (objc_msgSend_errorType(self, a2, v2, v3, v4) != 4)
  {
    return 0;
  }

  return MEMORY[0x2821F9670](self, sel_BOOLForKey_, @"TSCEInvalidReferenceToMergeKey", v6, v7);
}

- (id)errorDictionary
{
  v10 = objc_msgSend_mutableCopy(self->_errorDictionary, a2, v2, v3, v4);
  if (!v10)
  {
    v10 = objc_opt_new();
  }

  v11 = objc_msgSend_errorType(self, v6, v7, v8, v9);
  v15 = objc_msgSend_errorKeyForErrorType_(TSCEError, v12, v11, v13, v14);
  objc_msgSend_setObject_forKey_(v10, v16, v15, @"TSCEErrorTypeKey", v17);

  return v10;
}

+ (id)argumentErrorForFunctionName:(id)a3
{
  v4 = objc_msgSend_errorForErrorType_functionName_(TSCEError, a2, 169, a3, v3);

  return v4;
}

+ (id)disallowedStockModeError:(id)a3
{
  v3 = a3;
  v7 = objc_msgSend_errorForErrorType_(TSCEError, v4, 122, v5, v6);
  v11 = v7;
  if (v3)
  {
    objc_msgSend_setProblemMode_(v7, v8, v3, v9, v10);
  }

  return v11;
}

+ (id)typeErrorForValue:(id)a3 context:(id)a4 functionSpec:(id)a5 argumentIndex:(int)a6
{
  v6 = *&a6;
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v16 = objc_msgSend_functionName(v11, v12, v13, v14, v15);
  v111 = v16;
  v24 = objc_msgSend_preferredTypeForArgumentIndex_(v11, v17, v6, v18, v19);
  if (v24 == 6)
  {
    v25 = objc_msgSend_nativeType(v9, v20, v21, v22, v23);
  }

  else
  {
    v25 = objc_msgSend_deepType_(v9, v20, v10, v22, v23);
  }

  v30 = v25;
  v110 = objc_msgSend_locale(v10, v26, v27, v28, v29);
  v36 = objc_msgSend_errorForErrorType_functionName_(TSCEError, v31, 8, v16, v32);
  if (v11 && !v16)
  {
    v37 = MEMORY[0x277D81150];
    v38 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v33, "+[TSCEError typeErrorForValue:context:functionSpec:argumentIndex:]", v34, v35);
    v42 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v39, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEError.mm", v40, v41);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v37, v43, v38, v42, 2264, 0, "No functionName available from functionSpec: %{public}@", v11);

    objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v44, v45, v46, v47);
  }

  v48 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v33, v24, v34, v35);
  objc_msgSend_setNumber_forKey_(v36, v49, v48, @"kTSCEExpectedTypeKey", v50);

  v54 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v51, v30, v52, v53);
  objc_msgSend_setNumber_forKey_(v36, v55, v54, @"kTSCEFoundTypeKey", v56);

  v60 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v57, v6, v58, v59);
  objc_msgSend_setNumber_forKey_(v36, v61, v60, @"kTSCEArgumentIndexKey", v62);

  if (objc_msgSend_isReferenceValue(v9, v63, v64, v65, v66))
  {
    v71 = objc_msgSend_asReferenceValue(v9, v67, v68, v69, v70);
    isRange = objc_msgSend_isRange(v71, v72, v73, v74, v75);
    v77 = isRange;
    objc_msgSend_setProblemNodeIsCellReference_(v36, v78, isRange ^ 1u, v79, v80);
    if ((v77 & 1) == 0)
    {
      v112[0] = objc_msgSend_range(v71, v81, v82, v83, v84);
      v112[1] = v88;
      v112[2] = objc_msgSend_tableUID(v71, v88, v85, v86, v87);
      v112[3] = v89;
      objc_msgSend_setRangeRef_(v36, v89, v112, v90, v91);
    }
  }

  else
  {
    objc_msgSend_setProblemNodeIsCellReference_(v36, v67, 0, v69, v70);
  }

  v100 = objc_msgSend_problemExpressionString(v36, v92, v93, v94, v95);
  if (v100)
  {
    v101 = v110;
LABEL_14:

    goto LABEL_15;
  }

  v101 = v110;
  if (objc_msgSend_nativeType(v9, v96, v97, v98, v99) != 13)
  {
    if (!v110)
    {
      v101 = objc_msgSend_currentLocale(MEMORY[0x277D81228], v103, v104, v105, v106);
    }

    v100 = objc_msgSend_asStringWithLocale_(v9, v103, v101, v105, v106);
    if (v100)
    {
      objc_msgSend_setProblemExpressionString_(v36, v107, v100, v108, v109);
    }

    goto LABEL_14;
  }

LABEL_15:

  return v36;
}

+ (id)unknownFunctionError:(id)a3
{
  v3 = a3;
  v7 = objc_msgSend_errorForErrorType_(TSCEError, v4, 2, v5, v6);
  objc_msgSend_setFunctionName_(v7, v8, v3, v9, v10);

  return v7;
}

+ (id)numberErrorForFunctionName:(id)a3
{
  v3 = a3;
  v7 = objc_msgSend_errorForErrorType_(TSCEError, v4, 11, v5, v6);
  objc_msgSend_setFunctionName_(v7, v8, v3, v9, v10);

  return v7;
}

+ (id)autoNumberAttachmentErrorInTextCell:(BOOL)a3
{
  v5 = a3;
  v6 = objc_msgSend_errorForErrorType_(TSCEError, a2, 15, v3, v4);
  objc_msgSend_setAttachmentErrorRaisedInTextCell_(v6, v7, v5, v8, v9);

  return v6;
}

+ (id)attachmentErrorInTextCell:(BOOL)a3
{
  v5 = a3;
  v6 = objc_msgSend_errorForErrorType_(TSCEError, a2, 16, v3, v4);
  objc_msgSend_setAttachmentErrorRaisedInTextCell_(v6, v7, v5, v8, v9);

  return v6;
}

+ (id)valueNotAvailableErrorForFunctionName:(id)a3
{
  v4 = objc_msgSend_errorForErrorType_functionName_(TSCEError, a2, 26, a3, v3);

  return v4;
}

+ (id)errorForInvalidReference:(TSCERangeRef *)a3 orString:(id)a4 contextEntityUID:(const TSKUIDStruct *)a5
{
  tableUID = a3->_tableUID;
  v8[0] = a3->range;
  v8[1] = tableUID;
  v6 = objc_msgSend_errorForInvalidReference_orString_contextEntityUID_invalidMergeReference_disqualifiedFromEndCell_(a1, a2, v8, a4, a5, 0, 0);

  return v6;
}

+ (id)errorForInvalidReference:(TSCERangeRef *)a3 orString:(id)a4 contextEntityUID:(const TSKUIDStruct *)a5 invalidMergeReference:(BOOL)a6 disqualifiedFromEndCell:(BOOL)a7
{
  v7 = a7;
  v8 = a6;
  v11 = a4;
  v16 = objc_msgSend_invalidReferenceError(TSCEError, v12, v13, v14, v15);
  v20 = v16;
  if (v11)
  {
    objc_msgSend_setProblemExpressionString_(v16, v17, v11, v18, v19);
  }

  else
  {
    tableUID = a3->_tableUID;
    v26[0] = a3->range;
    v26[1] = tableUID;
    objc_msgSend_setRangeRef_(v16, v17, v26, v18, v19);
  }

  upper = a5->_upper;
  if (*a5 != 0)
  {
    objc_msgSend_setOwnerUID_(v20, v21, a5->_lower, upper, v22);
  }

  if (v8)
  {
    objc_msgSend_setInvalidReferenceToMerge_(v20, v21, 1, upper, v22);
  }

  if (v7)
  {
    objc_msgSend_setReferenceEndCellInvalid_(v20, v21, 1, upper, v22);
  }

  return v20;
}

+ (id)invalidMergeReference:(TSCERangeRef *)a3 contextEntityUID:(const TSKUIDStruct *)a4
{
  v7 = objc_msgSend_invalidReferenceError(TSCEError, a2, a3, a4, v4);
  tableUID = a3->_tableUID;
  v16[0] = a3->range;
  v16[1] = tableUID;
  objc_msgSend_setRangeRef_(v7, v9, v16, v10, v11);
  upper = a4->_upper;
  if (*a4 != 0)
  {
    objc_msgSend_setOwnerUID_(v7, v12, a4->_lower, upper, v13);
  }

  objc_msgSend_setInvalidReferenceToMerge_(v7, v12, 1, upper, v13);

  return v7;
}

+ (id)outOfBoundsArgumentErrorForArgument:(int)a3 functionName:(id)a4 lowerBound:(double)a5 lowerBoundInclusive:(BOOL)a6
{
  v6 = objc_msgSend_outOfBoundsArgumentErrorForArgument_functionName_lowerBound_lowerBoundInclusive_upperBound_upperBoundInclusive_(a1, a2, *&a3, a4, a6, 0, a5, NAN);

  return v6;
}

+ (id)outOfBoundsArgumentErrorForArgument:(int)a3 functionName:(id)a4 upperBound:(double)a5 upperBoundInclusive:(BOOL)a6
{
  v6 = objc_msgSend_outOfBoundsArgumentErrorForArgument_functionName_lowerBound_lowerBoundInclusive_upperBound_upperBoundInclusive_(a1, a2, *&a3, a4, 0, a6, NAN, a5);

  return v6;
}

+ (id)outOfBoundsArgumentErrorForArgument:(int)a3 functionName:(id)a4 lowerBound:(double)a5 lowerBoundInclusive:(BOOL)a6 upperBound:(double)a7 upperBoundInclusive:(BOOL)a8
{
  v8 = a8;
  v10 = a6;
  v12 = objc_msgSend_errorForErrorType_functionName_argIndex_(TSCEError, a2, 24, a4, *&a3);
  v17 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v13, v14, v15, v16, a5);
  objc_msgSend_setLowerBound_(v12, v18, v17, v19, v20);

  objc_msgSend_setLowerBoundInclusive_(v12, v21, v10, v22, v23);
  v28 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v24, v25, v26, v27, a7);
  objc_msgSend_setUpperBound_(v12, v29, v28, v30, v31);

  objc_msgSend_setUpperBoundInclusive_(v12, v32, v8, v33, v34);

  return v12;
}

+ (id)invalidDecimalNumberErrorForArgument:(int)a3 functionName:(id)a4
{
  v4 = objc_msgSend_errorForErrorType_functionName_argIndex_(TSCEError, a2, 137, a4, *&a3);
  objc_msgSend_setArgIndex2_(v4, v5, 0, v6, v7);
  objc_msgSend_setArgIndex3_(v4, v8, 0, v9, v10);

  return v4;
}

+ (id)invalidDecimalNumberErrorForArgument:(int)a3 argIndex2:(int)a4 functionName:(id)a5
{
  v5 = *&a4;
  v6 = objc_msgSend_errorForErrorType_functionName_argIndex_(TSCEError, a2, 137, a5, *&a3);
  v10 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v7, v5, v8, v9);
  objc_msgSend_setArgIndex2_(v6, v11, v10, v12, v13);

  objc_msgSend_setArgIndex3_(v6, v14, 0, v15, v16);

  return v6;
}

+ (id)invalidDecimalNumberErrorForArgument:(int)a3 argIndex2:(int)a4 argIndex3:(int)a5 functionName:(id)a6
{
  v6 = *&a5;
  v7 = *&a4;
  v8 = objc_msgSend_errorForErrorType_functionName_argIndex_(TSCEError, a2, 137, a6, *&a3);
  v12 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v9, v7, v10, v11);
  objc_msgSend_setArgIndex2_(v8, v13, v12, v14, v15);

  v19 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v16, v6, v17, v18);
  objc_msgSend_setArgIndex3_(v8, v20, v19, v21, v22);

  return v8;
}

+ (id)matchNotFoundErrorForValue:(id)a3 isRegex:(BOOL)a4 afterMatch:(BOOL)a5 previousValueToMatch:(id)a6 previousValueIsRegex:(BOOL)a7 occurrence:(int)a8 matchesFound:(int)a9 functionName:(id)a10
{
  v10 = *&a8;
  v11 = a7;
  v13 = a5;
  v14 = a4;
  v15 = a3;
  v16 = a6;
  v19 = a10;
  if (v14)
  {
    objc_msgSend_errorForErrorType_functionName_(TSCEError, v17, 23, v19, v18);
  }

  else
  {
    objc_msgSend_errorForErrorType_functionName_(TSCEError, v17, 22, v19, v18);
  }
  v20 = ;
  objc_msgSend_setAfterMatch_(v20, v21, v13, v22, v23);
  v27 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v24, v10, v25, v26);
  objc_msgSend_setOccurrence_(v20, v28, v27, v29, v30);

  v34 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v31, a9, v32, v33);
  objc_msgSend_setMatchesFound_(v20, v35, v34, v36, v37);

  if (v13)
  {
    objc_msgSend_setPreviousMatch_(v20, v38, v16, v39, v40);
    objc_msgSend_setPreviousValueIsRegex_(v20, v41, v11, v42, v43);
  }

  if (v15)
  {
    objc_msgSend_setValueToMatch_(v20, v38, v15, v39, v40);
  }

  return v20;
}

+ (id)matchNotFoundErrorForValue:(id)a3 isRegex:(BOOL)a4 functionName:(id)a5
{
  v7 = 0;
  v5 = objc_msgSend_matchNotFoundErrorForValue_isRegex_afterMatch_previousValueToMatch_previousValueIsRegex_occurrence_matchesFound_functionName_(a1, a2, a3, a4, 0, 0, 0, 0, v7, a5);

  return v5;
}

+ (id)startNumberExceedsStringLengthErrorForFunctionName:(id)a3
{
  v4 = objc_msgSend_errorForErrorType_functionName_(TSCEError, a2, 38, a3, v3);

  return v4;
}

+ (id)differentNumberOfDataPointsErrorForFunctionName:(id)a3
{
  v4 = objc_msgSend_errorForErrorType_functionName_(TSCEError, a2, 28, a3, v3);

  return v4;
}

+ (id)mixedTypeManipulationErrorForFunctionName:(id)a3
{
  v4 = objc_msgSend_errorForErrorType_functionName_(TSCEError, a2, 30, a3, v3);

  return v4;
}

+ (id)invalidArgumentsErrorForFunctionName:(id)a3 argumentIndex:(int)a4
{
  v4 = objc_msgSend_errorForErrorType_functionName_argIndex_(TSCEError, a2, 14, a3, *&a4);

  return v4;
}

+ (id)indirectErrorForRangeReference:(TSCERangeRef *)a3 hostTableUID:(const TSKUIDStruct *)a4
{
  v6 = objc_msgSend_errorForErrorType_(TSCEError, a2, 13, a4, v4);
  tableUID = a3->_tableUID;
  v12[0] = a3->range;
  v12[1] = tableUID;
  objc_msgSend_setRangeRef_(v6, v8, v12, v9, v10);

  return v6;
}

+ (id)emptyArgumentSpecificErrorForArgumentNumber:(int)a3
{
  v5 = *&a3;
  v6 = objc_msgSend_errorForErrorType_(TSCEError, a2, 33, v3, v4);
  v10 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v7, v5, v8, v9);
  objc_msgSend_setArgIndex_(v6, v11, v10, v12, v13);

  return v6;
}

+ (id)invalidRangeUsageErrorForReference:(const TSCERangeRef *)a3
{
  v6 = objc_msgSend_errorForErrorType_(TSCEError, a2, 129, v3, v4);
  tableUID = a3->_tableUID;
  v12[0] = a3->range;
  v12[1] = tableUID;
  objc_msgSend_setRangeRef_(v6, v8, v12, v9, v10);

  return v6;
}

+ (id)differentNumberOfElementsErrorForFunctionName:(id)a3
{
  v4 = objc_msgSend_errorForErrorType_functionName_(TSCEError, a2, 35, a3, v3);

  return v4;
}

+ (id)notAReferenceErrorForFunctionName:(id)a3
{
  v4 = objc_msgSend_errorForErrorType_functionName_(TSCEError, a2, 19, a3, v3);

  return v4;
}

+ (id)noSuitableArgumentsFoundErrorForFunctionName:(id)a3 requiredType:(char)a4
{
  v5 = a4;
  v6 = objc_msgSend_errorForErrorType_functionName_(TSCEError, a2, 39, a3, v4);
  v10 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v7, v5, v8, v9);
  objc_msgSend_setNumber_forKey_(v6, v11, v10, @"kTSCEExpectedTypeKey", v12);

  return v6;
}

+ (id)invalidArgumentRelationshipErrorForFunctionName:(id)a3 argIndex1:(int)a4 argIndex2:(int)a5 argsAscending:(BOOL)a6 equalityPermitted:(BOOL)a7
{
  v7 = a7;
  v8 = a6;
  v9 = *&a5;
  v10 = *&a4;
  v11 = objc_msgSend_errorForErrorType_functionName_(TSCEError, a2, 40, a3, *&a5);
  v15 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v12, v10, v13, v14);
  objc_msgSend_setArgIndex1_(v11, v16, v15, v17, v18);

  v22 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v19, v9, v20, v21);
  objc_msgSend_setArgIndex2_(v11, v23, v22, v24, v25);

  objc_msgSend_setArgsAscending_(v11, v26, v8, v27, v28);
  objc_msgSend_setEqualityPermitted_(v11, v29, v7, v30, v31);

  return v11;
}

+ (id)invalidArgumentEqualityRelationshipErrorForFunctionName:(id)a3 argIndex1:(int)a4 argIndex2:(int)a5
{
  v5 = *&a5;
  v6 = *&a4;
  v7 = objc_msgSend_errorForErrorType_functionName_(TSCEError, a2, 41, a3, *&a5);
  v11 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v8, v6, v9, v10);
  objc_msgSend_setArgIndex1_(v7, v12, v11, v13, v14);

  v18 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v15, v5, v16, v17);
  objc_msgSend_setArgIndex2_(v7, v19, v18, v20, v21);

  return v7;
}

+ (id)invalidIndexForChooseError:(int)a3
{
  v5 = *&a3;
  v6 = objc_msgSend_errorForErrorType_(TSCEError, a2, 42, v3, v4);
  v10 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v7, v5, v8, v9);
  objc_msgSend_setChooseIndex_(v6, v11, v10, v12, v13);

  return v6;
}

+ (id)nonEmptyStringRequiredErrorForFunctionName:(id)a3
{
  v4 = objc_msgSend_errorForErrorType_functionName_(TSCEError, a2, 43, a3, v3);

  return v4;
}

+ (id)stringDoesNotRepresentNumberErrorForFunctionName:(id)a3 string:(id)a4
{
  v5 = a4;
  v8 = objc_msgSend_errorForErrorType_functionName_(TSCEError, v6, 44, a3, v7);
  objc_msgSend_setExtraInfoString_(v8, v9, v5, v10, v11);

  return v8;
}

+ (id)stringDoesNotRepresentDateErrorForFunctionName:(id)a3 string:(id)a4
{
  v5 = a4;
  v8 = objc_msgSend_errorForErrorType_functionName_(TSCEError, v6, 45, a3, v7);
  objc_msgSend_setExtraInfoString_(v8, v9, v5, v10, v11);

  return v8;
}

+ (id)signsMustMatchErrorForFunctionName:(id)a3
{
  v4 = objc_msgSend_errorForErrorType_functionName_(TSCEError, a2, 46, a3, v3);

  return v4;
}

+ (id)rangeDoesNotSumToOneForFunctionName:(id)a3 argumentNumber:(int)a4
{
  v4 = objc_msgSend_errorForErrorType_functionName_argIndex_(TSCEError, a2, 47, a3, *&a4);

  return v4;
}

+ (id)invalidProbabilityErrorForFunctionName:(id)a3
{
  v4 = objc_msgSend_errorForErrorType_functionName_(TSCEError, a2, 52, a3, v3);

  return v4;
}

+ (id)argumentEqualsToZeroErrorForFunctionName:(id)a3 argumentNumber:(int)a4
{
  v4 = objc_msgSend_errorForErrorType_functionName_argIndex_(TSCEError, a2, 54, a3, *&a4);

  return v4;
}

+ (id)positionLargerThanArrayErrorForFunctionName:(id)a3
{
  v4 = objc_msgSend_errorForErrorType_functionName_(TSCEError, a2, 55, a3, v3);

  return v4;
}

+ (id)invalidFrequencyErrorForFunctionName:(id)a3 argumentNumber:(int)a4
{
  v4 = objc_msgSend_errorForErrorType_functionName_argIndex_(TSCEError, a2, 56, a3, *&a4);

  return v4;
}

+ (id)invalidTypeErrorForFunctionName:(id)a3 argumentNumber:(int)a4
{
  v4 = objc_msgSend_errorForErrorType_functionName_argIndex_(TSCEError, a2, 57, a3, *&a4);

  return v4;
}

+ (id)invalidTailErrorForFunctionName:(id)a3 argumentNumber:(int)a4
{
  v4 = objc_msgSend_errorForErrorType_functionName_argIndex_(TSCEError, a2, 58, a3, *&a4);

  return v4;
}

+ (id)numberDoesNotConvergeErrorForFunctionName:(id)a3
{
  v4 = objc_msgSend_errorForErrorType_functionName_(TSCEError, a2, 60, a3, v3);

  return v4;
}

+ (id)numberDoesNotConvergeWithEstimateErrorForFunctionName:(id)a3
{
  v4 = objc_msgSend_errorForErrorType_functionName_(TSCEError, a2, 61, a3, v3);

  return v4;
}

+ (id)tooFewDataPointsErrorForFunctionName:(id)a3
{
  v4 = objc_msgSend_errorForErrorType_functionName_(TSCEError, a2, 64, a3, v3);

  return v4;
}

+ (id)dateEarlierThanStartingDateErrorForFunctionName:(id)a3
{
  v4 = objc_msgSend_errorForErrorType_functionName_(TSCEError, a2, 65, a3, v3);

  return v4;
}

+ (id)onlyPositiveOrNegativeErrorForFunctionName:(id)a3
{
  v4 = objc_msgSend_errorForErrorType_functionName_(TSCEError, a2, 66, a3, v3);

  return v4;
}

+ (id)referenceToEmptyCellErrorForFunctionName:(id)a3 rangeReference:(TSCERangeRef *)a4
{
  v6 = objc_msgSend_errorForErrorType_functionName_(TSCEError, a2, 62, a3, v4);
  tableUID = a4->_tableUID;
  v12[0] = a4->range;
  v12[1] = tableUID;
  objc_msgSend_setRangeRef_(v6, v8, v12, v9, v10);

  return v6;
}

+ (id)wrongNumberOfArgumentsErrorForFunctionName:(id)a3 provided:(unint64_t)a4
{
  v6 = objc_msgSend_errorForErrorType_functionName_(TSCEError, a2, 9, a3, v4);
  v10 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x277CCABB0], v7, a4, v8, v9);
  objc_msgSend_setExtraInfoNumber_(v6, v11, v10, v12, v13);

  return v6;
}

+ (id)tooManyArguments:(id)a3 maximum:(unint64_t)a4 provided:(unint64_t)a5
{
  v7 = objc_msgSend_errorForErrorType_functionName_(TSCEError, a2, 10, a3, a5);
  v11 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x277CCABB0], v8, a4, v9, v10);
  objc_msgSend_setMaxArgsAllowed_(v7, v12, v11, v13, v14);

  v18 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x277CCABB0], v15, a5, v16, v17);
  objc_msgSend_setProvidedArgs_(v7, v19, v18, v20, v21);

  return v7;
}

+ (id)mismatchedUnitsErrorForFunctionName:(id)a3 argumentNumberString:(id)a4
{
  v5 = a4;
  v8 = objc_msgSend_errorForErrorType_functionName_(TSCEError, v6, 69, a3, v7);
  objc_msgSend_setExtraInfoString_(v8, v9, v5, v10, v11);

  return v8;
}

+ (id)mismatchedUnitsErrorForFunctionName:(id)a3
{
  v4 = objc_msgSend_mismatchedUnitsErrorForFunctionName_argumentNumberString_(TSCEError, a2, a3, 0, v3);

  return v4;
}

+ (id)unitsNotAllowedErrorForFunctionName:(id)a3 argumentNumber:(int)a4
{
  v4 = objc_msgSend_errorForErrorType_functionName_argIndex_(TSCEError, a2, 70, a3, *&a4);

  return v4;
}

+ (id)currencyNotAllowedErrorForFunctionName:(id)a3 argumentNumber:(int)a4
{
  v4 = objc_msgSend_errorForErrorType_functionName_argIndex_(TSCEError, a2, 71, a3, *&a4);

  return v4;
}

+ (id)durationNotAllowedError:(id)a3 argumentNumber:(int)a4
{
  v4 = objc_msgSend_errorForErrorType_functionName_argIndex_(TSCEError, a2, 72, a3, *&a4);

  return v4;
}

+ (id)mismatchedCurrenciesErrorForFunctionName:(id)a3
{
  v4 = objc_msgSend_errorForErrorType_functionName_(TSCEError, a2, 73, a3, v3);

  return v4;
}

+ (id)sumMixedDurationsAndUnitlessWithoutADateErrorForFunctionName:(id)a3
{
  v4 = objc_msgSend_errorForErrorType_functionName_(TSCEError, a2, 74, a3, v3);

  return v4;
}

+ (id)notEnoughInputsErrorForFunctionName:(id)a3 argumentNumber:(int)a4 required:(int)a5
{
  v5 = *&a5;
  v6 = *&a4;
  v7 = objc_msgSend_errorForErrorType_functionName_(TSCEError, a2, 75, a3, *&a5);
  v11 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v8, v6, v9, v10);
  objc_msgSend_setArgIndex_(v7, v12, v11, v13, v14);

  v18 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v15, v5, v16, v17);
  objc_msgSend_setExtraInfoNumber_(v7, v19, v18, v20, v21);

  return v7;
}

+ (id)invalidIntersectionError:(vector<TSCEReferenceValue *) hostTableUID:(std:(const TSKUIDStruct *)a4 :(id)a5 allocator<TSCEReferenceValue *>> *)a3 calcEngine:
{
  v7 = a5;
  v8 = objc_alloc(MEMORY[0x277CBEB18]);
  v15 = objc_msgSend_initWithCapacity_(v8, v9, a3->var1 - a3->var0, v10, v11);
  var0 = a3->var0;
  var1 = a3->var1;
  if (a3->var0 != var1)
  {
    do
    {
      v18 = *var0;
      v19 = objc_opt_new();
      objc_msgSend_setHostTableUID_(v19, v20, a4->_lower, a4->_upper, v21);
      v30 = objc_msgSend_namer(v7, v22, v23, v24, v25);
      if (v18)
      {
        objc_msgSend_rangeRef(v18, v26, v27, v28, v29);
      }

      else
      {
        v63 = 0u;
        v64 = 0u;
      }

      v65[0] = v63;
      v65[1] = v64;
      v31 = objc_msgSend_chromeNameForBaseRangeRef_namingContext_(v30, v26, v65, v19, v29);

      if (v31)
      {
        objc_msgSend_addObject_(v15, v32, v31, v33, v34);
      }

      ++var0;
    }

    while (var0 != var1);
  }

  v35 = objc_msgSend_errorForErrorType_(TSCEError, v12, 18, v13, v14);
  if (objc_msgSend_count(v15, v36, v37, v38, v39))
  {
    v44 = MEMORY[0x277CCACA8];
    v45 = objc_msgSend_documentLocale(v7, v40, v41, v42, v43);
    v50 = objc_msgSend_listSeparator(v45, v46, v47, v48, v49);
    v54 = objc_msgSend_stringWithFormat_(v44, v51, @"%@ ", v52, v53, v50);

    v58 = objc_msgSend_componentsJoinedByString_(v15, v55, v54, v56, v57);
    objc_msgSend_setReferenceList_(v35, v59, v58, v60, v61);
  }

  return v35;
}

+ (id)invalidArgumentPairingsErrorForFunctionName:(id)a3 hasInitialUnrelatedArgument:(BOOL)a4
{
  v5 = a4;
  v6 = objc_msgSend_errorForErrorType_functionName_(TSCEError, a2, 76, a3, v4);
  v10 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v7, v5, v8, v9);
  objc_msgSend_setExtraInfoNumber_(v6, v11, v10, v12, v13);

  return v6;
}

+ (id)rangeSizeMismatchErrorForFunctionName:(id)a3
{
  v4 = objc_msgSend_errorForErrorType_functionName_(TSCEError, a2, 77, a3, v3);

  return v4;
}

+ (id)invalidBaseCharacterErrorForCharacter:(unsigned __int16)a3 base:(signed __int16)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_msgSend_errorForErrorType_(TSCEError, a2, 79, a4, v4);
  v11 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v8, v5, v9, v10);
  objc_msgSend_setArgIndex1_(v7, v12, v11, v13, v14);

  v18 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v15, @"%C", v16, v17, v6);
  objc_msgSend_setExtraInfoString_(v7, v19, v18, v20, v21);

  return v7;
}

+ (id)invalidUnitStringError:(id)a3
{
  v3 = a3;
  v7 = objc_msgSend_errorForErrorType_(TSCEError, v4, 80, v5, v6);
  objc_msgSend_setUnitName_(v7, v8, v3, v9, v10);

  return v7;
}

+ (id)differentDimensionsErrorForFunctionName:(id)a3
{
  v4 = objc_msgSend_errorForErrorType_functionName_(TSCEError, a2, 81, a3, v3);

  return v4;
}

+ (id)nonMetricUnitPrefixErrorForUnitString:(id)a3
{
  v3 = a3;
  v7 = objc_msgSend_errorForErrorType_(TSCEError, v4, 82, v5, v6);
  objc_msgSend_setUnitName_(v7, v8, v3, v9, v10);

  return v7;
}

+ (id)arrayValueNotNumberErrorForFunctionName:(id)a3 argumentNumber:(int)a4
{
  v4 = objc_msgSend_errorForErrorType_functionName_argIndex_(TSCEError, a2, 92, a3, *&a4);

  return v4;
}

+ (id)comparisonTypeErrorForLeftType:(char)a3 rightType:(char)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_msgSend_errorForErrorType_(TSCEError, a2, 96, a4, v4);
  v11 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v8, v6, v9, v10);
  objc_msgSend_setArgIndex1_(v7, v12, v11, v13, v14);

  v18 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v15, v5, v16, v17);
  objc_msgSend_setArgIndex2_(v7, v19, v18, v20, v21);

  return v7;
}

+ (id)multipleDurationsErrorForFunctionName:(id)a3
{
  v4 = objc_msgSend_errorForErrorType_functionName_(TSCEError, a2, 97, a3, v3);

  return v4;
}

+ (id)negativeArrayValueErrorForFunctionName:(id)a3 argumentNumber:(int)a4
{
  v4 = objc_msgSend_errorForErrorType_functionName_argIndex_(TSCEError, a2, 99, a3, *&a4);

  return v4;
}

+ (id)invalidRegexError:(id)a3
{
  v3 = a3;
  v7 = objc_msgSend_errorForErrorType_(TSCEError, v4, 109, v5, v6);
  objc_msgSend_setValueToMatch_(v7, v8, v3, v9, v10);

  return v7;
}

+ (id)noConditionIsTrueErrorForFunctionName:(id)a3
{
  v4 = objc_msgSend_errorForErrorType_functionName_(TSCEError, a2, 110, a3, v3);

  return v4;
}

+ (id)noTradingInformationErrorWithNextAvailableDate:(id)a3
{
  v3 = a3;
  v11 = objc_msgSend_errorForErrorType_(TSCEError, v4, 116, v5, v6);
  if (v3)
  {
    v12 = MEMORY[0x277CCABB0];
    objc_msgSend_timeIntervalSinceReferenceDate(v3, v7, v8, v9, v10);
    v17 = objc_msgSend_numberWithDouble_(v12, v13, v14, v15, v16);
    objc_msgSend_setDateAsTimeInterval_(v11, v18, v17, v19, v20);
  }

  return v11;
}

+ (id)invalidStockCodeError:(id)a3
{
  v3 = a3;
  v7 = objc_msgSend_errorForErrorType_(TSCEError, v4, 117, v5, v6);
  objc_msgSend_setExtraInfoString_(v7, v8, v3, v9, v10);

  return v7;
}

+ (id)remoteDataUnavailableErrorWithAttribute:(id)a3
{
  v3 = a3;
  v7 = objc_msgSend_errorForErrorType_(TSCEError, v4, 120, v5, v6);
  objc_msgSend_setExtraInfoString_(v7, v8, v3, v9, v10);

  return v7;
}

+ (id)matrixNotSquareError:(id)a3 argIndex:(int)a4
{
  v4 = objc_msgSend_errorForErrorType_functionName_argIndex_(TSCEError, a2, 145, a3, *&a4);

  return v4;
}

+ (id)cannotAcceptLambdaError:(id)a3 argIndex:(int)a4
{
  v4 = objc_msgSend_errorForErrorType_functionName_argIndex_(TSCEError, a2, 148, a3, *&a4);

  return v4;
}

+ (id)requiresLambdaArgumentError:(id)a3 argIndex:(int)a4
{
  v4 = objc_msgSend_errorForErrorType_functionName_argIndex_(TSCEError, a2, 149, a3, *&a4);

  return v4;
}

+ (id)wrongArityForLambdaError:(id)a3 providedArity:(int)a4 expectedArity:(int)a5
{
  v5 = *&a5;
  v6 = *&a4;
  v7 = objc_msgSend_errorForErrorType_functionName_(TSCEError, a2, 150, a3, *&a5);
  v11 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v8, v6, v9, v10);
  objc_msgSend_setArgIndex2_(v7, v12, v11, v13, v14);

  v18 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v15, v5, v16, v17);
  objc_msgSend_setArgIndex3_(v7, v19, v18, v20, v21);

  return v7;
}

+ (id)requiresIdentifierError:(id)a3 argIndex:(int)a4
{
  v4 = objc_msgSend_errorForErrorType_functionName_argIndex_(TSCEError, a2, 152, a3, *&a4);

  return v4;
}

+ (id)unacceptableIdentifierError:(id)a3
{
  v3 = a3;
  v7 = objc_msgSend_errorForErrorType_(TSCEError, v4, 153, v5, v6);
  objc_msgSend_setExtraInfoString_(v7, v8, v3, v9, v10);

  return v7;
}

+ (id)repeatedIdentifierError:(id)a3
{
  v3 = a3;
  v7 = objc_msgSend_errorForErrorType_(TSCEError, v4, 154, v5, v6);
  objc_msgSend_setExtraInfoString_(v7, v8, v3, v9, v10);

  return v7;
}

+ (id)unboundVariableError:(id)a3 variableName:(id)a4
{
  v5 = a4;
  v8 = objc_msgSend_errorForErrorType_functionName_(TSCEError, v6, 166, a3, v7);
  objc_msgSend_setExtraInfoString_(v8, v9, v5, v10, v11);

  return v8;
}

+ (id)arrayTooLargeError:(id)a3
{
  v4 = objc_msgSend_errorForErrorType_functionName_(TSCEError, a2, 157, a3, v3);

  return v4;
}

+ (id)outOfArrayBoundsError:(id)a3
{
  v4 = objc_msgSend_errorForErrorType_functionName_(TSCEError, a2, 161, a3, v3);

  return v4;
}

+ (id)matrixTooLargeError:(id)a3
{
  v4 = objc_msgSend_errorForErrorType_functionName_(TSCEError, a2, 167, a3, v3);

  return v4;
}

+ (id)checkForTooLargeArrayNumColumns:(unsigned int)a3 numRows:(unsigned int)a4 functionName:(id)a5
{
  v10 = a5;
  if (a3 > 0x10C8E0 || a4 > 0x10C8E0 || a4 * a3 >= 0x119B99EC401)
  {
    v11 = objc_msgSend_arrayTooLargeError_(TSCEError, v7, v10, v8, v9);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)checkForTooLargeMatrixNumColumns:(unsigned int)a3 numRows:(unsigned int)a4 functionName:(id)a5
{
  v10 = a5;
  if (a3 > 0x3E8 || a4 > 0x3E8 || a4 * a3 >= 0xF4241)
  {
    v11 = objc_msgSend_matrixTooLargeError_(TSCEError, v7, v10, v8, v9);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)evaluationRecursingTooDeepError:(id)a3
{
  v4 = objc_msgSend_errorForErrorType_functionName_(TSCEError, a2, 168, a3, v3);

  return v4;
}

- (BOOL)isNativelyEqual:(id)a3
{
  v6 = MEMORY[0x277D81150];
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEError isNativelyEqual:]", v3, v4);
  v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEError.mm", v9, v10);
  v16 = objc_msgSend_nativeType(self, v12, v13, v14, v15);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v17, v7, v11, 3178, 0, "isNativelyEqual not implemented for type: %d", v16);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20, v21);
  return 0;
}

+ (BOOL)errorForRichTextStorage:(id)a3 outValue:(id *)a4
{
  v5 = a3;
  v10 = 0;
  v13 = objc_msgSend_attachmentCount(v5, v6, v7, v8, v9);
  if (v13)
  {
    for (i = 0; i != v13; ++i)
    {
      v15 = objc_msgSend_attachmentAtAttachmentIndex_outCharIndex_(v5, v11, i, 0, v12);
      v24 = objc_msgSend_elementKind(v15, v16, v17, v18, v19);
      if ((v24 & 0xBF9FF) != 0)
      {
        if ((v24 & 0x120) != 0)
        {
          objc_msgSend_autoNumberAttachmentError(TSCEError, v20, v21, v22, v23);
        }

        else
        {
          objc_msgSend_attachmentError(TSCEError, v20, v21, v22, v23);
        }
        v28 = ;
        if (a4)
        {
          *a4 = objc_msgSend_errorValue_(TSCEErrorValue, v25, v28, v26, v27);
        }

        v10 = 1;
      }
    }
  }

  return v10 & 1;
}

+ (id)contentBlockedSpillError:(id)a3 spillRange:(TSUCellRect)a4 spillBlocker:(TSUCellRect)a5
{
  size = a5.size;
  origin = a5.origin;
  v7 = a4.size;
  v8 = a4.origin;
  v10 = objc_msgSend_errorForErrorType_(TSCEError, a2, 138, *&a4.origin, *&a4.size);
  objc_msgSend_setSpillRangeSize_(v10, v11, *&a3, v12, v13);
  objc_msgSend_setSpillRange_(v10, v14, v8, v7, v15);
  objc_msgSend_setSpillBlocker_(v10, v16, origin, size, v17);

  return v10;
}

+ (id)mergeBlockedSpillError:(id)a3 spillRange:(TSUCellRect)a4 spillBlocker:(TSUCellRect)a5
{
  size = a5.size;
  origin = a5.origin;
  v7 = a4.size;
  v8 = a4.origin;
  v10 = objc_msgSend_errorForErrorType_(TSCEError, a2, 139, *&a4.origin, *&a4.size);
  objc_msgSend_setSpillRangeSize_(v10, v11, *&a3, v12, v13);
  objc_msgSend_setSpillRange_(v10, v14, v8, v7, v15);
  objc_msgSend_setSpillBlocker_(v10, v16, origin, size, v17);

  return v10;
}

+ (id)tableSizeBlockedSpillError:(id)a3 spillRange:(TSUCellRect)a4
{
  size = a4.size;
  origin = a4.origin;
  v7 = objc_msgSend_errorForErrorType_(TSCEError, a2, 140, *&a4.origin, *&a4.size);
  objc_msgSend_setSpillRange_(v7, v8, origin, size, v9);
  objc_msgSend_setSpillRangeSize_(v7, v10, *&a3, v11, v12);

  return v7;
}

+ (id)requiresOneDimArrayInputError:(id)a3 argumentNumber:(int)a4
{
  v4 = objc_msgSend_errorForErrorType_functionName_argIndex_(TSCEError, a2, 160, a3, *&a4);

  return v4;
}

+ (id)padWithValuesNotProvided:(id)a3
{
  v4 = objc_msgSend_errorForErrorType_functionName_(TSCEError, a2, 163, a3, v3);

  return v4;
}

+ (id)delimiterValueNotProvided:(id)a3
{
  v4 = objc_msgSend_errorForErrorType_functionName_(TSCEError, a2, 164, a3, v3);

  return v4;
}

+ (id)sizeMismatchInputError:(id)a3
{
  v4 = objc_msgSend_errorForErrorType_functionName_(TSCEError, a2, 162, a3, v3);

  return v4;
}

+ (id)inconsistantParameterFormatError:(int)a3 argIndex2:(int)a4 functionName:(id)a5
{
  v5 = *&a4;
  v6 = *&a3;
  v7 = a5;
  v11 = objc_msgSend_errorForErrorType_(TSCEError, v8, 170, v9, v10);
  objc_msgSend_setFunctionName_(v11, v12, v7, v13, v14);
  v18 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v15, v6, v16, v17);
  objc_msgSend_setArgIndex1_(v11, v19, v18, v20, v21);

  v25 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v22, v5, v23, v24);
  objc_msgSend_setArgIndex2_(v11, v26, v25, v27, v28);

  return v11;
}

@end