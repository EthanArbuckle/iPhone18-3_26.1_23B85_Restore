@interface NCNotificationRequest(Bulletin)
+ (id)_notificationRequestForBulletin:()Bulletin observer:sectionInfo:feed:playLightsAndSirens:hasPlayLightsAndSirens:uuid:;
+ (id)notificationRequestForBulletin:()Bulletin observer:sectionInfo:feed:;
- (id)attachmentImageWithDimension:()Bulletin;
- (id)bulletin;
- (id)contactIdentifier;
- (id)iconRecipe;
- (id)observer;
- (id)subordinateIconRecipe;
- (uint64_t)hasSameContactAsNotificationRequest:()Bulletin;
@end

@implementation NCNotificationRequest(Bulletin)

- (id)iconRecipe
{
  sourceInfo = [self sourceInfo];
  v2 = [sourceInfo objectForKey:@"NotificationIconRecipe"];

  return v2;
}

- (id)subordinateIconRecipe
{
  sourceInfo = [self sourceInfo];
  v2 = [sourceInfo objectForKey:@"NotificationSubordinateIconRecipe"];

  return v2;
}

- (id)bulletin
{
  sourceInfo = [self sourceInfo];
  v2 = [sourceInfo objectForKey:@"BBBulletin"];

  return v2;
}

- (id)observer
{
  sourceInfo = [self sourceInfo];
  v2 = [sourceInfo objectForKey:@"BBObserver"];

  return v2;
}

+ (id)notificationRequestForBulletin:()Bulletin observer:sectionInfo:feed:
{
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = objc_opt_new();
  v14 = [self notificationRequestForBulletin:v12 observer:v11 sectionInfo:v10 feed:a6 uuid:v13];

  return v14;
}

