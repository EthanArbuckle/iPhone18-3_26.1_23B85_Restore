@interface TSTGroupingColumn
+ (id)shortStringForDayOfWeekType;
+ (id)shortStringForDayOfWeekTypeForLocale:(id)a3;
+ (id)shortStringForDayType;
+ (id)shortStringForDayTypeForLocale:(id)a3;
+ (id)shortStringForGroupingType:(int64_t)a3;
+ (id)shortStringForGroupingType:(int64_t)a3 locale:(id)a4;
+ (id)shortStringForMonthOfYearType;
+ (id)shortStringForMonthOfYearTypeForLocale:(id)a3;
+ (id)shortStringForMonthType;
+ (id)shortStringForMonthTypeForLocale:(id)a3;
+ (id)shortStringForQuarterOfYearType;
+ (id)shortStringForQuarterOfYearTypeForLocale:(id)a3;
+ (id)shortStringForYearQuarterType;
+ (id)shortStringForYearQuarterTypeForLocale:(id)a3;
+ (id)shortStringForYearType;
+ (id)shortStringForYearTypeForLocale:(id)a3;
+ (id)shortStringForYearWeekType;
+ (id)shortStringForYearWeekTypeForLocale:(id)a3;
+ (id)stringForDayOfWeekType;
+ (id)stringForDayOfWeekTypeForLocale:(id)a3;
+ (id)stringForDayType;
+ (id)stringForDayTypeForLocale:(id)a3;
+ (id)stringForGroupingType:(int64_t)a3;
+ (id)stringForGroupingType:(int64_t)a3 locale:(id)a4;
+ (id)stringForMonthOfYearType;
+ (id)stringForMonthOfYearTypeForLocale:(id)a3;
+ (id)stringForMonthType;
+ (id)stringForMonthTypeForLocale:(id)a3;
+ (id)stringForQuarterOfYearType;
+ (id)stringForQuarterOfYearTypeForLocale:(id)a3;
+ (id)stringForUniqueType;
+ (id)stringForUniqueTypeForLocale:(id)a3;
+ (id)stringForYearQuarterType;
+ (id)stringForYearQuarterTypeForLocale:(id)a3;
+ (id)stringForYearType;
+ (id)stringForYearTypeForLocale:(id)a3;
+ (id)stringForYearWeekType;
+ (id)stringForYearWeekTypeForLocale:(id)a3;
+ (int64_t)coarserGroupingTypeFor:(int64_t)a3;
+ (int64_t)coarserGroupingTypeFor:(int64_t)a3 groupTypesToAvoid:(id)a4;
+ (int64_t)finerGroupingTypeFor:(int64_t)a3;
+ (int64_t)finerGroupingTypeFor:(int64_t)a3 groupTypesToAvoid:(id)a4;
- (BOOL)isEqual:(id)a3;
- (TSKUIDStruct)columnUid;
- (TSKUIDStruct)groupingColumnUid;
- (TSKUIDStruct)uniqueObjectUID;
- (TSTGroupingColumn)initWithArchive:(const void *)a3;
- (TSTGroupingColumn)initWithColumnIndex:(TSUModelColumnIndex)a3 groupingType:(int64_t)a4 inTableInfo:(id)a5;
- (TSTGroupingColumn)initWithColumnUid:(TSKUIDStruct)a3 groupingType:(int64_t)a4;
- (TSTGroupingColumn)initWithGroupingColumnUid:(TSKUIDStruct)a3 columnUid:(TSKUIDStruct)a4 groupingType:(int64_t)a5;
- (id).cxx_construct;
- (id)copyWithZone:(_NSZone *)a3;
- (id)groupValueForValue:(id)a3 calcEngine:(id)a4;
- (id)p_groupingFormatWithLocale:(id)a3;
- (void)encodeToArchive:(void *)a3 archiver:(id)a4;
- (void)getUUIDBytesForColumnUid:(unsigned __int8)a3[16];
- (void)getUUIDBytesForGroupingColumnUid:(unsigned __int8)a3[16];
- (void)setFunctorForType;
@end

@implementation TSTGroupingColumn

- (TSTGroupingColumn)initWithGroupingColumnUid:(TSKUIDStruct)a3 columnUid:(TSKUIDStruct)a4 groupingType:(int64_t)a5
{
  upper = a4._upper;
  lower = a4._lower;
  v8 = a3._upper;
  v9 = a3._lower;
  v17.receiver = self;
  v17.super_class = TSTGroupingColumn;
  v10 = [(TSTGroupingColumn *)&v17 init];
  v15 = v10;
  if (v10)
  {
    v10->_groupingColumnUid.var0.var0._lower = v9;
    v10->_groupingColumnUid.var0.var0._upper = v8;
    v10->_columnUid.var0.var0._lower = lower;
    v10->_columnUid.var0.var0._upper = upper;
    v10->_groupingType = a5;
    objc_msgSend_setFunctorForType(v10, v11, v12, v13, v14);
  }

  return v15;
}

- (TSTGroupingColumn)initWithColumnUid:(TSKUIDStruct)a3 groupingType:(int64_t)a4
{
  upper = a3._upper;
  lower = a3._lower;
  v8 = TSKMakeUIDStructRandom();
  return objc_msgSend_initWithGroupingColumnUid_columnUid_groupingType_(self, v9, v8, v9, lower, upper, a4);
}

- (TSTGroupingColumn)initWithColumnIndex:(TSUModelColumnIndex)a3 groupingType:(int64_t)a4 inTableInfo:(id)a5
{
  v8 = objc_msgSend_translator(a5, a2, *&a3._column, a4, a5);
  v12 = objc_msgSend_columnUIDForBaseColumnIndex_(v8, v9, a3._column, v10, v11);
  v14 = objc_msgSend_initWithColumnUid_groupingType_(self, v13, v12, v13, a4);

  return v14;
}

- (TSKUIDStruct)groupingColumnUid
{
  p_groupingColumnUid = &self->_groupingColumnUid;
  lower = self->_groupingColumnUid.var0.var0._lower;
  upper = p_groupingColumnUid->var0.var0._upper;
  result._upper = upper;
  result._lower = lower;
  return result;
}

