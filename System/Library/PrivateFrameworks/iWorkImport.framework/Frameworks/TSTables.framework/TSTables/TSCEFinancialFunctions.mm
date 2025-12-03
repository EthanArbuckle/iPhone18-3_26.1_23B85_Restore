@interface TSCEFinancialFunctions
+ (TSUDecimal)getDurationInPeriodsWithSettlementDate:(id)date settlement:(id)settlement maturity:(id)maturity couponRate:(const TSUDecimal *)rate yield:(const TSUDecimal *)yield numCoupons:(double)coupons dayBasisMode:(int64_t)mode outError:(id *)self0;
+ (TSUDecimal)getFixedPaymentWithRate:(id)rate rate:(const TSUDecimal *)a4 nper:(const TSUDecimal *)nper pv:(const TSUDecimal *)pv fv:(const TSUDecimal *)fv dueBeginning:(BOOL)beginning outError:(id *)error;
+ (TSUDecimal)getInterestPortionOfPaymentWithRate:(id)rate rate:(const TSUDecimal *)a4 per:(const TSUDecimal *)per nper:(const TSUDecimal *)nper pv:(const TSUDecimal *)pv fv:(const TSUDecimal *)fv dueBeginning:(BOOL)beginning outError:(id *)self0;
+ (TSUDecimal)getYieldDiscWithSettlementDate:(id)date maturity:(id)maturity price:(const TSUDecimal *)price redemptionValue:(const TSUDecimal *)value dayBasisMode:(int64_t)mode outError:(id *)error;
+ (double)getCouponDaysBeforeSettlementDateWithSettlementDate:(id)date settlement:(id)settlement maturity:(id)maturity numCoupons:(double)coupons dayBasisMode:(int64_t)mode outError:(id *)error;
+ (double)getCouponDaysSinceSettlementDateWithSettlementDate:(id)date settlement:(id)settlement maturity:(id)maturity numCoupons:(double)coupons dayBasisMode:(int64_t)mode outError:(id *)error;
+ (double)getCouponDaysWithSettlementDate:(id)date settlement:(id)settlement maturity:(id)maturity numCoupons:(double)coupons dayBasisMode:(int64_t)mode outError:(id *)error;
+ (double)getNumFutureCouponsWithSettlementDate:(id)date settlement:(id)settlement maturity:(id)maturity numCoupons:(double)coupons dayBasisMode:(int64_t)mode outError:(id *)error;
+ (id)getCoupDateAfterEOMWithCoupDate:(id)date maturityDate:(id)maturityDate;
+ (id)nextCoupDateWithSettlement:(id)settlement settlement:(id)a4 maturity:(id)maturity frequency:(int)frequency outError:(id *)error;
+ (id)prevCoupDateWithSettlement:(id)settlement settlement:(id)a4 maturity:(id)maturity frequency:(int)frequency outError:(id *)error;
+ (int64_t)compareMonthAndDay:(id)day date2:(id)date2;
@end

@implementation TSCEFinancialFunctions

+ (int64_t)compareMonthAndDay:(id)day date2:(id)date2
{
  dayCopy = day;
  date2Copy = date2;
  v19 = 0;
  v20 = 0;
  v17 = 0;
  v18 = 0;
  v11 = objc_msgSend_gregorianCalendar(TSCECalendar, v7, v8, v9, v10);
  objc_msgSend_extractComponentsFromDate_year_month_day_(v11, v12, dayCopy, 0, &v20, &v19);
  objc_msgSend_extractComponentsFromDate_year_month_day_(v11, v13, date2Copy, 0, &v18, &v17);
  if (v20 <= v18)
  {
    if (v20 >= v18)
    {
      if (v19 >= v17)
      {
        v15 = 0;
      }

      else
      {
        v15 = -1;
      }

      if (v19 <= v17)
      {
        v14 = v15;
      }

      else
      {
        v14 = 1;
      }
    }

    else
    {
      v14 = -1;
    }
  }

  else
  {
    v14 = 1;
  }

  return v14;
}