+ (id)_notificationRequestForBulletin:()Bulletin observer:sectionInfo:feed:playLightsAndSirens:hasPlayLightsAndSirens:uuid:
{
  v240[2] = *MEMORY[0x277D85DE8];
  v11 = a3;
  v219 = a4;
  v224 = a5;
  v12 = a9;
  sectionID = [v11 sectionID];
  v14 = objc_opt_new();
  v216 = v12;
  [v14 setUuid:v12];
  [v14 setSectionIdentifier:sectionID];
  subsectionIDs = [v11 subsectionIDs];
  [v14 setSubSectionIdentifiers:subsectionIDs];

  publisherMatchID = [v11 publisherMatchID];
  [v14 setNotificationIdentifier:publisherMatchID];

  categoryID = [v11 categoryID];
  [v14 setCategoryIdentifier:categoryID];

  intentIDs = [v11 intentIDs];
  [v14 setIntentIdentifiers:intentIDs];

  parentSectionID = [v11 parentSectionID];
  [v14 setParentSectionIdentifier:parentSectionID];

  eventBehavior = [v11 eventBehavior];
  [v14 setEventBehavior:?];
  [v14 setIsHighlight:{objc_msgSend(v11, "isHighlight")}];
  priorityNotificationStatus = [v11 priorityNotificationStatus];
  if ((priorityNotificationStatus - 1) >= 5)
  {
    v21 = 0;
  }

  else
  {
    v21 = priorityNotificationStatus;
  }

  [v14 setPriorityStatus:v21];
  notificationSummaryStatus = [v11 notificationSummaryStatus];
  if ((notificationSummaryStatus - 1) >= 4)
  {
    v23 = 0;
  }

  else
  {
    v23 = notificationSummaryStatus;
  }

  [v14 setSummaryStatus:v23];
  [v14 setIsPresentedAsBanner:0];
  [v14 setIsRemoved:0];
  threadID = [v11 threadID];
  v25 = [threadID length];

  v226 = v14;
  if (v25)
  {
    threadID2 = [v11 threadID];
    [v14 setThreadIdentifier:threadID2];
  }

  else
  {
    v27 = MEMORY[0x277CCACA8];
    threadID2 = [v14 sectionIdentifier];
    v28 = [v27 stringWithFormat:@"req-%@", threadID2];
    [v14 setThreadIdentifier:v28];
  }

  v223 = sectionID;

  [v14 setThreadIdentifierUnique:v25 != 0];
  [v14 setCriticalAlert:{objc_msgSend(v11, "hasCriticalIcon")}];
  v233 = 0u;
  v234 = 0u;
  v231 = 0u;
  v232 = 0u;
  subsections = [v224 subsections];
  v30 = [subsections countByEnumeratingWithState:&v231 objects:v239 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = 0;
    v33 = *v232;
    do
    {
      for (i = 0; i != v31; ++i)
      {
        if (*v232 != v33)
        {
          objc_enumerationMutation(subsections);
        }

        v35 = *(*(&v231 + 1) + 8 * i);
        subsectionIDs2 = [v11 subsectionIDs];
        subsectionID = [v35 subsectionID];
        v38 = [subsectionIDs2 containsObject:subsectionID];

        if (v38)
        {
          if (!v32 || (v39 = [v32 subsectionPriority], v39 < objc_msgSend(v35, "subsectionPriority")))
          {
            v40 = v35;

            v32 = v40;
          }
        }
      }

      v31 = [subsections countByEnumeratingWithState:&v231 objects:v239 count:16];
    }

    while (v31);
  }

  else
  {
    v32 = 0;
  }

  subsectionID2 = [v32 subsectionID];
  [v226 setHighestPrioritySubSectionIdentifier:subsectionID2];

  recencyDate = [v11 recencyDate];
  if (recencyDate)
  {
    [v226 setTimestamp:recencyDate];
  }

  else
  {
    date = [v11 date];
    if (date)
    {
      [v226 setTimestamp:date];
    }

    else
    {
      publicationDate = [v11 publicationDate];
      [v226 setTimestamp:publicationDate];
    }
  }

  v45 = [MEMORY[0x277CBEB58] set];
  v46 = v45;
  if (a6)
  {
    [v45 addObject:@"BulletinDestinationNotificationCenter"];
    [v46 addObject:@"BulletinDestinationCoverSheet"];
  }

  v47 = (a8 ^ 1 | a7) ^ 1;
  if ((a6 & 6) == 0)
  {
    v47 = 1;
  }

  if (v47)
  {
    if ((a6 & 0x2000) == 0)
    {
      goto LABEL_35;
    }
  }

  else
  {
    [v46 addObject:@"BulletinDestinationBanner"];
    if ((a6 & 0x2000) == 0)
    {
LABEL_35:
      if ((a6 & 8) == 0)
      {
        goto LABEL_37;
      }

      goto LABEL_36;
    }
  }

  [v46 addObject:@"BulletinDestinationDigest"];
  [v46 addObject:@"BulletinDestinationCoverSheet"];
  if ((a6 & 8) != 0)
  {
LABEL_36:
    [v46 addObject:@"BulletinDestinationLockScreen"];
    [v46 addObject:@"BulletinDestinationCoverSheet"];
  }

LABEL_37:
  if ((a6 & 0x80) != 0)
  {
    [v46 addObject:@"BulletinDestinationCar"];
  }

  else if (!a6)
  {
    goto LABEL_47;
  }

  if (![v46 count])
  {
    v48 = *MEMORY[0x277D77DB8];
    if (os_log_type_enabled(*MEMORY[0x277D77DB8], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *&buf[4] = a6;
      _os_log_impl(&dword_21E77E000, v48, OS_LOG_TYPE_DEFAULT, "Unhandled BBObserver feed: %lu", buf, 0xCu);
    }
  }

LABEL_47:
  [v226 setRequestDestinations:v46];

  context = [v11 context];
  [v226 setContext:context];

  subsectionIDs3 = [v11 subsectionIDs];
  [v226 setSettingsSections:subsectionIDs3];

  v51 = objc_opt_new();
  contentType = [v11 contentType];
  if ([contentType isEqualToString:*MEMORY[0x277CF34C8]])
  {
    v53 = MEMORY[0x277CE2158];
    v54 = v224;
  }

  else
  {
    v54 = v224;
    if ([contentType isEqualToString:*MEMORY[0x277CF34D0]])
    {
      v53 = MEMORY[0x277CE2160];
    }

    else if ([contentType isEqualToString:*MEMORY[0x277CF34C0]])
    {
      v53 = MEMORY[0x277CE2150];
    }

    else if ([contentType isEqualToString:*MEMORY[0x277CF34D8]])
    {
      v53 = MEMORY[0x277CE2168];
    }

    else if ([contentType isEqualToString:*MEMORY[0x277CF34B8]])
    {
      v53 = MEMORY[0x277CE2148];
    }

    else if ([contentType isEqualToString:*MEMORY[0x277CF34E0]])
    {
      v53 = MEMORY[0x277CE2170];
    }

    else
    {
      v55 = [contentType isEqualToString:*MEMORY[0x277CF34A8]];
      v53 = MEMORY[0x277CE2140];
      if (v55)
      {
        v53 = MEMORY[0x277CE2138];
      }
    }
  }

  v56 = *v53;

  [v51 setContentType:v56];
  header = [v11 header];
  if ([header length])
  {
    header2 = [v11 header];
    [v51 setCustomHeader:header2];
  }

  else
  {
    [v51 setCustomHeader:0];
  }

  displayName = [v54 displayName];
  if ([displayName length])
  {
    [v54 displayName];
  }

  else
  {
    [v54 appName];
  }
  v60 = ;
  [v51 setDefaultHeader:v60];

  title = [v11 title];
  [v51 setTitle:title];

  subtitle = [v11 subtitle];
  [v51 setSubtitle:subtitle];

  attributedMessage = [v11 attributedMessage];
  if (!attributedMessage)
  {
    message = [v11 message];
    attributedMessage = [MEMORY[0x277CCA898] nc_safeAttributedStringWithString:message];
  }

  [v51 setAttributedMessage:attributedMessage];
  v221 = v51;
  v65 = v224;
  if (UNCCatchMe())
  {
    summary = [v11 summary];
    [v51 setSummary:summary];

    threadSummary = [v11 threadSummary];
    [v51 setThreadSummary:threadSummary];

    spotlightIdentifier = [v11 spotlightIdentifier];
    [v51 setSpotlightIdentifier:spotlightIdentifier];

    v69 = MEMORY[0x277D77DE8];
    v70 = *MEMORY[0x277D77DE8];
    if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
    {
      spotlightIdentifier2 = [v51 spotlightIdentifier];
      v72 = MEMORY[0x277CCABB0];
      threadSummary2 = [v51 threadSummary];
      v74 = [v72 numberWithInt:{objc_msgSend(threadSummary2, "length") != 0}];
      v75 = MEMORY[0x277CCABB0];
      [v51 summary];
      v77 = v76 = attributedMessage;
      v78 = [v75 numberWithInt:{objc_msgSend(v77, "length") != 0}];
      *buf = 138412802;
      *&buf[4] = spotlightIdentifier2;
      *&buf[12] = 2112;
      *&buf[14] = v74;
      v237 = 2112;
      v238 = v78;
      _os_log_impl(&dword_21E77E000, v70, OS_LOG_TYPE_DEFAULT, "notification request for bulletin with spotlightID: %@ hasThreadSummary: %@ hasSummary: %@", buf, 0x20u);

      attributedMessage = v76;
      v69 = MEMORY[0x277D77DE8];
      v65 = v224;
    }

    v79 = *v69;
    if (os_log_type_enabled(v79, OS_LOG_TYPE_DEBUG))
    {
      [NCNotificationRequest(Bulletin) _notificationRequestForBulletin:v51 observer:v79 sectionInfo:? feed:? playLightsAndSirens:? hasPlayLightsAndSirens:? uuid:?];
    }
  }

  footer = [v11 footer];
  [v51 setFooter:footer];

  date2 = [v11 date];
  [v51 setDate:date2];

  [v51 setDateAllDay:{objc_msgSend(v11, "dateIsAllDay")}];
  timeZone = [v11 timeZone];
  [v51 setTimeZone:timeZone];

  hiddenPreviewsBodyPlaceholder = [v11 hiddenPreviewsBodyPlaceholder];
  [v51 setHiddenPreviewsBodyPlaceholder:hiddenPreviewsBodyPlaceholder];

  subtypeSummaryFormat = [v11 subtypeSummaryFormat];
  [v51 setCategorySummaryFormat:subtypeSummaryFormat];

  summaryArgument = [v11 summaryArgument];
  [v51 setSummaryArgument:summaryArgument];

  [v51 setSummaryArgumentCount:{objc_msgSend(v11, "summaryArgumentCount")}];
  v86 = v11;
  v87 = v65;
  sectionID2 = [v86 sectionID];
  sectionID3 = [v87 sectionID];
  v90 = [sectionID3 isEqualToString:@"com.apple.mobilecal"];

  v214 = attributedMessage;
  if (v90)
  {
    icon = [v86 icon];
    v92 = [icon _bestVariantForFormat:0];

    dateComponentDetails = [v92 dateComponentDetails];

    if (dateComponentDetails)
    {
      sectionIcon = [v86 sectionIcon];
      mainScreen = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen scale];
      v96 = [NCNotificationIconRecipe iconRecipeForSectionIcon:sectionIcon scale:sectionID2 applicationIdentifier:?];
    }

    else
    {
      imagePath = [v92 imagePath];
      lastPathComponent = [imagePath lastPathComponent];
      sectionIcon = [lastPathComponent stringByDeletingPathExtension];

      if (sectionIcon)
      {
        v100 = [NCNotificationIconRecipe iconRecipeForDateIconIdentifier:sectionIcon];
      }

      else
      {
        v100 = 0;
      }

      context2 = [v86 context];
      mainScreen = [context2 valueForKey:@"contentDate"];

      v102 = v100;
      if (v100 || !mainScreen)
      {
        goto LABEL_86;
      }

      v96 = [NCNotificationIconRecipe iconRecipeForDate:mainScreen];
    }

    v102 = v96;
LABEL_86:

    v97 = v102;
    goto LABEL_87;
  }

  v97 = 0;
LABEL_87:
  sectionIcon2 = [v86 sectionIcon];
  sectionID4 = [v87 sectionID];
  v105 = _sectionIdentifierIconDenyListContains(sectionID4, sectionIcon2, 0);

  if (v97 || (v105 & 1) != 0 || !sectionIcon2)
  {
LABEL_92:
    if (v97)
    {
      goto LABEL_96;
    }

    goto LABEL_93;
  }

  communicationContext = [v86 communicationContext];

  if (!communicationContext)
  {
    mainScreen2 = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen2 scale];
    v97 = [NCNotificationIconRecipe iconRecipeForSectionIcon:sectionIcon2 scale:sectionID2 applicationIdentifier:?];

    goto LABEL_92;
  }

