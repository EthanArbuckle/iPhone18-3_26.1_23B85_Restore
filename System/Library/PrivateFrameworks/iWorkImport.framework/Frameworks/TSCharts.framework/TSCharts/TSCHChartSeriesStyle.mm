@interface TSCHChartSeriesStyle
+ (float)defaultFloatValueForProperty:(int)property;
+ (id)bootstrappedSeriesStyleWithContext:(id)context seriesIndex:(unint64_t)index presetIndex:(unint64_t)presetIndex;
+ (id)defaultStyleWithContext:(id)context;
+ (id)defaultValueForProperty:(int)property;
+ (id)getURLForImage:(id)image;
+ (id)identifierForRoleIndex:(unint64_t)index ordinal:(unint64_t)ordinal;
+ (id)imageFillProperties;
+ (id)properties;
+ (int)defaultIntValueForProperty:(int)property;
+ (int)muxDefaultPropertyForSpecificProperty:(int)property;
- (TSCHChartSeriesStyle)initWithContext:(id)context name:(id)name overridePropertyMap:(id)map isVariation:(BOOL)variation;
- (id)mixedObjectWithFraction:(double)fraction ofObject:(id)object;
- (int64_t)mixingTypeWithObject:(id)object context:(id)context;
- (void)handlePreUFFUpgradesForOverridePropertyMapWithUnarchiver:(id)unarchiver;
- (void)loadFromPreUFFArchiveWithUnarchiver:(id)unarchiver;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)p_upgrade3DChartProperties:(id)properties;
- (void)p_upgrade3DFillSubclassTSDFill:(id)fill;
- (void)p_upgradeBubbleChartProperties:(id)properties;
- (void)p_upgradeMixedChartProperties:(id)properties;
- (void)p_upgradeRadarChartProperties:(id)properties;
- (void)p_upgradeRemoveShadowEnabledPropertyUsage:(id)usage;
- (void)p_upgradeSeparateVisibilityProperties:(id)properties;
- (void)saveToArchiver:(id)archiver;
@end

@implementation TSCHChartSeriesStyle

+ (id)defaultStyleWithContext:(id)context
{
  contextCopy = context;
  v4 = objc_alloc(objc_opt_class());
  isVariation = objc_msgSend_initWithContext_name_overridePropertyMap_isVariation_(v4, v5, v6, v7, v8, contextCopy, 0, 0, 0);

  return isVariation;
}

+ (id)identifierForRoleIndex:(unint64_t)index ordinal:(unint64_t)ordinal
{
  v7 = objc_msgSend_presetStyleDescriptorForOrdinal_(self, a2, v4, v5, v6, ordinal);
  v8 = String();

  return v8;
}

- (TSCHChartSeriesStyle)initWithContext:(id)context name:(id)name overridePropertyMap:(id)map isVariation:(BOOL)variation
{
  v7.receiver = self;
  v7.super_class = TSCHChartSeriesStyle;
  return [(TSCHChartSeriesStyle *)&v7 initWithContext:context name:name overridePropertyMap:map isVariation:variation];
}

+ (id)getURLForImage:(id)image
{
  imageCopy = image;
  v7 = sub_276360774(v4, v5, v6);
  v12 = objc_msgSend_URLForResource_withExtension_(v7, v8, v9, v10, v11, imageCopy, 0);

  return v12;
}

- (void)p_upgradeMixedChartProperties:(id)properties
{
  propertiesCopy = properties;
  sub_2762CD5BC(1566, 1569, propertiesCopy);
  sub_2762CD5BC(1500, 1503, propertiesCopy);
  sub_2762CD5BC(1455, 1458, propertiesCopy);
  sub_2762CD5BC(1527, 1529, propertiesCopy);
  sub_2762CD5BC(1509, 1511, propertiesCopy);
  sub_2762CD5BC(1534, 1536, propertiesCopy);
  sub_2762CD5BC(1521, 1523, propertiesCopy);
  sub_2762CD5BC(1515, 1517, propertiesCopy);
  sub_2762CD5BC(1562, 1567, propertiesCopy);
  sub_2762CD5BC(1408, 1412, propertiesCopy);
  sub_2762CD5BC(1497, 1501, propertiesCopy);
  sub_2762CD5BC(1451, 1456, propertiesCopy);
  sub_2762CD5BC(1526, 1528, propertiesCopy);
  sub_2762CD5BC(1507, 1510, propertiesCopy);
  sub_2762CD5BC(1532, 1535, propertiesCopy);
  sub_2762CD5BC(1519, 1522, propertiesCopy);
  sub_2762CD5BC(1514, 1516, propertiesCopy);
  sub_2762CD5BC(1409, 1413, propertiesCopy);
  sub_2762CD5BC(1498, 1502, propertiesCopy);
  sub_2762CD5BC(1452, 1457, propertiesCopy);
  sub_2762CD5BC(1563, 1568, propertiesCopy);
  sub_2762CD5BC(1420, 1424, propertiesCopy);
  sub_2762CD5BC(1438, 1441, propertiesCopy);
}

- (void)p_upgradeRadarChartProperties:(id)properties
{
  propertiesCopy = properties;
  sub_2762CD5BC(1562, 1570, propertiesCopy);
  sub_2762CD5BC(1408, 1415, propertiesCopy);
  sub_2762CD5BC(1497, 1505, propertiesCopy);
  sub_2762CD5BC(1451, 1460, propertiesCopy);
  sub_2762CD5BC(1527, 1530, propertiesCopy);
  sub_2762CD5BC(1509, 1512, propertiesCopy);
  sub_2762CD5BC(1534, 1537, propertiesCopy);
  sub_2762CD5BC(1521, 1524, propertiesCopy);
  sub_2762CD5BC(1515, 1518, propertiesCopy);
  sub_2762CD5BC(1500, 1505, propertiesCopy);
  objc_msgSend_setIntValue_forProperty_(propertiesCopy, v3, v4, v5, v6, 1, 1417);
  LODWORD(v7) = 1041865114;
  objc_msgSend_setFloatValue_forProperty_(propertiesCopy, v8, v7, v9, v10, 1416);
  sub_2762CD5BC(1423, 1426, propertiesCopy);
  sub_2762CD5BC(1423, 1443, propertiesCopy);
}

- (void)p_upgradeSeparateVisibilityProperties:(id)properties
{
  propertiesCopy = properties;
  sub_2762CD65C(1431, 1466, 0, propertiesCopy);
  sub_2762CD6F8(propertiesCopy);
  sub_2762CD70C(propertiesCopy);
  sub_2762CD65C(1540, 1472, 0, propertiesCopy);
  sub_2762CD65C(1539, 1471, 0, propertiesCopy);
  sub_2762CD65C(1542, 1474, 0, propertiesCopy);
  sub_2762CD65C(1541, 1473, 0, propertiesCopy);
  sub_2762CD65C(1544, 1476, 0, propertiesCopy);
}

- (void)p_upgradeBubbleChartProperties:(id)properties
{
  propertiesCopy = properties;
  sub_2762CD5BC(1408, 1508, propertiesCopy);
  sub_2762CD5BC(1506, 1499, propertiesCopy);
  sub_2762CD5BC(1562, 1564, propertiesCopy);
  sub_2762CD5BC(1461, 1453, propertiesCopy);
  sub_2762CD5BC(1521, 1520, propertiesCopy);
}

- (void)p_upgrade3DChartProperties:(id)properties
{
  propertiesCopy = properties;
  sub_2762BC9AC(1410, 1405, propertiesCopy);
  sub_2762BC9AC(1409, 1404, propertiesCopy);
  sub_2762BC9AC(1408, 1406, propertiesCopy);
  sub_2762BC9AC(1408, 1403, propertiesCopy);
  sub_2762BC9AC(1414, 1407, propertiesCopy);
}

- (void)p_upgradeRemoveShadowEnabledPropertyUsage:(id)usage
{
  usageCopy = usage;
  v7 = objc_msgSend_propertySetWithProperties_(MEMORY[0x277D80AC0], v3, v4, v5, v6, 1459, 1452, 1451, 1461, 1458, 1456, 1457, 1455, 1454, 1447, 1448, 1449, 1446, 1450, 1552, 1394, 0);
  objc_msgSend_upgradeShadowProperties_inMap_(TSCHStyleUtilities, v8, v9, v10, v11, v7, usageCopy);
}

- (void)p_upgrade3DFillSubclassTSDFill:(id)fill
{
  fillCopy = fill;
  objc_msgSend_removeValueForProperty_(fillCopy, v3, v4, v5, v6, 1622);
  sub_2762BCBE8(1621, 1405, fillCopy);
  sub_2762BCBE8(1620, 1404, fillCopy);
  sub_2762BCBE8(1623, 1406, fillCopy);
  sub_2762BCBE8(1619, 1403, fillCopy);
  sub_2762BCBE8(1624, 1407, fillCopy);
}

+ (id)bootstrappedSeriesStyleWithContext:(id)context seriesIndex:(unint64_t)index presetIndex:(unint64_t)presetIndex
{
  contextCopy = context;
  v12 = objc_msgSend_defaultStyleWithContext_(self, v8, v9, v10, v11, contextCopy);
  v13 = index % 6;
  v175[0] = MEMORY[0x277D85DD0];
  v175[1] = 3221225472;
  v175[2] = sub_2762BD6F0;
  v175[3] = &unk_27A6B7720;
  v175[4] = 0;
  v14 = MEMORY[0x277C98B30](v175);
  v15 = v14;
  v16 = MEMORY[0x277D81180];
  v17 = *(v14 + 16);
  if ((index % 6) > 2)
  {
    if (v13 != 3)
    {
      if (v13 == 4)
      {
        v33 = v17(v14, 111);
        v34 = v15[2](v15, 61);
        v35 = v15[2](v15, 121);
        v22 = objc_msgSend_colorWithRed_green_blue_alpha_(v16, v36, v33, v34, v35, 1.0);
        v23 = MEMORY[0x277D801F8];
        v24 = v15[2](v15, 111);
        v25 = v15[2](v15, 61);
        v27 = v15[2](v15, 121);
      }

      else
      {
        v59 = v17(v14, 125);
        v60 = v15[2](v15, 128);
        v61 = v15[2](v15, 127);
        v22 = objc_msgSend_colorWithRed_green_blue_alpha_(v16, v62, v59, v60, v61, 1.0);
        v23 = MEMORY[0x277D801F8];
        v24 = v15[2](v15, 125);
        v25 = v15[2](v15, 128);
        v27 = v15[2](v15, 127);
      }

      goto LABEL_5;
    }

    v46 = v17(v14, 188);
    v47 = v15[2](v15, 45);
    v48 = v15[2](v15, 48);
    v22 = objc_msgSend_colorWithRed_green_blue_alpha_(v16, v49, v46, v47, v48, 1.0);
    v50 = MEMORY[0x277D801F8];
    v51 = v15[2](v15, 188);
    v52 = v15[2](v15, 45);
    v53 = v15[2](v15, 48);
    v28 = objc_msgSend_colorWithRed_green_blue_alpha_(v50, v54, v51, v52, v53, 1.0);
  }

  else
  {
    if (v13)
    {
      if (v13 == 1)
      {
        v18 = v17(v14, 93);
        v19 = v15[2](v15, 150);
        v20 = v15[2](v15, 72);
        v22 = objc_msgSend_colorWithRed_green_blue_alpha_(v16, v21, v18, v19, v20, 1.0);
        v23 = MEMORY[0x277D801F8];
        v24 = v15[2](v15, 93);
        v25 = v15[2](v15, 150);
        v27 = v15[2](v15, 72);
      }

      else
      {
        v55 = v17(v14, 231);
        v56 = v15[2](v15, 161);
        v57 = v15[2](v15, 61);
        v22 = objc_msgSend_colorWithRed_green_blue_alpha_(v16, v58, v55, v56, v57, 1.0);
        v23 = MEMORY[0x277D801F8];
        v24 = v15[2](v15, 231);
        v25 = v15[2](v15, 161);
        v27 = v15[2](v15, 61);
      }

LABEL_5:
      v28 = objc_msgSend_colorWithRed_green_blue_alpha_(v23, v26, v24, v25, v27, 1.0);
      goto LABEL_13;
    }

    v37 = v17(v14, 46);
    v38 = v15[2](v15, 87);
    v39 = v15[2](v15, 140);
    v22 = objc_msgSend_colorWithRed_green_blue_alpha_(v16, v40, v37, v38, v39, 1.0);
    v41 = MEMORY[0x277D801F8];
    v42 = v15[2](v15, 46);
    v43 = v15[2](v15, 87);
    v44 = v15[2](v15, 140);
    v28 = objc_msgSend_colorWithRed_green_blue_alpha_(v41, v45, v42, v43, v44, 1.0);
  }

LABEL_13:
  v63 = v28;
  v64 = v22;
  if (v22)
  {
    if (v28)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v65 = MEMORY[0x277D81150];
    v66 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, v30, v31, v32, "+[TSCHChartSeriesStyle bootstrappedSeriesStyleWithContext:seriesIndex:presetIndex:]");
    v71 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v67, v68, v69, v70, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartSeriesStyle.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v65, v72, v73, v74, v75, v66, v71, 309, 0, "Did not handle setIndex %zi", v13);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v76, v77, v78, v79);
    v64 = objc_msgSend_blackColor(MEMORY[0x277D81180], v80, v81, v82, v83);
    if (v63)
    {
      goto LABEL_18;
    }
  }

  v84 = MEMORY[0x277D81150];
  v85 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, v30, v31, v32, "+[TSCHChartSeriesStyle bootstrappedSeriesStyleWithContext:seriesIndex:presetIndex:]");
  v90 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v86, v87, v88, v89, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartSeriesStyle.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v84, v91, v92, v93, v94, v85, v90, 314, 0, "Did not handle setIndex %zi", v13);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v95, v96, v97, v98);
  v63 = objc_msgSend_blackColor(MEMORY[0x277D801F8], v99, v100, v101, v102);
