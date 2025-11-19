@interface SiriUICarDNDUseSiriHeaderViewController
+ (BOOL)shouldShowCarDNDUseSiriHeaderViewController;
- (NSString)_localizedSubtitle;
- (NSString)_localizedTitle;
- (SiriUICarDNDDelegate)delegate;
- (id)_hintContext;
- (void)_addContextProvider;
- (void)_removeContextProvider;
- (void)_sendCardAppearedAnalyticsEvent;
- (void)_setupImageView;
- (void)_setupSubtitleLabel;
- (void)_setupTitleAndSubtitleConstraints;
- (void)_setupTitleLabel;
- (void)_setupView;
- (void)contextProvided:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation SiriUICarDNDUseSiriHeaderViewController

+ (BOOL)shouldShowCarDNDUseSiriHeaderViewController
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = +[SiriUIPreferences sharedPreferences];
  if ([v2 voiceRequestMadeWhileInCarDND])
  {
    v3 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = "+[SiriUICarDNDUseSiriHeaderViewController shouldShowCarDNDUseSiriHeaderViewController]";
      v4 = "%s Not showing SiriUICarDNDUseSiriHeaderViewController. User has tried Hey Siri in CarDND mode";
LABEL_13:
      _os_log_impl(&dword_26948D000, v3, OS_LOG_TYPE_DEFAULT, v4, &buf, 0xCu);
      goto LABEL_14;
    }

    goto LABEL_14;
  }

  if ([v2 numberOfTimesCarDNDSiriCardShown] < 10)
  {
    v5 = [MEMORY[0x277CEF368] sharedPreferences];
    if ([v5 assistantIsEnabled])
    {
      v6 = [MEMORY[0x277CEF368] sharedPreferences];
      if (![v6 disableAssistantWhilePasscodeLocked])
      {
        v9 = AFAssistantRestricted();

        if ((v9 & 1) == 0)
        {
          v16 = 0;
          v17 = &v16;
          v18 = 0x2050000000;
          v10 = getSASSystemStateClass_softClass;
          v19 = getSASSystemStateClass_softClass;
          if (!getSASSystemStateClass_softClass)
          {
            *&buf = MEMORY[0x277D85DD0];
            *(&buf + 1) = 3221225472;
            v21 = __getSASSystemStateClass_block_invoke;
            v22 = &unk_279C59F40;
            v23 = &v16;
            __getSASSystemStateClass_block_invoke(&buf);
            v10 = v17[3];
          }

          v11 = v10;
          _Block_object_dispose(&v16, 8);
          v12 = [v10 sharedSystemState];
          v13 = [v12 isConnectedToCarPlay];

          if (v13)
          {
            v3 = *MEMORY[0x277CEF098];
            if (!os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_14;
            }

            LODWORD(buf) = 136315138;
            *(&buf + 4) = "+[SiriUICarDNDUseSiriHeaderViewController shouldShowCarDNDUseSiriHeaderViewController]";
            v4 = "%s Not showing SiriUICarDNDUseSiriHeaderViewController. CarPlay Session is connected";
            goto LABEL_13;
          }

          v14 = CFPreferencesCopyAppValue(@"VoiceTrigger Enabled", @"com.apple.voicetrigger");
          v15 = [v14 BOOLValue];

          if (v15)
          {
            v7 = 1;
            goto LABEL_15;
          }

          v3 = *MEMORY[0x277CEF098];
          if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(buf) = 136315138;
            *(&buf + 4) = "+[SiriUICarDNDUseSiriHeaderViewController shouldShowCarDNDUseSiriHeaderViewController]";
            v4 = "%s Not showing SiriUICarDNDUseSiriHeaderViewController. Voice Trigger not enabled";
            goto LABEL_13;
          }

          goto LABEL_14;
        }

        goto LABEL_11;
      }
    }

