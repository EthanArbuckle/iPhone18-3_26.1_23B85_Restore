@interface TRIClientRolloutArtifact
+ (BOOL)_isStructurallyValidWithRollout:(id)a3 deployment:(id)a4 namespaceNames:(id)a5 populations:(id)a6 deploymentDate:(id)a7;
+ (BOOL)_signature:(id)a3 onData:(id)a4 isValidUsingPublicCertificate:(id)a5;
+ (id)allReferencedCKRecordKeys;
+ (id)artifactFromCKRecord:(id)a3 namespaceDescriptorProvider:(id)a4 error:(id *)a5;
+ (id)artifactWithTransientData:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToArtifact:(id)a3;
- (NSArray)namespaceNames;
- (TRIClientRolloutArtifact)initWithCoder:(id)a3;
- (TRIClientRolloutArtifact)initWithRollout:(id)a3 populations:(id)a4 deploymentDate:(id)a5 downloadSize:(unint64_t)a6 forLaunchDaemon:(BOOL)a7;
- (TRIRolloutDeployment)deployment;
- (id)copyWithReplacementDeploymentDate:(id)a3;
- (id)copyWithReplacementDownloadSize:(unint64_t)a3;
- (id)copyWithReplacementPopulations:(id)a3;
- (id)copyWithReplacementRollout:(id)a3;
- (id)data;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TRIClientRolloutArtifact