- (TSKUIDStruct)columnUid
{
  p_columnUid = &self->_columnUid;
  lower = self->_columnUid.var0.var0._lower;
  upper = p_columnUid->var0.var0._upper;
  result._upper = upper;
  result._lower = lower;
  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [TSTGroupingColumn alloc];
  v9 = objc_msgSend_groupingColumnUid(self, v5, v6, v7, v8);
  v11 = v10;
  v16 = objc_msgSend_columnUid(self, v10, v12, v13, v14);
  groupingType = self->_groupingType;

  return objc_msgSend_initWithGroupingColumnUid_columnUid_groupingType_(v4, v15, v9, v11, v16, v15, groupingType);
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    v5 = TSUDynamicCast();
    v10 = objc_msgSend_groupingColumnUid(self, v6, v7, v8, v9);
    v12 = v11;
    v20 = 0;
    if (v10 == objc_msgSend_groupingColumnUid(v5, v11, v13, v14, v15) && v12 == v16)
    {
      v21 = objc_msgSend_columnUid(self, v16, v17, v18, v19);
      v23 = v22;
      v20 = 0;
      if (v21 == objc_msgSend_columnUid(v5, v22, v24, v25, v26) && v23 == v27)
      {
        groupingType = self->_groupingType;
        v20 = groupingType == objc_msgSend_groupingType(v5, v27, v28, v29, v30);
      }
    }
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (void)getUUIDBytesForGroupingColumnUid:(unsigned __int8)a3[16]
{
  if (a3)
  {
    uuid_copy(a3, self->_groupingColumnUid.var0._uuid);
  }
}

- (void)getUUIDBytesForColumnUid:(unsigned __int8)a3[16]
{
  if (a3)
  {
    uuid_copy(a3, self->_columnUid.var0._uuid);
  }
}

- (void)setFunctorForType
{
  groupingType = self->_groupingType;
  if (groupingType <= 3)
  {
    if (groupingType > 0)
    {
      if (groupingType == 1)
      {
        TSCEFormulaCreationMagic::LET_VAR(0, x1_0, v2, v3, v4, &v482);
        TSCEFormulaCreationMagic::SUM(&v482, v515, &v483);
        TSCEFormulaCreationMagic::LET_VAR(0, v215, v216, v217, v218, &v481);
        v219.var0 = &v481;
        TSCEFormulaCreationMagic::EQ(&v483, v219, v545, &v484);
        TSCEFormulaCreationMagic::LET_VAR(0, v220, v221, v222, v223, &v478);
        TSCEFormulaCreationMagic::ISBLANK(&v478, v516, &v479);
        TSCEFormulaCreationMagic::NOT(&v479, v517, &v480);
        v224.var0 = &v480;
        TSCEFormulaCreationMagic::AND(&v484, v224, v546, &v485);
        TSCEFormulaCreationMagic::LET_VAR(0, v225, v226, v227, v228, &v475);
        TSCEFormulaCreationMagic::YEAR(&v475, v518, &v476);
        TSUDecimal::operator=();
        v598._decimal.w[0] = v473;
        TSCEFormulaCreationMagic::number(v472, v598, v229, v230, &v474);
        TSUDecimal::operator=();
        v599._decimal.w[0] = v473;
        TSCEFormulaCreationMagic::number(v472, v599, v231, v232, &v471);
        v233.var0 = &v474;
        v234.var0 = &v471;
        TSCEFormulaCreationMagic::DATE(&v476, v233, v234, v562, &v477);
        TSUDecimal::operator=();
        v600._decimal.w[0] = v473;
        TSCEFormulaCreationMagic::number(v472, v600, v235, v236, &v469);
        TSUDecimal::operator=();
        v601._decimal.w[0] = v473;
        TSCEFormulaCreationMagic::number(v472, v601, v237, v238, &v468);
        TSCEFormulaCreationMagic::operator/(&v469, &v468, &v470);
        v239.var0 = &v477;
        v240.var0 = &v470;
        TSCEFormulaCreationMagic::IF(&v485, v239, v240, v563, &v486);
        v241.var0 = &v486;
        TSCEFunctor::TSCEFunctor(&v487, v241, 1u, 0);
        TSCEFunctor::operator=(&self->_groupingFunctor._formula, &v487);

        formula = v482;
      }

      else if (groupingType == 2)
      {
        TSCEFormulaCreationMagic::LET_VAR(0, x1_0, v2, v3, v4, &v463);
        TSCEFormulaCreationMagic::SUM(&v463, v500, &v464);
        TSCEFormulaCreationMagic::LET_VAR(0, v110, v111, v112, v113, &v462);
        v114.var0 = &v462;
        TSCEFormulaCreationMagic::EQ(&v464, v114, v537, &v465);
        TSCEFormulaCreationMagic::LET_VAR(0, v115, v116, v117, v118, &v459);
        TSCEFormulaCreationMagic::ISBLANK(&v459, v501, &v460);
        TSCEFormulaCreationMagic::NOT(&v460, v502, &v461);
        v119.var0 = &v461;
        TSCEFormulaCreationMagic::AND(&v465, v119, v538, &v466);
        TSCEFormulaCreationMagic::LET_VAR(0, v120, v121, v122, v123, &v456);
        TSCEFormulaCreationMagic::YEAR(&v456, v503, &v457);
        TSCEFormulaCreationMagic::LET_VAR(0, v124, v125, v126, v127, &v454);
        TSCEFormulaCreationMagic::MONTH(&v454, v504, &v455);
        TSUDecimal::operator=();
        v583._decimal.w[0] = v473;
        TSCEFormulaCreationMagic::number(v472, v583, v128, v129, &v453);
        v130.var0 = &v455;
        v131.var0 = &v453;
        TSCEFormulaCreationMagic::DATE(&v457, v130, v131, v556, &v458);
        TSUDecimal::operator=();
        v584._decimal.w[0] = v473;
        TSCEFormulaCreationMagic::number(v472, v584, v132, v133, &v451);
        TSUDecimal::operator=();
        v585._decimal.w[0] = v473;
        TSCEFormulaCreationMagic::number(v472, v585, v134, v135, &v450);
        TSCEFormulaCreationMagic::operator/(&v451, &v450, &v452);
        v136.var0 = &v458;
        v137.var0 = &v452;
        TSCEFormulaCreationMagic::IF(&v466, v136, v137, v557, &v467);
        v138.var0 = &v467;
        TSCEFunctor::TSCEFunctor(&v487, v138, 1u, 0);
        TSCEFunctor::operator=(&self->_groupingFunctor._formula, &v487);

        formula = v463;
      }

      else
      {
        TSCEFormulaCreationMagic::LET_VAR(0, x1_0, v2, v3, v4, &v445);
        TSCEFormulaCreationMagic::SUM(&v445, v493, &v446);
        TSCEFormulaCreationMagic::LET_VAR(0, v46, v47, v48, v49, &v444);
        v50.var0 = &v444;
        TSCEFormulaCreationMagic::EQ(&v446, v50, v532, &v447);
        TSCEFormulaCreationMagic::LET_VAR(0, v51, v52, v53, v54, &v441);
        TSCEFormulaCreationMagic::ISBLANK(&v441, v494, &v442);
        TSCEFormulaCreationMagic::NOT(&v442, v495, &v443);
        v55.var0 = &v443;
        TSCEFormulaCreationMagic::AND(&v447, v55, v533, &v448);
        TSUDecimal::operator=();
        v575._decimal.w[0] = v473;
        TSCEFormulaCreationMagic::number(v472, v575, v56, v57, &v439);
        TSUDecimal::operator=();
        v576._decimal.w[0] = v473;
        TSCEFormulaCreationMagic::number(v472, v576, v58, v59, &v438);
        TSUDecimal::operator=();
        v577._decimal.w[0] = v473;
        TSCEFormulaCreationMagic::number(v472, v577, v60, v61, &v436);
        TSCEFormulaCreationMagic::LET_VAR(0, v62, v63, v64, v65, &v434);
        TSCEFormulaCreationMagic::WEEKDAY(&v434, v496, &v435);
        TSCEFormulaCreationMagic::operator+(&v436, &v435, &v437);
        v66.var0 = &v438;
        v67.var0 = &v437;
        TSCEFormulaCreationMagic::DATE(&v439, v66, v67, v553, &v440);
        TSUDecimal::operator=();
        v578._decimal.w[0] = v473;
        TSCEFormulaCreationMagic::number(v472, v578, v68, v69, &v432);
        TSUDecimal::operator=();
        v579._decimal.w[0] = v473;
        TSCEFormulaCreationMagic::number(v472, v579, v70, v71, &v431);
        TSCEFormulaCreationMagic::operator/(&v432, &v431, &v433);
        v72.var0 = &v440;
        v73.var0 = &v433;
        TSCEFormulaCreationMagic::IF(&v448, v72, v73, v554, &v449);
        v74.var0 = &v449;
        TSCEFunctor::TSCEFunctor(&v487, v74, 1u, 0);
        TSCEFunctor::operator=(&self->_groupingFunctor._formula, &v487);

        formula = v445;
      }

      goto LABEL_24;
    }

    if (groupingType == -1)
    {
      v99 = MEMORY[0x277D81150];
      v100 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], x1_0, "[TSTGroupingColumn setFunctorForType]", v3, v4);
      v104 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v101, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupingColumn.mm", v102, v103);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v99, v105, v100, v104, 121, 0, "should not attempt to use an invalid grouping type");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v106, v107, v108, v109);
    }

    else if (!groupingType)
    {
      TSCEFunctor::TSCEFunctor(&v487);
      TSCEFunctor::operator=(&self->_groupingFunctor._formula, &v487);
      formula = v487._formula;
      goto LABEL_24;
    }
  }

  else
  {
    if (groupingType <= 6)
    {
      if (groupingType == 4)
      {
        TSCEFormulaCreationMagic::LET_VAR(0, x1_0, v2, v3, v4, &v426);
        TSCEFormulaCreationMagic::SUM(&v426, v519, &v427);
        TSCEFormulaCreationMagic::LET_VAR(0, v242, v243, v244, v245, &v425);
        v246.var0 = &v425;
        TSCEFormulaCreationMagic::EQ(&v427, v246, v547, &v428);
        TSCEFormulaCreationMagic::LET_VAR(0, v247, v248, v249, v250, &v422);
        TSCEFormulaCreationMagic::ISBLANK(&v422, v520, &v423);
        TSCEFormulaCreationMagic::NOT(&v423, v521, &v424);
        v251.var0 = &v424;
        TSCEFormulaCreationMagic::AND(&v428, v251, v548, &v429);
        TSCEFormulaCreationMagic::LET_VAR(0, v252, v253, v254, v255, &v419);
        TSCEFormulaCreationMagic::YEAR(&v419, v522, &v420);
        TSCEFormulaCreationMagic::LET_VAR(0, v256, v257, v258, v259, &v417);
        TSCEFormulaCreationMagic::MONTH(&v417, v523, &v418);
        TSCEFormulaCreationMagic::LET_VAR(0, v260, v261, v262, v263, &v415);
        TSCEFormulaCreationMagic::DAY(&v415, v524, &v416);
        v264.var0 = &v418;
        v265.var0 = &v416;
        TSCEFormulaCreationMagic::DATE(&v420, v264, v265, v564, &v421);
        TSUDecimal::operator=();
        v602._decimal.w[0] = v473;
        TSCEFormulaCreationMagic::number(v472, v602, v266, v267, &v413);
        TSUDecimal::operator=();
        v603._decimal.w[0] = v473;
        TSCEFormulaCreationMagic::number(v472, v603, v268, v269, &v412);
        TSCEFormulaCreationMagic::operator/(&v413, &v412, &v414);
        v270.var0 = &v421;
        v271.var0 = &v414;
        TSCEFormulaCreationMagic::IF(&v429, v270, v271, v565, &v430);
        v272.var0 = &v430;
        TSCEFunctor::TSCEFunctor(&v487, v272, 1u, 0);
        TSCEFunctor::operator=(&self->_groupingFunctor._formula, &v487);

        formula = v426;
      }

      else if (groupingType == 5)
      {
        TSCEFormulaCreationMagic::LET_VAR(0, x1_0, v2, v3, v4, &v407);
        TSCEFormulaCreationMagic::SUM(&v407, v505, &v408);
        TSCEFormulaCreationMagic::LET_VAR(0, v139, v140, v141, v142, &v406);
        v143.var0 = &v406;
        TSCEFormulaCreationMagic::EQ(&v408, v143, v539, &v409);
        TSCEFormulaCreationMagic::LET_VAR(0, v144, v145, v146, v147, &v403);
        TSCEFormulaCreationMagic::ISBLANK(&v403, v506, &v404);
        TSCEFormulaCreationMagic::NOT(&v404, v507, &v405);
        v148.var0 = &v405;
        TSCEFormulaCreationMagic::AND(&v409, v148, v540, &v410);
        TSCEFormulaCreationMagic::LET_VAR(0, v149, v150, v151, v152, &v398);
        TSCEFormulaCreationMagic::YEAR(&v398, v508, &v399);
        TSCEFormulaCreationMagic::LET_VAR(0, v153, v154, v155, v156, &v396);
        TSCEFormulaCreationMagic::MONTH(&v396, v509, &v397);
        TSCEFormulaCreationMagic::LET_VAR(0, v157, v158, v159, v160, &v394);
        TSCEFormulaCreationMagic::DAY(&v394, v510, &v395);
        v161.var0 = &v397;
        v162.var0 = &v395;
        TSCEFormulaCreationMagic::DATE(&v399, v161, v162, v558, &v400);
        TSUDecimal::operator=();
        v586._decimal.w[0] = v473;
        TSCEFormulaCreationMagic::number(v472, v586, v163, v164, &v393);
        TSCEFormulaCreationMagic::operator+(&v400, &v393, &v401);
        TSCEFormulaCreationMagic::LET_VAR(0, v165, v166, v167, v168, &v391);
        TSUDecimal::operator=();
        v587._decimal.w[0] = v473;
        TSCEFormulaCreationMagic::number(v472, v587, v169, v170, &v390);
        v171.var0 = &v390;
        TSCEFormulaCreationMagic::WEEKDAY(&v391, v171, v541, &v392);
        TSCEFormulaCreationMagic::operator-(&v401, &v392, &v402);
        TSUDecimal::operator=();
        v588._decimal.w[0] = v473;
        TSCEFormulaCreationMagic::number(v472, v588, v172, v173, &v388);
        TSUDecimal::operator=();
        v589._decimal.w[0] = v473;
        TSCEFormulaCreationMagic::number(v472, v589, v174, v175, &v387);
        TSCEFormulaCreationMagic::operator/(&v388, &v387, &v389);
        v176.var0 = &v402;
        v177.var0 = &v389;
        TSCEFormulaCreationMagic::IF(&v410, v176, v177, v559, &v411);
        v178.var0 = &v411;
        TSCEFunctor::TSCEFunctor(&v487, v178, 1u, 0);
        TSCEFunctor::operator=(&self->_groupingFunctor._formula, &v487);

        formula = v407;
      }

      else
      {
        TSCEFormulaCreationMagic::LET_VAR(0, x1_0, v2, v3, v4, &v382);
        TSCEFormulaCreationMagic::SUM(&v382, v488, &v383);
        TSCEFormulaCreationMagic::LET_VAR(0, v7, v8, v9, v10, &v381);
        v11.var0 = &v381;
        TSCEFormulaCreationMagic::EQ(&v383, v11, v529, &v384);
        TSCEFormulaCreationMagic::LET_VAR(0, v12, v13, v14, v15, &v378);
        TSCEFormulaCreationMagic::ISBLANK(&v378, v489, &v379);
        TSCEFormulaCreationMagic::NOT(&v379, v490, &v380);
        v16.var0 = &v380;
        TSCEFormulaCreationMagic::AND(&v384, v16, v530, &v385);
        TSCEFormulaCreationMagic::LET_VAR(0, v17, v18, v19, v20, &v375);
        TSCEFormulaCreationMagic::YEAR(&v375, v491, &v376);
        TSCEFormulaCreationMagic::LET_VAR(0, v21, v22, v23, v24, &v368);
        TSCEFormulaCreationMagic::MONTH(&v368, v492, &v369);
        TSUDecimal::operator=();
        v568._decimal.w[0] = v473;
        TSCEFormulaCreationMagic::number(v472, v568, v25, v26, &v367);
        TSCEFormulaCreationMagic::operator-(&v369, &v367, &v370);
        TSUDecimal::operator=();
        v569._decimal.w[0] = v473;
        TSCEFormulaCreationMagic::number(v472, v569, v27, v28, &v366);
        TSCEFormulaCreationMagic::operator/(&v370, &v366, &v371);
        TSCEFormulaCreator::TSCEFormulaCreator(&v365, 0);
        v29.var0 = &v365;
        TSCEFormulaCreationMagic::ROUNDDOWN(&v371, v29, v531, &v372);
        TSUDecimal::operator=();
        v570._decimal.w[0] = v473;
        TSCEFormulaCreationMagic::number(v472, v570, v30, v31, &v364);
        TSCEFormulaCreationMagic::operator*(&v372, &v364, &v373);
        TSUDecimal::operator=();
        v571._decimal.w[0] = v473;
        TSCEFormulaCreationMagic::number(v472, v571, v32, v33, &v363);
        TSCEFormulaCreationMagic::operator+(&v373, &v363, &v374);
        TSUDecimal::operator=();
        v572._decimal.w[0] = v473;
        TSCEFormulaCreationMagic::number(v472, v572, v34, v35, &v362);
        v36.var0 = &v374;
        v37.var0 = &v362;
        TSCEFormulaCreationMagic::DATE(&v376, v36, v37, v551, &v377);
        TSUDecimal::operator=();
        v573._decimal.w[0] = v473;
        TSCEFormulaCreationMagic::number(v472, v573, v38, v39, &v360);
        TSUDecimal::operator=();
        v574._decimal.w[0] = v473;
        TSCEFormulaCreationMagic::number(v472, v574, v40, v41, &v359);
        TSCEFormulaCreationMagic::operator/(&v360, &v359, &v361);
        v42.var0 = &v377;
        v43.var0 = &v361;
        TSCEFormulaCreationMagic::IF(&v385, v42, v43, v552, &v386);
        v44.var0 = &v386;
        TSCEFunctor::TSCEFunctor(&v487, v44, 1u, 0);
        TSCEFunctor::operator=(&self->_groupingFunctor._formula, &v487);

        formula = v382;
      }

      goto LABEL_24;
    }

    switch(groupingType)
    {
      case 7:
        TSCEFormulaCreationMagic::LET_VAR(0, x1_0, v2, v3, v4, &v354);
        TSCEFormulaCreationMagic::SUM(&v354, v525, &v355);
        TSCEFormulaCreationMagic::LET_VAR(0, v273, v274, v275, v276, &v353);
        v277.var0 = &v353;
        TSCEFormulaCreationMagic::EQ(&v355, v277, v549, &v356);
        TSCEFormulaCreationMagic::LET_VAR(0, v278, v279, v280, v281, &v350);
        TSCEFormulaCreationMagic::ISBLANK(&v350, v526, &v351);
        TSCEFormulaCreationMagic::NOT(&v351, v527, &v352);
        v282.var0 = &v352;
        TSCEFormulaCreationMagic::AND(&v356, v282, v550, &v357);
        TSUDecimal::operator=();
        v604._decimal.w[0] = v473;
        TSCEFormulaCreationMagic::number(v472, v604, v283, v284, &v348);
        TSCEFormulaCreationMagic::LET_VAR(0, v285, v286, v287, v288, &v346);
        TSCEFormulaCreationMagic::MONTH(&v346, v528, &v347);
        TSUDecimal::operator=();
        v605._decimal.w[0] = v473;
        TSCEFormulaCreationMagic::number(v472, v605, v289, v290, &v345);
        v291.var0 = &v347;
        v292.var0 = &v345;
        TSCEFormulaCreationMagic::DATE(&v348, v291, v292, v566, &v349);
        TSUDecimal::operator=();
        v606._decimal.w[0] = v473;
        TSCEFormulaCreationMagic::number(v472, v606, v293, v294, &v343);
        TSUDecimal::operator=();
        v607._decimal.w[0] = v473;
        TSCEFormulaCreationMagic::number(v472, v607, v295, v296, &v342);
        TSCEFormulaCreationMagic::operator/(&v343, &v342, &v344);
        v297.var0 = &v349;
        v298.var0 = &v344;
        TSCEFormulaCreationMagic::IF(&v357, v297, v298, v567, &v358);
        v299.var0 = &v358;
        TSCEFunctor::TSCEFunctor(&v487, v299, 1u, 0);
        TSCEFunctor::operator=(&self->_groupingFunctor._formula, &v487);

        formula = v354;
        goto LABEL_24;
      case 8:
        TSCEFormulaCreationMagic::LET_VAR(0, x1_0, v2, v3, v4, &v337);
        TSCEFormulaCreationMagic::SUM(&v337, v511, &v338);
        TSCEFormulaCreationMagic::LET_VAR(0, v179, v180, v181, v182, &v336);
        v183.var0 = &v336;
        TSCEFormulaCreationMagic::EQ(&v338, v183, v542, &v339);
        TSCEFormulaCreationMagic::LET_VAR(0, v184, v185, v186, v187, &v333);
        TSCEFormulaCreationMagic::ISBLANK(&v333, v512, &v334);
        TSCEFormulaCreationMagic::NOT(&v334, v513, &v335);
        v188.var0 = &v335;
        TSCEFormulaCreationMagic::AND(&v339, v188, v543, &v340);
        TSUDecimal::operator=();
        v590._decimal.w[0] = v473;
        TSCEFormulaCreationMagic::number(v472, v590, v189, v190, &v331);
        TSCEFormulaCreationMagic::LET_VAR(0, v191, v192, v193, v194, &v324);
        TSCEFormulaCreationMagic::MONTH(&v324, v514, &v325);
        TSUDecimal::operator=();
        v591._decimal.w[0] = v473;
        TSCEFormulaCreationMagic::number(v472, v591, v195, v196, &v323);
        TSCEFormulaCreationMagic::operator-(&v325, &v323, &v326);
        TSUDecimal::operator=();
        v592._decimal.w[0] = v473;
        TSCEFormulaCreationMagic::number(v472, v592, v197, v198, &v322);
        TSCEFormulaCreationMagic::operator/(&v326, &v322, &v327);
        TSCEFormulaCreator::TSCEFormulaCreator(&v321, 0);
        v199.var0 = &v321;
        TSCEFormulaCreationMagic::ROUNDDOWN(&v327, v199, v544, &v328);
        TSUDecimal::operator=();
        v593._decimal.w[0] = v473;
        TSCEFormulaCreationMagic::number(v472, v593, v200, v201, &v320);
        TSCEFormulaCreationMagic::operator*(&v328, &v320, &v329);
        TSUDecimal::operator=();
        v594._decimal.w[0] = v473;
        TSCEFormulaCreationMagic::number(v472, v594, v202, v203, &v319);
        TSCEFormulaCreationMagic::operator+(&v329, &v319, &v330);
        TSUDecimal::operator=();
        v595._decimal.w[0] = v473;
        TSCEFormulaCreationMagic::number(v472, v595, v204, v205, &v318);
        v206.var0 = &v330;
        v207.var0 = &v318;
        TSCEFormulaCreationMagic::DATE(&v331, v206, v207, v560, &v332);
        TSUDecimal::operator=();
        v596._decimal.w[0] = v473;
        TSCEFormulaCreationMagic::number(v472, v596, v208, v209, &v316);
        TSUDecimal::operator=();
        v597._decimal.w[0] = v473;
        TSCEFormulaCreationMagic::number(v472, v597, v210, v211, &v315);
        TSCEFormulaCreationMagic::operator/(&v316, &v315, &v317);
        v212.var0 = &v332;
        v213.var0 = &v317;
        TSCEFormulaCreationMagic::IF(&v340, v212, v213, v561, &v341);
        v214.var0 = &v341;
        TSCEFunctor::TSCEFunctor(&v487, v214, 1u, 0);
        TSCEFunctor::operator=(&self->_groupingFunctor._formula, &v487);

        formula = v337;
        goto LABEL_24;
      case 10:
        TSCEFormulaCreationMagic::LET_VAR(0, x1_0, v2, v3, v4, &v310);
        TSCEFormulaCreationMagic::SUM(&v310, v497, &v311);
        TSCEFormulaCreationMagic::LET_VAR(0, v75, v76, v77, v78, &v309);
        v79.var0 = &v309;
        TSCEFormulaCreationMagic::EQ(&v311, v79, v534, &v312);
        TSCEFormulaCreationMagic::LET_VAR(0, v80, v81, v82, v83, &v306);
        TSCEFormulaCreationMagic::ISBLANK(&v306, v498, &v307);
        TSCEFormulaCreationMagic::NOT(&v307, v499, &v308);
        v84.var0 = &v308;
        TSCEFormulaCreationMagic::AND(&v312, v84, v535, &v313);
        TSCEFormulaCreationMagic::LET_VAR(0, v85, v86, v87, v88, &v304);
        TSUDecimal::operator=();
        v580._decimal.w[0] = v473;
        TSCEFormulaCreationMagic::number(v472, v580, v89, v90, &v303);
        v91.var0 = &v303;
        TSCEFormulaCreationMagic::ROUND(&v304, v91, v536, &v305);
        TSUDecimal::operator=();
        v581._decimal.w[0] = v473;
        TSCEFormulaCreationMagic::number(v472, v581, v92, v93, &v301);
        TSUDecimal::operator=();
        v582._decimal.w[0] = v473;
        TSCEFormulaCreationMagic::number(v472, v582, v94, v95, &v300);
        TSCEFormulaCreationMagic::operator/(&v301, &v300, &v302);
        v96.var0 = &v305;
        v97.var0 = &v302;
        TSCEFormulaCreationMagic::IF(&v313, v96, v97, v555, &v314);
        v98.var0 = &v314;
        TSCEFunctor::TSCEFunctor(&v487, v98, 1u, 0);
        TSCEFunctor::operator=(&self->_groupingFunctor._formula, &v487);

        formula = v310;
LABEL_24:

        break;
    }
  }

  self->_groupingFormatComputed = 0;
}

