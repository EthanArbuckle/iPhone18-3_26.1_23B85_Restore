@interface PGGraphSpecification
- (PGGraphSpecification)init;
- (id)edgeClassByDomain;
- (id)edgeClassByDomainAndLabel;
- (id)nodeClassByDomain;
- (id)nodeClassByDomainAndLabel;
- (void)enumerateEdgeClassesUsingBlock:(id)block;
- (void)enumerateNodeClassesUsingBlock:(id)block;
@end

@implementation PGGraphSpecification

- (void)enumerateEdgeClassesUsingBlock:(id)block
{
  blockCopy = block;
  edgeClassByDomainAndLabel = [(PGGraphSpecification *)self edgeClassByDomainAndLabel];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __55__PGGraphSpecification_enumerateEdgeClassesUsingBlock___block_invoke;
  v11[3] = &unk_27887FFE0;
  v6 = blockCopy;
  v12 = v6;
  [edgeClassByDomainAndLabel enumerateKeysAndObjectsUsingBlock:v11];

  edgeClassByDomain = [(PGGraphSpecification *)self edgeClassByDomain];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __55__PGGraphSpecification_enumerateEdgeClassesUsingBlock___block_invoke_3;
  v9[3] = &unk_278880008;
  v10 = v6;
  v8 = v6;
  [edgeClassByDomain enumerateKeysAndObjectsUsingBlock:v9];
}

void __55__PGGraphSpecification_enumerateEdgeClassesUsingBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __55__PGGraphSpecification_enumerateEdgeClassesUsingBlock___block_invoke_2;
  v8[3] = &unk_27887FFB8;
  v6 = *(a1 + 32);
  v9 = v5;
  v10 = v6;
  v7 = v5;
  [a3 enumerateKeysAndObjectsUsingBlock:v8];
}

uint64_t __55__PGGraphSpecification_enumerateEdgeClassesUsingBlock___block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = [a2 unsignedIntegerValue];
  v6 = *(v4 + 16);

  return v6(v4, 0, v5, a3);
}

void __55__PGGraphSpecification_enumerateEdgeClassesUsingBlock___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = a2;
  (*(v4 + 16))(v4, v6, [v5 unsignedIntegerValue], a3);
}

- (id)edgeClassByDomain
{
  if (edgeClassByDomain_onceToken != -1)
  {
    dispatch_once(&edgeClassByDomain_onceToken, &__block_literal_global_352);
  }

  v3 = edgeClassByDomain_edgeClassByDomain;

  return v3;
}

void __41__PGGraphSpecification_edgeClassByDomain__block_invoke()
{
  v0 = edgeClassByDomain_edgeClassByDomain;
  edgeClassByDomain_edgeClassByDomain = MEMORY[0x277CBEC10];
}

- (id)edgeClassByDomainAndLabel
{
  if (edgeClassByDomainAndLabel_onceToken != -1)
  {
    dispatch_once(&edgeClassByDomainAndLabel_onceToken, &__block_literal_global_284);
  }

  v3 = edgeClassByDomainAndLabel_edgeClassByDomainAndLabel;

  return v3;
}