+ (id)allReferencedCKRecordKeys
{
  v9[9] = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D73968];
  v9[0] = *MEMORY[0x277D739A0];
  v9[1] = v2;
  v3 = *MEMORY[0x277D73998];
  v9[2] = *MEMORY[0x277D73990];
  v9[3] = v3;
  v4 = *MEMORY[0x277D73978];
  v9[4] = *MEMORY[0x277D73988];
  v9[5] = v4;
  v5 = *MEMORY[0x277D73960];
  v9[6] = *MEMORY[0x277D73980];
  v9[7] = v5;
  v9[8] = *MEMORY[0x277D73970];
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:9];
  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)artifactFromCKRecord:(id)a3 namespaceDescriptorProvider:(id)a4 error:(id *)a5
{
  v168[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v135 = a4;
  v9 = [v8 values];
  v10 = v9;
  if (!v9)
  {
    v38 = TRILogCategory_Server();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      v81 = [v8 recordID];
      *buf = 138412290;
      v142 = v81;
      _os_log_error_impl(&dword_26F567000, v38, OS_LOG_TYPE_ERROR, "Could not create rollout artifact from CloudKit record %@.", buf, 0xCu);
    }

    if (!a5)
    {
      v43 = 0;
      goto LABEL_99;
    }

    v39 = MEMORY[0x277CCACA8];
    v40 = [v8 recordID];
    v11 = [v39 stringWithFormat:@"Could not create rollout artifact from CloudKit record %@.", v40];

    v41 = objc_alloc(MEMORY[0x277CCA9B8]);
    v167 = *MEMORY[0x277CCA450];
    v168[0] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v168 forKeys:&v167 count:1];
    v42 = [v41 initWithDomain:@"TRIGeneralErrorDomain" code:1 userInfo:v12];
    v43 = 0;
    v13 = *a5;
    *a5 = v42;
    goto LABEL_96;
  }

  v11 = [v9 triStringValueForField:*MEMORY[0x277D739A0] isNestedValue:0];
  if (v11)
  {
    v12 = [v10 triNumberValueForField:*MEMORY[0x277D73968] isNestedValue:0];
    if (!v12)
    {
      v49 = TRILogCategory_Server();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
      {
        v91 = [v8 recordID];
        *buf = 138412546;
        v142 = v91;
        v143 = 2114;
        v144 = v11;
        _os_log_error_impl(&dword_26F567000, v49, OS_LOG_TYPE_ERROR, "CloudKit record %@ with rollout id %{public}@ has missing or corrupt deployment id.", buf, 0x16u);
      }

      if (!a5)
      {
        v12 = 0;
        v43 = 0;
LABEL_97:

        goto LABEL_98;
      }

      v50 = MEMORY[0x277CCACA8];
      v51 = [v8 recordID];
      v13 = [v50 stringWithFormat:@"CloudKit record %@ with rollout id %@ has missing or corrupt deployment id.", v51, v11];

      v52 = objc_alloc(MEMORY[0x277CCA9B8]);
      v163 = *MEMORY[0x277CCA450];
      v164 = v13;
      v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v164 forKeys:&v163 count:1];
      v53 = [v52 initWithDomain:@"TRIGeneralErrorDomain" code:1 userInfo:v14];
      v43 = 0;
      v15 = *a5;
      *a5 = v53;
      goto LABEL_94;
    }

    v13 = [objc_alloc(MEMORY[0x277D737C8]) initWithRolloutId:v11 deploymentId:{objc_msgSend(v12, "intValue")}];
    v14 = [v10 triDataForField:*MEMORY[0x277D73990]];
    if (v14)
    {
      v15 = [v10 triStringValueForField:*MEMORY[0x277D73998] isNestedValue:0];
      if (!v15)
      {
        v60 = TRILogCategory_Server();
        if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
        {
          v106 = [v8 recordID];
          *buf = 138412802;
          v142 = v106;
          v143 = 2114;
          v144 = v11;
          v145 = 2112;
          v146 = v12;
          _os_log_error_impl(&dword_26F567000, v60, OS_LOG_TYPE_ERROR, "CloudKit record %@ with rollout id %{public}@.%@ has missing or corrupt encoded rollout definition signature.", buf, 0x20u);
        }

        if (!a5)
        {
          v15 = 0;
          v43 = 0;
LABEL_94:

          goto LABEL_95;
        }

        v61 = MEMORY[0x277CCACA8];
        v62 = [v8 recordID];
        v63 = [v61 stringWithFormat:@"CloudKit record %@ with rollout id %@.%@ has missing or corrupt encoded rollout definition signature.", v62, v11, v12];

        v64 = objc_alloc(MEMORY[0x277CCA9B8]);
        v159 = *MEMORY[0x277CCA450];
        v160 = v63;
        v134 = v63;
        v65 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v160 forKeys:&v159 count:1];
        v66 = v64;
        v15 = 0;
        v133 = v65;
        v67 = [v66 initWithDomain:@"TRIGeneralErrorDomain" code:1 userInfo:?];
        v43 = 0;
        v22 = *a5;
        *a5 = v67;
        goto LABEL_90;
      }

      v134 = [v10 triDataForField:*MEMORY[0x277D73988]];
      if (!v134)
      {
        v68 = TRILogCategory_Server();
        if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
        {
          [v8 recordID];
          v108 = v107 = v15;
          *buf = 138412802;
          v142 = v108;
          v143 = 2114;
          v144 = v11;
          v145 = 2112;
          v146 = v12;
          _os_log_error_impl(&dword_26F567000, v68, OS_LOG_TYPE_ERROR, "CloudKit record %@ with rollout id %{public}@.%@ has missing or corrupt public certificate.", buf, 0x20u);

          v15 = v107;
        }

        if (!a5)
        {
          v90 = 0;
          v43 = 0;
LABEL_93:

          goto LABEL_94;
        }

        v130 = v15;
        v69 = MEMORY[0x277CCACA8];
        v70 = [v8 recordID];
        v71 = [v69 stringWithFormat:@"CloudKit record %@ with rollout id %@.%@ has missing or corrupt public certificate.", v70, v11, v12];

        v72 = objc_alloc(MEMORY[0x277CCA9B8]);
        v157 = *MEMORY[0x277CCA450];
        v158 = v71;
        v133 = v71;
        v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v158 forKeys:&v157 count:1];
        v73 = v72;
        v15 = v130;
        v74 = [v73 initWithDomain:@"TRIGeneralErrorDomain" code:1 userInfo:v22];
        v43 = 0;
        v75 = *a5;
        *a5 = v74;
        goto LABEL_89;
      }

      v128 = v14;
      v16 = [v10 triArrayValueForField:*MEMORY[0x277D73978] isNestedValue:0];
      v133 = v16;
      if (!v16)
      {
        goto LABEL_50;
      }

      v17 = v16;
      if ([v16 count])
      {
        [v17 objectAtIndexedSubscript:0];
        v131 = v13;
        v19 = v18 = v15;
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        v15 = v18;
        v13 = v131;
        if ((isKindOfClass & 1) == 0)
        {
LABEL_50:
          v76 = TRILogCategory_Server();
          if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
          {
            v109 = [v8 recordID];
            *buf = 138412802;
            v142 = v109;
            v143 = 2114;
            v144 = v11;
            v145 = 2112;
            v146 = v12;
            _os_log_error_impl(&dword_26F567000, v76, OS_LOG_TYPE_ERROR, "CloudKit record %@ with rollout id %{public}@.%@ has missing or corrupt namespace names.", buf, 0x20u);
          }

          if (!a5)
          {
            v43 = 0;
            v14 = v128;
LABEL_91:
            v59 = v133;
            goto LABEL_92;
          }

          v129 = v15;
          v77 = MEMORY[0x277CCACA8];
          v78 = [v8 recordID];
          v22 = [v77 stringWithFormat:@"CloudKit record %@ with rollout id %@.%@ has missing or corrupt namespace names.", v78, v11, v12];

          v79 = objc_alloc(MEMORY[0x277CCA9B8]);
          v155 = *MEMORY[0x277CCA450];
          v156 = v22;
          v132 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v156 forKeys:&v155 count:1];
          v80 = [v79 initWithDomain:@"TRIGeneralErrorDomain" code:1 userInfo:?];
          v43 = 0;
          v37 = *a5;
          *a5 = v80;
          v14 = v128;
          goto LABEL_87;
        }
      }

      v129 = v15;
      v21 = [v10 triArrayValueForField:*MEMORY[0x277D73980] isNestedValue:0];
      v22 = v21;
      if (!v21 || [v21 count] && (objc_msgSend(v22, "objectAtIndexedSubscript:", 0), v23 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), v24 = objc_opt_isKindOfClass(), v23, (v24 & 1) == 0))
      {
        v82 = TRILogCategory_Server();
        if (os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
        {
          v118 = [v8 recordID];
          *buf = 138412802;
          v142 = v118;
          v143 = 2114;
          v144 = v11;
          v145 = 2112;
          v146 = v12;
          _os_log_error_impl(&dword_26F567000, v82, OS_LOG_TYPE_ERROR, "CloudKit record %@ with rollout id %{public}@.%@ has missing or corrupt populations.", buf, 0x20u);
        }

        if (!a5)
        {
          v43 = 0;
          v14 = v128;
          v15 = v129;
LABEL_90:

          goto LABEL_91;
        }

        v83 = MEMORY[0x277CCACA8];
        v84 = [v8 recordID];
        v85 = [v83 stringWithFormat:@"CloudKit record %@ with rollout id %@.%@ has missing or corrupt populations.", v84, v11, v12];

        v86 = objc_alloc(MEMORY[0x277CCA9B8]);
        v153 = *MEMORY[0x277CCA450];
        v132 = v85;
        v154 = v85;
        v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v154 forKeys:&v153 count:1];
        v87 = [v86 initWithDomain:@"TRIGeneralErrorDomain" code:1 userInfo:v37];
        v43 = 0;
        v88 = *a5;
        *a5 = v87;
        v14 = v128;
        goto LABEL_86;
      }

      v132 = [v10 triDateForField:*MEMORY[0x277D73960]];
      if (v132)
      {
        v14 = v128;
        v15 = v129;
        if ([a1 _signature:v129 onData:v128 isValidUsingPublicCertificate:v134])
        {
          v136 = 0;
          v127 = [MEMORY[0x277D73AE0] parseFromData:v128 error:&v136];
          v126 = v136;
          if (v127)
          {
            if ([a1 _isStructurallyValidWithRollout:? deployment:? namespaceNames:? populations:? deploymentDate:?])
            {
              v125 = [TRISetupAssistantFetchUtils getIncompatibleNamespaceNamesForTriClientRollout:v127 namespaceDescriptorProvider:v135];
              v25 = [v125 count];
              v26 = TRILogCategory_Server();
              v27 = v26;
              if (v25)
              {
                if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
                {
                  v28 = [v125 allObjects];
                  *buf = 138543362;
                  v142 = v28;
                  _os_log_impl(&dword_26F567000, v27, OS_LOG_TYPE_DEFAULT, "Found the following incompatible namespace names: %{public}@", buf, 0xCu);
                }

                if (a5)
                {
                  v29 = MEMORY[0x277CCACA8];
                  v30 = [v125 allObjects];
                  v31 = [v29 stringWithFormat:@"Found the following incompatible namespace names: %@", v30];

                  v32 = objc_alloc(MEMORY[0x277CCA9B8]);
                  v137 = *MEMORY[0x277CCA450];
                  v138 = v31;
                  v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v138 forKeys:&v137 count:1];
                  v34 = [v32 initWithDomain:@"TRIGeneralErrorDomain" code:1 userInfo:v33];
                  v35 = *a5;
                  *a5 = v34;

                  v36 = v125;
                  v37 = v126;
LABEL_76:
                  v43 = 0;
                  goto LABEL_85;
                }

                v43 = 0;
              }

              else
              {
                if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
                {
                  v124 = [v13 shortDesc];
                  *buf = 138543362;
                  v142 = v124;
                  _os_log_debug_impl(&dword_26F567000, v27, OS_LOG_TYPE_DEBUG, "Decoded valid and device-compatible rollout notification: %{public}@.  This means we are ack’ing the CK notification, not acting on it.", buf, 0xCu);
                }

                v43 = -[TRIClientRolloutArtifact initWithRollout:populations:deploymentDate:downloadSize:forLaunchDaemon:]([TRIClientRolloutArtifact alloc], "initWithRollout:populations:deploymentDate:downloadSize:forLaunchDaemon:", v127, v22, v132, [v134 length] + objc_msgSend(v128, "length") + objc_msgSend(v129, "length"), 0);
              }

              v36 = v125;
              v37 = v126;
              goto LABEL_85;
            }

            v88 = v127;
            v43 = 0;
            v37 = v126;
          }

          else
          {
            v110 = TRILogCategory_Server();
            v37 = v126;
            if (os_log_type_enabled(v110, OS_LOG_TYPE_ERROR))
            {
              v123 = [v8 recordID];
              *buf = 138413058;
              v142 = v123;
              v143 = 2114;
              v144 = v11;
              v145 = 2112;
              v146 = v12;
              v147 = 2114;
              v148 = v126;
              _os_log_error_impl(&dword_26F567000, v110, OS_LOG_TYPE_ERROR, "CloudKit record %@ with rollout id %{public}@.%@ has unparseable rollout definition: %{public}@", buf, 0x2Au);

              v14 = v128;
            }

            if (a5)
            {
              v111 = MEMORY[0x277CCACA8];
              v112 = [v8 recordID];
              v113 = [v111 stringWithFormat:@"CloudKit record %@ with rollout id %@.%@ has unparseable rollout definition: %@", v112, v11, v12, v126];

              v114 = objc_alloc(MEMORY[0x277CCA9B8]);
              v139 = *MEMORY[0x277CCA450];
              v140 = v113;
              v115 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v140 forKeys:&v139 count:1];
              v116 = [v114 initWithDomain:@"TRIGeneralErrorDomain" code:1 userInfo:v115];
              v117 = *a5;
              *a5 = v116;

              v36 = v113;
              v37 = v126;
              v127 = 0;
              goto LABEL_76;
            }

            v88 = 0;
            v43 = 0;
          }

