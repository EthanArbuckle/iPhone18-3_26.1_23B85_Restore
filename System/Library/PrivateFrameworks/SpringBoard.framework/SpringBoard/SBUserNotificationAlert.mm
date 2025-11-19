@interface SBUserNotificationAlert
- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5;
- (NSString)description;
- (SBUserNotificationAlert)initWithMessage:(id)a3 replyPort:(unsigned int)a4 requestFlags:(int)a5 auditToken:(id)a6;
- (id)_attachmentImage;
- (id)_createSystemApertureElement;
- (id)_headerImage;
- (id)_imageDefinitionForPath:(id)a3 catalogPath:(id)a4 catalogImageKey:(id)a5 graphicIconDefinition:(id)a6;
- (id)_imageForDefinition:(id)a3;
- (id)_parseAssetDefinition:(id)a3;
- (id)_parseCustomButtonDefinitions:(id)a3 locBundle:(id)a4;
- (id)_parseLegacyTextFieldDefinitions:(id)a3 locBundle:(id)a4;
- (id)_parseSystemApertureContentDefinition:(id)a3;
- (id)_parseTextFieldDefinitions:(id)a3 locBundle:(id)a4;
- (id)_prepareNewAlertControllerWithLockedState:(BOOL)a3 requirePasscodeForActions:(BOOL)a4;
- (id)_publicDescription;
- (id)_safeLocalizedValue:(id)a3 withBundle:(id)a4;
- (id)clientIdentifier;
- (id)elementIdentifier;
- (id)iconImage;
- (id)parseVisualStyleForMessage:(id)a3;
- (id)sound;
- (int64_t)_uiAlertActionLayoutDirectionFromSBUserNotificationButtonLayoutDirection:(unsigned int)a3;
- (int64_t)_uiAlertActionStyleFromSBUserNotificationButtonPresentationStyle:(int)a3;
- (void)_activateApplication:(id)a3 withURL:(id)a4;
- (void)_cleanup;
- (void)_cleanupCustomContentViewControllers;
- (void)_clearRemoteViewControllerIfPresent;
- (void)_noteSilencingHardwareButtonPressed;
- (void)_sendResponseAndCleanUp:(int)a3 customButtonResponse:(int)a4;
- (void)_setActivated:(BOOL)a3;
- (void)cancel;
- (void)configure:(BOOL)a3 requirePasscodeForActions:(BOOL)a4;
- (void)dealloc;
- (void)didDeactivateForReason:(int)a3;
- (void)didFailToActivate;
- (void)dismissIfNecessaryWithResponse:(int)a3 customButtonResponse:(int)a4;
- (void)doCleanupAfterDeactivationAnimation;
- (void)performUnlockAction;
- (void)presentationStateDidChangeFromState:(unint64_t)a3 toState:(unint64_t)a4;
- (void)updateWithMessage:(id)a3 requestFlags:(int)a4;
- (void)willActivate;
- (void)willDeactivateForReason:(int)a3;
@end

@implementation SBUserNotificationAlert

- (id)_headerImage
{
  v3 = [(SBUserNotificationAlert *)self headerImageDefinition];
  v4 = [(SBUserNotificationAlert *)self _imageForDefinition:v3];

  return v4;
}

- (id)_attachmentImage
{
  v3 = [(SBUserNotificationAlert *)self attachmentImageDefinition];
  v4 = [(SBUserNotificationAlert *)self _imageForDefinition:v3];

  return v4;
}

- (id)iconImage
{
  v3 = [(SBUserNotificationAlert *)self iconImageDefinition];
  v4 = [(SBUserNotificationAlert *)self _imageForDefinition:v3];

  return v4;
}

- (id)_safeLocalizedValue:(id)a3 withBundle:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v5, "count")}];
      v17 = 0u;
      v18 = 0u;
      v19 = 0u;
      v20 = 0u;
      v8 = v5;
      v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v18;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v18 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = safeStringValue(*(*(&v17 + 1) + 8 * i));
            if (v6)
            {
              v14 = [v6 localizedStringForKey:v13 value:&stru_283094718 table:{0, v17}];

              v13 = v14;
            }

            [v7 addObject:{v13, v17}];
          }

          v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
        }

        while (v10);
      }
    }

    else
    {
      v8 = safeStringValue(v5);

      if (v6)
      {
        v15 = [v6 localizedStringForKey:v8 value:&stru_283094718 table:0];
      }

      else
      {
        v15 = v8;
        v8 = v15;
      }

      v7 = v15;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (SBUserNotificationAlert)initWithMessage:(id)a3 replyPort:(unsigned int)a4 requestFlags:(int)a5 auditToken:(id)a6
{
  v7 = *&a5;
  v10 = a3;
  v11 = a6;
  v37.receiver = self;
  v37.super_class = SBUserNotificationAlert;
  v12 = [(SBAlertItem *)&v37 init];
  if (v12)
  {
    v12[30] = [v11 pid];
    v12[31] = a4;
    v13 = [v10 objectForKey:*MEMORY[0x277CBF1A8]];
    v14 = *(v12 + 14);
    *(v12 + 14) = v13;

    v15 = v12[31];
    if ((v15 + 1) >= 2)
    {
      v17 = dispatch_source_create(MEMORY[0x277D85D10], v15, 1uLL, MEMORY[0x277D85CD0]);
      v18 = *(v12 + 16);
      *(v12 + 16) = v17;

      v19 = *(v12 + 16);
      if (v19)
      {
        handler[0] = MEMORY[0x277D85DD0];
        handler[1] = 3221225472;
        handler[2] = __77__SBUserNotificationAlert_initWithMessage_replyPort_requestFlags_auditToken___block_invoke;
        handler[3] = &unk_2783A8C18;
        v20 = v12;
        v36 = v20;
        dispatch_source_set_event_handler(v19, handler);
        v21 = *(v12 + 16);
        v30 = MEMORY[0x277D85DD0];
        v31 = 3221225472;
        v32 = __77__SBUserNotificationAlert_initWithMessage_replyPort_requestFlags_auditToken___block_invoke_2;
        v33 = &unk_2783A8C18;
        v34 = v20;
        dispatch_source_set_cancel_handler(v21, &v30);
        dispatch_resume(*(v12 + 16));
      }

      v22 = MEMORY[0x277D0AAF8];
      if (v11)
      {
        [v11 realToken];
      }

      else
      {
        v28 = 0u;
        v29 = 0u;
      }

      if ([v22 authenticateAuditToken:&v28 forEntitlement:@"com.apple.UIKit.vends-view-services" error:0])
      {
        v23 = objc_alloc(MEMORY[0x277CEEEA8]);
        v24 = [v11 bundleID];
        v25 = [v12 description];
        v26 = [v23 initWithBundleIdentifier:v24 flags:1 reason:9 name:v25];
        v27 = *(v12 + 58);
        *(v12 + 58) = v26;
      }
    }

    [v12 updateWithMessage:v10 requestFlags:{v7, v28, v29, v30, v31, v32, v33}];
  }

  return v12;
}

uint64_t __77__SBUserNotificationAlert_initWithMessage_replyPort_requestFlags_auditToken___block_invoke_2(uint64_t a1)
{
  v2 = SBLogCFUserNotifications();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __77__SBUserNotificationAlert_initWithMessage_replyPort_requestFlags_auditToken___block_invoke_2_cold_1(a1, v2);
  }

  result = *(a1 + 32);
  v4 = *(result + 128);
  if (v4)
  {
    *(result + 128) = 0;

    result = *(a1 + 32);
  }

  if ((~*(result + 160) & 3) == 0 || (*(result + 160) & 0x20) != 0 && !*(result + 216) && !*(result + 224) && !*(result + 232))
  {
    return [result cancel];
  }

  return result;
}

