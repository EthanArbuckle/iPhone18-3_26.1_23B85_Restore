@interface TSCEStock
+ (id)stockFromArchive:(const void *)a3;
+ (id)stockWithAttributes:(id)a3;
- (BOOL)up;
- (NSString)dateString;
- (TSCEStock)init;
- (TSCEStock)initWithAttributes:(id)a3;
- (TSCEStock)initWithSymbol:(id)a3;
- (id)abbreviatedNumberForAttribute:(int64_t)a3 atLocale:(id)a4;
- (id)initFromArchive:(const void *)a3;
- (id)valueForAttribute:(int64_t)a3;
- (id)valueForAttribute:(int64_t)a3 forLocale:(id)a4;
- (void)encodeToArchive:(void *)a3;
- (void)p_populateAttributesFromArray:(id)a3;
- (void)p_setFormattedAttr:(int64_t)a3 fromArray:(id)a4;
@end

@implementation TSCEStock

+ (id)stockWithAttributes:(id)a3
{
  v3 = a3;
  v4 = objc_alloc(objc_opt_class());
  v8 = objc_msgSend_initWithAttributes_(v4, v5, v3, v6, v7);

  return v8;
}

- (TSCEStock)init
{
  v4 = MEMORY[0x277D81150];
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEStock init]", v2, v3);
  v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEStock.mm", v7, v8);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v10, v5, v9, 61, 0, "Do not call method");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12, v13, v14);
  v15 = MEMORY[0x277CBEAD8];
  v19 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v16, @"%s: %s", v17, v18, "Do not call method", "[TSCEStock init]");
  v21 = objc_msgSend_exceptionWithName_reason_userInfo_(v15, v20, *MEMORY[0x277CBE658], v19, 0);
  v22 = v21;

  objc_exception_throw(v21);
}

- (TSCEStock)initWithSymbol:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = TSCEStock;
  v9 = [(TSCEStock *)&v16 init];
  if (v9)
  {
    v10 = objc_msgSend_copy(v4, v5, v6, v7, v8);
    symbol = v9->_symbol;
    v9->_symbol = v10;

    date = v9->_date;
    v9->_date = 0;

    v13 = objc_alloc_init(MEMORY[0x277D81330]);
    attributes = v9->_attributes;
    v9->_attributes = v13;
  }

  return v9;
}

- (TSCEStock)initWithAttributes:(id)a3
{
  v4 = a3;
  v8 = objc_msgSend_initWithSymbol_(self, v5, 0, v6, v7);
  v12 = v8;
  if (v8)
  {
    objc_msgSend_p_populateAttributesFromArray_(v8, v9, v4, v10, v11);
  }

  return v12;
}

- (id)initFromArchive:(const void *)a3
{
  v10 = objc_msgSend_tsp_stringWithProtobufString_(MEMORY[0x277CCACA8], a2, *(a3 + 6) & 0xFFFFFFFFFFFFFFFELL, v3, v4);
  if (!v10)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSCEStock initFromArchive:]", v8, v9);
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEStock.mm", v14, v15);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v17, v12, v16, 86, 0, "invalid nil value for '%{public}s'", "symbol");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20, v21);
  }

  v26 = objc_msgSend_initWithSymbol_(self, v7, v10, v8, v9);
  if (v26)
  {
    if ((*(a3 + 16) & 2) != 0)
    {
      v27 = objc_msgSend_dateWithTimeIntervalSinceReferenceDate_(MEMORY[0x277CBEAA8], v22, v23, v24, v25, *(a3 + 7));
      v32 = objc_msgSend_copy(v27, v28, v29, v30, v31);
      v33 = *(v26 + 16);
      *(v26 + 16) = v32;
    }

    v34 = *(a3 + 5);
    if (v34)
    {
      v35 = v34 + 8;
    }

    else
    {
      v35 = 0;
    }

    v36 = *(a3 + 8);
    if (v36)
    {
      v37 = 8 * v36;
      do
      {
        v38 = *(*v35 + 32);
        v39 = objc_msgSend_tsp_stringWithProtobufString_(MEMORY[0x277CCACA8], v22, *(*v35 + 24) & 0xFFFFFFFFFFFFFFFELL, v24, v25);
        objc_msgSend_setObject_atIndexedSubscript_(*(v26 + 24), v40, v39, v38, v41);

        v35 += 8;
        v37 -= 8;
      }

      while (v37);
    }
  }

  return v26;
}