LABEL_86:

LABEL_87:
          v15 = v129;
          goto LABEL_88;
        }

        v101 = TRILogCategory_Server();
        if (os_log_type_enabled(v101, OS_LOG_TYPE_ERROR))
        {
          v122 = [v8 recordID];
          *buf = 138412802;
          v142 = v122;
          v143 = 2114;
          v144 = v11;
          v145 = 2112;
          v146 = v12;
          _os_log_error_impl(&dword_26F567000, v101, OS_LOG_TYPE_ERROR, "CloudKit record %@ with rollout id %{public}@.%@ does not have a valid signature.", buf, 0x20u);

          v14 = v128;
        }

        if (!a5)
        {
          v43 = 0;
LABEL_88:
          v75 = v132;
          goto LABEL_89;
        }

        v102 = MEMORY[0x277CCACA8];
        v103 = [v8 recordID];
        v104 = [v102 stringWithFormat:@"CloudKit record %@ with rollout id %@.%@ does not have a valid signature.", v103, v11, v12];

        v37 = v104;
        v97 = objc_alloc(MEMORY[0x277CCA9B8]);
        v149 = *MEMORY[0x277CCA450];
        v150 = v37;
        v98 = MEMORY[0x277CBEAC0];
        v99 = &v150;
        v100 = &v149;
      }

      else
      {
        v93 = TRILogCategory_Server();
        v14 = v128;
        v15 = v129;
        if (os_log_type_enabled(v93, OS_LOG_TYPE_ERROR))
        {
          v121 = [v8 recordID];
          *buf = 138412802;
          v142 = v121;
          v143 = 2114;
          v144 = v11;
          v145 = 2112;
          v146 = v12;
          _os_log_error_impl(&dword_26F567000, v93, OS_LOG_TYPE_ERROR, "CloudKit record %@ with rollout id %{public}@.%@ has unreadable deploymentDate.", buf, 0x20u);

          v14 = v128;
        }

        if (!a5)
        {
          v75 = 0;
          v43 = 0;
LABEL_89:

          goto LABEL_90;
        }

        v94 = MEMORY[0x277CCACA8];
        v95 = [v8 recordID];
        v96 = [v94 stringWithFormat:@"CloudKit record %@ with rollout id %@.%@ has unreadable deploymentDate.", v95, v11, v12];

        v37 = v96;
        v97 = objc_alloc(MEMORY[0x277CCA9B8]);
        v151 = *MEMORY[0x277CCA450];
        v152 = v37;
        v98 = MEMORY[0x277CBEAC0];
        v99 = &v152;
        v100 = &v151;
      }

      v127 = [v98 dictionaryWithObjects:v99 forKeys:v100 count:1];
      v105 = [v97 initWithDomain:@"TRIGeneralErrorDomain" code:1 userInfo:?];
      v43 = 0;
      v36 = *a5;
      *a5 = v105;
