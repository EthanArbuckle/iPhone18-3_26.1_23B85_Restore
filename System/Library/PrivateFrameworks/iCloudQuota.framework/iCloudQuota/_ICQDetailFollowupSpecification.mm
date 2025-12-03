@interface _ICQDetailFollowupSpecification
+ (id)replaceWordsIn:(id)in with:(id)with;
- (_ICQDetailFollowupSpecification)initWithServerDictionary:(id)dictionary;
- (id)mesgWithKey:(id)key;
- (id)subTitleWithKey:(id)key;
- (id)titleWithKey:(id)key;
- (void)postFollowupWithController:(id)controller replaceExisting:(BOOL)existing completion:(id)completion;
- (void)setFollowUpInfo:(id)info;
- (void)setLockScreenInfo:(id)info;
@end

@implementation _ICQDetailFollowupSpecification

- (_ICQDetailFollowupSpecification)initWithServerDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = _ICQGetLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_275572000, v5, OS_LOG_TYPE_DEFAULT, "request for detail notification object", buf, 2u);
  }

  v13.receiver = self;
  v13.super_class = _ICQDetailFollowupSpecification;
  v6 = [(_ICQFollowupSpecification *)&v13 initWithServerDictionary:dictionaryCopy];
  v7 = v6;
  if (v6)
  {
    [(_ICQDetailFollowupSpecification *)v6 setBundleId:@"com.apple.mobileslideshow"];
    v8 = [dictionaryCopy objectForKeyedSubscript:@"lockScreenInfo"];

    if (v8)
    {
      v9 = [dictionaryCopy objectForKeyedSubscript:@"lockScreenInfo"];
      [(_ICQDetailFollowupSpecification *)v7 setLockScreenInfo:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"followUpInfo"];

    if (v10)
    {
      v11 = [dictionaryCopy objectForKeyedSubscript:@"followUpInfo"];
      [(_ICQDetailFollowupSpecification *)v7 setFollowUpInfo:v11];
    }
  }

  return v7;
}

- (void)setLockScreenInfo:(id)info
{
  v45[1] = *MEMORY[0x277D85DE8];
  infoCopy = info;
  objc_storeStrong(&self->_lockScreenInfo, info);
  v6 = [infoCopy objectForKeyedSubscript:@"lockTitle"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v8 = [infoCopy objectForKeyedSubscript:@"lockTitle"];
    v9 = [_ICQHelperFunctions parseTemplates:v8];
    [(_ICQDetailFollowupSpecification *)self setTitleTemplates:v9];
  }

  else
  {
    v10 = [infoCopy objectForKeyedSubscript:@"lockTitle"];
    objc_opt_class();
    v11 = objc_opt_isKindOfClass();

    if (v11)
    {
      v44 = @"default";
      v12 = [infoCopy objectForKeyedSubscript:@"lockTitle"];
      v45[0] = v12;
      v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v45 forKeys:&v44 count:1];
      [(_ICQDetailFollowupSpecification *)self setTitleTemplates:v13];
    }

    else
    {
      v12 = _ICQGetLogSystem();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v38) = 0;
        _os_log_impl(&dword_275572000, v12, OS_LOG_TYPE_DEFAULT, "lockTitle field not present or of undefined type in lockScreenInfo", &v38, 2u);
      }
    }
  }

  v14 = [infoCopy objectForKeyedSubscript:@"lockSubTitle"];
  objc_opt_class();
  v15 = objc_opt_isKindOfClass();

  if (v15)
  {
    v16 = [infoCopy objectForKeyedSubscript:@"lockSubTitle"];
    v17 = [_ICQHelperFunctions parseTemplates:v16];
LABEL_12:
    v20 = v17;
    [(_ICQDetailFollowupSpecification *)self setSubTitleTemplates:v17];

    goto LABEL_13;
  }

  v18 = [infoCopy objectForKeyedSubscript:@"lockSubTitle"];
  objc_opt_class();
  v19 = objc_opt_isKindOfClass();

  if (v19)
  {
    v42 = @"default";
    v16 = [infoCopy objectForKeyedSubscript:@"lockSubTitle"];
    v43 = v16;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
    goto LABEL_12;
  }

  v16 = _ICQGetLogSystem();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v38) = 0;
    _os_log_impl(&dword_275572000, v16, OS_LOG_TYPE_DEFAULT, "lockSubTitle field not present or of undefined type in lockScreenInfo", &v38, 2u);
  }

