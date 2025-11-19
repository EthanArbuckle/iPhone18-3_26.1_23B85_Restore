@interface PPTTLDeletionPolicy
+ (id)defaultPolicy;
- (BOOL)applyPolicyWithError:(id *)a3 shouldContinueBlock:(id)a4;
- (PPTTLDeletionPolicy)initWithRules:(id)a3 namedEntityStore:(id)a4 topicStore:(id)a5 locationStore:(id)a6;
- (id)description;
@end

@implementation PPTTLDeletionPolicy

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"<PPTTLDeletionPolicy rules.count: %tu>", -[NSArray count](self->_rules, "count")];

  return v2;
}

- (BOOL)applyPolicyWithError:(id *)a3 shouldContinueBlock:(id)a4
{
  v107 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v96 = 0u;
  v97 = 0u;
  v98 = 0u;
  v99 = 0u;
  v7 = [(NSArray *)self->_rules _pas_shuffledArrayUsingRng:0];
  v86 = [v7 countByEnumeratingWithState:&v96 objects:v100 count:16];
  if (!v86)
  {

    v9 = 0;
    v10 = 1;
    goto LABEL_89;
  }

  obj = v7;
  v9 = 0;
  v10 = 1;
  v87 = *v97;
  *&v8 = 138412546;
  v83 = v8;
  v88 = v6;
  v84 = a3;
  do
  {
    v11 = 0;
    do
    {
      if (*v97 != v87)
      {
        objc_enumerationMutation(obj);
      }

      v12 = *(*(&v96 + 1) + 8 * v11);
      context = objc_autoreleasePoolPush();
      if (!v6[2](v6))
      {
        v27 = v9;
LABEL_85:
        objc_autoreleasePoolPop(context);
        v9 = v27;
        v79 = v84;
        goto LABEL_86;
      }

      v13 = pp_default_log_handle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v102 = v12;
        _os_log_impl(&dword_23224A000, v13, OS_LOG_TYPE_DEFAULT, "PPMaintenance: TTLBasedDonationCleanup: Performing Named Entity cleanup for rule: %@", buf, 0xCu);
      }

      v14 = [v12 bundleIdentifier];
      if (v14)
      {

LABEL_12:
        v16 = [v12 bundleIdentifier];
        v17 = [v12 groupIdentifier];
        v18 = [v12 maxAgeSeconds];
        [v18 doubleValue];
        v20 = v19;
        v94 = v9;
        v21 = v16;
        v22 = v17;
        if (self)
        {
          v23 = objc_opt_new();
          v24 = [v23 dateByAddingTimeInterval:-v20];

          v25 = [(PPLocalNamedEntityStore *)self->_namedEntityStore deleteAllNamedEntitiesFromSourcesWithBundleId:v21 groupId:v22 olderThan:v24 deletedCount:0 error:&v94];
          if (!v25)
          {
            v26 = pp_default_log_handle();
            if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412802;
              v102 = v21;
              v103 = 2112;
              v104 = v22;
              v105 = 2112;
              v106 = v94;
              _os_log_error_impl(&dword_23224A000, v26, OS_LOG_TYPE_ERROR, "PPMaintenance failed to age-out named entity extractions from %@ with groupId %@: %@", buf, 0x20u);
            }

            v6 = v88;
          }
        }

        else
        {
          v25 = 0;
        }

        v27 = v94;
        if (!v25)
        {
          goto LABEL_80;
        }

        goto LABEL_19;
      }

      v15 = [v12 groupIdentifier];

      if (v15)
      {
        goto LABEL_12;
      }

      v56 = [v12 maxAgeSeconds];
      [v56 doubleValue];
      v95 = v9;
      if (self)
      {
        v58 = v57;
        v59 = objc_opt_new();
        v60 = [v59 dateByAddingTimeInterval:-v58];

        v61 = [(PPLocalNamedEntityStore *)self->_namedEntityStore deleteAllNamedEntitiesOlderThanDate:v60 deletedCount:0 error:&v95];
        if (!v61)
        {
          v62 = pp_default_log_handle();
          if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
          {
            *buf = v83;
            v102 = v60;
            v103 = 2112;
            v104 = v95;
            _os_log_error_impl(&dword_23224A000, v62, OS_LOG_TYPE_ERROR, "PPMaintenance failed to age-out named entity extractions older than %@: %@", buf, 0x16u);
          }
        }

        v63 = v95;
      }

      else
      {
        v61 = 0;
        v63 = v9;
      }

      v27 = v63;

      if (!v61)
      {
LABEL_80:
        v10 = 0;
        goto LABEL_85;
      }

LABEL_19:
      if (!v6[2](v6))
      {
        v10 = 1;
        goto LABEL_85;
      }

      v28 = pp_default_log_handle();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v102 = v12;
        _os_log_impl(&dword_23224A000, v28, OS_LOG_TYPE_DEFAULT, "PPMaintenance: TTLBasedDonationCleanup: Performing Topic cleanup for rule: %@", buf, 0xCu);
      }

      v29 = [v12 bundleIdentifier];
      if (v29)
      {

LABEL_25:
        v31 = [v12 bundleIdentifier];
        v32 = [v12 groupIdentifier];
        v33 = [v12 maxAgeSeconds];
        [v33 doubleValue];
        v35 = v34;
        v92 = v27;
        v36 = v31;
        if (self)
        {
          v37 = v32;
          v38 = objc_opt_new();
          v39 = [v38 dateByAddingTimeInterval:-v35];

          v40 = [(PPLocalTopicStore *)self->_topicStore deleteAllTopicsFromSourcesWithBundleId:v36 groupId:v37 olderThan:v39 deletedCount:0 error:&v92];
          if (!v40)
          {
            v41 = pp_default_log_handle();
            if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
            {
              *buf = v83;
              v102 = v36;
              v103 = 2112;
              v104 = v92;
              _os_log_error_impl(&dword_23224A000, v41, OS_LOG_TYPE_ERROR, "PPMaintenance failed to age-out topic extractions from %@: %@", buf, 0x16u);
            }
          }
        }

        else
        {
          v40 = 0;
        }

        v42 = v92;
        v6 = v88;
        if (!v40)
        {
          goto LABEL_82;
        }

        goto LABEL_32;
      }

      v30 = [v12 groupIdentifier];

      if (v30)
      {
        goto LABEL_25;
      }

      v64 = [v12 maxAgeSeconds];
      [v64 doubleValue];
      v93 = v27;
      if (self)
      {
        v66 = v65;
        v67 = objc_opt_new();
        v68 = [v67 dateByAddingTimeInterval:-v66];

        v69 = [(PPLocalTopicStore *)self->_topicStore deleteAllTopicsOlderThanDate:v68 deletedCount:0 error:&v93];
        if (!v69)
        {
          v70 = pp_default_log_handle();
          if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
          {
            *buf = v83;
            v102 = v68;
            v103 = 2112;
            v104 = v93;
            _os_log_error_impl(&dword_23224A000, v70, OS_LOG_TYPE_ERROR, "PPMaintenance failed to age-out topic extractions older than %@: %@", buf, 0x16u);
          }
        }

        v71 = v93;
      }

      else
      {
        v69 = 0;
        v71 = v27;
      }

      v42 = v71;

      if (!v69)
      {
LABEL_82:
        v10 = 0;
LABEL_84:
        v27 = v42;
        goto LABEL_85;
      }

