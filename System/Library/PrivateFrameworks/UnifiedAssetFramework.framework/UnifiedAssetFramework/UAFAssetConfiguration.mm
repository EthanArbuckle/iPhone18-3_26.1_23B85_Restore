@interface UAFAssetConfiguration
+ (BOOL)isValid:(id)a3 validUsageTypes:(id)a4 error:(id *)a5;
- (UAFAssetConfiguration)initWithDictionary:(id)a3;
- (id)getAutoAssetSpecifier:(id)a3;
@end

@implementation UAFAssetConfiguration

+ (BOOL)isValid:(id)a3 validUsageTypes:(id)a4 error:(id *)a5
{
  v189[2] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (![UAFConfiguration isValidValue:v7 key:@"AssetName" kind:objc_opt_class() required:1 error:a5])
  {
    if (a5)
    {
      v21 = MEMORY[0x1E696ABC0];
      v22 = *MEMORY[0x1E696A578];
      if (*a5)
      {
        v188[0] = *MEMORY[0x1E696A578];
        v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown Asset is invalid"];
        v188[1] = *MEMORY[0x1E696AA08];
        v189[0] = v23;
        v189[1] = *a5;
        v24 = MEMORY[0x1E695DF20];
        v25 = v189;
        v26 = v188;
        v27 = 2;
      }

      else
      {
        v186 = *MEMORY[0x1E696A578];
        v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown Asset is invalid"];
        v187 = v23;
        v24 = MEMORY[0x1E695DF20];
        v25 = &v187;
        v26 = &v186;
        v27 = 1;
      }

      v46 = [v24 dictionaryWithObjects:v25 forKeys:v26 count:v27];
      *a5 = [v21 errorWithDomain:@"com.apple.UnifiedAssetFramework" code:-1 userInfo:v46];
    }

    v15 = UAFGetLogCategory(&UAFLogContextConfiguration);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v148 = "+[UAFAssetConfiguration isValid:validUsageTypes:error:]";
      _os_log_impl(&dword_1BCF2C000, v15, OS_LOG_TYPE_DEFAULT, "%s Unknown Asset is invalid", buf, 0xCu);
    }

    goto LABEL_53;
  }

  if (![UAFConfiguration isValidValue:v7 key:@"AutoAssetType" kind:objc_opt_class() required:0 error:a5])
  {
    if (a5)
    {
      v28 = MEMORY[0x1E696ABC0];
      v29 = *MEMORY[0x1E696A578];
      if (*a5)
      {
        v184[0] = *MEMORY[0x1E696A578];
        v30 = MEMORY[0x1E696AEC0];
        v31 = [v7 objectForKeyedSubscript:@"AssetName"];
        v32 = [v30 stringWithFormat:@"AutoAssetType for Asset %@ is invalid", v31];
        v184[1] = *MEMORY[0x1E696AA08];
        v185[0] = v32;
        v185[1] = *a5;
        v33 = MEMORY[0x1E695DF20];
        v34 = v185;
        v35 = v184;
        v36 = 2;
      }

      else
      {
        v182 = *MEMORY[0x1E696A578];
        v57 = MEMORY[0x1E696AEC0];
        v31 = [v7 objectForKeyedSubscript:@"AssetName"];
        v32 = [v57 stringWithFormat:@"AutoAssetType for Asset %@ is invalid", v31];
        v183 = v32;
        v33 = MEMORY[0x1E695DF20];
        v34 = &v183;
        v35 = &v182;
        v36 = 1;
      }

      v58 = [v33 dictionaryWithObjects:v34 forKeys:v35 count:v36];
      *a5 = [v28 errorWithDomain:@"com.apple.UnifiedAssetFramework" code:-1 userInfo:v58];
    }

    v15 = UAFGetLogCategory(&UAFLogContextConfiguration);
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_53;
    }

    v59 = [v7 objectForKeyedSubscript:@"AssetName"];
    *buf = 136315394;
    v148 = "+[UAFAssetConfiguration isValid:validUsageTypes:error:]";
    v149 = 2112;
    v150 = v59;
    v60 = "%s AutoAssetType for Asset %@ is invalid";
    goto LABEL_52;
  }

  if (![UAFConfiguration isValidValue:v7 key:@"TrialNamespace" kind:objc_opt_class() required:0 error:a5])
  {
    if (a5)
    {
      v37 = MEMORY[0x1E696ABC0];
      v38 = *MEMORY[0x1E696A578];
      if (*a5)
      {
        v180[0] = *MEMORY[0x1E696A578];
        v39 = MEMORY[0x1E696AEC0];
        v40 = [v7 objectForKeyedSubscript:@"AssetName"];
        v41 = [v39 stringWithFormat:@"Asset %@ is invalid", v40];
        v180[1] = *MEMORY[0x1E696AA08];
        v181[0] = v41;
        v181[1] = *a5;
        v42 = MEMORY[0x1E695DF20];
        v43 = v181;
        v44 = v180;
        v45 = 2;
      }

      else
      {
        v178 = *MEMORY[0x1E696A578];
        v61 = MEMORY[0x1E696AEC0];
        v40 = [v7 objectForKeyedSubscript:@"AssetName"];
        v41 = [v61 stringWithFormat:@"Asset %@ is invalid", v40];
        v179 = v41;
        v42 = MEMORY[0x1E695DF20];
        v43 = &v179;
        v44 = &v178;
        v45 = 1;
      }

      v62 = [v42 dictionaryWithObjects:v43 forKeys:v44 count:v45];
      *a5 = [v37 errorWithDomain:@"com.apple.UnifiedAssetFramework" code:-1 userInfo:v62];
    }

    v15 = UAFGetLogCategory(&UAFLogContextConfiguration);
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_53;
    }

    v59 = [v7 objectForKeyedSubscript:@"AssetName"];
    *buf = 136315394;
    v148 = "+[UAFAssetConfiguration isValid:validUsageTypes:error:]";
    v149 = 2112;
    v150 = v59;
    v60 = "%s Asset %@ is invalid";
    goto LABEL_52;
  }

  if (![UAFConfiguration isValidValue:v7 key:@"TrialMAAssetType" kind:objc_opt_class() required:0 error:a5])
  {
    if (a5)
    {
      v47 = MEMORY[0x1E696ABC0];
      v48 = *MEMORY[0x1E696A578];
      if (*a5)
      {
        v176[0] = *MEMORY[0x1E696A578];
        v49 = MEMORY[0x1E696AEC0];
        v50 = [v7 objectForKeyedSubscript:@"AssetName"];
        v51 = [v49 stringWithFormat:@"Asset %@ is invalid", v50];
        v176[1] = *MEMORY[0x1E696AA08];
        v52 = *a5;
        v177[0] = v51;
        v177[1] = v52;
        v53 = MEMORY[0x1E695DF20];
        v54 = v177;
        v55 = v176;
        v56 = 2;
      }

      else
      {
        v174 = *MEMORY[0x1E696A578];
        v73 = MEMORY[0x1E696AEC0];
        v50 = [v7 objectForKeyedSubscript:@"AssetName"];
        v51 = [v73 stringWithFormat:@"Asset %@ is invalid", v50];
        v175 = v51;
        v53 = MEMORY[0x1E695DF20];
        v54 = &v175;
        v55 = &v174;
        v56 = 1;
      }

      v74 = [v53 dictionaryWithObjects:v54 forKeys:v55 count:v56];
      *a5 = [v47 errorWithDomain:@"com.apple.UnifiedAssetFramework" code:-1 userInfo:v74];
    }

    v15 = UAFGetLogCategory(&UAFLogContextConfiguration);
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_53;
    }

    v59 = [v7 objectForKeyedSubscript:@"AssetName"];
    *buf = 136315394;
    v148 = "+[UAFAssetConfiguration isValid:validUsageTypes:error:]";
    v149 = 2112;
    v150 = v59;
    v60 = "%s Asset %@ is invalid";
    goto LABEL_52;
  }

  v9 = 0;
  if (![UAFConfiguration isValidValue:v7 key:@"IgnoreOSCompatibility" kind:objc_opt_class() required:0 error:a5])
  {
    goto LABEL_55;
  }

  if (![UAFConfiguration isValidValue:v7 key:@"TrialMATargetingTemplate" kind:objc_opt_class() required:0 error:a5])
  {
    if (a5)
    {
      v63 = MEMORY[0x1E696ABC0];
      v64 = *MEMORY[0x1E696A578];
      if (*a5)
      {
        v172[0] = *MEMORY[0x1E696A578];
        v65 = MEMORY[0x1E696AEC0];
        v66 = [v7 objectForKeyedSubscript:@"AssetName"];
        v67 = [v65 stringWithFormat:@"Asset %@ is invalid", v66];
        v172[1] = *MEMORY[0x1E696AA08];
        v68 = *a5;
        v173[0] = v67;
        v173[1] = v68;
        v69 = MEMORY[0x1E695DF20];
        v70 = v173;
        v71 = v172;
        v72 = 2;
      }

      else
      {
        v170 = *MEMORY[0x1E696A578];
        v95 = MEMORY[0x1E696AEC0];
        v66 = [v7 objectForKeyedSubscript:@"AssetName"];
        v67 = [v95 stringWithFormat:@"Asset %@ is invalid", v66];
        v171 = v67;
        v69 = MEMORY[0x1E695DF20];
        v70 = &v171;
        v71 = &v170;
        v72 = 1;
      }

      v96 = [v69 dictionaryWithObjects:v70 forKeys:v71 count:v72];
      *a5 = [v63 errorWithDomain:@"com.apple.UnifiedAssetFramework" code:-1 userInfo:v96];
    }

    v15 = UAFGetLogCategory(&UAFLogContextConfiguration);
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_53;
    }

    v59 = [v7 objectForKeyedSubscript:@"AssetName"];
    *buf = 136315394;
    v148 = "+[UAFAssetConfiguration isValid:validUsageTypes:error:]";
    v149 = 2112;
    v150 = v59;
    v60 = "%s Asset %@ is invalid";
    goto LABEL_52;
  }

  v10 = [v7 objectForKeyedSubscript:@"TrialMATargetingTemplate"];

  if (v10)
  {
    v11 = [v7 objectForKeyedSubscript:@"TrialMATargetingTemplate"];
    v12 = [UAFConfiguration isValidValue:v11 key:@"MetadataAttribute" kind:objc_opt_class() required:1 error:a5];

    if (!v12)
    {
      if (a5)
      {
        v77 = MEMORY[0x1E696ABC0];
        v78 = *MEMORY[0x1E696A578];
        if (*a5)
        {
          v168[0] = *MEMORY[0x1E696A578];
          v79 = MEMORY[0x1E696AEC0];
          v80 = [v7 objectForKeyedSubscript:@"AssetName"];
          v81 = [v79 stringWithFormat:@"Asset %@ is invalid", v80];
          v168[1] = *MEMORY[0x1E696AA08];
          v169[0] = v81;
          v169[1] = *a5;
          v82 = MEMORY[0x1E695DF20];
          v83 = v169;
          v84 = v168;
          v85 = 2;
        }

        else
        {
          v166 = *MEMORY[0x1E696A578];
          v123 = MEMORY[0x1E696AEC0];
          v80 = [v7 objectForKeyedSubscript:@"AssetName"];
          v81 = [v123 stringWithFormat:@"Asset %@ is invalid", v80];
          v167 = v81;
          v82 = MEMORY[0x1E695DF20];
          v83 = &v167;
          v84 = &v166;
          v85 = 1;
        }

        v124 = [v82 dictionaryWithObjects:v83 forKeys:v84 count:v85];
        *a5 = [v77 errorWithDomain:@"com.apple.UnifiedAssetFramework" code:-1 userInfo:v124];
      }

      v15 = UAFGetLogCategory(&UAFLogContextConfiguration);
      if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_53;
      }

      v59 = [v7 objectForKeyedSubscript:@"AssetName"];
      *buf = 136315394;
      v148 = "+[UAFAssetConfiguration isValid:validUsageTypes:error:]";
      v149 = 2112;
      v150 = v59;
      v60 = "%s Asset %@ is invalid";
      goto LABEL_52;
    }

    v13 = [v7 objectForKeyedSubscript:@"TrialMATargetingTemplate"];
    v14 = [UAFConfiguration isValidValue:v13 key:@"ValueExpansion" kind:objc_opt_class() required:1 error:a5];

    if (!v14)
    {
      if (a5)
      {
        v97 = MEMORY[0x1E696ABC0];
        v98 = *MEMORY[0x1E696A578];
        if (*a5)
        {
          v164[0] = *MEMORY[0x1E696A578];
          v99 = MEMORY[0x1E696AEC0];
          v100 = [v7 objectForKeyedSubscript:@"AssetName"];
          v101 = [v99 stringWithFormat:@"Asset %@ is invalid", v100];
          v164[1] = *MEMORY[0x1E696AA08];
          v165[0] = v101;
          v165[1] = *a5;
          v102 = MEMORY[0x1E695DF20];
          v103 = v165;
          v104 = v164;
          v105 = 2;
        }

        else
        {
          v162 = *MEMORY[0x1E696A578];
          v127 = MEMORY[0x1E696AEC0];
          v100 = [v7 objectForKeyedSubscript:@"AssetName"];
          v101 = [v127 stringWithFormat:@"Asset %@ is invalid", v100];
          v163 = v101;
          v102 = MEMORY[0x1E695DF20];
          v103 = &v163;
          v104 = &v162;
          v105 = 1;
        }

        v128 = [v102 dictionaryWithObjects:v103 forKeys:v104 count:v105];
        *a5 = [v97 errorWithDomain:@"com.apple.UnifiedAssetFramework" code:-1 userInfo:v128];
      }

      v15 = UAFGetLogCategory(&UAFLogContextConfiguration);
      if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_53;
      }

      v59 = [v7 objectForKeyedSubscript:@"AssetName"];
      *buf = 136315394;
      v148 = "+[UAFAssetConfiguration isValid:validUsageTypes:error:]";
      v149 = 2112;
      v150 = v59;
      v60 = "%s Asset %@ is invalid";
      goto LABEL_52;
    }
  }

  if (![UAFConfiguration isValidValue:v7 key:@"Expansions" kind:objc_opt_class() required:0 error:a5])
  {
    if (a5)
    {
      v86 = MEMORY[0x1E696ABC0];
      v87 = *MEMORY[0x1E696A578];
      if (*a5)
      {
        v160[0] = *MEMORY[0x1E696A578];
        v88 = MEMORY[0x1E696AEC0];
        v89 = [v7 objectForKeyedSubscript:@"AssetName"];
        v90 = [v88 stringWithFormat:@"Asset %@ is invalid", v89];
        v160[1] = *MEMORY[0x1E696AA08];
        v161[0] = v90;
        v161[1] = *a5;
        v91 = MEMORY[0x1E695DF20];
        v92 = v161;
        v93 = v160;
        v94 = 2;
      }

      else
      {
        v158 = *MEMORY[0x1E696A578];
        v125 = MEMORY[0x1E696AEC0];
        v89 = [v7 objectForKeyedSubscript:@"AssetName"];
        v90 = [v125 stringWithFormat:@"Asset %@ is invalid", v89];
        v159 = v90;
        v91 = MEMORY[0x1E695DF20];
        v92 = &v159;
        v93 = &v158;
        v94 = 1;
      }

      v126 = [v91 dictionaryWithObjects:v92 forKeys:v93 count:v94];
      *a5 = [v86 errorWithDomain:@"com.apple.UnifiedAssetFramework" code:-1 userInfo:v126];
    }

    v15 = UAFGetLogCategory(&UAFLogContextConfiguration);
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_53;
    }

    v59 = [v7 objectForKeyedSubscript:@"AssetName"];
    *buf = 136315394;
    v148 = "+[UAFAssetConfiguration isValid:validUsageTypes:error:]";
    v149 = 2112;
    v150 = v59;
    v60 = "%s Asset %@ is invalid";