- (id)p_groupingFormatWithLocale:(id)a3
{
  v5 = a3;
  if (self->_docLocale != v5 || !self->_groupingFormatComputed)
  {
    objc_storeStrong(&self->_docLocale, a3);
    groupingType = self->_groupingType;
    if (groupingType > 3)
    {
      if (groupingType <= 6)
      {
        if (groupingType == 4)
        {
          v41 = objc_alloc(MEMORY[0x277D80658]);
          v12 = objc_msgSend_localizedStringForKey_value_table_(self->_docLocale, v42, @"M/d/yyyy", &stru_2834BADA0, @"TSTables");
          v16 = objc_msgSend_initWithFormatString_(v41, v43, v12, v44, v45);
          goto LABEL_27;
        }

        if (groupingType == 5)
        {
          v10 = objc_alloc(MEMORY[0x277D80658]);
          objc_msgSend_localizedStringForKey_value_table_(self->_docLocale, v30, @"yyyy'-W'w", &stru_2834BADA0, @"TSTables");
        }

        else
        {
          v10 = objc_alloc(MEMORY[0x277D80658]);
          objc_msgSend_localizedStringForKey_value_table_(self->_docLocale, v11, @"yyyy-QQQ", &stru_2834BADA0, @"TSTables");
        }

        v12 = LABEL_8:;
        v16 = objc_msgSend_initWithFormatString_(v10, v13, v12, v14, v15);
LABEL_27:
        groupingFormat = self->_groupingFormat;
        self->_groupingFormat = v16;

        goto LABEL_28;
      }

      if (groupingType == 7)
      {
        v46 = objc_alloc(MEMORY[0x277D80658]);
        v12 = objc_msgSend_localizedStringForKey_value_table_(self->_docLocale, v47, @"LLLL", &stru_2834BADA0, @"TSTables");
        v16 = objc_msgSend_initWithFormatString_(v46, v48, v12, v49, v50);
        goto LABEL_27;
      }

      if (groupingType == 8)
      {
        v31 = objc_alloc(MEMORY[0x277D80658]);
        v12 = objc_msgSend_localizedStringForKey_value_table_(self->_docLocale, v32, @"QQQ", &stru_2834BADA0, @"TSTables");
        v16 = objc_msgSend_initWithFormatString_(v31, v33, v12, v34, v35);
        goto LABEL_27;
      }

      if (groupingType != 10)
      {
        goto LABEL_29;
      }

LABEL_19:
      v12 = self->_groupingFormat;
      self->_groupingFormat = 0;
LABEL_28:

      goto LABEL_29;
    }

    if (groupingType > 0)
    {
      if (groupingType == 1)
      {
        v36 = objc_alloc(MEMORY[0x277D80658]);
        v12 = objc_msgSend_localizedStringForKey_value_table_(self->_docLocale, v37, @"yyyy", &stru_2834BADA0, @"TSTables");
        v16 = objc_msgSend_initWithFormatString_(v36, v38, v12, v39, v40);
        goto LABEL_27;
      }

      if (groupingType == 2)
      {
        v10 = objc_alloc(MEMORY[0x277D80658]);
        objc_msgSend_localizedStringForKey_value_table_(self->_docLocale, v29, @"LLLL yyyy", &stru_2834BADA0, @"TSTables");
      }

      else
      {
        v10 = objc_alloc(MEMORY[0x277D80658]);
        objc_msgSend_localizedStringForKey_value_table_(self->_docLocale, v17, @"EEEE", &stru_2834BADA0, @"TSTables");
      }

      goto LABEL_8;
    }

    if (groupingType == -1)
    {
      v18 = MEMORY[0x277D81150];
      v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSTGroupingColumn p_groupingFormatWithLocale:]", v7, v8);
      v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupingColumn.mm", v21, v22);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v18, v24, v19, v23, 202, 0, "should not attempt to use an invalid grouping type");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26, v27, v28);
    }

    else if (!groupingType)
    {
      goto LABEL_19;
    }

LABEL_29:
    self->_groupingFormatComputed = 1;
  }

  v52 = self->_groupingFormat;
  v53 = v52;

  return v52;
}

