@interface TSCECalendar
+ (BOOL)isLeapYear:(int64_t)a3;
+ (id)ISO8601Calendar;
+ (id)dateWithSerialNumber:(double)a3 dateMode:(int)a4;
+ (id)gregorianGMTCalendar;
+ (id)referenceDate1904;
+ (int64_t)isoWeekNumberForDate:(id)a3;
- (TSCECalendar)init;
- (TSCECalendar)initWithCalendarIdentifier:(id)a3 timeZone:(id)a4;
- (double)dayCountFromStartDate:(id)a3 endDate:(id)a4 basis:(int64_t)a5 outError:(id *)a6;
- (double)numDaysInYearWithStartDate:(id)a3 endDate:(id)a4 basis:(int64_t)a5 outError:(id *)a6;
- (id)clearOffTime:(id)a3;
- (id)components:(unint64_t)a3 fromDate:(id)a4;
- (id)components:(unint64_t)a3 fromDate:(id)a4 toDate:(id)a5 options:(unint64_t)a6;
- (id)dateByAddingComponents:(id)a3 toDate:(id)a4 options:(unint64_t)a5;
- (id)dateFromComponents:(id)a3;
- (id)dateWithIdenticalComponentsInGMTForDate:(id)a3;
- (id)dateWithYear:(int64_t)a3 month:(int64_t)a4 day:(int64_t)a5;
- (id)dateWithYear:(int64_t)a3 month:(int64_t)a4 day:(int64_t)a5 hour:(int64_t)a6 minute:(int64_t)a7 second:(int64_t)a8;
- (int64_t)extractDay:(id)a3;
- (int64_t)extractHour:(id)a3;
- (int64_t)extractMinute:(id)a3;
- (int64_t)extractMonth:(id)a3;
- (int64_t)extractSecond:(id)a3;
- (int64_t)extractWeekday:(id)a3;
- (int64_t)extractYear:(id)a3;
- (int64_t)weekNumberForDate:(id)a3 withType:(int)a4;
- (void)extractComponentsFromDate:(id)a3 year:(int64_t *)a4 month:(int64_t *)a5 day:(int64_t *)a6 hour:(int64_t *)a7 minute:(int64_t *)a8 second:(int64_t *)a9;
@end

@implementation TSCECalendar

- (TSCECalendar)init
{
  v3 = TSUGetGMTTimeZone();
  v6 = objc_msgSend_initWithCalendarIdentifier_timeZone_(self, v4, *MEMORY[0x277CBE5C0], v3, v5);

  return v6;
}

- (TSCECalendar)initWithCalendarIdentifier:(id)a3 timeZone:(id)a4
{
  v6 = a3;
  v7 = a4;
  v19.receiver = self;
  v19.super_class = TSCECalendar;
  v8 = [(TSCECalendar *)&v19 init];
  if (v8)
  {
    v9 = objc_alloc(MEMORY[0x277CBEA80]);
    v13 = objc_msgSend_initWithCalendarIdentifier_(v9, v10, v6, v11, v12);
    calendar = v8->_calendar;
    v8->_calendar = v13;

    objc_msgSend_setTimeZone_(v8->_calendar, v15, v7, v16, v17);
  }

  return v8;
}

+ (id)referenceDate1904
{
  v2 = qword_27CFB5648;
  if (!qword_27CFB5648)
  {
    v3 = objc_opt_class();
    objc_sync_enter(v3);
    if (!qword_27CFB5648)
    {
      v8 = objc_msgSend_gregorianCalendar(TSCECalendar, v4, v5, v6, v7);
      v10 = objc_msgSend_dateWithYear_month_day_(v8, v9, 1904, 1, 1);
      v11 = qword_27CFB5648;
      qword_27CFB5648 = v10;
    }

    objc_sync_exit(v3);

    v2 = qword_27CFB5648;
  }

  return v2;
}

- (id)dateFromComponents:(id)a3
{
  v5 = objc_msgSend_dateFromComponents_(self->_calendar, a2, a3, v3, v4);

  return v5;
}

