@interface PPMeCardCache
- (BOOL)deleteMeCardCache;
- (BOOL)writeMeCardCache:(id)a3;
- (id)_cachedDateComponentsFromDateComponents:(void *)a1;
- (id)_dateComponentsFromCachedDateComponents:(void *)a1;
- (id)loadMeCardCache;
@end

@implementation PPMeCardCache

- (BOOL)deleteMeCardCache
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCAA00] defaultManager];
  v4 = [v3 fileExistsAtPath:self->_path];

  if (v4)
  {
    v5 = [MEMORY[0x277CCAA00] defaultManager];
    path = self->_path;
    v14 = 0;
    v7 = [v5 removeItemAtPath:path error:&v14];
    v8 = v14;

    if (v7)
    {
      v9 = 1;
    }

    else
    {
      v10 = pp_contacts_log_handle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v13 = self->_path;
        *buf = 138412546;
        v16 = v13;
        v17 = 2112;
        v18 = v8;
        _os_log_error_impl(&dword_23224A000, v10, OS_LOG_TYPE_ERROR, "failed to delete me card cache at: %@ error: %@", buf, 0x16u);
      }

      v9 = 0;
    }
  }

  else
  {
    v8 = pp_contacts_log_handle();
    v9 = 1;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_23224A000, v8, OS_LOG_TYPE_INFO, "went to delete Me card cache but file was missing", buf, 2u);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
  return v9;
}

