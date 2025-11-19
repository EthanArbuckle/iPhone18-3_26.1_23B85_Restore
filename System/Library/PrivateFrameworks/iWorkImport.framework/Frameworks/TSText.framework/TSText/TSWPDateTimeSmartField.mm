@interface TSWPDateTimeSmartField
+ (id)dateStringFromTime:(double)a3 withFormat:(id)a4 localeIdentifier:(id)a5 dateStyle:(int64_t)a6 timeStyle:(int64_t)a7;
+ (id)newDateFormatWithLocaleIdentifier:(id)a3 dateStyle:(int64_t)a4 timeStyle:(int64_t)a5;
- (TSWPDateTimeSmartField)initWithLocaleIdentifier:(id)a3 dateStyle:(int64_t)a4 timeStyle:(int64_t)a5 format:(id)a6 date:(id)a7 updatePlan:(int)a8 context:(id)a9;
- (id)copyWithContext:(id)a3;
- (id)copyWithNewDate:(id)a3;
- (id)copyWithNewDateStyle:(int64_t)a3 timeStyle:(int64_t)a4 date:(id)a5;
- (id)generateInlineText;
- (void)loadFromUnarchiver:(id)a3;
- (void)p_setFormat:(id)a3 localeIdentifier:(id)a4 dateStyle:(int64_t)a5 timeStyle:(int64_t)a6 autoLocale:(BOOL)a7;
- (void)resetLocaleTo:(id)a3;
- (void)saveToArchiver:(id)a3;
- (void)setCustomFormat:(int)a3;
- (void)setDate:(id)a3;
- (void)setDateStyle:(int64_t)a3;
- (void)setFormat:(id)a3;
- (void)setFormat:(id)a3 localeIdentifier:(id)a4 dateStyle:(int64_t)a5 timeStyle:(int64_t)a6;
- (void)setIncrementsDateByYear:(BOOL)a3;
- (void)setLocaleIdentifier:(id)a3;
- (void)setNeedsUpdate:(BOOL)a3;
- (void)setTimeStyle:(int64_t)a3;
- (void)setUpdatePlan:(int)a3;
@end

@implementation TSWPDateTimeSmartField

+ (id)newDateFormatWithLocaleIdentifier:(id)a3 dateStyle:(int64_t)a4 timeStyle:(int64_t)a5
{
  v7 = a3;
  if (v7)
  {
    v8 = objc_alloc(MEMORY[0x277D81228]);
    v10 = objc_msgSend_localeWithLocaleIdentifier_(MEMORY[0x277CBEAF8], v9, v7);
    v12 = objc_msgSend_initWithLocale_(v8, v11, v10);
  }

  else
  {
    v12 = objc_msgSend_currentLocale(MEMORY[0x277D81228], v5, v6);
  }

  UsingHarmonizedSymbols = TSUDateFormatterCFDateFormatterCreateUsingHarmonizedSymbols();
  v15 = UsingHarmonizedSymbols;
  if (UsingHarmonizedSymbols)
  {
    v16 = CFDateFormatterGetFormat(UsingHarmonizedSymbols);
    v19 = objc_msgSend_copy(v16, v17, v18);
    CFRelease(v15);
  }

  else
  {
    v20 = MEMORY[0x277D81150];
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "+[TSWPDateTimeSmartField newDateFormatWithLocaleIdentifier:dateStyle:timeStyle:]");
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPDateTimeSmartField.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v24, v21, v23, 53, 0, "Failed to create CFDateFormatter");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26);
    v19 = @"EEEE, MMMM d, y";
  }

  return v19;
}

