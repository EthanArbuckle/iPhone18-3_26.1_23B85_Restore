@interface TSCHStyleOwnerPath
+ (id)instanceWithArchive:(const void *)a3 unarchiver:(id)a4;
+ (id)styleOwnerPathForSemanticTag:(id)a3 ofChart:(id)a4;
+ (id)styleOwnerPathForStyleOwner:(id)a3;
+ (id)styleOwnerPathWithUUIDs:(id)a3;
+ (id)verifiedUUIDs:(id)a3;
+ (unsigned)styleOwnerPathTypeForStyleOwner:(id)a3;
- (BOOL)isEqual:(id)a3;
- (Class)genericPropertyMapClass;
- (TSCHStyleOwnerPath)initWithArchive:(const void *)a3 unarchiver:(id)a4;
- (TSCHStyleOwnerPath)initWithUUIDs:(id)a3;
- (id)TSUUUIDPath;
- (id)p_axisStyleOwnerForChart:(id)a3;
- (id)p_createUUIDDecoder;
- (id)p_referenceLineStyleOwnerForChart:(id)a3;
- (id)p_seriesStyleOwnerForChart:(id)a3;
- (id)pathByPrefixingWithUUIDs:(id)a3;
- (id)styleOwnerForChart:(id)a3;
- (int)styleOwnerType;
- (unsigned)styleOwnerPathType;
- (void)saveToArchive:(void *)a3 archiver:(id)a4;
@end

@implementation TSCHStyleOwnerPath

+ (id)verifiedUUIDs:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v3 = a3;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, v5, v6, v7, &v18, v22, 16);
  v9 = v3;
  if (v8)
  {
    v10 = *v19;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v3);
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v9 = 0;
          goto LABEL_11;
        }
      }

      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v12, v13, v14, v15, &v18, v22, 16);
      if (v8)
      {
        continue;
      }

      break;
    }

    v9 = v3;
  }

LABEL_11:

  v16 = v9;
  return v9;
}

+ (id)styleOwnerPathWithUUIDs:(id)a3
{
  v4 = a3;
  v5 = [a1 alloc];
  v10 = objc_msgSend_initWithUUIDs_(v5, v6, v7, v8, v9, v4);

  return v10;
}

- (TSCHStyleOwnerPath)initWithUUIDs:(id)a3
{
  v4 = a3;
  v38.receiver = self;
  v38.super_class = TSCHStyleOwnerPath;
  v5 = [(TSCHStyleOwnerPath *)&v38 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v11 = objc_msgSend_verifiedUUIDs_(v6, v7, v8, v9, v10, v4);
    if (objc_msgSend_count(v11, v12, v13, v14, v15))
    {
      v20 = objc_msgSend_copy(v11, v16, v17, v18, v19);
      uuids = v5->_uuids;
      v5->_uuids = v20;
    }

    else
    {
      v22 = MEMORY[0x277D81150];
      v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, v17, v18, v19, "[TSCHStyleOwnerPath initWithUUIDs:]");
      v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, v25, v26, v27, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHStyleOwnerPath.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v22, v29, v30, v31, v32, v23, v28, 46, 0, "invalid uuids %@", v4);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v33, v34, v35, v36);
      uuids = v5;
      v5 = 0;
    }
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    isEqual = 1;
  }

  else
  {
    objc_opt_class();
    v6 = TSUSpecificCast();
    if (v6)
    {
      isEqual = objc_msgSend_isEqual_(self->_uuids, v5, v7, v8, v9, v6[1]);
    }

    else
    {
      isEqual = 0;
    }
  }

  return isEqual;
}

- (id)TSUUUIDPath
{
  v3 = objc_alloc(MEMORY[0x277D81360]);
  v8 = objc_msgSend_initWithArray_(v3, v4, v5, v6, v7, self->_uuids);

  return v8;
}

