@interface UNSNotificationRecord
- (BOOL)hasAlertContent;
- (BOOL)hasBadge;
- (BOOL)hasCommunicationContext;
- (BOOL)hasPendingTrigger;
- (BOOL)isEqual:(id)a3;
- (BOOL)isSimilar:(id)a3;
- (BOOL)willNotifyUser;
- (UNSNotificationRecord)initWithCoder:(id)a3;
- (UNSNotificationRecord)initWithDictionaryRepresentation:(id)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)dictionaryRepresentationWithTruncation:(BOOL)a3;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation UNSNotificationRecord

- (BOOL)hasCommunicationContext
{
  v3 = [(UNSNotificationRecord *)self communicationContextIdentifier];
  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v5 = [(UNSNotificationRecord *)self communicationContextAssociatedObjectUri];
    if (v5)
    {
      v4 = 1;
    }

    else
    {
      v6 = [(UNSNotificationRecord *)self communicationContextBundleIdentifier];
      if (v6)
      {
        v4 = 1;
      }

      else
      {
        v7 = [(UNSNotificationRecord *)self communicationContextDisplayName];
        if (v7)
        {
          v4 = 1;
        }

        else
        {
          v8 = [(UNSNotificationRecord *)self communicationContextRecipients];
          if ([v8 count])
          {
            v4 = 1;
          }

          else
          {
            v9 = [(UNSNotificationRecord *)self communicationContextSender];
            if (v9)
            {
              v4 = 1;
            }

            else
            {
              v10 = [(UNSNotificationRecord *)self communicationContextContentURL];
              if (v10)
              {
                v4 = 1;
              }

              else
              {
                v11 = [(UNSNotificationRecord *)self communicationContextImageName];
                v4 = v11 || [(UNSNotificationRecord *)self communicationContextSystemImage]|| [(UNSNotificationRecord *)self communicationContextMentionsCurrentUser]|| [(UNSNotificationRecord *)self communicationContextNotifyRecipientAnyway]|| [(UNSNotificationRecord *)self communicationContextReplyToCurrentUser]|| [(UNSNotificationRecord *)self communicationContextRecipientCount]|| [(UNSNotificationRecord *)self communicationContextCapabilities]|| [(UNSNotificationRecord *)self communicationContextBusinessCorrespondence];
              }
            }
          }
        }
      }
    }
  }

  return v4;
}

- (UNSNotificationRecord)initWithDictionaryRepresentation:(id)a3
{
  v4 = a3;
  v152.receiver = self;
  v152.super_class = UNSNotificationRecord;
  v5 = [(UNSNotificationRecord *)&v152 init];
  if (v5)
  {
    v6 = [v4 objectForKey:@"NotificationType"];
    [(UNSNotificationRecord *)v5 setContentType:v6];

    v7 = [v4 objectForKey:@"CommunicationContextIdentifier"];
    [(UNSNotificationRecord *)v5 setCommunicationContextIdentifier:v7];

    v8 = [v4 objectForKey:@"CommunicationContextBundleIdentifier"];
    [(UNSNotificationRecord *)v5 setCommunicationContextBundleIdentifier:v8];

    v9 = [v4 objectForKey:@"CommunicationContextAssociatedObjectUri"];
    [(UNSNotificationRecord *)v5 setCommunicationContextAssociatedObjectUri:v9];

    v10 = [v4 objectForKey:@"CommunicationContextDisplayName"];
    [(UNSNotificationRecord *)v5 setCommunicationContextDisplayName:v10];

    v11 = [v4 unc_nonNilArrayForKey:@"CommunicationContextRecipients"];
    v12 = [v11 bs_map:UNCDictionaryToContactRecord];
    [(UNSNotificationRecord *)v5 setCommunicationContextRecipients:v12];

    v13 = [v4 objectForKey:@"CommunicationContextSender"];

    if (v13)
    {
      v14 = UNCDictionaryToContactRecord;
      v15 = [v4 objectForKey:@"CommunicationContextSender"];
      v16 = v14[2](v14, v15);
      [(UNSNotificationRecord *)v5 setCommunicationContextSender:v16];
    }

    v17 = [v4 objectForKey:@"CommunicationContextContentURL"];
    [(UNSNotificationRecord *)v5 setCommunicationContextContentURL:v17];

    v18 = [v4 objectForKey:@"CommunicationContextImageName"];
    [(UNSNotificationRecord *)v5 setCommunicationContextImageName:v18];

    v19 = [v4 objectForKey:@"CommunicationContextSystemImage"];
    -[UNSNotificationRecord setCommunicationContextSystemImage:](v5, "setCommunicationContextSystemImage:", [v19 BOOLValue]);

    v20 = [v4 objectForKey:@"CommunicationContextMentionsCurrentUser"];
    -[UNSNotificationRecord setCommunicationContextMentionsCurrentUser:](v5, "setCommunicationContextMentionsCurrentUser:", [v20 BOOLValue]);

    v21 = [v4 objectForKey:@"CommunicationContextNotifyRecipientAnyway"];
    -[UNSNotificationRecord setCommunicationContextNotifyRecipientAnyway:](v5, "setCommunicationContextNotifyRecipientAnyway:", [v21 BOOLValue]);

    v22 = [v4 objectForKey:@"CommunicationContextReplyToCurrentUser"];
    -[UNSNotificationRecord setCommunicationContextReplyToCurrentUser:](v5, "setCommunicationContextReplyToCurrentUser:", [v22 BOOLValue]);

    v23 = [v4 objectForKey:@"CommunicationContextRecipientCount"];
    -[UNSNotificationRecord setCommunicationContextRecipientCount:](v5, "setCommunicationContextRecipientCount:", [v23 unsignedIntegerValue]);

    v24 = [v4 objectForKey:@"CommunicationContextCapabilities"];
    -[UNSNotificationRecord setCommunicationContextCapabilities:](v5, "setCommunicationContextCapabilities:", [v24 unsignedIntegerValue]);

    v25 = [v4 objectForKey:@"CommunicationContextBusinessCorrespondence"];
    -[UNSNotificationRecord setCommunicationContextBusinessCorrespondence:](v5, "setCommunicationContextBusinessCorrespondence:", [v25 BOOLValue]);

    v26 = [v4 objectForKey:@"AccessoryImageName"];
    [(UNSNotificationRecord *)v5 setAccessoryImageName:v26];

    v27 = [v4 unc_nonNilArrayForKey:@"AppNotificationAttachments"];
    v28 = [v27 bs_map:UNSDictionaryToAttachmentRecord];
    [(UNSNotificationRecord *)v5 setAttachments:v28];

    v29 = [v4 objectForKey:@"AppNotificationBadgeNumber"];
    [(UNSNotificationRecord *)v5 setBadge:v29];

    v30 = [v4 objectForKey:@"AppNotificationMessage"];
    [(UNSNotificationRecord *)v5 setBody:v30];

    v31 = [v4 objectForKey:@"AppNotificationMessageLocalizationArguments"];
    [(UNSNotificationRecord *)v5 setBodyLocalizationArguments:v31];

    v32 = [v4 objectForKey:@"AppNotificationMessageLocazationKey"];
    [(UNSNotificationRecord *)v5 setBodyLocalizationKey:v32];

    v33 = MEMORY[0x1E696AAB0];
    v34 = [v4 objectForKey:@"AppNotificationAttributedMessage"];
    v35 = [v33 _un_attributedStringWithRTFDData:v34];
    [(UNSNotificationRecord *)v5 setAttributedBody:v35];

    v36 = [v4 objectForKey:@"AppNotificationSummaryArgument"];
    [(UNSNotificationRecord *)v5 setSummaryArgument:v36];

    v37 = [v4 objectForKey:@"AppNotificationSummaryArgumentCount"];
    -[UNSNotificationRecord setSummaryArgumentCount:](v5, "setSummaryArgumentCount:", [v37 unsignedIntegerValue]);

    v38 = [v4 objectForKey:@"TargetContentIdentifier"];
    [(UNSNotificationRecord *)v5 setTargetContentIdentifier:v38];

    v39 = [v4 unc_safeCastNonNilStringForKey:@"SBSPushStoreNotificationCategoryKey"];
    [(UNSNotificationRecord *)v5 setCategoryIdentifier:v39];

    v40 = [v4 objectForKey:@"ContentDate"];
    [(UNSNotificationRecord *)v5 setContentDate:v40];

    v41 = [v4 unc_safeCastNonNilStringForKey:@"SBSPushStoreNotificationThreadKey"];
    [(UNSNotificationRecord *)v5 setThreadIdentifier:v41];

    v42 = [v4 objectForKey:@"AppNotificationContentAvailable"];
    [(UNSNotificationRecord *)v5 setContentAvailable:v42];

    v43 = [v4 objectForKey:@"AppNotificationMutableContent"];
    [(UNSNotificationRecord *)v5 setMutableContent:v43];

    v44 = [v4 objectForKey:@"AppNotificationCreationDate"];
    [(UNSNotificationRecord *)v5 setDate:v44];

    v45 = [v4 objectForKey:@"ExpirationDate"];
    [(UNSNotificationRecord *)v5 setExpirationDate:v45];

    v46 = [v4 objectForKey:@"InterruptionLevel"];
    if (v46)
    {
      v47 = [v4 objectForKey:@"InterruptionLevel"];
      v48 = [v47 unsignedIntValue];
    }

    else
    {
      v48 = *MEMORY[0x1E6983418];
    }

    [(UNSNotificationRecord *)v5 setInterruptionLevel:v48];
    v49 = [v4 objectForKey:@"HasDefaultActionKey"];
    -[UNSNotificationRecord setHasDefaultAction:](v5, "setHasDefaultAction:", [v49 BOOLValue]);

    v50 = [v4 objectForKey:@"AppNotificationActionText"];
    [(UNSNotificationRecord *)v5 setDefaultActionTitle:v50];

    [(UNSNotificationRecord *)v5 setDefaultActionTitleLocalizationKey:0];
    v51 = [v4 objectForKey:@"DefaultActionURL"];

    if (v51)
    {
      v52 = MEMORY[0x1E695DFF8];
      v53 = [v4 objectForKey:@"DefaultActionURL"];
      v54 = [v52 URLWithString:v53];
      [(UNSNotificationRecord *)v5 setDefaultActionURL:v54];
    }

    v55 = [v4 objectForKey:@"DefaultActionBundleIdentifier"];
    [(UNSNotificationRecord *)v5 setDefaultActionBundleIdentifier:v55];

    v56 = [v4 objectForKey:@"CriticalAlertSound"];
    -[UNSNotificationRecord setHasCriticalAlertSound:](v5, "setHasCriticalAlertSound:", [v56 BOOLValue]);

    v57 = [v4 objectForKey:@"Header"];
    [(UNSNotificationRecord *)v5 setHeader:v57];

    v58 = [v4 objectForKey:@"HeaderLocalizationArguments"];
    [(UNSNotificationRecord *)v5 setHeaderLocalizationArguments:v58];

    v59 = [v4 objectForKey:@"HeaderLocalizationKey"];
    [(UNSNotificationRecord *)v5 setHeaderLocalizationKey:v59];

    v60 = [v4 objectForKey:@"Footer"];
    [(UNSNotificationRecord *)v5 setFooter:v60];

    v61 = [v4 objectForKey:@"FooterLocalizationArguments"];
    [(UNSNotificationRecord *)v5 setFooterLocalizationArguments:v61];

    v62 = [v4 objectForKey:@"FooterLocalizationKey"];
    [(UNSNotificationRecord *)v5 setFooterLocalizationKey:v62];

    v63 = [v4 objectForKey:@"IconApplicationIdentifier"];
    [(UNSNotificationRecord *)v5 setIconApplicationIdentifier:v63];

    v64 = [v4 objectForKey:@"IconName"];
    [(UNSNotificationRecord *)v5 setIconName:v64];

    v65 = [v4 objectForKey:@"IconPath"];
    [(UNSNotificationRecord *)v5 setIconPath:v65];

    v66 = [v4 objectForKey:@"IconSystemImageName"];
    [(UNSNotificationRecord *)v5 setIconSystemImageName:v66];

    v67 = [v4 objectForKey:@"IconUTI"];
    [(UNSNotificationRecord *)v5 setIconUTI:v67];

    v68 = [v4 objectForKey:@"IconDateComponents"];
    [(UNSNotificationRecord *)v5 setIconDateComponents:v68];

    v69 = [v4 objectForKey:@"IconShouldSuppressMask"];
    -[UNSNotificationRecord setIconShouldSuppressMask:](v5, "setIconShouldSuppressMask:", [v69 BOOLValue]);

    v70 = [v4 objectForKey:@"AppNotificationIdentifier"];
    [(UNSNotificationRecord *)v5 setIdentifier:v70];

    v71 = [v4 unc_safeCastNonNilStringForKey:@"AppNotificationLaunchImage"];
    [(UNSNotificationRecord *)v5 setLaunchImageName:v71];

    v72 = [v4 objectForKey:@"RequestDate"];
    [(UNSNotificationRecord *)v5 setRequestDate:v72];

    v73 = [v4 objectForKey:@"BadgeApplicationIcon"];
    -[UNSNotificationRecord setShouldBadgeApplicationIcon:](v5, "setShouldBadgeApplicationIcon:", [v73 BOOLValue]);

    v74 = [v4 objectForKey:@"ShouldHideDate"];
    -[UNSNotificationRecord setShouldHideDate:](v5, "setShouldHideDate:", [v74 BOOLValue]);

    v75 = [v4 objectForKey:@"ShouldHideTime"];
    -[UNSNotificationRecord setShouldHideTime:](v5, "setShouldHideTime:", [v75 BOOLValue]);

    v76 = [v4 objectForKey:@"ShouldIgnoreAccessibilityDisabledVibrationSetting"];
    -[UNSNotificationRecord setShouldIgnoreAccessibilityDisabledVibrationSetting:](v5, "setShouldIgnoreAccessibilityDisabledVibrationSetting:", [v76 BOOLValue]);

    v77 = [v4 objectForKey:@"ShouldIgnoreDoNotDisturb"];
    -[UNSNotificationRecord setShouldIgnoreDoNotDisturb:](v5, "setShouldIgnoreDoNotDisturb:", [v77 BOOLValue]);

    v78 = [v4 objectForKey:@"ShouldIgnoreDowntime"];
    -[UNSNotificationRecord setShouldIgnoreDowntime:](v5, "setShouldIgnoreDowntime:", [v78 BOOLValue]);

    v79 = [v4 objectForKey:@"SoundShouldIgnoreRingerSwitch"];
    -[UNSNotificationRecord setShouldIgnoreRingerSwitch:](v5, "setShouldIgnoreRingerSwitch:", [v79 BOOLValue]);

    v80 = [v4 objectForKey:@"ShouldSuppressScreenLightUp"];
    -[UNSNotificationRecord setShouldSuppressScreenLightUp:](v5, "setShouldSuppressScreenLightUp:", [v80 BOOLValue]);

    v81 = [v4 objectForKey:@"SoundShouldRepeat"];
    -[UNSNotificationRecord setShouldSoundRepeat:](v5, "setShouldSoundRepeat:", [v81 BOOLValue]);

    v82 = [v4 objectForKey:@"SoundMaximumDuration"];
    [v82 doubleValue];
    [(UNSNotificationRecord *)v5 setSoundMaximumDuration:?];

    v83 = [v4 objectForKey:@"ShouldPlaySound"];
    -[UNSNotificationRecord setShouldPlaySound:](v5, "setShouldPlaySound:", [v83 BOOLValue]);

    v84 = [v4 objectForKey:@"ShouldPresentAlert"];
    -[UNSNotificationRecord setShouldPresentAlert:](v5, "setShouldPresentAlert:", [v84 BOOLValue]);

    v85 = [v4 objectForKey:@"PresentationOptions"];
    -[UNSNotificationRecord setPresentationOptions:](v5, "setPresentationOptions:", [v85 unsignedIntegerValue]);

    v86 = [v4 objectForKey:@"ShouldAuthenticateDefaultAction"];
    -[UNSNotificationRecord setShouldAuthenticateDefaultAction:](v5, "setShouldAuthenticateDefaultAction:", [v86 BOOLValue]);

    v87 = [v4 objectForKey:@"ShouldBackgroundDefaultAction"];
    -[UNSNotificationRecord setShouldBackgroundDefaultAction:](v5, "setShouldBackgroundDefaultAction:", [v87 BOOLValue]);

    v88 = [v4 objectForKey:@"ShouldPreventNotificationDismissalAfterDefaultAction"];
    -[UNSNotificationRecord setShouldPreventNotificationDismissalAfterDefaultAction:](v5, "setShouldPreventNotificationDismissalAfterDefaultAction:", [v88 BOOLValue]);

    v89 = [v4 objectForKey:@"UNNotificationShouldShowSubordinateIcon"];
    -[UNSNotificationRecord setShouldShowSubordinateIcon:](v5, "setShouldShowSubordinateIcon:", [v89 BOOLValue]);

    v90 = [v4 objectForKey:@"ShouldSuppressSyncDismissalWhenRemoved"];
    -[UNSNotificationRecord setShouldSuppressSyncDismissalWhenRemoved:](v5, "setShouldSuppressSyncDismissalWhenRemoved:", [v90 BOOLValue]);

    v91 = [v4 objectForKey:@"ShouldUseRequestIdentifierForDismissalSync"];
    -[UNSNotificationRecord setShouldUseRequestIdentifierForDismissalSync:](v5, "setShouldUseRequestIdentifierForDismissalSync:", [v91 BOOLValue]);

    v92 = [v4 objectForKey:@"ShouldPreemptPresentedNotification"];
    -[UNSNotificationRecord setShouldPreemptPresentedNotification:](v5, "setShouldPreemptPresentedNotification:", [v92 BOOLValue]);

    v93 = [v4 objectForKey:@"ShouldDisplayActionsInline"];
    -[UNSNotificationRecord setShouldDisplayActionsInline:](v5, "setShouldDisplayActionsInline:", [v93 BOOLValue]);

    v94 = [v4 objectForKey:@"AudioCategory"];
    [(UNSNotificationRecord *)v5 setAudioCategory:v94];

    v95 = [v4 objectForKey:@"AudioVolume"];
    [(UNSNotificationRecord *)v5 setAudioVolume:v95];

    v96 = [v4 objectForKey:@"AppNotificationSubtitle"];
    [(UNSNotificationRecord *)v5 setSubtitle:v96];

    v97 = [v4 objectForKey:@"AppNotificationSubtitleLocalizationArguments"];
    [(UNSNotificationRecord *)v5 setSubtitleLocalizationArguments:v97];

    v98 = [v4 objectForKey:@"AppNotificationSubtitleLocalizationKey"];
    [(UNSNotificationRecord *)v5 setSubtitleLocalizationKey:v98];

    v99 = [v4 objectForKey:@"AppNotificationTitle"];
    [(UNSNotificationRecord *)v5 setTitle:v99];

    v100 = [v4 objectForKey:@"AppNotificationTitleLocalizationArguments"];
    [(UNSNotificationRecord *)v5 setTitleLocalizationArguments:v100];

    v101 = [v4 objectForKey:@"AppNotificationTitleLocalizationKey"];
    [(UNSNotificationRecord *)v5 setTitleLocalizationKey:v101];

    v102 = [v4 objectForKey:@"ToneAlertTopic"];
    [(UNSNotificationRecord *)v5 setToneAlertTopic:v102];

    v103 = [v4 objectForKey:@"ToneAlertType"];
    -[UNSNotificationRecord setToneAlertType:](v5, "setToneAlertType:", [v103 integerValue]);

    v104 = [v4 objectForKey:@"ToneFileName"];
    [(UNSNotificationRecord *)v5 setToneFileName:v104];

    v105 = [v4 objectForKey:@"ToneFileURL"];

    if (v105)
    {
      v106 = MEMORY[0x1E695DFF8];
      v107 = [v4 objectForKey:@"ToneFileURL"];
      v108 = [v106 URLWithString:v107];
      [(UNSNotificationRecord *)v5 setToneFileURL:v108];
    }

    v109 = [v4 objectForKey:@"ToneIdentifier"];
    [(UNSNotificationRecord *)v5 setToneIdentifier:v109];

    v110 = [v4 objectForKey:@"ToneMediaLibraryItemIdentifier"];
    -[UNSNotificationRecord setToneMediaLibraryItemIdentifier:](v5, "setToneMediaLibraryItemIdentifier:", [v110 unsignedLongLongValue]);

    v111 = [v4 unc_nonNilSetForKey:@"Topics"];
    [(UNSNotificationRecord *)v5 setTopicIdentifiers:v111];

    v112 = [v4 objectForKey:@"RealertCount"];
    -[UNSNotificationRecord setRealertCount:](v5, "setRealertCount:", [v112 unsignedIntegerValue]);

    v113 = [v4 objectForKey:@"UNNotificationDefaultDestinations"];
    -[UNSNotificationRecord setAllowsDefaultDestinations:](v5, "setAllowsDefaultDestinations:", [v113 BOOLValue]);

    v114 = [v4 objectForKey:@"UNNotificationLockScreenDestination"];
    -[UNSNotificationRecord setAllowsLockScreenDestination:](v5, "setAllowsLockScreenDestination:", [v114 BOOLValue]);

    v115 = [v4 objectForKey:@"UNNotificationNotificationCenterDestination"];
    -[UNSNotificationRecord setAllowsNotificationCenterDestination:](v5, "setAllowsNotificationCenterDestination:", [v115 BOOLValue]);

    v116 = [v4 objectForKey:@"UNNotificationAlertDestination"];
    -[UNSNotificationRecord setAllowsAlertDestination:](v5, "setAllowsAlertDestination:", [v116 BOOLValue]);

    v117 = [v4 objectForKey:@"UNNotificationCarPlayDestination"];
    -[UNSNotificationRecord setAllowsCarPlayDestination:](v5, "setAllowsCarPlayDestination:", [v117 BOOLValue]);

    v118 = [v4 objectForKey:@"TriggerDate"];
    [(UNSNotificationRecord *)v5 setTriggerDate:v118];

    v119 = [v4 objectForKey:@"TriggerDateComponents"];
    [(UNSNotificationRecord *)v5 setTriggerDateComponents:v119];

    v120 = [v4 objectForKey:@"TriggerRegion"];

    if (v120)
    {
      v121 = MEMORY[0x1E695FC28];
      v122 = [v4 objectForKey:@"TriggerRegion"];
      v123 = [v121 bs_secureDecodedFromData:v122];
      [(UNSNotificationRecord *)v5 setTriggerRegion:v123];
    }

    v124 = [v4 objectForKey:@"TriggerRepeatCalendar"];
    [(UNSNotificationRecord *)v5 setTriggerRepeatCalendarIdentifier:v124];

    v125 = [v4 objectForKey:@"TriggerRepeatInterval"];
    -[UNSNotificationRecord setTriggerRepeatInterval:](v5, "setTriggerRepeatInterval:", [v125 unsignedIntegerValue]);

    v126 = [v4 objectForKey:@"TriggerRepeats"];
    -[UNSNotificationRecord setTriggerRepeats:](v5, "setTriggerRepeats:", [v126 BOOLValue]);

    v127 = [v4 objectForKey:@"TriggerTimeInterval"];
    [v127 doubleValue];
    [(UNSNotificationRecord *)v5 setTriggerTimeInterval:?];

    v128 = [v4 objectForKey:@"TriggerTimeZone"];

    if (v128)
    {
      v129 = MEMORY[0x1E695DFE8];
      v130 = [v4 objectForKey:@"TriggerTimeZone"];
      v131 = [v129 timeZoneWithName:v130];
      [(UNSNotificationRecord *)v5 setTriggerTimeZone:v131];
    }

    v132 = [v4 objectForKey:@"UNNotificationTriggerType"];
    [(UNSNotificationRecord *)v5 setTriggerType:v132];

    v133 = [v4 objectForKey:@"UNNotificationUserInfo"];
    [(UNSNotificationRecord *)v5 setUserInfo:v133];

    v134 = [v4 objectForKey:@"VibrationIdentifier"];
    [(UNSNotificationRecord *)v5 setVibrationIdentifier:v134];

    v135 = [v4 objectForKey:@"VibrationPatternFileURL"];

    if (v135)
    {
      v136 = MEMORY[0x1E695DFF8];
      v137 = [v4 objectForKey:@"VibrationPatternFileURL"];
      v138 = [v136 URLWithString:v137];
      [(UNSNotificationRecord *)v5 setVibrationPatternFileURL:v138];
    }

    v139 = [v4 objectForKey:@"UNNotificationRelevanceScore"];
    [v139 doubleValue];
    [(UNSNotificationRecord *)v5 setRelevanceScore:?];

    v140 = [v4 objectForKey:@"FilterCriteria"];
    [(UNSNotificationRecord *)v5 setFilterCriteria:v140];

    v141 = [v4 objectForKey:@"ScreenCaptureProhibited"];
    -[UNSNotificationRecord setScreenCaptureProhibited:](v5, "setScreenCaptureProhibited:", [v141 BOOLValue]);

    v142 = [v4 objectForKey:@"SpeechLanguage"];
    [(UNSNotificationRecord *)v5 setSpeechLanguage:v142];

    v143 = [v4 bs_safeNumberForKey:@"RevisionNumber"];
    -[UNSNotificationRecord setRevisionNumber:](v5, "setRevisionNumber:", [v143 integerValue]);

    v144 = [v4 bs_safeNumberForKey:@"PipelineState"];
    -[UNSNotificationRecord setPipelineState:](v5, "setPipelineState:", [v144 integerValue]);

    -[UNSNotificationRecord setIsHighlight:](v5, "setIsHighlight:", [v4 bs_BOOLForKey:@"IsHighlight"]);
    v145 = [v4 bs_safeObjectForKey:@"Summary" ofType:objc_opt_class()];
    [(UNSNotificationRecord *)v5 setSummary:v145];

    v146 = [v4 objectForKey:@"PriorityStatus"];
    if (v146)
    {
      v147 = [v4 bs_safeNumberForKey:@"PriorityStatus"];
      -[UNSNotificationRecord setPriorityStatus:](v5, "setPriorityStatus:", [v147 unsignedIntValue]);
    }

    else
    {
      [(UNSNotificationRecord *)v5 setPriorityStatus:0];
    }

    v148 = [v4 objectForKey:@"SummaryStatus"];
    if (v148)
    {
      v149 = [v4 bs_safeNumberForKey:@"SummaryStatus"];
      -[UNSNotificationRecord setSummaryStatus:](v5, "setSummaryStatus:", [v149 unsignedIntValue]);
    }

    else
    {
      [(UNSNotificationRecord *)v5 setSummaryStatus:0];
    }

    v150 = [v4 bs_safeObjectForKey:@"EventBehavior" ofType:objc_opt_class()];
    [(UNSNotificationRecord *)v5 setEventBehavior:v150];
  }

  return v5;
}