LABEL_85:

      v88 = v127;
      v14 = v128;
      goto LABEL_86;
    }

    v54 = TRILogCategory_Server();
    if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
    {
      v92 = [v8 recordID];
      *buf = 138412802;
      v142 = v92;
      v143 = 2114;
      v144 = v11;
      v145 = 2112;
      v146 = v12;
      _os_log_error_impl(&dword_26F567000, v54, OS_LOG_TYPE_ERROR, "CloudKit record %@ with rollout id %{public}@.%@ has missing or corrupt encoded rollout definition.", buf, 0x20u);
    }

    if (a5)
    {
      v55 = MEMORY[0x277CCACA8];
      v56 = [v8 recordID];
      v15 = [v55 stringWithFormat:@"CloudKit record %@ with rollout id %@.%@ has missing or corrupt encoded rollout definition.", v56, v11, v12];

      v57 = objc_alloc(MEMORY[0x277CCA9B8]);
      v161 = *MEMORY[0x277CCA450];
      v162 = v15;
      v134 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v162 forKeys:&v161 count:1];
      v58 = [v57 initWithDomain:@"TRIGeneralErrorDomain" code:1 userInfo:?];
      v43 = 0;
      v59 = *a5;
      *a5 = v58;
LABEL_92:

      v90 = v134;
      goto LABEL_93;
    }

    v14 = 0;
    v43 = 0;
LABEL_95:

LABEL_96:
    goto LABEL_97;
  }

  v44 = TRILogCategory_Server();
  if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
  {
    v89 = [v8 recordID];
    *buf = 138412290;
    v142 = v89;
    _os_log_error_impl(&dword_26F567000, v44, OS_LOG_TYPE_ERROR, "RolloutNotification CloudKit record %@ has missing or corrupt rollout id.", buf, 0xCu);
  }

  if (a5)
  {
    v45 = MEMORY[0x277CCACA8];
    v46 = [v8 recordID];
    v12 = [v45 stringWithFormat:@"RolloutNotification CloudKit record %@ has missing or corrupt rollout id.", v46];

    v47 = objc_alloc(MEMORY[0x277CCA9B8]);
    v165 = *MEMORY[0x277CCA450];
    v166 = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v166 forKeys:&v165 count:1];
    v48 = [v47 initWithDomain:@"TRIGeneralErrorDomain" code:1 userInfo:v13];
    v43 = 0;
    v14 = *a5;
    *a5 = v48;
    goto LABEL_95;
  }

  v11 = 0;
  v43 = 0;
LABEL_98:

LABEL_99:
  v119 = *MEMORY[0x277D85DE8];

  return v43;
}