- (id)groupValueForValue:(id)a3 calcEngine:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v6;
  v13 = TSCEFunctor::isValid(&self->_groupingFunctor, v9, v10, v11, v12) ^ 1;
  if (!v7)
  {
    LOBYTE(v13) = 1;
  }

  v14 = v8;
  if ((v13 & 1) == 0)
  {
    v15 = objc_alloc(MEMORY[0x277CBEA60]);
    v19 = objc_msgSend_initWithObjects_(v15, v16, v8, v17, v18, 0);
    v20 = TSCEFunctor::evaluateWithArgs(&self->_groupingFunctor, v19, v7);

    if (v20 && objc_msgSend_valueType(v20, v21, v22, v23, v24) != 9 && objc_msgSend_valueType(v20, v25, v26, v27, v28) && objc_msgSend_valueType(v20, v29, v30, v31, v32) != 10)
    {
      v38 = objc_msgSend_locale(v20, v33, v34, v35, v36);
      v42 = objc_msgSend_p_groupingFormatWithLocale_(self, v39, v38, v40, v41);

      if (v42)
      {
        v47 = objc_msgSend_tsceValue(v20, v43, v44, v45, v46);
        TSCEFormat::TSCEFormat(&v59, v42, 0);
        TSCEFormat::TSCEFormat(&v60, &v59);
        objc_msgSend_setFormat_(v47, v48, &v60, v49, v50);
        v55 = objc_msgSend_locale(v20, v51, v52, v53, v54);
        v58 = objc_msgSend_newCellValueFromTSCEValue_withLocale_(TSCECellValue, v56, v47, v55, v57);

        v20 = v58;
      }

      v14 = v20;
    }

    else
    {
      v14 = v8;
    }
  }

  return v14;
}

