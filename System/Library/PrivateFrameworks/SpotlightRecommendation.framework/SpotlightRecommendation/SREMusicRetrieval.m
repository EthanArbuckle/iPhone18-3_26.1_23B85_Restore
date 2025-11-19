@interface SREMusicRetrieval
- (BOOL)isMusicRecEligible:(id)a3;
- (SREMusicRetrieval)initWithLocale:(id)a3 queue:(id)a4 error:(id *)a5;
- (id)_parseQueryString:(id)a3;
- (id)_removeRecentlyPlayedCandidateAdamIDs:(id)a3 recentPlayed:(id)a4;
- (void)_callCompletionHandler:(id)a3;
- (void)_callMetadataEndpointWithAdamIDs:(id)a3 queryIntent:(id)a4;
- (void)retrieveMusicWithQuery:(id)a3 queryID:(unint64_t)a4;
@end

@implementation SREMusicRetrieval

- (SREMusicRetrieval)initWithLocale:(id)a3 queue:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v13.receiver = self;
  v13.super_class = SREMusicRetrieval;
  v10 = [(SREMusicRetrieval *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_locale, a3);
    objc_storeStrong(&v11->_queue, a4);
  }

  return v11;
}

- (BOOL)isMusicRecEligible:(id)a3
{
  v4 = [(SREMusicRetrieval *)self _parseQueryString:a3];
  if (v4)
  {
    v5 = [(SREMusicRetrieval *)self locale];
    v6 = [v5 localeIdentifier];
    v7 = [v6 isEqualToString:@"en_US"];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)retrieveMusicWithQuery:(id)a3 queryID:(unint64_t)a4
{
  v53 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(SREMusicRetrieval *)self locale];
  v8 = [v7 localeIdentifier];
  v9 = [v8 isEqualToString:@"en_US"];

  if (v9)
  {
    v10 = [(SREMusicRetrieval *)self _parseQueryString:v6];
    v11 = logForCSLogCategoryRecs();
    v12 = v11;
    if (v10)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        [SREMusicRetrieval retrieveMusicWithQuery:queryID:];
      }

      v13 = objc_alloc_init(SREMusicFeatureExtraction);
      v14 = logForCSLogCategoryRecs();
      v15 = v14;
      v16 = a4 - 1;
      if (a4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_26B806000, v15, OS_SIGNPOST_INTERVAL_BEGIN, a4, "SREFeatureExtractionLatency", &unk_26B818409, buf, 2u);
      }

      v49 = 0;
      v17 = [(SREMusicFeatureExtraction *)v13 retrieveNowPlayingHistoryWithLength:10 error:&v49];
      v18 = v49;
      v19 = logForCSLogCategoryRecs();
      v20 = v19;
      if (v16 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_26B806000, v20, OS_SIGNPOST_INTERVAL_END, a4, "SREFeatureExtractionLatency", &unk_26B818409, buf, 2u);
      }

      v21 = logForCSLogCategoryRecs();
      v22 = v21;
      if (!v17 || v18)
      {
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          [SREMusicRetrieval retrieveMusicWithQuery:queryID:];
        }

        [(SREMusicRetrieval *)self _callCompletionHandler:v18];
      }

      else
      {
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
        {
          [SREMusicRetrieval retrieveMusicWithQuery:queryID:];
        }

        v23 = +[SREMusicRetrievalModel sharedInstance];
        if (v23)
        {
          v47 = v13;
          v24 = [v10 genres];
          v25 = [v24 count];

          if (v25)
          {
            memset(v48, 0, sizeof(v48));
            v26 = [v10 genres];
            if ([v26 countByEnumeratingWithState:v48 objects:v50 count:16])
            {
              v27 = **(&v48[0] + 1);
            }

            else
            {
              v27 = &stru_287C42A38;
            }
          }

          else
          {
            v27 = &stru_287C42A38;
          }

          v32 = logForCSLogCategoryRecs();
          v33 = v32;
          if (v16 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v32))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_26B806000, v33, OS_SIGNPOST_INTERVAL_BEGIN, a4, "SREModelInferrenceLatency", &unk_26B818409, buf, 2u);
          }

          v46 = v27;
          v45 = [[SREMusicModelQuery alloc] initWithGenreID:v27];
          v34 = [v23 inferenceWithSequence:v17 query:? error:?];
          v18 = 0;
          v35 = logForCSLogCategoryRecs();
          v36 = v35;
          if (v16 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v35))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_26B806000, v36, OS_SIGNPOST_INTERVAL_END, a4, "SREModelInferrenceLatency", &unk_26B818409, buf, 2u);
          }

          v37 = logForCSLogCategoryRecs();
          v38 = v37;
          if (v34)
          {
            if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
            {
              [SREMusicRetrieval retrieveMusicWithQuery:queryID:];
            }

            v39 = [(SREMusicRetrieval *)self _removeRecentlyPlayedCandidateAdamIDs:v34 recentPlayed:v17];

            v40 = logForCSLogCategoryRecs();
            v41 = v40;
            if (v16 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v40))
            {
              *buf = 0;
              _os_signpost_emit_with_name_impl(&dword_26B806000, v41, OS_SIGNPOST_INTERVAL_BEGIN, a4, "SREMedaDataFetchingLatency", &unk_26B818409, buf, 2u);
            }

            [(SREMusicRetrieval *)self _callMetadataEndpointWithAdamIDs:v39 queryIntent:v10];
            v42 = logForCSLogCategoryRecs();
            v43 = v42;
            if (v16 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v42))
            {
              *buf = 0;
              _os_signpost_emit_with_name_impl(&dword_26B806000, v43, OS_SIGNPOST_INTERVAL_END, a4, "SREMedaDataFetchingLatency", &unk_26B818409, buf, 2u);
            }
          }

          else
          {
            if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
            {
              [SREMusicRetrieval retrieveMusicWithQuery:v18 queryID:v38];
            }

            [(SREMusicRetrieval *)self _callCompletionHandler:v18];
          }

          v13 = v47;
        }

        else
        {
          v31 = logForCSLogCategoryRecs();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
          {
            [SREMusicRetrieval retrieveMusicWithQuery:queryID:];
          }

          v18 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.SREMusicRetrieval" code:-1 userInfo:0];
          [(SREMusicRetrieval *)self _callCompletionHandler:v18];
        }
      }
    }

    else
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_26B806000, v12, OS_LOG_TYPE_DEFAULT, "Music recommendation skipped because of no music intent.", buf, 2u);
      }

      [(SREMusicRetrieval *)self _callCompletionHandler:0];
    }
  }

  else
  {
    v28 = logForCSLogCategoryRecs();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v29 = [(SREMusicRetrieval *)self locale];
      v30 = [v29 localeIdentifier];
      *buf = 138412290;
      v52 = v30;
      _os_log_impl(&dword_26B806000, v28, OS_LOG_TYPE_DEFAULT, "Music recommendation skipped for locale: %@", buf, 0xCu);
    }

    [(SREMusicRetrieval *)self _callCompletionHandler:0];
  }

  v44 = *MEMORY[0x277D85DE8];
}

