@interface SREMusicMetadataRetrieval
- (id)parseAnswer:(id)a3 withAllAnswers:(id)a4;
- (id)retrieveMusicMetadata:(id)a3 error:(id *)a4;
- (void)extractAlbumMetadataFromFact:(id)a3 withAllAnswers:(id)a4 toCandidate:(id)a5;
- (void)extractArtistMetadataFromFact:(id)a3 withAllAnswers:(id)a4 toCandidate:(id)a5;
- (void)extractGenreMetadataFromFact:(id)a3 withAllAnswers:(id)a4 toCandidate:(id)a5;
@end

@implementation SREMusicMetadataRetrieval

- (id)retrieveMusicMetadata:(id)a3 error:(id *)a4
{
  v92[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v68 = objc_opt_new();
  v6 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(v5, "count")}];
  v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v5, "count")}];
  v69 = v6;
  v70 = v5;
  if ([v5 count])
  {
    v8 = 0;
    do
    {
      v9 = objc_alloc(MEMORY[0x277D1F428]);
      v10 = [v5 objectAtIndexedSubscript:v8];
      v11 = [v10 stringValue];
      [MEMORY[0x277CCACA8] stringWithFormat:@"adamId_%lu", v8 + 1];
      v13 = v12 = v7;
      v14 = [v9 initWithValue:v11 arg:v13];

      v6 = v69;
      [v69 addObject:v14];
      v15 = MEMORY[0x277CCACA8];
      v16 = [v70 objectAtIndexedSubscript:v8];
      v17 = [v15 stringWithFormat:@"-a adamId_%lu=%@", v8 + 1, v16];

      v7 = v12;
      [v12 addObject:v17];

      v5 = v70;
      ++v8;
    }

    while (v8 < [v70 count]);
  }

  v18 = [objc_alloc(MEMORY[0x277D1F438]) initWithIntent:@"MusicEntitySearch" args:v6 score:&unk_287C44DF0];
  v19 = objc_alloc(MEMORY[0x277D1F440]);
  v92[0] = v18;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v92 count:1];
  v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{10 * objc_msgSend(v5, "count")}];
  v22 = [v19 initWithIntents:v20 query:&stru_287C42A38 limit:v21 offset:&unk_287C44DF0];

  v23 = [v7 componentsJoinedByString:@" "];
  v24 = logForCSLogCategoryRecs();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v89 = v23;
    _os_log_impl(&dword_26B806000, v24, OS_LOG_TYPE_DEFAULT, "Starting knosis service call: %@", buf, 0xCu);
  }

  v25 = [v68 executeIntent:v22 error:a4];
  v26 = logForCSLogCategoryRecs();
  v27 = v26;
  if (v25)
  {
    v62 = v23;
    v63 = v22;
    v64 = v18;
    v65 = v7;
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v28 = [v25 status];
      v29 = [v25 answers];
      v30 = [v29 count];
      *buf = 134218240;
      v89 = v28;
      v90 = 2048;
      v91 = v30;
      _os_log_impl(&dword_26B806000, v27, OS_LOG_TYPE_DEFAULT, "Parsing Knosis response. status=%ld answers.count = %ld", buf, 0x16u);
    }

    v31 = MEMORY[0x277CBEB38];
    v32 = [v25 answers];
    v27 = [v31 dictionaryWithCapacity:{objc_msgSend(v32, "count")}];

    v81 = 0u;
    v82 = 0u;
    v79 = 0u;
    v80 = 0u;
    v67 = v25;
    v33 = [v25 answers];
    v34 = [v33 countByEnumeratingWithState:&v79 objects:v87 count:16];
    if (v34)
    {
      v35 = v34;
      v36 = *v80;
      do
      {
        for (i = 0; i != v35; ++i)
        {
          if (*v80 != v36)
          {
            objc_enumerationMutation(v33);
          }

          v38 = *(*(&v79 + 1) + 8 * i);
          v39 = [v38 answerId];
          [v27 setObject:v38 forKey:v39];
        }

        v35 = [v33 countByEnumeratingWithState:&v79 objects:v87 count:16];
      }

      while (v35);
    }

    v40 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v70, "count")}];
    v75 = 0u;
    v76 = 0u;
    v77 = 0u;
    v78 = 0u;
    v41 = [v67 answers];
    v42 = [v41 countByEnumeratingWithState:&v75 objects:v86 count:16];
    if (v42)
    {
      v43 = v42;
      v44 = *v76;
      do
      {
        for (j = 0; j != v43; ++j)
        {
          if (*v76 != v44)
          {
            objc_enumerationMutation(v41);
          }

          v46 = [(SREMusicMetadataRetrieval *)self parseAnswer:*(*(&v75 + 1) + 8 * j) withAllAnswers:v27];
          v47 = v46;
          if (v46)
          {
            v48 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v46, "trackId")}];
            [v40 setObject:v47 forKey:v48];

            v49 = logForCSLogCategoryRecs();
            if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
            {
              [(SREMusicMetadataRetrieval *)v84 retrieveMusicMetadata:v47 error:&v85, v49];
            }
          }
        }

        v43 = [v41 countByEnumeratingWithState:&v75 objects:v86 count:16];
      }

      while (v43);
    }

    v50 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v70, "count")}];
    v71 = 0u;
    v72 = 0u;
    v73 = 0u;
    v74 = 0u;
    v51 = v70;
    v52 = [v51 countByEnumeratingWithState:&v71 objects:v83 count:16];
    v22 = v63;
    if (v52)
    {
      v53 = v52;
      v54 = *v72;
      do
      {
        for (k = 0; k != v53; ++k)
        {
          if (*v72 != v54)
          {
            objc_enumerationMutation(v51);
          }

          v56 = [v40 objectForKey:*(*(&v71 + 1) + 8 * k)];
          if (v56)
          {
            [v50 addObject:v56];
          }
        }

        v53 = [v51 countByEnumeratingWithState:&v71 objects:v83 count:16];
      }

      while (v53);
    }

    v57 = logForCSLogCategoryRecs();
    if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
    {
      v58 = [v50 count];
      v59 = [v51 count];
      *buf = 134218240;
      v89 = v58;
      v90 = 2048;
      v91 = v59;
      _os_log_impl(&dword_26B806000, v57, OS_LOG_TYPE_DEFAULT, "End Knosis response parse. Got %ld/%ld music candidates with metadata.", buf, 0x16u);
    }

    v5 = v70;
    v18 = v64;
    v7 = v65;
    v23 = v62;
    v25 = v67;
  }

  else
  {
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      [SREMusicMetadataRetrieval retrieveMusicMetadata:a4 error:v27];
    }

    v50 = 0;
  }

  v60 = *MEMORY[0x277D85DE8];

  return v50;
}

