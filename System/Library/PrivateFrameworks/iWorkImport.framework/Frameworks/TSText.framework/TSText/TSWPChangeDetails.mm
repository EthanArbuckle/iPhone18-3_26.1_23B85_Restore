@interface TSWPChangeDetails
- (BOOL)isEqual:(id)equal;
- (BOOL)isEquivalentToObject:(id)object;
- (BOOL)isInDocument;
- (NSDate)date;
- (NSString)annotationUUID;
- (NSString)changeTrackingContentFormatString;
- (NSString)changeTrackingContentString;
- (NSString)changeTrackingTitleString;
- (NSString)description;
- (NSString)formattedString;
- (NSString)parentUUID;
- (TSKAnnotationAuthor)author;
- (TSWPChangeDetails)initWithChange:(id)change;
- (_NSRange)p_rangeInStorage;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)p_updateChangeStrings;
- (void)setAuthor:(id)author;
@end

@implementation TSWPChangeDetails

- (TSWPChangeDetails)initWithChange:(id)change
{
  changeCopy = change;
  v9.receiver = self;
  v9.super_class = TSWPChangeDetails;
  v6 = [(TSWPChangeDetails *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_change, change);
  }

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v13 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    v9 = objc_msgSend_change(self, v7, v8);
    v12 = objc_msgSend_change(v6, v10, v11);

    v13 = v9 == v12;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (BOOL)isEquivalentToObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  v5 = TSUDynamicCast();

  v8 = objc_msgSend_change(self, v6, v7);
  v11 = objc_msgSend_change(v5, v9, v10);
  isEquivalentToObject = objc_msgSend_isEquivalentToObject_(v8, v12, v11);

  return isEquivalentToObject;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x277D811E8]);
  v6 = objc_msgSend_change(self, v4, v5);
  objc_msgSend_addObject_(v3, v7, v6);

  v10 = objc_msgSend_hashValue(v3, v8, v9);
  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = MEMORY[0x277D81150];
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSWPChangeDetails copyWithZone:]");
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPChangeDetails.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v8, v5, v7, 69, 0, "please don't call me");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v9, v10);
  v11 = [TSWPChangeDetails alloc];
  v14 = objc_msgSend_change(self, v12, v13);
  v16 = objc_msgSend_initWithChange_(v11, v15, v14);

  return v16;
}

- (TSKAnnotationAuthor)author
{
  v3 = objc_msgSend_change(self, a2, v2);
  v6 = objc_msgSend_session(v3, v4, v5);
  v9 = objc_msgSend_author(v6, v7, v8);

  return v9;
}

- (void)setAuthor:(id)author
{
  authorCopy = author;
  v11 = objc_msgSend_change(self, v5, v6);
  v9 = objc_msgSend_session(v11, v7, v8);
  objc_msgSend_setAuthor_(v9, v10, authorCopy);
}

- (NSDate)date
{
  v3 = objc_msgSend_change(self, a2, v2);
  v6 = objc_msgSend_date(v3, v4, v5);

  return v6;
}

- (NSString)changeTrackingContentString
{
  objc_msgSend_p_updateChangeStrings(self, a2, v2);
  changeTrackingContentString = self->_changeTrackingContentString;

  return changeTrackingContentString;
}

- (NSString)changeTrackingTitleString
{
  objc_msgSend_p_updateChangeStrings(self, a2, v2);
  changeTrackingTitleString = self->_changeTrackingTitleString;

  return changeTrackingTitleString;
}

- (NSString)formattedString
{
  objc_msgSend_p_updateChangeStrings(self, a2, v2);
  formattedString = self->_formattedString;

  return formattedString;
}

- (NSString)changeTrackingContentFormatString
{
  v3 = sub_276E32640(self, a2, v2);
  v5 = objc_msgSend_localizedStringForKey_value_table_(v3, v4, @"%1$@%2$@", &stru_28860A0F0, @"TSText");

  return v5;
}