+ (id)dateStringFromTime:(double)a3 withFormat:(id)a4 localeIdentifier:(id)a5 dateStyle:(int64_t)a6 timeStyle:(int64_t)a7
{
  v9 = a4;
  v12 = a5;
  if (v12)
  {
    v13 = objc_alloc(MEMORY[0x277D81228]);
    v15 = objc_msgSend_localeWithLocaleIdentifier_(MEMORY[0x277CBEAF8], v14, v12);
    v17 = objc_msgSend_initWithLocale_(v13, v16, v15);
  }

  else
  {
    v17 = objc_msgSend_currentLocale(MEMORY[0x277D81228], v10, v11);
  }

  UsingHarmonizedSymbols = TSUDateFormatterCFDateFormatterCreateUsingHarmonizedSymbols();
  v20 = UsingHarmonizedSymbols;
  if (!UsingHarmonizedSymbols)
  {
    goto LABEL_10;
  }

  if (v9)
  {
    CFDateFormatterSetFormat(UsingHarmonizedSymbols, v9);
  }

  StringWithAbsoluteTime = CFDateFormatterCreateStringWithAbsoluteTime(0, v20, a3);
  CFRelease(v20);
  if (StringWithAbsoluteTime)
  {
    if (!objc_msgSend_length(StringWithAbsoluteTime, v19, v22))
    {
      v24 = MEMORY[0x277D81150];
      v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "+[TSWPDateTimeSmartField dateStringFromTime:withFormat:localeIdentifier:dateStyle:timeStyle:]");
      v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPDateTimeSmartField.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v24, v28, v25, v27, 80, 0, "Empty dateString");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v29, v30);
    }
  }

  else
  {
LABEL_10:
    v31 = MEMORY[0x277D81150];
    v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "+[TSWPDateTimeSmartField dateStringFromTime:withFormat:localeIdentifier:dateStyle:timeStyle:]");
    v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v33, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPDateTimeSmartField.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v31, v35, v32, v34, 79, 0, "Nil dateString");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v36, v37);
    StringWithAbsoluteTime = 0;
  }

  return StringWithAbsoluteTime;
}

- (void)setDate:(id)a3
{
  v4 = a3;
  if (self->_date != v4)
  {
    v9 = v4;
    objc_msgSend_willModify(self, v4, v5);
    v8 = objc_msgSend_copy(v9, v6, v7);

    objc_storeStrong(&self->_date, v8);
    v4 = v8;
  }
}

- (void)setFormat:(id)a3
{
  v4 = a3;
  if (self->_format != v4)
  {
    v9 = v4;
    objc_msgSend_willModify(self, v4, v5);
    v8 = objc_msgSend_copy(v9, v6, v7);

    objc_storeStrong(&self->_format, v8);
    v4 = v8;
  }
}

- (void)setLocaleIdentifier:(id)a3
{
  v4 = a3;
  if (self->_localeID != v4)
  {
    v9 = v4;
    objc_msgSend_willModify(self, v4, v5);
    v8 = objc_msgSend_copy(v9, v6, v7);

    objc_storeStrong(&self->_localeID, v8);
    v4 = v8;
  }
}

- (void)setDateStyle:(int64_t)a3
{
  if (self->_dateStyle != a3)
  {
    objc_msgSend_willModify(self, a2, a3);
    self->_dateStyle = a3;
  }
}

- (void)setTimeStyle:(int64_t)a3
{
  if (self->_timeStyle != a3)
  {
    objc_msgSend_willModify(self, a2, a3);
    self->_timeStyle = a3;
  }
}

- (void)setUpdatePlan:(int)a3
{
  if (self->_updatePlan != a3)
  {
    objc_msgSend_willModify(self, a2, *&a3);
    self->_updatePlan = a3;
  }
}

- (void)setIncrementsDateByYear:(BOOL)a3
{
  if (self->_incrementsDateByYear != a3)
  {
    objc_msgSend_willModify(self, a2, a3);
    self->_incrementsDateByYear = a3;
  }
}

- (void)setNeedsUpdate:(BOOL)a3
{
  if (self->_needsUpdate != a3)
  {
    objc_msgSend_willModify(self, a2, a3);
    self->_needsUpdate = a3;
  }
}

- (void)setCustomFormat:(int)a3
{
  if (self->_customFormat != a3)
  {
    objc_msgSend_willModify(self, a2, *&a3);
    self->_customFormat = a3;
  }
}