+ (id)prevCoupDateWithSettlement:(id)settlement settlement:(id)a4 maturity:(id)maturity frequency:(int)frequency outError:(id *)error
{
  v11 = a4;
  maturityCopy = maturity;
  if (objc_msgSend_compare_(v11, v13, maturityCopy, v14, v15) == 1)
  {
    v20 = MEMORY[0x277D81150];
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "+[TSCEFinancialFunctions prevCoupDateWithSettlement:settlement:maturity:frequency:outError:]", v18, v19);
    v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFinancialFunctions.mm", v23, v24);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v26, v21, v25, 127, 0, "Setlement date should not be larger than maturity date");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v28, v29, v30);
    v35 = objc_msgSend_functionName(settlement, v31, v32, v33, v34);
    *error = objc_msgSend_numberErrorForFunctionName_(TSCEError, v36, v35, v37, v38);

    v39 = 0;
    goto LABEL_32;
  }

  v40 = objc_msgSend_gregorianCalendar(TSCECalendar, v16, v17, v18, v19);
  Year = objc_msgSend_extractYear_(v40, v41, v11, v42, v43);
  v99 = 0;
  v100 = 0;
  objc_msgSend_extractComponentsFromDate_year_month_day_(v40, v45, maturityCopy, 0, &v100, &v99);
  v48 = objc_msgSend_compareMonthAndDay_date2_(TSCEFinancialFunctions, v46, v11, maturityCopy, v47);
  v51 = (12 / frequency);
  v52 = v100;
  if (v48 != 1)
  {
    if (v48 != -1)
    {
      v57 = 0;
      v58 = objc_msgSend_dateWithYear_month_day_(v40, v49, Year, v100, v99);
      v59 = 0;
      v60 = 0;
LABEL_30:
      v80 = v58;

      v39 = v80;
      goto LABEL_31;
    }

    if (v100 == 2 && v99 == 29)
    {
      for (i = objc_msgSend_isLeapYear_(TSCECalendar, v49, Year, 2, 29); (i & 1) == 0; i = objc_msgSend_isLeapYear_(TSCECalendar, v49, Year, v54, v55))
      {
        ++Year;
      }
    }

    v57 = objc_msgSend_dateWithYear_month_day_(v40, v49, Year, v100, v99);
    v64 = objc_msgSend_getCoupDateAfterEOMWithCoupDate_maturityDate_(TSCEFinancialFunctions, v62, v57, maturityCopy, v63);
    v65 = -1;
    v59 = v57;
    for (j = objc_msgSend_compare_(v64, v66, v11, v67, v68); j == 1; j = objc_msgSend_compare_(v73, v74, v11, v75, v76))
    {
      v70 = sub_2214A3CE8(v57, (v51 * v65));

      v73 = objc_msgSend_getCoupDateAfterEOMWithCoupDate_maturityDate_(TSCEFinancialFunctions, v71, v70, maturityCopy, v72);

      --v65;
      v59 = v70;
      v64 = v73;
    }

LABEL_29:
    v58 = v64;
    v60 = v58;
    goto LABEL_30;
  }

  v56 = v99;
  if (v100 != 2 || v99 != 29)
  {
    v61 = objc_msgSend_dateWithYear_month_day_(v40, v49, Year + 1, v100, v99);
LABEL_26:
    v57 = v61;
    v64 = objc_msgSend_getCoupDateAfterEOMWithCoupDate_maturityDate_(TSCEFinancialFunctions, v84, v57, maturityCopy, v85);
    v86 = -1;
    v59 = v57;
    for (k = objc_msgSend_compare_(v64, v87, v11, v88, v89); k == 1; k = objc_msgSend_compare_(v94, v95, v11, v96, v97))
    {
      v91 = sub_2214A3CE8(v57, (v51 * v86));

      v94 = objc_msgSend_getCoupDateAfterEOMWithCoupDate_maturityDate_(TSCEFinancialFunctions, v92, v91, maturityCopy, v93);

      --v86;
      v59 = v91;
      v64 = v94;
    }

    goto LABEL_29;
  }

  if (Year != 0x7FFFFFFFFFFFFFFFLL)
  {
    v77 = Year + 1;
    v78 = Year - 0x7FFFFFFFFFFFFFFFLL;
    while ((objc_msgSend_isLeapYear_(TSCECalendar, v49, v77, v52, v56) & 1) == 0)
    {
      ++v77;
      if (__CFADD__(v78++, 1))
      {
        goto LABEL_24;
      }
    }

    v61 = objc_msgSend_dateWithYear_month_day_(v40, v49, v77, v100, v99);
    goto LABEL_26;
  }

LABEL_24:
  v80 = objc_msgSend_functionName(settlement, v49, v50, v52, v56);
  objc_msgSend_numberErrorForFunctionName_(TSCEError, v81, v80, v82, v83);
  *error = v39 = 0;
LABEL_31:

LABEL_32:

  return v39;
}