LABEL_13:

  v21 = [infoCopy objectForKeyedSubscript:@"lockMessage"];
  objc_opt_class();
  v22 = objc_opt_isKindOfClass();

  if (v22)
  {
    v23 = [infoCopy objectForKeyedSubscript:@"lockMessage"];
    v24 = [_ICQHelperFunctions parseTemplates:v23];
LABEL_17:
    v27 = v24;
    [(_ICQDetailFollowupSpecification *)self setMesgTemplates:v24];

    goto LABEL_18;
  }

  v25 = [infoCopy objectForKeyedSubscript:@"lockMessage"];
  objc_opt_class();
  v26 = objc_opt_isKindOfClass();

  if (v26)
  {
    v40 = @"default";
    v23 = [infoCopy objectForKeyedSubscript:@"lockMessage"];
    v41 = v23;
    v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v41 forKeys:&v40 count:1];
    goto LABEL_17;
  }

  v23 = _ICQGetLogSystem();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v38) = 0;
    _os_log_impl(&dword_275572000, v23, OS_LOG_TYPE_DEFAULT, "lockMessage field not present or of undefined type in lockScreenInfo", &v38, 2u);
  }

LABEL_18:

  v28 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v29 = [infoCopy objectForKeyedSubscript:@"actParams"];
  if (v29)
  {
    v30 = v29;
    v31 = [infoCopy objectForKeyedSubscript:@"action"];

    if (v31)
    {
      v32 = [infoCopy objectForKeyedSubscript:@"actParams"];
      [v28 setObject:v32 forKey:@"actParams"];

      v33 = [infoCopy objectForKeyedSubscript:@"action"];
      [v28 setObject:v33 forKey:@"action"];

      [v28 setObject:&stru_288431E38 forKey:@"display"];
      v34 = _ICQLinkForServerMessageParameter(v28);
      [(_ICQFollowupSpecification *)self setNoteActivateLink:v34];
    }
  }

  v35 = [infoCopy objectForKeyedSubscript:ICQFollowupNotifyingAppIdKey];
  if (v35)
  {
    v36 = _ICQGetLogSystem();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      v38 = 138412290;
      v39 = v35;
      _os_log_impl(&dword_275572000, v36, OS_LOG_TYPE_DEFAULT, "Lockscreen info contains notifyingAppId %@", &v38, 0xCu);
    }

    [(_ICQFollowupSpecification *)self setNotifyingAppId:v35];
  }

  v37 = *MEMORY[0x277D85DE8];
}

- (void)setFollowUpInfo:(id)info
{
  v26[1] = *MEMORY[0x277D85DE8];
  infoCopy = info;
  objc_storeStrong(&self->_followUpInfo, info);
  v6 = [infoCopy objectForKeyedSubscript:@"title"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v8 = [infoCopy objectForKeyedSubscript:@"title"];
    v9 = [_ICQHelperFunctions parseTemplates:v8];
    [(_ICQDetailFollowupSpecification *)self setFollowupTitleTemplates:v9];
  }

  else
  {
    v10 = [infoCopy objectForKeyedSubscript:@"title"];
    objc_opt_class();
    v11 = objc_opt_isKindOfClass();

    if (v11)
    {
      v25 = @"default";
      v12 = [infoCopy objectForKeyedSubscript:@"title"];
      v26[0] = v12;
      v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:&v25 count:1];
      [(_ICQDetailFollowupSpecification *)self setFollowupTitleTemplates:v13];
    }

    else
    {
      v12 = _ICQGetLogSystem();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *v22 = 0;
        _os_log_impl(&dword_275572000, v12, OS_LOG_TYPE_DEFAULT, "title field not present or of undefined type in followups", v22, 2u);
      }
    }
  }

  v14 = [infoCopy objectForKeyedSubscript:@"mesg"];
  objc_opt_class();
  v15 = objc_opt_isKindOfClass();

  if (v15)
  {
    v16 = [infoCopy objectForKeyedSubscript:@"mesg"];
    v17 = [_ICQHelperFunctions parseTemplates:v16];
LABEL_12:
    v20 = v17;
    [(_ICQDetailFollowupSpecification *)self setFollowupMesgTemplates:v17];

    goto LABEL_13;
  }

  v18 = [infoCopy objectForKeyedSubscript:@"mesg"];
  objc_opt_class();
  v19 = objc_opt_isKindOfClass();

  if (v19)
  {
    v23 = @"default";
    v16 = [infoCopy objectForKeyedSubscript:@"mesg"];
    v24 = v16;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
    goto LABEL_12;
  }

  v16 = _ICQGetLogSystem();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *v22 = 0;
    _os_log_impl(&dword_275572000, v16, OS_LOG_TYPE_DEFAULT, "mesg field not present or of undefined type in followups", v22, 2u);
  }