LABEL_18:
  v103 = objc_msgSend_strokeWithColor_width_(MEMORY[0x277D803C0], v29, 2.0, v31, v32, v64);
  objc_msgSend_setValue_forProperty_(v12, v104, v105, v106, v107, v103, 1500);

  v112 = objc_msgSend_whiteColor(MEMORY[0x277D801F8], v108, v109, v110, v111);
  objc_msgSend_setValue_forProperty_(v12, v113, v114, v115, v116, v112, 1509);

  v120 = objc_msgSend_strokeWithColor_width_(MEMORY[0x277D803C0], v117, 2.0, v118, v119, v64);
  objc_msgSend_setValue_forProperty_(v12, v121, v122, v123, v124, v120, 1534);

  v125 = MEMORY[0x277D801B0];
  v127 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D81180], v126, 1.0, 1.0, 1.0, 1.0);
  v132 = objc_msgSend_linearGradientWithStartColor_endColor_(v125, v128, v129, v130, v131, v127, v64);
  objc_msgSend_setValue_forProperty_(v12, v133, v134, v135, v136, v132, 1408);

  objc_msgSend_setValue_forProperty_(v12, v137, v138, v139, v140, v63, 1507);
  v144 = objc_msgSend_strokeWithColor_width_(MEMORY[0x277D803C0], v141, 1.0, v142, v143, v64);
  objc_msgSend_setValue_forProperty_(v12, v145, v146, v147, v148, v144, 1506);

  v152 = objc_msgSend_strokeWithColor_width_(MEMORY[0x277D803C0], v149, 2.0, v150, v151, v64);
  objc_msgSend_setValue_forProperty_(v12, v153, v154, v155, v156, v152, 1538);

  v161 = objc_msgSend_whiteColor(MEMORY[0x277D801F8], v157, v158, v159, v160);
  objc_msgSend_setValue_forProperty_(v12, v162, v163, v164, v165, v161, 1513);

  objc_msgSend_setValue_forProperty_(v12, v166, v167, v168, v169, v63, 1411);
  objc_msgSend_setIntValue_forProperty_(v12, v170, v171, v172, v173, 5, 1565);

  return v12;
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  if (objc_msgSend_messageType(unarchiverCopy, v5, v6, v7, v8) == 5011)
  {
    objc_msgSend_loadFromPreUFFArchiveWithUnarchiver_(self, v9, v10, v11, v12, unarchiverCopy);
  }

  else
  {
    v13 = unarchiverCopy;
    google::protobuf::internal::AssignDescriptors();
    v18 = objc_msgSend_messageWithDescriptor_(v13, v14, v15, v16, v17, off_2812ED2B8[20]);

    if ((*(v18 + 40) & 1) == 0)
    {
      v23 = MEMORY[0x277D81150];
      v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, v20, v21, v22, "[TSCHChartSeriesStyle loadFromUnarchiver:]");
      v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, v26, v27, v28, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartSeriesStyle.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v23, v30, v31, v32, v33, v24, v29, 362, 0, "Missing superclass message");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v34, v35, v36, v37);
    }

    if (*(v18 + 48))
    {
      v38 = *(v18 + 48);
    }

    else
    {
      v38 = MEMORY[0x277D80BD0];
    }

    v411.receiver = self;
    v411.super_class = TSCHChartSeriesStyle;
    [(TSCHChartSeriesStyle *)&v411 loadFromArchive:v38 unarchiver:v13];
    if ((google::protobuf::internal::ExtensionSet::Has((v18 + 16)) & 1) == 0)
    {
      v43 = MEMORY[0x277D81150];
      v44 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v39, v40, v41, v42, "[TSCHChartSeriesStyle loadFromUnarchiver:]");
      v49 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v45, v46, v47, v48, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartSeriesStyle.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v43, v50, v51, v52, v53, v44, v49, 366, 0, "Protobuf missing expected extension");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v54, v55, v56, v57);
    }

    Message = google::protobuf::internal::ExtensionSet::GetMessage();
    v60 = objc_alloc_init(MEMORY[0x277D80AB8]);
    v64 = *(Message + 20);
    if ((v64 & 0x2000000) != 0)
    {
      v66 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D80308], v59, v61, v62, v63, *(Message + 496), v13);
      if (v66)
      {
        objc_msgSend_setObject_forProperty_(v60, v65, v67, v68, v69, v66, 1368);
      }

      v64 = *(Message + 20);
    }

    if ((v64 & 0x1000000) != 0)
    {
      v71 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D80308], v59, v61, v62, v63, *(Message + 488), v13);
      if (v71)
      {
        objc_msgSend_setObject_forProperty_(v60, v70, v72, v73, v74, v71, 1369);
      }

      v64 = *(Message + 20);
    }

    if ((v64 & 0x800000) != 0)
    {
      v76 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v59, v61, v62, v63, *(Message + 480), v13);
      if (v76)
      {
        objc_msgSend_setObject_forProperty_(v60, v75, v77, v78, v79, v76, 1370);
      }
    }

    v80 = *(Message + 16);
    if (v80)
    {
      v82 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D80308], v59, v61, v62, v63, *(Message + 40), v13);
      if (v82)
      {
        objc_msgSend_setObject_forProperty_(v60, v81, v83, v84, v85, v82, 1388);
      }

      v80 = *(Message + 16);
    }

    if ((v80 & 2) != 0)
    {
      v87 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D80308], v59, v61, v62, v63, *(Message + 48), v13);
      if (v87)
      {
        objc_msgSend_setObject_forProperty_(v60, v86, v88, v89, v90, v87, 1389);
      }

      v80 = *(Message + 16);
    }

    if ((v80 & 4) != 0)
    {
      v92 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803A8], v59, v61, v62, v63, *(Message + 56), v13);
      if (v92)
      {
        objc_msgSend_setObject_forProperty_(v60, v91, v93, v94, v95, v92, 1394);
      }
    }

    v96 = *(Message + 28);
    if ((v96 & 0x1000) != 0)
    {
      objc_msgSend_setIntValue_forProperty_(v60, v59, v61, v62, v63, *(Message + 688), 1395);
      v96 = *(Message + 28);
    }

    if ((v96 & 0x2000) != 0)
    {
      objc_msgSend_setIntValue_forProperty_(v60, v59, v61, v62, v63, *(Message + 692), 1396);
    }

    v97 = *(Message + 16);
    if ((v97 & 8) != 0)
    {
      v99 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v59, v61, v62, v63, *(Message + 64), v13);
      if (v99)
      {
        objc_msgSend_setObject_forProperty_(v60, v98, v100, v101, v102, v99, 1399);
      }

      v97 = *(Message + 16);
    }

    if ((v97 & 0x10) != 0)
    {
      v104 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v59, v61, v62, v63, *(Message + 72), v13);
      if (v104)
      {
        objc_msgSend_setObject_forProperty_(v60, v103, v105, v106, v107, v104, 1400);
      }

      v97 = *(Message + 16);
    }

    if ((v97 & 0x20) != 0)
    {
      v109 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D80248], v59, v61, v62, v63, *(Message + 80), v13);
      if (v109)
      {
        objc_msgSend_setObject_forProperty_(v60, v108, v110, v111, v112, v109, 1403);
      }

      v97 = *(Message + 16);
    }

    if ((v97 & 0x40) != 0)
    {
      v114 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D80248], v59, v61, v62, v63, *(Message + 88), v13);
      if (v114)
      {
        objc_msgSend_setObject_forProperty_(v60, v113, v115, v116, v117, v114, 1404);
      }

      v97 = *(Message + 16);
    }

    if ((v97 & 0x80) != 0)
    {
      v119 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D80248], v59, v61, v62, v63, *(Message + 96), v13);
      if (v119)
      {
        objc_msgSend_setObject_forProperty_(v60, v118, v120, v121, v122, v119, 1405);
      }

      v97 = *(Message + 16);
    }

    if ((v97 & 0x100) != 0)
    {
      v124 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D80248], v59, v61, v62, v63, *(Message + 104), v13);
      if (v124)
      {
        objc_msgSend_setObject_forProperty_(v60, v123, v125, v126, v127, v124, 1406);
      }

      v97 = *(Message + 16);
    }

    if ((v97 & 0x200) != 0)
    {
      v129 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D80248], v59, v61, v62, v63, *(Message + 112), v13);
      if (v129)
      {
        objc_msgSend_setObject_forProperty_(v60, v128, v130, v131, v132, v129, 1407);
      }

      v97 = *(Message + 16);
    }

    if ((v97 & 0x400) != 0)
    {
      v134 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D80248], v59, v61, v62, v63, *(Message + 120), v13);
      if (v134)
      {
        objc_msgSend_setObject_forProperty_(v60, v133, v135, v136, v137, v134, 1408);
      }

      v97 = *(Message + 16);
    }

    if ((v97 & 0x800) != 0)
    {
      v139 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D80248], v59, v61, v62, v63, *(Message + 128), v13);
      if (v139)
      {
        objc_msgSend_setObject_forProperty_(v60, v138, v140, v141, v142, v139, 1409);
      }

      v97 = *(Message + 16);
    }

    if ((v97 & 0x1000) != 0)
    {
      v144 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D80248], v59, v61, v62, v63, *(Message + 136), v13);
      if (v144)
      {
        objc_msgSend_setObject_forProperty_(v60, v143, v145, v146, v147, v144, 1410);
      }

      v97 = *(Message + 16);
    }

    if ((v97 & 0x2000) != 0)
    {
      v149 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D80248], v59, v61, v62, v63, *(Message + 144), v13);
      if (v149)
      {
        objc_msgSend_setObject_forProperty_(v60, v148, v150, v151, v152, v149, 1411);
      }

      v97 = *(Message + 16);
    }

    if ((v97 & 0x4000) != 0)
    {
      v154 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D80248], v59, v61, v62, v63, *(Message + 152), v13);
      if (v154)
      {
        objc_msgSend_setObject_forProperty_(v60, v153, v155, v156, v157, v154, 1412);
      }

      v97 = *(Message + 16);
    }

    if ((v97 & 0x8000) != 0)
    {
      v159 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D80248], v59, v61, v62, v63, *(Message + 160), v13);
      if (v159)
      {
        objc_msgSend_setObject_forProperty_(v60, v158, v160, v161, v162, v159, 1413);
      }

      v97 = *(Message + 16);
    }

    if ((v97 & 0x10000) != 0)
    {
      v164 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D80248], v59, v61, v62, v63, *(Message + 168), v13);
      if (v164)
      {
        objc_msgSend_setObject_forProperty_(v60, v163, v165, v166, v167, v164, 1414);
      }
    }

    if ((*(Message + 23) & 4) != 0)
    {
      v169 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D80248], v59, v61, v62, v63, *(Message + 504), v13);
      if (v169)
      {
        objc_msgSend_setObject_forProperty_(v60, v168, v170, v171, v172, v169, 1415);
      }
    }

    if ((*(Message + 30) & 0x20) != 0)
    {
      LODWORD(v61) = *(Message + 724);
      objc_msgSend_setFloatValue_forProperty_(v60, v59, v61, v62, v63, 1416);
    }

    if ((*(Message + 24) & 0x80000000) != 0)
    {
      objc_msgSend_setIntValue_forProperty_(v60, v59, v61, v62, v63, *(Message + 660), 1417);
    }

    if ((*(Message + 20) & 0x80000000) != 0)
    {
      objc_msgSend_setIntValue_forProperty_(v60, v59, v61, v62, v63, *(Message + 544), 1419);
    }

    v173 = *(Message + 24);
    if (v173)
    {
      objc_msgSend_setIntValue_forProperty_(v60, v59, v61, v62, v63, *(Message + 548), 1420);
      v173 = *(Message + 24);
    }

    if ((v173 & 2) != 0)
    {
      objc_msgSend_setIntValue_forProperty_(v60, v59, v61, v62, v63, *(Message + 552), 1421);
    }

    if ((*(Message + 29) & 0x80) != 0)
    {
      objc_msgSend_setIntValue_forProperty_(v60, v59, v61, v62, v63, *(Message + 700), 1422);
    }

    v174 = *(Message + 24);
    if ((v174 & 4) != 0)
    {
      objc_msgSend_setIntValue_forProperty_(v60, v59, v61, v62, v63, *(Message + 556), 1423);
      v174 = *(Message + 24);
    }

    if ((v174 & 8) != 0)
    {
      objc_msgSend_setIntValue_forProperty_(v60, v59, v61, v62, v63, *(Message + 560), 1424);
      v174 = *(Message + 24);
    }

    if ((v174 & 0x10) != 0)
    {
      objc_msgSend_setIntValue_forProperty_(v60, v59, v61, v62, v63, *(Message + 564), 1425);
    }

    if ((*(Message + 30) & 2) != 0)
    {
      objc_msgSend_setIntValue_forProperty_(v60, v59, v61, v62, v63, *(Message + 708), 1426);
    }

    v175 = *(Message + 24);
    if ((v175 & 0x20) != 0)
    {
      LODWORD(v61) = *(Message + 568);
      objc_msgSend_setFloatValue_forProperty_(v60, v59, v61, v62, v63, 1436);
      v175 = *(Message + 24);
    }

    if ((v175 & 0x40) != 0)
    {
      objc_msgSend_setIntValue_forProperty_(v60, v59, v61, v62, v63, *(Message + 572), 1437);
      v175 = *(Message + 24);
    }

    if ((v175 & 0x80) != 0)
    {
      objc_msgSend_setIntValue_forProperty_(v60, v59, v61, v62, v63, *(Message + 576), 1438);
      v175 = *(Message + 24);
    }

    if ((v175 & 0x100) != 0)
    {
      objc_msgSend_setIntValue_forProperty_(v60, v59, v61, v62, v63, *(Message + 580), 1439);
    }

    if (*(Message + 30))
    {
      objc_msgSend_setIntValue_forProperty_(v60, v59, v61, v62, v63, *(Message + 704), 1440);
    }

    v176 = *(Message + 24);
    if ((v176 & 0x200) != 0)
    {
      objc_msgSend_setIntValue_forProperty_(v60, v59, v61, v62, v63, *(Message + 584), 1441);
      v176 = *(Message + 24);
    }

    if ((v176 & 0x400) != 0)
    {
      objc_msgSend_setIntValue_forProperty_(v60, v59, v61, v62, v63, *(Message + 588), 1442);
    }

    if ((*(Message + 30) & 4) != 0)
    {
      objc_msgSend_setIntValue_forProperty_(v60, v59, v61, v62, v63, *(Message + 712), 1443);
    }

    v177 = *(Message + 16);
    if ((v177 & 0x20000) != 0)
    {
      v179 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803A8], v59, v61, v62, v63, *(Message + 176), v13);
      if (v179)
      {
        objc_msgSend_setObject_forProperty_(v60, v178, v180, v181, v182, v179, 1446);
      }

      v177 = *(Message + 16);
    }

    if ((v177 & 0x40000) != 0)
    {
      v184 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803A8], v59, v61, v62, v63, *(Message + 184), v13);
      if (v184)
      {
        objc_msgSend_setObject_forProperty_(v60, v183, v185, v186, v187, v184, 1447);
      }

      v177 = *(Message + 16);
    }

    if ((v177 & 0x80000) != 0)
    {
      v189 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803A8], v59, v61, v62, v63, *(Message + 192), v13);
      if (v189)
      {
        objc_msgSend_setObject_forProperty_(v60, v188, v190, v191, v192, v189, 1448);
      }

      v177 = *(Message + 16);
    }

    if ((v177 & 0x100000) != 0)
    {
      v194 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803A8], v59, v61, v62, v63, *(Message + 200), v13);
      if (v194)
      {
        objc_msgSend_setObject_forProperty_(v60, v193, v195, v196, v197, v194, 1449);
      }

      v177 = *(Message + 16);
    }

    if ((v177 & 0x200000) != 0)
    {
      v199 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803A8], v59, v61, v62, v63, *(Message + 208), v13);
      if (v199)
      {
        objc_msgSend_setObject_forProperty_(v60, v198, v200, v201, v202, v199, 1450);
      }

      v177 = *(Message + 16);
    }

    if ((v177 & 0x400000) != 0)
    {
      v204 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803A8], v59, v61, v62, v63, *(Message + 216), v13);
      if (v204)
      {
        objc_msgSend_setObject_forProperty_(v60, v203, v205, v206, v207, v204, 1451);
      }

      v177 = *(Message + 16);
    }

    if ((v177 & 0x800000) != 0)
    {
      v209 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803A8], v59, v61, v62, v63, *(Message + 224), v13);
      if (v209)
      {
        objc_msgSend_setObject_forProperty_(v60, v208, v210, v211, v212, v209, 1452);
      }

      v177 = *(Message + 16);
    }

    if ((v177 & 0x1000000) != 0)
    {
      v214 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803A8], v59, v61, v62, v63, *(Message + 232), v13);
      if (v214)
      {
        objc_msgSend_setObject_forProperty_(v60, v213, v215, v216, v217, v214, 1453);
      }

      v177 = *(Message + 16);
    }

    if ((v177 & 0x2000000) != 0)
    {
      v219 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803A8], v59, v61, v62, v63, *(Message + 240), v13);
      if (v219)
      {
        objc_msgSend_setObject_forProperty_(v60, v218, v220, v221, v222, v219, 1454);
      }

      v177 = *(Message + 16);
    }

    if ((v177 & 0x4000000) != 0)
    {
      v224 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803A8], v59, v61, v62, v63, *(Message + 248), v13);
      if (v224)
      {
        objc_msgSend_setObject_forProperty_(v60, v223, v225, v226, v227, v224, 1455);
      }

      v177 = *(Message + 16);
    }

    if ((v177 & 0x8000000) != 0)
    {
      v229 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803A8], v59, v61, v62, v63, *(Message + 256), v13);
      if (v229)
      {
        objc_msgSend_setObject_forProperty_(v60, v228, v230, v231, v232, v229, 1456);
      }

      v177 = *(Message + 16);
    }

    if ((v177 & 0x10000000) != 0)
    {
      v234 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803A8], v59, v61, v62, v63, *(Message + 264), v13);
      if (v234)
      {
        objc_msgSend_setObject_forProperty_(v60, v233, v235, v236, v237, v234, 1457);
      }

      v177 = *(Message + 16);
    }

    if ((v177 & 0x20000000) != 0)
    {
      v239 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803A8], v59, v61, v62, v63, *(Message + 272), v13);
      if (v239)
      {
        objc_msgSend_setObject_forProperty_(v60, v238, v240, v241, v242, v239, 1458);
      }

      v177 = *(Message + 16);
    }

    if ((v177 & 0x40000000) != 0)
    {
      v244 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803A8], v59, v61, v62, v63, *(Message + 280), v13);
      if (v244)
      {
        objc_msgSend_setObject_forProperty_(v60, v243, v245, v246, v247, v244, 1459);
      }
    }

    if ((*(Message + 23) & 8) != 0)
    {
      v249 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803A8], v59, v61, v62, v63, *(Message + 512), v13);
      if (v249)
      {
        objc_msgSend_setObject_forProperty_(v60, v248, v250, v251, v252, v249, 1460);
      }
    }

    if ((*(Message + 16) & 0x80000000) != 0)
    {
      v254 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803A8], v59, v61, v62, v63, *(Message + 288), v13);
      if (v254)
      {
        objc_msgSend_setObject_forProperty_(v60, v253, v255, v256, v257, v254, 1461);
      }
    }

    v258 = *(Message + 20);
    if (v258)
    {
      v260 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v59, v61, v62, v63, *(Message + 296), v13);
      if (v260)
      {
        objc_msgSend_setObject_forProperty_(v60, v259, v261, v262, v263, v260, 1497);
      }

      v258 = *(Message + 20);
    }

    if ((v258 & 2) != 0)
    {
      v265 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v59, v61, v62, v63, *(Message + 304), v13);
      if (v265)
      {
        objc_msgSend_setObject_forProperty_(v60, v264, v266, v267, v268, v265, 1498);
      }

      v258 = *(Message + 20);
    }

    if ((v258 & 4) != 0)
    {
      v270 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v59, v61, v62, v63, *(Message + 312), v13);
      if (v270)
      {
        objc_msgSend_setObject_forProperty_(v60, v269, v271, v272, v273, v270, 1499);
      }

      v258 = *(Message + 20);
    }

    if ((v258 & 8) != 0)
    {
      v275 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v59, v61, v62, v63, *(Message + 320), v13);
      if (v275)
      {
        objc_msgSend_setObject_forProperty_(v60, v274, v276, v277, v278, v275, 1500);
      }

      v258 = *(Message + 20);
    }

    if ((v258 & 0x10) != 0)
    {
      v280 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v59, v61, v62, v63, *(Message + 328), v13);
      if (v280)
      {
        objc_msgSend_setObject_forProperty_(v60, v279, v281, v282, v283, v280, 1501);
      }

      v258 = *(Message + 20);
    }

    if ((v258 & 0x20) != 0)
    {
      v285 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v59, v61, v62, v63, *(Message + 336), v13);
      if (v285)
      {
        objc_msgSend_setObject_forProperty_(v60, v284, v286, v287, v288, v285, 1502);
      }

      v258 = *(Message + 20);
    }

    if ((v258 & 0x40) != 0)
    {
      v290 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v59, v61, v62, v63, *(Message + 344), v13);
      if (v290)
      {
        objc_msgSend_setObject_forProperty_(v60, v289, v291, v292, v293, v290, 1503);
      }

      v258 = *(Message + 20);
    }

    if ((v258 & 0x80) != 0)
    {
      v295 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v59, v61, v62, v63, *(Message + 352), v13);
      if (v295)
      {
        objc_msgSend_setObject_forProperty_(v60, v294, v296, v297, v298, v295, 1504);
      }

      v258 = *(Message + 20);
    }

    if ((v258 & 0x10000000) != 0)
    {
      v300 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v59, v61, v62, v63, *(Message + 520), v13);
      if (v300)
      {
        objc_msgSend_setObject_forProperty_(v60, v299, v301, v302, v303, v300, 1505);
      }

      v258 = *(Message + 20);
    }

    if ((v258 & 0x100) != 0)
    {
      v305 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v59, v61, v62, v63, *(Message + 360), v13);
      if (v305)
      {
        objc_msgSend_setObject_forProperty_(v60, v304, v306, v307, v308, v305, 1506);
      }

      v258 = *(Message + 20);
    }

    if ((v258 & 0x200) != 0)
    {
      v310 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D80248], v59, v61, v62, v63, *(Message + 368), v13);
      if (v310)
      {
        objc_msgSend_setObject_forProperty_(v60, v309, v311, v312, v313, v310, 1507);
      }

      v258 = *(Message + 20);
    }

    if ((v258 & 0x400) != 0)
    {
      v315 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D80248], v59, v61, v62, v63, *(Message + 376), v13);
      if (v315)
      {
        objc_msgSend_setObject_forProperty_(v60, v314, v316, v317, v318, v315, 1508);
      }

      v258 = *(Message + 20);
    }

    if ((v258 & 0x800) != 0)
    {
      v320 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D80248], v59, v61, v62, v63, *(Message + 384), v13);
      if (v320)
      {
        objc_msgSend_setObject_forProperty_(v60, v319, v321, v322, v323, v320, 1509);
      }

      v258 = *(Message + 20);
    }

    if ((v258 & 0x1000) != 0)
    {
      v325 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D80248], v59, v61, v62, v63, *(Message + 392), v13);
      if (v325)
      {
        objc_msgSend_setObject_forProperty_(v60, v324, v326, v327, v328, v325, 1510);
      }

      v258 = *(Message + 20);
    }

    if ((v258 & 0x2000) != 0)
    {
      v330 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D80248], v59, v61, v62, v63, *(Message + 400), v13);
      if (v330)
      {
        objc_msgSend_setObject_forProperty_(v60, v329, v331, v332, v333, v330, 1511);
      }

      v258 = *(Message + 20);
    }

    if ((v258 & 0x20000000) != 0)
    {
      v335 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D80248], v59, v61, v62, v63, *(Message + 528), v13);
      if (v335)
      {
        objc_msgSend_setObject_forProperty_(v60, v334, v336, v337, v338, v335, 1512);
      }

      v258 = *(Message + 20);
    }

    if ((v258 & 0x4000) != 0)
    {
      v340 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D80248], v59, v61, v62, v63, *(Message + 408), v13);
      if (v340)
      {
        objc_msgSend_setObject_forProperty_(v60, v339, v341, v342, v343, v340, 1513);
      }
    }

    v344 = *(Message + 28);
    if (v344)
    {
      objc_msgSend_setIntValue_forProperty_(v60, v59, v61, v62, v63, *(Message + 661), 1514);
      v344 = *(Message + 28);
    }

    if ((v344 & 2) != 0)
    {
      objc_msgSend_setIntValue_forProperty_(v60, v59, v61, v62, v63, *(Message + 662), 1515);
      v344 = *(Message + 28);
    }

    if ((v344 & 4) != 0)
    {
      objc_msgSend_setIntValue_forProperty_(v60, v59, v61, v62, v63, *(Message + 663), 1516);
    }

    v345 = *(Message + 24);
    if ((v345 & 0x8000000) != 0)
    {
      objc_msgSend_setIntValue_forProperty_(v60, v59, v61, v62, v63, *(Message + 656), 1517);
      v345 = *(Message + 24);
    }

    if ((v345 & 0x10000000) != 0)
    {
      objc_msgSend_setIntValue_forProperty_(v60, v59, v61, v62, v63, *(Message + 657), 1518);
      v345 = *(Message + 24);
    }

    if ((v345 & 0x20000000) != 0)
    {
      objc_msgSend_setIntValue_forProperty_(v60, v59, v61, v62, v63, *(Message + 658), 1519);
      v345 = *(Message + 24);
    }

    if ((v345 & 0x40000000) != 0)
    {
      objc_msgSend_setIntValue_forProperty_(v60, v59, v61, v62, v63, *(Message + 659), 1520);
    }

    v346 = *(Message + 28);
    if ((v346 & 0x40) != 0)
    {
      objc_msgSend_setIntValue_forProperty_(v60, v59, v61, v62, v63, *(Message + 676), 1521);
      v346 = *(Message + 28);
    }

    if ((v346 & 0x80) != 0)
    {
      objc_msgSend_setIntValue_forProperty_(v60, v59, v61, v62, v63, *(Message + 677), 1522);
      v346 = *(Message + 28);
    }

    if ((v346 & 0x100) != 0)
    {
      objc_msgSend_setIntValue_forProperty_(v60, v59, v61, v62, v63, *(Message + 678), 1523);
      v346 = *(Message + 28);
    }

    if ((v346 & 0x200) != 0)
    {
      objc_msgSend_setIntValue_forProperty_(v60, v59, v61, v62, v63, *(Message + 679), 1524);
    }

    v347 = *(Message + 24);
    if ((v347 & 0x800) != 0)
    {
      objc_msgSend_setIntValue_forProperty_(v60, v59, v61, v62, v63, *(Message + 592), 1525);
      v347 = *(Message + 24);
    }

    if ((v347 & 0x1000) != 0)
    {
      LODWORD(v61) = *(Message + 596);
      objc_msgSend_setFloatValue_forProperty_(v60, v59, v61, v62, v63, 1526);
      v347 = *(Message + 24);
    }

    if ((v347 & 0x2000) != 0)
    {
      LODWORD(v61) = *(Message + 600);
      objc_msgSend_setFloatValue_forProperty_(v60, v59, v61, v62, v63, 1527);
      v347 = *(Message + 24);
    }

    if ((v347 & 0x4000) != 0)
    {
      LODWORD(v61) = *(Message + 604);
      objc_msgSend_setFloatValue_forProperty_(v60, v59, v61, v62, v63, 1528);
      v347 = *(Message + 24);
    }

    if ((v347 & 0x8000) != 0)
    {
      LODWORD(v61) = *(Message + 608);
      objc_msgSend_setFloatValue_forProperty_(v60, v59, v61, v62, v63, 1529);
    }

    if ((*(Message + 30) & 8) != 0)
    {
      LODWORD(v61) = *(Message + 716);
      objc_msgSend_setFloatValue_forProperty_(v60, v59, v61, v62, v63, 1530);
    }

    if (*(Message + 26))
    {
      LODWORD(v61) = *(Message + 612);
      objc_msgSend_setFloatValue_forProperty_(v60, v59, v61, v62, v63, 1531);
    }

    v348 = *(Message + 20);
    if ((v348 & 0x8000) != 0)
    {
      v350 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v59, v61, v62, v63, *(Message + 416), v13);
      if (v350)
      {
        objc_msgSend_setObject_forProperty_(v60, v349, v351, v352, v353, v350, 1532);
      }

      v348 = *(Message + 20);
    }

    if ((v348 & 0x10000) != 0)
    {
      v355 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v59, v61, v62, v63, *(Message + 424), v13);
      if (v355)
      {
        objc_msgSend_setObject_forProperty_(v60, v354, v356, v357, v358, v355, 1533);
      }

      v348 = *(Message + 20);
    }

    if ((v348 & 0x20000) != 0)
    {
      v360 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v59, v61, v62, v63, *(Message + 432), v13);
      if (v360)
      {
        objc_msgSend_setObject_forProperty_(v60, v359, v361, v362, v363, v360, 1534);
      }

      v348 = *(Message + 20);
    }

    if ((v348 & 0x40000) != 0)
    {
      v365 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v59, v61, v62, v63, *(Message + 440), v13);
      if (v365)
      {
        objc_msgSend_setObject_forProperty_(v60, v364, v366, v367, v368, v365, 1535);
      }

      v348 = *(Message + 20);
    }

    if ((v348 & 0x80000) != 0)
    {
      v370 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v59, v61, v62, v63, *(Message + 448), v13);
      if (v370)
      {
        objc_msgSend_setObject_forProperty_(v60, v369, v371, v372, v373, v370, 1536);
      }

      v348 = *(Message + 20);
    }

    if ((v348 & 0x40000000) != 0)
    {
      v375 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v59, v61, v62, v63, *(Message + 536), v13);
      if (v375)
      {
        objc_msgSend_setObject_forProperty_(v60, v374, v376, v377, v378, v375, 1537);
      }

      v348 = *(Message + 20);
    }

    if ((v348 & 0x100000) != 0)
    {
      v380 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v59, v61, v62, v63, *(Message + 456), v13);
      if (v380)
      {
        objc_msgSend_setObject_forProperty_(v60, v379, v381, v382, v383, v380, 1538);
      }

      v348 = *(Message + 20);
    }

    if ((v348 & 0x200000) != 0)
    {
      v385 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803A8], v59, v61, v62, v63, *(Message + 464), v13);
      if (v385)
      {
        objc_msgSend_setObject_forProperty_(v60, v384, v386, v387, v388, v385, 1552);
      }

      v348 = *(Message + 20);
    }

    if ((v348 & 0x400000) != 0)
    {
      v390 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v59, v61, v62, v63, *(Message + 472), v13);
      if (v390)
      {
        objc_msgSend_setObject_forProperty_(v60, v389, v391, v392, v393, v390, 1556);
      }
    }

    v394 = *(Message + 24);
    if ((v394 & 0x20000) != 0)
    {
      LODWORD(v61) = *(Message + 616);
      objc_msgSend_setFloatValue_forProperty_(v60, v59, v61, v62, v63, 1558);
      v394 = *(Message + 24);
    }

    if ((v394 & 0x40000) != 0)
    {
      objc_msgSend_setIntValue_forProperty_(v60, v59, v61, v62, v63, *(Message + 620), 1559);
      v394 = *(Message + 24);
    }

    if ((v394 & 0x80000) != 0)
    {
      LODWORD(v61) = *(Message + 624);
      objc_msgSend_setFloatValue_forProperty_(v60, v59, v61, v62, v63, 1560);
      v394 = *(Message + 24);
    }

    if ((v394 & 0x100000) != 0)
    {
      objc_msgSend_setIntValue_forProperty_(v60, v59, v61, v62, v63, *(Message + 628), 1561);
      v394 = *(Message + 24);
    }

    if ((v394 & 0x200000) != 0)
    {
      objc_msgSend_setIntValue_forProperty_(v60, v59, v61, v62, v63, *(Message + 632), 1562);
      v394 = *(Message + 24);
    }

    if ((v394 & 0x400000) != 0)
    {
      objc_msgSend_setIntValue_forProperty_(v60, v59, v61, v62, v63, *(Message + 636), 1563);
      v394 = *(Message + 24);
    }

    if ((v394 & 0x800000) != 0)
    {
      objc_msgSend_setIntValue_forProperty_(v60, v59, v61, v62, v63, *(Message + 640), 1564);
      v394 = *(Message + 24);
    }

    if ((v394 & 0x1000000) != 0)
    {
      objc_msgSend_setIntValue_forProperty_(v60, v59, v61, v62, v63, *(Message + 644), 1565);
      v394 = *(Message + 24);
    }

    if ((v394 & 0x2000000) != 0)
    {
      objc_msgSend_setIntValue_forProperty_(v60, v59, v61, v62, v63, *(Message + 648), 1566);
      v394 = *(Message + 24);
    }

    if ((v394 & 0x4000000) != 0)
    {
      objc_msgSend_setIntValue_forProperty_(v60, v59, v61, v62, v63, *(Message + 652), 1567);
    }

    v395 = *(Message + 28);
    if ((v395 & 8) != 0)
    {
      objc_msgSend_setIntValue_forProperty_(v60, v59, v61, v62, v63, *(Message + 664), 1568);
      v395 = *(Message + 28);
    }

    if ((v395 & 0x10) != 0)
    {
      objc_msgSend_setIntValue_forProperty_(v60, v59, v61, v62, v63, *(Message + 668), 1569);
      v395 = *(Message + 28);
    }

    if ((v395 & 0x100000) != 0)
    {
      objc_msgSend_setIntValue_forProperty_(v60, v59, v61, v62, v63, *(Message + 720), 1570);
      v395 = *(Message + 28);
    }

    if ((v395 & 0x20) != 0)
    {
      objc_msgSend_setIntValue_forProperty_(v60, v59, v61, v62, v63, *(Message + 672), 1571);
      v395 = *(Message + 28);
    }

    if ((v395 & 0x400) != 0)
    {
      objc_msgSend_setIntValue_forProperty_(v60, v59, v61, v62, v63, *(Message + 680), 1572);
      v395 = *(Message + 28);
    }

    if ((v395 & 0x800) != 0)
    {
      objc_msgSend_setIntValue_forProperty_(v60, v59, v61, v62, v63, *(Message + 684), 1573);
      v395 = *(Message + 28);
    }

    if ((v395 & 0x4000) != 0)
    {
      objc_msgSend_setIntValue_forProperty_(v60, v59, v61, v62, v63, *(Message + 696), 1574);
    }

    if (objc_msgSend_hasPreUFFVersion(v13, v59, v61, v62, v63))
    {
      objc_msgSend_handlePreUFFUpgradesForOverridePropertyMapWithUnarchiver_(self, v396, v397, v398, v399, v13);
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
      v401 = google::protobuf::internal::ExtensionSet::GetBool((v18 + 16));
    }

    else
    {
      v401 = 0;
    }

    v407[0] = MEMORY[0x277D85DD0];
    v407[1] = 3221225472;
    v407[2] = sub_2762BF060;
    v407[3] = &unk_27A6B7748;
    v409 = Bool;
    v407[4] = self;
    v402 = v60;
    v408 = v402;
    v410 = v401;
    objc_msgSend_addFinalizeHandler_(v13, v403, v404, v405, v406, v407);
    objc_storeStrong((&self->super.super.super.super.isa + *MEMORY[0x277D80AF0]), v60);
  }
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v9 = objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v5, v6, v7, v8, sub_2762C359C, off_2812ED2B8[20]);

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

  v976.receiver = self;
  v976.super_class = TSCHChartSeriesStyle;
  [(TSCHChartSeriesStyle *)&v976 saveToArchive:v10 archiver:archiverCopy];
  sub_276414B1C();
  v12 = google::protobuf::internal::ExtensionSet::MutableMessage();
  v13 = *(&self->super.super.super.super.isa + *MEMORY[0x277D80AF0]);
  if (objc_msgSend_containsProperty_(v13, v14, v15, v16, v17, 1368))
  {
    v23 = objc_msgSend_objectForProperty_(v13, v18, v19, v20, v21, 1368);
    *(v12 + 20) |= 0x2000000u;
    v27 = *(v12 + 496);
    if (!v27)
    {
      v28 = *(v12 + 8);
      if (v28)
      {
        v28 = *(v28 & 0xFFFFFFFFFFFFFFFELL);
      }

      v27 = MEMORY[0x277C97AB0](v28);
      *(v12 + 496) = v27;
    }

    objc_msgSend_saveToArchive_archiver_(v23, v22, v24, v25, v26, v27, archiverCopy);
  }

  if (objc_msgSend_containsProperty_(v13, v18, v19, v20, v21, 1369))
  {
    v34 = objc_msgSend_objectForProperty_(v13, v29, v30, v31, v32, 1369);
    *(v12 + 20) |= 0x1000000u;
    v38 = *(v12 + 488);
    if (!v38)
    {
      v39 = *(v12 + 8);
      if (v39)
      {
        v39 = *(v39 & 0xFFFFFFFFFFFFFFFELL);
      }

      v38 = MEMORY[0x277C97AB0](v39);
      *(v12 + 488) = v38;
    }

    objc_msgSend_saveToArchive_archiver_(v34, v33, v35, v36, v37, v38, archiverCopy);
  }

  if (objc_msgSend_containsProperty_(v13, v29, v30, v31, v32, 1370))
  {
    v45 = objc_msgSend_objectForProperty_(v13, v40, v41, v42, v43, 1370);
    *(v12 + 20) |= 0x800000u;
    v49 = *(v12 + 480);
    if (!v49)
    {
      v50 = *(v12 + 8);
      if (v50)
      {
        v50 = *(v50 & 0xFFFFFFFFFFFFFFFELL);
      }

      v49 = MEMORY[0x277C97AA0](v50);
      *(v12 + 480) = v49;
    }

    objc_msgSend_saveToArchive_archiver_(v45, v44, v46, v47, v48, v49, archiverCopy);
  }

  if (objc_msgSend_containsProperty_(v13, v40, v41, v42, v43, 1388))
  {
    v56 = objc_msgSend_objectForProperty_(v13, v51, v52, v53, v54, 1388);
    *(v12 + 16) |= 1u;
    v60 = *(v12 + 40);
    if (!v60)
    {
      v61 = *(v12 + 8);
      if (v61)
      {
        v61 = *(v61 & 0xFFFFFFFFFFFFFFFELL);
      }

      v60 = MEMORY[0x277C97AB0](v61);
      *(v12 + 40) = v60;
    }

    objc_msgSend_saveToArchive_archiver_(v56, v55, v57, v58, v59, v60, archiverCopy);
  }

  if (objc_msgSend_containsProperty_(v13, v51, v52, v53, v54, 1389))
  {
    v67 = objc_msgSend_objectForProperty_(v13, v62, v63, v64, v65, 1389);
    *(v12 + 16) |= 2u;
    v71 = *(v12 + 48);
    if (!v71)
    {
      v72 = *(v12 + 8);
      if (v72)
      {
        v72 = *(v72 & 0xFFFFFFFFFFFFFFFELL);
      }

      v71 = MEMORY[0x277C97AB0](v72);
      *(v12 + 48) = v71;
    }

    objc_msgSend_saveToArchive_archiver_(v67, v66, v68, v69, v70, v71, archiverCopy);
  }

  if (objc_msgSend_containsProperty_(v13, v62, v63, v64, v65, 1394))
  {
    v78 = objc_msgSend_objectForProperty_(v13, v73, v74, v75, v76, 1394);
    *(v12 + 16) |= 4u;
    v82 = *(v12 + 56);
    if (!v82)
    {
      v83 = *(v12 + 8);
      if (v83)
      {
        v83 = *(v83 & 0xFFFFFFFFFFFFFFFELL);
      }

      v82 = MEMORY[0x277C97A90](v83);
      *(v12 + 56) = v82;
    }

    objc_msgSend_saveToArchive_archiver_(v78, v77, v79, v80, v81, v82, archiverCopy);
  }

  if (objc_msgSend_containsProperty_(v13, v73, v74, v75, v76, 1395))
  {
    v88 = objc_msgSend_intValueForProperty_(v13, v84, v85, v86, v87, 1395);
    *(v12 + 28) |= 0x1000u;
    *(v12 + 688) = v88;
  }

  if (objc_msgSend_containsProperty_(v13, v84, v85, v86, v87, 1396))
  {
    v93 = objc_msgSend_intValueForProperty_(v13, v89, v90, v91, v92, 1396);
    *(v12 + 28) |= 0x2000u;
    *(v12 + 692) = v93;
  }

  if (objc_msgSend_containsProperty_(v13, v89, v90, v91, v92, 1399))
  {
    v99 = objc_msgSend_objectForProperty_(v13, v94, v95, v96, v97, 1399);
    *(v12 + 16) |= 8u;
    v103 = *(v12 + 64);
    if (!v103)
    {
      v104 = *(v12 + 8);
      if (v104)
      {
        v104 = *(v104 & 0xFFFFFFFFFFFFFFFELL);
      }

      v103 = MEMORY[0x277C97AA0](v104);
      *(v12 + 64) = v103;
    }

    objc_msgSend_saveToArchive_archiver_(v99, v98, v100, v101, v102, v103, archiverCopy);
  }

  if (objc_msgSend_containsProperty_(v13, v94, v95, v96, v97, 1400))
  {
    v110 = objc_msgSend_objectForProperty_(v13, v105, v106, v107, v108, 1400);
    *(v12 + 16) |= 0x10u;
    v114 = *(v12 + 72);
    if (!v114)
    {
      v115 = *(v12 + 8);
      if (v115)
      {
        v115 = *(v115 & 0xFFFFFFFFFFFFFFFELL);
      }

      v114 = MEMORY[0x277C97AA0](v115);
      *(v12 + 72) = v114;
    }

    objc_msgSend_saveToArchive_archiver_(v110, v109, v111, v112, v113, v114, archiverCopy);
  }

  if (objc_msgSend_containsProperty_(v13, v105, v106, v107, v108, 1403))
  {
    v121 = objc_msgSend_objectForProperty_(v13, v116, v117, v118, v119, 1403);
    *(v12 + 16) |= 0x20u;
    v125 = *(v12 + 80);
    if (!v125)
    {
      v126 = *(v12 + 8);
      if (v126)
      {
        v126 = *(v126 & 0xFFFFFFFFFFFFFFFELL);
      }

      v125 = MEMORY[0x277C97A80](v126);
      *(v12 + 80) = v125;
    }

    objc_msgSend_saveToArchive_archiver_(v121, v120, v122, v123, v124, v125, archiverCopy);
  }

  if (objc_msgSend_containsProperty_(v13, v116, v117, v118, v119, 1404))
  {
    v132 = objc_msgSend_objectForProperty_(v13, v127, v128, v129, v130, 1404);
    *(v12 + 16) |= 0x40u;
    v136 = *(v12 + 88);
    if (!v136)
    {
      v137 = *(v12 + 8);
      if (v137)
      {
        v137 = *(v137 & 0xFFFFFFFFFFFFFFFELL);
      }

      v136 = MEMORY[0x277C97A80](v137);
      *(v12 + 88) = v136;
    }

    objc_msgSend_saveToArchive_archiver_(v132, v131, v133, v134, v135, v136, archiverCopy);
  }

  if (objc_msgSend_containsProperty_(v13, v127, v128, v129, v130, 1405))
  {
    v143 = objc_msgSend_objectForProperty_(v13, v138, v139, v140, v141, 1405);
    *(v12 + 16) |= 0x80u;
    v147 = *(v12 + 96);
    if (!v147)
    {
      v148 = *(v12 + 8);
      if (v148)
      {
        v148 = *(v148 & 0xFFFFFFFFFFFFFFFELL);
      }

      v147 = MEMORY[0x277C97A80](v148);
      *(v12 + 96) = v147;
    }

    objc_msgSend_saveToArchive_archiver_(v143, v142, v144, v145, v146, v147, archiverCopy);
  }

  if (objc_msgSend_containsProperty_(v13, v138, v139, v140, v141, 1406))
  {
    v154 = objc_msgSend_objectForProperty_(v13, v149, v150, v151, v152, 1406);
    *(v12 + 16) |= 0x100u;
    v158 = *(v12 + 104);
    if (!v158)
    {
      v159 = *(v12 + 8);
      if (v159)
      {
        v159 = *(v159 & 0xFFFFFFFFFFFFFFFELL);
      }

      v158 = MEMORY[0x277C97A80](v159);
      *(v12 + 104) = v158;
    }

    objc_msgSend_saveToArchive_archiver_(v154, v153, v155, v156, v157, v158, archiverCopy);
  }

  if (objc_msgSend_containsProperty_(v13, v149, v150, v151, v152, 1407))
  {
    v165 = objc_msgSend_objectForProperty_(v13, v160, v161, v162, v163, 1407);
    *(v12 + 16) |= 0x200u;
    v169 = *(v12 + 112);
    if (!v169)
    {
      v170 = *(v12 + 8);
      if (v170)
      {
        v170 = *(v170 & 0xFFFFFFFFFFFFFFFELL);
      }

      v169 = MEMORY[0x277C97A80](v170);
      *(v12 + 112) = v169;
    }

    objc_msgSend_saveToArchive_archiver_(v165, v164, v166, v167, v168, v169, archiverCopy);
  }

  if (objc_msgSend_containsProperty_(v13, v160, v161, v162, v163, 1408))
  {
    v176 = objc_msgSend_objectForProperty_(v13, v171, v172, v173, v174, 1408);
    *(v12 + 16) |= 0x400u;
    v180 = *(v12 + 120);
    if (!v180)
    {
      v181 = *(v12 + 8);
      if (v181)
      {
        v181 = *(v181 & 0xFFFFFFFFFFFFFFFELL);
      }

      v180 = MEMORY[0x277C97A80](v181);
      *(v12 + 120) = v180;
    }

    objc_msgSend_saveToArchive_archiver_(v176, v175, v177, v178, v179, v180, archiverCopy);
  }

  if (objc_msgSend_containsProperty_(v13, v171, v172, v173, v174, 1409))
  {
    v187 = objc_msgSend_objectForProperty_(v13, v182, v183, v184, v185, 1409);
    *(v12 + 16) |= 0x800u;
    v191 = *(v12 + 128);
    if (!v191)
    {
      v192 = *(v12 + 8);
      if (v192)
      {
        v192 = *(v192 & 0xFFFFFFFFFFFFFFFELL);
      }

      v191 = MEMORY[0x277C97A80](v192);
      *(v12 + 128) = v191;
    }

    objc_msgSend_saveToArchive_archiver_(v187, v186, v188, v189, v190, v191, archiverCopy);
  }

  if (objc_msgSend_containsProperty_(v13, v182, v183, v184, v185, 1410))
  {
    v198 = objc_msgSend_objectForProperty_(v13, v193, v194, v195, v196, 1410);
    *(v12 + 16) |= 0x1000u;
    v202 = *(v12 + 136);
    if (!v202)
    {
      v203 = *(v12 + 8);
      if (v203)
      {
        v203 = *(v203 & 0xFFFFFFFFFFFFFFFELL);
      }

      v202 = MEMORY[0x277C97A80](v203);
      *(v12 + 136) = v202;
    }

    objc_msgSend_saveToArchive_archiver_(v198, v197, v199, v200, v201, v202, archiverCopy);
  }

  if (objc_msgSend_containsProperty_(v13, v193, v194, v195, v196, 1411))
  {
    v209 = objc_msgSend_objectForProperty_(v13, v204, v205, v206, v207, 1411);
    *(v12 + 16) |= 0x2000u;
    v213 = *(v12 + 144);
    if (!v213)
    {
      v214 = *(v12 + 8);
      if (v214)
      {
        v214 = *(v214 & 0xFFFFFFFFFFFFFFFELL);
      }

      v213 = MEMORY[0x277C97A80](v214);
      *(v12 + 144) = v213;
    }

    objc_msgSend_saveToArchive_archiver_(v209, v208, v210, v211, v212, v213, archiverCopy);
  }

  if (objc_msgSend_containsProperty_(v13, v204, v205, v206, v207, 1412))
  {
    v220 = objc_msgSend_objectForProperty_(v13, v215, v216, v217, v218, 1412);
    *(v12 + 16) |= 0x4000u;
    v224 = *(v12 + 152);
    if (!v224)
    {
      v225 = *(v12 + 8);
      if (v225)
      {
        v225 = *(v225 & 0xFFFFFFFFFFFFFFFELL);
      }

      v224 = MEMORY[0x277C97A80](v225);
      *(v12 + 152) = v224;
    }

    objc_msgSend_saveToArchive_archiver_(v220, v219, v221, v222, v223, v224, archiverCopy);
  }

  if (objc_msgSend_containsProperty_(v13, v215, v216, v217, v218, 1413))
  {
    v231 = objc_msgSend_objectForProperty_(v13, v226, v227, v228, v229, 1413);
    *(v12 + 16) |= 0x8000u;
    v235 = *(v12 + 160);
    if (!v235)
    {
      v236 = *(v12 + 8);
      if (v236)
      {
        v236 = *(v236 & 0xFFFFFFFFFFFFFFFELL);
      }

      v235 = MEMORY[0x277C97A80](v236);
      *(v12 + 160) = v235;
    }

    objc_msgSend_saveToArchive_archiver_(v231, v230, v232, v233, v234, v235, archiverCopy);
  }

  if (objc_msgSend_containsProperty_(v13, v226, v227, v228, v229, 1414))
  {
    v242 = objc_msgSend_objectForProperty_(v13, v237, v238, v239, v240, 1414);
    *(v12 + 16) |= 0x10000u;
    v246 = *(v12 + 168);
    if (!v246)
    {
      v247 = *(v12 + 8);
      if (v247)
      {
        v247 = *(v247 & 0xFFFFFFFFFFFFFFFELL);
      }

      v246 = MEMORY[0x277C97A80](v247);
      *(v12 + 168) = v246;
    }

    objc_msgSend_saveToArchive_archiver_(v242, v241, v243, v244, v245, v246, archiverCopy);
  }

  if (objc_msgSend_containsProperty_(v13, v237, v238, v239, v240, 1415))
  {
    v253 = objc_msgSend_objectForProperty_(v13, v248, v249, v250, v251, 1415);
    *(v12 + 20) |= 0x4000000u;
    v257 = *(v12 + 504);
    if (!v257)
    {
      v258 = *(v12 + 8);
      if (v258)
      {
        v258 = *(v258 & 0xFFFFFFFFFFFFFFFELL);
      }

      v257 = MEMORY[0x277C97A80](v258);
      *(v12 + 504) = v257;
    }

    objc_msgSend_saveToArchive_archiver_(v253, v252, v254, v255, v256, v257, archiverCopy);
  }

  if (objc_msgSend_containsProperty_(v13, v248, v249, v250, v251, 1416))
  {
    objc_msgSend_floatValueForProperty_(v13, v259, v260, v261, v262, 1416);
    *(v12 + 28) |= 0x200000u;
    *(v12 + 724) = LODWORD(v260);
  }

  if (objc_msgSend_containsProperty_(v13, v259, v260, v261, v262, 1417))
  {
    v267 = objc_msgSend_intValueForProperty_(v13, v263, v264, v265, v266, 1417) != 0;
    *(v12 + 24) |= 0x80000000;
    *(v12 + 660) = v267;
  }

  if (objc_msgSend_containsProperty_(v13, v263, v264, v265, v266, 1419))
  {
    v272 = objc_msgSend_intValueForProperty_(v13, v268, v269, v270, v271, 1419);
    *(v12 + 20) |= 0x80000000;
    *(v12 + 544) = v272;
  }

  if (objc_msgSend_containsProperty_(v13, v268, v269, v270, v271, 1420))
  {
    v277 = objc_msgSend_intValueForProperty_(v13, v273, v274, v275, v276, 1420);
    *(v12 + 24) |= 1u;
    *(v12 + 548) = v277;
  }

  if (objc_msgSend_containsProperty_(v13, v273, v274, v275, v276, 1421))
  {
    v282 = objc_msgSend_intValueForProperty_(v13, v278, v279, v280, v281, 1421);
    *(v12 + 24) |= 2u;
    *(v12 + 552) = v282;
  }

  if (objc_msgSend_containsProperty_(v13, v278, v279, v280, v281, 1422))
  {
    v287 = objc_msgSend_intValueForProperty_(v13, v283, v284, v285, v286, 1422);
    *(v12 + 28) |= 0x8000u;
    *(v12 + 700) = v287;
  }

  if (objc_msgSend_containsProperty_(v13, v283, v284, v285, v286, 1423))
  {
    v292 = objc_msgSend_intValueForProperty_(v13, v288, v289, v290, v291, 1423);
    *(v12 + 24) |= 4u;
    *(v12 + 556) = v292;
  }

  if (objc_msgSend_containsProperty_(v13, v288, v289, v290, v291, 1424))
  {
    v297 = objc_msgSend_intValueForProperty_(v13, v293, v294, v295, v296, 1424);
    *(v12 + 24) |= 8u;
    *(v12 + 560) = v297;
  }

  if (objc_msgSend_containsProperty_(v13, v293, v294, v295, v296, 1425))
  {
    v302 = objc_msgSend_intValueForProperty_(v13, v298, v299, v300, v301, 1425);
    *(v12 + 24) |= 0x10u;
    *(v12 + 564) = v302;
  }

  if (objc_msgSend_containsProperty_(v13, v298, v299, v300, v301, 1426))
  {
    v307 = objc_msgSend_intValueForProperty_(v13, v303, v304, v305, v306, 1426);
    *(v12 + 28) |= 0x20000u;
    *(v12 + 708) = v307;
  }

  if (objc_msgSend_containsProperty_(v13, v303, v304, v305, v306, 1436))
  {
    objc_msgSend_floatValueForProperty_(v13, v308, v309, v310, v311, 1436);
    *(v12 + 24) |= 0x20u;
    *(v12 + 568) = LODWORD(v309);
  }

  if (objc_msgSend_containsProperty_(v13, v308, v309, v310, v311, 1437))
  {
    v316 = objc_msgSend_intValueForProperty_(v13, v312, v313, v314, v315, 1437);
    *(v12 + 24) |= 0x40u;
    *(v12 + 572) = v316;
  }

  if (objc_msgSend_containsProperty_(v13, v312, v313, v314, v315, 1438))
  {
    v321 = objc_msgSend_intValueForProperty_(v13, v317, v318, v319, v320, 1438);
    *(v12 + 24) |= 0x80u;
    *(v12 + 576) = v321;
  }

  if (objc_msgSend_containsProperty_(v13, v317, v318, v319, v320, 1439))
  {
    v326 = objc_msgSend_intValueForProperty_(v13, v322, v323, v324, v325, 1439);
    *(v12 + 24) |= 0x100u;
    *(v12 + 580) = v326;
  }

  if (objc_msgSend_containsProperty_(v13, v322, v323, v324, v325, 1440))
  {
    v331 = objc_msgSend_intValueForProperty_(v13, v327, v328, v329, v330, 1440);
    *(v12 + 28) |= 0x10000u;
    *(v12 + 704) = v331;
  }

  if (objc_msgSend_containsProperty_(v13, v327, v328, v329, v330, 1441))
  {
    v336 = objc_msgSend_intValueForProperty_(v13, v332, v333, v334, v335, 1441);
    *(v12 + 24) |= 0x200u;
    *(v12 + 584) = v336;
  }

  if (objc_msgSend_containsProperty_(v13, v332, v333, v334, v335, 1442))
  {
    v341 = objc_msgSend_intValueForProperty_(v13, v337, v338, v339, v340, 1442);
    *(v12 + 24) |= 0x400u;
    *(v12 + 588) = v341;
  }

  if (objc_msgSend_containsProperty_(v13, v337, v338, v339, v340, 1443))
  {
    v346 = objc_msgSend_intValueForProperty_(v13, v342, v343, v344, v345, 1443);
    *(v12 + 28) |= 0x40000u;
    *(v12 + 712) = v346;
  }

  if (objc_msgSend_containsProperty_(v13, v342, v343, v344, v345, 1446))
  {
    v352 = objc_msgSend_objectForProperty_(v13, v347, v348, v349, v350, 1446);
    *(v12 + 16) |= 0x20000u;
    v356 = *(v12 + 176);
    if (!v356)
    {
      v357 = *(v12 + 8);
      if (v357)
      {
        v357 = *(v357 & 0xFFFFFFFFFFFFFFFELL);
      }

      v356 = MEMORY[0x277C97A90](v357);
      *(v12 + 176) = v356;
    }

    objc_msgSend_saveToArchive_archiver_(v352, v351, v353, v354, v355, v356, archiverCopy);
  }

  if (objc_msgSend_containsProperty_(v13, v347, v348, v349, v350, 1447))
  {
    v363 = objc_msgSend_objectForProperty_(v13, v358, v359, v360, v361, 1447);
    *(v12 + 16) |= 0x40000u;
    v367 = *(v12 + 184);
    if (!v367)
    {
      v368 = *(v12 + 8);
      if (v368)
      {
        v368 = *(v368 & 0xFFFFFFFFFFFFFFFELL);
      }

      v367 = MEMORY[0x277C97A90](v368);
      *(v12 + 184) = v367;
    }

    objc_msgSend_saveToArchive_archiver_(v363, v362, v364, v365, v366, v367, archiverCopy);
  }

  if (objc_msgSend_containsProperty_(v13, v358, v359, v360, v361, 1448))
  {
    v374 = objc_msgSend_objectForProperty_(v13, v369, v370, v371, v372, 1448);
    *(v12 + 16) |= 0x80000u;
    v378 = *(v12 + 192);
    if (!v378)
    {
      v379 = *(v12 + 8);
      if (v379)
      {
        v379 = *(v379 & 0xFFFFFFFFFFFFFFFELL);
      }

      v378 = MEMORY[0x277C97A90](v379);
      *(v12 + 192) = v378;
    }

    objc_msgSend_saveToArchive_archiver_(v374, v373, v375, v376, v377, v378, archiverCopy);
  }

  if (objc_msgSend_containsProperty_(v13, v369, v370, v371, v372, 1449))
  {
    v385 = objc_msgSend_objectForProperty_(v13, v380, v381, v382, v383, 1449);
    *(v12 + 16) |= 0x100000u;
    v389 = *(v12 + 200);
    if (!v389)
    {
      v390 = *(v12 + 8);
      if (v390)
      {
        v390 = *(v390 & 0xFFFFFFFFFFFFFFFELL);
      }

      v389 = MEMORY[0x277C97A90](v390);
      *(v12 + 200) = v389;
    }

    objc_msgSend_saveToArchive_archiver_(v385, v384, v386, v387, v388, v389, archiverCopy);
  }

  if (objc_msgSend_containsProperty_(v13, v380, v381, v382, v383, 1450))
  {
    v396 = objc_msgSend_objectForProperty_(v13, v391, v392, v393, v394, 1450);
    *(v12 + 16) |= 0x200000u;
    v400 = *(v12 + 208);
    if (!v400)
    {
      v401 = *(v12 + 8);
      if (v401)
      {
        v401 = *(v401 & 0xFFFFFFFFFFFFFFFELL);
      }

      v400 = MEMORY[0x277C97A90](v401);
      *(v12 + 208) = v400;
    }

    objc_msgSend_saveToArchive_archiver_(v396, v395, v397, v398, v399, v400, archiverCopy);
  }

  if (objc_msgSend_containsProperty_(v13, v391, v392, v393, v394, 1451))
  {
    v407 = objc_msgSend_objectForProperty_(v13, v402, v403, v404, v405, 1451);
    *(v12 + 16) |= 0x400000u;
    v411 = *(v12 + 216);
    if (!v411)
    {
      v412 = *(v12 + 8);
      if (v412)
      {
        v412 = *(v412 & 0xFFFFFFFFFFFFFFFELL);
      }

      v411 = MEMORY[0x277C97A90](v412);
      *(v12 + 216) = v411;
    }

    objc_msgSend_saveToArchive_archiver_(v407, v406, v408, v409, v410, v411, archiverCopy);
  }

  if (objc_msgSend_containsProperty_(v13, v402, v403, v404, v405, 1452))
  {
    v418 = objc_msgSend_objectForProperty_(v13, v413, v414, v415, v416, 1452);
    *(v12 + 16) |= 0x800000u;
    v422 = *(v12 + 224);
    if (!v422)
    {
      v423 = *(v12 + 8);
      if (v423)
      {
        v423 = *(v423 & 0xFFFFFFFFFFFFFFFELL);
      }

      v422 = MEMORY[0x277C97A90](v423);
      *(v12 + 224) = v422;
    }

    objc_msgSend_saveToArchive_archiver_(v418, v417, v419, v420, v421, v422, archiverCopy);
  }

  if (objc_msgSend_containsProperty_(v13, v413, v414, v415, v416, 1453))
  {
    v429 = objc_msgSend_objectForProperty_(v13, v424, v425, v426, v427, 1453);
    *(v12 + 16) |= 0x1000000u;
    v433 = *(v12 + 232);
    if (!v433)
    {
      v434 = *(v12 + 8);
      if (v434)
      {
        v434 = *(v434 & 0xFFFFFFFFFFFFFFFELL);
      }

      v433 = MEMORY[0x277C97A90](v434);
      *(v12 + 232) = v433;
    }

    objc_msgSend_saveToArchive_archiver_(v429, v428, v430, v431, v432, v433, archiverCopy);
  }

  if (objc_msgSend_containsProperty_(v13, v424, v425, v426, v427, 1454))
  {
    v440 = objc_msgSend_objectForProperty_(v13, v435, v436, v437, v438, 1454);
    *(v12 + 16) |= 0x2000000u;
    v444 = *(v12 + 240);
    if (!v444)
    {
      v445 = *(v12 + 8);
      if (v445)
      {
        v445 = *(v445 & 0xFFFFFFFFFFFFFFFELL);
      }

      v444 = MEMORY[0x277C97A90](v445);
      *(v12 + 240) = v444;
    }

    objc_msgSend_saveToArchive_archiver_(v440, v439, v441, v442, v443, v444, archiverCopy);
  }

  if (objc_msgSend_containsProperty_(v13, v435, v436, v437, v438, 1455))
  {
    v451 = objc_msgSend_objectForProperty_(v13, v446, v447, v448, v449, 1455);
    *(v12 + 16) |= 0x4000000u;
    v455 = *(v12 + 248);
    if (!v455)
    {
      v456 = *(v12 + 8);
      if (v456)
      {
        v456 = *(v456 & 0xFFFFFFFFFFFFFFFELL);
      }

      v455 = MEMORY[0x277C97A90](v456);
      *(v12 + 248) = v455;
    }

    objc_msgSend_saveToArchive_archiver_(v451, v450, v452, v453, v454, v455, archiverCopy);
  }

  if (objc_msgSend_containsProperty_(v13, v446, v447, v448, v449, 1456))
  {
    v462 = objc_msgSend_objectForProperty_(v13, v457, v458, v459, v460, 1456);
    *(v12 + 16) |= 0x8000000u;
    v466 = *(v12 + 256);
    if (!v466)
    {
      v467 = *(v12 + 8);
      if (v467)
      {
        v467 = *(v467 & 0xFFFFFFFFFFFFFFFELL);
      }

      v466 = MEMORY[0x277C97A90](v467);
      *(v12 + 256) = v466;
    }

    objc_msgSend_saveToArchive_archiver_(v462, v461, v463, v464, v465, v466, archiverCopy);
  }

  if (objc_msgSend_containsProperty_(v13, v457, v458, v459, v460, 1457))
  {
    v473 = objc_msgSend_objectForProperty_(v13, v468, v469, v470, v471, 1457);
    *(v12 + 16) |= 0x10000000u;
    v477 = *(v12 + 264);
    if (!v477)
    {
      v478 = *(v12 + 8);
      if (v478)
      {
        v478 = *(v478 & 0xFFFFFFFFFFFFFFFELL);
      }

      v477 = MEMORY[0x277C97A90](v478);
      *(v12 + 264) = v477;
    }

    objc_msgSend_saveToArchive_archiver_(v473, v472, v474, v475, v476, v477, archiverCopy);
  }

  if (objc_msgSend_containsProperty_(v13, v468, v469, v470, v471, 1458))
  {
    v484 = objc_msgSend_objectForProperty_(v13, v479, v480, v481, v482, 1458);
    *(v12 + 16) |= 0x20000000u;
    v488 = *(v12 + 272);
    if (!v488)
    {
      v489 = *(v12 + 8);
      if (v489)
      {
        v489 = *(v489 & 0xFFFFFFFFFFFFFFFELL);
      }

      v488 = MEMORY[0x277C97A90](v489);
      *(v12 + 272) = v488;
    }

    objc_msgSend_saveToArchive_archiver_(v484, v483, v485, v486, v487, v488, archiverCopy);
  }

  if (objc_msgSend_containsProperty_(v13, v479, v480, v481, v482, 1459))
  {
    v495 = objc_msgSend_objectForProperty_(v13, v490, v491, v492, v493, 1459);
    *(v12 + 16) |= 0x40000000u;
    v499 = *(v12 + 280);
    if (!v499)
    {
      v500 = *(v12 + 8);
      if (v500)
      {
        v500 = *(v500 & 0xFFFFFFFFFFFFFFFELL);
      }

      v499 = MEMORY[0x277C97A90](v500);
      *(v12 + 280) = v499;
    }

    objc_msgSend_saveToArchive_archiver_(v495, v494, v496, v497, v498, v499, archiverCopy);
  }

  if (objc_msgSend_containsProperty_(v13, v490, v491, v492, v493, 1460))
  {
    v506 = objc_msgSend_objectForProperty_(v13, v501, v502, v503, v504, 1460);
    *(v12 + 20) |= 0x8000000u;
    v510 = *(v12 + 512);
    if (!v510)
    {
      v511 = *(v12 + 8);
      if (v511)
      {
        v511 = *(v511 & 0xFFFFFFFFFFFFFFFELL);
      }

      v510 = MEMORY[0x277C97A90](v511);
      *(v12 + 512) = v510;
    }

    objc_msgSend_saveToArchive_archiver_(v506, v505, v507, v508, v509, v510, archiverCopy);
  }

  if (objc_msgSend_containsProperty_(v13, v501, v502, v503, v504, 1461))
  {
    v517 = objc_msgSend_objectForProperty_(v13, v512, v513, v514, v515, 1461);
    *(v12 + 16) |= 0x80000000;
    v521 = *(v12 + 288);
    if (!v521)
    {
      v522 = *(v12 + 8);
      if (v522)
      {
        v522 = *(v522 & 0xFFFFFFFFFFFFFFFELL);
      }

      v521 = MEMORY[0x277C97A90](v522);
      *(v12 + 288) = v521;
    }

    objc_msgSend_saveToArchive_archiver_(v517, v516, v518, v519, v520, v521, archiverCopy);
  }

  if (objc_msgSend_containsProperty_(v13, v512, v513, v514, v515, 1497))
  {
    v528 = objc_msgSend_objectForProperty_(v13, v523, v524, v525, v526, 1497);
    *(v12 + 20) |= 1u;
    v532 = *(v12 + 296);
    if (!v532)
    {
      v533 = *(v12 + 8);
      if (v533)
      {
        v533 = *(v533 & 0xFFFFFFFFFFFFFFFELL);
      }

      v532 = MEMORY[0x277C97AA0](v533);
      *(v12 + 296) = v532;
    }

    objc_msgSend_saveToArchive_archiver_(v528, v527, v529, v530, v531, v532, archiverCopy);
  }

  if (objc_msgSend_containsProperty_(v13, v523, v524, v525, v526, 1498))
  {
    v539 = objc_msgSend_objectForProperty_(v13, v534, v535, v536, v537, 1498);
    *(v12 + 20) |= 2u;
    v543 = *(v12 + 304);
    if (!v543)
    {
      v544 = *(v12 + 8);
      if (v544)
      {
        v544 = *(v544 & 0xFFFFFFFFFFFFFFFELL);
      }

      v543 = MEMORY[0x277C97AA0](v544);
      *(v12 + 304) = v543;
    }

    objc_msgSend_saveToArchive_archiver_(v539, v538, v540, v541, v542, v543, archiverCopy);
  }

  if (objc_msgSend_containsProperty_(v13, v534, v535, v536, v537, 1499))
  {
    v550 = objc_msgSend_objectForProperty_(v13, v545, v546, v547, v548, 1499);
    *(v12 + 20) |= 4u;
    v554 = *(v12 + 312);
    if (!v554)
    {
      v555 = *(v12 + 8);
      if (v555)
      {
        v555 = *(v555 & 0xFFFFFFFFFFFFFFFELL);
      }

      v554 = MEMORY[0x277C97AA0](v555);
      *(v12 + 312) = v554;
    }

    objc_msgSend_saveToArchive_archiver_(v550, v549, v551, v552, v553, v554, archiverCopy);
  }

  if (objc_msgSend_containsProperty_(v13, v545, v546, v547, v548, 1500))
  {
    v561 = objc_msgSend_objectForProperty_(v13, v556, v557, v558, v559, 1500);
    *(v12 + 20) |= 8u;
    v565 = *(v12 + 320);
    if (!v565)
    {
      v566 = *(v12 + 8);
      if (v566)
      {
        v566 = *(v566 & 0xFFFFFFFFFFFFFFFELL);
      }

      v565 = MEMORY[0x277C97AA0](v566);
      *(v12 + 320) = v565;
    }

    objc_msgSend_saveToArchive_archiver_(v561, v560, v562, v563, v564, v565, archiverCopy);
  }

  if (objc_msgSend_containsProperty_(v13, v556, v557, v558, v559, 1501))
  {
    v572 = objc_msgSend_objectForProperty_(v13, v567, v568, v569, v570, 1501);
    *(v12 + 20) |= 0x10u;
    v576 = *(v12 + 328);
    if (!v576)
    {
      v577 = *(v12 + 8);
      if (v577)
      {
        v577 = *(v577 & 0xFFFFFFFFFFFFFFFELL);
      }

      v576 = MEMORY[0x277C97AA0](v577);
      *(v12 + 328) = v576;
    }

    objc_msgSend_saveToArchive_archiver_(v572, v571, v573, v574, v575, v576, archiverCopy);
  }

  if (objc_msgSend_containsProperty_(v13, v567, v568, v569, v570, 1502))
  {
    v583 = objc_msgSend_objectForProperty_(v13, v578, v579, v580, v581, 1502);
    *(v12 + 20) |= 0x20u;
    v587 = *(v12 + 336);
    if (!v587)
    {
      v588 = *(v12 + 8);
      if (v588)
      {
        v588 = *(v588 & 0xFFFFFFFFFFFFFFFELL);
      }

      v587 = MEMORY[0x277C97AA0](v588);
      *(v12 + 336) = v587;
    }

    objc_msgSend_saveToArchive_archiver_(v583, v582, v584, v585, v586, v587, archiverCopy);
  }

  if (objc_msgSend_containsProperty_(v13, v578, v579, v580, v581, 1503))
  {
    v594 = objc_msgSend_objectForProperty_(v13, v589, v590, v591, v592, 1503);
    *(v12 + 20) |= 0x40u;
    v598 = *(v12 + 344);
    if (!v598)
    {
      v599 = *(v12 + 8);
      if (v599)
      {
        v599 = *(v599 & 0xFFFFFFFFFFFFFFFELL);
      }

      v598 = MEMORY[0x277C97AA0](v599);
      *(v12 + 344) = v598;
    }

    objc_msgSend_saveToArchive_archiver_(v594, v593, v595, v596, v597, v598, archiverCopy);
  }

  if (objc_msgSend_containsProperty_(v13, v589, v590, v591, v592, 1504))
  {
    v605 = objc_msgSend_objectForProperty_(v13, v600, v601, v602, v603, 1504);
    *(v12 + 20) |= 0x80u;
    v609 = *(v12 + 352);
    if (!v609)
    {
      v610 = *(v12 + 8);
      if (v610)
      {
        v610 = *(v610 & 0xFFFFFFFFFFFFFFFELL);
      }

      v609 = MEMORY[0x277C97AA0](v610);
      *(v12 + 352) = v609;
    }

    objc_msgSend_saveToArchive_archiver_(v605, v604, v606, v607, v608, v609, archiverCopy);
  }

  if (objc_msgSend_containsProperty_(v13, v600, v601, v602, v603, 1505))
  {
    v616 = objc_msgSend_objectForProperty_(v13, v611, v612, v613, v614, 1505);
    *(v12 + 20) |= 0x10000000u;
    v620 = *(v12 + 520);
    if (!v620)
    {
      v621 = *(v12 + 8);
      if (v621)
      {
        v621 = *(v621 & 0xFFFFFFFFFFFFFFFELL);
      }

      v620 = MEMORY[0x277C97AA0](v621);
      *(v12 + 520) = v620;
    }

    objc_msgSend_saveToArchive_archiver_(v616, v615, v617, v618, v619, v620, archiverCopy);
  }

  if (objc_msgSend_containsProperty_(v13, v611, v612, v613, v614, 1506))
  {
    v627 = objc_msgSend_objectForProperty_(v13, v622, v623, v624, v625, 1506);
    *(v12 + 20) |= 0x100u;
    v631 = *(v12 + 360);
    if (!v631)
    {
      v632 = *(v12 + 8);
      if (v632)
      {
        v632 = *(v632 & 0xFFFFFFFFFFFFFFFELL);
      }

      v631 = MEMORY[0x277C97AA0](v632);
      *(v12 + 360) = v631;
    }

    objc_msgSend_saveToArchive_archiver_(v627, v626, v628, v629, v630, v631, archiverCopy);
  }

  if (objc_msgSend_containsProperty_(v13, v622, v623, v624, v625, 1507))
  {
    v638 = objc_msgSend_objectForProperty_(v13, v633, v634, v635, v636, 1507);
    *(v12 + 20) |= 0x200u;
    v642 = *(v12 + 368);
    if (!v642)
    {
      v643 = *(v12 + 8);
      if (v643)
      {
        v643 = *(v643 & 0xFFFFFFFFFFFFFFFELL);
      }

      v642 = MEMORY[0x277C97A80](v643);
      *(v12 + 368) = v642;
    }

    objc_msgSend_saveToArchive_archiver_(v638, v637, v639, v640, v641, v642, archiverCopy);
  }

  if (objc_msgSend_containsProperty_(v13, v633, v634, v635, v636, 1508))
  {
    v649 = objc_msgSend_objectForProperty_(v13, v644, v645, v646, v647, 1508);
    *(v12 + 20) |= 0x400u;
    v653 = *(v12 + 376);
    if (!v653)
    {
      v654 = *(v12 + 8);
      if (v654)
      {
        v654 = *(v654 & 0xFFFFFFFFFFFFFFFELL);
      }

      v653 = MEMORY[0x277C97A80](v654);
      *(v12 + 376) = v653;
    }

    objc_msgSend_saveToArchive_archiver_(v649, v648, v650, v651, v652, v653, archiverCopy);
  }

  if (objc_msgSend_containsProperty_(v13, v644, v645, v646, v647, 1509))
  {
    v660 = objc_msgSend_objectForProperty_(v13, v655, v656, v657, v658, 1509);
    *(v12 + 20) |= 0x800u;
    v664 = *(v12 + 384);
    if (!v664)
    {
      v665 = *(v12 + 8);
      if (v665)
      {
        v665 = *(v665 & 0xFFFFFFFFFFFFFFFELL);
      }

      v664 = MEMORY[0x277C97A80](v665);
      *(v12 + 384) = v664;
    }

    objc_msgSend_saveToArchive_archiver_(v660, v659, v661, v662, v663, v664, archiverCopy);
  }

  if (objc_msgSend_containsProperty_(v13, v655, v656, v657, v658, 1510))
  {
    v671 = objc_msgSend_objectForProperty_(v13, v666, v667, v668, v669, 1510);
    *(v12 + 20) |= 0x1000u;
    v675 = *(v12 + 392);
    if (!v675)
    {
      v676 = *(v12 + 8);
      if (v676)
      {
        v676 = *(v676 & 0xFFFFFFFFFFFFFFFELL);
      }

      v675 = MEMORY[0x277C97A80](v676);
      *(v12 + 392) = v675;
    }

    objc_msgSend_saveToArchive_archiver_(v671, v670, v672, v673, v674, v675, archiverCopy);
  }

  if (objc_msgSend_containsProperty_(v13, v666, v667, v668, v669, 1511))
  {
    v682 = objc_msgSend_objectForProperty_(v13, v677, v678, v679, v680, 1511);
    *(v12 + 20) |= 0x2000u;
    v686 = *(v12 + 400);
    if (!v686)
    {
      v687 = *(v12 + 8);
      if (v687)
      {
        v687 = *(v687 & 0xFFFFFFFFFFFFFFFELL);
      }

      v686 = MEMORY[0x277C97A80](v687);
      *(v12 + 400) = v686;
    }

    objc_msgSend_saveToArchive_archiver_(v682, v681, v683, v684, v685, v686, archiverCopy);
  }

  if (objc_msgSend_containsProperty_(v13, v677, v678, v679, v680, 1512))
  {
    v693 = objc_msgSend_objectForProperty_(v13, v688, v689, v690, v691, 1512);
    *(v12 + 20) |= 0x20000000u;
    v697 = *(v12 + 528);
    if (!v697)
    {
      v698 = *(v12 + 8);
      if (v698)
      {
        v698 = *(v698 & 0xFFFFFFFFFFFFFFFELL);
      }

      v697 = MEMORY[0x277C97A80](v698);
      *(v12 + 528) = v697;
    }

    objc_msgSend_saveToArchive_archiver_(v693, v692, v694, v695, v696, v697, archiverCopy);
  }

  if (objc_msgSend_containsProperty_(v13, v688, v689, v690, v691, 1513))
  {
    v704 = objc_msgSend_objectForProperty_(v13, v699, v700, v701, v702, 1513);
    *(v12 + 20) |= 0x4000u;
    v708 = *(v12 + 408);
    if (!v708)
    {
      v709 = *(v12 + 8);
      if (v709)
      {
        v709 = *(v709 & 0xFFFFFFFFFFFFFFFELL);
      }

      v708 = MEMORY[0x277C97A80](v709);
      *(v12 + 408) = v708;
    }

    objc_msgSend_saveToArchive_archiver_(v704, v703, v705, v706, v707, v708, archiverCopy);
  }

  if (objc_msgSend_containsProperty_(v13, v699, v700, v701, v702, 1514))
  {
    v714 = objc_msgSend_intValueForProperty_(v13, v710, v711, v712, v713, 1514) != 0;
    *(v12 + 28) |= 1u;
    *(v12 + 661) = v714;
  }

  if (objc_msgSend_containsProperty_(v13, v710, v711, v712, v713, 1515))
  {
    v719 = objc_msgSend_intValueForProperty_(v13, v715, v716, v717, v718, 1515) != 0;
    *(v12 + 28) |= 2u;
    *(v12 + 662) = v719;
  }

  if (objc_msgSend_containsProperty_(v13, v715, v716, v717, v718, 1516))
  {
    v724 = objc_msgSend_intValueForProperty_(v13, v720, v721, v722, v723, 1516) != 0;
    *(v12 + 28) |= 4u;
    *(v12 + 663) = v724;
  }

  if (objc_msgSend_containsProperty_(v13, v720, v721, v722, v723, 1517))
  {
    v729 = objc_msgSend_intValueForProperty_(v13, v725, v726, v727, v728, 1517) != 0;
    *(v12 + 24) |= 0x8000000u;
    *(v12 + 656) = v729;
  }

  if (objc_msgSend_containsProperty_(v13, v725, v726, v727, v728, 1518))
  {
    v734 = objc_msgSend_intValueForProperty_(v13, v730, v731, v732, v733, 1518) != 0;
    *(v12 + 24) |= 0x10000000u;
    *(v12 + 657) = v734;
  }

  if (objc_msgSend_containsProperty_(v13, v730, v731, v732, v733, 1519))
  {
    v739 = objc_msgSend_intValueForProperty_(v13, v735, v736, v737, v738, 1519) != 0;
    *(v12 + 24) |= 0x20000000u;
    *(v12 + 658) = v739;
  }

  if (objc_msgSend_containsProperty_(v13, v735, v736, v737, v738, 1520))
  {
    v744 = objc_msgSend_intValueForProperty_(v13, v740, v741, v742, v743, 1520) != 0;
    *(v12 + 24) |= 0x40000000u;
    *(v12 + 659) = v744;
  }

  if (objc_msgSend_containsProperty_(v13, v740, v741, v742, v743, 1521))
  {
    v749 = objc_msgSend_intValueForProperty_(v13, v745, v746, v747, v748, 1521) != 0;
    *(v12 + 28) |= 0x40u;
    *(v12 + 676) = v749;
  }

  if (objc_msgSend_containsProperty_(v13, v745, v746, v747, v748, 1522))
  {
    v754 = objc_msgSend_intValueForProperty_(v13, v750, v751, v752, v753, 1522) != 0;
    *(v12 + 28) |= 0x80u;
    *(v12 + 677) = v754;
  }

  if (objc_msgSend_containsProperty_(v13, v750, v751, v752, v753, 1523))
  {
    v759 = objc_msgSend_intValueForProperty_(v13, v755, v756, v757, v758, 1523) != 0;
    *(v12 + 28) |= 0x100u;
    *(v12 + 678) = v759;
  }

  if (objc_msgSend_containsProperty_(v13, v755, v756, v757, v758, 1524))
  {
    v764 = objc_msgSend_intValueForProperty_(v13, v760, v761, v762, v763, 1524) != 0;
    *(v12 + 28) |= 0x200u;
    *(v12 + 679) = v764;
  }

  if (objc_msgSend_containsProperty_(v13, v760, v761, v762, v763, 1525))
  {
    v769 = objc_msgSend_intValueForProperty_(v13, v765, v766, v767, v768, 1525) != 0;
    *(v12 + 24) |= 0x800u;
    *(v12 + 592) = v769;
  }

  if (objc_msgSend_containsProperty_(v13, v765, v766, v767, v768, 1526))
  {
    objc_msgSend_floatValueForProperty_(v13, v770, v771, v772, v773, 1526);
    *(v12 + 24) |= 0x1000u;
    *(v12 + 596) = LODWORD(v771);
  }

  if (objc_msgSend_containsProperty_(v13, v770, v771, v772, v773, 1527))
  {
    objc_msgSend_floatValueForProperty_(v13, v774, v775, v776, v777, 1527);
    *(v12 + 24) |= 0x2000u;
    *(v12 + 600) = LODWORD(v775);
  }

  if (objc_msgSend_containsProperty_(v13, v774, v775, v776, v777, 1528))
  {
    objc_msgSend_floatValueForProperty_(v13, v778, v779, v780, v781, 1528);
    *(v12 + 24) |= 0x4000u;
    *(v12 + 604) = LODWORD(v779);
  }

  if (objc_msgSend_containsProperty_(v13, v778, v779, v780, v781, 1529))
  {
    objc_msgSend_floatValueForProperty_(v13, v782, v783, v784, v785, 1529);
    *(v12 + 24) |= 0x8000u;
    *(v12 + 608) = LODWORD(v783);
  }

  if (objc_msgSend_containsProperty_(v13, v782, v783, v784, v785, 1530))
  {
    objc_msgSend_floatValueForProperty_(v13, v786, v787, v788, v789, 1530);
    *(v12 + 28) |= 0x80000u;
    *(v12 + 716) = LODWORD(v787);
  }

  if (objc_msgSend_containsProperty_(v13, v786, v787, v788, v789, 1531))
  {
    objc_msgSend_floatValueForProperty_(v13, v790, v791, v792, v793, 1531);
    *(v12 + 24) |= 0x10000u;
    *(v12 + 612) = LODWORD(v791);
  }

  if (objc_msgSend_containsProperty_(v13, v790, v791, v792, v793, 1532))
  {
    v799 = objc_msgSend_objectForProperty_(v13, v794, v795, v796, v797, 1532);
    *(v12 + 20) |= 0x8000u;
    v803 = *(v12 + 416);
    if (!v803)
    {
      v804 = *(v12 + 8);
      if (v804)
      {
        v804 = *(v804 & 0xFFFFFFFFFFFFFFFELL);
      }

      v803 = MEMORY[0x277C97AA0](v804);
      *(v12 + 416) = v803;
    }

    objc_msgSend_saveToArchive_archiver_(v799, v798, v800, v801, v802, v803, archiverCopy);
  }

  if (objc_msgSend_containsProperty_(v13, v794, v795, v796, v797, 1533))
  {
    v810 = objc_msgSend_objectForProperty_(v13, v805, v806, v807, v808, 1533);
    *(v12 + 20) |= 0x10000u;
    v814 = *(v12 + 424);
    if (!v814)
    {
      v815 = *(v12 + 8);
      if (v815)
      {
        v815 = *(v815 & 0xFFFFFFFFFFFFFFFELL);
      }

      v814 = MEMORY[0x277C97AA0](v815);
      *(v12 + 424) = v814;
    }

    objc_msgSend_saveToArchive_archiver_(v810, v809, v811, v812, v813, v814, archiverCopy);
  }

  if (objc_msgSend_containsProperty_(v13, v805, v806, v807, v808, 1534))
  {
    v821 = objc_msgSend_objectForProperty_(v13, v816, v817, v818, v819, 1534);
    *(v12 + 20) |= 0x20000u;
    v825 = *(v12 + 432);
    if (!v825)
    {
      v826 = *(v12 + 8);
      if (v826)
      {
        v826 = *(v826 & 0xFFFFFFFFFFFFFFFELL);
      }

      v825 = MEMORY[0x277C97AA0](v826);
      *(v12 + 432) = v825;
    }

    objc_msgSend_saveToArchive_archiver_(v821, v820, v822, v823, v824, v825, archiverCopy);
  }

  if (objc_msgSend_containsProperty_(v13, v816, v817, v818, v819, 1535))
  {
    v832 = objc_msgSend_objectForProperty_(v13, v827, v828, v829, v830, 1535);
    *(v12 + 20) |= 0x40000u;
    v836 = *(v12 + 440);
    if (!v836)
    {
      v837 = *(v12 + 8);
      if (v837)
      {
        v837 = *(v837 & 0xFFFFFFFFFFFFFFFELL);
      }

      v836 = MEMORY[0x277C97AA0](v837);
      *(v12 + 440) = v836;
    }

    objc_msgSend_saveToArchive_archiver_(v832, v831, v833, v834, v835, v836, archiverCopy);
  }

  if (objc_msgSend_containsProperty_(v13, v827, v828, v829, v830, 1536))
  {
    v843 = objc_msgSend_objectForProperty_(v13, v838, v839, v840, v841, 1536);
    *(v12 + 20) |= 0x80000u;
    v847 = *(v12 + 448);
    if (!v847)
    {
      v848 = *(v12 + 8);
      if (v848)
      {
        v848 = *(v848 & 0xFFFFFFFFFFFFFFFELL);
      }

      v847 = MEMORY[0x277C97AA0](v848);
      *(v12 + 448) = v847;
    }

    objc_msgSend_saveToArchive_archiver_(v843, v842, v844, v845, v846, v847, archiverCopy);
  }

  if (objc_msgSend_containsProperty_(v13, v838, v839, v840, v841, 1537))
  {
    v854 = objc_msgSend_objectForProperty_(v13, v849, v850, v851, v852, 1537);
    *(v12 + 20) |= 0x40000000u;
    v858 = *(v12 + 536);
    if (!v858)
    {
      v859 = *(v12 + 8);
      if (v859)
      {
        v859 = *(v859 & 0xFFFFFFFFFFFFFFFELL);
      }

      v858 = MEMORY[0x277C97AA0](v859);
      *(v12 + 536) = v858;
    }

    objc_msgSend_saveToArchive_archiver_(v854, v853, v855, v856, v857, v858, archiverCopy);
  }

  if (objc_msgSend_containsProperty_(v13, v849, v850, v851, v852, 1538))
  {
    v865 = objc_msgSend_objectForProperty_(v13, v860, v861, v862, v863, 1538);
    *(v12 + 20) |= 0x100000u;
    v869 = *(v12 + 456);
    if (!v869)
    {
      v870 = *(v12 + 8);
      if (v870)
      {
        v870 = *(v870 & 0xFFFFFFFFFFFFFFFELL);
      }

      v869 = MEMORY[0x277C97AA0](v870);
      *(v12 + 456) = v869;
    }

    objc_msgSend_saveToArchive_archiver_(v865, v864, v866, v867, v868, v869, archiverCopy);
  }

  if (objc_msgSend_containsProperty_(v13, v860, v861, v862, v863, 1552))
  {
    v876 = objc_msgSend_objectForProperty_(v13, v871, v872, v873, v874, 1552);
    *(v12 + 20) |= 0x200000u;
    v880 = *(v12 + 464);
    if (!v880)
    {
      v881 = *(v12 + 8);
      if (v881)
      {
        v881 = *(v881 & 0xFFFFFFFFFFFFFFFELL);
      }

      v880 = MEMORY[0x277C97A90](v881);
      *(v12 + 464) = v880;
    }

    objc_msgSend_saveToArchive_archiver_(v876, v875, v877, v878, v879, v880, archiverCopy);
  }

  if (objc_msgSend_containsProperty_(v13, v871, v872, v873, v874, 1556))
  {
    v887 = objc_msgSend_objectForProperty_(v13, v882, v883, v884, v885, 1556);
    *(v12 + 20) |= 0x400000u;
    v891 = *(v12 + 472);
    if (!v891)
    {
      v892 = *(v12 + 8);
      if (v892)
      {
        v892 = *(v892 & 0xFFFFFFFFFFFFFFFELL);
      }

      v891 = MEMORY[0x277C97AA0](v892);
      *(v12 + 472) = v891;
    }

    objc_msgSend_saveToArchive_archiver_(v887, v886, v888, v889, v890, v891, archiverCopy);
  }

  if (objc_msgSend_containsProperty_(v13, v882, v883, v884, v885, 1558))
  {
    objc_msgSend_floatValueForProperty_(v13, v893, v894, v895, v896, 1558);
    *(v12 + 24) |= 0x20000u;
    *(v12 + 616) = LODWORD(v894);
  }

  if (objc_msgSend_containsProperty_(v13, v893, v894, v895, v896, 1559))
  {
    v901 = objc_msgSend_intValueForProperty_(v13, v897, v898, v899, v900, 1559);
    *(v12 + 24) |= 0x40000u;
    *(v12 + 620) = v901;
  }

  if (objc_msgSend_containsProperty_(v13, v897, v898, v899, v900, 1560))
  {
    objc_msgSend_floatValueForProperty_(v13, v902, v903, v904, v905, 1560);
    *(v12 + 24) |= 0x80000u;
    *(v12 + 624) = LODWORD(v903);
  }

  if (objc_msgSend_containsProperty_(v13, v902, v903, v904, v905, 1561))
  {
    v910 = objc_msgSend_intValueForProperty_(v13, v906, v907, v908, v909, 1561);
    *(v12 + 24) |= 0x100000u;
    *(v12 + 628) = v910;
  }

  if (objc_msgSend_containsProperty_(v13, v906, v907, v908, v909, 1562))
  {
    v915 = objc_msgSend_intValueForProperty_(v13, v911, v912, v913, v914, 1562);
    *(v12 + 24) |= 0x200000u;
    *(v12 + 632) = v915;
  }

  if (objc_msgSend_containsProperty_(v13, v911, v912, v913, v914, 1563))
  {
    v920 = objc_msgSend_intValueForProperty_(v13, v916, v917, v918, v919, 1563);
    *(v12 + 24) |= 0x400000u;
    *(v12 + 636) = v920;
  }

  if (objc_msgSend_containsProperty_(v13, v916, v917, v918, v919, 1564))
  {
    v925 = objc_msgSend_intValueForProperty_(v13, v921, v922, v923, v924, 1564);
    *(v12 + 24) |= 0x800000u;
    *(v12 + 640) = v925;
  }

  if (objc_msgSend_containsProperty_(v13, v921, v922, v923, v924, 1565))
  {
    v930 = objc_msgSend_intValueForProperty_(v13, v926, v927, v928, v929, 1565);
    *(v12 + 24) |= 0x1000000u;
    *(v12 + 644) = v930;
  }

  if (objc_msgSend_containsProperty_(v13, v926, v927, v928, v929, 1566))
  {
    v935 = objc_msgSend_intValueForProperty_(v13, v931, v932, v933, v934, 1566);
    *(v12 + 24) |= 0x2000000u;
    *(v12 + 648) = v935;
  }

  if (objc_msgSend_containsProperty_(v13, v931, v932, v933, v934, 1567))
  {
    v940 = objc_msgSend_intValueForProperty_(v13, v936, v937, v938, v939, 1567);
    *(v12 + 24) |= 0x4000000u;
    *(v12 + 652) = v940;
  }

  if (objc_msgSend_containsProperty_(v13, v936, v937, v938, v939, 1568))
  {
    v945 = objc_msgSend_intValueForProperty_(v13, v941, v942, v943, v944, 1568);
    *(v12 + 28) |= 8u;
    *(v12 + 664) = v945;
  }

  if (objc_msgSend_containsProperty_(v13, v941, v942, v943, v944, 1569))
  {
    v950 = objc_msgSend_intValueForProperty_(v13, v946, v947, v948, v949, 1569);
    *(v12 + 28) |= 0x10u;
    *(v12 + 668) = v950;
  }

  if (objc_msgSend_containsProperty_(v13, v946, v947, v948, v949, 1570))
  {
    v955 = objc_msgSend_intValueForProperty_(v13, v951, v952, v953, v954, 1570);
    *(v12 + 28) |= 0x100000u;
    *(v12 + 720) = v955;
  }

  if (objc_msgSend_containsProperty_(v13, v951, v952, v953, v954, 1571))
  {
    v960 = objc_msgSend_intValueForProperty_(v13, v956, v957, v958, v959, 1571);
    *(v12 + 28) |= 0x20u;
    *(v12 + 672) = v960;
  }

  if (objc_msgSend_containsProperty_(v13, v956, v957, v958, v959, 1572))
  {
    v965 = objc_msgSend_intValueForProperty_(v13, v961, v962, v963, v964, 1572);
    *(v12 + 28) |= 0x400u;
    *(v12 + 680) = v965;
  }

  if (objc_msgSend_containsProperty_(v13, v961, v962, v963, v964, 1573))
  {
    v970 = objc_msgSend_intValueForProperty_(v13, v966, v967, v968, v969, 1573);
    *(v12 + 28) |= 0x800u;
    *(v12 + 684) = v970;
  }

  if (objc_msgSend_containsProperty_(v13, v966, v967, v968, v969, 1574))
  {
    v975 = objc_msgSend_intValueForProperty_(v13, v971, v972, v973, v974, 1574);
    *(v12 + 28) |= 0x4000u;
    *(v12 + 696) = v975;
  }

  google::protobuf::internal::ExtensionSet::SetBool((v9 + 16), TSCH::series_supports_donut, 8, 1, 0);
  google::protobuf::internal::ExtensionSet::SetBool((v9 + 16), TSCH::series_supports_radar, 8, 1, 0);
}

- (void)loadFromPreUFFArchiveWithUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v9 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v5, v6, v7, v8, off_2812EE5D0[24]);

  if (*(v9 + 40))
  {
    v10 = *(v9 + 40);
  }

  else
  {
    v10 = MEMORY[0x277D80BD0];
  }

  v344.receiver = self;
  v344.super_class = TSCHChartSeriesStyle;
  [(TSCHChartSeriesStyle *)&v344 loadFromArchive:v10 unarchiver:unarchiverCopy];
  v11 = objc_alloc_init(MEMORY[0x277D80AB8]);
  v16 = v11;
  v17 = *(v9 + 28);
  if ((v17 & 0x20) != 0)
  {
    objc_msgSend_setIntValue_forProperty_(v11, v12, v13, v14, v15, *(v9 + 660), 1559);
    v17 = *(v9 + 28);
  }

  if ((v17 & 0x40) != 0)
  {
    objc_msgSend_setIntValue_forProperty_(v16, v12, v13, v14, v15, *(v9 + 664), 1561);
    v17 = *(v9 + 28);
  }

  if ((v17 & 0x80) != 0)
  {
    LODWORD(v13) = *(v9 + 668);
    objc_msgSend_setFloatValue_forProperty_(v16, v12, v13, v14, v15, 1558);
    v17 = *(v9 + 28);
  }

  if ((v17 & 0x100) != 0)
  {
    LODWORD(v13) = *(v9 + 672);
    objc_msgSend_setFloatValue_forProperty_(v16, v12, v13, v14, v15, 1560);
  }

  v18 = *(v9 + 16);
  if ((v18 & 2) != 0)
  {
    v20 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D80248], v12, v13, v14, v15, *(v9 + 48), unarchiverCopy);
    if (v20)
    {
      objc_msgSend_setObject_forProperty_(v16, v19, v21, v22, v23, v20, 1409);
    }

    v18 = *(v9 + 16);
  }

  if ((v18 & 4) != 0)
  {
    v25 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v12, v13, v14, v15, *(v9 + 56), unarchiverCopy);
    if (v25)
    {
      objc_msgSend_setObject_forProperty_(v16, v24, v26, v27, v28, v25, 1498);
    }
  }

  if ((*(v9 + 23) & 0x40) != 0)
  {
    objc_msgSend_setIntValue_forProperty_(v16, v12, v13, v14, v15, *(v9 + 536), 1563);
  }

  v29 = *(v9 + 16);
  if ((v29 & 8) != 0)
  {
    v31 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v12, v13, v14, v15, *(v9 + 64), unarchiverCopy);
    if (v31)
    {
      objc_msgSend_setObject_forProperty_(v16, v30, v32, v33, v34, v31, 1500);
    }

    v29 = *(v9 + 16);
  }

  if ((v29 & 0x10) != 0)
  {
    v36 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D80248], v12, v13, v14, v15, *(v9 + 72), unarchiverCopy);
    if (v36)
    {
      objc_msgSend_setObject_forProperty_(v16, v35, v37, v38, v39, v36, 1509);
    }

    v29 = *(v9 + 16);
  }

  if ((v29 & 0x20) != 0)
  {
    v41 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v12, v13, v14, v15, *(v9 + 80), unarchiverCopy);
    if (v41)
    {
      objc_msgSend_setObject_forProperty_(v16, v40, v42, v43, v44, v41, 1534);
    }
  }

  if ((*(v9 + 20) & 0x80000000) != 0)
  {
    LODWORD(v13) = *(v9 + 540);
    objc_msgSend_setFloatValue_forProperty_(v16, v12, v13, v14, v15, 1527);
  }

  if (*(v9 + 24))
  {
    objc_msgSend_setIntValue_forProperty_(v16, v12, v13, v14, v15, *(v9 + 544), 1566);
  }

  v45 = *(v9 + 16);
  if ((v45 & 0x40) != 0)
  {
    v47 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D80248], v12, v13, v14, v15, *(v9 + 88), unarchiverCopy);
    if (v47)
    {
      objc_msgSend_setObject_forProperty_(v16, v46, v48, v49, v50, v47, 1408);
    }

    v45 = *(v9 + 16);
  }

  if ((v45 & 0x80) != 0)
  {
    v52 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v12, v13, v14, v15, *(v9 + 96), unarchiverCopy);
    if (v52)
    {
      objc_msgSend_setObject_forProperty_(v16, v51, v53, v54, v55, v52, 1497);
    }
  }

  if ((*(v9 + 24) & 2) != 0)
  {
    objc_msgSend_setIntValue_forProperty_(v16, v12, v13, v14, v15, *(v9 + 548), 1562);
  }

  v56 = *(v9 + 16);
  if ((v56 & 0x100) != 0)
  {
    v58 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D80248], v12, v13, v14, v15, *(v9 + 104), unarchiverCopy);
    if (v58)
    {
      objc_msgSend_setObject_forProperty_(v16, v57, v59, v60, v61, v58, 1507);
    }

    v56 = *(v9 + 16);
  }

  if ((v56 & 0x200) != 0)
  {
    v63 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v12, v13, v14, v15, *(v9 + 112), unarchiverCopy);
    if (v63)
    {
      objc_msgSend_setObject_forProperty_(v16, v62, v64, v65, v66, v63, 1532);
    }
  }

  if ((*(v9 + 24) & 4) != 0)
  {
    LODWORD(v13) = *(v9 + 552);
    objc_msgSend_setFloatValue_forProperty_(v16, v12, v13, v14, v15, 1526);
  }

  v67 = *(v9 + 16);
  if ((v67 & 0x400) != 0)
  {
    v69 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D80248], v12, v13, v14, v15, *(v9 + 120), unarchiverCopy);
    if (v69)
    {
      objc_msgSend_setObject_forProperty_(v16, v68, v70, v71, v72, v69, 1414);
    }

    v67 = *(v9 + 16);
  }

  if ((v67 & 0x800) != 0)
  {
    v74 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v12, v13, v14, v15, *(v9 + 128), unarchiverCopy);
    if (v74)
    {
      objc_msgSend_setObject_forProperty_(v16, v73, v75, v76, v77, v74, 1504);
    }

    v67 = *(v9 + 16);
  }

  if ((v67 & 0x1000) != 0)
  {
    v79 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v12, v13, v14, v15, *(v9 + 136), unarchiverCopy);
    if (v79)
    {
      objc_msgSend_setObject_forProperty_(v16, v78, v80, v81, v82, v79, 1506);
    }

    v67 = *(v9 + 16);
  }

  if ((v67 & 0x2000) != 0)
  {
    v84 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D80248], v12, v13, v14, v15, *(v9 + 144), unarchiverCopy);
    if (v84)
    {
      objc_msgSend_setObject_forProperty_(v16, v83, v85, v86, v87, v84, 1513);
    }

    v67 = *(v9 + 16);
  }

  if ((v67 & 0x4000) != 0)
  {
    v89 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v12, v13, v14, v15, *(v9 + 152), unarchiverCopy);
    if (v89)
    {
      objc_msgSend_setObject_forProperty_(v16, v88, v90, v91, v92, v89, 1538);
    }
  }

  v93 = *(v9 + 24);
  if ((v93 & 8) != 0)
  {
    LODWORD(v13) = *(v9 + 556);
    objc_msgSend_setFloatValue_forProperty_(v16, v12, v13, v14, v15, 1531);
    v93 = *(v9 + 24);
  }

  if ((v93 & 0x10) != 0)
  {
    objc_msgSend_setIntValue_forProperty_(v16, v12, v13, v14, v15, *(v9 + 560), 1571);
  }

  if ((*(v9 + 17) & 0x80) != 0)
  {
    v95 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D80248], v12, v13, v14, v15, *(v9 + 160), unarchiverCopy);
    if (v95)
    {
      objc_msgSend_setObject_forProperty_(v16, v94, v96, v97, v98, v95, 1411);
    }
  }

  v99 = *(v9 + 24);
  if ((v99 & 0x20) != 0)
  {
    objc_msgSend_setIntValue_forProperty_(v16, v12, v13, v14, v15, *(v9 + 564), 1565);
    v99 = *(v9 + 24);
  }

  if ((v99 & 0x200000) != 0)
  {
    objc_msgSend_setIntValue_forProperty_(v16, v12, v13, v14, v15, *(v9 + 607), 1625);
  }

  v100 = *(v9 + 16);
  if ((v100 & 0x10000) != 0)
  {
    v102 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D80248], v12, v13, v14, v15, *(v9 + 168), unarchiverCopy);
    if (v102)
    {
      objc_msgSend_setObject_forProperty_(v16, v101, v103, v104, v105, v102, 1410);
    }

    v100 = *(v9 + 16);
  }

  if ((v100 & 0x20000) != 0)
  {
    v107 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803A8], v12, v13, v14, v15, *(v9 + 176), unarchiverCopy);
    if (v107)
    {
      objc_msgSend_setObject_forProperty_(v16, v106, v108, v109, v110, v107, 1459);
    }

    v100 = *(v9 + 16);
  }

  if ((v100 & 0x40000) != 0)
  {
    v112 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803A8], v12, v13, v14, v15, *(v9 + 184), unarchiverCopy);
    if (v112)
    {
      objc_msgSend_setObject_forProperty_(v16, v111, v113, v114, v115, v112, 1452);
    }

    v100 = *(v9 + 16);
  }

  if ((v100 & 0x80000) != 0)
  {
    v117 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803A8], v12, v13, v14, v15, *(v9 + 192), unarchiverCopy);
    if (v117)
    {
      objc_msgSend_setObject_forProperty_(v16, v116, v118, v119, v120, v117, 1451);
    }

    v100 = *(v9 + 16);
  }

  if ((v100 & 0x100000) != 0)
  {
    v122 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803A8], v12, v13, v14, v15, *(v9 + 200), unarchiverCopy);
    if (v122)
    {
      objc_msgSend_setObject_forProperty_(v16, v121, v123, v124, v125, v122, 1461);
    }

    v100 = *(v9 + 16);
  }

  if ((v100 & 0x200000) != 0)
  {
    v127 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803A8], v12, v13, v14, v15, *(v9 + 208), unarchiverCopy);
    if (v127)
    {
      objc_msgSend_setObject_forProperty_(v16, v126, v128, v129, v130, v127, 1458);
    }

    v100 = *(v9 + 16);
  }

  if ((v100 & 0x400000) != 0)
  {
    v132 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803A8], v12, v13, v14, v15, *(v9 + 216), unarchiverCopy);
    if (v132)
    {
      objc_msgSend_setObject_forProperty_(v16, v131, v133, v134, v135, v132, 1456);
    }

    v100 = *(v9 + 16);
  }

  if ((v100 & 0x800000) != 0)
  {
    v137 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803A8], v12, v13, v14, v15, *(v9 + 224), unarchiverCopy);
    if (v137)
    {
      objc_msgSend_setObject_forProperty_(v16, v136, v138, v139, v140, v137, 1457);
    }

    v100 = *(v9 + 16);
  }

  if ((v100 & 0x1000000) != 0)
  {
    v142 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803A8], v12, v13, v14, v15, *(v9 + 232), unarchiverCopy);
    if (v142)
    {
      objc_msgSend_setObject_forProperty_(v16, v141, v143, v144, v145, v142, 1455);
    }

    v100 = *(v9 + 16);
  }

  if ((v100 & 0x2000000) != 0)
  {
    v147 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803A8], v12, v13, v14, v15, *(v9 + 240), unarchiverCopy);
    if (v147)
    {
      objc_msgSend_setObject_forProperty_(v16, v146, v148, v149, v150, v147, 1454);
    }
  }

  v151 = *(v9 + 20);
  if ((v151 & 0x400) != 0)
  {
    v153 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D80248], v12, v13, v14, v15, *(v9 + 376), unarchiverCopy);
    if (v153)
    {
      objc_msgSend_setObject_forProperty_(v16, v152, v154, v155, v156, v153, 1508);
    }

    v151 = *(v9 + 20);
  }

  if ((v151 & 0x800) != 0)
  {
    v158 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v12, v13, v14, v15, *(v9 + 384), unarchiverCopy);
    if (v158)
    {
      objc_msgSend_setObject_forProperty_(v16, v157, v159, v160, v161, v158, 1499);
    }

    v151 = *(v9 + 20);
  }

  if ((v151 & 0x1000) != 0)
  {
    v163 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v12, v13, v14, v15, *(v9 + 392), unarchiverCopy);
    if (v163)
    {
      objc_msgSend_setObject_forProperty_(v16, v162, v164, v165, v166, v163, 1533);
    }
  }

  if ((*(v9 + 24) & 0x40) != 0)
  {
    objc_msgSend_setIntValue_forProperty_(v16, v12, v13, v14, v15, *(v9 + 568), 1564);
  }

  if ((*(v9 + 21) & 0x20) != 0)
  {
    v168 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803A8], v12, v13, v14, v15, *(v9 + 400), unarchiverCopy);
    if (v168)
    {
      objc_msgSend_setObject_forProperty_(v16, v167, v169, v170, v171, v168, 1453);
    }
  }

  if ((*(v9 + 26) & 0x40) != 0)
  {
    objc_msgSend_setIntValue_forProperty_(v16, v12, v13, v14, v15, *(v9 + 608), 1520);
  }

  v172 = *(v9 + 20);
  if ((v172 & 0x100000) != 0)
  {
    v174 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803A8], v12, v13, v14, v15, *(v9 + 456), unarchiverCopy);
    if (v174)
    {
      objc_msgSend_setObject_forProperty_(v16, v173, v175, v176, v177, v174, 1447);
    }

    v172 = *(v9 + 20);
  }

  if ((v172 & 0x200000) != 0)
  {
    v179 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803A8], v12, v13, v14, v15, *(v9 + 464), unarchiverCopy);
    if (v179)
    {
      objc_msgSend_setObject_forProperty_(v16, v178, v180, v181, v182, v179, 1448);
    }

    v172 = *(v9 + 20);
  }

  if ((v172 & 0x400000) != 0)
  {
    v184 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803A8], v12, v13, v14, v15, *(v9 + 472), unarchiverCopy);
    if (v184)
    {
      objc_msgSend_setObject_forProperty_(v16, v183, v185, v186, v187, v184, 1449);
    }

    v172 = *(v9 + 20);
  }

  if ((v172 & 0x800000) != 0)
  {
    v189 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803A8], v12, v13, v14, v15, *(v9 + 480), unarchiverCopy);
    if (v189)
    {
      objc_msgSend_setObject_forProperty_(v16, v188, v190, v191, v192, v189, 1446);
    }

    v172 = *(v9 + 20);
  }

  if ((v172 & 0x1000000) != 0)
  {
    v194 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803A8], v12, v13, v14, v15, *(v9 + 488), unarchiverCopy);
    if (v194)
    {
      objc_msgSend_setObject_forProperty_(v16, v193, v195, v196, v197, v194, 1450);
    }
  }

  v198 = *(v9 + 24);
  if ((v198 & 0x80) != 0)
  {
    objc_msgSend_setIntValue_forProperty_(v16, v12, v13, v14, v15, *(v9 + 572), 1421);
    v198 = *(v9 + 24);
  }

  if ((v198 & 0x100) != 0)
  {
    objc_msgSend_setIntValue_forProperty_(v16, v12, v13, v14, v15, *(v9 + 576), 1420);
    v198 = *(v9 + 24);
  }

  if ((v198 & 0x200) != 0)
  {
    objc_msgSend_setIntValue_forProperty_(v16, v12, v13, v14, v15, *(v9 + 580), 1423);
    v198 = *(v9 + 24);
  }

  if ((v198 & 0x400) != 0)
  {
    objc_msgSend_setIntValue_forProperty_(v16, v12, v13, v14, v15, *(v9 + 584), 1419);
    v198 = *(v9 + 24);
  }

  if ((v198 & 0x800) != 0)
  {
    objc_msgSend_setIntValue_forProperty_(v16, v12, v13, v14, v15, *(v9 + 588), 1425);
    v198 = *(v9 + 24);
  }

  if ((v198 & 0x1000) != 0)
  {
    objc_msgSend_setIntValue_forProperty_(v16, v12, v13, v14, v15, *(v9 + 592), 1424);
    v198 = *(v9 + 24);
  }

  if ((v198 & 0x2000) != 0)
  {
    LODWORD(v13) = *(v9 + 596);
    objc_msgSend_setFloatValue_forProperty_(v16, v12, v13, v14, v15, 1436);
    v198 = *(v9 + 24);
  }

  if ((v198 & 0x800000) != 0)
  {
    objc_msgSend_setIntValue_forProperty_(v16, v12, v13, v14, v15, *(v9 + 609), 1521);
    v198 = *(v9 + 24);
  }

  if ((v198 & 0x1000000) != 0)
  {
    objc_msgSend_setIntValue_forProperty_(v16, v12, v13, v14, v15, *(v9 + 610), 1519);
    v198 = *(v9 + 24);
  }

  if ((v198 & 0x4000) != 0)
  {
    objc_msgSend_setIntValue_forProperty_(v16, v12, v13, v14, v15, *(v9 + 600), 1525);
    v198 = *(v9 + 24);
  }

  if ((v198 & 0x8000) != 0)
  {
    objc_msgSend_setIntValue_forProperty_(v16, v12, v13, v14, v15, *(v9 + 601), 1523);
    v198 = *(v9 + 24);
  }

  if ((v198 & 0x10000) != 0)
  {
    objc_msgSend_setIntValue_forProperty_(v16, v12, v13, v14, v15, *(v9 + 602), 1522);
    v198 = *(v9 + 24);
  }

  if ((v198 & 0x20000) != 0)
  {
    objc_msgSend_setIntValue_forProperty_(v16, v12, v13, v14, v15, *(v9 + 603), 1515);
    v198 = *(v9 + 24);
  }

  if ((v198 & 0x40000) != 0)
  {
    objc_msgSend_setIntValue_forProperty_(v16, v12, v13, v14, v15, *(v9 + 604), 1514);
    v198 = *(v9 + 24);
  }

  if ((v198 & 0x80000) != 0)
  {
    objc_msgSend_setIntValue_forProperty_(v16, v12, v13, v14, v15, *(v9 + 605), 1517);
    v198 = *(v9 + 24);
  }

  if ((v198 & 0x100000) != 0)
  {
    objc_msgSend_setIntValue_forProperty_(v16, v12, v13, v14, v15, *(v9 + 606), 1516);
  }

  v199 = *(v9 + 16);
  if ((v199 & 0x4000000) != 0)
  {
    v201 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D80248], v12, v13, v14, v15, *(v9 + 248), unarchiverCopy);
    if (v201)
    {
      objc_msgSend_setObject_forProperty_(v16, v200, v202, v203, v204, v201, 1413);
    }

    v199 = *(v9 + 16);
  }

  if ((v199 & 0x8000000) != 0)
  {
    v206 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D80248], v12, v13, v14, v15, *(v9 + 256), unarchiverCopy);
    if (v206)
    {
      objc_msgSend_setObject_forProperty_(v16, v205, v207, v208, v209, v206, 1412);
    }

    v199 = *(v9 + 16);
  }

  if ((v199 & 0x10000000) != 0)
  {
    v211 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v12, v13, v14, v15, *(v9 + 264), unarchiverCopy);
    if (v211)
    {
      objc_msgSend_setObject_forProperty_(v16, v210, v212, v213, v214, v211, 1502);
    }

    v199 = *(v9 + 16);
  }

  if ((v199 & 0x20000000) != 0)
  {
    v216 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v12, v13, v14, v15, *(v9 + 272), unarchiverCopy);
    if (v216)
    {
      objc_msgSend_setObject_forProperty_(v16, v215, v217, v218, v219, v216, 1503);
    }

    v199 = *(v9 + 16);
  }

  if ((v199 & 0x40000000) != 0)
  {
    v221 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v12, v13, v14, v15, *(v9 + 280), unarchiverCopy);
    if (v221)
    {
      objc_msgSend_setObject_forProperty_(v16, v220, v222, v223, v224, v221, 1501);
    }
  }

  v225 = *(v9 + 24);
  if ((v225 & 0x2000000) != 0)
  {
    LODWORD(v13) = *(v9 + 612);
    objc_msgSend_setFloatValue_forProperty_(v16, v12, v13, v14, v15, 1529);
    v225 = *(v9 + 24);
  }

  if ((v225 & 0x4000000) != 0)
  {
    LODWORD(v13) = *(v9 + 616);
    objc_msgSend_setFloatValue_forProperty_(v16, v12, v13, v14, v15, 1528);
  }

  if ((*(v9 + 16) & 0x80000000) != 0)
  {
    v227 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D80248], v12, v13, v14, v15, *(v9 + 288), unarchiverCopy);
    if (v227)
    {
      objc_msgSend_setObject_forProperty_(v16, v226, v228, v229, v230, v227, 1511);
    }
  }

  v231 = *(v9 + 20);
  if (v231)
  {
    v233 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D80248], v12, v13, v14, v15, *(v9 + 296), unarchiverCopy);
    if (v233)
    {
      objc_msgSend_setObject_forProperty_(v16, v232, v234, v235, v236, v233, 1510);
    }

    v231 = *(v9 + 20);
  }

  if ((v231 & 2) != 0)
  {
    v238 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v12, v13, v14, v15, *(v9 + 304), unarchiverCopy);
    if (v238)
    {
      objc_msgSend_setObject_forProperty_(v16, v237, v239, v240, v241, v238, 1536);
    }

    v231 = *(v9 + 20);
  }

  if ((v231 & 4) != 0)
  {
    v243 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v12, v13, v14, v15, *(v9 + 312), unarchiverCopy);
    if (v243)
    {
      objc_msgSend_setObject_forProperty_(v16, v242, v244, v245, v246, v243, 1535);
    }
  }

  v247 = *(v9 + 24);
  if ((v247 & 0x8000000) != 0)
  {
    objc_msgSend_setIntValue_forProperty_(v16, v12, v13, v14, v15, *(v9 + 620), 1568);
    v247 = *(v9 + 24);
  }

  if ((v247 & 0x10000000) != 0)
  {
    objc_msgSend_setIntValue_forProperty_(v16, v12, v13, v14, v15, *(v9 + 624), 1569);
    v247 = *(v9 + 24);
  }

  if ((v247 & 0x20000000) != 0)
  {
    objc_msgSend_setIntValue_forProperty_(v16, v12, v13, v14, v15, *(v9 + 628), 1567);
    v247 = *(v9 + 24);
  }

  if ((v247 & 0x40000000) != 0)
  {
    objc_msgSend_setIntValue_forProperty_(v16, v12, v13, v14, v15, *(v9 + 632), 1439);
    v247 = *(v9 + 24);
  }

  if (v247 < 0)
  {
    objc_msgSend_setIntValue_forProperty_(v16, v12, v13, v14, v15, *(v9 + 636), 1438);
  }

  v248 = *(v9 + 28);
  if (v248)
  {
    objc_msgSend_setIntValue_forProperty_(v16, v12, v13, v14, v15, *(v9 + 640), 1437);
    v248 = *(v9 + 28);
  }

  if ((v248 & 2) != 0)
  {
    objc_msgSend_setIntValue_forProperty_(v16, v12, v13, v14, v15, *(v9 + 644), 1442);
    v248 = *(v9 + 28);
  }

  if ((v248 & 4) != 0)
  {
    objc_msgSend_setIntValue_forProperty_(v16, v12, v13, v14, v15, *(v9 + 648), 1441);
    v248 = *(v9 + 28);
  }

  if ((v248 & 8) != 0)
  {
    objc_msgSend_setIntValue_forProperty_(v16, v12, v13, v14, v15, *(v9 + 652), 1573);
    v248 = *(v9 + 28);
  }

  if ((v248 & 0x10) != 0)
  {
    objc_msgSend_setIntValue_forProperty_(v16, v12, v13, v14, v15, *(v9 + 656), 1572);
  }

  v249 = *(v9 + 20);
  if ((v249 & 8) != 0)
  {
    v251 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v12, v13, v14, v15, *(v9 + 320), unarchiverCopy);
    if (v251)
    {
      objc_msgSend_setObject_forProperty_(v16, v250, v252, v253, v254, v251, 1556);
    }

    v249 = *(v9 + 20);
  }

  if ((v249 & 0x10) != 0)
  {
    v256 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803A8], v12, v13, v14, v15, *(v9 + 328), unarchiverCopy);
    if (v256)
    {
      objc_msgSend_setObject_forProperty_(v16, v255, v257, v258, v259, v256, 1552);
    }

    v249 = *(v9 + 20);
  }

  if ((v249 & 0x20) != 0)
  {
    v261 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803A8], v12, v13, v14, v15, *(v9 + 336), unarchiverCopy);
    if (v261)
    {
      objc_msgSend_setObject_forProperty_(v16, v260, v262, v263, v264, v261, 1394);
    }

    v249 = *(v9 + 20);
  }

  if ((v249 & 0x40) != 0)
  {
    v266 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v12, v13, v14, v15, *(v9 + 344), unarchiverCopy);
    if (v266)
    {
      objc_msgSend_setObject_forProperty_(v16, v265, v267, v268, v269, v266, 1399);
    }

    v249 = *(v9 + 20);
  }

  if ((v249 & 0x80) != 0)
  {
    v271 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v12, v13, v14, v15, *(v9 + 352), unarchiverCopy);
    if (v271)
    {
      objc_msgSend_setObject_forProperty_(v16, v270, v272, v273, v274, v271, 1400);
    }

    v249 = *(v9 + 20);
  }

  if ((v249 & 0x100) != 0)
  {
    v276 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D80308], v12, v13, v14, v15, *(v9 + 360), unarchiverCopy);
    if (v276)
    {
      objc_msgSend_setObject_forProperty_(v16, v275, v277, v278, v279, v276, 1388);
    }

    v249 = *(v9 + 20);
  }

  if ((v249 & 0x200) != 0)
  {
    v281 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D80308], v12, v13, v14, v15, *(v9 + 368), unarchiverCopy);
    if (v281)
    {
      objc_msgSend_setObject_forProperty_(v16, v280, v282, v283, v284, v281, 1389);
    }

    v249 = *(v9 + 20);
  }

  if ((v249 & 0x4000) != 0)
  {
    v286 = objc_msgSend_instanceWithArchive_unarchiver_(TSCHDEPRECATED3DFill, v12, v13, v14, v15, *(v9 + 408), unarchiverCopy);
    if (v286)
    {
      objc_msgSend_setObject_forProperty_(v16, v285, v287, v288, v289, v286, 1622);
    }

    v249 = *(v9 + 20);
  }

  if ((v249 & 0x8000) != 0)
  {
    v291 = objc_msgSend_instanceWithArchive_unarchiver_(TSCHDEPRECATED3DFill, v12, v13, v14, v15, *(v9 + 416), unarchiverCopy);
    if (v291)
    {
      objc_msgSend_setObject_forProperty_(v16, v290, v292, v293, v294, v291, 1620);
    }

    v249 = *(v9 + 20);
  }

  if ((v249 & 0x10000) != 0)
  {
    v296 = objc_msgSend_instanceWithArchive_unarchiver_(TSCHDEPRECATED3DFill, v12, v13, v14, v15, *(v9 + 424), unarchiverCopy);
    if (v296)
    {
      objc_msgSend_setObject_forProperty_(v16, v295, v297, v298, v299, v296, 1621);
    }

    v249 = *(v9 + 20);
  }

  if ((v249 & 0x20000) != 0)
  {
    v301 = objc_msgSend_instanceWithArchive_unarchiver_(TSCHDEPRECATED3DFill, v12, v13, v14, v15, *(v9 + 432), unarchiverCopy);
    if (v301)
    {
      objc_msgSend_setObject_forProperty_(v16, v300, v302, v303, v304, v301, 1623);
    }

    v249 = *(v9 + 20);
  }

  if ((v249 & 0x40000) != 0)
  {
    v306 = objc_msgSend_instanceWithArchive_unarchiver_(TSCHDEPRECATED3DFill, v12, v13, v14, v15, *(v9 + 440), unarchiverCopy);
    if (v306)
    {
      objc_msgSend_setObject_forProperty_(v16, v305, v307, v308, v309, v306, 1619);
    }

    v249 = *(v9 + 20);
  }

  if ((v249 & 0x80000) != 0)
  {
    v311 = objc_msgSend_instanceWithArchive_unarchiver_(TSCHDEPRECATED3DFill, v12, v13, v14, v15, *(v9 + 448), unarchiverCopy);
    if (v311)
    {
      objc_msgSend_setObject_forProperty_(v16, v310, v312, v313, v314, v311, 1624);
    }

    v249 = *(v9 + 20);
  }

  if ((v249 & 0x2000000) != 0)
  {
    v316 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D80248], v12, v13, v14, v15, *(v9 + 496), unarchiverCopy);
    if (v316)
    {
      objc_msgSend_setObject_forProperty_(v16, v315, v317, v318, v319, v316, 1404);
    }

    v249 = *(v9 + 20);
  }

  if ((v249 & 0x4000000) != 0)
  {
    v321 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D80248], v12, v13, v14, v15, *(v9 + 504), unarchiverCopy);
    if (v321)
    {
      objc_msgSend_setObject_forProperty_(v16, v320, v322, v323, v324, v321, 1405);
    }

    v249 = *(v9 + 20);
  }

  if ((v249 & 0x8000000) != 0)
  {
    v326 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D80248], v12, v13, v14, v15, *(v9 + 512), unarchiverCopy);
    if (v326)
    {
      objc_msgSend_setObject_forProperty_(v16, v325, v327, v328, v329, v326, 1406);
    }

    v249 = *(v9 + 20);
  }

  if ((v249 & 0x10000000) != 0)
  {
    v331 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D80248], v12, v13, v14, v15, *(v9 + 520), unarchiverCopy);
    if (v331)
    {
      objc_msgSend_setObject_forProperty_(v16, v330, v332, v333, v334, v331, 1403);
    }

    v249 = *(v9 + 20);
  }

  if ((v249 & 0x20000000) != 0)
  {
    v336 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D80248], v12, v13, v14, v15, *(v9 + 528), unarchiverCopy);
    if (v336)
    {
      objc_msgSend_setObject_forProperty_(v16, v335, v337, v338, v339, v336, 1407);
    }
  }

  if (objc_msgSend_hasPreUFFVersion(unarchiverCopy, v12, v13, v14, v15))
  {
    objc_msgSend_handlePreUFFUpgradesForOverridePropertyMapWithUnarchiver_(self, v340, v341, v342, v343, unarchiverCopy);
  }

  objc_storeStrong((&self->super.super.super.super.isa + *MEMORY[0x277D80AF0]), v16);
}