- (void)_callMetadataEndpointWithAdamIDs:(id)a3 queryIntent:(id)a4
{
  v72 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([v6 count])
  {
    v8 = [v7 genres];
    v9 = [v8 count];

    if (v9)
    {
      v10 = 200;
    }

    else
    {
      v10 = 25;
    }

    v11 = v6;
    v48 = self;
    v49 = v6;
    if ([v11 count] > v10)
    {
      v12 = [v11 subarrayWithRange:{0, v10}];

      v11 = v12;
    }

    v61 = 0;
    v46 = objc_alloc_init(SREMusicMetadataRetrieval);
    v47 = v11;
    v13 = [(SREMusicMetadataRetrieval *)v46 retrieveMusicMetadata:v11 error:&v61];
    v45 = v61;
    v50 = [MEMORY[0x277CBEB18] array];
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    obj = v13;
    v14 = [obj countByEnumeratingWithState:&v57 objects:v71 count:16];
    if (v14)
    {
      v15 = v14;
      v52 = *v58;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v58 != v52)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v57 + 1) + 8 * i);
          v53 = 0u;
          v54 = 0u;
          v55 = 0u;
          v56 = 0u;
          v18 = [v17 genreIDs];
          v19 = [v18 countByEnumeratingWithState:&v53 objects:v70 count:16];
          if (v19)
          {
            v20 = v19;
            v21 = *v54;
            while (2)
            {
              for (j = 0; j != v20; ++j)
              {
                if (*v54 != v21)
                {
                  objc_enumerationMutation(v18);
                }

                v23 = *(*(&v53 + 1) + 8 * j);
                v24 = [v7 genres];
                LOBYTE(v23) = [v24 containsObject:v23];

                if (v23)
                {
                  v25 = 0;
                  goto LABEL_22;
                }
              }

              v20 = [v18 countByEnumeratingWithState:&v53 objects:v70 count:16];
              if (v20)
              {
                continue;
              }

              break;
            }
          }

          v25 = 1;