LABEL_11:
    v3 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = "+[SiriUICarDNDUseSiriHeaderViewController shouldShowCarDNDUseSiriHeaderViewController]";
      v4 = "%s Not showing SiriUICarDNDUseSiriHeaderViewController. Siri not supported on lock screen";
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "+[SiriUICarDNDUseSiriHeaderViewController shouldShowCarDNDUseSiriHeaderViewController]";
    v4 = "%s Not showing SiriUICarDNDUseSiriHeaderViewController. Reached max appearances";
    goto LABEL_13;
  }

LABEL_14:
  v7 = 0;
LABEL_15:

  return v7;
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = SiriUICarDNDUseSiriHeaderViewController;
  [(SiriUICarDNDUseSiriHeaderViewController *)&v3 viewDidLoad];
  [(SiriUICarDNDUseSiriHeaderViewController *)self _setupView];
  [(SiriUICarDNDUseSiriHeaderViewController *)self _setupImageView];
  [(SiriUICarDNDUseSiriHeaderViewController *)self _setupTitleLabel];
  [(SiriUICarDNDUseSiriHeaderViewController *)self _setupSubtitleLabel];
  [(SiriUICarDNDUseSiriHeaderViewController *)self _setupTitleAndSubtitleConstraints];
}

- (void)viewDidAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = SiriUICarDNDUseSiriHeaderViewController;
  [(SiriUICarDNDUseSiriHeaderViewController *)&v5 viewDidAppear:a3];
  [(SiriUICarDNDUseSiriHeaderViewController *)self _addContextProvider];
  v4 = dispatch_get_global_queue(0, 0);
  dispatch_async(v4, &__block_literal_global_5);

  [(SiriUICarDNDUseSiriHeaderViewController *)self _sendCardAppearedAnalyticsEvent];
}

void __57__SiriUICarDNDUseSiriHeaderViewController_viewDidAppear___block_invoke()
{
  v0 = +[SiriUIPreferences sharedPreferences];
  [v0 setNumberOfTimesCarDNDSiriCardShown:{objc_msgSend(v0, "numberOfTimesCarDNDSiriCardShown") + 1}];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = SiriUICarDNDUseSiriHeaderViewController;
  [(SiriUICarDNDUseSiriHeaderViewController *)&v4 viewDidDisappear:a3];
  [(SiriUICarDNDUseSiriHeaderViewController *)self _removeContextProvider];
}

- (void)_setupView
{
  v3 = [(SiriUICarDNDUseSiriHeaderViewController *)self view];
  v4 = [MEMORY[0x277D75348] clearColor];
  [v3 setBackgroundColor:v4];

  v5 = objc_alloc(MEMORY[0x277D75D68]);
  v6 = [(SiriUICarDNDUseSiriHeaderViewController *)self view];
  [v6 frame];
  v9 = [v5 initWithFrame:?];

  v7 = [MEMORY[0x277D75210] effectWithStyle:1203];
  [v9 setEffect:v7];

  [v9 _setOverrideUserInterfaceStyle:2];
  v8 = [(SiriUICarDNDUseSiriHeaderViewController *)self view];
  [v8 addSubview:v9];
}

