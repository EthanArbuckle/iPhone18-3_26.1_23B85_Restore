@interface VoiceDialResultHandler
- (id)_nameSource;
- (id)_phoneticNames:(id)a3 fromDictionary:(id)a4;
- (id)actionForRecognitionResults:(id)a3;
- (void)_addressBook;
@end

@implementation VoiceDialResultHandler

- (id)_nameSource
{
  nameSource = self->_nameSource;
  if (!nameSource)
  {
    v4 = VSPreferencesCopySpokenLanguageIdentifier();
    v5 = [VoiceDialNameDataSource nameDataSourceForLanguageIdentifier:v4];
    v6 = self->_nameSource;
    self->_nameSource = v5;

    nameSource = self->_nameSource;
  }

  return nameSource;
}

- (void)_addressBook
{
  v6 = *MEMORY[0x29EDCA608];
  v2 = *a1;
  v4 = 138412290;
  v5 = v2;
  _os_log_error_impl(&dword_295FD5000, a2, OS_LOG_TYPE_ERROR, "Could not create address book: %@", &v4, 0xCu);
  v3 = *MEMORY[0x29EDCA608];
}

- (id)_phoneticNames:(id)a3 fromDictionary:(id)a4
{
  v22 = *MEMORY[0x29EDCA608];
  v5 = a3;
  v6 = a4;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (!v7)
  {
    v11 = 0;
    v9 = 0;
LABEL_16:

    v11 = 0;
    goto LABEL_17;
  }

  v8 = v7;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = *v18;
  do
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v18 != v12)
      {
        objc_enumerationMutation(v5);
      }

      v14 = [v6 objectForKey:*(*(&v17 + 1) + 8 * i)];

      if (v14)
      {
        v9 = v14;
      }

      else
      {
        v9 = &stru_2A1D19580;
      }

      if (!v11)
      {
        v11 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
      }

      v10 |= v14 != 0;
      [v11 addObject:v9];
    }

    v8 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  }

  while (v8);
  if ((v10 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_17:

  v15 = *MEMORY[0x29EDCA608];

  return v11;
}

- (id)actionForRecognitionResults:(id)a3
{
  v336 = *MEMORY[0x29EDCA608];
  v4 = a3;
  v5 = [v4 objectAtIndex:0];
  v6 = [v5 recognitionAction];
  v7 = objc_alloc_init(VoiceDialResultHandlerContext);
  VoiceDialConfigureSpokenLocalizedLabel(1);
  v8 = VoiceDialCopyErrorActionForResult(v5);
  v255 = v4;
  v268 = v5;
  v265 = v6;
  v289 = v7;
  if (v8 || ([v5 valueOfFirstElementWithClassIdentifier:@"voicemail"], v19 = objc_claimAutoreleasedReturnValue(), v19, v19) && (v8 = objc_alloc_init(VoiceDialVoicemailRecognitionAction)) != 0)
  {
    v9 = v8;
    v301 = 0;
    v302 = 0;
    v261 = 0;
    v263 = 0;
    v270 = 0;
    v272 = 0;
    v256 = 0;
    v252 = 0;
    v254 = 0;
    v258 = 0;
    v260 = 0;
    v292 = 0;
    obj = 0;
    v266 = 0;
    v267 = 0;
    v245 = 0;
    v247 = 0;
    v281 = 0;
    v285 = 0;
    v250 = 0;
    v10 = 0;
    v274 = 0;
    v277 = 0;
    v269 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v257 = 0;
    goto LABEL_239;
  }

  v317 = 0;
  v316 = 0;
  v315 = 0;
  VoiceDialCopyNamesLabelAndTypeFromRecognitionResults(v4, &v317, &v316, &v315);
  v20 = v317;
  v21 = v316;
  v22 = v315;
  v23 = [v5 valueOfFirstElementWithClassIdentifier:?];
  if (v23)
  {
    v24 = @"labeltype-phone";

    v251 = 1;
    v22 = v24;
  }

  else
  {
    v251 = v22 == 0;
  }

  v301 = v22;
  v302 = v21;
  v269 = v20;
  v244 = v23;
  v278 = self;
  if (v20 && (v25 = [(VoiceDialResultHandler *)self _addressBook]) != 0)
  {
    v26 = v25;
    v27 = [(VoiceDialResultHandler *)self _nameSource];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v29 = isKindOfClass;
    if (isKindOfClass)
    {
      v286 = isKindOfClass;
      v293 = [v6 knownValueForClassIdentifier:@"nickname"];
      if (v293)
      {
        v313 = 0u;
        v314 = 0u;
        v311 = 0u;
        v312 = 0u;
        obja = v20;
        v30 = [obja countByEnumeratingWithState:&v311 objects:v332 count:16];
        v31 = v289;
        if (v30)
        {
          v32 = v30;
          v33 = 0;
          v34 = *v312;
          do
          {
            v35 = 0;
            v36 = v33;
            do
            {
              if (*v312 != v34)
              {
                objc_enumerationMutation(obja);
              }

              v33 = *(*(&v311 + 1) + 8 * v35);

              [(VoiceDialResultHandlerContext *)v289 setNameToMatch:v33];
              VoiceDialSendNameAndExtendedLabelMatches(v26, v27, 0, 1, v293, v302, v22, _ResultHandlerAddressBookCallback, v289);
              ++v35;
              v36 = v33;
            }

            while (v32 != v35);
            v32 = [obja countByEnumeratingWithState:&v311 objects:v332 count:16];
          }

          while (v32);

          v5 = v268;
          v20 = v269;
          v31 = v289;
        }

        v37 = [(VoiceDialResultHandlerContext *)v31 compositeNames];
        v38 = [v37 count];

        if (!v38)
        {
          v39 = objc_alloc_init(VoiceDialResultHandlerContext);

          v289 = v39;
        }

        v6 = v265;
      }

      if (!-[VoiceDialResultHandlerContext resultStatus](v289, "resultStatus") && (([v6 knownValuesForClassIdentifier:@"firstname"], (v43 = objc_claimAutoreleasedReturnValue()) != 0) || (objc_msgSend(v6, "knownValuesForClassIdentifier:", @"lastname"), (v43 = objc_claimAutoreleasedReturnValue()) != 0)))
      {
        v285 = v43;
        v309 = 0u;
        v310 = 0u;
        v307 = 0u;
        v308 = 0u;
        v44 = v20;
        v45 = [v44 countByEnumeratingWithState:&v307 objects:v331 count:16];
        if (v45)
        {
          v46 = v45;
          v47 = 0;
          v48 = *v308;
          do
          {
            v49 = 0;
            v50 = v47;
            do
            {
              if (*v308 != v48)
              {
                objc_enumerationMutation(v44);
              }

              v47 = *(*(&v307 + 1) + 8 * v49);

              if ([v285 containsObject:v47])
              {
                [(VoiceDialResultHandlerContext *)v289 setRequiredNameMatchType:2];
                VoiceDialSendNameAndExtendedLabelMatches(v26, v27, 0, 0, v47, v302, v22, _ResultHandlerAddressBookCallback, v289);
                [(VoiceDialResultHandlerContext *)v289 setRequiredNameMatchType:0xFFFFFFFFLL];
              }

              ++v49;
              v50 = v47;
            }

            while (v46 != v49);
            v46 = [v44 countByEnumeratingWithState:&v307 objects:v331 count:16];
          }

          while (v46);

          v5 = v268;
        }

        v41 = v289;
        v51 = [(VoiceDialResultHandlerContext *)v289 compositeNames];
        v52 = [v51 count];

        if (!v52)
        {
          v53 = objc_alloc_init(VoiceDialResultHandlerContext);

          v41 = v53;
        }

        v40 = v293;
      }

      else
      {
        v285 = 0;
        v41 = v289;
        v40 = v293;
      }

      v29 = v286;
    }

    else
    {
      v40 = 0;
      v285 = 0;
      v41 = v289;
    }

    objb = v29 ^ 1;
    v54 = v29;
    if ([(VoiceDialResultHandlerContext *)v41 resultStatus])
    {
      v42 = 0;
    }

    else
    {
      v305 = 0u;
      v306 = 0u;
      v303 = 0u;
      v304 = 0u;
      v290 = v269;
      v55 = [v290 countByEnumeratingWithState:&v303 objects:v330 count:16];
      if (v55)
      {
        v56 = v55;
        v294 = v40;
        v57 = v41;
        v58 = v27;
        v59 = v57;
        v60 = 0;
        v287 = 0;
        v61 = *v304;
        do
        {
          for (i = 0; i != v56; ++i)
          {
            v63 = v60;
            if (*v304 != v61)
            {
              objc_enumerationMutation(v290);
            }

            v60 = *(*(&v303 + 1) + 8 * i);

            v64 = [(VoiceDialResultHandlerContext *)v59 nicknameMatchCount];
            VoiceDialSendNameAndExtendedLabelMatches(v26, v58, 0, objb & 1, v60, v302, v22, _ResultHandlerAddressBookCallback, v59);
            if ((v54 & 1) == 0 && [(VoiceDialResultHandlerContext *)v59 nicknameMatchCount]> v64)
            {
              v65 = v60;

              v287 = v65;
            }
          }

          v56 = [v290 countByEnumeratingWithState:&v303 objects:v330 count:16];
        }

        while (v56);

        v5 = v268;
        v66 = v59;
        v27 = v58;
        v41 = v66;
        v40 = v294;
        v23 = v244;
        v42 = v287;
      }

      else
      {
        v42 = 0;
      }
    }
  }

  else
  {
    v40 = 0;
    v285 = 0;
    v42 = 0;
    v27 = 0;
    objb = 1;
    v41 = v289;
  }

  v288 = v42;
  v257 = v27;
  if (v23)
  {
    v243 = 0;
  }

  else
  {
    v67 = objc_alloc(MEMORY[0x29EDB8E20]);
    v68 = [(VoiceDialResultHandlerContext *)v41 localizedPhoneLabels];
    v69 = [v67 initWithSet:v68];

    v70 = [(VoiceDialResultHandlerContext *)v41 localizedEmailLabels];
    [v69 intersectSet:v70];

    v71 = [(VoiceDialResultHandlerContext *)v41 localizedPhoneLabels];
    [v71 minusSet:v69];

    v72 = [(VoiceDialResultHandlerContext *)v41 localizedEmailLabels];
    v243 = v69;
    [v72 minusSet:v69];
  }

  v73 = [(VoiceDialResultHandlerContext *)v41 compositeNames];
  v74 = [v73 count];

  v75 = [(VoiceDialResultHandlerContext *)v41 localizedPhoneLabels];
  v76 = [v75 count];

  v77 = [(VoiceDialResultHandlerContext *)v41 localizedEmailLabels];
  v78 = [v77 count];

  v79 = [v243 count];
  v292 = v40;
  if ([(VoiceDialResultHandlerContext *)v41 resultStatus]!= 1)
  {
    v260 = 0;
    v261 = 0;
    v80 = 0;
    v256 = 0;
    v252 = 0;
    v254 = 0;
    v258 = 0;
    v266 = 0;
    v267 = 0;
    v81 = 0;
    objc = 0;
    v282 = 0;
    v236 = 0;
    v237 = 0;
    v82 = 0;
    v83 = 0;
    v238 = 0;
    v239 = 0;
    v84 = 0;
    goto LABEL_87;
  }

  v275 = v78;
  if (v74 == 1)
  {
    if (v78 + v76 > 1 || v79)
    {
      if (!v244)
      {
        v103 = objc_alloc_init(VoiceDialResultHandlerContext);
        v104 = [(VoiceDialResultHandler *)v278 _addressBook];
        v105 = [(VoiceDialResultHandlerContext *)v41 compositeNames];
        v106 = [v105 anyObject];
        VoiceDialSendNameAndExtendedLabelMatches(v104, v257, 0, objb & 1, v106, v302, v301, _ResultHandlerAddressBookCallback, v103);

        if ([(VoiceDialResultHandlerContext *)v103 resultStatus])
        {
          v107 = v103;

          v41 = v107;
        }

        v84 = 0;
        v5 = v268;
        goto LABEL_71;
      }
    }

    else if ([(VoiceDialResultHandlerContext *)v41 resultPerson])
    {
      [(VoiceDialResultHandlerContext *)v41 setResultStatus:2];
      if (v76 <= 0)
      {
        [(VoiceDialResultHandlerContext *)v41 unlocalizedEmailLabels];
      }

      else
      {
        [(VoiceDialResultHandlerContext *)v41 unlocalizedPhoneLabels];
      }
      v84 = ;

      [(VoiceDialResultHandlerContext *)v41 setMatchedLabelType:v76 > 0];
      v137 = ABAddressBookCopyLocalizedLabel([v84 anyObject]);
      if (v137)
      {
        v138 = v137;
        v139 = v84;
        v140 = [(VoiceDialResultHandlerContext *)v41 resultPerson];
        if (v244)
        {
          MostLikelyFacetimeContactWithPersonAndLabel = VoiceDialCopyMostLikelyNumberWithPersonAndLabel(v140, v138);
        }

        else
        {
          MostLikelyFacetimeContactWithPersonAndLabel = VoiceDialGetMostLikelyFacetimeContactWithPersonAndLabel(v140, v138);
        }

        v142 = MostLikelyFacetimeContactWithPersonAndLabel;
        if (MostLikelyFacetimeContactWithPersonAndLabel)
        {
          if ([(VoiceDialResultHandlerContext *)v41 contactInfo])
          {
            CFRelease([(VoiceDialResultHandlerContext *)v41 contactInfo]);
          }

          [(VoiceDialResultHandlerContext *)v41 setContactInfo:CFRetain(v142)];
        }

        CFRelease(v138);
        v84 = v139;
      }

      goto LABEL_71;
    }
  }

  v84 = 0;
LABEL_71:
  if ([(VoiceDialResultHandlerContext *)v41 resultStatus]== 1)
  {
    v85 = [objc_alloc(MEMORY[0x29EDC82E0]) initWithModelIdentifier:@"com.apple.voicedial"];
    v86 = v85;
    if (v244)
    {
      v87 = @"namelabel";
    }

    else
    {
      v87 = @"namelonglabel";
    }

    if (v244)
    {
      v88 = @"command";
    }

    else
    {
      v88 = @"facetime";
    }

    [v85 setSequenceTag:v87];
    v241 = v88;
    [v5 valueOfFirstElementWithClassIdentifier:v241];
    v267 = v271 = v86;
    [v86 setKnownValue:? phoneticValue:? forClassIdentifier:?];
    v291 = v41;
    v248 = v84;
    v264 = v79;
    if (v74 == 1)
    {
      v89 = [(VoiceDialResultHandlerContext *)v41 compositeNames];
      v90 = [v89 anyObject];

      v91 = [(VoiceDialResultHandlerContext *)v41 spokenCompositeNames];
      v92 = [v91 count];

      if (v92)
      {
        v93 = [(VoiceDialResultHandlerContext *)v41 spokenCompositeNames];
        v94 = [v93 anyObject];

        if (!v94 || ![(__CFString *)v94 isEqualToString:v90])
        {
LABEL_84:
          [v86 setKnownValue:v90 phoneticValue:v94 forClassIdentifier:@"name"];
          v95 = [(VoiceDialResultHandlerContext *)v41 lastNamesByFirstNames];
          v96 = [v95 count];

          v260 = v94;
          if (v96)
          {
            v97 = [(VoiceDialResultHandlerContext *)v41 lastNamesByFirstNames];
            v98 = kVoiceDialFirstNameClassIdentifier;
          }

          else
          {
            v108 = [(VoiceDialResultHandlerContext *)v41 firstNamesByLastNames];
            v109 = [v108 count];

            if (!v109)
            {
LABEL_99:
              v238 = 0;
              v239 = 0;
              v266 = 0;
              v256 = 0;
              goto LABEL_100;
            }

            v97 = [(VoiceDialResultHandlerContext *)v41 firstNamesByLastNames];
            v98 = kVoiceDialLastNameClassIdentifier;
          }

          v110 = [v97 allKeys];
          [v86 setKnownValues:v110 phoneticValues:0 forClassIdentifier:*v98];

          goto LABEL_99;
        }
      }

      v94 = 0;
      goto LABEL_84;
    }

    if (v74 < 2)
    {
      v238 = 0;
      v239 = 0;
      v266 = 0;
      v260 = 0;
      v90 = 0;
      v256 = 0;
LABEL_100:
      v111 = 0;
      goto LABEL_101;
    }

    v100 = [(VoiceDialResultHandlerContext *)v41 lastNamesByFirstNames];
    if ([v100 count] == 1)
    {

LABEL_91:
      v101 = [(VoiceDialResultHandlerContext *)v41 lastNamesByFirstNames];
      v102 = kVoiceDialFirstNameClassIdentifier;
      goto LABEL_117;
    }

    if ([(VoiceDialResultHandlerContext *)v41 allNamesMatchedType]&& ![(VoiceDialResultHandlerContext *)v41 lastNameMatchType])
    {
      v234 = [v269 count];

      if (v234 > 1)
      {
        goto LABEL_91;
      }
    }

    else
    {
    }

    v124 = [(VoiceDialResultHandlerContext *)v41 firstNamesByLastNames];
    if ([v124 count] == 1)
    {

LABEL_116:
      v101 = [(VoiceDialResultHandlerContext *)v41 firstNamesByLastNames];
      v102 = kVoiceDialLastNameClassIdentifier;
LABEL_117:
      v125 = *v102;
      v239 = v125;
      if (v101)
      {
        v126 = v125;
        v127 = [v101 allKeys];
        v238 = v101;
        v262 = [v101 mergeSetValuesIntoArray];
        objd = v127;
        [v271 setKnownValues:v127 phoneticValues:0 forClassIdentifier:v126];
        v128 = [(VoiceDialResultHandlerContext *)v41 compositeNames];
        v111 = [v128 allObjects];

        v129 = [(VoiceDialResultHandlerContext *)v41 spokenCompositeNames];
        v130 = [v129 allObjects];

        v256 = v130;
        if ([v130 count] < 6)
        {
          v266 = 0;
          v136 = v262;
          v134 = objd;
        }

        else
        {
          v131 = objc_alloc(MEMORY[0x29EDBA0F8]);
          VoiceDialSpokenLocalizedString(@"MANY_AMBIGUOUS_NAMES_SPOKEN_FORMAT_QUESTION_%@");
          v133 = v132 = v111;
          v134 = objd;
          v135 = [objd lastObject];
          v266 = [v131 initWithFormat:v133, v135];

          v111 = v132;
          v41 = v291;
          v136 = v262;
        }

        goto LABEL_140;
      }

LABEL_139:
      v144 = [(VoiceDialResultHandlerContext *)v41 topLevelNonNickNames];
      v136 = [v144 allObjects];

      v145 = [(VoiceDialResultHandlerContext *)v41 compositeNames];
      v111 = [v145 allObjects];

      v134 = [(VoiceDialResultHandlerContext *)v41 spokenCompositeNames];
      v256 = [v134 allObjects];
      v238 = 0;
      v266 = 0;
LABEL_140:

      if ([(VoiceDialResultHandlerContext *)v41 nicknameMatchCount]>= 1 && [(VoiceDialResultHandlerContext *)v41 nicknameMatchCount]< v74 && v288)
      {
        [v271 setKnownValue:v288 phoneticValue:0 forClassIdentifier:@"nickname"];
      }

      if (v136)
      {
        v273 = v111;
        v146 = [(VoiceDialResultHandlerContext *)v41 phoneticNamesByName];
        v147 = [(VoiceDialResultHandler *)v278 _phoneticNames:v136 fromDictionary:v146];
        v261 = v136;
        [v271 setAmbiguousValues:v136 phoneticValues:v147 forClassIdentifier:@"name"];

        v246 = 0;
        v237 = 0;
        v254 = 0;
        v90 = 0;
        v260 = 0;
        v279 = 0;
        v115 = 0x29EDB8000uLL;
        goto LABEL_146;
      }

      v260 = 0;
      v90 = 0;
LABEL_101:
      v112 = v275 + v76;
      v273 = v111;
      if (v275 + v76 == 1 && !v264)
      {
        v113 = [(VoiceDialResultHandlerContext *)v41 localizedPhoneLabels];
        v114 = [v113 anyObject];

        v115 = 0x29EDB8000;
        if (!v114)
        {
          v116 = [(VoiceDialResultHandlerContext *)v41 localizedEmailLabels];
          v114 = [v116 anyObject];
        }

        v237 = v114;
        [v271 setKnownValue:v114 phoneticValue:0 forClassIdentifier:@"label"];
        v246 = 0;
        goto LABEL_110;
      }

      v115 = 0x29EDB8000uLL;
      if (v264 + v112 < 1)
      {
        v246 = 0;
        v237 = 0;
LABEL_110:
        v254 = 0;
        v261 = 0;
        v279 = 1;
        goto LABEL_146;
      }

      v283 = v90;
      v117 = MEMORY[0x29EDB8DE8];
      v118 = [(VoiceDialResultHandlerContext *)v41 localizedPhoneLabels];
      v119 = [v118 allObjects];
      v120 = [v117 arrayWithArray:v119];

      v121 = [(VoiceDialResultHandlerContext *)v41 localizedEmailLabels];
      v122 = [v121 allObjects];
      [v120 addObjectsFromArray:v122];

      v123 = [v243 allObjects];
      [v120 addObjectsFromArray:v123];

      if (v120)
      {
        v254 = v120;
        [v271 setAmbiguousValues:v120 phoneticValues:0 forClassIdentifier:@"label"];
        v237 = 0;
        v261 = 0;
        v246 = 1;
      }

      else
      {
        v246 = 0;
        v237 = 0;
        v254 = 0;
        v261 = 0;
      }

      v279 = 1;
      v90 = v283;
LABEL_146:
      v276 = objc_alloc_init(*(v115 + 3560));
      v148 = [(VoiceDialResultHandlerContext *)v41 localizedPhoneLabels];
      v149 = [(VoiceDialResultHandlerContext *)v41 localizedEmailLabels];
      v150 = v148;
      v151 = v149;
      v152 = v243;
      v153 = [MEMORY[0x29EDB8E20] set];
      v326 = 0u;
      v327 = 0u;
      v328 = 0u;
      v329 = 0u;
      v154 = v150;
      v155 = [v154 countByEnumeratingWithState:&v326 objects:v335 count:16];
      if (v155)
      {
        v156 = v155;
        v157 = *v327;
        do
        {
          for (j = 0; j != v156; ++j)
          {
            if (*v327 != v157)
            {
              objc_enumerationMutation(v154);
            }

            [v153 addObject:*(*(&v326 + 1) + 8 * j)];
          }

          v156 = [v154 countByEnumeratingWithState:&v326 objects:v335 count:16];
        }

        while (v156);
      }

      v324 = 0u;
      v325 = 0u;
      v322 = 0u;
      v323 = 0u;
      v159 = v151;
      v160 = [v159 countByEnumeratingWithState:&v322 objects:v334 count:16];
      if (v160)
      {
        v161 = v160;
        v162 = *v323;
        do
        {
          for (k = 0; k != v161; ++k)
          {
            if (*v323 != v162)
            {
              objc_enumerationMutation(v159);
            }

            [v153 addObject:*(*(&v322 + 1) + 8 * k)];
          }

          v161 = [v159 countByEnumeratingWithState:&v322 objects:v334 count:16];
        }

        while (v161);
      }

      v259 = v154;
      v282 = v90;
      v253 = v159;

      v320 = 0u;
      v321 = 0u;
      v318 = 0u;
      v319 = 0u;
      obje = v152;
      v164 = [obje countByEnumeratingWithState:&v318 objects:v333 count:16];
      if (v164)
      {
        v165 = v164;
        v166 = *v319;
        do
        {
          for (m = 0; m != v165; ++m)
          {
            if (*v319 != v166)
            {
              objc_enumerationMutation(obje);
            }

            v168 = *(*(&v318 + 1) + 8 * m);
            v169 = MEMORY[0x29EDBA0F8];
            v170 = VoiceDialSpokenLocalizedString(@"SPOKEN_LABEL_WITH_PHONE");
            v171 = [v169 stringWithFormat:v170, v168];
            [v153 addObject:v171];

            v172 = MEMORY[0x29EDBA0F8];
            v173 = VoiceDialSpokenLocalizedString(@"SPOKEN_LABEL_WITH_%@_EMAIL");
            v174 = [v172 stringWithFormat:v173, v168];
            [v153 addObject:v174];
          }

          v165 = [obje countByEnumeratingWithState:&v318 objects:v333 count:16];
        }

        while (v165);
      }

      v175 = [v153 allObjects];

      v82 = v276;
      if (v267)
      {
        [v276 addObject:?];
      }

      v83 = v241;
      v80 = v273;
      v84 = v248;
      if (v273)
      {
        [v276 addObjectsFromArray:v273];
      }

      if ([v273 count] <= 1 && v175)
      {
        [v276 addObjectsFromArray:v175];
      }

      v258 = v175;
      [v271 setKeywords:v276];
      v99 = v271;
      v41 = v291;
      if (v279)
      {
        v176 = v246;
        if (v264 > 0)
        {
          v176 = 1;
        }

        if (v176 == 1)
        {
          v177 = _CommaSeparatedStringFromArray(v258);
          objc = VoiceDialSpokenLocalizedString(@"AMBIGUOUS_LABEL_STATUS_STRING");
          v178 = objc_alloc(MEMORY[0x29EDBA0F8]);
          VoiceDialSpokenLocalizedString(@"AMBIGUOUS_LABELS_SPOKEN_FORMAT");
          v179 = v280 = v99;
          v180 = v260;
          if (!v260)
          {
            v180 = v282;
          }

          v252 = v177;
          v181 = v178;
          v82 = v276;
          v81 = [v181 initWithFormat:v179, v180, v177];

          v99 = v280;
          goto LABEL_185;
        }

        v81 = 0;
        objc = 0;
      }

      else
      {
        objc = VoiceDialSpokenLocalizedString(@"AMBIGUOUS_NAMES_STATUS_STRING");
        if (!v266)
        {
          if (v256)
          {
            v227 = v256;
          }

          else
          {
            v227 = v273;
          }

          v228 = _CommaSeparatedStringFromArray(v227);
          v229 = v99;
          v230 = objc_alloc(MEMORY[0x29EDBA0F8]);
          v231 = VoiceDialSpokenLocalizedString(@"AMBIGUOUS_NAMES_SPOKEN_FORMAT_QUESTION_%@");
          v232 = v230;
          v99 = v229;
          v81 = [v232 initWithFormat:v231, v228];

          v84 = v248;
          v233 = v228;
          v82 = v276;
          v182 = v233;
          v252 = 0;
          goto LABEL_186;
        }

        v81 = v266;
      }

      v252 = 0;
LABEL_185:
      v182 = 0;
LABEL_186:
      v236 = v182;
      [(VoiceDialVoicemailRecognitionAction *)v99 setRepeatedSpokenFeedbackString:v182];
      goto LABEL_187;
    }

    if ([(VoiceDialResultHandlerContext *)v41 allNamesMatchedType]&& [(VoiceDialResultHandlerContext *)v41 lastNameMatchType]== 1)
    {
      v143 = [v269 count];

      if (v143 > 1)
      {
        goto LABEL_116;
      }
    }

    else
    {
    }

    v239 = 0;
    goto LABEL_139;
  }

  v260 = 0;
  v261 = 0;
  v80 = 0;
  v256 = 0;
  v252 = 0;
  v254 = 0;
  v258 = 0;
  v266 = 0;
  v267 = 0;
  v81 = 0;
  objc = 0;
  v282 = 0;
  v236 = 0;
  v237 = 0;
  v82 = 0;
  v83 = 0;
  v238 = 0;
  v239 = 0;
LABEL_87:
  v99 = 0;
LABEL_187:
  v274 = v82;
  v277 = v99;
  v289 = v41;
  v242 = v83;
  v272 = v80;
  if ([(VoiceDialResultHandlerContext *)v41 resultStatus]== 2)
  {
    if (v244)
    {
      v183 = [VoiceDialRecognitionAction alloc];
      v184 = [(VoiceDialResultHandlerContext *)v41 contactInfo];
      if ([(VoiceDialResultHandlerContext *)v41 resultPerson])
      {
        RecordID = ABRecordGetRecordID([(VoiceDialResultHandlerContext *)v41 resultPerson]);
      }

      else
      {
        RecordID = 0xFFFFFFFFLL;
      }

      v191 = [(VoiceDialRecognitionAction *)v183 initWithPhoneNumber:v184 uid:RecordID];
    }

    else
    {
      v188 = [VoiceDialFacetimeRecognitionAction alloc];
      v189 = [(VoiceDialResultHandlerContext *)v41 contactInfo];
      if ([(VoiceDialResultHandlerContext *)v41 resultPerson])
      {
        v190 = ABRecordGetRecordID([(VoiceDialResultHandlerContext *)v41 resultPerson]);
      }

      else
      {
        v190 = 0xFFFFFFFFLL;
      }

      v191 = [(VoiceDialFacetimeRecognitionAction *)v188 initWithContactInfo:v189 uid:v190];
    }

    v99 = v191;

    if ([(VoiceDialResultHandlerContext *)v41 resultPerson])
    {
      v192 = ABRecordCopyCompositeName([(VoiceDialResultHandlerContext *)v41 resultPerson]);
      v270 = VoiceDialPersonCopyCompositeName([(VoiceDialResultHandlerContext *)v41 resultPerson], 3);
    }

    else
    {
      v192 = 0;
      v270 = 0;
    }

    if ([(VoiceDialResultHandlerContext *)v41 matchedLabelType]== 1)
    {
      [(VoiceDialResultHandlerContext *)v41 localizedPhoneLabels];
    }

    else
    {
      [(VoiceDialResultHandlerContext *)v41 localizedEmailLabels];
    }
    v240 = ;

    if ([(VoiceDialResultHandlerContext *)v41 matchedLabelType]== 1)
    {
      [(VoiceDialResultHandlerContext *)v41 unlocalizedPhoneLabels];
    }

    else
    {
      [(VoiceDialResultHandlerContext *)v41 unlocalizedEmailLabels];
    }
    v193 = ;

    v235 = v193;
    if (v240)
    {
      v194 = [v240 anyObject];
      v195 = [v193 anyObject];
      v196 = ABAddressBookCopyLocalizedLabel(v195);

      v197 = v196;
    }

    else
    {
      v194 = 0;
      v197 = 0;
    }

    v263 = v197;
    if ([(__CFString *)v192 length])
    {
      v249 = v192;

      if ([v194 length] && -[__CFString length](v197, "length"))
      {
        if (v244)
        {
          v198 = @"CONFIRMED_SPOKEN_NAME_LABEL_FORMAT_CALLING_%@_%@";
        }

        else
        {
          v198 = @"CONFIRMED_FACETIME_SPOKEN_NAME_LABEL_FORMAT_STARTING_FACETIME_WITH_%@_%@";
        }

        if (v244)
        {
          v199 = @"CONFIRMED_DISPLAY_NAME_LABEL_FORMAT_CALLING_%@";
        }

        else
        {
          v199 = @"CONFIRMED_FACETIME_DISPLAY_NAME_LABEL_FORMAT_FACETIME_%@";
        }

        if (!v251)
        {
          v200 = [(VoiceDialResultHandlerContext *)v41 matchedLabelType];
          v201 = MEMORY[0x29EDBA0F8];
          if (v200 == 1)
          {
            v202 = @"SPOKEN_LABEL_WITH_PHONE";
          }

          else
          {
            v202 = @"SPOKEN_LABEL_WITH_%@_EMAIL";
          }

          v203 = VoiceDialSpokenLocalizedString(v202);
          v204 = [v201 stringWithFormat:v203, v194];

          v199 = @"CONFIRMED_FACETIME_DISPLAY_NAME_LABEL_FORMAT_FACETIME_%@";
          v194 = v204;
          v198 = @"CONFIRMED_FACETIME_SPOKEN_NAME_LABEL_FORMAT_STARTING_FACETIME_WITH_%@_%@";
        }

        v205 = objc_alloc(MEMORY[0x29EDBA0F8]);
        v206 = VoiceDialBundle();
        v207 = [v206 localizedStringForKey:v199 value:&stru_2A1D19580 table:@"Feedback"];
        v208 = [v205 initWithFormat:v207, v263];

        v209 = objc_alloc(MEMORY[0x29EDBA0F8]);
        v210 = VoiceDialSpokenLocalizedString(v198);
        v211 = [v209 initWithFormat:v210, v270, v194];

        v81 = v210;
        v187 = v208;
      }

      else
      {
        v212 = v194;
        v213 = objc_alloc(MEMORY[0x29EDBA0F8]);
        v214 = VoiceDialBundle();
        v215 = v214;
        if (v244)
        {
          v216 = [v214 localizedStringForKey:@"CONFIRMED_DISPLAY_STRING" value:&stru_2A1D19580 table:@"Feedback"];
          v284 = [v213 initWithString:v216];
          v217 = @"CONFIRMED_SPOKEN_NAME_FORMAT";
        }

        else
        {
          v216 = [v214 localizedStringForKey:@"CONFIRMED_FACETIME_DISPLAY_STRING" value:&stru_2A1D19580 table:@"Feedback"];
          v284 = [v213 initWithFormat:v216];
          v217 = @"CONFIRMED_FACETIME_SPOKEN_NAME_FORMAT_STARTING_FACETIME_WITH_%@";
        }

        v222 = objc_alloc(MEMORY[0x29EDBA0F8]);
        v223 = VoiceDialSpokenLocalizedString(v217);
        v211 = [v222 initWithFormat:v223, v270];

        v81 = v223;
        v187 = v284;
        v194 = v212;
      }

      v186 = v249;
    }

    else
    {
      v218 = VoiceDialBundle();
      v219 = v218;
      if (v244)
      {
        v220 = @"CONFIRMED_DISPLAY_STRING";
      }

      else
      {
        v220 = @"CONFIRMED_FACETIME_DISPLAY_STRING";
      }

      if (v244)
      {
        v221 = @"CONFIRMED_SPOKEN_STRING";
      }

      else
      {
        v221 = @"CONFIRMED_FACETIME_SPOKEN_STRING";
      }

      v187 = [v218 localizedStringForKey:v220 value:&stru_2A1D19580 table:@"Feedback"];

      v211 = VoiceDialSpokenLocalizedString(v221);
      v186 = v282;
    }

    v247 = v194;
    v250 = v192;

    v81 = v211;
  }

  else
  {
    v247 = 0;
    v250 = 0;
    v270 = 0;
    v263 = 0;
    v240 = 0;
    v235 = v84;
    v186 = v282;
    v187 = objc;
  }

  v281 = v186;
  obj = v187;
  v245 = v81;
  [(VSRecognitionAction *)v99 setStatusDisplayString:v187];
  [(VSRecognitionAction *)v99 setSpokenFeedbackString:v81];
  v9 = v99;
  [(VSRecognitionAction *)v99 setResultDisplayString:v186];

  v12 = v244;
  v11 = v288;
  v17 = v240;
  v13 = v242;
  v14 = v238;
  v15 = v239;
  v10 = v236;
  v16 = v237;
  v18 = v235;
LABEL_239:
  VoiceDialConfigureSpokenLocalizedLabel(0);
  v224 = v9;

  v225 = *MEMORY[0x29EDCA608];
  return v9;
}

@end