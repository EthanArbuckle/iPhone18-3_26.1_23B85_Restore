@interface UNNotification(Bulletin)
+ (id)notificationForBulletin:()Bulletin;
@end

@implementation UNNotification(Bulletin)

+ (id)notificationForBulletin:()Bulletin
{
  v138 = *MEMORY[0x277D85DE8];
  v3 = a3;
  context = [v3 context];
  v120 = [context objectForKey:@"contentDate"];

  date = [v3 date];
  defaultAction = [v3 defaultAction];
  context2 = [v3 context];
  v117 = [context2 objectForKey:@"recordDate"];

  publisherBulletinID = [v3 publisherBulletinID];
  dismissalID = [v3 dismissalID];
  v116 = [publisherBulletinID isEqualToString:dismissalID];

  array = [MEMORY[0x277CBEA60] array];
  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  primaryAttachment = [v3 primaryAttachment];

  if (primaryAttachment)
  {
    primaryAttachment2 = [v3 primaryAttachment];
    [v8 addObject:primaryAttachment2];
  }

  additionalAttachments = [v3 additionalAttachments];

  if (additionalAttachments)
  {
    additionalAttachments2 = [v3 additionalAttachments];
    [v8 addObjectsFromArray:additionalAttachments2];
  }

  v121 = v3;
  v135 = 0u;
  v136 = 0u;
  v133 = 0u;
  v134 = 0u;
  obj = v8;
  v130 = [obj countByEnumeratingWithState:&v133 objects:v137 count:16];
  if (v130)
  {
    v128 = *v134;
    v122 = *MEMORY[0x277CE20D8];
    v125 = *MEMORY[0x277CE20D0];
    v124 = *MEMORY[0x277CE20C8];
    do
    {
      for (i = 0; i != v130; ++i)
      {
        if (*v134 != v128)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v133 + 1) + 8 * i);
        v15 = [v14 URL];
        path = [v15 path];

        if (path)
        {
          v17 = [objc_alloc(MEMORY[0x277CE2008]) initFileURLWithPath:path sandboxExtensionClass:@"com.apple.usernotifications.attachments.read-only"];
          thumbnailGeneratorUserInfo = [v14 thumbnailGeneratorUserInfo];
          v19 = thumbnailGeneratorUserInfo;
          if (thumbnailGeneratorUserInfo)
          {
            dictionary = [thumbnailGeneratorUserInfo mutableCopy];
          }

          else
          {
            dictionary = [MEMORY[0x277CBEB38] dictionary];
          }

          v21 = dictionary;
          uniformType = [v14 uniformType];
          if (uniformType)
          {
            [v21 setObject:uniformType forKey:v122];
          }

          v23 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v14, "thumbnailHidden")}];
          [v21 setObject:v23 forKey:v125];

          v24 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v14, "hiddenFromDefaultExpandedView")}];
          [v21 setObject:v24 forKey:v124];

          v25 = MEMORY[0x277CE1F90];
          identifier = [v14 identifier];
          v27 = [v21 copy];
          v28 = [v25 attachmentWithIdentifier:identifier URL:v17 options:v27 error:0];

          if (v28)
          {
            v29 = [array arrayByAddingObject:v28];

            array = v29;
          }
        }
      }

      v130 = [obj countByEnumeratingWithState:&v133 objects:v137 count:16];
    }

    while (v130);
  }

  v30 = v121;
  icon = [v121 icon];

  if (!icon)
  {
    v42 = 0;
    goto LABEL_35;
  }

  icon2 = [v121 icon];
  v33 = [icon2 _bestVariantForFormat:0];

  applicationIdentifier = [v33 applicationIdentifier];
  imagePath = [v33 imagePath];
  imageName = [v33 imageName];
  systemImageName = [v33 systemImageName];
  v38 = [v33 uti];
  dateComponentDetails = [v33 dateComponentDetails];
  isPrecomposed = [v33 isPrecomposed];
  if (applicationIdentifier)
  {
    v41 = [MEMORY[0x277CE1FB0] iconForApplicationIdentifier:applicationIdentifier];
  }

  else if (imagePath)
  {
    v41 = [MEMORY[0x277CE1FB0] iconAtPath:imagePath shouldSuppressMask:isPrecomposed];
  }

  else if (imageName)
  {
    v41 = [MEMORY[0x277CE1FB0] iconNamed:imageName shouldSuppressMask:isPrecomposed];
  }

  else if (systemImageName)
  {
    v41 = [MEMORY[0x277CE1FB0] iconForSystemImageNamed:{systemImageName, isPrecomposed}];
  }

  else
  {
    if (!v38)
    {
      if (dateComponentDetails)
      {
        v113 = [dateComponentDetails objectForKey:{*MEMORY[0x277CE2108], isPrecomposed}];
        v114 = [dateComponentDetails objectForKey:*MEMORY[0x277CE2100]];
        v115 = [dateComponentDetails objectForKey:*MEMORY[0x277CE2110]];
        integerValue = [v115 integerValue];

        v42 = [MEMORY[0x277CE1FB0] iconWithDateComponents:v113 calendarIdentifier:v114 format:integerValue];
      }

      else
      {
        v42 = 0;
      }

      goto LABEL_34;
    }

    v41 = [MEMORY[0x277CE1FB0] iconWithUTI:{v38, isPrecomposed}];
  }

  v42 = v41;