- (id)parseAnswer:(id)a3 withAllAnswers:(id)a4
{
  v107 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v69 = a4;
  v6 = objc_alloc_init(SREMusicCandidate);
  v96 = 0u;
  v97 = 0u;
  v98 = 0u;
  v99 = 0u;
  v67 = v5;
  obj = [v5 parents];
  v72 = [obj countByEnumeratingWithState:&v96 objects:v106 count:16];
  if (v72)
  {
    v71 = *v97;
    do
    {
      v7 = 0;
      do
      {
        if (*v97 != v71)
        {
          objc_enumerationMutation(obj);
        }

        v73 = v7;
        v8 = *(*(&v96 + 1) + 8 * v7);
        v92 = 0u;
        v93 = 0u;
        v94 = 0u;
        v95 = 0u;
        v77 = [v8 facts];
        v9 = [v77 countByEnumeratingWithState:&v92 objects:v105 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v93;
          v74 = *v93;
          do
          {
            v12 = 0;
            v75 = v10;
            do
            {
              if (*v93 != v11)
              {
                objc_enumerationMutation(v77);
              }

              v13 = *(*(&v92 + 1) + 8 * v12);
              v14 = [v13 predicateId];
              v15 = [v14 isEqualToString:@"PS72"];

              if (v15)
              {
                v90 = 0u;
                v91 = 0u;
                v88 = 0u;
                v89 = 0u;
                v16 = [v13 qualifiers];
                v17 = [v16 countByEnumeratingWithState:&v88 objects:v104 count:16];
                if (v17)
                {
                  v18 = v17;
                  v19 = *v89;
                  do
                  {
                    for (i = 0; i != v18; ++i)
                    {
                      if (*v89 != v19)
                      {
                        objc_enumerationMutation(v16);
                      }

                      v21 = *(*(&v88 + 1) + 8 * i);
                      v22 = [v21 predicateId];
                      v23 = [v22 isEqualToString:@"PS69"];

                      if (v23)
                      {
                        v24 = [v21 objectID];
                        -[SREMusicCandidate setTrackId:](v6, "setTrackId:", [v24 integerValue]);

                        if ([(SREMusicCandidate *)v6 trackId]> 0)
                        {
                          goto LABEL_24;
                        }

                        v25 = logForCSLogCategoryRecs();
                        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
                        {
                          v26 = [v21 objectID];
                          *buf = 138412290;
                          v103 = v26;
                          _os_log_impl(&dword_26B806000, v25, OS_LOG_TYPE_DEFAULT, "*warn* Failed to convert adam ID to a positive integer:%@", buf, 0xCu);
                        }
                      }
                    }

                    v18 = [v16 countByEnumeratingWithState:&v88 objects:v104 count:16];
                  }

                  while (v18);
                }

LABEL_24:

                v11 = v74;
                v10 = v75;
              }

              ++v12;
            }

            while (v12 != v10);
            v10 = [v77 countByEnumeratingWithState:&v92 objects:v105 count:16];
          }

          while (v10);
        }

        v7 = v73 + 1;
      }

      while (v73 + 1 != v72);
      v72 = [obj countByEnumeratingWithState:&v96 objects:v106 count:16];
    }

    while (v72);
  }

  v86 = 0u;
  v87 = 0u;
  v84 = 0u;
  v85 = 0u;
  v27 = [v67 facts];
  v28 = [v27 countByEnumeratingWithState:&v84 objects:v101 count:16];
  v29 = self;
  v30 = v69;
  if (!v28)
  {
LABEL_69:

    goto LABEL_70;
  }

  v31 = v28;
  v32 = 0;
  v79 = *v85;
  v76 = v27;
  do
  {
    v33 = 0;
    do
    {
      if (*v85 != v79)
      {
        objc_enumerationMutation(v27);
      }

      v34 = *(*(&v84 + 1) + 8 * v33);
      v35 = [v34 predicateId];
      v36 = [v35 isEqualToString:@"PS1"];

      if (v36)
      {
        v37 = [v34 objectID];
        v38 = [v37 isEqualToString:@"SB44"];

        if ((v38 & 1) == 0)
        {
          goto LABEL_69;
        }

        v32 = 1;
      }

      else
      {
        v39 = [v34 predicateId];
        v40 = [v39 isEqualToString:@"PS33"];

        if (v40)
        {
          v41 = [v34 objectID];
          [(SREMusicCandidate *)v6 setTrackName:v41];
LABEL_39:

          goto LABEL_59;
        }

        v42 = [v34 predicateId];
        v43 = [v42 isEqualToString:@"PS137"];

        if (v43)
        {
          [(SREMusicMetadataRetrieval *)v29 extractArtistMetadataFromFact:v34 withAllAnswers:v30 toCandidate:v6];
          goto LABEL_59;
        }

        v44 = [v34 predicateId];
        v45 = [v44 isEqualToString:@"PS486"];

        if (v45)
        {
          v41 = [v34 objectID];
          [(SREMusicCandidate *)v6 setArtworkURL:v41];
          goto LABEL_39;
        }

        v78 = v32;
        v46 = [v34 predicateId];
        v47 = [v46 isEqualToString:@"PS106"];

        if (v47)
        {
          v82 = 0u;
          v83 = 0u;
          v80 = 0u;
          v81 = 0u;
          v48 = [v34 qualifiers];
          v49 = [v48 countByEnumeratingWithState:&v80 objects:v100 count:16];
          if (v49)
          {
            v50 = v49;
            v51 = *v81;
            while (2)
            {
              for (j = 0; j != v50; ++j)
              {
                if (*v81 != v51)
                {
                  objc_enumerationMutation(v48);
                }

                v53 = *(*(&v80 + 1) + 8 * j);
                v54 = [v53 predicateId];
                v55 = [v54 isEqualToString:@"PS3"];

                if (v55)
                {
                  v58 = [v53 objectID];
                  -[SREMusicCandidate setTrackTimeMillis:](v6, "setTrackTimeMillis:", [v58 integerValue]);

                  goto LABEL_57;
                }
              }

              v50 = [v48 countByEnumeratingWithState:&v80 objects:v100 count:16];
              if (v50)
              {
                continue;
              }

              break;
            }
          }

LABEL_57:

          v29 = self;
          v30 = v69;
          v27 = v76;
        }

        else
        {
          v56 = [v34 predicateId];
          v57 = [v56 isEqualToString:@"PS123"];

          if (v57)
          {
            [(SREMusicMetadataRetrieval *)v29 extractAlbumMetadataFromFact:v34 withAllAnswers:v30 toCandidate:v6];
          }

          else
          {
            v59 = [v34 predicateId];
            v60 = [v59 isEqualToString:@"PS358"];

            if (v60)
            {
              [(SREMusicCandidate *)v6 setTrackExplicitness:1];
            }

            else
            {
              v61 = [v34 predicateId];
              v62 = [v61 isEqualToString:@"PS10"];

              if (v62)
              {
                [(SREMusicMetadataRetrieval *)v29 extractGenreMetadataFromFact:v34 withAllAnswers:v30 toCandidate:v6];
              }
            }
          }
        }

        v32 = v78;
      }

LABEL_59:
      ++v33;
    }

    while (v33 != v31);
    v63 = [v27 countByEnumeratingWithState:&v84 objects:v101 count:16];
    v31 = v63;
  }

  while (v63);

  if (v32 && [(SREMusicCandidate *)v6 trackId]>= 1)
  {
    v64 = v6;
    goto LABEL_71;
  }

LABEL_70:
  v64 = 0;
LABEL_71:

  v65 = *MEMORY[0x277D85DE8];

  return v64;
}

