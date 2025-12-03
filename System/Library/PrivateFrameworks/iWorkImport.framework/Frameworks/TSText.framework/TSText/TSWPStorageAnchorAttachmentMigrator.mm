@interface TSWPStorageAnchorAttachmentMigrator
- (id)commandsForDidInsertIntoDestinationWPStorage:(id)storage insertionLocation:(unint64_t)location dolcContext:(id)context;
- (id)didCopyFromSourceWPStorage:(id)storage toTemporaryStorage:(id)temporaryStorage copiedRange:(_NSRange)range;
@end

@implementation TSWPStorageAnchorAttachmentMigrator

- (id)didCopyFromSourceWPStorage:(id)storage toTemporaryStorage:(id)temporaryStorage copiedRange:(_NSRange)range
{
  location = range.location;
  storageCopy = storage;
  temporaryStorageCopy = temporaryStorage;
  v59 = storageCopy;
  v61 = objc_msgSend_documentRoot(storageCopy, v8, v9, temporaryStorageCopy);
  v63 = temporaryStorageCopy;
  v65 = v63;
  if (objc_opt_respondsToSelector())
  {
    v64 = objc_msgSend_attributeArrayForKind_withCreate_(storageCopy, v10, 4, 0);
    v12 = objc_msgSend_attributeArrayForKind_withCreate_(v63, v11, 4, 0);
    v65 = v63;
    if (v64)
    {
      v13 = v12;
      v65 = v63;
      if (v12)
      {
        v65 = v63;
        if (*(v12 + 24))
        {
          v14 = 0;
          v65 = v63;
          do
          {
            objc_opt_class();
            v15 = TSWPAttributeArray::objectForAttributeIndex(v13, v14);
            v16 = TSUDynamicCast();

            if (v16)
            {
              v17 = TSWPAttributeArray::charIndexForAttributeIndex(v13, v14);
              v19 = TSWPAttributeArray::exactAttributeIndexForCharIndex(v64, v17 + location);
              if (v19 == 0x7FFFFFFFFFFFFFFFLL)
              {
                v20 = MEMORY[0x277D81150];
                v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "[TSWPStorageAnchorAttachmentMigrator didCopyFromSourceWPStorage:toTemporaryStorage:copiedRange:]");
                v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorageAnchorAttachmentMigrator.mm");
                objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v24, v21, v23, 93, 0, "Source and temp storage attachment arrays do not match.");

                objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26);
                v27 = 0;
                objc_msgSend_drawable(0, v28, v29);
              }

              else
              {
                objc_opt_class();
                v30 = TSWPAttributeArray::objectForAttributeIndex(v64, v19);
                v27 = TSUDynamicCast();

                objc_msgSend_drawable(v27, v31, v32);
              }
              v34 = ;
              if (!v34 || (v37 = objc_msgSend_indexForObject_(v61, v33, v34), v37 == -1))
              {
                v41 = v65;
              }

              else
              {
                v38 = objc_msgSend_charIndexPlacementIndexArray(self, v35, v36);

                if (v38)
                {
                  v41 = v65;
                }

                else
                {
                  v42 = objc_msgSend_range(v63, v39, v40);
                  v44 = v43;
                  v46 = objc_msgSend_context(v63, v43, v45);
                  v41 = objc_msgSend_newSubstorageWithRange_context_flags_(v63, v47, v42, v44, v46, 0);

                  v48 = objc_alloc_init(MEMORY[0x277CBEB18]);
                  objc_msgSend_setCharIndexPlacementIndexArray_(self, v49, v48);
                }

                v50 = [TSWPCharIndexPlacementIndex alloc];
                v52 = objc_msgSend_initWithCharIndex_placmentIndex_drawableAttachment_(v50, v51, v17, v37, v16);
                v55 = objc_msgSend_charIndexPlacementIndexArray(self, v53, v54);
                objc_msgSend_addObject_(v55, v56, v52);

                objc_msgSend_replaceCharactersInRange_withString_undoTransaction_(v41, v57, v17, 1, @" ", 0);
              }

              v65 = v41;
            }

            ++v14;
          }

          while (v14 < *(v13 + 24));
        }
      }
    }
  }

  return v65;
}

- (id)commandsForDidInsertIntoDestinationWPStorage:(id)storage insertionLocation:(unint64_t)location dolcContext:(id)context
{
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);

  return v5;
}

@end