+ (BOOL)_signature:(id)a3 onData:(id)a4 isValidUsingPublicCertificate:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [TRISignatureKey keyFromData:a5];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 validateBase64Signature:v7 data:v8];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (BOOL)_isStructurallyValidWithRollout:(id)a3 deployment:(id)a4 namespaceNames:(id)a5 populations:(id)a6 deploymentDate:(id)a7
{
  v82 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v63 = a4;
  v10 = a5;
  v11 = objc_opt_new();
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v12 = v10;
  v13 = [v12 countByEnumeratingWithState:&v68 objects:v81 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v69;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v69 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v68 + 1) + 8 * i);
        if (([(__CFString *)v17 triIsPathSafe]& 1) == 0)
        {
          v40 = TRILogCategory_Server();
          if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
          {
            v28 = v63;
            v41 = [v63 rolloutId];
            v42 = [v63 deploymentId];
            *buf = 138543874;
            v73 = v41;
            v74 = 1024;
            v75 = v42;
            v76 = 2114;
            v77 = v17;
            v43 = "Rollout artifact with id %{public}@.%d has namespace name %{public}@ which is not path-safe.";
            goto LABEL_45;
          }

LABEL_32:
          v28 = v63;
LABEL_33:

          v39 = 0;
          v18 = v12;
          goto LABEL_50;
        }

        if ([v11 containsObject:v17])
        {
          v40 = TRILogCategory_Server();
          if (!os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_32;
          }

          v28 = v63;
          v41 = [v63 rolloutId];
          v52 = [v63 deploymentId];
          *buf = 138543874;
          v73 = v41;
          v74 = 1024;
          v75 = v52;
          v76 = 2114;
          v77 = v17;
          v43 = "Rollout artifact with id %{public}@.%d has repeated namespaceNames entry %{public}@.";
LABEL_45:
          _os_log_error_impl(&dword_26F567000, v40, OS_LOG_TYPE_ERROR, v43, buf, 0x1Cu);

          goto LABEL_33;
        }

        [v11 addObject:v17];
      }

      v14 = [v12 countByEnumeratingWithState:&v68 objects:v81 count:16];
    }

    while (v14);
  }

  v18 = objc_opt_new();
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v19 = [v9 selectedNamespaceArray];
  v20 = [v19 countByEnumeratingWithState:&v64 objects:v80 count:16];
  if (!v20)
  {
    goto LABEL_19;
  }

  v21 = v20;
  v22 = *v65;
  v62 = v9;
  while (2)
  {
    for (j = 0; j != v21; ++j)
    {
      if (*v65 != v22)
      {
        objc_enumerationMutation(v19);
      }

      v24 = *(*(&v64 + 1) + 8 * j);
      v25 = [v24 name];
      v26 = [v18 containsObject:v25];

      if (v26)
      {
        v44 = TRILogCategory_Server();
        if (!os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
        {
LABEL_37:
          v9 = v62;
          v28 = v63;
          goto LABEL_38;
        }

        v28 = v63;
        v45 = [v63 rolloutId];
        v46 = [v63 deploymentId];
        v47 = [v24 name];
        *buf = 138543874;
        v73 = v45;
        v74 = 1024;
        v75 = v46;
        v76 = 2114;
        v77 = v47;
        v48 = "Rollout artifact with id %{public}@.%d has repeated selected_namespace name %{public}@.";
LABEL_52:
        _os_log_error_impl(&dword_26F567000, v44, OS_LOG_TYPE_ERROR, v48, buf, 0x1Cu);

        v9 = v62;
        goto LABEL_38;
      }

      if (![v24 compatibilityVersionArray_Count])
      {
        v44 = TRILogCategory_Server();
        if (!os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_37;
        }

        v28 = v63;
        v45 = [v63 rolloutId];
        v55 = [v63 deploymentId];
        v47 = [v24 name];
        *buf = 138543874;
        v73 = v45;
        v74 = 1024;
        v75 = v55;
        v76 = 2114;
        v77 = v47;
        v48 = "Rollout artifact with id %{public}@.%d declares empty NCV array for namespace %{public}@.";
        goto LABEL_52;
      }

      v27 = [v24 name];
      [v18 addObject:v27];
    }

    v21 = [v19 countByEnumeratingWithState:&v64 objects:v80 count:16];
    v9 = v62;
    if (v21)
    {
      continue;
    }

    break;
  }

LABEL_19:

  if (([v11 isEqualToSet:v18] & 1) == 0)
  {
    v19 = TRILogCategory_Server();
    v28 = v63;
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_48;
    }

    v44 = [v63 rolloutId];
    v49 = [v63 deploymentId];
    *buf = 138543618;
    v73 = v44;
    v74 = 1024;
    v75 = v49;
    v50 = "Rollout artifact with id %{public}@.%d has inconsistent namespace name collections.";
    goto LABEL_43;
  }

  v28 = v63;
  v29 = [v63 rolloutId];
  v30 = [v29 triIsPathSafePlausibleUniqueId];

  if ((v30 & 1) == 0)
  {
    v19 = TRILogCategory_Server();
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_48;
    }

    v44 = [v63 rolloutId];
    v51 = [v63 deploymentId];
    *buf = 138543618;
    v73 = v44;
    v74 = 1024;
    v75 = v51;
    v50 = "Rollout artifact with id %{public}@.%d has rolloutId which is not a plausible uniqueId.";
LABEL_43:
    _os_log_error_impl(&dword_26F567000, v19, OS_LOG_TYPE_ERROR, v50, buf, 0x12u);
LABEL_38:

LABEL_48:
LABEL_49:
    v39 = 0;
    goto LABEL_50;
  }

  if (![v9 hasRolloutId])
  {
    goto LABEL_47;
  }

  v31 = [v63 rolloutId];
  v32 = [v9 rolloutId];
  if (![v31 isEqualToString:v32] || (objc_msgSend(v9, "hasDeploymentId") & 1) == 0)
  {

LABEL_47:
    v19 = TRILogCategory_Server();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v56 = [v63 rolloutId];
      v57 = [v63 deploymentId];
      v58 = v9;
      v59 = [v9 hasRolloutId];
      if (v59)
      {
        v60 = [v58 rolloutId];
      }

      else
      {
        v60 = @"(unset)";
      }

      if ([v58 hasDeploymentId])
      {
        v61 = [v58 deploymentId];
      }

      else
      {
        v61 = -1;
      }

      *buf = 138544130;
      v73 = v56;
      v74 = 1024;
      v75 = v57;
      v76 = 2114;
      v77 = v60;
      v78 = 1024;
      v79 = v61;
      _os_log_error_impl(&dword_26F567000, v19, OS_LOG_TYPE_ERROR, "Rollout artifact with id %{public}@.%d contains rollout definition with mismatched identifier: %{public}@.%d", buf, 0x22u);
      if (v59)
      {
      }

      v9 = v58;
      v28 = v63;
    }

    goto LABEL_48;
  }

  v33 = v9;
  v34 = [v63 deploymentId];
  v35 = [v33 deploymentId];

  v36 = v34 == v35;
  v9 = v33;
  if (!v36)
  {
    goto LABEL_47;
  }

  if ([v33 hasRampId])
  {
    v37 = [v33 rampId];
    v38 = TRIValidateRampId();

    if (!v38)
    {
      goto LABEL_49;
    }
  }

  v39 = 1;
