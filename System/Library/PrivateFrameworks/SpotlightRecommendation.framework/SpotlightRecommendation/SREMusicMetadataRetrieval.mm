@interface SREMusicMetadataRetrieval
- (id)parseAnswer:(id)answer withAllAnswers:(id)answers;
- (id)retrieveMusicMetadata:(id)metadata error:(id *)error;
- (void)extractAlbumMetadataFromFact:(id)fact withAllAnswers:(id)answers toCandidate:(id)candidate;
- (void)extractArtistMetadataFromFact:(id)fact withAllAnswers:(id)answers toCandidate:(id)candidate;
- (void)extractGenreMetadataFromFact:(id)fact withAllAnswers:(id)answers toCandidate:(id)candidate;
@end

@implementation SREMusicMetadataRetrieval

- (id)retrieveMusicMetadata:(id)metadata error:(id *)error
{
  v92[1] = *MEMORY[0x277D85DE8];
  metadataCopy = metadata;
  v68 = objc_opt_new();
  v6 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(metadataCopy, "count")}];
  v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(metadataCopy, "count")}];
  v69 = v6;
  v70 = metadataCopy;
  if ([metadataCopy count])
  {
    v8 = 0;
    do
    {
      v9 = objc_alloc(MEMORY[0x277D1F428]);
      v10 = [metadataCopy objectAtIndexedSubscript:v8];
      stringValue = [v10 stringValue];
      [MEMORY[0x277CCACA8] stringWithFormat:@"adamId_%lu", v8 + 1];
      v13 = v12 = v7;
      v14 = [v9 initWithValue:stringValue arg:v13];

      v6 = v69;
      [v69 addObject:v14];
      v15 = MEMORY[0x277CCACA8];
      v16 = [v70 objectAtIndexedSubscript:v8];
      v17 = [v15 stringWithFormat:@"-a adamId_%lu=%@", v8 + 1, v16];

      v7 = v12;
      [v12 addObject:v17];

      metadataCopy = v70;
      ++v8;
    }

    while (v8 < [v70 count]);
  }

  v18 = [objc_alloc(MEMORY[0x277D1F438]) initWithIntent:@"MusicEntitySearch" args:v6 score:&unk_287C44DF0];
  v19 = objc_alloc(MEMORY[0x277D1F440]);
  v92[0] = v18;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v92 count:1];
  v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{10 * objc_msgSend(metadataCopy, "count")}];
  v22 = [v19 initWithIntents:v20 query:&stru_287C42A38 limit:v21 offset:&unk_287C44DF0];

  v23 = [v7 componentsJoinedByString:@" "];
  v24 = logForCSLogCategoryRecs();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v89 = v23;
    _os_log_impl(&dword_26B806000, v24, OS_LOG_TYPE_DEFAULT, "Starting knosis service call: %@", buf, 0xCu);
  }

  v25 = [v68 executeIntent:v22 error:error];
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
      status = [v25 status];
      answers = [v25 answers];
      v30 = [answers count];
      *buf = 134218240;
      v89 = status;
      v90 = 2048;
      v91 = v30;
      _os_log_impl(&dword_26B806000, v27, OS_LOG_TYPE_DEFAULT, "Parsing Knosis response. status=%ld answers.count = %ld", buf, 0x16u);
    }

    v31 = MEMORY[0x277CBEB38];
    answers2 = [v25 answers];
    v27 = [v31 dictionaryWithCapacity:{objc_msgSend(answers2, "count")}];

    v81 = 0u;
    v82 = 0u;
    v79 = 0u;
    v80 = 0u;
    v67 = v25;
    answers3 = [v25 answers];
    v34 = [answers3 countByEnumeratingWithState:&v79 objects:v87 count:16];
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
            objc_enumerationMutation(answers3);
          }

          v38 = *(*(&v79 + 1) + 8 * i);
          answerId = [v38 answerId];
          [v27 setObject:v38 forKey:answerId];
        }

        v35 = [answers3 countByEnumeratingWithState:&v79 objects:v87 count:16];
      }

      while (v35);
    }

    v40 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v70, "count")}];
    v75 = 0u;
    v76 = 0u;
    v77 = 0u;
    v78 = 0u;
    answers4 = [v67 answers];
    v42 = [answers4 countByEnumeratingWithState:&v75 objects:v86 count:16];
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
            objc_enumerationMutation(answers4);
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

        v43 = [answers4 countByEnumeratingWithState:&v75 objects:v86 count:16];
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

    metadataCopy = v70;
    v18 = v64;
    v7 = v65;
    v23 = v62;
    v25 = v67;
  }

  else
  {
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      [SREMusicMetadataRetrieval retrieveMusicMetadata:error error:v27];
    }

    v50 = 0;
  }

  v60 = *MEMORY[0x277D85DE8];

  return v50;
}

