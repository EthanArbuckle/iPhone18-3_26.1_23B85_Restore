@interface TSCHChartSeriesNonStyle
+ (float)defaultFloatValueForProperty:(int)property;
+ (id)defaultStyleWithContext:(id)context;
+ (id)defaultValueForProperty:(int)property;
+ (id)imageFillProperties;
+ (id)properties;
+ (int)defaultIntValueForProperty:(int)property;
+ (int)muxDefaultPropertyForSpecificProperty:(int)property;
- (TSCHChartSeriesNonStyle)initWithContext:(id)context name:(id)name overridePropertyMap:(id)map isVariation:(BOOL)variation;
- (id)mixedObjectWithFraction:(double)fraction ofObject:(id)object;
- (int64_t)mixingTypeWithObject:(id)object context:(id)context;
- (void)loadFromPreUFFArchiveWithUnarchiver:(id)unarchiver;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)p_upgradeMixedChartProperties:(id)properties;
- (void)p_upgradeSeparateVisibilityProperties:(id)properties;
- (void)saveToArchiver:(id)archiver;
- (void)upgradePreU2_0CustomFormatsForDocumentRoot:(id)root;
@end

@implementation TSCHChartSeriesNonStyle

+ (id)defaultStyleWithContext:(id)context
{
  contextCopy = context;
  v4 = objc_alloc(objc_opt_class());
  isVariation = objc_msgSend_initWithContext_name_overridePropertyMap_isVariation_(v4, v5, v6, v7, v8, contextCopy, 0, 0, 0);

  return isVariation;
}

- (TSCHChartSeriesNonStyle)initWithContext:(id)context name:(id)name overridePropertyMap:(id)map isVariation:(BOOL)variation
{
  v7.receiver = self;
  v7.super_class = TSCHChartSeriesNonStyle;
  return [(TSCHChartSeriesNonStyle *)&v7 initWithContext:context name:name overridePropertyMap:map isVariation:variation];
}

- (void)p_upgradeMixedChartProperties:(id)properties
{
  propertiesCopy = properties;
  sub_2762CD5BC(1428, 1429, propertiesCopy);
  sub_2762CD5BC(1540, 1542, propertiesCopy);
  sub_2762CD5BC(1539, 1541, propertiesCopy);
}

- (void)p_upgradeSeparateVisibilityProperties:(id)properties
{
  propertiesCopy = properties;
  sub_2762CD6F8(propertiesCopy);
  sub_2762CD70C(propertiesCopy);
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  if (objc_msgSend_messageType(unarchiverCopy, v5, v6, v7, v8) == 5015)
  {
    objc_msgSend_loadFromPreUFFArchiveWithUnarchiver_(self, v9, v10, v11, v12, unarchiverCopy);
    goto LABEL_242;
  }

  v13 = unarchiverCopy;
  google::protobuf::internal::AssignDescriptors();
  v18 = objc_msgSend_messageWithDescriptor_(v13, v14, v15, v16, v17, off_2812ED2B8[22]);

  if (*(v18 + 48))
  {
    v19 = *(v18 + 48);
  }

  else
  {
    v19 = MEMORY[0x277D80BD0];
  }

  v162.receiver = self;
  v162.super_class = TSCHChartSeriesNonStyle;
  [(TSCHChartSeriesNonStyle *)&v162 loadFromArchive:v19 unarchiver:v13];
  if ((google::protobuf::internal::ExtensionSet::Has((v18 + 16)) & 1) == 0)
  {
    v24 = MEMORY[0x277D81150];
    v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, v21, v22, v23, "[TSCHChartSeriesNonStyle loadFromUnarchiver:]");
    v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, v27, v28, v29, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartSeriesNonStyle.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v24, v31, v32, v33, v34, v25, v30, 104, 0, "Protobuf missing expected extension");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v35, v36, v37, v38);
  }

  Message = google::protobuf::internal::ExtensionSet::GetMessage();
  v41 = objc_alloc_init(MEMORY[0x277D80AB8]);
  v45 = *(Message + 16);
  if ((v45 & 0x100) != 0)
  {
    v47 = objc_msgSend_instanceWithArchive_unarchiver_(TSCHTimeBasedFormat, v40, v42, v43, v44, *(Message + 104), v13);
    if (v47)
    {
      objc_msgSend_setObject_forProperty_(v41, v46, v48, v49, v50, v47, 1363);
    }

    v45 = *(Message + 16);
  }

  if ((v45 & 0x20) != 0)
  {
    v52 = objc_msgSend_instanceWithArchive_unarchiver_(TSCHNumberFormat, v40, v42, v43, v44, *(Message + 80), v13);
    if (v52)
    {
      objc_msgSend_setObject_forProperty_(v41, v51, v53, v54, v55, v52, 1364);
    }

    v45 = *(Message + 16);
  }

  if ((v45 & 0x40) != 0)
  {
    v57 = objc_msgSend_instanceWithArchive_unarchiver_(TSCHNumberFormat, v40, v42, v43, v44, *(Message + 88), v13);
    if (v57)
    {
      objc_msgSend_setObject_forProperty_(v41, v56, v58, v59, v60, v57, 1365);
    }

    v45 = *(Message + 16);
  }

  if ((v45 & 0x1000000) != 0)
  {
    LODWORD(v42) = *(Message + 188);
    objc_msgSend_setFloatValue_forProperty_(v41, v40, v42, v43, v44, 1366);
    v45 = *(Message + 16);
  }

  if ((v45 & 0x2000) != 0)
  {
    LODWORD(v42) = *(Message + 144);
    objc_msgSend_setFloatValue_forProperty_(v41, v40, v42, v43, v44, 1367);
    v45 = *(Message + 16);
  }

  if ((v45 & 0x400) != 0)
  {
    v62 = objc_msgSend_instanceWithArchive_unarchiver_(TSCHTimeBasedFormat, v40, v42, v43, v44, *(Message + 120), v13);
    if (v62)
    {
      objc_msgSend_setObject_forProperty_(v41, v61, v63, v64, v65, v62, 1371);
    }

    v45 = *(Message + 16);
  }

  if ((v45 & 0x200) != 0)
  {
    v67 = objc_msgSend_instanceWithArchive_unarchiver_(TSCHTimeBasedFormat, v40, v42, v43, v44, *(Message + 112), v13);
    if (v67)
    {
      objc_msgSend_setObject_forProperty_(v41, v66, v68, v69, v70, v67, 1372);
    }
  }

  v71 = *(Message + 24);
  if ((v71 & 0x8000) != 0)
  {
    objc_msgSend_setIntValue_forProperty_(v41, v40, v42, v43, v44, *(Message + 324), 1373);
    v71 = *(Message + 24);
  }

  if ((v71 & 0x10000) != 0)
  {
    objc_msgSend_setIntValue_forProperty_(v41, v40, v42, v43, v44, *(Message + 328), 1374);
    v71 = *(Message + 24);
  }

  if ((v71 & 0x20000) != 0)
  {
    objc_msgSend_setIntValue_forProperty_(v41, v40, v42, v43, v44, *(Message + 332), 1375);
    v71 = *(Message + 24);
  }

  if ((v71 & 0x400000) != 0)
  {
    objc_msgSend_setIntValue_forProperty_(v41, v40, v42, v43, v44, *(Message + 352), 1376);
    v71 = *(Message + 24);
  }

  if ((v71 & 0x40000) != 0)
  {
    objc_msgSend_setIntValue_forProperty_(v41, v40, v42, v43, v44, *(Message + 336), 1377);
    v71 = *(Message + 24);
  }

  if ((v71 & 0x400) != 0)
  {
    objc_msgSend_setIntValue_forProperty_(v41, v40, v42, v43, v44, *(Message + 316), 1378);
    v71 = *(Message + 24);
  }

  if ((v71 & 0x80000) != 0)
  {
    objc_msgSend_setIntValue_forProperty_(v41, v40, v42, v43, v44, *(Message + 340), 1379);
    v71 = *(Message + 24);
  }

  if ((v71 & 0x100000) != 0)
  {
    objc_msgSend_setIntValue_forProperty_(v41, v40, v42, v43, v44, *(Message + 344), 1380);
    v71 = *(Message + 24);
  }

  if ((v71 & 0x200000) != 0)
  {
    objc_msgSend_setIntValue_forProperty_(v41, v40, v42, v43, v44, *(Message + 348), 1381);
  }

  v72 = *(Message + 16);
  if ((v72 & 2) != 0)
  {
    v74 = objc_msgSend_tsch_instanceWithArchive_unarchiver_(MEMORY[0x277CBEB18], v40, v42, v43, v44, *(Message + 48), v13);
    if (v74)
    {
      objc_msgSend_setObject_forProperty_(v41, v73, v75, v76, v77, v74, 1382);
    }

    v72 = *(Message + 16);
  }

  if ((v72 & 4) != 0)
  {
    v79 = objc_msgSend_tsch_instanceWithArchive_unarchiver_(MEMORY[0x277CBEB18], v40, v42, v43, v44, *(Message + 56), v13);
    if (v79)
    {
      objc_msgSend_setObject_forProperty_(v41, v78, v80, v81, v82, v79, 1383);
    }

    v72 = *(Message + 16);
  }

  if ((v72 & 8) != 0)
  {
    v84 = objc_msgSend_tsch_instanceWithArchive_unarchiver_(MEMORY[0x277CBEB18], v40, v42, v43, v44, *(Message + 64), v13);
    if (v84)
    {
      objc_msgSend_setObject_forProperty_(v41, v83, v85, v86, v87, v84, 1384);
    }

    v72 = *(Message + 16);
  }

  if ((v72 & 0x10) != 0)
  {
    v89 = objc_msgSend_tsch_instanceWithArchive_unarchiver_(MEMORY[0x277CBEB18], v40, v42, v43, v44, *(Message + 72), v13);
    if (v89)
    {
      objc_msgSend_setObject_forProperty_(v41, v88, v90, v91, v92, v89, 1385);
    }

    v72 = *(Message + 16);
  }

  if ((v72 & 0x4000) != 0)
  {
    LODWORD(v42) = *(Message + 148);
    objc_msgSend_setFloatValue_forProperty_(v41, v40, v42, v43, v44, 1386);
    v72 = *(Message + 16);
  }

  if ((v72 & 0x8000) != 0)
  {
    LODWORD(v42) = *(Message + 152);
    objc_msgSend_setFloatValue_forProperty_(v41, v40, v42, v43, v44, 1387);
    v72 = *(Message + 16);
  }

  if ((v72 & 0x10000) != 0)
  {
    LODWORD(v42) = *(Message + 156);
    objc_msgSend_setFloatValue_forProperty_(v41, v40, v42, v43, v44, 1390);
    v72 = *(Message + 16);
  }

  if ((v72 & 0x20000) != 0)
  {
    LODWORD(v42) = *(Message + 160);
    objc_msgSend_setFloatValue_forProperty_(v41, v40, v42, v43, v44, 1391);
    v72 = *(Message + 16);
  }

  if ((v72 & 0x40000) != 0)
  {
    objc_msgSend_setIntValue_forProperty_(v41, v40, v42, v43, v44, *(Message + 164), 1392);
    v72 = *(Message + 16);
  }

  if ((v72 & 0x80000) != 0)
  {
    objc_msgSend_setIntValue_forProperty_(v41, v40, v42, v43, v44, *(Message + 168), 1393);
    v72 = *(Message + 16);
  }

  if ((v72 & 0x100000) != 0)
  {
    LODWORD(v42) = *(Message + 172);
    objc_msgSend_setFloatValue_forProperty_(v41, v40, v42, v43, v44, 1397);
    v72 = *(Message + 16);
  }

  if ((v72 & 0x200000) != 0)
  {
    LODWORD(v42) = *(Message + 176);
    objc_msgSend_setFloatValue_forProperty_(v41, v40, v42, v43, v44, 1398);
    v72 = *(Message + 16);
  }

  if ((v72 & 0x400000) != 0)
  {
    objc_msgSend_setIntValue_forProperty_(v41, v40, v42, v43, v44, *(Message + 180), 1401);
    v72 = *(Message + 16);
  }

  if ((v72 & 0x800000) != 0)
  {
    objc_msgSend_setIntValue_forProperty_(v41, v40, v42, v43, v44, *(Message + 184), 1402);
  }

  if ((*(Message + 24) & 0x80000000) != 0)
  {
    LODWORD(v42) = *(Message + 364);
    objc_msgSend_setFloatValue_forProperty_(v41, v40, v42, v43, v44, 1418);
  }

  v93 = *(Message + 16);
  if ((v93 & 0x2000000) != 0)
  {
    objc_msgSend_setIntValue_forProperty_(v41, v40, v42, v43, v44, *(Message + 192), 1427);
    v93 = *(Message + 16);
  }

  if ((v93 & 0x4000000) != 0)
  {
    objc_msgSend_setIntValue_forProperty_(v41, v40, v42, v43, v44, *(Message + 196), 1428);
    v93 = *(Message + 16);
  }

  if ((v93 & 0x8000000) != 0)
  {
    objc_msgSend_setIntValue_forProperty_(v41, v40, v42, v43, v44, *(Message + 200), 1429);
  }

  if ((*(Message + 28) & 2) != 0)
  {
    objc_msgSend_setIntValue_forProperty_(v41, v40, v42, v43, v44, *(Message + 372), 1430);
  }

  v94 = *(Message + 16);
  if ((v94 & 0x10000000) != 0)
  {
    objc_msgSend_setIntValue_forProperty_(v41, v40, v42, v43, v44, *(Message + 204), 1431);
    v94 = *(Message + 16);
  }

  if ((v94 & 0x800) != 0)
  {
    v96 = objc_msgSend_instanceWithArchive_unarchiver_(TSCHNumberFormat, v40, v42, v43, v44, *(Message + 128), v13);
    if (v96)
    {
      objc_msgSend_setObject_forProperty_(v41, v95, v97, v98, v99, v96, 1432);
    }

    v94 = *(Message + 16);
  }

  if ((v94 & 0x1000) != 0)
  {
    v101 = objc_msgSend_instanceWithArchive_unarchiver_(TSCHNumberFormat, v40, v42, v43, v44, *(Message + 136), v13);
    if (v101)
    {
      objc_msgSend_setObject_forProperty_(v41, v100, v102, v103, v104, v101, 1433);
    }

    v94 = *(Message + 16);
  }

  if ((v94 & 0x20000000) != 0)
  {
    objc_msgSend_setIntValue_forProperty_(v41, v40, v42, v43, v44, *(Message + 208), 1434);
    v94 = *(Message + 16);
  }

  if ((v94 & 0x40000000) != 0)
  {
    objc_msgSend_setIntValue_forProperty_(v41, v40, v42, v43, v44, *(Message + 212), 1435);
    v94 = *(Message + 16);
  }

  if ((v94 & 0x80) != 0)
  {
    v106 = objc_msgSend_instanceWithArchive_unarchiver_(TSCHNumberFormat, v40, v42, v43, v44, *(Message + 96), v13);
    if (v106)
    {
      objc_msgSend_setObject_forProperty_(v41, v105, v107, v108, v109, v106, 1444);
    }

    v94 = *(Message + 16);
  }

  if (v94 < 0)
  {
    objc_msgSend_setIntValue_forProperty_(v41, v40, v42, v43, v44, *(Message + 216), 1445);
  }

  v110 = *(Message + 20);
  if ((v110 & 0x10000000) != 0)
  {
    objc_msgSend_setIntValue_forProperty_(v41, v40, v42, v43, v44, *(Message + 296), 1462);
    v110 = *(Message + 20);
  }

  if ((v110 & 0x20000000) != 0)
  {
    objc_msgSend_setIntValue_forProperty_(v41, v40, v42, v43, v44, *(Message + 297), 1463);
    v110 = *(Message + 20);
  }

  if ((v110 & 0x40000000) != 0)
  {
    objc_msgSend_setIntValue_forProperty_(v41, v40, v42, v43, v44, *(Message + 298), 1464);
    v110 = *(Message + 20);
  }

  if (v110 < 0)
  {
    objc_msgSend_setIntValue_forProperty_(v41, v40, v42, v43, v44, *(Message + 299), 1465);
    v110 = *(Message + 20);
    if ((v110 & 1) == 0)
    {
LABEL_124:
      if ((v110 & 2) == 0)
      {
        goto LABEL_125;
      }

      goto LABEL_134;
    }
  }

  else if ((v110 & 1) == 0)
  {
    goto LABEL_124;
  }

  objc_msgSend_setIntValue_forProperty_(v41, v40, v42, v43, v44, *(Message + 220), 1466);
  v110 = *(Message + 20);
  if ((v110 & 2) == 0)
  {
LABEL_125:
    if ((v110 & 4) == 0)
    {
      goto LABEL_126;
    }

    goto LABEL_135;
  }