- (_NSRange)p_rangeInStorage
{
  v24 = 0;
  v25 = &v24;
  v26 = 0x3010000000;
  v27 = &unk_276FDE562;
  v28 = *MEMORY[0x277D81490];
  v4 = objc_msgSend_change(self, a2, v2);
  v7 = objc_msgSend_parentStorage(v4, v5, v6);

  if (v7)
  {
    v10 = objc_msgSend_change(self, v8, v9);
    isInsertion = objc_msgSend_isInsertion(v10, v11, v12);

    v17 = objc_msgSend_range(v7, v14, v15);
    if (isInsertion)
    {
      v18 = 15;
    }

    else
    {
      v18 = 16;
    }

    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = sub_276E35930;
    v23[3] = &unk_27A6F5900;
    v23[4] = self;
    v23[5] = &v24;
    objc_msgSend_enumerateWithAttributeKind_inRange_usingBlock_(v7, v16, v18, v17, v16, v23);
  }

  v19 = v25[4];
  v20 = v25[5];

  _Block_object_dispose(&v24, 8);
  v21 = v19;
  v22 = v20;
  result.length = v22;
  result.location = v21;
  return result;
}

- (void)p_updateChangeStrings
{
  v4 = objc_msgSend_date(self, a2, v2);
  v7 = objc_msgSend_dateForLastChangeStringUpdate(self, v5, v6);
  isEqualToDate = objc_msgSend_isEqualToDate_(v4, v8, v7);

  if (isEqualToDate)
  {
    return;
  }

  v12 = objc_msgSend_change(self, v10, v11);
  v15 = objc_msgSend_parentStorage(v12, v13, v14);

  v20 = objc_msgSend_p_rangeInStorage(self, v16, v17);
  if (v20 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v21 = &stru_28860A0F0;
    v22 = objc_msgSend_length(&stru_28860A0F0, v18, v19);
  }

  else
  {
    if (v18 >= 0x400)
    {
      objc_msgSend_substringWithRange_(v15, v18, v20, 1024);
    }

    else
    {
      objc_msgSend_substringWithRange_(v15, v18, v20, v18);
    }
    v21 = ;
    v22 = objc_msgSend_length(v21, v25, v26);
  }

  if (!v22)
  {
    v30 = 0;
    v29 = 0;
    goto LABEL_16;
  }

  v27 = v22;
  v29 = objc_msgSend_characterAtIndex_(v21, v23, 0);
  v30 = v27 != 1;
  if (v27 == 1)
  {
    v30 = 0;
LABEL_16:
    v32 = sub_276D363D4(v29, v30, v24);
    if (v29 == 10)
    {
      v33 = objc_msgSend_columnStyleAtCharIndex_effectiveRange_(v15, v28, v20, 0);
      v35 = objc_msgSend_columnStyleAtCharIndex_effectiveRange_(v15, v34, v20 + 1, 0);
      v38 = v35;
      if (v33 != v35)
      {
        v39 = sub_276E32640(v35, v36, v37);
        v41 = v39;
        if (v30)
        {
          objc_msgSend_localizedStringForKey_value_table_(v39, v40, @"Layout Breaks", &stru_28860A0F0, @"TSText");
        }

        else
        {
          objc_msgSend_localizedStringForKey_value_table_(v39, v40, @"Layout Break", &stru_28860A0F0, @"TSText");
        }
        v42 = ;

        v32 = v42;
      }
    }

    goto LABEL_24;
  }

  v31 = 1;
  while (v29 == objc_msgSend_characterAtIndex_(v21, v28, v31))
  {
    if (v27 == ++v31)
    {
      goto LABEL_16;
    }
  }

  v32 = 0;
LABEL_24:
  v43 = objc_msgSend_change(self, v28, v24);
  isInsertion = objc_msgSend_isInsertion(v43, v44, v45);

  if (!isInsertion)
  {
    if (v32)
    {
      v56 = v32;

      v21 = v56;
    }

    v55 = v21;
    v21 = sub_276E32640(v47, v48, v49);
    v52 = objc_msgSend_localizedStringForKey_value_table_(v21, v57, @"Deleted: ", &stru_28860A0F0, @"TSText");
    goto LABEL_30;
  }

  v50 = sub_276E32640(v47, v48, v49);
  v52 = objc_msgSend_localizedStringForKey_value_table_(v50, v51, @"Added: ", &stru_28860A0F0, @"TSText");

  if (v32)
  {
    v55 = v32;
LABEL_30:

    v21 = v55;
  }

  v58 = objc_msgSend_tswp_invisibleCharacterSet(MEMORY[0x277CCA900], v53, v54);
  if (objc_msgSend_rangeOfCharacterFromSet_(v21, v59, v58) != 0x7FFFFFFFFFFFFFFFLL)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_276E35F18;
    block[3] = &unk_27A6F44B0;
    v97 = v58;
    if (qword_280A58528 != -1)
    {
      dispatch_once(&qword_280A58528, block);
    }

    if (objc_msgSend_rangeOfCharacterFromSet_(v21, v61, qword_280A58520) == 0x7FFFFFFFFFFFFFFFLL)
    {
      v64 = sub_276E32640(0x7FFFFFFFFFFFFFFFLL, v62, v63);
      v66 = objc_msgSend_localizedStringForKey_value_table_(v64, v65, @"Invisible Characters", &stru_28860A0F0, @"TSText");

      v21 = v64;
    }

    else
    {
      v95 = v15;
      v66 = objc_msgSend_mutableCopy(v21, v62, v63);
      for (i = 0; i != 0x7FFFFFFFFFFFFFFFLL; i = &v78[v77])
      {
        if (i >= objc_msgSend_length(v66, v67, v68))
        {
          break;
        }

        v72 = qword_280A58518;
        v73 = objc_msgSend_length(v66, v70, v71);
        v75 = objc_msgSend_rangeOfCharacterFromSet_options_range_(v66, v74, v72, 0, i, v73 - i);
        if (v75 == 0x7FFFFFFFFFFFFFFFLL)
        {
          break;
        }

        v77 = v75;
        v78 = v76;
        v79 = objc_msgSend_characterAtIndex_(v66, v76, v75);
        switch(v79)
        {
          case 9:
            objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v80, @"%C", 8594);
            break;
          case 10:
            objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v80, @"%C", 182);
            break;
          case 8232:
            objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v80, @"%C", 9166);
            break;
          default:
            objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v80, @"%C", 32);
            break;
        }
        v81 = ;
        objc_msgSend_replaceCharactersInRange_withString_(v66, v82, v77, v78, v81);
      }

      v15 = v95;
    }

    v21 = v66;
  }

  objc_msgSend_setChangeTrackingContentString_(self, v60, v21);
  objc_msgSend_setChangeTrackingTitleString_(self, v83, v52);
  v84 = MEMORY[0x277CCACA8];
  v87 = objc_msgSend_changeTrackingContentFormatString(self, v85, v86);
  v89 = objc_msgSend_stringWithFormat_(v84, v88, v87, v52, v21);
  objc_msgSend_setFormattedString_(self, v90, v89);

  v93 = objc_msgSend_date(self, v91, v92);
  objc_msgSend_setDateForLastChangeStringUpdate_(self, v94, v93);
}