+ (id)nextCoupDateWithSettlement:(id)settlement settlement:(id)a4 maturity:(id)maturity frequency:(int)frequency outError:(id *)error
{
  v11 = a4;
  maturityCopy = maturity;
  if (objc_msgSend_compare_(v11, v13, maturityCopy, v14, v15) == 1)
  {
    v20 = MEMORY[0x277D81150];
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "+[TSCEFinancialFunctions nextCoupDateWithSettlement:settlement:maturity:frequency:outError:]", v18, v19);
    v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFinancialFunctions.mm", v23, v24);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v26, v21, v25, 207, 0, "Setlement date should not be larger than maturity date");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v28, v29, v30);
    v35 = objc_msgSend_functionName(settlement, v31, v32, v33, v34);
    *error = objc_msgSend_numberErrorForFunctionName_(TSCEError, v36, v35, v37, v38);

    v39 = 0;
    goto LABEL_33;
  }

  v40 = objc_msgSend_gregorianCalendar(TSCECalendar, v16, v17, v18, v19);
  Year = objc_msgSend_extractYear_(v40, v41, v11, v42, v43);
  v109 = 0;
  v110 = 0;
  objc_msgSend_extractComponentsFromDate_year_month_day_(v40, v45, maturityCopy, 0, &v110, &v109);
  v48 = objc_msgSend_compareMonthAndDay_date2_(TSCEFinancialFunctions, v46, v11, maturityCopy, v47);
  v51 = (12 / frequency);
  v52 = v110;
  if (v48 == 1)
  {
    if (v110 == 2 && v109 == 29)
    {
      for (i = objc_msgSend_isLeapYear_(TSCECalendar, v49, Year, 2, 29); (i & 1) == 0; i = objc_msgSend_isLeapYear_(TSCECalendar, v49, Year, v60, v61))
      {
        --Year;
      }
    }

    v67 = objc_msgSend_dateWithYear_month_day_(v40, v49, Year, v110, v109);
    v70 = objc_msgSend_getCoupDateAfterEOMWithCoupDate_maturityDate_(TSCEFinancialFunctions, v68, v67, maturityCopy, v69);
    v71 = 1;
    v63 = v67;
    for (j = objc_msgSend_compare_(v70, v72, v11, v73, v74); j == -1 || !objc_msgSend_compare_(v70, v76, v11, v77, v78); j = objc_msgSend_compare_(v82, v83, v11, v84, v85))
    {
      v79 = sub_2214A3CE8(v67, (v51 * v71));

      v82 = objc_msgSend_getCoupDateAfterEOMWithCoupDate_maturityDate_(TSCEFinancialFunctions, v80, v79, maturityCopy, v81);

      ++v71;
      v63 = v79;
      v70 = v82;
    }

LABEL_30:
    v64 = v70;
    v62 = v67;
    v65 = v64;
    goto LABEL_31;
  }

  if (v48 == -1)
  {
    v53 = v109;
    if (v110 == 2 && v109 == 29)
    {
      if (Year == 0x8000000000000000)
      {
        v54 = objc_msgSend_functionName(settlement, v49, v50, 2, 29);
        v58 = objc_msgSend_numberErrorForFunctionName_(TSCEError, v55, v54, v56, v57);
LABEL_24:
        v39 = 0;
        *error = v58;
        goto LABEL_32;
      }

      v86 = Year - 1;
      while ((objc_msgSend_isLeapYear_(TSCECalendar, v49, v86, v52, v53) & 1) == 0)
      {
        if (--v86 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v54 = objc_msgSend_functionName(settlement, v49, v87, v52, v53);
          v58 = objc_msgSend_numberErrorForFunctionName_(TSCEError, v88, v54, v89, v90);
          goto LABEL_24;
        }
      }

      v66 = objc_msgSend_dateWithYear_month_day_(v40, v49, v86, v110, v109);
    }

    else
    {
      v66 = objc_msgSend_dateWithYear_month_day_(v40, v49, Year - 1, v110, v109);
    }

    v67 = v66;
    v70 = objc_msgSend_getCoupDateAfterEOMWithCoupDate_maturityDate_(TSCEFinancialFunctions, v91, v67, maturityCopy, v92);
    v93 = 1;
    v63 = v67;
    for (k = objc_msgSend_compare_(v70, v94, v11, v95, v96); k == -1 || !objc_msgSend_compare_(v70, v98, v11, v99, v100); k = objc_msgSend_compare_(v104, v105, v11, v106, v107))
    {
      v101 = sub_2214A3CE8(v67, (v51 * v93));

      v104 = objc_msgSend_getCoupDateAfterEOMWithCoupDate_maturityDate_(TSCEFinancialFunctions, v102, v101, maturityCopy, v103);

      ++v93;
      v63 = v101;
      v70 = v104;
    }

    goto LABEL_30;
  }

  v62 = objc_msgSend_dateWithYear_month_day_(v40, v49, Year, v110, v109);
  v63 = 0;
  v64 = sub_2214A3CE8(v62, 12 / frequency);
  v65 = 0;
