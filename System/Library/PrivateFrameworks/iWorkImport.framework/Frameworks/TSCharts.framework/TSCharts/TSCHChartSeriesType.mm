@interface TSCHChartSeriesType
+ (NSArray)allSeriesTypes;
+ (NSArray)styleArchTypes;
+ (NSString)inspectorDefaultLocalizedValueLabelsDisclosureTitle;
+ (NSString)inspectorDefaultLocalizedValueLabelsTabName;
+ (TSCHChartSeriesType)allocWithZone:(_NSZone *)zone;
+ (TSCHChartSeriesType)area3DSeries;
+ (TSCHChartSeriesType)areaSeries;
+ (TSCHChartSeriesType)bar3DSeries;
+ (TSCHChartSeriesType)barSeries;
+ (TSCHChartSeriesType)bubbleSeries;
+ (TSCHChartSeriesType)column3DSeries;
+ (TSCHChartSeriesType)columnSeries;
+ (TSCHChartSeriesType)donut3DSeries;
+ (TSCHChartSeriesType)donutSeries;
+ (TSCHChartSeriesType)line3DSeries;
+ (TSCHChartSeriesType)lineSeries;
+ (TSCHChartSeriesType)mixedAreaSeries;
+ (TSCHChartSeriesType)mixedColumnSeries;
+ (TSCHChartSeriesType)mixedLineSeries;
+ (TSCHChartSeriesType)pie3DSeries;
+ (TSCHChartSeriesType)pieSeries;
+ (TSCHChartSeriesType)radarAreaSeries;
+ (TSCHChartSeriesType)scatterSeries;
+ (TSCHChartSeriesType)stackedArea3DSeries;
+ (TSCHChartSeriesType)stackedAreaSeries;
+ (TSCHChartSeriesType)stackedBar3DSeries;
+ (TSCHChartSeriesType)stackedBarSeries;
+ (TSCHChartSeriesType)stackedColumn3DSeries;
+ (TSCHChartSeriesType)stackedColumnSeries;
+ (id)_singletonAlloc;
+ (id)expandProperties:(id)properties;
- (BOOL)canUseEstimatedValueLabelsDrawingRect;
- (BOOL)supportsSeries3DFill;
- (BOOL)supportsSeriesGradientFill;
- (Class)sceneObjectClass;
- (NSArray)propertiesForReferenceColors;
- (NSArray)supportedSymbols;
- (NSString)inspectorLocalizedValueLabelsDisclosureTitle;
- (NSString)inspectorLocalizedValueLabelsTabName;
- (NSString)seriesFillLabelUIString;
- (NSString)userInterfaceName;
- (TSCHChartSeriesType)init;
- (TSSPropertyMap)additionalFillSetPropertyMap;
- (TSUIntToIntDictionary)genericToSpecificPropertyMap;
- (id)cdeFillForSeries:(id)series;
- (id)coordinateAxisForSeries:(id)series;
- (id)legendFillForSeries:(id)series;
- (id)legendStrokeForSeries:(id)series;
- (id)p_axisForSeries:(id)series isCategory:(BOOL)category;
- (id)p_specificMutationsForGenericMutations:(id)mutations;
- (id)p_supportedSymbolsIfSymbolsSupported;
- (id)resetSeriesStorage:(id)storage forSeries:(id)series;
- (id)userInterfaceNameForLabelPosition:(id)position;
- (id)valueAxisForSeries:(id)series;
- (int)specificFillSetFillProperty;
@end

@implementation TSCHChartSeriesType

+ (id)_singletonAlloc
{
  v3.receiver = self;
  v3.super_class = &OBJC_METACLASS___TSCHChartSeriesType;
  return objc_msgSendSuper2(&v3, sel_allocWithZone_, 0);
}

+ (TSCHChartSeriesType)allocWithZone:(_NSZone *)zone
{
  v7 = MEMORY[0x277D81150];
  v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v3, v4, v5, "+[TSCHChartSeriesType allocWithZone:]");
  v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v10, v11, v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartSeriesType.mm");
  v14 = NSStringFromClass(self);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v15, v16, v17, v18, v8, v13, 52, 0, "+[%@ allocWithZone:] called on singleton class.", v14);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21, v22);
  return 0;
}