- (NSString)description
{
  v4 = objc_msgSend_change(self, a2, v2);
  if (objc_msgSend_isInsertion(v4, v5, v6))
  {
    v9 = @"insertion";
  }

  else
  {
    v10 = objc_msgSend_change(self, v7, v8);
    isDeletion = objc_msgSend_isDeletion(v10, v11, v12);
    v14 = @"unknown";
    if (isDeletion)
    {
      v14 = @"deletion";
    }

    v9 = v14;
  }

  v15 = MEMORY[0x277CCACA8];
  v16 = objc_opt_class();
  v17 = NSStringFromClass(v16);
  v20 = objc_msgSend_change(self, v18, v19);
  v23 = objc_msgSend_date(v20, v21, v22);
  v26 = objc_msgSend_changeTrackingContentString(self, v24, v25);
  v28 = objc_msgSend_stringWithFormat_(v15, v27, @"<%@: %p, type: %@, date: %@, content: '%@'>", v17, self, v9, v23, v26);

  return v28;
}

- (BOOL)isInDocument
{
  v3 = objc_msgSend_change(self, a2, v2);
  v6 = objc_msgSend_parentStorage(v3, v4, v5);
  v9 = objc_msgSend_tsp_isInDocument(v6, v7, v8);

  return v9;
}

- (NSString)annotationUUID
{
  v3 = objc_msgSend_change(self, a2, v2);
  v6 = objc_msgSend_textAttributeUUIDString(v3, v4, v5);

  return v6;
}

- (NSString)parentUUID
{
  v3 = objc_msgSend_change(self, a2, v2);
  v6 = objc_msgSend_parentStorage(v3, v4, v5);
  v9 = objc_msgSend_objectUUID(v6, v7, v8);
  v12 = objc_msgSend_UUIDString(v9, v10, v11);

  return v12;
}

@end