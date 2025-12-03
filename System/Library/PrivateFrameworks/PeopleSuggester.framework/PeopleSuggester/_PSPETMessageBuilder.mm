@interface _PSPETMessageBuilder
+ (id)getPETMessageWithInteractionsStatistics:(id)statistics predictionContext:(id)context deviceIdentifier:(id)identifier trialIdentifier:(id)trialIdentifier peopleSuggesterDefaults:(id)defaults;
+ (int)contentTypeFromUTI:(id)i;
@end

@implementation _PSPETMessageBuilder

+ (id)getPETMessageWithInteractionsStatistics:(id)statistics predictionContext:(id)context deviceIdentifier:(id)identifier trialIdentifier:(id)trialIdentifier peopleSuggesterDefaults:(id)defaults
{
  v94 = *MEMORY[0x1E69E9840];
  statisticsCopy = statistics;
  contextCopy = context;
  identifierCopy = identifier;
  trialIdentifierCopy = trialIdentifier;
  defaultsCopy = defaults;
  v16 = objc_opt_new();
  [v16 setDeviceIdentifier:identifierCopy];
  sessionID = [contextCopy sessionID];
  [v16 setSessionId:sessionID];

  [v16 setTrialIdentifier:trialIdentifierCopy];
  [v16 setVersion:6];
  [v16 setIsFallbackFetch:{objc_msgSend(contextCopy, "isFallbackFetch")}];
  [v16 setIsSharePlayAvailable:{objc_msgSend(contextCopy, "isSharePlayAvailable")}];
  bundleID = [contextCopy bundleID];
  v19 = +[_PSConstants mobilePhotosBundleId];
  LOBYTE(context) = [bundleID isEqualToString:v19];

  v78 = trialIdentifierCopy;
  v79 = identifierCopy;
  if (context)
  {
    v20 = 1;
  }

  else
  {
    v21 = +[_PSConstants mobileScreenshotsBundleId];
    v22 = [bundleID isEqualToString:v21];

    if (v22)
    {
      v20 = 2;
    }

    else
    {
      v23 = +[_PSConstants mobileCameraBundleId];
      v24 = [bundleID isEqualToString:v23];

      if (v24)
      {
        v20 = 3;
      }

      else
      {
        v25 = +[_PSConstants mobileSafariBundleId];
        v26 = [bundleID isEqualToString:v25];

        if (v26)
        {
          v20 = 4;
        }

        else
        {
          v20 = 0;
        }
      }
    }
  }

  [v16 setAppSharedFrom:v20];
  v90 = 0u;
  v91 = 0u;
  v88 = 0u;
  v89 = 0u;
  v80 = contextCopy;
  attachments = [contextCopy attachments];
  v28 = [attachments countByEnumeratingWithState:&v88 objects:v93 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v89;
    do
    {
      for (i = 0; i != v29; ++i)
      {
        if (*v89 != v30)
        {
          objc_enumerationMutation(attachments);
        }

        v32 = [*(*(&v88 + 1) + 8 * i) UTI];
        [v16 addTypeOfContent:{+[_PSPETMessageBuilder contentTypeFromUTI:](_PSPETMessageBuilder, "contentTypeFromUTI:", v32)}];
      }

      v29 = [attachments countByEnumeratingWithState:&v88 objects:v93 count:16];
    }

    while (v29);
  }

  if ([MEMORY[0x1E69C5CF8] isInternalBuild])
  {
    v33 = [defaultsCopy stringForKey:@"_PSPeopleSuggesterRewritePETMessageKey"];
    [v16 setTestKey:v33];
  }

  v77 = defaultsCopy;
  v34 = objc_opt_new();
  v84 = 0u;
  v85 = 0u;
  v86 = 0u;
  v87 = 0u;
  obj = [statisticsCopy conversationIds];
  v83 = [obj countByEnumeratingWithState:&v84 objects:v92 count:16];
  if (v83)
  {
    v82 = *v85;
    do
    {
      for (j = 0; j != v83; ++j)
      {
        if (*v85 != v82)
        {
          objc_enumerationMutation(obj);
        }

        v36 = *(*(&v84 + 1) + 8 * j);
        v37 = objc_opt_new();
        v38 = [statisticsCopy privatizedConversationId:v36];
        [v37 setPrivatizedIdentifier:v38];

        v39 = [statisticsCopy bundleIdForConversationId:v36];
        v40 = [v34 objectForKeyedSubscript:v39];
        v41 = v40;
        if (v39)
        {
          v42 = v40 == 0;
        }

        else
        {
          v42 = 0;
        }

        if (v42)
        {
          v41 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%du", arc4random(), v77, v78, v79];
          [v34 setObject:v41 forKeyedSubscript:v39];
        }

        v43 = [statisticsCopy valueOrDefaultValueForFeature:@"feedback" forConversationId:v36];
        integerValue = [v43 integerValue];

        if (integerValue)
        {
          v45 = objc_opt_new();
          [v45 setFeedbackType:integerValue];
          privatizedIdentifier = [v37 privatizedIdentifier];
          [v45 setPrivatizedCandidateIdentifier:privatizedIdentifier];

          [v45 setPrivatizedTransportBundleId:v41];
          [v16 addFeedbackEvents:v45];
        }

        v47 = [statisticsCopy privacyMitigatedFeatureValueFromName:@"timeSinceLastOutgoingInteraction" forConversationId:v36];
        [v37 setTimeSinceLastOutgoingInteraction:v47];

        v48 = [statisticsCopy privacyMitigatedFeatureValueFromName:@"timeSinceLastIncomingInteraction" forConversationId:v36];
        [v37 setTimeSinceLastIncomingInteraction:v48];

        v49 = [statisticsCopy privacyMitigatedFeatureValueFromName:@"timeSinceLastPhoneCallWithConversation" forConversationId:v36];
        [v37 setTimeSinceLastPhoneCallWithConversation:v49];

        v50 = [statisticsCopy privacyMitigatedFeatureValueFromName:@"timeSinceLastShareWithConversation" forConversationId:v36];
        [v37 setTimeSinceLastShareWithConversation:v50];

        v51 = [statisticsCopy privacyMitigatedFeatureValueFromName:@"timeSinceLastPhotoShareWithConversation" forConversationId:v36];
        [v37 setTimeSinceLastPhotoShareWithConversation:v51];

        v52 = [statisticsCopy privacyMitigatedFeatureValueFromName:@"numberOfSharesWithConversation" forConversationId:v36];
        [v37 setNumberOfSharesWithConversation:v52];

        v53 = [statisticsCopy privacyMitigatedFeatureValueFromName:@"numberOfSharesFromCurrentAppWithConversation" forConversationId:v36];
        [v37 setNumberOfSharesFromCurrentAppWithConversation:v53];

        v54 = [statisticsCopy privacyMitigatedFeatureValueFromName:@"numberOfSharesOfTopDomainURLWithConversation" forConversationId:v36];
        [v37 setNumberOfSharesOfTopDomainURLWithConversation:v54];

        v55 = [statisticsCopy privacyMitigatedFeatureValueFromName:@"numberOfSharesOfDetectedPeopleWithConversation" forConversationId:v36];
        [v37 setNumberOfSharesOfDetectedPeopleWithConversation:v55];

        v56 = [statisticsCopy privacyMitigatedFeatureValueFromName:@"numberOfSharesOfPeopleInPhotoWithConversation" forConversationId:v36];
        [v37 setNumberOfSharesOfPeopleInPhotoWithConversation:v56];

        v57 = [statisticsCopy privacyMitigatedFeatureValueFromName:@"numberOfSharesOfDetectedScenesInPhotoWithConversation" forConversationId:v36];
        [v37 setNumberOfSharesOfDetectedScenesInPhotoWithConversation:v57];

        v58 = [statisticsCopy privacyMitigatedFeatureValueFromName:@"numberOfSharesOfScenesInPhotoWithConversation" forConversationId:v36];
        [v37 setNumberOfSharesOfScenesInPhotoWithConversation:v58];

        v59 = [statisticsCopy privacyMitigatedFeatureValueFromName:@"numberOfOutgoingInteractionsWithConversation" forConversationId:v36];
        [v37 setNumberOfOutgoingInteractionsWithConversation:v59];

        v60 = [statisticsCopy privacyMitigatedFeatureValueFromName:@"numberOfIncomingInteractionsWithConversation" forConversationId:v36];
        [v37 setNumberOfIncomingInteractionsWithConversation:v60];

        v61 = [statisticsCopy privacyMitigatedFeatureValueFromName:@"numberOfInteractionsDuringTimePeriodWithConversation" forConversationId:v36];
        [v37 setNumberOfInteractionsDuringTimePeriodWithConversation:v61];

        v62 = [statisticsCopy privacyMitigatedFeatureValueFromName:@"numberOfAppsSharedFromWithConversation" forConversationId:v36];
        [v37 setNumberOfAppsSharedFromWithConversation:v62];

        v63 = [statisticsCopy privacyMitigatedFeatureValueFromName:@"numberOfTotalSharesToTargetApp" forConversationId:v36];
        [v37 setNumberOfTotalSharesToTargetApp:v63];

        v64 = [statisticsCopy privacyMitigatedFeatureValueFromName:@"numberOfEngagedSuggestionsWithConversation" forConversationId:v36];
        [v37 setNumberOfEngagedSuggestionsWithConversation:v64];

        v65 = [statisticsCopy privacyMitigatedFeatureValueFromName:@"numberOfEngagedSuggestionsFromCurrentAppWithConversation" forConversationId:v36];
        [v37 setNumberOfEngagedSuggestionsFromCurrentAppWithConversation:v65];

        v66 = [statisticsCopy privacyMitigatedFeatureValueFromName:@"numberOfEngagedSuggestionsOfTopDomainURLWithConversation" forConversationId:v36];
        [v37 setNumberOfEngagedSuggestionsOfTopDomainURLWithConversation:v66];

        v67 = [statisticsCopy privacyMitigatedFeatureValueFromName:@"numberOfEngagedSuggestionsOfDetectedPeopleWithConversation" forConversationId:v36];
        [v37 setNumberOfEngagedSuggestionsOfDetectedPeopleWithConversation:v67];

        v68 = [statisticsCopy privacyMitigatedFeatureValueFromName:@"numberOfEngagedSuggestionsOfPeopleInPhotoWithConversation" forConversationId:v36];
        [v37 setNumberOfEngagedSuggestionsOfPeopleInPhotoWithConversation:v68];

        v69 = [statisticsCopy privacyMitigatedFeatureValueFromName:@"hasEverSharePlayedWithConversation" forConversationId:v36];
        [v37 setHasEverSharePlayedWithConversation:v69];

        v70 = [statisticsCopy privacyMitigatedFeatureValueFromName:@"numberOfDifferentFacesSharedWithConversation" forConversationId:v36];
        [v37 setNumberOfDifferentFacesSharedWithConversation:v70];

        v71 = [statisticsCopy privacyMitigatedFeatureValueFromName:@"isFirstPartyApp" forConversationId:v36];
        [v37 setIsFirstPartyApp:v71 != 0];

        v72 = [statisticsCopy valueForFeature:@"suggestedRank" forConversationId:v36];
        [v37 setSuggestedRank:{objc_msgSend(v72, "intValue")}];

        v73 = [statisticsCopy valueForFeature:@"coreMLModelScore" forConversationId:v36];
        [v73 doubleValue];
        [v37 setCoreMLModelScore:?];

        [v16 addCandidates:v37];
      }

      v83 = [obj countByEnumeratingWithState:&v84 objects:v92 count:16];
    }

    while (v83);
  }

  if (![v16 feedbackEventsCount])
  {
    v74 = objc_opt_new();
    [v74 setFeedbackType:0];
    [v16 addFeedbackEvents:v74];
  }

  v75 = *MEMORY[0x1E69E9840];

  return v16;
}