LABEL_31:
  v54 = v64;

  v39 = v54;
LABEL_32:

LABEL_33:

  return v39;
}

+ (id)getCoupDateAfterEOMWithCoupDate:(id)date maturityDate:(id)maturityDate
{
  dateCopy = date;
  maturityDateCopy = maturityDate;
  v11 = objc_msgSend_gregorianCalendar(TSCECalendar, v7, v8, v9, v10);
  if (objc_msgSend_extractDay_(v11, v12, dateCopy, v13, v14) <= 27)
  {
    goto LABEL_10;
  }

  v33 = 0;
  v34 = 0;
  v32 = 0;
  objc_msgSend_extractComponentsFromDate_year_month_day_(v11, v15, maturityDateCopy, &v34, &v33, &v32);
  isLeapYear = objc_msgSend_isLeapYear_(TSCECalendar, v16, v34, v17, v18);
  if (v33 > 0xC)
  {
    goto LABEL_18;
  }

  if (((1 << v33) & 0x15AA) != 0)
  {
    if (v32 == 31)
    {
      goto LABEL_5;
    }

LABEL_10:
    v27 = dateCopy;
    goto LABEL_15;
  }

  if (((1 << v33) & 0xA50) != 0)
  {
    if (v32 != 30)
    {
      goto LABEL_10;
    }
  }

  else
  {
LABEL_18:
    if (isLeapYear)
    {
      if (v32 != 29)
      {
        goto LABEL_10;
      }
    }

    else if (v32 != 28)
    {
      goto LABEL_10;
    }
  }

LABEL_5:
  v30 = 0;
  v31 = 0;
  objc_msgSend_extractComponentsFromDate_year_month_day_(v11, v20, dateCopy, &v31, &v30, 0);
  v24 = objc_msgSend_isLeapYear_(TSCECalendar, v21, v31, v22, v23);
  v26 = v30 - 1;
  if (v30 - 1) < 0xC && ((0xFFDu >> v26))
  {
    objc_msgSend_dateWithYear_month_day_(v11, v25, v31, v30, qword_2217E1450[v26]);
  }

  else if (v24)
  {
    objc_msgSend_dateWithYear_month_day_(v11, v25, v31, v30, 29);
  }

  else
  {
    objc_msgSend_dateWithYear_month_day_(v11, v25, v31, v30, 28);
  }
  v27 = ;
LABEL_15:
  v28 = v27;

  return v28;
}

+ (double)getCouponDaysBeforeSettlementDateWithSettlementDate:(id)date settlement:(id)settlement maturity:(id)maturity numCoupons:(double)coupons dayBasisMode:(int64_t)mode outError:(id *)error
{
  settlementCopy = settlement;
  v15 = objc_msgSend_prevCoupDateWithSettlement_settlement_maturity_frequency_outError_(TSCEFinancialFunctions, v14, date, settlementCopy, maturity, coupons, error);
  v16 = v15;
  v17 = 0.0;
  if (!*error)
  {
    v17 = sub_2214A452C(v15, settlementCopy, mode, error);
  }

  return v17;
}

+ (double)getCouponDaysWithSettlementDate:(id)date settlement:(id)settlement maturity:(id)maturity numCoupons:(double)coupons dayBasisMode:(int64_t)mode outError:(id *)error
{
  settlementCopy = settlement;
  maturityCopy = maturity;
  if (mode <= 2)
  {
    if (mode && mode != 2)
    {
      goto LABEL_4;
    }

    goto LABEL_10;
  }

  if (mode == 3)
  {
    v21 = 365.0;
    goto LABEL_12;
  }

  if (mode == 4)
  {
LABEL_10:
    v21 = 360.0;
LABEL_12:
    v20 = v21 / coupons;
    goto LABEL_13;
  }

LABEL_4:
  v17 = objc_msgSend_prevCoupDateWithSettlement_settlement_maturity_frequency_outError_(TSCEFinancialFunctions, v14, date, settlementCopy, maturityCopy, coupons, error);
  if (!*error)
  {
    v18 = objc_msgSend_nextCoupDateWithSettlement_settlement_maturity_frequency_outError_(TSCEFinancialFunctions, v16, date, settlementCopy, maturityCopy, coupons, error);
    v19 = v18;
    if (!*error)
    {
      v20 = sub_2214A452C(v17, v18, mode, error);

      goto LABEL_13;
    }
  }

  v20 = 0.0;
LABEL_13:

  return v20;
}

