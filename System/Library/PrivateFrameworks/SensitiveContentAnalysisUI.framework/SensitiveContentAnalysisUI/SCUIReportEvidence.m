@interface SCUIReportEvidence
- (SCUIReportEvidence)initWithVictim:(id)a3 suspects:(id)a4 application:(int64_t)a5;
- (SCUIReportEvidence)initWithVictimHandle:(id)a3 media:(id)a4 selectedMediaObject:(id)a5 chat:(id)a6;
@end

@implementation SCUIReportEvidence

- (SCUIReportEvidence)initWithVictimHandle:(id)a3 media:(id)a4 selectedMediaObject:(id)a5 chat:(id)a6
{
  v227 = *MEMORY[0x1E69E9840];
  v190 = a3;
  v9 = a4;
  v182 = a5;
  v175 = a6;
  v191 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v189 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v208 = 0u;
  v209 = 0u;
  v210 = 0u;
  v211 = 0u;
  obj = v9;
  v10 = [obj countByEnumeratingWithState:&v208 objects:v222 count:16];
  if (v10)
  {
    v184 = *v209;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v209 != v184)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v208 + 1) + 8 * i);
        v13 = [v12 fileURL];
        v14 = v13 == 0;

        if (v14)
        {
          v19 = [MEMORY[0x1E697B660] clientUI];
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            v20 = [v12 transferGUID];
            LODWORD(buf) = 138412290;
            *(&buf + 4) = v20;
            _os_log_impl(&dword_1BC630000, v19, OS_LOG_TYPE_DEFAULT, "Media object %@ has no fileURL, skipping...", &buf, 0xCu);
          }
        }

        else
        {
          v15 = [v12 senderHandle];
          v16 = [v15 ID];
          v17 = v16;
          if (v16)
          {
            v18 = v16;
          }

          else
          {
            v18 = [v190 ID];
          }

          v19 = v18;

          v21 = [v191 objectForKeyedSubscript:v19];
          v22 = v21 == 0;

          if (v22)
          {
            v23 = objc_alloc_init(MEMORY[0x1E695DF70]);
            [v191 setObject:v23 forKeyedSubscript:v19];
          }

          v24 = [v189 objectForKeyedSubscript:v19];
          v25 = v24 == 0;

          if (v25)
          {
            v26 = [v12 senderHandle];
            v27 = v26;
            if (v26)
            {
              v28 = v26;
            }

            else
            {
              v28 = v190;
            }

            [v189 setObject:v28 forKeyedSubscript:v19];
          }

          v29 = [MEMORY[0x1E695DF00] date];
          [(SCUIReportEvidence *)self setIncidentReportDate:v29];

          v30 = [v182 transferGUID];
          v31 = [v12 transferGUID];
          v32 = [v30 isEqual:v31];

          v33 = [v12 commSafetySensitive];
          v34 = MEMORY[0x1E695E118];
          if (v33 != 1)
          {
            v35 = [v12 commSafetySensitive];
            v34 = MEMORY[0x1E695E118];
            if (v35 != 2)
            {
              v34 = MEMORY[0x1E695E110];
            }
          }

          v36 = v34;
          v37 = [SCUIReportSensitiveMedia alloc];
          v38 = [v12 fileURL];
          v39 = [v12 UTIType];
          v40 = [v12 transferGUID];
          v41 = [v12 time];
          v42 = [(SCUIReportSensitiveMedia *)v37 initWithURL:v38 UTIType:v39 identifier:v40 dateReceived:v41 isSensitive:v36 wasImpetusOfReport:v32];

          v43 = [v191 objectForKeyedSubscript:v19];
          [v43 addObject:v42];
        }
      }

      v10 = [obj countByEnumeratingWithState:&v208 objects:v222 count:16];
    }

    while (v10);
  }

  v174 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v206 = 0u;
  v207 = 0u;
  v204 = 0u;
  v205 = 0u;
  v185 = [v191 allKeys];
  v44 = [v185 countByEnumeratingWithState:&v204 objects:v221 count:16];
  if (v44)
  {
    v45 = *v205;
    v180 = *MEMORY[0x1E695C360];
    v176 = *MEMORY[0x1E695C330];
    v171 = *MEMORY[0x1E695C240];
    v168 = *MEMORY[0x1E695C230];
    v165 = *MEMORY[0x1E695C208];
    v162 = *MEMORY[0x1E695C2F0];
    do
    {
      for (j = 0; j != v44; ++j)
      {
        if (*v205 != v45)
        {
          objc_enumerationMutation(v185);
        }

        v47 = *(*(&v204 + 1) + 8 * j);
        v48 = [v190 ID];
        v49 = [v47 isEqual:v48];

        if ((v49 & 1) == 0)
        {
          v50 = [v189 objectForKeyedSubscript:v47];
          if (v50)
          {
            v220[0] = v180;
            v220[1] = v176;
            v220[2] = v171;
            v220[3] = v168;
            v220[4] = v165;
            v220[5] = v162;
            v51 = [MEMORY[0x1E695DEC8] arrayWithObjects:v220 count:6];
            v52 = [v50 cnContactWithKeys:v51];

            v53 = [v50 displayNameForChat:v175];
            v54 = [SCUIReportSuspect alloc];
            v55 = [v50 ID];
            v56 = [v191 objectForKeyedSubscript:v47];
            v57 = [(SCUIReportSuspect *)v54 initWithDisplayName:v53 accountID:v55 sensitiveMediaFiles:v56];

            v58 = [v52 emailAddresses];
            v59 = [v58 firstObject];
            v60 = [v59 value];
            [(SCUIReportSuspect *)v57 setEmailAddress:v60];

            v61 = [MEMORY[0x1E695CD80] stringFromContact:v52 style:0];
            [(SCUIReportSuspect *)v57 setFullName:v61];

            v62 = [v52 phoneNumbers];
            v63 = [v62 firstObject];
            v64 = [v63 value];

            if (v64)
            {
              v65 = [v64 formattedInternationalStringValue];
              [(SCUIReportSuspect *)v57 setPhoneNumber:v65];
            }

            [v174 addObject:v57];
          }
        }
      }

      v44 = [v185 countByEnumeratingWithState:&v204 objects:v221 count:16];
    }

    while (v44);
  }

  v159 = objc_opt_new();
  v158 = objc_opt_new();
  v202 = 0u;
  v203 = 0u;
  v200 = 0u;
  v201 = 0u;
  v66 = [v175 chatItems];
  v160 = [v66 reverseObjectEnumerator];

  v166 = [v160 countByEnumeratingWithState:&v200 objects:v219 count:16];
  if (v166)
  {
    v161 = *v201;
    do
    {
      for (k = 0; k != v166; ++k)
      {
        if (*v201 != v161)
        {
          objc_enumerationMutation(v160);
        }

        v67 = *(*(&v200 + 1) + 8 * k);
        v212 = 0;
        v213 = &v212;
        v214 = 0x2050000000;
        v68 = getIMMessagePartChatItemClass_softClass;
        v215 = getIMMessagePartChatItemClass_softClass;
        if (!getIMMessagePartChatItemClass_softClass)
        {
          *&buf = MEMORY[0x1E69E9820];
          *(&buf + 1) = 3221225472;
          v224 = __getIMMessagePartChatItemClass_block_invoke;
          v225 = &unk_1E7FF2370;
          v226 = &v212;
          __getIMMessagePartChatItemClass_block_invoke(&buf);
          v68 = v213[3];
        }

        v69 = v68;
        _Block_object_dispose(&v212, 8);
        if (objc_opt_isKindOfClass())
        {
          v163 = v67;
          v169 = [v163 message];
          v70 = [v169 guid];
          if (v70)
          {
            v71 = [v169 guid];
            v72 = [v159 containsObject:v71];

            if ((v72 & 1) == 0)
            {
              v73 = [v169 guid];
              [v159 addObject:v73];

              v74 = MEMORY[0x1E695DF70];
              v75 = [v169 fileTransferGUIDs];
              v76 = v75;
              if (v75)
              {
                v77 = v75;
              }

              else
              {
                v77 = MEMORY[0x1E695E0F0];
              }

              v78 = [v74 arrayWithArray:v77];

              v198 = 0u;
              v199 = 0u;
              v196 = 0u;
              v197 = 0u;
              v177 = [v163 visibleAssociatedMessageChatItems];
              v79 = [v177 countByEnumeratingWithState:&v196 objects:v218 count:16];
              if (v79)
              {
                v186 = *v197;
                do
                {
                  for (m = 0; m != v79; ++m)
                  {
                    if (*v197 != v186)
                    {
                      objc_enumerationMutation(v177);
                    }

                    v81 = *(*(&v196 + 1) + 8 * m);
                    v212 = 0;
                    v213 = &v212;
                    v214 = 0x2050000000;
                    v82 = getIMAssociatedStickerChatItemClass_softClass;
                    v215 = getIMAssociatedStickerChatItemClass_softClass;
                    if (!getIMAssociatedStickerChatItemClass_softClass)
                    {
                      *&buf = MEMORY[0x1E69E9820];
                      *(&buf + 1) = 3221225472;
                      v224 = __getIMAssociatedStickerChatItemClass_block_invoke;
                      v225 = &unk_1E7FF2370;
                      v226 = &v212;
                      __getIMAssociatedStickerChatItemClass_block_invoke(&buf);
                      v82 = v213[3];
                    }

                    v83 = v82;
                    _Block_object_dispose(&v212, 8);
                    if (objc_opt_isKindOfClass())
                    {
                      v84 = v81;
                      v85 = [v84 transferGUID];
                      v86 = v85 == 0;

                      if (!v86)
                      {
                        v87 = [v84 transferGUID];
                        [v78 addObject:v87];
                      }
                    }

                    v212 = 0;
                    v213 = &v212;
                    v214 = 0x2050000000;
                    v88 = getIMAggregateAcknowledgmentChatItemClass_softClass;
                    v215 = getIMAggregateAcknowledgmentChatItemClass_softClass;
                    if (!getIMAggregateAcknowledgmentChatItemClass_softClass)
                    {
                      *&buf = MEMORY[0x1E69E9820];
                      *(&buf + 1) = 3221225472;
                      v224 = __getIMAggregateAcknowledgmentChatItemClass_block_invoke;
                      v225 = &unk_1E7FF2370;
                      v226 = &v212;
                      __getIMAggregateAcknowledgmentChatItemClass_block_invoke(&buf);
                      v88 = v213[3];
                    }

                    v89 = v88;
                    _Block_object_dispose(&v212, 8);
                    if (objc_opt_isKindOfClass())
                    {
                      v90 = v81;
                      v192 = 0u;
                      v193 = 0u;
                      v194 = 0u;
                      v195 = 0u;
                      v91 = [v90 acknowledgments];
                      v92 = [v91 countByEnumeratingWithState:&v192 objects:v217 count:16];
                      if (v92)
                      {
                        v93 = *v193;
                        do
                        {
                          for (n = 0; n != v92; ++n)
                          {
                            if (*v193 != v93)
                            {
                              objc_enumerationMutation(v91);
                            }

                            v95 = *(*(&v192 + 1) + 8 * n);
                            v96 = [v95 fileTransferGUIDs];
                            v97 = v96 == 0;

                            if (!v97)
                            {
                              v98 = [v95 fileTransferGUIDs];
                              [v78 addObjectsFromArray:v98];
                            }
                          }

                          v92 = [v91 countByEnumeratingWithState:&v192 objects:v217 count:16];
                        }

                        while (v92);
                      }
                    }
                  }

                  v79 = [v177 countByEnumeratingWithState:&v196 objects:v218 count:16];
                }

                while (v79);
              }

              v187 = [SCUIReportMessage alloc];
              v99 = [v169 time];
              v100 = v99;
              if (!v99)
              {
                v157 = [MEMORY[0x1E695DF00] distantPast];
                v100 = v157;
              }

              v101 = [v169 sender];
              v102 = [v101 ID];
              v103 = v102;
              if (v102)
              {
                v104 = v102;
              }

              else
              {
                v104 = @"?";
              }

              v105 = [v169 sender];
              v106 = [v105 displayNameForChat:v175];
              v107 = v106;
              if (v106)
              {
                v108 = v106;
              }

              else
              {
                v108 = @"?";
              }

              v109 = [v169 descriptionForPurpose:2];
              v110 = v109;
              if (v109)
              {
                v111 = v109;
              }

              else
              {
                v111 = &stru_1F3B30210;
              }

              v112 = [(SCUIReportMessage *)v187 initWithDate:v100 senderAccountID:v104 senderDisplayName:v108 body:v111 attachmentIdentifiers:v78];

              if (!v99)
              {
              }

              [v158 addObject:v112];
            }
          }
        }
      }

      v166 = [v160 countByEnumeratingWithState:&v200 objects:v219 count:16];
    }

    while (v166);
  }

  v113 = +[SCUIAccountHelper bestiMessageServiceHandle];
  v173 = v113;
  v114 = v190;
  if (v113)
  {
    v114 = v113;
  }

  v115 = *MEMORY[0x1E695C330];
  v216[0] = *MEMORY[0x1E695C360];
  v216[1] = v115;
  v116 = *MEMORY[0x1E695C230];
  v216[2] = *MEMORY[0x1E695C240];
  v216[3] = v116;
  v117 = *MEMORY[0x1E695C2F0];
  v216[4] = *MEMORY[0x1E695C208];
  v216[5] = v117;
  v216[6] = *MEMORY[0x1E695C1D0];
  v118 = MEMORY[0x1E695DEC8];
  v119 = v114;
  v120 = [v118 arrayWithObjects:v216 count:7];
  v181 = [v119 cnContactWithKeys:v120];

  v170 = [v119 displayNameForChat:v175];
  v121 = [v190 ID];
  v122 = [v191 objectForKeyedSubscript:v121];
  v123 = v122;
  v124 = MEMORY[0x1E695E0F0];
  if (v122)
  {
    v124 = v122;
  }

  v125 = v124;

  v126 = [SCUIAccountHelper bestHandleID:v119];

  v127 = [SCUIReportVictim alloc];
  v128 = [v126 scui_prependingAccountIDPrefix];
  v188 = [(SCUIReportVictim *)v127 initWithDisplayName:v170 accountID:v128 mediaFiles:v125];

  v129 = [MEMORY[0x1E695CD80] stringFromContact:v181 style:0];
  [(SCUIReportVictim *)v188 setFullName:v129];

  v130 = [v181 emailAddresses];
  v131 = [v130 firstObject];
  v132 = [v131 value];
  [(SCUIReportVictim *)v188 setEmailAddress:v132];

  v133 = [v181 birthday];
  v134 = [v133 date];
  [(SCUIReportVictim *)v188 setDateOfBirth:v134];

  v135 = [v181 postalAddresses];
  v178 = [v135 firstObject];

  v136 = [SCUIReportAddress alloc];
  v167 = [v178 value];
  v164 = [v167 street];
  v137 = [v178 value];
  v138 = [v137 city];
  v139 = [v178 value];
  v140 = [v139 state];
  v141 = [v178 value];
  v142 = [v141 country];
  v143 = [v178 value];
  v144 = [v143 postalCode];
  v145 = [(SCUIReportAddress *)v136 initWithAddress:v164 city:v138 state:v140 country:v142 postCode:v144];
  [(SCUIReportVictim *)v188 setAddress:v145];

  v146 = [v181 phoneNumbers];
  v147 = [v146 firstObject];
  v148 = [v147 value];

  if (v148)
  {
    v149 = [v148 formattedInternationalStringValue];
    [(SCUIReportVictim *)v188 setPhoneNumber:v149];
  }

  v150 = [(SCUIReportEvidence *)self initWithVictim:v188 suspects:v174 application:0];
  [(SCUIReportEvidence *)v150 setUnsortedChatTranscript:v158];
  if ([v175 isSMS])
  {
    [(SCUIReportEvidence *)v150 setFlags:[(SCUIReportEvidence *)v150 flags]| 1];
  }

  v151 = [v175 chatStyle];
  if (v151 == 43)
  {
    v154 = 2;
    goto LABEL_106;
  }

  if (v151 == 35)
  {
    v152 = [v175 roomName];
    v153 = [v152 copy];
    [(SCUIReportEvidence *)v150 setChatRoomName:v153];

    v154 = 4;
LABEL_106:
    [(SCUIReportEvidence *)v150 setFlags:[(SCUIReportEvidence *)v150 flags]| v154];
  }

  v155 = *MEMORY[0x1E69E9840];
  return v150;
}

- (SCUIReportEvidence)initWithVictim:(id)a3 suspects:(id)a4 application:(int64_t)a5
{
  v9 = a3;
  v10 = a4;
  v21.receiver = self;
  v21.super_class = SCUIReportEvidence;
  v11 = [(SCUIReportEvidence *)&v21 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_victim, a3);
    v13 = [v10 copy];
    suspects = v12->_suspects;
    v12->_suspects = v13;

    v12->_reportingApplication = a5;
    v15 = [MEMORY[0x1E695DF00] date];
    reportCreationDate = v12->_reportCreationDate;
    v12->_reportCreationDate = v15;

    v17 = [MEMORY[0x1E695DF58] currentLocale];
    v18 = [v17 localeIdentifier];
    localeIdentifier = v12->_localeIdentifier;
    v12->_localeIdentifier = v18;
  }

  return v12;
}

@end