LABEL_93:
  if (NCApplicationIdentifierIsValid(sectionID2))
  {
    v97 = [NCNotificationIconRecipe iconRecipeForApplicationIdentifier:sectionID2];
  }

  else
  {
    v97 = 0;
  }

LABEL_96:
  v217 = v97;

  v225 = v87;
  if ([v86 hasSubordinateIcon])
  {
    v108 = v87;
    sectionID5 = [v108 sectionID];
    icon2 = [v108 icon];
    v111 = _sectionIdentifierIconDenyListContains(sectionID5, icon2, 26);

    sectionID6 = [v108 sectionID];
    icon3 = [v108 icon];

    v114 = v226;
    if (v111)
    {
      if (icon3)
      {
        icon4 = [v108 icon];
        mainScreen3 = [MEMORY[0x277D759A0] mainScreen];
        [mainScreen3 scale];
        icon3 = [NCNotificationIconRecipe iconRecipeForSectionIcon:icon4 scale:sectionID6 applicationIdentifier:?];

        v114 = v226;
      }
    }

    else if (!icon3 || ([v108 icon], v117 = objc_claimAutoreleasedReturnValue(), objc_msgSend(MEMORY[0x277D759A0], "mainScreen"), v118 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v118, "scale"), +[NCNotificationIconRecipe iconRecipeForSectionIcon:scale:applicationIdentifier:](NCNotificationIconRecipe, "iconRecipeForSectionIcon:scale:applicationIdentifier:", v117, sectionID6), icon3 = objc_claimAutoreleasedReturnValue(), v118, v114 = v226, v117, !icon3))
    {
      if (NCApplicationIdentifierIsValid(sectionID6))
      {
        icon3 = [NCNotificationIconRecipe iconRecipeForApplicationIdentifier:sectionID6];
      }

      else
      {
        icon3 = 0;
      }
    }

    v213 = icon3;
  }

  else
  {
    v213 = 0;
    v114 = v226;
  }

  communicationContext2 = [v86 communicationContext];
  v120 = communicationContext2;
  v121 = v223;
  if (communicationContext2)
  {
    recipients = [communicationContext2 recipients];
    v123 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v227 = 0u;
    v228 = 0u;
    v229 = 0u;
    v230 = 0u;
    v124 = recipients;
    v125 = [v124 countByEnumeratingWithState:&v227 objects:v235 count:16];
    if (v125)
    {
      v126 = v125;
      v127 = *v228;
      do
      {
        for (j = 0; j != v126; ++j)
        {
          if (*v228 != v127)
          {
            objc_enumerationMutation(v124);
          }

          v129 = _unContactFromBBContact(*(*(&v227 + 1) + 8 * j));
          [v123 addObject:v129];
        }

        v126 = [v124 countByEnumeratingWithState:&v227 objects:v235 count:16];
      }

      while (v126);
    }

    v130 = objc_alloc_init(MEMORY[0x277CE2048]);
    identifier = [v120 identifier];
    [v130 setIdentifier:identifier];

    associatedObjectUri = [v120 associatedObjectUri];
    [v130 setAssociatedObjectUri:associatedObjectUri];

    bundleIdentifier = [v120 bundleIdentifier];
    [v130 setBundleIdentifier:bundleIdentifier];

    displayName2 = [v120 displayName];
    [v130 setDisplayName:displayName2];

    sender = [v120 sender];

    if (sender)
    {
      sender2 = [v120 sender];
      v137 = _unContactFromBBContact(sender2);

      [v130 setSender:v137];
      mEMORY[0x277D77F58] = [MEMORY[0x277D77F58] sharedInstance];
      topLevelSectionIdentifier = [v114 topLevelSectionIdentifier];
      v140 = [mEMORY[0x277D77F58] updateServiceWithContact:v137 bundleIdentifier:topLevelSectionIdentifier];

      v114 = v226;
    }

    [v130 setRecipients:v123];
    contentURL = [v120 contentURL];
    [v130 setContentURL:contentURL];

    imageName = [v120 imageName];
    [v130 setImageName:imageName];

    [v130 setSystemImage:{objc_msgSend(v120, "systemImage")}];
    [v130 setMentionsCurrentUser:{objc_msgSend(v120, "mentionsCurrentUser")}];
    [v130 setNotifyRecipientAnyway:{objc_msgSend(v120, "notifyRecipientAnyway")}];
    [v130 setReplyToCurrentUser:{objc_msgSend(v120, "isReplyToCurrentUser")}];
    [v130 setRecipientCount:{objc_msgSend(v120, "recipientCount")}];
    communicationContext3 = [v86 communicationContext];
    capabilities = [communicationContext3 capabilities];

    [v130 setCapabilities:capabilities & 1];
    [v130 setBusinessCorrespondence:{objc_msgSend(v120, "isBusinessCorrespondence")}];
    v51 = v221;
    [v221 setCommunicationContext:v130];

    v121 = v223;
  }

  v145 = _attachmentImageForBulletin(v86, 35.0);
  if (v145)
  {
    [v51 setAttachmentImage:v145];
  }

  v212 = v145;
  [v114 setContent:v51];
  v146 = objc_opt_new();
  alertSuppressionContexts = [v86 alertSuppressionContexts];
  [v146 setAlertSuppressionContexts:alertSuppressionContexts];

  fullAlternateActionLabel = [v86 fullAlternateActionLabel];
  v149 = [fullAlternateActionLabel length];

  if (v149)
  {
    fullAlternateActionLabel2 = [v86 fullAlternateActionLabel];
LABEL_128:
    v157 = fullAlternateActionLabel2;
    [v146 setAlternateActionLabel:fullAlternateActionLabel2];

    goto LABEL_129;
  }

  fullUnlockActionLabel = [v86 fullUnlockActionLabel];
  v152 = [fullUnlockActionLabel length];

  if (v152)
  {
    fullAlternateActionLabel2 = [v86 fullUnlockActionLabel];
    goto LABEL_128;
  }

  alternateActionLabel = [v86 alternateActionLabel];
  v154 = [alternateActionLabel length];

  if (v154)
  {
    fullAlternateActionLabel2 = [v86 alternateActionLabel];
    goto LABEL_128;
  }

  unlockActionLabel = [v86 unlockActionLabel];
  v156 = [unlockActionLabel length];

  if (v156)
  {
    fullAlternateActionLabel2 = [v86 unlockActionLabel];
    goto LABEL_128;
  }