LABEL_32:
      if (!v6[2](v6))
      {
        v10 = 1;
        goto LABEL_84;
      }

      v43 = pp_default_log_handle();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v102 = v12;
        _os_log_impl(&dword_23224A000, v43, OS_LOG_TYPE_DEFAULT, "PPMaintenance: TTLBasedDonationCleanup: Performing Location cleanup for rule: %@", buf, 0xCu);
      }

      v44 = [v12 bundleIdentifier];
      if (v44)
      {

LABEL_38:
        v46 = [v12 bundleIdentifier];
        v47 = [v12 groupIdentifier];
        v48 = [v12 maxAgeSeconds];
        [v48 doubleValue];
        v50 = v49;
        v90 = v42;
        v51 = v46;
        v52 = v47;
        if (self)
        {
          v53 = objc_opt_new();
          v54 = [v53 dateByAddingTimeInterval:-v50];

          v10 = [(PPLocalLocationStore *)self->_locationStore deleteAllLocationsFromSourcesWithBundleId:v51 groupId:v52 olderThan:v54 deletedCount:0 error:&v90];
          if (!v10)
          {
            v55 = pp_default_log_handle();
            if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412802;
              v102 = v51;
              v103 = 2112;
              v104 = v52;
              v105 = 2112;
              v106 = v90;
              _os_log_error_impl(&dword_23224A000, v55, OS_LOG_TYPE_ERROR, "PPMaintenance failed to age-out location extractions from %@ with groupId %@: %@", buf, 0x20u);
            }
          }
        }

        else
        {
          v10 = 0;
        }

        v9 = v90;
        v42 = v52;
        goto LABEL_45;
      }

      v45 = [v12 groupIdentifier];

      if (v45)
      {
        goto LABEL_38;
      }

      v51 = [v12 maxAgeSeconds];
      [v51 doubleValue];
      v91 = v42;
      if (self)
      {
        v73 = v72;
        v74 = objc_opt_new();
        v75 = [v74 dateByAddingTimeInterval:-v73];

        v10 = [(PPLocalLocationStore *)self->_locationStore deleteAllLocationsOlderThanDate:v75 deletedCount:0 error:&v91];
        if (!v10)
        {
          v76 = pp_default_log_handle();
          if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
          {
            *buf = v83;
            v102 = v75;
            v103 = 2112;
            v104 = v91;
            _os_log_error_impl(&dword_23224A000, v76, OS_LOG_TYPE_ERROR, "PPMaintenance failed to age-out location extractions older than %@: %@", buf, 0x16u);
          }
        }

        v77 = v91;
      }

      else
      {
        v10 = 0;
        v77 = v42;
      }

      v9 = v77;