- (void)extractArtistMetadataFromFact:(id)a3 withAllAnswers:(id)a4 toCandidate:(id)a5
{
  v46 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v33 = a4;
  v8 = a5;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v9 = [v7 qualifiers];
  v10 = [v9 countByEnumeratingWithState:&v38 objects:v45 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v39;
LABEL_3:
    v13 = 0;
    while (1)
    {
      if (*v39 != v12)
      {
        objc_enumerationMutation(v9);
      }

      v14 = *(*(&v38 + 1) + 8 * v13);
      v15 = [v14 predicateId];
      v16 = [v15 isEqualToString:@"PS16"];

      if (v16)
      {
        break;
      }

      if (v11 == ++v13)
      {
        v11 = [v9 countByEnumeratingWithState:&v38 objects:v45 count:16];
        if (v11)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v17 = [v14 objectID];

    if (!v17)
    {
      goto LABEL_22;
    }

    v18 = [v33 objectForKey:v17];
    v19 = v18;
    if (v18)
    {
      v31 = v18;
      v32 = v8;
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v20 = [v18 facts];
      v21 = [v20 countByEnumeratingWithState:&v34 objects:v42 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v35;
        while (2)
        {
          for (i = 0; i != v22; ++i)
          {
            if (*v35 != v23)
            {
              objc_enumerationMutation(v20);
            }

            v25 = *(*(&v34 + 1) + 8 * i);
            v26 = [v25 predicateId];
            v27 = [v26 isEqualToString:@"PS33"];

            if (v27)
            {
              v29 = [v25 objectID];
              v8 = v32;
              [v32 setArtistName:v29];

              goto LABEL_25;
            }
          }

          v22 = [v20 countByEnumeratingWithState:&v34 objects:v42 count:16];
          if (v22)
          {
            continue;
          }

          break;
        }
      }

      v20 = logForCSLogCategoryRecs();
      v8 = v32;
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v44 = v17;
        _os_log_impl(&dword_26B806000, v20, OS_LOG_TYPE_DEFAULT, "*warn* Performer name not found. Performer md=%@", buf, 0xCu);
      }

LABEL_25:
      v19 = v31;
    }

    else
    {
      v20 = logForCSLogCategoryRecs();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v44 = v17;
        _os_log_impl(&dword_26B806000, v20, OS_LOG_TYPE_DEFAULT, "*warn* Performer answer not found. Performer md=%@", buf, 0xCu);
      }
    }
  }

  else
  {
LABEL_9:

LABEL_22:
    v17 = logForCSLogCategoryRecs();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v28 = [v7 objectID];
      *buf = 138412290;
      v44 = v28;
      _os_log_impl(&dword_26B806000, v17, OS_LOG_TYPE_DEFAULT, "*warn* Performer MD not found. Performer fact=%@", buf, 0xCu);
    }
  }

  v30 = *MEMORY[0x277D85DE8];
}

