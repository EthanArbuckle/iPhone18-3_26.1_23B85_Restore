@interface TSCHChartAxisGenericPropertyMap
+ (id)imageFillProperties;
+ (id)properties;
+ (void)savePropertyMap:(id)map toArchive:(void *)archive archiver:(id)archiver;
- (TSCHChartAxisGenericPropertyMap)initWithArchive:(const void *)archive unarchiver:(id)unarchiver;
- (void)saveToArchive:(void *)archive archiver:(id)archiver;
@end

@implementation TSCHChartAxisGenericPropertyMap

+ (id)properties
{
  if (qword_280A475C0 != -1)
  {
    sub_2764A7C4C();
  }

  v3 = qword_280A475B8;

  return v3;
}

+ (id)imageFillProperties
{
  if (qword_280A475D0 != -1)
  {
    sub_2764A7C60();
  }

  v3 = qword_280A475C8;

  return v3;
}

- (TSCHChartAxisGenericPropertyMap)initWithArchive:(const void *)archive unarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  v123.receiver = self;
  v123.super_class = TSCHChartAxisGenericPropertyMap;
  v7 = [(TSCHChartAxisGenericPropertyMap *)&v123 init];

  if (v7)
  {
    v9 = v7;
    v13 = *(archive + 4);
    if ((v13 & 2) != 0)
    {
      v15 = objc_msgSend_instanceWithArchive_unarchiver_(TSCHTimeBasedFormat, v8, v10, v11, v12, *(archive + 5), unarchiverCopy);
      if (v15)
      {
        objc_msgSend_setObject_forProperty_(v9, v14, v16, v17, v18, v15, 1024);
      }

      v13 = *(archive + 4);
    }

    if ((v13 & 4) != 0)
    {
      v20 = objc_msgSend_instanceWithArchive_unarchiver_(TSCHNumberFormat, v8, v10, v11, v12, *(archive + 6), unarchiverCopy);
      if (v20)
      {
        objc_msgSend_setObject_forProperty_(v9, v19, v21, v22, v23, v20, 1025);
      }

      v13 = *(archive + 4);
    }

    if ((v13 & 0x2000) != 0)
    {
      LODWORD(v10) = *(archive + 34);
      objc_msgSend_setFloatValue_forProperty_(v9, v8, v10, v11, v12, 1026);
      v13 = *(archive + 4);
      if ((v13 & 0x2000) != 0)
      {
        LODWORD(v10) = *(archive + 34);
        objc_msgSend_setFloatValue_forProperty_(v9, v8, v10, v11, v12, 1026);
        v13 = *(archive + 4);
      }
    }

    if ((v13 & 8) != 0)
    {
      v25 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v8, v10, v11, v12, *(archive + 7), unarchiverCopy);
      if (v25)
      {
        objc_msgSend_setObject_forProperty_(v9, v24, v26, v27, v28, v25, 1027);
      }

      v13 = *(archive + 4);
      if ((v13 & 8) != 0)
      {
        v30 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v8, v10, v11, v12, *(archive + 7), unarchiverCopy);
        if (v30)
        {
          objc_msgSend_setObject_forProperty_(v9, v29, v31, v32, v33, v30, 1027);
        }

        v13 = *(archive + 4);
      }
    }

    if ((v13 & 0x4000) != 0)
    {
      objc_msgSend_setIntValue_forProperty_(v9, v8, v10, v11, v12, *(archive + 35), 1028);
      v13 = *(archive + 4);
    }

    if ((v13 & 0x10) != 0)
    {
      v35 = objc_msgSend_instanceWithArchive_unarchiver_(TSCHTimeBasedFormat, v8, v10, v11, v12, *(archive + 8), unarchiverCopy);
      if (v35)
      {
        objc_msgSend_setObject_forProperty_(v9, v34, v36, v37, v38, v35, 1029);
      }

      v13 = *(archive + 4);
    }

    if ((v13 & 0x20) != 0)
    {
      v40 = objc_msgSend_instanceWithArchive_unarchiver_(TSCHTimeBasedFormat, v8, v10, v11, v12, *(archive + 9), unarchiverCopy);
      if (v40)
      {
        objc_msgSend_setObject_forProperty_(v9, v39, v41, v42, v43, v40, 1030);
      }

      v13 = *(archive + 4);
    }

    if ((v13 & 0x8000) != 0)
    {
      objc_msgSend_setIntValue_forProperty_(v9, v8, v10, v11, v12, *(archive + 36), 1031);
      v13 = *(archive + 4);
    }

    if ((v13 & 0x10000) != 0)
    {
      objc_msgSend_setIntValue_forProperty_(v9, v8, v10, v11, v12, *(archive + 37), 1032);
      v13 = *(archive + 4);
    }

    if ((v13 & 0x20000) != 0)
    {
      LODWORD(v10) = *(archive + 38);
      objc_msgSend_setFloatValue_forProperty_(v9, v8, v10, v11, v12, 1033);
      v13 = *(archive + 4);
    }

    if ((v13 & 0x40000) != 0)
    {
      objc_msgSend_setIntValue_forProperty_(v9, v8, v10, v11, v12, *(archive + 39), 1034);
      v13 = *(archive + 4);
      if ((v13 & 0x40000) != 0)
      {
        objc_msgSend_setIntValue_forProperty_(v9, v8, v10, v11, v12, *(archive + 39), 1034);
        v13 = *(archive + 4);
        if ((v13 & 0x40000) != 0)
        {
          objc_msgSend_setIntValue_forProperty_(v9, v8, v10, v11, v12, *(archive + 39), 1034);
          v13 = *(archive + 4);
        }
      }
    }

    if ((v13 & 0x80000) != 0)
    {
      LODWORD(v10) = *(archive + 40);
      objc_msgSend_setFloatValue_forProperty_(v9, v8, v10, v11, v12, 1035);
      v13 = *(archive + 4);
      if ((v13 & 0x80000) != 0)
      {
        LODWORD(v10) = *(archive + 40);
        objc_msgSend_setFloatValue_forProperty_(v9, v8, v10, v11, v12, 1035);
        v13 = *(archive + 4);
        if ((v13 & 0x80000) != 0)
        {
          LODWORD(v10) = *(archive + 40);
          objc_msgSend_setFloatValue_forProperty_(v9, v8, v10, v11, v12, 1035);
          v13 = *(archive + 4);
        }
      }
    }

    if ((v13 & 0x100000) != 0)
    {
      LODWORD(v10) = *(archive + 41);
      objc_msgSend_setFloatValue_forProperty_(v9, v8, v10, v11, v12, 1036);
      v13 = *(archive + 4);
      if ((v13 & 0x100000) != 0)
      {
        LODWORD(v10) = *(archive + 41);
        objc_msgSend_setFloatValue_forProperty_(v9, v8, v10, v11, v12, 1036);
        v13 = *(archive + 4);
      }
    }

    if ((v13 & 0x40) != 0)
    {
      v45 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803A8], v8, v10, v11, v12, *(archive + 10), unarchiverCopy);
      if (v45)
      {
        objc_msgSend_setObject_forProperty_(v9, v44, v46, v47, v48, v45, 1037);
      }

      v13 = *(archive + 4);
      if ((v13 & 0x40) != 0)
      {
        v50 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803A8], v8, v10, v11, v12, *(archive + 10), unarchiverCopy);
        if (v50)
        {
          objc_msgSend_setObject_forProperty_(v9, v49, v51, v52, v53, v50, 1037);
        }

        v13 = *(archive + 4);
      }
    }

    if ((v13 & 0x80) != 0)
    {
      v55 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v8, v10, v11, v12, *(archive + 11), unarchiverCopy);
      if (v55)
      {
        objc_msgSend_setObject_forProperty_(v9, v54, v56, v57, v58, v55, 1038);
      }

      v13 = *(archive + 4);
      if ((v13 & 0x80) != 0)
      {
        v60 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v8, v10, v11, v12, *(archive + 11), unarchiverCopy);
        if (v60)
        {
          objc_msgSend_setObject_forProperty_(v9, v59, v61, v62, v63, v60, 1038);
        }

        v13 = *(archive + 4);
      }
    }

    if ((v13 & 0x200000) != 0)
    {
      LODWORD(v10) = *(archive + 42);
      objc_msgSend_setFloatValue_forProperty_(v9, v8, v10, v11, v12, 1039);
      v13 = *(archive + 4);
      if ((v13 & 0x200000) != 0)
      {
        LODWORD(v10) = *(archive + 42);
        objc_msgSend_setFloatValue_forProperty_(v9, v8, v10, v11, v12, 1039);
        v13 = *(archive + 4);
      }
    }

    if ((v13 & 0x100) != 0)
    {
      v65 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803A8], v8, v10, v11, v12, *(archive + 12), unarchiverCopy);
      if (v65)
      {
        objc_msgSend_setObject_forProperty_(v9, v64, v66, v67, v68, v65, 1040);
      }

      v13 = *(archive + 4);
      if ((v13 & 0x100) != 0)
      {
        v70 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803A8], v8, v10, v11, v12, *(archive + 12), unarchiverCopy);
        if (v70)
        {
          objc_msgSend_setObject_forProperty_(v9, v69, v71, v72, v73, v70, 1040);
        }

        v13 = *(archive + 4);
      }
    }

    if ((v13 & 0x200) != 0)
    {
      v75 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v8, v10, v11, v12, *(archive + 13), unarchiverCopy);
      if (v75)
      {
        objc_msgSend_setObject_forProperty_(v9, v74, v76, v77, v78, v75, 1041);
      }

      v13 = *(archive + 4);
      if ((v13 & 0x200) != 0)
      {
        v80 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v8, v10, v11, v12, *(archive + 13), unarchiverCopy);
        if (v80)
        {
          objc_msgSend_setObject_forProperty_(v9, v79, v81, v82, v83, v80, 1041);
        }

        v13 = *(archive + 4);
      }
    }

    if ((v13 & 0x400) != 0)
    {
      v85 = objc_msgSend_instanceWithArchive_unarchiver_(TSCHNumberFormat, v8, v10, v11, v12, *(archive + 14), unarchiverCopy);
      if (v85)
      {
        objc_msgSend_setObject_forProperty_(v9, v84, v86, v87, v88, v85, 1042);
      }

      v13 = *(archive + 4);
    }

    if ((v13 & 0x400000) != 0)
    {
      objc_msgSend_setIntValue_forProperty_(v9, v8, v10, v11, v12, *(archive + 43), 1043);
      v13 = *(archive + 4);
    }

    if ((v13 & 0x800000) != 0)
    {
      objc_msgSend_setIntValue_forProperty_(v9, v8, v10, v11, v12, *(archive + 44), 1044);
      v13 = *(archive + 4);
    }

    if ((v13 & 0x1000000) != 0)
    {
      objc_msgSend_setIntValue_forProperty_(v9, v8, v10, v11, v12, *(archive + 45), 1045);
      v13 = *(archive + 4);
    }

    if ((v13 & 0x2000000) != 0)
    {
      objc_msgSend_setIntValue_forProperty_(v9, v8, v10, v11, v12, *(archive + 46), 1046);
      v13 = *(archive + 4);
    }

    if ((v13 & 0x8000000) != 0)
    {
      objc_msgSend_setIntValue_forProperty_(v9, v8, v10, v11, v12, *(archive + 192), 1047);
      v13 = *(archive + 4);
    }

    if ((v13 & 0x4000000) != 0)
    {
      objc_msgSend_setIntValue_forProperty_(v9, v8, v10, v11, v12, *(archive + 47), 1048);
      v13 = *(archive + 4);
    }

    if ((v13 & 0x10000000) != 0)
    {
      objc_msgSend_setIntValue_forProperty_(v9, v8, v10, v11, v12, *(archive + 193), 1049);
      v13 = *(archive + 4);
      if ((v13 & 0x10000000) != 0)
      {
        objc_msgSend_setIntValue_forProperty_(v9, v8, v10, v11, v12, *(archive + 193), 1049);
        v13 = *(archive + 4);
      }
    }

    if ((v13 & 0x20000000) != 0)
    {
      objc_msgSend_setIntValue_forProperty_(v9, v8, v10, v11, v12, *(archive + 194), 1050);
      v13 = *(archive + 4);
    }

    if ((v13 & 0x40000000) != 0)
    {
      objc_msgSend_setIntValue_forProperty_(v9, v8, v10, v11, v12, *(archive + 195), 1051);
      v13 = *(archive + 4);
      if ((v13 & 0x40000000) != 0)
      {
        objc_msgSend_setIntValue_forProperty_(v9, v8, v10, v11, v12, *(archive + 195), 1051);
        v13 = *(archive + 4);
      }
    }

    if (v13 < 0)
    {
      objc_msgSend_setIntValue_forProperty_(v9, v8, v10, v11, v12, *(archive + 196), 1052);
      if ((*(archive + 4) & 0x80000000) != 0)
      {
        objc_msgSend_setIntValue_forProperty_(v9, v8, v10, v11, v12, *(archive + 196), 1052);
        if ((*(archive + 4) & 0x80000000) != 0)
        {
          objc_msgSend_setIntValue_forProperty_(v9, v8, v10, v11, v12, *(archive + 196), 1052);
        }
      }
    }

    v89 = *(archive + 5);
    if (v89)
    {
      objc_msgSend_setIntValue_forProperty_(v9, v8, v10, v11, v12, *(archive + 197), 1053);
      v89 = *(archive + 5);
    }

    if ((v89 & 2) != 0)
    {
      objc_msgSend_setIntValue_forProperty_(v9, v8, v10, v11, v12, *(archive + 198), 1054);
      v89 = *(archive + 5);
      if ((v89 & 2) != 0)
      {
        objc_msgSend_setIntValue_forProperty_(v9, v8, v10, v11, v12, *(archive + 198), 1054);
        v89 = *(archive + 5);
        if ((v89 & 2) != 0)
        {
          objc_msgSend_setIntValue_forProperty_(v9, v8, v10, v11, v12, *(archive + 198), 1054);
          v89 = *(archive + 5);
        }
      }
    }

    if ((v89 & 4) != 0)
    {
      objc_msgSend_setIntValue_forProperty_(v9, v8, v10, v11, v12, *(archive + 199), 1055);
      v89 = *(archive + 5);
      if ((v89 & 4) != 0)
      {
        objc_msgSend_setIntValue_forProperty_(v9, v8, v10, v11, v12, *(archive + 199), 1055);
        v89 = *(archive + 5);
      }
    }

    if ((v89 & 8) != 0)
    {
      objc_msgSend_setIntValue_forProperty_(v9, v8, v10, v11, v12, *(archive + 200), 1056);
      v89 = *(archive + 5);
    }

    if ((v89 & 0x10) != 0)
    {
      objc_msgSend_setIntValue_forProperty_(v9, v8, v10, v11, v12, *(archive + 201), 1057);
      v89 = *(archive + 5);
      if ((v89 & 0x10) != 0)
      {
        objc_msgSend_setIntValue_forProperty_(v9, v8, v10, v11, v12, *(archive + 201), 1057);
        v89 = *(archive + 5);
      }
    }

    if ((v89 & 0x20) != 0)
    {
      objc_msgSend_setIntValue_forProperty_(v9, v8, v10, v11, v12, *(archive + 202), 1058);
      v89 = *(archive + 5);
      if ((v89 & 0x20) != 0)
      {
        objc_msgSend_setIntValue_forProperty_(v9, v8, v10, v11, v12, *(archive + 202), 1058);
        v89 = *(archive + 5);
      }
    }

    if ((v89 & 0x40) != 0)
    {
      objc_msgSend_setIntValue_forProperty_(v9, v8, v10, v11, v12, *(archive + 203), 1059);
      v89 = *(archive + 5);
      if ((v89 & 0x40) != 0)
      {
        objc_msgSend_setIntValue_forProperty_(v9, v8, v10, v11, v12, *(archive + 203), 1059);
        v89 = *(archive + 5);
      }
    }

    if ((v89 & 0x80) != 0)
    {
      objc_msgSend_setIntValue_forProperty_(v9, v8, v10, v11, v12, *(archive + 204), 1060);
      v89 = *(archive + 5);
      if ((v89 & 0x80) != 0)
      {
        objc_msgSend_setIntValue_forProperty_(v9, v8, v10, v11, v12, *(archive + 204), 1060);
        v89 = *(archive + 5);
      }
    }

    if ((v89 & 0x100) != 0)
    {
      objc_msgSend_setIntValue_forProperty_(v9, v8, v10, v11, v12, *(archive + 52), 1061);
      if (*(archive + 21))
      {
        objc_msgSend_setIntValue_forProperty_(v9, v8, v10, v11, v12, *(archive + 52), 1061);
      }
    }

    if (*(archive + 16))
    {
      v90 = objc_alloc(MEMORY[0x277CCACA8]);
      v96 = objc_msgSend_tsp_initWithProtobufString_(v90, v91, v92, v93, v94, *(archive + 4) & 0xFFFFFFFFFFFFFFFELL);
      if (v96)
      {
        objc_msgSend_setObject_forProperty_(v9, v95, v97, v98, v99, v96, 1062);
      }
    }

    if ((*(archive + 21) & 2) != 0)
    {
      objc_msgSend_setIntValue_forProperty_(v9, v8, v10, v11, v12, *(archive + 53), 1063);
      if ((*(archive + 21) & 2) != 0)
      {
        objc_msgSend_setIntValue_forProperty_(v9, v8, v10, v11, v12, *(archive + 53), 1063);
        if ((*(archive + 21) & 2) != 0)
        {
          objc_msgSend_setIntValue_forProperty_(v9, v8, v10, v11, v12, *(archive + 53), 1063);
        }
      }
    }

    v100 = *(archive + 4);
    if (v100)
    {
      v101 = objc_alloc(MEMORY[0x277CCACA8]);
      v107 = objc_msgSend_tsp_initWithProtobufString_(v101, v102, v103, v104, v105, *(archive + 4) & 0xFFFFFFFFFFFFFFFELL);
      if (v107)
      {
        objc_msgSend_setObject_forProperty_(v9, v106, v108, v109, v110, v107, 1062);
      }

      v100 = *(archive + 4);
    }

    if ((v100 & 0x800) != 0)
    {
      v112 = objc_msgSend_tsch_instanceWithArchive_unarchiver_(MEMORY[0x277CCABB0], v8, v10, v11, v12, *(archive + 15), unarchiverCopy);
      if (v112)
      {
        objc_msgSend_setObject_forProperty_(v9, v111, v113, v114, v115, v112, 1064);
      }

      v100 = *(archive + 4);
    }

    if ((v100 & 0x1000) != 0)
    {
      v117 = objc_msgSend_tsch_instanceWithArchive_unarchiver_(MEMORY[0x277CCABB0], v8, v10, v11, v12, *(archive + 16), unarchiverCopy);
      if (v117)
      {
        objc_msgSend_setObject_forProperty_(v9, v116, v118, v119, v120, v117, 1065);
      }
    }

    if ((*(archive + 21) & 4) != 0)
    {
      objc_msgSend_setIntValue_forProperty_(v9, v8, v10, v11, v12, *(archive + 54), 1066);
    }
  }

  v121 = v7;

  return v121;
}