- (id)pathByPrefixingWithUUIDs:(id)a3
{
  v49 = *MEMORY[0x277D85DE8];
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v3 = a3;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, v5, v6, v7, &v44, v48, 16);
  if (v8)
  {
    v9 = *v45;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v45 != v9)
        {
          objc_enumerationMutation(v3);
        }

        v11 = *(*(&v44 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v16 = MEMORY[0x277D81150];
          v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v13, v14, v15, "[TSCHStyleOwnerPath pathByPrefixingWithUUIDs:]");
          v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, v19, v20, v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHStyleOwnerPath.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v23, v24, v25, v26, v17, v22, 83, 0, "invalid object type for %@ in uuid array %@", v11, v3);

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v28, v29, v30);
        }
      }

      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v12, v13, v14, v15, &v44, v48, 16);
    }

    while (v8);
  }

  v35 = objc_msgSend_arrayByAddingObjectsFromArray_(v3, v31, v32, v33, v34, self->_uuids);
  v36 = objc_opt_class();
  v41 = objc_msgSend_styleOwnerPathWithUUIDs_(v36, v37, v38, v39, v40, v35);

  return v41;
}

+ (id)instanceWithArchive:(const void *)a3 unarchiver:(id)a4
{
  v6 = a4;
  v7 = [a1 alloc];
  v12 = objc_msgSend_initWithArchive_unarchiver_(v7, v8, v9, v10, v11, a3, v6);

  return v12;
}

- (TSCHStyleOwnerPath)initWithArchive:(const void *)a3 unarchiver:(id)a4
{
  v44.receiver = self;
  v44.super_class = TSCHStyleOwnerPath;
  v5 = [(TSCHStyleOwnerPath *)&v44 init:a3];
  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x277CBEA60]);
    v11 = objc_msgSend_tsp_initWithProtobufUUIDArray_(v6, v7, v8, v9, v10, a3 + 16);
    v12 = objc_opt_class();
    v17 = objc_msgSend_verifiedUUIDs_(v12, v13, v14, v15, v16, v11);
    if (objc_msgSend_count(v17, v18, v19, v20, v21))
    {
      v26 = objc_msgSend_copy(v17, v22, v23, v24, v25);
      uuids = v5->_uuids;
      v5->_uuids = v26;
    }

    else
    {
      v28 = MEMORY[0x277D81150];
      v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, v23, v24, v25, "[TSCHStyleOwnerPath(PersistenceAdditions) initWithArchive:unarchiver:]");
      v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, v31, v32, v33, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHStyleOwnerPath.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v28, v35, v36, v37, v38, v29, v34, 106, 0, "invalid uuids %@", v11);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v39, v40, v41, v42);
      uuids = v5;
      v5 = 0;
    }
  }

  return v5;
}

- (void)saveToArchive:(void *)a3 archiver:(id)a4
{
  if (!objc_msgSend_count(self->_uuids, a2, v4, v5, v6, a3, a4))
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v9, v10, v11, "[TSCHStyleOwnerPath(PersistenceAdditions) saveToArchive:archiver:]");
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v15, v16, v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHStyleOwnerPath.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v19, v20, v21, v22, v13, v18, 114, 0, "invalid empty uuids");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25, v26);
  }

  uuids = self->_uuids;

  MEMORY[0x2821F9670](uuids, sel_tsp_saveToProtobufUUIDArray_, v9, v10, v11);
}

+ (unsigned)styleOwnerPathTypeForStyleOwner:(id)a3
{
  v3 = a3;
  v5 = TSUCheckedProtocolCast();
  if (!v5)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, v6, v7, v8, "+[TSCHStyleOwnerPath(TSCHStyleOwnerCollaborationSupporting) styleOwnerPathTypeForStyleOwner:]", &unk_288570A98);
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, v12, v13, v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHStyleOwningImplementation.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v16, v17, v18, v19, v10, v15, 962, 0, "invalid nil value for '%{public}s'", "styleOwnerCollaborationSupport");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22, v23);
  }

  v24 = objc_opt_class();
  v30 = objc_msgSend_styleOwnerPathType(v24, v25, v26, v27, v28);
  if (!v30)
  {
    v34 = MEMORY[0x277D81150];
    v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, v31, v32, v33, "+[TSCHStyleOwnerPath(TSCHStyleOwnerCollaborationSupporting) styleOwnerPathTypeForStyleOwner:]");
    v40 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v36, v37, v38, v39, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHStyleOwningImplementation.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v34, v41, v42, v43, v44, v35, v40, 964, 0, "no path found for style owner %@", v3);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v45, v46, v47, v48);
  }

  return v30;
}