- (TSWPDateTimeSmartField)initWithLocaleIdentifier:(id)a3 dateStyle:(int64_t)a4 timeStyle:(int64_t)a5 format:(id)a6 date:(id)a7 updatePlan:(int)a8 context:(id)a9
{
  v15 = a3;
  v16 = a6;
  v17 = a7;
  v18 = a9;
  v43.receiver = self;
  v43.super_class = TSWPDateTimeSmartField;
  v19 = [(TSWPSmartField *)&v43 initWithContext:v18];
  v22 = v19;
  if (v19)
  {
    v19->_updatePlan = a8;
    if (!v15 && *MEMORY[0x277D81500] != -1)
    {
      sub_276F4F6FC();
    }

    v23 = objc_msgSend_documentRoot(v18, v20, v21);
    v26 = objc_msgSend_documentLocale(v23, v24, v25);
    v29 = objc_msgSend_localeIdentifier(v26, v27, v28);

    v32 = v15;
    if (v15 || (v32 = v29) != 0)
    {
      v34 = v32;
    }

    else
    {
      v40 = objc_msgSend_currentLocale(MEMORY[0x277D81228], v30, v31);
      v34 = objc_msgSend_localeIdentifier(v40, v41, v42);
    }

    objc_msgSend_setFormat_localeIdentifier_dateStyle_timeStyle_(v22, v33, v16, v34, a4, a5);
    if (v17)
    {
      v37 = objc_msgSend_copy(v17, v35, v36);
    }

    else
    {
      v37 = objc_alloc_init(MEMORY[0x277CBEAA8]);
    }

    v38 = v37;
    objc_storeStrong(&v22->_date, v37);
  }

  return v22;
}

- (id)copyWithNewDate:(id)a3
{
  v4 = a3;
  v5 = [TSWPDateTimeSmartField alloc];
  v8 = objc_msgSend_localeIdentifier(self, v6, v7);
  v11 = objc_msgSend_dateStyle(self, v9, v10);
  v14 = objc_msgSend_timeStyle(self, v12, v13);
  v17 = objc_msgSend_format(self, v15, v16);
  updated = objc_msgSend_updatePlan(self, v18, v19);
  v23 = objc_msgSend_context(self, v21, v22);
  v25 = objc_msgSend_initWithLocaleIdentifier_dateStyle_timeStyle_format_date_updatePlan_context_(v5, v24, v8, v11, v14, v17, v4, updated, v23);

  v28 = objc_msgSend_customFormat(self, v26, v27);
  objc_msgSend_setCustomFormat_(v25, v29, v28);

  return v25;
}

- (id)copyWithNewDateStyle:(int64_t)a3 timeStyle:(int64_t)a4 date:(id)a5
{
  v8 = a5;
  v13 = objc_msgSend_localeIdentifier(self, v9, v10);
  if (!v13)
  {
    if (*MEMORY[0x277D81500] != -1)
    {
      sub_276F4F724();
    }

    v14 = objc_msgSend_currentLocale(MEMORY[0x277D81228], v11, v12);
    v13 = objc_msgSend_localeIdentifier(v14, v15, v16);
  }

  v17 = objc_opt_class();
  v19 = objc_msgSend_newDateFormatWithLocaleIdentifier_dateStyle_timeStyle_(v17, v18, v13, a3, a4);
  v20 = [TSWPDateTimeSmartField alloc];
  updated = objc_msgSend_updatePlan(self, v21, v22);
  v26 = objc_msgSend_context(self, v24, v25);
  v28 = objc_msgSend_initWithLocaleIdentifier_dateStyle_timeStyle_format_date_updatePlan_context_(v20, v27, v13, a3, a4, v19, v8, updated, v26);

  return v28;
}

