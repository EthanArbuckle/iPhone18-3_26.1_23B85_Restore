id WOWorkoutServerInterface()
{
  v15[4] = *MEMORY[0x277D85DE8];
  v13 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2883DCD88];
  v1 = objc_alloc(MEMORY[0x277CBEB98]);
  v15[0] = objc_opt_class();
  v15[1] = objc_opt_class();
  v15[2] = objc_opt_class();
  v15[3] = objc_opt_class();
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:4];
  v12 = [v1 initWithArray:?];
  MEMORY[0x277D82BD8](v2);
  v3 = v13;
  v4 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
  [v3 setClasses:? forSelector:? argumentIndex:? ofReply:?];
  MEMORY[0x277D82BD8](v4);
  v5 = v13;
  v6 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
  [v5 setClasses:? forSelector:? argumentIndex:? ofReply:?];
  MEMORY[0x277D82BD8](v6);
  [v13 setClasses:v12 forSelector:sel_remote_fetchConfiguration_withCompletion_ argumentIndex:0 ofReply:1];
  [v13 setClasses:v12 forSelector:sel_remote_fetchDeletedConfiguration_withCompletion_ argumentIndex:0 ofReply:1];
  [v13 setClasses:v12 forSelector:sel_remote_saveConfiguration_withCompletion_ argumentIndex:0 ofReply:1];
  v8 = v13;
  v7 = MEMORY[0x277CBEB98];
  v14[0] = objc_opt_class();
  v14[1] = objc_opt_class();
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];
  v9 = [v7 setWithArray:?];
  [v8 setClasses:? forSelector:? argumentIndex:? ofReply:?];
  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](v10);
  [v13 setClasses:v12 forSelector:sel_remote_fetchManagedConfigurations_withCompletion_ argumentIndex:0 ofReply:1];
  [v13 setClasses:v12 forSelector:sel_remote_fetchManagedConfigurationsByProviderWithCompletion_ argumentIndex:0 ofReply:1];
  [v13 setClasses:v12 forSelector:sel_remote_addManagedConfigurations_withCompletion_ argumentIndex:0 ofReply:0];
  [v13 setClasses:v12 forSelector:sel_remote_removeManagedConfigurations_withCompletion_ argumentIndex:0 ofReply:0];
  [v13 setClasses:v12 forSelector:sel_remote_setManagedConfigurations_withCompletion_ argumentIndex:0 ofReply:0];
  [v13 setClasses:v12 forSelector:sel_remote_deleteManagedConfigurations_withCompletion_ argumentIndex:0 ofReply:1];
  [v13 setClasses:v12 forSelector:sel_remote_fetchExternalProviderForIdentifier_withCompletion_ argumentIndex:0 ofReply:1];
  [v13 setClasses:v12 forSelector:sel_remote_fetchAllExternalProvidersWithCompletion_ argumentIndex:0 ofReply:1];
  [v13 setClasses:v12 forSelector:sel_remote_deleteExternalProvider_withCompletion_ argumentIndex:0 ofReply:1];
  v11 = MEMORY[0x277D82BE0](v13);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  *MEMORY[0x277D85DE8];

  return v11;
}

id NSNotificationNameForSyncedPersistenceType(uint64_t a1)
{
  switch(a1)
  {
    case 2:
      v2 = MEMORY[0x277D82BE0](@"WOWorkoutEntityDidChangeNotification");
      break;
    case 3:
      v2 = MEMORY[0x277D82BE0](@"WOWorkoutManagedConfigurationEntityDidChangeNotification");
      break;
    case 4:
      v2 = MEMORY[0x277D82BE0](@"WOWorkoutExternalProvidersDidChangeNotification");
      break;
  }

  return v2;
}