+ (id)styleOwnerPathForSemanticTag:(id)a3 ofChart:(id)a4
{
  v170[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v12 = objc_msgSend_styleOwnerRefForSemanticTag_(v7, v8, v9, v10, v11, v6);
  v18 = objc_msgSend_styleOwnerForRef_(v7, v13, v14, v15, v16, v12);
  if (v18)
  {
    v22 = objc_msgSend_styleOwnerPathForStyleOwner_(a1, v17, v19, v20, v21, v18);
    goto LABEL_35;
  }

  v23 = objc_msgSend_type(v6, v17, v19, v20, v21);
  v24 = sub_2762E611C(v23);
  if (v24)
  {
    v29 = v24;
    v30 = objc_msgSend_UUIDEncoderWithStyleOwnerPathType_(TSCHStyleOwnerUUIDEncoder, v25, v26, v27, v28, v24);
    v35 = v30;
    if (v29 > 3)
    {
      if (v29 != 4)
      {
        if (v29 != 5)
        {
          v54 = 0;
          v161 = objc_msgSend_count(0, v31, v32, v33, v34);
          goto LABEL_31;
        }

        v41 = objc_msgSend_index(v6, v31, v32, v33, v34);
        objc_msgSend_encodeUInt64FromNSUInteger_(v35, v42, v43, v44, v45, v41);
        v36 = objc_msgSend_encodedUUID(v35, v46, v47, v48, v49);
        v167 = v36;
        objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v50, v51, v52, v53, &v167, 1);
        goto LABEL_11;
      }

      v107 = objc_msgSend_chartType(v7, v31, v32, v33, v34);
      v36 = objc_msgSend_categoryAxisIDs(v107, v108, v109, v110, v111);

      v116 = objc_msgSend_count(v36, v112, v113, v114, v115);
      if (v116 > objc_msgSend_index(v6, v117, v118, v119, v120))
      {
        v125 = objc_msgSend_index(v6, v121, v122, v123, v124);
        v130 = objc_msgSend_objectAtIndexedSubscript_(v36, v126, v127, v128, v129, v125);
        if (v130)
        {
          v83 = v130;
          v135 = objc_msgSend_type(v130, v131, v132, v133, v134);
          if (v135 >= 256)
          {
            sub_2764A8248();
            LOBYTE(v135) = -1;
          }

          else if (v135 < 0)
          {
            sub_2764A81C4();
            LOBYTE(v135) = 0;
          }

          objc_msgSend_encodeByte_(v35, v136, v137, v138, v139, v135);
          v144 = objc_msgSend_ordinal(v83, v140, v141, v142, v143);
          if (v144 >= 0x100)
          {
            sub_2764A82CC();
            LOBYTE(v144) = -1;
          }

          objc_msgSend_encodeByte_(v35, v145, v146, v147, v148, v144);
          v102 = objc_msgSend_encodedUUID(v35, v149, v150, v151, v152);
          v168 = v102;
          objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v153, v154, v155, v156, &v168, 1);
          goto LABEL_28;
        }
      }
    }

    else
    {
      if ((v29 - 1) < 2)
      {
        v36 = objc_msgSend_encodedUUID(v30, v31, v32, v33, v34);
        v170[0] = v36;
        objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v37, v38, v39, v40, v170, 1);
        v54 = LABEL_11:;
LABEL_30:

        v161 = objc_msgSend_count(v54, v157, v158, v159, v160);
LABEL_31:
        if (v161)
        {
          v22 = objc_msgSend_styleOwnerPathWithUUIDs_(TSCHStyleOwnerPath, v162, v163, v164, v165, v54);
        }

        else
        {
          v22 = 0;
        }

        goto LABEL_35;
      }

      v55 = objc_msgSend_chartType(v7, v31, v32, v33, v34);
      v36 = objc_msgSend_valueAxisIDs(v55, v56, v57, v58, v59);

      v64 = objc_msgSend_count(v36, v60, v61, v62, v63);
      if (v64 > objc_msgSend_index(v6, v65, v66, v67, v68))
      {
        v73 = objc_msgSend_index(v6, v69, v70, v71, v72);
        v78 = objc_msgSend_objectAtIndexedSubscript_(v36, v74, v75, v76, v77, v73);
        if (v78)
        {
          v83 = v78;
          v84 = objc_msgSend_type(v78, v79, v80, v81, v82);
          if (v84 >= 256)
          {
            sub_2764A83D4();
            LOBYTE(v84) = -1;
          }

          else if (v84 < 0)
          {
            sub_2764A8350();
            LOBYTE(v84) = 0;
          }

          objc_msgSend_encodeByte_(v35, v85, v86, v87, v88, v84);
          v93 = objc_msgSend_ordinal(v83, v89, v90, v91, v92);
          if (v93 >= 0x100)
          {
            sub_2764A8458();
            LOBYTE(v93) = -1;
          }

          objc_msgSend_encodeByte_(v35, v94, v95, v96, v97, v93);
          v102 = objc_msgSend_encodedUUID(v35, v98, v99, v100, v101);
          v169 = v102;
          objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v103, v104, v105, v106, &v169, 1);
          v54 = LABEL_28:;

          goto LABEL_30;
        }
      }
    }

    v54 = 0;
    goto LABEL_30;
  }

  v22 = 0;