LABEL_134:
  objc_msgSend_setIntValue_forProperty_(v41, v40, v42, v43, v44, *(Message + 221), 1467);
  v110 = *(Message + 20);
  if ((v110 & 4) == 0)
  {
LABEL_126:
    if ((v110 & 8) == 0)
    {
      goto LABEL_127;
    }

    goto LABEL_136;
  }

LABEL_135:
  objc_msgSend_setIntValue_forProperty_(v41, v40, v42, v43, v44, *(Message + 222), 1468);
  v110 = *(Message + 20);
  if ((v110 & 8) == 0)
  {
LABEL_127:
    if ((v110 & 0x100) == 0)
    {
      goto LABEL_128;
    }

    goto LABEL_137;
  }

LABEL_136:
  objc_msgSend_setIntValue_forProperty_(v41, v40, v42, v43, v44, *(Message + 223), 1469);
  v110 = *(Message + 20);
  if ((v110 & 0x100) == 0)
  {
LABEL_128:
    if ((v110 & 0x200) == 0)
    {
      goto LABEL_129;
    }

    goto LABEL_138;
  }

LABEL_137:
  objc_msgSend_setIntValue_forProperty_(v41, v40, v42, v43, v44, *(Message + 228), 1470);
  v110 = *(Message + 20);
  if ((v110 & 0x200) == 0)
  {
LABEL_129:
    if ((v110 & 0x400) == 0)
    {
      goto LABEL_130;
    }

    goto LABEL_139;
  }

LABEL_138:
  objc_msgSend_setIntValue_forProperty_(v41, v40, v42, v43, v44, *(Message + 229), 1471);
  v110 = *(Message + 20);
  if ((v110 & 0x400) == 0)
  {
LABEL_130:
    if ((v110 & 0x800) == 0)
    {
      goto LABEL_141;
    }

    goto LABEL_140;
  }

LABEL_139:
  objc_msgSend_setIntValue_forProperty_(v41, v40, v42, v43, v44, *(Message + 230), 1472);
  if ((*(Message + 20) & 0x800) != 0)
  {
LABEL_140:
    objc_msgSend_setIntValue_forProperty_(v41, v40, v42, v43, v44, *(Message + 231), 1473);
  }