- (TSTGroupingColumn)initWithArchive:(const void *)a3
{
  if ((*(a3 + 16) & 4) != 0)
  {
    v5 = TSKUIDStruct::loadFromMessage(*(a3 + 5), a2);
  }

  else
  {
    v5 = TSKMakeUIDStructRandom();
  }

  v7 = v5;
  v8 = v6;
  if (*(a3 + 3))
  {
    v9 = *(a3 + 3);
  }

  else
  {
    v9 = MEMORY[0x277D809E0];
  }

  v10 = TSKUIDStruct::loadFromMessage(v9, v6);
  v12 = v11;
  TSCEFunctor::TSCEFunctor(&v18);
  groupingType = *(a3 + 12);
  self->_groupingType = groupingType;
  if ((*(a3 + 16) & 2) != 0)
  {
    TSCEFunctor::TSCEFunctor(&v17, *(a3 + 4));
    TSCEFunctor::operator=(&v18._formula, &v17);

    groupingType = self->_groupingType;
  }

  v15 = objc_msgSend_initWithGroupingColumnUid_columnUid_groupingType_(self, v13, v7, v8, v10, v12, groupingType);

  return v15;
}

- (void)encodeToArchive:(void *)a3 archiver:(id)a4
{
  v17 = a4;
  *(a3 + 4) |= 4u;
  v6 = *(a3 + 5);
  if (!v6)
  {
    v7 = *(a3 + 1);
    if (v7)
    {
      v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
    }

    v6 = MEMORY[0x223DA0360](v7);
    *(a3 + 5) = v6;
  }

  TSP::UUIDData::saveToMessage(&self->_groupingColumnUid, v6);
  *(a3 + 4) |= 1u;
  v8 = *(a3 + 3);
  if (!v8)
  {
    v9 = *(a3 + 1);
    if (v9)
    {
      v9 = *(v9 & 0xFFFFFFFFFFFFFFFELL);
    }

    v8 = MEMORY[0x223DA0360](v9);
    *(a3 + 3) = v8;
  }

  TSP::UUIDData::saveToMessage(&self->_columnUid, v8);
  groupingType = self->_groupingType;
  *(a3 + 4) |= 8u;
  *(a3 + 12) = groupingType;
  if (TSCEFunctor::isValid(&self->_groupingFunctor, v11, v12, v13, v14))
  {
    *(a3 + 4) |= 2u;
    v15 = *(a3 + 4);
    if (!v15)
    {
      v16 = *(a3 + 1);
      if (v16)
      {
        v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
      }

      v15 = google::protobuf::Arena::CreateMaybeMessage<TSCE::FunctorArchive>(v16);
      *(a3 + 4) = v15;
    }

    TSCEFunctor::encodeToArchive(&self->_groupingFunctor, v15, v17);
  }
}