- (id)components:(unint64_t)a3 fromDate:(id)a4
{
  v5 = objc_msgSend_components_fromDate_(self->_calendar, a2, a3, a4, v4);

  return v5;
}

- (id)dateByAddingComponents:(id)a3 toDate:(id)a4 options:(unint64_t)a5
{
  v5 = objc_msgSend_dateByAddingComponents_toDate_options_(self->_calendar, a2, a3, a4, a5);

  return v5;
}

- (id)components:(unint64_t)a3 fromDate:(id)a4 toDate:(id)a5 options:(unint64_t)a6
{
  v6 = objc_msgSend_components_fromDate_toDate_options_(self->_calendar, a2, a3, a4, a5, a6);

  return v6;
}

- (void)extractComponentsFromDate:(id)a3 year:(int64_t *)a4 month:(int64_t *)a5 day:(int64_t *)a6 hour:(int64_t *)a7 minute:(int64_t *)a8 second:(int64_t *)a9
{
  v18 = objc_autoreleasePoolPush();
  v19 = 12;
  if (!a5)
  {
    v19 = 4;
  }

  if (a6)
  {
    v19 |= 0x10uLL;
  }

  if (a7 | a8)
  {
    v19 |= 0x60uLL;
  }

  if (a9)
  {
    objc_msgSend_components_fromDate_(self, v16, v19 | 0x80, a3, v17);
  }

  else
  {
    objc_msgSend_components_fromDate_(self, v16, v19, a3, v17);
  }
  v20 = ;
  v25 = v20;
  if (a4)
  {
    *a4 = objc_msgSend_year(v20, v21, v22, v23, v24);
  }

  if (a5)
  {
    *a5 = objc_msgSend_month(v25, v21, v22, v23, v24);
  }

  if (a6)
  {
    *a6 = objc_msgSend_day(v25, v21, v22, v23, v24);
  }

  if (a7)
  {
    *a7 = objc_msgSend_hour(v25, v21, v22, v23, v24);
  }

  if (a8)
  {
    *a8 = objc_msgSend_minute(v25, v21, v22, v23, v24);
  }

  if (a9)
  {
    *a9 = objc_msgSend_second(v25, v21, v22, v23, v24);
  }

  objc_autoreleasePoolPop(v18);
}

- (int64_t)extractYear:(id)a3
{
  v4 = objc_msgSend_components_fromDate_(self, a2, 4, a3, v3);
  v9 = objc_msgSend_year(v4, v5, v6, v7, v8);

  return v9;
}

- (int64_t)extractMonth:(id)a3
{
  v4 = objc_msgSend_components_fromDate_(self, a2, 8, a3, v3);
  v9 = objc_msgSend_month(v4, v5, v6, v7, v8);

  return v9;
}

- (int64_t)extractDay:(id)a3
{
  v4 = objc_msgSend_components_fromDate_(self, a2, 16, a3, v3);
  v9 = objc_msgSend_day(v4, v5, v6, v7, v8);

  return v9;
}

- (int64_t)extractHour:(id)a3
{
  v4 = objc_msgSend_components_fromDate_(self, a2, 32, a3, v3);
  v9 = objc_msgSend_hour(v4, v5, v6, v7, v8);

  return v9;
}

- (int64_t)extractMinute:(id)a3
{
  v4 = objc_msgSend_components_fromDate_(self, a2, 64, a3, v3);
  v9 = objc_msgSend_minute(v4, v5, v6, v7, v8);

  return v9;
}

- (int64_t)extractSecond:(id)a3
{
  v4 = objc_msgSend_components_fromDate_(self, a2, 128, a3, v3);
  v9 = objc_msgSend_second(v4, v5, v6, v7, v8);

  return v9;
}

- (int64_t)extractWeekday:(id)a3
{
  v4 = objc_msgSend_components_fromDate_(self, a2, 512, a3, v3);
  v9 = objc_msgSend_weekday(v4, v5, v6, v7, v8);

  return v9;
}

