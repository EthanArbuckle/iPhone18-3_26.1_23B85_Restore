@interface TSCELogicalTest
+ (id)logicalTestWithCriterion:(id)a3 evaluationContext:(id)a4 functionSpec:(id)a5 outError:(id *)a6;
- (BOOL)compare:(id)a3 outError:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (TSCELogicalTest)initWithCriterion:(id)a3 evaluationContext:(id)a4 functionSpec:(id)a5 outError:(id *)a6;
- (id)description;
- (int)parseRaconCriteriaString:(id)a3;
- (unint64_t)cost;
@end

@implementation TSCELogicalTest

+ (id)logicalTestWithCriterion:(id)a3 evaluationContext:(id)a4 functionSpec:(id)a5 outError:(id *)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = objc_alloc(objc_opt_class());
  v14 = objc_msgSend_initWithCriterion_evaluationContext_functionSpec_outError_(v12, v13, v9, v10, v11, a6);

  return v14;
}

- (TSCELogicalTest)initWithCriterion:(id)a3 evaluationContext:(id)a4 functionSpec:(id)a5 outError:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v97.receiver = self;
  v97.super_class = TSCELogicalTest;
  v13 = [(TSCELogicalTest *)&v97 init];
  objc_storeStrong(&v13->_evaluationContext, a4);
  v13->_operation = 0;
  if (objc_msgSend_isThunk(v10, v14, v15, v16, v17))
  {
    v21 = objc_msgSend_unwrapThunk_(v13->_evaluationContext, v18, v10, v19, v20);

    v10 = v21;
  }

  evaluationContext = v13->_evaluationContext;
  v96 = 0;
  v23 = objc_msgSend_deepType_outError_(v10, v18, evaluationContext, &v96, v20);
  v24 = v96;
  v29 = v24;
  v30 = 0;
  if (v23 <= 8u)
  {
    if (v23 > 2u)
    {
      if (v23 != 3)
      {
        if (v23 != 5)
        {
          if (v23 == 7)
          {
            v90 = v24;
            v31 = objc_msgSend_asString_functionSpec_argumentIndex_outError_(v10, v25, v11, v12, 1, &v90);
            v32 = v90;

            if (objc_msgSend_isRegexString(v10, v33, v34, v35, v36))
            {
              v13->_operation = 31;
              isCaseSensitiveRegexString = objc_msgSend_isCaseSensitiveRegexString(v10, v37, v38, v39, v40);
              v89 = v32;
              v43 = objc_msgSend_regexMatcherWithRegexString_caseSensitive_outError_(TSCERegexMatcher, v42, v31, isCaseSensitiveRegexString, &v89);
              v29 = v89;

              objc_msgSend_setMatcher_(v13, v44, v43, v45, v46);
            }

            else
            {
              v13->_operation = objc_msgSend_parseRaconCriteriaString_(v13, v37, v31, v39, v40);
              v29 = v32;
            }

            if (!v29)
            {
              goto LABEL_38;
            }

            goto LABEL_35;
          }

          goto LABEL_34;
        }

        v95 = v24;
        v68 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v10, v25, v11, v12, 0xFFFFFFFFLL, &v95);
        v56 = v95;

        isDuration = objc_msgSend_isDuration(v68, v69, v70, v71, v72);
        if (isDuration)
        {
          v30 = 24;
        }

        else
        {
          v30 = 0;
        }

        goto LABEL_29;
      }

      v13->_operation = 12;
      v91 = v24;
      v47 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(v10, v25, v11, v12, 1, &v91);
      v50 = v91;

      objc_msgSend_setDate_(v13, v65, v47, v66, v67);
LABEL_24:

      v29 = v50;
      if (!v50)
      {
        goto LABEL_38;
      }

      goto LABEL_35;
    }

    if (v23)
    {
      if (v23 == 2)
      {
        v13->_operation = 18;
        v93 = v24;
        objc_msgSend_asBoolean_functionSpec_argumentIndex_outError_(v10, v25, v11, v12, 1, &v93);
        v47 = v93;

        TSUDecimal::operator=();
        v54 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v51, v92, v52, v53);
        value = v13->_value;
        v13->_value = v54;

        goto LABEL_32;
      }

LABEL_34:
      v76 = MEMORY[0x277D81150];
      v77 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "[TSCELogicalTest initWithCriterion:evaluationContext:functionSpec:outError:]", v27, v28);
      v81 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v78, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCELogicalTest.mm", v79, v80);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v76, v82, v77, v81, 201, 0, "type not handled: %d", v23);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v83, v84, v85, v86);
      if (!v29)
      {
        goto LABEL_38;
      }

      goto LABEL_35;
    }

LABEL_20:
    v56 = v24;
