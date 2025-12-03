@interface SKGProcessor(Keyphraser)
- (id)availableLanguages;
- (id)loadedLocales;
- (uint64_t)generateKeyphrasesForRecord:()Keyphraser processedItem:processorFlags:cancelBlock:;
- (uint64_t)loadKeyphraser;
@end

@implementation SKGProcessor(Keyphraser)

- (uint64_t)loadKeyphraser
{
  mEMORY[0x277D657A8] = [MEMORY[0x277D657A8] sharedProcessorListener];
  currentPreferredLocaleIdentifiers = [mEMORY[0x277D657A8] currentPreferredLocaleIdentifiers];
  loadLanguageModels(currentPreferredLocaleIdentifiers);

  mEMORY[0x277D657A0] = [MEMORY[0x277D657A0] sharedContext];
  if ([mEMORY[0x277D657A0] enableExtractions])
  {

LABEL_4:
    forceEntityExtraction = [self forceEntityExtraction];
    v7 = +[SKGDataDetector sharedDetector];
    [v7 setForceDataDetection:forceEntityExtraction];

    v8 = +[SKGDataDetector sharedDetector];
    [v8 loadDetector];

    goto LABEL_5;
  }

  forceEntityExtraction2 = [self forceEntityExtraction];

  if (forceEntityExtraction2)
  {
    goto LABEL_4;
  }

LABEL_5:

  return 1;
}

- (id)availableLanguages
{
  mEMORY[0x277D657A8] = [MEMORY[0x277D657A8] sharedProcessorListener];
  currentPreferredLanguages = [mEMORY[0x277D657A8] currentPreferredLanguages];

  return currentPreferredLanguages;
}