- (id)clearOffTime:(id)a3
{
  v4 = a3;
  v10 = 0;
  v11 = 0;
  v9 = 0;
  objc_msgSend_extractComponentsFromDate_year_month_day_(self, v5, v4, &v11, &v10, &v9);
  v7 = objc_msgSend_dateWithYear_month_day_(self, v6, v11, v10, v9);

  return v7;
}

+ (int64_t)isoWeekNumberForDate:(id)a3
{
  v3 = a3;
  v8 = objc_msgSend_ISO8601Calendar(TSCECalendar, v4, v5, v6, v7);
  v11 = objc_msgSend_components_fromDate_(v8, v9, 0x2000, v3, v10);
  v16 = objc_msgSend_weekOfYear(v11, v12, v13, v14, v15);

  return v16;
}

- (id)dateWithYear:(int64_t)a3 month:(int64_t)a4 day:(int64_t)a5
{
  v9 = objc_alloc_init(MEMORY[0x277CBEAB8]);
  objc_msgSend_setYear_(v9, v10, a3, v11, v12);
  objc_msgSend_setMonth_(v9, v13, a4, v14, v15);
  objc_msgSend_setDay_(v9, v16, a5, v17, v18);
  v22 = objc_msgSend_dateFromComponents_(self, v19, v9, v20, v21);

  return v22;
}

- (id)dateWithYear:(int64_t)a3 month:(int64_t)a4 day:(int64_t)a5 hour:(int64_t)a6 minute:(int64_t)a7 second:(int64_t)a8
{
  v15 = objc_alloc_init(MEMORY[0x277CBEAB8]);
  objc_msgSend_setYear_(v15, v16, a3, v17, v18);
  objc_msgSend_setMonth_(v15, v19, a4, v20, v21);
  objc_msgSend_setDay_(v15, v22, a5, v23, v24);
  objc_msgSend_setHour_(v15, v25, a6, v26, v27);
  objc_msgSend_setMinute_(v15, v28, a7, v29, v30);
  objc_msgSend_setSecond_(v15, v31, a8, v32, v33);
  v37 = objc_msgSend_dateFromComponents_(self, v34, v15, v35, v36);

  return v37;
}

- (id)dateWithIdenticalComponentsInGMTForDate:(id)a3
{
  v4 = a3;
  v19 = 0;
  v17 = 0;
  v18 = 0;
  v15 = 0;
  v16 = 0;
  v14 = 0;
  objc_msgSend_extractComponentsFromDate_year_month_day_hour_minute_second_(self, v5, v4, &v19, &v18, &v17, &v16, &v15, &v14);
  v10 = objc_msgSend_gregorianGMTCalendar(TSCECalendar, v6, v7, v8, v9);
  v12 = objc_msgSend_dateWithYear_month_day_hour_minute_second_(v10, v11, v19, v18, v17, v16, v15, v14);

  return v12;
}