- (id)parseVisualStyleForMessage:(id)a3
{
  v4 = [a3 bs_safeNumberForKey:*MEMORY[0x277D672D8]];
  v5 = v4;
  if (v4)
  {
    v6 = -[SBUserNotificationAlert _uiAlertActionLayoutDirectionFromSBUserNotificationButtonLayoutDirection:](self, "_uiAlertActionLayoutDirectionFromSBUserNotificationButtonLayoutDirection:", [v4 unsignedIntValue]);
    v7 = objc_alloc_init(MEMORY[0x277D67930]);
    [v7 setPermittedActionLayoutDirection:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)updateWithMessage:(id)a3 requestFlags:(int)a4
{
  v187[9] = *MEMORY[0x277D85DE8];
  v6 = a3;
  self->_requestFlags = a4;
  v7 = [v6 objectForKey:*MEMORY[0x277CBF248]];
  self->_token = safeIntValue(v7);

  v8 = [v6 objectForKey:*MEMORY[0x277CBF240]];
  self->_timeout = safeIntValue(v8);

  v9 = [v6 objectForKey:*MEMORY[0x277D67338]];
  if (isSafePlistTrueBoolean(v9))
  {
    v10 = 16;
  }

  else
  {
    v10 = 0;
  }

  *(self + 448) = *(self + 448) & 0xEF | v10;

  v11 = [v6 objectForKey:*MEMORY[0x277D67340]];
  if (isSafePlistTrueBoolean(v11))
  {
    v12 = 64;
  }

  else
  {
    v12 = 0;
  }

  *(self + 448) = *(self + 448) & 0xBF | v12;

  v13 = [v6 objectForKey:*MEMORY[0x277D672D0]];
  if (isSafePlistTrueBoolean(v13))
  {
    v14 = 0x80;
  }

  else
  {
    v14 = 0;
  }

  *(self + 448) = v14 & 0x80 | *(self + 448) & 0x7F;

  v15 = [v6 objectForKey:*MEMORY[0x277D67280]];
  *(self + 448) = *(self + 448) & 0xFE | isSafePlistTrueBoolean(v15);

  v16 = [v6 objectForKey:*MEMORY[0x277D67318]];
  if (isSafePlistTrueBoolean(v16))
  {
    v17 = 16;
  }

  else
  {
    v17 = 0;
  }

  *(self + 449) = *(self + 449) & 0xEF | v17;

  v18 = [v6 objectForKey:*MEMORY[0x277D67388]];
  if (isSafePlistTrueBoolean(v18))
  {
    v19 = 32;
  }

  else
  {
    v19 = 0;
  }

  *(self + 449) = *(self + 449) & 0xDF | v19;

  v20 = [v6 objectForKey:*MEMORY[0x277D67288]];
  [(SBAlertItem *)self setAllowInSetup:isSafePlistTrueBoolean(v20)];

  v21 = [v6 objectForKey:*MEMORY[0x277D673D8]];
  [(SBAlertItem *)self setPendInSetupIfNotAllowed:isSafePlistTrueBoolean(v21)];

  v22 = [v6 objectForKey:*MEMORY[0x277D673E0]];
  [(SBAlertItem *)self setPendWhileKeyBagLocked:isSafePlistTrueBoolean(v22)];

  v23 = [v6 objectForKey:*MEMORY[0x277D67278]];
  [(SBAlertItem *)self setAllowInCar:isSafePlistTrueBoolean(v23)];

  v24 = [v6 objectForKey:*MEMORY[0x277D673B0]];
  [(SBAlertItem *)self _setIgnoresQuietMode:isSafePlistTrueBoolean(v24)];

  v25 = [v6 objectForKey:*MEMORY[0x277D672E8]];
  [(SBAlertItem *)self setContactIdentifier:v25];

  v26 = [v6 objectForKey:*MEMORY[0x277D672F0]];
  [(SBAlertItem *)self setContentType:v26];

  v27 = [v6 objectForKey:*MEMORY[0x277D67390]];
  [(SBAlertItem *)self setShouldMaskIcon:isSafePlistTrueBoolean(v27) ^ 1];

  v28 = [v6 objectForKey:*MEMORY[0x277D67270]];
  [(SBAlertItem *)self setAllowDuringTransitionAnimations:isSafePlistTrueBoolean(v28)];

  v29 = [v6 objectForKey:*MEMORY[0x277D672A8]];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v30 = v29;
  }

  else
  {
    v30 = 0;
  }

  v31 = v30;
  v32 = [v31 mutableCopy];

  if (v32)
  {
    v33 = [v32 indexesOfObjectsPassingTest:&__block_literal_global_40];
    [v32 removeObjectsAtIndexes:v33];
  }

  v173 = v32;
  if ([v32 count])
  {
    v34 = [v32 copy];
    [(SBAlertItem *)self setAllowedBundleIDs:v34];
  }

  else
  {
    [(SBAlertItem *)self setAllowedBundleIDs:0];
  }

  v35 = [(SBUserNotificationAlert *)self parseVisualStyleForMessage:v6];
  visualStyle = self->_visualStyle;
  self->_visualStyle = v35;

  v37 = [v6 objectForKey:*MEMORY[0x277CBF1B0]];
  if (isSafePlistTrueBoolean(v37))
  {
    v38 = 8;
  }

  else
  {
    v38 = 0;
  }

  *(self + 448) = *(self + 448) & 0xF7 | v38;

  v39 = [v6 objectForKey:*MEMORY[0x277D67320]];
  if (isSafePlistTrueBoolean(v39))
  {
    v40 = 32;
  }

  else
  {
    v40 = 0;
  }

  *(self + 448) = *(self + 448) & 0xDF | v40;

  v41 = [v6 objectForKey:*MEMORY[0x277D67298]];
  *(self + 449) = *(self + 449) & 0xFE | isSafePlistTrueBoolean(v41);

  v42 = [v6 objectForKey:*MEMORY[0x277D67360]];
  if (isSafePlistTrueBoolean(v42))
  {
    v43 = 4;
  }

  else
  {
    v43 = 0;
  }

  *(self + 449) = *(self + 449) & 0xFB | v43;

  v44 = [v6 objectForKey:*MEMORY[0x277D67330]];
  if (isSafePlistTrueBoolean(v44))
  {
    v45 = 8;
  }

  else
  {
    v45 = 0;
  }

  *(self + 449) = *(self + 449) & 0xF7 | v45;

  v46 = [v6 objectForKey:*MEMORY[0x277D67300]];
  v47 = v46;
  if (v46)
  {
    v48 = safeIntValue(v46);
  }

  else
  {
    v48 = -1;
  }

  self->_defaultButtonTag = v48;
  v49 = [v6 objectForKey:*MEMORY[0x277D67290]];

  if (v49)
  {
    v50 = safeIntValue(v49) & 1;
  }

  else
  {
    v50 = 1;
  }

  *(self + 472) = *(self + 472) & 0xFE | v50;
  v178 = [v6 objectForKey:*MEMORY[0x277D67450]];
  v174 = [v6 objectForKey:*MEMORY[0x277D67448]];
  v51 = v178;
  if (v178 || (v51 = v174) != 0)
  {
    v52 = *(self + 449) & 0xFD | (2 * (safeIntValue(v51) & 1));
  }

  else
  {
    v52 = *(self + 449) | 2;
  }

  *(self + 449) = v52;
  v179 = [v6 objectForKey:*MEMORY[0x277D672E0]];

  if (v179)
  {
    v53 = safeIntValue(v179);
  }

  else
  {
    v53 = -1;
  }

  self->_unlockActionButtonTag = v53;
  v54 = [v6 objectForKey:*MEMORY[0x277D67308]];
  v55 = safeStringValue(v54);
  [(SBUserNotificationAlert *)self setDefaultResponseLaunchBundleID:v55];

  v56 = [v6 objectForKey:*MEMORY[0x277D67310]];
  v181 = safeStringValue(v56);

  if (v181)
  {
    v57 = [MEMORY[0x277CBEBC0] URLWithString:v181];
    [(SBUserNotificationAlert *)self setDefaultResponseLaunchURL:v57];
  }

  v58 = [v6 objectForKey:*MEMORY[0x277D67380]];
  v59 = safeStringValue(v58);
  v60 = [v6 objectForKey:*MEMORY[0x277D67378]];
  v61 = safeStringValue(v60);
  v62 = [v6 objectForKey:*MEMORY[0x277D67370]];
  v63 = safeStringValue(v62);
  v64 = *MEMORY[0x277D67368];
  v65 = [v6 bs_safeDictionaryForKey:*MEMORY[0x277D67368]];
  v66 = [(SBUserNotificationAlert *)self _imageDefinitionForPath:v59 catalogPath:v61 catalogImageKey:v63 graphicIconDefinition:v65];
  headerImageDefinition = self->_headerImageDefinition;
  self->_headerImageDefinition = v66;

  v68 = [v6 objectForKey:*MEMORY[0x277D673A8]];
  v69 = safeStringValue(v68);
  v70 = [v6 objectForKey:*MEMORY[0x277D673A0]];
  v71 = safeStringValue(v70);
  v72 = [v6 objectForKey:*MEMORY[0x277D67398]];
  v73 = safeStringValue(v72);
  v74 = [v6 bs_safeDictionaryForKey:v64];
  v75 = [(SBUserNotificationAlert *)self _imageDefinitionForPath:v69 catalogPath:v71 catalogImageKey:v73 graphicIconDefinition:v74];
  iconImageDefinition = self->_iconImageDefinition;
  self->_iconImageDefinition = v75;

  v77 = [v6 objectForKey:*MEMORY[0x277D672C8]];
  v78 = safeStringValue(v77);
  v79 = [v6 objectForKey:*MEMORY[0x277D672C0]];
  v80 = safeStringValue(v79);
  v81 = [v6 objectForKey:*MEMORY[0x277D672B8]];
  v82 = safeStringValue(v81);
  v83 = [(SBUserNotificationAlert *)self _imageDefinitionForPath:v78 catalogPath:v80 catalogImageKey:v82];
  attachmentImageDefinition = self->_attachmentImageDefinition;
  self->_attachmentImageDefinition = v83;

  v85 = [v6 objectForKey:*MEMORY[0x277CBF220]];
  v86 = safeStringValue(v85);
  [(SBUserNotificationAlert *)self setSoundPath:v86];

  v87 = [v6 objectForKey:*MEMORY[0x277D67430]];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v88 = [v87 unsignedIntValue];
  }

  else
  {
    v88 = 0;
  }

  [(SBUserNotificationAlert *)self setSoundID:v88];
  v89 = [v6 objectForKey:*MEMORY[0x277D67428]];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v90 = [v89 unsignedIntValue];
  }

  else
  {
    v90 = 1;
  }

  [(SBUserNotificationAlert *)self setSoundIDBehavior:v90];
  v91 = [v6 objectForKey:*MEMORY[0x277D67410]];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v92 = v91;
  }

  else
  {
    v92 = 0;
  }

  v93 = v92;
  [(SBUserNotificationAlert *)self setVibrationPattern:v93];

  v180 = [v6 objectForKey:*MEMORY[0x277D67400]];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v94 = [v180 integerValue];
  }

  else
  {
    v94 = 0;
  }

  [(SBUserNotificationAlert *)self setSoundAlertType:v94];
  v95 = [v6 objectForKey:*MEMORY[0x277D673F8]];
  v96 = safeStringValue(v95);
  [(SBUserNotificationAlert *)self setSoundAlertTopic:v96];

  v97 = [v6 objectForKey:*MEMORY[0x277D67408]];
  v98 = objc_opt_respondsToSelector();
  v99 = 0.0;
  if (v98)
  {
    [v97 doubleValue];
    v99 = v100;
  }

  self->_soundRepeatDuration = v99;

  v101 = [v6 objectForKey:*MEMORY[0x277CBF200]];
  v177 = safeStringValue(v101);

  if (v177)
  {
    v102 = [objc_alloc(MEMORY[0x277CF0BB8]) initWithPath:v177];
  }

  else
  {
    v102 = 0;
  }

  v103 = [v6 objectForKey:*MEMORY[0x277CBF188]];
  v104 = [(SBUserNotificationAlert *)self _safeLocalizedValue:v103 withBundle:v102];
  v105 = safeStringValue(v104);
  [(SBUserNotificationAlert *)self setAlertHeader:v105];

  v106 = [v6 objectForKey:*MEMORY[0x277CBF198]];
  v107 = [(SBUserNotificationAlert *)self _safeLocalizedValue:v106 withBundle:v102];
  [(SBUserNotificationAlert *)self setAlertMessage:v107];

  v108 = [v6 objectForKey:*MEMORY[0x277D67268]];
  v109 = [(SBUserNotificationAlert *)self _safeLocalizedValue:v108 withBundle:v102];
  v110 = safeStringValue(v109);
  [(SBUserNotificationAlert *)self setAlertMessageDelimiter:v110];

  v111 = [v6 objectForKey:*MEMORY[0x277D673B8]];
  v112 = [(SBUserNotificationAlert *)self _safeLocalizedValue:v111 withBundle:v102];
  v113 = safeStringValue(v112);
  [(SBUserNotificationAlert *)self setLockScreenAlertHeader:v113];

  v114 = [v6 objectForKey:*MEMORY[0x277D673C8]];
  v115 = [(SBUserNotificationAlert *)self _safeLocalizedValue:v114 withBundle:v102];
  [(SBUserNotificationAlert *)self setLockScreenAlertMessage:v115];

  v116 = [v6 objectForKey:*MEMORY[0x277D673C0]];
  v117 = [(SBUserNotificationAlert *)self _safeLocalizedValue:v116 withBundle:v102];
  v118 = safeStringValue(v117);
  [(SBUserNotificationAlert *)self setLockScreenAlertMessageDelimiter:v118];

  v119 = [v6 objectForKey:*MEMORY[0x277CBF1E8]];
  v120 = [(SBUserNotificationAlert *)self _safeLocalizedValue:v119 withBundle:v102];
  [(SBUserNotificationAlert *)self setDefaultButtonTitle:v120];

  v121 = [v6 objectForKey:*MEMORY[0x277CBF1C0]];
  v122 = [(SBUserNotificationAlert *)self _safeLocalizedValue:v121 withBundle:v102];
  [(SBUserNotificationAlert *)self setAlternateButtonTitle:v122];

  v123 = [v6 objectForKey:*MEMORY[0x277CBF218]];
  v124 = [(SBUserNotificationAlert *)self _safeLocalizedValue:v123 withBundle:v102];
  [(SBUserNotificationAlert *)self setOtherButtonTitle:v124];

  v125 = [v6 objectForKey:*MEMORY[0x277CBF180]];
  v126 = safeStringValue(v125);
  [(SBUserNotificationAlert *)self setAlertAccessibilityIdentifier:v126];

  v127 = [v6 objectForKey:*MEMORY[0x277CBF1D8]];
  v128 = safeStringValue(v127);
  [(SBUserNotificationAlert *)self setDefaultButtonAccessibilityIdentifier:v128];

  v129 = [v6 objectForKey:*MEMORY[0x277CBF1B8]];
  v130 = safeStringValue(v129);
  [(SBUserNotificationAlert *)self setAlternateButtonAccessibilityIdentifier:v130];

  v131 = [v6 objectForKey:*MEMORY[0x277CBF210]];
  v132 = safeStringValue(v131);
  [(SBUserNotificationAlert *)self setOtherButtonAccessibilityIdentifier:v132];

  v133 = [v6 objectForKeyedSubscript:*MEMORY[0x277D67228]];
  v134 = [(SBUserNotificationAlert *)self _parseTextFieldDefinitions:v133 locBundle:v102];
  textFieldDefinitions = self->_textFieldDefinitions;
  self->_textFieldDefinitions = v134;

  if (!self->_textFieldDefinitions)
  {
    v136 = [(SBUserNotificationAlert *)self _parseLegacyTextFieldDefinitions:v6 locBundle:v102];
    v137 = self->_textFieldDefinitions;
    self->_textFieldDefinitions = v136;
  }

  v138 = [v6 objectForKeyedSubscript:*MEMORY[0x277D67220]];
  v139 = [(SBUserNotificationAlert *)self _parseCustomButtonDefinitions:v138 locBundle:v102];
  customButtonDefinitions = self->_customButtonDefinitions;
  self->_customButtonDefinitions = v139;

  v141 = [v6 bs_safeNumberForKey:*MEMORY[0x277D672F8]];
  self->_defaultButtonActionStyle = -[SBUserNotificationAlert _uiAlertActionStyleFromSBUserNotificationButtonPresentationStyle:](self, "_uiAlertActionStyleFromSBUserNotificationButtonPresentationStyle:", [v141 intValue]);

  v142 = [v6 bs_safeNumberForKey:*MEMORY[0x277D673D0]];
  self->_otherButtonActionStyle = -[SBUserNotificationAlert _uiAlertActionStyleFromSBUserNotificationButtonPresentationStyle:](self, "_uiAlertActionStyleFromSBUserNotificationButtonPresentationStyle:", [v142 intValue]);

  v143 = [v6 bs_safeNumberForKey:*MEMORY[0x277D672B0]];
  v176 = v143;
  if (v143)
  {
    v144 = -[SBUserNotificationAlert _uiAlertActionStyleFromSBUserNotificationButtonPresentationStyle:](self, "_uiAlertActionStyleFromSBUserNotificationButtonPresentationStyle:", [v143 intValue]);
  }

  else
  {
    v144 = [(NSString *)self->_alternateButtonTitle length]&& ![(NSString *)self->_otherButtonTitle length];
  }

  self->_alternateButtonActionStyle = v144;
  v145 = [v6 objectForKey:*MEMORY[0x277D67420]];
  v146 = isSafePlistTrueBoolean(v145);

  [(SBUserNotificationAlert *)self setPrefersSystemAperturePresentation:v146];
  if (v146)
  {
    v147 = [v6 bs_safeDictionaryForKey:*MEMORY[0x277D67418]];
    v148 = [(SBUserNotificationAlert *)self _parseSystemApertureContentDefinition:v147];
    [(SBUserNotificationAlert *)self setSystemApertureContentDefinition:v148];
  }

  v187[0] = MEMORY[0x277D85DD0];
  v187[1] = 3221225472;
  v187[2] = __58__SBUserNotificationAlert_updateWithMessage_requestFlags___block_invoke_147;
  v187[3] = &unk_2783A8C18;
  v187[4] = self;
  v175 = MEMORY[0x223D6F7F0](v187);
  v149 = [v6 objectForKey:*MEMORY[0x277D673E8]];
  v150 = safeStringValue(v149);
  [(SBUserNotificationAlert *)self setRemoteServiceBundleIdentifier:v150];

  v151 = [v6 objectForKey:*MEMORY[0x277D673F0]];
  v152 = safeStringValue(v151);
  [(SBUserNotificationAlert *)self setRemoteViewControllerClassName:v152];

  if ((self->_remoteServiceBundleIdentifier == 0) != (self->_remoteViewControllerClassName == 0))
  {
    [SBUserNotificationAlert updateWithMessage:requestFlags:];
  }

  v153 = [v6 objectForKey:*MEMORY[0x277D67350]];
  v154 = safeStringValue(v153);
  [(SBUserNotificationAlert *)self setExtensionIdentifier:v154];

  extensionIdentifier = self->_extensionIdentifier;
  if (extensionIdentifier)
  {
    v186 = 0;
    v156 = [MEMORY[0x277CCA9C8] extensionWithIdentifier:extensionIdentifier error:&v186];
    v171 = v186;
    if (v156)
    {
      v172 = [v6 objectForKey:*MEMORY[0x277D67358]];
      if (v172)
      {
        v157 = [objc_alloc(MEMORY[0x277CCAAC8]) initForReadingFromData:v172 error:0];
        v170 = MEMORY[0x277CBEB98];
        v169 = objc_opt_class();
        v168 = objc_opt_class();
        v158 = objc_opt_class();
        v159 = objc_opt_class();
        v160 = objc_opt_class();
        v161 = objc_opt_class();
        v162 = [v170 setWithObjects:{v169, v168, v158, v159, v160, v161, objc_opt_class(), 0}];
        v163 = [v157 decodeObjectOfClasses:v162 forKey:*MEMORY[0x277CCA308]];
        [v157 finishDecoding];
      }

      else
      {
        v163 = 0;
      }

      v184[0] = MEMORY[0x277D85DD0];
      v184[1] = 3221225472;
      v184[2] = __58__SBUserNotificationAlert_updateWithMessage_requestFlags___block_invoke_165;
      v184[3] = &unk_2783ADA90;
      v184[4] = self;
      v185 = v175;
      [v156 instantiateViewControllerWithInputItems:v163 connectionHandler:v184];
    }

    else
    {
      v167 = SBLogCFUserNotifications();
      if (os_log_type_enabled(v167, OS_LOG_TYPE_ERROR))
      {
        [(SBUserNotificationAlert *)&self->_extensionIdentifier updateWithMessage:v171 requestFlags:v167];
      }

      v175[2]();
    }
  }

  else
  {
    remoteViewControllerClassName = self->_remoteViewControllerClassName;
    if (remoteViewControllerClassName && (remoteServiceBundleIdentifier = self->_remoteServiceBundleIdentifier) != 0)
    {
      v182[0] = MEMORY[0x277D85DD0];
      v182[1] = 3221225472;
      v182[2] = __58__SBUserNotificationAlert_updateWithMessage_requestFlags___block_invoke_171;
      v182[3] = &unk_2783ADAB8;
      v182[4] = self;
      v183 = v175;
      v166 = [_SBLegacyRemoteAlertContentHostViewController requestViewController:remoteViewControllerClassName fromServiceWithBundleIdentifier:remoteServiceBundleIdentifier connectionHandler:v182];
    }

    else
    {
      v175[2]();
    }
  }
}

