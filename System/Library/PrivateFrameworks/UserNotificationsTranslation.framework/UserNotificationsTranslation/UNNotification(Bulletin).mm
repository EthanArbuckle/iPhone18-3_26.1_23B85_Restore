@interface UNNotification(Bulletin)
+ (id)notificationForBulletin:()Bulletin;
@end

@implementation UNNotification(Bulletin)

+ (id)notificationForBulletin:()Bulletin
{
  v138 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 context];
  v120 = [v4 objectForKey:@"contentDate"];

  v119 = [v3 date];
  v118 = [v3 defaultAction];
  v5 = [v3 context];
  v117 = [v5 objectForKey:@"recordDate"];

  v6 = [v3 publisherBulletinID];
  v7 = [v3 dismissalID];
  v116 = [v6 isEqualToString:v7];

  v127 = [MEMORY[0x277CBEA60] array];
  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v9 = [v3 primaryAttachment];

  if (v9)
  {
    v10 = [v3 primaryAttachment];
    [v8 addObject:v10];
  }

  v11 = [v3 additionalAttachments];

  if (v11)
  {
    v12 = [v3 additionalAttachments];
    [v8 addObjectsFromArray:v12];
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
        v16 = [v15 path];

        if (v16)
        {
          v17 = [objc_alloc(MEMORY[0x277CE2008]) initFileURLWithPath:v16 sandboxExtensionClass:@"com.apple.usernotifications.attachments.read-only"];
          v18 = [v14 thumbnailGeneratorUserInfo];
          v19 = v18;
          if (v18)
          {
            v20 = [v18 mutableCopy];
          }

          else
          {
            v20 = [MEMORY[0x277CBEB38] dictionary];
          }

          v21 = v20;
          v22 = [v14 uniformType];
          if (v22)
          {
            [v21 setObject:v22 forKey:v122];
          }

          v23 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v14, "thumbnailHidden")}];
          [v21 setObject:v23 forKey:v125];

          v24 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v14, "hiddenFromDefaultExpandedView")}];
          [v21 setObject:v24 forKey:v124];

          v25 = MEMORY[0x277CE1F90];
          v26 = [v14 identifier];
          v27 = [v21 copy];
          v28 = [v25 attachmentWithIdentifier:v26 URL:v17 options:v27 error:0];

          if (v28)
          {
            v29 = [v127 arrayByAddingObject:v28];

            v127 = v29;
          }
        }
      }

      v130 = [obj countByEnumeratingWithState:&v133 objects:v137 count:16];
    }

    while (v130);
  }

  v30 = v121;
  v31 = [v121 icon];

  if (!v31)
  {
    v42 = 0;
    goto LABEL_35;
  }

  v32 = [v121 icon];
  v33 = [v32 _bestVariantForFormat:0];

  v34 = [v33 applicationIdentifier];
  v35 = [v33 imagePath];
  v36 = [v33 imageName];
  v37 = [v33 systemImageName];
  v38 = [v33 uti];
  v39 = [v33 dateComponentDetails];
  v40 = [v33 isPrecomposed];
  if (v34)
  {
    v41 = [MEMORY[0x277CE1FB0] iconForApplicationIdentifier:v34];
  }

  else if (v35)
  {
    v41 = [MEMORY[0x277CE1FB0] iconAtPath:v35 shouldSuppressMask:v40];
  }

  else if (v36)
  {
    v41 = [MEMORY[0x277CE1FB0] iconNamed:v36 shouldSuppressMask:v40];
  }

  else if (v37)
  {
    v41 = [MEMORY[0x277CE1FB0] iconForSystemImageNamed:{v37, v40}];
  }

  else
  {
    if (!v38)
    {
      if (v39)
      {
        v113 = [v39 objectForKey:{*MEMORY[0x277CE2108], v40}];
        v114 = [v39 objectForKey:*MEMORY[0x277CE2100]];
        v115 = [v39 objectForKey:*MEMORY[0x277CE2110]];
        v132 = [v115 integerValue];

        v42 = [MEMORY[0x277CE1FB0] iconWithDateComponents:v113 calendarIdentifier:v114 format:v132];
      }

      else
      {
        v42 = 0;
      }

      goto LABEL_34;
    }

    v41 = [MEMORY[0x277CE1FB0] iconWithUTI:{v38, v40}];
  }

  v42 = v41;