uint64_t WOHealthBridgeProtoPersistenceArrayReadFrom(void *a1, void *a2)
{
  v15 = a1;
  v14 = a2;
  while (1)
  {
    v17 = v14;
    v8 = [v14 position];
    LOBYTE(v9) = 0;
    if (v8 < [v17 length])
    {
      v9 = [v17 hasError] ^ 1;
    }

    if ((v9 & 1) == 0)
    {
      break;
    }

    v13 = 0;
    v12 = 0;
    v21 = v14;
    v20 = &v13;
    v19 = &v12;
    v28 = v14;
    v27 = 0;
    v26 = 0;
    for (i = 0; ; ++i)
    {
      if (i >= 0xAu)
      {
        v29 = 0;
        goto LABEL_18;
      }

      v31 = v28;
      v30 = 0;
      v36 = v28;
      v35 = &v30;
      v34 = 1;
      v7 = [v28 position] + 1;
      if (v7 >= [v36 position] && (v6 = objc_msgSend(v36, "position") + v34, v6 <= objc_msgSend(v36, "length")))
      {
        v5 = [v36 data];
        v4 = v35;
        v39 = [v36 position];
        v38 = v34;
        v40 = v39;
        v41 = v34;
        v32 = v39;
        v33 = v34;
        [v5 getBytes:v4 range:{v39, v34}];
        MEMORY[0x277D82BD8](v5);
        [v36 setPosition:{objc_msgSend(v36, "position") + v34}];
        v37 = v34;
      }

      else
      {
        [v36 _setError];
        v37 = 0;
      }

      v24 = v30;
      v26 |= (v30 & 0x7F) << v27;
      if ((v30 & 0x80) == 0)
      {
        break;
      }

      v27 += 7;
    }

    v3 = ([v28 hasError] & 1) != 0 ? 0 : v26;
    v29 = v3;
LABEL_18:
    v18 = v29;
    *v19 = v29 & 7;
    *v20 = v18 >> 3;
    v23 = v14;
    if (([v14 hasError] & 1) != 0 || v12 == 4)
    {
      break;
    }

    if (v13 == 1)
    {
      location = objc_alloc_init(WOHealthBridgeProtoPersistence);
      [v15 addPersistences:location];
      if ((PBReaderPlaceMark() ^ 1))
      {
        v16 = 0;
        v10 = 1;
      }

      else if ((WOHealthBridgeProtoPersistenceReadFrom(location, v14) ^ 1))
      {
        v16 = 0;
        v10 = 1;
      }

      else
      {
        PBReaderRecallMark();
        v10 = 0;
      }

      objc_storeStrong(&location, 0);
      if (v10)
      {
        return v16 & 1;
      }
    }

    else if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      v16 = 0;
      return v16 & 1;
    }
  }

  v22 = v14;
  v16 = ([v14 hasError] ^ 1) & 1;
  return v16 & 1;
}

uint64_t WOHealthBridgeKeyedDataReadFrom(uint64_t a1, void *a2)
{
  v21 = a1;
  v20 = a2;
  while (1)
  {
    v23 = v20;
    v14 = [v20 position];
    LOBYTE(v15) = 0;
    if (v14 < [v23 length])
    {
      v15 = [v23 hasError] ^ 1;
    }

    if ((v15 & 1) == 0)
    {
      break;
    }

    v19 = 0;
    v18 = 0;
    v27 = v20;
    v26 = &v19;
    v25 = &v18;
    v34 = v20;
    v33 = 0;
    v32 = 0;
    for (i = 0; ; ++i)
    {
      if (i >= 0xAu)
      {
        v35 = 0;
        goto LABEL_18;
      }

      v37 = v34;
      v36 = 0;
      v42 = v34;
      v41 = &v36;
      v40 = 1;
      v2 = [v34 position];
      v13 = v2 + v40;
      if (v13 < [v42 position])
      {
        goto LABEL_10;
      }

      v3 = [v42 position];
      v12 = v3 + v40;
      if (v12 <= [v42 length])
      {
        v10 = [v42 data];
        v9 = v41;
        v45 = [v42 position];
        v44 = v40;
        v46 = v45;
        v47 = v40;
        v38 = v45;
        v39 = v40;
        [v10 getBytes:v9 range:{v45, v40}];
        MEMORY[0x277D82BD8](v10);
        v11 = v42;
        v4 = [v42 position];
        [v11 setPosition:v4 + v40];
        v43 = v40;
      }

      else
      {
LABEL_10:
        [v42 _setError];
        v43 = 0;
      }

      v30 = v36;
      v32 |= (v36 & 0x7F) << v33;
      if ((v36 & 0x80) == 0)
      {
        break;
      }

      v33 += 7;
    }

    v8 = ([v34 hasError] & 1) != 0 ? 0 : v32;
    v35 = v8;
LABEL_18:
    v24 = v35;
    *v25 = v35 & 7;
    *v26 = v24 >> 3;
    v29 = v20;
    if (([v20 hasError] & 1) != 0 || v18 == 4)
    {
      break;
    }

    if (v19 == 1)
    {
      obj = PBReaderReadString();
      objc_storeStrong((v21 + 8), obj);
      objc_storeStrong(&obj, 0);
    }

    else if (v19 == 2)
    {
      v7 = &v16;
      v16 = PBReaderReadData();
      objc_storeStrong((v21 + 16), v16);
      objc_storeStrong(&v16, 0);
    }

    else
    {
      v5 = PBReaderSkipValueWithTag();
      if ((v5 & 1) == 0)
      {
        v22 = 0;
        return v22 & 1;
      }
    }
  }

  v28 = v20;
  v22 = ([v20 hasError] ^ 1) & 1;
  return v22 & 1;
}