uint64_t __58__SBUserNotificationAlert_updateWithMessage_requestFlags___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = [v2 hasPrefix:@"swift-playgrounds"];
  if (v3)
  {
    v4 = SBLogCFUserNotifications();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138412290;
      v7 = v2;
      _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "Filtering swift-playgrounds bundleID '%@' from 'allowed' set for user notification", &v6, 0xCu);
    }
  }

  return v3;
}

void __58__SBUserNotificationAlert_updateWithMessage_requestFlags___block_invoke_147(uint64_t a1)
{
  v5 = *(a1 + 32);
  if ((*(v5 + 448) & 4) != 0)
  {
    v24 = v4;
    v25 = v3;
    v26 = v1;
    v27 = v2;
    v8 = +[SBAlertItemsController sharedInstance];
    v9 = [v8 visibleAlertItem];
    v10 = *(a1 + 32);

    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __58__SBUserNotificationAlert_updateWithMessage_requestFlags___block_invoke_2;
    v22[3] = &unk_2783A92D8;
    v22[4] = *(a1 + 32);
    v11 = v8;
    v23 = v11;
    v12 = MEMORY[0x223D6F7F0](v22);
    v13 = v12;
    if (v9 == v10)
    {
      v15 = MEMORY[0x277D75D28];
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __58__SBUserNotificationAlert_updateWithMessage_requestFlags___block_invoke_3;
      v18[3] = &unk_2783A9C20;
      v21 = v12;
      v16 = v11;
      v17 = *(a1 + 32);
      v19 = v16;
      v20 = v17;
      [v15 _performWithoutDeferringTransitions:v18];
    }

    else
    {
      v12[2](v12);
      [v11 activateAlertItem:*(a1 + 32) animated:1];
    }
  }

  else if (*(v5 + 145))
  {
    v6 = *(a1 + 32);

    [v6 _cleanupCustomContentViewControllers];
  }

  else
  {
    v14 = MEMORY[0x277D67938];

    [v14 activateAlertItem:?];
  }
}