- (BOOL)writeMeCardCache:(id)a3
{
  v128 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (!v5)
  {
    v95 = [MEMORY[0x277CCA890] currentHandler];
    [v95 handleFailureInMethod:a2 object:self file:@"PPMeCardCache.m" lineNumber:225 description:{@"Invalid parameter not satisfying: %@", @"meCardCache"}];
  }

  v97 = self;
  context = objc_autoreleasePoolPush();
  v6 = objc_opt_new();
  v7 = objc_opt_new();
  [v7 timeIntervalSinceReferenceDate];
  [v6 setCreatedAt:v8];

  v9 = [v5 identifier];
  [v6 setIdentifier:v9];

  v10 = [v5 givenName];
  [v6 setGivenName:v10];

  v11 = [v5 middleName];
  [v6 setMiddleName:v11];

  v12 = [v5 familyName];
  [v6 setFamilyName:v12];

  v13 = [v5 nickname];
  [v6 setNickname:v13];

  v14 = [v5 organizationName];
  [v6 setOrganizationName:v14];

  v15 = [v5 namePrefix];
  [v6 setNamePrefix:v15];

  v16 = [v5 nameSuffix];
  v98 = v6;
  [v6 setNameSuffix:v16];

  v17 = objc_opt_new();
  v116 = 0u;
  v117 = 0u;
  v118 = 0u;
  v119 = 0u;
  v99 = v5;
  v18 = [v5 phoneNumbers];
  v19 = [v18 countByEnumeratingWithState:&v116 objects:v127 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v117;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v117 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v116 + 1) + 8 * i);
        v24 = objc_autoreleasePoolPush();
        v25 = objc_opt_new();
        v26 = [v23 label];
        [v25 setLabel:v26];

        v27 = [v23 value];
        [v25 setValue:v27];

        [v17 addObject:v25];
        objc_autoreleasePoolPop(v24);
      }

      v20 = [v18 countByEnumeratingWithState:&v116 objects:v127 count:16];
    }

    while (v20);
  }

  [v98 setPhoneNumbers:v17];
  v28 = objc_opt_new();
  v112 = 0u;
  v113 = 0u;
  v114 = 0u;
  v115 = 0u;
  v29 = [v5 emailAddresses];
  v30 = [v29 countByEnumeratingWithState:&v112 objects:v126 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v113;
    do
    {
      for (j = 0; j != v31; ++j)
      {
        if (*v113 != v32)
        {
          objc_enumerationMutation(v29);
        }

        v34 = *(*(&v112 + 1) + 8 * j);
        v35 = objc_autoreleasePoolPush();
        v36 = objc_opt_new();
        v37 = [v34 label];
        [v36 setLabel:v37];

        v38 = [v34 value];
        [v36 setValue:v38];

        [v28 addObject:v36];
        objc_autoreleasePoolPop(v35);
      }

      v31 = [v29 countByEnumeratingWithState:&v112 objects:v126 count:16];
    }

    while (v31);
  }

  [v98 setEmailAddresses:v28];
  v102 = objc_opt_new();
  v108 = 0u;
  v109 = 0u;
  v110 = 0u;
  v111 = 0u;
  obj = [v5 postalAddresses];
  v39 = [obj countByEnumeratingWithState:&v108 objects:v125 count:16];
  if (v39)
  {
    v40 = v39;
    v101 = *v109;
    do
    {
      for (k = 0; k != v40; ++k)
      {
        if (*v109 != v101)
        {
          objc_enumerationMutation(obj);
        }

        v42 = *(*(&v108 + 1) + 8 * k);
        v43 = objc_autoreleasePoolPush();
        v44 = objc_opt_new();
        v45 = [v42 label];
        [v44 setLabel:v45];

        v46 = [v42 value];
        v47 = [v46 thoroughfare];
        if ([v47 length])
        {
          v48 = [v42 value];
          v49 = [v48 subThoroughfare];
          v50 = [v49 length];

          if (v50)
          {
            v51 = objc_alloc(MEMORY[0x277CCACA8]);
            v52 = [v42 value];
            v53 = [v52 thoroughfare];
            v54 = [v42 value];
            v55 = [v54 subThoroughfare];
            v56 = [v51 initWithFormat:@"%@\n%@", v53, v55, context];
            [v44 setStreet:v56];

            goto LABEL_27;
          }
        }

        else
        {
        }

        v52 = [v42 value];
        v53 = [v52 thoroughfare];
        [v44 setStreet:v53];
LABEL_27:

        v57 = [v42 value];
        v58 = [v57 subLocality];
        [v44 setSubLocality:v58];

        v59 = [v42 value];
        v60 = [v59 locality];
        [v44 setCity:v60];

        v61 = [v42 value];
        v62 = [v61 subAdministrativeArea];
        [v44 setSubAdministrativeArea:v62];

        v63 = [v42 value];
        v64 = [v63 administrativeArea];
        [v44 setState:v64];

        v65 = [v42 value];
        v66 = [v65 postalCode];
        [v44 setPostalCode:v66];

        v67 = [v42 value];
        v68 = [v67 country];
        [v44 setCountry:v68];

        [v102 addObject:v44];
        objc_autoreleasePoolPop(v43);
      }

      v40 = [obj countByEnumeratingWithState:&v108 objects:v125 count:16];
    }

    while (v40);
  }

  [v98 setPostalAddresses:v102];
  v69 = objc_opt_new();
  v104 = 0u;
  v105 = 0u;
  v106 = 0u;
  v107 = 0u;
  v70 = [v99 socialProfiles];
  v71 = [v70 countByEnumeratingWithState:&v104 objects:v124 count:16];
  if (v71)
  {
    v72 = v71;
    v73 = *v105;
    do
    {
      for (m = 0; m != v72; ++m)
      {
        if (*v105 != v73)
        {
          objc_enumerationMutation(v70);
        }

        v75 = *(*(&v104 + 1) + 8 * m);
        v76 = objc_autoreleasePoolPush();
        v77 = objc_opt_new();
        v78 = [v75 label];
        [v77 setLabel:v78];

        v79 = [v75 value];
        [v77 setUsername:v79];

        v80 = [v75 label];
        [v77 setService:v80];

        [v69 addObject:v77];
        objc_autoreleasePoolPop(v76);
      }

      v72 = [v70 countByEnumeratingWithState:&v104 objects:v124 count:16];
    }

    while (v72);
  }

  [v98 setSocialProfiles:v69];
  v81 = [v99 birthday];

  if (v81)
  {
    v82 = [v99 birthday];
    v83 = [(PPMeCardCache *)v97 _cachedDateComponentsFromDateComponents:v82];
    [v98 setBirthday:v83];
  }

  v84 = [v99 nonGregorianBirthday];

  if (v84)
  {
    v85 = [v99 nonGregorianBirthday];
    v86 = [(PPMeCardCache *)v97 _cachedDateComponentsFromDateComponents:v85];
    [v98 setNonGregorianBirthday:v86];
  }

  v87 = [v98 data];
  path = v97->_path;
  v103 = 0;
  v89 = [v87 writeToFile:path options:1073741825 error:&v103];
  v90 = v103;

  if ((v89 & 1) == 0)
  {
    v91 = pp_contacts_log_handle();
    if (os_log_type_enabled(v91, OS_LOG_TYPE_ERROR))
    {
      v94 = v97->_path;
      *buf = 138412546;
      v121 = v94;
      v122 = 2112;
      v123 = v90;
      _os_log_error_impl(&dword_23224A000, v91, OS_LOG_TYPE_ERROR, "failed to write me card cache at: %@ error: %@", buf, 0x16u);
    }
  }

  objc_autoreleasePoolPop(context);
  v92 = *MEMORY[0x277D85DE8];
  return v89;
}