LABEL_35:

  return v22;
}

+ (id)styleOwnerPathForStyleOwner:(id)a3
{
  v136[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v9 = objc_msgSend_styleOwnerPathTypeForStyleOwner_(a1, v5, v6, v7, v8, v4);
  if (!v9)
  {
    v55 = MEMORY[0x277D81150];
    v56 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, v11, v12, v13, "+[TSCHStyleOwnerPath(TSCHStyleOwnerCollaborationSupporting) styleOwnerPathForStyleOwner:]");
    v61 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v57, v58, v59, v60, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHStyleOwningImplementation.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v55, v62, v63, v64, v65, v56, v61, 1029, 0, "no path found for style owner %@", v4);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v66, v67, v68, v69);
    v20 = objc_msgSend_UUIDEncoderWithStyleOwnerPathType_(TSCHStyleOwnerUUIDEncoder, v70, v71, v72, v73, 0);
    v21 = 0;
    v78 = objc_msgSend_count(0, v74, v75, v76, v77);
    goto LABEL_21;
  }

  v14 = v9;
  v15 = objc_msgSend_UUIDEncoderWithStyleOwnerPathType_(TSCHStyleOwnerUUIDEncoder, v10, v11, v12, v13, v9);
  v20 = v15;
  v21 = 0;
  if (v14 > 4)
  {
    if (v14 == 5)
    {
      objc_opt_class();
      v22 = TSUCheckedDynamicCast();
      v103 = objc_msgSend_seriesIndex(v22, v99, v100, v101, v102);
      objc_msgSend_encodeUInt64FromNSUInteger_(v20, v104, v105, v106, v107, v103);
      v27 = objc_msgSend_encodedUUID(v20, v108, v109, v110, v111);
      v134 = v27;
      v21 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v112, v113, v114, v115, &v134, 1);
      goto LABEL_18;
    }

    if (v14 == 6)
    {
      objc_opt_class();
      v22 = TSUCheckedDynamicCast();
      v27 = objc_msgSend_encodedUUID(v20, v83, v84, v85, v86);
      v133[0] = v27;
      v50 = objc_msgSend_uuid(v22, v87, v88, v89, v90);
      v133[1] = v50;
      objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v91, v92, v93, v94, v133, 2);
      v21 = LABEL_15:;