LABEL_52:
    _os_log_impl(&dword_1BCF2C000, v15, OS_LOG_TYPE_DEFAULT, v60, buf, 0x16u);

LABEL_53:
    v9 = 0;
    goto LABEL_54;
  }

  v141 = 0u;
  v142 = 0u;
  v139 = 0u;
  v140 = 0u;
  v15 = [v7 objectForKeyedSubscript:@"Expansions"];
  v16 = [v15 countByEnumeratingWithState:&v139 objects:v157 count:16];
  if (!v16)
  {
    v9 = 1;
    goto LABEL_54;
  }

  v17 = v16;
  v18 = *v140;
  while (2)
  {
    for (i = 0; i != v17; ++i)
    {
      if (*v140 != v18)
      {
        objc_enumerationMutation(v15);
      }

      v20 = *(*(&v139 + 1) + 8 * i);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (a5)
        {
          v138 = MEMORY[0x1E696ABC0];
          v106 = *MEMORY[0x1E696A578];
          if (*a5)
          {
            v155[0] = *MEMORY[0x1E696A578];
            v107 = MEMORY[0x1E696AEC0];
            v108 = [v7 objectForKeyedSubscript:@"AssetName"];
            v109 = [v107 stringWithFormat:@"Asset %@ is not expected kind %@", v108, objc_opt_class()];
            v155[1] = *MEMORY[0x1E696AA08];
            v156[0] = v109;
            v156[1] = *a5;
            v110 = MEMORY[0x1E695DF20];
            v111 = v156;
            v112 = v155;
            v113 = 2;
          }

          else
          {
            v153 = *MEMORY[0x1E696A578];
            v129 = MEMORY[0x1E696AEC0];
            v108 = [v7 objectForKeyedSubscript:@"AssetName"];
            v109 = [v129 stringWithFormat:@"Asset %@ is not expected kind %@", v108, objc_opt_class()];
            v154 = v109;
            v110 = MEMORY[0x1E695DF20];
            v111 = &v154;
            v112 = &v153;
            v113 = 1;
          }

          v130 = [v110 dictionaryWithObjects:v111 forKeys:v112 count:v113];
          *a5 = [v138 errorWithDomain:@"com.apple.UnifiedAssetFramework" code:-1 userInfo:v130];
        }

        v131 = UAFGetLogCategory(&UAFLogContextConfiguration);
        if (os_log_type_enabled(v131, OS_LOG_TYPE_DEFAULT))
        {
          v132 = [v7 objectForKeyedSubscript:@"AssetName"];
          v133 = objc_opt_class();
          *buf = 136315650;
          v148 = "+[UAFAssetConfiguration isValid:validUsageTypes:error:]";
          v149 = 2112;
          v150 = v132;
          v151 = 2112;
          v152 = v133;
          v134 = v133;
          _os_log_impl(&dword_1BCF2C000, v131, OS_LOG_TYPE_DEFAULT, "%s Asset %@ is not expected kind %@", buf, 0x20u);
        }

        goto LABEL_96;
      }

      if (![UAFAssetExpansion isValid:v20 validUsageTypes:v8 error:a5])
      {
        if (a5)
        {
          v114 = MEMORY[0x1E696ABC0];
          v115 = *MEMORY[0x1E696A578];
          if (*a5)
          {
            v145[0] = *MEMORY[0x1E696A578];
            v116 = MEMORY[0x1E696AEC0];
            v117 = [v7 objectForKeyedSubscript:@"AssetName"];
            v118 = [v116 stringWithFormat:@"Asset %@ is invalid", v117];
            v145[1] = *MEMORY[0x1E696AA08];
            v146[0] = v118;
            v146[1] = *a5;
            v119 = MEMORY[0x1E695DF20];
            v120 = v146;
            v121 = v145;
            v122 = 2;
          }

          else
          {
            v143 = *MEMORY[0x1E696A578];
            v135 = MEMORY[0x1E696AEC0];
            v117 = [v7 objectForKeyedSubscript:@"AssetName"];
            v118 = [v135 stringWithFormat:@"Asset %@ is invalid", v117];
            v144 = v118;
            v119 = MEMORY[0x1E695DF20];
            v120 = &v144;
            v121 = &v143;
            v122 = 1;
          }

          v136 = [v119 dictionaryWithObjects:v120 forKeys:v121 count:v122];
          *a5 = [v114 errorWithDomain:@"com.apple.UnifiedAssetFramework" code:-1 userInfo:v136];
        }

        v131 = UAFGetLogCategory(&UAFLogContextConfiguration);
        if (os_log_type_enabled(v131, OS_LOG_TYPE_DEFAULT))
        {
          v137 = [v7 objectForKeyedSubscript:@"AssetName"];
          *buf = 136315394;
          v148 = "+[UAFAssetConfiguration isValid:validUsageTypes:error:]";
          v149 = 2112;
          v150 = v137;
          _os_log_impl(&dword_1BCF2C000, v131, OS_LOG_TYPE_DEFAULT, "%s Asset %@ is invalid", buf, 0x16u);
        }

LABEL_96:

        goto LABEL_53;
      }
    }

    v17 = [v15 countByEnumeratingWithState:&v139 objects:v157 count:16];
    v9 = 1;
    if (v17)
    {
      continue;
    }

    break;
  }