LABEL_50:

  v53 = *MEMORY[0x277D85DE8];
  return v39;
}

- (TRIRolloutDeployment)deployment
{
  v6 = [(TRIClientRolloutArtifact *)self rollout];
  v2 = objc_alloc(MEMORY[0x277D737C8]);
  v3 = [v6 rolloutId];
  v4 = [v2 initWithRolloutId:v3 deploymentId:{objc_msgSend(v6, "deploymentId")}];

  return v4;
}

- (NSArray)namespaceNames
{
  v3 = objc_alloc(MEMORY[0x277CBEB18]);
  v4 = [(TRIClientRolloutArtifact *)self rollout];
  v5 = [v3 initWithCapacity:{objc_msgSend(v4, "selectedNamespaceArray_Count")}];

  v6 = [(TRIClientRolloutArtifact *)self rollout];
  v7 = [v6 selectedNamespaceArray];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __49__TRIClientRolloutArtifact_Utils__namespaceNames__block_invoke;
  v10[3] = &unk_279DDF680;
  v8 = v5;
  v11 = v8;
  [v7 enumerateObjectsUsingBlock:v10];

  return v8;
}

void __49__TRIClientRolloutArtifact_Utils__namespaceNames__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 name];
  [v2 addObject:v3];
}

- (id)data
{
  v4 = objc_alloc(MEMORY[0x277D73B90]);
  v5 = [(TRIClientRolloutArtifact *)self populations];
  v6 = [v4 initWithCapacity:{objc_msgSend(v5, "count")}];

  v7 = [(TRIClientRolloutArtifact *)self populations];
  v17 = MEMORY[0x277D85DD0];
  v18 = 3221225472;
  v19 = __39__TRIClientRolloutArtifact_Utils__data__block_invoke;
  v20 = &unk_279DDF6A8;
  v8 = v6;
  v21 = v8;
  [v7 enumerateObjectsUsingBlock:&v17];

  v9 = objc_opt_new();
  v10 = [(TRIClientRolloutArtifact *)self rollout];
  [v9 setRollout:v10];

  [v9 setPopulationsArray:v8];
  v11 = objc_alloc(MEMORY[0x277D73B88]);
  v12 = [(TRIClientRolloutArtifact *)self deploymentDate];
  v13 = [v11 initWithDate:v12];
  [v9 setDeploymentDate:v13];

  [v9 setDownloadSize:{-[TRIClientRolloutArtifact downloadSize](self, "downloadSize")}];
  v14 = [v9 data];
  if (!v14)
  {
    v16 = [MEMORY[0x277CCA890] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"TRIClientRolloutArtifact+Utils.m" lineNumber:53 description:{@"Invalid parameter not satisfying: %@", @"result", v17, v18, v19, v20}];
  }

  return v14;
}

uint64_t __39__TRIClientRolloutArtifact_Utils__data__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 unsignedIntValue];

  return [v2 addValue:v3];
}

+ (id)artifactWithTransientData:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v26 = 0;
  v3 = [(TRIPBMessage *)TRIPersistedClientRolloutArtifact parseFromData:a3 error:&v26];
  v4 = v26;
  if (!v3)
  {
    v7 = TRILogCategory_Server();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v28 = v4;
      _os_log_error_impl(&dword_26F567000, v7, OS_LOG_TYPE_ERROR, "Failed to decode TRIPersistedClientRolloutArtifact: %{public}@", buf, 0xCu);
    }

    goto LABEL_11;
  }

  if (([v3 hasRollout] & 1) == 0)
  {
    v7 = TRILogCategory_Server();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }

    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    *buf = 138412290;
    v28 = v14;
    v15 = "Cannot decode message of type %@ with missing field: rollout";
LABEL_21:
    _os_log_error_impl(&dword_26F567000, v7, OS_LOG_TYPE_ERROR, v15, buf, 0xCu);

    goto LABEL_11;
  }

  if ([v3 hasDeploymentDate])
  {
    v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v3, "populationsArray_Count")}];
    v6 = [v3 populationsArray];
    v21 = MEMORY[0x277D85DD0];
    v22 = 3221225472;
    v23 = __61__TRIClientRolloutArtifact_Utils__artifactWithTransientData___block_invoke;
    v24 = &unk_279DDF630;
    v7 = v5;
    v25 = v7;
    [v6 enumerateValuesWithBlock:&v21];

    v8 = [TRIClientRolloutArtifact alloc];
    v9 = [v3 rollout];
    v10 = [v3 deploymentDate];
    v11 = [v10 date];
    if ([v3 hasDownloadSize])
    {
      v12 = [v3 downloadSize];
    }

    else
    {
      v12 = 0;
    }

    if ([v3 hasForLaunchDaemon])
    {
      v19 = [v3 forLaunchDaemon] != 0;
    }

    else
    {
      v19 = 0;
    }

    v16 = [(TRIClientRolloutArtifact *)v8 initWithRollout:v9 populations:v7 deploymentDate:v11 downloadSize:v12 forLaunchDaemon:v19];

    goto LABEL_12;
  }

  v7 = TRILogCategory_Server();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v20 = objc_opt_class();
    v14 = NSStringFromClass(v20);
    *buf = 138412290;
    v28 = v14;
    v15 = "Cannot decode message of type %@ with missing field: deploymentDate";
    goto LABEL_21;
  }

LABEL_11:
  v16 = 0;
LABEL_12:

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