uint64_t __58__SBUserNotificationAlert_updateWithMessage_requestFlags___block_invoke_2(uint64_t a1)
{
  *(*(a1 + 32) + 450) |= 2u;
  result = [*(a1 + 40) deactivateAlertItem:*(a1 + 32) reason:5 animated:0];
  *(*(a1 + 32) + 450) &= ~2u;
  return result;
}

uint64_t __58__SBUserNotificationAlert_updateWithMessage_requestFlags___block_invoke_3(void *a1)
{
  (*(a1[6] + 16))();
  v2 = a1[4];
  v3 = a1[5];

  return [v2 activateAlertItem:v3 animated:0];
}

void __58__SBUserNotificationAlert_updateWithMessage_requestFlags___block_invoke_165(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  if (v7)
  {
    objc_storeStrong((*(a1 + 32) + 392), a3);
    [*(*(a1 + 32) + 392) setUserNotification:?];
    v9 = *(*(a1 + 32) + 392);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __58__SBUserNotificationAlert_updateWithMessage_requestFlags___block_invoke_2_166;
    v14[3] = &unk_2783A9348;
    v10 = &v15;
    v15 = *(a1 + 40);
    [v9 configureWithCompletion:v14];
  }

  else
  {
    v11 = SBLogCFUserNotifications();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __58__SBUserNotificationAlert_updateWithMessage_requestFlags___block_invoke_165_cold_1();
    }

    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __58__SBUserNotificationAlert_updateWithMessage_requestFlags___block_invoke_168;
    v12[3] = &unk_2783A9348;
    v10 = &v13;
    v13 = *(a1 + 40);
    dispatch_async(MEMORY[0x277D85CD0], v12);
  }
}

void __58__SBUserNotificationAlert_updateWithMessage_requestFlags___block_invoke_2_166(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__SBUserNotificationAlert_updateWithMessage_requestFlags___block_invoke_3_167;
  block[3] = &unk_2783A9348;
  v2 = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __58__SBUserNotificationAlert_updateWithMessage_requestFlags___block_invoke_171(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  if (!v6 || a3)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    objc_storeStrong((*(a1 + 32) + 400), a2);
    v7 = [*(*(a1 + 32) + 400) view];
    [v7 setTranslatesAutoresizingMaskIntoConstraints:0];

    v8 = *(*(a1 + 32) + 400);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __58__SBUserNotificationAlert_updateWithMessage_requestFlags___block_invoke_2_172;
    v9[3] = &unk_2783A9348;
    v10 = *(a1 + 40);
    [v8 _getPreferredContentSizeWithReplyBlock:v9];
  }
}

- (void)dealloc
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"_cleanedUp == YES" object:? file:? lineNumber:? description:?];
}

void __34__SBUserNotificationAlert_dealloc__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __34__SBUserNotificationAlert_dealloc__block_invoke_2;
  v4[3] = &unk_2783A8C18;
  v5 = v2;
  [v5 invalidateWithCompletion:v4];
  v3 = [*(a1 + 40) disconnect];
  [*(a1 + 48) stop];
}

- (NSString)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendObject:self->_alertHeader withName:@"title"];
  v5 = [v3 appendObject:self->_alertSource withName:@"source"];
  v6 = [v3 appendObject:self->_sound withName:@"sound" skipIfNil:1];
  v7 = [v3 build];

  return v7;
}

- (id)_publicDescription
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendObject:self->_alertHeader withName:@"title"];
  v5 = [v3 appendObject:self->_alertSource withName:@"source"];
  v6 = [v3 appendInt:self->_originatingPID withName:@"pid"];
  v7 = [v3 appendObject:self->_sound withName:@"sound" skipIfNil:1];
  v8 = [v3 build];

  return v8;
}

- (void)willActivate
{
  if (self->_cleanedUp)
  {
    v3 = SBLogCFUserNotifications();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [SBUserNotificationAlert willActivate];
    }

    [(SBUserNotificationAlert *)self didFailToActivate];
  }

  else
  {
    [(SBUserNotificationAlert *)self _setActivated:1];
    [(SBAlertItem *)self playPresentationSound];
    if ((*(self + 449) & 0x10) != 0 && !self->_idleTimerDisableAssertion)
    {
      v4 = +[SBIdleTimerGlobalCoordinator sharedInstanceIfExists];
      v5 = [v4 acquireIdleTimerDisableAssertionForReason:*MEMORY[0x277D67318]];
      idleTimerDisableAssertion = self->_idleTimerDisableAssertion;
      self->_idleTimerDisableAssertion = v5;
    }

    v7.receiver = self;
    v7.super_class = SBUserNotificationAlert;
    [(SBAlertItem *)&v7 willActivate];
  }
}

- (id)sound
{
  v19 = *MEMORY[0x277D85DE8];
  if (!self->_sound)
  {
    if (self->_soundPath)
    {
      v3 = [MEMORY[0x277CBEBC0] fileURLWithPath:?];
      if (v3)
      {
        soundAlertType = self->_soundAlertType;
        v5 = objc_alloc(MEMORY[0x277D71F58]);
        if (soundAlertType)
        {
          v6 = [v5 initWithType:self->_soundAlertType];
          p_soundAlertTopic = &self->_soundAlertTopic;
        }

        else
        {
          v6 = [v5 initWithType:16];
          p_soundAlertTopic = MEMORY[0x277D72058];
        }

        [v6 setTopic:*p_soundAlertTopic];
        [v6 setExternalToneFileURL:v3];
        [v6 setShouldRepeat:self->_soundRepeatDuration > 0.0];
        [v6 setMaximumDuration:self->_soundRepeatDuration];
        if (self->_vibrationPattern)
        {
          [v6 setExternalVibrationPattern:?];
        }

        else
        {
          [v6 setVibrationIdentifier:*MEMORY[0x277D72070]];
        }

        v11 = objc_alloc(MEMORY[0x277D679C8]);
        v12 = [MEMORY[0x277D71F50] alertWithConfiguration:v6];
        v13 = [v11 initWithToneAlert:v12];
        sound = self->_sound;
        self->_sound = v13;
      }

      else
      {
        v6 = SBLogCFUserNotifications();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
        {
          soundPath = self->_soundPath;
          v17 = 138543362;
          v18 = soundPath;
          _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_INFO, "Unable to create file URL for sound path: '%{public}@'", &v17, 0xCu);
        }
      }
    }

    else if (self->_soundID)
    {
      v8 = [objc_alloc(MEMORY[0x277D679C8]) initWithSystemSoundID:self->_soundID behavior:self->_soundIDBehavior vibrationPattern:self->_vibrationPattern];
      v9 = self->_sound;
      self->_sound = v8;
    }
  }

  v15 = self->_sound;

  return v15;
}

- (void)configure:(BOOL)a3 requirePasscodeForActions:(BOOL)a4
{
  v4 = a3;
  v82 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v6 = 64;
  }

  else
  {
    v6 = 0;
  }

  *(self + 449) = *(self + 449) & 0xBF | v6;
  if (a4)
  {
    v7 = 0x80;
  }

  else
  {
    v7 = 0;
  }

  *(self + 449) = v7 & 0x80 | *(self + 449) & 0x7F;
  v8 = [(SBAlertItem *)self alertController];
  if (v4)
  {
    p_lockScreenAlertHeader = &self->_lockScreenAlertHeader;
    if (self->_lockScreenAlertHeader && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || (p_lockScreenAlertHeader = &self->_alertHeader, self->_alertHeader) && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      [v8 setTitle:*p_lockScreenAlertHeader];
    }

    p_lockScreenAlertMessage = &self->_lockScreenAlertMessage;
    if (self->_lockScreenAlertMessage)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = &OBJC_IVAR___SBUserNotificationAlert__lockScreenAlertMessageDelimiter;
LABEL_22:
        v12 = *(&self->super.super.isa + *v11);
        if (!v12)
        {
          v12 = @" ";
        }

        v13 = *p_lockScreenAlertMessage;
        v14 = v12;
        v15 = [v13 componentsJoinedByString:v14];
        v16 = *p_lockScreenAlertMessage;
        *p_lockScreenAlertMessage = v15;

        goto LABEL_25;
      }

      goto LABEL_25;
    }
  }

  else if (self->_alertHeader)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v8 setTitle:self->_alertHeader];
    }
  }

  p_lockScreenAlertMessage = &self->_alertMessage;
  if (!self->_alertMessage)
  {
    goto LABEL_26;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = &OBJC_IVAR___SBUserNotificationAlert__alertMessageDelimiter;
    goto LABEL_22;
  }

LABEL_25:
  [v8 setMessage:*p_lockScreenAlertMessage];