LABEL_141:
  v111 = *(Message + 24);
  if ((v111 & 2) != 0)
  {
    objc_msgSend_setIntValue_forProperty_(v41, v40, v42, v43, v44, *(Message + 304), 1474);
    v111 = *(Message + 24);
  }

  if ((v111 & 4) != 0)
  {
    objc_msgSend_setIntValue_forProperty_(v41, v40, v42, v43, v44, *(Message + 305), 1475);
    v111 = *(Message + 24);
  }

  if ((v111 & 8) != 0)
  {
    objc_msgSend_setIntValue_forProperty_(v41, v40, v42, v43, v44, *(Message + 306), 1476);
    v111 = *(Message + 24);
  }

  if ((v111 & 0x10) != 0)
  {
    objc_msgSend_setIntValue_forProperty_(v41, v40, v42, v43, v44, *(Message + 307), 1477);
  }

  v112 = *(Message + 20);
  if ((v112 & 0x10) != 0)
  {
    objc_msgSend_setIntValue_forProperty_(v41, v40, v42, v43, v44, *(Message + 224), 1478);
    v112 = *(Message + 20);
  }

  if ((v112 & 0x20) != 0)
  {
    objc_msgSend_setIntValue_forProperty_(v41, v40, v42, v43, v44, *(Message + 225), 1479);
    v112 = *(Message + 20);
  }

  if ((v112 & 0x40) != 0)
  {
    objc_msgSend_setIntValue_forProperty_(v41, v40, v42, v43, v44, *(Message + 226), 1480);
    v112 = *(Message + 20);
  }

  if ((v112 & 0x80) != 0)
  {
    objc_msgSend_setIntValue_forProperty_(v41, v40, v42, v43, v44, *(Message + 227), 1481);
  }

  v113 = *(Message + 24);
  if ((v113 & 0x40) != 0)
  {
    objc_msgSend_setIntValue_forProperty_(v41, v40, v42, v43, v44, *(Message + 312), 1482);
    v113 = *(Message + 24);
  }

  if ((v113 & 0x80) != 0)
  {
    objc_msgSend_setIntValue_forProperty_(v41, v40, v42, v43, v44, *(Message + 313), 1483);
    v113 = *(Message + 24);
  }

  if ((v113 & 0x100) != 0)
  {
    objc_msgSend_setIntValue_forProperty_(v41, v40, v42, v43, v44, *(Message + 314), 1484);
    v113 = *(Message + 24);
  }

  if ((v113 & 0x200) != 0)
  {
    objc_msgSend_setIntValue_forProperty_(v41, v40, v42, v43, v44, *(Message + 315), 1485);
    v113 = *(Message + 24);
  }

  if ((v113 & 0x800000) != 0)
  {
    objc_msgSend_setIntValue_forProperty_(v41, v40, v42, v43, v44, *(Message + 356), 1486);
  }

  if ((*(Message + 21) & 0x10) != 0)
  {
    objc_msgSend_setIntValue_forProperty_(v41, v40, v42, v43, v44, *(Message + 232), 1487);
  }

  v114 = *(Message + 24);
  if ((v114 & 0x1000000) != 0)
  {
    objc_msgSend_setIntValue_forProperty_(v41, v40, v42, v43, v44, *(Message + 357), 1488);
    v114 = *(Message + 24);
  }

  if ((v114 & 0x2000000) != 0)
  {
    objc_msgSend_setIntValue_forProperty_(v41, v40, v42, v43, v44, *(Message + 358), 1489);
    v114 = *(Message + 24);
  }

  if ((v114 & 0x4000000) != 0)
  {
    objc_msgSend_setIntValue_forProperty_(v41, v40, v42, v43, v44, *(Message + 359), 1490);
    v114 = *(Message + 24);
  }

  if ((v114 & 0x8000000) != 0)
  {
    objc_msgSend_setIntValue_forProperty_(v41, v40, v42, v43, v44, *(Message + 360), 1491);
    v114 = *(Message + 24);
  }

  if ((v114 & 0x10000000) != 0)
  {
    objc_msgSend_setIntValue_forProperty_(v41, v40, v42, v43, v44, *(Message + 361), 1492);
    v114 = *(Message + 24);
  }

  if ((v114 & 0x20000000) != 0)
  {
    objc_msgSend_setIntValue_forProperty_(v41, v40, v42, v43, v44, *(Message + 362), 1493);
    v114 = *(Message + 24);
  }

  if ((v114 & 0x40000000) != 0)
  {
    objc_msgSend_setIntValue_forProperty_(v41, v40, v42, v43, v44, *(Message + 363), 1494);
    v114 = *(Message + 24);
  }

  if ((v114 & 0x800) != 0)
  {
    objc_msgSend_setIntValue_forProperty_(v41, v40, v42, v43, v44, *(Message + 320), 1495);
    v114 = *(Message + 24);
  }

  if ((v114 & 0x1000) != 0)
  {
    objc_msgSend_setIntValue_forProperty_(v41, v40, v42, v43, v44, *(Message + 321), 1496);
  }

  v115 = *(Message + 20);
  if ((v115 & 0x2000) != 0)
  {
    objc_msgSend_setIntValue_forProperty_(v41, v40, v42, v43, v44, *(Message + 236), 1539);
    v115 = *(Message + 20);
  }

  if ((v115 & 0x4000) != 0)
  {
    objc_msgSend_setIntValue_forProperty_(v41, v40, v42, v43, v44, *(Message + 240), 1540);
    v115 = *(Message + 20);
  }

  if ((v115 & 0x8000) != 0)
  {
    objc_msgSend_setIntValue_forProperty_(v41, v40, v42, v43, v44, *(Message + 244), 1541);
    v115 = *(Message + 20);
  }

  if ((v115 & 0x10000) != 0)
  {
    objc_msgSend_setIntValue_forProperty_(v41, v40, v42, v43, v44, *(Message + 248), 1542);
  }

  if (*(Message + 28))
  {
    objc_msgSend_setIntValue_forProperty_(v41, v40, v42, v43, v44, *(Message + 368), 1543);
  }

  v116 = *(Message + 20);
  if ((v116 & 0x20000) != 0)
  {
    objc_msgSend_setIntValue_forProperty_(v41, v40, v42, v43, v44, *(Message + 252), 1544);
    v116 = *(Message + 20);
  }

  if ((v116 & 0x40000) != 0)
  {
    LODWORD(v42) = *(Message + 256);
    objc_msgSend_setFloatValue_forProperty_(v41, v40, v42, v43, v44, 1545);
    v116 = *(Message + 20);
  }

  if ((v116 & 0x80000) != 0)
  {
    LODWORD(v42) = *(Message + 260);
    objc_msgSend_setFloatValue_forProperty_(v41, v40, v42, v43, v44, 1546);
  }

  if (*(Message + 16))
  {
    v117 = objc_alloc(MEMORY[0x277CCACA8]);
    v123 = objc_msgSend_tsp_initWithProtobufString_(v117, v118, v119, v120, v121, *(Message + 40) & 0xFFFFFFFFFFFFFFFELL);
    if (v123)
    {
      objc_msgSend_setObject_forProperty_(v41, v122, v124, v125, v126, v123, 1547);
    }
  }

  v127 = *(Message + 20);
  if ((v127 & 0x100000) != 0)
  {
    objc_msgSend_setIntValue_forProperty_(v41, v40, v42, v43, v44, *(Message + 264), 1548);
    v127 = *(Message + 20);
  }

  if ((v127 & 0x200000) != 0)
  {
    objc_msgSend_setIntValue_forProperty_(v41, v40, v42, v43, v44, *(Message + 268), 1549);
    v127 = *(Message + 20);
  }

  if ((v127 & 0x400000) != 0)
  {
    LODWORD(v42) = *(Message + 272);
    objc_msgSend_setFloatValue_forProperty_(v41, v40, v42, v43, v44, 1550);
    v127 = *(Message + 20);
  }

  if ((v127 & 0x800000) != 0)
  {
    LODWORD(v42) = *(Message + 276);
    objc_msgSend_setFloatValue_forProperty_(v41, v40, v42, v43, v44, 1551);
  }

  v128 = *(Message + 24);
  if ((v128 & 0x2000) != 0)
  {
    objc_msgSend_setIntValue_forProperty_(v41, v40, v42, v43, v44, *(Message + 322), 1553);
    v128 = *(Message + 24);
  }

  if ((v128 & 0x4000) != 0)
  {
    objc_msgSend_setIntValue_forProperty_(v41, v40, v42, v43, v44, *(Message + 323), 1554);
  }

  v129 = *(Message + 20);
  if ((v129 & 0x1000000) != 0)
  {
    objc_msgSend_setIntValue_forProperty_(v41, v40, v42, v43, v44, *(Message + 280), 1555);
    v129 = *(Message + 20);
  }

  if ((v129 & 0x2000000) != 0)
  {
    objc_msgSend_setIntValue_forProperty_(v41, v40, v42, v43, v44, *(Message + 284), 1557);
  }

  v130 = *(Message + 24);
  if (v130)
  {
    objc_msgSend_setIntValue_forProperty_(v41, v40, v42, v43, v44, *(Message + 300), 1575);
    v130 = *(Message + 24);
  }

  if ((v130 & 0x20) != 0)
  {
    objc_msgSend_setIntValue_forProperty_(v41, v40, v42, v43, v44, *(Message + 308), 1576);
  }

  v131 = *(Message + 20);
  if ((v131 & 0x4000000) != 0)
  {
    LODWORD(v42) = *(Message + 288);
    objc_msgSend_setFloatValue_forProperty_(v41, v40, v42, v43, v44, 1577);
    v131 = *(Message + 20);
  }

  if ((v131 & 0x8000000) != 0)
  {
    objc_msgSend_setIntValue_forProperty_(v41, v40, v42, v43, v44, *(Message + 292), 1578);
  }

  objc_storeStrong((&self->super.super.super.super.isa + *MEMORY[0x277D80AF0]), v41);
  if (objc_msgSend_preUFFVersion(v13, v132, v133, v134, v135) <= 0x2CBDB9584)
  {
    v161[0] = MEMORY[0x277D85DD0];
    v161[1] = 3221225472;
    v161[2] = sub_2762B433C;
    v161[3] = &unk_27A6B6888;
    v161[4] = self;
    objc_msgSend_addFinalizeHandler_(v13, v136, COERCE_DOUBLE(3221225472), v137, v138, v161);
  }

  if (google::protobuf::internal::ExtensionSet::Has((v18 + 16)))
  {
    Bool = google::protobuf::internal::ExtensionSet::GetBool((v18 + 16));
  }

  else
  {
    Bool = 0;
  }

  if (google::protobuf::internal::ExtensionSet::Has((v18 + 16)))
  {
    v144 = google::protobuf::internal::ExtensionSet::GetBool((v18 + 16));
  }

  else
  {
    v144 = 0;
  }

  isCrossAppPaste = objc_msgSend_isCrossAppPaste(v13, v140, v141, v142, v143);
  v157[0] = MEMORY[0x277D85DD0];
  v157[1] = 3221225472;
  v157[2] = sub_2762B4388;
  v157[3] = &unk_27A6B7638;
  v158 = Bool;
  v157[4] = self;
  v159 = v144;
  v160 = isCrossAppPaste;
  objc_msgSend_addFinalizeHandler_(v13, v146, v147, v148, v149, v157);
  v150 = google::protobuf::internal::ExtensionSet::Has((v18 + 16));
  if (v150)
  {
    LOBYTE(v150) = google::protobuf::internal::ExtensionSet::GetBool((v18 + 16));
  }

  v155[0] = MEMORY[0x277D85DD0];
  v155[1] = 3221225472;
  v155[2] = sub_2762B456C;
  v155[3] = &unk_27A6B7660;
  v156 = v150;
  v155[4] = self;
  objc_msgSend_addFinalizeHandler_(v13, v151, v152, v153, v154, v155);