- (void)loadFromUnarchiver:(id)a3
{
  v4 = a3;
  google::protobuf::internal::AssignDescriptors();
  v6 = objc_msgSend_messageWithDescriptor_(v4, v5, off_2812DC408[150]);

  if (*(v6 + 40))
  {
    v7 = *(v6 + 40);
  }

  else
  {
    v7 = &TSWP::_SmartFieldArchive_default_instance_;
  }

  v52.receiver = self;
  v52.super_class = TSWPDateTimeSmartField;
  [(TSWPSmartField *)&v52 loadFromArchive:v7 unarchiver:v4];
  self->_updatePlan = *(v6 + 64);
  self->_needsUpdate = *(v6 + 68);
  self->_incrementsDateByYear = *(v6 + 69);
  v10 = *(v6 + 72);
  if (v10 >= 2)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSWPDateTimeSmartField loadFromUnarchiver:]");
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPDateTimeSmartField.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v15, v12, v14, 196, 0, "Unexpected date time smart field custom format");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17);
    v10 = 0;
  }

  self->_customFormat = v10;
  v18 = *(v6 + 16);
  if ((v18 & 2) != 0)
  {
    v19 = objc_alloc(MEMORY[0x277CCACA8]);
    v21 = objc_msgSend_tsp_initWithProtobufString_(v19, v20, *(v6 + 32) & 0xFFFFFFFFFFFFFFFELL);
    localeID = self->_localeID;
    self->_localeID = v21;

    v18 = *(v6 + 16);
  }

  if ((v18 & 0x10) != 0 || (v23 = MEMORY[0x277D81150], objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSWPDateTimeSmartField loadFromUnarchiver:]"), v24 = objc_claimAutoreleasedReturnValue(), objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPDateTimeSmartField.mm"), v26 = objc_claimAutoreleasedReturnValue(), objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v23, v27, v24, v26, 205, 0, "Missing required date_style"), v26, v24, objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v28, v29), v18 = *(v6 + 16), (v18 & 0x10) != 0))
  {
    v30 = *(v6 + 56);
  }

  else
  {
    v30 = 3;
  }

  self->_dateStyle = v30;
  if ((v18 & 0x20) == 0)
  {
    v31 = MEMORY[0x277D81150];
    v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSWPDateTimeSmartField loadFromUnarchiver:]");
    v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v33, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPDateTimeSmartField.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v31, v35, v32, v34, 207, 0, "Missing required time_style");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v36, v37);
    v18 = *(v6 + 16);
  }

  if ((v18 & 0x20) != 0)
  {
    v38 = *(v6 + 60);
    self->_timeStyle = v38;
    if (!self->_dateStyle && !v38)
    {
      objc_msgSend_willModifyForUpgrade(self, v8, v9);
      self->_dateStyle = 3;
      v18 = *(v6 + 16);
    }
  }

  else
  {
    self->_timeStyle = 3;
  }

  if (v18)
  {
    v39 = objc_alloc(MEMORY[0x277CCACA8]);
    v41 = objc_msgSend_tsp_initWithProtobufString_(v39, v40, *(v6 + 24) & 0xFFFFFFFFFFFFFFFELL);
    format = self->_format;
    self->_format = v41;
  }

  else if (!self->_format && *MEMORY[0x277D81408] != -1)
  {
    sub_276F4F738();
  }

  v43 = *(v6 + 16);
  if (self->_updatePlan)
  {
    if ((v43 & 8) != 0)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  if ((v43 & 8) == 0)
  {
LABEL_28:
    objc_msgSend_willModifyForUpgrade(self, v8, v9);
LABEL_29:
    v44 = objc_alloc_init(MEMORY[0x277CBEAA8]);
    date = self->_date;
    self->_date = v44;

    self->_needsUpdate = 1;
    goto LABEL_30;
  }

  v47 = objc_alloc(MEMORY[0x277CBEAA8]);
  if (*(v6 + 48))
  {
    v49 = objc_msgSend_tsp_initWithMessage_(v47, v48, *(v6 + 48));
  }

  else
  {
    v49 = objc_msgSend_tsp_initWithMessage_(v47, v48, MEMORY[0x277D809C0]);
  }

  v50 = self->_date;
  self->_date = v49;

LABEL_30:
  v51[0] = MEMORY[0x277D85DD0];
  v51[1] = 3221225472;
  v51[2] = sub_276DF2EFC;
  v51[3] = &unk_27A6F46E8;
  v51[4] = self;
  objc_msgSend_addFinalizeHandler_(v4, v46, v51);
}