+ (TSCHChartSeriesType)pieSeries
{
  if (qword_280A46BB0 != -1)
  {
    sub_2764A7108();
  }

  v3 = qword_280A46BB8;

  return v3;
}

+ (TSCHChartSeriesType)donutSeries
{
  if (qword_280A46BC0 != -1)
  {
    sub_2764A711C();
  }

  v3 = qword_280A46BC8;

  return v3;
}

+ (TSCHChartSeriesType)scatterSeries
{
  if (qword_280A46BD0 != -1)
  {
    sub_2764A7130();
  }

  v3 = qword_280A46BD8;

  return v3;
}

+ (TSCHChartSeriesType)columnSeries
{
  if (qword_280A46BE0 != -1)
  {
    sub_2764A7144();
  }

  v3 = qword_280A46BE8;

  return v3;
}

+ (TSCHChartSeriesType)barSeries
{
  if (qword_280A46BF0 != -1)
  {
    sub_2764A7158();
  }

  v3 = qword_280A46BF8;

  return v3;
}

+ (TSCHChartSeriesType)lineSeries
{
  if (qword_280A46C00 != -1)
  {
    sub_2764A716C();
  }

  v3 = qword_280A46C08;

  return v3;
}

+ (TSCHChartSeriesType)areaSeries
{
  if (qword_280A46C10 != -1)
  {
    sub_2764A7180();
  }

  v3 = qword_280A46C18;

  return v3;
}

+ (TSCHChartSeriesType)stackedColumnSeries
{
  if (qword_280A46C20 != -1)
  {
    sub_2764A7194();
  }

  v3 = qword_280A46C28;

  return v3;
}

+ (TSCHChartSeriesType)stackedBarSeries
{
  if (qword_280A46C30 != -1)
  {
    sub_2764A71A8();
  }

  v3 = qword_280A46C38;

  return v3;
}

+ (TSCHChartSeriesType)stackedAreaSeries
{
  if (qword_280A46C40 != -1)
  {
    sub_2764A71BC();
  }

  v3 = qword_280A46C48;

  return v3;
}

+ (TSCHChartSeriesType)mixedColumnSeries
{
  if (qword_280A46C50 != -1)
  {
    sub_2764A71D0();
  }

  v3 = qword_280A46C58;

  return v3;
}

+ (TSCHChartSeriesType)mixedLineSeries
{
  if (qword_280A46C60 != -1)
  {
    sub_2764A71E4();
  }

  v3 = qword_280A46C68;

  return v3;
}

+ (TSCHChartSeriesType)mixedAreaSeries
{
  if (qword_280A46C70 != -1)
  {
    sub_2764A71F8();
  }

  v3 = qword_280A46C78;

  return v3;
}

+ (TSCHChartSeriesType)bubbleSeries
{
  if (qword_280A46C80 != -1)
  {
    sub_2764A720C();
  }

  v3 = qword_280A46C88;

  return v3;
}

+ (TSCHChartSeriesType)radarAreaSeries
{
  if (qword_280A46C90 != -1)
  {
    sub_2764A7220();
  }

  v3 = qword_280A46C98;

  return v3;
}

+ (TSCHChartSeriesType)column3DSeries
{
  if (qword_280A46CA0 != -1)
  {
    sub_2764A7234();
  }

  v3 = qword_280A46CA8;

  return v3;
}

+ (TSCHChartSeriesType)line3DSeries
{
  if (qword_280A46CB0 != -1)
  {
    sub_2764A7248();
  }

  v3 = qword_280A46CB8;

  return v3;
}

+ (TSCHChartSeriesType)area3DSeries
{
  if (qword_280A46CC0 != -1)
  {
    sub_2764A725C();
  }

  v3 = qword_280A46CC8;

  return v3;
}

+ (TSCHChartSeriesType)stackedArea3DSeries
{
  if (qword_280A46CD0 != -1)
  {
    sub_2764A7270();
  }

  v3 = qword_280A46CD8;

  return v3;
}

+ (TSCHChartSeriesType)pie3DSeries
{
  if (qword_280A46CE0 != -1)
  {
    sub_2764A7284();
  }

  v3 = qword_280A46CE8;

  return v3;
}

+ (TSCHChartSeriesType)donut3DSeries
{
  if (qword_280A46CF0 != -1)
  {
    sub_2764A7298();
  }

  v3 = qword_280A46CF8;

  return v3;
}