uint64_t WOHealthBridgeKeyedNumberReadFrom(uint64_t a1, void *a2)
{
  v27 = a1;
  v26 = a2;
  while (1)
  {
    v29 = v26;
    v21 = [v26 position];
    LOBYTE(v22) = 0;
    if (v21 < [v29 length])
    {
      v22 = [v29 hasError] ^ 1;
    }

    if ((v22 & 1) == 0)
    {
      break;
    }

    v25 = 0;
    v24 = 0;
    v33 = v26;
    v32 = &v25;
    v31 = &v24;
    v41 = v26;
    v40 = 0;
    v39 = 0;
    for (i = 0; ; ++i)
    {
      if (i >= 0xAu)
      {
        v42 = 0;
        goto LABEL_18;
      }

      v44 = v41;
      v43 = 0;
      v49 = v41;
      v48 = &v43;
      v47 = 1;
      v2 = [v41 position];
      v20 = v2 + v47;
      if (v20 < [v49 position])
      {
        goto LABEL_10;
      }

      v3 = [v49 position];
      v19 = v3 + v47;
      if (v19 <= [v49 length])
      {
        v17 = [v49 data];
        v16 = v48;
        v62 = [v49 position];
        v61 = v47;
        v63 = v62;
        v64 = v47;
        v45 = v62;
        v46 = v47;
        [v17 getBytes:v16 range:{v62, v47}];
        MEMORY[0x277D82BD8](v17);
        v18 = v49;
        v4 = [v49 position];
        [v18 setPosition:v4 + v47];
        v50 = v47;
      }

      else
      {
LABEL_10:
        [v49 _setError];
        v50 = 0;
      }

      v37 = v43;
      v39 |= (v43 & 0x7F) << v40;
      if ((v43 & 0x80) == 0)
      {
        break;
      }

      v40 += 7;
    }

    v15 = ([v41 hasError] & 1) != 0 ? 0 : v39;
    v42 = v15;
LABEL_18:
    v30 = v42;
    *v31 = v42 & 7;
    *v32 = v30 >> 3;
    v35 = v26;
    if (([v26 hasError] & 1) != 0 || v24 == 4)
    {
      break;
    }

    if (v25 == 1)
    {
      obj = PBReaderReadString();
      objc_storeStrong((v27 + 16), obj);
      objc_storeStrong(&obj, 0);
    }

    else if (v25 == 2)
    {
      v36[1] = v26;
      v36[0] = 0;
      v55 = v26;
      v54 = v36;
      v53 = 8;
      v5 = [v26 position];
      v14 = v5 + v53;
      if (v14 >= [v55 position] && (v6 = objc_msgSend(v55, "position"), v13 = v6 + v53, v13 <= objc_msgSend(v55, "length")))
      {
        v11 = [v55 data];
        v10 = v54;
        v58 = [v55 position];
        v57 = v53;
        v59 = v58;
        v60 = v53;
        v51 = v58;
        v52 = v53;
        [v11 getBytes:v10 range:{v58, v53}];
        MEMORY[0x277D82BD8](v11);
        v12 = v55;
        v7 = [v55 position];
        [v12 setPosition:v7 + v53];
        v56 = v53;
      }

      else
      {
        [v55 _setError];
        v56 = 0;
      }

      *(v27 + 8) = v36[0];
    }

    else
    {
      v8 = PBReaderSkipValueWithTag();
      if ((v8 & 1) == 0)
      {
        v28 = 0;
        return v28 & 1;
      }
    }
  }

  v34 = v26;
  v28 = ([v26 hasError] ^ 1) & 1;
  return v28 & 1;
}