- (void)handlePreUFFUpgradesForOverridePropertyMapWithUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  v9 = objc_msgSend_preUFFVersion(unarchiverCopy, v5, v6, v7, v8);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_2762C2D14;
  v13[3] = &unk_27A6B7688;
  v13[4] = self;
  v13[5] = v9;
  objc_msgSend_addFinalizeHandler_(unarchiverCopy, v10, COERCE_DOUBLE(3221225472), v11, v12, v13);
}

- (int64_t)mixingTypeWithObject:(id)object context:(id)context
{
  objectCopy = object;
  contextCopy = context;
  objc_opt_class();
  v9 = TSUDynamicCast();
  if (!v9)
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v10, v11, v12, "[TSCHChartSeriesStyle mixingTypeWithObject:context:]");
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, v16, v17, v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartSeriesStyle.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v20, v21, v22, v23, v14, v19, 642, 0, "nil object after cast");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25, v26, v27);
  }

  v28 = objc_msgSend_propertySet(MEMORY[0x277D80AA8], v8, v10, v11, v12);
  v33 = objc_msgSend_propertyMap(self, v29, v30, v31, v32);
  v38 = objc_msgSend_allProperties(v33, v34, v35, v36, v37);
  objc_msgSend_addProperties_(v28, v39, v40, v41, v42, v38);

  v47 = objc_msgSend_propertyMap(v9, v43, v44, v45, v46);
  v52 = objc_msgSend_allProperties(v47, v48, v49, v50, v51);
  objc_msgSend_addProperties_(v28, v53, v54, v55, v56, v52);

  v69 = 0;
  v70 = &v69;
  v71 = 0x2020000000;
  v72 = 4;
  v65[0] = MEMORY[0x277D85DD0];
  v65[1] = 3221225472;
  v65[2] = sub_2762C31F8;
  v65[3] = &unk_27A6B76B0;
  v65[4] = self;
  v57 = v9;
  v66 = v57;
  v68 = &v69;
  v58 = contextCopy;
  v67 = v58;
  objc_msgSend_enumeratePropertiesUsingBlock_(v28, v59, v60, v61, v62, v65);
  v63 = v70[3];

  _Block_object_dispose(&v69, 8);
  return v63;
}