+ (id)stringForUniqueType
{
  v5 = sub_2214AAEA8(a1, a2, v2, v3, v4);
  v7 = objc_msgSend_localizedStringForKey_value_table_(v5, v6, @"Value", &stru_2834BADA0, @"TSTables");

  return v7;
}

+ (id)stringForYearType
{
  v5 = sub_2214AAEA8(a1, a2, v2, v3, v4);
  v7 = objc_msgSend_localizedStringForKey_value_table_(v5, v6, @"Year", &stru_2834BADA0, @"TSTables");

  return v7;
}

+ (id)stringForMonthType
{
  v5 = sub_2214AAEA8(a1, a2, v2, v3, v4);
  v7 = objc_msgSend_localizedStringForKey_value_table_(v5, v6, @"Year-Month", &stru_2834BADA0, @"TSTables");

  return v7;
}

+ (id)stringForDayOfWeekType
{
  v5 = sub_2214AAEA8(a1, a2, v2, v3, v4);
  v7 = objc_msgSend_localizedStringForKey_value_table_(v5, v6, @"Day of Week", &stru_2834BADA0, @"TSTables");

  return v7;
}

+ (id)stringForDayType
{
  v5 = sub_2214AAEA8(a1, a2, v2, v3, v4);
  v7 = objc_msgSend_localizedStringForKey_value_table_(v5, v6, @"Year-Month-Day", &stru_2834BADA0, @"TSTables");

  return v7;
}

+ (id)stringForYearWeekType
{
  v5 = sub_2214AAEA8(a1, a2, v2, v3, v4);
  v7 = objc_msgSend_localizedStringForKey_value_table_(v5, v6, @"Year-Week", &stru_2834BADA0, @"TSTables");

  return v7;
}

+ (id)stringForYearQuarterType
{
  v5 = sub_2214AAEA8(a1, a2, v2, v3, v4);
  v7 = objc_msgSend_localizedStringForKey_value_table_(v5, v6, @"Year-Quarter", &stru_2834BADA0, @"TSTables");

  return v7;
}

+ (id)stringForMonthOfYearType
{
  v5 = sub_2214AAEA8(a1, a2, v2, v3, v4);
  v7 = objc_msgSend_localizedStringForKey_value_table_(v5, v6, @"Month", &stru_2834BADA0, @"TSTables");

  return v7;
}

+ (id)stringForQuarterOfYearType
{
  v5 = sub_2214AAEA8(a1, a2, v2, v3, v4);
  v7 = objc_msgSend_localizedStringForKey_value_table_(v5, v6, @"Quarter", &stru_2834BADA0, @"TSTables");

  return v7;
}

+ (id)shortStringForYearType
{
  v5 = sub_2214AAEA8(a1, a2, v2, v3, v4);
  v7 = objc_msgSend_localizedStringForKey_value_table_(v5, v6, @"Year", &stru_2834BADA0, @"TSTables");

  return v7;
}

+ (id)shortStringForMonthType
{
  v5 = sub_2214AAEA8(a1, a2, v2, v3, v4);
  v7 = objc_msgSend_localizedStringForKey_value_table_(v5, v6, @"YM", &stru_2834BADA0, @"TSTables");

  return v7;
}

+ (id)shortStringForDayOfWeekType
{
  v5 = sub_2214AAEA8(a1, a2, v2, v3, v4);
  v7 = objc_msgSend_localizedStringForKey_value_table_(v5, v6, @"Day", &stru_2834BADA0, @"TSTables");

  return v7;
}