+ (TSCHChartSeriesType)stackedColumn3DSeries
{
  if (qword_280A46D00 != -1)
  {
    sub_2764A72AC();
  }

  v3 = qword_280A46D08;

  return v3;
}

+ (TSCHChartSeriesType)bar3DSeries
{
  if (qword_280A46D10 != -1)
  {
    sub_2764A72C0();
  }

  v3 = qword_280A46D18;

  return v3;
}

+ (TSCHChartSeriesType)stackedBar3DSeries
{
  if (qword_280A46D20 != -1)
  {
    sub_2764A72D4();
  }

  v3 = qword_280A46D28;

  return v3;
}

+ (id)expandProperties:(id)properties
{
  v251[22] = *MEMORY[0x277D85DE8];
  propertiesCopy = properties;
  v246 = objc_msgSend_propertySet(MEMORY[0x277D80AA8], v4, v5, v6, v7);
  v245 = objc_msgSend_pieSeries(self, v8, v9, v10, v11);
  v244 = objc_msgSend_genericToSpecificPropertyMap(v245, v12, v13, v14, v15);
  v251[0] = v244;
  v243 = objc_msgSend_scatterSeries(self, v16, v17, v18, v19);
  v242 = objc_msgSend_genericToSpecificPropertyMap(v243, v20, v21, v22, v23);
  v251[1] = v242;
  v241 = objc_msgSend_columnSeries(self, v24, v25, v26, v27);
  v240 = objc_msgSend_genericToSpecificPropertyMap(v241, v28, v29, v30, v31);
  v251[2] = v240;
  v239 = objc_msgSend_barSeries(self, v32, v33, v34, v35);
  v238 = objc_msgSend_genericToSpecificPropertyMap(v239, v36, v37, v38, v39);
  v251[3] = v238;
  v237 = objc_msgSend_lineSeries(self, v40, v41, v42, v43);
  v236 = objc_msgSend_genericToSpecificPropertyMap(v237, v44, v45, v46, v47);
  v251[4] = v236;
  v235 = objc_msgSend_areaSeries(self, v48, v49, v50, v51);
  v234 = objc_msgSend_genericToSpecificPropertyMap(v235, v52, v53, v54, v55);
  v251[5] = v234;
  v233 = objc_msgSend_radarAreaSeries(self, v56, v57, v58, v59);
  v232 = objc_msgSend_genericToSpecificPropertyMap(v233, v60, v61, v62, v63);
  v251[6] = v232;
  v231 = objc_msgSend_stackedColumnSeries(self, v64, v65, v66, v67);
  v230 = objc_msgSend_genericToSpecificPropertyMap(v231, v68, v69, v70, v71);
  v251[7] = v230;
  v229 = objc_msgSend_stackedBarSeries(self, v72, v73, v74, v75);
  v228 = objc_msgSend_genericToSpecificPropertyMap(v229, v76, v77, v78, v79);
  v251[8] = v228;
  v227 = objc_msgSend_stackedAreaSeries(self, v80, v81, v82, v83);
  v226 = objc_msgSend_genericToSpecificPropertyMap(v227, v84, v85, v86, v87);
  v251[9] = v226;
  v225 = objc_msgSend_mixedColumnSeries(self, v88, v89, v90, v91);
  v224 = objc_msgSend_genericToSpecificPropertyMap(v225, v92, v93, v94, v95);
  v251[10] = v224;
  v223 = objc_msgSend_mixedLineSeries(self, v96, v97, v98, v99);
  v222 = objc_msgSend_genericToSpecificPropertyMap(v223, v100, v101, v102, v103);
  v251[11] = v222;
  v221 = objc_msgSend_mixedAreaSeries(self, v104, v105, v106, v107);
  v220 = objc_msgSend_genericToSpecificPropertyMap(v221, v108, v109, v110, v111);
  v251[12] = v220;
  v219 = objc_msgSend_bubbleSeries(self, v112, v113, v114, v115);
  v218 = objc_msgSend_genericToSpecificPropertyMap(v219, v116, v117, v118, v119);
  v251[13] = v218;
  v217 = objc_msgSend_column3DSeries(self, v120, v121, v122, v123);
  v216 = objc_msgSend_genericToSpecificPropertyMap(v217, v124, v125, v126, v127);
  v251[14] = v216;
  v215 = objc_msgSend_line3DSeries(self, v128, v129, v130, v131);
  v214 = objc_msgSend_genericToSpecificPropertyMap(v215, v132, v133, v134, v135);
  v251[15] = v214;
  v213 = objc_msgSend_area3DSeries(self, v136, v137, v138, v139);
  v212 = objc_msgSend_genericToSpecificPropertyMap(v213, v140, v141, v142, v143);
  v251[16] = v212;
  v148 = objc_msgSend_stackedArea3DSeries(self, v144, v145, v146, v147);
  v153 = objc_msgSend_genericToSpecificPropertyMap(v148, v149, v150, v151, v152);
  v251[17] = v153;
  v158 = objc_msgSend_pie3DSeries(self, v154, v155, v156, v157);
  v163 = objc_msgSend_genericToSpecificPropertyMap(v158, v159, v160, v161, v162);
  v251[18] = v163;
  v168 = objc_msgSend_stackedColumn3DSeries(self, v164, v165, v166, v167);
  v173 = objc_msgSend_genericToSpecificPropertyMap(v168, v169, v170, v171, v172);
  v251[19] = v173;
  v178 = objc_msgSend_bar3DSeries(self, v174, v175, v176, v177);
  v183 = objc_msgSend_genericToSpecificPropertyMap(v178, v179, v180, v181, v182);
  v251[20] = v183;
  v188 = objc_msgSend_stackedBar3DSeries(self, v184, v185, v186, v187);
  v193 = objc_msgSend_genericToSpecificPropertyMap(v188, v189, v190, v191, v192);
  v251[21] = v193;
  v211 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v194, v195, v196, v197, v251, 22);

  v248[0] = MEMORY[0x277D85DD0];
  v248[1] = 3221225472;
  v248[2] = sub_27623F2F0;
  v248[3] = &unk_27A6B6E50;
  v198 = v211;
  v249 = v198;
  v199 = v246;
  v250 = v199;
  objc_msgSend_enumeratePropertiesUsingBlock_(propertiesCopy, v200, v201, v202, v203, v248);
  objc_msgSend_removeProperty_(v199, v204, v205, v206, v207, 0);
  v208 = v250;
  v209 = v199;

  return v199;
}