- (id)dictionaryRepresentationWithTruncation:(BOOL)a3
{
  if (a3)
  {
    v4 = 256;
  }

  else
  {
    v4 = -1;
  }

  v5 = [MEMORY[0x1E695DF90] dictionary];
  v6 = [(UNSNotificationRecord *)self contentType];
  [v5 unc_safeSetObject:v6 forKey:@"NotificationType"];

  v7 = [(UNSNotificationRecord *)self communicationContextIdentifier];
  [v5 unc_safeSetObject:v7 forKey:@"CommunicationContextIdentifier"];

  v8 = [(UNSNotificationRecord *)self communicationContextBundleIdentifier];
  [v5 unc_safeSetObject:v8 forKey:@"CommunicationContextBundleIdentifier"];

  v9 = [(UNSNotificationRecord *)self communicationContextAssociatedObjectUri];
  [v5 unc_safeSetObject:v9 forKey:@"CommunicationContextAssociatedObjectUri"];

  v10 = [(UNSNotificationRecord *)self communicationContextDisplayName];
  [v5 unc_safeSetObject:v10 forKey:@"CommunicationContextDisplayName"];

  v11 = UNCContactRecordToDictionary;
  v12 = [(UNSNotificationRecord *)self communicationContextSender];
  v13 = v11[2](v11, v12);
  [v5 unc_safeSetObject:v13 forKey:@"CommunicationContextSender"];

  v14 = [(UNSNotificationRecord *)self communicationContextRecipients];
  v15 = [v14 bs_map:UNCContactRecordToDictionary];
  [v5 unc_safeSetNonEmptyArray:v15 forKey:@"CommunicationContextRecipients"];

  v16 = [(UNSNotificationRecord *)self communicationContextContentURL];
  [v5 unc_safeSetObject:v16 forKey:@"CommunicationContextContentURL"];

  v17 = [(UNSNotificationRecord *)self communicationContextImageName];
  [v5 unc_safeSetObject:v17 forKey:@"CommunicationContextImageName"];

  v18 = [MEMORY[0x1E696AD98] numberWithBool:{-[UNSNotificationRecord communicationContextSystemImage](self, "communicationContextSystemImage")}];
  [v5 unc_safeSetObject:v18 forKey:@"CommunicationContextSystemImage"];

  v19 = [MEMORY[0x1E696AD98] numberWithBool:{-[UNSNotificationRecord communicationContextMentionsCurrentUser](self, "communicationContextMentionsCurrentUser")}];
  [v5 unc_safeSetObject:v19 forKey:@"CommunicationContextMentionsCurrentUser"];

  v20 = [MEMORY[0x1E696AD98] numberWithBool:{-[UNSNotificationRecord communicationContextNotifyRecipientAnyway](self, "communicationContextNotifyRecipientAnyway")}];
  [v5 unc_safeSetObject:v20 forKey:@"CommunicationContextNotifyRecipientAnyway"];

  v21 = [MEMORY[0x1E696AD98] numberWithBool:{-[UNSNotificationRecord communicationContextReplyToCurrentUser](self, "communicationContextReplyToCurrentUser")}];
  [v5 unc_safeSetObject:v21 forKey:@"CommunicationContextReplyToCurrentUser"];

  v22 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[UNSNotificationRecord communicationContextRecipientCount](self, "communicationContextRecipientCount")}];
  [v5 unc_safeSetObject:v22 forKey:@"CommunicationContextRecipientCount"];

  v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[UNSNotificationRecord communicationContextCapabilities](self, "communicationContextCapabilities")}];
  [v5 unc_safeSetObject:v23 forKey:@"CommunicationContextCapabilities"];

  v24 = [MEMORY[0x1E696AD98] numberWithBool:{-[UNSNotificationRecord communicationContextBusinessCorrespondence](self, "communicationContextBusinessCorrespondence")}];
  [v5 unc_safeSetObject:v24 forKey:@"CommunicationContextBusinessCorrespondence"];

  v25 = [(UNSNotificationRecord *)self accessoryImageName];
  [v5 unc_safeSetObject:v25 forKey:@"AccessoryImageName"];

  v26 = [(UNSNotificationRecord *)self attachments];
  v27 = [v26 bs_map:UNCAttachmentRecordToDictionary];
  [v5 unc_safeSetNonEmptyArray:v27 forKey:@"AppNotificationAttachments"];

  v28 = [(UNSNotificationRecord *)self badge];
  [v5 unc_safeSetObject:v28 forKey:@"AppNotificationBadgeNumber"];

  v29 = [(UNSNotificationRecord *)self body];
  [v5 unc_safeSetNonEmptyString:v29 withLimit:v4 forKey:@"AppNotificationMessage"];

  v30 = [(UNSNotificationRecord *)self bodyLocalizationArguments];
  [v5 unc_safeSetObject:v30 forKey:@"AppNotificationMessageLocalizationArguments"];

  v31 = [(UNSNotificationRecord *)self bodyLocalizationKey];
  [v5 unc_safeSetObject:v31 forKey:@"AppNotificationMessageLocazationKey"];

  v32 = [(UNSNotificationRecord *)self attributedBody];
  v33 = [v32 _un_truncatedAttributedStringToMaxLength:v4];
  v34 = [v33 _un_RTFDData];
  [v5 unc_safeSetObject:v34 forKey:@"AppNotificationAttributedMessage"];

  v35 = [(UNSNotificationRecord *)self summaryArgument];
  [v5 unc_safeSetObject:v35 forKey:@"AppNotificationSummaryArgument"];

  v36 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[UNSNotificationRecord summaryArgumentCount](self, "summaryArgumentCount")}];
  [v5 unc_safeSetObject:v36 forKey:@"AppNotificationSummaryArgumentCount"];

  v37 = [(UNSNotificationRecord *)self targetContentIdentifier];
  [v5 unc_safeSetObject:v37 forKey:@"TargetContentIdentifier"];

  v38 = [(UNSNotificationRecord *)self categoryIdentifier];
  [v5 unc_safeSetNonEmptyString:v38 forKey:@"SBSPushStoreNotificationCategoryKey"];

  v39 = [(UNSNotificationRecord *)self threadIdentifier];
  [v5 unc_safeSetNonEmptyString:v39 forKey:@"SBSPushStoreNotificationThreadKey"];

  v40 = [(UNSNotificationRecord *)self contentDate];
  [v5 unc_safeSetObject:v40 forKey:@"ContentDate"];

  v41 = [(UNSNotificationRecord *)self contentAvailable];
  [v5 unc_safeSetObject:v41 forKey:@"AppNotificationContentAvailable"];

  v42 = [(UNSNotificationRecord *)self mutableContent];
  [v5 unc_safeSetObject:v42 forKey:@"AppNotificationMutableContent"];

  v43 = [(UNSNotificationRecord *)self date];
  [v5 unc_safeSetObject:v43 forKey:@"AppNotificationCreationDate"];

  v44 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[UNSNotificationRecord interruptionLevel](self, "interruptionLevel")}];
  [v5 unc_safeSetObject:v44 forKey:@"InterruptionLevel"];

  v45 = [MEMORY[0x1E696AD98] numberWithBool:{-[UNSNotificationRecord hasDefaultAction](self, "hasDefaultAction")}];
  [v5 unc_safeSetObject:v45 forKey:@"HasDefaultActionKey"];

  v46 = [(UNSNotificationRecord *)self defaultActionTitle];
  [v5 unc_safeSetObject:v46 forKey:@"AppNotificationActionText"];

  v47 = [(UNSNotificationRecord *)self defaultActionTitleLocalizationKey];
  [v5 unc_safeSetObject:v47 forKey:@"AppNotificationActionTextLocalizationKeyKey"];

  v48 = [(UNSNotificationRecord *)self defaultActionURL];
  v49 = [v48 absoluteString];
  [v5 unc_safeSetObject:v49 forKey:@"DefaultActionURL"];

  v50 = [(UNSNotificationRecord *)self defaultActionBundleIdentifier];
  [v5 unc_safeSetObject:v50 forKey:@"DefaultActionBundleIdentifier"];

  v51 = [(UNSNotificationRecord *)self expirationDate];
  [v5 unc_safeSetObject:v51 forKey:@"ExpirationDate"];

  v52 = [(UNSNotificationRecord *)self header];
  [v5 unc_safeSetObject:v52 forKey:@"Header"];

  v53 = [(UNSNotificationRecord *)self headerLocalizationArguments];
  [v5 unc_safeSetObject:v53 forKey:@"HeaderLocalizationArguments"];

  v54 = [(UNSNotificationRecord *)self headerLocalizationKey];
  [v5 unc_safeSetObject:v54 forKey:@"HeaderLocalizationKey"];

  v55 = [(UNSNotificationRecord *)self footer];
  [v5 unc_safeSetObject:v55 forKey:@"Footer"];

  v56 = [(UNSNotificationRecord *)self footerLocalizationArguments];
  [v5 unc_safeSetObject:v56 forKey:@"FooterLocalizationArguments"];

  v57 = [(UNSNotificationRecord *)self footerLocalizationKey];
  [v5 unc_safeSetObject:v57 forKey:@"FooterLocalizationKey"];

  v58 = [(UNSNotificationRecord *)self identifier];
  [v5 unc_safeSetObject:v58 forKey:@"AppNotificationIdentifier"];

  v59 = [(UNSNotificationRecord *)self iconApplicationIdentifier];
  [v5 unc_safeSetObject:v59 forKey:@"IconApplicationIdentifier"];

  v60 = [(UNSNotificationRecord *)self iconName];
  [v5 unc_safeSetObject:v60 forKey:@"IconName"];

  v61 = [(UNSNotificationRecord *)self iconPath];
  [v5 unc_safeSetObject:v61 forKey:@"IconPath"];

  v62 = [(UNSNotificationRecord *)self iconSystemImageName];
  [v5 unc_safeSetObject:v62 forKey:@"IconSystemImageName"];

  v63 = [(UNSNotificationRecord *)self iconUTI];
  [v5 unc_safeSetObject:v63 forKey:@"IconUTI"];

  v64 = [(UNSNotificationRecord *)self iconDateComponents];
  [v5 unc_safeSetNonEmptyDictionary:v64 forKey:@"IconDateComponents"];

  v65 = [MEMORY[0x1E696AD98] numberWithBool:{-[UNSNotificationRecord iconShouldSuppressMask](self, "iconShouldSuppressMask")}];
  [v5 unc_safeSetObject:v65 forKey:@"IconShouldSuppressMask"];

  v66 = [MEMORY[0x1E696AD98] numberWithBool:{-[UNSNotificationRecord hasCriticalAlertSound](self, "hasCriticalAlertSound")}];
  [v5 unc_safeSetObject:v66 forKey:@"CriticalAlertSound"];

  v67 = [(UNSNotificationRecord *)self launchImageName];
  [v5 unc_safeSetNonEmptyString:v67 forKey:@"AppNotificationLaunchImage"];

  v68 = [(UNSNotificationRecord *)self requestDate];
  [v5 unc_safeSetObject:v68 forKey:@"RequestDate"];

  v69 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:11];
  [v5 unc_safeSetObject:v69 forKey:@"SchemaVersion"];

  v70 = [MEMORY[0x1E696AD98] numberWithBool:{-[UNSNotificationRecord shouldBadgeApplicationIcon](self, "shouldBadgeApplicationIcon")}];
  [v5 unc_safeSetObject:v70 forKey:@"BadgeApplicationIcon"];

  v71 = [MEMORY[0x1E696AD98] numberWithBool:{-[UNSNotificationRecord shouldHideDate](self, "shouldHideDate")}];
  [v5 unc_safeSetObject:v71 forKey:@"ShouldHideDate"];

  v72 = [MEMORY[0x1E696AD98] numberWithBool:{-[UNSNotificationRecord shouldHideTime](self, "shouldHideTime")}];
  [v5 unc_safeSetObject:v72 forKey:@"ShouldHideTime"];

  v73 = [MEMORY[0x1E696AD98] numberWithBool:{-[UNSNotificationRecord shouldIgnoreAccessibilityDisabledVibrationSetting](self, "shouldIgnoreAccessibilityDisabledVibrationSetting")}];
  [v5 unc_safeSetObject:v73 forKey:@"ShouldIgnoreAccessibilityDisabledVibrationSetting"];

  v74 = [MEMORY[0x1E696AD98] numberWithBool:{-[UNSNotificationRecord shouldIgnoreDoNotDisturb](self, "shouldIgnoreDoNotDisturb")}];
  [v5 unc_safeSetObject:v74 forKey:@"ShouldIgnoreDoNotDisturb"];

  v75 = [MEMORY[0x1E696AD98] numberWithBool:{-[UNSNotificationRecord shouldIgnoreDowntime](self, "shouldIgnoreDowntime")}];
  [v5 unc_safeSetObject:v75 forKey:@"ShouldIgnoreDowntime"];

  v76 = [MEMORY[0x1E696AD98] numberWithBool:{-[UNSNotificationRecord shouldIgnoreRingerSwitch](self, "shouldIgnoreRingerSwitch")}];
  [v5 unc_safeSetObject:v76 forKey:@"SoundShouldIgnoreRingerSwitch"];

  v77 = [MEMORY[0x1E696AD98] numberWithBool:{-[UNSNotificationRecord shouldSuppressScreenLightUp](self, "shouldSuppressScreenLightUp")}];
  [v5 unc_safeSetObject:v77 forKey:@"ShouldSuppressScreenLightUp"];

  v78 = [MEMORY[0x1E696AD98] numberWithBool:{-[UNSNotificationRecord shouldPlaySound](self, "shouldPlaySound")}];
  [v5 unc_safeSetObject:v78 forKey:@"ShouldPlaySound"];

  v79 = [MEMORY[0x1E696AD98] numberWithBool:{-[UNSNotificationRecord shouldPresentAlert](self, "shouldPresentAlert")}];
  [v5 unc_safeSetObject:v79 forKey:@"ShouldPresentAlert"];

  v80 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[UNSNotificationRecord presentationOptions](self, "presentationOptions")}];
  [v5 unc_safeSetObject:v80 forKey:@"PresentationOptions"];

  v81 = [MEMORY[0x1E696AD98] numberWithBool:{-[UNSNotificationRecord shouldAuthenticateDefaultAction](self, "shouldAuthenticateDefaultAction")}];
  [v5 unc_safeSetObject:v81 forKey:@"ShouldAuthenticateDefaultAction"];

  v82 = [MEMORY[0x1E696AD98] numberWithBool:{-[UNSNotificationRecord shouldBackgroundDefaultAction](self, "shouldBackgroundDefaultAction")}];
  [v5 unc_safeSetObject:v82 forKey:@"ShouldBackgroundDefaultAction"];

  v83 = [MEMORY[0x1E696AD98] numberWithBool:{-[UNSNotificationRecord shouldPreventNotificationDismissalAfterDefaultAction](self, "shouldPreventNotificationDismissalAfterDefaultAction")}];
  [v5 unc_safeSetObject:v83 forKey:@"ShouldPreventNotificationDismissalAfterDefaultAction"];

  v84 = [MEMORY[0x1E696AD98] numberWithBool:{-[UNSNotificationRecord shouldPreemptPresentedNotification](self, "shouldPreemptPresentedNotification")}];
  [v5 unc_safeSetObject:v84 forKey:@"ShouldPreemptPresentedNotification"];

  v85 = [MEMORY[0x1E696AD98] numberWithBool:{-[UNSNotificationRecord shouldDisplayActionsInline](self, "shouldDisplayActionsInline")}];
  [v5 unc_safeSetObject:v85 forKey:@"ShouldDisplayActionsInline"];

  v86 = [MEMORY[0x1E696AD98] numberWithBool:{-[UNSNotificationRecord shouldShowSubordinateIcon](self, "shouldShowSubordinateIcon")}];
  [v5 unc_safeSetObject:v86 forKey:@"UNNotificationShouldShowSubordinateIcon"];

  v87 = [MEMORY[0x1E696AD98] numberWithBool:{-[UNSNotificationRecord shouldSoundRepeat](self, "shouldSoundRepeat")}];
  [v5 unc_safeSetObject:v87 forKey:@"SoundShouldRepeat"];

  v88 = [MEMORY[0x1E696AD98] numberWithBool:{-[UNSNotificationRecord shouldSuppressSyncDismissalWhenRemoved](self, "shouldSuppressSyncDismissalWhenRemoved")}];
  [v5 unc_safeSetObject:v88 forKey:@"ShouldSuppressSyncDismissalWhenRemoved"];

  v89 = [MEMORY[0x1E696AD98] numberWithBool:{-[UNSNotificationRecord shouldUseRequestIdentifierForDismissalSync](self, "shouldUseRequestIdentifierForDismissalSync")}];
  [v5 unc_safeSetObject:v89 forKey:@"ShouldUseRequestIdentifierForDismissalSync"];

  v90 = [(UNSNotificationRecord *)self audioCategory];
  [v5 unc_safeSetObject:v90 forKey:@"AudioCategory"];

  v91 = [(UNSNotificationRecord *)self audioVolume];
  [v5 unc_safeSetObject:v91 forKey:@"AudioVolume"];

  v92 = MEMORY[0x1E696AD98];
  [(UNSNotificationRecord *)self soundMaximumDuration];
  v93 = [v92 numberWithDouble:?];
  [v5 unc_safeSetObject:v93 forKey:@"SoundMaximumDuration"];

  v94 = [(UNSNotificationRecord *)self subtitle];
  [v5 unc_safeSetObject:v94 forKey:@"AppNotificationSubtitle"];

  v95 = [(UNSNotificationRecord *)self subtitleLocalizationArguments];
  [v5 unc_safeSetObject:v95 forKey:@"AppNotificationSubtitleLocalizationArguments"];

  v96 = [(UNSNotificationRecord *)self subtitleLocalizationKey];
  [v5 unc_safeSetObject:v96 forKey:@"AppNotificationSubtitleLocalizationKey"];

  v97 = [(UNSNotificationRecord *)self title];
  [v5 unc_safeSetObject:v97 forKey:@"AppNotificationTitle"];

  v98 = [(UNSNotificationRecord *)self titleLocalizationArguments];
  [v5 unc_safeSetObject:v98 forKey:@"AppNotificationTitleLocalizationArguments"];

  v99 = [(UNSNotificationRecord *)self titleLocalizationKey];
  [v5 unc_safeSetObject:v99 forKey:@"AppNotificationTitleLocalizationKey"];

  v100 = [(UNSNotificationRecord *)self toneAlertTopic];
  [v5 unc_safeSetObject:v100 forKey:@"ToneAlertTopic"];

  v101 = [MEMORY[0x1E696AD98] numberWithInteger:{-[UNSNotificationRecord toneAlertType](self, "toneAlertType")}];
  [v5 unc_safeSetObject:v101 forKey:@"ToneAlertType"];

  v102 = [(UNSNotificationRecord *)self toneFileName];
  [v5 unc_safeSetObject:v102 forKey:@"ToneFileName"];

  v103 = [(UNSNotificationRecord *)self toneFileURL];
  v104 = [v103 absoluteString];
  [v5 unc_safeSetObject:v104 forKey:@"ToneFileURL"];

  v105 = [(UNSNotificationRecord *)self toneIdentifier];
  [v5 unc_safeSetObject:v105 forKey:@"ToneIdentifier"];

  v106 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[UNSNotificationRecord toneMediaLibraryItemIdentifier](self, "toneMediaLibraryItemIdentifier")}];
  [v5 unc_safeSetObject:v106 forKey:@"ToneMediaLibraryItemIdentifier"];

  v107 = [(UNSNotificationRecord *)self topicIdentifiers];
  [v5 unc_safeSetNonEmptySet:v107 forKey:@"Topics"];

  v108 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[UNSNotificationRecord realertCount](self, "realertCount")}];
  [v5 unc_safeSetObject:v108 forKey:@"RealertCount"];

  v109 = [MEMORY[0x1E696AD98] numberWithBool:{-[UNSNotificationRecord allowsDefaultDestinations](self, "allowsDefaultDestinations")}];
  [v5 unc_safeSetObject:v109 forKey:@"UNNotificationDefaultDestinations"];

  v110 = [MEMORY[0x1E696AD98] numberWithBool:{-[UNSNotificationRecord allowsLockScreenDestination](self, "allowsLockScreenDestination")}];
  [v5 unc_safeSetObject:v110 forKey:@"UNNotificationLockScreenDestination"];

  v111 = [MEMORY[0x1E696AD98] numberWithBool:{-[UNSNotificationRecord allowsNotificationCenterDestination](self, "allowsNotificationCenterDestination")}];
  [v5 unc_safeSetObject:v111 forKey:@"UNNotificationNotificationCenterDestination"];

  v112 = [MEMORY[0x1E696AD98] numberWithBool:{-[UNSNotificationRecord allowsAlertDestination](self, "allowsAlertDestination")}];
  [v5 unc_safeSetObject:v112 forKey:@"UNNotificationAlertDestination"];

  v113 = [MEMORY[0x1E696AD98] numberWithBool:{-[UNSNotificationRecord allowsCarPlayDestination](self, "allowsCarPlayDestination")}];
  [v5 unc_safeSetObject:v113 forKey:@"UNNotificationCarPlayDestination"];

  v114 = [(UNSNotificationRecord *)self triggerDate];
  [v5 unc_safeSetObject:v114 forKey:@"TriggerDate"];

  v115 = [(UNSNotificationRecord *)self triggerDateComponents];
  [v5 unc_safeSetObject:v115 forKey:@"TriggerDateComponents"];

  v116 = [(UNSNotificationRecord *)self triggerRegion];

  if (v116)
  {
    v117 = MEMORY[0x1E696ACC8];
    v118 = [(UNSNotificationRecord *)self triggerRegion];
    v119 = [v117 archivedDataWithRootObject:v118 requiringSecureCoding:1 error:0];
    [v5 unc_safeSetObject:v119 forKey:@"TriggerRegion"];
  }

  v120 = [(UNSNotificationRecord *)self triggerRepeatCalendarIdentifier];
  [v5 unc_safeSetObject:v120 forKey:@"TriggerRepeatCalendar"];

  v121 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[UNSNotificationRecord triggerRepeatInterval](self, "triggerRepeatInterval")}];
  [v5 unc_safeSetObject:v121 forKey:@"TriggerRepeatInterval"];

  v122 = [MEMORY[0x1E696AD98] numberWithBool:{-[UNSNotificationRecord triggerRepeats](self, "triggerRepeats")}];
  [v5 unc_safeSetObject:v122 forKey:@"TriggerRepeats"];

  v123 = MEMORY[0x1E696AD98];
  [(UNSNotificationRecord *)self triggerTimeInterval];
  v124 = [v123 numberWithDouble:?];
  [v5 unc_safeSetObject:v124 forKey:@"TriggerTimeInterval"];

  v125 = [(UNSNotificationRecord *)self triggerTimeZone];
  v126 = [v125 name];
  [v5 unc_safeSetObject:v126 forKey:@"TriggerTimeZone"];

  v127 = [(UNSNotificationRecord *)self triggerType];
  [v5 unc_safeSetObject:v127 forKey:@"UNNotificationTriggerType"];

  v128 = [(UNSNotificationRecord *)self userInfo];
  [v5 unc_safeSetObject:v128 forKey:@"UNNotificationUserInfo"];

  v129 = [(UNSNotificationRecord *)self vibrationIdentifier];
  [v5 unc_safeSetObject:v129 forKey:@"VibrationIdentifier"];

  v130 = [(UNSNotificationRecord *)self vibrationPatternFileURL];
  v131 = [v130 absoluteString];
  [v5 unc_safeSetObject:v131 forKey:@"VibrationPatternFileURL"];

  v132 = MEMORY[0x1E696AD98];
  [(UNSNotificationRecord *)self relevanceScore];
  v133 = [v132 numberWithDouble:?];
  [v5 unc_safeSetObject:v133 forKey:@"UNNotificationRelevanceScore"];

  v134 = [(UNSNotificationRecord *)self filterCriteria];
  [v5 unc_safeSetObject:v134 forKey:@"FilterCriteria"];

  v135 = [MEMORY[0x1E696AD98] numberWithBool:{-[UNSNotificationRecord screenCaptureProhibited](self, "screenCaptureProhibited")}];
  [v5 unc_safeSetObject:v135 forKey:@"ScreenCaptureProhibited"];

  v136 = [(UNSNotificationRecord *)self speechLanguage];
  [v5 unc_safeSetObject:v136 forKey:@"SpeechLanguage"];

  v137 = [MEMORY[0x1E696AD98] numberWithInteger:{-[UNSNotificationRecord revisionNumber](self, "revisionNumber")}];
  [v5 bs_setSafeObject:v137 forKey:@"RevisionNumber"];

  v138 = [MEMORY[0x1E696AD98] numberWithInteger:{-[UNSNotificationRecord pipelineState](self, "pipelineState")}];
  [v5 bs_setSafeObject:v138 forKey:@"PipelineState"];

  v139 = [MEMORY[0x1E696AD98] numberWithBool:{-[UNSNotificationRecord isHighlight](self, "isHighlight")}];
  [v5 bs_setSafeObject:v139 forKey:@"IsHighlight"];

  v140 = [(UNSNotificationRecord *)self summary];
  [v5 bs_setSafeObject:v140 forKey:@"Summary"];

  v141 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[UNSNotificationRecord priorityStatus](self, "priorityStatus")}];
  [v5 bs_setSafeObject:v141 forKey:@"PriorityStatus"];

  v142 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[UNSNotificationRecord summaryStatus](self, "summaryStatus")}];
  [v5 bs_setSafeObject:v142 forKey:@"SummaryStatus"];

  v143 = [(UNSNotificationRecord *)self eventBehavior];
  [v5 bs_setSafeObject:v143 forKey:@"EventBehavior"];

  return v5;
}