uint64_t WOHealthBridgeKeyedDateReadFrom(uint64_t a1, void *a2)
{
  v27 = a1;
  v26 = a2;
  while (1)
  {
    v29 = v26;
    v21 = [v26 position];
    LOBYTE(v22) = 0;
    if (v21 < [v29 length])
    {
      v22 = [v29 hasError] ^ 1;
    }

    if ((v22 & 1) == 0)
    {
      break;
    }

    v25 = 0;
    v24 = 0;
    v33 = v26;
    v32 = &v25;
    v31 = &v24;
    v41 = v26;
    v40 = 0;
    v39 = 0;
    for (i = 0; ; ++i)
    {
      if (i >= 0xAu)
      {
        v42 = 0;
        goto LABEL_18;
      }

      v44 = v41;
      v43 = 0;
      v49 = v41;
      v48 = &v43;
      v47 = 1;
      v2 = [v41 position];
      v20 = v2 + v47;
      if (v20 < [v49 position])
      {
        goto LABEL_10;
      }

      v3 = [v49 position];
      v19 = v3 + v47;
      if (v19 <= [v49 length])
      {
        v17 = [v49 data];
        v16 = v48;
        v62 = [v49 position];
        v61 = v47;
        v63 = v62;
        v64 = v47;
        v45 = v62;
        v46 = v47;
        [v17 getBytes:v16 range:{v62, v47}];
        MEMORY[0x277D82BD8](v17);
        v18 = v49;
        v4 = [v49 position];
        [v18 setPosition:v4 + v47];
        v50 = v47;
      }

      else
      {
LABEL_10:
        [v49 _setError];
        v50 = 0;
      }

      v37 = v43;
      v39 |= (v43 & 0x7F) << v40;
      if ((v43 & 0x80) == 0)
      {
        break;
      }

      v40 += 7;
    }

    v15 = ([v41 hasError] & 1) != 0 ? 0 : v39;
    v42 = v15;
LABEL_18:
    v30 = v42;
    *v31 = v42 & 7;
    *v32 = v30 >> 3;
    v35 = v26;
    if (([v26 hasError] & 1) != 0 || v24 == 4)
    {
      break;
    }

    if (v25 == 1)
    {
      obj = PBReaderReadString();
      objc_storeStrong((v27 + 16), obj);
      objc_storeStrong(&obj, 0);
    }

    else if (v25 == 2)
    {
      v36[1] = v26;
      v36[0] = 0;
      v55 = v26;
      v54 = v36;
      v53 = 8;
      v5 = [v26 position];
      v14 = v5 + v53;
      if (v14 >= [v55 position] && (v6 = objc_msgSend(v55, "position"), v13 = v6 + v53, v13 <= objc_msgSend(v55, "length")))
      {
        v11 = [v55 data];
        v10 = v54;
        v58 = [v55 position];
        v57 = v53;
        v59 = v58;
        v60 = v53;
        v51 = v58;
        v52 = v53;
        [v11 getBytes:v10 range:{v58, v53}];
        MEMORY[0x277D82BD8](v11);
        v12 = v55;
        v7 = [v55 position];
        [v12 setPosition:v7 + v53];
        v56 = v53;
      }

      else
      {
        [v55 _setError];
        v56 = 0;
      }

      *(v27 + 8) = v36[0];
    }

    else
    {
      v8 = PBReaderSkipValueWithTag();
      if ((v8 & 1) == 0)
      {
        v28 = 0;
        return v28 & 1;
      }
    }
  }

  v34 = v26;
  v28 = ([v26 hasError] ^ 1) & 1;
  return v28 & 1;
}