+ (NSArray)styleArchTypes
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_27623F4E0;
  block[3] = &unk_27A6B6250;
  block[4] = self;
  if (qword_280A46D38 != -1)
  {
    dispatch_once(&qword_280A46D38, block);
  }

  v2 = qword_280A46D30;

  return v2;
}

+ (NSArray)allSeriesTypes
{
  v139 = *MEMORY[0x277D85DE8];
  v116 = objc_msgSend_pieSeries(TSCHChartSeriesType, a2, v2, v3, v4);
  v117 = v116;
  v118 = objc_msgSend_scatterSeries(TSCHChartSeriesType, v5, v6, v7, v8);
  v115 = v118;
  v114 = objc_msgSend_columnSeries(TSCHChartSeriesType, v9, v10, v11, v12);
  v119 = v114;
  v113 = objc_msgSend_barSeries(TSCHChartSeriesType, v13, v14, v15, v16);
  v120 = v113;
  v112 = objc_msgSend_lineSeries(TSCHChartSeriesType, v17, v18, v19, v20);
  v121 = v112;
  v111 = objc_msgSend_areaSeries(TSCHChartSeriesType, v21, v22, v23, v24);
  v122 = v111;
  v110 = objc_msgSend_radarAreaSeries(TSCHChartSeriesType, v25, v26, v27, v28);
  v123 = v110;
  v109 = objc_msgSend_stackedColumnSeries(TSCHChartSeriesType, v29, v30, v31, v32);
  v124 = v109;
  v108 = objc_msgSend_stackedBarSeries(TSCHChartSeriesType, v33, v34, v35, v36);
  v125 = v108;
  v107 = objc_msgSend_stackedAreaSeries(TSCHChartSeriesType, v37, v38, v39, v40);
  v126 = v107;
  v106 = objc_msgSend_mixedColumnSeries(TSCHChartSeriesType, v41, v42, v43, v44);
  v127 = v106;
  v105 = objc_msgSend_mixedLineSeries(TSCHChartSeriesType, v45, v46, v47, v48);
  v128 = v105;
  v104 = objc_msgSend_mixedAreaSeries(TSCHChartSeriesType, v49, v50, v51, v52);
  v129 = v104;
  v57 = objc_msgSend_bubbleSeries(TSCHChartSeriesType, v53, v54, v55, v56);
  v130 = v57;
  v62 = objc_msgSend_column3DSeries(TSCHChartSeriesType, v58, v59, v60, v61);
  v131 = v62;
  v67 = objc_msgSend_stackedColumn3DSeries(TSCHChartSeriesType, v63, v64, v65, v66);
  v132 = v67;
  v72 = objc_msgSend_bar3DSeries(TSCHChartSeriesType, v68, v69, v70, v71);
  v133 = v72;
  v77 = objc_msgSend_stackedBar3DSeries(TSCHChartSeriesType, v73, v74, v75, v76);
  v134 = v77;
  v82 = objc_msgSend_line3DSeries(TSCHChartSeriesType, v78, v79, v80, v81);
  v135 = v82;
  v87 = objc_msgSend_area3DSeries(TSCHChartSeriesType, v83, v84, v85, v86);
  v136 = v87;
  v92 = objc_msgSend_stackedArea3DSeries(TSCHChartSeriesType, v88, v89, v90, v91);
  v137 = v92;
  v97 = objc_msgSend_pie3DSeries(TSCHChartSeriesType, v93, v94, v95, v96);
  v138 = v97;
  v102 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v98, v99, v100, v101, &v117, 22);

  return v102;
}