LABEL_242:
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v9 = objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v5, v6, v7, v8, sub_2762B6F70, off_2812ED2B8[22]);

  *(v9 + 40) |= 1u;
  v10 = *(v9 + 48);
  if (!v10)
  {
    v11 = *(v9 + 8);
    if (v11)
    {
      v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
    }

    v10 = MEMORY[0x277C97BA0](v11);
    *(v9 + 48) = v10;
  }

  v608.receiver = self;
  v608.super_class = TSCHChartSeriesNonStyle;
  [(TSCHChartSeriesNonStyle *)&v608 saveToArchive:v10 archiver:archiverCopy];
  sub_27641EBE4();
  v12 = google::protobuf::internal::ExtensionSet::MutableMessage();
  v13 = *(&self->super.super.super.super.isa + *MEMORY[0x277D80AF0]);
  if (objc_msgSend_isForCopy(archiverCopy, v14, v15, v16, v17))
  {
    v22 = objc_msgSend_overrideMapForSameAsSource(self, v18, v19, v20, v21);

    if (v22)
    {
      v23 = objc_msgSend_overrideMapForSameAsSource(self, v18, v19, v20, v21);
      v28 = objc_msgSend_propertyMapByAddingValuesFromPropertyMap_(v13, v24, v25, v26, v27, v23);

      v13 = v28;
    }
  }

  if (objc_msgSend_containsProperty_(v13, v18, v19, v20, v21, 1363))
  {
    v34 = objc_msgSend_objectForProperty_(v13, v29, v30, v31, v32, 1363);
    *(v12 + 16) |= 0x100u;
    v38 = *(v12 + 104);
    if (!v38)
    {
      v39 = *(v12 + 8);
      if (v39)
      {
        v39 = *(v39 & 0xFFFFFFFFFFFFFFFELL);
      }

      v38 = MEMORY[0x277C97B00](v39);
      *(v12 + 104) = v38;
    }

    objc_msgSend_saveToArchive_archiver_(v34, v33, v35, v36, v37, v38, archiverCopy);
  }

  if (objc_msgSend_containsProperty_(v13, v29, v30, v31, v32, 1364))
  {
    v45 = objc_msgSend_objectForProperty_(v13, v40, v41, v42, v43, 1364);
    *(v12 + 16) |= 0x20u;
    v49 = *(v12 + 80);
    if (!v49)
    {
      v50 = *(v12 + 8);
      if (v50)
      {
        v50 = *(v50 & 0xFFFFFFFFFFFFFFFELL);
      }

      v49 = MEMORY[0x277C97B00](v50);
      *(v12 + 80) = v49;
    }

    objc_msgSend_saveToArchive_archiver_(v45, v44, v46, v47, v48, v49, archiverCopy);
  }

  if (objc_msgSend_containsProperty_(v13, v40, v41, v42, v43, 1365))
  {
    v56 = objc_msgSend_objectForProperty_(v13, v51, v52, v53, v54, 1365);
    *(v12 + 16) |= 0x40u;
    v60 = *(v12 + 88);
    if (!v60)
    {
      v61 = *(v12 + 8);
      if (v61)
      {
        v61 = *(v61 & 0xFFFFFFFFFFFFFFFELL);
      }

      v60 = MEMORY[0x277C97B00](v61);
      *(v12 + 88) = v60;
    }

    objc_msgSend_saveToArchive_archiver_(v56, v55, v57, v58, v59, v60, archiverCopy);
  }

  if (objc_msgSend_containsProperty_(v13, v51, v52, v53, v54, 1366))
  {
    objc_msgSend_floatValueForProperty_(v13, v62, v63, v64, v65, 1366);
    *(v12 + 16) |= 0x1000000u;
    *(v12 + 188) = LODWORD(v63);
  }

  if (objc_msgSend_containsProperty_(v13, v62, v63, v64, v65, 1367))
  {
    objc_msgSend_floatValueForProperty_(v13, v66, v67, v68, v69, 1367);
    *(v12 + 16) |= 0x2000u;
    *(v12 + 144) = LODWORD(v67);
  }

  if (objc_msgSend_containsProperty_(v13, v66, v67, v68, v69, 1371))
  {
    v75 = objc_msgSend_objectForProperty_(v13, v70, v71, v72, v73, 1371);
    *(v12 + 16) |= 0x400u;
    v79 = *(v12 + 120);
    if (!v79)
    {
      v80 = *(v12 + 8);
      if (v80)
      {
        v80 = *(v80 & 0xFFFFFFFFFFFFFFFELL);
      }

      v79 = MEMORY[0x277C97B00](v80);
      *(v12 + 120) = v79;
    }

    objc_msgSend_saveToArchive_archiver_(v75, v74, v76, v77, v78, v79, archiverCopy);
  }

  if (objc_msgSend_containsProperty_(v13, v70, v71, v72, v73, 1372))
  {
    v86 = objc_msgSend_objectForProperty_(v13, v81, v82, v83, v84, 1372);
    *(v12 + 16) |= 0x200u;
    v90 = *(v12 + 112);
    if (!v90)
    {
      v91 = *(v12 + 8);
      if (v91)
      {
        v91 = *(v91 & 0xFFFFFFFFFFFFFFFELL);
      }

      v90 = MEMORY[0x277C97B00](v91);
      *(v12 + 112) = v90;
    }

    objc_msgSend_saveToArchive_archiver_(v86, v85, v87, v88, v89, v90, archiverCopy);
  }

  if (objc_msgSend_containsProperty_(v13, v81, v82, v83, v84, 1373))
  {
    v96 = objc_msgSend_intValueForProperty_(v13, v92, v93, v94, v95, 1373);
    *(v12 + 24) |= 0x8000u;
    *(v12 + 324) = v96;
  }

  if (objc_msgSend_containsProperty_(v13, v92, v93, v94, v95, 1374))
  {
    v101 = objc_msgSend_intValueForProperty_(v13, v97, v98, v99, v100, 1374);
    *(v12 + 24) |= 0x10000u;
    *(v12 + 328) = v101;
  }

  if (objc_msgSend_containsProperty_(v13, v97, v98, v99, v100, 1375))
  {
    v106 = objc_msgSend_intValueForProperty_(v13, v102, v103, v104, v105, 1375);
    *(v12 + 24) |= 0x20000u;
    *(v12 + 332) = v106;
  }

  if (objc_msgSend_containsProperty_(v13, v102, v103, v104, v105, 1376))
  {
    v111 = objc_msgSend_intValueForProperty_(v13, v107, v108, v109, v110, 1376);
    *(v12 + 24) |= 0x400000u;
    *(v12 + 352) = v111;
  }

  if (objc_msgSend_containsProperty_(v13, v107, v108, v109, v110, 1377))
  {
    v116 = objc_msgSend_intValueForProperty_(v13, v112, v113, v114, v115, 1377);
    *(v12 + 24) |= 0x40000u;
    *(v12 + 336) = v116;
  }

  if (objc_msgSend_containsProperty_(v13, v112, v113, v114, v115, 1378))
  {
    v121 = objc_msgSend_intValueForProperty_(v13, v117, v118, v119, v120, 1378);
    *(v12 + 24) |= 0x400u;
    *(v12 + 316) = v121;
  }

  if (objc_msgSend_containsProperty_(v13, v117, v118, v119, v120, 1379))
  {
    v126 = objc_msgSend_intValueForProperty_(v13, v122, v123, v124, v125, 1379);
    *(v12 + 24) |= 0x80000u;
    *(v12 + 340) = v126;
  }

  if (objc_msgSend_containsProperty_(v13, v122, v123, v124, v125, 1380))
  {
    v131 = objc_msgSend_intValueForProperty_(v13, v127, v128, v129, v130, 1380);
    *(v12 + 24) |= 0x100000u;
    *(v12 + 344) = v131;
  }

  if (objc_msgSend_containsProperty_(v13, v127, v128, v129, v130, 1381))
  {
    v136 = objc_msgSend_intValueForProperty_(v13, v132, v133, v134, v135, 1381);
    *(v12 + 24) |= 0x200000u;
    *(v12 + 348) = v136;
  }

  if (objc_msgSend_containsProperty_(v13, v132, v133, v134, v135, 1382))
  {
    v142 = objc_msgSend_objectForProperty_(v13, v137, v138, v139, v140, 1382);
    *(v12 + 16) |= 2u;
    v146 = *(v12 + 48);
    if (!v146)
    {
      v147 = *(v12 + 8);
      if (v147)
      {
        v147 = *(v147 & 0xFFFFFFFFFFFFFFFELL);
      }

      v146 = sub_276406A94(v147);
      *(v12 + 48) = v146;
    }

    objc_msgSend_tsch_saveToArchive_archiver_(v142, v141, v143, v144, v145, v146, archiverCopy);
  }

  if (objc_msgSend_containsProperty_(v13, v137, v138, v139, v140, 1383))
  {
    v153 = objc_msgSend_objectForProperty_(v13, v148, v149, v150, v151, 1383);
    *(v12 + 16) |= 4u;
    v157 = *(v12 + 56);
    if (!v157)
    {
      v158 = *(v12 + 8);
      if (v158)
      {
        v158 = *(v158 & 0xFFFFFFFFFFFFFFFELL);
      }

      v157 = sub_276406A94(v158);
      *(v12 + 56) = v157;
    }

    objc_msgSend_tsch_saveToArchive_archiver_(v153, v152, v154, v155, v156, v157, archiverCopy);
  }

  if (objc_msgSend_containsProperty_(v13, v148, v149, v150, v151, 1384))
  {
    v164 = objc_msgSend_objectForProperty_(v13, v159, v160, v161, v162, 1384);
    *(v12 + 16) |= 8u;
    v168 = *(v12 + 64);
    if (!v168)
    {
      v169 = *(v12 + 8);
      if (v169)
      {
        v169 = *(v169 & 0xFFFFFFFFFFFFFFFELL);
      }

      v168 = sub_276406A94(v169);
      *(v12 + 64) = v168;
    }

    objc_msgSend_tsch_saveToArchive_archiver_(v164, v163, v165, v166, v167, v168, archiverCopy);
  }

  if (objc_msgSend_containsProperty_(v13, v159, v160, v161, v162, 1385))
  {
    v175 = objc_msgSend_objectForProperty_(v13, v170, v171, v172, v173, 1385);
    *(v12 + 16) |= 0x10u;
    v179 = *(v12 + 72);
    if (!v179)
    {
      v180 = *(v12 + 8);
      if (v180)
      {
        v180 = *(v180 & 0xFFFFFFFFFFFFFFFELL);
      }

      v179 = sub_276406A94(v180);
      *(v12 + 72) = v179;
    }

    objc_msgSend_tsch_saveToArchive_archiver_(v175, v174, v176, v177, v178, v179, archiverCopy);
  }

  if (objc_msgSend_containsProperty_(v13, v170, v171, v172, v173, 1386))
  {
    objc_msgSend_floatValueForProperty_(v13, v181, v182, v183, v184, 1386);
    *(v12 + 16) |= 0x4000u;
    *(v12 + 148) = LODWORD(v182);
  }

  if (objc_msgSend_containsProperty_(v13, v181, v182, v183, v184, 1387))
  {
    objc_msgSend_floatValueForProperty_(v13, v185, v186, v187, v188, 1387);
    *(v12 + 16) |= 0x8000u;
    *(v12 + 152) = LODWORD(v186);
  }

  if (objc_msgSend_containsProperty_(v13, v185, v186, v187, v188, 1390))
  {
    objc_msgSend_floatValueForProperty_(v13, v189, v190, v191, v192, 1390);
    *(v12 + 16) |= 0x10000u;
    *(v12 + 156) = LODWORD(v190);
  }

  if (objc_msgSend_containsProperty_(v13, v189, v190, v191, v192, 1391))
  {
    objc_msgSend_floatValueForProperty_(v13, v193, v194, v195, v196, 1391);
    *(v12 + 16) |= 0x20000u;
    *(v12 + 160) = LODWORD(v194);
  }

  if (objc_msgSend_containsProperty_(v13, v193, v194, v195, v196, 1392))
  {
    v201 = objc_msgSend_intValueForProperty_(v13, v197, v198, v199, v200, 1392);
    *(v12 + 16) |= 0x40000u;
    *(v12 + 164) = v201;
  }

  if (objc_msgSend_containsProperty_(v13, v197, v198, v199, v200, 1393))
  {
    v206 = objc_msgSend_intValueForProperty_(v13, v202, v203, v204, v205, 1393);
    *(v12 + 16) |= 0x80000u;
    *(v12 + 168) = v206;
  }

  if (objc_msgSend_containsProperty_(v13, v202, v203, v204, v205, 1397))
  {
    objc_msgSend_floatValueForProperty_(v13, v207, v208, v209, v210, 1397);
    *(v12 + 16) |= 0x100000u;
    *(v12 + 172) = LODWORD(v208);
  }

  if (objc_msgSend_containsProperty_(v13, v207, v208, v209, v210, 1398))
  {
    objc_msgSend_floatValueForProperty_(v13, v211, v212, v213, v214, 1398);
    *(v12 + 16) |= 0x200000u;
    *(v12 + 176) = LODWORD(v212);
  }

  if (objc_msgSend_containsProperty_(v13, v211, v212, v213, v214, 1401))
  {
    v219 = objc_msgSend_intValueForProperty_(v13, v215, v216, v217, v218, 1401);
    *(v12 + 16) |= 0x400000u;
    *(v12 + 180) = v219;
  }

  if (objc_msgSend_containsProperty_(v13, v215, v216, v217, v218, 1402))
  {
    v224 = objc_msgSend_intValueForProperty_(v13, v220, v221, v222, v223, 1402);
    *(v12 + 16) |= 0x800000u;
    *(v12 + 184) = v224;
  }

  if (objc_msgSend_containsProperty_(v13, v220, v221, v222, v223, 1418))
  {
    objc_msgSend_floatValueForProperty_(v13, v225, v226, v227, v228, 1418);
    *(v12 + 24) |= 0x80000000;
    *(v12 + 364) = LODWORD(v226);
  }

  if (objc_msgSend_containsProperty_(v13, v225, v226, v227, v228, 1427))
  {
    v233 = objc_msgSend_intValueForProperty_(v13, v229, v230, v231, v232, 1427);
    *(v12 + 16) |= 0x2000000u;
    *(v12 + 192) = v233;
  }

  if (objc_msgSend_containsProperty_(v13, v229, v230, v231, v232, 1428))
  {
    v238 = objc_msgSend_intValueForProperty_(v13, v234, v235, v236, v237, 1428);
    *(v12 + 16) |= 0x4000000u;
    *(v12 + 196) = v238;
  }

  if (objc_msgSend_containsProperty_(v13, v234, v235, v236, v237, 1429))
  {
    v243 = objc_msgSend_intValueForProperty_(v13, v239, v240, v241, v242, 1429);
    *(v12 + 16) |= 0x8000000u;
    *(v12 + 200) = v243;
  }

  if (objc_msgSend_containsProperty_(v13, v239, v240, v241, v242, 1430))
  {
    v248 = objc_msgSend_intValueForProperty_(v13, v244, v245, v246, v247, 1430);
    *(v12 + 28) |= 2u;
    *(v12 + 372) = v248;
  }

  if (objc_msgSend_containsProperty_(v13, v244, v245, v246, v247, 1431))
  {
    v253 = objc_msgSend_intValueForProperty_(v13, v249, v250, v251, v252, 1431);
    *(v12 + 16) |= 0x10000000u;
    *(v12 + 204) = v253;
  }

  if (objc_msgSend_containsProperty_(v13, v249, v250, v251, v252, 1432))
  {
    v259 = objc_msgSend_objectForProperty_(v13, v254, v255, v256, v257, 1432);
    *(v12 + 16) |= 0x800u;
    v263 = *(v12 + 128);
    if (!v263)
    {
      v264 = *(v12 + 8);
      if (v264)
      {
        v264 = *(v264 & 0xFFFFFFFFFFFFFFFELL);
      }

      v263 = MEMORY[0x277C97B00](v264);
      *(v12 + 128) = v263;
    }

    objc_msgSend_saveToArchive_archiver_(v259, v258, v260, v261, v262, v263, archiverCopy);
  }

  if (objc_msgSend_containsProperty_(v13, v254, v255, v256, v257, 1433))
  {
    v270 = objc_msgSend_objectForProperty_(v13, v265, v266, v267, v268, 1433);
    *(v12 + 16) |= 0x1000u;
    v274 = *(v12 + 136);
    if (!v274)
    {
      v275 = *(v12 + 8);
      if (v275)
      {
        v275 = *(v275 & 0xFFFFFFFFFFFFFFFELL);
      }

      v274 = MEMORY[0x277C97B00](v275);
      *(v12 + 136) = v274;
    }

    objc_msgSend_saveToArchive_archiver_(v270, v269, v271, v272, v273, v274, archiverCopy);
  }

  if (objc_msgSend_containsProperty_(v13, v265, v266, v267, v268, 1434))
  {
    v280 = objc_msgSend_intValueForProperty_(v13, v276, v277, v278, v279, 1434);
    *(v12 + 16) |= 0x20000000u;
    *(v12 + 208) = v280;
  }

  if (objc_msgSend_containsProperty_(v13, v276, v277, v278, v279, 1435))
  {
    v285 = objc_msgSend_intValueForProperty_(v13, v281, v282, v283, v284, 1435);
    *(v12 + 16) |= 0x40000000u;
    *(v12 + 212) = v285;
  }

  if (objc_msgSend_containsProperty_(v13, v281, v282, v283, v284, 1444))
  {
    v291 = objc_msgSend_objectForProperty_(v13, v286, v287, v288, v289, 1444);
    *(v12 + 16) |= 0x80u;
    v295 = *(v12 + 96);
    if (!v295)
    {
      v296 = *(v12 + 8);
      if (v296)
      {
        v296 = *(v296 & 0xFFFFFFFFFFFFFFFELL);
      }

      v295 = MEMORY[0x277C97B00](v296);
      *(v12 + 96) = v295;
    }

    objc_msgSend_saveToArchive_archiver_(v291, v290, v292, v293, v294, v295, archiverCopy);
  }

  if (objc_msgSend_containsProperty_(v13, v286, v287, v288, v289, 1445))
  {
    v301 = objc_msgSend_intValueForProperty_(v13, v297, v298, v299, v300, 1445);
    *(v12 + 16) |= 0x80000000;
    *(v12 + 216) = v301;
  }

  if (objc_msgSend_containsProperty_(v13, v297, v298, v299, v300, 1462))
  {
    v306 = objc_msgSend_intValueForProperty_(v13, v302, v303, v304, v305, 1462) != 0;
    *(v12 + 20) |= 0x10000000u;
    *(v12 + 296) = v306;
  }

  if (objc_msgSend_containsProperty_(v13, v302, v303, v304, v305, 1463))
  {
    v311 = objc_msgSend_intValueForProperty_(v13, v307, v308, v309, v310, 1463) != 0;
    *(v12 + 20) |= 0x20000000u;
    *(v12 + 297) = v311;
  }

  if (objc_msgSend_containsProperty_(v13, v307, v308, v309, v310, 1464))
  {
    v316 = objc_msgSend_intValueForProperty_(v13, v312, v313, v314, v315, 1464) != 0;
    *(v12 + 20) |= 0x40000000u;
    *(v12 + 298) = v316;
  }

  if (objc_msgSend_containsProperty_(v13, v312, v313, v314, v315, 1465))
  {
    v321 = objc_msgSend_intValueForProperty_(v13, v317, v318, v319, v320, 1465) != 0;
    *(v12 + 20) |= 0x80000000;
    *(v12 + 299) = v321;
  }

  if (objc_msgSend_containsProperty_(v13, v317, v318, v319, v320, 1466))
  {
    v326 = objc_msgSend_intValueForProperty_(v13, v322, v323, v324, v325, 1466) != 0;
    *(v12 + 20) |= 1u;
    *(v12 + 220) = v326;
  }

  if (objc_msgSend_containsProperty_(v13, v322, v323, v324, v325, 1467))
  {
    v331 = objc_msgSend_intValueForProperty_(v13, v327, v328, v329, v330, 1467) != 0;
    *(v12 + 20) |= 2u;
    *(v12 + 221) = v331;
  }

  if (objc_msgSend_containsProperty_(v13, v327, v328, v329, v330, 1468))
  {
    v336 = objc_msgSend_intValueForProperty_(v13, v332, v333, v334, v335, 1468) != 0;
    *(v12 + 20) |= 4u;
    *(v12 + 222) = v336;
  }

  if (objc_msgSend_containsProperty_(v13, v332, v333, v334, v335, 1469))
  {
    v341 = objc_msgSend_intValueForProperty_(v13, v337, v338, v339, v340, 1469) != 0;
    *(v12 + 20) |= 8u;
    *(v12 + 223) = v341;
  }

  if (objc_msgSend_containsProperty_(v13, v337, v338, v339, v340, 1470))
  {
    v346 = objc_msgSend_intValueForProperty_(v13, v342, v343, v344, v345, 1470) != 0;
    *(v12 + 20) |= 0x100u;
    *(v12 + 228) = v346;
  }

  if (objc_msgSend_containsProperty_(v13, v342, v343, v344, v345, 1471))
  {
    v351 = objc_msgSend_intValueForProperty_(v13, v347, v348, v349, v350, 1471) != 0;
    *(v12 + 20) |= 0x200u;
    *(v12 + 229) = v351;
  }

  if (objc_msgSend_containsProperty_(v13, v347, v348, v349, v350, 1472))
  {
    v356 = objc_msgSend_intValueForProperty_(v13, v352, v353, v354, v355, 1472) != 0;
    *(v12 + 20) |= 0x400u;
    *(v12 + 230) = v356;
  }

  if (objc_msgSend_containsProperty_(v13, v352, v353, v354, v355, 1473))
  {
    v361 = objc_msgSend_intValueForProperty_(v13, v357, v358, v359, v360, 1473) != 0;
    *(v12 + 20) |= 0x800u;
    *(v12 + 231) = v361;
  }

  if (objc_msgSend_containsProperty_(v13, v357, v358, v359, v360, 1474))
  {
    v366 = objc_msgSend_intValueForProperty_(v13, v362, v363, v364, v365, 1474) != 0;
    *(v12 + 24) |= 2u;
    *(v12 + 304) = v366;
  }

  if (objc_msgSend_containsProperty_(v13, v362, v363, v364, v365, 1475))
  {
    v371 = objc_msgSend_intValueForProperty_(v13, v367, v368, v369, v370, 1475) != 0;
    *(v12 + 24) |= 4u;
    *(v12 + 305) = v371;
  }

  if (objc_msgSend_containsProperty_(v13, v367, v368, v369, v370, 1476))
  {
    v376 = objc_msgSend_intValueForProperty_(v13, v372, v373, v374, v375, 1476) != 0;
    *(v12 + 24) |= 8u;
    *(v12 + 306) = v376;
  }

  if (objc_msgSend_containsProperty_(v13, v372, v373, v374, v375, 1477))
  {
    v381 = objc_msgSend_intValueForProperty_(v13, v377, v378, v379, v380, 1477) != 0;
    *(v12 + 24) |= 0x10u;
    *(v12 + 307) = v381;
  }

  if (objc_msgSend_containsProperty_(v13, v377, v378, v379, v380, 1478))
  {
    v386 = objc_msgSend_intValueForProperty_(v13, v382, v383, v384, v385, 1478) != 0;
    *(v12 + 20) |= 0x10u;
    *(v12 + 224) = v386;
  }

  if (objc_msgSend_containsProperty_(v13, v382, v383, v384, v385, 1479))
  {
    v391 = objc_msgSend_intValueForProperty_(v13, v387, v388, v389, v390, 1479) != 0;
    *(v12 + 20) |= 0x20u;
    *(v12 + 225) = v391;
  }

  if (objc_msgSend_containsProperty_(v13, v387, v388, v389, v390, 1480))
  {
    v396 = objc_msgSend_intValueForProperty_(v13, v392, v393, v394, v395, 1480) != 0;
    *(v12 + 20) |= 0x40u;
    *(v12 + 226) = v396;
  }

  if (objc_msgSend_containsProperty_(v13, v392, v393, v394, v395, 1481))
  {
    v401 = objc_msgSend_intValueForProperty_(v13, v397, v398, v399, v400, 1481) != 0;
    *(v12 + 20) |= 0x80u;
    *(v12 + 227) = v401;
  }

  if (objc_msgSend_containsProperty_(v13, v397, v398, v399, v400, 1482))
  {
    v406 = objc_msgSend_intValueForProperty_(v13, v402, v403, v404, v405, 1482) != 0;
    *(v12 + 24) |= 0x40u;
    *(v12 + 312) = v406;
  }

  if (objc_msgSend_containsProperty_(v13, v402, v403, v404, v405, 1483))
  {
    v411 = objc_msgSend_intValueForProperty_(v13, v407, v408, v409, v410, 1483) != 0;
    *(v12 + 24) |= 0x80u;
    *(v12 + 313) = v411;
  }

  if (objc_msgSend_containsProperty_(v13, v407, v408, v409, v410, 1484))
  {
    v416 = objc_msgSend_intValueForProperty_(v13, v412, v413, v414, v415, 1484) != 0;
    *(v12 + 24) |= 0x100u;
    *(v12 + 314) = v416;
  }

  if (objc_msgSend_containsProperty_(v13, v412, v413, v414, v415, 1485))
  {
    v421 = objc_msgSend_intValueForProperty_(v13, v417, v418, v419, v420, 1485) != 0;
    *(v12 + 24) |= 0x200u;
    *(v12 + 315) = v421;
  }

  if (objc_msgSend_containsProperty_(v13, v417, v418, v419, v420, 1486))
  {
    v426 = objc_msgSend_intValueForProperty_(v13, v422, v423, v424, v425, 1486) != 0;
    *(v12 + 24) |= 0x800000u;
    *(v12 + 356) = v426;
  }

  if (objc_msgSend_containsProperty_(v13, v422, v423, v424, v425, 1487))
  {
    v431 = objc_msgSend_intValueForProperty_(v13, v427, v428, v429, v430, 1487);
    *(v12 + 20) |= 0x1000u;
    *(v12 + 232) = v431;
  }

  if (objc_msgSend_containsProperty_(v13, v427, v428, v429, v430, 1488))
  {
    v436 = objc_msgSend_intValueForProperty_(v13, v432, v433, v434, v435, 1488) != 0;
    *(v12 + 24) |= 0x1000000u;
    *(v12 + 357) = v436;
  }

  if (objc_msgSend_containsProperty_(v13, v432, v433, v434, v435, 1489))
  {
    v441 = objc_msgSend_intValueForProperty_(v13, v437, v438, v439, v440, 1489) != 0;
    *(v12 + 24) |= 0x2000000u;
    *(v12 + 358) = v441;
  }

  if (objc_msgSend_containsProperty_(v13, v437, v438, v439, v440, 1490))
  {
    v446 = objc_msgSend_intValueForProperty_(v13, v442, v443, v444, v445, 1490) != 0;
    *(v12 + 24) |= 0x4000000u;
    *(v12 + 359) = v446;
  }

  if (objc_msgSend_containsProperty_(v13, v442, v443, v444, v445, 1491))
  {
    v451 = objc_msgSend_intValueForProperty_(v13, v447, v448, v449, v450, 1491) != 0;
    *(v12 + 24) |= 0x8000000u;
    *(v12 + 360) = v451;
  }

  if (objc_msgSend_containsProperty_(v13, v447, v448, v449, v450, 1492))
  {
    v456 = objc_msgSend_intValueForProperty_(v13, v452, v453, v454, v455, 1492) != 0;
    *(v12 + 24) |= 0x10000000u;
    *(v12 + 361) = v456;
  }

  if (objc_msgSend_containsProperty_(v13, v452, v453, v454, v455, 1493))
  {
    v461 = objc_msgSend_intValueForProperty_(v13, v457, v458, v459, v460, 1493) != 0;
    *(v12 + 24) |= 0x20000000u;
    *(v12 + 362) = v461;
  }

  if (objc_msgSend_containsProperty_(v13, v457, v458, v459, v460, 1494))
  {
    v466 = objc_msgSend_intValueForProperty_(v13, v462, v463, v464, v465, 1494) != 0;
    *(v12 + 24) |= 0x40000000u;
    *(v12 + 363) = v466;
  }

  if (objc_msgSend_containsProperty_(v13, v462, v463, v464, v465, 1495))
  {
    v471 = objc_msgSend_intValueForProperty_(v13, v467, v468, v469, v470, 1495) != 0;
    *(v12 + 24) |= 0x800u;
    *(v12 + 320) = v471;
  }

  if (objc_msgSend_containsProperty_(v13, v467, v468, v469, v470, 1496))
  {
    v476 = objc_msgSend_intValueForProperty_(v13, v472, v473, v474, v475, 1496) != 0;
    *(v12 + 24) |= 0x1000u;
    *(v12 + 321) = v476;
  }

  if (objc_msgSend_containsProperty_(v13, v472, v473, v474, v475, 1539))
  {
    v481 = objc_msgSend_intValueForProperty_(v13, v477, v478, v479, v480, 1539);
    *(v12 + 20) |= 0x2000u;
    *(v12 + 236) = v481;
  }

  if (objc_msgSend_containsProperty_(v13, v477, v478, v479, v480, 1540))
  {
    v486 = objc_msgSend_intValueForProperty_(v13, v482, v483, v484, v485, 1540);
    *(v12 + 20) |= 0x4000u;
    *(v12 + 240) = v486;
  }

  if (objc_msgSend_containsProperty_(v13, v482, v483, v484, v485, 1541))
  {
    v491 = objc_msgSend_intValueForProperty_(v13, v487, v488, v489, v490, 1541);
    *(v12 + 20) |= 0x8000u;
    *(v12 + 244) = v491;
  }

  if (objc_msgSend_containsProperty_(v13, v487, v488, v489, v490, 1542))
  {
    v496 = objc_msgSend_intValueForProperty_(v13, v492, v493, v494, v495, 1542);
    *(v12 + 20) |= 0x10000u;
    *(v12 + 248) = v496;
  }

  if (objc_msgSend_containsProperty_(v13, v492, v493, v494, v495, 1543))
  {
    v501 = objc_msgSend_intValueForProperty_(v13, v497, v498, v499, v500, 1543);
    *(v12 + 28) |= 1u;
    *(v12 + 368) = v501;
  }

  if (objc_msgSend_containsProperty_(v13, v497, v498, v499, v500, 1544))
  {
    v506 = objc_msgSend_intValueForProperty_(v13, v502, v503, v504, v505, 1544);
    *(v12 + 20) |= 0x20000u;
    *(v12 + 252) = v506;
  }

  if (objc_msgSend_containsProperty_(v13, v502, v503, v504, v505, 1545))
  {
    objc_msgSend_floatValueForProperty_(v13, v507, v508, v509, v510, 1545);
    *(v12 + 20) |= 0x40000u;
    *(v12 + 256) = LODWORD(v508);
  }

  if (objc_msgSend_containsProperty_(v13, v507, v508, v509, v510, 1546))
  {
    objc_msgSend_floatValueForProperty_(v13, v511, v512, v513, v514, 1546);
    *(v12 + 20) |= 0x80000u;
    *(v12 + 260) = LODWORD(v512);
  }

  if (objc_msgSend_containsProperty_(v13, v511, v512, v513, v514, 1547))
  {
    v519 = objc_msgSend_objectForProperty_(v13, v515, v516, v517, v518, 1547);
    *(v12 + 16) |= 1u;
    v520 = google::protobuf::internal::ArenaStringPtr::Mutable();
    objc_msgSend_tsch_saveToProtobufString_(v519, v521, v522, v523, v524, v520);
  }

  if (objc_msgSend_containsProperty_(v13, v515, v516, v517, v518, 1548))
  {
    v529 = objc_msgSend_intValueForProperty_(v13, v525, v526, v527, v528, 1548);
    *(v12 + 20) |= 0x100000u;
    *(v12 + 264) = v529;
  }

  if (objc_msgSend_containsProperty_(v13, v525, v526, v527, v528, 1549))
  {
    v534 = objc_msgSend_intValueForProperty_(v13, v530, v531, v532, v533, 1549);
    *(v12 + 20) |= 0x200000u;
    *(v12 + 268) = v534;
  }

  if (objc_msgSend_containsProperty_(v13, v530, v531, v532, v533, 1550))
  {
    objc_msgSend_floatValueForProperty_(v13, v535, v536, v537, v538, 1550);
    *(v12 + 20) |= 0x400000u;
    *(v12 + 272) = LODWORD(v536);
  }

  if (objc_msgSend_containsProperty_(v13, v535, v536, v537, v538, 1551))
  {
    objc_msgSend_floatValueForProperty_(v13, v539, v540, v541, v542, 1551);
    *(v12 + 20) |= 0x800000u;
    *(v12 + 276) = LODWORD(v540);
  }

  if (objc_msgSend_containsProperty_(v13, v539, v540, v541, v542, 1553))
  {
    v547 = objc_msgSend_intValueForProperty_(v13, v543, v544, v545, v546, 1553) != 0;
    *(v12 + 24) |= 0x2000u;
    *(v12 + 322) = v547;
  }

  if (objc_msgSend_containsProperty_(v13, v543, v544, v545, v546, 1554))
  {
    v552 = objc_msgSend_intValueForProperty_(v13, v548, v549, v550, v551, 1554) != 0;
    *(v12 + 24) |= 0x4000u;
    *(v12 + 323) = v552;
  }

  if (objc_msgSend_containsProperty_(v13, v548, v549, v550, v551, 1555))
  {
    v557 = objc_msgSend_intValueForProperty_(v13, v553, v554, v555, v556, 1555) != 0;
    *(v12 + 20) |= 0x1000000u;
    *(v12 + 280) = v557;
  }

  if (objc_msgSend_containsProperty_(v13, v553, v554, v555, v556, 1557))
  {
    v562 = objc_msgSend_intValueForProperty_(v13, v558, v559, v560, v561, 1557);
    *(v12 + 20) |= 0x2000000u;
    *(v12 + 284) = v562;
  }

  if (objc_msgSend_containsProperty_(v13, v558, v559, v560, v561, 1575))
  {
    v567 = objc_msgSend_intValueForProperty_(v13, v563, v564, v565, v566, 1575);
    *(v12 + 24) |= 1u;
    *(v12 + 300) = v567;
  }

  if (objc_msgSend_containsProperty_(v13, v563, v564, v565, v566, 1576))
  {
    v572 = objc_msgSend_intValueForProperty_(v13, v568, v569, v570, v571, 1576);
    *(v12 + 24) |= 0x20u;
    *(v12 + 308) = v572;
  }

  if (objc_msgSend_containsProperty_(v13, v568, v569, v570, v571, 1577))
  {
    objc_msgSend_floatValueForProperty_(v13, v573, v574, v575, v576, 1577);
    *(v12 + 20) |= 0x4000000u;
    *(v12 + 288) = LODWORD(v574);
  }

  if (objc_msgSend_containsProperty_(v13, v573, v574, v575, v576, 1578))
  {
    v581 = objc_msgSend_intValueForProperty_(v13, v577, v578, v579, v580, 1578);
    *(v12 + 20) |= 0x8000000u;
    *(v12 + 292) = v581;
  }

  v583 = sub_2762A7C10(1432, v13);
  if (v583)
  {
    *(v12 + 16) |= 0x20u;
    v587 = *(v12 + 80);
    if (!v587)
    {
      v588 = *(v12 + 8);
      if (v588)
      {
        v588 = *(v588 & 0xFFFFFFFFFFFFFFFELL);
      }

      v587 = MEMORY[0x277C97B00](v588);
      *(v12 + 80) = v587;
    }

    objc_msgSend_saveToArchive_archiver_(v583, v582, v584, v585, v586, v587, archiverCopy);
  }

  v590 = sub_2762A7C10(1433, v13);
  if (v590)
  {
    *(v12 + 16) |= 0x40u;
    v594 = *(v12 + 88);
    if (!v594)
    {
      v595 = *(v12 + 8);
      if (v595)
      {
        v595 = *(v595 & 0xFFFFFFFFFFFFFFFELL);
      }

      v594 = MEMORY[0x277C97B00](v595);
      *(v12 + 88) = v594;
    }

    objc_msgSend_saveToArchive_archiver_(v590, v589, v591, v592, v593, v594, archiverCopy);
  }

  v600 = objc_msgSend_objectLocale(self, v596, v597, v598, v599);
  v601 = sub_2762A7E78(1371, v13, v600);

  if (v601)
  {
    *(v12 + 16) |= 0x100u;
    v606 = *(v12 + 104);
    if (!v606)
    {
      v607 = *(v12 + 8);
      if (v607)
      {
        v607 = *(v607 & 0xFFFFFFFFFFFFFFFELL);
      }

      v606 = MEMORY[0x277C97B00](v607);
      *(v12 + 104) = v606;
    }

    objc_msgSend_saveToArchive_archiver_(v601, v602, v603, v604, v605, v606, archiverCopy);
  }

  google::protobuf::internal::ExtensionSet::SetBool((v9 + 16), TSCH::series_supports_custom_number_format, 8, 1, 0);
  google::protobuf::internal::ExtensionSet::SetBool((v9 + 16), TSCH::series_supports_custom_date_format, 8, 1, 0);
  google::protobuf::internal::ExtensionSet::SetBool((v9 + 16), TSCH::series_supports_callout_lines, 8, 1, 0);
}

- (void)loadFromPreUFFArchiveWithUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v9 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v5, v6, v7, v8, off_2812EE5D0[26]);

  if (*(v9 + 40))
  {
    v10 = *(v9 + 40);
  }

  else
  {
    v10 = MEMORY[0x277D80BD0];
  }

  v81.receiver = self;
  v81.super_class = TSCHChartSeriesNonStyle;
  [(TSCHChartSeriesNonStyle *)&v81 loadFromArchive:v10 unarchiver:unarchiverCopy];
  v12 = objc_alloc_init(MEMORY[0x277D80AB8]);
  v16 = *(v9 + 16);
  if ((v16 & 4) != 0)
  {
    v18 = objc_msgSend_instanceWithArchive_unarchiver_(TSCHDeprecatedNumberFormat, v11, v13, v14, v15, *(v9 + 48), unarchiverCopy);
    if (v18)
    {
      objc_msgSend_setObject_forProperty_(v12, v17, v19, v20, v21, v18, 1432);
    }

    v16 = *(v9 + 16);
  }

  if ((v16 & 0x200) != 0)
  {
    objc_msgSend_setIntValue_forProperty_(v12, v11, v13, v14, v15, *(v9 + 104), 1434);
    v16 = *(v9 + 16);
  }

  if ((v16 & 0x800) != 0)
  {
    objc_msgSend_setIntValue_forProperty_(v12, v11, v13, v14, v15, *(v9 + 112), 1479);
    v16 = *(v9 + 16);
  }

  if ((v16 & 0x400) != 0)
  {
    objc_msgSend_setIntValue_forProperty_(v12, v11, v13, v14, v15, *(v9 + 108), 1540);
    v16 = *(v9 + 16);
  }

  if ((v16 & 0x1000) != 0)
  {
    objc_msgSend_setIntValue_forProperty_(v12, v11, v13, v14, v15, *(v9 + 113), 1472);
    v16 = *(v9 + 16);
  }

  if ((v16 & 0x2000) != 0)
  {
    objc_msgSend_setIntValue_forProperty_(v12, v11, v13, v14, v15, *(v9 + 114), 1482);
    v16 = *(v9 + 16);
  }

  if ((v16 & 0x4000) != 0)
  {
    objc_msgSend_setIntValue_forProperty_(v12, v11, v13, v14, v15, *(v9 + 115), 1478);
    v16 = *(v9 + 16);
  }

  if ((v16 & 0x8000) != 0)
  {
    objc_msgSend_setIntValue_forProperty_(v12, v11, v13, v14, v15, *(v9 + 116), 1428);
    v16 = *(v9 + 16);
  }

  if ((v16 & 0x10000) != 0)
  {
    objc_msgSend_setIntValue_forProperty_(v12, v11, v13, v14, v15, *(v9 + 120), 1539);
    v16 = *(v9 + 16);
  }

  if ((v16 & 0x20000) != 0)
  {
    objc_msgSend_setIntValue_forProperty_(v12, v11, v13, v14, v15, *(v9 + 124), 1471);
    v16 = *(v9 + 16);
  }

  if ((v16 & 0x40000) != 0)
  {
    objc_msgSend_setIntValue_forProperty_(v12, v11, v13, v14, v15, *(v9 + 125), 1484);
    v16 = *(v9 + 16);
  }

  if ((v16 & 0x80000) != 0)
  {
    objc_msgSend_setIntValue_forProperty_(v12, v11, v13, v14, v15, *(v9 + 126), 1486);
    v16 = *(v9 + 16);
  }

  if ((v16 & 0x200000) != 0)
  {
    LODWORD(v13) = *(v9 + 128);
    objc_msgSend_setFloatValue_forProperty_(v12, v11, v13, v14, v15, 1577);
    v16 = *(v9 + 16);
  }

  if ((v16 & 0x100000) != 0)
  {
    objc_msgSend_setIntValue_forProperty_(v12, v11, v13, v14, v15, *(v9 + 127), 1481);
    v16 = *(v9 + 16);
  }

  if ((v16 & 8) != 0)
  {
    v23 = objc_msgSend_instanceWithArchive_unarchiver_(TSCHDeprecatedNumberFormat, v11, v13, v14, v15, *(v9 + 56), unarchiverCopy);
    if (v23)
    {
      objc_msgSend_setObject_forProperty_(v12, v22, v24, v25, v26, v23, 1433);
    }

    v16 = *(v9 + 16);
  }

  if ((v16 & 0x400000) != 0)
  {
    objc_msgSend_setIntValue_forProperty_(v12, v11, v13, v14, v15, *(v9 + 132), 1435);
    v16 = *(v9 + 16);
  }

  if ((v16 & 0x800000) != 0)
  {
    LODWORD(v13) = *(v9 + 136);
    objc_msgSend_setFloatValue_forProperty_(v12, v11, v13, v14, v15, 1418);
    v16 = *(v9 + 16);
  }

  if ((v16 & 0x4000000) != 0)
  {
    objc_msgSend_setIntValue_forProperty_(v12, v11, v13, v14, v15, *(v9 + 148), 1474);
    v16 = *(v9 + 16);
  }

  if ((v16 & 0x8000000) != 0)
  {
    objc_msgSend_setIntValue_forProperty_(v12, v11, v13, v14, v15, *(v9 + 149), 1473);
    v16 = *(v9 + 16);
  }

  if ((v16 & 0x1000000) != 0)
  {
    objc_msgSend_setIntValue_forProperty_(v12, v11, v13, v14, v15, *(v9 + 140), 1542);
    v16 = *(v9 + 16);
  }

  if ((v16 & 0x2000000) != 0)
  {
    objc_msgSend_setIntValue_forProperty_(v12, v11, v13, v14, v15, *(v9 + 144), 1541);
    v16 = *(v9 + 16);
  }

  if ((v16 & 0x10000000) != 0)
  {
    objc_msgSend_setIntValue_forProperty_(v12, v11, v13, v14, v15, *(v9 + 150), 1483);
    v16 = *(v9 + 16);
  }

  if ((v16 & 0x40000000) != 0)
  {
    objc_msgSend_setIntValue_forProperty_(v12, v11, v13, v14, v15, *(v9 + 152), 1429);
    v16 = *(v9 + 16);
  }

  if (v16 < 0)
  {
    objc_msgSend_setIntValue_forProperty_(v12, v11, v13, v14, v15, *(v9 + 156), 1578);
    if ((*(v9 + 16) & 0x20000000) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_58;
  }

  if ((v16 & 0x20000000) != 0)
  {
LABEL_58:
    objc_msgSend_setIntValue_forProperty_(v12, v11, v13, v14, v15, *(v9 + 151), 1469);
  }

LABEL_59:
  v27 = *(v9 + 20);
  if ((v27 & 4) != 0)
  {
    objc_msgSend_setIntValue_forProperty_(v12, v11, v13, v14, v15, *(v9 + 168), 1476);
    v27 = *(v9 + 20);
  }

  if (v27)
  {
    objc_msgSend_setIntValue_forProperty_(v12, v11, v13, v14, v15, *(v9 + 160), 1544);
    v27 = *(v9 + 20);
  }

  if ((v27 & 2) != 0)
  {
    objc_msgSend_setIntValue_forProperty_(v12, v11, v13, v14, v15, *(v9 + 164), 1431);
    v27 = *(v9 + 20);
  }

  if ((v27 & 8) != 0)
  {
    objc_msgSend_setIntValue_forProperty_(v12, v11, v13, v14, v15, *(v9 + 169), 1466);
  }

  if ((*(v9 + 16) & 0x10) != 0)
  {
    v29 = objc_msgSend_instanceWithArchive_unarchiver_(TSCHDeprecatedNumberFormat, v11, v13, v14, v15, *(v9 + 64), unarchiverCopy);
    if (v29)
    {
      objc_msgSend_setObject_forProperty_(v12, v28, v30, v31, v32, v29, 1444);
    }
  }

  v33 = *(v9 + 20);
  if ((v33 & 0x40) != 0)
  {
    objc_msgSend_setIntValue_forProperty_(v12, v11, v13, v14, v15, *(v9 + 172), 1445);
    v33 = *(v9 + 20);
  }

  if ((v33 & 0x80) != 0)
  {
    objc_msgSend_setIntValue_forProperty_(v12, v11, v13, v14, v15, *(v9 + 176), 1557);
    v33 = *(v9 + 20);
  }

  if ((v33 & 0x100) != 0)
  {
    objc_msgSend_setIntValue_forProperty_(v12, v11, v13, v14, v15, *(v9 + 180), 1548);
    v33 = *(v9 + 20);
  }

  if ((v33 & 0x200) != 0)
  {
    objc_msgSend_setIntValue_forProperty_(v12, v11, v13, v14, v15, *(v9 + 184), 1549);
    v33 = *(v9 + 20);
  }

  if ((v33 & 0x10) != 0)
  {
    objc_msgSend_setIntValue_forProperty_(v12, v11, v13, v14, v15, *(v9 + 170), 1554);
  }

  if (*(v9 + 16))
  {
    v34 = objc_alloc(MEMORY[0x277CCACA8]);
    v40 = objc_msgSend_tsp_initWithProtobufString_(v34, v35, v36, v37, v38, *(v9 + 32) & 0xFFFFFFFFFFFFFFFELL);
    if (v40)
    {
      objc_msgSend_setObject_forProperty_(v12, v39, v41, v42, v43, v40, 1547);
    }
  }

  v44 = *(v9 + 20);
  if ((v44 & 0x20) != 0)
  {
    objc_msgSend_setIntValue_forProperty_(v12, v11, v13, v14, v15, *(v9 + 171), 1553);
    v44 = *(v9 + 20);
  }

  if ((v44 & 0x100000) != 0)
  {
    objc_msgSend_setIntValue_forProperty_(v12, v11, v13, v14, v15, *(v9 + 228), 1555);
    v44 = *(v9 + 20);
  }

  if ((v44 & 0x400) != 0)
  {
    objc_msgSend_setIntValue_forProperty_(v12, v11, v13, v14, v15, *(v9 + 188), 1392);
    v44 = *(v9 + 20);
  }

  if ((v44 & 0x800) != 0)
  {
    objc_msgSend_setIntValue_forProperty_(v12, v11, v13, v14, v15, *(v9 + 192), 1393);
    v44 = *(v9 + 20);
  }

  if ((v44 & 0x1000) != 0)
  {
    objc_msgSend_setIntValue_forProperty_(v12, v11, v13, v14, v15, *(v9 + 196), 1401);
    v44 = *(v9 + 20);
  }

  if ((v44 & 0x2000) != 0)
  {
    objc_msgSend_setIntValue_forProperty_(v12, v11, v13, v14, v15, *(v9 + 200), 1402);
    v44 = *(v9 + 20);
  }

  if ((v44 & 0x4000) != 0)
  {
    LODWORD(v13) = *(v9 + 204);
    objc_msgSend_setFloatValue_forProperty_(v12, v11, v13, v14, v15, 1386);
    v44 = *(v9 + 20);
  }

  if ((v44 & 0x8000) != 0)
  {
    LODWORD(v13) = *(v9 + 208);
    objc_msgSend_setFloatValue_forProperty_(v12, v11, v13, v14, v15, 1387);
    v44 = *(v9 + 20);
  }

  if ((v44 & 0x10000) != 0)
  {
    LODWORD(v13) = *(v9 + 212);
    objc_msgSend_setFloatValue_forProperty_(v12, v11, v13, v14, v15, 1390);
    v44 = *(v9 + 20);
  }

  if ((v44 & 0x20000) != 0)
  {
    LODWORD(v13) = *(v9 + 216);
    objc_msgSend_setFloatValue_forProperty_(v12, v11, v13, v14, v15, 1391);
    v44 = *(v9 + 20);
  }

  if ((v44 & 0x40000) != 0)
  {
    LODWORD(v13) = *(v9 + 220);
    objc_msgSend_setFloatValue_forProperty_(v12, v11, v13, v14, v15, 1397);
    v44 = *(v9 + 20);
  }

  if ((v44 & 0x80000) != 0)
  {
    LODWORD(v13) = *(v9 + 224);
    objc_msgSend_setFloatValue_forProperty_(v12, v11, v13, v14, v15, 1398);
  }

  v45 = *(v9 + 16);
  if ((v45 & 0x20) != 0)
  {
    v47 = objc_msgSend_tsch_instanceWithArchive_unarchiver_(MEMORY[0x277CBEB18], v11, v13, v14, v15, *(v9 + 72), unarchiverCopy);
    if (v47)
    {
      objc_msgSend_setObject_forProperty_(v12, v46, v48, v49, v50, v47, 1384);
    }

    v45 = *(v9 + 16);
  }

  if ((v45 & 0x40) != 0)
  {
    v52 = objc_msgSend_tsch_instanceWithArchive_unarchiver_(MEMORY[0x277CBEB18], v11, v13, v14, v15, *(v9 + 80), unarchiverCopy);
    if (v52)
    {
      objc_msgSend_setObject_forProperty_(v12, v51, v53, v54, v55, v52, 1385);
    }

    v45 = *(v9 + 16);
  }

  if ((v45 & 0x80) != 0)
  {
    v57 = objc_msgSend_tsch_instanceWithArchive_unarchiver_(MEMORY[0x277CBEB18], v11, v13, v14, v15, *(v9 + 88), unarchiverCopy);
    if (v57)
    {
      objc_msgSend_setObject_forProperty_(v12, v56, v58, v59, v60, v57, 1382);
    }

    v45 = *(v9 + 16);
  }

  if ((v45 & 0x100) != 0)
  {
    v62 = objc_msgSend_tsch_instanceWithArchive_unarchiver_(MEMORY[0x277CBEB18], v11, v13, v14, v15, *(v9 + 96), unarchiverCopy);
    if (v62)
    {
      objc_msgSend_setObject_forProperty_(v12, v61, v63, v64, v65, v62, 1383);
    }
  }

  v66 = *(v9 + 20);
  if ((v66 & 0x1000000) != 0)
  {
    LODWORD(v13) = *(v9 + 232);
    objc_msgSend_setFloatValue_forProperty_(v12, v11, v13, v14, v15, 1545);
    v66 = *(v9 + 20);
  }

  if ((v66 & 0x2000000) != 0)
  {
    LODWORD(v13) = *(v9 + 236);
    objc_msgSend_setFloatValue_forProperty_(v12, v11, v13, v14, v15, 1546);
    v66 = *(v9 + 20);
  }

  if ((v66 & 0x4000000) != 0)
  {
    LODWORD(v13) = *(v9 + 240);
    objc_msgSend_setFloatValue_forProperty_(v12, v11, v13, v14, v15, 1550);
    v66 = *(v9 + 20);
  }

  if ((v66 & 0x8000000) != 0)
  {
    LODWORD(v13) = *(v9 + 244);
    objc_msgSend_setFloatValue_forProperty_(v12, v11, v13, v14, v15, 1551);
    v66 = *(v9 + 20);
  }

  if ((v66 & 0x200000) != 0)
  {
    objc_msgSend_setIntValue_forProperty_(v12, v11, v13, v14, v15, *(v9 + 229), 1477);
    v66 = *(v9 + 20);
  }

  if ((v66 & 0x400000) != 0)
  {
    objc_msgSend_setIntValue_forProperty_(v12, v11, v13, v14, v15, *(v9 + 230), 1462);
    v66 = *(v9 + 20);
  }

  if ((v66 & 0x800000) != 0)
  {
    objc_msgSend_setIntValue_forProperty_(v12, v11, v13, v14, v15, *(v9 + 231), 1463);
    v66 = *(v9 + 20);
  }

  if ((v66 & 0x10000000) != 0)
  {
    objc_msgSend_setIntValue_forProperty_(v12, v11, v13, v14, v15, *(v9 + 248), 1487);
    v66 = *(v9 + 20);
  }

  if ((v66 & 0x40000000) != 0)
  {
    objc_msgSend_setIntValue_forProperty_(v12, v11, v13, v14, v15, *(v9 + 256), 1480);
    v66 = *(v9 + 20);
  }

  if ((v66 & 0x20000000) != 0)
  {
    objc_msgSend_setIntValue_forProperty_(v12, v11, v13, v14, v15, *(v9 + 252), 1427);
    v66 = *(v9 + 20);
  }

  if (v66 < 0)
  {
    objc_msgSend_setIntValue_forProperty_(v12, v11, v13, v14, v15, *(v9 + 257), 1467);
  }

  if (*(v9 + 24))
  {
    LODWORD(v13) = *(v9 + 260);
    objc_msgSend_setFloatValue_forProperty_(v12, v11, v13, v14, v15, 1367);
  }

  v67 = *MEMORY[0x277D80AF0];
  objc_storeStrong((&self->super.super.super.super.isa + v67), v12);
  if (objc_msgSend_hasPreUFFVersion(unarchiverCopy, v68, v69, v70, v71))
  {
    v76 = objc_msgSend_preUFFVersion(unarchiverCopy, v72, v73, v74, v75);
    v80[0] = MEMORY[0x277D85DD0];
    v80[1] = 3221225472;
    v80[2] = sub_2762B6720;
    v80[3] = &unk_27A6B7688;
    v80[4] = self;
    v80[5] = v76;
    objc_msgSend_addFinalizeHandler_(unarchiverCopy, v77, COERCE_DOUBLE(3221225472), v78, v79, v80);
  }

  objc_msgSend_setIntValue_forProperty_(*(&self->super.super.super.super.isa + v67), v72, v73, v74, v75, 0, 1376);
}