- (void)extractAlbumMetadataFromFact:(id)a3 withAllAnswers:(id)a4 toCandidate:(id)a5
{
  v90 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v55 = a4;
  v8 = a5;
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  v54 = v7;
  v9 = [v7 qualifiers];
  v10 = [v9 countByEnumeratingWithState:&v79 objects:v89 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v80;
LABEL_3:
    v13 = 0;
    while (1)
    {
      if (*v80 != v12)
      {
        objc_enumerationMutation(v9);
      }

      v14 = *(*(&v79 + 1) + 8 * v13);
      v15 = [v14 predicateId];
      v16 = [v15 isEqualToString:@"PS53"];

      if (v16)
      {
        break;
      }

      if (v11 == ++v13)
      {
        v11 = [v9 countByEnumeratingWithState:&v79 objects:v89 count:16];
        if (v11)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v17 = [v14 objectID];

    if (!v17)
    {
      goto LABEL_50;
    }

    v18 = [v55 objectForKey:v17];
    v19 = v18;
    if (v18)
    {
      v52 = v17;
      v53 = v18;
      v77 = 0u;
      v78 = 0u;
      v75 = 0u;
      v76 = 0u;
      v20 = [v18 facts];
      v21 = [v20 countByEnumeratingWithState:&v75 objects:v86 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v76;
        do
        {
          for (i = 0; i != v22; ++i)
          {
            if (*v76 != v23)
            {
              objc_enumerationMutation(v20);
            }

            v25 = *(*(&v75 + 1) + 8 * i);
            v26 = [v25 predicateId];
            v27 = [v26 isEqualToString:@"PS33"];

            if (v27)
            {
              v28 = [v25 objectID];
              [v8 setCollectionName:v28];
            }
          }

          v22 = [v20 countByEnumeratingWithState:&v75 objects:v86 count:16];
        }

        while (v22);
      }

      v73 = 0u;
      v74 = 0u;
      v71 = 0u;
      v72 = 0u;
      v19 = v53;
      v29 = [v53 parents];
      v58 = [v29 countByEnumeratingWithState:&v71 objects:v85 count:16];
      if (v58)
      {
        obj = v29;
        v57 = *v72;
        do
        {
          v30 = 0;
          do
          {
            if (*v72 != v57)
            {
              objc_enumerationMutation(obj);
            }

            v59 = v30;
            v31 = *(*(&v71 + 1) + 8 * v30);
            v67 = 0u;
            v68 = 0u;
            v69 = 0u;
            v70 = 0u;
            v62 = [v31 facts];
            v32 = [v62 countByEnumeratingWithState:&v67 objects:v84 count:16];
            if (v32)
            {
              v33 = v32;
              v34 = *v68;
              v60 = *v68;
              do
              {
                v35 = 0;
                v61 = v33;
                do
                {
                  if (*v68 != v34)
                  {
                    objc_enumerationMutation(v62);
                  }

                  v36 = *(*(&v67 + 1) + 8 * v35);
                  v37 = [v36 predicateId];
                  v38 = [v37 isEqualToString:@"PS72"];

                  if (v38)
                  {
                    v65 = 0u;
                    v66 = 0u;
                    v63 = 0u;
                    v64 = 0u;
                    v39 = [v36 qualifiers];
                    v40 = [v39 countByEnumeratingWithState:&v63 objects:v83 count:16];
                    if (v40)
                    {
                      v41 = v40;
                      v42 = *v64;
                      do
                      {
                        for (j = 0; j != v41; ++j)
                        {
                          if (*v64 != v42)
                          {
                            objc_enumerationMutation(v39);
                          }

                          v44 = *(*(&v63 + 1) + 8 * j);
                          v45 = [v44 predicateId];
                          v46 = [v45 isEqualToString:@"PS69"];

                          if (v46)
                          {
                            v47 = [v44 objectID];
                            [v8 setCollectionId:{objc_msgSend(v47, "integerValue")}];

                            if ([v8 collectionId] > 0)
                            {
                              goto LABEL_44;
                            }

                            v48 = logForCSLogCategoryRecs();
                            if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
                            {
                              v49 = [v44 objectID];
                              *buf = 138412290;
                              v88 = v49;
                              _os_log_impl(&dword_26B806000, v48, OS_LOG_TYPE_DEFAULT, "*warn* Failed to convert adam ID to integer:%@", buf, 0xCu);
                            }
                          }
                        }

                        v41 = [v39 countByEnumeratingWithState:&v63 objects:v83 count:16];
                      }

                      while (v41);
                    }

LABEL_44:

                    v34 = v60;
                    v33 = v61;
                  }

                  ++v35;
                }

                while (v35 != v33);
                v33 = [v62 countByEnumeratingWithState:&v67 objects:v84 count:16];
              }

              while (v33);
            }

            v30 = v59 + 1;
          }

          while (v59 + 1 != v58);
          v58 = [obj countByEnumeratingWithState:&v71 objects:v85 count:16];
        }

        while (v58);
        v19 = v53;
        v50 = v54;
        v17 = v52;
        v29 = obj;
      }

      else
      {
        v50 = v54;
        v17 = v52;
      }
    }

    else
    {
      v29 = logForCSLogCategoryRecs();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v88 = v17;
        _os_log_impl(&dword_26B806000, v29, OS_LOG_TYPE_DEFAULT, "*warn* Album answer not found. Album md=%@", buf, 0xCu);
      }

      v50 = v54;
    }

    goto LABEL_57;
  }

LABEL_9:

LABEL_50:
  v17 = logForCSLogCategoryRecs();
  v50 = v54;
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v19 = [v54 objectID];
    *buf = 138412290;
    v88 = v19;
    _os_log_impl(&dword_26B806000, v17, OS_LOG_TYPE_DEFAULT, "*warn* Album MD not found. Album fact=%@", buf, 0xCu);
LABEL_57:
  }

  v51 = *MEMORY[0x277D85DE8];
}