LABEL_22:

          v26 = [v7 genres];
          v27 = [v26 count];

          if (v25 && v27)
          {
            v28 = logForCSLogCategoryRecs();
            if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
            {
              v29 = [v17 trackId];
              v30 = [v17 trackName];
              v31 = [v17 genresDebugString];
              *buf = 134218498;
              v63 = v29;
              v64 = 2112;
              v65 = v30;
              v66 = 2112;
              v67 = v31;
              _os_log_impl(&dword_26B806000, v28, OS_LOG_TYPE_DEFAULT, "Recommendation candidate got filtered by genre mismatch. ADAM ID: %ld  name:%@  genre:%@", buf, 0x20u);
            }

LABEL_33:

            continue;
          }

          v32 = [v17 artworkURL];
          v33 = [v32 length];

          v28 = logForCSLogCategoryRecs();
          v34 = os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT);
          if (!v33)
          {
            if (v34)
            {
              v39 = [v17 trackId];
              v40 = [v17 artworkURL];
              *buf = 134218242;
              v63 = v39;
              v64 = 2112;
              v65 = v40;
              _os_log_impl(&dword_26B806000, v28, OS_LOG_TYPE_DEFAULT, "Skipped recommendation candidate %lu with invalid artworkURL: %@", buf, 0x16u);
            }

            goto LABEL_33;
          }

          if (v34)
          {
            v35 = [v17 trackId];
            v36 = [v17 trackName];
            v37 = [v17 genresDebugString];
            v38 = [v17 artistName];
            *buf = 134218754;
            v63 = v35;
            v64 = 2112;
            v65 = v36;
            v66 = 2112;
            v67 = v37;
            v68 = 2112;
            v69 = v38;
            _os_log_impl(&dword_26B806000, v28, OS_LOG_TYPE_DEFAULT, "Music Recs Result: %ld %@ Genre=%@ ARTIST_NAME=%@", buf, 0x2Au);
          }

          [v50 addObject:v17];
          if ([v50 count] > 2)
          {
            goto LABEL_36;
          }
        }

        v15 = [obj countByEnumeratingWithState:&v57 objects:v71 count:16];
      }

      while (v15);
    }

LABEL_36:

    v41 = logForCSLogCategoryRecs();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
    {
      [SREMusicRetrieval _callMetadataEndpointWithAdamIDs:queryIntent:];
    }

    v6 = v49;
    if ([v50 count])
    {
      v42 = [(SREMusicRetrieval *)v48 candidatesHandler];
      (v42)[2](v42, v50);
    }

    [(SREMusicRetrieval *)v48 _callCompletionHandler:0];
  }

  else
  {
    v43 = logForCSLogCategoryRecs();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_26B806000, v43, OS_LOG_TYPE_DEFAULT, "Music recommendation metadata call skipped due to no candidates.", buf, 2u);
    }

    [(SREMusicRetrieval *)self _callCompletionHandler:0];
  }

  v44 = *MEMORY[0x277D85DE8];
}