- (TSCHChartSeriesType)init
{
  v6.receiver = self;
  v6.super_class = TSCHChartSeriesType;
  v2 = [(TSCHChartSeriesType *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEA60]);
    seriesRendererClasses = v2->_seriesRendererClasses;
    v2->_seriesRendererClasses = v3;
  }

  return v2;
}

- (id)userInterfaceNameForLabelPosition:(id)position
{
  positionCopy = position;
  v9 = objc_msgSend_intValue(positionCopy, v5, v6, v7, v8);
  v14 = objc_msgSend_filterChartLabelPosition_(self, v10, v11, v12, v13, v9);
  if (v14 == objc_msgSend_filterChartLabelPosition_(self, v15, v16, v17, v18, 20))
  {
    v23 = sub_276360774(v20, v21, v22);
    v28 = objc_msgSend_localizedStringForKey_value_table_(v23, v24, v25, v26, v27, @"Above Left", &stru_288528678, @"TSCharts");
LABEL_19:
    v92 = v28;

    goto LABEL_20;
  }

  if (v14 == objc_msgSend_filterChartLabelPosition_(self, v19, v20, v21, v22, 4))
  {
    v23 = sub_276360774(v30, v31, v32);
    v28 = objc_msgSend_localizedStringForKey_value_table_(v23, v33, v34, v35, v36, @"Above", &stru_288528678, @"TSCharts");
    goto LABEL_19;
  }

  if (v14 == objc_msgSend_filterChartLabelPosition_(self, v29, v30, v31, v32, 36))
  {
    v23 = sub_276360774(v38, v39, v40);
    v28 = objc_msgSend_localizedStringForKey_value_table_(v23, v41, v42, v43, v44, @"Above Right", &stru_288528678, @"TSCharts");
    goto LABEL_19;
  }

  if (v14 == objc_msgSend_filterChartLabelPosition_(self, v37, v38, v39, v40, 16))
  {
    v23 = sub_276360774(v46, v47, v48);
    v28 = objc_msgSend_localizedStringForKey_value_table_(v23, v49, v50, v51, v52, @"Left", &stru_288528678, @"TSCharts");
    goto LABEL_19;
  }

  if (v14 == objc_msgSend_filterChartLabelPosition_(self, v45, v46, v47, v48, 0))
  {
    v23 = sub_276360774(v54, v55, v56);
    v28 = objc_msgSend_localizedStringForKey_value_table_(v23, v57, v58, v59, v60, @"Center", &stru_288528678, @"TSCharts");
    goto LABEL_19;
  }

  if (v14 == objc_msgSend_filterChartLabelPosition_(self, v53, v54, v55, v56, 32))
  {
    v23 = sub_276360774(v62, v63, v64);
    v28 = objc_msgSend_localizedStringForKey_value_table_(v23, v65, v66, v67, v68, @"Right", &stru_288528678, @"TSCharts");
    goto LABEL_19;
  }

  if (v14 == objc_msgSend_filterChartLabelPosition_(self, v61, v62, v63, v64, 24))
  {
    v23 = sub_276360774(v70, v71, v72);
    v28 = objc_msgSend_localizedStringForKey_value_table_(v23, v73, v74, v75, v76, @"Below Left", &stru_288528678, @"TSCharts");
    goto LABEL_19;
  }

  if (v14 == objc_msgSend_filterChartLabelPosition_(self, v69, v70, v71, v72, 8))
  {
    v23 = sub_276360774(v78, v79, v80);
    v28 = objc_msgSend_localizedStringForKey_value_table_(v23, v81, v82, v83, v84, @"Below", &stru_288528678, @"TSCharts");
    goto LABEL_19;
  }

  if (v14 == objc_msgSend_filterChartLabelPosition_(self, v77, v78, v79, v80, 40))
  {
    v23 = sub_276360774(v85, v86, v87);
    v28 = objc_msgSend_localizedStringForKey_value_table_(v23, v88, v89, v90, v91, @"Below Right", &stru_288528678, @"TSCharts");
    goto LABEL_19;
  }

  v92 = 0;
LABEL_20:

  return v92;
}