- (void)upgradePreU2_0CustomFormatsForDocumentRoot:(id)root
{
  rootCopy = root;
  v8 = objc_msgSend_propertySetWithProperties_(MEMORY[0x277D80AC0], v4, v5, v6, v7, 1432, 1433, 1371, 0);
  objc_msgSend_updateForCollaborationForProperties_documentRoot_(self, v9, v10, v11, v12, v8, rootCopy);
}

- (int64_t)mixingTypeWithObject:(id)object context:(id)context
{
  v7 = MEMORY[0x277D81150];
  v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v4, v5, v6, "[TSCHChartSeriesNonStyle mixingTypeWithObject:context:]", context);
  v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v10, v11, v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartSeriesNonStyle.mm");
  v14 = objc_opt_class();
  v15 = NSStringFromClass(v14);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v16, v17, v18, v19, v8, v13, 370, 0, "%@ does not respond to %s", v15, "[TSCHChartSeriesNonStyle mixingTypeWithObject:context:]");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22, v23);
  return 1;
}

- (id)mixedObjectWithFraction:(double)fraction ofObject:(id)object
{
  v6 = MEMORY[0x277D81150];
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, fraction, v4, v5, "[TSCHChartSeriesNonStyle mixedObjectWithFraction:ofObject:]");
  v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v9, v10, v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartSeriesNonStyle.mm");
  v13 = objc_opt_class();
  v14 = NSStringFromClass(v13);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v15, v16, v17, v18, v7, v12, 376, 0, "%@ does not respond to %s", v14, "[TSCHChartSeriesNonStyle mixedObjectWithFraction:ofObject:]");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21, v22);
  return 0;
}