- (void)_setupImageView
{
  v24[2] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277D755E8]);
  v4 = [MEMORY[0x277CCA8D8] bundleWithPath:@"/System/Library/Assistant/SiriUIAssets/SiriUIAssets.bundle"];
  v5 = [MEMORY[0x277D755B8] imageNamed:@"SiriOrb-CarDND" inBundle:v4 compatibleWithTraitCollection:0];
  [v3 setImage:v5];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(SiriUICarDNDUseSiriHeaderViewController *)self _setSiriOrbImageView:v3];
  v6 = [(SiriUICarDNDUseSiriHeaderViewController *)self view];
  v7 = [(SiriUICarDNDUseSiriHeaderViewController *)self _siriOrbImageView];
  [v6 addSubview:v7];

  v8 = [(SiriUICarDNDUseSiriHeaderViewController *)self _siriOrbImageView];
  v9 = [v8 heightAnchor];
  v10 = [v9 constraintEqualToConstant:72.0];
  [v10 setActive:1];

  v11 = [(SiriUICarDNDUseSiriHeaderViewController *)self _siriOrbImageView];
  v12 = [v11 widthAnchor];
  v13 = [v12 constraintEqualToConstant:72.0];
  [v13 setActive:1];

  v14 = MEMORY[0x277CCAAD0];
  v15 = [(SiriUICarDNDUseSiriHeaderViewController *)self _siriOrbImageView];
  v16 = [(SiriUICarDNDUseSiriHeaderViewController *)self view];
  v17 = [v14 constraintWithItem:v15 attribute:3 relatedBy:0 toItem:v16 attribute:3 multiplier:1.0 constant:44.0];

  v18 = MEMORY[0x277CCAAD0];
  v19 = [(SiriUICarDNDUseSiriHeaderViewController *)self _siriOrbImageView];
  v20 = [(SiriUICarDNDUseSiriHeaderViewController *)self view];
  v21 = [v18 constraintWithItem:v19 attribute:9 relatedBy:0 toItem:v20 attribute:9 multiplier:1.0 constant:0.0];

  v22 = [(SiriUICarDNDUseSiriHeaderViewController *)self view];
  v24[0] = v17;
  v24[1] = v21;
  v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];
  [v22 addConstraints:v23];
}

- (void)_setupTitleLabel
{
  v3 = MEMORY[0x277D74300];
  v4 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76A08]];
  v5 = [v4 fontDescriptor];
  v6 = [v5 fontDescriptorWithSymbolicTraits:2];
  v13 = [v3 fontWithDescriptor:v6 size:34.0];

  v7 = [(SiriUICarDNDUseSiriHeaderViewController *)self _localizedTitle];
  v8 = objc_alloc(MEMORY[0x277D756B8]);
  v9 = [v8 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [v9 setTextAlignment:1];
  [v9 setFont:v13];
  [v9 setText:v7];
  [v9 setNumberOfLines:0];
  v10 = [MEMORY[0x277D75348] whiteColor];
  [v9 setTextColor:v10];

  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(SiriUICarDNDUseSiriHeaderViewController *)self _setTitleLabel:v9];
  v11 = [(SiriUICarDNDUseSiriHeaderViewController *)self view];
  v12 = [(SiriUICarDNDUseSiriHeaderViewController *)self _titleLabel];
  [v11 addSubview:v12];
}

- (void)_setupSubtitleLabel
{
  v3 = MEMORY[0x277D74300];
  v4 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76A28]];
  v5 = [v4 fontDescriptor];
  v12 = [v3 fontWithDescriptor:v5 size:22.0];

  v6 = [(SiriUICarDNDUseSiriHeaderViewController *)self _localizedSubtitle];
  v7 = objc_alloc(MEMORY[0x277D756B8]);
  v8 = [v7 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [v8 setTextAlignment:1];
  [v8 setFont:v12];
  [v8 setText:v6];
  [v8 setNumberOfLines:0];
  v9 = [MEMORY[0x277D75348] whiteColor];
  [v8 setTextColor:v9];

  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(SiriUICarDNDUseSiriHeaderViewController *)self _setSubtitleLabel:v8];
  v10 = [(SiriUICarDNDUseSiriHeaderViewController *)self view];
  v11 = [(SiriUICarDNDUseSiriHeaderViewController *)self _subtitleLabel];
  [v10 addSubview:v11];
}