LABEL_34:

  v30 = v121;
LABEL_35:
  sound = [v30 sound];

  if (sound)
  {
    sound2 = [v30 sound];
    alertConfiguration = [sound2 alertConfiguration];

    type = [alertConfiguration type];
    v47 = [MEMORY[0x277CE1F70] soundWithAlertType:type];
    topic = [alertConfiguration topic];
    v49 = __52__UNNotification_Bulletin__notificationForBulletin___block_invoke(topic, topic);
    [v47 setAlertTopic:v49];

    audioCategory = [alertConfiguration audioCategory];
    v51 = __52__UNNotification_Bulletin__notificationForBulletin___block_invoke(audioCategory, audioCategory);
    [v47 setAudioCategory:v51];

    context3 = [v121 context];
    v53 = [context3 objectForKey:@"audioVolume"];
    [v47 setAudioVolume:v53];

    topic2 = [alertConfiguration topic];
    [v47 setCritical:{objc_msgSend(topic2, "isEqualToString:", *MEMORY[0x277D71FB0])}];

    [alertConfiguration maximumDuration];
    [v47 setMaximumDuration:?];
    [v47 setShouldIgnoreRingerSwitch:{objc_msgSend(alertConfiguration, "shouldIgnoreRingerSwitch")}];
    [v47 setShouldRepeat:{objc_msgSend(alertConfiguration, "shouldRepeat")}];
    externalToneFileURL = [alertConfiguration externalToneFileURL];
    lastPathComponent = [externalToneFileURL lastPathComponent];
    [v47 setToneFileName:lastPathComponent];

    externalToneFileURL2 = [alertConfiguration externalToneFileURL];
    [v47 setToneFileURL:externalToneFileURL2];

    toneIdentifier = [alertConfiguration toneIdentifier];
    v59 = __52__UNNotification_Bulletin__notificationForBulletin___block_invoke(toneIdentifier, toneIdentifier);
    [v47 setToneIdentifier:v59];

    [v47 setToneMediaLibraryItemIdentifier:{objc_msgSend(alertConfiguration, "externalToneMediaLibraryItemIdentifier")}];
    vibrationIdentifier = [alertConfiguration vibrationIdentifier];
    v61 = __52__UNNotification_Bulletin__notificationForBulletin___block_invoke(vibrationIdentifier, vibrationIdentifier);
    [v47 setVibrationIdentifier:v61];

    v30 = v121;
    externalVibrationPatternFileURL = [alertConfiguration externalVibrationPatternFileURL];
    [v47 setVibrationPatternFileURL:externalVibrationPatternFileURL];
  }

  else
  {
    v47 = 0;
  }

  communicationContext = [v30 communicationContext];
  if (communicationContext)
  {
    communicationContext2 = [v30 communicationContext];
    v65 = UNCommunicationContextFromBBCommunicationContext(communicationContext2);
  }

  else
  {
    v65 = 0;
  }

  contentType = [v30 contentType];
  v126 = contentType;
  if ([contentType isEqualToString:*MEMORY[0x277CF34C8]])
  {
    v67 = MEMORY[0x277CE2158];
  }

  else if ([contentType isEqualToString:*MEMORY[0x277CF34D0]])
  {
    v67 = MEMORY[0x277CE2160];
  }

  else if ([contentType isEqualToString:*MEMORY[0x277CF34C0]])
  {
    v67 = MEMORY[0x277CE2150];
  }

  else if ([contentType isEqualToString:*MEMORY[0x277CF34D8]])
  {
    v67 = MEMORY[0x277CE2168];
  }

  else if ([contentType isEqualToString:*MEMORY[0x277CF34B8]])
  {
    v67 = MEMORY[0x277CE2148];
  }

  else if ([contentType isEqualToString:*MEMORY[0x277CF34E0]])
  {
    v67 = MEMORY[0x277CE2170];
  }

  else
  {
    v68 = [contentType isEqualToString:*MEMORY[0x277CF34A8]];
    v67 = MEMORY[0x277CE2140];
    if (v68)
    {
      v67 = MEMORY[0x277CE2138];
    }
  }

  v69 = *v67;
  v70 = objc_alloc_init(MEMORY[0x277CE1F60]);
  [v70 setAttachments:array];
  context4 = [v121 context];
  v72 = [context4 objectForKey:@"badge"];
  [v70 setBadge:v72];

  message = [v121 message];
  [v70 setBody:message];

  categoryID = [v121 categoryID];
  [v70 setCategoryIdentifier:categoryID];

  [v70 setCommunicationContext:v65];
  [v70 setContentType:v69];
  [v70 setDate:v120];
  appearance = [defaultAction appearance];
  title = [appearance title];
  [v70 setDefaultActionTitle:title];

  [v70 setHasDefaultAction:defaultAction != 0];
  launchURL = [defaultAction launchURL];
  [v70 setDefaultActionURL:launchURL];

  launchBundleID = [defaultAction launchBundleID];
  [v70 setDefaultActionBundleIdentifier:launchBundleID];

  expirationDate = [v121 expirationDate];
  [v70 setExpirationDate:expirationDate];

  context5 = [v121 context];
  v81 = [context5 objectForKey:*MEMORY[0x277CF35D0]];
  [v70 setLaunchImageName:v81];

  header = [v121 header];
  [v70 setHeader:header];

  footer = [v121 footer];
  [v70 setFooter:footer];

  [v70 setIcon:v42];
  [v70 setSound:v47];
  [v70 setShouldShowSubordinateIcon:{objc_msgSend(v121, "hasSubordinateIcon")}];
  [v70 setShouldHideDate:date == 0];
  [v70 setShouldHideTime:{objc_msgSend(v121, "dateIsAllDay")}];
  context6 = [v121 context];
  v85 = [context6 objectForKey:@"shouldIgnoreDoNotDisturb"];
  [v70 setShouldIgnoreDoNotDisturb:{objc_msgSend(v85, "BOOLValue")}];

  [v70 setShouldIgnoreDowntime:{objc_msgSend(v121, "ignoresDowntime")}];
  [v70 setShouldSuppressScreenLightUp:{objc_msgSend(v121, "turnsOnDisplay") ^ 1}];
  [v70 setShouldAuthenticateDefaultAction:{objc_msgSend(defaultAction, "isAuthenticationRequired")}];
  [v70 setShouldBackgroundDefaultAction:{objc_msgSend(defaultAction, "activationMode") == 1}];
  [v70 setShouldPreventNotificationDismissalAfterDefaultAction:{objc_msgSend(defaultAction, "shouldDismissBulletin") ^ 1}];
  [v70 setShouldSuppressSyncDismissalWhenRemoved:{objc_msgSend(v121, "usesExternalSync")}];
  [v70 setShouldUseRequestIdentifierForDismissalSync:v116];
  subtitle = [v121 subtitle];
  [v70 setSubtitle:subtitle];

  threadID = [v121 threadID];
  [v70 setThreadIdentifier:threadID];

  title2 = [v121 title];
  [v70 setTitle:title2];

  subsectionIDs = [v121 subsectionIDs];
  [v70 setTopicIdentifiers:subsectionIDs];

  [v70 setRealertCount:{objc_msgSend(v121, "realertCount")}];
  context7 = [v121 context];
  v91 = [context7 objectForKey:@"userInfo"];
  [v70 setUserInfo:v91];

  summaryArgument = [v121 summaryArgument];
  [v70 setSummaryArgument:summaryArgument];

  [v70 setSummaryArgumentCount:{objc_msgSend(v121, "summaryArgumentCount")}];
  context8 = [v121 context];
  v94 = [context8 objectForKey:@"targetContentIdentifier"];
  [v70 setTargetContentIdentifier:v94];

  interruptionLevel = [v121 interruptionLevel];
  v96 = *MEMORY[0x277CE2118];
  if (interruptionLevel >= 4)
  {
    v97 = *MEMORY[0x277CE2118];
  }

  else
  {
    v97 = interruptionLevel;
  }

  [v70 setInterruptionLevel:v97];
  [v121 relevanceScore];
  [v70 setRelevanceScore:v98];
  filterCriteria = [v121 filterCriteria];
  [v70 setFilterCriteria:filterCriteria];

  [v70 setScreenCaptureProhibited:{objc_msgSend(v121, "screenCaptureProhibited")}];
  speechLanguage = [v121 speechLanguage];
  [v70 setSpeechLanguage:speechLanguage];

  context9 = [v121 context];
  v102 = [context9 objectForKey:@"notificationTriggerData"];

  v129 = v47;
  v131 = v42;
  if (v102)
  {
    v103 = [MEMORY[0x277CE1FF8] bs_secureDecodedFromData:v102];
  }

  else
  {
    v103 = 0;
  }

  v104 = MEMORY[0x277CE1FC0];
  recordID = [v121 recordID];
  v106 = [v104 requestWithIdentifier:recordID content:v70 trigger:v103];

  v107 = MEMORY[0x277CE1F78];
  section = [v121 section];
  intentIDs = [v121 intentIDs];
  v110 = [v107 notificationWithRequest:v106 date:v117 sourceIdentifier:section intentIdentifiers:intentIDs];

  v111 = *MEMORY[0x277D85DE8];

  return v110;
}

@end