- (double)dayCountFromStartDate:(id)a3 endDate:(id)a4 basis:(int64_t)a5 outError:(id *)a6
{
  v10 = a3;
  v14 = a4;
  if (!a6)
  {
    v15 = MEMORY[0x277D81150];
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSCECalendar dayCountFromStartDate:endDate:basis:outError:]", v12, v13);
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCECalendar.mm", v18, v19);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v21, v16, v20, 207, 0, "Need non-nil outError for this API");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25);
  }

  v58 = 0;
  v59 = 0;
  v56 = 0;
  v57 = 0;
  v55 = 0;
  objc_msgSend_extractComponentsFromDate_year_month_day_(self, v11, v10, &v59, &v58, &v57, 0);
  objc_msgSend_extractComponentsFromDate_year_month_day_(self, v26, v14, &v56, &v55, &v54);
  if ((a5 - 1) >= 3)
  {
    if (a5)
    {
      if (a5 == 4)
      {
        v37 = v57;
        v38 = 30;
        if (v57 == 31)
        {
          v37 = 30;
        }

        if (v54 != 31)
        {
          v38 = v54;
        }

        v36 = (v55 - v58) * 30.0 + (v56 - v59) * 360.0 + v38 - v37;
      }

      else
      {
        *a6 = objc_msgSend_numberError(TSCEError, v27, v28, v29, v30);
        v36 = 0.0;
      }
    }

    else
    {
      isLeapYear = objc_msgSend_isLeapYear_(TSCECalendar, v27, v59, v29, v30);
      v43 = objc_msgSend_isLeapYear_(TSCECalendar, v40, v56, v41, v42);
      if (v58 == 2)
      {
        v44 = v57 == 28;
        if (isLeapYear)
        {
          v44 = v57 == 29;
        }
      }

      else
      {
        v44 = 0;
      }

      if (v55 == 2)
      {
        v45 = v54;
        v46 = 28;
        if (v43)
        {
          v46 = 29;
        }

        v52 = v54 == v46;
        v47 = v57;
        v48 = !v44;
        if (!v52)
        {
          v48 = 1;
        }

        if (v48)
        {
          v49 = v54;
        }

        else
        {
          v49 = 30;
          v54 = 30;
        }
      }

      else
      {
        v47 = v57;
        v49 = v54;
        v45 = v54;
      }

      v50 = v47;
      if (v47 == 31 || v44)
      {
        v50 = 30.0;
      }

      v51 = v49;
      v52 = (v47 & 0xFFFFFFFFFFFFFFFELL) == 0x1E && v45 == 31;
      if (v52)
      {
        v51 = 30.0;
      }

      v36 = (v55 - v58) * 30.0 + (v56 - v59) * 360.0 + v51 - v50;
    }
  }

  else
  {
    v31 = objc_msgSend_components_fromDate_toDate_options_(self, v27, 16, v10, v14, 0);
    v36 = objc_msgSend_day(v31, v32, v33, v34, v35);
  }

  return v36;
}

- (double)numDaysInYearWithStartDate:(id)a3 endDate:(id)a4 basis:(int64_t)a5 outError:(id *)a6
{
  v10 = a3;
  v14 = a4;
  if (!a6)
  {
    v15 = MEMORY[0x277D81150];
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSCECalendar numDaysInYearWithStartDate:endDate:basis:outError:]", v12, v13);
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCECalendar.mm", v18, v19);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v21, v16, v20, 328, 0, "Need non-nil outError for this API");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25);
  }

  if (objc_msgSend_compare_(v10, v11, v14, v12, v13) == 1)
  {
LABEL_4:
    *a6 = objc_msgSend_numberError(TSCEError, v26, v27, v28, v29);
    v30 = 0.0;
    goto LABEL_5;
  }

  v30 = 360.0;
  if (a5 <= 1)
  {
    if (!a5)
    {
      goto LABEL_5;
    }

    if (a5 != 1)
    {
      goto LABEL_4;
    }

    v32 = objc_msgSend_components_fromDate_toDate_options_(self, v26, 28, v10, v14, 0);
    v37 = objc_msgSend_year(v32, v33, v34, v35, v36);
    v42 = objc_msgSend_month(v32, v38, v39, v40, v41);
    if (objc_msgSend_day(v32, v43, v44, v45, v46))
    {
      v50 = 0;
    }

    else
    {
      v50 = v42 == 0;
    }

    v51 = v50 && v37 == 1;
    if (v51 || !v37)
    {
      Year = objc_msgSend_extractYear_(self, v47, v10, v48, v49);
      v68 = objc_msgSend_extractYear_(self, v65, v14, v66, v67);
      isLeapYear = objc_msgSend_isLeapYear_(TSCECalendar, v69, Year, v70, v71);
      v76 = objc_msgSend_isLeapYear_(TSCECalendar, v73, v68, v74, v75);
      if (isLeapYear & v76)
      {
        v30 = 366.0;
      }

      else if ((isLeapYear | v76))
      {
        if ((isLeapYear ^ 1 | v76))
        {
          v78 = objc_msgSend_dateWithYear_month_day_(self, v77, v68, 2, 29);
          v82 = objc_msgSend_compare_(v14, v79, v78, v80, v81) == -1;
        }

        else
        {
          v78 = objc_msgSend_dateWithYear_month_day_(self, v77, Year, 2, 29);
          v82 = objc_msgSend_compare_(v10, v83, v78, v84, v85) == 1;
        }

        v86 = v82;
        v30 = dbl_2217E1F30[v86];
      }

      else
      {
        v30 = 365.0;
      }
    }

    else
    {
      v52 = objc_msgSend_extractYear_(self, v47, v10, v48, v49);
      v56 = objc_msgSend_extractYear_(self, v53, v14, v54, v55);
      v60 = 0.0;
      v61 = v56 - v52;
      if (v56 >= v52)
      {
        v62 = v56 + 1;
        do
        {
          if (objc_msgSend_isLeapYear_(TSCECalendar, v57, v52, v58, v59))
          {
            v63 = 366.0;
          }

          else
          {
            v63 = 365.0;
          }

          v60 = v60 + v63;
          ++v52;
        }

        while (v62 != v52);
      }

      v30 = v60 / (v61 + 1);
    }
  }

  else if (a5 != 2 && a5 != 4)
  {
    if (a5 == 3)
    {
      v30 = 365.0;
      goto LABEL_5;
    }

    goto LABEL_4;
  }