- (id)_cachedDateComponentsFromDateComponents:(void *)a1
{
  v3 = a2;
  if (a1)
  {
    a1 = objc_opt_new();
    if ([v3 day] != 0x7FFFFFFFFFFFFFFFLL)
    {
      [a1 setDay:{objc_msgSend(v3, "day")}];
    }

    if ([v3 month] != 0x7FFFFFFFFFFFFFFFLL)
    {
      [a1 setMonth:{objc_msgSend(v3, "month")}];
    }

    if ([v3 year] != 0x7FFFFFFFFFFFFFFFLL)
    {
      [a1 setYear:{objc_msgSend(v3, "year")}];
    }

    v4 = [v3 calendar];
    v5 = [v4 calendarIdentifier];
    [a1 setCalendarIdentifier:v5];

    v6 = [v3 timeZone];
    v7 = [v6 name];
    [a1 setTimeZoneName:v7];
  }

  return a1;
}

- (id)loadMeCardCache
{
  v148 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = [MEMORY[0x277CCAA00] defaultManager];
  v5 = [v4 fileExistsAtPath:self->_path];

  v6 = pp_contacts_log_handle();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
  if (v5)
  {
    if (v7)
    {
      path = self->_path;
      *buf = 138412290;
      v145 = path;
      _os_log_impl(&dword_23224A000, v6, OS_LOG_TYPE_INFO, "PPPB: loading Me card cache from: %@", buf, 0xCu);
    }

    v9 = objc_alloc(MEMORY[0x277CBEA90]);
    v10 = self->_path;
    v139 = 0;
    v11 = [v9 initWithContentsOfFile:v10 options:1 error:&v139];
    v6 = v139;
    if (!v11)
    {
      p_super = pp_contacts_log_handle();
      if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT))
      {
        v21 = self->_path;
        *buf = 138412546;
        v145 = v21;
        v146 = 2112;
        v147 = v6;
        _os_log_impl(&dword_23224A000, p_super, OS_LOG_TYPE_DEFAULT, "PPPB: failed to read %@: error: %@", buf, 0x16u);
      }

      v20 = 0;
      goto LABEL_82;
    }

    v12 = [[PPPBContact alloc] initWithData:v11];
    p_super = &v12->super.super;
    if (v12)
    {
      if ([(PPPBContact *)v12 hasCreatedAt])
      {
        v14 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceNow:-1209600.0];
        v15 = [p_super createdAt];
        [v14 timeIntervalSinceReferenceDate];
        if (v16 > v15)
        {
          v17 = pp_contacts_log_handle();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
          {
            v18 = [p_super createdAt];
            *buf = 134217984;
            v145 = v18;
            _os_log_impl(&dword_23224A000, v17, OS_LOG_TYPE_INFO, "PPPB: aging out me card cache due to age: %lld", buf, 0xCu);
          }

          [(PPMeCardCache *)self deleteMeCardCache];
        }
      }

      else
      {
        [(PPMeCardCache *)self deleteMeCardCache];
      }

      if ([p_super hasIdentifier])
      {
        v24 = [p_super identifier];
        if (v24)
        {
          v25 = v24;
          v26 = [p_super identifier];
          v27 = [v26 length];

          if (v27)
          {
            v105 = v11;
            v106 = v6;
            v107 = v3;
            v108 = p_super;
            v109 = objc_opt_new();
            v135 = 0u;
            v136 = 0u;
            v137 = 0u;
            v138 = 0u;
            v28 = [p_super phoneNumbers];
            v29 = [v28 countByEnumeratingWithState:&v135 objects:v143 count:16];
            if (v29)
            {
              v30 = v29;
              v31 = *v136;
              do
              {
                for (i = 0; i != v30; ++i)
                {
                  if (*v136 != v31)
                  {
                    objc_enumerationMutation(v28);
                  }

                  v33 = *(*(&v135 + 1) + 8 * i);
                  v34 = objc_autoreleasePoolPush();
                  v35 = [v33 value];
                  v36 = [v35 length];

                  if (v36)
                  {
                    v37 = MEMORY[0x277D3A3D0];
                    v38 = [v33 label];
                    v39 = [v33 value];
                    v40 = [v37 labeledValueWithLabel:v38 value:v39];

                    if (v40)
                    {
                      [v109 addObject:v40];
                    }
                  }

                  objc_autoreleasePoolPop(v34);
                }

                v30 = [v28 countByEnumeratingWithState:&v135 objects:v143 count:16];
              }

              while (v30);
            }

            v110 = objc_opt_new();
            v131 = 0u;
            v132 = 0u;
            v133 = 0u;
            v134 = 0u;
            v41 = [v108 emailAddresses];
            v42 = [v41 countByEnumeratingWithState:&v131 objects:v142 count:16];
            if (v42)
            {
              v43 = v42;
              v44 = *v132;
              do
              {
                for (j = 0; j != v43; ++j)
                {
                  if (*v132 != v44)
                  {
                    objc_enumerationMutation(v41);
                  }

                  v46 = *(*(&v131 + 1) + 8 * j);
                  v47 = objc_autoreleasePoolPush();
                  v48 = [v46 value];
                  v49 = [v48 length];

                  if (v49)
                  {
                    v50 = MEMORY[0x277D3A3D0];
                    v51 = [v46 label];
                    v52 = [v46 value];
                    v53 = [v50 labeledValueWithLabel:v51 value:v52];

                    if (v53)
                    {
                      [v110 addObject:v53];
                    }
                  }

                  objc_autoreleasePoolPop(v47);
                }

                v43 = [v41 countByEnumeratingWithState:&v131 objects:v142 count:16];
              }

              while (v43);
            }

            v103 = self;

            v112 = objc_opt_new();
            v127 = 0u;
            v128 = 0u;
            v129 = 0u;
            v130 = 0u;
            obj = [v108 postalAddresses];
            v115 = [obj countByEnumeratingWithState:&v127 objects:v141 count:16];
            if (v115)
            {
              v113 = *v128;
              do
              {
                for (k = 0; k != v115; ++k)
                {
                  if (*v128 != v113)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v55 = *(*(&v127 + 1) + 8 * k);
                  context = objc_autoreleasePoolPush();
                  v56 = [v55 street];
                  v57 = [v56 componentsSeparatedByString:@"\n"];

                  if ([v57 count] == 2)
                  {
                    v121 = [v57 objectAtIndexedSubscript:0];
                    v119 = [v57 objectAtIndexedSubscript:1];
                  }

                  else
                  {
                    [v55 street];
                    v121 = v119 = 0;
                  }

                  if ([v55 hasCountry])
                  {
                    v58 = [v55 country];
LABEL_58:
                    v59 = v58;
                    goto LABEL_60;
                  }

                  if ([v55 hasIsoCountryCode])
                  {
                    v58 = [v55 isoCountryCode];
                    goto LABEL_58;
                  }

                  v59 = 0;
LABEL_60:
                  v60 = objc_alloc(MEMORY[0x277D3A460]);
                  v61 = [v55 city];
                  v62 = [v55 subLocality];
                  v63 = [v55 state];
                  v64 = [v55 subAdministrativeArea];
                  v65 = [v55 postalCode];
                  v66 = [v60 initWithThoroughfare:v121 subThoroughfare:v119 locality:v61 subLocality:v62 administrativeArea:v63 subAdministrativeArea:v64 postalCode:v65 country:v59];

                  v67 = MEMORY[0x277D3A3D0];
                  v68 = [v55 label];
                  v69 = [v67 labeledValueWithLabel:v68 value:v66];

                  if (v69)
                  {
                    [v112 addObject:v69];
                  }

                  objc_autoreleasePoolPop(context);
                }

                v115 = [obj countByEnumeratingWithState:&v127 objects:v141 count:16];
              }

              while (v115);
            }

            v70 = objc_opt_new();
            v123 = 0u;
            v124 = 0u;
            v125 = 0u;
            v126 = 0u;
            v71 = [v108 socialProfiles];
            v72 = [v71 countByEnumeratingWithState:&v123 objects:v140 count:16];
            if (v72)
            {
              v73 = v72;
              v74 = *v124;
              do
              {
                for (m = 0; m != v73; ++m)
                {
                  if (*v124 != v74)
                  {
                    objc_enumerationMutation(v71);
                  }

                  v76 = *(*(&v123 + 1) + 8 * m);
                  v77 = objc_autoreleasePoolPush();
                  v78 = [v76 username];
                  v79 = [v78 length];

                  if (v79)
                  {
                    v80 = MEMORY[0x277D3A3D0];
                    v81 = [v76 label];
                    v82 = [v76 username];
                    v83 = [v80 labeledValueWithLabel:v81 value:v82];

                    if (v83)
                    {
                      [v70 addObject:v83];
                    }
                  }

                  objc_autoreleasePoolPop(v77);
                }

                v73 = [v71 countByEnumeratingWithState:&v123 objects:v140 count:16];
              }

              while (v73);
            }

            v116 = objc_alloc(MEMORY[0x277D3A358]);
            v84 = [v108 identifier];
            v85 = [v108 namePrefix];
            v86 = [v108 givenName];
            v87 = [v108 middleName];
            v88 = [v108 familyName];
            v89 = [v108 nameSuffix];
            v90 = [v108 nickname];
            v122 = [v108 organizationName];
            v114 = [v108 hasBirthday];
            if (v114)
            {
              [v108 birthday];
              obj = v91 = v103;
              v120 = [(PPMeCardCache *)v103 _dateComponentsFromCachedDateComponents:?];
            }

            else
            {
              v120 = 0;
              v91 = v103;
            }

            contexta = v90;
            if (([v108 hasNonGregorianBirthday]& 1) != 0)
            {
              v104 = [v108 nonGregorianBirthday];
              v94 = [(PPMeCardCache *)v91 _dateComponentsFromCachedDateComponents:v104];
              v95 = v90;
              v96 = v89;
              v97 = v88;
              v98 = v87;
              v99 = v86;
              v100 = v85;
              v101 = v84;
              v102 = v94;
              v22 = v109;
              v20 = [v116 initWithIdentifier:v101 source:1 namePrefix:v100 givenName:v99 middleName:v98 familyName:v97 nameSuffix:v96 nickname:v95 localizedFullName:0 organizationName:v122 jobTitle:0 birthday:v120 nonGregorianBirthday:v94 phoneNumbers:v109 emailAddresses:v110 socialProfiles:v70 postalAddresses:v112];

              v84 = v101;
              v85 = v100;
              v86 = v99;
              v87 = v98;
              v88 = v97;
              v89 = v96;
            }

            else
            {
              v22 = v109;
              v20 = [v116 initWithIdentifier:v84 source:1 namePrefix:v85 givenName:v86 middleName:v87 familyName:v88 nameSuffix:v89 nickname:v90 localizedFullName:0 organizationName:v122 jobTitle:0 birthday:v120 nonGregorianBirthday:0 phoneNumbers:v109 emailAddresses:v110 socialProfiles:v70 postalAddresses:v112];
            }

            v3 = v107;
            if (v114)
            {
            }

            v11 = v105;
            v6 = v106;
            p_super = v108;
            goto LABEL_81;
          }
        }
      }

      [(PPMeCardCache *)self deleteMeCardCache];
      v22 = pp_contacts_log_handle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v23 = "PPPB: malformed me card cache (missing identifier)";
        goto LABEL_79;
      }
    }

    else
    {
      [(PPMeCardCache *)self deleteMeCardCache];
      v22 = pp_contacts_log_handle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v23 = "PPPB: malformed me card cache (PPPBContact initialization failed)";
LABEL_79:
        _os_log_impl(&dword_23224A000, v22, OS_LOG_TYPE_DEFAULT, v23, buf, 2u);
      }
    }

    v20 = 0;