+ (double)getCouponDaysSinceSettlementDateWithSettlementDate:(id)date settlement:(id)settlement maturity:(id)maturity numCoupons:(double)coupons dayBasisMode:(int64_t)mode outError:(id *)error
{
  settlementCopy = settlement;
  v15 = objc_msgSend_nextCoupDateWithSettlement_settlement_maturity_frequency_outError_(TSCEFinancialFunctions, v14, date, settlementCopy, maturity, coupons, error);
  v16 = 0.0;
  if (!*error)
  {
    v16 = sub_2214A452C(settlementCopy, v15, mode, error);
  }

  return v16;
}

+ (double)getNumFutureCouponsWithSettlementDate:(id)date settlement:(id)settlement maturity:(id)maturity numCoupons:(double)coupons dayBasisMode:(int64_t)mode outError:(id *)error
{
  settlementCopy = settlement;
  maturityCopy = maturity;
  v18 = objc_msgSend_gregorianCalendar(TSCECalendar, v14, v15, v16, v17);
  v19 = objc_alloc_init(MEMORY[0x277CBEAB8]);
  objc_msgSend_setMonth_(v19, v20, (12.0 / coupons), v21, v22);
  Year = objc_msgSend_extractYear_(v18, v23, settlementCopy, v24, v25);
  v31 = objc_msgSend_extractYear_(v18, v26, maturityCopy, v27, v28);
  couponsCopy = coupons;
  if (Year == v31)
  {
    v35 = objc_msgSend_nextCoupDateWithSettlement_settlement_maturity_frequency_outError_(TSCEFinancialFunctions, v30, date, settlementCopy, maturityCopy, couponsCopy, error);
    if (!*error)
    {
      v36 = objc_msgSend_getCoupDateAfterEOMWithCoupDate_maturityDate_(TSCEFinancialFunctions, v33, v35, maturityCopy, v34);
      v37 = v35;
      v38 = 0.0;
      v39 = 12;
      v40 = v37;
      for (i = objc_msgSend_compare_(v36, v41, maturityCopy, v42, v43); i != 1; i = objc_msgSend_compare_(v52, v53, maturityCopy, v54, v55))
      {
        objc_msgSend_setMonth_(v19, v45, (v39 / coupons), v46, v47);
        v49 = objc_msgSend_dateByAddingComponents_toDate_options_(v18, v48, v19, v37, 0);

        v52 = objc_msgSend_getCoupDateAfterEOMWithCoupDate_maturityDate_(TSCEFinancialFunctions, v50, v49, maturityCopy, v51);
        v38 = v38 + 1.0;

        v39 += 12;
        v40 = v49;
        v36 = v52;
      }

LABEL_18:

      v35 = v40;
      goto LABEL_19;
    }
  }

  else
  {
    v35 = objc_msgSend_nextCoupDateWithSettlement_settlement_maturity_frequency_outError_(TSCEFinancialFunctions, v30, date, settlementCopy, maturityCopy, couponsCopy, error);
    if (!*error)
    {
      v36 = objc_msgSend_getCoupDateAfterEOMWithCoupDate_maturityDate_(TSCEFinancialFunctions, v56, v35, maturityCopy, v57);
      v58 = v35;
      v59 = 0.0;
      v60 = 12;
      v40 = v58;
      v96 = settlementCopy;
      for (j = objc_msgSend_extractYear_(v18, v61, v36, v62, v63); j == Year; j = objc_msgSend_extractYear_(v18, v73, v72, v74, v75))
      {
        objc_msgSend_setMonth_(v19, v65, (v60 / coupons), v66, v67);
        v69 = objc_msgSend_dateByAddingComponents_toDate_options_(v18, v68, v19, v58, 0);

        v72 = objc_msgSend_getCoupDateAfterEOMWithCoupDate_maturityDate_(TSCEFinancialFunctions, v70, v69, maturityCopy, v71);
        v59 = v59 + 1.0;

        v60 += 12;
        v40 = v69;
        v36 = v72;
      }

      v76 = v31 - Year + -1.0;
      if (v76 <= 0.0)
      {
        v38 = v59;
      }

      else
      {
        v38 = v59 + coupons * v76;
      }

      v77 = maturityCopy;

      v37 = v77;
      v78 = -12;
      v79 = v37;
      for (k = objc_msgSend_extractYear_(v18, v80, v37, v81, v82); k == v31; k = objc_msgSend_extractYear_(v18, v92, v91, v93, v94))
      {
        objc_msgSend_setMonth_(v19, v84, (v78 / coupons), v85, v86);
        v88 = objc_msgSend_dateByAddingComponents_toDate_options_(v18, v87, v19, v37, 0);
        v91 = objc_msgSend_getCoupDateAfterEOMWithCoupDate_maturityDate_(TSCEFinancialFunctions, v89, v88, v37, v90);
        v38 = v38 + 1.0;

        v78 -= 12;
        v79 = v91;
      }

      settlementCopy = v96;
      goto LABEL_18;
    }
  }

  v37 = 0;
  v38 = 0.0;
LABEL_19:

  return v38;
}