LABEL_29:
    v13->_operation = v30;
    v94 = v56;
    v74 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v10, v25, v11, v12, 1, &v94);
    v29 = v94;

    v75 = v13->_value;
    v13->_value = v74;

    if (!v29)
    {
      goto LABEL_38;
    }

    goto LABEL_35;
  }

  if (v23 <= 0xBu)
  {
    if (v23 != 9)
    {
      if (v23 != 10)
      {
        goto LABEL_34;
      }

      goto LABEL_20;
    }

    v47 = objc_msgSend_errorWithContext_(v10, v25, v11, v27, v28);

    v60 = objc_msgSend_errorWithContext_(v10, v57, v11, v58, v59);

    if (!v60)
    {
      v50 = objc_msgSend_numberError(TSCEError, v61, v62, v63, v64);
      goto LABEL_24;
    }
  }

  else
  {
    if (v23 == 12)
    {
      goto LABEL_20;
    }

    if (v23 != 16)
    {
      if (v23 == 19)
      {
        v47 = objc_msgSend_functionName(v12, v25, v26, v27, v28);
        v50 = objc_msgSend_cannotAcceptLambdaError_argIndex_(TSCEError, v48, v47, 1, v49);

        goto LABEL_24;
      }

      goto LABEL_34;
    }

    v47 = objc_msgSend_invalidReferenceError(TSCEError, v25, v26, v27, v28);
  }

LABEL_32:
  v29 = v47;
  if (!v47)
  {
    goto LABEL_38;
  }

LABEL_35:
  if (a6)
  {
    v87 = v29;
    *a6 = v29;
  }

  v13 = 0;
LABEL_38:

  return v13;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  operation = self->_operation;
  value = self->_value;
  v11 = objc_msgSend_currentLocale(MEMORY[0x277D81228], v7, v8, v9, v10);
  v15 = objc_msgSend_asStringWithLocale_(value, v12, v11, v13, v14);
  string = self->_string;
  date = self->_date;
  v22 = objc_msgSend_cost(self, v18, v19, v20, v21);
  v26 = objc_msgSend_stringWithFormat_(v3, v23, @"<%@: %p>: operation: %d value: %@ string: %@ date: %@ -> cost: %lu", v24, v25, v4, self, operation, v15, string, date, v22);

  return v26;
}