+ (id)properties
{
  if (qword_280A477A0 != -1)
  {
    sub_2764A7EA4();
  }

  v3 = qword_280A47798;

  return v3;
}

+ (id)imageFillProperties
{
  if (qword_280A477B0 != -1)
  {
    sub_2764A7EB8();
  }

  v3 = qword_280A477A8;

  return v3;
}

+ (int)defaultIntValueForProperty:(int)property
{
  v6 = *&property;
  if (qword_280A477C0 != -1)
  {
    sub_2764A7ECC();
  }

  if (qword_280A477B8 && objc_msgSend_containsProperty_(qword_280A477B8, a2, v3, v4, v5, v6))
  {
    v12 = qword_280A477B8;

    return objc_msgSend_intValueForProperty_(v12, v8, v9, v10, v11, v6);
  }

  result = 2;
  if (v6 > 1486)
  {
    if (v6 <= 1547)
    {
      if (v6 > 1540)
      {
        if (v6 > 1542)
        {
          if (v6 == 1543)
          {
            return 0;
          }

          if (v6 != 1544)
          {
            goto LABEL_49;
          }
        }

        else if (v6 == 1541)
        {
          return 0;
        }
      }

      else if (v6 > 1538)
      {
        if (v6 == 1539)
        {
          return 0;
        }
      }

      else
      {
        if (v6 == 1487)
        {
          return 0;
        }

        if (v6 != 1491)
        {
          goto LABEL_49;
        }
      }

      return 1;
    }

    if (v6 > 1556)
    {
      if (v6 > 1575)
      {
        if (v6 == 1576)
        {
          return result;
        }

        if (v6 == 1578)
        {
          return 0x80000000;
        }

LABEL_49:
        v14.receiver = self;
        v14.super_class = &OBJC_METACLASS___TSCHChartSeriesNonStyle;
        return objc_msgSendSuper2(&v14, sel_defaultIntValueForProperty_, v6);
      }

      if (v6 != 1557)
      {
        if (v6 == 1575)
        {
          return 4;
        }

        goto LABEL_49;
      }
    }

    else if (v6 > 1553)
    {
      if (v6 != 1554 && v6 != 1555)
      {
        goto LABEL_49;
      }
    }

    else
    {
      if ((v6 - 1548) < 2)
      {
        return result;
      }

      if (v6 != 1553)
      {
        goto LABEL_49;
      }
    }

    return 0;
  }

  if (v6 <= 1400)
  {
    if (v6 == 1376)
    {
      return result;
    }

    if (v6 != 1392 && v6 != 1393)
    {
      goto LABEL_49;
    }

    return 0;
  }

  switch(v6)
  {
    case 1427:
    case 1431:
    case 1462:
    case 1463:
    case 1466:
    case 1467:
    case 1468:
    case 1469:
    case 1470:
    case 1471:
    case 1472:
    case 1473:
    case 1474:
    case 1475:
    case 1477:
    case 1481:
      return 0;
    case 1428:
    case 1429:
    case 1430:
    case 1465:
    case 1476:
      return 1;
    case 1432:
    case 1433:
    case 1435:
    case 1436:
    case 1437:
    case 1438:
    case 1439:
    case 1440:
    case 1441:
    case 1442:
    case 1443:
    case 1444:
    case 1446:
    case 1447:
    case 1448:
    case 1449:
    case 1450:
    case 1451:
    case 1452:
    case 1453:
    case 1454:
    case 1455:
    case 1456:
    case 1457:
    case 1458:
    case 1459:
    case 1460:
    case 1461:
    case 1464:
    case 1478:
    case 1479:
    case 1480:
      goto LABEL_49;
    case 1434:
      return result;
    case 1445:
      result = -1;
      break;
    default:
      if (v6 == 1401 || v6 == 1402)
      {
        return 1;
      }

      goto LABEL_49;
  }

  return result;
}