LABEL_34:

  v30 = v121;
LABEL_35:
  v43 = [v30 sound];

  if (v43)
  {
    v44 = [v30 sound];
    v45 = [v44 alertConfiguration];

    v46 = [v45 type];
    v47 = [MEMORY[0x277CE1F70] soundWithAlertType:v46];
    v48 = [v45 topic];
    v49 = __52__UNNotification_Bulletin__notificationForBulletin___block_invoke(v48, v48);
    [v47 setAlertTopic:v49];

    v50 = [v45 audioCategory];
    v51 = __52__UNNotification_Bulletin__notificationForBulletin___block_invoke(v50, v50);
    [v47 setAudioCategory:v51];

    v52 = [v121 context];
    v53 = [v52 objectForKey:@"audioVolume"];
    [v47 setAudioVolume:v53];

    v54 = [v45 topic];
    [v47 setCritical:{objc_msgSend(v54, "isEqualToString:", *MEMORY[0x277D71FB0])}];

    [v45 maximumDuration];
    [v47 setMaximumDuration:?];
    [v47 setShouldIgnoreRingerSwitch:{objc_msgSend(v45, "shouldIgnoreRingerSwitch")}];
    [v47 setShouldRepeat:{objc_msgSend(v45, "shouldRepeat")}];
    v55 = [v45 externalToneFileURL];
    v56 = [v55 lastPathComponent];
    [v47 setToneFileName:v56];

    v57 = [v45 externalToneFileURL];
    [v47 setToneFileURL:v57];

    v58 = [v45 toneIdentifier];
    v59 = __52__UNNotification_Bulletin__notificationForBulletin___block_invoke(v58, v58);
    [v47 setToneIdentifier:v59];

    [v47 setToneMediaLibraryItemIdentifier:{objc_msgSend(v45, "externalToneMediaLibraryItemIdentifier")}];
    v60 = [v45 vibrationIdentifier];
    v61 = __52__UNNotification_Bulletin__notificationForBulletin___block_invoke(v60, v60);
    [v47 setVibrationIdentifier:v61];

    v30 = v121;
    v62 = [v45 externalVibrationPatternFileURL];
    [v47 setVibrationPatternFileURL:v62];
  }

  else
  {
    v47 = 0;
  }

  v63 = [v30 communicationContext];
  if (v63)
  {
    v64 = [v30 communicationContext];
    v65 = UNCommunicationContextFromBBCommunicationContext(v64);
  }

  else
  {
    v65 = 0;
  }

  v66 = [v30 contentType];
  v126 = v66;
  if ([v66 isEqualToString:*MEMORY[0x277CF34C8]])
  {
    v67 = MEMORY[0x277CE2158];
  }

  else if ([v66 isEqualToString:*MEMORY[0x277CF34D0]])
  {
    v67 = MEMORY[0x277CE2160];
  }

  else if ([v66 isEqualToString:*MEMORY[0x277CF34C0]])
  {
    v67 = MEMORY[0x277CE2150];
  }

  else if ([v66 isEqualToString:*MEMORY[0x277CF34D8]])
  {
    v67 = MEMORY[0x277CE2168];
  }

  else if ([v66 isEqualToString:*MEMORY[0x277CF34B8]])
  {
    v67 = MEMORY[0x277CE2148];
  }

  else if ([v66 isEqualToString:*MEMORY[0x277CF34E0]])
  {
    v67 = MEMORY[0x277CE2170];
  }

  else
  {
    v68 = [v66 isEqualToString:*MEMORY[0x277CF34A8]];
    v67 = MEMORY[0x277CE2140];
    if (v68)
    {
      v67 = MEMORY[0x277CE2138];
    }
  }

  v69 = *v67;
  v70 = objc_alloc_init(MEMORY[0x277CE1F60]);
  [v70 setAttachments:v127];
  v71 = [v121 context];
  v72 = [v71 objectForKey:@"badge"];
  [v70 setBadge:v72];

  v73 = [v121 message];
  [v70 setBody:v73];

  v74 = [v121 categoryID];
  [v70 setCategoryIdentifier:v74];

  [v70 setCommunicationContext:v65];
  [v70 setContentType:v69];
  [v70 setDate:v120];
  v75 = [v118 appearance];
  v76 = [v75 title];
  [v70 setDefaultActionTitle:v76];

  [v70 setHasDefaultAction:v118 != 0];
  v77 = [v118 launchURL];
  [v70 setDefaultActionURL:v77];

  v78 = [v118 launchBundleID];
  [v70 setDefaultActionBundleIdentifier:v78];

  v79 = [v121 expirationDate];
  [v70 setExpirationDate:v79];

  v80 = [v121 context];
  v81 = [v80 objectForKey:*MEMORY[0x277CF35D0]];
  [v70 setLaunchImageName:v81];

  v82 = [v121 header];
  [v70 setHeader:v82];

  v83 = [v121 footer];
  [v70 setFooter:v83];

  [v70 setIcon:v42];
  [v70 setSound:v47];
  [v70 setShouldShowSubordinateIcon:{objc_msgSend(v121, "hasSubordinateIcon")}];
  [v70 setShouldHideDate:v119 == 0];
  [v70 setShouldHideTime:{objc_msgSend(v121, "dateIsAllDay")}];
  v84 = [v121 context];
  v85 = [v84 objectForKey:@"shouldIgnoreDoNotDisturb"];
  [v70 setShouldIgnoreDoNotDisturb:{objc_msgSend(v85, "BOOLValue")}];

  [v70 setShouldIgnoreDowntime:{objc_msgSend(v121, "ignoresDowntime")}];
  [v70 setShouldSuppressScreenLightUp:{objc_msgSend(v121, "turnsOnDisplay") ^ 1}];
  [v70 setShouldAuthenticateDefaultAction:{objc_msgSend(v118, "isAuthenticationRequired")}];
  [v70 setShouldBackgroundDefaultAction:{objc_msgSend(v118, "activationMode") == 1}];
  [v70 setShouldPreventNotificationDismissalAfterDefaultAction:{objc_msgSend(v118, "shouldDismissBulletin") ^ 1}];
  [v70 setShouldSuppressSyncDismissalWhenRemoved:{objc_msgSend(v121, "usesExternalSync")}];
  [v70 setShouldUseRequestIdentifierForDismissalSync:v116];
  v86 = [v121 subtitle];
  [v70 setSubtitle:v86];

  v87 = [v121 threadID];
  [v70 setThreadIdentifier:v87];

  v88 = [v121 title];
  [v70 setTitle:v88];

  v89 = [v121 subsectionIDs];
  [v70 setTopicIdentifiers:v89];

  [v70 setRealertCount:{objc_msgSend(v121, "realertCount")}];
  v90 = [v121 context];
  v91 = [v90 objectForKey:@"userInfo"];
  [v70 setUserInfo:v91];

  v92 = [v121 summaryArgument];
  [v70 setSummaryArgument:v92];

  [v70 setSummaryArgumentCount:{objc_msgSend(v121, "summaryArgumentCount")}];
  v93 = [v121 context];
  v94 = [v93 objectForKey:@"targetContentIdentifier"];
  [v70 setTargetContentIdentifier:v94];

  v95 = [v121 interruptionLevel];
  v96 = *MEMORY[0x277CE2118];
  if (v95 >= 4)
  {
    v97 = *MEMORY[0x277CE2118];
  }

  else
  {
    v97 = v95;
  }

  [v70 setInterruptionLevel:v97];
  [v121 relevanceScore];
  [v70 setRelevanceScore:v98];
  v99 = [v121 filterCriteria];
  [v70 setFilterCriteria:v99];

  [v70 setScreenCaptureProhibited:{objc_msgSend(v121, "screenCaptureProhibited")}];
  v100 = [v121 speechLanguage];
  [v70 setSpeechLanguage:v100];

  v101 = [v121 context];
  v102 = [v101 objectForKey:@"notificationTriggerData"];

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
  v105 = [v121 recordID];
  v106 = [v104 requestWithIdentifier:v105 content:v70 trigger:v103];

  v107 = MEMORY[0x277CE1F78];
  v108 = [v121 section];
  v109 = [v121 intentIDs];
  v110 = [v107 notificationWithRequest:v106 date:v117 sourceIdentifier:v108 intentIdentifiers:v109];

  v111 = *MEMORY[0x277D85DE8];

  return v110;
}

@end