uint64_t WOHealthBridgeProtoPersistenceReadFrom(void *a1, void *a2)
{
  v58 = a1;
  v57 = a2;
  while (1)
  {
    v60 = v57;
    v28 = [v57 position];
    LOBYTE(v29) = 0;
    if (v28 < [v60 length])
    {
      v29 = [v60 hasError] ^ 1;
    }

    if ((v29 & 1) == 0)
    {
      break;
    }

    v56 = 0;
    v55 = 0;
    v64 = v57;
    v63 = &v56;
    v62 = &v55;
    v93 = v57;
    v92 = 0;
    v91 = 0;
    for (i = 0; ; ++i)
    {
      if (i >= 0xAu)
      {
        v94 = 0;
        goto LABEL_18;
      }

      v96 = v93;
      v95 = 0;
      v125 = v93;
      v124 = &v95;
      v123 = 1;
      v27 = [v93 position] + 1;
      if (v27 >= [v125 position] && (v26 = objc_msgSend(v125, "position") + v123, v26 <= objc_msgSend(v125, "length")))
      {
        v25 = [v125 data];
        v24 = v124;
        v138 = [v125 position];
        v137 = v123;
        v139 = v138;
        v140 = v123;
        v121 = v138;
        v122 = v123;
        [v25 getBytes:v24 range:{v138, v123}];
        MEMORY[0x277D82BD8](v25);
        [v125 setPosition:{objc_msgSend(v125, "position") + v123}];
        v126 = v123;
      }

      else
      {
        [v125 _setError];
        v126 = 0;
      }

      v89 = v95;
      v91 |= (v95 & 0x7F) << v92;
      if ((v95 & 0x80) == 0)
      {
        break;
      }

      v92 += 7;
    }

    v23 = ([v93 hasError] & 1) != 0 ? 0 : v91;
    v94 = v23;
LABEL_18:
    v61 = v94;
    *v62 = v94 & 7;
    *v63 = v61 >> 3;
    v66 = v57;
    if (([v57 hasError] & 1) != 0 || v55 == 4)
    {
      break;
    }

    switch(v56)
    {
      case 1:
        v69 = v57;
        v75 = v57;
        v74 = 0;
        v73 = 0;
        for (j = 0; ; ++j)
        {
          if (j >= 0xAu)
          {
            v76 = 0;
            goto LABEL_46;
          }

          v102 = v75;
          v101 = 0;
          v107 = v75;
          v106 = &v101;
          v105 = 1;
          v22 = [v75 position] + 1;
          if (v22 >= [v107 position] && (v21 = objc_msgSend(v107, "position") + v105, v21 <= objc_msgSend(v107, "length")))
          {
            v20 = [v107 data];
            v19 = v106;
            v150 = [v107 position];
            v149 = v105;
            v151 = v150;
            v152 = v105;
            v103 = v150;
            v104 = v105;
            [v20 getBytes:v19 range:{v150, v105}];
            MEMORY[0x277D82BD8](v20);
            [v107 setPosition:{objc_msgSend(v107, "position") + v105}];
            v108 = v105;
          }

          else
          {
            [v107 _setError];
            v108 = 0;
          }

          v71 = v101;
          v73 |= (v101 & 0x7F) << v74;
          if ((v101 & 0x80) == 0)
          {
            break;
          }

          v74 += 7;
        }

        if ([v75 hasError])
        {
          v18 = 0;
        }

        else
        {
          v18 = v73;
        }

        v76 = v18;
LABEL_46:
        *(v58 + 24) = v76;
        break;
      case 2:
        v68 = v57;
        v81 = v57;
        v80 = 0;
        v79 = 0;
        for (k = 0; ; ++k)
        {
          if (k >= 0xAu)
          {
            v82 = 0;
            goto LABEL_60;
          }

          v100 = v81;
          v99 = 0;
          v113 = v81;
          v112 = &v99;
          v111 = 1;
          v17 = [v81 position] + 1;
          if (v17 >= [v113 position] && (v16 = objc_msgSend(v113, "position") + v111, v16 <= objc_msgSend(v113, "length")))
          {
            v15 = [v113 data];
            v14 = v112;
            v146 = [v113 position];
            v145 = v111;
            v147 = v146;
            v148 = v111;
            v109 = v146;
            v110 = v111;
            [v15 getBytes:v14 range:{v146, v111}];
            MEMORY[0x277D82BD8](v15);
            [v113 setPosition:{objc_msgSend(v113, "position") + v111}];
            v114 = v111;
          }

          else
          {
            [v113 _setError];
            v114 = 0;
          }

          v77 = v99;
          v79 |= (v99 & 0x7F) << v80;
          if ((v99 & 0x80) == 0)
          {
            break;
          }

          v80 += 7;
        }

        if ([v81 hasError])
        {
          v13 = 0;
        }

        else
        {
          v13 = v79;
        }

        v82 = v13;
LABEL_60:
        *(v58 + 20) = v82;
        break;
      case 3:
        v54 = PBReaderReadData();
        objc_storeStrong(v58 + 11, v54);
        objc_storeStrong(&v54, 0);
        break;
      case 4:
        v53 = objc_alloc_init(WOHealthBridgeKeyedNumber);
        [v58 addKeyedNumbers:v53];
        v51 = 0;
        v52 = 0;
        if ((PBReaderPlaceMark() ^ 1) & 1)
        {
          v59 = 0;
          v49 = 1;
        }

        else if ((WOHealthBridgeKeyedNumberReadFrom(v53, v57) ^ 1) & 1)
        {
          v59 = 0;
          v49 = 1;
        }

        else
        {
          PBReaderRecallMark();
          v49 = 0;
        }

        objc_storeStrong(&v53, 0);
        if (v49)
        {
          return v59 & 1;
        }

        break;
      case 5:
        v47 = objc_alloc_init(WOHealthBridgeKeyedString);
        [v58 addKeyedStrings:v47];
        v45 = 0;
        v46 = 0;
        if ((PBReaderPlaceMark() ^ 1) & 1)
        {
          v59 = 0;
          v49 = 1;
        }

        else if ((WOHealthBridgeKeyedStringReadFrom(v47, v57) ^ 1) & 1)
        {
          v59 = 0;
          v49 = 1;
        }

        else
        {
          PBReaderRecallMark();
          v49 = 0;
        }

        objc_storeStrong(&v47, 0);
        if (v49)
        {
          return v59 & 1;
        }

        break;
      case 6:
        v42 = objc_alloc_init(WOHealthBridgeKeyedDate);
        [v58 addKeyedDates:v42];
        v40 = 0;
        v41 = 0;
        if ((PBReaderPlaceMark() ^ 1) & 1)
        {
          v59 = 0;
          v49 = 1;
        }

        else if ((WOHealthBridgeKeyedDateReadFrom(v42, v57) ^ 1) & 1)
        {
          v59 = 0;
          v49 = 1;
        }

        else
        {
          PBReaderRecallMark();
          v49 = 0;
        }

        objc_storeStrong(&v42, 0);
        if (v49)
        {
          return v59 & 1;
        }

        break;
      case 7:
        v37 = objc_alloc_init(WOHealthBridgeKeyedData);
        [v58 addKeyedDatas:v37];
        v35 = 0;
        v36 = 0;
        if ((PBReaderPlaceMark() ^ 1) & 1)
        {
          v59 = 0;
          v49 = 1;
        }

        else if ((WOHealthBridgeKeyedDataReadFrom(v37, v57) ^ 1) & 1)
        {
          v59 = 0;
          v49 = 1;
        }

        else
        {
          PBReaderRecallMark();
          v49 = 0;
        }

        objc_storeStrong(&v37, 0);
        if (v49)
        {
          return v59 & 1;
        }

        break;
      case 8:
        obj = PBReaderReadData();
        objc_storeStrong(v58 + 7, obj);
        objc_storeStrong(&obj, 0);
        break;
      case 9:
        v31 = PBReaderReadData();
        objc_storeStrong(v58 + 8, v31);
        objc_storeStrong(&v31, 0);
        break;
      case 10:
        v67 = v57;
        v87 = v57;
        v86 = 0;
        v85 = 0;
        for (m = 0; ; ++m)
        {
          if (m >= 0xAu)
          {
            v88 = 0;
            goto LABEL_105;
          }

          v98 = v87;
          v97 = 0;
          v119 = v87;
          v118 = &v97;
          v117 = 1;
          v12 = [v87 position] + 1;
          if (v12 >= [v119 position] && (v11 = objc_msgSend(v119, "position") + v117, v11 <= objc_msgSend(v119, "length")))
          {
            v10 = [v119 data];
            v9 = v118;
            v142 = [v119 position];
            v141 = v117;
            v143 = v142;
            v144 = v117;
            v115 = v142;
            v116 = v117;
            [v10 getBytes:v9 range:{v142, v117}];
            MEMORY[0x277D82BD8](v10);
            [v119 setPosition:{objc_msgSend(v119, "position") + v117}];
            v120 = v117;
          }

          else
          {
            [v119 _setError];
            v120 = 0;
          }

          v83 = v97;
          v85 |= (v97 & 0x7F) << v86;
          if ((v97 & 0x80) == 0)
          {
            break;
          }

          v86 += 7;
        }

        if ([v87 hasError])
        {
          v8 = 0;
        }

        else
        {
          v8 = v85;
        }

        v88 = v8;
LABEL_105:
        *(v58 + 12) = v88;
        break;
      case 11:
        v70[1] = v57;
        v70[0] = 0;
        v131 = v57;
        v130 = v70;
        v129 = 8;
        v7 = [v57 position] + 8;
        if (v7 >= [v131 position] && (v6 = objc_msgSend(v131, "position") + v129, v6 <= objc_msgSend(v131, "length")))
        {
          v5 = [v131 data];
          v4 = v130;
          v134 = [v131 position];
          v133 = v129;
          v135 = v134;
          v136 = v129;
          v127 = v134;
          v128 = v129;
          [v5 getBytes:v4 range:{v134, v129}];
          MEMORY[0x277D82BD8](v5);
          [v131 setPosition:{objc_msgSend(v131, "position") + v129}];
          v132 = v129;
        }

        else
        {
          [v131 _setError];
          v132 = 0;
        }

        *(v58 + 1) = v70[0];
        break;
      case 12:
        v30 = objc_alloc_init(WOHealthBridgeSyncIdentity);
        objc_storeStrong(v58 + 9, v30);
        if ((PBReaderPlaceMark() ^ 1))
        {
          v59 = 0;
          v49 = 1;
        }

        else if ((WOHealthBridgeSyncIdentityReadFrom(v30, v57) ^ 1))
        {
          v59 = 0;
          v49 = 1;
        }

        else
        {
          PBReaderRecallMark();
          v49 = 0;
        }

        objc_storeStrong(&v30, 0);
        if (v49)
        {
          return v59 & 1;
        }

        break;
      default:
        v2 = PBReaderSkipValueWithTag();
        if ((v2 & 1) == 0)
        {
          v59 = 0;
          return v59 & 1;
        }

        break;
    }
  }

  v65 = v57;
  v59 = ([v57 hasError] ^ 1) & 1;
  return v59 & 1;
}