- (TSUIntToIntDictionary)genericToSpecificPropertyMap
{
  if (qword_280A46D48 != -1)
  {
    sub_2764A72E8();
  }

  v3 = qword_280A46D40;

  return v3;
}

- (id)legendFillForSeries:(id)series
{
  v6 = objc_msgSend_objectValueForProperty_(series, a2, v3, v4, v5, 1160);

  return v6;
}

- (id)legendStrokeForSeries:(id)series
{
  seriesCopy = series;
  if (objc_msgSend_sceneObjectClass(self, v5, v6, v7, v8))
  {
    v13 = 0;
  }

  else
  {
    v13 = objc_msgSend_objectValueForProperty_(seriesCopy, v9, v10, v11, v12, 1184);
  }

  return v13;
}

- (NSArray)propertiesForReferenceColors
{
  if (qword_280A46D58 != -1)
  {
    sub_2764A72FC();
  }

  v3 = qword_280A46D50;

  return v3;
}

- (id)cdeFillForSeries:(id)series
{
  v6 = objc_msgSend_legendFillForSeries_(self, a2, v3, v4, v5, series);

  return v6;
}

- (BOOL)supportsSeriesGradientFill
{
  if ((objc_msgSend_supportsSeriesFill(self, a2, v2, v3, v4) & 1) != 0 || (v10 = objc_msgSend_supportsFillSetFill(self, v6, v7, v8, v9)) != 0)
  {
    LOBYTE(v10) = objc_msgSend_sceneObjectClass(self, v6, v7, v8, v9) == 0;
  }

  return v10;
}

- (BOOL)supportsSeries3DFill
{
  v6 = objc_msgSend_supportsSeriesFill(self, a2, v2, v3, v4);
  if (v6)
  {
    LOBYTE(v6) = objc_msgSend_sceneObjectClass(self, v7, v8, v9, v10) != 0;
  }

  return v6;
}

- (NSArray)supportedSymbols
{
  if (objc_msgSend_supportsSymbolDrawing(self, a2, v2, v3, v4))
  {
    v10 = objc_msgSend_p_supportedSymbolsIfSymbolsSupported(self, v6, v7, v8, v9);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)p_supportedSymbolsIfSymbolsSupported
{
  v6 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, v2, v3, v4);
  for (i = 0; i != 8; ++i)
  {
    if ((~i & 6) != 0)
    {
      v11 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v5, v7, v8, v9, i);
      objc_msgSend_addObject_(v6, v12, v13, v14, v15, v11);
    }
  }

  return v6;
}

- (id)resetSeriesStorage:(id)storage forSeries:(id)series
{
  storageCopy = storage;
  seriesCopy = series;
  if (objc_msgSend_sceneObjectClass(self, v8, v9, v10, v11))
  {
    v16 = objc_msgSend_sceneObjectClass(self, v12, v13, v14, v15);
    v21 = objc_msgSend_resetSeriesStorage_forSeries_(v16, v17, v18, v19, v20, storageCopy, seriesCopy);
  }

  else
  {
    v21 = storageCopy;
  }

  v22 = v21;

  return v22;
}