- (id)mixedObjectWithFraction:(double)fraction ofObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  v7 = TSUDynamicCast();
  v12 = objc_msgSend_copy(self, v8, v9, v10, v11);
  v17 = objc_msgSend_propertySet(MEMORY[0x277D80AA8], v13, v14, v15, v16);
  v22 = objc_msgSend_propertyMap(self, v18, v19, v20, v21);
  v27 = objc_msgSend_allProperties(v22, v23, v24, v25, v26);
  objc_msgSend_addProperties_(v17, v28, v29, v30, v31, v27);

  v36 = objc_msgSend_propertyMap(v7, v32, v33, v34, v35);
  v41 = objc_msgSend_allProperties(v36, v37, v38, v39, v40);
  objc_msgSend_addProperties_(v17, v42, v43, v44, v45, v41);

  v55[0] = MEMORY[0x277D85DD0];
  v55[1] = 3221225472;
  v55[2] = sub_2762C34D0;
  v55[3] = &unk_27A6B76D8;
  v55[4] = self;
  v46 = v7;
  v56 = v46;
  fractionCopy = fraction;
  v47 = v12;
  v57 = v47;
  objc_msgSend_enumeratePropertiesUsingBlock_(v17, v48, v49, v50, v51, v55);
  v52 = v57;
  v53 = v47;

  return v47;
}