+ (id)stockFromArchive:(const void *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v8 = objc_msgSend_initFromArchive_(v4, v5, a3, v6, v7);

  return v8;
}

- (void)encodeToArchive:(void *)a3
{
  symbol = self->_symbol;
  if (symbol || (v8 = MEMORY[0x277D81150], objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEStock encodeToArchive:]", v3, v4), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEStock.mm", v11, v12), v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v14, v9, v13, 110, 0, "invalid nil value for '%{public}s'", "_symbol"), v13, v9, objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16, v17, v18), (symbol = self->_symbol) != 0))
  {
    v19 = objc_msgSend_tsp_protobufString(symbol, a2, a3, v3, v4);
    *(a3 + 4) |= 1u;
    sub_22108CCD0(__p, v19);
    google::protobuf::internal::ArenaStringPtr::Set();
  }

  else
  {
    v39 = objc_msgSend_tsp_protobufString(@"NULL", a2, a3, v3, v4);
    *(a3 + 4) |= 1u;
    sub_22108CCD0(__p, v39);
    google::protobuf::internal::ArenaStringPtr::Set();
  }

  if (v41 < 0)
  {
    operator delete(__p[0]);
  }

  date = self->_date;
  if (date)
  {
    objc_msgSend_timeIntervalSinceReferenceDate(date, v20, v21, v22, v23);
    *(a3 + 4) |= 2u;
    *(a3 + 7) = v25;
  }

  for (i = 1; i != 28; ++i)
  {
    v31 = objc_msgSend_objectAtIndexedSubscript_(self->_attributes, v20, i, v22, v23);
    if (!v31)
    {
      goto LABEL_19;
    }

    v32 = *(a3 + 5);
    if (!v32)
    {
      goto LABEL_15;
    }

    v33 = *(a3 + 8);
    v34 = *v32;
    if (v33 < *v32)
    {
      *(a3 + 8) = v33 + 1;
      v35 = *&v32[2 * v33 + 2];
      goto LABEL_17;
    }

    if (v34 == *(a3 + 9))
    {
LABEL_15:
      google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a3 + 24));
      v32 = *(a3 + 5);
      v34 = *v32;
    }

    *v32 = v34 + 1;
    v35 = google::protobuf::Arena::CreateMaybeMessage<TSCE::StockArchive_AttributeEntry>(*(a3 + 3));
    v36 = *(a3 + 8);
    v37 = *(a3 + 5) + 8 * v36;
    *(a3 + 8) = v36 + 1;
    *(v37 + 8) = v35;
LABEL_17:
    *(v35 + 16) |= 2u;
    *(v35 + 32) = i;
    v38 = objc_msgSend_tsp_protobufString(v31, v27, v28, v29, v30);
    *(v35 + 16) |= 1u;
    sub_22108CCD0(__p, v38);
    google::protobuf::internal::ArenaStringPtr::Set();
    if (v41 < 0)
    {
      operator delete(__p[0]);
    }

LABEL_19:
  }
}

- (id)valueForAttribute:(int64_t)a3
{
  if (!a3)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEStock valueForAttribute:]", v3, v4);
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEStock.mm", v10, v11);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v13, v8, v12, 134, 0, "Can't fetch an unknown attribute!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15, v16, v17);
  }

  objc_opt_class();
  v22 = objc_msgSend_attributes(self, v18, v19, v20, v21);
  v26 = objc_msgSend_objectAtIndexedSubscript_(v22, v23, a3, v24, v25);
  v27 = TSUDynamicCast();

  if (!v27)
  {
    v27 = objc_msgSend_kNilStockAttributeString(TSCEStock, v28, v29, v30, v31);
  }

  return v27;
}