- (Class)sceneObjectClass
{
  v2 = objc_opt_class();

  return objc_msgSend_sceneObjectClass(v2, v3, v4, v5, v6);
}

- (id)p_axisForSeries:(id)series isCategory:(BOOL)category
{
  categoryCopy = category;
  seriesCopy = series;
  v10 = objc_msgSend_model(seriesCopy, v6, v7, v8, v9);
  v15 = objc_msgSend_axisIDForAxisType_(seriesCopy, v11, v12, v13, v14, 2);
  v20 = objc_msgSend_axisForID_(v10, v16, v17, v18, v19, v15);

  v25 = objc_msgSend_axisIDForAxisType_(seriesCopy, v21, v22, v23, v24, 1);
  v30 = objc_msgSend_axisForID_(v10, v26, v27, v28, v29, v25);

  if (objc_msgSend_isCategory(v30, v31, v32, v33, v34) != categoryCopy)
  {
    v35 = v20;
  }

  else
  {
    v35 = v30;
  }

  v36 = v35;

  return v35;
}

- (id)valueAxisForSeries:(id)series
{
  v6 = objc_msgSend_p_axisForSeries_isCategory_(self, a2, v3, v4, v5, series, 0);

  return v6;
}

- (id)coordinateAxisForSeries:(id)series
{
  v6 = objc_msgSend_p_axisForSeries_isCategory_(self, a2, v3, v4, v5, series, 1);

  return v6;
}

- (NSString)userInterfaceName
{
  v5 = MEMORY[0x277D81150];
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v2, v3, v4, "[TSCHChartSeriesType userInterfaceName]");
  v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, v8, v9, v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartSeriesType.mm");
  v12 = objc_opt_class();
  v13 = NSStringFromClass(v12);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v14, v15, v16, v17, v6, v11, 472, 0, "Abstract method not overridden by %{public}@", v13);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20, v21);
  v22 = MEMORY[0x277CBEAD8];
  v23 = MEMORY[0x277CCACA8];
  v24 = objc_opt_class();
  v25 = NSStringFromClass(v24);
  v30 = objc_msgSend_stringWithFormat_(v23, v26, v27, v28, v29, @"Abstract method not overridden by %@: %s", v25, "[TSCHChartSeriesType userInterfaceName]");
  v35 = objc_msgSend_exceptionWithName_reason_userInfo_(v22, v31, v32, v33, v34, *MEMORY[0x277CBE658], v30, 0);
  v36 = v35;

  objc_exception_throw(v35);
}

- (int)specificFillSetFillProperty
{
  v6 = objc_msgSend_fillSetFillProperty(self, a2, v2, v3, v4);
  v11 = objc_msgSend_genericToSpecificPropertyMap(self, v7, v8, v9, v10);
  v16 = objc_msgSend_containsKey_(v11, v12, v13, v14, v15, v6);

  if (!v16)
  {
    LODWORD(v26) = 1411;
    return v26;
  }

  v21 = objc_msgSend_genericToSpecificPropertyMap(self, v17, v18, v19, v20);
  v26 = objc_msgSend_intForKey_(v21, v22, v23, v24, v25, v6);

  if (v26 >= 0x80000000)
  {
    v47 = MEMORY[0x277D81150];
    v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, v28, v29, v30, "[TSCHChartSeriesType specificFillSetFillProperty]");
    v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v48, v49, v50, v51, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartSeriesType.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v47, v52, v53, v54, v55, v31, v36, 508, 0, "Out-of-bounds type assignment was clamped to max");
    LODWORD(v26) = 0x7FFFFFFF;
    goto LABEL_6;
  }

  if (v26 <= 0xFFFFFFFF7FFFFFFFLL)
  {
    v56 = MEMORY[0x277D81150];
    v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, v28, v29, v30, "[TSCHChartSeriesType specificFillSetFillProperty]");
    v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v57, v58, v59, v60, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartSeriesType.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v56, v61, v62, v63, v64, v31, v36, 508, 0, "Out-of-bounds type assignment was clamped to min");
    LODWORD(v26) = 0x80000000;
    goto LABEL_6;
  }

  if (!v26)
  {
    v26 = MEMORY[0x277D81150];
    v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, v28, v29, v30, "[TSCHChartSeriesType specificFillSetFillProperty]");
    v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v32, v33, v34, v35, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartSeriesType.mm");
    v37 = String();
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v26, v38, v39, v40, v41, v31, v36, 509, 0, "Property map claims to have specific property but doesn't for generic property %@", v37);

    LODWORD(v26) = 0;