LABEL_26:
  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  v17 = self->_textFieldDefinitions;
  v18 = [(NSArray *)v17 countByEnumeratingWithState:&v75 objects:v81 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v76;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v76 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v75 + 1) + 8 * i);
        v74[0] = MEMORY[0x277D85DD0];
        v74[1] = 3221225472;
        v74[2] = __63__SBUserNotificationAlert_configure_requirePasscodeForActions___block_invoke;
        v74[3] = &unk_2783ADAE0;
        v74[4] = v22;
        v74[5] = self;
        [v8 addTextFieldWithConfigurationHandler:v74];
      }

      v19 = [(NSArray *)v17 countByEnumeratingWithState:&v75 objects:v81 count:16];
    }

    while (v19);
  }

  requestFlags = self->_requestFlags;
  if ([(NSString *)self->_alternateButtonTitle length])
  {
    v24 = 1;
  }

  else
  {
    v25 = [(NSString *)self->_otherButtonTitle length];
    v24 = (requestFlags & 0x20) == 0 || v25 != 0;
  }

  v27 = [(NSArray *)self->_customButtonDefinitions count];
  if (v27)
  {
    v28 = 0;
  }

  else
  {
    v28 = !v24;
  }

  if (!v28)
  {
    v29 = v27;
    if (!v4 || [(SBUserNotificationAlert *)self _displayActionButtonOnLockScreen])
    {
      if (v29)
      {
        if ([(NSArray *)self->_customButtonDefinitions count])
        {
          v30 = 0;
          v31 = 0x277D75000uLL;
          do
          {
            v32 = [(NSArray *)self->_customButtonDefinitions objectAtIndexedSubscript:v30];
            v33 = [v32 title];
            if ([v33 length])
            {
              v34 = *(v31 + 248);
              v35 = -[SBUserNotificationAlert _uiAlertActionStyleFromSBUserNotificationButtonPresentationStyle:](self, "_uiAlertActionStyleFromSBUserNotificationButtonPresentationStyle:", [v32 presentationStyle]);
              v73[0] = MEMORY[0x277D85DD0];
              v73[1] = 3221225472;
              v73[2] = __63__SBUserNotificationAlert_configure_requirePasscodeForActions___block_invoke_2;
              v73[3] = &unk_2783ADB08;
              v73[4] = self;
              v73[5] = v30;
              v36 = [v34 actionWithTitle:v33 style:v35 handler:v73];
              [v8 addAction:v36];
              if ([v32 isPreferredButton])
              {
                v37 = v31;
                [v8 setPreferredAction:v36];
                v38 = SBLogCFUserNotifications();
                if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
                {
                  v39 = [v36 style];
                  *buf = 134217984;
                  v80 = v39;
                  _os_log_impl(&dword_21ED4E000, v38, OS_LOG_TYPE_DEFAULT, "presenting defaultAction with style: %ld", buf, 0xCu);
                }

                v31 = v37;
              }
            }

            ++v30;
          }

          while (v30 < [(NSArray *)self->_customButtonDefinitions count]);
        }
      }

      else
      {
        if ([(NSString *)self->_alternateButtonTitle length])
        {
          alternateButtonTitle = self->_alternateButtonTitle;
          alternateButtonActionStyle = self->_alternateButtonActionStyle;
          v72[0] = MEMORY[0x277D85DD0];
          v72[1] = 3221225472;
          v72[2] = __63__SBUserNotificationAlert_configure_requirePasscodeForActions___block_invoke_207;
          v72[3] = &unk_2783A8A40;
          v72[4] = self;
          v42 = [MEMORY[0x277D750F8] actionWithTitle:alternateButtonTitle style:alternateButtonActionStyle handler:v72];
          v43 = v42;
          if (self->_alternateButtonAccessibilityIdentifier)
          {
            [v42 setAccessibilityIdentifier:?];
          }

          [v8 addAction:v43];
          if (self->_defaultButtonTag == 1)
          {
            [v8 setPreferredAction:v43];
          }
        }

        if ([(NSString *)self->_otherButtonTitle length])
        {
          otherButtonTitle = self->_otherButtonTitle;
          otherButtonActionStyle = self->_otherButtonActionStyle;
          v71[0] = MEMORY[0x277D85DD0];
          v71[1] = 3221225472;
          v71[2] = __63__SBUserNotificationAlert_configure_requirePasscodeForActions___block_invoke_2_208;
          v71[3] = &unk_2783A8A40;
          v71[4] = self;
          v46 = [MEMORY[0x277D750F8] actionWithTitle:otherButtonTitle style:otherButtonActionStyle handler:v71];
          v47 = v46;
          if (self->_otherButtonAccessibilityIdentifier)
          {
            [v46 setAccessibilityIdentifier:?];
          }

          [v8 addAction:v47];
          if (self->_defaultButtonTag == 2)
          {
            [v8 setPreferredAction:v47];
          }
        }

        v48 = self->_defaultButtonTitle;
        if (!v48)
        {
          if ((self->_requestFlags & 0x20) != 0)
          {
            v48 = 0;
          }

          else
          {
            v49 = [MEMORY[0x277CCA8D8] mainBundle];
            v48 = [v49 localizedStringForKey:@"OK" value:&stru_283094718 table:@"SpringBoard"];
          }
        }

        if ([(NSString *)v48 length])
        {
          defaultButtonActionStyle = self->_defaultButtonActionStyle;
          v70[0] = MEMORY[0x277D85DD0];
          v70[1] = 3221225472;
          v70[2] = __63__SBUserNotificationAlert_configure_requirePasscodeForActions___block_invoke_3;
          v70[3] = &unk_2783A8A40;
          v70[4] = self;
          v51 = [MEMORY[0x277D750F8] actionWithTitle:v48 style:defaultButtonActionStyle handler:v70];
          v52 = v51;
          if (self->_defaultButtonAccessibilityIdentifier)
          {
            [v51 setAccessibilityIdentifier:?];
          }

          [v8 addAction:v52];
          v53 = SBLogCFUserNotifications();
          if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
          {
            v54 = self->_defaultButtonActionStyle;
            *buf = 134217984;
            v80 = v54;
            _os_log_impl(&dword_21ED4E000, v53, OS_LOG_TYPE_DEFAULT, "presenting defaultAction with style: %ld", buf, 0xCu);
          }

          if (self->_defaultButtonTag <= 0)
          {
            [v8 setPreferredAction:v52];
          }
        }
      }
    }
  }

  alertAccessibilityIdentifier = self->_alertAccessibilityIdentifier;
  if (alertAccessibilityIdentifier)
  {
    v56 = [v8 view];
    [v56 setAccessibilityIdentifier:alertAccessibilityIdentifier];
  }

  extensionContentViewController = self->_extensionContentViewController;
  if (extensionContentViewController)
  {
    [(_UIRemoteViewController *)extensionContentViewController setServiceViewShouldShareTouchesWithHost:1];
    viewServiceContentViewController = self->_extensionContentViewController;
LABEL_88:
    [v8 setContentViewController:viewServiceContentViewController];
    goto LABEL_89;
  }

  viewServiceContentViewController = self->_viewServiceContentViewController;
  if (viewServiceContentViewController)
  {
    goto LABEL_88;
  }

LABEL_89:
  v59 = [v8 title];
  if (v59 || ([v8 message], (v59 = objc_claimAutoreleasedReturnValue()) != 0))
  {
  }

  else
  {
    v60 = [v8 actions];
    if (![v60 count])
    {
      v61 = [v8 contentViewController];

      if (v61)
      {
        goto LABEL_92;
      }

      v62 = SBLogCFUserNotifications();
      if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
      {
        alertSource = self->_alertSource;
        *buf = 138543362;
        v80 = alertSource;
        _os_log_impl(&dword_21ED4E000, v62, OS_LOG_TYPE_DEFAULT, "'%{public}@' trying to show malformed CFUserNotification.", buf, 0xCu);
      }

      if (os_variant_has_internal_content())
      {
        v64 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ trying to show malformed CFUserNotification. Please file Radar.", self->_alertSource];
        [v8 setTitle:v64];
      }

      v65 = MEMORY[0x277D750F8];
      v60 = [MEMORY[0x277CCA8D8] mainBundle];
      v66 = [v60 localizedStringForKey:@"OK" value:&stru_283094718 table:@"SpringBoard"];
      v67 = self->_defaultButtonActionStyle;
      v69[0] = MEMORY[0x277D85DD0];
      v69[1] = 3221225472;
      v69[2] = __63__SBUserNotificationAlert_configure_requirePasscodeForActions___block_invoke_219;
      v69[3] = &unk_2783A8A40;
      v69[4] = self;
      v68 = [v65 actionWithTitle:v66 style:v67 handler:v69];
      [v8 addAction:v68];
    }
  }

LABEL_92:
}

void __63__SBUserNotificationAlert_configure_requirePasscodeForActions___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [*(a1 + 32) value];
  [v5 setText:v3];

  v4 = [*(a1 + 32) title];
  [v5 setPlaceholder:v4];

  [v5 setSecureTextEntry:{objc_msgSend(*(a1 + 32), "isSecure")}];
  [v5 setKeyboardAppearance:1];
  [v5 setAutocapitalizationType:{objc_msgSend(*(a1 + 32), "autocapitalizationType")}];
  [v5 setAutocorrectionType:{objc_msgSend(*(a1 + 32), "autocorrectionType")}];
  [v5 setKeyboardType:{objc_msgSend(*(a1 + 32), "keyboardType")}];
  if ([*(a1 + 32) _hasSetMaxLength])
  {
    [v5 sb_setMaxInputLength:{objc_msgSend(*(a1 + 32), "maxLength")}];
    [v5 setDelegate:*(a1 + 40)];
  }
}

- (id)elementIdentifier
{
  v6.receiver = self;
  v6.super_class = SBUserNotificationAlert;
  v3 = [(SBAlertItem *)&v6 elementIdentifier];
  v4 = [v3 stringByAppendingFormat:@"-<%p>", self];

  return v4;
}

- (id)clientIdentifier
{
  alertSource = self->_alertSource;
  if (alertSource)
  {
    v3 = alertSource;
  }

  else
  {
    v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"process with pid:%d", self->_originatingPID];
  }

  return v3;
}

- (id)_createSystemApertureElement
{
  if (![(SBUserNotificationAlert *)self prefersSystemAperturePresentation])
  {
    v11 = 0;
    goto LABEL_46;
  }

  v3 = [(SBUserNotificationAlert *)self systemApertureContentDefinition];
  v4 = objc_alloc_init(MEMORY[0x277D67DF0]);
  v5 = [v3 leadingAssetDefinition];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
    v7 = [(SBUserNotificationAlert *)self _imageForDefinition:v6];
    if (!v7)
    {
LABEL_13:

LABEL_14:
      goto LABEL_15;
    }

    v8 = v5;
    v9 = [objc_alloc(MEMORY[0x277D67E20]) initWithImage:v7];
    v10 = [v6 sb_resolvedTintColor];
    if (v10)
    {
      [v9 setContentColor:v10];
    }

    [v4 setLeadingContentViewProvider:v9];

    v5 = v8;
LABEL_12:

    goto LABEL_13;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v5 caPackagePath];
    if (!v6)
    {
      goto LABEL_14;
    }

    v12 = [MEMORY[0x277CBEBC0] fileURLWithPath:v6];
    if (!v12)
    {
      goto LABEL_14;
    }

    v7 = v12;
    v9 = [objc_alloc(MEMORY[0x277D67DE8]) initWithURL:v12];
    [v4 setLeadingContentViewProvider:v9];
    goto LABEL_12;
  }