+ (id)properties
{
  if (qword_280A47800 != -1)
  {
    sub_2764A7F1C();
  }

  v3 = qword_280A477F8;

  return v3;
}

+ (id)imageFillProperties
{
  if (qword_280A47810 != -1)
  {
    sub_2764A7F30();
  }

  v3 = qword_280A47808;

  return v3;
}

+ (int)defaultIntValueForProperty:(int)property
{
  v6 = *&property;
  if (qword_280A47820 != -1)
  {
    sub_2764A7F44();
  }

  if (qword_280A47818 && objc_msgSend_containsProperty_(qword_280A47818, a2, v3, v4, v5, v6))
  {
    v12 = qword_280A47818;

    return objc_msgSend_intValueForProperty_(v12, v8, v9, v10, v11, v6);
  }

  else
  {
    result = 0;
    v14 = (v6 - 1514);
    if (v14 <= 0x3C)
    {
      if (((1 << (v6 + 22)) & 0x1004A00000000FFFLL) != 0)
      {
        return result;
      }

      if (v14 == 51)
      {
        return 5;
      }
    }

    if (((v6 - 1395) > 0x2C || ((1 << (v6 - 115)) & 0x100004400003) == 0) && v6 != 1625)
    {
      v15.receiver = self;
      v15.super_class = &OBJC_METACLASS___TSCHChartSeriesStyle;
      return objc_msgSendSuper2(&v15, sel_defaultIntValueForProperty_, v6);
    }
  }

  return result;
}