- (uint64_t)generateKeyphrasesForRecord:()Keyphraser processedItem:processorFlags:cancelBlock:
{
  v213[1] = *MEMORY[0x277D85DE8];
  v9 = a3;
  v151 = a4;
  v129 = a6;
  v183 = 0;
  v184 = &v183;
  v185 = 0x2020000000;
  v186 = 1;
  context = objc_autoreleasePoolPush();
  textContentLanguage = [v151 textContentLanguage];

  if ([self recordContainsValue:v9 key:@"kMDItemTextContent"] & 1) != 0 || (objc_msgSend(self, "recordContainsValue:key:", v9, @"_kMDItemSnippet"))
  {
    bOOLValue = 1;
  }

  else
  {
    v11 = [self copyNumberValueFromRecord:v9 key:@"_kMDItemTextContentIndexExists"];
    bOOLValue = [v11 BOOLValue];
  }

  if (textContentLanguage)
  {
    v12 = MEMORY[0x277CBEAF8];
    textContentLanguage2 = [v151 textContentLanguage];
    currentLocale = [v12 localeWithLocaleIdentifier:textContentLanguage2];
  }

  else
  {
    currentLocale = 0;
  }

  if (!((currentLocale != 0) | bOOLValue & 1))
  {
    mEMORY[0x277D657A8] = [MEMORY[0x277D657A8] sharedProcessorListener];
    currentLocale = [mEMORY[0x277D657A8] currentLocale];
  }

  if (!currentLocale)
  {
    v126 = 0;
    goto LABEL_174;
  }

  LanguageID = SILanguagesGetLanguageID();
  Language = SILanguagesGetLanguage();
  v126 = LanguageID - 2 < 0x39;
  v147 = currentLocale;
  if (LanguageID - 2 >= 0x39)
  {
    mEMORY[0x277D657A0] = [MEMORY[0x277D657A0] sharedContext];
    [v151 setDidProcessKeyphrases:{objc_msgSend(mEMORY[0x277D657A0], "enableKeyphrases")}];
    goto LABEL_173;
  }

  v17 = Language;
  availableLanguages = [self availableLanguages];
  v19 = [availableLanguages containsObject:v17];

  mEMORY[0x277D657A0] = [self referenceDateForRecord:v9];
  if (mEMORY[0x277D657A0])
  {
    mEMORY[0x277D657A8]2 = [MEMORY[0x277D657A8] sharedProcessorListener];
    currentTimezone = [mEMORY[0x277D657A8]2 currentTimezone];
  }

  else
  {
    currentTimezone = 0;
  }

  if ((v19 & (textContentLanguage != 0)) != 0)
  {
    v213[0] = v17;
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v213 count:1];
    loadLanguageModels(v21);
  }

  if (([self recordContainsValue:v9 key:@"_kMDItemTextContentIsTranscribed"] & 1) != 0 || (objc_msgSend(v151, "bundleIdentifier"), v22 = objc_claimAutoreleasedReturnValue(), v23 = objc_msgSend(v22, "isEqualToString:", @"com.apple.mobilephone"), v22, v23))
  {
    [v151 setIsTranscribedText:1];
  }

  mEMORY[0x277D657A0]2 = [MEMORY[0x277D657A0] sharedContext];
  keyphraseExcludeBundles = [mEMORY[0x277D657A0]2 keyphraseExcludeBundles];
  bundleIdentifier = [v151 bundleIdentifier];
  v27 = [keyphraseExcludeBundles containsObject:bundleIdentifier];

  bundleIdentifier2 = [v151 bundleIdentifier];
  if (bundleIdentifier2)
  {
    mEMORY[0x277D657A0]3 = [MEMORY[0x277D657A0] sharedContext];
    keyphraseIncludeBundles = [mEMORY[0x277D657A0]3 keyphraseIncludeBundles];
    bundleIdentifier3 = [v151 bundleIdentifier];
    if ([keyphraseIncludeBundles containsObject:bundleIdentifier3])
    {
      v32 = 0;
    }

    else
    {
      bundleIdentifier4 = [v151 bundleIdentifier];
      v32 = [bundleIdentifier4 hasPrefix:@"com.apple."];
    }
  }

  else
  {
    v32 = 0;
  }

  mEMORY[0x277D657A0]4 = [MEMORY[0x277D657A0] sharedContext];
  if (v27 & 1 | (([mEMORY[0x277D657A0]4 enableKeyphrases] & 1) == 0) | v32 & 1)
  {
    v140 = 0;
  }

  else
  {
    v140 = [v151 isTranscribedText] ^ 1;
  }

  mEMORY[0x277D657A0]5 = [MEMORY[0x277D657A0] sharedContext];
  enableExtractions = [mEMORY[0x277D657A0]5 enableExtractions];

  v37 = enableExtractions & (v27 ^ 1);
  if (!(v37 & 1 | ((v140 & 1) == 0)))
  {
    protectionClass = [v151 protectionClass];
    if (protectionClass)
    {
      protectionClass2 = [v151 protectionClass];
      if ([protectionClass2 isEqualToString:*MEMORY[0x277CCA190]])
      {
        v140 = 0;
      }

      else
      {
        protectionClass3 = [v151 protectionClass];
        v41 = [protectionClass3 isEqualToString:*MEMORY[0x277CCA198]];

        v140 &= v41 ^ 1;
      }
    }
  }

  forceEntityExtraction = [self forceEntityExtraction];
  v123 = [self copyTextContentFromRecord:v9];
  v118 = v123;
  if (!v123)
  {
    v123 = [self copySnippetFromRecord:v9];
  }

  bundleIdentifier5 = [v151 bundleIdentifier];
  v128 = [bundleIdentifier5 isEqualToString:@"com.apple.mobilecal"];

  v181 = 0u;
  v182 = 0u;
  v180 = 0u;
  v142 = (a5 >> 9) & 1 & (forceEntityExtraction | v37);
  if (v142)
  {
    if ([self recordContainsValue:v9 key:@"kMDItemLatitude"] && objc_msgSend(self, "recordContainsValue:key:", v9, @"kMDItemLongitude"))
    {
      v43 = [self copyDoubleValueFromRecord:v9 key:@"kMDItemLatitude"];
      v44 = [self copyDoubleValueFromRecord:v9 key:@"kMDItemLongitude"];
      [v43 doubleValue];
      *&v180 = v45;
      [v44 doubleValue];
      *(&v181 + 1) = v46;
    }

    v178 = 0u;
    v179 = 0u;
    v176 = 0u;
    v177 = 0u;
    mEMORY[0x277D657A0]6 = [MEMORY[0x277D657A0] sharedContext];
    keyphraseOptionalExtractionAttributes = [mEMORY[0x277D657A0]6 keyphraseOptionalExtractionAttributes];

    v49 = 0;
    v50 = [keyphraseOptionalExtractionAttributes countByEnumeratingWithState:&v176 objects:v212 count:16];
    if (v50)
    {
      v51 = *v177;
      do
      {
        for (i = 0; i != v50; ++i)
        {
          if (*v177 != v51)
          {
            objc_enumerationMutation(keyphraseOptionalExtractionAttributes);
          }

          v53 = *(*(&v176 + 1) + 8 * i);
          mEMORY[0x277D65798] = [MEMORY[0x277D65798] sharedProcessor];
          v55 = [mEMORY[0x277D65798] recordContainsValue:v9 key:v53];

          if (v55)
          {
            mEMORY[0x277D65798]2 = [MEMORY[0x277D65798] sharedProcessor];
            v57 = [mEMORY[0x277D65798]2 copyStringValueFromRecord:v9 key:v53];

            if (v57)
            {
              if (!v49)
              {
                v49 = objc_alloc_init(MEMORY[0x277CBEB18]);
              }

              [v49 addObject:v57];
            }
          }
        }

        v50 = [keyphraseOptionalExtractionAttributes countByEnumeratingWithState:&v176 objects:v212 count:16];
      }

      while (v50);
    }
  }

  else
  {
    v49 = 0;
  }

  if (![v123 length] && !objc_msgSend(v49, "count"))
  {
    goto LABEL_170;
  }

  v170 = 0;
  v171 = &v170;
  v172 = 0x3032000000;
  v173 = __Block_byref_object_copy__21;
  v174 = __Block_byref_object_dispose__21;
  v175 = objc_alloc_init(SKGEntityRanker);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __97__SKGProcessor_Keyphraser__generateKeyphrasesForRecord_processedItem_processorFlags_cancelBlock___block_invoke;
  aBlock[3] = &unk_27893EEC8;
  v169 = &v183;
  v137 = v129;
  v168 = v137;
  v134 = _Block_copy(aBlock);
  if (v142)
  {
    v166[0] = MEMORY[0x277D85DD0];
    v166[1] = 3221225472;
    v166[2] = __97__SKGProcessor_Keyphraser__generateKeyphrasesForRecord_processedItem_processorFlags_cancelBlock___block_invoke_2;
    v166[3] = &unk_27893EEF0;
    v166[4] = &v170;
    v143 = _Block_copy(v166);
  }

  else
  {
    v143 = 0;
  }

  if ((forceEntityExtraction | v140) & bOOLValue)
  {
    v160[0] = MEMORY[0x277D85DD0];
    v160[1] = 3221225472;
    v160[2] = __97__SKGProcessor_Keyphraser__generateKeyphrasesForRecord_processedItem_processorFlags_cancelBlock___block_invoke_37;
    v160[3] = &unk_27893EF18;
    v161 = v147;
    v162 = v151;
    v164 = &v170;
    v165 = &v183;
    v163 = v137;
    v120 = _Block_copy(v160);
  }

  else
  {
    v120 = 0;
  }

  v58 = *(v184 + 24);
  if (v58 == 1 && v143 && v123)
  {
    v59 = enumerateEntityInfo(mEMORY[0x277D657A0], currentTimezone, v147, v123, 0, &v180, v143, v134);
    if ((v128 & 1) != 0 || (v60 = v59, [self forceEntityExtraction]))
    {
      v60 = enumerateAirportCodes(v123, v143);
    }

    v61 = v184;
    v62 = *(v184 + 24);
    if (v137 && (v62 & 1) != 0)
    {
      v58 = (*(v137 + 2))(v137, @"processTextContentFromRecord:keyphraser:entities") ^ 1;
      v61 = v184;
    }

    else
    {
      v58 = v62 != 0;
    }

    if (!v60)
    {
      v58 = 0;
    }

    *(v61 + 24) = v58;
  }

  if (!v58 || !v120 || !v123)
  {
    goto LABEL_131;
  }

  v63 = [v123 componentsSeparatedByString:@"\n"];
  v124 = [v63 count];
  lock = (&sLMLock_0 + 4 * LanguageID);
  os_unfair_lock_lock(lock);
  v64 = sLanguageModels_0[LanguageID];
  v65 = SILanguageModelRetain();
  if (!v65)
  {
    goto LABEL_130;
  }

  v122 = v65;
  if (!v124)
  {
    goto LABEL_129;
  }

  v66 = 0;
  v121 = v134 + 2;
  v116 = xmmword_231C220E0;
  do
  {
    v145 = v66;
    v135 = [v63 objectAtIndexedSubscript:v116];
    whitespaceCharacterSet = [MEMORY[0x277CCA900] whitespaceCharacterSet];
    v150 = [v135 stringByTrimmingCharactersInSet:whitespaceCharacterSet];

    v146 = v145 + 1;
    if (![v150 length])
    {
      goto LABEL_126;
    }

    if (v118)
    {
      v68 = 0;
    }

    else
    {
      v68 = v146 == v124;
    }

    v69 = v68;
    v130 = v69;
    v132 = v120;
    v133 = v143;
    v70 = v134;
    v206 = 0;
    v207 = &v206;
    v208 = 0x2020000000;
    v209 = 1;
    v139 = [v150 length];
    v71 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v125 = +[SKGDataDetector sharedDetector];
    v203[0] = MEMORY[0x277D85DD0];
    v203[1] = 3221225472;
    v203[2] = __enumerateKeyphraseInfo_block_invoke_0;
    v203[3] = &unk_27893EF90;
    v141 = v71;
    v204 = v141;
    v136 = v70;
    v205 = v136;
    if (([v125 enumerateDetectedDataInString:v150 locale:v147 referenceDate:mEMORY[0x277D657A0] referenceTimezone:currentTimezone entityBlock:0 rangeBlock:v203] & 1) == 0)
    {
      *(v207 + 24) = 0;
    }

    if (!*(v207 + 24) || (*v121)(v136))
    {
      v72 = 1;
      goto LABEL_121;
    }

    firstObject = [v141 firstObject];
    v74 = 0;
    v201[0] = 0;
    v201[1] = v201;
    v201[2] = 0x3010000000;
    v201[3] = &unk_231C4157F;
    v202 = v116;
    while (firstObject)
    {
      rangeValue = [firstObject rangeValue];
      v77 = v76;
      if (rangeValue != v74)
      {
        goto LABEL_104;
      }

      [v141 removeObjectAtIndex:0];
      if ([v141 count])
      {
        v78 = [v141 objectAtIndexedSubscript:0];
      }

      else
      {
        v78 = 0;
      }

      v74 += v77;
      firstObject = v78;
LABEL_115:
      if (v74 >= v139)
      {
        goto LABEL_120;
      }
    }

    v77 = 0;
    rangeValue = v139;
    if (v139 != v74)
    {
LABEL_104:
      v79 = [v150 substringWithRange:{v74, rangeValue - v74}];
      v187 = MEMORY[0x277D85DD0];
      v188 = 3221225472;
      v189 = __enumerateKeyphraseInfo_block_invoke_2_0;
      v190 = &unk_27893EFE0;
      v196 = v201;
      v192 = 0;
      v191 = 0;
      v193 = v132;
      v197 = &v206;
      v198 = v122;
      v199 = v147;
      v200 = v130;
      v194 = v133;
      v80 = v136;
      v195 = v80;
      v81 = SITextTokenizerEnumerateTokensInString();
      v82 = v207;
      *(v207 + 24) = v81;
      if (v81)
      {
        if (!(*v121)(v80))
        {
          if (firstObject)
          {
            [v141 removeObjectAtIndex:0];
            v74 = v77 + rangeValue;
            if ([v141 count])
            {
              v84 = [v141 objectAtIndexedSubscript:0];

              v83 = 1;
              firstObject = v84;
            }

            else
            {

              firstObject = 0;
              v83 = 1;
            }
          }

          else
          {
            v83 = 1;
            v74 = rangeValue;
          }

LABEL_108:

          if ((v83 & 1) == 0)
          {
            goto LABEL_120;
          }

          goto LABEL_115;
        }

        v82 = v207;
      }

      v83 = 0;
      *(v82 + 24) = 0;
      goto LABEL_108;
    }

    firstObject = 0;
LABEL_120:
    v85 = *(v207 + 24);
    _Block_object_dispose(v201, 8);

    v72 = v85 == 0;
LABEL_121:

    _Block_object_dispose(&v206, 8);
    v86 = v184;
    v87 = *(v184 + 24);
    if (v137 && (v87 & 1) != 0)
    {
      v87 = (*(v137 + 2))(v137, @"processTextContentFromRecord:keyphraser:text") ^ 1;
      v86 = v184;
    }

    else
    {
      LOBYTE(v87) = v87 != 0;
    }

    *(v86 + 24) = v87 & 1;
    if (v72 || (v87 & 1) == 0)
    {
      [v151 clearKeyphrases];

      break;
    }

LABEL_126:

    v66 = v146;
  }

  while (v146 != v124);