- (void)_setupTitleAndSubtitleConstraints
{
  v39[4] = *MEMORY[0x277D85DE8];
  if (self->_localizedSubtitleDisplayedAboveTitle)
  {
    [(SiriUICarDNDUseSiriHeaderViewController *)self _subtitleLabel];
  }

  else
  {
    [(SiriUICarDNDUseSiriHeaderViewController *)self _titleLabel];
  }
  v3 = ;
  if (self->_localizedSubtitleDisplayedAboveTitle)
  {
    [(SiriUICarDNDUseSiriHeaderViewController *)self _titleLabel];
  }

  else
  {
    [(SiriUICarDNDUseSiriHeaderViewController *)self _subtitleLabel];
  }
  v4 = ;
  v5 = MEMORY[0x277CCAAD0];
  v6 = [(SiriUICarDNDUseSiriHeaderViewController *)self view];
  v37 = [v5 constraintWithItem:v3 attribute:9 relatedBy:0 toItem:v6 attribute:9 multiplier:1.0 constant:0.0];

  v7 = MEMORY[0x277CCAAD0];
  v8 = [(SiriUICarDNDUseSiriHeaderViewController *)self _siriOrbImageView];
  v9 = v3;
  v10 = v8;
  v11 = v9;
  v36 = [v7 constraintWithItem:1.0 attribute:24.0 relatedBy:? toItem:? attribute:? multiplier:? constant:?];

  v12 = MEMORY[0x277CCAAD0];
  v13 = [(SiriUICarDNDUseSiriHeaderViewController *)self view];
  v35 = [v12 constraintWithItem:v11 attribute:5 relatedBy:0 toItem:v13 attribute:5 multiplier:1.0 constant:28.0];

  v14 = MEMORY[0x277CCAAD0];
  v15 = [(SiriUICarDNDUseSiriHeaderViewController *)self view];
  v34 = v11;
  v16 = [v14 constraintWithItem:v11 attribute:6 relatedBy:0 toItem:v15 attribute:6 multiplier:1.0 constant:-28.0];

  v17 = [(SiriUICarDNDUseSiriHeaderViewController *)self view];
  v39[0] = v37;
  v39[1] = v36;
  v39[2] = v35;
  v39[3] = v16;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:4];
  [v17 addConstraints:v18];

  v19 = MEMORY[0x277CCAAD0];
  v20 = [(SiriUICarDNDUseSiriHeaderViewController *)self view];
  v21 = [v19 constraintWithItem:v4 attribute:9 relatedBy:0 toItem:v20 attribute:9 multiplier:1.0 constant:0.0];

  v22 = [MEMORY[0x277CCAAD0] constraintWithItem:v4 attribute:3 relatedBy:0 toItem:v11 attribute:4 multiplier:1.0 constant:4.0];
  v23 = MEMORY[0x277CCAAD0];
  v24 = [(SiriUICarDNDUseSiriHeaderViewController *)self view];
  v25 = [v23 constraintWithItem:v4 attribute:4 relatedBy:0 toItem:v24 attribute:4 multiplier:1.0 constant:-40.0];

  v26 = MEMORY[0x277CCAAD0];
  v27 = [(SiriUICarDNDUseSiriHeaderViewController *)self view];
  v28 = [v26 constraintWithItem:v4 attribute:5 relatedBy:0 toItem:v27 attribute:5 multiplier:1.0 constant:28.0];

  v29 = MEMORY[0x277CCAAD0];
  v30 = [(SiriUICarDNDUseSiriHeaderViewController *)self view];
  v31 = [v29 constraintWithItem:v4 attribute:6 relatedBy:0 toItem:v30 attribute:6 multiplier:1.0 constant:-28.0];

  v32 = [(SiriUICarDNDUseSiriHeaderViewController *)self view];
  v38[0] = v21;
  v38[1] = v22;
  v38[2] = v25;
  v38[3] = v28;
  v38[4] = v31;
  v33 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:5];
  [v32 addConstraints:v33];
}

- (NSString)_localizedTitle
{
  localizedTitle = self->_localizedTitle;
  if (localizedTitle)
  {
    v3 = localizedTitle;
  }

  else
  {
    v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v15 = 0;
    v16 = &v15;
    v17 = 0x2050000000;
    v6 = getVTPreferencesClass_softClass;
    v18 = getVTPreferencesClass_softClass;
    if (!getVTPreferencesClass_softClass)
    {
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __getVTPreferencesClass_block_invoke;
      v14[3] = &unk_279C59F40;
      v14[4] = &v15;
      __getVTPreferencesClass_block_invoke(v14);
      v6 = v16[3];
    }

    v7 = v6;
    _Block_object_dispose(&v15, 8);
    v8 = [v6 sharedPreferences];
    v9 = [MEMORY[0x277CEF368] sharedPreferences];
    v10 = [v9 languageCode];
    v11 = [v8 localizedTriggerPhraseForLanguageCode:v10];

    v12 = [v5 localizedStringForKey:@"CARDND_USE_SIRI_TITLE" value:@"Say “%@”" table:0];
    v3 = [v12 stringByReplacingOccurrencesOfString:@"%@" withString:v11];

    [(SiriUICarDNDUseSiriHeaderViewController *)self _setLocalizedTitle:v3];
  }

  return v3;
}

