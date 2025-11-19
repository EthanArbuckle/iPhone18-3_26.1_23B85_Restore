@interface WFWeatherChannelValidator
+ (BOOL)isLeafNodeType:(id)a3;
+ (id)expectedStructure;
- (BOOL)validateDictionary:(id)a3 expectedStructure:(id)a4;
- (BOOL)validateResponseData:(id)a3;
@end

@implementation WFWeatherChannelValidator

+ (id)expectedStructure
{
  v169[3] = *MEMORY[0x277D85DE8];
  v168[0] = @"version";
  v2 = +[WFJSONStructureLeafNode requiredLeafNode];
  v169[0] = v2;
  v168[1] = @"transaction_id";
  v3 = +[WFJSONStructureLeafNode requiredLeafNode];
  v169[1] = v3;
  v168[2] = @"expire_time_gmt";
  v4 = +[WFJSONStructureLeafNode requiredLeafNode];
  v169[2] = v4;
  v125 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v169 forKeys:v168 count:3];

  v166[0] = @"vis";
  v5 = +[WFJSONStructureLeafNode optionalLeafNode];
  v167[0] = v5;
  v166[1] = @"temp";
  v6 = +[WFJSONStructureLeafNode optionalLeafNode];
  v167[1] = v6;
  v166[2] = @"max_temp";
  v7 = +[WFJSONStructureLeafNode optionalLeafNode];
  v167[2] = v7;
  v166[3] = @"min_temp";
  v8 = +[WFJSONStructureLeafNode optionalLeafNode];
  v167[3] = v8;
  v166[4] = @"feels_like";
  v9 = +[WFJSONStructureLeafNode optionalLeafNode];
  v167[4] = v9;
  v166[5] = @"dewpt";
  v10 = +[WFJSONStructureLeafNode optionalLeafNode];
  v167[5] = v10;
  v166[6] = @"pressure";
  v11 = +[WFJSONStructureLeafNode optionalLeafNode];
  v167[6] = v11;
  v166[7] = @"wspd";
  v12 = +[WFJSONStructureLeafNode optionalLeafNode];
  v167[7] = v12;
  v166[8] = @"gust";
  v13 = +[WFJSONStructureLeafNode optionalLeafNode];
  v167[8] = v13;
  v127 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v167 forKeys:v166 count:9];

  v164[0] = @"vis";
  v14 = +[WFJSONStructureLeafNode optionalLeafNode];
  v165[0] = v14;
  v164[1] = @"dewpt";
  v15 = +[WFJSONStructureLeafNode optionalLeafNode];
  v165[1] = v15;
  v164[2] = @"gust";
  v16 = +[WFJSONStructureLeafNode optionalLeafNode];
  v165[2] = v16;
  v164[3] = @"temp";
  v17 = +[WFJSONStructureLeafNode optionalLeafNode];
  v165[3] = v17;
  v164[4] = @"wspd";
  v18 = +[WFJSONStructureLeafNode optionalLeafNode];
  v165[4] = v18;
  v126 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v165 forKeys:v164 count:5];

  v162[0] = @"conditionsshort";
  v160[0] = @"observation";
  v158[0] = @"class";
  v124 = +[WFJSONStructureLeafNode requiredLeafNode];
  v159[0] = v124;
  v158[1] = @"obs_id";
  v123 = +[WFJSONStructureLeafNode requiredLeafNode];
  v159[1] = v123;
  v158[2] = @"obs_name";
  v122 = +[WFJSONStructureLeafNode requiredLeafNode];
  v159[2] = v122;
  v158[3] = @"valid_time_gmt";
  v121 = +[WFJSONStructureLeafNode requiredLeafNode];
  v159[3] = v121;
  v158[4] = @"wx_icon";
  v120 = +[WFJSONStructureLeafNode optionalLeafNode];
  v159[4] = v120;
  v158[5] = @"wx_phrase";
  v119 = +[WFJSONStructureLeafNode optionalLeafNode];
  v159[5] = v119;
  v158[6] = @"rh";
  v118 = +[WFJSONStructureLeafNode optionalLeafNode];
  v159[6] = v118;
  v158[7] = @"pressure_desc";
  v117 = +[WFJSONStructureLeafNode optionalLeafNode];
  v159[7] = v117;
  v158[8] = @"pressure_tend";
  v116 = +[WFJSONStructureLeafNode optionalLeafNode];
  v159[8] = v116;
  v158[9] = @"wdir";
  v115 = +[WFJSONStructureLeafNode optionalLeafNode];
  v159[9] = v115;
  v158[10] = @"wdir_cardinal";
  v114 = +[WFJSONStructureLeafNode optionalLeafNode];
  v159[10] = v114;
  v158[11] = @"uv_index";
  v113 = +[WFJSONStructureLeafNode optionalLeafNode];
  v159[11] = v113;
  v158[12] = @"uv_desc";
  v112 = +[WFJSONStructureLeafNode optionalLeafNode];
  v159[12] = v112;
  v158[13] = @"qualifier";
  v111 = +[WFJSONStructureLeafNode optionalLeafNode];
  v159[13] = v111;
  v159[14] = v127;
  v158[14] = @"imperial";
  v158[15] = @"metric";
  v159[15] = v127;
  v110 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v159 forKeys:v158 count:16];
  v160[1] = @"metadata";
  v161[0] = v110;
  v161[1] = v125;
  v109 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v161 forKeys:v160 count:2];
  v163[0] = v109;
  v162[1] = @"fcsthourly24short";
  v156[0] = @"forecasts";
  v153[0] = @"class";
  v108 = +[WFJSONStructureLeafNode requiredLeafNode];
  v154[0] = v108;
  v153[1] = @"phrase_22char";
  v107 = +[WFJSONStructureLeafNode optionalLeafNode];
  v154[1] = v107;
  v153[2] = @"precip_type";
  v106 = +[WFJSONStructureLeafNode optionalLeafNode];
  v154[2] = v106;
  v153[3] = @"fcst_valid_local";
  v105 = +[WFJSONStructureLeafNode requiredLeafNode];
  v154[3] = v105;
  v153[4] = @"fcst_valid";
  v104 = +[WFJSONStructureLeafNode requiredLeafNode];
  v154[4] = v104;
  v153[5] = @"rh";
  v103 = +[WFJSONStructureLeafNode optionalLeafNode];
  v154[5] = v103;
  v153[6] = @"icon_extd";
  v102 = +[WFJSONStructureLeafNode optionalLeafNode];
  v154[6] = v102;
  v153[7] = @"wdir";
  v101 = +[WFJSONStructureLeafNode optionalLeafNode];
  v154[7] = v101;
  v153[8] = @"wdir_cardinal";
  v100 = +[WFJSONStructureLeafNode optionalLeafNode];
  v154[8] = v100;
  v153[9] = @"num";
  v99 = +[WFJSONStructureLeafNode optionalLeafNode];
  v154[9] = v99;
  v153[10] = @"phrase_32char";
  v98 = +[WFJSONStructureLeafNode optionalLeafNode];
  v154[10] = v98;
  v153[11] = @"dow";
  v97 = +[WFJSONStructureLeafNode optionalLeafNode];
  v154[11] = v97;
  v153[12] = @"icon_cd";
  v96 = +[WFJSONStructureLeafNode optionalLeafNode];
  v154[12] = v96;
  v153[13] = @"uv_desc";
  v95 = +[WFJSONStructureLeafNode optionalLeafNode];
  v154[13] = v95;
  v153[14] = @"uv_index";
  v94 = +[WFJSONStructureLeafNode optionalLeafNode];
  v154[14] = v94;
  v153[15] = @"day_ind";
  v93 = +[WFJSONStructureLeafNode optionalLeafNode];
  v154[15] = v93;
  v153[16] = @"phrase_12char";
  v92 = +[WFJSONStructureLeafNode optionalLeafNode];
  v154[16] = v92;
  v153[17] = @"pop";
  v91 = +[WFJSONStructureLeafNode optionalLeafNode];
  v154[17] = v91;
  v154[18] = v126;
  v153[18] = @"imperial";
  v153[19] = @"metric";
  v154[19] = v126;
  v90 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v154 forKeys:v153 count:20];
  v155 = v90;
  v89 = [MEMORY[0x277CBEA60] arrayWithObjects:&v155 count:1];
  v156[1] = @"metadata";
  v157[0] = v89;
  v157[1] = v125;
  v88 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v157 forKeys:v156 count:2];
  v163[1] = v88;
  v162[2] = @"fcstdaily10short";
  v151[0] = @"forecasts";
  v148[0] = @"class";
  v87 = +[WFJSONStructureLeafNode requiredLeafNode];
  v149[0] = v87;
  v148[1] = @"num";
  v86 = +[WFJSONStructureLeafNode optionalLeafNode];
  v149[1] = v86;
  v148[2] = @"moonrise";
  v85 = +[WFJSONStructureLeafNode optionalLeafNode];
  v149[2] = v85;
  v148[3] = @"fcst_valid_local";
  v84 = +[WFJSONStructureLeafNode requiredLeafNode];
  v149[3] = v84;
  v148[4] = @"fcst_valid";
  v83 = +[WFJSONStructureLeafNode requiredLeafNode];
  v149[4] = v83;
  v148[5] = @"sunrise";
  v82 = +[WFJSONStructureLeafNode optionalLeafNode];
  v149[5] = v82;
  v148[6] = @"dow";
  v81 = +[WFJSONStructureLeafNode optionalLeafNode];
  v149[6] = v81;
  v148[7] = @"sunset";
  v80 = +[WFJSONStructureLeafNode optionalLeafNode];
  v149[7] = v80;
  v148[8] = @"moonset";
  v79 = +[WFJSONStructureLeafNode optionalLeafNode];
  v149[8] = v79;
  v148[9] = @"imperial";
  v146[0] = @"max_temp";
  v78 = +[WFJSONStructureLeafNode optionalLeafNode];
  v147[0] = v78;
  v146[1] = @"min_temp";
  v77 = +[WFJSONStructureLeafNode optionalLeafNode];
  v147[1] = v77;
  v76 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v147 forKeys:v146 count:2];
  v149[9] = v76;
  v148[10] = @"metric";
  v144[0] = @"max_temp";
  v75 = +[WFJSONStructureLeafNode optionalLeafNode];
  v145[0] = v75;
  v144[1] = @"min_temp";
  v74 = +[WFJSONStructureLeafNode optionalLeafNode];
  v145[1] = v74;
  v73 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v145 forKeys:v144 count:2];
  v149[10] = v73;
  v148[11] = @"day";
  v142[0] = @"fcst_valid_local";
  v72 = +[WFJSONStructureLeafNode requiredLeafNode];
  v143[0] = v72;
  v142[1] = @"rh";
  v71 = +[WFJSONStructureLeafNode optionalLeafNode];
  v143[1] = v71;
  v142[2] = @"icon_extd";
  v70 = +[WFJSONStructureLeafNode optionalLeafNode];
  v143[2] = v70;
  v142[3] = @"wdir";
  v69 = +[WFJSONStructureLeafNode optionalLeafNode];
  v143[3] = v69;
  v142[4] = @"wdir_cardinal";
  v68 = +[WFJSONStructureLeafNode optionalLeafNode];
  v143[4] = v68;
  v142[5] = @"num";
  v67 = +[WFJSONStructureLeafNode optionalLeafNode];
  v143[5] = v67;
  v142[6] = @"daypart_name";
  v66 = +[WFJSONStructureLeafNode optionalLeafNode];
  v143[6] = v66;
  v142[7] = @"icon_cd";
  v65 = +[WFJSONStructureLeafNode optionalLeafNode];
  v143[7] = v65;
  v142[8] = @"alt_daypart_name";
  v64 = +[WFJSONStructureLeafNode optionalLeafNode];
  v143[8] = v64;
  v142[9] = @"phrase_12char";
  v63 = +[WFJSONStructureLeafNode optionalLeafNode];
  v143[9] = v63;
  v142[10] = @"pop";
  v62 = +[WFJSONStructureLeafNode optionalLeafNode];
  v143[10] = v62;
  v142[11] = @"phrase_22char";
  v61 = +[WFJSONStructureLeafNode optionalLeafNode];
  v143[11] = v61;
  v142[12] = @"precip_type";
  v60 = +[WFJSONStructureLeafNode optionalLeafNode];
  v143[12] = v60;
  v142[13] = @"fcst_valid";
  v59 = +[WFJSONStructureLeafNode optionalLeafNode];
  v143[13] = v59;
  v142[14] = @"long_daypart_name";
  v58 = +[WFJSONStructureLeafNode optionalLeafNode];
  v143[14] = v58;
  v142[15] = @"phrase_32char";
  v57 = +[WFJSONStructureLeafNode optionalLeafNode];
  v143[15] = v57;
  v142[16] = @"uv_desc";
  v56 = +[WFJSONStructureLeafNode optionalLeafNode];
  v143[16] = v56;
  v142[17] = @"uv_index";
  v55 = +[WFJSONStructureLeafNode optionalLeafNode];
  v143[17] = v55;
  v142[18] = @"imperial";
  v140 = @"wspd";
  v54 = +[WFJSONStructureLeafNode optionalLeafNode];
  v141 = v54;
  v53 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v141 forKeys:&v140 count:1];
  v143[18] = v53;
  v142[19] = @"metric";
  v138 = @"wspd";
  v52 = +[WFJSONStructureLeafNode optionalLeafNode];
  v139 = v52;
  v51 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v139 forKeys:&v138 count:1];
  v143[19] = v51;
  v50 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v143 forKeys:v142 count:20];
  v149[11] = v50;
  v148[12] = @"night";
  v136[0] = @"fcst_valid_local";
  v49 = +[WFJSONStructureLeafNode requiredLeafNode];
  v137[0] = v49;
  v136[1] = @"rh";
  v48 = +[WFJSONStructureLeafNode optionalLeafNode];
  v137[1] = v48;
  v136[2] = @"icon_extd";
  v47 = +[WFJSONStructureLeafNode optionalLeafNode];
  v137[2] = v47;
  v136[3] = @"wdir";
  v46 = +[WFJSONStructureLeafNode optionalLeafNode];
  v137[3] = v46;
  v136[4] = @"wdir_cardinal";
  v45 = +[WFJSONStructureLeafNode optionalLeafNode];
  v137[4] = v45;
  v136[5] = @"num";
  v44 = +[WFJSONStructureLeafNode optionalLeafNode];
  v137[5] = v44;
  v136[6] = @"daypart_name";
  v43 = +[WFJSONStructureLeafNode optionalLeafNode];
  v137[6] = v43;
  v136[7] = @"icon_cd";
  v42 = +[WFJSONStructureLeafNode optionalLeafNode];
  v137[7] = v42;
  v136[8] = @"alt_daypart_name";
  v41 = +[WFJSONStructureLeafNode optionalLeafNode];
  v137[8] = v41;
  v136[9] = @"phrase_12char";
  v40 = +[WFJSONStructureLeafNode optionalLeafNode];
  v137[9] = v40;
  v136[10] = @"pop";
  v39 = +[WFJSONStructureLeafNode optionalLeafNode];
  v137[10] = v39;
  v136[11] = @"phrase_22char";
  v38 = +[WFJSONStructureLeafNode optionalLeafNode];
  v137[11] = v38;
  v136[12] = @"precip_type";
  v37 = +[WFJSONStructureLeafNode optionalLeafNode];
  v137[12] = v37;
  v136[13] = @"fcst_valid";
  v36 = +[WFJSONStructureLeafNode optionalLeafNode];
  v137[13] = v36;
  v136[14] = @"long_daypart_name";
  v35 = +[WFJSONStructureLeafNode optionalLeafNode];
  v137[14] = v35;
  v136[15] = @"phrase_32char";
  v34 = +[WFJSONStructureLeafNode optionalLeafNode];
  v137[15] = v34;
  v136[16] = @"imperial";
  v134 = @"wspd";
  v33 = +[WFJSONStructureLeafNode optionalLeafNode];
  v135 = v33;
  v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v135 forKeys:&v134 count:1];
  v137[16] = v32;
  v136[17] = @"metric";
  v132 = @"wspd";
  v31 = +[WFJSONStructureLeafNode optionalLeafNode];
  v133 = v31;
  v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v133 forKeys:&v132 count:1];
  v137[17] = v30;
  v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v137 forKeys:v136 count:18];
  v149[12] = v29;
  v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v149 forKeys:v148 count:13];
  v150 = v28;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v150 count:1];
  v151[1] = @"metadata";
  v152[0] = v19;
  v152[1] = v125;
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v152 forKeys:v151 count:2];
  v163[2] = v20;
  v162[3] = @"nowlinks";
  v130[0] = @"links";
  v128[0] = @"ios";
  v21 = +[WFJSONStructureLeafNode requiredLeafNode];
  v129[0] = v21;
  v128[1] = @"web";
  v22 = +[WFJSONStructureLeafNode requiredLeafNode];
  v129[1] = v22;
  v128[2] = @"mobile";
  v23 = +[WFJSONStructureLeafNode requiredLeafNode];
  v129[2] = v23;
  v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v129 forKeys:v128 count:3];
  v130[1] = @"metadata";
  v131[0] = v24;
  v131[1] = v125;
  v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v131 forKeys:v130 count:2];
  v162[4] = @"metadata";
  v163[3] = v25;
  v163[4] = v125;
  v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v163 forKeys:v162 count:5];

  return v26;
}