LABEL_129:
  SILanguageModelRelease();
LABEL_130:
  os_unfair_lock_unlock(lock);

  LOBYTE(v58) = *(v184 + 24);
LABEL_131:
  if ((v58 & 1) != 0 && v143 && [v49 count])
  {
    v158 = 0u;
    v159 = 0u;
    v156 = 0u;
    v157 = 0u;
    v88 = v49;
    v89 = [v88 countByEnumeratingWithState:&v156 objects:v211 count:16];
    if (v89)
    {
      v90 = *v157;
LABEL_136:
      v91 = 0;
      while (1)
      {
        if (*v157 != v90)
        {
          objc_enumerationMutation(v88);
        }

        v92 = *(*(&v156 + 1) + 8 * v91);
        v93 = enumerateEntityInfo(0, 0, v147, v92, 1, &v180, v143, v134);
        if ((v128 & 1) != 0 || (v94 = v93, [self forceEntityExtraction]))
        {
          v94 = enumerateAirportCodes(v92, v143);
        }

        v95 = v184;
        v96 = *(v184 + 24);
        if (v137 && (v96 & 1) != 0)
        {
          v97 = (*(v137 + 2))(v137, @"processTextContentFromRecord:keyphraser:optionalText") ^ 1;
          v95 = v184;
        }

        else
        {
          v97 = v96 != 0;
        }

        *(v95 + 24) = v97;
        if (!v94 || v97 == 0)
        {
          break;
        }

        if (v89 == ++v91)
        {
          v89 = [v88 countByEnumeratingWithState:&v156 objects:v211 count:16];
          if (v89)
          {
            goto LABEL_136;
          }

          break;
        }
      }
    }
  }

  if (*(v184 + 24) == 1)
  {
    v99 = [self copyStringValueFromRecord:v9 key:@"_SKGTestLocation"];
    v100 = v99;
    if (v99)
    {
      v101 = [v99 componentsSeparatedByString:{@", "}];
      if ([v101 count] == 3)
      {
        v102 = [(SKGEntity *)[SKGAddress alloc] initWithScore:1.0];
        [(SKGAddress *)v102 setAddress:v100];
        v103 = [v101 objectAtIndexedSubscript:0];
        [(SKGAddress *)v102 setCity:v103];

        v104 = [v101 objectAtIndexedSubscript:1];
        [(SKGAddress *)v102 setArea:v104];

        v105 = [v101 objectAtIndexedSubscript:2];
        [(SKGAddress *)v102 setCountry:v105];

        v106 = +[SKGDataDetector sharedDetector];
        v107 = [v106 locationFromAddress:v102 locale:v147];

        if (v107)
        {
          [v171[5] addEntity:v107];
        }
      }
    }

    if (v184[3])
    {
      [v171[5] keyphrases];
      v154 = 0u;
      v155 = 0u;
      v152 = 0u;
      v108 = v153 = 0u;
      v109 = [v108 countByEnumeratingWithState:&v152 objects:v210 count:16];
      if (v109)
      {
        v110 = *v153;
        do
        {
          for (j = 0; j != v109; ++j)
          {
            if (*v153 != v110)
            {
              objc_enumerationMutation(v108);
            }

            [v151 addKeyphrase:*(*(&v152 + 1) + 8 * j)];
          }

          v109 = [v108 countByEnumeratingWithState:&v152 objects:v210 count:16];
        }

        while (v109);
      }

      [v171[5] updateWithEntities:v151];
    }
  }

  _Block_object_dispose(&v170, 8);