LABEL_18:
      goto LABEL_19;
    }
  }

  else
  {
    if ((v14 - 1) < 2)
    {
      v22 = objc_msgSend_encodedUUID(v15, v16, v17, v18, v19);
      v136[0] = v22;
      v21 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v95, v96, v97, v98, v136, 1);
LABEL_19:

      goto LABEL_20;
    }

    if ((v14 - 3) < 2)
    {
      objc_opt_class();
      v22 = TSUCheckedDynamicCast();
      v27 = objc_msgSend_axisID(v22, v23, v24, v25, v26);
      v32 = objc_msgSend_type(v27, v28, v29, v30, v31);
      if (v32 >= 256)
      {
        sub_2764A8560();
        LOBYTE(v32) = -1;
      }

      else if (v32 < 0)
      {
        sub_2764A84DC();
        LOBYTE(v32) = 0;
      }

      objc_msgSend_encodeByte_(v20, v33, v34, v35, v36, v32);
      v41 = objc_msgSend_ordinal(v27, v37, v38, v39, v40);
      if (v41 >= 0x100)
      {
        sub_2764A85E4();
        LOBYTE(v41) = -1;
      }

      objc_msgSend_encodeByte_(v20, v42, v43, v44, v45, v41);
      v50 = objc_msgSend_encodedUUID(v20, v46, v47, v48, v49);
      v135 = v50;
      objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v51, v52, v53, v54, &v135, 1);
      goto LABEL_15;
    }
  }

LABEL_20:
  v78 = objc_msgSend_count(v21, v16, v17, v18, v19);
LABEL_21:
  if (!v78)
  {
    v116 = MEMORY[0x277D81150];
    v117 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v79, v80, v81, v82, "+[TSCHStyleOwnerPath(TSCHStyleOwnerCollaborationSupporting) styleOwnerPathForStyleOwner:]");
    v122 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v118, v119, v120, v121, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHStyleOwningImplementation.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v116, v123, v124, v125, v126, v117, v122, 1066, 0, "invalid empty uuids %@", v21);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v127, v128, v129, v130);
  }

  v131 = objc_msgSend_styleOwnerPathWithUUIDs_(TSCHStyleOwnerPath, v79, v80, v81, v82, v21);

  return v131;
}

- (unsigned)styleOwnerPathType
{
  if (!objc_msgSend_count(self->_uuids, a2, v2, v3, v4))
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, v7, v8, v9, "[TSCHStyleOwnerPath(TSCHStyleOwnerCollaborationSupporting) styleOwnerPathType]");
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHStyleOwningImplementation.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v17, v18, v19, v20, v11, v16, 1071, 0, "invalid empty uuid path");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23, v24);
  }

  v25 = objc_msgSend_objectAtIndexedSubscript_(self->_uuids, v6, v7, v8, v9, 0);
  v30 = objc_msgSend_UUIDDecoderWithUUID_(TSCHStyleOwnerUUIDDecoder, v26, v27, v28, v29, v25);

  v36 = objc_msgSend_decodeByte(v30, v31, v32, v33, v34);
  if (!v36)
  {
    v40 = MEMORY[0x277D81150];
    v41 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v35, v37, v38, v39, "[TSCHStyleOwnerPath(TSCHStyleOwnerCollaborationSupporting) styleOwnerPathType]");
    v46 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v42, v43, v44, v45, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHStyleOwningImplementation.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v40, v47, v48, v49, v50, v41, v46, 1074, 0, "invalid path type %ld", 0);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v51, v52, v53, v54);
  }

  return v36;
}

- (int)styleOwnerType
{
  v7 = objc_msgSend_styleOwnerPathType(self, a2, v2, v3, v4) - 1;
  if (v7 < 6)
  {
    return dword_2764D6D2C[v7];
  }

  v12 = MEMORY[0x277D81150];
  v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, v8, v9, v10, "[TSCHStyleOwnerPath(TSCHStyleOwnerCollaborationSupporting) styleOwnerType]");
  v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v15, v16, v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHStyleOwningImplementation.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v19, v20, v21, v22, v13, v18, 1103, 0, "invalid style owner type %ld uuids %@", 0, self->_uuids);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25, v26);
  return 0;
}

- (Class)genericPropertyMapClass
{
  v5 = objc_msgSend_styleOwnerType(self, a2, v2, v3, v4);

  return sub_2762E5FE4(v5, v6, v7, v8, v9);
}