LABEL_54:

LABEL_55:
  v75 = *MEMORY[0x1E69E9840];
  return v9;
}

- (UAFAssetConfiguration)initWithDictionary:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v24.receiver = self;
  v24.super_class = UAFAssetConfiguration;
  v5 = [(UAFAssetConfiguration *)&v24 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"AssetName"];
    name = v5->_name;
    v5->_name = v6;

    v8 = [v4 objectForKeyedSubscript:@"IgnoreOSCompatibility"];
    v5->_ignoreOSCompatibility = [v8 BOOLValue];
    v9 = objc_opt_new();
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v10 = [v4 objectForKeyedSubscript:{@"Expansions", 0}];
    v11 = [v10 countByEnumeratingWithState:&v20 objects:v25 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v21;
      do
      {
        v14 = 0;
        do
        {
          if (*v21 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = [[UAFAssetExpansion alloc] initWithDictionary:*(*(&v20 + 1) + 8 * v14)];
          [(NSArray *)v9 addObject:v15];

          ++v14;
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v20 objects:v25 count:16];
      }

      while (v12);
    }

    expansions = v5->_expansions;
    v5->_expansions = v9;

    v17 = v5;
  }

  v18 = *MEMORY[0x1E69E9840];
  return v5;
}

- (id)getAutoAssetSpecifier:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [(UAFAssetConfiguration *)self expansions];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v14 + 1) + 8 * i) getAutoAssetSpecifier:v4];
        if (v10)
        {
          v11 = v10;
          goto LABEL_11;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_11:

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

@end