LABEL_5:

  return v30;
}

- (int64_t)weekNumberForDate:(id)a3 withType:(int)a4
{
  v51 = 0;
  v52 = 0;
  v50 = 0;
  objc_msgSend_extractComponentsFromDate_year_month_day_(self, a2, a3, &v52, &v51, &v50);
  isLeapYear = objc_msgSend_isLeapYear_(TSCECalendar, v6, v52, v7, v8);
  if (v51 > 6)
  {
    if (v51 <= 9)
    {
      if (v51 == 7)
      {
        v13 = v50;
        v14 = isLeapYear == 0;
        v15 = 181;
      }

      else
      {
        v13 = v50;
        v14 = isLeapYear == 0;
        if (v51 == 8)
        {
          v15 = 212;
        }

        else
        {
          v15 = 243;
        }
      }

      goto LABEL_26;
    }

    switch(v51)
    {
      case 10:
        v13 = v50;
        v14 = isLeapYear == 0;
        v15 = 273;
        goto LABEL_26;
      case 11:
        v13 = v50;
        v14 = isLeapYear == 0;
        v15 = 304;
        goto LABEL_26;
      case 12:
        v13 = v50;
        v14 = isLeapYear == 0;
        v15 = 334;
        goto LABEL_26;
    }

LABEL_40:
    v39 = MEMORY[0x277D81150];
    v40 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSCECalendar weekNumberForDate:withType:]", v11, v12);
    v44 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v41, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCECalendar.mm", v42, v43);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v39, v45, v40, v44, 457, 0, "Incorrect month number in function WEEKNUM");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v46, v47, v48, v49);
    v16 = 0;
    goto LABEL_29;
  }

  if (v51 > 3)
  {
    if (v51 == 4)
    {
      v13 = v50;
      v14 = isLeapYear == 0;
      v15 = 90;
    }

    else
    {
      v13 = v50;
      v14 = isLeapYear == 0;
      if (v51 == 5)
      {
        v15 = 120;
      }

      else
      {
        v15 = 151;
      }
    }

    goto LABEL_26;
  }

  if (v51 == 1)
  {
    v16 = v50;
    goto LABEL_29;
  }

  if (v51 == 2)
  {
    v16 = v50 + 31;
    goto LABEL_29;
  }

  if (v51 != 3)
  {
    goto LABEL_40;
  }

  v13 = v50;
  v14 = isLeapYear == 0;
  v15 = 59;
LABEL_26:
  if (!v14)
  {
    ++v15;
  }

  v16 = v15 + v13;
LABEL_29:
  v20 = objc_msgSend_dateWithYear_month_day_(self, v10, v52, 1, 1);
  if (a4 == 2)
  {
    Weekday = objc_msgSend_extractWeekday_(self, v17, v20, v18, v19);
    v21 = Weekday - 9;
    if (Weekday == 1)
    {
      v21 = -1;
    }
  }

  else if (a4 == 1)
  {
    v21 = objc_msgSend_extractWeekday_(self, v17, v20, v18, v19) - 8;
  }

  else
  {
    v23 = MEMORY[0x277D81150];
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "[TSCECalendar weekNumberForDate:withType:]", v18, v19);
    v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCECalendar.mm", v26, v27);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v23, v29, v24, v28, 472, 0, "Incorrect type number in function WEEKNUM.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v30, v31, v32, v33);
    v21 = 0;
  }

  v34 = v21 + v16;
  v35 = v34 < 1;
  v36 = v34 - 1;
  if (v35)
  {
    v37 = 1;
  }

  else
  {
    v37 = (v36 / 7 + 2);
  }

  return v37;
}