+ (TSUDecimal)getYieldDiscWithSettlementDate:(id)date maturity:(id)maturity price:(const TSUDecimal *)price redemptionValue:(const TSUDecimal *)value dayBasisMode:(int64_t)mode outError:(id *)error
{
  dateCopy = date;
  maturityCopy = maturity;
  sub_2214A45C0(dateCopy, maturityCopy, mode, error);
  TSUDecimal::operator=();
  sub_2214A452C(dateCopy, maturityCopy, mode, error);
  TSUDecimal::operator=();
  v16 = *value;
  TSUDecimal::operator-=();
  TSUDecimal::operator/=();
  TSUDecimal::operator*=();
  TSUDecimal::operator/=();

  v15 = v16._decimal.w[1];
  v14 = v16._decimal.w[0];
  result._decimal.w[1] = v15;
  result._decimal.w[0] = v14;
  return result;
}

+ (TSUDecimal)getFixedPaymentWithRate:(id)rate rate:(const TSUDecimal *)a4 nper:(const TSUDecimal *)nper pv:(const TSUDecimal *)pv fv:(const TSUDecimal *)fv dueBeginning:(BOOL)beginning outError:(id *)error
{
  beginningCopy = beginning;
  TSUDecimal::operator=();
  TSUDecimal::operator=();
  if (!TSUDecimal::operator==())
  {
    TSUDecimal::operator=();
    TSUDecimal::operator=();
    TSUDecimal::operator=();
    v40 = *a4;
    TSUDecimal::operator+=();
    TSUDecimal::doubleValue(&v40);
    v15 = v14;
    TSUDecimal::doubleValue(nper);
    pow(v15, v16);
    TSUDecimal::operator=();
    if (TSUDecimal::isInf(&v35))
    {
      v21 = objc_msgSend_functionName(rate, v17, v18, v19, v20);
      *error = objc_msgSend_numberErrorForFunctionName_(TSCEError, v22, v21, v23, v24);
    }

    else
    {
      v40._decimal.w[0] = TSUDecimal::operator-();
      v40._decimal.w[1] = v25;
      TSUDecimal::operator*=();
      TSUDecimal::operator-=();
      TSUDecimal::operator*=();
      v37 = v40;
      TSUDecimal::operator=();
      if (beginningCopy)
      {
        v40 = v34;
        TSUDecimal::operator+=();
        v26 = v40._decimal.w[0];
        v27 = v40._decimal.w[1];
        TSUDecimal::operator=();
        v40 = v35;
        TSUDecimal::operator-=();
        v40._decimal.w[0] = v26;
        v40._decimal.w[1] = v27;
        TSUDecimal::operator*=();
      }

      else
      {
        v40 = v35;
        TSUDecimal::operator-=();
      }

      v36 = v40;
      if (!TSUDecimal::isZero(&v36))
      {
        v40 = v37;
        goto LABEL_3;
      }

      *error = objc_msgSend_divideByZeroError(TSCEError, v28, v29, v30, v31);
    }

    TSUDecimal::operator=();
    goto LABEL_12;
  }

  v40._decimal.w[0] = TSUDecimal::operator-();
  v40._decimal.w[1] = v13;
  TSUDecimal::operator-=();
LABEL_3:
  TSUDecimal::operator/=();
  v38 = v40;
  v39 = v40;
LABEL_12:
  v33 = v39._decimal.w[1];
  v32 = v39._decimal.w[0];
  result._decimal.w[1] = v33;
  result._decimal.w[0] = v32;
  return result;
}