- (id)parseAnswer:(id)answer withAllAnswers:(id)answers
{
  v107 = *MEMORY[0x277D85DE8];
  answerCopy = answer;
  answersCopy = answers;
  v6 = objc_alloc_init(SREMusicCandidate);
  v96 = 0u;
  v97 = 0u;
  v98 = 0u;
  v99 = 0u;
  v67 = answerCopy;
  obj = [answerCopy parents];
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
        facts = [v8 facts];
        v9 = [facts countByEnumeratingWithState:&v92 objects:v105 count:16];
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
                objc_enumerationMutation(facts);
              }

              v13 = *(*(&v92 + 1) + 8 * v12);
              predicateId = [v13 predicateId];
              v15 = [predicateId isEqualToString:@"PS72"];

              if (v15)
              {
                v90 = 0u;
                v91 = 0u;
                v88 = 0u;
                v89 = 0u;
                qualifiers = [v13 qualifiers];
                v17 = [qualifiers countByEnumeratingWithState:&v88 objects:v104 count:16];
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
                        objc_enumerationMutation(qualifiers);
                      }

                      v21 = *(*(&v88 + 1) + 8 * i);
                      predicateId2 = [v21 predicateId];
                      v23 = [predicateId2 isEqualToString:@"PS69"];

                      if (v23)
                      {
                        objectID = [v21 objectID];
                        -[SREMusicCandidate setTrackId:](v6, "setTrackId:", [objectID integerValue]);

                        if ([(SREMusicCandidate *)v6 trackId]> 0)
                        {
                          goto LABEL_24;
                        }

                        v25 = logForCSLogCategoryRecs();
                        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
                        {
                          objectID2 = [v21 objectID];
                          *buf = 138412290;
                          v103 = objectID2;
                          _os_log_impl(&dword_26B806000, v25, OS_LOG_TYPE_DEFAULT, "*warn* Failed to convert adam ID to a positive integer:%@", buf, 0xCu);
                        }
                      }
                    }

                    v18 = [qualifiers countByEnumeratingWithState:&v88 objects:v104 count:16];
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
            v10 = [facts countByEnumeratingWithState:&v92 objects:v105 count:16];
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
  facts2 = [v67 facts];
  v28 = [facts2 countByEnumeratingWithState:&v84 objects:v101 count:16];
  selfCopy2 = self;
  v30 = answersCopy;
  if (!v28)
  {
LABEL_69:

    goto LABEL_70;
  }

  v31 = v28;
  v32 = 0;
  v79 = *v85;
  v76 = facts2;
  do
  {
    v33 = 0;
    do
    {
      if (*v85 != v79)
      {
        objc_enumerationMutation(facts2);
      }

      v34 = *(*(&v84 + 1) + 8 * v33);
      predicateId3 = [v34 predicateId];
      v36 = [predicateId3 isEqualToString:@"PS1"];

      if (v36)
      {
        objectID3 = [v34 objectID];
        v38 = [objectID3 isEqualToString:@"SB44"];

        if ((v38 & 1) == 0)
        {
          goto LABEL_69;
        }

        v32 = 1;
      }

      else
      {
        predicateId4 = [v34 predicateId];
        v40 = [predicateId4 isEqualToString:@"PS33"];

        if (v40)
        {
          objectID4 = [v34 objectID];
          [(SREMusicCandidate *)v6 setTrackName:objectID4];
LABEL_39:

          goto LABEL_59;
        }

        predicateId5 = [v34 predicateId];
        v43 = [predicateId5 isEqualToString:@"PS137"];

        if (v43)
        {
          [(SREMusicMetadataRetrieval *)selfCopy2 extractArtistMetadataFromFact:v34 withAllAnswers:v30 toCandidate:v6];
          goto LABEL_59;
        }

        predicateId6 = [v34 predicateId];
        v45 = [predicateId6 isEqualToString:@"PS486"];

        if (v45)
        {
          objectID4 = [v34 objectID];
          [(SREMusicCandidate *)v6 setArtworkURL:objectID4];
          goto LABEL_39;
        }

        v78 = v32;
        predicateId7 = [v34 predicateId];
        v47 = [predicateId7 isEqualToString:@"PS106"];

        if (v47)
        {
          v82 = 0u;
          v83 = 0u;
          v80 = 0u;
          v81 = 0u;
          qualifiers2 = [v34 qualifiers];
          v49 = [qualifiers2 countByEnumeratingWithState:&v80 objects:v100 count:16];
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
                  objc_enumerationMutation(qualifiers2);
                }

                v53 = *(*(&v80 + 1) + 8 * j);
                predicateId8 = [v53 predicateId];
                v55 = [predicateId8 isEqualToString:@"PS3"];

                if (v55)
                {
                  objectID5 = [v53 objectID];
                  -[SREMusicCandidate setTrackTimeMillis:](v6, "setTrackTimeMillis:", [objectID5 integerValue]);

                  goto LABEL_57;
                }
              }

              v50 = [qualifiers2 countByEnumeratingWithState:&v80 objects:v100 count:16];
              if (v50)
              {
                continue;
              }

              break;
            }
          }