LABEL_45:

      objc_autoreleasePoolPop(context);
      ++v11;
    }

    while (v86 != v11);
    v78 = [obj countByEnumeratingWithState:&v96 objects:v100 count:16];
    v79 = v84;
    v86 = v78;
  }

  while (v78);
LABEL_86:

  if (v79 && !v10)
  {
    v80 = v9;
    v10 = 0;
    *v79 = v9;
  }

LABEL_89:

  v81 = *MEMORY[0x277D85DE8];
  return v10;
}

- (PPTTLDeletionPolicy)initWithRules:(id)a3 namedEntityStore:(id)a4 topicStore:(id)a5 locationStore:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = PPTTLDeletionPolicy;
  v15 = [(PPTTLDeletionPolicy *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_rules, a3);
    objc_storeStrong(&v16->_namedEntityStore, a4);
    objc_storeStrong(&v16->_topicStore, a5);
    objc_storeStrong(&v16->_locationStore, a6);
  }

  return v16;
}

+ (id)defaultPolicy
{
  v33[11] = *MEMORY[0x277D85DE8];
  v32 = [[PPTTLDeletionPolicyRule alloc] initWithBundleIdentifier:0 groupIdentifier:0 maxAgeSeconds:&unk_2847860C0];
  v33[0] = v32;
  v2 = [PPTTLDeletionPolicyRule alloc];
  v31 = [(PPTTLDeletionPolicyRule *)v2 initWithBundleIdentifier:*MEMORY[0x277D3A6A8] groupIdentifier:*MEMORY[0x277D3A728] maxAgeSeconds:&unk_2847860D0];
  v33[1] = v31;
  v3 = [PPTTLDeletionPolicyRule alloc];
  v4 = *MEMORY[0x277D3A680];
  v5 = *MEMORY[0x277D3A720];
  v6 = [(PPTTLDeletionPolicyRule *)v3 initWithBundleIdentifier:*MEMORY[0x277D3A680] groupIdentifier:*MEMORY[0x277D3A720] maxAgeSeconds:&unk_2847860E0];
  v33[2] = v6;
  v7 = [PPTTLDeletionPolicyRule alloc];
  v8 = [(PPTTLDeletionPolicyRule *)v7 initWithBundleIdentifier:*MEMORY[0x277D3A5F8] groupIdentifier:v5 maxAgeSeconds:&unk_2847860E0];
  v33[3] = v8;
  v9 = [PPTTLDeletionPolicyRule alloc];
  v10 = [(PPTTLDeletionPolicyRule *)v9 initWithBundleIdentifier:v4 groupIdentifier:*MEMORY[0x277D3A718] maxAgeSeconds:&unk_2847860D0];
  v33[4] = v10;
  v11 = [PPTTLDeletionPolicyRule alloc];
  v12 = [(PPTTLDeletionPolicyRule *)v11 initWithBundleIdentifier:*MEMORY[0x277D3A678] groupIdentifier:0 maxAgeSeconds:&unk_2847860D0];
  v33[5] = v12;
  v13 = [PPTTLDeletionPolicyRule alloc];
  v14 = [(PPTTLDeletionPolicyRule *)v13 initWithBundleIdentifier:*MEMORY[0x277D3A688] groupIdentifier:0 maxAgeSeconds:&unk_2847860D0];
  v33[6] = v14;
  v15 = [PPTTLDeletionPolicyRule alloc];
  v16 = [(PPTTLDeletionPolicyRule *)v15 initWithBundleIdentifier:@"PortraitBundleIdWildCardMatchingAll" groupIdentifier:*MEMORY[0x277D3A700] maxAgeSeconds:&unk_2847860D0];
  v33[7] = v16;
  v17 = [PPTTLDeletionPolicyRule alloc];
  v18 = [(PPTTLDeletionPolicyRule *)v17 initWithBundleIdentifier:@"PortraitBundleIdWildCardMatchingAll" groupIdentifier:*MEMORY[0x277D3A708] maxAgeSeconds:&unk_2847860D0];
  v33[8] = v18;
  v19 = [PPTTLDeletionPolicyRule alloc];
  v20 = [(PPTTLDeletionPolicyRule *)v19 initWithBundleIdentifier:*MEMORY[0x277D3A618] groupIdentifier:*MEMORY[0x277D3A6E8] maxAgeSeconds:&unk_2847860D0];
  v33[9] = v20;
  v21 = [PPTTLDeletionPolicyRule alloc];
  v22 = [(PPTTLDeletionPolicyRule *)v21 initWithBundleIdentifier:*MEMORY[0x277D3A650] groupIdentifier:0 maxAgeSeconds:&unk_2847860D0];
  v33[10] = v22;
  v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:11];

  v24 = +[PPLocalNamedEntityStore defaultStore];
  v25 = +[PPLocalTopicStore defaultStore];
  v26 = +[PPLocalLocationStore defaultStore];
  v27 = v26;
  v28 = 0;
  if (v24 && v25 && v26)
  {
    v28 = [[PPTTLDeletionPolicy alloc] initWithRules:v23 namedEntityStore:v24 topicStore:v25 locationStore:v26];
  }

  v29 = *MEMORY[0x277D85DE8];

  return v28;
}

@end