- (int)parseRaconCriteriaString:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_zero(TSCENumberValue, v5, v6, v7, v8);
  value = self->_value;
  self->_value = v9;

  objc_msgSend_setString_(self, v11, 0, v12, v13);
  objc_msgSend_setDate_(self, v14, 0, v15, v16);
  if ((objc_msgSend_isEqualToString_(v4, v17, @"=", v18, v19) & 1) == 0 && (objc_msgSend_isEqualToString_(v4, v20, &stru_2834BADA0, v21, v22) & 1) == 0)
  {
    LODWORD(v27) = objc_msgSend_hasPrefix_(v4, v23, @"=", v24, v25);
    if (objc_msgSend_hasPrefix_(v4, v28, @"<", v29, v30))
    {
      if (objc_msgSend_hasPrefix_(v4, v31, @"<=", v32, v33))
      {
        v34 = 5;
        v27 = 2;
      }

      else
      {
        hasPrefix = objc_msgSend_hasPrefix_(v4, v31, @"<>", v32, v33);
        if (hasPrefix)
        {
          v34 = 1;
        }

        else
        {
          v34 = 4;
        }

        if (hasPrefix)
        {
          v27 = 2;
        }

        else
        {
          v27 = 1;
        }
      }
    }

    else
    {
      v34 = 0;
      v27 = v27;
    }

    if (objc_msgSend_hasPrefix_(v4, v31, @">", v32, v33))
    {
      v39 = objc_msgSend_hasPrefix_(v4, v36, @">=", v37, v38);
      if (v39)
      {
        v34 = 3;
      }

      else
      {
        v34 = 2;
      }

      if (v39)
      {
        v27 = 2;
      }

      else
      {
        v27 = 1;
      }
    }

    if (objc_msgSend_hasPrefix_(v4, v36, @"≤", v37, v38))
    {
      v26 = 5;
    }

    else if (objc_msgSend_hasPrefix_(v4, v40, @"≥", v41, v42))
    {
      v26 = 3;
    }

    else
    {
      v43 = objc_msgSend_hasPrefix_(v4, v40, @"≠", v41, v42);
      if (v43)
      {
        v26 = 1;
      }

      else
      {
        v26 = v34;
      }

      if (!v43)
      {
        objc_msgSend_substringFromIndex_(v4, v40, v27, v41, v42);
        goto LABEL_31;
      }
    }

    objc_msgSend_substringFromIndex_(v4, v40, 1, v41, v42);
    v44 = LABEL_31:;
    v49 = objc_msgSend_locale(self->_evaluationContext, v45, v46, v47, v48);
    v54 = TSUCreateDateFromString();
    if (v54)
    {
      objc_msgSend_setDate_(self, v50, v54, v52, v53);
      v26 += 12;
LABEL_48:

      goto LABEL_49;
    }

    v55 = objc_msgSend_whitespaceAndNewlineCharacterSet(MEMORY[0x277CCA900], v50, v51, v52, v53);
    v112 = objc_msgSend_stringByTrimmingCharactersInSet_(v44, v56, v55, v57, v58);

    MEMORY[0x223D9F8D0](v120, v49);
    TSUUnivNumberParser::parseAsNumber(v120, v112);
    if (v119 == -999)
    {
      v116 = 0;
      v115 = 0;
      if (TSUDurationFormatterTimeIntervalFromString())
      {
        v115 = TSUDurationFormatterMaxDurationUnitInUnits();
        v63 = sub_221387C78(v115);
        v64 = [TSCENumberValue alloc];
        TSUDecimal::operator=();
        v67 = objc_msgSend_initWithDecimal_baseUnit_(v64, v65, v117, v63, v66);
        v68 = self->_value;
        self->_value = v67;

        v26 += 24;
      }

      else
      {
        v74 = objc_msgSend_localizedTrueString(v49, v59, v60, v61, v62);
        v78 = objc_msgSend_caseInsensitiveCompare_(v44, v75, v74, v76, v77);

        if (!v78)
        {
          TSUDecimal::operator=();
          v86 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v83, v117, v84, v85);
          v87 = self->_value;
          self->_value = v86;
        }

        v88 = objc_msgSend_localizedFalseString(v49, v79, v80, v81, v82);
        v92 = objc_msgSend_caseInsensitiveCompare_(v44, v89, v88, v90, v91);

        if (v92)
        {
          if (v78)
          {
            objc_msgSend_setString_(self, v93, v44, v95, v96);
            if (v26 > 2)
            {
              if (v26 == 3)
              {
                v26 = 9;
              }

              else if (v26 == 4)
              {
                v26 = 10;
              }

              else
              {
                v26 = 11;
              }
            }

            else if (v26)
            {
              if (v26 == 1)
              {
                v113 = 0;
                v99 = objc_msgSend_regexMatcherWithStringMatch_outError_(TSCERegexMatcher, v97, v44, &v113, v98);
                v100 = v113;
                objc_msgSend_setMatcher_(self, v101, v99, v102, v103);

                v26 = 7;
              }

              else
              {
                v26 = 8;
              }
            }

            else
            {
              v114 = 0;
              v107 = objc_msgSend_regexMatcherWithStringMatch_outError_(TSCERegexMatcher, v97, v44, &v114, v98);
              v108 = v114;
              objc_msgSend_setMatcher_(self, v109, v107, v110, v111);

              v26 = 6;
            }

            goto LABEL_47;
          }
        }

        else
        {
          v104 = objc_msgSend_zero(TSCENumberValue, v93, v94, v95, v96);
          v105 = self->_value;
          self->_value = v104;
        }

        v26 += 18;
      }
    }

    else
    {
      TSUDecimal::operator=();
      v72 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v69, v117, v70, v71);
      v73 = self->_value;
      self->_value = v72;
    }

LABEL_47:
    MEMORY[0x223D9F890](v118);

    goto LABEL_48;
  }

  v26 = 30;
LABEL_49:

  return v26;
}