- (id)valueForAttribute:(int64_t)a3 forLocale:(id)a4
{
  v9 = a4;
  if (!a3)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSCEStock valueForAttribute:forLocale:]", v7, v8);
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEStock.mm", v13, v14);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v16, v11, v15, 145, 0, "Can't fetch an unknown attribute!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19, v20);
  }

  v25 = objc_msgSend_valueForAttribute_(self, v6, a3, v7, v8);
  if (v25)
  {
    v26 = objc_msgSend_localeIdentifier(v9, v21, v22, v23, v24);
    v31 = objc_msgSend_nativeLocaleIdentifier(TSCEStock, v27, v28, v29, v30);
    if ((objc_msgSend_isEqualToString_(v26, v32, v31, v33, v34) & 1) == 0)
    {
      v39 = objc_msgSend_kNilStockAttributeString(TSCEStock, v35, v36, v37, v38);
      isEqualToString = objc_msgSend_isEqualToString_(v25, v40, v39, v41, v42);

      if (isEqualToString)
      {
        goto LABEL_10;
      }

      v26 = objc_msgSend_usEnglishLocale(MEMORY[0x277D81228], v44, v45, v46, v47);
      v48 = MEMORY[0x277CCA900];
      v53 = objc_msgSend_groupingSeparator(v26, v49, v50, v51, v52);
      v57 = objc_msgSend_characterSetWithCharactersInString_(v48, v54, v53, v55, v56);
      v31 = objc_msgSend_tsu_stringByRemovingCharactersInSet_(v25, v58, v57, v59, v60);

      v61 = objc_opt_new();
      v66 = objc_msgSend_locale(v26, v62, v63, v64, v65);
      objc_msgSend_setLocale_(v61, v67, v66, v68, v69);

      v73 = objc_msgSend_numberFromString_(v61, v70, v31, v71, v72);
      if (v73)
      {
        v74 = objc_alloc(MEMORY[0x277D806A0]);
        v76 = objc_msgSend_initWithFormatType_decimalPlaces_negativeStyle_showSeparator_(v74, v75, 256, 2, 0, 1);
        objc_msgSend_doubleValue(v73, v77, v78, v79, v80);
        v84 = objc_msgSend_stringFromDouble_locale_(v76, v81, v9, v82, v83);

        v25 = v84;
      }
    }
  }

LABEL_10:

  return v25;
}

- (BOOL)up
{
  v4 = objc_msgSend_valueForAttribute_(self, a2, 7, v2, v3);
  v5 = objc_opt_new();
  v6 = objc_alloc(MEMORY[0x277CBEAF8]);
  v10 = objc_msgSend_initWithLocaleIdentifier_(v6, v7, @"en_US", v8, v9);
  objc_msgSend_setLocale_(v5, v11, v10, v12, v13);

  v17 = objc_msgSend_numberFromString_(v5, v14, v4, v15, v16);
  objc_msgSend_doubleValue(v17, v18, v19, v20, v21);
  v23 = v22 >= 0.0;

  return v23;
}

- (NSString)dateString
{
  if (self->_date)
  {
    v6 = objc_alloc_init(MEMORY[0x277CCA968]);
    objc_msgSend_setLocalizedDateFormatFromTemplate_(v6, v7, @"MMMdyyyyhhmmzzz", v8, v9);
    v13 = objc_msgSend_stringFromDate_(v6, v10, self->_date, v11, v12);
  }

  else
  {
    v13 = objc_msgSend_kNilStockAttributeString(TSCEStock, a2, v2, v3, v4);
  }

  return v13;
}

- (void)p_setFormattedAttr:(int64_t)a3 fromArray:(id)a4
{
  v32 = a4;
  objc_opt_class();
  v9 = objc_msgSend_objectAtIndexedSubscript_(v32, v6, a3, v7, v8);
  v10 = TSUDynamicCast();

  v11 = @"—";
  v16 = sub_221219970(a3);
  if ((v16 - 2) >= 4)
  {
    if (!v10)
    {
      goto LABEL_10;
    }

    v28 = v10;
  }

  else
  {
    if (!v10)
    {
      goto LABEL_10;
    }

    v17 = off_278465748[v16 - 2];
    objc_msgSend_doubleValue(v10, v12, v13, v14, v15);
    v22 = v21;
    if (v16 == 2)
    {
      v23 = objc_msgSend_objectAtIndexedSubscript_(v32, v18, 8, v19, v20);
      isEqualToString = objc_msgSend_isEqualToString_(v23, v24, @"GBp", v25, v26);

      if (isEqualToString)
      {
        v22 = v22 / 100.0;
      }
    }

    v28 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v18, v17, v19, v20, *&v22);
  }

  v11 = v28;
LABEL_10:
  v29 = objc_msgSend_attributes(self, v12, v13, v14, v15);
  objc_msgSend_setObject_atIndexedSubscript_(v29, v30, v11, a3, v31);
}