void __49__PGGraphSpecification_edgeClassByDomainAndLabel__block_invoke()
{
  v132[32] = *MEMORY[0x277D85DE8];
  v66 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:501];
  v131[0] = v66;
  v129 = @"POI";
  v130 = objc_opt_class();
  v65 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v130 forKeys:&v129 count:1];
  v132[0] = v65;
  v64 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:502];
  v131[1] = v64;
  v127 = @"ROI";
  v128 = objc_opt_class();
  v63 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v128 forKeys:&v127 count:1];
  v132[1] = v63;
  v62 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:700];
  v131[2] = v62;
  v125[0] = @"MEANING";
  v126[0] = objc_opt_class();
  v125[1] = @"SUBMEANING_OF";
  v126[1] = objc_opt_class();
  v61 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v126 forKeys:v125 count:2];
  v132[2] = v61;
  v60 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:702];
  v131[3] = v60;
  v123 = @"MEANING";
  v124 = objc_opt_class();
  v59 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v124 forKeys:&v123 count:1];
  v132[3] = v59;
  v58 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:701];
  v131[4] = v58;
  v121 = @"PERSON_ACTIVITY_MEANING";
  v122 = objc_opt_class();
  v57 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v122 forKeys:&v121 count:1];
  v132[4] = v57;
  v56 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:101];
  v131[5] = v56;
  v119 = @"NEXT";
  v120 = objc_opt_class();
  v55 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v120 forKeys:&v119 count:1];
  v132[5] = v55;
  v54 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:102];
  v131[6] = v54;
  v117[0] = @"CONTAINS";
  v118[0] = objc_opt_class();
  v117[1] = @"GROUP_CONTAINS";
  v118[1] = objc_opt_class();
  v53 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v118 forKeys:v117 count:2];
  v132[6] = v53;
  v52 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:103];
  v131[7] = v52;
  v115 = @"HAS_TYPE";
  v116 = objc_opt_class();
  v51 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v116 forKeys:&v115 count:1];
  v132[7] = v51;
  v50 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:300];
  v131[8] = v50;
  v113[0] = @"PRESENT";
  v114[0] = objc_opt_class();
  v113[1] = @"CPRESENT";
  v114[1] = objc_opt_class();
  v113[2] = @"PARTNER";
  v114[2] = objc_opt_class();
  v113[3] = @"FATHER";
  v114[3] = objc_opt_class();
  v113[4] = @"MOTHER";
  v114[4] = objc_opt_class();
  v113[5] = @"BROTHER";
  v114[5] = objc_opt_class();
  v113[6] = @"SISTER";
  v114[6] = objc_opt_class();
  v113[7] = @"DAUGHTER";
  v114[7] = objc_opt_class();
  v113[8] = @"SON";
  v114[8] = objc_opt_class();
  v113[9] = @"PARENT";
  v114[9] = objc_opt_class();
  v113[10] = @"FAMILY";
  v114[10] = objc_opt_class();
  v113[11] = @"FAMILY_SOCIALGROUP";
  v114[11] = objc_opt_class();
  v113[12] = @"CHILD";
  v114[12] = objc_opt_class();
  v113[13] = @"FRIEND";
  v114[13] = objc_opt_class();
  v113[14] = @"COWORKER";
  v114[14] = objc_opt_class();
  v113[15] = @"COWORKER_SOCIALGROUP";
  v114[15] = objc_opt_class();
  v113[16] = @"ACQUAINTANCE";
  v114[16] = objc_opt_class();
  v113[17] = @"VIP";
  v114[17] = objc_opt_class();
  v113[18] = @"AUTHOR";
  v114[18] = objc_opt_class();
  v113[19] = @"IN_PROXIMITY";
  v114[19] = objc_opt_class();
  v113[20] = @"IS_AROUND";
  v114[20] = objc_opt_class();
  v113[21] = @"INFERRED_TO";
  v114[21] = objc_opt_class();
  v49 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v114 forKeys:v113 count:22];
  v132[8] = v49;
  v48 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:306];
  v131[9] = v48;
  v111[0] = @"PARTNER";
  v112[0] = objc_opt_class();
  v111[1] = @"FATHER";
  v112[1] = objc_opt_class();
  v111[2] = @"MOTHER";
  v112[2] = objc_opt_class();
  v111[3] = @"BROTHER";
  v112[3] = objc_opt_class();
  v111[4] = @"SISTER";
  v112[4] = objc_opt_class();
  v111[5] = @"DAUGHTER";
  v112[5] = objc_opt_class();
  v111[6] = @"SON";
  v112[6] = objc_opt_class();
  v111[7] = @"PARENT";
  v112[7] = objc_opt_class();
  v111[8] = @"FAMILY";
  v112[8] = objc_opt_class();
  v111[9] = @"FAMILY_SOCIALGROUP";
  v112[9] = objc_opt_class();
  v111[10] = @"CHILD";
  v112[10] = objc_opt_class();
  v111[11] = @"FRIEND";
  v112[11] = objc_opt_class();
  v111[12] = @"COWORKER";
  v112[12] = objc_opt_class();
  v111[13] = @"COWORKER_SOCIALGROUP";
  v112[13] = objc_opt_class();
  v111[14] = @"ACQUAINTANCE";
  v112[14] = objc_opt_class();
  v111[15] = @"VIP";
  v112[15] = objc_opt_class();
  v111[16] = @"HOUSEHOLD_MEMBER";
  v112[16] = objc_opt_class();
  v47 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v112 forKeys:v111 count:17];
  v132[9] = v47;
  v46 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:301];
  v131[10] = v46;
  v109[0] = @"BIRTHDAY";
  v110[0] = objc_opt_class();
  v109[1] = @"ANNIVERSARY";
  v110[1] = objc_opt_class();
  v45 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v110 forKeys:v109 count:2];
  v132[10] = v45;
  v44 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:302];
  v131[11] = v44;
  v107[0] = @"SOCIALGROUP";
  v108[0] = objc_opt_class();
  v107[1] = @"BELONGSTO";
  v108[1] = objc_opt_class();
  v43 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v108 forKeys:v107 count:2];
  v132[11] = v43;
  v42 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:304];
  v131[12] = v42;
  v105[0] = @"PET_IS_PRESENT";
  v106[0] = objc_opt_class();
  v105[1] = @"IS_OWNER_OF";
  v106[1] = objc_opt_class();
  v41 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v106 forKeys:v105 count:2];
  v132[12] = v41;
  v40 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:305];
  v131[13] = v40;
  v103 = @"RELATIONSHIP_TAG";
  v104 = objc_opt_class();
  v39 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v104 forKeys:&v103 count:1];
  v132[13] = v39;
  v38 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:600];
  v131[14] = v38;
  v101 = @"SCENE";
  v102 = objc_opt_class();
  v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v102 forKeys:&v101 count:1];
  v132[14] = v37;
  v36 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:603];
  v131[15] = v36;
  v99 = @"SCENE";
  v100 = objc_opt_class();
  v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v100 forKeys:&v99 count:1];
  v132[15] = v35;
  v34 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:200];
  v131[16] = v34;
  v97[0] = @"ADDRESS";
  v98[0] = objc_opt_class();
  v97[1] = @"REMOTE_ADDRESS";
  v98[1] = objc_opt_class();
  v97[2] = @"NUMBER";
  v98[2] = objc_opt_class();
  v97[3] = @"STREET";
  v98[3] = objc_opt_class();
  v97[4] = @"DISTRICT";
  v98[4] = objc_opt_class();
  v97[5] = @"CITY";
  v98[5] = objc_opt_class();
  v97[6] = @"COUNTY";
  v98[6] = objc_opt_class();
  v97[7] = @"STATE";
  v98[7] = objc_opt_class();
  v97[8] = @"COUNTRY";
  v98[8] = objc_opt_class();
  v97[9] = @"SUBCONTINENT";
  v98[9] = objc_opt_class();
  v97[10] = @"CONTINENT";
  v98[10] = objc_opt_class();
  v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v98 forKeys:v97 count:11];
  v132[16] = v33;
  v32 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:201];
  v131[17] = v32;
  v95 = @"AREA";
  v96 = objc_opt_class();
  v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v96 forKeys:&v95 count:1];
  v132[17] = v31;
  v30 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:202];
  v131[18] = v30;
  v93[0] = @"IS_OWNED_BY";
  v94[0] = objc_opt_class();
  v93[1] = @"IS_HOME_WORK";
  v94[1] = objc_opt_class();
  v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v94 forKeys:v93 count:2];
  v132[18] = v29;
  v28 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:203];
  v131[19] = v28;
  v91 = @"MOBILITY";
  v92 = objc_opt_class();
  v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v92 forKeys:&v91 count:1];
  v132[19] = v27;
  v26 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:204];
  v131[20] = v26;
  v89[0] = @"AT";
  v90[0] = objc_opt_class();
  v89[1] = @"IN";
  v90[1] = objc_opt_class();
  v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v90 forKeys:v89 count:2];
  v132[20] = v25;
  v24 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:205];
  v131[21] = v24;
  v87 = @"POPULAR_LANGUAGE";
  v88 = objc_opt_class();
  v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v88 forKeys:&v87 count:1];
  v132[21] = v23;
  v22 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:503];
  v131[22] = v22;
  v85 = @"BUSINESS";
  v86 = objc_opt_class();
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v86 forKeys:&v85 count:1];
  v132[22] = v21;
  v20 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:303];
  v131[23] = v20;
  v83 = @"PEOPLE_CONTACT_SUGGESTION";
  v84 = objc_opt_class();
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v84 forKeys:&v83 count:1];
  v132[23] = v19;
  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:400];
  v131[24] = v18;
  v81[0] = @"DAY";
  v82[0] = objc_opt_class();
  v81[1] = @"MONTH";
  v82[1] = objc_opt_class();
  v81[2] = @"MONTH_DAY";
  v82[2] = objc_opt_class();
  v81[3] = @"YEAR";
  v82[3] = objc_opt_class();
  v81[4] = @"WEEKMONTH";
  v82[4] = objc_opt_class();
  v81[5] = @"WEEKYEAR";
  v82[5] = objc_opt_class();
  v81[6] = @"SEASON";
  v82[6] = objc_opt_class();
  v81[7] = @"DATE";
  v82[7] = objc_opt_class();
  v81[8] = @"PARTOFWEEK";
  v82[8] = objc_opt_class();
  v81[9] = @"DAYOFWEEK";
  v82[9] = objc_opt_class();
  v81[10] = @"PARTOFDAY";
  v82[10] = objc_opt_class();
  v81[11] = @"BDAY_MONTH_DAY";
  v82[11] = objc_opt_class();
  v81[12] = @"ANNIVERSARY_MONTH_DAY";
  v82[12] = objc_opt_class();
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v82 forKeys:v81 count:13];
  v132[24] = v17;
  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:401];
  v131[25] = v16;
  v79[0] = @"HOLIDAY";
  v80[0] = objc_opt_class();
  v79[1] = @"CELEBRATING";
  v80[1] = objc_opt_class();
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v80 forKeys:v79 count:2];
  v132[25] = v15;
  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:900];
  v131[26] = v14;
  v77[0] = @"PUBLIC_EVENT";
  v78[0] = objc_opt_class();
  v77[1] = @"PERFORMER";
  v78[1] = objc_opt_class();
  v77[2] = @"PUBLIC_EVENT_BUSINESS";
  v78[2] = objc_opt_class();
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v78 forKeys:v77 count:3];
  v132[26] = v13;
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:901];
  v131[27] = v12;
  v75 = @"CATEGORY";
  v76 = objc_opt_class();
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v76 forKeys:&v75 count:1];
  v132[27] = v0;
  v1 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:902];
  v131[28] = v1;
  v73 = @"LOCALIZED_SUBCATEGORY";
  v74 = objc_opt_class();
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v74 forKeys:&v73 count:1];
  v132[28] = v2;
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:504];
  v131[29] = v3;
  v71 = @"BUSINESSCATEGORY";
  v72 = objc_opt_class();
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v72 forKeys:&v71 count:1];
  v132[29] = v4;
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:1100];
  v131[30] = v5;
  v69[0] = @"CONTAINS_ASSETS_FROM";
  v69[1] = @"MEMORY_FEATURES";
  v70[0] = objc_opt_class();
  v70[1] = objc_opt_class();
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v70 forKeys:v69 count:2];
  v132[30] = v6;
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:1200];
  v131[31] = v7;
  v67 = @"MOMENT_FEATURES";
  v68 = objc_opt_class();
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v68 forKeys:&v67 count:1];
  v132[31] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v132 forKeys:v131 count:32];
  v10 = edgeClassByDomainAndLabel_edgeClassByDomainAndLabel;
  edgeClassByDomainAndLabel_edgeClassByDomainAndLabel = v9;

  v11 = *MEMORY[0x277D85DE8];
}