- (BOOL)compare:(id)a3 outError:(id *)a4
{
  v6 = a3;
  v10 = objc_msgSend_deepType_(v6, v7, self->_evaluationContext, v8, v9);
  LODWORD(v18) = objc_msgSend_valueIsEmptyWithContext_(v6, v11, self->_evaluationContext, v12, v13);
  if (v10 == 5)
  {
    evaluationContext = self->_evaluationContext;
    v317 = 0;
    v48 = objc_msgSend_asNumber_outError_(v6, v14, evaluationContext, &v317, v17);
    v49 = v317;
    isDuration = objc_msgSend_isDuration(v48, v50, v51, v52, v53);
    if (v49)
    {
      v55 = v49;
      *a4 = v49;

      goto LABEL_15;
    }

    v57 = isDuration;

    v10 = 5;
  }

  else
  {
    if (v10 != 7)
    {
      if (v10 == 9)
      {
        if (objc_msgSend_isReferenceValue(v6, v14, v15, v16, v17))
        {
          v19 = objc_msgSend_asReferenceValue(v6, v14, v15, v16, v17);
          v24 = v19;
          if (v19 && (objc_msgSend_isNil(v19, v20, v21, v22, v23) & 1) == 0)
          {
            v28 = objc_msgSend_errorWithContext_(v24, v25, self->_evaluationContext, v26, v27);
            if (objc_msgSend_isCircularReferenceError(v28, v29, v30, v31, v32))
            {
              v33 = v28;
              *a4 = v28;
LABEL_25:

              goto LABEL_15;
            }
          }
        }

        v57 = 0;
        v10 = 9;
      }

      else
      {
        v57 = 0;
      }

      goto LABEL_30;
    }

    operation = self->_operation;
    if (operation > 0x1F)
    {
      goto LABEL_23;
    }

    v35 = 1 << operation;
    if ((v35 & 0xFC0000) != 0)
    {
      v36 = objc_msgSend_locale(self->_evaluationContext, v14, v15, v16, v17);
      v37 = self->_evaluationContext;
      v316 = 0;
      v40 = objc_msgSend_asString_outError_(v6, v38, v37, &v316, v39);
      v41 = v316;
      if (v41)
      {
        v46 = v41;
        *a4 = v41;

LABEL_15:
        LOBYTE(v18) = 0;
        v56 = v6;
        goto LABEL_199;
      }

      v58 = objc_msgSend_localizedTrueString(v36, v42, v43, v44, v45);
      v62 = objc_msgSend_caseInsensitiveCompare_(v40, v59, v58, v60, v61);

      if (v62)
      {
        v67 = objc_msgSend_localizedFalseString(v36, v63, v64, v65, v66);
        v71 = objc_msgSend_caseInsensitiveCompare_(v40, v68, v67, v69, v70);

        if (v71)
        {
          v10 = 7;
          v56 = v6;
LABEL_146:

          v57 = 0;
          goto LABEL_31;
        }

        v85 = objc_msgSend_zero(TSCENumberValue, v72, v73, v74, v75);
      }

      else
      {
        TSUDecimal::operator=();
        v85 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v82, v313, v83, v84);
      }

      v56 = v85;

      v10 = 2;
      goto LABEL_146;
    }

    if ((v35 & 0x800000C0) == 0)
    {
LABEL_23:
      v76 = self->_evaluationContext;
      v315 = 0;
      v28 = objc_msgSend_asString_outError_(v6, v14, v76, &v315, v17);
      v77 = v315;
      if (v77)
      {
        v24 = v77;
        *a4 = v77;
        goto LABEL_25;
      }

      v236 = objc_msgSend_locale(self->_evaluationContext, v78, v79, v80, v81);
      TSUDecimal::operator=();
      v237 = MEMORY[0x223D9F8D0](v313, v236);
      TSUUnivNumberParser::parseAsNumber(v237, v28);
      if (v312 == -999)
      {
        v241 = 1;
      }

      else
      {
        v241 = TSUFormatTypeFromTSUNumberValueType() == 262;
        TSUDecimal::operator=();
      }

      if (self->_date && v241 && (v251 = objc_msgSend_newDateConversionOfString_context_(TSCEEvaluationContext, v238, v28, self->_evaluationContext, v240)) != 0)
      {
        v56 = objc_msgSend_dateValue_(TSCEDateValue, v238, v251, v239, v240);

        v57 = 0;
      }

      else if (v312 == -999)
      {
        v310 = 0;
        v309 = 0;
        v57 = TSUDurationFormatterTimeIntervalFromString();
        v56 = v6;
        if (v57)
        {
          v309 = TSUDurationFormatterMaxDurationUnitInUnits();
          v255 = sub_221387C78(v309);
          v256 = [TSCENumberValue alloc];
          TSUDecimal::operator=();
          v56 = objc_msgSend_initWithDecimal_baseUnit_(v256, v257, v308, v255, v258);
        }
      }

      else
      {
        v270 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v238, v314, v239, v240);

        v57 = 0;
        v56 = v270;
      }

      v10 = objc_msgSend_deepType_(v56, v252, self->_evaluationContext, v253, v254);
      MEMORY[0x223D9F890](v311);
      sub_2211AF274(v313);

      goto LABEL_31;
    }

    v57 = 0;
    v10 = 7;
  }

LABEL_30:
  v56 = v6;