+ (int)contentTypeFromUTI:(id)i
{
  iCopy = i;
  if ([iCopy caseInsensitiveCompare:@"public.url"])
  {
    if ([iCopy caseInsensitiveCompare:@"public.image"])
    {
      if ([iCopy caseInsensitiveCompare:@"public.jpeg"])
      {
        if ([iCopy caseInsensitiveCompare:@"public.heic"])
        {
          if ([iCopy caseInsensitiveCompare:@"com.apple.live-photo"])
          {
            if ([iCopy caseInsensitiveCompare:@"public.movie"])
            {
              if ([iCopy caseInsensitiveCompare:@"com.apple.quicktime-movie"])
              {
                if ([iCopy caseInsensitiveCompare:@"public.plain-text"])
                {
                  if ([iCopy caseInsensitiveCompare:@"public.file-url"])
                  {
                    if ([iCopy caseInsensitiveCompare:@"com.adobe.pdf"])
                    {
                      if ([iCopy caseInsensitiveCompare:@"public.png"])
                      {
                        if ([iCopy caseInsensitiveCompare:@"public.mpeg-4"])
                        {
                          if ([iCopy caseInsensitiveCompare:@"public.vcard"])
                          {
                            v4 = 13;
                          }

                          else
                          {
                            v4 = 12;
                          }
                        }

                        else
                        {
                          v4 = 6;
                        }
                      }

                      else
                      {
                        v4 = 11;
                      }
                    }

                    else
                    {
                      v4 = 10;
                    }
                  }

                  else
                  {
                    v4 = 9;
                  }
                }

                else
                {
                  v4 = 8;
                }
              }

              else
              {
                v4 = 7;
              }
            }

            else
            {
              v4 = 5;
            }
          }

          else
          {
            v4 = 4;
          }
        }

        else
        {
          v4 = 3;
        }
      }

      else
      {
        v4 = 2;
      }
    }

    else
    {
      v4 = 1;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end