LABEL_129:
  [v146 setDismissAutomatically:(a6 & 4) == 0];
  if ((a6 & 4) != 0 || [v121 isEqualToString:@"com.apple.mobiletimer"])
  {
    v158 = [v86 allowsPersistentBannersInCarPlay] ^ 1;
  }

  else
  {
    v158 = 1;
  }

  [v146 setDismissAutomaticallyForCarPlay:v158];
  [v146 setOverridesQuietMode:{objc_msgSend(v86, "ignoresQuietMode")}];
  [v146 setOverridesDowntime:{objc_msgSend(v86, "ignoresDowntime")}];
  [v146 setAlertsWhenLocked:{objc_msgSend(v86, "inertWhenLocked") ^ 1}];
  [v146 setAddToLockScreenWhenUnlocked:1];
  if ([v86 allowsAutomaticRemovalFromLockScreen])
  {
    if ([v86 preventAutomaticRemovalFromLockScreen])
    {
      v159 = 2;
    }

    else
    {
      v159 = 0;
    }
  }

  else
  {
    v159 = 2;
  }

  [v146 setLockScreenPersistence:v159];
  if ([v86 lockScreenPriority] == 2)
  {
    if ([@"com.apple.ScreenTimeDowntimeNotifications" isEqualToString:v121])
    {
      v160 = 304;
    }

    else if ([@"com.apple.donotdisturb" isEqualToString:v121])
    {
      v160 = 303;
    }

    else if ([@"com.apple.powerui.smartcharging" isEqualToString:v121])
    {
      v160 = 302;
    }

    else if ([@"com.apple.Siri.ActionPredictionNotifications" isEqualToString:v121])
    {
      v160 = 301;
    }

    else if ([@"com.apple.shortcuts" isEqualToString:v121])
    {
      v160 = 301;
    }

    else
    {
      v160 = 300;
    }
  }

  else if ([v86 lockScreenPriority] == 1 || objc_msgSend(v86, "prioritizeAtTopOfLockScreen"))
  {
    v160 = 200;
  }

  else
  {
    v160 = 100;
  }

  [v146 setLockScreenPriority:v160];
  [v146 setSilencedByMenuButtonPress:{objc_msgSend(v86, "canBeSilencedByMenuButtonPress")}];
  [v146 setOverridesPocketMode:{objc_msgSend(v86, "ignoresQuietMode")}];
  [v146 setRealertCount:{objc_msgSend(v86, "realertCount")}];
  [v146 setSuppressesAlertsWhenAppIsActive:{objc_msgSend(v86, "suppressesAlertsWhenAppIsActive")}];
  [v146 setCanPlaySound:a7];
  if (a7)
  {
    if ([v86 turnsOnDisplay])
    {
      v161 = (a6 >> 11) & 1;
    }

    else
    {
      v161 = 0;
    }
  }

  else
  {
    v161 = 0;
  }

  [v146 setCanTurnOnDisplay:v161];
  [v146 setRequestsFullScreenPresentation:{objc_msgSend(v86, "wantsFullscreenPresentation") & (a6 >> 3)}];
  [v146 setHideClearActionInList:0];
  if ([v86 messageNumberOfLines] == -1)
  {
    displaysActionsInline = 1;
  }

  else
  {
    displaysActionsInline = [v86 displaysActionsInline];
  }

  [v146 setNumberOfLinesInfinite:displaysActionsInline];
  [v146 setPreemptsPresentedNotification:{objc_msgSend(v86, "preemptsPresentedAlert")}];
  [v146 setDisplaysActionsInline:{objc_msgSend(v86, "displaysActionsInline")}];
  [v146 setRevealsAdditionalContentOnPresentation:{objc_msgSend(v86, "revealsAdditionalContentOnPresentation")}];
  privacySettings = [v86 privacySettings];
  contentPreviewSetting = [v86 contentPreviewSetting];
  v166 = (privacySettings & 1) == 0 && contentPreviewSetting != 1;
  [v146 setSuppressesTitleWhenLocked:v166];
  contentPreviewSetting2 = [v86 contentPreviewSetting];
  v169 = (privacySettings & 2) == 0 && contentPreviewSetting2 != 1;
  [v146 setSuppressesSubtitleWhenLocked:v169];
  contentPreviewSetting3 = [v86 contentPreviewSetting];
  v172 = (privacySettings & 4) == 0 && contentPreviewSetting3 != 1;
  [v146 setSuppressesBodyWhenLocked:v172];
  contentPreviewSetting4 = [v86 contentPreviewSetting];
  if (contentPreviewSetting4 == 3)
  {
    v174 = 2;
  }

  else
  {
    v174 = contentPreviewSetting4 == 2;
  }

  [v146 setContentPreviewSetting:v174];
  [v146 setCoalescesWhenLocked:{objc_msgSend(v86, "coalescesWhenLocked")}];
  [v146 setPreventsAutomaticLock:{objc_msgSend(v86, "preventLock")}];
  hasCriticalIcon = 1;
  [v146 setRevealsAdditionalContentIfNoDefaultAction:1];
  defaultAction = [v86 defaultAction];
  if (defaultAction)
  {
    hasCriticalIcon = [v86 hasCriticalIcon];
  }

  [v146 setLauchUsingSiriForCarPlayDefaultAction:hasCriticalIcon];

  [v146 setAllowActionsForCarPlay:{objc_msgSend(v86, "allowsSupplementaryActionsInCarPlay")}];
  [v146 setPlayMediaWhenRaised:{objc_msgSend(v86, "playsMediaWhenRaised")}];
  [v146 setHideCloseActionForCarPlay:{objc_msgSend(v86, "hideDismissActionInCarPlay")}];
  [v146 setShouldAnnounceForCarPlay:(a6 >> 12) & 1];
  [v146 setSuppressPresentationInAmbient:{objc_msgSend(v86, "suppressPresentationInAmbient")}];
  [v146 setScreenCaptureProhibited:{objc_msgSend(v86, "screenCaptureProhibited")}];
  [v146 setCanShowSummary:{objc_msgSend(v225, "summarizationSetting") == 2}];
  speechLanguage = [v86 speechLanguage];
  [v146 setSpeechLanguage:speechLanguage];

  [v114 setOptions:v146];
  if ((a6 & 0x10) != 0)
  {
    sound = [v86 sound];
    v179 = sound;
    if (sound)
    {
      v180 = sound;
      v181 = objc_opt_new();
      [v181 setSoundType:2];
      alertConfiguration = [v180 alertConfiguration];

      [v181 setAlertConfiguration:alertConfiguration];
    }

    else
    {
      v181 = 0;
    }

    [v114 setSound:v181];
  }

  v183 = MEMORY[0x277D77E30];
  dismissAction = [v86 dismissAction];
  v185 = [v183 notificationActionForDismissAction:dismissAction bulletin:v86 observer:v219];

  if ([v86 wantsFullscreenPresentation])
  {
    if ([v223 isEqualToString:@"com.apple.mobiletimer"])
    {
      v186 = v185;
    }

    else
    {
      v186 = 0;
    }
  }

  else
  {
    v186 = 0;
  }

  [v114 setCancelAction:v186];
  [v114 setClearAction:v185];
  if ([v86 shouldDismissBulletinWhenClosed])
  {
    v187 = v185;
  }

  else
  {
    v187 = 0;
  }

  [v114 setCloseAction:v187];
  v188 = MEMORY[0x277D77E30];
  defaultAction2 = [v86 defaultAction];
  v190 = [v188 notificationActionForDefaultAction:defaultAction2 bulletin:v86 observer:v219];
  [v114 setDefaultAction:v190];

  v191 = MEMORY[0x277D77E30];
  silenceAction = [v86 silenceAction];
  v193 = [v191 notificationActionForSilenceAction:silenceAction bulletin:v86 observer:v219];
  [v114 setSilenceAction:v193];

  v194 = MEMORY[0x277D77E30];
  followActivityAction = [v86 followActivityAction];
  v196 = [v194 notificationActionForFollowActivityAction:followActivityAction bulletin:v86 observer:v219];
  [v114 setInlineAction:v196];

  v197 = v219;
  v198 = v86;
  v199 = _actionsForLayout(v198, v197, 0);
  v200 = _actionsForLayout(v198, v197, 1);

  if (![v200 count])
  {
    if ([v199 count] < 3)
    {
      v201 = v199;
    }

    else
    {
      v201 = [v199 subarrayWithRange:{0, 2}];
    }

    v202 = v201;

    v200 = v202;
  }

  v203 = *MEMORY[0x277D77DA8];
  v240[0] = *MEMORY[0x277D77DA0];
  v240[1] = v203;
  *buf = v199;
  *&buf[8] = v200;
  v204 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v240 count:2];

  [v226 setSupplementaryActions:v204];
  v205 = [MEMORY[0x277CE1F78] notificationForBulletin:v198];
  [v226 setUserNotification:v205];

  [v226 setIsCollapsedNotification:0];
  [v226 setCollapsedNotificationsCount:0];
  v206 = objc_opt_new();
  [v206 setObject:v198 forKey:@"BBBulletin"];
  [v206 setObject:v197 forKey:@"BBObserver"];
  if (v217)
  {
    [v206 setObject:v217 forKey:@"NotificationIconRecipe"];
  }

  if (v213)
  {
    [v206 setObject:v213 forKey:@"NotificationSubordinateIconRecipe"];
  }

  [v226 setSourceInfo:v206];
  interruptionLevel = [v198 interruptionLevel];
  if ((interruptionLevel - 1) >= 3)
  {
    v208 = 0;
  }

  else
  {
    v208 = interruptionLevel;
  }

  [v226 setInterruptionLevel:v208];
  [v198 relevanceScore];
  [v226 setRelevanceScore:?];
  filterCriteria = [v198 filterCriteria];
  [v226 setFilterCriteria:filterCriteria];

  v210 = [v226 copy];

  return v210;
}