LABEL_31:
  switch(self->_operation)
  {
    case 0:
      if ((v10 != 5) | (v57 | v18) & 1)
      {
        goto LABEL_198;
      }

      v86 = self->_evaluationContext;
      v307 = 0;
      v87 = objc_msgSend_asNumber_outError_(v56, v14, v86, &v307, v17);
      v88 = v307;
      v91 = objc_msgSend_eq_outError_(v87, v89, self->_value, a4, v90);
      goto LABEL_62;
    case 1:
      if ((v10 != 5) | (v57 | v18) & 1)
      {
        goto LABEL_180;
      }

      v138 = self->_evaluationContext;
      v306 = 0;
      v87 = objc_msgSend_asNumber_outError_(v56, v14, v138, &v306, v17);
      v88 = v306;
      v91 = objc_msgSend_ne_outError_(v87, v139, self->_value, a4, v140);
      goto LABEL_62;
    case 2:
      if (v57)
      {
        goto LABEL_166;
      }

      if (v10 == 3)
      {
        goto LABEL_164;
      }

      if (v10 != 5 || (v18 & 1) != 0)
      {
        goto LABEL_198;
      }

      v224 = self->_evaluationContext;
      v305 = 0;
      v87 = objc_msgSend_asNumber_outError_(v56, v14, v224, &v305, v17);
      v88 = v305;
      v91 = objc_msgSend_gt_(v87, v225, self->_value, v226, v227);
      goto LABEL_62;
    case 3:
      if (v57)
      {
        goto LABEL_166;
      }

      if (v10 == 3)
      {
        goto LABEL_164;
      }

      if (v10 != 5 || (v18 & 1) != 0)
      {
        goto LABEL_198;
      }

      v220 = self->_evaluationContext;
      v304 = 0;
      v87 = objc_msgSend_asNumber_outError_(v56, v14, v220, &v304, v17);
      v88 = v304;
      v91 = objc_msgSend_ge_(v87, v221, self->_value, v222, v223);
      goto LABEL_62;
    case 4:
      if (v57)
      {
        goto LABEL_166;
      }

      if (v10 == 3)
      {
        goto LABEL_164;
      }

      if (v10 != 5 || (v18 & 1) != 0)
      {
        goto LABEL_198;
      }

      v228 = self->_evaluationContext;
      v303 = 0;
      v87 = objc_msgSend_asNumber_outError_(v56, v14, v228, &v303, v17);
      v88 = v303;
      v91 = objc_msgSend_lt_(v87, v229, self->_value, v230, v231);
      goto LABEL_62;
    case 5:
      if (v57)
      {
        goto LABEL_166;
      }

      if (v10 == 3)
      {
LABEL_164:
        v159 = 5;
        goto LABEL_165;
      }

      if (v10 != 5 || (v18 & 1) != 0)
      {
        goto LABEL_198;
      }

      v232 = self->_evaluationContext;
      v302 = 0;
      v87 = objc_msgSend_asNumber_outError_(v56, v14, v232, &v302, v17);
      v88 = v302;
      v91 = objc_msgSend_le_(v87, v233, self->_value, v234, v235);
LABEL_62:
      LOBYTE(v18) = v91;

      if (!v88)
      {
        goto LABEL_199;
      }

      goto LABEL_197;
    case 6:
      if ((v10 != 7) | v18 & 1)
      {
        goto LABEL_198;
      }

      matcher = self->_matcher;
      v147 = self->_evaluationContext;
      v301 = 0;
      v149 = objc_msgSend_asString_outError_(v56, v14, v147, &v301, v17);
      v88 = v301;
      v153 = objc_msgSend_containsMatchInString_(matcher, v150, v149, v151, v152);
      goto LABEL_73;
    case 7:
      if (v10 != 7)
      {
        if (!v10)
        {
          LOBYTE(v18) = objc_msgSend_length(self->_string, v14, v15, v16, v17) != 0;
          goto LABEL_199;
        }

        goto LABEL_180;
      }

      if (v18)
      {
LABEL_180:
        LOBYTE(v18) = 1;
        goto LABEL_199;
      }

      v260 = self->_matcher;
      v259 = self->_evaluationContext;
      v300 = 0;
      v149 = objc_msgSend_asString_outError_(v56, v14, v259, &v300, v17);
      v88 = v300;
      LODWORD(v18) = objc_msgSend_containsMatchInString_(v260, v261, v149, v262, v263) ^ 1;
LABEL_74:

      if (v88)
      {
LABEL_197:
        v268 = v88;
        *a4 = v88;

LABEL_198:
        LOBYTE(v18) = 0;
      }

LABEL_199:

      return v18;
    case 8:
      if ((v10 != 7) | v18 & 1)
      {
        goto LABEL_198;
      }

      v122 = self->_evaluationContext;
      v299 = 0;
      v94 = objc_msgSend_asString_outError_(v56, v14, v122, &v299, v17);
      v88 = v299;
      v97 = objc_msgSend_caseInsensitiveCompare_(v94, v123, self->_string, v124, v125);
      goto LABEL_67;
    case 9:
      if ((v10 != 7) | v18 & 1)
      {
        goto LABEL_198;
      }

      v180 = self->_evaluationContext;
      v298 = 0;
      v99 = objc_msgSend_asString_outError_(v56, v14, v180, &v298, v17);
      v88 = v298;
      v103 = objc_msgSend_caseInsensitiveCompare_(v99, v181, self->_string, v182, v183);
      goto LABEL_103;
    case 0xA:
      if ((v10 != 7) | v18 & 1)
      {
        goto LABEL_198;
      }

      v110 = self->_evaluationContext;
      v297 = 0;
      v111 = objc_msgSend_asString_outError_(v56, v14, v110, &v297, v17);
      v88 = v297;
      v115 = objc_msgSend_caseInsensitiveCompare_(v111, v112, self->_string, v113, v114);
      goto LABEL_171;
    case 0xB:
      if ((v10 != 7) | v18 & 1)
      {
        goto LABEL_198;
      }

      v116 = self->_evaluationContext;
      v296 = 0;
      v117 = objc_msgSend_asString_outError_(v56, v14, v116, &v296, v17);
      v88 = v296;
      v121 = objc_msgSend_caseInsensitiveCompare_(v117, v118, self->_string, v119, v120);
      goto LABEL_192;
    case 0xC:
      if ((v10 != 3) | v18 & 1)
      {
        goto LABEL_198;
      }

      v174 = self->_evaluationContext;
      v295 = 0;
      v127 = objc_msgSend_asDate_outError_(v56, v14, v174, &v295, v17);
      v88 = v295;
      v130 = objc_msgSend_compare_(v127, v175, self->_date, v176, v177);
      goto LABEL_92;
    case 0xD:
      if ((v10 != 3) | v18 & 1)
      {
        goto LABEL_180;
      }

      v104 = self->_evaluationContext;
      v294 = 0;
      v105 = objc_msgSend_asDate_outError_(v56, v14, v104, &v294, v17);
      v88 = v294;
      v109 = objc_msgSend_compare_(v105, v106, self->_date, v107, v108);
      goto LABEL_141;
    case 0xE:
      if (v10 != 3)
      {
        goto LABEL_77;
      }

      if (v18)
      {
        goto LABEL_198;
      }

      v141 = self->_evaluationContext;
      v293 = 0;
      v94 = objc_msgSend_asDate_outError_(v56, v14, v141, &v293, v17);
      v88 = v293;
      v97 = objc_msgSend_compare_(v94, v142, self->_date, v143, v144);
      goto LABEL_67;
    case 0xF:
      if (v10 != 3)
      {
        goto LABEL_77;
      }

      if (v18)
      {
        goto LABEL_198;
      }

      v98 = self->_evaluationContext;
      v292 = 0;
      v99 = objc_msgSend_asDate_outError_(v56, v14, v98, &v292, v17);
      v88 = v292;
      v103 = objc_msgSend_compare_(v99, v100, self->_date, v101, v102);
      goto LABEL_103;
    case 0x10:
      if (v10 != 3)
      {
LABEL_77:
        if (v10 != 5)
        {
          goto LABEL_198;
        }

        if (v57)
        {
          LOBYTE(v10) = 4;
        }

        else
        {
          LOBYTE(v10) = 5;
        }

        v159 = 3;
        goto LABEL_165;
      }

      if (v18)
      {
        goto LABEL_198;
      }

      v242 = self->_evaluationContext;
      v291 = 0;
      v111 = objc_msgSend_asDate_outError_(v56, v14, v242, &v291, v17);
      v88 = v291;
      v115 = objc_msgSend_compare_(v111, v243, self->_date, v244, v245);
LABEL_171:
      v246 = v115;

      v146 = v246 == -1;
LABEL_172:
      LOBYTE(v18) = v146;
      if (!v88)
      {
        goto LABEL_199;
      }

      goto LABEL_197;
    case 0x11:
      if (v10 != 3)
      {
        if (v10 == 5)
        {
          if (v57)
          {
            v179 = 4;
          }

          else
          {
            v179 = 3;
          }

          objc_msgSend_reportComparisonWarningInContext_leftType_rightType_(TSCEWarning, v14, self->_evaluationContext, v179, 5);
        }

        goto LABEL_198;
      }

      if (v18)
      {
        goto LABEL_198;
      }

      v247 = self->_evaluationContext;
      v290 = 0;
      v117 = objc_msgSend_asDate_outError_(v56, v14, v247, &v290, v17);
      v88 = v290;
      v121 = objc_msgSend_compare_(v117, v248, self->_date, v249, v250);
      goto LABEL_192;
    case 0x12:
      if ((v10 != 2) | v18 & 1)
      {
        goto LABEL_198;
      }

      v194 = self->_evaluationContext;
      v289 = 0;
      v195 = objc_msgSend_asBoolean_outError_(v56, v14, v194, &v289, v17);
      v18 = v289;
      value = self->_value;
      v197 = self->_evaluationContext;
      v288 = v18;
      v200 = objc_msgSend_asBoolean_outError_(value, v198, v197, &v288, v199);
      v88 = v288;

      LOBYTE(v18) = v195 ^ v200 ^ 1;
      if (!v88)
      {
        goto LABEL_199;
      }

      goto LABEL_197;
    case 0x13:
      if ((v10 != 2) | v18 & 1)
      {
        goto LABEL_180;
      }

      v160 = self->_evaluationContext;
      v287 = 0;
      v161 = objc_msgSend_asBoolean_outError_(v56, v14, v160, &v287, v17);
      v18 = v287;
      v162 = self->_value;
      v163 = self->_evaluationContext;
      v286 = v18;
      v166 = objc_msgSend_asBoolean_outError_(v162, v164, v163, &v286, v165);
      v88 = v286;

      LOBYTE(v18) = v161 ^ v166;
      if (!v88)
      {
        goto LABEL_199;
      }

      goto LABEL_197;
    case 0x14:
      if ((v10 != 2) | v18 & 1)
      {
        goto LABEL_198;
      }

      v167 = self->_evaluationContext;
      v285 = 0;
      v168 = objc_msgSend_asBoolean_outError_(v56, v14, v167, &v285, v17);
      v18 = v285;
      v169 = self->_value;
      v170 = self->_evaluationContext;
      v284 = v18;
      v173 = objc_msgSend_asBoolean_outError_(v169, v171, v170, &v284, v172);
      v88 = v284;

      LOBYTE(v18) = v168 & (v173 ^ 1);
      if (!v88)
      {
        goto LABEL_199;
      }

      goto LABEL_197;
    case 0x15:
      if ((v10 != 2) | v18 & 1)
      {
        goto LABEL_198;
      }

      v187 = self->_evaluationContext;
      v283 = 0;
      v188 = objc_msgSend_asBoolean_outError_(v56, v14, v187, &v283, v17);
      v18 = v283;
      v189 = self->_value;
      v190 = self->_evaluationContext;
      v282 = v18;
      v193 = objc_msgSend_asBoolean_outError_(v189, v191, v190, &v282, v192);
      v88 = v282;

      LOBYTE(v18) = v188 | v193 ^ 1;
      if (!v88)
      {
        goto LABEL_199;
      }

      goto LABEL_197;
    case 0x16:
      if ((v10 != 2) | v18 & 1)
      {
        goto LABEL_198;
      }

      v201 = self->_evaluationContext;
      v281 = 0;
      v202 = objc_msgSend_asBoolean_outError_(v56, v14, v201, &v281, v17);
      v18 = v281;
      v203 = self->_value;
      v204 = self->_evaluationContext;
      v280 = v18;
      v207 = objc_msgSend_asBoolean_outError_(v203, v205, v204, &v280, v206);
      v88 = v280;

      LOBYTE(v18) = v207 & (v202 ^ 1);
      if (!v88)
      {
        goto LABEL_199;
      }

      goto LABEL_197;
    case 0x17:
      if ((v10 != 2) | v18 & 1)
      {
        goto LABEL_198;
      }

      v131 = self->_evaluationContext;
      v279 = 0;
      v132 = objc_msgSend_asBoolean_outError_(v56, v14, v131, &v279, v17);
      v18 = v279;
      v133 = self->_value;
      v134 = self->_evaluationContext;
      v278 = v18;
      v137 = objc_msgSend_asBoolean_outError_(v133, v135, v134, &v278, v136);
      v88 = v278;

      LOBYTE(v18) = v137 | v132 ^ 1;
      if (!v88)
      {
        goto LABEL_199;
      }

      goto LABEL_197;
    case 0x18:
      if ((v10 != 5 || (v57 & 1) == 0) | v18 & 1)
      {
        goto LABEL_198;
      }

      v126 = self->_evaluationContext;
      v277 = 0;
      v127 = objc_msgSend_asNumber_outError_(v56, v14, v126, &v277, v17);
      v88 = v277;
      v130 = objc_msgSend_compare_outError_(v127, v128, self->_value, a4, v129);
LABEL_92:
      v178 = v130;

      v146 = v178 == 0;
      goto LABEL_172;
    case 0x19:
      if ((v10 != 5 || (v57 & 1) == 0) | v18 & 1)
      {
        goto LABEL_180;
      }

      v216 = self->_evaluationContext;
      v276 = 0;
      v105 = objc_msgSend_asNumber_outError_(v56, v14, v216, &v276, v17);
      v88 = v276;
      v109 = objc_msgSend_compare_outError_(v105, v217, self->_value, a4, v218);
LABEL_141:
      v219 = v109;

      LOBYTE(v18) = v219 != 0;
      if (!v88)
      {
        goto LABEL_199;
      }

      goto LABEL_197;
    case 0x1A:
      if (v10 == 5)
      {
        v92 = v57;
      }

      else
      {
        v92 = 1;
      }

      if ((v92 & 1) == 0)
      {
        goto LABEL_166;
      }

      if (v10 == 3)
      {
        goto LABEL_143;
      }

      if (v10 != 5 || v18 & 1 | ((v57 & 1) == 0))
      {
        goto LABEL_198;
      }

      v93 = self->_evaluationContext;
      v275 = 0;
      v94 = objc_msgSend_asNumber_outError_(v56, v14, v93, &v275, v17);
      v88 = v275;
      v97 = objc_msgSend_compare_outError_(v94, v95, self->_value, a4, v96);
LABEL_67:
      v145 = v97;

      v146 = v145 == 1;
      goto LABEL_172;
    case 0x1B:
      if (v10 == 5)
      {
        v208 = v57;
      }

      else
      {
        v208 = 1;
      }

      if ((v208 & 1) == 0)
      {
        goto LABEL_166;
      }

      if (v10 == 3)
      {
        goto LABEL_143;
      }

      if (v10 != 5 || v18 & 1 | ((v57 & 1) == 0))
      {
        goto LABEL_198;
      }

      v209 = self->_evaluationContext;
      v274 = 0;
      v99 = objc_msgSend_asNumber_outError_(v56, v14, v209, &v274, v17);
      v88 = v274;
      v103 = objc_msgSend_compare_outError_(v99, v210, self->_value, a4, v211);
LABEL_103:
      v184 = v103;

      v185 = v184 >= 2;
      goto LABEL_193;
    case 0x1C:
      if (v10 == 5)
      {
        v212 = v57;
      }

      else
      {
        v212 = 1;
      }

      if ((v212 & 1) == 0)
      {
        goto LABEL_166;
      }

      if (v10 == 3)
      {
        goto LABEL_143;
      }

      if (v10 != 5 || v18 & 1 | ((v57 & 1) == 0))
      {
        goto LABEL_198;
      }

      v213 = self->_evaluationContext;
      v273 = 0;
      v111 = objc_msgSend_asNumber_outError_(v56, v14, v213, &v273, v17);
      v88 = v273;
      v115 = objc_msgSend_compare_outError_(v111, v214, self->_value, a4, v215);
      goto LABEL_171;
    case 0x1D:
      if (v10 == 5)
      {
        v186 = v57;
      }

      else
      {
        v186 = 1;
      }

      if ((v186 & 1) == 0)
      {
LABEL_166:
        objc_msgSend_invalidComparisonError(TSCEError, v14, v15, v16, v17);
        *a4 = LOBYTE(v18) = 0;
        goto LABEL_199;
      }

      if (v10 != 5)
      {
        if (v10 == 3)
        {
LABEL_143:
          v159 = 4;
LABEL_165:
          objc_msgSend_reportComparisonWarningInContext_leftType_rightType_(TSCEWarning, v14, self->_evaluationContext, v159, v10);
        }

        goto LABEL_198;
      }

      if (v18 & 1 | ((v57 & 1) == 0))
      {
        goto LABEL_198;
      }

      v264 = self->_evaluationContext;
      v272 = 0;
      v117 = objc_msgSend_asNumber_outError_(v56, v14, v264, &v272, v17);
      v88 = v272;
      v121 = objc_msgSend_compare_outError_(v117, v265, self->_value, a4, v266);
LABEL_192:
      v267 = v121;

      v185 = (v267 + 1) >= 2;
LABEL_193:
      LOBYTE(v18) = !v185;
      if (v88)
      {
        goto LABEL_197;
      }

      goto LABEL_199;
    case 0x1E:
      goto LABEL_199;
    case 0x1F:
      v155 = self->_matcher;
      v154 = self->_evaluationContext;
      v271 = 0;
      v149 = objc_msgSend_asString_outError_(v56, v14, v154, &v271, v17);
      v88 = v271;
      v153 = objc_msgSend_containsMatchInString_(v155, v156, v149, v157, v158);
LABEL_73:
      LOBYTE(v18) = v153;
      goto LABEL_74;
    default:
      goto LABEL_198;
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = TSUDynamicCast();
  if (v5)
  {
    v23.receiver = self;
    v23.super_class = TSCELogicalTest;
    if ([(TSCELogicalTest *)&v23 isEqual:v5])
    {
      if (self->_operation == *(v5 + 8))
      {
        value = self->_value;
        v9 = *(v5 + 16);
        v22 = 0;
        v10 = objc_msgSend_eq_outError_(value, v6, v9, &v22, v7);
        v14 = v22;
        if (v10)
        {
          string = self->_string;
          v16 = *(v5 + 24);
          if (string == v16 || (isEqualToString = objc_msgSend_isEqualToString_(string, v11, v16, v12, v13)) != 0)
          {
            date = self->_date;
            v19 = *(v5 + 32);
            if (date == v19)
            {
              LOBYTE(isEqualToString) = 1;
            }

            else
            {
              LOBYTE(isEqualToString) = objc_msgSend_isEqual_(date, v11, v19, v12, v13);
            }
          }

          goto LABEL_12;
        }
      }

      else
      {
        v14 = 0;
      }

      LOBYTE(isEqualToString) = 0;
LABEL_12:
      v20 = (v14 == 0) & isEqualToString;

      goto LABEL_13;
    }
  }

  v20 = 0;
LABEL_13:

  return v20;
}

- (unint64_t)cost
{
  operation = self->_operation;
  if (operation > 0x20)
  {
    return 0;
  }

  else
  {
    return qword_2217E0648[operation];
  }
}

@end