- (id)abbreviatedNumberForAttribute:(int64_t)a3 atLocale:(id)a4
{
  v6 = a4;
  v11 = objc_msgSend_usEnglishLocale(MEMORY[0x277D81228], v7, v8, v9, v10);
  v15 = objc_msgSend_valueForAttribute_(self, v12, a3, v13, v14);
  v16 = MEMORY[0x277CCA900];
  v21 = objc_msgSend_groupingSeparator(v11, v17, v18, v19, v20);
  v25 = objc_msgSend_characterSetWithCharactersInString_(v16, v22, v21, v23, v24);
  v29 = objc_msgSend_tsu_stringByRemovingCharactersInSet_(v15, v26, v25, v27, v28);

  v34 = objc_msgSend_kNilStockAttributeString(TSCEStock, v30, v31, v32, v33);
  v39 = objc_msgSend_kNilStockAttributeString(TSCEStock, v35, v36, v37, v38);
  isEqualToString = objc_msgSend_isEqualToString_(v29, v40, v39, v41, v42);

  if ((isEqualToString & 1) == 0)
  {
    objc_msgSend_doubleValue(v29, v44, v45, v46, v47);
    v49 = v48 / 1.0e12;
    if (v48 / 1.0e12 <= 1.0)
    {
      v49 = v48 / 1000000000.0;
      if (v48 / 1000000000.0 <= 1.0)
      {
        v49 = v48 / 1000000.0;
        if (v48 / 1000000.0 <= 1.0)
        {
          v49 = v48 / 1000.0;
          if (v48 / 1000.0 <= 1.0)
          {
            v56 = &stru_2834BADA0;
            v49 = v48;
            goto LABEL_11;
          }

          v50 = sub_2212F6DF8();
          v52 = objc_msgSend_localizedStringForKey_value_table_(v50, v55, @"Number suffix - thousands", @"K", @"TSCalculationEngine");
        }

        else
        {
          v50 = sub_2212F6DF8();
          v52 = objc_msgSend_localizedStringForKey_value_table_(v50, v54, @"Number suffix - millions", @"M", @"TSCalculationEngine");
        }
      }

      else
      {
        v50 = sub_2212F6DF8();
        v52 = objc_msgSend_localizedStringForKey_value_table_(v50, v53, @"Number suffix - billions", @"B", @"TSCalculationEngine");
      }
    }

    else
    {
      v50 = sub_2212F6DF8();
      v52 = objc_msgSend_localizedStringForKey_value_table_(v50, v51, @"Number suffix - trillions", @"T", @"TSCalculationEngine");
    }

    v56 = v52;

LABEL_11:
    v57 = objc_alloc(MEMORY[0x277D806A0]);
    v59 = objc_msgSend_initWithFormatType_decimalPlaces_negativeStyle_showSeparator_(v57, v58, 256, 2, 4, 1);
    v63 = objc_msgSend_stringFromDouble_locale_(v59, v60, v6, v61, v62, v49);
    v67 = objc_msgSend_localizedStringWithFormat_(MEMORY[0x277CCACA8], v64, @"%@%@", v65, v66, v63, v56);

    v34 = v67;
  }

  return v34;
}