void __61__TRIClientRolloutArtifact_Utils__artifactWithTransientData___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a2];
  [v2 addObject:v3];
}

- (TRIClientRolloutArtifact)initWithRollout:(id)a3 populations:(id)a4 deploymentDate:(id)a5 downloadSize:(unint64_t)a6 forLaunchDaemon:(BOOL)a7
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  if (v14)
  {
    if (v15)
    {
      goto LABEL_3;
    }

LABEL_8:
    v21 = [MEMORY[0x277CCA890] currentHandler];
    [v21 handleFailureInMethod:a2 object:self file:@"TRIServerTupleTypes.m" lineNumber:1699 description:{@"Invalid parameter not satisfying: %@", @"populations != nil"}];

    if (v16)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  v20 = [MEMORY[0x277CCA890] currentHandler];
  [v20 handleFailureInMethod:a2 object:self file:@"TRIServerTupleTypes.m" lineNumber:1698 description:{@"Invalid parameter not satisfying: %@", @"rollout != nil"}];

  if (!v15)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (v16)
  {
    goto LABEL_4;
  }

LABEL_9:
  v22 = [MEMORY[0x277CCA890] currentHandler];
  [v22 handleFailureInMethod:a2 object:self file:@"TRIServerTupleTypes.m" lineNumber:1700 description:{@"Invalid parameter not satisfying: %@", @"deploymentDate != nil"}];

LABEL_4:
  v23.receiver = self;
  v23.super_class = TRIClientRolloutArtifact;
  v17 = [(TRIClientRolloutArtifact *)&v23 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_rollout, a3);
    objc_storeStrong(&v18->_populations, a4);
    objc_storeStrong(&v18->_deploymentDate, a5);
    v18->_downloadSize = a6;
    v18->_forLaunchDaemon = a7;
  }

  return v18;
}

- (id)copyWithReplacementRollout:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(objc_opt_class()) initWithRollout:v4 populations:self->_populations deploymentDate:self->_deploymentDate downloadSize:self->_downloadSize forLaunchDaemon:self->_forLaunchDaemon];

  return v5;
}

- (id)copyWithReplacementPopulations:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(objc_opt_class()) initWithRollout:self->_rollout populations:v4 deploymentDate:self->_deploymentDate downloadSize:self->_downloadSize forLaunchDaemon:self->_forLaunchDaemon];

  return v5;
}

- (id)copyWithReplacementDeploymentDate:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(objc_opt_class()) initWithRollout:self->_rollout populations:self->_populations deploymentDate:v4 downloadSize:self->_downloadSize forLaunchDaemon:self->_forLaunchDaemon];

  return v5;
}

- (id)copyWithReplacementDownloadSize:(unint64_t)a3
{
  v5 = objc_alloc(objc_opt_class());
  rollout = self->_rollout;
  populations = self->_populations;
  deploymentDate = self->_deploymentDate;
  forLaunchDaemon = self->_forLaunchDaemon;

  return [v5 initWithRollout:rollout populations:populations deploymentDate:deploymentDate downloadSize:a3 forLaunchDaemon:forLaunchDaemon];
}

- (BOOL)isEqualToArtifact:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_13;
  }

  v6 = self->_rollout == 0;
  v7 = [v4 rollout];
  v8 = v7 != 0;

  if (v6 == v8)
  {
    goto LABEL_13;
  }

  rollout = self->_rollout;
  if (rollout)
  {
    v10 = [v5 rollout];
    v11 = [(TRIClientRollout *)rollout isEqual:v10];

    if (!v11)
    {
      goto LABEL_13;
    }
  }

  v12 = self->_populations == 0;
  v13 = [v5 populations];
  v14 = v13 != 0;

  if (v12 == v14)
  {
    goto LABEL_13;
  }

  populations = self->_populations;
  if (populations)
  {
    v16 = [v5 populations];
    v17 = [(NSArray *)populations isEqual:v16];

    if (!v17)
    {
      goto LABEL_13;
    }
  }

  v18 = self->_deploymentDate == 0;
  v19 = [v5 deploymentDate];
  v20 = v19 != 0;

  if (v18 == v20)
  {
    goto LABEL_13;
  }

  deploymentDate = self->_deploymentDate;
  if (deploymentDate)
  {
    v22 = [v5 deploymentDate];
    v23 = [(NSDate *)deploymentDate isEqual:v22];

    if (!v23)
    {
      goto LABEL_13;
    }
  }

  downloadSize = self->_downloadSize;
  if (downloadSize != [v5 downloadSize])
  {
LABEL_13:
    v26 = 0;
  }

  else
  {
    forLaunchDaemon = self->_forLaunchDaemon;
    v26 = forLaunchDaemon == [v5 forLaunchDaemon];
  }

  return v26;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(TRIClientRolloutArtifact *)self isEqualToArtifact:v5];
  }

  return v6;
}

- (unint64_t)hash
{
  v3 = [(TRIClientRollout *)self->_rollout hash];
  v4 = [(NSArray *)self->_populations hash]- v3 + 32 * v3;
  v5 = [(NSDate *)self->_deploymentDate hash];
  v6 = self->_downloadSize - (v5 - v4 + 32 * v4) + 32 * (v5 - v4 + 32 * v4);
  return self->_forLaunchDaemon - v6 + 32 * v6;
}