id NSStringForWOPersistenceType(uint64_t a1)
{
  switch(a1)
  {
    case 2:
      v2 = MEMORY[0x277D82BE0](@"configuration");
      break;
    case 3:
      v2 = MEMORY[0x277D82BE0](@"managed_configuration");
      break;
    case 4:
      v2 = MEMORY[0x277D82BE0](@"external_configuration_provider");
      break;
  }

  return v2;
}

id NSStringForWOPersistenceObjectState(uint64_t a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v2 = MEMORY[0x277D82BE0](@"WOPersistenceObjectStateDeleted");
    }
  }

  else
  {
    v2 = MEMORY[0x277D82BE0](@"WOPersistenceObjectStateActive");
  }

  return v2;
}

id NSStringForWOPersistencePermissionState(uint64_t a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v2 = MEMORY[0x277D82BE0](@"denied");
    }

    else if (a1 == 2)
    {
      v2 = MEMORY[0x277D82BE0](@"allowed");
    }
  }

  else
  {
    v2 = MEMORY[0x277D82BE0](@"notDetermined");
  }

  return v2;
}

uint64_t __os_log_helper_16_2_1_8_66(uint64_t result, uint64_t a2)
{
  *result = 2;
  *(result + 1) = 1;
  *(result + 2) = 66;
  *(result + 3) = 8;
  *(result + 4) = a2;
  return result;
}