LABEL_15:
  v13 = [v3 alertTextAlignment];
  v49 = v13;
  if (v13)
  {
    v14 = safeIntValue(v13);
  }

  else
  {
    v14 = 4;
  }

  v15 = [v3 alertHeader];
  v16 = v15;
  v52 = v4;
  if (v15)
  {
    v17 = v15;
  }

  else
  {
    v17 = [(SBUserNotificationAlert *)self alertHeader];
  }

  v18 = v17;

  v51 = [v3 alertMessage];
  v19 = [v51 length];
  v20 = v18;
  if ([v18 length])
  {
    v21 = [objc_alloc(MEMORY[0x277D67E58]) initWithText:v18 style:v19 != 0];
    [v21 setTextAlignment:v14];
    [v21 setNumberOfLines:0];
    v22 = [v3 alertHeaderColor];
    v23 = [v22 sb_resolvedColor];

    if (v23)
    {
      [v21 setContentColor:v23];
    }

    [v52 setPrimaryContentViewProvider:v21];
  }

  if (v19)
  {
    v24 = [objc_alloc(MEMORY[0x277D67E58]) initWithText:v51 style:3];
    [v24 setTextAlignment:v14];
    [v24 setNumberOfLines:0];
    [v52 setSecondaryContentViewProvider:v24];
  }

  v25 = [MEMORY[0x277CBEB18] array];
  objc_initWeak(&location, self);
  v26 = [v3 defaultButtonTitle];
  if ([v26 length])
  {
    v27 = objc_alloc(MEMORY[0x277D67DD8]);
    v28 = MEMORY[0x277D750C8];
    v55[0] = MEMORY[0x277D85DD0];
    v55[1] = 3221225472;
    v55[2] = __55__SBUserNotificationAlert__createSystemApertureElement__block_invoke_2;
    v55[3] = &unk_2783ADB30;
    objc_copyWeak(&v56, &location);
    v29 = [v28 actionWithTitle:v26 image:0 identifier:0 handler:v55];
    v30 = [v27 initWithDefaultTextActionConfigurationWithAction:v29];

    v32 = __55__SBUserNotificationAlert__createSystemApertureElement__block_invoke(v31, self->_defaultButtonActionStyle);
    if (v32)
    {
      [v30 setContentColor:v32];
    }

    [v25 addObject:v30];

    objc_destroyWeak(&v56);
  }

  v33 = [v3 alternateButtonTitle];
  v34 = v33;
  v35 = v20;
  if (v33)
  {
    v36 = v33;
  }

  else
  {
    v36 = [(SBUserNotificationAlert *)self alternateButtonTitle];
  }

  v37 = v36;

  if ([v37 length])
  {
    v38 = objc_alloc(MEMORY[0x277D67DD8]);
    v39 = MEMORY[0x277D750C8];
    v53[0] = MEMORY[0x277D85DD0];
    v53[1] = 3221225472;
    v53[2] = __55__SBUserNotificationAlert__createSystemApertureElement__block_invoke_3;
    v53[3] = &unk_2783ADB30;
    objc_copyWeak(&v54, &location);
    v40 = [v39 actionWithTitle:v37 image:0 identifier:0 handler:v53];
    v41 = [v38 initWithDefaultTextActionConfigurationWithAction:v40];

    v43 = __55__SBUserNotificationAlert__createSystemApertureElement__block_invoke(v42, self->_alternateButtonActionStyle);
    if (v43)
    {
      [v41 setContentColor:v43];
    }

    [v25 addObject:v41];

    objc_destroyWeak(&v54);
    v35 = v20;
  }

  v44 = [v25 count];
  if (v44)
  {
    if (v44 == 1)
    {
      v45 = [v25 firstObject];
    }

    else
    {
      v45 = [objc_alloc(MEMORY[0x277D67E50]) initWithContentViewProviders:v25];
    }

    [v52 setActionContentViewProvider:v45];
  }

  v11 = [(SBSystemApertureProvidedContentElement *)[_SBUserNotificationAlertElement alloc] initWithIdentifier:self contentProvider:v52];
  v46 = [v3 keyColor];
  v47 = [v46 sb_resolvedColor];

  if (v47)
  {
    [(_SBUserNotificationAlertElement *)v11 setKeyColor:v47];
  }

  -[_SBUserNotificationAlertElement setPreventsAutomaticDismissal:](v11, "setPreventsAutomaticDismissal:", [v3 preventsAutomaticDismissal]);

  objc_destroyWeak(&location);
LABEL_46:

  return v11;
}

id __55__SBUserNotificationAlert__createSystemApertureElement__block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2 == 2)
  {
    v2 = [MEMORY[0x277D75348] systemRedColor];
  }

  else if (a2 == 1)
  {
    v2 = [MEMORY[0x277D75348] systemBlueColor];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void __55__SBUserNotificationAlert__createSystemApertureElement__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained dismissIfNecessaryWithResponse:0];
}

void __55__SBUserNotificationAlert__createSystemApertureElement__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained dismissIfNecessaryWithResponse:1];
}

- (id)_prepareNewAlertControllerWithLockedState:(BOOL)a3 requirePasscodeForActions:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  [(SBUserNotificationAlert *)self _clearRemoteViewControllerIfPresent];
  v9.receiver = self;
  v9.super_class = SBUserNotificationAlert;
  v7 = [(SBAlertItem *)&v9 _prepareNewAlertControllerWithLockedState:v5 requirePasscodeForActions:v4];

  return v7;
}

- (void)_clearRemoteViewControllerIfPresent
{
  v3 = [(SBAlertItem *)self alertController];
  if ((*(self + 448) & 4) == 0)
  {
    if (v3)
    {
      if (self->_extensionContentViewController)
      {
        v8 = v3;
        v4 = [v3 contentViewController];
        extensionContentViewController = self->_extensionContentViewController;

        v3 = v8;
        if (v4 == extensionContentViewController)
        {
          [v8 setContentViewController:0];
          v3 = v8;
        }
      }
    }
  }

  if ((*(self + 448) & 4) == 0)
  {
    if (v3)
    {
      if (self->_viewServiceContentViewController)
      {
        v9 = v3;
        v6 = [v3 contentViewController];
        viewServiceContentViewController = self->_viewServiceContentViewController;

        v3 = v9;
        if (v6 == viewServiceContentViewController)
        {
          [v9 setContentViewController:0];
          v3 = v9;
        }
      }
    }
  }
}

- (void)doCleanupAfterDeactivationAnimation
{
  v3.receiver = self;
  v3.super_class = SBUserNotificationAlert;
  [(SBAlertItem *)&v3 doCleanupAfterDeactivationAnimation];
  [(SBUserNotificationAlert *)self _clearRemoteViewControllerIfPresent];
}

- (void)_setActivated:(BOOL)a3
{
  v3 = a3;
  if (self->_cleanedUp && a3)
  {
    [SBUserNotificationAlert _setActivated:];
  }

  if (v3)
  {
    v6 = 4;
  }

  else
  {
    v6 = 0;
  }

  *(self + 448) = *(self + 448) & 0xFB | v6;
  expirationTimer = self->_expirationTimer;
  if (expirationTimer)
  {
    dispatch_source_cancel(expirationTimer);
    v8 = self->_expirationTimer;
    self->_expirationTimer = 0;

    v6 = *(self + 448) & 4;
  }

  if (v6)
  {
    if (self->_timeout >= 1)
    {
      v9 = dispatch_source_create(MEMORY[0x277D85D38], 2uLL, 0, MEMORY[0x277D85CD0]);
      v10 = self->_expirationTimer;
      self->_expirationTimer = v9;

      v11 = dispatch_time(0x8000000000000000, 1000000000 * self->_timeout);
      dispatch_source_set_timer(self->_expirationTimer, v11, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
      v12 = self->_expirationTimer;
      handler[0] = MEMORY[0x277D85DD0];
      handler[1] = 3221225472;
      handler[2] = __41__SBUserNotificationAlert__setActivated___block_invoke;
      handler[3] = &unk_2783A8C18;
      handler[4] = self;
      dispatch_source_set_event_handler(v12, handler);
      dispatch_resume(self->_expirationTimer);
    }
  }
}

void __41__SBUserNotificationAlert__setActivated___block_invoke(uint64_t a1)
{
  [*(a1 + 32) cancel];
  v2 = *(*(a1 + 32) + 136);
  if (v2)
  {
    dispatch_source_cancel(v2);
    v3 = *(a1 + 32);
    v4 = *(v3 + 136);
    *(v3 + 136) = 0;
  }
}

- (void)_cleanup
{
  if (!self->_cleanedUp)
  {
    [(SBUserNotificationAlert *)self _setActivated:0];
    portWatcher = self->_portWatcher;
    if (portWatcher)
    {
      dispatch_source_cancel(portWatcher);
      v4 = self->_portWatcher;
      self->_portWatcher = 0;
    }

    expirationTimer = self->_expirationTimer;
    if (expirationTimer)
    {
      dispatch_source_cancel(expirationTimer);
      v6 = self->_expirationTimer;
      self->_expirationTimer = 0;
    }

    self->_cleanedUp = 1;
    if ([(SBAlertItem *)self _presentationState]== 4)
    {
      [(SBUserNotificationAlert *)self _cleanupCustomContentViewControllers];
    }

    v7 = [MEMORY[0x277CCAB98] defaultCenter];
    [v7 postNotificationName:@"SBUserNotificationDoneNotification" object:self];
  }
}

- (void)cancel
{
  *(self + 448) |= 2u;
  if (!self->_sentResponse)
  {
    [(SBUserNotificationAlert *)self _sendResponseAndCleanUp:3];
  }

  [(SBAlertItem *)self deactivate];
}

- (void)_sendResponseAndCleanUp:(int)a3 customButtonResponse:(int)a4
{
  v32 = *MEMORY[0x277D85DE8];
  if (!self->_sentResponse)
  {
    v4 = *&a4;
    self->_sentResponse = 1;
    v7 = [(SBAlertItem *)self alertController];
    self->_replyFlags = a3;
    v8 = [v7 textFields];
    v9 = [v8 count];

    if (self->_replyFlags == 3 || v9 < 1)
    {
      v11 = 0;
    }

    else if (v9 == 1)
    {
      v12 = [v7 textFields];
      v13 = [v12 objectAtIndex:0];
      v14 = [v13 text];

      if (v14)
      {
        v11 = v14;
      }

      else
      {
        v11 = &stru_283094718;
      }
    }

    else
    {
      v11 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v9 & 0x7FFFFFFF];
      v15 = 0;
      do
      {
        v16 = [v7 textFields];
        v17 = [v16 objectAtIndex:v15];
        v18 = [v17 text];

        if (v18)
        {
          v19 = v18;
        }

        else
        {
          v19 = &stru_283094718;
        }

        [(__CFString *)v11 addObject:v19];

        ++v15;
      }

      while ((v9 & 0x7FFFFFFF) != v15);
      v4 = v4;
    }

    v20 = SBLogCFUserNotifications();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      v31 = v9;
      _os_log_impl(&dword_21ED4E000, v20, OS_LOG_TYPE_INFO, "Sending back %d textField response(s) to alert item owner.", buf, 8u);
    }

    if ((v4 & 0x80000000) == 0 || v11)
    {
      v23 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v24 = v23;
      if (v11)
      {
        [v23 setObject:v11 forKey:*MEMORY[0x277CBF238]];
      }

      if ((v4 & 0x80000000) == 0)
      {
        v25 = [MEMORY[0x277CCABB0] numberWithInt:v4];
        [v24 setObject:v25 forKey:*MEMORY[0x277D67218]];
      }

      Data = CFPropertyListCreateData(0, v24, kCFPropertyListXMLFormat_v1_0, 0, 0);
      v21 = Data;
      if (Data)
      {
        v22 = ((CFDataGetLength(Data) + 3) & 0xFFFFFFFC) + 28;
      }

      else
      {
        v22 = 28;
      }
    }

    else
    {
      v21 = 0;
      v22 = 28;
    }

    v27 = malloc_type_calloc(v22, 1uLL, 0x71CC9704uLL);
    if (v27)
    {
      v28 = v27;
      *v27 = 18;
      *(v27 + 1) = v22;
      *(v27 + 2) = self->_replyPort;
      *(v27 + 3) = 0;
      *(v27 + 20) = self->_replyFlags;
      if (v21)
      {
        v33.length = CFDataGetLength(v21);
        v33.location = 0;
        CFDataGetBytes(v21, v33, v28 + 28);
      }

      if (mach_msg(v28, 1, v22, 0, 0, 0, 0))
      {
        mach_msg_destroy(v28);
        self->_replyPort = 0;
        v29 = SBLogCFUserNotifications();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          [SBUserNotificationAlert _sendResponseAndCleanUp:customButtonResponse:];
        }
      }

      else
      {
        self->_replyPort = 0;
        v29 = SBLogCFUserNotifications();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
        {
          [SBUserNotificationAlert _sendResponseAndCleanUp:v29 customButtonResponse:?];
        }
      }

      free(v28);
    }

    if (v21)
    {
      CFRelease(v21);
    }

    [(SBUserNotificationAlert *)self _cleanup];
  }
}