+ (BOOL)isLeafNodeType:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = 0;
  }

  else
  {
    objc_opt_class();
    v4 = objc_opt_isKindOfClass() ^ 1;
  }

  return v4 & 1;
}

- (BOOL)validateResponseData:(id)a3
{
  v8 = 0;
  v4 = [MEMORY[0x277CCAAA0] JSONObjectWithData:a3 options:0 error:&v8];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = +[WFWeatherChannelValidator expectedStructure];
    v6 = [(WFWeatherChannelValidator *)self validateDictionary:v4 expectedStructure:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)validateDictionary:(id)a3 expectedStructure:(id)a4
{
  v54 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = MEMORY[0x277CBEB98];
  v9 = [v7 allKeys];
  v10 = [v8 setWithArray:v9];
  v11 = MEMORY[0x277CBEB98];
  v12 = v6;
  v13 = [v6 allKeys];
  v14 = [v11 setWithArray:v13];
  v15 = [v10 isSubsetOfSet:v14];

  if (!v15)
  {
    v38 = 0;
    goto LABEL_39;
  }

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v16 = [v7 allKeys];
  v43 = [v16 countByEnumeratingWithState:&v48 objects:v53 count:16];
  if (!v43)
  {
    v38 = 1;
    goto LABEL_38;
  }

  v17 = *v49;
  v40 = v7;
  v41 = v12;
  v42 = *v49;
  while (2)
  {
    for (i = 0; i != v43; ++i)
    {
      if (*v49 != v17)
      {
        objc_enumerationMutation(v16);
      }

      v19 = *(*(&v48 + 1) + 8 * i);
      v20 = [v12 objectForKey:{v19, v40, v41}];
      v21 = [v7 objectForKeyedSubscript:v19];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_36;
        }

        v22 = [(WFWeatherChannelValidator *)self validateDictionary:v20 expectedStructure:v21];

        if (!v22)
        {
          goto LABEL_37;
        }
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_36;
          }

          v23 = v16;
          v24 = v20;
          v25 = [v21 objectAtIndexedSubscript:0];
          v44 = 0u;
          v45 = 0u;
          v46 = 0u;
          v47 = 0u;
          v26 = v24;
          v27 = [v26 countByEnumeratingWithState:&v44 objects:v52 count:16];
          if (!v27)
          {

            v17 = v42;
LABEL_28:

            continue;
          }

          v28 = v27;
          v29 = *v45;
          do
          {
            for (j = 0; j != v28; ++j)
            {
              if (*v45 != v29)
              {
                objc_enumerationMutation(v26);
              }

              v31 = [(WFWeatherChannelValidator *)self validateDictionary:*(*(&v44 + 1) + 8 * j) expectedStructure:v25];
            }

            v32 = v31;
            v28 = [v26 countByEnumeratingWithState:&v44 objects:v52 count:16];
          }

          while (v28);

          v7 = v40;
          v12 = v41;
          v16 = v23;
          v17 = v42;
          if (!v32)
          {
            goto LABEL_37;
          }
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_28;
          }

          v33 = v21;
          if ([v33 isRequired])
          {
            v34 = [MEMORY[0x277CBEB68] null];
            v35 = v34;
            if (v20 == v34)
            {

LABEL_36:
LABEL_37:
              v38 = 0;
              goto LABEL_38;
            }

            v36 = [objc_opt_class() isLeafNodeType:v20];

            if ((v36 & 1) == 0)
            {
              goto LABEL_37;
            }
          }

          else
          {
            v37 = [objc_opt_class() isLeafNodeType:v20];

            if ((v37 & 1) == 0)
            {
              goto LABEL_37;
            }
          }
        }
      }
    }

    v38 = 1;
    v43 = [v16 countByEnumeratingWithState:&v48 objects:v53 count:16];
    if (v43)
    {
      continue;
    }

    break;
  }

LABEL_38:

LABEL_39:
  return v38;
}

@end