LABEL_57:

          selfCopy2 = self;
          v30 = answersCopy;
          facts2 = v76;
        }

        else
        {
          predicateId9 = [v34 predicateId];
          v57 = [predicateId9 isEqualToString:@"PS123"];

          if (v57)
          {
            [(SREMusicMetadataRetrieval *)selfCopy2 extractAlbumMetadataFromFact:v34 withAllAnswers:v30 toCandidate:v6];
          }

          else
          {
            predicateId10 = [v34 predicateId];
            v60 = [predicateId10 isEqualToString:@"PS358"];

            if (v60)
            {
              [(SREMusicCandidate *)v6 setTrackExplicitness:1];
            }

            else
            {
              predicateId11 = [v34 predicateId];
              v62 = [predicateId11 isEqualToString:@"PS10"];

              if (v62)
              {
                [(SREMusicMetadataRetrieval *)selfCopy2 extractGenreMetadataFromFact:v34 withAllAnswers:v30 toCandidate:v6];
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
    v63 = [facts2 countByEnumeratingWithState:&v84 objects:v101 count:16];
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

- (void)extractArtistMetadataFromFact:(id)fact withAllAnswers:(id)answers toCandidate:(id)candidate
{
  v46 = *MEMORY[0x277D85DE8];
  factCopy = fact;
  answersCopy = answers;
  candidateCopy = candidate;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  qualifiers = [factCopy qualifiers];
  v10 = [qualifiers countByEnumeratingWithState:&v38 objects:v45 count:16];
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
        objc_enumerationMutation(qualifiers);
      }

      v14 = *(*(&v38 + 1) + 8 * v13);
      predicateId = [v14 predicateId];
      v16 = [predicateId isEqualToString:@"PS16"];

      if (v16)
      {
        break;
      }

      if (v11 == ++v13)
      {
        v11 = [qualifiers countByEnumeratingWithState:&v38 objects:v45 count:16];
        if (v11)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    objectID = [v14 objectID];

    if (!objectID)
    {
      goto LABEL_22;
    }

    v18 = [answersCopy objectForKey:objectID];
    v19 = v18;
    if (v18)
    {
      v31 = v18;
      v32 = candidateCopy;
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      facts = [v18 facts];
      v21 = [facts countByEnumeratingWithState:&v34 objects:v42 count:16];
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
              objc_enumerationMutation(facts);
            }

            v25 = *(*(&v34 + 1) + 8 * i);
            predicateId2 = [v25 predicateId];
            v27 = [predicateId2 isEqualToString:@"PS33"];

            if (v27)
            {
              objectID2 = [v25 objectID];
              candidateCopy = v32;
              [v32 setArtistName:objectID2];

              goto LABEL_25;
            }
          }

          v22 = [facts countByEnumeratingWithState:&v34 objects:v42 count:16];
          if (v22)
          {
            continue;
          }

          break;
        }
      }

      facts = logForCSLogCategoryRecs();
      candidateCopy = v32;
      if (os_log_type_enabled(facts, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v44 = objectID;
        _os_log_impl(&dword_26B806000, facts, OS_LOG_TYPE_DEFAULT, "*warn* Performer name not found. Performer md=%@", buf, 0xCu);
      }

LABEL_25:
      v19 = v31;
    }

    else
    {
      facts = logForCSLogCategoryRecs();
      if (os_log_type_enabled(facts, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v44 = objectID;
        _os_log_impl(&dword_26B806000, facts, OS_LOG_TYPE_DEFAULT, "*warn* Performer answer not found. Performer md=%@", buf, 0xCu);
      }
    }
  }

  else
  {
LABEL_9:

LABEL_22:
    objectID = logForCSLogCategoryRecs();
    if (os_log_type_enabled(objectID, OS_LOG_TYPE_DEFAULT))
    {
      objectID3 = [factCopy objectID];
      *buf = 138412290;
      v44 = objectID3;
      _os_log_impl(&dword_26B806000, objectID, OS_LOG_TYPE_DEFAULT, "*warn* Performer MD not found. Performer fact=%@", buf, 0xCu);
    }
  }

  v30 = *MEMORY[0x277D85DE8];
}

- (void)extractAlbumMetadataFromFact:(id)fact withAllAnswers:(id)answers toCandidate:(id)candidate
{
  v90 = *MEMORY[0x277D85DE8];
  factCopy = fact;
  answersCopy = answers;
  candidateCopy = candidate;
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  v54 = factCopy;
  qualifiers = [factCopy qualifiers];
  v10 = [qualifiers countByEnumeratingWithState:&v79 objects:v89 count:16];
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
        objc_enumerationMutation(qualifiers);
      }

      v14 = *(*(&v79 + 1) + 8 * v13);
      predicateId = [v14 predicateId];
      v16 = [predicateId isEqualToString:@"PS53"];

      if (v16)
      {
        break;
      }

      if (v11 == ++v13)
      {
        v11 = [qualifiers countByEnumeratingWithState:&v79 objects:v89 count:16];
        if (v11)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    objectID = [v14 objectID];

    if (!objectID)
    {
      goto LABEL_50;
    }

    v18 = [answersCopy objectForKey:objectID];
    objectID5 = v18;
    if (v18)
    {
      v52 = objectID;
      v53 = v18;
      v77 = 0u;
      v78 = 0u;
      v75 = 0u;
      v76 = 0u;
      facts = [v18 facts];
      v21 = [facts countByEnumeratingWithState:&v75 objects:v86 count:16];
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
              objc_enumerationMutation(facts);
            }

            v25 = *(*(&v75 + 1) + 8 * i);
            predicateId2 = [v25 predicateId];
            v27 = [predicateId2 isEqualToString:@"PS33"];

            if (v27)
            {
              objectID2 = [v25 objectID];
              [candidateCopy setCollectionName:objectID2];
            }
          }

          v22 = [facts countByEnumeratingWithState:&v75 objects:v86 count:16];
        }

        while (v22);
      }

      v73 = 0u;
      v74 = 0u;
      v71 = 0u;
      v72 = 0u;
      objectID5 = v53;
      parents = [v53 parents];
      v58 = [parents countByEnumeratingWithState:&v71 objects:v85 count:16];
      if (v58)
      {
        obj = parents;
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
            facts2 = [v31 facts];
            v32 = [facts2 countByEnumeratingWithState:&v67 objects:v84 count:16];
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
                    objc_enumerationMutation(facts2);
                  }

                  v36 = *(*(&v67 + 1) + 8 * v35);
                  predicateId3 = [v36 predicateId];
                  v38 = [predicateId3 isEqualToString:@"PS72"];

                  if (v38)
                  {
                    v65 = 0u;
                    v66 = 0u;
                    v63 = 0u;
                    v64 = 0u;
                    qualifiers2 = [v36 qualifiers];
                    v40 = [qualifiers2 countByEnumeratingWithState:&v63 objects:v83 count:16];
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
                            objc_enumerationMutation(qualifiers2);
                          }

                          v44 = *(*(&v63 + 1) + 8 * j);
                          predicateId4 = [v44 predicateId];
                          v46 = [predicateId4 isEqualToString:@"PS69"];

                          if (v46)
                          {
                            objectID3 = [v44 objectID];
                            [candidateCopy setCollectionId:{objc_msgSend(objectID3, "integerValue")}];

                            if ([candidateCopy collectionId] > 0)
                            {
                              goto LABEL_44;
                            }

                            v48 = logForCSLogCategoryRecs();
                            if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
                            {
                              objectID4 = [v44 objectID];
                              *buf = 138412290;
                              v88 = objectID4;
                              _os_log_impl(&dword_26B806000, v48, OS_LOG_TYPE_DEFAULT, "*warn* Failed to convert adam ID to integer:%@", buf, 0xCu);
                            }
                          }
                        }

                        v41 = [qualifiers2 countByEnumeratingWithState:&v63 objects:v83 count:16];
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
                v33 = [facts2 countByEnumeratingWithState:&v67 objects:v84 count:16];
              }

              while (v33);
            }

            v30 = v59 + 1;
          }

          while (v59 + 1 != v58);
          v58 = [obj countByEnumeratingWithState:&v71 objects:v85 count:16];
        }

        while (v58);
        objectID5 = v53;
        v50 = v54;
        objectID = v52;
        parents = obj;
      }

      else
      {
        v50 = v54;
        objectID = v52;
      }
    }

    else
    {
      parents = logForCSLogCategoryRecs();
      if (os_log_type_enabled(parents, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v88 = objectID;
        _os_log_impl(&dword_26B806000, parents, OS_LOG_TYPE_DEFAULT, "*warn* Album answer not found. Album md=%@", buf, 0xCu);
      }

      v50 = v54;
    }

    goto LABEL_57;
  }