- (id)_parseQueryString:(id)a3
{
  v25[164] = *MEMORY[0x277D85DE8];
  v19 = a3;
  v3 = [SREQueryIntent queryIntentWithGenres:MEMORY[0x277CBEBF8]];
  v4 = [SREQueryIntent queryIntentWithGenres:&unk_287C44E08];
  v5 = [SREQueryIntent queryIntentWithGenres:&unk_287C44E20];
  v6 = [SREQueryIntent queryIntentWithGenres:&unk_287C44E38];
  v20 = [SREQueryIntent queryIntentWithGenres:&unk_287C44E50];
  v7 = [SREQueryIntent queryIntentWithGenres:&unk_287C44E68];
  v21 = [SREQueryIntent queryIntentWithGenres:&unk_287C44E80];
  v8 = [SREQueryIntent queryIntentWithGenres:&unk_287C44E98];
  v22 = [SREQueryIntent queryIntentWithGenres:&unk_287C44EB0];
  v23 = [SREQueryIntent queryIntentWithGenres:&unk_287C44EC8];
  v9 = [SREQueryIntent queryIntentWithGenres:&unk_287C44EE0];
  v10 = [SREQueryIntent queryIntentWithGenres:&unk_287C44EF8];
  v11 = [SREQueryIntent queryIntentWithGenres:&unk_287C44F10];
  v24[0] = @"music";
  v24[1] = @"musi";
  v25[0] = v3;
  v25[1] = v3;
  v24[2] = @"play music";
  v24[3] = @"play musi";
  v25[2] = v3;
  v25[3] = v3;
  v24[4] = @"song";
  v24[5] = @"play song";
  v25[4] = v3;
  v25[5] = v3;
  v24[6] = @"play a song";
  v24[7] = @"songs";
  v25[6] = v3;
  v25[7] = v3;
  v24[8] = @"play songs";
  v24[9] = @"hiphop";
  v25[8] = v3;
  v25[9] = v4;
  v24[10] = @"hip hop";
  v24[11] = @"hip-hop";
  v25[10] = v4;
  v25[11] = v4;
  v24[12] = @"hiphop music";
  v24[13] = @"hip hop music";
  v25[12] = v4;
  v25[13] = v4;
  v24[14] = @"hip-hop music";
  v24[15] = @"hiphop musi";
  v25[14] = v4;
  v25[15] = v4;
  v24[16] = @"hip hop musi";
  v24[17] = @"hip-hop musi";
  v25[16] = v4;
  v25[17] = v4;
  v24[18] = @"hiphop song";
  v24[19] = @"hip hop song";
  v25[18] = v4;
  v25[19] = v4;
  v24[20] = @"hip-hop song";
  v24[21] = @"hiphop songs";
  v25[20] = v4;
  v25[21] = v4;
  v24[22] = @"hip hop songs";
  v24[23] = @"hip-hop songs";
  v25[22] = v4;
  v25[23] = v4;
  v24[24] = @"play hiphop";
  v24[25] = @"play hip hop";
  v25[24] = v4;
  v25[25] = v4;
  v24[26] = @"play hip-hop";
  v24[27] = @"play hiphop music";
  v25[26] = v4;
  v25[27] = v4;
  v24[28] = @"play hip hop music";
  v24[29] = @"play hip-hop music";
  v25[28] = v4;
  v25[29] = v4;
  v24[30] = @"play hiphop musi";
  v24[31] = @"play hip hop musi";
  v25[30] = v4;
  v25[31] = v4;
  v24[32] = @"play hip-hop musi";
  v24[33] = @"play hiphop song";
  v25[32] = v4;
  v25[33] = v4;
  v24[34] = @"play hip hop song";
  v24[35] = @"play hip-hop song";
  v25[34] = v4;
  v25[35] = v4;
  v24[36] = @"play hiphop songs";
  v24[37] = @"play hip hop songs";
  v25[36] = v4;
  v25[37] = v4;
  v24[38] = @"play hip-hop songs";
  v24[39] = @"rap";
  v25[38] = v4;
  v25[39] = v4;
  v24[40] = @"rap music";
  v24[41] = @"rap musi";
  v25[40] = v4;
  v25[41] = v4;
  v24[42] = @"rap song";
  v24[43] = @"rap songs";
  v25[42] = v4;
  v25[43] = v4;
  v24[44] = @"play rap";
  v24[45] = @"play rap music";
  v25[44] = v4;
  v25[45] = v4;
  v24[46] = @"play rap song";
  v24[47] = @"play rap songs";
  v25[46] = v4;
  v25[47] = v4;
  v24[48] = @"pop music";
  v24[49] = @"pop musi";
  v25[48] = v5;
  v25[49] = v5;
  v24[50] = @"play pop music";
  v24[51] = @"pop song";
  v25[50] = v5;
  v25[51] = v5;
  v24[52] = @"play pop song";
  v24[53] = @"pop songs";
  v25[52] = v5;
  v25[53] = v5;
  v18 = v5;
  v24[54] = @"play pop songs";
  v24[55] = @"rock music";
  v25[54] = v5;
  v25[55] = v6;
  v24[56] = @"rock musi";
  v24[57] = @"play rock";
  v25[56] = v6;
  v25[57] = v6;
  v24[58] = @"play rock music";
  v24[59] = @"rock song";
  v25[58] = v6;
  v25[59] = v6;
  v24[60] = @"play rock song";
  v24[61] = @"rock songs";
  v25[60] = v6;
  v25[61] = v6;
  v17 = v6;
  v24[62] = @"play rock songs";
  v24[63] = @"alternative music";
  v25[62] = v6;
  v25[63] = v20;
  v24[64] = @"alternative musi";
  v25[64] = v20;
  v24[65] = @"play alternative music";
  v25[65] = v20;
  v24[66] = @"alternative song";
  v25[66] = v20;
  v24[67] = @"play alternative song";
  v25[67] = v20;
  v24[68] = @"alternative songs";
  v25[68] = v20;
  v24[69] = @"play alternative songs";
  v25[69] = v20;
  v24[70] = @"r&b";
  v25[70] = v7;
  v24[71] = @"rhythm and blues";
  v25[71] = v7;
  v24[72] = @"r&b music";
  v25[72] = v7;
  v24[73] = @"r&b musi";
  v25[73] = v7;
  v24[74] = @"play r&b music";
  v25[74] = v7;
  v24[75] = @"r&b song";
  v25[75] = v7;
  v24[76] = @"play r&b song";
  v25[76] = v7;
  v24[77] = @"r&b songs";
  v25[77] = v7;
  v24[78] = @"play r&b songs";
  v25[78] = v7;
  v24[79] = @"soul music";
  v25[79] = v7;
  v24[80] = @"soul musi";
  v25[80] = v7;
  v24[81] = @"play soul music";
  v25[81] = v7;
  v24[82] = @"soul song";
  v25[82] = v7;
  v24[83] = @"play soul song";
  v25[83] = v7;
  v24[84] = @"soul songs";
  v25[84] = v7;
  v24[85] = @"play soul songs";
  v25[85] = v7;
  v24[86] = @"country music";
  v25[86] = v21;
  v24[87] = @"country musi";
  v25[87] = v21;
  v24[88] = @"play country music";
  v25[88] = v21;
  v24[89] = @"country song";
  v25[89] = v21;
  v24[90] = @"play country song";
  v25[90] = v21;
  v24[91] = @"country songs";
  v25[91] = v21;
  v24[92] = @"play country songs";
  v25[92] = v21;
  v24[93] = @"soundtrack";
  v25[93] = v8;
  v24[94] = @"soundtracks";
  v25[94] = v8;
  v24[95] = @"soundtrack music";
  v25[95] = v8;
  v24[96] = @"soundtrack musi";
  v25[96] = v8;
  v24[97] = @"play soundtrack";
  v25[97] = v8;
  v24[98] = @"play soundtracks";
  v25[98] = v8;
  v24[99] = @"play soundtrack music";
  v25[99] = v8;
  v24[100] = @"soundtrack song";
  v25[100] = v8;
  v24[101] = @"play soundtrack song";
  v25[101] = v8;
  v24[102] = @"soundtrack songs";
  v25[102] = v8;
  v24[103] = @"play soundtrack songs";
  v25[103] = v8;
  v24[104] = @"dance music";
  v25[104] = v22;
  v24[105] = @"dance musi";
  v25[105] = v22;
  v24[106] = @"play dance music";
  v25[106] = v22;
  v24[107] = @"dance song";
  v25[107] = v22;
  v24[108] = @"play dance song";
  v25[108] = v22;
  v24[109] = @"dance songs";
  v25[109] = v22;
  v24[110] = @"play dance songs";
  v25[110] = v22;
  v24[111] = @"electronic music";
  v25[111] = v23;
  v24[112] = @"electronic musi";
  v25[112] = v23;
  v24[113] = @"play electronic music";
  v25[113] = v23;
  v24[114] = @"electronic song";
  v25[114] = v23;
  v24[115] = @"play electronic song";
  v25[115] = v23;
  v24[116] = @"electronic songs";
  v25[116] = v23;
  v24[117] = @"play electronic songs";
  v25[117] = v23;
  v24[118] = @"children music";
  v25[118] = v9;
  v24[119] = @"child music";
  v25[119] = v9;
  v24[120] = @"children's music";
  v25[120] = v9;
  v24[121] = @"play children music";
  v25[121] = v9;
  v24[122] = @"play child music";
  v25[122] = v9;
  v24[123] = @"play children's music";
  v25[123] = v9;
  v24[124] = @"children song";
  v25[124] = v9;
  v24[125] = @"child song";
  v25[125] = v9;
  v24[126] = @"children's song";
  v25[126] = v9;
  v24[127] = @"play children song";
  v25[127] = v9;
  v24[128] = @"play child song";
  v25[128] = v9;
  v24[129] = @"play children's song";
  v25[129] = v9;
  v24[130] = @"children songs";
  v25[130] = v9;
  v24[131] = @"child songs";
  v25[131] = v9;
  v24[132] = @"children's songs";
  v25[132] = v9;
  v24[133] = @"play children songs";
  v25[133] = v9;
  v24[134] = @"play child songs";
  v25[134] = v9;
  v24[135] = @"play children's songs";
  v25[135] = v9;
  v24[136] = @"kids music";
  v25[136] = v9;
  v24[137] = @"play kids music";
  v25[137] = v9;
  v24[138] = @"kid's music";
  v25[138] = v9;
  v24[139] = @"play kid's music";
  v25[139] = v9;
  v24[140] = @"kids song";
  v25[140] = v9;
  v24[141] = @"play kids song";
  v25[141] = v9;
  v24[142] = @"kid's song";
  v25[142] = v9;
  v24[143] = @"play kid's song";
  v25[143] = v9;
  v24[144] = @"kids songs";
  v25[144] = v9;
  v24[145] = @"play kids songs";
  v25[145] = v9;
  v24[146] = @"kid's songs";
  v25[146] = v9;
  v24[147] = @"play kid's songs";
  v25[147] = v9;
  v24[148] = @"jazz";
  v25[148] = v10;
  v24[149] = @"jazz music";
  v25[149] = v10;
  v24[150] = @"jazz musi";
  v25[150] = v10;
  v24[151] = @"play jazz";
  v25[151] = v10;
  v24[152] = @"play jazz music";
  v25[152] = v10;
  v24[153] = @"jazz song";
  v25[153] = v10;
  v24[154] = @"play jazz song";
  v25[154] = v10;
  v24[155] = @"jazz songs";
  v25[155] = v10;
  v24[156] = @"play jazz songs";
  v25[156] = v10;
  v24[157] = @"classical music";
  v25[157] = v11;
  v24[158] = @"classical musi";
  v24[159] = @"play classical music";
  v24[160] = @"classical song";
  v24[161] = @"play classical song";
  v24[162] = @"classical songs";
  v24[163] = @"play classical songs";
  v25[158] = v11;
  v25[159] = v11;
  v25[160] = v11;
  v25[161] = v11;
  v25[162] = v11;
  v25[163] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:164];
  v13 = [v19 lowercaseString];

  v14 = [v12 objectForKey:v13];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (id)_removeRecentlyPlayedCandidateAdamIDs:(id)a3 recentPlayed:(id)a4
{
  v37 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if ([v6 count])
  {
    v7 = [MEMORY[0x277CBEB58] setWithCapacity:10];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v24 = v6;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v29 objects:v36 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v30;
LABEL_4:
      v12 = 0;
      while (1)
      {
        if (*v30 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(*(&v29 + 1) + 8 * v12), "adamID", v24)}];
        [v7 addObject:v13];

        if ([v7 count] > 9)
        {
          break;
        }

        if (v10 == ++v12)
        {
          v10 = [v8 countByEnumeratingWithState:&v29 objects:v36 count:16];
          if (v10)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }

    v14 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v5, "count")}];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v15 = v5;
    v16 = [v15 countByEnumeratingWithState:&v25 objects:v35 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v26;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v26 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v25 + 1) + 8 * i);
          if ([v7 containsObject:{v20, v24}])
          {
            v21 = logForCSLogCategoryRecs();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v34 = v20;
              _os_log_impl(&dword_26B806000, v21, OS_LOG_TYPE_DEFAULT, "Music recommendation candidate got removed due to recently played. AdamID=%@", buf, 0xCu);
            }
          }

          else
          {
            [v14 addObject:v20];
          }
        }

        v17 = [v15 countByEnumeratingWithState:&v25 objects:v35 count:16];
      }

      while (v17);
    }

    v6 = v24;
  }

  else
  {
    v14 = v5;
  }

  v22 = *MEMORY[0x277D85DE8];

  return v14;
}

- (void)_callCompletionHandler:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44__SREMusicRetrieval__callCompletionHandler___block_invoke;
  v7[3] = &unk_279D04298;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

void __44__SREMusicRetrieval__callCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) completionHandler];
  v2[2](v2, *(a1 + 40));
}

- (void)retrieveMusicWithQuery:(uint64_t)a1 queryID:(NSObject *)a2 .cold.4(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_26B806000, a2, OS_LOG_TYPE_ERROR, "Music recommendation dropped because of model inference error: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end