- (id)p_createUUIDDecoder
{
  if (!objc_msgSend_count(self->_uuids, a2, v2, v3, v4))
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, v7, v8, v9, "[TSCHStyleOwnerPath(TSCHStyleOwnerCollaborationSupporting) p_createUUIDDecoder]");
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHStyleOwningImplementation.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v17, v18, v19, v20, v11, v16, 1112, 0, "invalid uuids %@", self->_uuids);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23, v24);
  }

  v25 = objc_msgSend_objectAtIndexedSubscript_(self->_uuids, v6, v7, v8, v9, 0);
  v30 = objc_msgSend_UUIDDecoderWithUUID_(TSCHStyleOwnerUUIDDecoder, v26, v27, v28, v29, v25);

  return v30;
}

- (id)p_axisStyleOwnerForChart:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_p_createUUIDDecoder(self, v5, v6, v7, v8);
  v14 = objc_msgSend_decodeByte(v9, v10, v11, v12, v13);
  if (v14 - 3 >= 2)
  {
    v19 = v14;
    v20 = MEMORY[0x277D81150];
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, v16, v17, v18, "[TSCHStyleOwnerPath(TSCHStyleOwnerCollaborationSupporting) p_axisStyleOwnerForChart:]");
    v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, v23, v24, v25, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHStyleOwningImplementation.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v27, v28, v29, v30, v21, v26, 1119, 0, "invalid style owner path type %ld", v19);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v31, v32, v33, v34);
  }

  v35 = objc_msgSend_decodeByte(v9, v15, v16, v17, v18);
  v40 = objc_msgSend_decodeByte(v9, v36, v37, v38, v39);
  v45 = objc_msgSend_axisIDWithType_ordinal_(TSCHChartAxisID, v41, v42, v43, v44, v35, v40);
  v50 = objc_msgSend_model(v4, v46, v47, v48, v49);

  v55 = objc_msgSend_axisForID_(v50, v51, v52, v53, v54, v45);

  return v55;
}

- (id)p_seriesStyleOwnerForChart:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_p_createUUIDDecoder(self, v5, v6, v7, v8);
  v14 = objc_msgSend_decodeByte(v9, v10, v11, v12, v13);
  if (v14 != 5)
  {
    v19 = v14;
    v20 = MEMORY[0x277D81150];
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, v16, v17, v18, "[TSCHStyleOwnerPath(TSCHStyleOwnerCollaborationSupporting) p_seriesStyleOwnerForChart:]");
    v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, v23, v24, v25, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHStyleOwningImplementation.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v27, v28, v29, v30, v21, v26, 1134, 0, "invalid style owner path type %ld", v19);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v31, v32, v33, v34);
  }

  v35 = objc_msgSend_decodeNSUIntegerFromUInt64(v9, v15, v16, v17, v18);
  v40 = objc_msgSend_model(v4, v36, v37, v38, v39);

  v45 = objc_msgSend_seriesList(v40, v41, v42, v43, v44);

  if (v35 >= objc_msgSend_count(v45, v46, v47, v48, v49))
  {
    v54 = 0;
  }

  else
  {
    v54 = objc_msgSend_objectAtIndexedSubscript_(v45, v50, v51, v52, v53, v35);
  }

  return v54;
}