- (void)enumerateNodeClassesUsingBlock:(id)block
{
  blockCopy = block;
  nodeClassByDomainAndLabel = [(PGGraphSpecification *)self nodeClassByDomainAndLabel];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __55__PGGraphSpecification_enumerateNodeClassesUsingBlock___block_invoke;
  v11[3] = &unk_27887FFE0;
  v6 = blockCopy;
  v12 = v6;
  [nodeClassByDomainAndLabel enumerateKeysAndObjectsUsingBlock:v11];

  nodeClassByDomain = [(PGGraphSpecification *)self nodeClassByDomain];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __55__PGGraphSpecification_enumerateNodeClassesUsingBlock___block_invoke_3;
  v9[3] = &unk_278880008;
  v10 = v6;
  v8 = v6;
  [nodeClassByDomain enumerateKeysAndObjectsUsingBlock:v9];
}

void __55__PGGraphSpecification_enumerateNodeClassesUsingBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __55__PGGraphSpecification_enumerateNodeClassesUsingBlock___block_invoke_2;
  v8[3] = &unk_27887FFB8;
  v6 = *(a1 + 32);
  v9 = v5;
  v10 = v6;
  v7 = v5;
  [a3 enumerateKeysAndObjectsUsingBlock:v8];
}

uint64_t __55__PGGraphSpecification_enumerateNodeClassesUsingBlock___block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = [a2 unsignedIntegerValue];
  v6 = *(v4 + 16);

  return v6(v4, 0, v5, a3);
}