- (void)saveToArchiver:(id)a3
{
  v4 = a3;
  google::protobuf::internal::AssignDescriptors();
  v6 = objc_msgSend_messageWithNewFunction_descriptor_(v4, v5, sub_276DF3C4C, off_2812DC408[150]);

  *(v6 + 16) |= 4u;
  v7 = *(v6 + 40);
  if (!v7)
  {
    v8 = *(v6 + 8);
    if (v8)
    {
      v8 = *(v8 & 0xFFFFFFFFFFFFFFFELL);
    }

    v7 = google::protobuf::Arena::CreateMaybeMessage<TSWP::SmartFieldArchive>(v8);
    *(v6 + 40) = v7;
  }

  v51.receiver = self;
  v51.super_class = TSWPDateTimeSmartField;
  [(TSWPSmartField *)&v51 saveToArchive:v7 archiver:v4];
  format = self->_format;
  if (format || (v12 = MEMORY[0x277D81150], objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSWPDateTimeSmartField saveToArchiver:]"), v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPDateTimeSmartField.mm"), v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v16, v13, v15, 248, 0, "Unexpected nil _format"), v15, v13, objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18), (format = self->_format) != 0))
  {
    if (!objc_msgSend_length(format, v9, v10))
    {
      v19 = MEMORY[0x277D81150];
      v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSWPDateTimeSmartField saveToArchiver:]");
      v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPDateTimeSmartField.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v23, v20, v22, 249, 0, "Unexpected empty _format");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25);
    }

    v26 = self->_format;
    if (v26)
    {
      v27 = objc_msgSend_UTF8String(v26, v9, v10);
      *(v6 + 16) |= 1u;
      sub_276DA9454(__p, v27);
      google::protobuf::internal::ArenaStringPtr::Set();
      if (v53 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  localeID = self->_localeID;
  if (localeID || (v29 = MEMORY[0x277D81150], objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSWPDateTimeSmartField saveToArchiver:]"), v30 = objc_claimAutoreleasedReturnValue(), objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v31, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPDateTimeSmartField.mm"), v32 = objc_claimAutoreleasedReturnValue(), objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v29, v33, v30, v32, 254, 0, "invalid nil value for '%{public}s'", "_localeID"), v32, v30, objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v34, v35), (localeID = self->_localeID) != 0))
  {
    v36 = objc_msgSend_UTF8String(localeID, v9, v10);
    *(v6 + 16) |= 2u;
    sub_276DA9454(__p, v36);
    google::protobuf::internal::ArenaStringPtr::Set();
    if (v53 < 0)
    {
      operator delete(__p[0]);
    }
  }

  date = self->_date;
  if (date || (v38 = MEMORY[0x277D81150], objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSWPDateTimeSmartField saveToArchiver:]"), v39 = objc_claimAutoreleasedReturnValue(), objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v40, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPDateTimeSmartField.mm"), v41 = objc_claimAutoreleasedReturnValue(), objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v38, v42, v39, v41, 259, 0, "invalid nil value for '%{public}s'", "_date"), v41, v39, objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v43, v44), (date = self->_date) != 0))
  {
    *(v6 + 16) |= 8u;
    v45 = *(v6 + 48);
    if (!v45)
    {
      v46 = *(v6 + 8);
      if (v46)
      {
        v46 = *(v46 & 0xFFFFFFFFFFFFFFFELL);
      }

      v45 = MEMORY[0x277CA31F0](v46);
      *(v6 + 48) = v45;
    }

    objc_msgSend_tsp_saveToMessage_(date, v9, v45);
  }

  v47 = *(v6 + 16);
  *(v6 + 56) = self->_dateStyle;
  *(v6 + 60) = self->_timeStyle;
  *(v6 + 64) = self->_updatePlan;
  needsUpdate = self->_needsUpdate;
  v49 = v47 | 0xF0;
  *(v6 + 16) = v47 | 0xF0;
  *(v6 + 68) = needsUpdate;
  customFormat = self->_customFormat;
  if (customFormat <= 1)
  {
    v49 = v47 | 0x2F0;
    *(v6 + 16) = v47 | 0x2F0;
    *(v6 + 72) = customFormat;
  }

  if (self->_incrementsDateByYear)
  {
    *(v6 + 16) = v49 | 0x100;
    *(v6 + 69) = 1;
  }
}

- (id)copyWithContext:(id)a3
{
  v6.receiver = self;
  v6.super_class = TSWPDateTimeSmartField;
  v4 = [(TSWPSmartField *)&v6 copyWithContext:a3];
  objc_storeStrong(v4 + 11, self->_format);
  objc_storeStrong(v4 + 12, self->_localeID);
  v4[13] = self->_dateStyle;
  v4[14] = self->_timeStyle;
  *(v4 + 30) = self->_updatePlan;
  *(v4 + 125) = self->_needsUpdate;
  objc_storeStrong(v4 + 17, self->_date);
  *(v4 + 32) = self->_customFormat;
  *(v4 + 124) = self->_incrementsDateByYear;
  return v4;
}