uint64_t WOHealthBridgeKeyedStringReadFrom(uint64_t a1, void *a2)
{
  v21 = a1;
  v20 = a2;
  while (1)
  {
    v23 = v20;
    v14 = [v20 position];
    LOBYTE(v15) = 0;
    if (v14 < [v23 length])
    {
      v15 = [v23 hasError] ^ 1;
    }

    if ((v15 & 1) == 0)
    {
      break;
    }

    v19 = 0;
    v18 = 0;
    v27 = v20;
    v26 = &v19;
    v25 = &v18;
    v34 = v20;
    v33 = 0;
    v32 = 0;
    for (i = 0; ; ++i)
    {
      if (i >= 0xAu)
      {
        v35 = 0;
        goto LABEL_18;
      }

      v37 = v34;
      v36 = 0;
      v42 = v34;
      v41 = &v36;
      v40 = 1;
      v2 = [v34 position];
      v13 = v2 + v40;
      if (v13 < [v42 position])
      {
        goto LABEL_10;
      }

      v3 = [v42 position];
      v12 = v3 + v40;
      if (v12 <= [v42 length])
      {
        v10 = [v42 data];
        v9 = v41;
        v45 = [v42 position];
        v44 = v40;
        v46 = v45;
        v47 = v40;
        v38 = v45;
        v39 = v40;
        [v10 getBytes:v9 range:{v45, v40}];
        MEMORY[0x277D82BD8](v10);
        v11 = v42;
        v4 = [v42 position];
        [v11 setPosition:v4 + v40];
        v43 = v40;
      }

      else
      {
LABEL_10:
        [v42 _setError];
        v43 = 0;
      }

      v30 = v36;
      v32 |= (v36 & 0x7F) << v33;
      if ((v36 & 0x80) == 0)
      {
        break;
      }

      v33 += 7;
    }

    v8 = ([v34 hasError] & 1) != 0 ? 0 : v32;
    v35 = v8;
LABEL_18:
    v24 = v35;
    *v25 = v35 & 7;
    *v26 = v24 >> 3;
    v29 = v20;
    if (([v20 hasError] & 1) != 0 || v18 == 4)
    {
      break;
    }

    if (v19 == 1)
    {
      obj = PBReaderReadString();
      objc_storeStrong((v21 + 8), obj);
      objc_storeStrong(&obj, 0);
    }

    else if (v19 == 2)
    {
      v7 = &v16;
      v16 = PBReaderReadString();
      objc_storeStrong((v21 + 16), v16);
      objc_storeStrong(&v16, 0);
    }

    else
    {
      v5 = PBReaderSkipValueWithTag();
      if ((v5 & 1) == 0)
      {
        v22 = 0;
        return v22 & 1;
      }
    }
  }

  v28 = v20;
  v22 = ([v20 hasError] ^ 1) & 1;
  return v22 & 1;
}