- (TRIClientRolloutArtifact)initWithCoder:(id)a3
{
  v50[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"rollout"];
  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x277CBEB98]);
    v7 = objc_opt_class();
    v8 = [v6 initWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"populations"];

    if (!v9)
    {
      v16 = [v4 error];

      if (v16)
      {
        v9 = 0;
        v14 = 0;
LABEL_24:

        goto LABEL_25;
      }

      v47 = *MEMORY[0x277CCA450];
      v48 = @"Retrieved nil serialized value for nonnull TRIClientRolloutArtifact.populations";
      v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v48 forKeys:&v47 count:1];
      v23 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"TRIClientRolloutArtifactOCNTErrorDomain" code:2 userInfo:v11];
      [v4 failWithError:v23];

      v9 = 0;
      goto LABEL_22;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"deploymentDate"];
      if (!v10)
      {
        v24 = [v4 error];

        if (!v24)
        {
          v43 = *MEMORY[0x277CCA450];
          v44 = @"Retrieved nil serialized value for nonnull TRIClientRolloutArtifact.deploymentDate";
          v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v44 forKeys:&v43 count:1];
          v26 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"TRIClientRolloutArtifactOCNTErrorDomain" code:2 userInfo:v25];
          [v4 failWithError:v26];
        }

        v11 = 0;
        goto LABEL_22;
      }

      v11 = v10;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = [v4 decodeInt64ForKey:@"downloadSize"];
        if (!v12)
        {
          v32 = [v4 error];

          if (v32)
          {
            goto LABEL_22;
          }

          if (([v4 containsValueForKey:@"downloadSize"] & 1) == 0)
          {
            v39 = *MEMORY[0x277CCA450];
            v40 = @"Missing serialized value for TRIClientRolloutArtifact.downloadSize";
            v33 = MEMORY[0x277CBEAC0];
            v34 = &v40;
            v35 = &v39;
LABEL_32:
            v19 = [v33 dictionaryWithObjects:v34 forKeys:v35 count:1];
            v20 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"TRIClientRolloutArtifactOCNTErrorDomain" code:1 userInfo:v19];
            [v4 failWithError:v20];
            goto LABEL_21;
          }
        }

        v13 = [v4 decodeInt64ForKey:@"forLaunchDaemon"];
        if (v13)
        {
LABEL_8:
          self = [(TRIClientRolloutArtifact *)self initWithRollout:v5 populations:v9 deploymentDate:v11 downloadSize:v12 forLaunchDaemon:v13 != 0];
          v14 = self;
LABEL_23:

          goto LABEL_24;
        }

        v36 = [v4 error];

        if (!v36)
        {
          if ([v4 containsValueForKey:@"forLaunchDaemon"])
          {
            goto LABEL_8;
          }

          v37 = *MEMORY[0x277CCA450];
          v38 = @"Missing serialized value for TRIClientRolloutArtifact.forLaunchDaemon";
          v33 = MEMORY[0x277CBEAC0];
          v34 = &v38;
          v35 = &v37;
          goto LABEL_32;
        }

LABEL_22:
        v14 = 0;
        goto LABEL_23;
      }

      v27 = objc_opt_class();
      v19 = NSStringFromClass(v27);
      v28 = objc_opt_class();
      v20 = NSStringFromClass(v28);
      v21 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unarchived unexpected class for TRIClientRolloutArtifact key deploymentDate (expected %@, decoded %@)", v19, v20, 0];
      v41 = *MEMORY[0x277CCA450];
      v42 = v21;
      v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v42 forKeys:&v41 count:1];
      v29 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"TRIClientRolloutArtifactOCNTErrorDomain" code:3 userInfo:v22];
      [v4 failWithError:v29];
    }

    else
    {
      v17 = objc_opt_class();
      v11 = NSStringFromClass(v17);
      v18 = objc_opt_class();
      v19 = NSStringFromClass(v18);
      v20 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unarchived unexpected class for TRIClientRolloutArtifact key populations (expected %@, decoded %@)", v11, v19, 0];
      v45 = *MEMORY[0x277CCA450];
      v46 = v20;
      v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v46 forKeys:&v45 count:1];
      v22 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"TRIClientRolloutArtifactOCNTErrorDomain" code:3 userInfo:v21];
      [v4 failWithError:v22];
    }

LABEL_21:
    goto LABEL_22;
  }

  v15 = [v4 error];

  if (!v15)
  {
    v49 = *MEMORY[0x277CCA450];
    v50[0] = @"Retrieved nil serialized value for nonnull TRIClientRolloutArtifact.rollout";
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v50 forKeys:&v49 count:1];
    v11 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"TRIClientRolloutArtifactOCNTErrorDomain" code:2 userInfo:v9];
    [v4 failWithError:v11];
    goto LABEL_22;
  }

  v14 = 0;
LABEL_25:

  v30 = *MEMORY[0x277D85DE8];
  return v14;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  rollout = self->_rollout;
  v8 = v4;
  if (rollout)
  {
    [v4 encodeObject:rollout forKey:@"rollout"];
    v4 = v8;
  }

  populations = self->_populations;
  if (populations)
  {
    [v8 encodeObject:populations forKey:@"populations"];
    v4 = v8;
  }

  deploymentDate = self->_deploymentDate;
  if (deploymentDate)
  {
    [v8 encodeObject:deploymentDate forKey:@"deploymentDate"];
    v4 = v8;
  }

  [v4 encodeInt64:self->_downloadSize forKey:@"downloadSize"];
  [v8 encodeInt64:self->_forLaunchDaemon forKey:@"forLaunchDaemon"];
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v9 = *&self->_rollout;
  deploymentDate = self->_deploymentDate;
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_downloadSize];
  v6 = [MEMORY[0x277CCABB0] numberWithBool:self->_forLaunchDaemon];
  v7 = [v3 initWithFormat:@"<TRIClientRolloutArtifact | rollout:%@ populations:%@ deploymentDate:%@ downloadSize:%@ forLaunchDaemon:%@>", v9, deploymentDate, v5, v6];

  return v7;
}

@end