- (NSString)_localizedSubtitle
{
  localizedSubtitle = self->_localizedSubtitle;
  if (localizedSubtitle)
  {
    v3 = localizedSubtitle;
  }

  else
  {
    v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v3 = [v5 localizedStringForKey:@"CARDND_USE_SIRI_SUBTITLE" value:0 table:0];
    v6 = [v5 localizedStringForKey:@"CARDND_USE_SIRI_TITLE_SUBTITLE_SWAP_ORDER" value:0 table:0];
    self->_localizedSubtitleDisplayedAboveTitle = [v6 isEqualToString:@"1"];

    [(SiriUICarDNDUseSiriHeaderViewController *)self _setLocalizedSubtitle:v3];
  }

  return v3;
}

- (void)_addContextProvider
{
  v3 = [(SiriUICarDNDUseSiriHeaderViewController *)self _contextProvider];

  if (!v3)
  {
    v4 = objc_alloc_init(SiriUICarDNDContextProvider);
    [(SiriUICarDNDUseSiriHeaderViewController *)self _setContextProvider:v4];
  }

  v9 = [(SiriUICarDNDUseSiriHeaderViewController *)self _hintContext];
  if (v9)
  {
    v5 = [(SiriUICarDNDUseSiriHeaderViewController *)self _contextProvider];
    [v5 _setHintContext:v9];
  }

  v6 = [(SiriUICarDNDUseSiriHeaderViewController *)self _contextProvider];
  [v6 setDelegate:self];

  v7 = [MEMORY[0x277CEF220] defaultContextManager];
  v8 = [(SiriUICarDNDUseSiriHeaderViewController *)self _contextProvider];
  [v7 addContextProvider:v8];
}

- (id)_hintContext
{
  v2 = +[SiriUIPreferences sharedPreferences];
  v3 = objc_alloc(MEMORY[0x277CBEA60]);
  v4 = [v3 initWithObjects:{*MEMORY[0x277D47D08], *MEMORY[0x277D47D10], *MEMORY[0x277D47D20], *MEMORY[0x277D47D18], 0}];
  v5 = [v2 integerForKey:@"carDNDSubtitleIndex"];
  v6 = [v4 objectAtIndexedSubscript:v5];
  [v2 setObject:v6 forKey:@"carDNDHintDomainKey"];
  [v2 setInteger:(v5 + 1) % objc_msgSend(v4 forKey:{"count"), @"carDNDSubtitleIndex"}];
  v7 = objc_alloc_init(MEMORY[0x277D47258]);
  [v7 setUtteranceDomainIdentifier:v6];

  return v7;
}

- (void)_removeContextProvider
{
  v3 = [MEMORY[0x277CEF220] defaultContextManager];
  v4 = [(SiriUICarDNDUseSiriHeaderViewController *)self _contextProvider];
  [v3 removeContextProvider:v4];

  [(SiriUICarDNDUseSiriHeaderViewController *)self _setContextProvider:0];
}

- (void)_sendCardAppearedAnalyticsEvent
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"_Bool soft_AnalyticsSendEventLazy(NSString *__strong, NSDictionary<NSString *, NSObject *> *(^__strong)(void))"}];
  [v0 handleFailureInFunction:v1 file:@"SiriUICarDNDUseSiriHeaderViewController.m" lineNumber:30 description:{@"%s", dlerror()}];

  __break(1u);
}

- (void)contextProvided:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained controllerDidProvideContext:self];
}

- (SiriUICarDNDDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end