LABEL_6:

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v42, v43, v44, v45);
  }

  return v26;
}

- (id)p_specificMutationsForGenericMutations:(id)mutations
{
  v75 = *MEMORY[0x277D85DE8];
  mutationsCopy = mutations;
  v69 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v4, v5, v6, v7);
  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v8 = mutationsCopy;
  v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, v10, v11, v12, &v70, v74, 16);
  if (v14)
  {
    v18 = *v71;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v71 != v18)
        {
          objc_enumerationMutation(v8);
        }

        v20 = *(*(&v70 + 1) + 8 * i);
        v21 = objc_msgSend_integerValue(v20, v13, v15, v16, v17);
        v26 = objc_msgSend_genericToSpecificPropertyMap(self, v22, v23, v24, v25);
        v31 = objc_msgSend_intForKey_(v26, v27, v28, v29, v30, v21);

        if (v31)
        {
          v36 = objc_msgSend_objectForKeyedSubscript_(v8, v32, v33, v34, v35, v20);
          v41 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v37, v38, v39, v40, v31);
          objc_msgSend_setObject_forKey_(v69, v42, v43, v44, v45, v36, v41);
        }

        else
        {
          v46 = MEMORY[0x277D81150];
          v47 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v32, v33, v34, v35, "[TSCHChartSeriesType p_specificMutationsForGenericMutations:]");
          v52 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v48, v49, v50, v51, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartSeriesType.mm");
          v53 = String();
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v46, v54, v55, v56, v57, v47, v52, 527, 0, "No specific property for generic property %@", v53);

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v58, v59, v60, v61);
        }
      }

      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v13, v15, v16, v17, &v70, v74, 16);
    }

    while (v14);
  }

  v66 = objc_msgSend_copy(v69, v62, v63, v64, v65);

  return v66;
}

- (TSSPropertyMap)additionalFillSetPropertyMap
{
  v6 = MEMORY[0x277D80AB8];
  v7 = objc_msgSend_additionalFillSetMutations(self, a2, v2, v3, v4);
  v12 = objc_msgSend_p_specificMutationsForGenericMutations_(self, v8, v9, v10, v11, v7);
  v17 = objc_msgSend_propertyMapWithDictionary_(v6, v13, v14, v15, v16, v12);

  return v17;
}

+ (NSString)inspectorDefaultLocalizedValueLabelsTabName
{
  v5 = sub_276360774(v2, v3, v4);
  v10 = objc_msgSend_localizedStringForKey_value_table_(v5, v6, v7, v8, v9, @"Value Labels", &stru_288528678, @"TSCharts");

  return v10;
}

- (NSString)inspectorLocalizedValueLabelsTabName
{
  v2 = objc_opt_class();

  return MEMORY[0x2821F9670](v2, sel_inspectorDefaultLocalizedValueLabelsTabName, v3, v4, v5);
}

+ (NSString)inspectorDefaultLocalizedValueLabelsDisclosureTitle
{
  v5 = sub_276360774(v2, v3, v4);
  v10 = objc_msgSend_localizedStringForKey_value_table_(v5, v6, v7, v8, v9, @"Value Labels", &stru_288528678, @"TSCharts");

  return v10;
}

- (NSString)inspectorLocalizedValueLabelsDisclosureTitle
{
  v2 = objc_opt_class();

  return MEMORY[0x2821F9670](v2, sel_inspectorDefaultLocalizedValueLabelsDisclosureTitle, v3, v4, v5);
}

- (NSString)seriesFillLabelUIString
{
  v5 = sub_276360774(v2, v3, v4);
  v10 = objc_msgSend_localizedStringForKey_value_table_(v5, v6, v7, v8, v9, @"Series Fill", &stru_288528678, @"TSCharts");

  return v10;
}

- (BOOL)canUseEstimatedValueLabelsDrawingRect
{
  v6 = objc_msgSend_bubbleSeries(TSCHChartSeriesType, a2, v2, v3, v4);
  LOBYTE(self) = v6 != self;

  return self;
}

@end