- (void)extractGenreMetadataFromFact:(id)a3 withAllAnswers:(id)a4 toCandidate:(id)a5
{
  v39 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v7 objectID];
  if (v10)
  {
    v11 = [v8 objectForKey:v10];
    v12 = v11;
    if (v11)
    {
      v28 = v9;
      v29 = v8;
      v30 = v7;
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v13 = [v11 facts];
      v14 = [v13 countByEnumeratingWithState:&v31 objects:v36 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v32;
        while (2)
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v32 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v18 = *(*(&v31 + 1) + 8 * i);
            v19 = [v18 predicateId];
            v20 = [v19 isEqualToString:@"PS33"];

            if (v20)
            {
              v9 = v28;
              v23 = [v28 genreIDs];

              if (v23)
              {
                v24 = [v28 genreIDs];
                v25 = [v18 objectID];
                v26 = [v24 arrayByAddingObject:v25];
                [v28 setGenreIDs:v26];
              }

              else
              {
                v24 = [v18 objectID];
                v35 = v24;
                v25 = [MEMORY[0x277CBEA60] arrayWithObjects:&v35 count:1];
                [v28 setGenreIDs:v25];
              }

              v8 = v29;
              v7 = v30;

              goto LABEL_23;
            }
          }

          v15 = [v13 countByEnumeratingWithState:&v31 objects:v36 count:16];
          if (v15)
          {
            continue;
          }

          break;
        }
      }

      v13 = logForCSLogCategoryRecs();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v38 = v10;
        _os_log_impl(&dword_26B806000, v13, OS_LOG_TYPE_DEFAULT, "*warn* Genre name not found. Genre md=%@", buf, 0xCu);
      }

      v8 = v29;
      v7 = v30;
      v9 = v28;
      goto LABEL_23;
    }

    v13 = logForCSLogCategoryRecs();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