- (id)generateInlineText
{
  v5 = self->_date;
  if (self->_incrementsDateByYear)
  {
    v6 = objc_msgSend_currentCalendar(MEMORY[0x277CBEA80], v3, v4);
    v8 = objc_msgSend_dateByAddingUnit_value_toDate_options_(v6, v7, 4, 1, v5, 0);

    v5 = v8;
  }

  v11 = self->_format;
  if (self->_customFormat == 1)
  {
    if (self->_localeID)
    {
      v12 = objc_alloc(MEMORY[0x277D81228]);
      v14 = objc_msgSend_localeWithLocaleIdentifier_(MEMORY[0x277CBEAF8], v13, self->_localeID);
      v16 = objc_msgSend_initWithLocale_(v12, v15, v14);
    }

    else
    {
      v16 = objc_msgSend_currentLocale(MEMORY[0x277D81228], v9, v10);
    }

    v18 = objc_msgSend_localizedStringForKey_value_table_(v16, v17, @"DateTimeSmartField_YearOnlyFormat", @"y", @"TSText");

    v11 = v18;
  }

  v19 = objc_opt_class();
  objc_msgSend_timeIntervalSinceReferenceDate(v5, v20, v21);
  v23 = objc_msgSend_dateStringFromTime_withFormat_localeIdentifier_dateStyle_timeStyle_(v19, v22, v11, self->_localeID, self->_dateStyle, self->_timeStyle);

  return v23;
}

- (void)resetLocaleTo:(id)a3
{
  v13 = a3;
  v6 = objc_msgSend_autoupdatingCurrentLocale(MEMORY[0x277CBEAF8], v4, v5);
  isEqual = objc_msgSend_isEqual_(v13, v7, v6);

  v11 = objc_msgSend_localeIdentifier(v13, v9, v10);
  objc_msgSend_p_setFormat_localeIdentifier_dateStyle_timeStyle_autoLocale_(self, v12, 0, v11, self->_dateStyle, self->_timeStyle, isEqual);
}

- (void)setFormat:(id)a3 localeIdentifier:(id)a4 dateStyle:(int64_t)a5 timeStyle:(int64_t)a6
{
  self->_customFormat = 0;
  self->_incrementsDateByYear = 0;
  objc_msgSend_p_setFormat_localeIdentifier_dateStyle_timeStyle_autoLocale_(self, a2, a3, a4, a5, a6, 0);
}

- (void)p_setFormat:(id)a3 localeIdentifier:(id)a4 dateStyle:(int64_t)a5 timeStyle:(int64_t)a6 autoLocale:(BOOL)a7
{
  v7 = a7;
  v45 = a3;
  v13 = a4;
  if (!(a6 | a5))
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[TSWPDateTimeSmartField p_setFormat:localeIdentifier:dateStyle:timeStyle:autoLocale:]");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPDateTimeSmartField.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v18, v15, v17, 354, 0, "One of the date or time styles must be something other than kCFDateFormatterNoStyle");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20);
    a5 = 3;
  }

  objc_msgSend_setDateStyle_(self, v12, a5);
  objc_msgSend_setTimeStyle_(self, v21, a6);
  if (v7)
  {
    v24 = objc_opt_class();
    v26 = objc_msgSend_newDateFormatWithLocaleIdentifier_dateStyle_timeStyle_(v24, v25, 0, self->_dateStyle, self->_timeStyle);

    v45 = v26;
  }

  if (v13)
  {
    objc_msgSend_setLocaleIdentifier_(self, v22, v13);
  }

  v27 = objc_msgSend_localeIdentifier(self, v22, v23);

  if (!v27)
  {
    if (*MEMORY[0x277D81500] != -1)
    {
      sub_276F4F774();
    }

    v30 = objc_msgSend_currentLocale(MEMORY[0x277D81228], v28, v29);
    v33 = objc_msgSend_localeIdentifier(v30, v31, v32);
    objc_msgSend_setLocaleIdentifier_(self, v34, v33);
  }

  v35 = v45;
  if (v45 || (v36 = objc_opt_class(), (v35 = objc_msgSend_newDateFormatWithLocaleIdentifier_dateStyle_timeStyle_(v36, v37, self->_localeID, self->_dateStyle, self->_timeStyle)) != 0))
  {
    v46 = v35;
    objc_msgSend_setFormat_(self, v28, v35);
  }

  else
  {
    v38 = MEMORY[0x277D81150];
    v39 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, "[TSWPDateTimeSmartField p_setFormat:localeIdentifier:dateStyle:timeStyle:autoLocale:]");
    v41 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v40, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPDateTimeSmartField.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v38, v42, v39, v41, 378, 0, "invalid nil value for '%{public}s'", "newFormat");

    v46 = 0;
    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v43, v44);
  }
}

@end