@interface _PSPETMessageBuilder
+ (id)getPETMessageWithInteractionsStatistics:(id)a3 predictionContext:(id)a4 deviceIdentifier:(id)a5 trialIdentifier:(id)a6 peopleSuggesterDefaults:(id)a7;
+ (int)contentTypeFromUTI:(id)a3;
@end

@implementation _PSPETMessageBuilder

+ (id)getPETMessageWithInteractionsStatistics:(id)a3 predictionContext:(id)a4 deviceIdentifier:(id)a5 trialIdentifier:(id)a6 peopleSuggesterDefaults:(id)a7
{
  v94 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = objc_opt_new();
  [v16 setDeviceIdentifier:v13];
  v17 = [v12 sessionID];
  [v16 setSessionId:v17];

  [v16 setTrialIdentifier:v14];
  [v16 setVersion:6];
  [v16 setIsFallbackFetch:{objc_msgSend(v12, "isFallbackFetch")}];
  [v16 setIsSharePlayAvailable:{objc_msgSend(v12, "isSharePlayAvailable")}];
  v18 = [v12 bundleID];
  v19 = +[_PSConstants mobilePhotosBundleId];
  LOBYTE(a4) = [v18 isEqualToString:v19];

  v78 = v14;
  v79 = v13;
  if (a4)
  {
    v20 = 1;
  }

  else
  {
    v21 = +[_PSConstants mobileScreenshotsBundleId];
    v22 = [v18 isEqualToString:v21];

    if (v22)
    {
      v20 = 2;
    }

    else
    {
      v23 = +[_PSConstants mobileCameraBundleId];
      v24 = [v18 isEqualToString:v23];

      if (v24)
      {
        v20 = 3;
      }

      else
      {
        v25 = +[_PSConstants mobileSafariBundleId];
        v26 = [v18 isEqualToString:v25];

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
  v80 = v12;
  v27 = [v12 attachments];
  v28 = [v27 countByEnumeratingWithState:&v88 objects:v93 count:16];
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
          objc_enumerationMutation(v27);
        }

        v32 = [*(*(&v88 + 1) + 8 * i) UTI];
        [v16 addTypeOfContent:{+[_PSPETMessageBuilder contentTypeFromUTI:](_PSPETMessageBuilder, "contentTypeFromUTI:", v32)}];
      }

      v29 = [v27 countByEnumeratingWithState:&v88 objects:v93 count:16];
    }

    while (v29);
  }

  if ([MEMORY[0x1E69C5CF8] isInternalBuild])
  {
    v33 = [v15 stringForKey:@"_PSPeopleSuggesterRewritePETMessageKey"];
    [v16 setTestKey:v33];
  }

  v77 = v15;
  v34 = objc_opt_new();
  v84 = 0u;
  v85 = 0u;
  v86 = 0u;
  v87 = 0u;
  obj = [v11 conversationIds];
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
        v38 = [v11 privatizedConversationId:v36];
        [v37 setPrivatizedIdentifier:v38];

        v39 = [v11 bundleIdForConversationId:v36];
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

        v43 = [v11 valueOrDefaultValueForFeature:@"feedback" forConversationId:v36];
        v44 = [v43 integerValue];

        if (v44)
        {
          v45 = objc_opt_new();
          [v45 setFeedbackType:v44];
          v46 = [v37 privatizedIdentifier];
          [v45 setPrivatizedCandidateIdentifier:v46];

          [v45 setPrivatizedTransportBundleId:v41];
          [v16 addFeedbackEvents:v45];
        }

        v47 = [v11 privacyMitigatedFeatureValueFromName:@"timeSinceLastOutgoingInteraction" forConversationId:v36];
        [v37 setTimeSinceLastOutgoingInteraction:v47];

        v48 = [v11 privacyMitigatedFeatureValueFromName:@"timeSinceLastIncomingInteraction" forConversationId:v36];
        [v37 setTimeSinceLastIncomingInteraction:v48];

        v49 = [v11 privacyMitigatedFeatureValueFromName:@"timeSinceLastPhoneCallWithConversation" forConversationId:v36];
        [v37 setTimeSinceLastPhoneCallWithConversation:v49];

        v50 = [v11 privacyMitigatedFeatureValueFromName:@"timeSinceLastShareWithConversation" forConversationId:v36];
        [v37 setTimeSinceLastShareWithConversation:v50];

        v51 = [v11 privacyMitigatedFeatureValueFromName:@"timeSinceLastPhotoShareWithConversation" forConversationId:v36];
        [v37 setTimeSinceLastPhotoShareWithConversation:v51];

        v52 = [v11 privacyMitigatedFeatureValueFromName:@"numberOfSharesWithConversation" forConversationId:v36];
        [v37 setNumberOfSharesWithConversation:v52];

        v53 = [v11 privacyMitigatedFeatureValueFromName:@"numberOfSharesFromCurrentAppWithConversation" forConversationId:v36];
        [v37 setNumberOfSharesFromCurrentAppWithConversation:v53];

        v54 = [v11 privacyMitigatedFeatureValueFromName:@"numberOfSharesOfTopDomainURLWithConversation" forConversationId:v36];
        [v37 setNumberOfSharesOfTopDomainURLWithConversation:v54];

        v55 = [v11 privacyMitigatedFeatureValueFromName:@"numberOfSharesOfDetectedPeopleWithConversation" forConversationId:v36];
        [v37 setNumberOfSharesOfDetectedPeopleWithConversation:v55];

        v56 = [v11 privacyMitigatedFeatureValueFromName:@"numberOfSharesOfPeopleInPhotoWithConversation" forConversationId:v36];
        [v37 setNumberOfSharesOfPeopleInPhotoWithConversation:v56];

        v57 = [v11 privacyMitigatedFeatureValueFromName:@"numberOfSharesOfDetectedScenesInPhotoWithConversation" forConversationId:v36];
        [v37 setNumberOfSharesOfDetectedScenesInPhotoWithConversation:v57];

        v58 = [v11 privacyMitigatedFeatureValueFromName:@"numberOfSharesOfScenesInPhotoWithConversation" forConversationId:v36];
        [v37 setNumberOfSharesOfScenesInPhotoWithConversation:v58];

        v59 = [v11 privacyMitigatedFeatureValueFromName:@"numberOfOutgoingInteractionsWithConversation" forConversationId:v36];
        [v37 setNumberOfOutgoingInteractionsWithConversation:v59];

        v60 = [v11 privacyMitigatedFeatureValueFromName:@"numberOfIncomingInteractionsWithConversation" forConversationId:v36];
        [v37 setNumberOfIncomingInteractionsWithConversation:v60];

        v61 = [v11 privacyMitigatedFeatureValueFromName:@"numberOfInteractionsDuringTimePeriodWithConversation" forConversationId:v36];
        [v37 setNumberOfInteractionsDuringTimePeriodWithConversation:v61];

        v62 = [v11 privacyMitigatedFeatureValueFromName:@"numberOfAppsSharedFromWithConversation" forConversationId:v36];
        [v37 setNumberOfAppsSharedFromWithConversation:v62];

        v63 = [v11 privacyMitigatedFeatureValueFromName:@"numberOfTotalSharesToTargetApp" forConversationId:v36];
        [v37 setNumberOfTotalSharesToTargetApp:v63];

        v64 = [v11 privacyMitigatedFeatureValueFromName:@"numberOfEngagedSuggestionsWithConversation" forConversationId:v36];
        [v37 setNumberOfEngagedSuggestionsWithConversation:v64];

        v65 = [v11 privacyMitigatedFeatureValueFromName:@"numberOfEngagedSuggestionsFromCurrentAppWithConversation" forConversationId:v36];
        [v37 setNumberOfEngagedSuggestionsFromCurrentAppWithConversation:v65];

        v66 = [v11 privacyMitigatedFeatureValueFromName:@"numberOfEngagedSuggestionsOfTopDomainURLWithConversation" forConversationId:v36];
        [v37 setNumberOfEngagedSuggestionsOfTopDomainURLWithConversation:v66];

        v67 = [v11 privacyMitigatedFeatureValueFromName:@"numberOfEngagedSuggestionsOfDetectedPeopleWithConversation" forConversationId:v36];
        [v37 setNumberOfEngagedSuggestionsOfDetectedPeopleWithConversation:v67];

        v68 = [v11 privacyMitigatedFeatureValueFromName:@"numberOfEngagedSuggestionsOfPeopleInPhotoWithConversation" forConversationId:v36];
        [v37 setNumberOfEngagedSuggestionsOfPeopleInPhotoWithConversation:v68];

        v69 = [v11 privacyMitigatedFeatureValueFromName:@"hasEverSharePlayedWithConversation" forConversationId:v36];
        [v37 setHasEverSharePlayedWithConversation:v69];

        v70 = [v11 privacyMitigatedFeatureValueFromName:@"numberOfDifferentFacesSharedWithConversation" forConversationId:v36];
        [v37 setNumberOfDifferentFacesSharedWithConversation:v70];

        v71 = [v11 privacyMitigatedFeatureValueFromName:@"isFirstPartyApp" forConversationId:v36];
        [v37 setIsFirstPartyApp:v71 != 0];

        v72 = [v11 valueForFeature:@"suggestedRank" forConversationId:v36];
        [v37 setSuggestedRank:{objc_msgSend(v72, "intValue")}];

        v73 = [v11 valueForFeature:@"coreMLModelScore" forConversationId:v36];
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

+ (int)contentTypeFromUTI:(id)a3
{
  v3 = a3;
  if ([v3 caseInsensitiveCompare:@"public.url"])
  {
    if ([v3 caseInsensitiveCompare:@"public.image"])
    {
      if ([v3 caseInsensitiveCompare:@"public.jpeg"])
      {
        if ([v3 caseInsensitiveCompare:@"public.heic"])
        {
          if ([v3 caseInsensitiveCompare:@"com.apple.live-photo"])
          {
            if ([v3 caseInsensitiveCompare:@"public.movie"])
            {
              if ([v3 caseInsensitiveCompare:@"com.apple.quicktime-movie"])
              {
                if ([v3 caseInsensitiveCompare:@"public.plain-text"])
                {
                  if ([v3 caseInsensitiveCompare:@"public.file-url"])
                  {
                    if ([v3 caseInsensitiveCompare:@"com.adobe.pdf"])
                    {
                      if ([v3 caseInsensitiveCompare:@"public.png"])
                      {
                        if ([v3 caseInsensitiveCompare:@"public.mpeg-4"])
                        {
                          if ([v3 caseInsensitiveCompare:@"public.vcard"])
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