LABEL_23:

      goto LABEL_24;
    }

    *buf = 138412290;
    v38 = v10;
    v21 = "*warn* Genre answer not found. Genre md=%@";
    v22 = v13;
LABEL_20:
    _os_log_impl(&dword_26B806000, v22, OS_LOG_TYPE_DEFAULT, v21, buf, 0xCu);
    goto LABEL_23;
  }

  v12 = logForCSLogCategoryRecs();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [v7 objectID];
    *buf = 138412290;
    v38 = v13;
    v21 = "*warn* Genre MD not found. Genre fact=%@";
    v22 = v12;
    goto LABEL_20;
  }

LABEL_24:

  v27 = *MEMORY[0x277D85DE8];
}

- (void)retrieveMusicMetadata:(void *)a3 error:(NSObject *)a4 .cold.1(uint8_t *a1, void *a2, void *a3, NSObject *a4)
{
  v7 = [a2 debugString];
  *a1 = 138412290;
  *a3 = v7;
  _os_log_debug_impl(&dword_26B806000, a4, OS_LOG_TYPE_DEBUG, "Metadata parsed for candidate: %@", a1, 0xCu);
}

- (void)retrieveMusicMetadata:(uint64_t *)a1 error:(NSObject *)a2 .cold.2(uint64_t *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v4 = 138412290;
  v5 = v2;
  _os_log_error_impl(&dword_26B806000, a2, OS_LOG_TYPE_ERROR, "GDXPCKnosisService execution failed. error=%@", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

@end