LABEL_81:

LABEL_82:
    goto LABEL_83;
  }

  if (v7)
  {
    v19 = self->_path;
    *buf = 138412290;
    v145 = v19;
    _os_log_impl(&dword_23224A000, v6, OS_LOG_TYPE_INFO, "PPPB: No Me card cache at: %@", buf, 0xCu);
  }

  v20 = 0;
LABEL_83:

  objc_autoreleasePoolPop(v3);
  v92 = *MEMORY[0x277D85DE8];

  return v20;
}

- (id)_dateComponentsFromCachedDateComponents:(void *)a1
{
  v3 = a2;
  if (a1)
  {
    a1 = objc_opt_new();
    if ([v3 hasDay])
    {
      [a1 setDay:{objc_msgSend(v3, "day")}];
    }

    if ([v3 hasMonth])
    {
      [a1 setMonth:{objc_msgSend(v3, "month")}];
    }

    if ([v3 hasYear])
    {
      [a1 setYear:{objc_msgSend(v3, "year")}];
    }

    if ([v3 hasCalendarIdentifier])
    {
      v4 = MEMORY[0x277CBEA80];
      v5 = [v3 calendarIdentifier];
      v6 = [v4 calendarWithIdentifier:v5];
      [a1 setCalendar:v6];
    }

    if ([v3 hasTimeZoneName])
    {
      v7 = MEMORY[0x277CBEBB0];
      v8 = [v3 timeZoneName];
      v9 = [v7 timeZoneWithName:v8];
      [a1 setTimeZone:v9];
    }
  }

  return a1;
}

@end