- (id)p_referenceLineStyleOwnerForChart:(id)a3
{
  v125 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v113 = objc_msgSend_p_createUUIDDecoder(self, v5, v6, v7, v8);
  v13 = objc_msgSend_decodeByte(v113, v9, v10, v11, v12);
  if (v13 != 6)
  {
    v18 = v13;
    v19 = MEMORY[0x277D81150];
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v15, v16, v17, "[TSCHStyleOwnerPath(TSCHStyleOwnerCollaborationSupporting) p_referenceLineStyleOwnerForChart:]");
    v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, v22, v23, v24, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHStyleOwningImplementation.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v26, v27, v28, v29, v20, v25, 1147, 0, "invalid style owner path type %ld", v18);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v30, v31, v32, v33);
  }

  if (objc_msgSend_count(self->_uuids, v14, v15, v16, v17) != 2)
  {
    v38 = MEMORY[0x277D81150];
    v39 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v34, v35, v36, v37, "[TSCHStyleOwnerPath(TSCHStyleOwnerCollaborationSupporting) p_referenceLineStyleOwnerForChart:]");
    v44 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v40, v41, v42, v43, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHStyleOwningImplementation.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v38, v45, v46, v47, v48, v39, v44, 1149, 0, "invalid uuids %@", self->_uuids);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v49, v50, v51, v52);
  }

  objc_opt_class();
  v57 = objc_msgSend_objectAtIndexedSubscript_(self->_uuids, v53, v54, v55, v56, 1);
  v58 = TSUCheckedDynamicCast();

  v114 = v4;
  v63 = objc_msgSend_model(v4, v59, v60, v61, v62);
  v68 = objc_msgSend_referenceLinesMap(v63, v64, v65, v66, v67);

  v121 = 0u;
  v122 = 0u;
  v119 = 0u;
  v120 = 0u;
  v72 = objc_msgSend_allValues(v68, v69, 0.0, v70, v71);
  v111 = objc_msgSend_countByEnumeratingWithState_objects_count_(v72, v73, v74, v75, v76, &v119, v124, 16);
  if (v111)
  {
    v77 = *v120;
    v109 = *v120;
    v110 = v68;
    v112 = v72;
    do
    {
      for (i = 0; i != v111; ++i)
      {
        if (*v120 != v77)
        {
          objc_enumerationMutation(v72);
        }

        objc_opt_class();
        v79 = TSUCheckedDynamicCast();
        v115 = 0u;
        v116 = 0u;
        v117 = 0u;
        v118 = 0u;
        v80 = v79;
        v85 = objc_msgSend_countByEnumeratingWithState_objects_count_(v80, v81, v82, v83, v84, &v115, v123, 16);
        if (v85)
        {
          v86 = v85;
          v87 = *v116;
          while (2)
          {
            for (j = 0; j != v86; ++j)
            {
              if (*v116 != v87)
              {
                objc_enumerationMutation(v80);
              }

              objc_opt_class();
              v89 = TSUCheckedDynamicCast();
              v94 = objc_msgSend_uuid(v89, v90, v91, v92, v93);
              isEqual = objc_msgSend_isEqual_(v58, v95, v96, v97, v98, v94);

              if (isEqual)
              {

                v68 = v110;
                v72 = v112;
                goto LABEL_23;
              }
            }

            v86 = objc_msgSend_countByEnumeratingWithState_objects_count_(v80, v100, v101, v102, v103, &v115, v123, 16);
            if (v86)
            {
              continue;
            }

            break;
          }
        }

        v72 = v112;
        v77 = v109;
      }

      v89 = 0;
      v68 = v110;
      v111 = objc_msgSend_countByEnumeratingWithState_objects_count_(v112, v104, v105, v106, v107, &v119, v124, 16);
    }

    while (v111);
  }

  else
  {
    v89 = 0;
  }

LABEL_23:

  return v89;
}

- (id)styleOwnerForChart:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, v6, v7, v8, "[TSCHStyleOwnerPath(TSCHStyleOwnerCollaborationSupporting) styleOwnerForChart:]");
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, v12, v13, v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHStyleOwningImplementation.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v16, v17, v18, v19, v10, v15, 1166, 0, "invalid nil value for '%{public}s'", "chart");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22, v23);
  }

  v24 = objc_msgSend_styleOwnerPathType(self, v4, v6, v7, v8);
  v29 = 0;
  if (v24 <= 2)
  {
    if (v24 == 1)
    {
      v30 = v5;
    }

    else
    {
      if (v24 != 2)
      {
        goto LABEL_15;
      }

      v30 = objc_msgSend_legend(v5, v25, v26, v27, v28);
    }
  }

  else if ((v24 - 3) < 2)
  {
    v30 = objc_msgSend_p_axisStyleOwnerForChart_(self, v25, v26, v27, v28, v5);
  }

  else if (v24 == 5)
  {
    v30 = objc_msgSend_p_seriesStyleOwnerForChart_(self, v25, v26, v27, v28, v5);
  }

  else
  {
    if (v24 != 6)
    {
      goto LABEL_15;
    }

    v30 = objc_msgSend_p_referenceLineStyleOwnerForChart_(self, v25, v26, v27, v28, v5);
  }

  v29 = v30;
LABEL_15:

  return v29;
}

@end