+ (id)shortStringForDayType
{
  v5 = sub_2214AAEA8(a1, a2, v2, v3, v4);
  v7 = objc_msgSend_localizedStringForKey_value_table_(v5, v6, @"YMD", &stru_2834BADA0, @"TSTables");

  return v7;
}

+ (id)shortStringForYearWeekType
{
  v5 = sub_2214AAEA8(a1, a2, v2, v3, v4);
  v7 = objc_msgSend_localizedStringForKey_value_table_(v5, v6, @"YW", &stru_2834BADA0, @"TSTables");

  return v7;
}

+ (id)shortStringForYearQuarterType
{
  v5 = sub_2214AAEA8(a1, a2, v2, v3, v4);
  v7 = objc_msgSend_localizedStringForKey_value_table_(v5, v6, @"YQ", &stru_2834BADA0, @"TSTables");

  return v7;
}

+ (id)shortStringForMonthOfYearType
{
  v5 = sub_2214AAEA8(a1, a2, v2, v3, v4);
  v7 = objc_msgSend_localizedStringForKey_value_table_(v5, v6, @"Month", &stru_2834BADA0, @"TSTables");

  return v7;
}

+ (id)shortStringForQuarterOfYearType
{
  v5 = sub_2214AAEA8(a1, a2, v2, v3, v4);
  v7 = objc_msgSend_localizedStringForKey_value_table_(v5, v6, @"Qtr", &stru_2834BADA0, @"TSTables");

  return v7;
}

+ (id)stringForUniqueTypeForLocale:(id)a3
{
  v3 = objc_msgSend_localizedStringForKey_value_table_(a3, a2, @"Value", &stru_2834BADA0, @"TSTables");

  return v3;
}

+ (id)stringForYearTypeForLocale:(id)a3
{
  v3 = objc_msgSend_localizedStringForKey_value_table_(a3, a2, @"Year", &stru_2834BADA0, @"TSTables");

  return v3;
}

+ (id)stringForMonthTypeForLocale:(id)a3
{
  v3 = objc_msgSend_localizedStringForKey_value_table_(a3, a2, @"Year-Month", &stru_2834BADA0, @"TSTables");

  return v3;
}

+ (id)stringForDayOfWeekTypeForLocale:(id)a3
{
  v3 = objc_msgSend_localizedStringForKey_value_table_(a3, a2, @"Day of Week", &stru_2834BADA0, @"TSTables");

  return v3;
}

+ (id)stringForDayTypeForLocale:(id)a3
{
  v3 = objc_msgSend_localizedStringForKey_value_table_(a3, a2, @"Year-Month-Day", &stru_2834BADA0, @"TSTables");

  return v3;
}

+ (id)stringForYearWeekTypeForLocale:(id)a3
{
  v3 = objc_msgSend_localizedStringForKey_value_table_(a3, a2, @"Year-Week", &stru_2834BADA0, @"TSTables");

  return v3;
}

+ (id)stringForYearQuarterTypeForLocale:(id)a3
{
  v3 = objc_msgSend_localizedStringForKey_value_table_(a3, a2, @"Year-Quarter", &stru_2834BADA0, @"TSTables");

  return v3;
}

+ (id)stringForMonthOfYearTypeForLocale:(id)a3
{
  v3 = objc_msgSend_localizedStringForKey_value_table_(a3, a2, @"Month", &stru_2834BADA0, @"TSTables");

  return v3;
}

+ (id)stringForQuarterOfYearTypeForLocale:(id)a3
{
  v3 = objc_msgSend_localizedStringForKey_value_table_(a3, a2, @"Quarter", &stru_2834BADA0, @"TSTables");

  return v3;
}

+ (id)shortStringForYearTypeForLocale:(id)a3
{
  v3 = objc_msgSend_localizedStringForKey_value_table_(a3, a2, @"Year", &stru_2834BADA0, @"TSTables");

  return v3;
}

+ (id)shortStringForMonthTypeForLocale:(id)a3
{
  v3 = objc_msgSend_localizedStringForKey_value_table_(a3, a2, @"YM", &stru_2834BADA0, @"TSTables");

  return v3;
}

+ (id)shortStringForDayOfWeekTypeForLocale:(id)a3
{
  v3 = objc_msgSend_localizedStringForKey_value_table_(a3, a2, @"Day", &stru_2834BADA0, @"TSTables");

  return v3;
}

+ (id)shortStringForDayTypeForLocale:(id)a3
{
  v3 = objc_msgSend_localizedStringForKey_value_table_(a3, a2, @"YMD", &stru_2834BADA0, @"TSTables");

  return v3;
}

+ (id)shortStringForYearWeekTypeForLocale:(id)a3
{
  v3 = objc_msgSend_localizedStringForKey_value_table_(a3, a2, @"YW", &stru_2834BADA0, @"TSTables");

  return v3;
}

+ (id)shortStringForYearQuarterTypeForLocale:(id)a3
{
  v3 = objc_msgSend_localizedStringForKey_value_table_(a3, a2, @"YQ", &stru_2834BADA0, @"TSTables");

  return v3;
}

+ (id)shortStringForMonthOfYearTypeForLocale:(id)a3
{
  v3 = objc_msgSend_localizedStringForKey_value_table_(a3, a2, @"Month", &stru_2834BADA0, @"TSTables");

  return v3;
}

+ (id)shortStringForQuarterOfYearTypeForLocale:(id)a3
{
  v3 = objc_msgSend_localizedStringForKey_value_table_(a3, a2, @"Qtr", &stru_2834BADA0, @"TSTables");

  return v3;
}

+ (id)shortStringForGroupingType:(int64_t)a3
{
  v4 = objc_opt_class();
  if (a3 <= 4)
  {
    if (a3 <= 2)
    {
      if (a3 == 1)
      {
        v9 = objc_msgSend_shortStringForYearType(v4, v5, v6, v7, v8);
        goto LABEL_20;
      }

      if (a3 == 2)
      {
        v9 = objc_msgSend_shortStringForMonthType(v4, v5, v6, v7, v8);
        goto LABEL_20;
      }

      goto LABEL_19;
    }

    if (a3 == 3)
    {
      objc_msgSend_shortStringForDayOfWeekType(v4, v5, v6, v7, v8);
    }

    else
    {
      objc_msgSend_shortStringForDayType(v4, v5, v6, v7, v8);
    }

    v9 = LABEL_9:;
    goto LABEL_20;
  }

  if (a3 <= 6)
  {
    if (a3 == 5)
    {
      objc_msgSend_shortStringForYearWeekType(v4, v5, v6, v7, v8);
    }

    else
    {
      objc_msgSend_shortStringForYearQuarterType(v4, v5, v6, v7, v8);
    }

    goto LABEL_9;
  }

  if (a3 == 7)
  {
    v9 = objc_msgSend_shortStringForMonthOfYearType(v4, v5, v6, v7, v8);
    goto LABEL_20;
  }

  if (a3 == 8)
  {
    v9 = objc_msgSend_shortStringForQuarterOfYearType(v4, v5, v6, v7, v8);
    goto LABEL_20;
  }

LABEL_19:
  v9 = objc_msgSend_stringForUniqueType(v4, v5, v6, v7, v8);
LABEL_20:

  return v9;
}