void __55__PGGraphSpecification_enumerateNodeClassesUsingBlock___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = a2;
  (*(v4 + 16))(v4, v6, [v5 unsignedIntegerValue], a3);
}

- (id)nodeClassByDomain
{
  if (nodeClassByDomain_onceToken != -1)
  {
    dispatch_once(&nodeClassByDomain_onceToken, &__block_literal_global_262);
  }

  v3 = nodeClassByDomain_nodeClassByDomain;

  return v3;
}

void __41__PGGraphSpecification_nodeClassByDomain__block_invoke()
{
  v21[17] = *MEMORY[0x277D85DE8];
  v19 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:103];
  v20[0] = v19;
  v21[0] = objc_opt_class();
  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:203];
  v20[1] = v18;
  v21[1] = objc_opt_class();
  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:700];
  v20[2] = v17;
  v21[2] = objc_opt_class();
  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:701];
  v20[3] = v16;
  v21[3] = objc_opt_class();
  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:305];
  v20[4] = v15;
  v21[4] = objc_opt_class();
  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:600];
  v20[5] = v14;
  v21[5] = objc_opt_class();
  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:601];
  v20[6] = v13;
  v21[6] = objc_opt_class();
  v0 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:603];
  v20[7] = v0;
  v21[7] = objc_opt_class();
  v1 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:200];
  v20[8] = v1;
  v21[8] = objc_opt_class();
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:901];
  v20[9] = v2;
  v21[9] = objc_opt_class();
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:902];
  v20[10] = v3;
  v21[10] = objc_opt_class();
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:504];
  v20[11] = v4;
  v21[11] = objc_opt_class();
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:501];
  v20[12] = v5;
  v21[12] = objc_opt_class();
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:502];
  v20[13] = v6;
  v21[13] = objc_opt_class();
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:202];
  v20[14] = v7;
  v21[14] = objc_opt_class();
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:1100];
  v20[15] = v8;
  v21[15] = objc_opt_class();
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:1201];
  v20[16] = v9;
  v21[16] = objc_opt_class();
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:17];
  v11 = nodeClassByDomain_nodeClassByDomain;
  nodeClassByDomain_nodeClassByDomain = v10;

  v12 = *MEMORY[0x277D85DE8];
}

