@interface TSCHChartSeriesGenericPropertyMap
+ (id)imageFillProperties;
+ (id)properties;
+ (void)savePropertyMap:(id)map toArchive:(void *)archive archiver:(id)archiver;
- (TSCHChartSeriesGenericPropertyMap)initWithArchive:(const void *)archive unarchiver:(id)unarchiver;
- (void)saveToArchive:(void *)archive archiver:(id)archiver;
@end

@implementation TSCHChartSeriesGenericPropertyMap

+ (id)properties
{
  if (qword_280A47780 != -1)
  {
    sub_2764A7E7C();
  }

  v3 = qword_280A47778;

  return v3;
}

+ (id)imageFillProperties
{
  if (qword_280A47790 != -1)
  {
    sub_2764A7E90();
  }

  v3 = qword_280A47788;

  return v3;
}

- (TSCHChartSeriesGenericPropertyMap)initWithArchive:(const void *)archive unarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  v413.receiver = self;
  v413.super_class = TSCHChartSeriesGenericPropertyMap;
  v7 = [(TSCHChartSeriesGenericPropertyMap *)&v413 init];

  if (v7)
  {
    v9 = v7;
    v13 = *(archive + 4);
    if ((v13 & 2) != 0)
    {
      v15 = objc_msgSend_instanceWithArchive_unarchiver_(TSCHTimeBasedFormat, v8, v10, v11, v12, *(archive + 5), unarchiverCopy);
      if (v15)
      {
        objc_msgSend_setObject_forProperty_(v9, v14, v16, v17, v18, v15, 1127);
      }

      v13 = *(archive + 4);
    }

    if ((v13 & 4) != 0)
    {
      v20 = objc_msgSend_instanceWithArchive_unarchiver_(TSCHNumberFormat, v8, v10, v11, v12, *(archive + 6), unarchiverCopy);
      if (v20)
      {
        objc_msgSend_setObject_forProperty_(v9, v19, v21, v22, v23, v20, 1128);
      }

      v13 = *(archive + 4);
      if ((v13 & 4) != 0)
      {
        v25 = objc_msgSend_instanceWithArchive_unarchiver_(TSCHNumberFormat, v8, v10, v11, v12, *(archive + 6), unarchiverCopy);
        if (v25)
        {
          objc_msgSend_setObject_forProperty_(v9, v24, v26, v27, v28, v25, 1128);
        }

        v13 = *(archive + 4);
      }
    }

    if ((v13 & 0x4000000) != 0)
    {
      LODWORD(v10) = *(archive + 60);
      objc_msgSend_setFloatValue_forProperty_(v9, v8, v10, v11, v12, 1129);
      v13 = *(archive + 4);
    }

    if ((v13 & 0x8000000) != 0)
    {
      LODWORD(v10) = *(archive + 61);
      objc_msgSend_setFloatValue_forProperty_(v9, v8, v10, v11, v12, 1130);
      v13 = *(archive + 4);
    }

    if ((v13 & 8) != 0)
    {
      v30 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D80308], v8, v10, v11, v12, *(archive + 7), unarchiverCopy);
      if (v30)
      {
        objc_msgSend_setObject_forProperty_(v9, v29, v31, v32, v33, v30, 1131);
      }

      v13 = *(archive + 4);
    }

    if ((v13 & 0x10) != 0)
    {
      v35 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D80308], v8, v10, v11, v12, *(archive + 8), unarchiverCopy);
      if (v35)
      {
        objc_msgSend_setObject_forProperty_(v9, v34, v36, v37, v38, v35, 1132);
      }

      v13 = *(archive + 4);
    }

    if ((v13 & 0x20) != 0)
    {
      v40 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v8, v10, v11, v12, *(archive + 9), unarchiverCopy);
      if (v40)
      {
        objc_msgSend_setObject_forProperty_(v9, v39, v41, v42, v43, v40, 1133);
      }

      v13 = *(archive + 4);
    }

    if ((v13 & 0x40) != 0)
    {
      v45 = objc_msgSend_instanceWithArchive_unarchiver_(TSCHTimeBasedFormat, v8, v10, v11, v12, *(archive + 10), unarchiverCopy);
      if (v45)
      {
        objc_msgSend_setObject_forProperty_(v9, v44, v46, v47, v48, v45, 1136);
      }

      v13 = *(archive + 4);
    }

    if ((v13 & 0x80) != 0)
    {
      v50 = objc_msgSend_instanceWithArchive_unarchiver_(TSCHTimeBasedFormat, v8, v10, v11, v12, *(archive + 11), unarchiverCopy);
      if (v50)
      {
        objc_msgSend_setObject_forProperty_(v9, v49, v51, v52, v53, v50, 1137);
      }

      v13 = *(archive + 4);
    }

    if ((v13 & 0x10000000) != 0)
    {
      objc_msgSend_setIntValue_forProperty_(v9, v8, v10, v11, v12, *(archive + 62), 1138);
      v13 = *(archive + 4);
      if ((v13 & 0x10000000) != 0)
      {
        objc_msgSend_setIntValue_forProperty_(v9, v8, v10, v11, v12, *(archive + 62), 1138);
        v13 = *(archive + 4);
        if ((v13 & 0x10000000) != 0)
        {
          objc_msgSend_setIntValue_forProperty_(v9, v8, v10, v11, v12, *(archive + 62), 1138);
          v13 = *(archive + 4);
          if ((v13 & 0x10000000) != 0)
          {
            objc_msgSend_setIntValue_forProperty_(v9, v8, v10, v11, v12, *(archive + 62), 1138);
            v13 = *(archive + 4);
            if ((v13 & 0x10000000) != 0)
            {
              objc_msgSend_setIntValue_forProperty_(v9, v8, v10, v11, v12, *(archive + 62), 1138);
              v13 = *(archive + 4);
              if ((v13 & 0x10000000) != 0)
              {
                objc_msgSend_setIntValue_forProperty_(v9, v8, v10, v11, v12, *(archive + 62), 1138);
                v13 = *(archive + 4);
                if ((v13 & 0x10000000) != 0)
                {
                  objc_msgSend_setIntValue_forProperty_(v9, v8, v10, v11, v12, *(archive + 62), 1138);
                  v13 = *(archive + 4);
                  if ((v13 & 0x10000000) != 0)
                  {
                    objc_msgSend_setIntValue_forProperty_(v9, v8, v10, v11, v12, *(archive + 62), 1138);
                    v13 = *(archive + 4);
                    if ((v13 & 0x10000000) != 0)
                    {
                      objc_msgSend_setIntValue_forProperty_(v9, v8, v10, v11, v12, *(archive + 62), 1138);
                      v13 = *(archive + 4);
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    if ((v13 & 0x100) != 0)
    {
      v55 = objc_msgSend_tsch_instanceWithArchive_unarchiver_(MEMORY[0x277CBEB18], v8, v10, v11, v12, *(archive + 12), unarchiverCopy);
      if (v55)
      {
        objc_msgSend_setObject_forProperty_(v9, v54, v56, v57, v58, v55, 1139);
      }

      v13 = *(archive + 4);
    }

    if ((v13 & 0x200) != 0)
    {
      v60 = objc_msgSend_tsch_instanceWithArchive_unarchiver_(MEMORY[0x277CBEB18], v8, v10, v11, v12, *(archive + 13), unarchiverCopy);
      if (v60)
      {
        objc_msgSend_setObject_forProperty_(v9, v59, v61, v62, v63, v60, 1140);
      }

      v13 = *(archive + 4);
    }

    if ((v13 & 0x400) != 0)
    {
      v65 = objc_msgSend_tsch_instanceWithArchive_unarchiver_(MEMORY[0x277CBEB18], v8, v10, v11, v12, *(archive + 14), unarchiverCopy);
      if (v65)
      {
        objc_msgSend_setObject_forProperty_(v9, v64, v66, v67, v68, v65, 1141);
      }

      v13 = *(archive + 4);
    }

    if ((v13 & 0x800) != 0)
    {
      v70 = objc_msgSend_tsch_instanceWithArchive_unarchiver_(MEMORY[0x277CBEB18], v8, v10, v11, v12, *(archive + 15), unarchiverCopy);
      if (v70)
      {
        objc_msgSend_setObject_forProperty_(v9, v69, v71, v72, v73, v70, 1142);
      }

      v13 = *(archive + 4);
    }

    if ((v13 & 0x20000000) != 0)
    {
      LODWORD(v10) = *(archive + 63);
      objc_msgSend_setFloatValue_forProperty_(v9, v8, v10, v11, v12, 1143);
      v13 = *(archive + 4);
    }

    if ((v13 & 0x40000000) != 0)
    {
      LODWORD(v10) = *(archive + 64);
      objc_msgSend_setFloatValue_forProperty_(v9, v8, v10, v11, v12, 1144);
      v13 = *(archive + 4);
    }

    if ((v13 & 0x1000) != 0)
    {
      v75 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D80308], v8, v10, v11, v12, *(archive + 16), unarchiverCopy);
      if (v75)
      {
        objc_msgSend_setObject_forProperty_(v9, v74, v76, v77, v78, v75, 1145);
      }

      v13 = *(archive + 4);
    }

    if ((v13 & 0x2000) != 0)
    {
      v80 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D80308], v8, v10, v11, v12, *(archive + 17), unarchiverCopy);
      if (v80)
      {
        objc_msgSend_setObject_forProperty_(v9, v79, v81, v82, v83, v80, 1146);
      }

      v13 = *(archive + 4);
    }

    if (v13 < 0)
    {
      LODWORD(v10) = *(archive + 65);
      objc_msgSend_setFloatValue_forProperty_(v9, v8, v10, v11, v12, 1147);
    }

    v84 = *(archive + 5);
    if (v84)
    {
      LODWORD(v10) = *(archive + 66);
      objc_msgSend_setFloatValue_forProperty_(v9, v8, v10, v11, v12, 1148);
      v84 = *(archive + 5);
    }

    if ((v84 & 2) != 0)
    {
      objc_msgSend_setIntValue_forProperty_(v9, v8, v10, v11, v12, *(archive + 67), 1149);
      v84 = *(archive + 5);
    }

    if ((v84 & 4) != 0)
    {
      objc_msgSend_setIntValue_forProperty_(v9, v8, v10, v11, v12, *(archive + 68), 1150);
    }

    if ((*(archive + 17) & 0x40) != 0)
    {
      v86 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803A8], v8, v10, v11, v12, *(archive + 18), unarchiverCopy);
      if (v86)
      {
        objc_msgSend_setObject_forProperty_(v9, v85, v87, v88, v89, v86, 1151);
      }
    }

    v90 = *(archive + 5);
    if ((v90 & 8) != 0)
    {
      objc_msgSend_setIntValue_forProperty_(v9, v8, v10, v11, v12, *(archive + 69), 1152);
      v90 = *(archive + 5);
    }

    if ((v90 & 0x10) != 0)
    {
      objc_msgSend_setIntValue_forProperty_(v9, v8, v10, v11, v12, *(archive + 70), 1153);
      v90 = *(archive + 5);
    }

    if ((v90 & 0x20) != 0)
    {
      LODWORD(v10) = *(archive + 71);
      objc_msgSend_setFloatValue_forProperty_(v9, v8, v10, v11, v12, 1154);
      v90 = *(archive + 5);
    }

    if ((v90 & 0x40) != 0)
    {
      LODWORD(v10) = *(archive + 72);
      objc_msgSend_setFloatValue_forProperty_(v9, v8, v10, v11, v12, 1155);
    }

    v91 = *(archive + 4);
    if ((v91 & 0x8000) != 0)
    {
      v93 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v8, v10, v11, v12, *(archive + 19), unarchiverCopy);
      if (v93)
      {
        objc_msgSend_setObject_forProperty_(v9, v92, v94, v95, v96, v93, 1156);
      }

      v91 = *(archive + 4);
    }

    if ((v91 & 0x10000) != 0)
    {
      v98 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v8, v10, v11, v12, *(archive + 20), unarchiverCopy);
      if (v98)
      {
        objc_msgSend_setObject_forProperty_(v9, v97, v99, v100, v101, v98, 1157);
      }
    }

    v102 = *(archive + 5);
    if ((v102 & 0x80) != 0)
    {
      objc_msgSend_setIntValue_forProperty_(v9, v8, v10, v11, v12, *(archive + 73), 1158);
      v102 = *(archive + 5);
    }

    if ((v102 & 0x100) != 0)
    {
      objc_msgSend_setIntValue_forProperty_(v9, v8, v10, v11, v12, *(archive + 74), 1159);
    }

    if ((*(archive + 18) & 2) != 0)
    {
      v104 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D80248], v8, v10, v11, v12, *(archive + 21), unarchiverCopy);
      if (v104)
      {
        objc_msgSend_setObject_forProperty_(v9, v103, v105, v106, v107, v104, 1160);
      }

      if ((*(archive + 18) & 2) != 0)
      {
        v109 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D80248], v8, v10, v11, v12, *(archive + 21), unarchiverCopy);
        if (v109)
        {
          objc_msgSend_setObject_forProperty_(v9, v108, v110, v111, v112, v109, 1160);
        }

        if ((*(archive + 18) & 2) != 0)
        {
          v114 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D80248], v8, v10, v11, v12, *(archive + 21), unarchiverCopy);
          if (v114)
          {
            objc_msgSend_setObject_forProperty_(v9, v113, v115, v116, v117, v114, 1160);
          }

          if ((*(archive + 18) & 2) != 0)
          {
            v119 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D80248], v8, v10, v11, v12, *(archive + 21), unarchiverCopy);
            if (v119)
            {
              objc_msgSend_setObject_forProperty_(v9, v118, v120, v121, v122, v119, 1160);
            }

            if ((*(archive + 18) & 2) != 0)
            {
              v124 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D80248], v8, v10, v11, v12, *(archive + 21), unarchiverCopy);
              if (v124)
              {
                objc_msgSend_setObject_forProperty_(v9, v123, v125, v126, v127, v124, 1160);
              }

              if ((*(archive + 18) & 2) != 0)
              {
                v129 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D80248], v8, v10, v11, v12, *(archive + 21), unarchiverCopy);
                if (v129)
                {
                  objc_msgSend_setObject_forProperty_(v9, v128, v130, v131, v132, v129, 1160);
                }

                if ((*(archive + 18) & 2) != 0)
                {
                  v134 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D80248], v8, v10, v11, v12, *(archive + 21), unarchiverCopy);
                  if (v134)
                  {
                    objc_msgSend_setObject_forProperty_(v9, v133, v135, v136, v137, v134, 1160);
                  }

                  if ((*(archive + 18) & 2) != 0)
                  {
                    v139 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D80248], v8, v10, v11, v12, *(archive + 21), unarchiverCopy);
                    if (v139)
                    {
                      objc_msgSend_setObject_forProperty_(v9, v138, v140, v141, v142, v139, 1160);
                    }

                    if ((*(archive + 18) & 2) != 0)
                    {
                      v144 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D80248], v8, v10, v11, v12, *(archive + 21), unarchiverCopy);
                      if (v144)
                      {
                        objc_msgSend_setObject_forProperty_(v9, v143, v145, v146, v147, v144, 1160);
                      }

                      if ((*(archive + 18) & 2) != 0)
                      {
                        v149 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D80248], v8, v10, v11, v12, *(archive + 21), unarchiverCopy);
                        if (v149)
                        {
                          objc_msgSend_setObject_forProperty_(v9, v148, v150, v151, v152, v149, 1160);
                        }

                        if ((*(archive + 18) & 2) != 0)
                        {
                          v154 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D80248], v8, v10, v11, v12, *(archive + 21), unarchiverCopy);
                          if (v154)
                          {
                            objc_msgSend_setObject_forProperty_(v9, v153, v155, v156, v157, v154, 1160);
                          }

                          if ((*(archive + 18) & 2) != 0)
                          {
                            v159 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D80248], v8, v10, v11, v12, *(archive + 21), unarchiverCopy);
                            if (v159)
                            {
                              objc_msgSend_setObject_forProperty_(v9, v158, v160, v161, v162, v159, 1160);
                            }

                            if ((*(archive + 18) & 2) != 0)
                            {
                              v164 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D80248], v8, v10, v11, v12, *(archive + 21), unarchiverCopy);
                              if (v164)
                              {
                                objc_msgSend_setObject_forProperty_(v9, v163, v165, v166, v167, v164, 1160);
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    v168 = *(archive + 5);
    if ((v168 & 0x200) != 0)
    {
      LODWORD(v10) = *(archive + 75);
      objc_msgSend_setFloatValue_forProperty_(v9, v8, v10, v11, v12, 1162);
      v168 = *(archive + 5);
    }

    if ((v168 & 0x20000) != 0)
    {
      objc_msgSend_setIntValue_forProperty_(v9, v8, v10, v11, v12, *(archive + 332), 1161);
      v168 = *(archive + 5);
    }

    if ((v168 & 0x400) != 0)
    {
      LODWORD(v10) = *(archive + 76);
      objc_msgSend_setFloatValue_forProperty_(v9, v8, v10, v11, v12, 1163);
      v168 = *(archive + 5);
    }

    if ((v168 & 0x800) != 0)
    {
      objc_msgSend_setIntValue_forProperty_(v9, v8, v10, v11, v12, *(archive + 77), 1164);
      v168 = *(archive + 5);
      if ((v168 & 0x800) != 0)
      {
        objc_msgSend_setIntValue_forProperty_(v9, v8, v10, v11, v12, *(archive + 77), 1164);
        v168 = *(archive + 5);
        if ((v168 & 0x800) != 0)
        {
          objc_msgSend_setIntValue_forProperty_(v9, v8, v10, v11, v12, *(archive + 77), 1164);
          v168 = *(archive + 5);
          if ((v168 & 0x800) != 0)
          {
            objc_msgSend_setIntValue_forProperty_(v9, v8, v10, v11, v12, *(archive + 77), 1164);
            v168 = *(archive + 5);
            if ((v168 & 0x800) != 0)
            {
              objc_msgSend_setIntValue_forProperty_(v9, v8, v10, v11, v12, *(archive + 77), 1164);
              v168 = *(archive + 5);
              if ((v168 & 0x800) != 0)
              {
                objc_msgSend_setIntValue_forProperty_(v9, v8, v10, v11, v12, *(archive + 77), 1164);
                v168 = *(archive + 5);
                if ((v168 & 0x800) != 0)
                {
                  objc_msgSend_setIntValue_forProperty_(v9, v8, v10, v11, v12, *(archive + 77), 1164);
                  v168 = *(archive + 5);
                  if ((v168 & 0x800) != 0)
                  {
                    objc_msgSend_setIntValue_forProperty_(v9, v8, v10, v11, v12, *(archive + 77), 1164);
                    v168 = *(archive + 5);
                  }
                }
              }
            }
          }
        }
      }
    }

    if ((v168 & 0x1000) != 0)
    {
      objc_msgSend_setIntValue_forProperty_(v9, v8, v10, v11, v12, *(archive + 78), 1165);
      if ((*(archive + 21) & 0x10) != 0)
      {
        objc_msgSend_setIntValue_forProperty_(v9, v8, v10, v11, v12, *(archive + 78), 1165);
        if ((*(archive + 21) & 0x10) != 0)
        {
          objc_msgSend_setIntValue_forProperty_(v9, v8, v10, v11, v12, *(archive + 78), 1165);
          if ((*(archive + 21) & 0x10) != 0)
          {
            objc_msgSend_setIntValue_forProperty_(v9, v8, v10, v11, v12, *(archive + 78), 1165);
            if ((*(archive + 21) & 0x10) != 0)
            {
              objc_msgSend_setIntValue_forProperty_(v9, v8, v10, v11, v12, *(archive + 78), 1165);
            }
          }
        }
      }
    }

    if ((*(archive + 18) & 4) != 0)
    {
      v170 = objc_msgSend_instanceWithArchive_unarchiver_(TSCHNumberFormat, v8, v10, v11, v12, *(archive + 22), unarchiverCopy);
      if (v170)
      {
        objc_msgSend_setObject_forProperty_(v9, v169, v171, v172, v173, v170, 1166);
      }

      if ((*(archive + 18) & 4) != 0)
      {
        v175 = objc_msgSend_instanceWithArchive_unarchiver_(TSCHNumberFormat, v8, v10, v11, v12, *(archive + 22), unarchiverCopy);
        if (v175)
        {
          objc_msgSend_setObject_forProperty_(v9, v174, v176, v177, v178, v175, 1166);
        }
      }
    }

    v179 = *(archive + 5);
    if ((v179 & 0x2000) != 0)
    {
      objc_msgSend_setIntValue_forProperty_(v9, v8, v10, v11, v12, *(archive + 79), 1167);
      v179 = *(archive + 5);
      if ((v179 & 0x2000) != 0)
      {
        objc_msgSend_setIntValue_forProperty_(v9, v8, v10, v11, v12, *(archive + 79), 1167);
        v179 = *(archive + 5);
      }
    }

    if ((v179 & 0x4000) != 0)
    {
      LODWORD(v10) = *(archive + 80);
      objc_msgSend_setFloatValue_forProperty_(v9, v8, v10, v11, v12, 1168);
      v179 = *(archive + 5);
    }

    if ((v179 & 0x8000) != 0)
    {
      objc_msgSend_setIntValue_forProperty_(v9, v8, v10, v11, v12, *(archive + 81), 1169);
      if ((*(archive + 21) & 0x80) != 0)
      {
        objc_msgSend_setIntValue_forProperty_(v9, v8, v10, v11, v12, *(archive + 81), 1169);
        if ((*(archive + 21) & 0x80) != 0)
        {
          objc_msgSend_setIntValue_forProperty_(v9, v8, v10, v11, v12, *(archive + 81), 1169);
          if ((*(archive + 21) & 0x80) != 0)
          {
            objc_msgSend_setIntValue_forProperty_(v9, v8, v10, v11, v12, *(archive + 81), 1169);
            if ((*(archive + 21) & 0x80) != 0)
            {
              objc_msgSend_setIntValue_forProperty_(v9, v8, v10, v11, v12, *(archive + 81), 1169);
              if ((*(archive + 21) & 0x80) != 0)
              {
                objc_msgSend_setIntValue_forProperty_(v9, v8, v10, v11, v12, *(archive + 81), 1169);
                if ((*(archive + 21) & 0x80) != 0)
                {
                  objc_msgSend_setIntValue_forProperty_(v9, v8, v10, v11, v12, *(archive + 81), 1169);
                }
              }
            }
          }
        }
      }
    }

    if ((*(archive + 18) & 8) != 0)
    {
      v181 = objc_msgSend_instanceWithArchive_unarchiver_(TSCHNumberFormat, v8, v10, v11, v12, *(archive + 23), unarchiverCopy);
      if (v181)
      {
        objc_msgSend_setObject_forProperty_(v9, v180, v182, v183, v184, v181, 1170);
      }
    }

    if (*(archive + 22))
    {
      objc_msgSend_setIntValue_forProperty_(v9, v8, v10, v11, v12, *(archive + 82), 1171);
    }

    if ((*(archive + 18) & 0x10) != 0)
    {
      v186 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803A8], v8, v10, v11, v12, *(archive + 24), unarchiverCopy);
      if (v186)
      {
        objc_msgSend_setObject_forProperty_(v9, v185, v187, v188, v189, v186, 1172);
      }

      if ((*(archive + 18) & 0x10) != 0)
      {
        v191 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803A8], v8, v10, v11, v12, *(archive + 24), unarchiverCopy);
        if (v191)
        {
          objc_msgSend_setObject_forProperty_(v9, v190, v192, v193, v194, v191, 1172);
        }

        if ((*(archive + 18) & 0x10) != 0)
        {
          v196 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803A8], v8, v10, v11, v12, *(archive + 24), unarchiverCopy);
          if (v196)
          {
            objc_msgSend_setObject_forProperty_(v9, v195, v197, v198, v199, v196, 1172);
          }

          if ((*(archive + 18) & 0x10) != 0)
          {
            v201 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803A8], v8, v10, v11, v12, *(archive + 24), unarchiverCopy);
            if (v201)
            {
              objc_msgSend_setObject_forProperty_(v9, v200, v202, v203, v204, v201, 1172);
            }

            if ((*(archive + 18) & 0x10) != 0)
            {
              v206 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803A8], v8, v10, v11, v12, *(archive + 24), unarchiverCopy);
              if (v206)
              {
                objc_msgSend_setObject_forProperty_(v9, v205, v207, v208, v209, v206, 1172);
              }

              if ((*(archive + 18) & 0x10) != 0)
              {
                v211 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803A8], v8, v10, v11, v12, *(archive + 24), unarchiverCopy);
                if (v211)
                {
                  objc_msgSend_setObject_forProperty_(v9, v210, v212, v213, v214, v211, 1172);
                }

                if ((*(archive + 18) & 0x10) != 0)
                {
                  v216 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803A8], v8, v10, v11, v12, *(archive + 24), unarchiverCopy);
                  if (v216)
                  {
                    objc_msgSend_setObject_forProperty_(v9, v215, v217, v218, v219, v216, 1172);
                  }

                  if ((*(archive + 18) & 0x10) != 0)
                  {
                    v221 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803A8], v8, v10, v11, v12, *(archive + 24), unarchiverCopy);
                    if (v221)
                    {
                      objc_msgSend_setObject_forProperty_(v9, v220, v222, v223, v224, v221, 1172);
                    }

                    if ((*(archive + 18) & 0x10) != 0)
                    {
                      v226 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803A8], v8, v10, v11, v12, *(archive + 24), unarchiverCopy);
                      if (v226)
                      {
                        objc_msgSend_setObject_forProperty_(v9, v225, v227, v228, v229, v226, 1172);
                      }

                      if ((*(archive + 18) & 0x10) != 0)
                      {
                        v231 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803A8], v8, v10, v11, v12, *(archive + 24), unarchiverCopy);
                        if (v231)
                        {
                          objc_msgSend_setObject_forProperty_(v9, v230, v232, v233, v234, v231, 1172);
                        }

                        if ((*(archive + 18) & 0x10) != 0)
                        {
                          v236 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803A8], v8, v10, v11, v12, *(archive + 24), unarchiverCopy);
                          if (v236)
                          {
                            objc_msgSend_setObject_forProperty_(v9, v235, v237, v238, v239, v236, 1172);
                          }

                          if ((*(archive + 18) & 0x10) != 0)
                          {
                            v241 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803A8], v8, v10, v11, v12, *(archive + 24), unarchiverCopy);
                            if (v241)
                            {
                              objc_msgSend_setObject_forProperty_(v9, v240, v242, v243, v244, v241, 1172);
                            }

                            if ((*(archive + 18) & 0x10) != 0)
                            {
                              v246 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803A8], v8, v10, v11, v12, *(archive + 24), unarchiverCopy);
                              if (v246)
                              {
                                objc_msgSend_setObject_forProperty_(v9, v245, v247, v248, v249, v246, 1172);
                              }

                              if ((*(archive + 18) & 0x10) != 0)
                              {
                                v251 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803A8], v8, v10, v11, v12, *(archive + 24), unarchiverCopy);
                                if (v251)
                                {
                                  objc_msgSend_setObject_forProperty_(v9, v250, v252, v253, v254, v251, 1172);
                                }

                                if ((*(archive + 18) & 0x10) != 0)
                                {
                                  v256 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803A8], v8, v10, v11, v12, *(archive + 24), unarchiverCopy);
                                  if (v256)
                                  {
                                    objc_msgSend_setObject_forProperty_(v9, v255, v257, v258, v259, v256, 1172);
                                  }

                                  if ((*(archive + 18) & 0x10) != 0)
                                  {
                                    v261 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803A8], v8, v10, v11, v12, *(archive + 24), unarchiverCopy);
                                    if (v261)
                                    {
                                      objc_msgSend_setObject_forProperty_(v9, v260, v262, v263, v264, v261, 1172);
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    v265 = *(archive + 5);
    if ((v265 & 0x40000) != 0)
    {
      objc_msgSend_setIntValue_forProperty_(v9, v8, v10, v11, v12, *(archive + 333), 1173);
      v265 = *(archive + 5);
    }

    if ((v265 & 0x80000) != 0)
    {
      objc_msgSend_setIntValue_forProperty_(v9, v8, v10, v11, v12, *(archive + 334), 1174);
      v265 = *(archive + 5);
    }

    if ((v265 & 0x100000) != 0)
    {
      objc_msgSend_setIntValue_forProperty_(v9, v8, v10, v11, v12, *(archive + 335), 1175);
      v265 = *(archive + 5);
      if ((v265 & 0x100000) != 0)
      {
        objc_msgSend_setIntValue_forProperty_(v9, v8, v10, v11, v12, *(archive + 335), 1175);
        v265 = *(archive + 5);
      }
    }

    if ((v265 & 0x200000) != 0)
    {
      objc_msgSend_setIntValue_forProperty_(v9, v8, v10, v11, v12, *(archive + 336), 1176);
      v265 = *(archive + 5);
    }

    if ((v265 & 0x400000) != 0)
    {
      objc_msgSend_setIntValue_forProperty_(v9, v8, v10, v11, v12, *(archive + 337), 1177);
      v265 = *(archive + 5);
    }

    if ((v265 & 0x800000) != 0)
    {
      objc_msgSend_setIntValue_forProperty_(v9, v8, v10, v11, v12, *(archive + 338), 1178);
      v265 = *(archive + 5);
      if ((v265 & 0x800000) != 0)
      {
        objc_msgSend_setIntValue_forProperty_(v9, v8, v10, v11, v12, *(archive + 338), 1178);
        v265 = *(archive + 5);
        if ((v265 & 0x800000) != 0)
        {
          objc_msgSend_setIntValue_forProperty_(v9, v8, v10, v11, v12, *(archive + 338), 1178);
          v265 = *(archive + 5);
        }
      }
    }

    if ((v265 & 0x1000000) != 0)
    {
      objc_msgSend_setIntValue_forProperty_(v9, v8, v10, v11, v12, *(archive + 339), 1179);
      v265 = *(archive + 5);
      if ((v265 & 0x1000000) != 0)
      {
        objc_msgSend_setIntValue_forProperty_(v9, v8, v10, v11, v12, *(archive + 339), 1179);
        v265 = *(archive + 5);
        if ((v265 & 0x1000000) != 0)
        {
          objc_msgSend_setIntValue_forProperty_(v9, v8, v10, v11, v12, *(archive + 339), 1179);
          v265 = *(archive + 5);
          if ((v265 & 0x1000000) != 0)
          {
            objc_msgSend_setIntValue_forProperty_(v9, v8, v10, v11, v12, *(archive + 339), 1179);
            v265 = *(archive + 5);
            if ((v265 & 0x1000000) != 0)
            {
              objc_msgSend_setIntValue_forProperty_(v9, v8, v10, v11, v12, *(archive + 339), 1179);
              v265 = *(archive + 5);
              if ((v265 & 0x1000000) != 0)
              {
                objc_msgSend_setIntValue_forProperty_(v9, v8, v10, v11, v12, *(archive + 339), 1179);
                v265 = *(archive + 5);
              }
            }
          }
        }
      }
    }

    if ((v265 & 0x4000000) != 0)
    {
      objc_msgSend_setIntValue_forProperty_(v9, v8, v10, v11, v12, *(archive + 344), 1180);
      v265 = *(archive + 5);
    }

    if ((v265 & 0x8000000) != 0)
    {
      objc_msgSend_setIntValue_forProperty_(v9, v8, v10, v11, v12, *(archive + 345), 1181);
      v265 = *(archive + 5);
      if ((v265 & 0x8000000) != 0)
      {
        objc_msgSend_setIntValue_forProperty_(v9, v8, v10, v11, v12, *(archive + 345), 1181);
        v265 = *(archive + 5);
        if ((v265 & 0x8000000) != 0)
        {
          objc_msgSend_setIntValue_forProperty_(v9, v8, v10, v11, v12, *(archive + 345), 1181);
          v265 = *(archive + 5);
          if ((v265 & 0x8000000) != 0)
          {
            objc_msgSend_setIntValue_forProperty_(v9, v8, v10, v11, v12, *(archive + 345), 1181);
            v265 = *(archive + 5);
            if ((v265 & 0x8000000) != 0)
            {
              objc_msgSend_setIntValue_forProperty_(v9, v8, v10, v11, v12, *(archive + 345), 1181);
              v265 = *(archive + 5);
              if ((v265 & 0x8000000) != 0)
              {
                objc_msgSend_setIntValue_forProperty_(v9, v8, v10, v11, v12, *(archive + 345), 1181);
                v265 = *(archive + 5);
                if ((v265 & 0x8000000) != 0)
                {
                  objc_msgSend_setIntValue_forProperty_(v9, v8, v10, v11, v12, *(archive + 345), 1181);
                  v265 = *(archive + 5);
                  if ((v265 & 0x8000000) != 0)
                  {
                    objc_msgSend_setIntValue_forProperty_(v9, v8, v10, v11, v12, *(archive + 345), 1181);
                    v265 = *(archive + 5);
                    if ((v265 & 0x8000000) != 0)
                    {
                      objc_msgSend_setIntValue_forProperty_(v9, v8, v10, v11, v12, *(archive + 345), 1181);
                      v265 = *(archive + 5);
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    if ((v265 & 0x2000000) != 0)
    {
      objc_msgSend_setIntValue_forProperty_(v9, v8, v10, v11, v12, *(archive + 85), 1182);
      v265 = *(archive + 5);
    }

    if ((v265 & 0x10000000) != 0)
    {
      objc_msgSend_setIntValue_forProperty_(v9, v8, v10, v11, v12, *(archive + 346), 1183);
      if ((*(archive + 23) & 0x10) != 0)
      {
        objc_msgSend_setIntValue_forProperty_(v9, v8, v10, v11, v12, *(archive + 346), 1183);
        if ((*(archive + 23) & 0x10) != 0)
        {
          objc_msgSend_setIntValue_forProperty_(v9, v8, v10, v11, v12, *(archive + 346), 1183);
          if ((*(archive + 23) & 0x10) != 0)
          {
            objc_msgSend_setIntValue_forProperty_(v9, v8, v10, v11, v12, *(archive + 346), 1183);
            if ((*(archive + 23) & 0x10) != 0)
            {
              objc_msgSend_setIntValue_forProperty_(v9, v8, v10, v11, v12, *(archive + 346), 1183);
              if ((*(archive + 23) & 0x10) != 0)
              {
                objc_msgSend_setIntValue_forProperty_(v9, v8, v10, v11, v12, *(archive + 346), 1183);
                if ((*(archive + 23) & 0x10) != 0)
                {
                  objc_msgSend_setIntValue_forProperty_(v9, v8, v10, v11, v12, *(archive + 346), 1183);
                  if ((*(archive + 23) & 0x10) != 0)
                  {
                    objc_msgSend_setIntValue_forProperty_(v9, v8, v10, v11, v12, *(archive + 346), 1183);
                    if ((*(archive + 23) & 0x10) != 0)
                    {
                      objc_msgSend_setIntValue_forProperty_(v9, v8, v10, v11, v12, *(archive + 346), 1183);
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    v266 = *(archive + 4);
    if ((v266 & 0x200000) != 0)
    {
      v268 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v8, v10, v11, v12, *(archive + 25), unarchiverCopy);
      if (v268)
      {
        objc_msgSend_setObject_forProperty_(v9, v267, v269, v270, v271, v268, 1184);
      }

      v266 = *(archive + 4);
      if ((v266 & 0x200000) != 0)
      {
        v273 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v8, v10, v11, v12, *(archive + 25), unarchiverCopy);
        if (v273)
        {
          objc_msgSend_setObject_forProperty_(v9, v272, v274, v275, v276, v273, 1184);
        }

        v266 = *(archive + 4);
        if ((v266 & 0x200000) != 0)
        {
          v278 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v8, v10, v11, v12, *(archive + 25), unarchiverCopy);
          if (v278)
          {
            objc_msgSend_setObject_forProperty_(v9, v277, v279, v280, v281, v278, 1184);
          }

          v266 = *(archive + 4);
          if ((v266 & 0x200000) != 0)
          {
            v283 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v8, v10, v11, v12, *(archive + 25), unarchiverCopy);
            if (v283)
            {
              objc_msgSend_setObject_forProperty_(v9, v282, v284, v285, v286, v283, 1184);
            }

            v266 = *(archive + 4);
            if ((v266 & 0x200000) != 0)
            {
              v288 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v8, v10, v11, v12, *(archive + 25), unarchiverCopy);
              if (v288)
              {
                objc_msgSend_setObject_forProperty_(v9, v287, v289, v290, v291, v288, 1184);
              }

              v266 = *(archive + 4);
              if ((v266 & 0x200000) != 0)
              {
                v293 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v8, v10, v11, v12, *(archive + 25), unarchiverCopy);
                if (v293)
                {
                  objc_msgSend_setObject_forProperty_(v9, v292, v294, v295, v296, v293, 1184);
                }

                v266 = *(archive + 4);
                if ((v266 & 0x200000) != 0)
                {
                  v298 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v8, v10, v11, v12, *(archive + 25), unarchiverCopy);
                  if (v298)
                  {
                    objc_msgSend_setObject_forProperty_(v9, v297, v299, v300, v301, v298, 1184);
                  }

                  v266 = *(archive + 4);
                  if ((v266 & 0x200000) != 0)
                  {
                    v303 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v8, v10, v11, v12, *(archive + 25), unarchiverCopy);
                    if (v303)
                    {
                      objc_msgSend_setObject_forProperty_(v9, v302, v304, v305, v306, v303, 1184);
                    }

                    v266 = *(archive + 4);
                    if ((v266 & 0x200000) != 0)
                    {
                      v308 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v8, v10, v11, v12, *(archive + 25), unarchiverCopy);
                      if (v308)
                      {
                        objc_msgSend_setObject_forProperty_(v9, v307, v309, v310, v311, v308, 1184);
                      }

                      v266 = *(archive + 4);
                      if ((v266 & 0x200000) != 0)
                      {
                        v313 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v8, v10, v11, v12, *(archive + 25), unarchiverCopy);
                        if (v313)
                        {
                          objc_msgSend_setObject_forProperty_(v9, v312, v314, v315, v316, v313, 1184);
                        }

                        v266 = *(archive + 4);
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    if ((v266 & 0x400000) != 0)
    {
      v318 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D80248], v8, v10, v11, v12, *(archive + 26), unarchiverCopy);
      if (v318)
      {
        objc_msgSend_setObject_forProperty_(v9, v317, v319, v320, v321, v318, 1185);
      }

      if ((*(archive + 18) & 0x40) != 0)
      {
        v323 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D80248], v8, v10, v11, v12, *(archive + 26), unarchiverCopy);
        if (v323)
        {
          objc_msgSend_setObject_forProperty_(v9, v322, v324, v325, v326, v323, 1185);
        }

        if ((*(archive + 18) & 0x40) != 0)
        {
          v328 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D80248], v8, v10, v11, v12, *(archive + 26), unarchiverCopy);
          if (v328)
          {
            objc_msgSend_setObject_forProperty_(v9, v327, v329, v330, v331, v328, 1185);
          }

          if ((*(archive + 18) & 0x40) != 0)
          {
            v333 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D80248], v8, v10, v11, v12, *(archive + 26), unarchiverCopy);
            if (v333)
            {
              objc_msgSend_setObject_forProperty_(v9, v332, v334, v335, v336, v333, 1185);
            }

            if ((*(archive + 18) & 0x40) != 0)
            {
              v338 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D80248], v8, v10, v11, v12, *(archive + 26), unarchiverCopy);
              if (v338)
              {
                objc_msgSend_setObject_forProperty_(v9, v337, v339, v340, v341, v338, 1185);
              }

              if ((*(archive + 18) & 0x40) != 0)
              {
                v343 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D80248], v8, v10, v11, v12, *(archive + 26), unarchiverCopy);
                if (v343)
                {
                  objc_msgSend_setObject_forProperty_(v9, v342, v344, v345, v346, v343, 1185);
                }

                if ((*(archive + 18) & 0x40) != 0)
                {
                  v348 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D80248], v8, v10, v11, v12, *(archive + 26), unarchiverCopy);
                  if (v348)
                  {
                    objc_msgSend_setObject_forProperty_(v9, v347, v349, v350, v351, v348, 1185);
                  }
                }
              }
            }
          }
        }
      }
    }

    if ((*(archive + 23) & 0x20) != 0)
    {
      objc_msgSend_setIntValue_forProperty_(v9, v8, v10, v11, v12, *(archive + 347), 1186);
      if ((*(archive + 23) & 0x20) != 0)
      {
        objc_msgSend_setIntValue_forProperty_(v9, v8, v10, v11, v12, *(archive + 347), 1186);
        if ((*(archive + 23) & 0x20) != 0)
        {
          objc_msgSend_setIntValue_forProperty_(v9, v8, v10, v11, v12, *(archive + 347), 1186);
          if ((*(archive + 23) & 0x20) != 0)
          {
            objc_msgSend_setIntValue_forProperty_(v9, v8, v10, v11, v12, *(archive + 347), 1186);
            if ((*(archive + 23) & 0x20) != 0)
            {
              objc_msgSend_setIntValue_forProperty_(v9, v8, v10, v11, v12, *(archive + 347), 1186);
            }
          }
        }
      }
    }

    if ((*(archive + 24) & 0x20) != 0)
    {
      objc_msgSend_setIntValue_forProperty_(v9, v8, v10, v11, v12, *(archive + 376), 1187);
      if ((*(archive + 24) & 0x20) != 0)
      {
        objc_msgSend_setIntValue_forProperty_(v9, v8, v10, v11, v12, *(archive + 376), 1187);
        if ((*(archive + 24) & 0x20) != 0)
        {
          objc_msgSend_setIntValue_forProperty_(v9, v8, v10, v11, v12, *(archive + 376), 1187);
          if ((*(archive + 24) & 0x20) != 0)
          {
            objc_msgSend_setIntValue_forProperty_(v9, v8, v10, v11, v12, *(archive + 376), 1187);
            if ((*(archive + 24) & 0x20) != 0)
            {
              objc_msgSend_setIntValue_forProperty_(v9, v8, v10, v11, v12, *(archive + 376), 1187);
              if ((*(archive + 24) & 0x20) != 0)
              {
                objc_msgSend_setIntValue_forProperty_(v9, v8, v10, v11, v12, *(archive + 376), 1187);
                if ((*(archive + 24) & 0x20) != 0)
                {
                  objc_msgSend_setIntValue_forProperty_(v9, v8, v10, v11, v12, *(archive + 376), 1187);
                }
              }
            }
          }
        }
      }
    }

    if ((*(archive + 23) & 0x40) != 0)
    {
      LODWORD(v10) = *(archive + 87);
      objc_msgSend_setFloatValue_forProperty_(v9, v8, v10, v11, v12, 1188);
      if ((*(archive + 23) & 0x40) != 0)
      {
        LODWORD(v10) = *(archive + 87);
        objc_msgSend_setFloatValue_forProperty_(v9, v8, v10, v11, v12, 1188);
        if ((*(archive + 23) & 0x40) != 0)
        {
          LODWORD(v10) = *(archive + 87);
          objc_msgSend_setFloatValue_forProperty_(v9, v8, v10, v11, v12, 1188);
          if ((*(archive + 23) & 0x40) != 0)
          {
            LODWORD(v10) = *(archive + 87);
            objc_msgSend_setFloatValue_forProperty_(v9, v8, v10, v11, v12, 1188);
            if ((*(archive + 23) & 0x40) != 0)
            {
              LODWORD(v10) = *(archive + 87);
              objc_msgSend_setFloatValue_forProperty_(v9, v8, v10, v11, v12, 1188);
              if ((*(archive + 23) & 0x40) != 0)
              {
                LODWORD(v10) = *(archive + 87);
                objc_msgSend_setFloatValue_forProperty_(v9, v8, v10, v11, v12, 1188);
              }
            }
          }
        }
      }
    }

    if ((*(archive + 18) & 0x80) != 0)
    {
      v353 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v8, v10, v11, v12, *(archive + 27), unarchiverCopy);
      if (v353)
      {
        objc_msgSend_setObject_forProperty_(v9, v352, v354, v355, v356, v353, 1189);
      }

      if ((*(archive + 18) & 0x80) != 0)
      {
        v358 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v8, v10, v11, v12, *(archive + 27), unarchiverCopy);
        if (v358)
        {
          objc_msgSend_setObject_forProperty_(v9, v357, v359, v360, v361, v358, 1189);
        }

        if ((*(archive + 18) & 0x80) != 0)
        {
          v363 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v8, v10, v11, v12, *(archive + 27), unarchiverCopy);
          if (v363)
          {
            objc_msgSend_setObject_forProperty_(v9, v362, v364, v365, v366, v363, 1189);
          }

          if ((*(archive + 18) & 0x80) != 0)
          {
            v368 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v8, v10, v11, v12, *(archive + 27), unarchiverCopy);
            if (v368)
            {
              objc_msgSend_setObject_forProperty_(v9, v367, v369, v370, v371, v368, 1189);
            }

            if ((*(archive + 18) & 0x80) != 0)
            {
              v373 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v8, v10, v11, v12, *(archive + 27), unarchiverCopy);
              if (v373)
              {
                objc_msgSend_setObject_forProperty_(v9, v372, v374, v375, v376, v373, 1189);
              }

              if ((*(archive + 18) & 0x80) != 0)
              {
                v378 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v8, v10, v11, v12, *(archive + 27), unarchiverCopy);
                if (v378)
                {
                  objc_msgSend_setObject_forProperty_(v9, v377, v379, v380, v381, v378, 1189);
                }

                if ((*(archive + 18) & 0x80) != 0)
                {
                  v383 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v8, v10, v11, v12, *(archive + 27), unarchiverCopy);
                  if (v383)
                  {
                    objc_msgSend_setObject_forProperty_(v9, v382, v384, v385, v386, v383, 1189);
                  }
                }
              }
            }
          }
        }
      }
    }

    if ((*(archive + 5) & 0x80000000) != 0)
    {
      objc_msgSend_setIntValue_forProperty_(v9, v8, v10, v11, v12, *(archive + 88), 1190);
      if ((*(archive + 5) & 0x80000000) != 0)
      {
        objc_msgSend_setIntValue_forProperty_(v9, v8, v10, v11, v12, *(archive + 88), 1190);
        if ((*(archive + 5) & 0x80000000) != 0)
        {
          objc_msgSend_setIntValue_forProperty_(v9, v8, v10, v11, v12, *(archive + 88), 1190);
          if ((*(archive + 5) & 0x80000000) != 0)
          {
            objc_msgSend_setIntValue_forProperty_(v9, v8, v10, v11, v12, *(archive + 88), 1190);
            if ((*(archive + 5) & 0x80000000) != 0)
            {
              objc_msgSend_setIntValue_forProperty_(v9, v8, v10, v11, v12, *(archive + 88), 1190);
              if ((*(archive + 5) & 0x80000000) != 0)
              {
                objc_msgSend_setIntValue_forProperty_(v9, v8, v10, v11, v12, *(archive + 88), 1190);
              }
            }
          }
        }
      }
    }

    v387 = *(archive + 6);
    if (v387)
    {
      LODWORD(v10) = *(archive + 89);
      objc_msgSend_setFloatValue_forProperty_(v9, v8, v10, v11, v12, 1191);
      v387 = *(archive + 6);
    }

    if ((v387 & 2) != 0)
    {
      LODWORD(v10) = *(archive + 90);
      objc_msgSend_setFloatValue_forProperty_(v9, v8, v10, v11, v12, 1192);
    }

    if (*(archive + 16))
    {
      v388 = objc_alloc(MEMORY[0x277CCACA8]);
      v394 = objc_msgSend_tsp_initWithProtobufString_(v388, v389, v390, v391, v392, *(archive + 4) & 0xFFFFFFFFFFFFFFFELL);
      if (v394)
      {
        objc_msgSend_setObject_forProperty_(v9, v393, v395, v396, v397, v394, 1193);
      }
    }

    v398 = *(archive + 6);
    if ((v398 & 4) != 0)
    {
      objc_msgSend_setIntValue_forProperty_(v9, v8, v10, v11, v12, *(archive + 91), 1194);
      v398 = *(archive + 6);
    }

    if ((v398 & 8) != 0)
    {
      objc_msgSend_setIntValue_forProperty_(v9, v8, v10, v11, v12, *(archive + 92), 1195);
      v398 = *(archive + 6);
    }

    if ((v398 & 0x10) != 0)
    {
      LODWORD(v10) = *(archive + 93);
      objc_msgSend_setFloatValue_forProperty_(v9, v8, v10, v11, v12, 1196);
      v398 = *(archive + 6);
    }

    if ((v398 & 0x200) != 0)
    {
      LODWORD(v10) = *(archive + 95);
      objc_msgSend_setFloatValue_forProperty_(v9, v8, v10, v11, v12, 1197);
    }

    if (*(archive + 19))
    {
      v400 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803A8], v8, v10, v11, v12, *(archive + 28), unarchiverCopy);
      if (v400)
      {
        objc_msgSend_setObject_forProperty_(v9, v399, v401, v402, v403, v400, 1198);
      }
    }

    v404 = *(archive + 6);
    if ((v404 & 0x40) != 0)
    {
      objc_msgSend_setIntValue_forProperty_(v9, v8, v10, v11, v12, *(archive + 377), 1199);
      v404 = *(archive + 6);
    }

    if ((v404 & 0x80) != 0)
    {
      objc_msgSend_setIntValue_forProperty_(v9, v8, v10, v11, v12, *(archive + 378), 1200);
      v404 = *(archive + 6);
    }

    if ((v404 & 0x100) != 0)
    {
      objc_msgSend_setIntValue_forProperty_(v9, v8, v10, v11, v12, *(archive + 379), 1201);
    }

    if ((*(archive + 19) & 2) != 0)
    {
      v406 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v8, v10, v11, v12, *(archive + 29), unarchiverCopy);
      if (v406)
      {
        objc_msgSend_setObject_forProperty_(v9, v405, v407, v408, v409, v406, 1202);
      }
    }

    v410 = *(archive + 6);
    if ((v410 & 0x400) != 0)
    {
      objc_msgSend_setIntValue_forProperty_(v9, v8, v10, v11, v12, *(archive + 96), 1203);
      v410 = *(archive + 6);
    }

    if ((v410 & 0x800) != 0)
    {
      LODWORD(v10) = *(archive + 97);
      objc_msgSend_setFloatValue_forProperty_(v9, v8, v10, v11, v12, 1204);
      v410 = *(archive + 6);
    }

    if ((v410 & 0x1000) != 0)
    {
      objc_msgSend_setIntValue_forProperty_(v9, v8, v10, v11, v12, *(archive + 98), 1205);
      v410 = *(archive + 6);
    }

    if ((v410 & 0x2000) != 0)
    {
      LODWORD(v10) = *(archive + 99);
      objc_msgSend_setFloatValue_forProperty_(v9, v8, v10, v11, v12, 1206);
      v410 = *(archive + 6);
    }

    if ((v410 & 0x4000) != 0)
    {
      objc_msgSend_setIntValue_forProperty_(v9, v8, v10, v11, v12, *(archive + 100), 1207);
      v410 = *(archive + 6);
    }

    if ((v410 & 0x8000) != 0)
    {
      objc_msgSend_setIntValue_forProperty_(v9, v8, v10, v11, v12, *(archive + 101), 1208);
      v410 = *(archive + 6);
      if ((v410 & 0x8000) != 0)
      {
        objc_msgSend_setIntValue_forProperty_(v9, v8, v10, v11, v12, *(archive + 101), 1208);
        v410 = *(archive + 6);
        if ((v410 & 0x8000) != 0)
        {
          objc_msgSend_setIntValue_forProperty_(v9, v8, v10, v11, v12, *(archive + 101), 1208);
          v410 = *(archive + 6);
          if ((v410 & 0x8000) != 0)
          {
            objc_msgSend_setIntValue_forProperty_(v9, v8, v10, v11, v12, *(archive + 101), 1208);
            v410 = *(archive + 6);
            if ((v410 & 0x8000) != 0)
            {
              objc_msgSend_setIntValue_forProperty_(v9, v8, v10, v11, v12, *(archive + 101), 1208);
              v410 = *(archive + 6);
              if ((v410 & 0x8000) != 0)
              {
                objc_msgSend_setIntValue_forProperty_(v9, v8, v10, v11, v12, *(archive + 101), 1208);
                v410 = *(archive + 6);
                if ((v410 & 0x8000) != 0)
                {
                  objc_msgSend_setIntValue_forProperty_(v9, v8, v10, v11, v12, *(archive + 101), 1208);
                  v410 = *(archive + 6);
                  if ((v410 & 0x8000) != 0)
                  {
                    objc_msgSend_setIntValue_forProperty_(v9, v8, v10, v11, v12, *(archive + 101), 1208);
                    v410 = *(archive + 6);
                    if ((v410 & 0x8000) != 0)
                    {
                      objc_msgSend_setIntValue_forProperty_(v9, v8, v10, v11, v12, *(archive + 101), 1208);
                      v410 = *(archive + 6);
                      if ((v410 & 0x8000) != 0)
                      {
                        objc_msgSend_setIntValue_forProperty_(v9, v8, v10, v11, v12, *(archive + 101), 1208);
                        v410 = *(archive + 6);
                        if ((v410 & 0x8000) != 0)
                        {
                          objc_msgSend_setIntValue_forProperty_(v9, v8, v10, v11, v12, *(archive + 101), 1208);
                          v410 = *(archive + 6);
                          if ((v410 & 0x8000) != 0)
                          {
                            objc_msgSend_setIntValue_forProperty_(v9, v8, v10, v11, v12, *(archive + 101), 1208);
                            v410 = *(archive + 6);
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    if ((v410 & 0x10000) != 0)
    {
      objc_msgSend_setIntValue_forProperty_(v9, v8, v10, v11, v12, *(archive + 102), 1209);
      v410 = *(archive + 6);
    }

    if ((v410 & 0x20000) != 0)
    {
      objc_msgSend_setIntValue_forProperty_(v9, v8, v10, v11, v12, *(archive + 103), 1210);
      v410 = *(archive + 6);
      if ((v410 & 0x20000) != 0)
      {
        objc_msgSend_setIntValue_forProperty_(v9, v8, v10, v11, v12, *(archive + 103), 1210);
        v410 = *(archive + 6);
      }
    }

    if ((v410 & 0x40000) != 0)
    {
      LODWORD(v10) = *(archive + 104);
      objc_msgSend_setFloatValue_forProperty_(v9, v8, v10, v11, v12, 1211);
      v410 = *(archive + 6);
    }

    if ((v410 & 0x80000) != 0)
    {
      objc_msgSend_setIntValue_forProperty_(v9, v8, v10, v11, v12, *(archive + 105), 1212);
    }
  }

  v411 = v7;

  return v411;
}

- (void)saveToArchive:(void *)archive archiver:(id)archiver
{
  archiverCopy = archiver;
  selfCopy = self;
  if (objc_msgSend_containsProperty_(selfCopy, v7, v8, v9, v10, 1127))
  {
    v16 = objc_msgSend_objectForProperty_(selfCopy, v11, v12, v13, v14, 1127);
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

  if (objc_msgSend_containsProperty_(selfCopy, v11, v12, v13, v14, 1128))
  {
    v27 = objc_msgSend_objectForProperty_(selfCopy, v22, v23, v24, v25, 1128);
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

  if (objc_msgSend_containsProperty_(selfCopy, v22, v23, v24, v25, 1128))
  {
    v38 = objc_msgSend_objectForProperty_(selfCopy, v33, v34, v35, v36, 1128);
    *(archive + 4) |= 4u;
    v42 = *(archive + 6);
    if (!v42)
    {
      v43 = *(archive + 1);
      if (v43)
      {
        v43 = *(v43 & 0xFFFFFFFFFFFFFFFELL);
      }

      v42 = MEMORY[0x277C97B00](v43);
      *(archive + 6) = v42;
    }

    objc_msgSend_saveToArchive_archiver_(v38, v37, v39, v40, v41, v42, archiverCopy);
  }

  if (objc_msgSend_containsProperty_(selfCopy, v33, v34, v35, v36, 1129))
  {
    objc_msgSend_floatValueForProperty_(selfCopy, v44, v45, v46, v47, 1129);
    *(archive + 4) |= 0x4000000u;
    *(archive + 60) = LODWORD(v45);
  }

  if (objc_msgSend_containsProperty_(selfCopy, v44, v45, v46, v47, 1130))
  {
    objc_msgSend_floatValueForProperty_(selfCopy, v48, v49, v50, v51, 1130);
    *(archive + 4) |= 0x8000000u;
    *(archive + 61) = LODWORD(v49);
  }

  if (objc_msgSend_containsProperty_(selfCopy, v48, v49, v50, v51, 1131))
  {
    v57 = objc_msgSend_objectForProperty_(selfCopy, v52, v53, v54, v55, 1131);
    *(archive + 4) |= 8u;
    v61 = *(archive + 7);
    if (!v61)
    {
      v62 = *(archive + 1);
      if (v62)
      {
        v62 = *(v62 & 0xFFFFFFFFFFFFFFFELL);
      }

      v61 = MEMORY[0x277C97AB0](v62);
      *(archive + 7) = v61;
    }

    objc_msgSend_saveToArchive_archiver_(v57, v56, v58, v59, v60, v61, archiverCopy);
  }

  if (objc_msgSend_containsProperty_(selfCopy, v52, v53, v54, v55, 1132))
  {
    v68 = objc_msgSend_objectForProperty_(selfCopy, v63, v64, v65, v66, 1132);
    *(archive + 4) |= 0x10u;
    v72 = *(archive + 8);
    if (!v72)
    {
      v73 = *(archive + 1);
      if (v73)
      {
        v73 = *(v73 & 0xFFFFFFFFFFFFFFFELL);
      }

      v72 = MEMORY[0x277C97AB0](v73);
      *(archive + 8) = v72;
    }

    objc_msgSend_saveToArchive_archiver_(v68, v67, v69, v70, v71, v72, archiverCopy);
  }

  if (objc_msgSend_containsProperty_(selfCopy, v63, v64, v65, v66, 1133))
  {
    v79 = objc_msgSend_objectForProperty_(selfCopy, v74, v75, v76, v77, 1133);
    *(archive + 4) |= 0x20u;
    v83 = *(archive + 9);
    if (!v83)
    {
      v84 = *(archive + 1);
      if (v84)
      {
        v84 = *(v84 & 0xFFFFFFFFFFFFFFFELL);
      }

      v83 = MEMORY[0x277C97AA0](v84);
      *(archive + 9) = v83;
    }

    objc_msgSend_saveToArchive_archiver_(v79, v78, v80, v81, v82, v83, archiverCopy);
  }

  if (objc_msgSend_containsProperty_(selfCopy, v74, v75, v76, v77, 1136))
  {
    v90 = objc_msgSend_objectForProperty_(selfCopy, v85, v86, v87, v88, 1136);
    *(archive + 4) |= 0x40u;
    v94 = *(archive + 10);
    if (!v94)
    {
      v95 = *(archive + 1);
      if (v95)
      {
        v95 = *(v95 & 0xFFFFFFFFFFFFFFFELL);
      }

      v94 = MEMORY[0x277C97B00](v95);
      *(archive + 10) = v94;
    }

    objc_msgSend_saveToArchive_archiver_(v90, v89, v91, v92, v93, v94, archiverCopy);
  }

  if (objc_msgSend_containsProperty_(selfCopy, v85, v86, v87, v88, 1137))
  {
    v101 = objc_msgSend_objectForProperty_(selfCopy, v96, v97, v98, v99, 1137);
    *(archive + 4) |= 0x80u;
    v105 = *(archive + 11);
    if (!v105)
    {
      v106 = *(archive + 1);
      if (v106)
      {
        v106 = *(v106 & 0xFFFFFFFFFFFFFFFELL);
      }

      v105 = MEMORY[0x277C97B00](v106);
      *(archive + 11) = v105;
    }

    objc_msgSend_saveToArchive_archiver_(v101, v100, v102, v103, v104, v105, archiverCopy);
  }

  if (objc_msgSend_containsProperty_(selfCopy, v96, v97, v98, v99, 1138))
  {
    v111 = objc_msgSend_intValueForProperty_(selfCopy, v107, v108, v109, v110, 1138);
    *(archive + 4) |= 0x10000000u;
    *(archive + 62) = v111;
  }

  if (objc_msgSend_containsProperty_(selfCopy, v107, v108, v109, v110, 1138))
  {
    v116 = objc_msgSend_intValueForProperty_(selfCopy, v112, v113, v114, v115, 1138);
    *(archive + 4) |= 0x10000000u;
    *(archive + 62) = v116;
  }

  if (objc_msgSend_containsProperty_(selfCopy, v112, v113, v114, v115, 1138))
  {
    v121 = objc_msgSend_intValueForProperty_(selfCopy, v117, v118, v119, v120, 1138);
    *(archive + 4) |= 0x10000000u;
    *(archive + 62) = v121;
  }

  if (objc_msgSend_containsProperty_(selfCopy, v117, v118, v119, v120, 1138))
  {
    v126 = objc_msgSend_intValueForProperty_(selfCopy, v122, v123, v124, v125, 1138);
    *(archive + 4) |= 0x10000000u;
    *(archive + 62) = v126;
  }

  if (objc_msgSend_containsProperty_(selfCopy, v122, v123, v124, v125, 1138))
  {
    v131 = objc_msgSend_intValueForProperty_(selfCopy, v127, v128, v129, v130, 1138);
    *(archive + 4) |= 0x10000000u;
    *(archive + 62) = v131;
  }

  if (objc_msgSend_containsProperty_(selfCopy, v127, v128, v129, v130, 1138))
  {
    v136 = objc_msgSend_intValueForProperty_(selfCopy, v132, v133, v134, v135, 1138);
    *(archive + 4) |= 0x10000000u;
    *(archive + 62) = v136;
  }

  if (objc_msgSend_containsProperty_(selfCopy, v132, v133, v134, v135, 1138))
  {
    v141 = objc_msgSend_intValueForProperty_(selfCopy, v137, v138, v139, v140, 1138);
    *(archive + 4) |= 0x10000000u;
    *(archive + 62) = v141;
  }

  if (objc_msgSend_containsProperty_(selfCopy, v137, v138, v139, v140, 1138))
  {
    v146 = objc_msgSend_intValueForProperty_(selfCopy, v142, v143, v144, v145, 1138);
    *(archive + 4) |= 0x10000000u;
    *(archive + 62) = v146;
  }

  if (objc_msgSend_containsProperty_(selfCopy, v142, v143, v144, v145, 1138))
  {
    v151 = objc_msgSend_intValueForProperty_(selfCopy, v147, v148, v149, v150, 1138);
    *(archive + 4) |= 0x10000000u;
    *(archive + 62) = v151;
  }

  if (objc_msgSend_containsProperty_(selfCopy, v147, v148, v149, v150, 1139))
  {
    v157 = objc_msgSend_objectForProperty_(selfCopy, v152, v153, v154, v155, 1139);
    *(archive + 4) |= 0x100u;
    v161 = *(archive + 12);
    if (!v161)
    {
      v162 = *(archive + 1);
      if (v162)
      {
        v162 = *(v162 & 0xFFFFFFFFFFFFFFFELL);
      }

      v161 = sub_276406A94(v162);
      *(archive + 12) = v161;
    }

    objc_msgSend_tsch_saveToArchive_archiver_(v157, v156, v158, v159, v160, v161, archiverCopy);
  }

  if (objc_msgSend_containsProperty_(selfCopy, v152, v153, v154, v155, 1140))
  {
    v168 = objc_msgSend_objectForProperty_(selfCopy, v163, v164, v165, v166, 1140);
    *(archive + 4) |= 0x200u;
    v172 = *(archive + 13);
    if (!v172)
    {
      v173 = *(archive + 1);
      if (v173)
      {
        v173 = *(v173 & 0xFFFFFFFFFFFFFFFELL);
      }

      v172 = sub_276406A94(v173);
      *(archive + 13) = v172;
    }

    objc_msgSend_tsch_saveToArchive_archiver_(v168, v167, v169, v170, v171, v172, archiverCopy);
  }

  if (objc_msgSend_containsProperty_(selfCopy, v163, v164, v165, v166, 1141))
  {
    v179 = objc_msgSend_objectForProperty_(selfCopy, v174, v175, v176, v177, 1141);
    *(archive + 4) |= 0x400u;
    v183 = *(archive + 14);
    if (!v183)
    {
      v184 = *(archive + 1);
      if (v184)
      {
        v184 = *(v184 & 0xFFFFFFFFFFFFFFFELL);
      }

      v183 = sub_276406A94(v184);
      *(archive + 14) = v183;
    }

    objc_msgSend_tsch_saveToArchive_archiver_(v179, v178, v180, v181, v182, v183, archiverCopy);
  }

  if (objc_msgSend_containsProperty_(selfCopy, v174, v175, v176, v177, 1142))
  {
    v190 = objc_msgSend_objectForProperty_(selfCopy, v185, v186, v187, v188, 1142);
    *(archive + 4) |= 0x800u;
    v194 = *(archive + 15);
    if (!v194)
    {
      v195 = *(archive + 1);
      if (v195)
      {
        v195 = *(v195 & 0xFFFFFFFFFFFFFFFELL);
      }

      v194 = sub_276406A94(v195);
      *(archive + 15) = v194;
    }

    objc_msgSend_tsch_saveToArchive_archiver_(v190, v189, v191, v192, v193, v194, archiverCopy);
  }

  if (objc_msgSend_containsProperty_(selfCopy, v185, v186, v187, v188, 1143))
  {
    objc_msgSend_floatValueForProperty_(selfCopy, v196, v197, v198, v199, 1143);
    *(archive + 4) |= 0x20000000u;
    *(archive + 63) = LODWORD(v197);
  }

  if (objc_msgSend_containsProperty_(selfCopy, v196, v197, v198, v199, 1144))
  {
    objc_msgSend_floatValueForProperty_(selfCopy, v200, v201, v202, v203, 1144);
    *(archive + 4) |= 0x40000000u;
    *(archive + 64) = LODWORD(v201);
  }

  if (objc_msgSend_containsProperty_(selfCopy, v200, v201, v202, v203, 1145))
  {
    v209 = objc_msgSend_objectForProperty_(selfCopy, v204, v205, v206, v207, 1145);
    *(archive + 4) |= 0x1000u;
    v213 = *(archive + 16);
    if (!v213)
    {
      v214 = *(archive + 1);
      if (v214)
      {
        v214 = *(v214 & 0xFFFFFFFFFFFFFFFELL);
      }

      v213 = MEMORY[0x277C97AB0](v214);
      *(archive + 16) = v213;
    }

    objc_msgSend_saveToArchive_archiver_(v209, v208, v210, v211, v212, v213, archiverCopy);
  }

  if (objc_msgSend_containsProperty_(selfCopy, v204, v205, v206, v207, 1146))
  {
    v220 = objc_msgSend_objectForProperty_(selfCopy, v215, v216, v217, v218, 1146);
    *(archive + 4) |= 0x2000u;
    v224 = *(archive + 17);
    if (!v224)
    {
      v225 = *(archive + 1);
      if (v225)
      {
        v225 = *(v225 & 0xFFFFFFFFFFFFFFFELL);
      }

      v224 = MEMORY[0x277C97AB0](v225);
      *(archive + 17) = v224;
    }

    objc_msgSend_saveToArchive_archiver_(v220, v219, v221, v222, v223, v224, archiverCopy);
  }

  if (objc_msgSend_containsProperty_(selfCopy, v215, v216, v217, v218, 1147))
  {
    objc_msgSend_floatValueForProperty_(selfCopy, v226, v227, v228, v229, 1147);
    *(archive + 4) |= 0x80000000;
    *(archive + 65) = LODWORD(v227);
  }

  if (objc_msgSend_containsProperty_(selfCopy, v226, v227, v228, v229, 1148))
  {
    objc_msgSend_floatValueForProperty_(selfCopy, v230, v231, v232, v233, 1148);
    *(archive + 5) |= 1u;
    *(archive + 66) = LODWORD(v231);
  }

  if (objc_msgSend_containsProperty_(selfCopy, v230, v231, v232, v233, 1149))
  {
    v238 = objc_msgSend_intValueForProperty_(selfCopy, v234, v235, v236, v237, 1149);
    *(archive + 5) |= 2u;
    *(archive + 67) = v238;
  }

  if (objc_msgSend_containsProperty_(selfCopy, v234, v235, v236, v237, 1150))
  {
    v243 = objc_msgSend_intValueForProperty_(selfCopy, v239, v240, v241, v242, 1150);
    *(archive + 5) |= 4u;
    *(archive + 68) = v243;
  }

  if (objc_msgSend_containsProperty_(selfCopy, v239, v240, v241, v242, 1151))
  {
    v249 = objc_msgSend_objectForProperty_(selfCopy, v244, v245, v246, v247, 1151);
    *(archive + 4) |= 0x4000u;
    v253 = *(archive + 18);
    if (!v253)
    {
      v254 = *(archive + 1);
      if (v254)
      {
        v254 = *(v254 & 0xFFFFFFFFFFFFFFFELL);
      }

      v253 = MEMORY[0x277C97A90](v254);
      *(archive + 18) = v253;
    }

    objc_msgSend_saveToArchive_archiver_(v249, v248, v250, v251, v252, v253, archiverCopy);
  }

  if (objc_msgSend_containsProperty_(selfCopy, v244, v245, v246, v247, 1152))
  {
    v259 = objc_msgSend_intValueForProperty_(selfCopy, v255, v256, v257, v258, 1152);
    *(archive + 5) |= 8u;
    *(archive + 69) = v259;
  }

  if (objc_msgSend_containsProperty_(selfCopy, v255, v256, v257, v258, 1153))
  {
    v264 = objc_msgSend_intValueForProperty_(selfCopy, v260, v261, v262, v263, 1153);
    *(archive + 5) |= 0x10u;
    *(archive + 70) = v264;
  }

  if (objc_msgSend_containsProperty_(selfCopy, v260, v261, v262, v263, 1154))
  {
    objc_msgSend_floatValueForProperty_(selfCopy, v265, v266, v267, v268, 1154);
    *(archive + 5) |= 0x20u;
    *(archive + 71) = LODWORD(v266);
  }

  if (objc_msgSend_containsProperty_(selfCopy, v265, v266, v267, v268, 1155))
  {
    objc_msgSend_floatValueForProperty_(selfCopy, v269, v270, v271, v272, 1155);
    *(archive + 5) |= 0x40u;
    *(archive + 72) = LODWORD(v270);
  }

  if (objc_msgSend_containsProperty_(selfCopy, v269, v270, v271, v272, 1156))
  {
    v278 = objc_msgSend_objectForProperty_(selfCopy, v273, v274, v275, v276, 1156);
    *(archive + 4) |= 0x8000u;
    v282 = *(archive + 19);
    if (!v282)
    {
      v283 = *(archive + 1);
      if (v283)
      {
        v283 = *(v283 & 0xFFFFFFFFFFFFFFFELL);
      }

      v282 = MEMORY[0x277C97AA0](v283);
      *(archive + 19) = v282;
    }

    objc_msgSend_saveToArchive_archiver_(v278, v277, v279, v280, v281, v282, archiverCopy);
  }

  if (objc_msgSend_containsProperty_(selfCopy, v273, v274, v275, v276, 1157))
  {
    v289 = objc_msgSend_objectForProperty_(selfCopy, v284, v285, v286, v287, 1157);
    *(archive + 4) |= 0x10000u;
    v293 = *(archive + 20);
    if (!v293)
    {
      v294 = *(archive + 1);
      if (v294)
      {
        v294 = *(v294 & 0xFFFFFFFFFFFFFFFELL);
      }

      v293 = MEMORY[0x277C97AA0](v294);
      *(archive + 20) = v293;
    }

    objc_msgSend_saveToArchive_archiver_(v289, v288, v290, v291, v292, v293, archiverCopy);
  }

  if (objc_msgSend_containsProperty_(selfCopy, v284, v285, v286, v287, 1158))
  {
    v299 = objc_msgSend_intValueForProperty_(selfCopy, v295, v296, v297, v298, 1158);
    *(archive + 5) |= 0x80u;
    *(archive + 73) = v299;
  }

  if (objc_msgSend_containsProperty_(selfCopy, v295, v296, v297, v298, 1159))
  {
    v304 = objc_msgSend_intValueForProperty_(selfCopy, v300, v301, v302, v303, 1159);
    *(archive + 5) |= 0x100u;
    *(archive + 74) = v304;
  }

  if (objc_msgSend_containsProperty_(selfCopy, v300, v301, v302, v303, 1160))
  {
    v310 = objc_msgSend_objectForProperty_(selfCopy, v305, v306, v307, v308, 1160);
    *(archive + 4) |= 0x20000u;
    v314 = *(archive + 21);
    if (!v314)
    {
      v315 = *(archive + 1);
      if (v315)
      {
        v315 = *(v315 & 0xFFFFFFFFFFFFFFFELL);
      }

      v314 = MEMORY[0x277C97A80](v315);
      *(archive + 21) = v314;
    }

    objc_msgSend_saveToArchive_archiver_(v310, v309, v311, v312, v313, v314, archiverCopy);
  }

  if (objc_msgSend_containsProperty_(selfCopy, v305, v306, v307, v308, 1160))
  {
    v321 = objc_msgSend_objectForProperty_(selfCopy, v316, v317, v318, v319, 1160);
    *(archive + 4) |= 0x20000u;
    v325 = *(archive + 21);
    if (!v325)
    {
      v326 = *(archive + 1);
      if (v326)
      {
        v326 = *(v326 & 0xFFFFFFFFFFFFFFFELL);
      }

      v325 = MEMORY[0x277C97A80](v326);
      *(archive + 21) = v325;
    }

    objc_msgSend_saveToArchive_archiver_(v321, v320, v322, v323, v324, v325, archiverCopy);
  }

  if (objc_msgSend_containsProperty_(selfCopy, v316, v317, v318, v319, 1160))
  {
    v332 = objc_msgSend_objectForProperty_(selfCopy, v327, v328, v329, v330, 1160);
    *(archive + 4) |= 0x20000u;
    v336 = *(archive + 21);
    if (!v336)
    {
      v337 = *(archive + 1);
      if (v337)
      {
        v337 = *(v337 & 0xFFFFFFFFFFFFFFFELL);
      }

      v336 = MEMORY[0x277C97A80](v337);
      *(archive + 21) = v336;
    }

    objc_msgSend_saveToArchive_archiver_(v332, v331, v333, v334, v335, v336, archiverCopy);
  }

  if (objc_msgSend_containsProperty_(selfCopy, v327, v328, v329, v330, 1160))
  {
    v343 = objc_msgSend_objectForProperty_(selfCopy, v338, v339, v340, v341, 1160);
    *(archive + 4) |= 0x20000u;
    v347 = *(archive + 21);
    if (!v347)
    {
      v348 = *(archive + 1);
      if (v348)
      {
        v348 = *(v348 & 0xFFFFFFFFFFFFFFFELL);
      }

      v347 = MEMORY[0x277C97A80](v348);
      *(archive + 21) = v347;
    }

    objc_msgSend_saveToArchive_archiver_(v343, v342, v344, v345, v346, v347, archiverCopy);
  }

  if (objc_msgSend_containsProperty_(selfCopy, v338, v339, v340, v341, 1160))
  {
    v354 = objc_msgSend_objectForProperty_(selfCopy, v349, v350, v351, v352, 1160);
    *(archive + 4) |= 0x20000u;
    v358 = *(archive + 21);
    if (!v358)
    {
      v359 = *(archive + 1);
      if (v359)
      {
        v359 = *(v359 & 0xFFFFFFFFFFFFFFFELL);
      }

      v358 = MEMORY[0x277C97A80](v359);
      *(archive + 21) = v358;
    }

    objc_msgSend_saveToArchive_archiver_(v354, v353, v355, v356, v357, v358, archiverCopy);
  }

  if (objc_msgSend_containsProperty_(selfCopy, v349, v350, v351, v352, 1160))
  {
    v365 = objc_msgSend_objectForProperty_(selfCopy, v360, v361, v362, v363, 1160);
    *(archive + 4) |= 0x20000u;
    v369 = *(archive + 21);
    if (!v369)
    {
      v370 = *(archive + 1);
      if (v370)
      {
        v370 = *(v370 & 0xFFFFFFFFFFFFFFFELL);
      }

      v369 = MEMORY[0x277C97A80](v370);
      *(archive + 21) = v369;
    }

    objc_msgSend_saveToArchive_archiver_(v365, v364, v366, v367, v368, v369, archiverCopy);
  }

  if (objc_msgSend_containsProperty_(selfCopy, v360, v361, v362, v363, 1160))
  {
    v376 = objc_msgSend_objectForProperty_(selfCopy, v371, v372, v373, v374, 1160);
    *(archive + 4) |= 0x20000u;
    v380 = *(archive + 21);
    if (!v380)
    {
      v381 = *(archive + 1);
      if (v381)
      {
        v381 = *(v381 & 0xFFFFFFFFFFFFFFFELL);
      }

      v380 = MEMORY[0x277C97A80](v381);
      *(archive + 21) = v380;
    }

    objc_msgSend_saveToArchive_archiver_(v376, v375, v377, v378, v379, v380, archiverCopy);
  }

  if (objc_msgSend_containsProperty_(selfCopy, v371, v372, v373, v374, 1160))
  {
    v387 = objc_msgSend_objectForProperty_(selfCopy, v382, v383, v384, v385, 1160);
    *(archive + 4) |= 0x20000u;
    v391 = *(archive + 21);
    if (!v391)
    {
      v392 = *(archive + 1);
      if (v392)
      {
        v392 = *(v392 & 0xFFFFFFFFFFFFFFFELL);
      }

      v391 = MEMORY[0x277C97A80](v392);
      *(archive + 21) = v391;
    }

    objc_msgSend_saveToArchive_archiver_(v387, v386, v388, v389, v390, v391, archiverCopy);
  }

  if (objc_msgSend_containsProperty_(selfCopy, v382, v383, v384, v385, 1160))
  {
    v398 = objc_msgSend_objectForProperty_(selfCopy, v393, v394, v395, v396, 1160);
    *(archive + 4) |= 0x20000u;
    v402 = *(archive + 21);
    if (!v402)
    {
      v403 = *(archive + 1);
      if (v403)
      {
        v403 = *(v403 & 0xFFFFFFFFFFFFFFFELL);
      }

      v402 = MEMORY[0x277C97A80](v403);
      *(archive + 21) = v402;
    }

    objc_msgSend_saveToArchive_archiver_(v398, v397, v399, v400, v401, v402, archiverCopy);
  }

  if (objc_msgSend_containsProperty_(selfCopy, v393, v394, v395, v396, 1160))
  {
    v409 = objc_msgSend_objectForProperty_(selfCopy, v404, v405, v406, v407, 1160);
    *(archive + 4) |= 0x20000u;
    v413 = *(archive + 21);
    if (!v413)
    {
      v414 = *(archive + 1);
      if (v414)
      {
        v414 = *(v414 & 0xFFFFFFFFFFFFFFFELL);
      }

      v413 = MEMORY[0x277C97A80](v414);
      *(archive + 21) = v413;
    }

    objc_msgSend_saveToArchive_archiver_(v409, v408, v410, v411, v412, v413, archiverCopy);
  }

  if (objc_msgSend_containsProperty_(selfCopy, v404, v405, v406, v407, 1160))
  {
    v420 = objc_msgSend_objectForProperty_(selfCopy, v415, v416, v417, v418, 1160);
    *(archive + 4) |= 0x20000u;
    v424 = *(archive + 21);
    if (!v424)
    {
      v425 = *(archive + 1);
      if (v425)
      {
        v425 = *(v425 & 0xFFFFFFFFFFFFFFFELL);
      }

      v424 = MEMORY[0x277C97A80](v425);
      *(archive + 21) = v424;
    }

    objc_msgSend_saveToArchive_archiver_(v420, v419, v421, v422, v423, v424, archiverCopy);
  }

  if (objc_msgSend_containsProperty_(selfCopy, v415, v416, v417, v418, 1160))
  {
    v431 = objc_msgSend_objectForProperty_(selfCopy, v426, v427, v428, v429, 1160);
    *(archive + 4) |= 0x20000u;
    v435 = *(archive + 21);
    if (!v435)
    {
      v436 = *(archive + 1);
      if (v436)
      {
        v436 = *(v436 & 0xFFFFFFFFFFFFFFFELL);
      }

      v435 = MEMORY[0x277C97A80](v436);
      *(archive + 21) = v435;
    }

    objc_msgSend_saveToArchive_archiver_(v431, v430, v432, v433, v434, v435, archiverCopy);
  }

  if (objc_msgSend_containsProperty_(selfCopy, v426, v427, v428, v429, 1160))
  {
    v442 = objc_msgSend_objectForProperty_(selfCopy, v437, v438, v439, v440, 1160);
    *(archive + 4) |= 0x20000u;
    v446 = *(archive + 21);
    if (!v446)
    {
      v447 = *(archive + 1);
      if (v447)
      {
        v447 = *(v447 & 0xFFFFFFFFFFFFFFFELL);
      }

      v446 = MEMORY[0x277C97A80](v447);
      *(archive + 21) = v446;
    }

    objc_msgSend_saveToArchive_archiver_(v442, v441, v443, v444, v445, v446, archiverCopy);
  }

  if (objc_msgSend_containsProperty_(selfCopy, v437, v438, v439, v440, 1162))
  {
    objc_msgSend_floatValueForProperty_(selfCopy, v448, v449, v450, v451, 1162);
    *(archive + 5) |= 0x200u;
    *(archive + 75) = LODWORD(v449);
  }

  if (objc_msgSend_containsProperty_(selfCopy, v448, v449, v450, v451, 1161))
  {
    v456 = objc_msgSend_intValueForProperty_(selfCopy, v452, v453, v454, v455, 1161) != 0;
    *(archive + 5) |= 0x20000u;
    *(archive + 332) = v456;
  }

  if (objc_msgSend_containsProperty_(selfCopy, v452, v453, v454, v455, 1163))
  {
    objc_msgSend_floatValueForProperty_(selfCopy, v457, v458, v459, v460, 1163);
    *(archive + 5) |= 0x400u;
    *(archive + 76) = LODWORD(v458);
  }

  if (objc_msgSend_containsProperty_(selfCopy, v457, v458, v459, v460, 1164))
  {
    v465 = objc_msgSend_intValueForProperty_(selfCopy, v461, v462, v463, v464, 1164);
    *(archive + 5) |= 0x800u;
    *(archive + 77) = v465;
  }

  if (objc_msgSend_containsProperty_(selfCopy, v461, v462, v463, v464, 1164))
  {
    v470 = objc_msgSend_intValueForProperty_(selfCopy, v466, v467, v468, v469, 1164);
    *(archive + 5) |= 0x800u;
    *(archive + 77) = v470;
  }

  if (objc_msgSend_containsProperty_(selfCopy, v466, v467, v468, v469, 1164))
  {
    v475 = objc_msgSend_intValueForProperty_(selfCopy, v471, v472, v473, v474, 1164);
    *(archive + 5) |= 0x800u;
    *(archive + 77) = v475;
  }

  if (objc_msgSend_containsProperty_(selfCopy, v471, v472, v473, v474, 1164))
  {
    v480 = objc_msgSend_intValueForProperty_(selfCopy, v476, v477, v478, v479, 1164);
    *(archive + 5) |= 0x800u;
    *(archive + 77) = v480;
  }

  if (objc_msgSend_containsProperty_(selfCopy, v476, v477, v478, v479, 1164))
  {
    v485 = objc_msgSend_intValueForProperty_(selfCopy, v481, v482, v483, v484, 1164);
    *(archive + 5) |= 0x800u;
    *(archive + 77) = v485;
  }

  if (objc_msgSend_containsProperty_(selfCopy, v481, v482, v483, v484, 1164))
  {
    v490 = objc_msgSend_intValueForProperty_(selfCopy, v486, v487, v488, v489, 1164);
    *(archive + 5) |= 0x800u;
    *(archive + 77) = v490;
  }

  if (objc_msgSend_containsProperty_(selfCopy, v486, v487, v488, v489, 1164))
  {
    v495 = objc_msgSend_intValueForProperty_(selfCopy, v491, v492, v493, v494, 1164);
    *(archive + 5) |= 0x800u;
    *(archive + 77) = v495;
  }

  if (objc_msgSend_containsProperty_(selfCopy, v491, v492, v493, v494, 1164))
  {
    v500 = objc_msgSend_intValueForProperty_(selfCopy, v496, v497, v498, v499, 1164);
    *(archive + 5) |= 0x800u;
    *(archive + 77) = v500;
  }

  if (objc_msgSend_containsProperty_(selfCopy, v496, v497, v498, v499, 1165))
  {
    v505 = objc_msgSend_intValueForProperty_(selfCopy, v501, v502, v503, v504, 1165);
    *(archive + 5) |= 0x1000u;
    *(archive + 78) = v505;
  }

  if (objc_msgSend_containsProperty_(selfCopy, v501, v502, v503, v504, 1165))
  {
    v510 = objc_msgSend_intValueForProperty_(selfCopy, v506, v507, v508, v509, 1165);
    *(archive + 5) |= 0x1000u;
    *(archive + 78) = v510;
  }

  if (objc_msgSend_containsProperty_(selfCopy, v506, v507, v508, v509, 1165))
  {
    v515 = objc_msgSend_intValueForProperty_(selfCopy, v511, v512, v513, v514, 1165);
    *(archive + 5) |= 0x1000u;
    *(archive + 78) = v515;
  }

  if (objc_msgSend_containsProperty_(selfCopy, v511, v512, v513, v514, 1165))
  {
    v520 = objc_msgSend_intValueForProperty_(selfCopy, v516, v517, v518, v519, 1165);
    *(archive + 5) |= 0x1000u;
    *(archive + 78) = v520;
  }

  if (objc_msgSend_containsProperty_(selfCopy, v516, v517, v518, v519, 1165))
  {
    v525 = objc_msgSend_intValueForProperty_(selfCopy, v521, v522, v523, v524, 1165);
    *(archive + 5) |= 0x1000u;
    *(archive + 78) = v525;
  }

  if (objc_msgSend_containsProperty_(selfCopy, v521, v522, v523, v524, 1166))
  {
    v531 = objc_msgSend_objectForProperty_(selfCopy, v526, v527, v528, v529, 1166);
    *(archive + 4) |= 0x40000u;
    v535 = *(archive + 22);
    if (!v535)
    {
      v536 = *(archive + 1);
      if (v536)
      {
        v536 = *(v536 & 0xFFFFFFFFFFFFFFFELL);
      }

      v535 = MEMORY[0x277C97B00](v536);
      *(archive + 22) = v535;
    }

    objc_msgSend_saveToArchive_archiver_(v531, v530, v532, v533, v534, v535, archiverCopy);
  }

  if (objc_msgSend_containsProperty_(selfCopy, v526, v527, v528, v529, 1166))
  {
    v542 = objc_msgSend_objectForProperty_(selfCopy, v537, v538, v539, v540, 1166);
    *(archive + 4) |= 0x40000u;
    v546 = *(archive + 22);
    if (!v546)
    {
      v547 = *(archive + 1);
      if (v547)
      {
        v547 = *(v547 & 0xFFFFFFFFFFFFFFFELL);
      }

      v546 = MEMORY[0x277C97B00](v547);
      *(archive + 22) = v546;
    }

    objc_msgSend_saveToArchive_archiver_(v542, v541, v543, v544, v545, v546, archiverCopy);
  }

  if (objc_msgSend_containsProperty_(selfCopy, v537, v538, v539, v540, 1167))
  {
    v552 = objc_msgSend_intValueForProperty_(selfCopy, v548, v549, v550, v551, 1167);
    *(archive + 5) |= 0x2000u;
    *(archive + 79) = v552;
  }

  if (objc_msgSend_containsProperty_(selfCopy, v548, v549, v550, v551, 1167))
  {
    v557 = objc_msgSend_intValueForProperty_(selfCopy, v553, v554, v555, v556, 1167);
    *(archive + 5) |= 0x2000u;
    *(archive + 79) = v557;
  }

  if (objc_msgSend_containsProperty_(selfCopy, v553, v554, v555, v556, 1168))
  {
    objc_msgSend_floatValueForProperty_(selfCopy, v558, v559, v560, v561, 1168);
    *(archive + 5) |= 0x4000u;
    *(archive + 80) = LODWORD(v559);
  }

  if (objc_msgSend_containsProperty_(selfCopy, v558, v559, v560, v561, 1169))
  {
    v566 = objc_msgSend_intValueForProperty_(selfCopy, v562, v563, v564, v565, 1169);
    *(archive + 5) |= 0x8000u;
    *(archive + 81) = v566;
  }

  if (objc_msgSend_containsProperty_(selfCopy, v562, v563, v564, v565, 1169))
  {
    v571 = objc_msgSend_intValueForProperty_(selfCopy, v567, v568, v569, v570, 1169);
    *(archive + 5) |= 0x8000u;
    *(archive + 81) = v571;
  }

  if (objc_msgSend_containsProperty_(selfCopy, v567, v568, v569, v570, 1169))
  {
    v576 = objc_msgSend_intValueForProperty_(selfCopy, v572, v573, v574, v575, 1169);
    *(archive + 5) |= 0x8000u;
    *(archive + 81) = v576;
  }

  if (objc_msgSend_containsProperty_(selfCopy, v572, v573, v574, v575, 1169))
  {
    v581 = objc_msgSend_intValueForProperty_(selfCopy, v577, v578, v579, v580, 1169);
    *(archive + 5) |= 0x8000u;
    *(archive + 81) = v581;
  }

  if (objc_msgSend_containsProperty_(selfCopy, v577, v578, v579, v580, 1169))
  {
    v586 = objc_msgSend_intValueForProperty_(selfCopy, v582, v583, v584, v585, 1169);
    *(archive + 5) |= 0x8000u;
    *(archive + 81) = v586;
  }

  if (objc_msgSend_containsProperty_(selfCopy, v582, v583, v584, v585, 1169))
  {
    v591 = objc_msgSend_intValueForProperty_(selfCopy, v587, v588, v589, v590, 1169);
    *(archive + 5) |= 0x8000u;
    *(archive + 81) = v591;
  }

  if (objc_msgSend_containsProperty_(selfCopy, v587, v588, v589, v590, 1169))
  {
    v596 = objc_msgSend_intValueForProperty_(selfCopy, v592, v593, v594, v595, 1169);
    *(archive + 5) |= 0x8000u;
    *(archive + 81) = v596;
  }

  if (objc_msgSend_containsProperty_(selfCopy, v592, v593, v594, v595, 1170))
  {
    v602 = objc_msgSend_objectForProperty_(selfCopy, v597, v598, v599, v600, 1170);
    *(archive + 4) |= 0x80000u;
    v606 = *(archive + 23);
    if (!v606)
    {
      v607 = *(archive + 1);
      if (v607)
      {
        v607 = *(v607 & 0xFFFFFFFFFFFFFFFELL);
      }

      v606 = MEMORY[0x277C97B00](v607);
      *(archive + 23) = v606;
    }

    objc_msgSend_saveToArchive_archiver_(v602, v601, v603, v604, v605, v606, archiverCopy);
  }

  if (objc_msgSend_containsProperty_(selfCopy, v597, v598, v599, v600, 1171))
  {
    v612 = objc_msgSend_intValueForProperty_(selfCopy, v608, v609, v610, v611, 1171);
    *(archive + 5) |= 0x10000u;
    *(archive + 82) = v612;
  }

  if (objc_msgSend_containsProperty_(selfCopy, v608, v609, v610, v611, 1172))
  {
    v618 = objc_msgSend_objectForProperty_(selfCopy, v613, v614, v615, v616, 1172);
    *(archive + 4) |= 0x100000u;
    v622 = *(archive + 24);
    if (!v622)
    {
      v623 = *(archive + 1);
      if (v623)
      {
        v623 = *(v623 & 0xFFFFFFFFFFFFFFFELL);
      }

      v622 = MEMORY[0x277C97A90](v623);
      *(archive + 24) = v622;
    }

    objc_msgSend_saveToArchive_archiver_(v618, v617, v619, v620, v621, v622, archiverCopy);
  }

  if (objc_msgSend_containsProperty_(selfCopy, v613, v614, v615, v616, 1172))
  {
    v629 = objc_msgSend_objectForProperty_(selfCopy, v624, v625, v626, v627, 1172);
    *(archive + 4) |= 0x100000u;
    v633 = *(archive + 24);
    if (!v633)
    {
      v634 = *(archive + 1);
      if (v634)
      {
        v634 = *(v634 & 0xFFFFFFFFFFFFFFFELL);
      }

      v633 = MEMORY[0x277C97A90](v634);
      *(archive + 24) = v633;
    }

    objc_msgSend_saveToArchive_archiver_(v629, v628, v630, v631, v632, v633, archiverCopy);
  }

  if (objc_msgSend_containsProperty_(selfCopy, v624, v625, v626, v627, 1172))
  {
    v640 = objc_msgSend_objectForProperty_(selfCopy, v635, v636, v637, v638, 1172);
    *(archive + 4) |= 0x100000u;
    v644 = *(archive + 24);
    if (!v644)
    {
      v645 = *(archive + 1);
      if (v645)
      {
        v645 = *(v645 & 0xFFFFFFFFFFFFFFFELL);
      }

      v644 = MEMORY[0x277C97A90](v645);
      *(archive + 24) = v644;
    }

    objc_msgSend_saveToArchive_archiver_(v640, v639, v641, v642, v643, v644, archiverCopy);
  }

  if (objc_msgSend_containsProperty_(selfCopy, v635, v636, v637, v638, 1172))
  {
    v651 = objc_msgSend_objectForProperty_(selfCopy, v646, v647, v648, v649, 1172);
    *(archive + 4) |= 0x100000u;
    v655 = *(archive + 24);
    if (!v655)
    {
      v656 = *(archive + 1);
      if (v656)
      {
        v656 = *(v656 & 0xFFFFFFFFFFFFFFFELL);
      }

      v655 = MEMORY[0x277C97A90](v656);
      *(archive + 24) = v655;
    }

    objc_msgSend_saveToArchive_archiver_(v651, v650, v652, v653, v654, v655, archiverCopy);
  }

  if (objc_msgSend_containsProperty_(selfCopy, v646, v647, v648, v649, 1172))
  {
    v662 = objc_msgSend_objectForProperty_(selfCopy, v657, v658, v659, v660, 1172);
    *(archive + 4) |= 0x100000u;
    v666 = *(archive + 24);
    if (!v666)
    {
      v667 = *(archive + 1);
      if (v667)
      {
        v667 = *(v667 & 0xFFFFFFFFFFFFFFFELL);
      }

      v666 = MEMORY[0x277C97A90](v667);
      *(archive + 24) = v666;
    }

    objc_msgSend_saveToArchive_archiver_(v662, v661, v663, v664, v665, v666, archiverCopy);
  }

  if (objc_msgSend_containsProperty_(selfCopy, v657, v658, v659, v660, 1172))
  {
    v673 = objc_msgSend_objectForProperty_(selfCopy, v668, v669, v670, v671, 1172);
    *(archive + 4) |= 0x100000u;
    v677 = *(archive + 24);
    if (!v677)
    {
      v678 = *(archive + 1);
      if (v678)
      {
        v678 = *(v678 & 0xFFFFFFFFFFFFFFFELL);
      }

      v677 = MEMORY[0x277C97A90](v678);
      *(archive + 24) = v677;
    }

    objc_msgSend_saveToArchive_archiver_(v673, v672, v674, v675, v676, v677, archiverCopy);
  }

  if (objc_msgSend_containsProperty_(selfCopy, v668, v669, v670, v671, 1172))
  {
    v684 = objc_msgSend_objectForProperty_(selfCopy, v679, v680, v681, v682, 1172);
    *(archive + 4) |= 0x100000u;
    v688 = *(archive + 24);
    if (!v688)
    {
      v689 = *(archive + 1);
      if (v689)
      {
        v689 = *(v689 & 0xFFFFFFFFFFFFFFFELL);
      }

      v688 = MEMORY[0x277C97A90](v689);
      *(archive + 24) = v688;
    }

    objc_msgSend_saveToArchive_archiver_(v684, v683, v685, v686, v687, v688, archiverCopy);
  }

  if (objc_msgSend_containsProperty_(selfCopy, v679, v680, v681, v682, 1172))
  {
    v695 = objc_msgSend_objectForProperty_(selfCopy, v690, v691, v692, v693, 1172);
    *(archive + 4) |= 0x100000u;
    v699 = *(archive + 24);
    if (!v699)
    {
      v700 = *(archive + 1);
      if (v700)
      {
        v700 = *(v700 & 0xFFFFFFFFFFFFFFFELL);
      }

      v699 = MEMORY[0x277C97A90](v700);
      *(archive + 24) = v699;
    }

    objc_msgSend_saveToArchive_archiver_(v695, v694, v696, v697, v698, v699, archiverCopy);
  }

  if (objc_msgSend_containsProperty_(selfCopy, v690, v691, v692, v693, 1172))
  {
    v706 = objc_msgSend_objectForProperty_(selfCopy, v701, v702, v703, v704, 1172);
    *(archive + 4) |= 0x100000u;
    v710 = *(archive + 24);
    if (!v710)
    {
      v711 = *(archive + 1);
      if (v711)
      {
        v711 = *(v711 & 0xFFFFFFFFFFFFFFFELL);
      }

      v710 = MEMORY[0x277C97A90](v711);
      *(archive + 24) = v710;
    }

    objc_msgSend_saveToArchive_archiver_(v706, v705, v707, v708, v709, v710, archiverCopy);
  }

  if (objc_msgSend_containsProperty_(selfCopy, v701, v702, v703, v704, 1172))
  {
    v717 = objc_msgSend_objectForProperty_(selfCopy, v712, v713, v714, v715, 1172);
    *(archive + 4) |= 0x100000u;
    v721 = *(archive + 24);
    if (!v721)
    {
      v722 = *(archive + 1);
      if (v722)
      {
        v722 = *(v722 & 0xFFFFFFFFFFFFFFFELL);
      }

      v721 = MEMORY[0x277C97A90](v722);
      *(archive + 24) = v721;
    }

    objc_msgSend_saveToArchive_archiver_(v717, v716, v718, v719, v720, v721, archiverCopy);
  }

  if (objc_msgSend_containsProperty_(selfCopy, v712, v713, v714, v715, 1172))
  {
    v728 = objc_msgSend_objectForProperty_(selfCopy, v723, v724, v725, v726, 1172);
    *(archive + 4) |= 0x100000u;
    v732 = *(archive + 24);
    if (!v732)
    {
      v733 = *(archive + 1);
      if (v733)
      {
        v733 = *(v733 & 0xFFFFFFFFFFFFFFFELL);
      }

      v732 = MEMORY[0x277C97A90](v733);
      *(archive + 24) = v732;
    }

    objc_msgSend_saveToArchive_archiver_(v728, v727, v729, v730, v731, v732, archiverCopy);
  }

  if (objc_msgSend_containsProperty_(selfCopy, v723, v724, v725, v726, 1172))
  {
    v739 = objc_msgSend_objectForProperty_(selfCopy, v734, v735, v736, v737, 1172);
    *(archive + 4) |= 0x100000u;
    v743 = *(archive + 24);
    if (!v743)
    {
      v744 = *(archive + 1);
      if (v744)
      {
        v744 = *(v744 & 0xFFFFFFFFFFFFFFFELL);
      }

      v743 = MEMORY[0x277C97A90](v744);
      *(archive + 24) = v743;
    }

    objc_msgSend_saveToArchive_archiver_(v739, v738, v740, v741, v742, v743, archiverCopy);
  }

  if (objc_msgSend_containsProperty_(selfCopy, v734, v735, v736, v737, 1172))
  {
    v750 = objc_msgSend_objectForProperty_(selfCopy, v745, v746, v747, v748, 1172);
    *(archive + 4) |= 0x100000u;
    v754 = *(archive + 24);
    if (!v754)
    {
      v755 = *(archive + 1);
      if (v755)
      {
        v755 = *(v755 & 0xFFFFFFFFFFFFFFFELL);
      }

      v754 = MEMORY[0x277C97A90](v755);
      *(archive + 24) = v754;
    }

    objc_msgSend_saveToArchive_archiver_(v750, v749, v751, v752, v753, v754, archiverCopy);
  }

  if (objc_msgSend_containsProperty_(selfCopy, v745, v746, v747, v748, 1172))
  {
    v761 = objc_msgSend_objectForProperty_(selfCopy, v756, v757, v758, v759, 1172);
    *(archive + 4) |= 0x100000u;
    v765 = *(archive + 24);
    if (!v765)
    {
      v766 = *(archive + 1);
      if (v766)
      {
        v766 = *(v766 & 0xFFFFFFFFFFFFFFFELL);
      }

      v765 = MEMORY[0x277C97A90](v766);
      *(archive + 24) = v765;
    }

    objc_msgSend_saveToArchive_archiver_(v761, v760, v762, v763, v764, v765, archiverCopy);
  }

  if (objc_msgSend_containsProperty_(selfCopy, v756, v757, v758, v759, 1172))
  {
    v772 = objc_msgSend_objectForProperty_(selfCopy, v767, v768, v769, v770, 1172);
    *(archive + 4) |= 0x100000u;
    v776 = *(archive + 24);
    if (!v776)
    {
      v777 = *(archive + 1);
      if (v777)
      {
        v777 = *(v777 & 0xFFFFFFFFFFFFFFFELL);
      }

      v776 = MEMORY[0x277C97A90](v777);
      *(archive + 24) = v776;
    }

    objc_msgSend_saveToArchive_archiver_(v772, v771, v773, v774, v775, v776, archiverCopy);
  }

  if (objc_msgSend_containsProperty_(selfCopy, v767, v768, v769, v770, 1172))
  {
    v783 = objc_msgSend_objectForProperty_(selfCopy, v778, v779, v780, v781, 1172);
    *(archive + 4) |= 0x100000u;
    v787 = *(archive + 24);
    if (!v787)
    {
      v788 = *(archive + 1);
      if (v788)
      {
        v788 = *(v788 & 0xFFFFFFFFFFFFFFFELL);
      }

      v787 = MEMORY[0x277C97A90](v788);
      *(archive + 24) = v787;
    }

    objc_msgSend_saveToArchive_archiver_(v783, v782, v784, v785, v786, v787, archiverCopy);
  }

  if (objc_msgSend_containsProperty_(selfCopy, v778, v779, v780, v781, 1173))
  {
    v793 = objc_msgSend_intValueForProperty_(selfCopy, v789, v790, v791, v792, 1173) != 0;
    *(archive + 5) |= 0x40000u;
    *(archive + 333) = v793;
  }

  if (objc_msgSend_containsProperty_(selfCopy, v789, v790, v791, v792, 1174))
  {
    v798 = objc_msgSend_intValueForProperty_(selfCopy, v794, v795, v796, v797, 1174) != 0;
    *(archive + 5) |= 0x80000u;
    *(archive + 334) = v798;
  }

  if (objc_msgSend_containsProperty_(selfCopy, v794, v795, v796, v797, 1175))
  {
    v803 = objc_msgSend_intValueForProperty_(selfCopy, v799, v800, v801, v802, 1175) != 0;
    *(archive + 5) |= 0x100000u;
    *(archive + 335) = v803;
  }

  if (objc_msgSend_containsProperty_(selfCopy, v799, v800, v801, v802, 1175))
  {
    v808 = objc_msgSend_intValueForProperty_(selfCopy, v804, v805, v806, v807, 1175) != 0;
    *(archive + 5) |= 0x100000u;
    *(archive + 335) = v808;
  }

  if (objc_msgSend_containsProperty_(selfCopy, v804, v805, v806, v807, 1176))
  {
    v813 = objc_msgSend_intValueForProperty_(selfCopy, v809, v810, v811, v812, 1176) != 0;
    *(archive + 5) |= 0x200000u;
    *(archive + 336) = v813;
  }

  if (objc_msgSend_containsProperty_(selfCopy, v809, v810, v811, v812, 1177))
  {
    v818 = objc_msgSend_intValueForProperty_(selfCopy, v814, v815, v816, v817, 1177) != 0;
    *(archive + 5) |= 0x400000u;
    *(archive + 337) = v818;
  }

  if (objc_msgSend_containsProperty_(selfCopy, v814, v815, v816, v817, 1178))
  {
    v823 = objc_msgSend_intValueForProperty_(selfCopy, v819, v820, v821, v822, 1178) != 0;
    *(archive + 5) |= 0x800000u;
    *(archive + 338) = v823;
  }

  if (objc_msgSend_containsProperty_(selfCopy, v819, v820, v821, v822, 1178))
  {
    v828 = objc_msgSend_intValueForProperty_(selfCopy, v824, v825, v826, v827, 1178) != 0;
    *(archive + 5) |= 0x800000u;
    *(archive + 338) = v828;
  }

  if (objc_msgSend_containsProperty_(selfCopy, v824, v825, v826, v827, 1178))
  {
    v833 = objc_msgSend_intValueForProperty_(selfCopy, v829, v830, v831, v832, 1178) != 0;
    *(archive + 5) |= 0x800000u;
    *(archive + 338) = v833;
  }

  if (objc_msgSend_containsProperty_(selfCopy, v829, v830, v831, v832, 1179))
  {
    v838 = objc_msgSend_intValueForProperty_(selfCopy, v834, v835, v836, v837, 1179) != 0;
    *(archive + 5) |= 0x1000000u;
    *(archive + 339) = v838;
  }

  if (objc_msgSend_containsProperty_(selfCopy, v834, v835, v836, v837, 1179))
  {
    v843 = objc_msgSend_intValueForProperty_(selfCopy, v839, v840, v841, v842, 1179) != 0;
    *(archive + 5) |= 0x1000000u;
    *(archive + 339) = v843;
  }

  if (objc_msgSend_containsProperty_(selfCopy, v839, v840, v841, v842, 1179))
  {
    v848 = objc_msgSend_intValueForProperty_(selfCopy, v844, v845, v846, v847, 1179) != 0;
    *(archive + 5) |= 0x1000000u;
    *(archive + 339) = v848;
  }

  if (objc_msgSend_containsProperty_(selfCopy, v844, v845, v846, v847, 1179))
  {
    v853 = objc_msgSend_intValueForProperty_(selfCopy, v849, v850, v851, v852, 1179) != 0;
    *(archive + 5) |= 0x1000000u;
    *(archive + 339) = v853;
  }

  if (objc_msgSend_containsProperty_(selfCopy, v849, v850, v851, v852, 1179))
  {
    v858 = objc_msgSend_intValueForProperty_(selfCopy, v854, v855, v856, v857, 1179) != 0;
    *(archive + 5) |= 0x1000000u;
    *(archive + 339) = v858;
  }

  if (objc_msgSend_containsProperty_(selfCopy, v854, v855, v856, v857, 1179))
  {
    v863 = objc_msgSend_intValueForProperty_(selfCopy, v859, v860, v861, v862, 1179) != 0;
    *(archive + 5) |= 0x1000000u;
    *(archive + 339) = v863;
  }

  if (objc_msgSend_containsProperty_(selfCopy, v859, v860, v861, v862, 1180))
  {
    v868 = objc_msgSend_intValueForProperty_(selfCopy, v864, v865, v866, v867, 1180) != 0;
    *(archive + 5) |= 0x4000000u;
    *(archive + 344) = v868;
  }

  if (objc_msgSend_containsProperty_(selfCopy, v864, v865, v866, v867, 1181))
  {
    v873 = objc_msgSend_intValueForProperty_(selfCopy, v869, v870, v871, v872, 1181) != 0;
    *(archive + 5) |= 0x8000000u;
    *(archive + 345) = v873;
  }

  if (objc_msgSend_containsProperty_(selfCopy, v869, v870, v871, v872, 1181))
  {
    v878 = objc_msgSend_intValueForProperty_(selfCopy, v874, v875, v876, v877, 1181) != 0;
    *(archive + 5) |= 0x8000000u;
    *(archive + 345) = v878;
  }

  if (objc_msgSend_containsProperty_(selfCopy, v874, v875, v876, v877, 1181))
  {
    v883 = objc_msgSend_intValueForProperty_(selfCopy, v879, v880, v881, v882, 1181) != 0;
    *(archive + 5) |= 0x8000000u;
    *(archive + 345) = v883;
  }

  if (objc_msgSend_containsProperty_(selfCopy, v879, v880, v881, v882, 1181))
  {
    v888 = objc_msgSend_intValueForProperty_(selfCopy, v884, v885, v886, v887, 1181) != 0;
    *(archive + 5) |= 0x8000000u;
    *(archive + 345) = v888;
  }

  if (objc_msgSend_containsProperty_(selfCopy, v884, v885, v886, v887, 1181))
  {
    v893 = objc_msgSend_intValueForProperty_(selfCopy, v889, v890, v891, v892, 1181) != 0;
    *(archive + 5) |= 0x8000000u;
    *(archive + 345) = v893;
  }

  if (objc_msgSend_containsProperty_(selfCopy, v889, v890, v891, v892, 1181))
  {
    v898 = objc_msgSend_intValueForProperty_(selfCopy, v894, v895, v896, v897, 1181) != 0;
    *(archive + 5) |= 0x8000000u;
    *(archive + 345) = v898;
  }

  if (objc_msgSend_containsProperty_(selfCopy, v894, v895, v896, v897, 1181))
  {
    v903 = objc_msgSend_intValueForProperty_(selfCopy, v899, v900, v901, v902, 1181) != 0;
    *(archive + 5) |= 0x8000000u;
    *(archive + 345) = v903;
  }

  if (objc_msgSend_containsProperty_(selfCopy, v899, v900, v901, v902, 1181))
  {
    v908 = objc_msgSend_intValueForProperty_(selfCopy, v904, v905, v906, v907, 1181) != 0;
    *(archive + 5) |= 0x8000000u;
    *(archive + 345) = v908;
  }

  if (objc_msgSend_containsProperty_(selfCopy, v904, v905, v906, v907, 1181))
  {
    v913 = objc_msgSend_intValueForProperty_(selfCopy, v909, v910, v911, v912, 1181) != 0;
    *(archive + 5) |= 0x8000000u;
    *(archive + 345) = v913;
  }

  if (objc_msgSend_containsProperty_(selfCopy, v909, v910, v911, v912, 1182))
  {
    v918 = objc_msgSend_intValueForProperty_(selfCopy, v914, v915, v916, v917, 1182);
    *(archive + 5) |= 0x2000000u;
    *(archive + 85) = v918;
  }

  if (objc_msgSend_containsProperty_(selfCopy, v914, v915, v916, v917, 1183))
  {
    v923 = objc_msgSend_intValueForProperty_(selfCopy, v919, v920, v921, v922, 1183) != 0;
    *(archive + 5) |= 0x10000000u;
    *(archive + 346) = v923;
  }

  if (objc_msgSend_containsProperty_(selfCopy, v919, v920, v921, v922, 1183))
  {
    v928 = objc_msgSend_intValueForProperty_(selfCopy, v924, v925, v926, v927, 1183) != 0;
    *(archive + 5) |= 0x10000000u;
    *(archive + 346) = v928;
  }

  if (objc_msgSend_containsProperty_(selfCopy, v924, v925, v926, v927, 1183))
  {
    v933 = objc_msgSend_intValueForProperty_(selfCopy, v929, v930, v931, v932, 1183) != 0;
    *(archive + 5) |= 0x10000000u;
    *(archive + 346) = v933;
  }

  if (objc_msgSend_containsProperty_(selfCopy, v929, v930, v931, v932, 1183))
  {
    v938 = objc_msgSend_intValueForProperty_(selfCopy, v934, v935, v936, v937, 1183) != 0;
    *(archive + 5) |= 0x10000000u;
    *(archive + 346) = v938;
  }

  if (objc_msgSend_containsProperty_(selfCopy, v934, v935, v936, v937, 1183))
  {
    v943 = objc_msgSend_intValueForProperty_(selfCopy, v939, v940, v941, v942, 1183) != 0;
    *(archive + 5) |= 0x10000000u;
    *(archive + 346) = v943;
  }

  if (objc_msgSend_containsProperty_(selfCopy, v939, v940, v941, v942, 1183))
  {
    v948 = objc_msgSend_intValueForProperty_(selfCopy, v944, v945, v946, v947, 1183) != 0;
    *(archive + 5) |= 0x10000000u;
    *(archive + 346) = v948;
  }

  if (objc_msgSend_containsProperty_(selfCopy, v944, v945, v946, v947, 1183))
  {
    v953 = objc_msgSend_intValueForProperty_(selfCopy, v949, v950, v951, v952, 1183) != 0;
    *(archive + 5) |= 0x10000000u;
    *(archive + 346) = v953;
  }

  if (objc_msgSend_containsProperty_(selfCopy, v949, v950, v951, v952, 1183))
  {
    v958 = objc_msgSend_intValueForProperty_(selfCopy, v954, v955, v956, v957, 1183) != 0;
    *(archive + 5) |= 0x10000000u;
    *(archive + 346) = v958;
  }

  if (objc_msgSend_containsProperty_(selfCopy, v954, v955, v956, v957, 1183))
  {
    v963 = objc_msgSend_intValueForProperty_(selfCopy, v959, v960, v961, v962, 1183) != 0;
    *(archive + 5) |= 0x10000000u;
    *(archive + 346) = v963;
  }

  if (objc_msgSend_containsProperty_(selfCopy, v959, v960, v961, v962, 1184))
  {
    v969 = objc_msgSend_objectForProperty_(selfCopy, v964, v965, v966, v967, 1184);
    *(archive + 4) |= 0x200000u;
    v973 = *(archive + 25);
    if (!v973)
    {
      v974 = *(archive + 1);
      if (v974)
      {
        v974 = *(v974 & 0xFFFFFFFFFFFFFFFELL);
      }

      v973 = MEMORY[0x277C97AA0](v974);
      *(archive + 25) = v973;
    }

    objc_msgSend_saveToArchive_archiver_(v969, v968, v970, v971, v972, v973, archiverCopy);
  }

  if (objc_msgSend_containsProperty_(selfCopy, v964, v965, v966, v967, 1184))
  {
    v980 = objc_msgSend_objectForProperty_(selfCopy, v975, v976, v977, v978, 1184);
    *(archive + 4) |= 0x200000u;
    v984 = *(archive + 25);
    if (!v984)
    {
      v985 = *(archive + 1);
      if (v985)
      {
        v985 = *(v985 & 0xFFFFFFFFFFFFFFFELL);
      }

      v984 = MEMORY[0x277C97AA0](v985);
      *(archive + 25) = v984;
    }

    objc_msgSend_saveToArchive_archiver_(v980, v979, v981, v982, v983, v984, archiverCopy);
  }

  if (objc_msgSend_containsProperty_(selfCopy, v975, v976, v977, v978, 1184))
  {
    v991 = objc_msgSend_objectForProperty_(selfCopy, v986, v987, v988, v989, 1184);
    *(archive + 4) |= 0x200000u;
    v995 = *(archive + 25);
    if (!v995)
    {
      v996 = *(archive + 1);
      if (v996)
      {
        v996 = *(v996 & 0xFFFFFFFFFFFFFFFELL);
      }

      v995 = MEMORY[0x277C97AA0](v996);
      *(archive + 25) = v995;
    }

    objc_msgSend_saveToArchive_archiver_(v991, v990, v992, v993, v994, v995, archiverCopy);
  }

  if (objc_msgSend_containsProperty_(selfCopy, v986, v987, v988, v989, 1184))
  {
    v1002 = objc_msgSend_objectForProperty_(selfCopy, v997, v998, v999, v1000, 1184);
    *(archive + 4) |= 0x200000u;
    v1006 = *(archive + 25);
    if (!v1006)
    {
      v1007 = *(archive + 1);
      if (v1007)
      {
        v1007 = *(v1007 & 0xFFFFFFFFFFFFFFFELL);
      }

      v1006 = MEMORY[0x277C97AA0](v1007);
      *(archive + 25) = v1006;
    }

    objc_msgSend_saveToArchive_archiver_(v1002, v1001, v1003, v1004, v1005, v1006, archiverCopy);
  }

  if (objc_msgSend_containsProperty_(selfCopy, v997, v998, v999, v1000, 1184))
  {
    v1013 = objc_msgSend_objectForProperty_(selfCopy, v1008, v1009, v1010, v1011, 1184);
    *(archive + 4) |= 0x200000u;
    v1017 = *(archive + 25);
    if (!v1017)
    {
      v1018 = *(archive + 1);
      if (v1018)
      {
        v1018 = *(v1018 & 0xFFFFFFFFFFFFFFFELL);
      }

      v1017 = MEMORY[0x277C97AA0](v1018);
      *(archive + 25) = v1017;
    }

    objc_msgSend_saveToArchive_archiver_(v1013, v1012, v1014, v1015, v1016, v1017, archiverCopy);
  }

  if (objc_msgSend_containsProperty_(selfCopy, v1008, v1009, v1010, v1011, 1184))
  {
    v1024 = objc_msgSend_objectForProperty_(selfCopy, v1019, v1020, v1021, v1022, 1184);
    *(archive + 4) |= 0x200000u;
    v1028 = *(archive + 25);
    if (!v1028)
    {
      v1029 = *(archive + 1);
      if (v1029)
      {
        v1029 = *(v1029 & 0xFFFFFFFFFFFFFFFELL);
      }

      v1028 = MEMORY[0x277C97AA0](v1029);
      *(archive + 25) = v1028;
    }

    objc_msgSend_saveToArchive_archiver_(v1024, v1023, v1025, v1026, v1027, v1028, archiverCopy);
  }

  if (objc_msgSend_containsProperty_(selfCopy, v1019, v1020, v1021, v1022, 1184))
  {
    v1035 = objc_msgSend_objectForProperty_(selfCopy, v1030, v1031, v1032, v1033, 1184);
    *(archive + 4) |= 0x200000u;
    v1039 = *(archive + 25);
    if (!v1039)
    {
      v1040 = *(archive + 1);
      if (v1040)
      {
        v1040 = *(v1040 & 0xFFFFFFFFFFFFFFFELL);
      }

      v1039 = MEMORY[0x277C97AA0](v1040);
      *(archive + 25) = v1039;
    }

    objc_msgSend_saveToArchive_archiver_(v1035, v1034, v1036, v1037, v1038, v1039, archiverCopy);
  }

  if (objc_msgSend_containsProperty_(selfCopy, v1030, v1031, v1032, v1033, 1184))
  {
    v1046 = objc_msgSend_objectForProperty_(selfCopy, v1041, v1042, v1043, v1044, 1184);
    *(archive + 4) |= 0x200000u;
    v1050 = *(archive + 25);
    if (!v1050)
    {
      v1051 = *(archive + 1);
      if (v1051)
      {
        v1051 = *(v1051 & 0xFFFFFFFFFFFFFFFELL);
      }

      v1050 = MEMORY[0x277C97AA0](v1051);
      *(archive + 25) = v1050;
    }

    objc_msgSend_saveToArchive_archiver_(v1046, v1045, v1047, v1048, v1049, v1050, archiverCopy);
  }

  if (objc_msgSend_containsProperty_(selfCopy, v1041, v1042, v1043, v1044, 1184))
  {
    v1057 = objc_msgSend_objectForProperty_(selfCopy, v1052, v1053, v1054, v1055, 1184);
    *(archive + 4) |= 0x200000u;
    v1061 = *(archive + 25);
    if (!v1061)
    {
      v1062 = *(archive + 1);
      if (v1062)
      {
        v1062 = *(v1062 & 0xFFFFFFFFFFFFFFFELL);
      }

      v1061 = MEMORY[0x277C97AA0](v1062);
      *(archive + 25) = v1061;
    }

    objc_msgSend_saveToArchive_archiver_(v1057, v1056, v1058, v1059, v1060, v1061, archiverCopy);
  }

  if (objc_msgSend_containsProperty_(selfCopy, v1052, v1053, v1054, v1055, 1184))
  {
    v1068 = objc_msgSend_objectForProperty_(selfCopy, v1063, v1064, v1065, v1066, 1184);
    *(archive + 4) |= 0x200000u;
    v1072 = *(archive + 25);
    if (!v1072)
    {
      v1073 = *(archive + 1);
      if (v1073)
      {
        v1073 = *(v1073 & 0xFFFFFFFFFFFFFFFELL);
      }

      v1072 = MEMORY[0x277C97AA0](v1073);
      *(archive + 25) = v1072;
    }

    objc_msgSend_saveToArchive_archiver_(v1068, v1067, v1069, v1070, v1071, v1072, archiverCopy);
  }

  if (objc_msgSend_containsProperty_(selfCopy, v1063, v1064, v1065, v1066, 1185))
  {
    v1079 = objc_msgSend_objectForProperty_(selfCopy, v1074, v1075, v1076, v1077, 1185);
    *(archive + 4) |= 0x400000u;
    v1083 = *(archive + 26);
    if (!v1083)
    {
      v1084 = *(archive + 1);
      if (v1084)
      {
        v1084 = *(v1084 & 0xFFFFFFFFFFFFFFFELL);
      }

      v1083 = MEMORY[0x277C97A80](v1084);
      *(archive + 26) = v1083;
    }

    objc_msgSend_saveToArchive_archiver_(v1079, v1078, v1080, v1081, v1082, v1083, archiverCopy);
  }

  if (objc_msgSend_containsProperty_(selfCopy, v1074, v1075, v1076, v1077, 1185))
  {
    v1090 = objc_msgSend_objectForProperty_(selfCopy, v1085, v1086, v1087, v1088, 1185);
    *(archive + 4) |= 0x400000u;
    v1094 = *(archive + 26);
    if (!v1094)
    {
      v1095 = *(archive + 1);
      if (v1095)
      {
        v1095 = *(v1095 & 0xFFFFFFFFFFFFFFFELL);
      }

      v1094 = MEMORY[0x277C97A80](v1095);
      *(archive + 26) = v1094;
    }

    objc_msgSend_saveToArchive_archiver_(v1090, v1089, v1091, v1092, v1093, v1094, archiverCopy);
  }

  if (objc_msgSend_containsProperty_(selfCopy, v1085, v1086, v1087, v1088, 1185))
  {
    v1101 = objc_msgSend_objectForProperty_(selfCopy, v1096, v1097, v1098, v1099, 1185);
    *(archive + 4) |= 0x400000u;
    v1105 = *(archive + 26);
    if (!v1105)
    {
      v1106 = *(archive + 1);
      if (v1106)
      {
        v1106 = *(v1106 & 0xFFFFFFFFFFFFFFFELL);
      }

      v1105 = MEMORY[0x277C97A80](v1106);
      *(archive + 26) = v1105;
    }

    objc_msgSend_saveToArchive_archiver_(v1101, v1100, v1102, v1103, v1104, v1105, archiverCopy);
  }

  if (objc_msgSend_containsProperty_(selfCopy, v1096, v1097, v1098, v1099, 1185))
  {
    v1112 = objc_msgSend_objectForProperty_(selfCopy, v1107, v1108, v1109, v1110, 1185);
    *(archive + 4) |= 0x400000u;
    v1116 = *(archive + 26);
    if (!v1116)
    {
      v1117 = *(archive + 1);
      if (v1117)
      {
        v1117 = *(v1117 & 0xFFFFFFFFFFFFFFFELL);
      }

      v1116 = MEMORY[0x277C97A80](v1117);
      *(archive + 26) = v1116;
    }

    objc_msgSend_saveToArchive_archiver_(v1112, v1111, v1113, v1114, v1115, v1116, archiverCopy);
  }

  if (objc_msgSend_containsProperty_(selfCopy, v1107, v1108, v1109, v1110, 1185))
  {
    v1123 = objc_msgSend_objectForProperty_(selfCopy, v1118, v1119, v1120, v1121, 1185);
    *(archive + 4) |= 0x400000u;
    v1127 = *(archive + 26);
    if (!v1127)
    {
      v1128 = *(archive + 1);
      if (v1128)
      {
        v1128 = *(v1128 & 0xFFFFFFFFFFFFFFFELL);
      }

      v1127 = MEMORY[0x277C97A80](v1128);
      *(archive + 26) = v1127;
    }

    objc_msgSend_saveToArchive_archiver_(v1123, v1122, v1124, v1125, v1126, v1127, archiverCopy);
  }

  if (objc_msgSend_containsProperty_(selfCopy, v1118, v1119, v1120, v1121, 1185))
  {
    v1134 = objc_msgSend_objectForProperty_(selfCopy, v1129, v1130, v1131, v1132, 1185);
    *(archive + 4) |= 0x400000u;
    v1138 = *(archive + 26);
    if (!v1138)
    {
      v1139 = *(archive + 1);
      if (v1139)
      {
        v1139 = *(v1139 & 0xFFFFFFFFFFFFFFFELL);
      }

      v1138 = MEMORY[0x277C97A80](v1139);
      *(archive + 26) = v1138;
    }

    objc_msgSend_saveToArchive_archiver_(v1134, v1133, v1135, v1136, v1137, v1138, archiverCopy);
  }

  if (objc_msgSend_containsProperty_(selfCopy, v1129, v1130, v1131, v1132, 1185))
  {
    v1145 = objc_msgSend_objectForProperty_(selfCopy, v1140, v1141, v1142, v1143, 1185);
    *(archive + 4) |= 0x400000u;
    v1149 = *(archive + 26);
    if (!v1149)
    {
      v1150 = *(archive + 1);
      if (v1150)
      {
        v1150 = *(v1150 & 0xFFFFFFFFFFFFFFFELL);
      }

      v1149 = MEMORY[0x277C97A80](v1150);
      *(archive + 26) = v1149;
    }

    objc_msgSend_saveToArchive_archiver_(v1145, v1144, v1146, v1147, v1148, v1149, archiverCopy);
  }

  if (objc_msgSend_containsProperty_(selfCopy, v1140, v1141, v1142, v1143, 1186))
  {
    v1155 = objc_msgSend_intValueForProperty_(selfCopy, v1151, v1152, v1153, v1154, 1186) != 0;
    *(archive + 5) |= 0x20000000u;
    *(archive + 347) = v1155;
  }

  if (objc_msgSend_containsProperty_(selfCopy, v1151, v1152, v1153, v1154, 1186))
  {
    v1160 = objc_msgSend_intValueForProperty_(selfCopy, v1156, v1157, v1158, v1159, 1186) != 0;
    *(archive + 5) |= 0x20000000u;
    *(archive + 347) = v1160;
  }

  if (objc_msgSend_containsProperty_(selfCopy, v1156, v1157, v1158, v1159, 1186))
  {
    v1165 = objc_msgSend_intValueForProperty_(selfCopy, v1161, v1162, v1163, v1164, 1186) != 0;
    *(archive + 5) |= 0x20000000u;
    *(archive + 347) = v1165;
  }

  if (objc_msgSend_containsProperty_(selfCopy, v1161, v1162, v1163, v1164, 1186))
  {
    v1170 = objc_msgSend_intValueForProperty_(selfCopy, v1166, v1167, v1168, v1169, 1186) != 0;
    *(archive + 5) |= 0x20000000u;
    *(archive + 347) = v1170;
  }

  if (objc_msgSend_containsProperty_(selfCopy, v1166, v1167, v1168, v1169, 1186))
  {
    v1175 = objc_msgSend_intValueForProperty_(selfCopy, v1171, v1172, v1173, v1174, 1186) != 0;
    *(archive + 5) |= 0x20000000u;
    *(archive + 347) = v1175;
  }

  if (objc_msgSend_containsProperty_(selfCopy, v1171, v1172, v1173, v1174, 1187))
  {
    v1180 = objc_msgSend_intValueForProperty_(selfCopy, v1176, v1177, v1178, v1179, 1187) != 0;
    *(archive + 6) |= 0x20u;
    *(archive + 376) = v1180;
  }

  if (objc_msgSend_containsProperty_(selfCopy, v1176, v1177, v1178, v1179, 1187))
  {
    v1185 = objc_msgSend_intValueForProperty_(selfCopy, v1181, v1182, v1183, v1184, 1187) != 0;
    *(archive + 6) |= 0x20u;
    *(archive + 376) = v1185;
  }

  if (objc_msgSend_containsProperty_(selfCopy, v1181, v1182, v1183, v1184, 1187))
  {
    v1190 = objc_msgSend_intValueForProperty_(selfCopy, v1186, v1187, v1188, v1189, 1187) != 0;
    *(archive + 6) |= 0x20u;
    *(archive + 376) = v1190;
  }

  if (objc_msgSend_containsProperty_(selfCopy, v1186, v1187, v1188, v1189, 1187))
  {
    v1195 = objc_msgSend_intValueForProperty_(selfCopy, v1191, v1192, v1193, v1194, 1187) != 0;
    *(archive + 6) |= 0x20u;
    *(archive + 376) = v1195;
  }

  if (objc_msgSend_containsProperty_(selfCopy, v1191, v1192, v1193, v1194, 1187))
  {
    v1200 = objc_msgSend_intValueForProperty_(selfCopy, v1196, v1197, v1198, v1199, 1187) != 0;
    *(archive + 6) |= 0x20u;
    *(archive + 376) = v1200;
  }

  if (objc_msgSend_containsProperty_(selfCopy, v1196, v1197, v1198, v1199, 1187))
  {
    v1205 = objc_msgSend_intValueForProperty_(selfCopy, v1201, v1202, v1203, v1204, 1187) != 0;
    *(archive + 6) |= 0x20u;
    *(archive + 376) = v1205;
  }

  if (objc_msgSend_containsProperty_(selfCopy, v1201, v1202, v1203, v1204, 1187))
  {
    v1210 = objc_msgSend_intValueForProperty_(selfCopy, v1206, v1207, v1208, v1209, 1187) != 0;
    *(archive + 6) |= 0x20u;
    *(archive + 376) = v1210;
  }

  if (objc_msgSend_containsProperty_(selfCopy, v1206, v1207, v1208, v1209, 1188))
  {
    objc_msgSend_floatValueForProperty_(selfCopy, v1211, v1212, v1213, v1214, 1188);
    *(archive + 5) |= 0x40000000u;
    *(archive + 87) = LODWORD(v1212);
  }

  if (objc_msgSend_containsProperty_(selfCopy, v1211, v1212, v1213, v1214, 1188))
  {
    objc_msgSend_floatValueForProperty_(selfCopy, v1215, v1216, v1217, v1218, 1188);
    *(archive + 5) |= 0x40000000u;
    *(archive + 87) = LODWORD(v1216);
  }

  if (objc_msgSend_containsProperty_(selfCopy, v1215, v1216, v1217, v1218, 1188))
  {
    objc_msgSend_floatValueForProperty_(selfCopy, v1219, v1220, v1221, v1222, 1188);
    *(archive + 5) |= 0x40000000u;
    *(archive + 87) = LODWORD(v1220);
  }

  if (objc_msgSend_containsProperty_(selfCopy, v1219, v1220, v1221, v1222, 1188))
  {
    objc_msgSend_floatValueForProperty_(selfCopy, v1223, v1224, v1225, v1226, 1188);
    *(archive + 5) |= 0x40000000u;
    *(archive + 87) = LODWORD(v1224);
  }

  if (objc_msgSend_containsProperty_(selfCopy, v1223, v1224, v1225, v1226, 1188))
  {
    objc_msgSend_floatValueForProperty_(selfCopy, v1227, v1228, v1229, v1230, 1188);
    *(archive + 5) |= 0x40000000u;
    *(archive + 87) = LODWORD(v1228);
  }

  if (objc_msgSend_containsProperty_(selfCopy, v1227, v1228, v1229, v1230, 1188))
  {
    objc_msgSend_floatValueForProperty_(selfCopy, v1231, v1232, v1233, v1234, 1188);
    *(archive + 5) |= 0x40000000u;
    *(archive + 87) = LODWORD(v1232);
  }

  if (objc_msgSend_containsProperty_(selfCopy, v1231, v1232, v1233, v1234, 1189))
  {
    v1240 = objc_msgSend_objectForProperty_(selfCopy, v1235, v1236, v1237, v1238, 1189);
    *(archive + 4) |= 0x800000u;
    v1244 = *(archive + 27);
    if (!v1244)
    {
      v1245 = *(archive + 1);
      if (v1245)
      {
        v1245 = *(v1245 & 0xFFFFFFFFFFFFFFFELL);
      }

      v1244 = MEMORY[0x277C97AA0](v1245);
      *(archive + 27) = v1244;
    }

    objc_msgSend_saveToArchive_archiver_(v1240, v1239, v1241, v1242, v1243, v1244, archiverCopy);
  }

  if (objc_msgSend_containsProperty_(selfCopy, v1235, v1236, v1237, v1238, 1189))
  {
    v1251 = objc_msgSend_objectForProperty_(selfCopy, v1246, v1247, v1248, v1249, 1189);
    *(archive + 4) |= 0x800000u;
    v1255 = *(archive + 27);
    if (!v1255)
    {
      v1256 = *(archive + 1);
      if (v1256)
      {
        v1256 = *(v1256 & 0xFFFFFFFFFFFFFFFELL);
      }

      v1255 = MEMORY[0x277C97AA0](v1256);
      *(archive + 27) = v1255;
    }

    objc_msgSend_saveToArchive_archiver_(v1251, v1250, v1252, v1253, v1254, v1255, archiverCopy);
  }

  if (objc_msgSend_containsProperty_(selfCopy, v1246, v1247, v1248, v1249, 1189))
  {
    v1262 = objc_msgSend_objectForProperty_(selfCopy, v1257, v1258, v1259, v1260, 1189);
    *(archive + 4) |= 0x800000u;
    v1266 = *(archive + 27);
    if (!v1266)
    {
      v1267 = *(archive + 1);
      if (v1267)
      {
        v1267 = *(v1267 & 0xFFFFFFFFFFFFFFFELL);
      }

      v1266 = MEMORY[0x277C97AA0](v1267);
      *(archive + 27) = v1266;
    }

    objc_msgSend_saveToArchive_archiver_(v1262, v1261, v1263, v1264, v1265, v1266, archiverCopy);
  }

  if (objc_msgSend_containsProperty_(selfCopy, v1257, v1258, v1259, v1260, 1189))
  {
    v1273 = objc_msgSend_objectForProperty_(selfCopy, v1268, v1269, v1270, v1271, 1189);
    *(archive + 4) |= 0x800000u;
    v1277 = *(archive + 27);
    if (!v1277)
    {
      v1278 = *(archive + 1);
      if (v1278)
      {
        v1278 = *(v1278 & 0xFFFFFFFFFFFFFFFELL);
      }

      v1277 = MEMORY[0x277C97AA0](v1278);
      *(archive + 27) = v1277;
    }

    objc_msgSend_saveToArchive_archiver_(v1273, v1272, v1274, v1275, v1276, v1277, archiverCopy);
  }

  if (objc_msgSend_containsProperty_(selfCopy, v1268, v1269, v1270, v1271, 1189))
  {
    v1284 = objc_msgSend_objectForProperty_(selfCopy, v1279, v1280, v1281, v1282, 1189);
    *(archive + 4) |= 0x800000u;
    v1288 = *(archive + 27);
    if (!v1288)
    {
      v1289 = *(archive + 1);
      if (v1289)
      {
        v1289 = *(v1289 & 0xFFFFFFFFFFFFFFFELL);
      }

      v1288 = MEMORY[0x277C97AA0](v1289);
      *(archive + 27) = v1288;
    }

    objc_msgSend_saveToArchive_archiver_(v1284, v1283, v1285, v1286, v1287, v1288, archiverCopy);
  }

  if (objc_msgSend_containsProperty_(selfCopy, v1279, v1280, v1281, v1282, 1189))
  {
    v1295 = objc_msgSend_objectForProperty_(selfCopy, v1290, v1291, v1292, v1293, 1189);
    *(archive + 4) |= 0x800000u;
    v1299 = *(archive + 27);
    if (!v1299)
    {
      v1300 = *(archive + 1);
      if (v1300)
      {
        v1300 = *(v1300 & 0xFFFFFFFFFFFFFFFELL);
      }

      v1299 = MEMORY[0x277C97AA0](v1300);
      *(archive + 27) = v1299;
    }

    objc_msgSend_saveToArchive_archiver_(v1295, v1294, v1296, v1297, v1298, v1299, archiverCopy);
  }

  if (objc_msgSend_containsProperty_(selfCopy, v1290, v1291, v1292, v1293, 1189))
  {
    v1306 = objc_msgSend_objectForProperty_(selfCopy, v1301, v1302, v1303, v1304, 1189);
    *(archive + 4) |= 0x800000u;
    v1310 = *(archive + 27);
    if (!v1310)
    {
      v1311 = *(archive + 1);
      if (v1311)
      {
        v1311 = *(v1311 & 0xFFFFFFFFFFFFFFFELL);
      }

      v1310 = MEMORY[0x277C97AA0](v1311);
      *(archive + 27) = v1310;
    }

    objc_msgSend_saveToArchive_archiver_(v1306, v1305, v1307, v1308, v1309, v1310, archiverCopy);
  }

  if (objc_msgSend_containsProperty_(selfCopy, v1301, v1302, v1303, v1304, 1190))
  {
    v1316 = objc_msgSend_intValueForProperty_(selfCopy, v1312, v1313, v1314, v1315, 1190);
    *(archive + 5) |= 0x80000000;
    *(archive + 88) = v1316;
  }

  if (objc_msgSend_containsProperty_(selfCopy, v1312, v1313, v1314, v1315, 1190))
  {
    v1321 = objc_msgSend_intValueForProperty_(selfCopy, v1317, v1318, v1319, v1320, 1190);
    *(archive + 5) |= 0x80000000;
    *(archive + 88) = v1321;
  }

  if (objc_msgSend_containsProperty_(selfCopy, v1317, v1318, v1319, v1320, 1190))
  {
    v1326 = objc_msgSend_intValueForProperty_(selfCopy, v1322, v1323, v1324, v1325, 1190);
    *(archive + 5) |= 0x80000000;
    *(archive + 88) = v1326;
  }

  if (objc_msgSend_containsProperty_(selfCopy, v1322, v1323, v1324, v1325, 1190))
  {
    v1331 = objc_msgSend_intValueForProperty_(selfCopy, v1327, v1328, v1329, v1330, 1190);
    *(archive + 5) |= 0x80000000;
    *(archive + 88) = v1331;
  }

  if (objc_msgSend_containsProperty_(selfCopy, v1327, v1328, v1329, v1330, 1190))
  {
    v1336 = objc_msgSend_intValueForProperty_(selfCopy, v1332, v1333, v1334, v1335, 1190);
    *(archive + 5) |= 0x80000000;
    *(archive + 88) = v1336;
  }

  if (objc_msgSend_containsProperty_(selfCopy, v1332, v1333, v1334, v1335, 1190))
  {
    v1341 = objc_msgSend_intValueForProperty_(selfCopy, v1337, v1338, v1339, v1340, 1190);
    *(archive + 5) |= 0x80000000;
    *(archive + 88) = v1341;
  }

  if (objc_msgSend_containsProperty_(selfCopy, v1337, v1338, v1339, v1340, 1191))
  {
    objc_msgSend_floatValueForProperty_(selfCopy, v1342, v1343, v1344, v1345, 1191);
    *(archive + 6) |= 1u;
    *(archive + 89) = LODWORD(v1343);
  }

  if (objc_msgSend_containsProperty_(selfCopy, v1342, v1343, v1344, v1345, 1192))
  {
    objc_msgSend_floatValueForProperty_(selfCopy, v1346, v1347, v1348, v1349, 1192);
    *(archive + 6) |= 2u;
    *(archive + 90) = LODWORD(v1347);
  }

  if (objc_msgSend_containsProperty_(selfCopy, v1346, v1347, v1348, v1349, 1193))
  {
    v1354 = objc_msgSend_objectForProperty_(selfCopy, v1350, v1351, v1352, v1353, 1193);
    *(archive + 4) |= 1u;
    v1355 = google::protobuf::internal::ArenaStringPtr::Mutable();
    objc_msgSend_tsch_saveToProtobufString_(v1354, v1356, v1357, v1358, v1359, v1355);
  }

  if (objc_msgSend_containsProperty_(selfCopy, v1350, v1351, v1352, v1353, 1194))
  {
    v1364 = objc_msgSend_intValueForProperty_(selfCopy, v1360, v1361, v1362, v1363, 1194);
    *(archive + 6) |= 4u;
    *(archive + 91) = v1364;
  }

  if (objc_msgSend_containsProperty_(selfCopy, v1360, v1361, v1362, v1363, 1195))
  {
    v1369 = objc_msgSend_intValueForProperty_(selfCopy, v1365, v1366, v1367, v1368, 1195);
    *(archive + 6) |= 8u;
    *(archive + 92) = v1369;
  }

  if (objc_msgSend_containsProperty_(selfCopy, v1365, v1366, v1367, v1368, 1196))
  {
    objc_msgSend_floatValueForProperty_(selfCopy, v1370, v1371, v1372, v1373, 1196);
    *(archive + 6) |= 0x10u;
    *(archive + 93) = LODWORD(v1371);
  }

  if (objc_msgSend_containsProperty_(selfCopy, v1370, v1371, v1372, v1373, 1197))
  {
    objc_msgSend_floatValueForProperty_(selfCopy, v1374, v1375, v1376, v1377, 1197);
    *(archive + 6) |= 0x200u;
    *(archive + 95) = LODWORD(v1375);
  }

  if (objc_msgSend_containsProperty_(selfCopy, v1374, v1375, v1376, v1377, 1198))
  {
    v1383 = objc_msgSend_objectForProperty_(selfCopy, v1378, v1379, v1380, v1381, 1198);
    *(archive + 4) |= 0x1000000u;
    v1387 = *(archive + 28);
    if (!v1387)
    {
      v1388 = *(archive + 1);
      if (v1388)
      {
        v1388 = *(v1388 & 0xFFFFFFFFFFFFFFFELL);
      }

      v1387 = MEMORY[0x277C97A90](v1388);
      *(archive + 28) = v1387;
    }

    objc_msgSend_saveToArchive_archiver_(v1383, v1382, v1384, v1385, v1386, v1387, archiverCopy);
  }

  if (objc_msgSend_containsProperty_(selfCopy, v1378, v1379, v1380, v1381, 1199))
  {
    v1393 = objc_msgSend_intValueForProperty_(selfCopy, v1389, v1390, v1391, v1392, 1199) != 0;
    *(archive + 6) |= 0x40u;
    *(archive + 377) = v1393;
  }

  if (objc_msgSend_containsProperty_(selfCopy, v1389, v1390, v1391, v1392, 1200))
  {
    v1398 = objc_msgSend_intValueForProperty_(selfCopy, v1394, v1395, v1396, v1397, 1200) != 0;
    *(archive + 6) |= 0x80u;
    *(archive + 378) = v1398;
  }

  if (objc_msgSend_containsProperty_(selfCopy, v1394, v1395, v1396, v1397, 1201))
  {
    v1403 = objc_msgSend_intValueForProperty_(selfCopy, v1399, v1400, v1401, v1402, 1201) != 0;
    *(archive + 6) |= 0x100u;
    *(archive + 379) = v1403;
  }

  if (objc_msgSend_containsProperty_(selfCopy, v1399, v1400, v1401, v1402, 1202))
  {
    v1409 = objc_msgSend_objectForProperty_(selfCopy, v1404, v1405, v1406, v1407, 1202);
    *(archive + 4) |= 0x2000000u;
    v1413 = *(archive + 29);
    if (!v1413)
    {
      v1414 = *(archive + 1);
      if (v1414)
      {
        v1414 = *(v1414 & 0xFFFFFFFFFFFFFFFELL);
      }

      v1413 = MEMORY[0x277C97AA0](v1414);
      *(archive + 29) = v1413;
    }

    objc_msgSend_saveToArchive_archiver_(v1409, v1408, v1410, v1411, v1412, v1413, archiverCopy);
  }

  if (objc_msgSend_containsProperty_(selfCopy, v1404, v1405, v1406, v1407, 1203))
  {
    v1419 = objc_msgSend_intValueForProperty_(selfCopy, v1415, v1416, v1417, v1418, 1203);
    *(archive + 6) |= 0x400u;
    *(archive + 96) = v1419;
  }

  if (objc_msgSend_containsProperty_(selfCopy, v1415, v1416, v1417, v1418, 1204))
  {
    objc_msgSend_floatValueForProperty_(selfCopy, v1420, v1421, v1422, v1423, 1204);
    *(archive + 6) |= 0x800u;
    *(archive + 97) = LODWORD(v1421);
  }

  if (objc_msgSend_containsProperty_(selfCopy, v1420, v1421, v1422, v1423, 1205))
  {
    v1428 = objc_msgSend_intValueForProperty_(selfCopy, v1424, v1425, v1426, v1427, 1205);
    *(archive + 6) |= 0x1000u;
    *(archive + 98) = v1428;
  }

  if (objc_msgSend_containsProperty_(selfCopy, v1424, v1425, v1426, v1427, 1206))
  {
    objc_msgSend_floatValueForProperty_(selfCopy, v1429, v1430, v1431, v1432, 1206);
    *(archive + 6) |= 0x2000u;
    *(archive + 99) = LODWORD(v1430);
  }

  if (objc_msgSend_containsProperty_(selfCopy, v1429, v1430, v1431, v1432, 1207))
  {
    v1437 = objc_msgSend_intValueForProperty_(selfCopy, v1433, v1434, v1435, v1436, 1207);
    *(archive + 6) |= 0x4000u;
    *(archive + 100) = v1437;
  }

  if (objc_msgSend_containsProperty_(selfCopy, v1433, v1434, v1435, v1436, 1208))
  {
    v1442 = objc_msgSend_intValueForProperty_(selfCopy, v1438, v1439, v1440, v1441, 1208);
    *(archive + 6) |= 0x8000u;
    *(archive + 101) = v1442;
  }

  if (objc_msgSend_containsProperty_(selfCopy, v1438, v1439, v1440, v1441, 1208))
  {
    v1447 = objc_msgSend_intValueForProperty_(selfCopy, v1443, v1444, v1445, v1446, 1208);
    *(archive + 6) |= 0x8000u;
    *(archive + 101) = v1447;
  }

  if (objc_msgSend_containsProperty_(selfCopy, v1443, v1444, v1445, v1446, 1208))
  {
    v1452 = objc_msgSend_intValueForProperty_(selfCopy, v1448, v1449, v1450, v1451, 1208);
    *(archive + 6) |= 0x8000u;
    *(archive + 101) = v1452;
  }

  if (objc_msgSend_containsProperty_(selfCopy, v1448, v1449, v1450, v1451, 1208))
  {
    v1457 = objc_msgSend_intValueForProperty_(selfCopy, v1453, v1454, v1455, v1456, 1208);
    *(archive + 6) |= 0x8000u;
    *(archive + 101) = v1457;
  }

  if (objc_msgSend_containsProperty_(selfCopy, v1453, v1454, v1455, v1456, 1208))
  {
    v1462 = objc_msgSend_intValueForProperty_(selfCopy, v1458, v1459, v1460, v1461, 1208);
    *(archive + 6) |= 0x8000u;
    *(archive + 101) = v1462;
  }

  if (objc_msgSend_containsProperty_(selfCopy, v1458, v1459, v1460, v1461, 1208))
  {
    v1467 = objc_msgSend_intValueForProperty_(selfCopy, v1463, v1464, v1465, v1466, 1208);
    *(archive + 6) |= 0x8000u;
    *(archive + 101) = v1467;
  }

  if (objc_msgSend_containsProperty_(selfCopy, v1463, v1464, v1465, v1466, 1208))
  {
    v1472 = objc_msgSend_intValueForProperty_(selfCopy, v1468, v1469, v1470, v1471, 1208);
    *(archive + 6) |= 0x8000u;
    *(archive + 101) = v1472;
  }

  if (objc_msgSend_containsProperty_(selfCopy, v1468, v1469, v1470, v1471, 1208))
  {
    v1477 = objc_msgSend_intValueForProperty_(selfCopy, v1473, v1474, v1475, v1476, 1208);
    *(archive + 6) |= 0x8000u;
    *(archive + 101) = v1477;
  }

  if (objc_msgSend_containsProperty_(selfCopy, v1473, v1474, v1475, v1476, 1208))
  {
    v1482 = objc_msgSend_intValueForProperty_(selfCopy, v1478, v1479, v1480, v1481, 1208);
    *(archive + 6) |= 0x8000u;
    *(archive + 101) = v1482;
  }

  if (objc_msgSend_containsProperty_(selfCopy, v1478, v1479, v1480, v1481, 1208))
  {
    v1487 = objc_msgSend_intValueForProperty_(selfCopy, v1483, v1484, v1485, v1486, 1208);
    *(archive + 6) |= 0x8000u;
    *(archive + 101) = v1487;
  }

  if (objc_msgSend_containsProperty_(selfCopy, v1483, v1484, v1485, v1486, 1208))
  {
    v1492 = objc_msgSend_intValueForProperty_(selfCopy, v1488, v1489, v1490, v1491, 1208);
    *(archive + 6) |= 0x8000u;
    *(archive + 101) = v1492;
  }

  if (objc_msgSend_containsProperty_(selfCopy, v1488, v1489, v1490, v1491, 1208))
  {
    v1497 = objc_msgSend_intValueForProperty_(selfCopy, v1493, v1494, v1495, v1496, 1208);
    *(archive + 6) |= 0x8000u;
    *(archive + 101) = v1497;
  }

  if (objc_msgSend_containsProperty_(selfCopy, v1493, v1494, v1495, v1496, 1209))
  {
    v1502 = objc_msgSend_intValueForProperty_(selfCopy, v1498, v1499, v1500, v1501, 1209);
    *(archive + 6) |= 0x10000u;
    *(archive + 102) = v1502;
  }

  if (objc_msgSend_containsProperty_(selfCopy, v1498, v1499, v1500, v1501, 1210))
  {
    v1507 = objc_msgSend_intValueForProperty_(selfCopy, v1503, v1504, v1505, v1506, 1210);
    *(archive + 6) |= 0x20000u;
    *(archive + 103) = v1507;
  }

  if (objc_msgSend_containsProperty_(selfCopy, v1503, v1504, v1505, v1506, 1210))
  {
    v1512 = objc_msgSend_intValueForProperty_(selfCopy, v1508, v1509, v1510, v1511, 1210);
    *(archive + 6) |= 0x20000u;
    *(archive + 103) = v1512;
  }

  if (objc_msgSend_containsProperty_(selfCopy, v1508, v1509, v1510, v1511, 1211))
  {
    objc_msgSend_floatValueForProperty_(selfCopy, v1513, v1514, v1515, v1516, 1211);
    *(archive + 6) |= 0x40000u;
    *(archive + 104) = LODWORD(v1514);
  }

  if (objc_msgSend_containsProperty_(selfCopy, v1513, v1514, v1515, v1516, 1212))
  {
    v1521 = objc_msgSend_intValueForProperty_(selfCopy, v1517, v1518, v1519, v1520, 1212);
    *(archive + 6) |= 0x80000u;
    *(archive + 105) = v1521;
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