+ (id)stringForGroupingType:(int64_t)a3
{
  v4 = objc_opt_class();
  if (a3 <= 4)
  {
    if (a3 <= 2)
    {
      if (a3 == 1)
      {
        v9 = objc_msgSend_stringForYearType(v4, v5, v6, v7, v8);
        goto LABEL_20;
      }

      if (a3 == 2)
      {
        v9 = objc_msgSend_stringForMonthType(v4, v5, v6, v7, v8);
        goto LABEL_20;
      }

      goto LABEL_19;
    }

    if (a3 == 3)
    {
      objc_msgSend_stringForDayOfWeekType(v4, v5, v6, v7, v8);
    }

    else
    {
      objc_msgSend_stringForDayType(v4, v5, v6, v7, v8);
    }

    v9 = LABEL_9:;
    goto LABEL_20;
  }

  if (a3 <= 6)
  {
    if (a3 == 5)
    {
      objc_msgSend_stringForYearWeekType(v4, v5, v6, v7, v8);
    }

    else
    {
      objc_msgSend_stringForYearQuarterType(v4, v5, v6, v7, v8);
    }

    goto LABEL_9;
  }

  if (a3 == 7)
  {
    v9 = objc_msgSend_stringForMonthOfYearType(v4, v5, v6, v7, v8);
    goto LABEL_20;
  }

  if (a3 == 8)
  {
    v9 = objc_msgSend_stringForQuarterOfYearType(v4, v5, v6, v7, v8);
    goto LABEL_20;
  }

LABEL_19:
  v9 = objc_msgSend_stringForUniqueType(v4, v5, v6, v7, v8);
LABEL_20:

  return v9;
}

+ (id)stringForGroupingType:(int64_t)a3 locale:(id)a4
{
  v5 = a4;
  if (a3 <= 4)
  {
    if (a3 <= 2)
    {
      if (a3 == 1)
      {
        v23 = objc_opt_class();
        v10 = objc_msgSend_stringForYearTypeForLocale_(v23, v24, v5, v25, v26);
        goto LABEL_20;
      }

      if (a3 == 2)
      {
        v6 = objc_opt_class();
        v10 = objc_msgSend_stringForMonthTypeForLocale_(v6, v7, v5, v8, v9);
        goto LABEL_20;
      }

      goto LABEL_19;
    }

    v15 = objc_opt_class();
    if (a3 == 3)
    {
      objc_msgSend_stringForDayOfWeekTypeForLocale_(v15, v16, v5, v17, v18);
    }

    else
    {
      objc_msgSend_stringForDayTypeForLocale_(v15, v16, v5, v17, v18);
    }

    v10 = LABEL_9:;
    goto LABEL_20;
  }

  if (a3 <= 6)
  {
    v11 = objc_opt_class();
    if (a3 == 5)
    {
      objc_msgSend_stringForYearWeekTypeForLocale_(v11, v12, v5, v13, v14);
    }

    else
    {
      objc_msgSend_stringForYearQuarterTypeForLocale_(v11, v12, v5, v13, v14);
    }

    goto LABEL_9;
  }

  if (a3 == 7)
  {
    v27 = objc_opt_class();
    v10 = objc_msgSend_stringForMonthOfYearTypeForLocale_(v27, v28, v5, v29, v30);
    goto LABEL_20;
  }

  if (a3 == 8)
  {
    v19 = objc_opt_class();
    v10 = objc_msgSend_stringForQuarterOfYearTypeForLocale_(v19, v20, v5, v21, v22);
    goto LABEL_20;
  }

LABEL_19:
  v31 = objc_opt_class();
  v10 = objc_msgSend_stringForUniqueTypeForLocale_(v31, v32, v5, v33, v34);
LABEL_20:
  v35 = v10;

  return v35;
}

+ (id)shortStringForGroupingType:(int64_t)a3 locale:(id)a4
{
  v5 = a4;
  if (a3 <= 4)
  {
    if (a3 <= 2)
    {
      if (a3 == 1)
      {
        v23 = objc_opt_class();
        v10 = objc_msgSend_shortStringForYearTypeForLocale_(v23, v24, v5, v25, v26);
        goto LABEL_20;
      }

      if (a3 == 2)
      {
        v6 = objc_opt_class();
        v10 = objc_msgSend_shortStringForMonthTypeForLocale_(v6, v7, v5, v8, v9);
        goto LABEL_20;
      }

      goto LABEL_19;
    }

    v15 = objc_opt_class();
    if (a3 == 3)
    {
      objc_msgSend_shortStringForDayOfWeekTypeForLocale_(v15, v16, v5, v17, v18);
    }

    else
    {
      objc_msgSend_shortStringForDayTypeForLocale_(v15, v16, v5, v17, v18);
    }

    v10 = LABEL_9:;
    goto LABEL_20;
  }

  if (a3 <= 6)
  {
    v11 = objc_opt_class();
    if (a3 == 5)
    {
      objc_msgSend_shortStringForYearWeekTypeForLocale_(v11, v12, v5, v13, v14);
    }

    else
    {
      objc_msgSend_shortStringForYearQuarterTypeForLocale_(v11, v12, v5, v13, v14);
    }

    goto LABEL_9;
  }

  if (a3 == 7)
  {
    v27 = objc_opt_class();
    v10 = objc_msgSend_shortStringForMonthOfYearTypeForLocale_(v27, v28, v5, v29, v30);
    goto LABEL_20;
  }

  if (a3 == 8)
  {
    v19 = objc_opt_class();
    v10 = objc_msgSend_shortStringForQuarterOfYearTypeForLocale_(v19, v20, v5, v21, v22);
    goto LABEL_20;
  }

LABEL_19:
  v31 = objc_opt_class();
  v10 = objc_msgSend_stringForUniqueTypeForLocale_(v31, v32, v5, v33, v34);
LABEL_20:
  v35 = v10;

  return v35;
}

+ (int64_t)coarserGroupingTypeFor:(int64_t)a3
{
  if ((a3 - 1) > 7)
  {
    return 0;
  }

  else
  {
    return qword_2217E2190[a3 - 1];
  }
}

+ (int64_t)coarserGroupingTypeFor:(int64_t)a3 groupTypesToAvoid:(id)a4
{
  v9 = a4;
  do
  {
    v13 = objc_msgSend_coarserGroupingTypeFor_(a1, v6, a3, v7, v8);
    if (v13 == a3)
    {
      break;
    }

    a3 = v13;
  }

  while ((objc_msgSend_containsIndex_(v9, v10, v13, v11, v12) & 1) != 0);

  return a3;
}

+ (int64_t)finerGroupingTypeFor:(int64_t)a3
{
  if ((a3 - 1) > 7)
  {
    return 0;
  }

  else
  {
    return qword_2217E21D0[a3 - 1];
  }
}

+ (int64_t)finerGroupingTypeFor:(int64_t)a3 groupTypesToAvoid:(id)a4
{
  v9 = a4;
  do
  {
    v13 = objc_msgSend_finerGroupingTypeFor_(a1, v6, a3, v7, v8);
    if (v13 == a3)
    {
      break;
    }

    a3 = v13;
  }

  while ((objc_msgSend_containsIndex_(v9, v10, v13, v11, v12) & 1) != 0);

  return a3;
}

- (TSKUIDStruct)uniqueObjectUID
{
  p_uniqueObjectUID = &self->_uniqueObjectUID;
  lower = self->_uniqueObjectUID._lower;
  upper = p_uniqueObjectUID->_upper;
  result._upper = upper;
  result._lower = lower;
  return result;
}

- (id).cxx_construct
{
  self->_groupingColumnUid = 0uLL;
  self->_columnUid = 0uLL;
  TSCEFunctor::TSCEFunctor(&self->_groupingFunctor);
  return self;
}

@end