- (id)nodeClassByDomainAndLabel
{
  if (nodeClassByDomainAndLabel_onceToken != -1)
  {
    dispatch_once(&nodeClassByDomainAndLabel_onceToken, &__block_literal_global_10912);
  }

  v3 = nodeClassByDomainAndLabel_nodeClassByDomainAndLabel;

  return v3;
}

void __49__PGGraphSpecification_nodeClassByDomainAndLabel__block_invoke()
{
  v68[16] = *MEMORY[0x277D85DE8];
  v34 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:21];
  v67[0] = v34;
  v65 = @"Info";
  v66 = objc_opt_class();
  v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v66 forKeys:&v65 count:1];
  v68[0] = v33;
  v32 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:100];
  v67[1] = v32;
  v63 = @"Moment";
  v64 = objc_opt_class();
  v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v64 forKeys:&v63 count:1];
  v68[1] = v31;
  v30 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:102];
  v67[2] = v30;
  v61[0] = @"Highlight";
  v62[0] = objc_opt_class();
  v61[1] = @"HighlightGroup";
  v62[1] = objc_opt_class();
  v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v62 forKeys:v61 count:2];
  v68[2] = v29;
  v28 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:400];
  v67[3] = v28;
  v59[0] = @"Date";
  v60[0] = objc_opt_class();
  v59[1] = @"DayOfWeek";
  v60[1] = objc_opt_class();
  v59[2] = @"Day";
  v60[2] = objc_opt_class();
  v59[3] = @"Month";
  v60[3] = objc_opt_class();
  v59[4] = @"MonthDay";
  v60[4] = objc_opt_class();
  v59[5] = @"Year";
  v60[5] = objc_opt_class();
  v59[6] = @"WeekMonth";
  v60[6] = objc_opt_class();
  v59[7] = @"WeekYear";
  v60[7] = objc_opt_class();
  v59[8] = @"PartOfDay";
  v60[8] = objc_opt_class();
  v59[9] = @"Season";
  v60[9] = objc_opt_class();
  v59[10] = @"Weekend";
  v60[10] = objc_opt_class();
  v59[11] = @"Weekday";
  v60[11] = objc_opt_class();
  v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v60 forKeys:v59 count:12];
  v68[3] = v27;
  v26 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:401];
  v67[4] = v26;
  v57 = @"Holiday";
  v58 = objc_opt_class();
  v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v58 forKeys:&v57 count:1];
  v68[4] = v25;
  v24 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:402];
  v67[5] = v24;
  v55 = @"OverTheYears";
  v56 = objc_opt_class();
  v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v56 forKeys:&v55 count:1];
  v68[5] = v23;
  v22 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:200];
  v67[6] = v22;
  v53[0] = @"Address";
  v54[0] = objc_opt_class();
  v53[1] = @"Number";
  v54[1] = objc_opt_class();
  v53[2] = @"Street";
  v54[2] = objc_opt_class();
  v53[3] = @"District";
  v54[3] = objc_opt_class();
  v53[4] = @"City";
  v54[4] = objc_opt_class();
  v53[5] = @"County";
  v54[5] = objc_opt_class();
  v53[6] = @"State";
  v54[6] = objc_opt_class();
  v53[7] = @"Country";
  v54[7] = objc_opt_class();
  v53[8] = @"Subcontinent";
  v54[8] = objc_opt_class();
  v53[9] = @"Continent";
  v54[9] = objc_opt_class();
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v54 forKeys:v53 count:10];
  v68[6] = v21;
  v20 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:201];
  v67[7] = v20;
  v51 = @"Area";
  v52 = objc_opt_class();
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v52 forKeys:&v51 count:1];
  v68[7] = v19;
  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:204];
  v67[8] = v18;
  v49 = @"FrequentLocation";
  v50 = objc_opt_class();
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v50 forKeys:&v49 count:1];
  v68[8] = v17;
  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:205];
  v67[9] = v16;
  v47 = @"Language";
  v48 = objc_opt_class();
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v48 forKeys:&v47 count:1];
  v68[9] = v15;
  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:503];
  v67[10] = v14;
  v45 = @"Business";
  v46 = objc_opt_class();
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v46 forKeys:&v45 count:1];
  v68[10] = v13;
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:300];
  v67[11] = v12;
  v43[0] = @"People";
  v43[1] = @"Me";
  v44[0] = objc_opt_class();
  v44[1] = objc_opt_class();
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v44 forKeys:v43 count:2];
  v68[11] = v0;
  v1 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:303];
  v67[12] = v1;
  v41 = @"Contact";
  v42 = objc_opt_class();
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v42 forKeys:&v41 count:1];
  v68[12] = v2;
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:302];
  v67[13] = v3;
  v39 = @"SocialGroup";
  v40 = objc_opt_class();
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v40 forKeys:&v39 count:1];
  v68[13] = v4;
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:900];
  v67[14] = v5;
  v37[0] = @"PublicEvent";
  v37[1] = @"Performer";
  v38[0] = objc_opt_class();
  v38[1] = objc_opt_class();
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:v37 count:2];
  v68[14] = v6;
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:304];
  v67[15] = v7;
  v35 = @"Pet";
  v36 = objc_opt_class();
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v36 forKeys:&v35 count:1];
  v68[15] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v68 forKeys:v67 count:16];
  v10 = nodeClassByDomainAndLabel_nodeClassByDomainAndLabel;
  nodeClassByDomainAndLabel_nodeClassByDomainAndLabel = v9;

  v11 = *MEMORY[0x277D85DE8];
}

- (PGGraphSpecification)init
{
  v4.receiver = self;
  v4.super_class = PGGraphSpecification;
  v2 = [(MAGraphSpecification *)&v4 init];
  if (v2)
  {
    [(MAGraphSpecification *)v2 setDefaultNodeClass:objc_opt_class()];
    [(MAGraphSpecification *)v2 setDefaultEdgeClass:objc_opt_class()];
  }

  return v2;
}

@end