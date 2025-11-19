@interface TSCHChartGenericPropertyMap
+ (id)imageFillProperties;
+ (id)properties;
+ (void)savePropertyMap:(id)a3 toArchive:(void *)a4 archiver:(id)a5;
- (TSCHChartGenericPropertyMap)initWithArchive:(const void *)a3 unarchiver:(id)a4;
- (void)saveToArchive:(void *)a3 archiver:(id)a4;
@end

@implementation TSCHChartGenericPropertyMap

+ (id)properties
{
  if (qword_280A476A0 != -1)
  {
    sub_2764A7D64();
  }

  v3 = qword_280A47698;

  return v3;
}

+ (id)imageFillProperties
{
  if (qword_280A476B0 != -1)
  {
    sub_2764A7D78();
  }

  v3 = qword_280A476A8;

  return v3;
}

- (TSCHChartGenericPropertyMap)initWithArchive:(const void *)a3 unarchiver:(id)a4
{
  v6 = a4;
  v147.receiver = self;
  v147.super_class = TSCHChartGenericPropertyMap;
  v7 = [(TSCHChartGenericPropertyMap *)&v147 init];

  if (v7)
  {
    v8 = v7;
    v13 = v8;
    v14 = *(a3 + 4);
    if ((v14 & 0x4000) != 0)
    {
      objc_msgSend_setIntValue_forProperty_(v8, v9, v10, v11, v12, *(a3 + 36), 1067);
      v14 = *(a3 + 4);
    }

    if ((v14 & 0x20000) != 0)
    {
      objc_msgSend_setIntValue_forProperty_(v13, v9, v10, v11, v12, *(a3 + 156), 1068);
      v14 = *(a3 + 4);
    }

    if ((v14 & 0x8000) != 0)
    {
      LODWORD(v10) = *(a3 + 37);
      objc_msgSend_setFloatValue_forProperty_(v13, v9, v10, v11, v12, 1069);
      v14 = *(a3 + 4);
    }

    if ((v14 & 0x10000) != 0)
    {
      LODWORD(v10) = *(a3 + 38);
      objc_msgSend_setFloatValue_forProperty_(v13, v9, v10, v11, v12, 1070);
      v14 = *(a3 + 4);
    }

    if ((v14 & 2) != 0)
    {
      v16 = objc_msgSend_instanceWithArchive_unarchiver_(TSCH3DLightingPackage, v9, v10, v11, v12, *(a3 + 5), v6);
      if (v16)
      {
        objc_msgSend_setObject_forProperty_(v13, v15, v17, v18, v19, v16, 1071);
      }

      v14 = *(a3 + 4);
      if ((v14 & 2) != 0)
      {
        v21 = objc_msgSend_instanceWithArchive_unarchiver_(TSCH3DLightingPackage, v9, v10, v11, v12, *(a3 + 5), v6);
        if (v21)
        {
          objc_msgSend_setObject_forProperty_(v13, v20, v22, v23, v24, v21, 1071);
        }

        v14 = *(a3 + 4);
        if ((v14 & 2) != 0)
        {
          v26 = objc_msgSend_instanceWithArchive_unarchiver_(TSCH3DLightingPackage, v9, v10, v11, v12, *(a3 + 5), v6);
          if (v26)
          {
            objc_msgSend_setObject_forProperty_(v13, v25, v27, v28, v29, v26, 1071);
          }

          v14 = *(a3 + 4);
          if ((v14 & 2) != 0)
          {
            v31 = objc_msgSend_instanceWithArchive_unarchiver_(TSCH3DLightingPackage, v9, v10, v11, v12, *(a3 + 5), v6);
            if (v31)
            {
              objc_msgSend_setObject_forProperty_(v13, v30, v32, v33, v34, v31, 1071);
            }

            v14 = *(a3 + 4);
            if ((v14 & 2) != 0)
            {
              v36 = objc_msgSend_instanceWithArchive_unarchiver_(TSCH3DLightingPackage, v9, v10, v11, v12, *(a3 + 5), v6);
              if (v36)
              {
                objc_msgSend_setObject_forProperty_(v13, v35, v37, v38, v39, v36, 1071);
              }

              v14 = *(a3 + 4);
              if ((v14 & 2) != 0)
              {
                v41 = objc_msgSend_instanceWithArchive_unarchiver_(TSCH3DLightingPackage, v9, v10, v11, v12, *(a3 + 5), v6);
                if (v41)
                {
                  objc_msgSend_setObject_forProperty_(v13, v40, v42, v43, v44, v41, 1071);
                }

                v14 = *(a3 + 4);
              }
            }
          }
        }
      }
    }

    if ((v14 & 4) != 0)
    {
      v46 = objc_msgSend_instanceWithArchive_unarchiver_(TSCH3DVector, v9, v10, v11, v12, *(a3 + 6), v6);
      if (v46)
      {
        objc_msgSend_setObject_forProperty_(v13, v45, v47, v48, v49, v46, 1072);
      }

      v14 = *(a3 + 4);
    }

    if ((v14 & 8) != 0)
    {
      v51 = objc_msgSend_instanceWithArchive_unarchiver_(TSCH3DVector, v9, v10, v11, v12, *(a3 + 7), v6);
      if (v51)
      {
        objc_msgSend_setObject_forProperty_(v13, v50, v52, v53, v54, v51, 1073);
      }

      v14 = *(a3 + 4);
      if ((v14 & 8) != 0)
      {
        v56 = objc_msgSend_instanceWithArchive_unarchiver_(TSCH3DVector, v9, v10, v11, v12, *(a3 + 7), v6);
        if (v56)
        {
          objc_msgSend_setObject_forProperty_(v13, v55, v57, v58, v59, v56, 1073);
        }

        v14 = *(a3 + 4);
        if ((v14 & 8) != 0)
        {
          v61 = objc_msgSend_instanceWithArchive_unarchiver_(TSCH3DVector, v9, v10, v11, v12, *(a3 + 7), v6);
          if (v61)
          {
            objc_msgSend_setObject_forProperty_(v13, v60, v62, v63, v64, v61, 1073);
          }

          v14 = *(a3 + 4);
          if ((v14 & 8) != 0)
          {
            v66 = objc_msgSend_instanceWithArchive_unarchiver_(TSCH3DVector, v9, v10, v11, v12, *(a3 + 7), v6);
            if (v66)
            {
              objc_msgSend_setObject_forProperty_(v13, v65, v67, v68, v69, v66, 1073);
            }

            v14 = *(a3 + 4);
            if ((v14 & 8) != 0)
            {
              v71 = objc_msgSend_instanceWithArchive_unarchiver_(TSCH3DVector, v9, v10, v11, v12, *(a3 + 7), v6);
              if (v71)
              {
                objc_msgSend_setObject_forProperty_(v13, v70, v72, v73, v74, v71, 1073);
              }

              v14 = *(a3 + 4);
              if ((v14 & 8) != 0)
              {
                v76 = objc_msgSend_instanceWithArchive_unarchiver_(TSCH3DVector, v9, v10, v11, v12, *(a3 + 7), v6);
                if (v76)
                {
                  objc_msgSend_setObject_forProperty_(v13, v75, v77, v78, v79, v76, 1073);
                }

                v14 = *(a3 + 4);
              }
            }
          }
        }
      }
    }

    if ((v14 & 0x10) != 0)
    {
      v81 = objc_msgSend_instanceWithArchive_unarchiver_(TSCH3DVector, v9, v10, v11, v12, *(a3 + 8), v6);
      if (v81)
      {
        objc_msgSend_setObject_forProperty_(v13, v80, v82, v83, v84, v81, 1074);
      }

      v14 = *(a3 + 4);
    }

    if ((v14 & 0x40000) != 0)
    {
      objc_msgSend_setIntValue_forProperty_(v13, v9, v10, v11, v12, *(a3 + 157), 1075);
      v14 = *(a3 + 4);
    }

    if ((v14 & 0x20) != 0)
    {
      v86 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D80248], v9, v10, v11, v12, *(a3 + 9), v6);
      if (v86)
      {
        objc_msgSend_setObject_forProperty_(v13, v85, v87, v88, v89, v86, 1076);
      }

      v14 = *(a3 + 4);
    }

    if ((v14 & 0x40) != 0)
    {
      v91 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v9, v10, v11, v12, *(a3 + 10), v6);
      if (v91)
      {
        objc_msgSend_setObject_forProperty_(v13, v90, v92, v93, v94, v91, 1077);
      }

      v14 = *(a3 + 4);
    }

    if ((v14 & 0x200000) != 0)
    {
      LODWORD(v10) = *(a3 + 40);
      objc_msgSend_setFloatValue_forProperty_(v13, v9, v10, v11, v12, 1078);
      v14 = *(a3 + 4);
    }

    if ((v14 & 0x80) != 0)
    {
      v96 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803A8], v9, v10, v11, v12, *(a3 + 11), v6);
      if (v96)
      {
        objc_msgSend_setObject_forProperty_(v13, v95, v97, v98, v99, v96, 1079);
      }

      v14 = *(a3 + 4);
    }

    if ((v14 & 0x100) != 0)
    {
      v101 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v9, v10, v11, v12, *(a3 + 12), v6);
      if (v101)
      {
        objc_msgSend_setObject_forProperty_(v13, v100, v102, v103, v104, v101, 1080);
      }

      v14 = *(a3 + 4);
    }

    if ((v14 & 0x400000) != 0)
    {
      objc_msgSend_setIntValue_forProperty_(v13, v9, v10, v11, v12, *(a3 + 41), 1081);
      v14 = *(a3 + 4);
      if ((v14 & 0x400000) != 0)
      {
        objc_msgSend_setIntValue_forProperty_(v13, v9, v10, v11, v12, *(a3 + 41), 1081);
        v14 = *(a3 + 4);
        if ((v14 & 0x400000) != 0)
        {
          objc_msgSend_setIntValue_forProperty_(v13, v9, v10, v11, v12, *(a3 + 41), 1081);
          v14 = *(a3 + 4);
          if ((v14 & 0x400000) != 0)
          {
            objc_msgSend_setIntValue_forProperty_(v13, v9, v10, v11, v12, *(a3 + 41), 1081);
            v14 = *(a3 + 4);
            if ((v14 & 0x400000) != 0)
            {
              objc_msgSend_setIntValue_forProperty_(v13, v9, v10, v11, v12, *(a3 + 41), 1081);
              v14 = *(a3 + 4);
              if ((v14 & 0x400000) != 0)
              {
                objc_msgSend_setIntValue_forProperty_(v13, v9, v10, v11, v12, *(a3 + 41), 1081);
                v14 = *(a3 + 4);
                if ((v14 & 0x400000) != 0)
                {
                  objc_msgSend_setIntValue_forProperty_(v13, v9, v10, v11, v12, *(a3 + 41), 1081);
                  v14 = *(a3 + 4);
                  if ((v14 & 0x400000) != 0)
                  {
                    objc_msgSend_setIntValue_forProperty_(v13, v9, v10, v11, v12, *(a3 + 41), 1081);
                    v14 = *(a3 + 4);
                    if ((v14 & 0x400000) != 0)
                    {
                      objc_msgSend_setIntValue_forProperty_(v13, v9, v10, v11, v12, *(a3 + 41), 1081);
                      v14 = *(a3 + 4);
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    if ((v14 & 0x80000) != 0)
    {
      objc_msgSend_setIntValue_forProperty_(v13, v9, v10, v11, v12, *(a3 + 158), 1082);
      v14 = *(a3 + 4);
    }

    if ((v14 & 0x100000) != 0)
    {
      objc_msgSend_setIntValue_forProperty_(v13, v9, v10, v11, v12, *(a3 + 159), 1090);
      v14 = *(a3 + 4);
    }

    if ((v14 & 0x800000) != 0)
    {
      LODWORD(v10) = *(a3 + 42);
      objc_msgSend_setFloatValue_forProperty_(v13, v9, v10, v11, v12, 1091);
      v14 = *(a3 + 4);
    }

    if ((v14 & 0x1000000) != 0)
    {
      objc_msgSend_setIntValue_forProperty_(v13, v9, v10, v11, v12, *(a3 + 43), 1098);
      v14 = *(a3 + 4);
    }

    if ((v14 & 0x2000000) != 0)
    {
      objc_msgSend_setIntValue_forProperty_(v13, v9, v10, v11, v12, *(a3 + 44), 1099);
    }

    if (*(a3 + 20))
    {
      objc_msgSend_setIntValue_forProperty_(v13, v9, v10, v11, v12, *(a3 + 204), 1100);
    }

    v105 = *(a3 + 4);
    if ((v105 & 0x200) != 0)
    {
      v107 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D80248], v9, v10, v11, v12, *(a3 + 13), v6);
      if (v107)
      {
        objc_msgSend_setObject_forProperty_(v13, v106, v108, v109, v110, v107, 1101);
      }

      v105 = *(a3 + 4);
    }

    if ((v105 & 0x4000000) != 0)
    {
      LODWORD(v10) = *(a3 + 45);
      objc_msgSend_setFloatValue_forProperty_(v13, v9, v10, v11, v12, 1102);
      v105 = *(a3 + 4);
    }

    if ((v105 & 0x8000000) != 0)
    {
      LODWORD(v10) = *(a3 + 46);
      objc_msgSend_setFloatValue_forProperty_(v13, v9, v10, v11, v12, 1103);
      v105 = *(a3 + 4);
    }

    if ((v105 & 0x10000000) != 0)
    {
      LODWORD(v10) = *(a3 + 47);
      objc_msgSend_setFloatValue_forProperty_(v13, v9, v10, v11, v12, 1104);
      v105 = *(a3 + 4);
    }

    if ((v105 & 0x20000000) != 0)
    {
      LODWORD(v10) = *(a3 + 48);
      objc_msgSend_setFloatValue_forProperty_(v13, v9, v10, v11, v12, 1105);
      v105 = *(a3 + 4);
    }

    if ((v105 & 0x40000000) != 0)
    {
      objc_msgSend_setIntValue_forProperty_(v13, v9, v10, v11, v12, *(a3 + 49), 1106);
      v105 = *(a3 + 4);
    }

    if (v105 < 0)
    {
      LODWORD(v10) = *(a3 + 50);
      objc_msgSend_setFloatValue_forProperty_(v13, v9, v10, v11, v12, 1107);
    }

    v111 = *(a3 + 5);
    if ((v111 & 2) != 0)
    {
      objc_msgSend_setIntValue_forProperty_(v13, v9, v10, v11, v12, *(a3 + 205), 1108);
      v111 = *(a3 + 5);
    }

    if ((v111 & 0x10) != 0)
    {
      LODWORD(v10) = *(a3 + 52);
      objc_msgSend_setFloatValue_forProperty_(v13, v9, v10, v11, v12, 1109);
      v111 = *(a3 + 5);
    }

    if ((v111 & 4) != 0)
    {
      objc_msgSend_setIntValue_forProperty_(v13, v9, v10, v11, v12, *(a3 + 206), 1110);
      v111 = *(a3 + 5);
    }

    if ((v111 & 0x20) != 0)
    {
      LODWORD(v10) = *(a3 + 53);
      objc_msgSend_setFloatValue_forProperty_(v13, v9, v10, v11, v12, 1111);
      v111 = *(a3 + 5);
    }

    if ((v111 & 8) != 0)
    {
      objc_msgSend_setIntValue_forProperty_(v13, v9, v10, v11, v12, *(a3 + 207), 1112);
      v111 = *(a3 + 5);
    }

    if ((v111 & 0x40) != 0)
    {
      objc_msgSend_setIntValue_forProperty_(v13, v9, v10, v11, v12, *(a3 + 216), 1113);
      v111 = *(a3 + 5);
    }

    if ((v111 & 0x80) != 0)
    {
      objc_msgSend_setIntValue_forProperty_(v13, v9, v10, v11, v12, *(a3 + 217), 1114);
      v111 = *(a3 + 5);
    }

    if ((v111 & 0x100) != 0)
    {
      objc_msgSend_setIntValue_forProperty_(v13, v9, v10, v11, v12, *(a3 + 218), 1115);
    }

    v112 = *(a3 + 4);
    if ((v112 & 0x400) != 0)
    {
      v114 = objc_msgSend_instanceWithArchive_unarchiver_(TSCHTimeBasedFormat, v9, v10, v11, v12, *(a3 + 14), v6);
      if (v114)
      {
        objc_msgSend_setObject_forProperty_(v13, v113, v115, v116, v117, v114, 1116);
      }

      v112 = *(a3 + 4);
    }

    if ((v112 & 0x800) != 0)
    {
      v119 = objc_msgSend_instanceWithArchive_unarchiver_(TSCHTimeBasedFormat, v9, v10, v11, v12, *(a3 + 15), v6);
      if (v119)
      {
        objc_msgSend_setObject_forProperty_(v13, v118, v120, v121, v122, v119, 1117);
      }

      v112 = *(a3 + 4);
    }

    if ((v112 & 0x1000) != 0)
    {
      v124 = objc_msgSend_instanceWithArchive_unarchiver_(TSCHNumberFormat, v9, v10, v11, v12, *(a3 + 16), v6);
      if (v124)
      {
        objc_msgSend_setObject_forProperty_(v13, v123, v125, v126, v127, v124, 1118);
      }
    }

    v128 = *(a3 + 5);
    if ((v128 & 0x400) != 0)
    {
      objc_msgSend_setIntValue_forProperty_(v13, v9, v10, v11, v12, *(a3 + 55), 1119);
      v128 = *(a3 + 5);
    }

    if ((v128 & 0x800) != 0)
    {
      LODWORD(v10) = *(a3 + 56);
      objc_msgSend_setFloatValue_forProperty_(v13, v9, v10, v11, v12, 1120);
      v128 = *(a3 + 5);
    }

    if ((v128 & 0x1000) != 0)
    {
      objc_msgSend_setIntValue_forProperty_(v13, v9, v10, v11, v12, *(a3 + 57), 1121);
      v128 = *(a3 + 5);
    }

    if ((v128 & 0x200) != 0)
    {
      objc_msgSend_setIntValue_forProperty_(v13, v9, v10, v11, v12, *(a3 + 219), 1122);
      v128 = *(a3 + 5);
    }

    if ((v128 & 0x2000) != 0)
    {
      objc_msgSend_setIntValue_forProperty_(v13, v9, v10, v11, v12, *(a3 + 58), 1123);
    }

    v129 = *(a3 + 4);
    if ((v129 & 0x2000) != 0)
    {
      v131 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D81180], v9, v10, v11, v12, *(a3 + 17), v6);
      if (v131)
      {
        objc_msgSend_setObject_forProperty_(v13, v130, v132, v133, v134, v131, 1125);
      }

      v129 = *(a3 + 4);
    }

    if (v129)
    {
      v135 = objc_alloc(MEMORY[0x277CCACA8]);
      v141 = objc_msgSend_tsp_initWithProtobufString_(v135, v136, v137, v138, v139, *(a3 + 4) & 0xFFFFFFFFFFFFFFFELL);
      if (v141)
      {
        objc_msgSend_setObject_forProperty_(v13, v140, v142, v143, v144, v141, 1124);
      }
    }

    if ((*(a3 + 21) & 0x40) != 0)
    {
      objc_msgSend_setIntValue_forProperty_(v13, v9, v10, v11, v12, *(a3 + 59), 1126);
    }
  }

  v145 = v7;

  return v145;
}

- (void)saveToArchive:(void *)a3 archiver:(id)a4
{
  v467 = a4;
  v6 = self;
  if (objc_msgSend_containsProperty_(v6, v7, v8, v9, v10, 1067))
  {
    v15 = objc_msgSend_intValueForProperty_(v6, v11, v12, v13, v14, 1067);
    *(a3 + 4) |= 0x4000u;
    *(a3 + 36) = v15;
  }

  if (objc_msgSend_containsProperty_(v6, v11, v12, v13, v14, 1068))
  {
    v20 = objc_msgSend_intValueForProperty_(v6, v16, v17, v18, v19, 1068) != 0;
    *(a3 + 4) |= 0x20000u;
    *(a3 + 156) = v20;
  }

  if (objc_msgSend_containsProperty_(v6, v16, v17, v18, v19, 1069))
  {
    objc_msgSend_floatValueForProperty_(v6, v21, v22, v23, v24, 1069);
    *(a3 + 4) |= 0x8000u;
    *(a3 + 37) = LODWORD(v22);
  }

  if (objc_msgSend_containsProperty_(v6, v21, v22, v23, v24, 1070))
  {
    objc_msgSend_floatValueForProperty_(v6, v25, v26, v27, v28, 1070);
    *(a3 + 4) |= 0x10000u;
    *(a3 + 38) = LODWORD(v26);
  }

  if (objc_msgSend_containsProperty_(v6, v25, v26, v27, v28, 1071))
  {
    v34 = objc_msgSend_objectForProperty_(v6, v29, v30, v31, v32, 1071);
    *(a3 + 4) |= 2u;
    v38 = *(a3 + 5);
    if (!v38)
    {
      v39 = *(a3 + 1);
      if (v39)
      {
        v39 = *(v39 & 0xFFFFFFFFFFFFFFFELL);
      }

      v38 = sub_276447688(v39);
      *(a3 + 5) = v38;
    }

    objc_msgSend_saveToArchive_archiver_(v34, v33, v35, v36, v37, v38, v467);
  }

  if (objc_msgSend_containsProperty_(v6, v29, v30, v31, v32, 1071))
  {
    v45 = objc_msgSend_objectForProperty_(v6, v40, v41, v42, v43, 1071);
    *(a3 + 4) |= 2u;
    v49 = *(a3 + 5);
    if (!v49)
    {
      v50 = *(a3 + 1);
      if (v50)
      {
        v50 = *(v50 & 0xFFFFFFFFFFFFFFFELL);
      }

      v49 = sub_276447688(v50);
      *(a3 + 5) = v49;
    }

    objc_msgSend_saveToArchive_archiver_(v45, v44, v46, v47, v48, v49, v467);
  }

  if (objc_msgSend_containsProperty_(v6, v40, v41, v42, v43, 1071))
  {
    v56 = objc_msgSend_objectForProperty_(v6, v51, v52, v53, v54, 1071);
    *(a3 + 4) |= 2u;
    v60 = *(a3 + 5);
    if (!v60)
    {
      v61 = *(a3 + 1);
      if (v61)
      {
        v61 = *(v61 & 0xFFFFFFFFFFFFFFFELL);
      }

      v60 = sub_276447688(v61);
      *(a3 + 5) = v60;
    }

    objc_msgSend_saveToArchive_archiver_(v56, v55, v57, v58, v59, v60, v467);
  }

  if (objc_msgSend_containsProperty_(v6, v51, v52, v53, v54, 1071))
  {
    v67 = objc_msgSend_objectForProperty_(v6, v62, v63, v64, v65, 1071);
    *(a3 + 4) |= 2u;
    v71 = *(a3 + 5);
    if (!v71)
    {
      v72 = *(a3 + 1);
      if (v72)
      {
        v72 = *(v72 & 0xFFFFFFFFFFFFFFFELL);
      }

      v71 = sub_276447688(v72);
      *(a3 + 5) = v71;
    }

    objc_msgSend_saveToArchive_archiver_(v67, v66, v68, v69, v70, v71, v467);
  }

  if (objc_msgSend_containsProperty_(v6, v62, v63, v64, v65, 1071))
  {
    v78 = objc_msgSend_objectForProperty_(v6, v73, v74, v75, v76, 1071);
    *(a3 + 4) |= 2u;
    v82 = *(a3 + 5);
    if (!v82)
    {
      v83 = *(a3 + 1);
      if (v83)
      {
        v83 = *(v83 & 0xFFFFFFFFFFFFFFFELL);
      }

      v82 = sub_276447688(v83);
      *(a3 + 5) = v82;
    }

    objc_msgSend_saveToArchive_archiver_(v78, v77, v79, v80, v81, v82, v467);
  }

  if (objc_msgSend_containsProperty_(v6, v73, v74, v75, v76, 1071))
  {
    v89 = objc_msgSend_objectForProperty_(v6, v84, v85, v86, v87, 1071);
    *(a3 + 4) |= 2u;
    v93 = *(a3 + 5);
    if (!v93)
    {
      v94 = *(a3 + 1);
      if (v94)
      {
        v94 = *(v94 & 0xFFFFFFFFFFFFFFFELL);
      }

      v93 = sub_276447688(v94);
      *(a3 + 5) = v93;
    }

    objc_msgSend_saveToArchive_archiver_(v89, v88, v90, v91, v92, v93, v467);
  }

  if (objc_msgSend_containsProperty_(v6, v84, v85, v86, v87, 1072))
  {
    v100 = objc_msgSend_objectForProperty_(v6, v95, v96, v97, v98, 1072);
    *(a3 + 4) |= 4u;
    v104 = *(a3 + 6);
    if (!v104)
    {
      v105 = *(a3 + 1);
      if (v105)
      {
        v105 = *(v105 & 0xFFFFFFFFFFFFFFFELL);
      }

      v104 = sub_276447FD4(v105);
      *(a3 + 6) = v104;
    }

    objc_msgSend_saveToArchive_archiver_(v100, v99, v101, v102, v103, v104, v467);
  }

  if (objc_msgSend_containsProperty_(v6, v95, v96, v97, v98, 1073))
  {
    v111 = objc_msgSend_objectForProperty_(v6, v106, v107, v108, v109, 1073);
    *(a3 + 4) |= 8u;
    v115 = *(a3 + 7);
    if (!v115)
    {
      v116 = *(a3 + 1);
      if (v116)
      {
        v116 = *(v116 & 0xFFFFFFFFFFFFFFFELL);
      }

      v115 = sub_276447FD4(v116);
      *(a3 + 7) = v115;
    }

    objc_msgSend_saveToArchive_archiver_(v111, v110, v112, v113, v114, v115, v467);
  }

  if (objc_msgSend_containsProperty_(v6, v106, v107, v108, v109, 1073))
  {
    v122 = objc_msgSend_objectForProperty_(v6, v117, v118, v119, v120, 1073);
    *(a3 + 4) |= 8u;
    v126 = *(a3 + 7);
    if (!v126)
    {
      v127 = *(a3 + 1);
      if (v127)
      {
        v127 = *(v127 & 0xFFFFFFFFFFFFFFFELL);
      }

      v126 = sub_276447FD4(v127);
      *(a3 + 7) = v126;
    }

    objc_msgSend_saveToArchive_archiver_(v122, v121, v123, v124, v125, v126, v467);
  }

  if (objc_msgSend_containsProperty_(v6, v117, v118, v119, v120, 1073))
  {
    v133 = objc_msgSend_objectForProperty_(v6, v128, v129, v130, v131, 1073);
    *(a3 + 4) |= 8u;
    v137 = *(a3 + 7);
    if (!v137)
    {
      v138 = *(a3 + 1);
      if (v138)
      {
        v138 = *(v138 & 0xFFFFFFFFFFFFFFFELL);
      }

      v137 = sub_276447FD4(v138);
      *(a3 + 7) = v137;
    }

    objc_msgSend_saveToArchive_archiver_(v133, v132, v134, v135, v136, v137, v467);
  }

  if (objc_msgSend_containsProperty_(v6, v128, v129, v130, v131, 1073))
  {
    v144 = objc_msgSend_objectForProperty_(v6, v139, v140, v141, v142, 1073);
    *(a3 + 4) |= 8u;
    v148 = *(a3 + 7);
    if (!v148)
    {
      v149 = *(a3 + 1);
      if (v149)
      {
        v149 = *(v149 & 0xFFFFFFFFFFFFFFFELL);
      }

      v148 = sub_276447FD4(v149);
      *(a3 + 7) = v148;
    }

    objc_msgSend_saveToArchive_archiver_(v144, v143, v145, v146, v147, v148, v467);
  }

  if (objc_msgSend_containsProperty_(v6, v139, v140, v141, v142, 1073))
  {
    v155 = objc_msgSend_objectForProperty_(v6, v150, v151, v152, v153, 1073);
    *(a3 + 4) |= 8u;
    v159 = *(a3 + 7);
    if (!v159)
    {
      v160 = *(a3 + 1);
      if (v160)
      {
        v160 = *(v160 & 0xFFFFFFFFFFFFFFFELL);
      }

      v159 = sub_276447FD4(v160);
      *(a3 + 7) = v159;
    }

    objc_msgSend_saveToArchive_archiver_(v155, v154, v156, v157, v158, v159, v467);
  }

  if (objc_msgSend_containsProperty_(v6, v150, v151, v152, v153, 1073))
  {
    v166 = objc_msgSend_objectForProperty_(v6, v161, v162, v163, v164, 1073);
    *(a3 + 4) |= 8u;
    v170 = *(a3 + 7);
    if (!v170)
    {
      v171 = *(a3 + 1);
      if (v171)
      {
        v171 = *(v171 & 0xFFFFFFFFFFFFFFFELL);
      }

      v170 = sub_276447FD4(v171);
      *(a3 + 7) = v170;
    }

    objc_msgSend_saveToArchive_archiver_(v166, v165, v167, v168, v169, v170, v467);
  }

  if (objc_msgSend_containsProperty_(v6, v161, v162, v163, v164, 1074))
  {
    v177 = objc_msgSend_objectForProperty_(v6, v172, v173, v174, v175, 1074);
    *(a3 + 4) |= 0x10u;
    v181 = *(a3 + 8);
    if (!v181)
    {
      v182 = *(a3 + 1);
      if (v182)
      {
        v182 = *(v182 & 0xFFFFFFFFFFFFFFFELL);
      }

      v181 = sub_276447FD4(v182);
      *(a3 + 8) = v181;
    }

    objc_msgSend_saveToArchive_archiver_(v177, v176, v178, v179, v180, v181, v467);
  }

  if (objc_msgSend_containsProperty_(v6, v172, v173, v174, v175, 1075))
  {
    v187 = objc_msgSend_intValueForProperty_(v6, v183, v184, v185, v186, 1075) != 0;
    *(a3 + 4) |= 0x40000u;
    *(a3 + 157) = v187;
  }

  if (objc_msgSend_containsProperty_(v6, v183, v184, v185, v186, 1076))
  {
    v193 = objc_msgSend_objectForProperty_(v6, v188, v189, v190, v191, 1076);
    *(a3 + 4) |= 0x20u;
    v197 = *(a3 + 9);
    if (!v197)
    {
      v198 = *(a3 + 1);
      if (v198)
      {
        v198 = *(v198 & 0xFFFFFFFFFFFFFFFELL);
      }

      v197 = MEMORY[0x277C97A80](v198);
      *(a3 + 9) = v197;
    }

    objc_msgSend_saveToArchive_archiver_(v193, v192, v194, v195, v196, v197, v467);
  }

  if (objc_msgSend_containsProperty_(v6, v188, v189, v190, v191, 1077))
  {
    v204 = objc_msgSend_objectForProperty_(v6, v199, v200, v201, v202, 1077);
    *(a3 + 4) |= 0x40u;
    v208 = *(a3 + 10);
    if (!v208)
    {
      v209 = *(a3 + 1);
      if (v209)
      {
        v209 = *(v209 & 0xFFFFFFFFFFFFFFFELL);
      }

      v208 = MEMORY[0x277C97AA0](v209);
      *(a3 + 10) = v208;
    }

    objc_msgSend_saveToArchive_archiver_(v204, v203, v205, v206, v207, v208, v467);
  }

  if (objc_msgSend_containsProperty_(v6, v199, v200, v201, v202, 1078))
  {
    objc_msgSend_floatValueForProperty_(v6, v210, v211, v212, v213, 1078);
    *(a3 + 4) |= 0x200000u;
    *(a3 + 40) = LODWORD(v211);
  }

  if (objc_msgSend_containsProperty_(v6, v210, v211, v212, v213, 1079))
  {
    v219 = objc_msgSend_objectForProperty_(v6, v214, v215, v216, v217, 1079);
    *(a3 + 4) |= 0x80u;
    v223 = *(a3 + 11);
    if (!v223)
    {
      v224 = *(a3 + 1);
      if (v224)
      {
        v224 = *(v224 & 0xFFFFFFFFFFFFFFFELL);
      }

      v223 = MEMORY[0x277C97A90](v224);
      *(a3 + 11) = v223;
    }

    objc_msgSend_saveToArchive_archiver_(v219, v218, v220, v221, v222, v223, v467);
  }

  if (objc_msgSend_containsProperty_(v6, v214, v215, v216, v217, 1080))
  {
    v230 = objc_msgSend_objectForProperty_(v6, v225, v226, v227, v228, 1080);
    *(a3 + 4) |= 0x100u;
    v234 = *(a3 + 12);
    if (!v234)
    {
      v235 = *(a3 + 1);
      if (v235)
      {
        v235 = *(v235 & 0xFFFFFFFFFFFFFFFELL);
      }

      v234 = MEMORY[0x277C97AA0](v235);
      *(a3 + 12) = v234;
    }

    objc_msgSend_saveToArchive_archiver_(v230, v229, v231, v232, v233, v234, v467);
  }

  if (objc_msgSend_containsProperty_(v6, v225, v226, v227, v228, 1081))
  {
    v240 = objc_msgSend_intValueForProperty_(v6, v236, v237, v238, v239, 1081);
    *(a3 + 4) |= 0x400000u;
    *(a3 + 41) = v240;
  }

  if (objc_msgSend_containsProperty_(v6, v236, v237, v238, v239, 1081))
  {
    v245 = objc_msgSend_intValueForProperty_(v6, v241, v242, v243, v244, 1081);
    *(a3 + 4) |= 0x400000u;
    *(a3 + 41) = v245;
  }

  if (objc_msgSend_containsProperty_(v6, v241, v242, v243, v244, 1081))
  {
    v250 = objc_msgSend_intValueForProperty_(v6, v246, v247, v248, v249, 1081);
    *(a3 + 4) |= 0x400000u;
    *(a3 + 41) = v250;
  }

  if (objc_msgSend_containsProperty_(v6, v246, v247, v248, v249, 1081))
  {
    v255 = objc_msgSend_intValueForProperty_(v6, v251, v252, v253, v254, 1081);
    *(a3 + 4) |= 0x400000u;
    *(a3 + 41) = v255;
  }

  if (objc_msgSend_containsProperty_(v6, v251, v252, v253, v254, 1081))
  {
    v260 = objc_msgSend_intValueForProperty_(v6, v256, v257, v258, v259, 1081);
    *(a3 + 4) |= 0x400000u;
    *(a3 + 41) = v260;
  }

  if (objc_msgSend_containsProperty_(v6, v256, v257, v258, v259, 1081))
  {
    v265 = objc_msgSend_intValueForProperty_(v6, v261, v262, v263, v264, 1081);
    *(a3 + 4) |= 0x400000u;
    *(a3 + 41) = v265;
  }

  if (objc_msgSend_containsProperty_(v6, v261, v262, v263, v264, 1081))
  {
    v270 = objc_msgSend_intValueForProperty_(v6, v266, v267, v268, v269, 1081);
    *(a3 + 4) |= 0x400000u;
    *(a3 + 41) = v270;
  }

  if (objc_msgSend_containsProperty_(v6, v266, v267, v268, v269, 1081))
  {
    v275 = objc_msgSend_intValueForProperty_(v6, v271, v272, v273, v274, 1081);
    *(a3 + 4) |= 0x400000u;
    *(a3 + 41) = v275;
  }

  if (objc_msgSend_containsProperty_(v6, v271, v272, v273, v274, 1081))
  {
    v280 = objc_msgSend_intValueForProperty_(v6, v276, v277, v278, v279, 1081);
    *(a3 + 4) |= 0x400000u;
    *(a3 + 41) = v280;
  }

  if (objc_msgSend_containsProperty_(v6, v276, v277, v278, v279, 1082))
  {
    v285 = objc_msgSend_intValueForProperty_(v6, v281, v282, v283, v284, 1082) != 0;
    *(a3 + 4) |= 0x80000u;
    *(a3 + 158) = v285;
  }

  if (objc_msgSend_containsProperty_(v6, v281, v282, v283, v284, 1090))
  {
    v290 = objc_msgSend_intValueForProperty_(v6, v286, v287, v288, v289, 1090) != 0;
    *(a3 + 4) |= 0x100000u;
    *(a3 + 159) = v290;
  }

  if (objc_msgSend_containsProperty_(v6, v286, v287, v288, v289, 1091))
  {
    objc_msgSend_floatValueForProperty_(v6, v291, v292, v293, v294, 1091);
    *(a3 + 4) |= 0x800000u;
    *(a3 + 42) = LODWORD(v292);
  }

  if (objc_msgSend_containsProperty_(v6, v291, v292, v293, v294, 1098))
  {
    v299 = objc_msgSend_intValueForProperty_(v6, v295, v296, v297, v298, 1098);
    *(a3 + 4) |= 0x1000000u;
    *(a3 + 43) = v299;
  }

  if (objc_msgSend_containsProperty_(v6, v295, v296, v297, v298, 1099))
  {
    v304 = objc_msgSend_intValueForProperty_(v6, v300, v301, v302, v303, 1099);
    *(a3 + 4) |= 0x2000000u;
    *(a3 + 44) = v304;
  }

  if (objc_msgSend_containsProperty_(v6, v300, v301, v302, v303, 1100))
  {
    v309 = objc_msgSend_intValueForProperty_(v6, v305, v306, v307, v308, 1100) != 0;
    *(a3 + 5) |= 1u;
    *(a3 + 204) = v309;
  }

  if (objc_msgSend_containsProperty_(v6, v305, v306, v307, v308, 1101))
  {
    v315 = objc_msgSend_objectForProperty_(v6, v310, v311, v312, v313, 1101);
    *(a3 + 4) |= 0x200u;
    v319 = *(a3 + 13);
    if (!v319)
    {
      v320 = *(a3 + 1);
      if (v320)
      {
        v320 = *(v320 & 0xFFFFFFFFFFFFFFFELL);
      }

      v319 = MEMORY[0x277C97A80](v320);
      *(a3 + 13) = v319;
    }

    objc_msgSend_saveToArchive_archiver_(v315, v314, v316, v317, v318, v319, v467);
  }

  if (objc_msgSend_containsProperty_(v6, v310, v311, v312, v313, 1102))
  {
    objc_msgSend_floatValueForProperty_(v6, v321, v322, v323, v324, 1102);
    *(a3 + 4) |= 0x4000000u;
    *(a3 + 45) = LODWORD(v322);
  }

  if (objc_msgSend_containsProperty_(v6, v321, v322, v323, v324, 1103))
  {
    objc_msgSend_floatValueForProperty_(v6, v325, v326, v327, v328, 1103);
    *(a3 + 4) |= 0x8000000u;
    *(a3 + 46) = LODWORD(v326);
  }

  if (objc_msgSend_containsProperty_(v6, v325, v326, v327, v328, 1104))
  {
    objc_msgSend_floatValueForProperty_(v6, v329, v330, v331, v332, 1104);
    *(a3 + 4) |= 0x10000000u;
    *(a3 + 47) = LODWORD(v330);
  }

  if (objc_msgSend_containsProperty_(v6, v329, v330, v331, v332, 1105))
  {
    objc_msgSend_floatValueForProperty_(v6, v333, v334, v335, v336, 1105);
    *(a3 + 4) |= 0x20000000u;
    *(a3 + 48) = LODWORD(v334);
  }

  if (objc_msgSend_containsProperty_(v6, v333, v334, v335, v336, 1106))
  {
    v341 = objc_msgSend_intValueForProperty_(v6, v337, v338, v339, v340, 1106);
    *(a3 + 4) |= 0x40000000u;
    *(a3 + 49) = v341;
  }

  if (objc_msgSend_containsProperty_(v6, v337, v338, v339, v340, 1107))
  {
    objc_msgSend_floatValueForProperty_(v6, v342, v343, v344, v345, 1107);
    *(a3 + 4) |= 0x80000000;
    *(a3 + 50) = LODWORD(v343);
  }

  if (objc_msgSend_containsProperty_(v6, v342, v343, v344, v345, 1108))
  {
    v350 = objc_msgSend_intValueForProperty_(v6, v346, v347, v348, v349, 1108) != 0;
    *(a3 + 5) |= 2u;
    *(a3 + 205) = v350;
  }

  if (objc_msgSend_containsProperty_(v6, v346, v347, v348, v349, 1109))
  {
    objc_msgSend_floatValueForProperty_(v6, v351, v352, v353, v354, 1109);
    *(a3 + 5) |= 0x10u;
    *(a3 + 52) = LODWORD(v352);
  }

  if (objc_msgSend_containsProperty_(v6, v351, v352, v353, v354, 1110))
  {
    v359 = objc_msgSend_intValueForProperty_(v6, v355, v356, v357, v358, 1110) != 0;
    *(a3 + 5) |= 4u;
    *(a3 + 206) = v359;
  }

  if (objc_msgSend_containsProperty_(v6, v355, v356, v357, v358, 1111))
  {
    objc_msgSend_floatValueForProperty_(v6, v360, v361, v362, v363, 1111);
    *(a3 + 5) |= 0x20u;
    *(a3 + 53) = LODWORD(v361);
  }

  if (objc_msgSend_containsProperty_(v6, v360, v361, v362, v363, 1112))
  {
    v368 = objc_msgSend_intValueForProperty_(v6, v364, v365, v366, v367, 1112) != 0;
    *(a3 + 5) |= 8u;
    *(a3 + 207) = v368;
  }

  if (objc_msgSend_containsProperty_(v6, v364, v365, v366, v367, 1113))
  {
    v373 = objc_msgSend_intValueForProperty_(v6, v369, v370, v371, v372, 1113) != 0;
    *(a3 + 5) |= 0x40u;
    *(a3 + 216) = v373;
  }

  if (objc_msgSend_containsProperty_(v6, v369, v370, v371, v372, 1114))
  {
    v378 = objc_msgSend_intValueForProperty_(v6, v374, v375, v376, v377, 1114) != 0;
    *(a3 + 5) |= 0x80u;
    *(a3 + 217) = v378;
  }

  if (objc_msgSend_containsProperty_(v6, v374, v375, v376, v377, 1115))
  {
    v383 = objc_msgSend_intValueForProperty_(v6, v379, v380, v381, v382, 1115) != 0;
    *(a3 + 5) |= 0x100u;
    *(a3 + 218) = v383;
  }

  if (objc_msgSend_containsProperty_(v6, v379, v380, v381, v382, 1116))
  {
    v389 = objc_msgSend_objectForProperty_(v6, v384, v385, v386, v387, 1116);
    *(a3 + 4) |= 0x400u;
    v393 = *(a3 + 14);
    if (!v393)
    {
      v394 = *(a3 + 1);
      if (v394)
      {
        v394 = *(v394 & 0xFFFFFFFFFFFFFFFELL);
      }

      v393 = MEMORY[0x277C97B00](v394);
      *(a3 + 14) = v393;
    }

    objc_msgSend_saveToArchive_archiver_(v389, v388, v390, v391, v392, v393, v467);
  }

  if (objc_msgSend_containsProperty_(v6, v384, v385, v386, v387, 1117))
  {
    v400 = objc_msgSend_objectForProperty_(v6, v395, v396, v397, v398, 1117);
    *(a3 + 4) |= 0x800u;
    v404 = *(a3 + 15);
    if (!v404)
    {
      v405 = *(a3 + 1);
      if (v405)
      {
        v405 = *(v405 & 0xFFFFFFFFFFFFFFFELL);
      }

      v404 = MEMORY[0x277C97B00](v405);
      *(a3 + 15) = v404;
    }

    objc_msgSend_saveToArchive_archiver_(v400, v399, v401, v402, v403, v404, v467);
  }

  if (objc_msgSend_containsProperty_(v6, v395, v396, v397, v398, 1118))
  {
    v411 = objc_msgSend_objectForProperty_(v6, v406, v407, v408, v409, 1118);
    *(a3 + 4) |= 0x1000u;
    v415 = *(a3 + 16);
    if (!v415)
    {
      v416 = *(a3 + 1);
      if (v416)
      {
        v416 = *(v416 & 0xFFFFFFFFFFFFFFFELL);
      }

      v415 = MEMORY[0x277C97B00](v416);
      *(a3 + 16) = v415;
    }

    objc_msgSend_saveToArchive_archiver_(v411, v410, v412, v413, v414, v415, v467);
  }

  if (objc_msgSend_containsProperty_(v6, v406, v407, v408, v409, 1119))
  {
    v421 = objc_msgSend_intValueForProperty_(v6, v417, v418, v419, v420, 1119);
    *(a3 + 5) |= 0x400u;
    *(a3 + 55) = v421;
  }

  if (objc_msgSend_containsProperty_(v6, v417, v418, v419, v420, 1120))
  {
    objc_msgSend_floatValueForProperty_(v6, v422, v423, v424, v425, 1120);
    *(a3 + 5) |= 0x800u;
    *(a3 + 56) = LODWORD(v423);
  }

  if (objc_msgSend_containsProperty_(v6, v422, v423, v424, v425, 1121))
  {
    v430 = objc_msgSend_intValueForProperty_(v6, v426, v427, v428, v429, 1121);
    *(a3 + 5) |= 0x1000u;
    *(a3 + 57) = v430;
  }

  if (objc_msgSend_containsProperty_(v6, v426, v427, v428, v429, 1122))
  {
    v435 = objc_msgSend_intValueForProperty_(v6, v431, v432, v433, v434, 1122) != 0;
    *(a3 + 5) |= 0x200u;
    *(a3 + 219) = v435;
  }

  if (objc_msgSend_containsProperty_(v6, v431, v432, v433, v434, 1123))
  {
    v440 = objc_msgSend_intValueForProperty_(v6, v436, v437, v438, v439, 1123);
    *(a3 + 5) |= 0x2000u;
    *(a3 + 58) = v440;
  }

  if (objc_msgSend_containsProperty_(v6, v436, v437, v438, v439, 1125))
  {
    v446 = objc_msgSend_objectForProperty_(v6, v441, v442, v443, v444, 1125);
    *(a3 + 4) |= 0x2000u;
    v450 = *(a3 + 17);
    if (!v450)
    {
      v451 = *(a3 + 1);
      if (v451)
      {
        v451 = *(v451 & 0xFFFFFFFFFFFFFFFELL);
      }

      v450 = MEMORY[0x277C97B50](v451);
      *(a3 + 17) = v450;
    }

    objc_msgSend_saveToArchive_archiver_(v446, v445, v447, v448, v449, v450, v467);
  }

  if (objc_msgSend_containsProperty_(v6, v441, v442, v443, v444, 1124))
  {
    v456 = objc_msgSend_objectForProperty_(v6, v452, v453, v454, v455, 1124);
    *(a3 + 4) |= 1u;
    v457 = google::protobuf::internal::ArenaStringPtr::Mutable();
    objc_msgSend_tsch_saveToProtobufString_(v456, v458, v459, v460, v461, v457);
  }

  if (objc_msgSend_containsProperty_(v6, v452, v453, v454, v455, 1126))
  {
    v466 = objc_msgSend_intValueForProperty_(v6, v462, v463, v464, v465, 1126);
    *(a3 + 5) |= 0x4000u;
    *(a3 + 59) = v466;
  }
}

+ (void)savePropertyMap:(id)a3 toArchive:(void *)a4 archiver:(id)a5
{
  v29 = a3;
  v8 = a5;
  v9 = objc_alloc(objc_opt_class());
  v14 = objc_msgSend_properties(a1, v10, v11, v12, v13);
  v19 = objc_msgSend_propertyMapWithProperties_(v29, v15, v16, v17, v18, v14);
  v24 = objc_msgSend_initWithPropertyMap_(v9, v20, v21, v22, v23, v19);

  objc_msgSend_saveToArchive_archiver_(v24, v25, v26, v27, v28, a4, v8);
}

@end