- (BOOL)isSimilar:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v221 = 1;
  }

  else
  {
    if (!v4)
    {
      goto LABEL_106;
    }

    v6 = objc_opt_class();
    if (v6 != objc_opt_class())
    {
      goto LABEL_106;
    }

    v7 = [(UNSNotificationRecord *)self contentType];
    v8 = [(UNSNotificationRecord *)v5 contentType];
    v9 = UNEqualObjects();

    if (!v9)
    {
      goto LABEL_106;
    }

    v10 = [(UNSNotificationRecord *)self communicationContextIdentifier];
    v11 = [(UNSNotificationRecord *)v5 communicationContextIdentifier];
    v12 = UNEqualObjects();

    if (!v12)
    {
      goto LABEL_106;
    }

    v13 = [(UNSNotificationRecord *)self communicationContextBundleIdentifier];
    v14 = [(UNSNotificationRecord *)v5 communicationContextBundleIdentifier];
    v15 = UNEqualObjects();

    if (!v15)
    {
      goto LABEL_106;
    }

    v16 = [(UNSNotificationRecord *)self communicationContextAssociatedObjectUri];
    v17 = [(UNSNotificationRecord *)v5 communicationContextAssociatedObjectUri];
    v18 = UNEqualObjects();

    if (!v18)
    {
      goto LABEL_106;
    }

    v19 = [(UNSNotificationRecord *)self communicationContextDisplayName];
    v20 = [(UNSNotificationRecord *)v5 communicationContextDisplayName];
    v21 = UNEqualObjects();

    if (!v21)
    {
      goto LABEL_106;
    }

    v22 = [(UNSNotificationRecord *)self communicationContextSender];
    v23 = [(UNSNotificationRecord *)v5 communicationContextSender];
    v24 = UNEqualObjects();

    if (!v24)
    {
      goto LABEL_106;
    }

    v25 = [(UNSNotificationRecord *)self communicationContextRecipients];
    v26 = [(UNSNotificationRecord *)v5 communicationContextRecipients];
    v27 = UNSimilarArrays();

    if (!v27)
    {
      goto LABEL_106;
    }

    v28 = [(UNSNotificationRecord *)self communicationContextContentURL];
    v29 = [(UNSNotificationRecord *)v5 communicationContextContentURL];
    v30 = UNEqualObjects();

    if (!v30)
    {
      goto LABEL_106;
    }

    v31 = [(UNSNotificationRecord *)self communicationContextImageName];
    v32 = [(UNSNotificationRecord *)v5 communicationContextImageName];
    v33 = UNEqualObjects();

    if (!v33)
    {
      goto LABEL_106;
    }

    v34 = [(UNSNotificationRecord *)self communicationContextSystemImage];
    if (v34 != [(UNSNotificationRecord *)v5 communicationContextSystemImage])
    {
      goto LABEL_106;
    }

    v35 = [(UNSNotificationRecord *)self communicationContextMentionsCurrentUser];
    if (v35 != [(UNSNotificationRecord *)v5 communicationContextMentionsCurrentUser])
    {
      goto LABEL_106;
    }

    v36 = [(UNSNotificationRecord *)self communicationContextNotifyRecipientAnyway];
    if (v36 != [(UNSNotificationRecord *)v5 communicationContextNotifyRecipientAnyway])
    {
      goto LABEL_106;
    }

    v37 = [(UNSNotificationRecord *)self communicationContextReplyToCurrentUser];
    if (v37 != [(UNSNotificationRecord *)v5 communicationContextReplyToCurrentUser])
    {
      goto LABEL_106;
    }

    v38 = [(UNSNotificationRecord *)self communicationContextRecipientCount];
    if (v38 != [(UNSNotificationRecord *)v5 communicationContextRecipientCount])
    {
      goto LABEL_106;
    }

    v39 = [(UNSNotificationRecord *)self communicationContextCapabilities];
    if (v39 != [(UNSNotificationRecord *)v5 communicationContextCapabilities])
    {
      goto LABEL_106;
    }

    v40 = [(UNSNotificationRecord *)self communicationContextBusinessCorrespondence];
    if (v40 != [(UNSNotificationRecord *)v5 communicationContextBusinessCorrespondence])
    {
      goto LABEL_106;
    }

    v41 = [(UNSNotificationRecord *)self accessoryImageName];
    v42 = [(UNSNotificationRecord *)v5 accessoryImageName];
    v43 = UNEqualObjects();

    if (!v43)
    {
      goto LABEL_106;
    }

    v44 = [(UNSNotificationRecord *)self attachments];
    v45 = [(UNSNotificationRecord *)v5 attachments];
    v46 = UNEqualObjects();

    if (!v46)
    {
      goto LABEL_106;
    }

    v47 = [(UNSNotificationRecord *)self badge];
    [v47 integerValue];
    v48 = [(UNSNotificationRecord *)v5 badge];
    [v48 integerValue];
    v49 = UNEqualIntegers();

    if (!v49)
    {
      goto LABEL_106;
    }

    v50 = [(UNSNotificationRecord *)self bodyLocalizationKey];
    v51 = [(UNSNotificationRecord *)v5 bodyLocalizationKey];
    v52 = UNSimilarStrings();

    if (!v52)
    {
      goto LABEL_106;
    }

    v53 = [(UNSNotificationRecord *)self bodyLocalizationArguments];
    v54 = [(UNSNotificationRecord *)v5 bodyLocalizationArguments];
    v55 = UNEqualObjects();

    if (!v55)
    {
      goto LABEL_106;
    }

    v56 = [(UNSNotificationRecord *)self categoryIdentifier];
    v57 = [(UNSNotificationRecord *)v5 categoryIdentifier];
    v58 = UNEqualObjects();

    if (!v58)
    {
      goto LABEL_106;
    }

    v59 = [(UNSNotificationRecord *)self threadIdentifier];
    v60 = [(UNSNotificationRecord *)v5 threadIdentifier];
    v61 = UNEqualObjects();

    if (!v61)
    {
      goto LABEL_106;
    }

    v62 = [(UNSNotificationRecord *)self targetContentIdentifier];
    v63 = [(UNSNotificationRecord *)v5 targetContentIdentifier];
    v64 = UNEqualObjects();

    if (!v64)
    {
      goto LABEL_106;
    }

    v65 = [(UNSNotificationRecord *)self contentAvailable];
    v66 = [(UNSNotificationRecord *)v5 contentAvailable];
    v67 = UNEqualObjects();

    if (!v67)
    {
      goto LABEL_106;
    }

    v68 = [(UNSNotificationRecord *)self contentDate];
    v69 = [(UNSNotificationRecord *)v5 contentDate];
    v70 = UNEqualObjects();

    if (!v70)
    {
      goto LABEL_106;
    }

    v71 = [(UNSNotificationRecord *)self interruptionLevel];
    if (v71 != [(UNSNotificationRecord *)v5 interruptionLevel])
    {
      goto LABEL_106;
    }

    v72 = [(UNSNotificationRecord *)self mutableContent];
    v73 = [(UNSNotificationRecord *)v5 mutableContent];
    v74 = UNEqualObjects();

    if (!v74)
    {
      goto LABEL_106;
    }

    v75 = [(UNSNotificationRecord *)self defaultActionURL];
    v76 = [(UNSNotificationRecord *)v5 defaultActionURL];
    v77 = UNEqualObjects();

    if (!v77)
    {
      goto LABEL_106;
    }

    v78 = [(UNSNotificationRecord *)self defaultActionBundleIdentifier];
    v79 = [(UNSNotificationRecord *)v5 defaultActionBundleIdentifier];
    v80 = UNEqualObjects();

    if (!v80)
    {
      goto LABEL_106;
    }

    v81 = [(UNSNotificationRecord *)self expirationDate];
    v82 = [(UNSNotificationRecord *)v5 expirationDate];
    v83 = UNEqualObjects();

    if (!v83)
    {
      goto LABEL_106;
    }

    v84 = [(UNSNotificationRecord *)self hasCriticalAlertSound];
    if (v84 != [(UNSNotificationRecord *)v5 hasCriticalAlertSound])
    {
      goto LABEL_106;
    }

    v85 = [(UNSNotificationRecord *)self headerLocalizationKey];
    v86 = [(UNSNotificationRecord *)v5 headerLocalizationKey];
    v87 = UNSimilarStrings();

    if (!v87)
    {
      goto LABEL_106;
    }

    v88 = [(UNSNotificationRecord *)self headerLocalizationArguments];
    v89 = [(UNSNotificationRecord *)v5 headerLocalizationArguments];
    v90 = UNEqualObjects();

    if (!v90)
    {
      goto LABEL_106;
    }

    v91 = [(UNSNotificationRecord *)self footerLocalizationKey];
    v92 = [(UNSNotificationRecord *)v5 footerLocalizationKey];
    v93 = UNSimilarStrings();

    if (!v93)
    {
      goto LABEL_106;
    }

    v94 = [(UNSNotificationRecord *)self footerLocalizationArguments];
    v95 = [(UNSNotificationRecord *)v5 footerLocalizationArguments];
    v96 = UNEqualObjects();

    if (!v96)
    {
      goto LABEL_106;
    }

    v97 = [(UNSNotificationRecord *)self iconApplicationIdentifier];
    v98 = [(UNSNotificationRecord *)v5 iconApplicationIdentifier];
    v99 = UNEqualObjects();

    if (!v99)
    {
      goto LABEL_106;
    }

    v100 = [(UNSNotificationRecord *)self iconName];
    v101 = [(UNSNotificationRecord *)v5 iconName];
    v102 = UNEqualObjects();

    if (!v102)
    {
      goto LABEL_106;
    }

    v103 = [(UNSNotificationRecord *)self iconPath];
    v104 = [(UNSNotificationRecord *)v5 iconPath];
    v105 = UNEqualObjects();

    if (!v105)
    {
      goto LABEL_106;
    }

    v106 = [(UNSNotificationRecord *)self iconSystemImageName];
    v107 = [(UNSNotificationRecord *)v5 iconSystemImageName];
    v108 = UNEqualObjects();

    if (!v108)
    {
      goto LABEL_106;
    }

    v109 = [(UNSNotificationRecord *)self iconUTI];
    v110 = [(UNSNotificationRecord *)v5 iconUTI];
    v111 = UNEqualObjects();

    if (!v111)
    {
      goto LABEL_106;
    }

    v112 = [(UNSNotificationRecord *)self iconDateComponents];
    v113 = [(UNSNotificationRecord *)v5 iconDateComponents];
    v114 = UNEqualObjects();

    if (!v114)
    {
      goto LABEL_106;
    }

    v115 = [(UNSNotificationRecord *)self launchImageName];
    v116 = [(UNSNotificationRecord *)v5 launchImageName];
    v117 = UNEqualObjects();

    if (!v117)
    {
      goto LABEL_106;
    }

    v118 = [(UNSNotificationRecord *)self shouldHideDate];
    if (v118 != [(UNSNotificationRecord *)v5 shouldHideDate])
    {
      goto LABEL_106;
    }

    v119 = [(UNSNotificationRecord *)self shouldHideTime];
    if (v119 != [(UNSNotificationRecord *)v5 shouldHideTime])
    {
      goto LABEL_106;
    }

    v120 = [(UNSNotificationRecord *)self shouldIgnoreAccessibilityDisabledVibrationSetting];
    if (v120 != [(UNSNotificationRecord *)v5 shouldIgnoreAccessibilityDisabledVibrationSetting])
    {
      goto LABEL_106;
    }

    v121 = [(UNSNotificationRecord *)self shouldIgnoreDoNotDisturb];
    if (v121 != [(UNSNotificationRecord *)v5 shouldIgnoreDoNotDisturb])
    {
      goto LABEL_106;
    }

    v122 = [(UNSNotificationRecord *)self shouldIgnoreDowntime];
    if (v122 != [(UNSNotificationRecord *)v5 shouldIgnoreDowntime])
    {
      goto LABEL_106;
    }

    [(UNSNotificationRecord *)self shouldIgnoreRingerSwitch];
    [(UNSNotificationRecord *)v5 shouldIgnoreRingerSwitch];
    if (!UNEqualBools())
    {
      goto LABEL_106;
    }

    v123 = [(UNSNotificationRecord *)self shouldAuthenticateDefaultAction];
    if (v123 != [(UNSNotificationRecord *)v5 shouldAuthenticateDefaultAction])
    {
      goto LABEL_106;
    }

    v124 = [(UNSNotificationRecord *)self shouldBackgroundDefaultAction];
    if (v124 != [(UNSNotificationRecord *)v5 shouldBackgroundDefaultAction])
    {
      goto LABEL_106;
    }

    v125 = [(UNSNotificationRecord *)self shouldPreventNotificationDismissalAfterDefaultAction];
    if (v125 != [(UNSNotificationRecord *)v5 shouldPreventNotificationDismissalAfterDefaultAction])
    {
      goto LABEL_106;
    }

    [(UNSNotificationRecord *)self shouldSoundRepeat];
    [(UNSNotificationRecord *)v5 shouldSoundRepeat];
    if (!UNEqualBools())
    {
      goto LABEL_106;
    }

    v126 = [(UNSNotificationRecord *)self shouldSuppressScreenLightUp];
    if (v126 != [(UNSNotificationRecord *)v5 shouldSuppressScreenLightUp])
    {
      goto LABEL_106;
    }

    v127 = [(UNSNotificationRecord *)self shouldSuppressSyncDismissalWhenRemoved];
    if (v127 != [(UNSNotificationRecord *)v5 shouldSuppressSyncDismissalWhenRemoved])
    {
      goto LABEL_106;
    }

    v128 = [(UNSNotificationRecord *)self shouldUseRequestIdentifierForDismissalSync];
    if (v128 != [(UNSNotificationRecord *)v5 shouldUseRequestIdentifierForDismissalSync])
    {
      goto LABEL_106;
    }

    v129 = [(UNSNotificationRecord *)self shouldPreemptPresentedNotification];
    if (v129 != [(UNSNotificationRecord *)v5 shouldPreemptPresentedNotification])
    {
      goto LABEL_106;
    }

    v130 = [(UNSNotificationRecord *)self shouldDisplayActionsInline];
    if (v130 != [(UNSNotificationRecord *)v5 shouldDisplayActionsInline])
    {
      goto LABEL_106;
    }

    v131 = [(UNSNotificationRecord *)self shouldShowSubordinateIcon];
    if (v131 != [(UNSNotificationRecord *)v5 shouldShowSubordinateIcon])
    {
      goto LABEL_106;
    }

    v132 = [(UNSNotificationRecord *)self audioCategory];
    v133 = [(UNSNotificationRecord *)v5 audioCategory];
    v134 = UNEqualObjects();

    if (!v134)
    {
      goto LABEL_106;
    }

    v135 = [(UNSNotificationRecord *)self audioVolume];
    v136 = [(UNSNotificationRecord *)v5 audioVolume];
    v137 = UNEqualObjects();

    if (!v137)
    {
      goto LABEL_106;
    }

    [(UNSNotificationRecord *)self soundMaximumDuration];
    [(UNSNotificationRecord *)v5 soundMaximumDuration];
    if (!UNEqualDoubles())
    {
      goto LABEL_106;
    }

    v138 = [(UNSNotificationRecord *)self subtitleLocalizationKey];
    v139 = [(UNSNotificationRecord *)v5 subtitleLocalizationKey];
    v140 = UNSimilarStrings();

    if (!v140)
    {
      goto LABEL_106;
    }

    v141 = [(UNSNotificationRecord *)self subtitleLocalizationArguments];
    v142 = [(UNSNotificationRecord *)v5 subtitleLocalizationArguments];
    v143 = UNEqualObjects();

    if (!v143)
    {
      goto LABEL_106;
    }

    v144 = [(UNSNotificationRecord *)self titleLocalizationKey];
    v145 = [(UNSNotificationRecord *)v5 titleLocalizationKey];
    v146 = UNSimilarStrings();

    if (!v146)
    {
      goto LABEL_106;
    }

    v147 = [(UNSNotificationRecord *)self titleLocalizationArguments];
    v148 = [(UNSNotificationRecord *)v5 titleLocalizationArguments];
    v149 = UNEqualObjects();

    if (!v149)
    {
      goto LABEL_106;
    }

    v150 = [(UNSNotificationRecord *)self toneAlertTopic];
    v151 = [(UNSNotificationRecord *)v5 toneAlertTopic];
    v152 = UNEqualObjects();

    if (!v152)
    {
      goto LABEL_106;
    }

    [(UNSNotificationRecord *)self toneAlertType];
    [(UNSNotificationRecord *)v5 toneAlertType];
    if (!UNEqualDoubles())
    {
      goto LABEL_106;
    }

    v153 = [(UNSNotificationRecord *)self toneFileName];
    v154 = [(UNSNotificationRecord *)v5 toneFileName];
    v155 = UNEqualObjects();

    if (!v155)
    {
      goto LABEL_106;
    }

    v156 = [(UNSNotificationRecord *)self toneFileURL];
    v157 = [(UNSNotificationRecord *)v5 toneFileURL];
    v158 = UNEqualObjects();

    if (!v158)
    {
      goto LABEL_106;
    }

    v159 = [(UNSNotificationRecord *)self toneIdentifier];
    v160 = [(UNSNotificationRecord *)v5 toneIdentifier];
    v161 = UNEqualObjects();

    if (!v161)
    {
      goto LABEL_106;
    }

    v162 = [(UNSNotificationRecord *)self toneMediaLibraryItemIdentifier];
    if (v162 != [(UNSNotificationRecord *)v5 toneMediaLibraryItemIdentifier])
    {
      goto LABEL_106;
    }

    v163 = [(UNSNotificationRecord *)self topicIdentifiers];
    v164 = [(UNSNotificationRecord *)v5 topicIdentifiers];
    v165 = UNSimilarSets();

    if (!v165)
    {
      goto LABEL_106;
    }

    v166 = [(UNSNotificationRecord *)self realertCount];
    if (v166 != [(UNSNotificationRecord *)v5 realertCount])
    {
      goto LABEL_106;
    }

    v167 = [(UNSNotificationRecord *)self allowsDefaultDestinations];
    if (v167 != [(UNSNotificationRecord *)v5 allowsDefaultDestinations])
    {
      goto LABEL_106;
    }

    v168 = [(UNSNotificationRecord *)self allowsLockScreenDestination];
    if (v168 != [(UNSNotificationRecord *)v5 allowsLockScreenDestination])
    {
      goto LABEL_106;
    }

    v169 = [(UNSNotificationRecord *)self allowsNotificationCenterDestination];
    if (v169 != [(UNSNotificationRecord *)v5 allowsNotificationCenterDestination])
    {
      goto LABEL_106;
    }

    v170 = [(UNSNotificationRecord *)self allowsAlertDestination];
    if (v170 != [(UNSNotificationRecord *)v5 allowsAlertDestination])
    {
      goto LABEL_106;
    }

    v171 = [(UNSNotificationRecord *)self allowsCarPlayDestination];
    if (v171 != [(UNSNotificationRecord *)v5 allowsCarPlayDestination])
    {
      goto LABEL_106;
    }

    v172 = [(UNSNotificationRecord *)self triggerDate];
    v173 = [(UNSNotificationRecord *)v5 triggerDate];
    v174 = UNEqualObjects();

    if (!v174)
    {
      goto LABEL_106;
    }

    v175 = [(UNSNotificationRecord *)self triggerDateComponents];
    v176 = [(UNSNotificationRecord *)v5 triggerDateComponents];
    v177 = UNEqualObjects();

    if (!v177)
    {
      goto LABEL_106;
    }

    v178 = [(UNSNotificationRecord *)self triggerRegion];
    v179 = [(UNSNotificationRecord *)v5 triggerRegion];
    v180 = UNEqualObjects();

    if (!v180)
    {
      goto LABEL_106;
    }

    v181 = [(UNSNotificationRecord *)self triggerRepeatCalendarIdentifier];
    v182 = [(UNSNotificationRecord *)v5 triggerRepeatCalendarIdentifier];
    v183 = UNEqualObjects();

    if (!v183)
    {
      goto LABEL_106;
    }

    v184 = [(UNSNotificationRecord *)self triggerRepeatInterval];
    if (v184 != [(UNSNotificationRecord *)v5 triggerRepeatInterval])
    {
      goto LABEL_106;
    }

    v185 = [(UNSNotificationRecord *)self triggerRepeats];
    if (v185 != [(UNSNotificationRecord *)v5 triggerRepeats])
    {
      goto LABEL_106;
    }

    [(UNSNotificationRecord *)self triggerTimeInterval];
    [(UNSNotificationRecord *)v5 triggerTimeInterval];
    if (!UNEqualDoubles())
    {
      goto LABEL_106;
    }

    v186 = [(UNSNotificationRecord *)self triggerTimeZone];
    v187 = [(UNSNotificationRecord *)v5 triggerTimeZone];
    v188 = UNEqualObjects();

    if (!v188)
    {
      goto LABEL_106;
    }

    v189 = [(UNSNotificationRecord *)self triggerType];
    v190 = [(UNSNotificationRecord *)v5 triggerType];
    v191 = UNEqualObjects();

    if (!v191)
    {
      goto LABEL_106;
    }

    v192 = [(UNSNotificationRecord *)self userInfo];
    v193 = [(UNSNotificationRecord *)v5 userInfo];
    v194 = UNEqualObjects();

    if (!v194)
    {
      goto LABEL_106;
    }

    v195 = [(UNSNotificationRecord *)self vibrationIdentifier];
    v196 = [(UNSNotificationRecord *)v5 vibrationIdentifier];
    v197 = UNEqualObjects();

    if (!v197)
    {
      goto LABEL_106;
    }

    v198 = [(UNSNotificationRecord *)self vibrationPatternFileURL];
    v199 = [(UNSNotificationRecord *)v5 vibrationPatternFileURL];
    v200 = UNEqualObjects();

    if (!v200)
    {
      goto LABEL_106;
    }

    [(UNSNotificationRecord *)self relevanceScore];
    v202 = v201;
    [(UNSNotificationRecord *)v5 relevanceScore];
    if (v202 != v203)
    {
      goto LABEL_106;
    }

    v204 = [(UNSNotificationRecord *)self filterCriteria];
    v205 = [(UNSNotificationRecord *)v5 filterCriteria];
    v206 = UNEqualObjects();

    if (!v206)
    {
      goto LABEL_106;
    }

    v207 = [(UNSNotificationRecord *)self screenCaptureProhibited];
    if (v207 != [(UNSNotificationRecord *)v5 screenCaptureProhibited])
    {
      goto LABEL_106;
    }

    v208 = [(UNSNotificationRecord *)self speechLanguage];
    v209 = [(UNSNotificationRecord *)v5 speechLanguage];
    v210 = UNEqualObjects();

    if (!v210)
    {
      goto LABEL_106;
    }

    v211 = [(UNSNotificationRecord *)self revisionNumber];
    if (v211 != [(UNSNotificationRecord *)v5 revisionNumber])
    {
      goto LABEL_106;
    }

    v212 = [(UNSNotificationRecord *)self pipelineState];
    if (v212 != [(UNSNotificationRecord *)v5 pipelineState])
    {
      goto LABEL_106;
    }

    v213 = [(UNSNotificationRecord *)self isHighlight];
    if (v213 != [(UNSNotificationRecord *)v5 isHighlight])
    {
      goto LABEL_106;
    }

    v214 = [(UNSNotificationRecord *)self summary];
    v215 = [(UNSNotificationRecord *)v5 summary];
    v216 = UNEqualObjects();

    if (!v216)
    {
      goto LABEL_106;
    }

    v217 = [(UNSNotificationRecord *)self priorityStatus];
    if (v217 == [(UNSNotificationRecord *)v5 priorityStatus]&& (v218 = [(UNSNotificationRecord *)self summaryStatus], v218 == [(UNSNotificationRecord *)v5 summaryStatus]))
    {
      v219 = [(UNSNotificationRecord *)self eventBehavior];
      v220 = [(UNSNotificationRecord *)v5 eventBehavior];
      v221 = UNEqualObjects();
    }

    else
    {
LABEL_106:
      v221 = 0;
    }
  }

  return v221;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    goto LABEL_23;
  }

  v5 = objc_opt_class();
  if (v5 != objc_opt_class())
  {
    goto LABEL_23;
  }

  if (![(UNSNotificationRecord *)self isSimilar:v4])
  {
    goto LABEL_23;
  }

  v6 = [(UNSNotificationRecord *)self shouldBadgeApplicationIcon];
  if (v6 != [v4 shouldBadgeApplicationIcon])
  {
    goto LABEL_23;
  }

  v7 = [(UNSNotificationRecord *)self shouldPlaySound];
  if (v7 != [v4 shouldPlaySound])
  {
    goto LABEL_23;
  }

  v8 = [(UNSNotificationRecord *)self shouldPresentAlert];
  if (v8 != [v4 shouldPresentAlert])
  {
    goto LABEL_23;
  }

  v9 = [(UNSNotificationRecord *)self presentationOptions];
  if (v9 != [v4 presentationOptions])
  {
    goto LABEL_23;
  }

  v10 = [(UNSNotificationRecord *)self date];
  v11 = [v4 date];
  v12 = UNEqualObjects();

  if (!v12)
  {
    goto LABEL_23;
  }

  v13 = [(UNSNotificationRecord *)self interruptionLevel];
  if (v13 != [v4 interruptionLevel])
  {
    goto LABEL_23;
  }

  v14 = [(UNSNotificationRecord *)self identifier];
  v15 = [v4 identifier];
  v16 = UNEqualObjects();

  if (!v16)
  {
    goto LABEL_23;
  }

  v17 = [(UNSNotificationRecord *)self requestDate];
  v18 = [v4 requestDate];
  v19 = UNEqualObjects();

  if (!v19)
  {
    goto LABEL_23;
  }

  v20 = [(UNSNotificationRecord *)self header];
  v21 = [v4 header];
  v22 = UNEqualObjects();

  if (!v22)
  {
    goto LABEL_23;
  }

  v23 = [(UNSNotificationRecord *)self footer];
  v24 = [v4 footer];
  v25 = UNEqualObjects();

  if (!v25)
  {
    goto LABEL_23;
  }

  v26 = [(UNSNotificationRecord *)self body];
  v27 = [v4 body];
  v28 = UNEqualObjects();

  if (!v28)
  {
    goto LABEL_23;
  }

  v29 = [(UNSNotificationRecord *)self attributedBody];
  v30 = [v4 attributedBody];
  v31 = UNEqualObjects();

  if (!v31)
  {
    goto LABEL_23;
  }

  v32 = [(UNSNotificationRecord *)self subtitle];
  v33 = [v4 subtitle];
  v34 = UNEqualObjects();

  if (!v34)
  {
    goto LABEL_23;
  }

  v35 = [(UNSNotificationRecord *)self title];
  v36 = [v4 title];
  v37 = UNEqualObjects();

  if (!v37)
  {
    goto LABEL_23;
  }

  v38 = [(UNSNotificationRecord *)self defaultActionTitle];
  v39 = [v4 defaultActionTitle];
  v40 = UNEqualObjects();

  if (!v40)
  {
    goto LABEL_23;
  }

  v41 = [(UNSNotificationRecord *)self summaryArgument];
  v42 = [v4 summaryArgument];
  v43 = UNEqualObjects();

  if (!v43)
  {
    goto LABEL_23;
  }

  v44 = [(UNSNotificationRecord *)self summaryArgumentCount];
  if (v44 == [v4 summaryArgumentCount] && (-[UNSNotificationRecord relevanceScore](self, "relevanceScore"), v46 = v45, objc_msgSend(v4, "relevanceScore"), v46 == v47) && (v48 = -[UNSNotificationRecord hasDefaultAction](self, "hasDefaultAction"), v48 == objc_msgSend(v4, "hasDefaultAction")))
  {
    v51 = [(UNSNotificationRecord *)self defaultActionTitleLocalizationKey];
    v52 = [v4 defaultActionTitleLocalizationKey];
    v49 = UNEqualObjects();
  }

  else
  {
LABEL_23:
    v49 = 0;
  }

  return v49;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E698E6B8] builder];
  v4 = [(UNSNotificationRecord *)self contentType];
  v5 = [v3 appendObject:v4];

  v6 = [(UNSNotificationRecord *)self communicationContextIdentifier];
  v7 = [v3 appendObject:v6];

  v8 = [(UNSNotificationRecord *)self communicationContextBundleIdentifier];
  v9 = [v3 appendObject:v8];

  v10 = [(UNSNotificationRecord *)self communicationContextAssociatedObjectUri];
  v11 = [v3 appendObject:v10];

  v12 = [(UNSNotificationRecord *)self communicationContextDisplayName];
  v13 = [v3 appendObject:v12];

  v14 = [(UNSNotificationRecord *)self communicationContextSender];
  v15 = [v3 appendObject:v14];

  v16 = [(UNSNotificationRecord *)self communicationContextRecipients];
  v17 = [v3 appendObject:v16];

  v18 = [(UNSNotificationRecord *)self communicationContextContentURL];
  v19 = [v3 appendObject:v18];

  v20 = [(UNSNotificationRecord *)self communicationContextImageName];
  v21 = [v3 appendObject:v20];

  v22 = [v3 appendBool:{-[UNSNotificationRecord communicationContextSystemImage](self, "communicationContextSystemImage")}];
  v23 = [v3 appendBool:{-[UNSNotificationRecord communicationContextMentionsCurrentUser](self, "communicationContextMentionsCurrentUser")}];
  v24 = [v3 appendBool:{-[UNSNotificationRecord communicationContextNotifyRecipientAnyway](self, "communicationContextNotifyRecipientAnyway")}];
  v25 = [v3 appendBool:{-[UNSNotificationRecord communicationContextReplyToCurrentUser](self, "communicationContextReplyToCurrentUser")}];
  v26 = [v3 appendUnsignedInteger:{-[UNSNotificationRecord communicationContextRecipientCount](self, "communicationContextRecipientCount")}];
  v27 = [v3 appendUnsignedInteger:{-[UNSNotificationRecord communicationContextCapabilities](self, "communicationContextCapabilities")}];
  v28 = [v3 appendBool:{-[UNSNotificationRecord communicationContextBusinessCorrespondence](self, "communicationContextBusinessCorrespondence")}];
  v29 = [(UNSNotificationRecord *)self accessoryImageName];
  v30 = [v3 appendObject:v29];

  v31 = [(UNSNotificationRecord *)self attachments];
  v32 = [v3 appendObject:v31];

  v33 = [(UNSNotificationRecord *)self badge];
  v34 = [v3 appendObject:v33];

  v35 = [(UNSNotificationRecord *)self bodyLocalizationKey];
  v36 = [v3 appendObject:v35];

  v37 = [(UNSNotificationRecord *)self body];
  v38 = [v3 appendObject:v37];

  v39 = [(UNSNotificationRecord *)self bodyLocalizationArguments];
  v40 = [v3 appendObject:v39];

  v41 = [(UNSNotificationRecord *)self attributedBody];
  v42 = [v3 appendObject:v41];

  v43 = [(UNSNotificationRecord *)self summaryArgument];
  v44 = [v3 appendObject:v43];

  v45 = [v3 appendUnsignedInteger:{-[UNSNotificationRecord summaryArgumentCount](self, "summaryArgumentCount")}];
  v46 = [(UNSNotificationRecord *)self targetContentIdentifier];
  v47 = [v3 appendObject:v46];

  v48 = [(UNSNotificationRecord *)self categoryIdentifier];
  v49 = [v3 appendObject:v48];

  v50 = [(UNSNotificationRecord *)self threadIdentifier];
  v51 = [v3 appendObject:v50];

  v52 = [(UNSNotificationRecord *)self contentAvailable];
  v53 = [v3 appendObject:v52];

  v54 = [(UNSNotificationRecord *)self contentDate];
  v55 = [v3 appendObject:v54];

  v56 = [(UNSNotificationRecord *)self mutableContent];
  v57 = [v3 appendObject:v56];

  v58 = [(UNSNotificationRecord *)self date];
  v59 = [v3 appendObject:v58];

  v60 = [v3 appendUnsignedInteger:{-[UNSNotificationRecord interruptionLevel](self, "interruptionLevel")}];
  v61 = [v3 appendBool:{-[UNSNotificationRecord hasDefaultAction](self, "hasDefaultAction")}];
  v62 = [(UNSNotificationRecord *)self defaultActionTitle];
  v63 = [v3 appendObject:v62];

  v64 = [(UNSNotificationRecord *)self defaultActionTitleLocalizationKey];
  v65 = [v3 appendObject:v64];

  v66 = [(UNSNotificationRecord *)self defaultActionURL];
  v67 = [v3 appendObject:v66];

  v68 = [(UNSNotificationRecord *)self defaultActionBundleIdentifier];
  v69 = [v3 appendObject:v68];

  v70 = [(UNSNotificationRecord *)self expirationDate];
  v71 = [v3 appendObject:v70];

  v72 = [v3 appendBool:{-[UNSNotificationRecord hasCriticalAlertSound](self, "hasCriticalAlertSound")}];
  v73 = [(UNSNotificationRecord *)self header];
  v74 = [v3 appendObject:v73];

  v75 = [(UNSNotificationRecord *)self headerLocalizationKey];
  v76 = [v3 appendObject:v75];

  v77 = [(UNSNotificationRecord *)self headerLocalizationArguments];
  v78 = [v3 appendObject:v77];

  v79 = [(UNSNotificationRecord *)self footer];
  v80 = [v3 appendObject:v79];

  v81 = [(UNSNotificationRecord *)self footerLocalizationKey];
  v82 = [v3 appendObject:v81];

  v83 = [(UNSNotificationRecord *)self footerLocalizationArguments];
  v84 = [v3 appendObject:v83];

  v85 = [(UNSNotificationRecord *)self iconApplicationIdentifier];
  v86 = [v3 appendObject:v85];

  v87 = [(UNSNotificationRecord *)self iconName];
  v88 = [v3 appendObject:v87];

  v89 = [(UNSNotificationRecord *)self iconPath];
  v90 = [v3 appendObject:v89];

  v91 = [(UNSNotificationRecord *)self iconSystemImageName];
  v92 = [v3 appendObject:v91];

  v93 = [(UNSNotificationRecord *)self iconUTI];
  v94 = [v3 appendObject:v93];

  v95 = [(UNSNotificationRecord *)self iconDateComponents];
  v96 = [v3 appendObject:v95];

  v97 = [(UNSNotificationRecord *)self identifier];
  v98 = [v3 appendObject:v97];

  v99 = [(UNSNotificationRecord *)self launchImageName];
  v100 = [v3 appendObject:v99];

  v101 = [(UNSNotificationRecord *)self requestDate];
  v102 = [v3 appendObject:v101];

  v103 = [v3 appendBool:{-[UNSNotificationRecord shouldBadgeApplicationIcon](self, "shouldBadgeApplicationIcon")}];
  v104 = [v3 appendBool:{-[UNSNotificationRecord shouldHideDate](self, "shouldHideDate")}];
  v105 = [v3 appendBool:{-[UNSNotificationRecord shouldHideTime](self, "shouldHideTime")}];
  v106 = [v3 appendBool:{-[UNSNotificationRecord shouldIgnoreAccessibilityDisabledVibrationSetting](self, "shouldIgnoreAccessibilityDisabledVibrationSetting")}];
  v107 = [v3 appendBool:{-[UNSNotificationRecord shouldIgnoreDoNotDisturb](self, "shouldIgnoreDoNotDisturb")}];
  v108 = [v3 appendBool:{-[UNSNotificationRecord shouldIgnoreDowntime](self, "shouldIgnoreDowntime")}];
  v109 = [v3 appendBool:{-[UNSNotificationRecord shouldIgnoreRingerSwitch](self, "shouldIgnoreRingerSwitch")}];
  v110 = [v3 appendBool:{-[UNSNotificationRecord shouldSuppressScreenLightUp](self, "shouldSuppressScreenLightUp")}];
  v111 = [v3 appendBool:{-[UNSNotificationRecord shouldPreemptPresentedNotification](self, "shouldPreemptPresentedNotification")}];
  v112 = [v3 appendBool:{-[UNSNotificationRecord shouldDisplayActionsInline](self, "shouldDisplayActionsInline")}];
  v113 = [v3 appendBool:{-[UNSNotificationRecord shouldPlaySound](self, "shouldPlaySound")}];
  v114 = [v3 appendBool:{-[UNSNotificationRecord shouldPresentAlert](self, "shouldPresentAlert")}];
  v115 = [v3 appendUnsignedInteger:{-[UNSNotificationRecord presentationOptions](self, "presentationOptions")}];
  v116 = [v3 appendBool:{-[UNSNotificationRecord shouldAuthenticateDefaultAction](self, "shouldAuthenticateDefaultAction")}];
  v117 = [v3 appendBool:{-[UNSNotificationRecord shouldBackgroundDefaultAction](self, "shouldBackgroundDefaultAction")}];
  v118 = [v3 appendBool:{-[UNSNotificationRecord shouldPreventNotificationDismissalAfterDefaultAction](self, "shouldPreventNotificationDismissalAfterDefaultAction")}];
  v119 = [v3 appendBool:{-[UNSNotificationRecord shouldShowSubordinateIcon](self, "shouldShowSubordinateIcon")}];
  v120 = [v3 appendBool:{-[UNSNotificationRecord shouldSoundRepeat](self, "shouldSoundRepeat")}];
  v121 = [v3 appendBool:{-[UNSNotificationRecord shouldSuppressSyncDismissalWhenRemoved](self, "shouldSuppressSyncDismissalWhenRemoved")}];
  v122 = [v3 appendBool:{-[UNSNotificationRecord shouldUseRequestIdentifierForDismissalSync](self, "shouldUseRequestIdentifierForDismissalSync")}];
  v123 = [(UNSNotificationRecord *)self audioCategory];
  v124 = [v3 appendObject:v123];

  v125 = [(UNSNotificationRecord *)self audioVolume];
  v126 = [v3 appendObject:v125];

  [(UNSNotificationRecord *)self soundMaximumDuration];
  v127 = [v3 appendDouble:?];
  v128 = [(UNSNotificationRecord *)self subtitle];
  v129 = [v3 appendObject:v128];

  v130 = [(UNSNotificationRecord *)self subtitleLocalizationKey];
  v131 = [v3 appendObject:v130];

  v132 = [(UNSNotificationRecord *)self subtitleLocalizationArguments];
  v133 = [v3 appendObject:v132];

  v134 = [(UNSNotificationRecord *)self title];
  v135 = [v3 appendObject:v134];

  v136 = [(UNSNotificationRecord *)self titleLocalizationKey];
  v137 = [v3 appendObject:v136];

  v138 = [(UNSNotificationRecord *)self titleLocalizationArguments];
  v139 = [v3 appendObject:v138];

  v140 = [(UNSNotificationRecord *)self toneAlertTopic];
  v141 = [v3 appendObject:v140];

  v142 = [v3 appendInteger:{-[UNSNotificationRecord toneAlertType](self, "toneAlertType")}];
  v143 = [(UNSNotificationRecord *)self toneFileName];
  v144 = [v3 appendObject:v143];

  v145 = [(UNSNotificationRecord *)self toneFileURL];
  v146 = [v3 appendObject:v145];

  v147 = [(UNSNotificationRecord *)self toneIdentifier];
  v148 = [v3 appendObject:v147];

  v149 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[UNSNotificationRecord toneMediaLibraryItemIdentifier](self, "toneMediaLibraryItemIdentifier")}];
  v150 = [v3 appendObject:v149];

  v151 = [(UNSNotificationRecord *)self topicIdentifiers];
  v152 = [v3 appendObject:v151];

  v153 = [v3 appendUnsignedInteger:{-[UNSNotificationRecord realertCount](self, "realertCount")}];
  v154 = [v3 appendBool:{-[UNSNotificationRecord allowsDefaultDestinations](self, "allowsDefaultDestinations")}];
  v155 = [v3 appendBool:{-[UNSNotificationRecord allowsLockScreenDestination](self, "allowsLockScreenDestination")}];
  v156 = [v3 appendBool:{-[UNSNotificationRecord allowsNotificationCenterDestination](self, "allowsNotificationCenterDestination")}];
  v157 = [v3 appendBool:{-[UNSNotificationRecord allowsAlertDestination](self, "allowsAlertDestination")}];
  v158 = [v3 appendBool:{-[UNSNotificationRecord allowsCarPlayDestination](self, "allowsCarPlayDestination")}];
  v159 = [(UNSNotificationRecord *)self triggerDate];
  v160 = [v3 appendObject:v159];

  v161 = [(UNSNotificationRecord *)self triggerDateComponents];
  v162 = [v3 appendObject:v161];

  v163 = [(UNSNotificationRecord *)self triggerRegion];
  v164 = [v3 appendObject:v163];

  v165 = [(UNSNotificationRecord *)self triggerRepeatCalendarIdentifier];
  v166 = [v3 appendObject:v165];

  v167 = [v3 appendUnsignedInteger:{-[UNSNotificationRecord triggerRepeatInterval](self, "triggerRepeatInterval")}];
  v168 = [v3 appendBool:{-[UNSNotificationRecord triggerRepeats](self, "triggerRepeats")}];
  [(UNSNotificationRecord *)self triggerTimeInterval];
  v169 = [v3 appendDouble:?];
  v170 = [(UNSNotificationRecord *)self triggerTimeZone];
  v171 = [v3 appendObject:v170];

  v172 = [(UNSNotificationRecord *)self triggerType];
  v173 = [v3 appendObject:v172];

  v174 = [(UNSNotificationRecord *)self userInfo];
  v175 = [v3 appendObject:v174];

  v176 = [(UNSNotificationRecord *)self vibrationIdentifier];
  v177 = [v3 appendObject:v176];

  v178 = [(UNSNotificationRecord *)self vibrationPatternFileURL];
  v179 = [v3 appendObject:v178];

  [(UNSNotificationRecord *)self relevanceScore];
  v180 = [v3 appendDouble:?];
  v181 = [(UNSNotificationRecord *)self filterCriteria];
  v182 = [v3 appendObject:v181];

  v183 = [v3 appendBool:{-[UNSNotificationRecord screenCaptureProhibited](self, "screenCaptureProhibited")}];
  v184 = [(UNSNotificationRecord *)self speechLanguage];
  v185 = [v3 appendObject:v184];

  v186 = [v3 appendInteger:{-[UNSNotificationRecord revisionNumber](self, "revisionNumber")}];
  v187 = [v3 appendInteger:{-[UNSNotificationRecord pipelineState](self, "pipelineState")}];
  v188 = [v3 appendBool:{-[UNSNotificationRecord isHighlight](self, "isHighlight")}];
  v189 = [(UNSNotificationRecord *)self summary];
  v190 = [v3 appendObject:v189];

  v191 = [v3 appendUnsignedInteger:{-[UNSNotificationRecord priorityStatus](self, "priorityStatus")}];
  v192 = [v3 appendUnsignedInteger:{-[UNSNotificationRecord summaryStatus](self, "summaryStatus")}];
  v193 = [(UNSNotificationRecord *)self eventBehavior];
  v194 = [v3 appendObject:v193];

  v195 = [v3 hash];
  return v195;
}