LABEL_170:
  if (*(v184 + 24) == 1)
  {
    mEMORY[0x277D657A0]7 = [MEMORY[0x277D657A0] sharedContext];
    [v151 setDidProcessKeyphrases:{objc_msgSend(mEMORY[0x277D657A0]7, "enableKeyphrases")}];
  }

LABEL_173:
  currentLocale = v147;
LABEL_174:

  objc_autoreleasePoolPop(context);
  if (v126)
  {
    v113 = *(v184 + 24);
  }

  else
  {
    v113 = 1;
  }

  _Block_object_dispose(&v183, 8);

  v114 = *MEMORY[0x277D85DE8];
  return v113 & 1;
}

- (id)loadedLocales
{
  v0 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v1 = 0;
  v2 = &sLMLock_0;
  do
  {
    os_unfair_lock_lock(v2);
    if (sLanguageModels_0[v1])
    {
      v3 = SILanguagesGetLanguage();
      v4 = sRegions_0[v1];
      v5 = SILanguagesGetRegion();
      v6 = MEMORY[0x277CBEAF8];
      if (v5)
      {
        v7 = v5;
      }

      else
      {
        v7 = @"US";
      }

      v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%@", v3, v7];
      v9 = [v6 localeWithLocaleIdentifier:v8];

      [v0 addObject:v9];
    }

    os_unfair_lock_unlock(v2);
    ++v1;
    ++v2;
  }

  while (v1 != 59);

  return v0;
}

@end