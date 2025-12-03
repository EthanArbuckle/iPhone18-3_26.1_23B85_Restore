@interface TSWPTrackedDeletion
- (TSWPTrackedDeletion)initWithRange:(_NSRange)range changeSession:(id)session;
- (_NSRange)insertedRange;
- (void)performWithStorage:(id)storage delta:(int64_t)delta actionBuilder:(void *)builder withFlags:(unsigned int)flags replaceBlock:(id)block;
@end

@implementation TSWPTrackedDeletion

- (TSWPTrackedDeletion)initWithRange:(_NSRange)range changeSession:(id)session
{
  length = range.length;
  location = range.location;
  sessionCopy = session;
  v19.receiver = self;
  v19.super_class = TSWPTrackedDeletion;
  v10 = [(TSWPTrackedDeletion *)&v19 init];
  if (v10)
  {
    if (!length)
    {
      v11 = MEMORY[0x277D81150];
      v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSWPTrackedDeletion initWithRange:changeSession:]");
      v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPTrackedDeletion.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v15, v12, v14, 33, 0, "Can't track a deletion over an empty range");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17);
    }

    v10->_range.location = location;
    v10->_range.length = length;
    objc_storeStrong(&v10->_changeSession, session);
  }

  return v10;
}

- (void)performWithStorage:(id)storage delta:(int64_t)delta actionBuilder:(void *)builder withFlags:(unsigned int)flags replaceBlock:(id)block
{
  storageCopy = storage;
  blockCopy = block;
  location = self->_range.location;
  if (delta)
  {
    location += delta;
    self->_range.location = location;
  }

  length = self->_range.length;
  v67 = 0;
  v68 = &v67;
  v69 = 0x4812000000;
  v70 = sub_276E1D648;
  v71 = sub_276E1D66C;
  v72 = &unk_276FDE562;
  memset(v73, 0, 24);
  v66[0] = MEMORY[0x277D85DD0];
  v66[1] = 3221225472;
  v66[2] = sub_276E1D698;
  v66[3] = &unk_27A6F39A0;
  v66[4] = &v67;
  objc_msgSend_enumerateSmartFieldsWithAttributeKind_inRange_usingBlock_(storageCopy, v12, 7, location, length, v66);
  v16 = v68;
  for (i = v68[6]; i != v16[7]; i += 24)
  {
    v18 = *i;
    v19 = *(i + 8);
    v20 = *(i + 16);
    v23 = objc_msgSend_styleAttributeArrayKind(v18, v21, v22);
    objc_msgSend_applyObject_toCharRange_forKind_actionBuilder_(storageCopy, v24, 0, v19, v20, v23, builder);

    v16 = v68;
  }

  v59 = 0;
  v60 = &v59;
  v61 = 0x4812000000;
  v62 = sub_276E1D648;
  v63 = sub_276E1D66C;
  v64 = &unk_276FDE562;
  memset(v65, 0, sizeof(v65));
  v58[0] = MEMORY[0x277D85DD0];
  v58[1] = 3221225472;
  v58[2] = sub_276E1D848;
  v58[3] = &unk_27A6F39A0;
  v58[4] = &v59;
  objc_msgSend_enumerateWithAttributeKind_inRange_usingBlock_(storageCopy, v15, 14, location, length, v58);
  v27 = v60;
  for (j = v60[6]; j != v27[7]; j += 3)
  {
    objc_msgSend_setDictationAndAutocorrection_forCharRange_actionBuilder_(storageCopy, v25, 0, j[1], j[2], builder);
    v27 = v60;
  }

  v31 = objc_msgSend_deletionChangesTable(storageCopy, v25, v26);
  if (v31)
  {
    objc_msgSend_range(storageCopy, v29, v30);
    v57.location = NSExpandedRange();
    v57.length = v32;
    TSWPAttributeArray::begin(v31, &v57, &v55);
    TSWPAttributeArray::end(v31, &v57, v33, v54);
    for (k = v56; k != v54[1]; k = ++v56)
    {
      v35 = TSWPAttributeArray::iterator::operator*(&v55);
      if (objc_msgSend_canMergeWithKind_session_(v35, v36, 2, self->_changeSession))
      {
        v37 = TSWPAttributeArray::iterator::object(&v55);
        v74.location = TSWPAttributeArray::rangeForAttributeIndex(v55, v56);
        v75.location = location;
        v75.length = length;
        v38 = NSUnionRange(v74, v75);
        location = v38.location;
        length = v38.length;

        if (!v37)
        {
          break;
        }

        v41 = objc_msgSend_context(storageCopy, v39, v40);
        v43 = objc_msgSend_copyWithContext_(v37, v42, v41);

        goto LABEL_17;
      }
    }
  }

  v44 = [TSWPChange alloc];
  v37 = objc_msgSend_context(storageCopy, v45, v46);
  v43 = objc_msgSend_initWithContext_kind_session_(v44, v47, v37, 2, self->_changeSession);
LABEL_17:

  objc_msgSend_applyObject_toCharRange_forKind_actionBuilder_(storageCopy, v48, v43, location, length, 16, builder);
  v51 = objc_msgSend_date(MEMORY[0x277CBEAA8], v49, v50);
  objc_msgSend_applyObject_toCharRange_forKind_actionBuilder_(storageCopy, v52, v51, location, length, 16, builder);

  _Block_object_dispose(&v59, 8);
  v57.location = v65;
  sub_276E1D908(&v57);
  _Block_object_dispose(&v67, 8);
  v59 = v73;
  sub_276E1D908(&v59);
}

- (_NSRange)insertedRange
{
  v2 = self->_range.length + self->_range.location;
  v3 = 0;
  result.length = v3;
  result.location = v2;
  return result;
}

@end