- (void)performUnlockAction
{
  v4 = *(self + 450);
  if (self->_unlockActionButtonTag != -1 || (v4 & 1) != 0)
  {
    v13[5] = v2;
    v13[6] = v3;
    *(self + 450) = v4 & 0xFE;
    unlockActionButtonTag = self->_unlockActionButtonTag;
    if ((unlockActionButtonTag + 1) <= 1)
    {
      v8 = [SBApp authenticationController];
      v9 = [v8 isAuthenticated];

      if (v9)
      {
        defaultResponseLaunchURL = self->_defaultResponseLaunchURL;
        if (defaultResponseLaunchURL)
        {
          v13[0] = 0;
          unlockActionButtonTag = SBWorkspaceApplicationForURLWithError(defaultResponseLaunchURL, 0, v13);
          v11 = v13[0];
          if (!unlockActionButtonTag)
          {
            goto LABEL_17;
          }

          goto LABEL_15;
        }

        if (self->_defaultResponseLaunchBundleID)
        {
          v12 = +[SBApplicationController sharedInstance];
          unlockActionButtonTag = [v12 applicationWithBundleIdentifier:self->_defaultResponseLaunchBundleID];

          v11 = 0;
          if (unlockActionButtonTag)
          {
LABEL_15:
            [(SBUserNotificationAlert *)self _activateApplication:unlockActionButtonTag withURL:v11];

            goto LABEL_16;
          }

LABEL_17:
          [(SBUserNotificationAlert *)self _sendResponseAndCleanUp:unlockActionButtonTag];

          return;
        }
      }

      else if (unlockActionButtonTag == -1)
      {
        return;
      }

      v11 = 0;
LABEL_16:
      unlockActionButtonTag = 0;
      goto LABEL_17;
    }

    v11 = 0;
    goto LABEL_17;
  }
}

- (void)dismissIfNecessaryWithResponse:(int)a3 customButtonResponse:(int)a4
{
  v4 = *&a4;
  v5 = *&a3;
  if (!a3)
  {
    defaultResponseLaunchBundleID = self->_defaultResponseLaunchBundleID;
    defaultResponseLaunchURL = self->_defaultResponseLaunchURL;
    if (defaultResponseLaunchBundleID)
    {
      if (!defaultResponseLaunchURL)
      {
        v9 = +[SBApplicationController sharedInstance];
        v10 = [v9 applicationWithBundleIdentifier:self->_defaultResponseLaunchBundleID];

        v11 = 0;
        if (!v10)
        {
          goto LABEL_11;
        }

        goto LABEL_8;
      }

LABEL_7:
      v25 = 0;
      v10 = SBWorkspaceApplicationForURLWithError(defaultResponseLaunchURL, 0, &v25);
      v11 = v25;
      if (!v10)
      {
LABEL_11:

        goto LABEL_12;
      }

LABEL_8:
      v12 = [SBApp authenticationController];
      v13 = [v12 isAuthenticated];

      if ((v13 & 1) == 0)
      {
        *(self + 450) |= 1u;
      }

      v14 = objc_alloc_init(SBLockScreenUnlockRequest);
      [(SBLockScreenUnlockRequest *)v14 setSource:10];
      [(SBLockScreenUnlockRequest *)v14 setIntent:3];
      [(SBLockScreenUnlockRequest *)v14 setName:@"SpringBoard: unlock from SBUserNotificationAlert"];
      objc_initWeak(&location, self);
      v15 = +[SBLockScreenManager sharedInstance];
      v16 = MEMORY[0x277D85DD0];
      v17 = 3221225472;
      v18 = __79__SBUserNotificationAlert_dismissIfNecessaryWithResponse_customButtonResponse___block_invoke;
      v19 = &unk_2783ADB58;
      v20 = self;
      objc_copyWeak(&v23, &location);
      v21 = v10;
      v22 = v11;
      [v15 unlockWithRequest:v14 completion:&v16];

      objc_destroyWeak(&v23);
      objc_destroyWeak(&location);

      goto LABEL_11;
    }

    if (defaultResponseLaunchURL)
    {
      goto LABEL_7;
    }
  }

LABEL_12:
  [(SBUserNotificationAlert *)self _setActivated:0, v16, v17, v18, v19, v20];
  [(SBUserNotificationAlert *)self _sendResponseAndCleanUp:v5 customButtonResponse:v4];
  [(SBAlertItem *)self deactivateForButton];
}

void __79__SBUserNotificationAlert_dismissIfNecessaryWithResponse_customButtonResponse___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 450) &= ~1u;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained _activateApplication:*(a1 + 40) withURL:*(a1 + 48)];
}

- (void)_activateApplication:(id)a3 withURL:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[SBWorkspace mainWorkspace];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __56__SBUserNotificationAlert__activateApplication_withURL___block_invoke;
  v10[3] = &unk_2783AAA48;
  v11 = v5;
  v12 = v6;
  v8 = v6;
  v9 = v5;
  [v7 requestTransitionWithBuilder:v10];
}

void __56__SBUserNotificationAlert__activateApplication_withURL___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setSource:0];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __56__SBUserNotificationAlert__activateApplication_withURL___block_invoke_2;
  v4[3] = &unk_2783A96A0;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  [v3 modifyApplicationContext:v4];
}

void __56__SBUserNotificationAlert__activateApplication_withURL___block_invoke_2(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [[SBDeviceApplicationSceneEntity alloc] initWithApplicationForMainDisplay:*(a1 + 32)];
  v4 = v3;
  v5 = *(a1 + 40);
  if (v5)
  {
    [(SBWorkspaceEntity *)v3 setObject:v5 forActivationSetting:5];
  }

  [v6 setEntity:v4 forLayoutRole:1];
}

- (void)_noteSilencingHardwareButtonPressed
{
  v2 = [(SBUserNotificationAlert *)self sound];
  [v2 stop];
}

- (void)willDeactivateForReason:(int)a3
{
  if ((*(self + 449) & 0x10) != 0)
  {
    idleTimerDisableAssertion = self->_idleTimerDisableAssertion;
    if (idleTimerDisableAssertion)
    {
      [(BSInvalidatable *)idleTimerDisableAssertion invalidate];
      v5 = self->_idleTimerDisableAssertion;
      self->_idleTimerDisableAssertion = 0;
    }
  }

  v6 = [(SBUserNotificationAlert *)self sound];
  [v6 stop];
}

- (void)didDeactivateForReason:(int)a3
{
  if ((*(self + 450) & 2) == 0)
  {
    v4 = *&a3;
    if ((*(self + 448) & 2) == 0)
    {
      v5 = *(self + 448);
      switch(a3)
      {
        case 6:
          if (*(self + 448) & 0x40) != 0 || (*(self + 450))
          {
            [(SBUserNotificationAlert *)self _setActivated:0];
            goto LABEL_19;
          }

          v6 = 1;
          goto LABEL_7;
        case 1:
LABEL_19:
          v7.receiver = self;
          v7.super_class = SBUserNotificationAlert;
          [(SBAlertItem *)&v7 didDeactivateForReason:v4];
          return;
        case 0:
          v6 = (*(self + 448) >> 5) & 1;
LABEL_7:
          [(SBUserNotificationAlert *)self _setActivated:0];
          if (!v6 || (v5 & 4) == 0)
          {
            goto LABEL_19;
          }

          goto LABEL_18;
      }

      [(SBUserNotificationAlert *)self _setActivated:0];
      if ((v5 & 4) == 0 || (v4 | 2) == 3)
      {
        goto LABEL_19;
      }
    }

LABEL_18:
    [(SBUserNotificationAlert *)self _sendResponseAndCleanUp:3];
    goto LABEL_19;
  }

  [(SBUserNotificationAlert *)self _setActivated:0];
}

- (void)didFailToActivate
{
  [(SBUserNotificationAlert *)self _setActivated:0];
  [(SBUserNotificationAlert *)self _sendResponseAndCleanUp:3];
  v3.receiver = self;
  v3.super_class = SBUserNotificationAlert;
  [(SBAlertItem *)&v3 didFailToActivate];
}

- (void)presentationStateDidChangeFromState:(unint64_t)a3 toState:(unint64_t)a4
{
  v6.receiver = self;
  v6.super_class = SBUserNotificationAlert;
  [(SBAlertItem *)&v6 presentationStateDidChangeFromState:a3 toState:?];
  if (a4 == 4 && self->_cleanedUp)
  {
    [(SBUserNotificationAlert *)self _cleanupCustomContentViewControllers];
  }
}

- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5
{
  length = a4.length;
  v7 = a5;
  v8 = a3;
  v9 = [v8 text];
  v10 = [v9 length];

  if (v10 >= length)
  {
    v11 = v10 - length;
  }

  else
  {
    v11 = 0;
  }

  v12 = [v7 length];

  v13 = v12 + v11;
  v14 = [v8 sb_maxInputLength];

  return v13 <= v14;
}

- (void)_cleanupCustomContentViewControllers
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (id)_parseLegacyTextFieldDefinitions:(id)a3 locBundle:(id)a4
{
  v44[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 objectForKey:*MEMORY[0x277CBF230]];
  v9 = [(SBUserNotificationAlert *)self _safeLocalizedValue:v8 withBundle:v7];

  v10 = [v6 objectForKey:*MEMORY[0x277CBF238]];
  v42 = self;
  v40 = v7;
  v11 = [(SBUserNotificationAlert *)self _safeLocalizedValue:v10 withBundle:v7];

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v13 = v9;
  v39 = v9;
  if ((isKindOfClass & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v44[0] = v9;
      v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:1];
      goto LABEL_6;
    }

    v13 = 0;
  }

  v14 = v13;
LABEL_6:
  v15 = v14;
  objc_opt_class();
  v16 = objc_opt_isKindOfClass();
  v17 = v11;
  if ((v16 & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v43 = v11;
      v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v43 count:1];
      goto LABEL_11;
    }

    v17 = 0;
  }

  v18 = v17;
LABEL_11:
  v19 = v18;
  v38 = v11;
  if (![v15 count])
  {
    v21 = 0;
    v23 = 0;
    v25 = 0;
    goto LABEL_37;
  }

  v20 = [v6 objectForKey:*MEMORY[0x277CBF1F8]];
  v21 = safeArrayOfIntNumberValue(v20);

  v22 = [v6 objectForKey:*MEMORY[0x277D67438]];
  v23 = safeArrayOfIntNumberValue(v22);

  v24 = [v6 objectForKey:*MEMORY[0x277D67440]];
  v25 = safeArrayOfIntNumberValue(v24);

  if (![v15 count])
  {
LABEL_37:
    v27 = 0;
    goto LABEL_38;
  }

  v37 = v6;
  v26 = 0;
  v27 = 0;
  v41 = v19;
  do
  {
    if (v19 && [v19 count] > v26)
    {
      v28 = [v19 objectAtIndex:v26];
      v29 = safeStringValue(v28);
    }

    else
    {
      v29 = 0;
    }

    if ([v15 count] <= v26)
    {
      v30 = 0;
    }

    else
    {
      v30 = [v15 objectAtIndex:v26];
    }

    v31 = objc_alloc_init(MEMORY[0x277D66B58]);
    [v31 setValue:v29];
    [v31 setTitle:v30];
    if (((v42->_requestFlags >> v26) & 0x10000) != 0)
    {
      [v31 setSecure:1];
    }

    if (v23 && [v23 count] > v26)
    {
      v32 = [v23 objectAtIndex:v26];
      [v31 setAutocapitalizationType:{objc_msgSend(v32, "intValue")}];

      v19 = v41;
    }

    if (v25 && [v25 count] > v26)
    {
      v33 = [v25 objectAtIndex:v26];
      [v31 setAutocorrectionType:{objc_msgSend(v33, "intValue")}];

      v19 = v41;
    }

    if (v21 && [v21 count] > v26)
    {
      v34 = [v21 objectAtIndex:v26];
      [v31 setKeyboardType:{objc_msgSend(v34, "intValue")}];

      v19 = v41;
    }

    if (!v27)
    {
      v27 = objc_alloc_init(MEMORY[0x277CBEB18]);
    }

    [v27 addObject:v31];

    ++v26;
  }

  while ([v15 count] > v26);
  v6 = v37;
LABEL_38:
  v35 = v27;

  return v27;
}

- (id)_parseTextFieldDefinitions:(id)a3 locBundle:(id)a4
{
  v34 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (!v5)
  {
    v28 = 0;
    goto LABEL_27;
  }

  v25 = v6;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v28 = 0;
    v7 = v25;
    goto LABEL_27;
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v24 = v5;
  obj = v5;
  v8 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (!v8)
  {
    v28 = 0;
    v7 = v25;
    goto LABEL_26;
  }

  v9 = v8;
  v28 = 0;
  v10 = *v30;
  v7 = v25;
  do
  {
    for (i = 0; i != v9; ++i)
    {
      if (*v30 != v10)
      {
        objc_enumerationMutation(obj);
      }

      v12 = *(*(&v29 + 1) + 8 * i);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = [objc_alloc(MEMORY[0x277D66B58]) _initWithDictionary:v12];
        v14 = [v13 title];
        v15 = [(SBUserNotificationAlert *)self _safeLocalizedValue:v14 withBundle:v7];

        v16 = [v13 value];
        v17 = [(SBUserNotificationAlert *)self _safeLocalizedValue:v16 withBundle:v7];

        v18 = [v13 title];
        if (BSEqualObjects())
        {
          v19 = [v13 value];
          v20 = BSEqualObjects();

          v7 = v25;
          if (v20)
          {
            goto LABEL_15;
          }
        }

        else
        {
        }

        [v13 setTitle:v15];
        [v13 setValue:v17];
LABEL_15:
        v21 = [v13 copy];
        if (v21)
        {
          v22 = v28;
          if (!v28)
          {
            v22 = objc_alloc_init(MEMORY[0x277CBEB18]);
          }

          v28 = v22;
          [v22 addObject:v21];
        }

        continue;
      }
    }

    v9 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
  }

  while (v9);
LABEL_26:

  v5 = v24;
LABEL_27:

  return v28;
}

- (id)_parseCustomButtonDefinitions:(id)a3 locBundle:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v22 = a4;
  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v20 = v5;
    v6 = v5;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v7 = [v6 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = 0;
      v10 = *v24;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v24 != v10)
          {
            objc_enumerationMutation(v6);
          }

          v12 = *(*(&v23 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v13 = [objc_alloc(MEMORY[0x277D66B50]) _initWithDictionary:v12];
            v14 = [v13 title];
            v15 = [(SBUserNotificationAlert *)self _safeLocalizedValue:v14 withBundle:v22];

            v16 = [v13 title];
            v17 = BSEqualObjects();

            if ((v17 & 1) == 0)
            {
              [v13 setTitle:v15];
            }

            v18 = [v13 copy];
            if (v18)
            {
              if (!v9)
              {
                v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
              }

              [v9 addObject:v18];
            }
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v8);
    }

    else
    {
      v9 = 0;
    }

    v5 = v20;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (int64_t)_uiAlertActionStyleFromSBUserNotificationButtonPresentationStyle:(int)a3
{
  if (a3 == 2)
  {
    return 1;
  }

  else
  {
    return 2 * (a3 == 1);
  }
}

- (int64_t)_uiAlertActionLayoutDirectionFromSBUserNotificationButtonLayoutDirection:(unsigned int)a3
{
  if ((a3 & 3) != 0)
  {
    return a3 & 3;
  }

  else
  {
    return 3;
  }
}

- (id)_parseSystemApertureContentDefinition:(id)a3
{
  v3 = a3;
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [objc_alloc(MEMORY[0x277D66CE0]) _initWithDictionary:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_parseAssetDefinition:(id)a3
{
  v3 = a3;
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [MEMORY[0x277D66CC0] _definitionFromSerializedDefinition:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_imageDefinitionForPath:(id)a3 catalogPath:(id)a4 catalogImageKey:(id)a5 graphicIconDefinition:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = v12;
  if (v9)
  {
    v14 = [MEMORY[0x277D66CD8] definitionWithImagePath:v9];
LABEL_8:
    v15 = v14;
    goto LABEL_9;
  }

  if (v10 && v11)
  {
    v14 = [MEMORY[0x277D66CD8] definitionWithImageCatalogPath:v10 catalogImageKey:v11];
    goto LABEL_8;
  }

  if ([v12 count])
  {
    v14 = [objc_alloc(MEMORY[0x277D66A10]) _initWithDictionary:v13];
    goto LABEL_8;
  }

  v15 = 0;
LABEL_9:

  return v15;
}

- (id)_imageForDefinition:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(NSMapTable *)self->_imagesByDefinition objectForKey:v4];
    if (v5)
    {
LABEL_7:
      v10 = v5;

      goto LABEL_9;
    }

    v6 = [v4 sb_resolvedImage];
    if (v6)
    {
      v5 = v6;
      imagesByDefinition = self->_imagesByDefinition;
      if (!imagesByDefinition)
      {
        v8 = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
        v9 = self->_imagesByDefinition;
        self->_imagesByDefinition = v8;

        imagesByDefinition = self->_imagesByDefinition;
      }

      [(NSMapTable *)imagesByDefinition setObject:v5 forKey:v4];
      goto LABEL_7;
    }
  }

  v10 = 0;
LABEL_9:

  return v10;
}

void __77__SBUserNotificationAlert_initWithMessage_replyPort_requestFlags_auditToken___block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 124);
  v3[0] = 67109120;
  v3[1] = v2;
  _os_log_debug_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_DEBUG, "Port %d died. Cancelling.", v3, 8u);
}

- (void)updateWithMessage:requestFlags:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)updateWithMessage:requestFlags:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  *v2 = 138543618;
  *(v2 + 4) = v3;
  *(v2 + 12) = 2114;
  *(v2 + 14) = v4;
  OUTLINED_FUNCTION_3_4(&dword_21ED4E000, v6, v2, "Exception %{public}@ encountered while decoding archive value for SBUserNotificationExtensionIdentifierKey: %{public}@", v5);
}

- (void)updateWithMessage:(NSObject *)a3 requestFlags:.cold.3(uint64_t *a1, void *a2, NSObject *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = *a1;
  v5 = [a2 localizedDescription];
  v7 = 138543618;
  v8 = v4;
  v9 = 2114;
  v10 = v5;
  OUTLINED_FUNCTION_3_4(&dword_21ED4E000, a3, v6, "Unable to find extension for identifier: %{public}@ error: %{public}@", &v7);
}

void __58__SBUserNotificationAlert_updateWithMessage_requestFlags___block_invoke_165_cold_1()
{
  OUTLINED_FUNCTION_1_2();
  v7 = *MEMORY[0x277D85DE8];
  v3 = [v2 localizedDescription];
  OUTLINED_FUNCTION_0_14();
  v6 = v1;
  OUTLINED_FUNCTION_3_4(&dword_21ED4E000, v0, v4, "Unable to create remote view controller: %{public}@ - error: %{public}@", v5);
}

- (void)_setActivated:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

@end