- (BOOL)willNotifyUser
{
  if ([(UNSNotificationRecord *)self hasAlertContent])
  {
    return 1;
  }

  return [(UNSNotificationRecord *)self hasSound];
}

- (BOOL)hasAlertContent
{
  v3 = [(UNSNotificationRecord *)self body];
  if ([v3 length])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(UNSNotificationRecord *)self bodyLocalizationKey];
    if ([v5 length])
    {
      v4 = 1;
    }

    else
    {
      v6 = [(UNSNotificationRecord *)self subtitle];
      if ([v6 length])
      {
        v4 = 1;
      }

      else
      {
        v7 = [(UNSNotificationRecord *)self subtitleLocalizationKey];
        if ([v7 length])
        {
          v4 = 1;
        }

        else
        {
          v8 = [(UNSNotificationRecord *)self title];
          if ([v8 length])
          {
            v4 = 1;
          }

          else
          {
            v9 = [(UNSNotificationRecord *)self titleLocalizationKey];
            v4 = [v9 length] != 0;
          }
        }
      }
    }
  }

  return v4;
}

- (BOOL)hasBadge
{
  v2 = [(UNSNotificationRecord *)self badge];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)hasPendingTrigger
{
  v3 = [(UNSNotificationRecord *)self triggerType];
  if ([v3 isEqualToString:@"Calendar"] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"Location") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"TimeInterval"))
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"Local"])
  {
    v6 = [(UNSNotificationRecord *)self triggerRepeatInterval];
    v7 = [(UNSNotificationRecord *)self triggerDate];
    v8 = v7;
    v4 = 1;
    if (!v6)
    {
      if (!v7 || ([v7 timeIntervalSinceNow], v9 <= 0.0))
      {
        v4 = 0;
      }
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(UNSNotificationRecord *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = MEMORY[0x1E698E680];
  v5 = a3;
  v6 = [v4 builderWithObject:self];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __63__UNSNotificationRecord_descriptionBuilderWithMultilinePrefix___block_invoke;
  v10[3] = &unk_1E85D6E70;
  v7 = v6;
  v11 = v7;
  v12 = self;
  [v7 appendBodySectionWithName:0 multilinePrefix:v5 block:v10];

  v8 = v7;
  return v7;
}

void __63__UNSNotificationRecord_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v1 = (a1 + 32);
  v2 = *(a1 + 32);
  v3 = (a1 + 40);
  v4 = [*(a1 + 40) contentType];
  [v2 appendString:v4 withName:@"ContentType" skipIfEmpty:1];

  v5 = [*v3 hasCommunicationContext];
  v6 = [*v1 appendBool:v5 withName:@"HasCommunicationContext"];
  if (v5)
  {
    v7 = *v1;
    v8 = [*v3 communicationContextIdentifier];
    [v7 appendString:v8 withName:@"CommunicationContextIdentifier"];

    v9 = *v1;
    v10 = [*v3 communicationContextBundleIdentifier];
    [v9 appendString:v10 withName:@"CommunicationContextBundleIdentifier"];

    v11 = *v1;
    v12 = [*v3 communicationContextAssociatedObjectUri];
    [v11 appendString:v12 withName:@"CommunicationContextAssociatedObjectUri"];

    v13 = *v1;
    v14 = [*v3 communicationContextDisplayName];
    [v13 appendString:v14 withName:@"CommunicationContextDisplayName"];

    v15 = *v1;
    v16 = [*v3 communicationContextSender];
    v17 = [v15 appendObject:v16 withName:@"CommunicationContextSender"];

    v18 = *v1;
    v19 = [*v3 communicationContextRecipients];
    v20 = [v18 appendObject:v19 withName:@"CommunicationContextRecipients"];

    v21 = *v1;
    v22 = [*v3 communicationContextContentURL];
    v23 = [v21 appendObject:v22 withName:@"CommunicationContextContentURL"];

    v24 = *v1;
    v25 = [*v3 communicationContextImageName];
    v26 = [v24 appendObject:v25 withName:@"CommunicationContextImageName"];

    v27 = [*v1 appendBool:objc_msgSend(*v3 withName:{"communicationContextSystemImage"), @"CommunicationContextSystemImage"}];
    v28 = [*v1 appendBool:objc_msgSend(*v3 withName:{"communicationContextMentionsCurrentUser"), @"CommunicationContextMentionsCurrentUser"}];
    v29 = [*v1 appendBool:objc_msgSend(*v3 withName:{"communicationContextNotifyRecipientAnyway"), @"CommunicationContextNotifyRecipientAnyway"}];
    v30 = [*v1 appendBool:objc_msgSend(*v3 withName:{"communicationContextReplyToCurrentUser"), @"CommunicationContextReplyToCurrentUser"}];
    v31 = [*v1 appendUnsignedInteger:objc_msgSend(*v3 withName:{"communicationContextRecipientCount"), @"CommunicationContextRecipientCount"}];
    v32 = [*v1 appendUnsignedInteger:objc_msgSend(*v3 withName:{"communicationContextCapabilities"), @"CommunicationContextCapabilities"}];
    v33 = [*v1 appendBool:objc_msgSend(*v3 withName:{"communicationContextBusinessCorrespondence"), @"CommunicationContextBusinessCorrespondence"}];
  }

  v34 = *v1;
  v35 = [*v3 accessoryImageName];
  [v34 appendString:v35 withName:@"AccessoryImageName" skipIfEmpty:1];

  v36 = *v1;
  v37 = [*v3 date];
  v38 = [v36 appendObject:v37 withName:@"Date" skipIfNil:1];

  v39 = *v1;
  v40 = [*v3 identifier];
  [v39 appendString:v40 withName:@"Identifier" skipIfEmpty:1];

  v41 = *v1;
  v42 = [*v3 threadIdentifier];
  [v41 appendString:v42 withName:@"ThreadIdentifier" skipIfEmpty:1];

  v43 = *v1;
  v44 = [*v3 categoryIdentifier];
  [v43 appendString:v44 withName:@"CategoryIdentifier" skipIfEmpty:1];

  v45 = *v1;
  v46 = [*v3 attachments];
  [v45 appendArraySection:v46 withName:@"Attachments" skipIfEmpty:1];

  v47 = *v1;
  v48 = [*v3 badge];
  v49 = [v47 appendObject:v48 withName:@"Badge" skipIfNil:1];

  v50 = *v1;
  v51 = [*v3 body];
  [v50 appendString:v51 withName:@"Body" skipIfEmpty:1];

  v52 = *v1;
  v53 = [*v3 bodyLocalizationKey];
  [v52 appendString:v53 withName:@"BodyLocalizationKey" skipIfEmpty:1];

  v54 = *v1;
  v55 = [*v3 bodyLocalizationArguments];
  [v54 appendArraySection:v55 withName:@"BodyLocalizationArguments" skipIfEmpty:1];

  v56 = *v1;
  v57 = [*v3 attributedBody];
  v58 = [v56 appendObject:v57 withName:@"AttributedBody" skipIfNil:1];

  v59 = *v1;
  v60 = [*v3 summaryArgument];
  [v59 appendString:v60 withName:@"SummaryArgument"];

  v61 = [*v1 appendUnsignedInteger:objc_msgSend(*v3 withName:{"summaryArgumentCount"), @"SummaryArgumentCount"}];
  v62 = *v1;
  v63 = [*v3 targetContentIdentifier];
  [v62 appendString:v63 withName:@"TargetContentIdentifier"];

  v64 = [*v1 appendBool:objc_msgSend(*v3 withName:"hasCriticalAlertSound") ifEqualTo:{@"CriticalAlertSound", 1}];
  v65 = *v1;
  v66 = [*v3 header];
  [v65 appendString:v66 withName:@"Header" skipIfEmpty:1];

  v67 = *v1;
  v68 = [*v3 headerLocalizationKey];
  [v67 appendString:v68 withName:@"HeaderLocalizationKey" skipIfEmpty:1];

  v69 = *v1;
  v70 = [*v3 headerLocalizationArguments];
  [v69 appendArraySection:v70 withName:@"HeaderLocalizationArguments" skipIfEmpty:1];

  v71 = *v1;
  v72 = [*v3 footer];
  [v71 appendString:v72 withName:@"Footer" skipIfEmpty:1];

  v73 = *v1;
  v74 = [*v3 footerLocalizationKey];
  [v73 appendString:v74 withName:@"FooterLocalizationKey" skipIfEmpty:1];

  v75 = *v1;
  v76 = [*v3 footerLocalizationArguments];
  [v75 appendArraySection:v76 withName:@"FooterLocalizationArguments" skipIfEmpty:1];

  v77 = *v1;
  v78 = [*v3 iconApplicationIdentifier];
  [v77 appendString:v78 withName:@"IconApplicationIdentifier" skipIfEmpty:1];

  v79 = *v1;
  v80 = [*v3 iconName];
  [v79 appendString:v80 withName:@"IconName" skipIfEmpty:1];

  v81 = *v1;
  v82 = [*v3 iconPath];
  [v81 appendString:v82 withName:@"IconPath" skipIfEmpty:1];

  v83 = *v1;
  v84 = [*v3 iconSystemImageName];
  [v83 appendString:v84 withName:@"IconSystemImageName" skipIfEmpty:1];

  v85 = *v1;
  v86 = [*v3 iconUTI];
  [v85 appendString:v86 withName:@"IconUTI" skipIfEmpty:1];

  v87 = *v1;
  v88 = [*v3 iconDateComponents];
  [v87 appendDictionarySection:v88 withName:@"IconDateComponents" skipIfEmpty:1];

  v89 = *v1;
  v90 = [*v3 contentAvailable];
  v91 = [v89 appendObject:v90 withName:@"ContentAvailable" skipIfNil:1];

  v92 = *v1;
  v93 = [*v3 mutableContent];
  v94 = [v92 appendObject:v93 withName:@"MutableContent" skipIfNil:1];

  v95 = *v1;
  v96 = [*v3 contentDate];
  v97 = [v95 appendObject:v96 withName:@"ContentDate" skipIfNil:1];

  v98 = [*v1 appendUnsignedInteger:objc_msgSend(*v3 withName:{"interruptionLevel"), @"InterruptionLevel"}];
  v99 = [*v1 appendBool:objc_msgSend(*v3 withName:"hasDefaultAction") ifEqualTo:{@"hasDefaultAction", 0}];
  v100 = *v1;
  v101 = [*v3 defaultActionTitle];
  [v100 appendString:v101 withName:@"DefaultActionTitle" skipIfEmpty:1];

  v102 = *v1;
  v103 = [*v3 defaultActionTitleLocalizationKey];
  [v102 appendString:v103 withName:@"DefaultActionTitleLocalizationKey" skipIfEmpty:1];

  v104 = *v1;
  v105 = [*v3 defaultActionURL];
  v106 = [v104 appendObject:v105 withName:@"DefaultActionURL" skipIfNil:1];

  v107 = *v1;
  v108 = [*v3 defaultActionBundleIdentifier];
  [v107 appendString:v108 withName:@"DefaultActionBundleIdentifier" skipIfEmpty:1];

  v109 = *v1;
  v110 = [*v3 expirationDate];
  v111 = [v109 appendObject:v110 withName:@"ExpirationDate" skipIfNil:1];

  v112 = *v1;
  v113 = [*v3 launchImageName];
  [v112 appendString:v113 withName:@"LaunchImageName" skipIfEmpty:1];

  v114 = *v1;
  v115 = [*v3 requestDate];
  v116 = [v114 appendObject:v115 withName:@"RequestDate" skipIfNil:1];

  v117 = [*v1 appendBool:objc_msgSend(*v3 withName:"shouldBadgeApplicationIcon") ifEqualTo:{@"ShouldBadgeApplicationIcon", 0}];
  v118 = [*v1 appendBool:objc_msgSend(*v3 withName:"shouldIgnoreRingerSwitch") ifEqualTo:{@"ShouldIgnoreRingerSwitch", 1}];
  v119 = [*v1 appendBool:objc_msgSend(*v3 withName:"shouldPlaySound") ifEqualTo:{@"ShouldPlaySound", 0}];
  v120 = [*v1 appendBool:objc_msgSend(*v3 withName:"shouldPresentAlert") ifEqualTo:{@"ShouldPresentAlert", 0}];
  v121 = [*v1 appendUnsignedInteger:objc_msgSend(*v3 withName:{"presentationOptions"), @"PresentationOptions"}];
  v122 = [*v1 appendBool:objc_msgSend(*v3 withName:"shouldShowSubordinateIcon") ifEqualTo:{@"ShouldShowSubordinateIcon", 1}];
  v123 = [*v1 appendBool:objc_msgSend(*v3 withName:"shouldSoundRepeat") ifEqualTo:{@"ShouldSoundRepeat", 1}];
  v124 = *v1;
  v125 = [*v3 audioCategory];
  [v124 appendString:v125 withName:@"SoundAudioCategory" skipIfEmpty:1];

  v126 = *v1;
  v127 = [*v3 audioVolume];
  v128 = [v126 appendObject:v127 withName:@"SoundAudioVolume" skipIfNil:1];

  [*v3 soundMaximumDuration];
  if (v129 != 0.0)
  {
    v130 = *v1;
    [*v3 soundMaximumDuration];
    v131 = [v130 appendDouble:@"SoundMaximumDuration" withName:1 decimalPrecision:?];
  }

  v132 = *v1;
  v133 = [*v3 subtitle];
  [v132 appendString:v133 withName:@"Subtitle" skipIfEmpty:1];

  v134 = *v1;
  v135 = [*v3 title];
  [v134 appendString:v135 withName:@"Title" skipIfEmpty:1];

  v136 = *v1;
  v137 = [*v3 titleLocalizationKey];
  [v136 appendString:v137 withName:@"TitleLocalizationKey" skipIfEmpty:1];

  v138 = *v1;
  v139 = [*v3 titleLocalizationArguments];
  [v138 appendArraySection:v139 withName:@"TitleLocalizationArguments" skipIfEmpty:1];

  v140 = *v1;
  v141 = [*v3 toneAlertTopic];
  [v140 appendString:v141 withName:@"ToneAlertTopic" skipIfEmpty:1];

  v142 = *v1;
  [*v3 toneAlertType];
  v143 = NSStringFromTLAlertType();
  [v142 appendString:v143 withName:@"ToneAlertType" skipIfEmpty:1];

  v144 = *v1;
  v145 = [*v3 toneFileName];
  [v144 appendString:v145 withName:@"ToneFileName" skipIfEmpty:1];

  v146 = *v1;
  v147 = [*v3 toneFileURL];
  v148 = [v146 appendObject:v147 withName:@"ToneFileURL" skipIfNil:1];

  v149 = *v1;
  v150 = [*v3 toneIdentifier];
  [v149 appendString:v150 withName:@"ToneIdentifier" skipIfEmpty:1];

  if ([*v3 toneMediaLibraryItemIdentifier])
  {
    v151 = [*v1 appendUInt64:objc_msgSend(*v3 withName:{"toneMediaLibraryItemIdentifier"), @"ToneMediaLibraryItemIdentifier"}];
  }

  v152 = *v1;
  v153 = [*v3 topicIdentifiers];
  v154 = [v153 allObjects];
  [v152 appendArraySection:v154 withName:@"TopicIdentifiers" skipIfEmpty:1];

  if ([*v3 realertCount])
  {
    v155 = [*v1 appendUnsignedInteger:objc_msgSend(*v3 withName:{"realertCount"), @"RealertCount"}];
  }

  v156 = [*v1 appendBool:objc_msgSend(*v3 withName:"allowsDefaultDestinations") ifEqualTo:{@"DefaultDestinations", 1}];
  v157 = [*v1 appendBool:objc_msgSend(*v3 withName:"allowsLockScreenDestination") ifEqualTo:{@"LockScreenDestination", 1}];
  v158 = [*v1 appendBool:objc_msgSend(*v3 withName:"allowsNotificationCenterDestination") ifEqualTo:{@"NotificationCenterDestination", 1}];
  v159 = [*v1 appendBool:objc_msgSend(*v3 withName:"allowsAlertDestination") ifEqualTo:{@"AlertDestination", 1}];
  v160 = [*v1 appendBool:objc_msgSend(*v3 withName:"allowsCarPlayDestination") ifEqualTo:{@"CarPlayDestination", 1}];
  v161 = *v1;
  v162 = [*v3 triggerDate];
  v163 = [v161 appendObject:v162 withName:@"TriggerDate" skipIfNil:1];

  v164 = *v1;
  v165 = [*v3 triggerDateComponents];
  v166 = [v164 appendObject:v165 withName:@"TriggerDateComponents" skipIfNil:1];

  v167 = *v1;
  v168 = [*v3 triggerRegion];
  v169 = [v167 appendObject:v168 withName:@"TriggerRegion" skipIfNil:1];

  v170 = *v1;
  v171 = [*v3 triggerRepeatCalendarIdentifier];
  [v170 appendString:v171 withName:@"TriggerRepeatCalendar" skipIfEmpty:1];

  if ([*v3 triggerRepeatInterval])
  {
    v172 = [*v1 appendUnsignedInteger:objc_msgSend(*v3 withName:{"triggerRepeatInterval"), @"TriggerRepeatInterval"}];
  }

  v173 = [*v1 appendBool:objc_msgSend(*v3 withName:"triggerRepeats") ifEqualTo:{@"TriggerRepeats", 1}];
  [*v3 triggerTimeInterval];
  if (v174 != 0.0)
  {
    v175 = *v1;
    [*v3 triggerTimeInterval];
    v176 = [v175 appendDouble:@"TriggerTimeInterval" withName:1 decimalPrecision:?];
  }

  v177 = *v1;
  v178 = [*v3 triggerTimeZone];
  v179 = [v178 name];
  [v177 appendString:v179 withName:@"TriggerTimeZone" skipIfEmpty:1];

  v180 = *v1;
  v181 = [*v3 triggerType];
  [v180 appendString:v181 withName:@"TriggerType" skipIfEmpty:1];

  v182 = *v1;
  v183 = [*v3 userInfo];
  [v182 appendDictionarySection:v183 withName:@"UserInfo" skipIfEmpty:1];

  v184 = *v1;
  v185 = [*v3 vibrationIdentifier];
  [v184 appendString:v185 withName:@"VibrationIdentifier" skipIfEmpty:1];

  v186 = *v1;
  v187 = [*v3 vibrationPatternFileURL];
  v188 = [v186 appendObject:v187 withName:@"VibrationPatternFileURL" skipIfNil:1];

  v189 = [*v1 appendBool:objc_msgSend(*v3 withName:"shouldIgnoreAccessibilityDisabledVibrationSetting") ifEqualTo:{@"ShouldIgnoreAccessibilityDisabledVibrationSetting", 1}];
  v190 = *v1;
  [*v3 relevanceScore];
  v191 = [v190 appendDouble:@"RelevanceScore" withName:2 decimalPrecision:?];
  v192 = *v1;
  v193 = [*v3 filterCriteria];
  [v192 appendString:v193 withName:@"FilterCriteria"];

  v194 = [*v1 appendBool:objc_msgSend(*v3 withName:"screenCaptureProhibited") ifEqualTo:{@"ScreenCaptureProhibited", 1}];
  v195 = *v1;
  v196 = [*v3 speechLanguage];
  [v195 appendString:v196 withName:@"SpeechLanguage"];

  v197 = [*v1 appendInteger:objc_msgSend(*v3 withName:{"revisionNumber"), @"RevisionNumber"}];
  v198 = [*v1 appendInteger:objc_msgSend(*v3 withName:{"pipelineState"), @"PipelineState"}];
  v199 = [*v1 appendBool:objc_msgSend(*v3 withName:"isHighlight") ifEqualTo:{@"IsHighlight", 1}];
  v200 = *v1;
  v201 = [*v3 summary];
  v202 = [v200 appendObject:v201 withName:@"Summary"];

  v203 = [*v1 appendUnsignedInteger:objc_msgSend(*v3 withName:{"priorityStatus"), @"PriorityStatus"}];
  v204 = [*v1 appendUnsignedInteger:objc_msgSend(*v3 withName:{"summaryStatus"), @"SummaryStatus"}];
  v205 = *v1;
  v207 = [*v3 eventBehavior];
  v206 = [v205 appendObject:v207 withName:@"EventBehavior"];
}

- (id)succinctDescription
{
  v2 = [(UNSNotificationRecord *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = [(UNSNotificationRecord *)self date];
  v5 = [v3 appendObject:v4 withName:@"Date" skipIfNil:1];

  v6 = [(UNSNotificationRecord *)self contentType];
  v7 = [v3 appendObject:v6 withName:@"ContentType" skipIfNil:1];

  v8 = [(UNSNotificationRecord *)self identifier];
  [v3 appendString:v8 withName:@"Identifier" skipIfEmpty:1];

  v9 = [(UNSNotificationRecord *)self threadIdentifier];
  [v3 appendString:v9 withName:@"ThreadIdentifier" skipIfEmpty:1];

  v10 = [(UNSNotificationRecord *)self categoryIdentifier];
  [v3 appendString:v10 withName:@"CategoryIdentifier" skipIfEmpty:1];

  v11 = [(UNSNotificationRecord *)self targetContentIdentifier];
  [v3 appendString:v11 withName:@"TargetContentIdentifier" skipIfEmpty:1];

  v12 = [(UNSNotificationRecord *)self filterCriteria];
  [v3 appendString:v12 withName:@"FilterCriteria" skipIfEmpty:1];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(UNSNotificationRecord *)self dictionaryRepresentation];
  [v4 encodeObject:v5 forKey:@"dictionary"];
}

- (UNSNotificationRecord)initWithCoder:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E695DFD8];
  v5 = a3;
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v15 = objc_opt_class();
  v16 = objc_opt_class();
  v17 = objc_opt_class();
  v18 = objc_opt_class();
  v19 = objc_opt_class();
  v20 = objc_opt_class();
  v21 = objc_opt_class();
  v22 = objc_opt_class();
  v23 = objc_opt_class();
  v24 = objc_opt_class();
  v25 = objc_opt_class();
  v26 = objc_opt_class();
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v12 count:15];
  v7 = [v4 setWithArray:{v6, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25}];

  v8 = [v5 decodeObjectOfClasses:v7 forKey:@"dictionary"];

  v9 = [[UNSNotificationRecord alloc] initWithDictionaryRepresentation:v8];
  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

@end