LABEL_9:

LABEL_50:
  objectID = logForCSLogCategoryRecs();
  v50 = v54;
  if (os_log_type_enabled(objectID, OS_LOG_TYPE_DEFAULT))
  {
    objectID5 = [v54 objectID];
    *buf = 138412290;
    v88 = objectID5;
    _os_log_impl(&dword_26B806000, objectID, OS_LOG_TYPE_DEFAULT, "*warn* Album MD not found. Album fact=%@", buf, 0xCu);
LABEL_57:
  }

  v51 = *MEMORY[0x277D85DE8];
}

- (void)extractGenreMetadataFromFact:(id)fact withAllAnswers:(id)answers toCandidate:(id)candidate
{
  v39 = *MEMORY[0x277D85DE8];
  factCopy = fact;
  answersCopy = answers;
  candidateCopy = candidate;
  objectID = [factCopy objectID];
  if (objectID)
  {
    v11 = [answersCopy objectForKey:objectID];
    v12 = v11;
    if (v11)
    {
      v28 = candidateCopy;
      v29 = answersCopy;
      v30 = factCopy;
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      facts = [v11 facts];
      v14 = [facts countByEnumeratingWithState:&v31 objects:v36 count:16];
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
              objc_enumerationMutation(facts);
            }

            v18 = *(*(&v31 + 1) + 8 * i);
            predicateId = [v18 predicateId];
            v20 = [predicateId isEqualToString:@"PS33"];

            if (v20)
            {
              candidateCopy = v28;
              genreIDs = [v28 genreIDs];

              if (genreIDs)
              {
                genreIDs2 = [v28 genreIDs];
                objectID2 = [v18 objectID];
                v26 = [genreIDs2 arrayByAddingObject:objectID2];
                [v28 setGenreIDs:v26];
              }

              else
              {
                genreIDs2 = [v18 objectID];
                v35 = genreIDs2;
                objectID2 = [MEMORY[0x277CBEA60] arrayWithObjects:&v35 count:1];
                [v28 setGenreIDs:objectID2];
              }

              answersCopy = v29;
              factCopy = v30;

              goto LABEL_23;
            }
          }

          v15 = [facts countByEnumeratingWithState:&v31 objects:v36 count:16];
          if (v15)
          {
            continue;
          }

          break;
        }
      }

      facts = logForCSLogCategoryRecs();
      if (os_log_type_enabled(facts, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v38 = objectID;
        _os_log_impl(&dword_26B806000, facts, OS_LOG_TYPE_DEFAULT, "*warn* Genre name not found. Genre md=%@", buf, 0xCu);
      }

      answersCopy = v29;
      factCopy = v30;
      candidateCopy = v28;
      goto LABEL_23;
    }

    facts = logForCSLogCategoryRecs();
    if (!os_log_type_enabled(facts, OS_LOG_TYPE_DEFAULT))
    {
LABEL_23:

      goto LABEL_24;
    }

    *buf = 138412290;
    v38 = objectID;
    v21 = "*warn* Genre answer not found. Genre md=%@";
    v22 = facts;
LABEL_20:
    _os_log_impl(&dword_26B806000, v22, OS_LOG_TYPE_DEFAULT, v21, buf, 0xCu);
    goto LABEL_23;
  }

  v12 = logForCSLogCategoryRecs();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    facts = [factCopy objectID];
    *buf = 138412290;
    v38 = facts;
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