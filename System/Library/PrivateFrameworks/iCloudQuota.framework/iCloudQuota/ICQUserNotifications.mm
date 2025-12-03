@interface ICQUserNotifications
+ (void)postUserNotificationWithIdentifier:(id)identifier title:(id)title subTitle:(id)subTitle bodyText:(id)text url:(id)url replaceExisting:(BOOL)existing offerID:(id)d completion:(id)self0;
@end

@implementation ICQUserNotifications

+ (void)postUserNotificationWithIdentifier:(id)identifier title:(id)title subTitle:(id)subTitle bodyText:(id)text url:(id)url replaceExisting:(BOOL)existing offerID:(id)d completion:(id)self0
{
  v42 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  titleCopy = title;
  subTitleCopy = subTitle;
  textCopy = text;
  urlCopy = url;
  dCopy = d;
  completionCopy = completion;
  if (!existing)
  {
    v19 = [_ICQHelperFunctions userDefaultsDictionaryForKey:@"ICQUserNotificationKey"];
    v20 = [v19 objectForKeyedSubscript:dCopy];
    v21 = _ICQGetLogSystem();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      *&buf[4] = dCopy;
      *&buf[12] = 2112;
      *&buf[14] = v20;
      *&buf[22] = 2112;
      v39 = identifierCopy;
      _os_log_impl(&dword_275572000, v21, OS_LOG_TYPE_DEFAULT, "ICQUserNotification for offerID: %@, last notification ID was %@, new ID %@", buf, 0x20u);
    }

    if (v20 && [identifierCopy isEqualToString:v20])
    {
      v22 = _ICQGetLogSystem();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *&buf[4] = identifierCopy;
        _os_log_impl(&dword_275572000, v22, OS_LOG_TYPE_DEFAULT, "Ignoring notification with id %@ since it was already posted and we were asked not to repost.", buf, 0xCu);
      }

      goto LABEL_20;
    }
  }

  v23 = [_ICQHelperFunctions userDefaultsDictionaryForKey:@"ICQUserNotificationKey"];
  v19 = [v23 mutableCopy];

  if (!v19)
  {
    v19 = objc_opt_new();
  }

  [v19 setObject:identifierCopy forKeyedSubscript:dCopy];
  v24 = [v19 copy];
  [_ICQHelperFunctions setUserDefaultsObject:v24 forKey:@"ICQUserNotificationKey"];

  v20 = objc_alloc_init(MEMORY[0x277CE1F60]);
  [v20 setTitle:titleCopy];
  [v20 setSubtitle:subTitleCopy];
  [v20 setBody:textCopy];
  v25 = _ICQGetLogSystem();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *&buf[4] = urlCopy;
    _os_log_impl(&dword_275572000, v25, OS_LOG_TYPE_DEFAULT, "ICQUserNotifications: got URL: %@", buf, 0xCu);
  }

  if (urlCopy)
  {
    v26 = urlCopy;
  }

  else
  {
    v26 = [MEMORY[0x277CBEBC0] URLWithString:@"prefs:root=ROOT"];
  }

  v22 = v26;
  [v20 setDefaultActionURL:v26];
  if (identifierCopy)
  {
    uUIDString = identifierCopy;
  }

  else
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
  }

  v29 = [MEMORY[0x277CE1FC0] requestWithIdentifier:uUIDString content:v20 trigger:0];
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v39 = __Block_byref_object_copy__3;
  v40 = __Block_byref_object_dispose__3;
  v41 = [objc_alloc(MEMORY[0x277CE2028]) initWithBundleIdentifier:@"com.apple.iCloud.FollowUp"];
  v30 = *(*&buf[8] + 40);
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __122__ICQUserNotifications_postUserNotificationWithIdentifier_title_subTitle_bodyText_url_replaceExisting_offerID_completion___block_invoke;
  v35[3] = &unk_27A651E20;
  v36 = completionCopy;
  v37 = buf;
  [v30 addNotificationRequest:v29 withCompletionHandler:v35];

  _Block_object_dispose(buf, 8);
LABEL_20:

  v31 = *MEMORY[0x277D85DE8];
}

void __122__ICQUserNotifications_postUserNotificationWithIdentifier_title_subTitle_bodyText_url_replaceExisting_offerID_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;
}

@end