+ (float)defaultFloatValueForProperty:(int)property
{
  v6 = *&property;
  if (qword_280A477D0 != -1)
  {
    sub_2764A7EE0();
  }

  if (qword_280A477C8 && objc_msgSend_containsProperty_(qword_280A477C8, a2, v3, v4, v5, v6))
  {
    v8 = qword_280A477C8;

    objc_msgSend_floatValueForProperty_(v8, a2, v3, v4, v5, v6);
    return *&v3;
  }

  LODWORD(v3) = 1.0;
  if (v6 <= 1396)
  {
    if (v6 > 1386)
    {
      if (v6 != 1387)
      {
        if (v6 == 1390 || v6 == 1391)
        {
          LODWORD(v3) = 5.0;
          return *&v3;
        }

        goto LABEL_35;
      }
    }

    else
    {
      if (v6 == 1366)
      {
        goto LABEL_31;
      }

      if (v6 == 1367)
      {
        return *&v3;
      }

      if (v6 != 1386)
      {
LABEL_35:
        v10.receiver = self;
        v10.super_class = &OBJC_METACLASS___TSCHChartSeriesNonStyle;
        objc_msgSendSuper2(&v10, sel_defaultFloatValueForProperty_, v6, v3);
        return *&v3;
      }
    }

    LODWORD(v3) = 10.0;
    return *&v3;
  }

  if (v6 > 1545)
  {
    if (v6 <= 1550)
    {
      if (v6 != 1546 && v6 != 1550)
      {
        goto LABEL_35;
      }

      goto LABEL_30;
    }

    if (v6 == 1551)
    {
      goto LABEL_30;
    }

    if (v6 == 1577)
    {
      LODWORD(v3) = 0;
      return *&v3;
    }

    goto LABEL_35;
  }

  if ((v6 - 1397) < 2)
  {
    return *&v3;
  }

  if (v6 != 1418)
  {
    if (v6 != 1545)
    {
      goto LABEL_35;
    }

LABEL_30:
    LODWORD(v3) = -1.0;
    return *&v3;
  }

LABEL_31:

  objc_msgSend_defaultPieLabelExplosionPercentage(TSCHStyleUtilities, a2, v3, v4, v5);
  return *&v3;
}

+ (id)defaultValueForProperty:(int)property
{
  v6 = *&property;
  if (qword_280A477E0 != -1)
  {
    sub_2764A7EF4();
  }

  if (!qword_280A477D8 || !objc_msgSend_containsProperty_(qword_280A477D8, a2, v3, v4, v5, v6))
  {
    if (v6 > 1381)
    {
      v9 = 0;
      if (v6 <= 1431)
      {
        if ((v6 - 1382) < 4)
        {
          goto LABEL_27;
        }

        goto LABEL_25;
      }

      if (v6 != 1432)
      {
        if (v6 == 1444)
        {
          v8 = objc_msgSend_stackedPercentageNumberFormat(TSCHChartSeries, a2, v3, v4, v5);
          goto LABEL_26;
        }

        if (v6 == 1547)
        {
          goto LABEL_27;
        }

LABEL_25:
        v21.receiver = self;
        v21.super_class = &OBJC_METACLASS___TSCHChartSeriesNonStyle;
        v8 = objc_msgSendSuper2(&v21, sel_defaultValueForProperty_, v6);
        goto LABEL_26;
      }

LABEL_23:
      v8 = objc_msgSend_defaultNumberFormat(TSCHChartSeries, a2, v3, v4, v5);
      goto LABEL_26;
    }

    if (v6 > 1370)
    {
      if (v6 != 1371)
      {
        if (v6 != 1372)
        {
          goto LABEL_25;
        }

        v10 = objc_msgSend_currentLocale(MEMORY[0x277D81228], a2, v3, v4, v5);
        v15 = objc_msgSend_defaultDurationFormat_(TSCHTimeBasedFormat, v11, v12, v13, v14, v10);
LABEL_22:
        v9 = v15;

        goto LABEL_27;
      }
    }

    else if (v6 != 1363)
    {
      if (v6 != 1364)
      {
        goto LABEL_25;
      }

      goto LABEL_23;
    }

    v10 = objc_msgSend_currentLocale(MEMORY[0x277D81228], a2, v3, v4, v5);
    v15 = objc_msgSend_defaultDateFormat_(TSCHTimeBasedFormat, v16, v17, v18, v19, v10);
    goto LABEL_22;
  }

  v8 = objc_msgSend_objectForProperty_(qword_280A477D8, a2, v3, v4, v5, v6);
LABEL_26:
  v9 = v8;
LABEL_27:

  return v9;
}

+ (int)muxDefaultPropertyForSpecificProperty:(int)property
{
  if (qword_280A477F0 != -1)
  {
    sub_2764A7F08();
  }

  result = objc_msgSend_containsKey_(qword_280A477E8, a2, v3, v4, v5, property);
  if (result)
  {
    return objc_msgSend_intForKey_(qword_280A477E8, v8, v9, v10, v11, property);
  }

  return result;
}

@end