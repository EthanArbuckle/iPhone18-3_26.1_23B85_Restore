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
  v1 = [a1 sourceInfo];
  v2 = [v1 objectForKey:@"NotificationIconRecipe"];

  return v2;
}

- (id)subordinateIconRecipe
{
  v1 = [a1 sourceInfo];
  v2 = [v1 objectForKey:@"NotificationSubordinateIconRecipe"];

  return v2;
}

- (id)bulletin
{
  v1 = [a1 sourceInfo];
  v2 = [v1 objectForKey:@"BBBulletin"];

  return v2;
}

- (id)observer
{
  v1 = [a1 sourceInfo];
  v2 = [v1 objectForKey:@"BBObserver"];

  return v2;
}

+ (id)notificationRequestForBulletin:()Bulletin observer:sectionInfo:feed:
{
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = objc_opt_new();
  v14 = [a1 notificationRequestForBulletin:v12 observer:v11 sectionInfo:v10 feed:a6 uuid:v13];

  return v14;
}

+ (id)_notificationRequestForBulletin:()Bulletin observer:sectionInfo:feed:playLightsAndSirens:hasPlayLightsAndSirens:uuid:
{
  v240[2] = *MEMORY[0x277D85DE8];
  v11 = a3;
  v219 = a4;
  v224 = a5;
  v12 = a9;
  v13 = [v11 sectionID];
  v14 = objc_opt_new();
  v216 = v12;
  [v14 setUuid:v12];
  [v14 setSectionIdentifier:v13];
  v15 = [v11 subsectionIDs];
  [v14 setSubSectionIdentifiers:v15];

  v16 = [v11 publisherMatchID];
  [v14 setNotificationIdentifier:v16];

  v17 = [v11 categoryID];
  [v14 setCategoryIdentifier:v17];

  v18 = [v11 intentIDs];
  [v14 setIntentIdentifiers:v18];

  v19 = [v11 parentSectionID];
  [v14 setParentSectionIdentifier:v19];

  v215 = [v11 eventBehavior];
  [v14 setEventBehavior:?];
  [v14 setIsHighlight:{objc_msgSend(v11, "isHighlight")}];
  v20 = [v11 priorityNotificationStatus];
  if ((v20 - 1) >= 5)
  {
    v21 = 0;
  }

  else
  {
    v21 = v20;
  }

  [v14 setPriorityStatus:v21];
  v22 = [v11 notificationSummaryStatus];
  if ((v22 - 1) >= 4)
  {
    v23 = 0;
  }

  else
  {
    v23 = v22;
  }

  [v14 setSummaryStatus:v23];
  [v14 setIsPresentedAsBanner:0];
  [v14 setIsRemoved:0];
  v24 = [v11 threadID];
  v25 = [v24 length];

  v226 = v14;
  if (v25)
  {
    v26 = [v11 threadID];
    [v14 setThreadIdentifier:v26];
  }

  else
  {
    v27 = MEMORY[0x277CCACA8];
    v26 = [v14 sectionIdentifier];
    v28 = [v27 stringWithFormat:@"req-%@", v26];
    [v14 setThreadIdentifier:v28];
  }

  v223 = v13;

  [v14 setThreadIdentifierUnique:v25 != 0];
  [v14 setCriticalAlert:{objc_msgSend(v11, "hasCriticalIcon")}];
  v233 = 0u;
  v234 = 0u;
  v231 = 0u;
  v232 = 0u;
  v29 = [v224 subsections];
  v30 = [v29 countByEnumeratingWithState:&v231 objects:v239 count:16];
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
          objc_enumerationMutation(v29);
        }

        v35 = *(*(&v231 + 1) + 8 * i);
        v36 = [v11 subsectionIDs];
        v37 = [v35 subsectionID];
        v38 = [v36 containsObject:v37];

        if (v38)
        {
          if (!v32 || (v39 = [v32 subsectionPriority], v39 < objc_msgSend(v35, "subsectionPriority")))
          {
            v40 = v35;

            v32 = v40;
          }
        }
      }

      v31 = [v29 countByEnumeratingWithState:&v231 objects:v239 count:16];
    }

    while (v31);
  }

  else
  {
    v32 = 0;
  }

  v41 = [v32 subsectionID];
  [v226 setHighestPrioritySubSectionIdentifier:v41];

  v42 = [v11 recencyDate];
  if (v42)
  {
    [v226 setTimestamp:v42];
  }

  else
  {
    v43 = [v11 date];
    if (v43)
    {
      [v226 setTimestamp:v43];
    }

    else
    {
      v44 = [v11 publicationDate];
      [v226 setTimestamp:v44];
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

  v49 = [v11 context];
  [v226 setContext:v49];

  v50 = [v11 subsectionIDs];
  [v226 setSettingsSections:v50];

  v51 = objc_opt_new();
  v52 = [v11 contentType];
  if ([v52 isEqualToString:*MEMORY[0x277CF34C8]])
  {
    v53 = MEMORY[0x277CE2158];
    v54 = v224;
  }

  else
  {
    v54 = v224;
    if ([v52 isEqualToString:*MEMORY[0x277CF34D0]])
    {
      v53 = MEMORY[0x277CE2160];
    }

    else if ([v52 isEqualToString:*MEMORY[0x277CF34C0]])
    {
      v53 = MEMORY[0x277CE2150];
    }

    else if ([v52 isEqualToString:*MEMORY[0x277CF34D8]])
    {
      v53 = MEMORY[0x277CE2168];
    }

    else if ([v52 isEqualToString:*MEMORY[0x277CF34B8]])
    {
      v53 = MEMORY[0x277CE2148];
    }

    else if ([v52 isEqualToString:*MEMORY[0x277CF34E0]])
    {
      v53 = MEMORY[0x277CE2170];
    }

    else
    {
      v55 = [v52 isEqualToString:*MEMORY[0x277CF34A8]];
      v53 = MEMORY[0x277CE2140];
      if (v55)
      {
        v53 = MEMORY[0x277CE2138];
      }
    }
  }

  v56 = *v53;

  [v51 setContentType:v56];
  v57 = [v11 header];
  if ([v57 length])
  {
    v58 = [v11 header];
    [v51 setCustomHeader:v58];
  }

  else
  {
    [v51 setCustomHeader:0];
  }

  v59 = [v54 displayName];
  if ([v59 length])
  {
    [v54 displayName];
  }

  else
  {
    [v54 appName];
  }
  v60 = ;
  [v51 setDefaultHeader:v60];

  v61 = [v11 title];
  [v51 setTitle:v61];

  v62 = [v11 subtitle];
  [v51 setSubtitle:v62];

  v63 = [v11 attributedMessage];
  if (!v63)
  {
    v64 = [v11 message];
    v63 = [MEMORY[0x277CCA898] nc_safeAttributedStringWithString:v64];
  }

  [v51 setAttributedMessage:v63];
  v221 = v51;
  v65 = v224;
  if (UNCCatchMe())
  {
    v66 = [v11 summary];
    [v51 setSummary:v66];

    v67 = [v11 threadSummary];
    [v51 setThreadSummary:v67];

    v68 = [v11 spotlightIdentifier];
    [v51 setSpotlightIdentifier:v68];

    v69 = MEMORY[0x277D77DE8];
    v70 = *MEMORY[0x277D77DE8];
    if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
    {
      v71 = [v51 spotlightIdentifier];
      v72 = MEMORY[0x277CCABB0];
      v73 = [v51 threadSummary];
      v74 = [v72 numberWithInt:{objc_msgSend(v73, "length") != 0}];
      v75 = MEMORY[0x277CCABB0];
      [v51 summary];
      v77 = v76 = v63;
      v78 = [v75 numberWithInt:{objc_msgSend(v77, "length") != 0}];
      *buf = 138412802;
      *&buf[4] = v71;
      *&buf[12] = 2112;
      *&buf[14] = v74;
      v237 = 2112;
      v238 = v78;
      _os_log_impl(&dword_21E77E000, v70, OS_LOG_TYPE_DEFAULT, "notification request for bulletin with spotlightID: %@ hasThreadSummary: %@ hasSummary: %@", buf, 0x20u);

      v63 = v76;
      v69 = MEMORY[0x277D77DE8];
      v65 = v224;
    }

    v79 = *v69;
    if (os_log_type_enabled(v79, OS_LOG_TYPE_DEBUG))
    {
      [NCNotificationRequest(Bulletin) _notificationRequestForBulletin:v51 observer:v79 sectionInfo:? feed:? playLightsAndSirens:? hasPlayLightsAndSirens:? uuid:?];
    }
  }

  v80 = [v11 footer];
  [v51 setFooter:v80];

  v81 = [v11 date];
  [v51 setDate:v81];

  [v51 setDateAllDay:{objc_msgSend(v11, "dateIsAllDay")}];
  v82 = [v11 timeZone];
  [v51 setTimeZone:v82];

  v83 = [v11 hiddenPreviewsBodyPlaceholder];
  [v51 setHiddenPreviewsBodyPlaceholder:v83];

  v84 = [v11 subtypeSummaryFormat];
  [v51 setCategorySummaryFormat:v84];

  v85 = [v11 summaryArgument];
  [v51 setSummaryArgument:v85];

  [v51 setSummaryArgumentCount:{objc_msgSend(v11, "summaryArgumentCount")}];
  v86 = v11;
  v87 = v65;
  v88 = [v86 sectionID];
  v89 = [v87 sectionID];
  v90 = [v89 isEqualToString:@"com.apple.mobilecal"];

  v214 = v63;
  if (v90)
  {
    v91 = [v86 icon];
    v92 = [v91 _bestVariantForFormat:0];

    v93 = [v92 dateComponentDetails];

    if (v93)
    {
      v94 = [v86 sectionIcon];
      v95 = [MEMORY[0x277D759A0] mainScreen];
      [v95 scale];
      v96 = [NCNotificationIconRecipe iconRecipeForSectionIcon:v94 scale:v88 applicationIdentifier:?];
    }

    else
    {
      v98 = [v92 imagePath];
      v99 = [v98 lastPathComponent];
      v94 = [v99 stringByDeletingPathExtension];

      if (v94)
      {
        v100 = [NCNotificationIconRecipe iconRecipeForDateIconIdentifier:v94];
      }

      else
      {
        v100 = 0;
      }

      v101 = [v86 context];
      v95 = [v101 valueForKey:@"contentDate"];

      v102 = v100;
      if (v100 || !v95)
      {
        goto LABEL_86;
      }

      v96 = [NCNotificationIconRecipe iconRecipeForDate:v95];
    }

    v102 = v96;
LABEL_86:

    v97 = v102;
    goto LABEL_87;
  }

  v97 = 0;
LABEL_87:
  v103 = [v86 sectionIcon];
  v104 = [v87 sectionID];
  v105 = _sectionIdentifierIconDenyListContains(v104, v103, 0);

  if (v97 || (v105 & 1) != 0 || !v103)
  {
LABEL_92:
    if (v97)
    {
      goto LABEL_96;
    }

    goto LABEL_93;
  }

  v106 = [v86 communicationContext];

  if (!v106)
  {
    v107 = [MEMORY[0x277D759A0] mainScreen];
    [v107 scale];
    v97 = [NCNotificationIconRecipe iconRecipeForSectionIcon:v103 scale:v88 applicationIdentifier:?];

    goto LABEL_92;
  }

LABEL_93:
  if (NCApplicationIdentifierIsValid(v88))
  {
    v97 = [NCNotificationIconRecipe iconRecipeForApplicationIdentifier:v88];
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
    v109 = [v108 sectionID];
    v110 = [v108 icon];
    v111 = _sectionIdentifierIconDenyListContains(v109, v110, 26);

    v112 = [v108 sectionID];
    v113 = [v108 icon];

    v114 = v226;
    if (v111)
    {
      if (v113)
      {
        v115 = [v108 icon];
        v116 = [MEMORY[0x277D759A0] mainScreen];
        [v116 scale];
        v113 = [NCNotificationIconRecipe iconRecipeForSectionIcon:v115 scale:v112 applicationIdentifier:?];

        v114 = v226;
      }
    }

    else if (!v113 || ([v108 icon], v117 = objc_claimAutoreleasedReturnValue(), objc_msgSend(MEMORY[0x277D759A0], "mainScreen"), v118 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v118, "scale"), +[NCNotificationIconRecipe iconRecipeForSectionIcon:scale:applicationIdentifier:](NCNotificationIconRecipe, "iconRecipeForSectionIcon:scale:applicationIdentifier:", v117, v112), v113 = objc_claimAutoreleasedReturnValue(), v118, v114 = v226, v117, !v113))
    {
      if (NCApplicationIdentifierIsValid(v112))
      {
        v113 = [NCNotificationIconRecipe iconRecipeForApplicationIdentifier:v112];
      }

      else
      {
        v113 = 0;
      }
    }

    v213 = v113;
  }

  else
  {
    v213 = 0;
    v114 = v226;
  }

  v119 = [v86 communicationContext];
  v120 = v119;
  v121 = v223;
  if (v119)
  {
    v122 = [v119 recipients];
    v123 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v227 = 0u;
    v228 = 0u;
    v229 = 0u;
    v230 = 0u;
    v124 = v122;
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
    v131 = [v120 identifier];
    [v130 setIdentifier:v131];

    v132 = [v120 associatedObjectUri];
    [v130 setAssociatedObjectUri:v132];

    v133 = [v120 bundleIdentifier];
    [v130 setBundleIdentifier:v133];

    v134 = [v120 displayName];
    [v130 setDisplayName:v134];

    v135 = [v120 sender];

    if (v135)
    {
      v136 = [v120 sender];
      v137 = _unContactFromBBContact(v136);

      [v130 setSender:v137];
      v138 = [MEMORY[0x277D77F58] sharedInstance];
      v139 = [v114 topLevelSectionIdentifier];
      v140 = [v138 updateServiceWithContact:v137 bundleIdentifier:v139];

      v114 = v226;
    }

    [v130 setRecipients:v123];
    v141 = [v120 contentURL];
    [v130 setContentURL:v141];

    v142 = [v120 imageName];
    [v130 setImageName:v142];

    [v130 setSystemImage:{objc_msgSend(v120, "systemImage")}];
    [v130 setMentionsCurrentUser:{objc_msgSend(v120, "mentionsCurrentUser")}];
    [v130 setNotifyRecipientAnyway:{objc_msgSend(v120, "notifyRecipientAnyway")}];
    [v130 setReplyToCurrentUser:{objc_msgSend(v120, "isReplyToCurrentUser")}];
    [v130 setRecipientCount:{objc_msgSend(v120, "recipientCount")}];
    v143 = [v86 communicationContext];
    v144 = [v143 capabilities];

    [v130 setCapabilities:v144 & 1];
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
  v147 = [v86 alertSuppressionContexts];
  [v146 setAlertSuppressionContexts:v147];

  v148 = [v86 fullAlternateActionLabel];
  v149 = [v148 length];

  if (v149)
  {
    v150 = [v86 fullAlternateActionLabel];
LABEL_128:
    v157 = v150;
    [v146 setAlternateActionLabel:v150];

    goto LABEL_129;
  }

  v151 = [v86 fullUnlockActionLabel];
  v152 = [v151 length];

  if (v152)
  {
    v150 = [v86 fullUnlockActionLabel];
    goto LABEL_128;
  }

  v153 = [v86 alternateActionLabel];
  v154 = [v153 length];

  if (v154)
  {
    v150 = [v86 alternateActionLabel];
    goto LABEL_128;
  }

  v155 = [v86 unlockActionLabel];
  v156 = [v155 length];

  if (v156)
  {
    v150 = [v86 unlockActionLabel];
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
    v162 = 1;
  }

  else
  {
    v162 = [v86 displaysActionsInline];
  }

  [v146 setNumberOfLinesInfinite:v162];
  [v146 setPreemptsPresentedNotification:{objc_msgSend(v86, "preemptsPresentedAlert")}];
  [v146 setDisplaysActionsInline:{objc_msgSend(v86, "displaysActionsInline")}];
  [v146 setRevealsAdditionalContentOnPresentation:{objc_msgSend(v86, "revealsAdditionalContentOnPresentation")}];
  v163 = [v86 privacySettings];
  v164 = [v86 contentPreviewSetting];
  v166 = (v163 & 1) == 0 && v164 != 1;
  [v146 setSuppressesTitleWhenLocked:v166];
  v167 = [v86 contentPreviewSetting];
  v169 = (v163 & 2) == 0 && v167 != 1;
  [v146 setSuppressesSubtitleWhenLocked:v169];
  v170 = [v86 contentPreviewSetting];
  v172 = (v163 & 4) == 0 && v170 != 1;
  [v146 setSuppressesBodyWhenLocked:v172];
  v173 = [v86 contentPreviewSetting];
  if (v173 == 3)
  {
    v174 = 2;
  }

  else
  {
    v174 = v173 == 2;
  }

  [v146 setContentPreviewSetting:v174];
  [v146 setCoalescesWhenLocked:{objc_msgSend(v86, "coalescesWhenLocked")}];
  [v146 setPreventsAutomaticLock:{objc_msgSend(v86, "preventLock")}];
  v175 = 1;
  [v146 setRevealsAdditionalContentIfNoDefaultAction:1];
  v176 = [v86 defaultAction];
  if (v176)
  {
    v175 = [v86 hasCriticalIcon];
  }

  [v146 setLauchUsingSiriForCarPlayDefaultAction:v175];

  [v146 setAllowActionsForCarPlay:{objc_msgSend(v86, "allowsSupplementaryActionsInCarPlay")}];
  [v146 setPlayMediaWhenRaised:{objc_msgSend(v86, "playsMediaWhenRaised")}];
  [v146 setHideCloseActionForCarPlay:{objc_msgSend(v86, "hideDismissActionInCarPlay")}];
  [v146 setShouldAnnounceForCarPlay:(a6 >> 12) & 1];
  [v146 setSuppressPresentationInAmbient:{objc_msgSend(v86, "suppressPresentationInAmbient")}];
  [v146 setScreenCaptureProhibited:{objc_msgSend(v86, "screenCaptureProhibited")}];
  [v146 setCanShowSummary:{objc_msgSend(v225, "summarizationSetting") == 2}];
  v177 = [v86 speechLanguage];
  [v146 setSpeechLanguage:v177];

  [v114 setOptions:v146];
  if ((a6 & 0x10) != 0)
  {
    v178 = [v86 sound];
    v179 = v178;
    if (v178)
    {
      v180 = v178;
      v181 = objc_opt_new();
      [v181 setSoundType:2];
      v182 = [v180 alertConfiguration];

      [v181 setAlertConfiguration:v182];
    }

    else
    {
      v181 = 0;
    }

    [v114 setSound:v181];
  }

  v183 = MEMORY[0x277D77E30];
  v184 = [v86 dismissAction];
  v185 = [v183 notificationActionForDismissAction:v184 bulletin:v86 observer:v219];

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
  v189 = [v86 defaultAction];
  v190 = [v188 notificationActionForDefaultAction:v189 bulletin:v86 observer:v219];
  [v114 setDefaultAction:v190];

  v191 = MEMORY[0x277D77E30];
  v192 = [v86 silenceAction];
  v193 = [v191 notificationActionForSilenceAction:v192 bulletin:v86 observer:v219];
  [v114 setSilenceAction:v193];

  v194 = MEMORY[0x277D77E30];
  v195 = [v86 followActivityAction];
  v196 = [v194 notificationActionForFollowActivityAction:v195 bulletin:v86 observer:v219];
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
  v207 = [v198 interruptionLevel];
  if ((v207 - 1) >= 3)
  {
    v208 = 0;
  }

  else
  {
    v208 = v207;
  }

  [v226 setInterruptionLevel:v208];
  [v198 relevanceScore];
  [v226 setRelevanceScore:?];
  v209 = [v198 filterCriteria];
  [v226 setFilterCriteria:v209];

  v210 = [v226 copy];

  return v210;
}

- (uint64_t)hasSameContactAsNotificationRequest:()Bulletin
{
  v4 = a3;
  v5 = [a1 bulletin];
  v6 = [v5 context];
  v7 = *MEMORY[0x277CF35C8];
  v8 = [v6 objectForKey:*MEMORY[0x277CF35C8]];

  v9 = [v4 bulletin];

  v10 = [v9 context];
  v11 = [v10 objectForKey:v7];

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
  v1 = [a1 bulletin];
  v2 = [v1 context];
  v3 = [v2 objectForKey:*MEMORY[0x277CF35C8]];

  return v3;
}

- (id)attachmentImageWithDimension:()Bulletin
{
  v4 = [a1 content];
  v5 = [v4 attachmentImage];

  if (a2 > 0.0 && a2 != 35.0 && ([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    v6 = [a1 bulletin];
    v7 = _attachmentImageForBulletin(v6, a2);

    v5 = v7;
  }

  return v5;
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