+ (id)dateWithSerialNumber:(double)a3 dateMode:(int)a4
{
  if (a4 > 2)
  {
    v8 = 1900;
    v6 = 1;
    v7 = 1;
  }

  else
  {
    v6 = qword_2217E1F40[a4];
    v7 = qword_2217E1F58[a4];
    v8 = qword_2217E1F70[a4];
  }

  v9 = objc_alloc_init(MEMORY[0x277CBEAB8]);
  objc_msgSend_setDay_(v9, v10, v6, v11, v12);
  objc_msgSend_setMonth_(v9, v13, v7, v14, v15);
  objc_msgSend_setYear_(v9, v16, v8, v17, v18);
  v19 = objc_alloc(MEMORY[0x277CBEA80]);
  v23 = objc_msgSend_initWithCalendarIdentifier_(v19, v20, *MEMORY[0x277CBE5C0], v21, v22);
  v27 = objc_msgSend_timeZoneWithName_(MEMORY[0x277CBEBB0], v24, @"UTC", v25, v26);
  objc_msgSend_setTimeZone_(v23, v28, v27, v29, v30);

  v34 = objc_msgSend_dateFromComponents_(v23, v31, v9, v32, v33);
  v35 = objc_alloc(MEMORY[0x277CBEAA8]);
  v39 = a4 != 1 || a3 <= 60.0;
  v40 = a3 + -1.0;
  if (v39)
  {
    v40 = a3;
  }

  v41 = objc_msgSend_initWithTimeInterval_sinceDate_(v35, v36, v34, v37, v38, v40 * 86400.0);

  return v41;
}

+ (id)gregorianGMTCalendar
{
  v2 = qword_27CFB5650;
  if (!qword_27CFB5650)
  {
    v3 = objc_opt_class();
    objc_sync_enter(v3);
    if (!qword_27CFB5650)
    {
      v4 = [TSCECalendar alloc];
      v5 = TSUGetGMTTimeZone();
      v8 = objc_msgSend_initWithCalendarIdentifier_timeZone_(v4, v6, *MEMORY[0x277CBE5C0], v5, v7);

      __dmb(0xBu);
      v9 = qword_27CFB5650;
      qword_27CFB5650 = v8;
    }

    objc_sync_exit(v3);

    v2 = qword_27CFB5650;
  }

  return v2;
}

+ (id)ISO8601Calendar
{
  v2 = qword_27CFB5658;
  if (!qword_27CFB5658)
  {
    v3 = objc_opt_class();
    objc_sync_enter(v3);
    if (!qword_27CFB5658)
    {
      v4 = [TSCECalendar alloc];
      v5 = TSUGetGMTTimeZone();
      v8 = objc_msgSend_initWithCalendarIdentifier_timeZone_(v4, v6, *MEMORY[0x277CBE5D0], v5, v7);

      __dmb(0xBu);
      v9 = qword_27CFB5658;
      qword_27CFB5658 = v8;
    }

    objc_sync_exit(v3);

    v2 = qword_27CFB5658;
  }

  return v2;
}

+ (BOOL)isLeapYear:(int64_t)a3
{
  if ((a3 & 3) != 0)
  {
    return 0;
  }

  if (__ROR8__(0x8F5C28F5C28F5C29 * a3 + 0x51EB851EB851EB8, 2) <= 0x28F5C28F5C28F5CuLL)
  {
    return __ROR8__(0x8F5C28F5C28F5C29 * a3 + 0x51EB851EB851EB0, 4) < 0xA3D70A3D70A3D7uLL;
  }

  return 1;
}

@end