- (void)p_populateAttributesFromArray:(id)a3
{
  v166 = a3;
  v7 = objc_msgSend_objectAtIndexedSubscript_(v166, v4, 26, v5, v6);
  objc_msgSend_setSymbol_(self, v8, v7, v9, v10);

  v15 = objc_msgSend_symbol(self, v11, v12, v13, v14);

  if (!v15)
  {
    v19 = MEMORY[0x277D81150];
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "[TSCEStock p_populateAttributesFromArray:]", v17, v18);
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEStock.mm", v22, v23);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v25, v20, v24, 292, 0, "invalid nil value for '%{public}s'", "self.symbol");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27, v28, v29);
  }

  v30 = objc_alloc_init(MEMORY[0x277CCA968]);
  v31 = objc_alloc(MEMORY[0x277CBEAF8]);
  v35 = objc_msgSend_initWithLocaleIdentifier_(v31, v32, @"en_US_POSIX", v33, v34);
  objc_msgSend_setLocale_(v30, v36, v35, v37, v38);

  objc_msgSend_setDateFormat_(v30, v39, @"yyyy'-'MM'-'dd'T'HH':'mm':'ss'Z'", v40, v41);
  v45 = objc_msgSend_timeZoneForSecondsFromGMT_(MEMORY[0x277CBEBB0], v42, 0, v43, v44);
  objc_msgSend_setTimeZone_(v30, v46, v45, v47, v48);

  v52 = objc_msgSend_objectAtIndexedSubscript_(v166, v49, 27, v50, v51);
  v56 = objc_msgSend_dateFromString_(v30, v53, v52, v54, v55);
  objc_msgSend_setDate_(self, v57, v56, v58, v59);

  v64 = objc_msgSend_attributes(self, v60, v61, v62, v63);
  objc_msgSend_clear(v64, v65, v66, v67, v68);

  objc_msgSend_p_setFormattedAttr_fromArray_(self, v69, 1, v166, v70);
  objc_msgSend_p_setFormattedAttr_fromArray_(self, v71, 2, v166, v72);
  objc_msgSend_p_setFormattedAttr_fromArray_(self, v73, 3, v166, v74);
  objc_msgSend_p_setFormattedAttr_fromArray_(self, v75, 4, v166, v76);
  objc_msgSend_p_setFormattedAttr_fromArray_(self, v77, 5, v166, v78);
  objc_msgSend_p_setFormattedAttr_fromArray_(self, v79, 6, v166, v80);
  objc_msgSend_p_setFormattedAttr_fromArray_(self, v81, 7, v166, v82);
  v86 = objc_msgSend_objectAtIndexedSubscript_(v166, v83, 8, v84, v85);
  v87 = objc_alloc(MEMORY[0x277CBEAF8]);
  v91 = objc_msgSend_initWithLocaleIdentifier_(v87, v88, @"en_US_POSIX", v89, v90);
  v95 = objc_msgSend_uppercaseStringWithLocale_(v86, v92, v91, v93, v94);
  v100 = objc_msgSend_attributes(self, v96, v97, v98, v99);
  objc_msgSend_setObject_atIndexedSubscript_(v100, v101, v95, 8, v102);

  objc_msgSend_p_setFormattedAttr_fromArray_(self, v103, 9, v166, v104);
  objc_msgSend_p_setFormattedAttr_fromArray_(self, v105, 10, v166, v106);
  objc_msgSend_p_setFormattedAttr_fromArray_(self, v107, 11, v166, v108);
  objc_msgSend_p_setFormattedAttr_fromArray_(self, v109, 12, v166, v110);
  objc_msgSend_p_setFormattedAttr_fromArray_(self, v111, 13, v166, v112);
  v116 = objc_msgSend_objectAtIndexedSubscript_(v166, v113, 14, v114, v115);
  v121 = objc_msgSend_attributes(self, v117, v118, v119, v120);
  objc_msgSend_setObject_atIndexedSubscript_(v121, v122, v116, 14, v123);

  v127 = objc_msgSend_objectAtIndexedSubscript_(v166, v124, 26, v125, v126);
  v132 = objc_msgSend_attributes(self, v128, v129, v130, v131);
  objc_msgSend_setObject_atIndexedSubscript_(v132, v133, v127, 26, v134);

  objc_msgSend_p_setFormattedAttr_fromArray_(self, v135, 15, v166, v136);
  objc_msgSend_p_setFormattedAttr_fromArray_(self, v137, 16, v166, v138);
  objc_msgSend_p_setFormattedAttr_fromArray_(self, v139, 17, v166, v140);
  v144 = objc_msgSend_objectAtIndexedSubscript_(v166, v141, 18, v142, v143);
  v149 = objc_msgSend_attributes(self, v145, v146, v147, v148);
  objc_msgSend_setObject_atIndexedSubscript_(v149, v150, v144, 18, v151);

  objc_msgSend_p_setFormattedAttr_fromArray_(self, v152, 19, v166, v153);
  objc_msgSend_p_setFormattedAttr_fromArray_(self, v154, 20, v166, v155);
  objc_msgSend_p_setFormattedAttr_fromArray_(self, v156, 21, v166, v157);
  objc_msgSend_p_setFormattedAttr_fromArray_(self, v158, 22, v166, v159);
  objc_msgSend_p_setFormattedAttr_fromArray_(self, v160, 23, v166, v161);
  objc_msgSend_p_setFormattedAttr_fromArray_(self, v162, 24, v166, v163);
  objc_msgSend_p_setFormattedAttr_fromArray_(self, v164, 25, v166, v165);
}

@end