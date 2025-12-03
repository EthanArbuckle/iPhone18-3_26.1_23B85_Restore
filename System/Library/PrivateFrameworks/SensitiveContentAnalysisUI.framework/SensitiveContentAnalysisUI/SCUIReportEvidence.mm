@interface SCUIReportEvidence
- (SCUIReportEvidence)initWithVictim:(id)victim suspects:(id)suspects application:(int64_t)application;
- (SCUIReportEvidence)initWithVictimHandle:(id)handle media:(id)media selectedMediaObject:(id)object chat:(id)chat;
@end

@implementation SCUIReportEvidence

- (SCUIReportEvidence)initWithVictimHandle:(id)handle media:(id)media selectedMediaObject:(id)object chat:(id)chat
{
  v227 = *MEMORY[0x1E69E9840];
  handleCopy = handle;
  mediaCopy = media;
  objectCopy = object;
  chatCopy = chat;
  v191 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v189 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v208 = 0u;
  v209 = 0u;
  v210 = 0u;
  v211 = 0u;
  obj = mediaCopy;
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
        fileURL = [v12 fileURL];
        v14 = fileURL == 0;

        if (v14)
        {
          clientUI = [MEMORY[0x1E697B660] clientUI];
          if (os_log_type_enabled(clientUI, OS_LOG_TYPE_DEFAULT))
          {
            transferGUID = [v12 transferGUID];
            LODWORD(buf) = 138412290;
            *(&buf + 4) = transferGUID;
            _os_log_impl(&dword_1BC630000, clientUI, OS_LOG_TYPE_DEFAULT, "Media object %@ has no fileURL, skipping...", &buf, 0xCu);
          }
        }

        else
        {
          senderHandle = [v12 senderHandle];
          v16 = [senderHandle ID];
          v17 = v16;
          if (v16)
          {
            v18 = v16;
          }

          else
          {
            v18 = [handleCopy ID];
          }

          clientUI = v18;

          v21 = [v191 objectForKeyedSubscript:clientUI];
          v22 = v21 == 0;

          if (v22)
          {
            v23 = objc_alloc_init(MEMORY[0x1E695DF70]);
            [v191 setObject:v23 forKeyedSubscript:clientUI];
          }

          v24 = [v189 objectForKeyedSubscript:clientUI];
          v25 = v24 == 0;

          if (v25)
          {
            senderHandle2 = [v12 senderHandle];
            v27 = senderHandle2;
            if (senderHandle2)
            {
              v28 = senderHandle2;
            }

            else
            {
              v28 = handleCopy;
            }

            [v189 setObject:v28 forKeyedSubscript:clientUI];
          }

          date = [MEMORY[0x1E695DF00] date];
          [(SCUIReportEvidence *)self setIncidentReportDate:date];

          transferGUID2 = [objectCopy transferGUID];
          transferGUID3 = [v12 transferGUID];
          v32 = [transferGUID2 isEqual:transferGUID3];

          commSafetySensitive = [v12 commSafetySensitive];
          v34 = MEMORY[0x1E695E118];
          if (commSafetySensitive != 1)
          {
            commSafetySensitive2 = [v12 commSafetySensitive];
            v34 = MEMORY[0x1E695E118];
            if (commSafetySensitive2 != 2)
            {
              v34 = MEMORY[0x1E695E110];
            }
          }

          v36 = v34;
          v37 = [SCUIReportSensitiveMedia alloc];
          fileURL2 = [v12 fileURL];
          uTIType = [v12 UTIType];
          transferGUID4 = [v12 transferGUID];
          time = [v12 time];
          v42 = [(SCUIReportSensitiveMedia *)v37 initWithURL:fileURL2 UTIType:uTIType identifier:transferGUID4 dateReceived:time isSensitive:v36 wasImpetusOfReport:v32];

          v43 = [v191 objectForKeyedSubscript:clientUI];
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
  allKeys = [v191 allKeys];
  v44 = [allKeys countByEnumeratingWithState:&v204 objects:v221 count:16];
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
          objc_enumerationMutation(allKeys);
        }

        v47 = *(*(&v204 + 1) + 8 * j);
        v48 = [handleCopy ID];
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

            v53 = [v50 displayNameForChat:chatCopy];
            v54 = [SCUIReportSuspect alloc];
            v55 = [v50 ID];
            v56 = [v191 objectForKeyedSubscript:v47];
            v57 = [(SCUIReportSuspect *)v54 initWithDisplayName:v53 accountID:v55 sensitiveMediaFiles:v56];

            emailAddresses = [v52 emailAddresses];
            firstObject = [emailAddresses firstObject];
            value = [firstObject value];
            [(SCUIReportSuspect *)v57 setEmailAddress:value];

            v61 = [MEMORY[0x1E695CD80] stringFromContact:v52 style:0];
            [(SCUIReportSuspect *)v57 setFullName:v61];

            phoneNumbers = [v52 phoneNumbers];
            firstObject2 = [phoneNumbers firstObject];
            value2 = [firstObject2 value];

            if (value2)
            {
              formattedInternationalStringValue = [value2 formattedInternationalStringValue];
              [(SCUIReportSuspect *)v57 setPhoneNumber:formattedInternationalStringValue];
            }

            [v174 addObject:v57];
          }
        }
      }

      v44 = [allKeys countByEnumeratingWithState:&v204 objects:v221 count:16];
    }

    while (v44);
  }

  v159 = objc_opt_new();
  v158 = objc_opt_new();
  v202 = 0u;
  v203 = 0u;
  v200 = 0u;
  v201 = 0u;
  chatItems = [chatCopy chatItems];
  reverseObjectEnumerator = [chatItems reverseObjectEnumerator];

  v166 = [reverseObjectEnumerator countByEnumeratingWithState:&v200 objects:v219 count:16];
  if (v166)
  {
    v161 = *v201;
    do
    {
      for (k = 0; k != v166; ++k)
      {
        if (*v201 != v161)
        {
          objc_enumerationMutation(reverseObjectEnumerator);
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
          message = [v163 message];
          guid = [message guid];
          if (guid)
          {
            guid2 = [message guid];
            v72 = [v159 containsObject:guid2];

            if ((v72 & 1) == 0)
            {
              guid3 = [message guid];
              [v159 addObject:guid3];

              v74 = MEMORY[0x1E695DF70];
              fileTransferGUIDs = [message fileTransferGUIDs];
              v76 = fileTransferGUIDs;
              if (fileTransferGUIDs)
              {
                v77 = fileTransferGUIDs;
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
              visibleAssociatedMessageChatItems = [v163 visibleAssociatedMessageChatItems];
              v79 = [visibleAssociatedMessageChatItems countByEnumeratingWithState:&v196 objects:v218 count:16];
              if (v79)
              {
                v186 = *v197;
                do
                {
                  for (m = 0; m != v79; ++m)
                  {
                    if (*v197 != v186)
                    {
                      objc_enumerationMutation(visibleAssociatedMessageChatItems);
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
                      transferGUID5 = [v84 transferGUID];
                      v86 = transferGUID5 == 0;

                      if (!v86)
                      {
                        transferGUID6 = [v84 transferGUID];
                        [v78 addObject:transferGUID6];
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
                      acknowledgments = [v90 acknowledgments];
                      v92 = [acknowledgments countByEnumeratingWithState:&v192 objects:v217 count:16];
                      if (v92)
                      {
                        v93 = *v193;
                        do
                        {
                          for (n = 0; n != v92; ++n)
                          {
                            if (*v193 != v93)
                            {
                              objc_enumerationMutation(acknowledgments);
                            }

                            v95 = *(*(&v192 + 1) + 8 * n);
                            fileTransferGUIDs2 = [v95 fileTransferGUIDs];
                            v97 = fileTransferGUIDs2 == 0;

                            if (!v97)
                            {
                              fileTransferGUIDs3 = [v95 fileTransferGUIDs];
                              [v78 addObjectsFromArray:fileTransferGUIDs3];
                            }
                          }

                          v92 = [acknowledgments countByEnumeratingWithState:&v192 objects:v217 count:16];
                        }

                        while (v92);
                      }
                    }
                  }

                  v79 = [visibleAssociatedMessageChatItems countByEnumeratingWithState:&v196 objects:v218 count:16];
                }

                while (v79);
              }

              v187 = [SCUIReportMessage alloc];
              time2 = [message time];
              v100 = time2;
              if (!time2)
              {
                distantPast = [MEMORY[0x1E695DF00] distantPast];
                v100 = distantPast;
              }

              sender = [message sender];
              v102 = [sender ID];
              v103 = v102;
              if (v102)
              {
                v104 = v102;
              }

              else
              {
                v104 = @"?";
              }

              sender2 = [message sender];
              v106 = [sender2 displayNameForChat:chatCopy];
              v107 = v106;
              if (v106)
              {
                v108 = v106;
              }

              else
              {
                v108 = @"?";
              }

              v109 = [message descriptionForPurpose:2];
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

              if (!time2)
              {
              }

              [v158 addObject:v112];
            }
          }
        }
      }

      v166 = [reverseObjectEnumerator countByEnumeratingWithState:&v200 objects:v219 count:16];
    }

    while (v166);
  }

  v113 = +[SCUIAccountHelper bestiMessageServiceHandle];
  v173 = v113;
  v114 = handleCopy;
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

  v170 = [v119 displayNameForChat:chatCopy];
  v121 = [handleCopy ID];
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
  scui_prependingAccountIDPrefix = [v126 scui_prependingAccountIDPrefix];
  v188 = [(SCUIReportVictim *)v127 initWithDisplayName:v170 accountID:scui_prependingAccountIDPrefix mediaFiles:v125];

  v129 = [MEMORY[0x1E695CD80] stringFromContact:v181 style:0];
  [(SCUIReportVictim *)v188 setFullName:v129];

  emailAddresses2 = [v181 emailAddresses];
  firstObject3 = [emailAddresses2 firstObject];
  value3 = [firstObject3 value];
  [(SCUIReportVictim *)v188 setEmailAddress:value3];

  birthday = [v181 birthday];
  date2 = [birthday date];
  [(SCUIReportVictim *)v188 setDateOfBirth:date2];

  postalAddresses = [v181 postalAddresses];
  firstObject4 = [postalAddresses firstObject];

  v136 = [SCUIReportAddress alloc];
  value4 = [firstObject4 value];
  street = [value4 street];
  value5 = [firstObject4 value];
  city = [value5 city];
  value6 = [firstObject4 value];
  state = [value6 state];
  value7 = [firstObject4 value];
  country = [value7 country];
  value8 = [firstObject4 value];
  postalCode = [value8 postalCode];
  v145 = [(SCUIReportAddress *)v136 initWithAddress:street city:city state:state country:country postCode:postalCode];
  [(SCUIReportVictim *)v188 setAddress:v145];

  phoneNumbers2 = [v181 phoneNumbers];
  firstObject5 = [phoneNumbers2 firstObject];
  value9 = [firstObject5 value];

  if (value9)
  {
    formattedInternationalStringValue2 = [value9 formattedInternationalStringValue];
    [(SCUIReportVictim *)v188 setPhoneNumber:formattedInternationalStringValue2];
  }

  v150 = [(SCUIReportEvidence *)self initWithVictim:v188 suspects:v174 application:0];
  [(SCUIReportEvidence *)v150 setUnsortedChatTranscript:v158];
  if ([chatCopy isSMS])
  {
    [(SCUIReportEvidence *)v150 setFlags:[(SCUIReportEvidence *)v150 flags]| 1];
  }

  chatStyle = [chatCopy chatStyle];
  if (chatStyle == 43)
  {
    v154 = 2;
    goto LABEL_106;
  }

  if (chatStyle == 35)
  {
    roomName = [chatCopy roomName];
    v153 = [roomName copy];
    [(SCUIReportEvidence *)v150 setChatRoomName:v153];

    v154 = 4;
LABEL_106:
    [(SCUIReportEvidence *)v150 setFlags:[(SCUIReportEvidence *)v150 flags]| v154];
  }

  v155 = *MEMORY[0x1E69E9840];
  return v150;
}

- (SCUIReportEvidence)initWithVictim:(id)victim suspects:(id)suspects application:(int64_t)application
{
  victimCopy = victim;
  suspectsCopy = suspects;
  v21.receiver = self;
  v21.super_class = SCUIReportEvidence;
  v11 = [(SCUIReportEvidence *)&v21 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_victim, victim);
    v13 = [suspectsCopy copy];
    suspects = v12->_suspects;
    v12->_suspects = v13;

    v12->_reportingApplication = application;
    date = [MEMORY[0x1E695DF00] date];
    reportCreationDate = v12->_reportCreationDate;
    v12->_reportCreationDate = date;

    currentLocale = [MEMORY[0x1E695DF58] currentLocale];
    localeIdentifier = [currentLocale localeIdentifier];
    localeIdentifier = v12->_localeIdentifier;
    v12->_localeIdentifier = localeIdentifier;
  }

  return v12;
}

@end