- (void)saveToArchive:(void *)archive archiver:(id)archiver
{
  archiverCopy = archiver;
  selfCopy = self;
  if (objc_msgSend_containsProperty_(selfCopy, v7, v8, v9, v10, 1024))
  {
    v16 = objc_msgSend_objectForProperty_(selfCopy, v11, v12, v13, v14, 1024);
    *(archive + 4) |= 2u;
    v20 = *(archive + 5);
    if (!v20)
    {
      v21 = *(archive + 1);
      if (v21)
      {
        v21 = *(v21 & 0xFFFFFFFFFFFFFFFELL);
      }

      v20 = MEMORY[0x277C97B00](v21);
      *(archive + 5) = v20;
    }

    objc_msgSend_saveToArchive_archiver_(v16, v15, v17, v18, v19, v20, archiverCopy);
  }

  if (objc_msgSend_containsProperty_(selfCopy, v11, v12, v13, v14, 1025))
  {
    v27 = objc_msgSend_objectForProperty_(selfCopy, v22, v23, v24, v25, 1025);
    *(archive + 4) |= 4u;
    v31 = *(archive + 6);
    if (!v31)
    {
      v32 = *(archive + 1);
      if (v32)
      {
        v32 = *(v32 & 0xFFFFFFFFFFFFFFFELL);
      }

      v31 = MEMORY[0x277C97B00](v32);
      *(archive + 6) = v31;
    }

    objc_msgSend_saveToArchive_archiver_(v27, v26, v28, v29, v30, v31, archiverCopy);
  }

  if (objc_msgSend_containsProperty_(selfCopy, v22, v23, v24, v25, 1026))
  {
    objc_msgSend_floatValueForProperty_(selfCopy, v33, v34, v35, v36, 1026);
    *(archive + 4) |= 0x2000u;
    *(archive + 34) = LODWORD(v34);
  }

  if (objc_msgSend_containsProperty_(selfCopy, v33, v34, v35, v36, 1026))
  {
    objc_msgSend_floatValueForProperty_(selfCopy, v37, v38, v39, v40, 1026);
    *(archive + 4) |= 0x2000u;
    *(archive + 34) = LODWORD(v38);
  }

  if (objc_msgSend_containsProperty_(selfCopy, v37, v38, v39, v40, 1027))
  {
    v46 = objc_msgSend_objectForProperty_(selfCopy, v41, v42, v43, v44, 1027);
    *(archive + 4) |= 8u;
    v50 = *(archive + 7);
    if (!v50)
    {
      v51 = *(archive + 1);
      if (v51)
      {
        v51 = *(v51 & 0xFFFFFFFFFFFFFFFELL);
      }

      v50 = MEMORY[0x277C97AA0](v51);
      *(archive + 7) = v50;
    }

    objc_msgSend_saveToArchive_archiver_(v46, v45, v47, v48, v49, v50, archiverCopy);
  }

  if (objc_msgSend_containsProperty_(selfCopy, v41, v42, v43, v44, 1027))
  {
    v57 = objc_msgSend_objectForProperty_(selfCopy, v52, v53, v54, v55, 1027);
    *(archive + 4) |= 8u;
    v61 = *(archive + 7);
    if (!v61)
    {
      v62 = *(archive + 1);
      if (v62)
      {
        v62 = *(v62 & 0xFFFFFFFFFFFFFFFELL);
      }

      v61 = MEMORY[0x277C97AA0](v62);
      *(archive + 7) = v61;
    }

    objc_msgSend_saveToArchive_archiver_(v57, v56, v58, v59, v60, v61, archiverCopy);
  }

  if (objc_msgSend_containsProperty_(selfCopy, v52, v53, v54, v55, 1028))
  {
    v67 = objc_msgSend_intValueForProperty_(selfCopy, v63, v64, v65, v66, 1028);
    *(archive + 4) |= 0x4000u;
    *(archive + 35) = v67;
  }

  if (objc_msgSend_containsProperty_(selfCopy, v63, v64, v65, v66, 1029))
  {
    v73 = objc_msgSend_objectForProperty_(selfCopy, v68, v69, v70, v71, 1029);
    *(archive + 4) |= 0x10u;
    v77 = *(archive + 8);
    if (!v77)
    {
      v78 = *(archive + 1);
      if (v78)
      {
        v78 = *(v78 & 0xFFFFFFFFFFFFFFFELL);
      }

      v77 = MEMORY[0x277C97B00](v78);
      *(archive + 8) = v77;
    }

    objc_msgSend_saveToArchive_archiver_(v73, v72, v74, v75, v76, v77, archiverCopy);
  }

  if (objc_msgSend_containsProperty_(selfCopy, v68, v69, v70, v71, 1030))
  {
    v84 = objc_msgSend_objectForProperty_(selfCopy, v79, v80, v81, v82, 1030);
    *(archive + 4) |= 0x20u;
    v88 = *(archive + 9);
    if (!v88)
    {
      v89 = *(archive + 1);
      if (v89)
      {
        v89 = *(v89 & 0xFFFFFFFFFFFFFFFELL);
      }

      v88 = MEMORY[0x277C97B00](v89);
      *(archive + 9) = v88;
    }

    objc_msgSend_saveToArchive_archiver_(v84, v83, v85, v86, v87, v88, archiverCopy);
  }

  if (objc_msgSend_containsProperty_(selfCopy, v79, v80, v81, v82, 1031))
  {
    v94 = objc_msgSend_intValueForProperty_(selfCopy, v90, v91, v92, v93, 1031);
    *(archive + 4) |= 0x8000u;
    *(archive + 36) = v94;
  }

  if (objc_msgSend_containsProperty_(selfCopy, v90, v91, v92, v93, 1032))
  {
    v99 = objc_msgSend_intValueForProperty_(selfCopy, v95, v96, v97, v98, 1032);
    *(archive + 4) |= 0x10000u;
    *(archive + 37) = v99;
  }

  if (objc_msgSend_containsProperty_(selfCopy, v95, v96, v97, v98, 1033))
  {
    objc_msgSend_floatValueForProperty_(selfCopy, v100, v101, v102, v103, 1033);
    *(archive + 4) |= 0x20000u;
    *(archive + 38) = LODWORD(v101);
  }

  if (objc_msgSend_containsProperty_(selfCopy, v100, v101, v102, v103, 1034))
  {
    v108 = objc_msgSend_intValueForProperty_(selfCopy, v104, v105, v106, v107, 1034);
    *(archive + 4) |= 0x40000u;
    *(archive + 39) = v108;
  }

  if (objc_msgSend_containsProperty_(selfCopy, v104, v105, v106, v107, 1034))
  {
    v113 = objc_msgSend_intValueForProperty_(selfCopy, v109, v110, v111, v112, 1034);
    *(archive + 4) |= 0x40000u;
    *(archive + 39) = v113;
  }

  if (objc_msgSend_containsProperty_(selfCopy, v109, v110, v111, v112, 1034))
  {
    v118 = objc_msgSend_intValueForProperty_(selfCopy, v114, v115, v116, v117, 1034);
    *(archive + 4) |= 0x40000u;
    *(archive + 39) = v118;
  }

  if (objc_msgSend_containsProperty_(selfCopy, v114, v115, v116, v117, 1035))
  {
    objc_msgSend_floatValueForProperty_(selfCopy, v119, v120, v121, v122, 1035);
    *(archive + 4) |= 0x80000u;
    *(archive + 40) = LODWORD(v120);
  }

  if (objc_msgSend_containsProperty_(selfCopy, v119, v120, v121, v122, 1035))
  {
    objc_msgSend_floatValueForProperty_(selfCopy, v123, v124, v125, v126, 1035);
    *(archive + 4) |= 0x80000u;
    *(archive + 40) = LODWORD(v124);
  }

  if (objc_msgSend_containsProperty_(selfCopy, v123, v124, v125, v126, 1035))
  {
    objc_msgSend_floatValueForProperty_(selfCopy, v127, v128, v129, v130, 1035);
    *(archive + 4) |= 0x80000u;
    *(archive + 40) = LODWORD(v128);
  }

  if (objc_msgSend_containsProperty_(selfCopy, v127, v128, v129, v130, 1036))
  {
    objc_msgSend_floatValueForProperty_(selfCopy, v131, v132, v133, v134, 1036);
    *(archive + 4) |= 0x100000u;
    *(archive + 41) = LODWORD(v132);
  }

  if (objc_msgSend_containsProperty_(selfCopy, v131, v132, v133, v134, 1036))
  {
    objc_msgSend_floatValueForProperty_(selfCopy, v135, v136, v137, v138, 1036);
    *(archive + 4) |= 0x100000u;
    *(archive + 41) = LODWORD(v136);
  }

  if (objc_msgSend_containsProperty_(selfCopy, v135, v136, v137, v138, 1037))
  {
    v144 = objc_msgSend_objectForProperty_(selfCopy, v139, v140, v141, v142, 1037);
    *(archive + 4) |= 0x40u;
    v148 = *(archive + 10);
    if (!v148)
    {
      v149 = *(archive + 1);
      if (v149)
      {
        v149 = *(v149 & 0xFFFFFFFFFFFFFFFELL);
      }

      v148 = MEMORY[0x277C97A90](v149);
      *(archive + 10) = v148;
    }

    objc_msgSend_saveToArchive_archiver_(v144, v143, v145, v146, v147, v148, archiverCopy);
  }

  if (objc_msgSend_containsProperty_(selfCopy, v139, v140, v141, v142, 1037))
  {
    v155 = objc_msgSend_objectForProperty_(selfCopy, v150, v151, v152, v153, 1037);
    *(archive + 4) |= 0x40u;
    v159 = *(archive + 10);
    if (!v159)
    {
      v160 = *(archive + 1);
      if (v160)
      {
        v160 = *(v160 & 0xFFFFFFFFFFFFFFFELL);
      }

      v159 = MEMORY[0x277C97A90](v160);
      *(archive + 10) = v159;
    }

    objc_msgSend_saveToArchive_archiver_(v155, v154, v156, v157, v158, v159, archiverCopy);
  }

  if (objc_msgSend_containsProperty_(selfCopy, v150, v151, v152, v153, 1038))
  {
    v166 = objc_msgSend_objectForProperty_(selfCopy, v161, v162, v163, v164, 1038);
    *(archive + 4) |= 0x80u;
    v170 = *(archive + 11);
    if (!v170)
    {
      v171 = *(archive + 1);
      if (v171)
      {
        v171 = *(v171 & 0xFFFFFFFFFFFFFFFELL);
      }

      v170 = MEMORY[0x277C97AA0](v171);
      *(archive + 11) = v170;
    }

    objc_msgSend_saveToArchive_archiver_(v166, v165, v167, v168, v169, v170, archiverCopy);
  }

  if (objc_msgSend_containsProperty_(selfCopy, v161, v162, v163, v164, 1038))
  {
    v177 = objc_msgSend_objectForProperty_(selfCopy, v172, v173, v174, v175, 1038);
    *(archive + 4) |= 0x80u;
    v181 = *(archive + 11);
    if (!v181)
    {
      v182 = *(archive + 1);
      if (v182)
      {
        v182 = *(v182 & 0xFFFFFFFFFFFFFFFELL);
      }

      v181 = MEMORY[0x277C97AA0](v182);
      *(archive + 11) = v181;
    }

    objc_msgSend_saveToArchive_archiver_(v177, v176, v178, v179, v180, v181, archiverCopy);
  }

  if (objc_msgSend_containsProperty_(selfCopy, v172, v173, v174, v175, 1039))
  {
    objc_msgSend_floatValueForProperty_(selfCopy, v183, v184, v185, v186, 1039);
    *(archive + 4) |= 0x200000u;
    *(archive + 42) = LODWORD(v184);
  }

  if (objc_msgSend_containsProperty_(selfCopy, v183, v184, v185, v186, 1039))
  {
    objc_msgSend_floatValueForProperty_(selfCopy, v187, v188, v189, v190, 1039);
    *(archive + 4) |= 0x200000u;
    *(archive + 42) = LODWORD(v188);
  }

  if (objc_msgSend_containsProperty_(selfCopy, v187, v188, v189, v190, 1040))
  {
    v196 = objc_msgSend_objectForProperty_(selfCopy, v191, v192, v193, v194, 1040);
    *(archive + 4) |= 0x100u;
    v200 = *(archive + 12);
    if (!v200)
    {
      v201 = *(archive + 1);
      if (v201)
      {
        v201 = *(v201 & 0xFFFFFFFFFFFFFFFELL);
      }

      v200 = MEMORY[0x277C97A90](v201);
      *(archive + 12) = v200;
    }

    objc_msgSend_saveToArchive_archiver_(v196, v195, v197, v198, v199, v200, archiverCopy);
  }

  if (objc_msgSend_containsProperty_(selfCopy, v191, v192, v193, v194, 1040))
  {
    v207 = objc_msgSend_objectForProperty_(selfCopy, v202, v203, v204, v205, 1040);
    *(archive + 4) |= 0x100u;
    v211 = *(archive + 12);
    if (!v211)
    {
      v212 = *(archive + 1);
      if (v212)
      {
        v212 = *(v212 & 0xFFFFFFFFFFFFFFFELL);
      }

      v211 = MEMORY[0x277C97A90](v212);
      *(archive + 12) = v211;
    }

    objc_msgSend_saveToArchive_archiver_(v207, v206, v208, v209, v210, v211, archiverCopy);
  }

  if (objc_msgSend_containsProperty_(selfCopy, v202, v203, v204, v205, 1041))
  {
    v218 = objc_msgSend_objectForProperty_(selfCopy, v213, v214, v215, v216, 1041);
    *(archive + 4) |= 0x200u;
    v222 = *(archive + 13);
    if (!v222)
    {
      v223 = *(archive + 1);
      if (v223)
      {
        v223 = *(v223 & 0xFFFFFFFFFFFFFFFELL);
      }

      v222 = MEMORY[0x277C97AA0](v223);
      *(archive + 13) = v222;
    }

    objc_msgSend_saveToArchive_archiver_(v218, v217, v219, v220, v221, v222, archiverCopy);
  }

  if (objc_msgSend_containsProperty_(selfCopy, v213, v214, v215, v216, 1041))
  {
    v229 = objc_msgSend_objectForProperty_(selfCopy, v224, v225, v226, v227, 1041);
    *(archive + 4) |= 0x200u;
    v233 = *(archive + 13);
    if (!v233)
    {
      v234 = *(archive + 1);
      if (v234)
      {
        v234 = *(v234 & 0xFFFFFFFFFFFFFFFELL);
      }

      v233 = MEMORY[0x277C97AA0](v234);
      *(archive + 13) = v233;
    }

    objc_msgSend_saveToArchive_archiver_(v229, v228, v230, v231, v232, v233, archiverCopy);
  }

  if (objc_msgSend_containsProperty_(selfCopy, v224, v225, v226, v227, 1042))
  {
    v240 = objc_msgSend_objectForProperty_(selfCopy, v235, v236, v237, v238, 1042);
    *(archive + 4) |= 0x400u;
    v244 = *(archive + 14);
    if (!v244)
    {
      v245 = *(archive + 1);
      if (v245)
      {
        v245 = *(v245 & 0xFFFFFFFFFFFFFFFELL);
      }

      v244 = MEMORY[0x277C97B00](v245);
      *(archive + 14) = v244;
    }

    objc_msgSend_saveToArchive_archiver_(v240, v239, v241, v242, v243, v244, archiverCopy);
  }

  if (objc_msgSend_containsProperty_(selfCopy, v235, v236, v237, v238, 1043))
  {
    v250 = objc_msgSend_intValueForProperty_(selfCopy, v246, v247, v248, v249, 1043);
    *(archive + 4) |= 0x400000u;
    *(archive + 43) = v250;
  }

  if (objc_msgSend_containsProperty_(selfCopy, v246, v247, v248, v249, 1044))
  {
    v255 = objc_msgSend_intValueForProperty_(selfCopy, v251, v252, v253, v254, 1044);
    *(archive + 4) |= 0x800000u;
    *(archive + 44) = v255;
  }

  if (objc_msgSend_containsProperty_(selfCopy, v251, v252, v253, v254, 1045))
  {
    v260 = objc_msgSend_intValueForProperty_(selfCopy, v256, v257, v258, v259, 1045);
    *(archive + 4) |= 0x1000000u;
    *(archive + 45) = v260;
  }

  if (objc_msgSend_containsProperty_(selfCopy, v256, v257, v258, v259, 1046))
  {
    v265 = objc_msgSend_intValueForProperty_(selfCopy, v261, v262, v263, v264, 1046);
    *(archive + 4) |= 0x2000000u;
    *(archive + 46) = v265;
  }

  if (objc_msgSend_containsProperty_(selfCopy, v261, v262, v263, v264, 1047))
  {
    v270 = objc_msgSend_intValueForProperty_(selfCopy, v266, v267, v268, v269, 1047) != 0;
    *(archive + 4) |= 0x8000000u;
    *(archive + 192) = v270;
  }

  if (objc_msgSend_containsProperty_(selfCopy, v266, v267, v268, v269, 1048))
  {
    v275 = objc_msgSend_intValueForProperty_(selfCopy, v271, v272, v273, v274, 1048);
    *(archive + 4) |= 0x4000000u;
    *(archive + 47) = v275;
  }

  if (objc_msgSend_containsProperty_(selfCopy, v271, v272, v273, v274, 1049))
  {
    v280 = objc_msgSend_intValueForProperty_(selfCopy, v276, v277, v278, v279, 1049) != 0;
    *(archive + 4) |= 0x10000000u;
    *(archive + 193) = v280;
  }

  if (objc_msgSend_containsProperty_(selfCopy, v276, v277, v278, v279, 1049))
  {
    v285 = objc_msgSend_intValueForProperty_(selfCopy, v281, v282, v283, v284, 1049) != 0;
    *(archive + 4) |= 0x10000000u;
    *(archive + 193) = v285;
  }

  if (objc_msgSend_containsProperty_(selfCopy, v281, v282, v283, v284, 1050))
  {
    v290 = objc_msgSend_intValueForProperty_(selfCopy, v286, v287, v288, v289, 1050) != 0;
    *(archive + 4) |= 0x20000000u;
    *(archive + 194) = v290;
  }

  if (objc_msgSend_containsProperty_(selfCopy, v286, v287, v288, v289, 1051))
  {
    v295 = objc_msgSend_intValueForProperty_(selfCopy, v291, v292, v293, v294, 1051) != 0;
    *(archive + 4) |= 0x40000000u;
    *(archive + 195) = v295;
  }

  if (objc_msgSend_containsProperty_(selfCopy, v291, v292, v293, v294, 1051))
  {
    v300 = objc_msgSend_intValueForProperty_(selfCopy, v296, v297, v298, v299, 1051) != 0;
    *(archive + 4) |= 0x40000000u;
    *(archive + 195) = v300;
  }

  if (objc_msgSend_containsProperty_(selfCopy, v296, v297, v298, v299, 1052))
  {
    v305 = objc_msgSend_intValueForProperty_(selfCopy, v301, v302, v303, v304, 1052) != 0;
    *(archive + 4) |= 0x80000000;
    *(archive + 196) = v305;
  }

  if (objc_msgSend_containsProperty_(selfCopy, v301, v302, v303, v304, 1052))
  {
    v310 = objc_msgSend_intValueForProperty_(selfCopy, v306, v307, v308, v309, 1052) != 0;
    *(archive + 4) |= 0x80000000;
    *(archive + 196) = v310;
  }

  if (objc_msgSend_containsProperty_(selfCopy, v306, v307, v308, v309, 1052))
  {
    v315 = objc_msgSend_intValueForProperty_(selfCopy, v311, v312, v313, v314, 1052) != 0;
    *(archive + 4) |= 0x80000000;
    *(archive + 196) = v315;
  }

  if (objc_msgSend_containsProperty_(selfCopy, v311, v312, v313, v314, 1053))
  {
    v320 = objc_msgSend_intValueForProperty_(selfCopy, v316, v317, v318, v319, 1053) != 0;
    *(archive + 5) |= 1u;
    *(archive + 197) = v320;
  }

  if (objc_msgSend_containsProperty_(selfCopy, v316, v317, v318, v319, 1054))
  {
    v325 = objc_msgSend_intValueForProperty_(selfCopy, v321, v322, v323, v324, 1054) != 0;
    *(archive + 5) |= 2u;
    *(archive + 198) = v325;
  }

  if (objc_msgSend_containsProperty_(selfCopy, v321, v322, v323, v324, 1054))
  {
    v330 = objc_msgSend_intValueForProperty_(selfCopy, v326, v327, v328, v329, 1054) != 0;
    *(archive + 5) |= 2u;
    *(archive + 198) = v330;
  }

  if (objc_msgSend_containsProperty_(selfCopy, v326, v327, v328, v329, 1054))
  {
    v335 = objc_msgSend_intValueForProperty_(selfCopy, v331, v332, v333, v334, 1054) != 0;
    *(archive + 5) |= 2u;
    *(archive + 198) = v335;
  }

  if (objc_msgSend_containsProperty_(selfCopy, v331, v332, v333, v334, 1055))
  {
    v340 = objc_msgSend_intValueForProperty_(selfCopy, v336, v337, v338, v339, 1055) != 0;
    *(archive + 5) |= 4u;
    *(archive + 199) = v340;
  }

  if (objc_msgSend_containsProperty_(selfCopy, v336, v337, v338, v339, 1055))
  {
    v345 = objc_msgSend_intValueForProperty_(selfCopy, v341, v342, v343, v344, 1055) != 0;
    *(archive + 5) |= 4u;
    *(archive + 199) = v345;
  }

  if (objc_msgSend_containsProperty_(selfCopy, v341, v342, v343, v344, 1056))
  {
    v350 = objc_msgSend_intValueForProperty_(selfCopy, v346, v347, v348, v349, 1056) != 0;
    *(archive + 5) |= 8u;
    *(archive + 200) = v350;
  }

  if (objc_msgSend_containsProperty_(selfCopy, v346, v347, v348, v349, 1057))
  {
    v355 = objc_msgSend_intValueForProperty_(selfCopy, v351, v352, v353, v354, 1057) != 0;
    *(archive + 5) |= 0x10u;
    *(archive + 201) = v355;
  }

  if (objc_msgSend_containsProperty_(selfCopy, v351, v352, v353, v354, 1057))
  {
    v360 = objc_msgSend_intValueForProperty_(selfCopy, v356, v357, v358, v359, 1057) != 0;
    *(archive + 5) |= 0x10u;
    *(archive + 201) = v360;
  }

  if (objc_msgSend_containsProperty_(selfCopy, v356, v357, v358, v359, 1058))
  {
    v365 = objc_msgSend_intValueForProperty_(selfCopy, v361, v362, v363, v364, 1058) != 0;
    *(archive + 5) |= 0x20u;
    *(archive + 202) = v365;
  }

  if (objc_msgSend_containsProperty_(selfCopy, v361, v362, v363, v364, 1058))
  {
    v370 = objc_msgSend_intValueForProperty_(selfCopy, v366, v367, v368, v369, 1058) != 0;
    *(archive + 5) |= 0x20u;
    *(archive + 202) = v370;
  }

  if (objc_msgSend_containsProperty_(selfCopy, v366, v367, v368, v369, 1059))
  {
    v375 = objc_msgSend_intValueForProperty_(selfCopy, v371, v372, v373, v374, 1059) != 0;
    *(archive + 5) |= 0x40u;
    *(archive + 203) = v375;
  }

  if (objc_msgSend_containsProperty_(selfCopy, v371, v372, v373, v374, 1059))
  {
    v380 = objc_msgSend_intValueForProperty_(selfCopy, v376, v377, v378, v379, 1059) != 0;
    *(archive + 5) |= 0x40u;
    *(archive + 203) = v380;
  }

  if (objc_msgSend_containsProperty_(selfCopy, v376, v377, v378, v379, 1060))
  {
    v385 = objc_msgSend_intValueForProperty_(selfCopy, v381, v382, v383, v384, 1060) != 0;
    *(archive + 5) |= 0x80u;
    *(archive + 204) = v385;
  }

  if (objc_msgSend_containsProperty_(selfCopy, v381, v382, v383, v384, 1060))
  {
    v390 = objc_msgSend_intValueForProperty_(selfCopy, v386, v387, v388, v389, 1060) != 0;
    *(archive + 5) |= 0x80u;
    *(archive + 204) = v390;
  }

  if (objc_msgSend_containsProperty_(selfCopy, v386, v387, v388, v389, 1061))
  {
    v395 = objc_msgSend_intValueForProperty_(selfCopy, v391, v392, v393, v394, 1061);
    *(archive + 5) |= 0x100u;
    *(archive + 52) = v395;
  }

  if (objc_msgSend_containsProperty_(selfCopy, v391, v392, v393, v394, 1061))
  {
    v400 = objc_msgSend_intValueForProperty_(selfCopy, v396, v397, v398, v399, 1061);
    *(archive + 5) |= 0x100u;
    *(archive + 52) = v400;
  }

  if (objc_msgSend_containsProperty_(selfCopy, v396, v397, v398, v399, 1062))
  {
    v405 = objc_msgSend_objectForProperty_(selfCopy, v401, v402, v403, v404, 1062);
    *(archive + 4) |= 1u;
    v406 = google::protobuf::internal::ArenaStringPtr::Mutable();
    objc_msgSend_tsch_saveToProtobufString_(v405, v407, v408, v409, v410, v406);
  }

  if (objc_msgSend_containsProperty_(selfCopy, v401, v402, v403, v404, 1063))
  {
    v415 = objc_msgSend_intValueForProperty_(selfCopy, v411, v412, v413, v414, 1063);
    *(archive + 5) |= 0x200u;
    *(archive + 53) = v415;
  }

  if (objc_msgSend_containsProperty_(selfCopy, v411, v412, v413, v414, 1063))
  {
    v420 = objc_msgSend_intValueForProperty_(selfCopy, v416, v417, v418, v419, 1063);
    *(archive + 5) |= 0x200u;
    *(archive + 53) = v420;
  }

  if (objc_msgSend_containsProperty_(selfCopy, v416, v417, v418, v419, 1063))
  {
    v425 = objc_msgSend_intValueForProperty_(selfCopy, v421, v422, v423, v424, 1063);
    *(archive + 5) |= 0x200u;
    *(archive + 53) = v425;
  }

  if (objc_msgSend_containsProperty_(selfCopy, v421, v422, v423, v424, 1062))
  {
    v430 = objc_msgSend_objectForProperty_(selfCopy, v426, v427, v428, v429, 1062);
    *(archive + 4) |= 1u;
    v431 = google::protobuf::internal::ArenaStringPtr::Mutable();
    objc_msgSend_tsch_saveToProtobufString_(v430, v432, v433, v434, v435, v431);
  }

  if (objc_msgSend_containsProperty_(selfCopy, v426, v427, v428, v429, 1064))
  {
    v441 = objc_msgSend_objectForProperty_(selfCopy, v436, v437, v438, v439, 1064);
    *(archive + 4) |= 0x800u;
    v445 = *(archive + 15);
    if (!v445)
    {
      v446 = *(archive + 1);
      if (v446)
      {
        v446 = *(v446 & 0xFFFFFFFFFFFFFFFELL);
      }

      v445 = sub_276406A24(v446);
      *(archive + 15) = v445;
    }

    objc_msgSend_tsch_saveToArchive_archiver_(v441, v440, v442, v443, v444, v445, archiverCopy);
  }

  if (objc_msgSend_containsProperty_(selfCopy, v436, v437, v438, v439, 1065))
  {
    v452 = objc_msgSend_objectForProperty_(selfCopy, v447, v448, v449, v450, 1065);
    *(archive + 4) |= 0x1000u;
    v456 = *(archive + 16);
    if (!v456)
    {
      v457 = *(archive + 1);
      if (v457)
      {
        v457 = *(v457 & 0xFFFFFFFFFFFFFFFELL);
      }

      v456 = sub_276406A24(v457);
      *(archive + 16) = v456;
    }

    objc_msgSend_tsch_saveToArchive_archiver_(v452, v451, v453, v454, v455, v456, archiverCopy);
  }

  if (objc_msgSend_containsProperty_(selfCopy, v447, v448, v449, v450, 1066))
  {
    v462 = objc_msgSend_intValueForProperty_(selfCopy, v458, v459, v460, v461, 1066);
    *(archive + 5) |= 0x400u;
    *(archive + 54) = v462;
  }
}

+ (void)savePropertyMap:(id)map toArchive:(void *)archive archiver:(id)archiver
{
  mapCopy = map;
  archiverCopy = archiver;
  v9 = objc_alloc(objc_opt_class());
  v14 = objc_msgSend_properties(self, v10, v11, v12, v13);
  v19 = objc_msgSend_propertyMapWithProperties_(mapCopy, v15, v16, v17, v18, v14);
  v24 = objc_msgSend_initWithPropertyMap_(v9, v20, v21, v22, v23, v19);

  objc_msgSend_saveToArchive_archiver_(v24, v25, v26, v27, v28, archive, archiverCopy);
}

@end