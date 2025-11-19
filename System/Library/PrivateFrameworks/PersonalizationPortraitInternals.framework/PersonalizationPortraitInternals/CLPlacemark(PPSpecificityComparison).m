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
    v5 = [a1 name];
    if (v5)
    {
      v6 = [a1 name];
    }

    else
    {
      v6 = &stru_284759D38;
    }

    v63 = v6;
    v79[0] = v6;
    v8 = [a1 subThoroughfare];
    if (v8)
    {
      v9 = [a1 subThoroughfare];
    }

    else
    {
      v9 = &stru_284759D38;
    }

    v61 = v9;
    v79[1] = v9;
    v10 = [a1 thoroughfare];
    if (v10)
    {
      v11 = [a1 thoroughfare];
    }

    else
    {
      v11 = &stru_284759D38;
    }

    v59 = v11;
    v79[2] = v11;
    v12 = [a1 subLocality];
    if (v12)
    {
      v13 = [a1 subLocality];
    }

    else
    {
      v13 = &stru_284759D38;
    }

    v79[3] = v13;
    v14 = [a1 locality];
    if (v14)
    {
      v15 = [a1 locality];
    }

    else
    {
      v15 = &stru_284759D38;
    }

    v79[4] = v15;
    v16 = [a1 administrativeArea];
    if (v16)
    {
      v17 = [a1 administrativeArea];
    }

    else
    {
      v17 = &stru_284759D38;
    }

    v79[5] = v17;
    v65 = [MEMORY[0x277CBEA60] arrayWithObjects:v79 count:6];
    if (v16)
    {
    }

    if (v14)
    {
    }

    if (v12)
    {
    }

    if (v10)
    {
    }

    if (v8)
    {
    }

    if (v5)
    {
    }

    v18 = [v4 name];
    if (v18)
    {
      v19 = [v4 name];
    }

    else
    {
      v19 = &stru_284759D38;
    }

    v62 = v19;
    v78[0] = v19;
    v20 = [v4 subThoroughfare];
    if (v20)
    {
      v21 = [v4 subThoroughfare];
    }

    else
    {
      v21 = &stru_284759D38;
    }

    v60 = v21;
    v78[1] = v21;
    v22 = [v4 thoroughfare];
    if (v22)
    {
      v23 = [v4 thoroughfare];
    }

    else
    {
      v23 = &stru_284759D38;
    }

    v64 = v18;
    v58 = v23;
    v78[2] = v23;
    v24 = [v4 subLocality];
    if (v24)
    {
      v25 = [v4 subLocality];
    }

    else
    {
      v25 = &stru_284759D38;
    }

    v78[3] = v25;
    v26 = [v4 locality];
    if (v26)
    {
      v27 = [v4 locality];
    }

    else
    {
      v27 = &stru_284759D38;
    }

    v78[4] = v27;
    v28 = [v4 administrativeArea];
    if (v28)
    {
      v29 = [v4 administrativeArea];
    }

    else
    {
      v29 = &stru_284759D38;
    }

    v78[5] = v29;
    v30 = [MEMORY[0x277CBEA60] arrayWithObjects:v78 count:6];
    if (v28)
    {
    }

    if (v26)
    {
    }

    if (v24)
    {
    }

    if (v22)
    {
    }

    v31 = v30;
    if (v20)
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