+ (float)defaultFloatValueForProperty:(int)property
{
  v6 = *&property;
  if (qword_280A47830 != -1)
  {
    sub_2764A7F58();
  }

  if (!qword_280A47828 || !objc_msgSend_containsProperty_(qword_280A47828, a2, v3, v4, v5, v6))
  {
    LODWORD(v3) = 2139095040;
    if (v6 <= 1525)
    {
      if (v6 == 1416)
      {
        return *&v3;
      }

      if (v6 == 1436)
      {
        goto LABEL_12;
      }
    }

    else
    {
      if ((v6 - 1526) < 6)
      {
        return *&v3;
      }

      if (v6 == 1558 || v6 == 1560)
      {
LABEL_12:
        LODWORD(v3) = 1.0;
        return *&v3;
      }
    }

    v13.receiver = self;
    v13.super_class = &OBJC_METACLASS___TSCHChartSeriesStyle;
    objc_msgSendSuper2(&v13, sel_defaultFloatValueForProperty_, v6, v3);
    return *&v3;
  }

  v11 = qword_280A47828;

  objc_msgSend_floatValueForProperty_(v11, v8, v3, v9, v10, v6);
  return *&v3;
}

+ (id)defaultValueForProperty:(int)property
{
  v6 = *&property;
  if (qword_280A47840 != -1)
  {
    sub_2764A7F6C();
  }

  if (qword_280A47838 && objc_msgSend_containsProperty_(qword_280A47838, a2, v3, v4, v5, v6))
  {
    v8 = objc_msgSend_objectForProperty_(qword_280A47838, a2, v3, v4, v5, v6);
LABEL_36:
    v9 = v8;
    goto LABEL_37;
  }

  v9 = 0;
  if (v6 > 1453)
  {
    switch(v6)
    {
      case 1497:
      case 1498:
      case 1499:
      case 1501:
      case 1502:
      case 1504:
      case 1505:
      case 1533:
        v8 = objc_msgSend_emptyStroke(MEMORY[0x277D803C0], a2, v3, v4, v5);
        goto LABEL_36;
      case 1500:
      case 1503:
        v15 = MEMORY[0x277D803C0];
        v16 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D81180], a2, 0.180392157, 0.341176471, 0.549019608, 1.0);
        goto LABEL_32;
      case 1506:
      case 1532:
      case 1534:
        v20 = MEMORY[0x277D803C0];
        v21 = objc_msgSend_blueColor(MEMORY[0x277D81180], a2, v3, v4, v5);
        goto LABEL_25;
      case 1507:
      case 1509:
      case 1510:
      case 1511:
      case 1512:
      case 1513:
        v8 = objc_msgSend_whiteColor(MEMORY[0x277D801F8], a2, v3, v4, v5);
        goto LABEL_36;
      case 1508:
        v8 = objc_msgSend_blackColor(MEMORY[0x277D801F8], a2, v3, v4, v5);
        goto LABEL_36;
      case 1514:
      case 1515:
      case 1516:
      case 1517:
      case 1518:
      case 1519:
      case 1520:
      case 1521:
      case 1522:
      case 1523:
      case 1524:
      case 1525:
      case 1526:
      case 1527:
      case 1528:
      case 1529:
      case 1530:
      case 1531:
      case 1539:
      case 1540:
      case 1541:
      case 1542:
      case 1543:
      case 1544:
      case 1545:
      case 1546:
      case 1547:
      case 1548:
      case 1549:
      case 1550:
      case 1551:
      case 1553:
      case 1554:
      case 1555:
        goto LABEL_28;
      case 1535:
      case 1536:
      case 1537:
      case 1538:
        v15 = MEMORY[0x277D803C0];
        v16 = objc_msgSend_blueColor(MEMORY[0x277D81180], a2, v3, v4, v5);
        goto LABEL_32;
      case 1552:
        goto LABEL_29;
      case 1556:
        v15 = MEMORY[0x277D803C0];
        v16 = objc_msgSend_blackColor(MEMORY[0x277D81180], a2, v3, v4, v5);
LABEL_32:
        v11 = v16;
        objc_msgSend_strokeWithColor_width_(v15, v17, 2.0, v18, v19, v16);
        goto LABEL_33;
      default:
        if (v6 == 1454)
        {
          v27 = MEMORY[0x277D803A8];
          v11 = objc_msgSend_blackColor(MEMORY[0x277D81180], a2, v3, v4, v5);
          v25 = objc_msgSend_shadowWithAngle_offset_radius_opacity_color_enabled_(v27, v28, 45.0, 6.0, 10.0, v11, 1, 0.75);
          goto LABEL_34;
        }

        if (v6 == 1622)
        {
          goto LABEL_37;
        }

        break;
    }

    goto LABEL_28;
  }

  if (v6 <= 1393)
  {
    if ((v6 - 1368) < 2 || (v6 - 1388) < 2)
    {
      goto LABEL_37;
    }

    if (v6 == 1370)
    {
      v10 = MEMORY[0x277D803C0];
      v11 = objc_msgSend_blackColor(MEMORY[0x277D81180], a2, v3, v4, v5);
      objc_msgSend_strokeWithColor_width_(v10, v12, 0.5, v13, v14, v11);
      goto LABEL_33;
    }

LABEL_28:
    v29.receiver = self;
    v29.super_class = &OBJC_METACLASS___TSCHChartSeriesStyle;
    v8 = objc_msgSendSuper2(&v29, sel_defaultValueForProperty_, v6);
    goto LABEL_36;
  }

  if (v6 > 1399)
  {
    if (v6 != 1400)
    {
      if (v6 == 1411)
      {
        v8 = objc_msgSend_blueColor(MEMORY[0x277D801F8], a2, v3, v4, v5);
        goto LABEL_36;
      }

      goto LABEL_28;
    }
  }

  else
  {
    if (v6 == 1394)
    {
LABEL_29:
      v8 = objc_msgSend_nullShadow(TSCHStyleUtilities, a2, v3, v4, v5);
      goto LABEL_36;
    }

    if (v6 != 1399)
    {
      goto LABEL_28;
    }
  }

  v20 = MEMORY[0x277D803C0];
  v21 = objc_msgSend_redColor(MEMORY[0x277D81180], a2, v3, v4, v5);
LABEL_25:
  v11 = v21;
  objc_msgSend_strokeWithColor_width_(v20, v22, 1.0, v23, v24, v21);
  v25 = LABEL_33:;
LABEL_34:
  v9 = v25;

LABEL_37:

  return v9;
}

+ (int)muxDefaultPropertyForSpecificProperty:(int)property
{
  if (qword_280A47850 != -1)
  {
    sub_2764A7F80();
  }

  result = objc_msgSend_containsKey_(qword_280A47848, a2, v3, v4, v5, property);
  if (result)
  {
    return objc_msgSend_intForKey_(qword_280A47848, v8, v9, v10, v11, property);
  }

  return result;
}

@end