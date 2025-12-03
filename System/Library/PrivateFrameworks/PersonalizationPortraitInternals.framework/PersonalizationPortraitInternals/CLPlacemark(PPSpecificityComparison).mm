@interface CLPlacemark(PPSpecificityComparison)
- (uint64_t)pp_specificityCompare:()PPSpecificityComparison;
@end

@implementation CLPlacemark(PPSpecificityComparison)

- (uint64_t)pp_specificityCompare:()PPSpecificityComparison
{
  v79[6] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    name = [self name];
    if (name)
    {
      name2 = [self name];
    }

    else
    {
      name2 = &stru_284759D38;
    }

    v63 = name2;
    v79[0] = name2;
    subThoroughfare = [self subThoroughfare];
    if (subThoroughfare)
    {
      subThoroughfare2 = [self subThoroughfare];
    }

    else
    {
      subThoroughfare2 = &stru_284759D38;
    }

    v61 = subThoroughfare2;
    v79[1] = subThoroughfare2;
    thoroughfare = [self thoroughfare];
    if (thoroughfare)
    {
      thoroughfare2 = [self thoroughfare];
    }

    else
    {
      thoroughfare2 = &stru_284759D38;
    }

    v59 = thoroughfare2;
    v79[2] = thoroughfare2;
    subLocality = [self subLocality];
    if (subLocality)
    {
      subLocality2 = [self subLocality];
    }

    else
    {
      subLocality2 = &stru_284759D38;
    }

    v79[3] = subLocality2;
    locality = [self locality];
    if (locality)
    {
      locality2 = [self locality];
    }

    else
    {
      locality2 = &stru_284759D38;
    }

    v79[4] = locality2;
    administrativeArea = [self administrativeArea];
    if (administrativeArea)
    {
      administrativeArea2 = [self administrativeArea];
    }

    else
    {
      administrativeArea2 = &stru_284759D38;
    }

    v79[5] = administrativeArea2;
    v65 = [MEMORY[0x277CBEA60] arrayWithObjects:v79 count:6];
    if (administrativeArea)
    {
    }

    if (locality)
    {
    }

    if (subLocality)
    {
    }

    if (thoroughfare)
    {
    }

    if (subThoroughfare)
    {
    }

    if (name)
    {
    }

    name3 = [v4 name];
    if (name3)
    {
      name4 = [v4 name];
    }

    else
    {
      name4 = &stru_284759D38;
    }

    v62 = name4;
    v78[0] = name4;
    subThoroughfare3 = [v4 subThoroughfare];
    if (subThoroughfare3)
    {
      subThoroughfare4 = [v4 subThoroughfare];
    }

    else
    {
      subThoroughfare4 = &stru_284759D38;
    }

    v60 = subThoroughfare4;
    v78[1] = subThoroughfare4;
    thoroughfare3 = [v4 thoroughfare];
    if (thoroughfare3)
    {
      thoroughfare4 = [v4 thoroughfare];
    }

    else
    {
      thoroughfare4 = &stru_284759D38;
    }

    v64 = name3;
    v58 = thoroughfare4;
    v78[2] = thoroughfare4;
    subLocality3 = [v4 subLocality];
    if (subLocality3)
    {
      subLocality4 = [v4 subLocality];
    }

    else
    {
      subLocality4 = &stru_284759D38;
    }

    v78[3] = subLocality4;
    locality3 = [v4 locality];
    if (locality3)
    {
      locality4 = [v4 locality];
    }

    else
    {
      locality4 = &stru_284759D38;
    }

    v78[4] = locality4;
    administrativeArea3 = [v4 administrativeArea];
    if (administrativeArea3)
    {
      administrativeArea4 = [v4 administrativeArea];
    }

    else
    {
      administrativeArea4 = &stru_284759D38;
    }

    v78[5] = administrativeArea4;
    v30 = [MEMORY[0x277CBEA60] arrayWithObjects:v78 count:6];
    if (administrativeArea3)
    {
    }

    if (locality3)
    {
    }

    if (subLocality3)
    {
    }

    if (thoroughfare3)
    {
    }

    v31 = v30;
    if (subThoroughfare3)
    {
    }

    if (v64)
    {
    }

    v32 = [v65 count];
    if (v32 != [v30 count])
    {
      v33 = pp_default_log_handle();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_23224A000, v33, OS_LOG_TYPE_FAULT, "Number of fields used for specificity comparison should always be the same.", buf, 2u);
      }
    }

    v34 = [v65 count];
    v71 = 0u;
    v72 = 0u;
    v73 = 0u;
    v74 = 0u;
    v35 = v65;
    v36 = [v35 countByEnumeratingWithState:&v71 objects:v77 count:16];
    v37 = v34;
    if (v36)
    {
      v38 = v36;
      v39 = *v72;
      v40 = v34;
      while (2)
      {
        v41 = 0;
        v37 = v40 - v38;
        do
        {
          if (*v72 != v39)
          {
            objc_enumerationMutation(v35);
          }

          if (![*(*(&v71 + 1) + 8 * v41) isEqualToString:&stru_284759D38])
          {
            v37 = v40 - v41;
            goto LABEL_77;
          }

          ++v41;
        }

        while (v38 != v41);
        v38 = [v35 countByEnumeratingWithState:&v71 objects:v77 count:16];
        v40 = v37;
        if (v38)
        {
          continue;
        }

        break;
      }
    }

LABEL_77:
    v66 = v4;

    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    v42 = v31;
    v43 = [v42 countByEnumeratingWithState:&v67 objects:v76 count:16];
    v44 = v34;
    if (v43)
    {
      v45 = v43;
      v46 = *v68;
      v47 = v34;
      while (2)
      {
        v48 = 0;
        v44 = v47 - v45;
        do
        {
          if (*v68 != v46)
          {
            objc_enumerationMutation(v42);
          }

          if (![*(*(&v67 + 1) + 8 * v48) isEqualToString:&stru_284759D38])
          {
            v44 = v47 - v48;
            goto LABEL_87;
          }

          ++v48;
        }

        while (v45 != v48);
        v45 = [v42 countByEnumeratingWithState:&v67 objects:v76 count:16];
        v47 = v44;
        if (v45)
        {
          continue;
        }

        break;
      }
    }

LABEL_87:

    if (v37 >= v44)
    {
      v49 = v44;
    }

    else
    {
      v49 = v37;
    }

    v50 = v34 - v49 + 1;
    while (v34 >= v50)
    {
      v51 = [v35 objectAtIndexedSubscript:--v34];
      v52 = [v42 objectAtIndexedSubscript:v34];
      v53 = [v51 isEqualToString:v52];

      if ((v53 & 1) == 0)
      {
        v7 = 0;
        goto LABEL_95;
      }
    }

    v54 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v37];
    v55 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v44];
    v7 = [v54 compare:v55];

LABEL_95:
    v4 = v66;
  }

  else
  {
    v7 = 1;
  }

  v56 = *MEMORY[0x277D85DE8];
  return v7;
}

@end