+ (TSUDecimal)getInterestPortionOfPaymentWithRate:(id)rate rate:(const TSUDecimal *)a4 per:(const TSUDecimal *)per nper:(const TSUDecimal *)nper pv:(const TSUDecimal *)pv fv:(const TSUDecimal *)fv dueBeginning:(BOOL)beginning outError:(id *)self0
{
  TSUDecimal::operator=();
  TSUDecimal::operator=();
  if (!TSUDecimal::operator==())
  {
    TSUDecimal::operator=();
    v79 = v74;
    TSUDecimal::operator+=();
    TSUDecimal::doubleValue(&v79);
    v17 = v16;
    TSUDecimal::doubleValue(nper);
    pow(v17, v18);
    TSUDecimal::operator=();
    if (TSUDecimal::isInf(&v75))
    {
      v23 = objc_msgSend_functionName(rate, v19, v20, v21, v22);
      v27 = objc_msgSend_numberErrorForFunctionName_(TSCEError, v24, v23, v25, v26);
    }

    else
    {
      TSUDecimal::operator=();
      v79 = v72;
      TSUDecimal::operator+=();
      v73 = v79;
      TSUDecimal::operator=();
      v79 = *per;
      TSUDecimal::operator-=();
      TSUDecimal::doubleValue(&v73);
      v29 = v28;
      TSUDecimal::doubleValue(&v79);
      pow(v29, v30);
      TSUDecimal::operator=();
      if (!TSUDecimal::isInf(&v74))
      {
        if (beginning)
        {
          TSUDecimal::operator=();
          if (TSUDecimal::operator<())
          {
            goto LABEL_8;
          }

          TSUDecimal::operator=();
          v79 = v71;
          TSUDecimal::operator+=();
          v72 = v79;
          TSUDecimal::operator=();
          v79 = *nper;
          TSUDecimal::operator-=();
          TSUDecimal::doubleValue(&v72);
          v41 = v40;
          TSUDecimal::doubleValue(&v79);
          pow(v41, v42);
          TSUDecimal::operator=();
          if (TSUDecimal::isInf(&v73))
          {
            v23 = objc_msgSend_functionName(rate, v43, v44, v45, v46);
            v27 = objc_msgSend_numberErrorForFunctionName_(TSCEError, v47, v23, v48, v49);
            goto LABEL_7;
          }

          TSUDecimal::operator=();
          v79 = v70;
          TSUDecimal::operator+=();
          v71 = v79;
          TSUDecimal::operator=();
          v79 = *per;
          TSUDecimal::operator-=();
          v72._decimal.w[0] = sub_2212B2BA4(&v71, &v79);
          v72._decimal.w[1] = v53;
          if (TSUDecimal::isInf(&v72))
          {
            v23 = objc_msgSend_functionName(rate, v54, v55, v56, v57);
            v27 = objc_msgSend_numberErrorForFunctionName_(TSCEError, v58, v23, v59, v60);
            goto LABEL_7;
          }

          v79 = v73;
          TSUDecimal::operator-=();
          v61 = v79._decimal.w[0];
          v62 = v79._decimal.w[1];
          TSUDecimal::operator=();
          v79 = v75;
          TSUDecimal::operator-=();
          v79._decimal.w[0] = v61;
          v79._decimal.w[1] = v62;
          TSUDecimal::operator/=();
          v71 = v79;
          TSUDecimal::operator=();
          v79 = v74;
          TSUDecimal::operator-=();
          v63 = v79._decimal.w[0];
          v64 = v79._decimal.w[1];
          TSUDecimal::operator=();
          v79 = v75;
          TSUDecimal::operator-=();
          v79._decimal.w[0] = v63;
          v79._decimal.w[1] = v64;
          TSUDecimal::operator/=();
          v65 = v79._decimal.w[0];
          v66 = v79._decimal.w[1];
          TSUDecimal::operator=();
          v79 = v69;
          TSUDecimal::operator+=();
          v79._decimal.w[0] = v65;
          v79._decimal.w[1] = v66;
          TSUDecimal::operator/=();
          v79 = *pv;
          TSUDecimal::operator*=();
          v67 = v79._decimal.w[0];
          v68 = v79._decimal.w[1];
          v79 = *fv;
          TSUDecimal::operator*=();
          v79._decimal.w[0] = v67;
          v79._decimal.w[1] = v68;
          TSUDecimal::operator-=();
          v79 = *a4;
        }

        else
        {
          TSUDecimal::operator=();
          v79 = v74;
          TSUDecimal::operator-=();
          v50 = v79._decimal.w[0];
          v51 = v79._decimal.w[1];
          TSUDecimal::operator=();
          v79 = v75;
          TSUDecimal::operator-=();
          v71 = v79;
          v79._decimal.w[0] = v50;
          v79._decimal.w[1] = v51;
          TSUDecimal::operator/=();
          v73 = v79;
          v79 = *pv;
          TSUDecimal::operator+=();
          TSUDecimal::operator*=();
          v71 = v79;
          v79 = *pv;
          TSUDecimal::operator-=();
          v72 = v79;
          v79 = *a4;
        }

        TSUDecimal::operator*=();
        v76 = v79;
        v77 = TSUDecimal::operator-();
        v78 = v52;
        goto LABEL_9;
      }

      v23 = objc_msgSend_functionName(rate, v31, v32, v33, v34);
      v27 = objc_msgSend_numberErrorForFunctionName_(TSCEError, v35, v23, v36, v37);
    }

LABEL_7:
    *error = v27;

LABEL_8:
    TSUDecimal::operator=();
    goto LABEL_9;
  }

  TSUDecimal::operator=();
LABEL_9:
  v38 = v77;
  v39 = v78;
  result._decimal.w[1] = v39;
  result._decimal.w[0] = v38;
  return result;
}