uint64_t WOHealthBridgeSyncIdentityReadFrom(id *a1, void *a2)
{
  v22 = a1;
  v21 = a2;
  while (1)
  {
    v24 = v21;
    v14 = [v21 position];
    LOBYTE(v15) = 0;
    if (v14 < [v24 length])
    {
      v15 = [v24 hasError] ^ 1;
    }

    if ((v15 & 1) == 0)
    {
      break;
    }

    v20 = 0;
    v19 = 0;
    v28 = v21;
    v27 = &v20;
    v26 = &v19;
    v35 = v21;
    v34 = 0;
    v33 = 0;
    for (i = 0; ; ++i)
    {
      if (i >= 0xAu)
      {
        v36 = 0;
        goto LABEL_18;
      }

      v38 = v35;
      v37 = 0;
      v43 = v35;
      v42 = &v37;
      v41 = 1;
      v2 = [v35 position];
      v13 = v2 + v41;
      if (v13 < [v43 position])
      {
        goto LABEL_10;
      }

      v3 = [v43 position];
      v12 = v3 + v41;
      if (v12 <= [v43 length])
      {
        v10 = [v43 data];
        v9 = v42;
        v46 = [v43 position];
        v45 = v41;
        v47 = v46;
        v48 = v41;
        v39 = v46;
        v40 = v41;
        [v10 getBytes:v9 range:{v46, v41}];
        MEMORY[0x277D82BD8](v10);
        v11 = v43;
        v4 = [v43 position];
        [v11 setPosition:v4 + v41];
        v44 = v41;
      }

      else
      {
LABEL_10:
        [v43 _setError];
        v44 = 0;
      }

      v31 = v37;
      v33 |= (v37 & 0x7F) << v34;
      if ((v37 & 0x80) == 0)
      {
        break;
      }

      v34 += 7;
    }

    v8 = ([v35 hasError] & 1) != 0 ? 0 : v33;
    v36 = v8;
LABEL_18:
    v25 = v36;
    *v26 = v36 & 7;
    *v27 = v25 >> 3;
    v30 = v21;
    if (([v21 hasError] & 1) != 0 || v19 == 4)
    {
      break;
    }

    switch(v20)
    {
      case 1:
        obj = PBReaderReadData();
        objc_storeStrong(v22 + 2, obj);
        objc_storeStrong(&obj, 0);
        break;
      case 2:
        v17 = PBReaderReadData();
        objc_storeStrong(v22 + 1, v17);
        objc_storeStrong(&v17, 0);
        break;
      case 3:
        v7 = &v16;
        v16 = PBReaderReadString();
        objc_storeStrong(v22 + 3, v16);
        objc_storeStrong(&v16, 0);
        break;
      default:
        v5 = PBReaderSkipValueWithTag();
        if ((v5 & 1) == 0)
        {
          v23 = 0;
          return v23 & 1;
        }

        break;
    }
  }

  v29 = v21;
  v23 = ([v21 hasError] ^ 1) & 1;
  return v23 & 1;
}