LABEL_13:

  v21 = *MEMORY[0x277D85DE8];
}

+ (id)replaceWordsIn:(id)in with:(id)with
{
  v21 = *MEMORY[0x277D85DE8];
  inCopy = in;
  withCopy = with;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = [withCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      v10 = 0;
      v11 = inCopy;
      do
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(withCopy);
        }

        v12 = *(*(&v16 + 1) + 8 * v10);
        v13 = [withCopy objectForKey:v12];
        inCopy = [v11 stringByReplacingOccurrencesOfString:v12 withString:v13];

        ++v10;
        v11 = inCopy;
      }

      while (v8 != v10);
      v8 = [withCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v14 = *MEMORY[0x277D85DE8];

  return inCopy;
}

- (id)titleWithKey:(id)key
{
  keyCopy = key;
  titleTemplates = [(_ICQDetailFollowupSpecification *)self titleTemplates];
  v6 = [titleTemplates objectForKeyedSubscript:keyCopy];

  titleTemplates2 = [(_ICQDetailFollowupSpecification *)self titleTemplates];
  v8 = titleTemplates2;
  if (v6)
  {
    v9 = keyCopy;
  }

  else
  {
    v9 = @"default";
  }

  v10 = [titleTemplates2 objectForKeyedSubscript:v9];

  return v10;
}

- (id)subTitleWithKey:(id)key
{
  keyCopy = key;
  subTitleTemplates = [(_ICQDetailFollowupSpecification *)self subTitleTemplates];
  v6 = [subTitleTemplates objectForKeyedSubscript:keyCopy];

  subTitleTemplates2 = [(_ICQDetailFollowupSpecification *)self subTitleTemplates];
  v8 = subTitleTemplates2;
  if (v6)
  {
    v9 = keyCopy;
  }

  else
  {
    v9 = @"default";
  }

  v10 = [subTitleTemplates2 objectForKeyedSubscript:v9];

  return v10;
}

- (id)mesgWithKey:(id)key
{
  keyCopy = key;
  mesgTemplates = [(_ICQDetailFollowupSpecification *)self mesgTemplates];
  v6 = [mesgTemplates objectForKeyedSubscript:keyCopy];

  mesgTemplates2 = [(_ICQDetailFollowupSpecification *)self mesgTemplates];
  v8 = mesgTemplates2;
  if (v6)
  {
    v9 = keyCopy;
  }

  else
  {
    v9 = @"default";
  }

  v10 = [mesgTemplates2 objectForKeyedSubscript:v9];

  return v10;
}

- (void)postFollowupWithController:(id)controller replaceExisting:(BOOL)existing completion:(id)completion
{
  controllerCopy = controller;
  completionCopy = completion;
  v10 = _ICQGetLogSystem();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_275572000, v10, OS_LOG_TYPE_DEFAULT, "Posting detail notification", buf, 2u);
  }

  bundleId = [(_ICQDetailFollowupSpecification *)self bundleId];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __89___ICQDetailFollowupSpecification_postFollowupWithController_replaceExisting_completion___block_invoke;
  v14[3] = &unk_27A652F48;
  v14[4] = self;
  v15 = controllerCopy;
  existingCopy = existing;
  v16 = completionCopy;
  v12 = completionCopy;
  v13 = controllerCopy;
  [_ICQDeviceInfo getInfoWithBundleId:bundleId completion:v14];
}

@end