- (uint64_t)hasSameContactAsNotificationRequest:()Bulletin
{
  v4 = a3;
  bulletin = [self bulletin];
  context = [bulletin context];
  v7 = *MEMORY[0x277CF35C8];
  v8 = [context objectForKey:*MEMORY[0x277CF35C8]];

  bulletin2 = [v4 bulletin];

  context2 = [bulletin2 context];
  v11 = [context2 objectForKey:v7];

  if ([v8 rangeOfString:@"@"] == 0x7FFFFFFFFFFFFFFFLL && (objc_msgSend(MEMORY[0x277CCA900], "letterCharacterSet"), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v8, "rangeOfCharacterFromSet:", v12), v12, v13 == 0x7FFFFFFFFFFFFFFFLL))
  {
    [v8 UTF8String];
    [v11 UTF8String];
    active = CPPhoneNumberCopyActiveCountryCode();
    v15 = CPPhoneNumbersEqual();
    CFRelease(active);
  }

  else
  {
    v15 = [v8 isEqualToString:v11];
  }

  return v15;
}

- (id)contactIdentifier
{
  bulletin = [self bulletin];
  context = [bulletin context];
  v3 = [context objectForKey:*MEMORY[0x277CF35C8]];

  return v3;
}

- (id)attachmentImageWithDimension:()Bulletin
{
  content = [self content];
  attachmentImage = [content attachmentImage];

  if (a2 > 0.0 && a2 != 35.0 && ([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    bulletin = [self bulletin];
    v7 = _attachmentImageForBulletin(bulletin, a2);

    attachmentImage = v7;
  }

  return attachmentImage;
}

+ (void)_notificationRequestForBulletin:()Bulletin observer:sectionInfo:feed:playLightsAndSirens:hasPlayLightsAndSirens:uuid:.cold.1(void *a1, NSObject *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = [a1 spotlightIdentifier];
  v5 = [a1 title];
  v6 = [a1 threadSummary];
  v7 = [a1 summary];
  v8 = 138413059;
  v9 = v4;
  v10 = 2117;
  v11 = v5;
  v12 = 2117;
  v13 = v6;
  v14 = 2117;
  v15 = v7;
  _os_log_debug_impl(&dword_21E77E000, a2, OS_LOG_TYPE_DEBUG, "notification request for bulletin with spotlightID: %@ title: %{sensitive}@ threadSummary: %{sensitive}@ summary: %{sensitive}@", &v8, 0x2Au);
}

@end