+ (TSUDecimal)getDurationInPeriodsWithSettlementDate:(id)date settlement:(id)settlement maturity:(id)maturity couponRate:(const TSUDecimal *)rate yield:(const TSUDecimal *)yield numCoupons:(double)coupons dayBasisMode:(int64_t)mode outError:(id *)self0
{
  settlementCopy = settlement;
  maturityCopy = maturity;
  objc_msgSend_getCouponDaysWithSettlementDate_settlement_maturity_numCoupons_dayBasisMode_outError_(TSCEFinancialFunctions, v18, date, settlementCopy, maturityCopy, mode, error, coupons);
  TSUDecimal::operator=();
  if (*error || (objc_msgSend_getCouponDaysBeforeSettlementDateWithSettlementDate_settlement_maturity_numCoupons_dayBasisMode_outError_(TSCEFinancialFunctions, v19, date, settlementCopy, maturityCopy, mode, error, coupons), TSUDecimal::operator=(), *error) || (v46 = v44, TSUDecimal::operator-=(), objc_msgSend_getNumFutureCouponsWithSettlementDate_settlement_maturity_numCoupons_dayBasisMode_outError_(TSCEFinancialFunctions, v20, date, settlementCopy, maturityCopy, mode, error, coupons), *error))
  {
    TSUDecimal::operator=();
  }

  else
  {
    v22 = v21;
    TSUDecimal::operator=();
    TSUDecimal::operator=();
    TSUDecimal::operator=();
    TSUDecimal::operator=();
    v46 = *rate;
    TSUDecimal::operator*=();
    TSUDecimal::operator=();
    TSUDecimal::operator/=();
    v23 = v46;
    v46 = v44;
    TSUDecimal::operator/=();
    v41 = v44;
    if (v22 <= 0.0)
    {
LABEL_10:
      TSUDecimal::operator=();
      TSUDecimal::operator-=();
      TSUDecimal::operator=();
      v46 = v41;
      TSUDecimal::operator*=();
      TSUDecimal::operator/=();
      v40 = v46;
      TSUDecimal::operator+=();
      TSUDecimal::operator=();
      v46 = v39;
      TSUDecimal::operator/=();
      v40 = v46;
      TSUDecimal::operator+=();
      v46 = v43;
      TSUDecimal::operator/=();
      v45 = v46;
    }

    else
    {
      v24 = 1;
      while (1)
      {
        TSUDecimal::operator=();
        TSUDecimal::operator=();
        v46 = *yield;
        TSUDecimal::operator/=();
        v46 = v39;
        TSUDecimal::operator+=();
        v40 = v46;
        TSUDecimal::doubleValue(&v40);
        v26 = v25;
        TSUDecimal::doubleValue(&v41);
        pow(v26, v27);
        TSUDecimal::operator=();
        v42 = v46;
        if (TSUDecimal::isInf(&v42))
        {
          break;
        }

        v46 = v23;
        TSUDecimal::operator*=();
        TSUDecimal::operator/=();
        v40 = v46;
        TSUDecimal::operator+=();
        v46 = v23;
        TSUDecimal::operator/=();
        v40 = v46;
        TSUDecimal::operator+=();
        TSUDecimal::operator=();
        TSUDecimal::operator+=();
        v32 = v24++;
        if (v22 <= v32)
        {
          goto LABEL_10;
        }
      }

      v33 = objc_msgSend_functionName(date, v28, v29, v30, v31);
      *error = objc_msgSend_numberErrorForFunctionName_(TSCEError, v34, v33, v35, v36);

      TSUDecimal::operator=();
    }
  }

  v38 = v45._decimal.w[1];
  v37 = v45._decimal.w[0];
  result._decimal.w[1] = v38;
  result._decimal.w[0] = v37;
  return result;
}

@end