@interface TSPDatabaseArchiveManager
+ (BOOL)_processDistributableArchiveEntry:(id)a3 database:(id)a4 fileManager:(id)a5 error:(id *)a6;
+ (BOOL)_processGetRelationships:(id)a3 database:(id)a4 error:(id *)a5;
+ (BOOL)_processLoad:(id)a3 classType:(int *)a4 database:(id)a5 fileManager:(id)a6 error:(id *)a7;
+ (BOOL)populateDistributableArchiveEntry:(id)a3 database:(id)a4 fileManager:(id)a5;
@end

@implementation TSPDatabaseArchiveManager

+ (BOOL)populateDistributableArchiveEntry:(id)a3 database:(id)a4 fileManager:(id)a5
{
  v8 = a3;
  v9 = a4;
  v11 = a5;
  if (!v8)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "+[TSPDatabaseArchiveManager populateDistributableArchiveEntry:database:fileManager:]");
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDistributableWriter.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v16, v13, v15, 240, 0, "Invalid parameter not satisfying: %{public}s", "distributableArchiveEntry != nil");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18);
  }

  v38 = 0;
  v19 = objc_msgSend__processDistributableArchiveEntry_database_fileManager_error_(a1, v10, v8, v9, v11, &v38);
  v21 = v38;
  if ((v19 & 1) == 0)
  {
    v22 = MEMORY[0x277D81150];
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "+[TSPDatabaseArchiveManager populateDistributableArchiveEntry:database:fileManager:]");
    v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDistributableWriter.mm");
    v26 = objc_opt_class();
    v27 = NSStringFromClass(v26);
    v30 = objc_msgSend_domain(v21, v28, v29);
    v33 = objc_msgSend_code(v21, v31, v32);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v22, v34, v23, v25, 243, 0, "Failed to populate distributable archive entry %@ and got error. errorClass=%{public}@, domain=%{public}@, code=%zd (%@) ", v8, v27, v30, v33, v21);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v35, v36);
  }

  return v19;
}

+ (BOOL)_processLoad:(id)a3 classType:(int *)a4 database:(id)a5 fileManager:(id)a6 error:(id *)a7
{
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v16 = objc_msgSend_identifier(v11, v14, v15);
  v18 = objc_msgSend_queryObjectWithIdentifier_error_(v12, v17, v16, a7);
  v21 = v18;
  if (!v18)
  {
    goto LABEL_13;
  }

  if (a4)
  {
    *a4 = objc_msgSend_classType(v18, v19, v20);
  }

  if (!objc_msgSend_hasDataState(v21, v19, v20))
  {
    v32 = objc_msgSend_fileState(v21, v22, v23);
    v34 = objc_msgSend_representationForIdentifier_(v13, v33, v32);
    if (!objc_msgSend_setDataRepresentation_shouldCopy_error_(v11, v35, v34, 0, a7))
    {

      goto LABEL_13;
    }

    if (objc_opt_respondsToSelector())
    {
      objc_msgSend_setFileStateIdentifier_(v11, v36, v32);
    }

LABEL_11:
    v37 = 1;
    goto LABEL_16;
  }

  v24 = [TSPDatabaseDataRepresentation alloc];
  v27 = objc_msgSend_dataState(v21, v25, v26);
  v29 = objc_msgSend_initWithDatabase_identifier_(v24, v28, v12, v27);
  shouldCopy_error = objc_msgSend_setDataRepresentation_shouldCopy_error_(v11, v30, v29, 1, a7);

  if (shouldCopy_error)
  {
    goto LABEL_11;
  }

LABEL_13:
  v38 = MEMORY[0x277D81150];
  v39 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "+[TSPDatabaseArchiveManager _processLoad:classType:database:fileManager:error:]");
  v41 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v40, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDistributableWriter.mm");
  v44 = objc_msgSend_identifier(v11, v42, v43);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v38, v45, v39, v41, 272, 0, "Unable to load object with identifier %llu from database", v44);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v46, v47);
  if (objc_opt_respondsToSelector())
  {
    v37 = objc_msgSend_fromExternalReference(v11, v48, v49);
  }

  else
  {
    v37 = 0;
  }

LABEL_16:

  return v37;
}

+ (BOOL)_processDistributableArchiveEntry:(id)a3 database:(id)a4 fileManager:(id)a5 error:(id *)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v19 = 0;
  v12 = objc_opt_class();
  if (objc_msgSend__processLoad_classType_database_fileManager_error_(v12, v13, v9, &v19, v10, v11, a6))
  {
    v14 = objc_opt_class();
    Relationships_database_error = objc_msgSend__processGetRelationships_database_error_(v14, v15, v9, v10, a6);
    objc_msgSend_setClassType_(v9, v17, v19);
  }

  else
  {
    Relationships_database_error = 0;
  }

  return Relationships_database_error;
}

+ (BOOL)_processGetRelationships:(id)a3 database:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v11 = objc_msgSend_identifier(v7, v9, v10);
  v14 = objc_msgSend_newRelationshipTargetsForSourceIdentifier_error_(v8, v12, v11, a5);
  if (v14)
  {
    objc_msgSend_setOwnedIds_(v7, v13, v14);
    sub_276A579A4(v14, *(v14 + 8));
    MEMORY[0x277C9F670](v14, 0x1020C4062D53EE8);
  }

  return v14 != 0;
}

@end