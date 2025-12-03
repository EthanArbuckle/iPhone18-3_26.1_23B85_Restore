@interface MTEpisodeUnavailableUtil
+ (id)alertTitleForUnavailableReason:(int64_t)reason podcastTitle:(id)title;
+ (id)longReasonTextForNoInternet;
+ (id)longStringForUnavailableReason:(int64_t)reason podcastTitle:(id)title;
+ (id)stringForUnavailableReason:(int64_t)reason;
+ (int64_t)unavailableReasonForEpisode:(id)episode;
- (BOOL)showDialogForReason:(int64_t)reason podcastTitle:(id)title completion:(id)completion;
- (void)_presentErrorDialogWithTitle:(id)title message:(id)message handler:(id)handler;
@end

@implementation MTEpisodeUnavailableUtil

+ (int64_t)unavailableReasonForEpisode:(id)episode
{
  episodeCopy = episode;
  if ([episodeCopy isRestricted])
  {
    v4 = 1;
  }

  else if ([episodeCopy feedDeleted] && !objc_msgSend(episodeCopy, "isDownloaded"))
  {
    v4 = 3;
  }

  else if (([episodeCopy isDownloaded] & 1) != 0 || (+[MTReachability sharedInstance](MTReachability, "sharedInstance"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "isReachable"), v5, v6))
  {
    if ([episodeCopy isEntitled])
    {
      v4 = 0;
    }

    else
    {
      v4 = 12;
    }
  }

  else
  {
    v4 = 2;
  }

  return v4;
}

+ (id)alertTitleForUnavailableReason:(int64_t)reason podcastTitle:(id)title
{
  titleCopy = title;
  v6 = titleCopy;
  if (reason <= 6)
  {
    if (reason > 4)
    {
      mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
      if (reason == 5)
      {
        v8 = mainBundle;
        v9 = @"CANNOT_BE_PLAYED_TITLE";
      }

      else
      {
        v8 = mainBundle;
        v9 = @"CANT_BE_PLAYED_ON_DEVICE";
      }

      goto LABEL_26;
    }

    if (reason == 3)
    {
      if (![titleCopy length])
      {
        mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
        v8 = mainBundle;
        v9 = @"EPISODE_FEEDDELETED_TITLE_NO_PODCAST";
        goto LABEL_26;
      }

      v10 = MEMORY[0x277CCACA8];
      mainBundle2 = [MEMORY[0x277CCA8D8] mainBundle];
      v8 = mainBundle2;
      v12 = @"EPISODE_FEEDDELETED_TITLE";
    }

    else
    {
      if (reason != 4)
      {
        goto LABEL_23;
      }

      if (![titleCopy length])
      {
        mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
        v8 = mainBundle;
        v9 = @"EPISODE_UNAVAILABLE_TITLE_NO_PODCAST";
        goto LABEL_26;
      }

      v10 = MEMORY[0x277CCACA8];
      mainBundle2 = [MEMORY[0x277CCA8D8] mainBundle];
      v8 = mainBundle2;
      v12 = @"EPISODE_UNAVAILABLE_TITLE";
    }

    v13 = [mainBundle2 localizedStringForKey:v12 value:&stru_2870B1390 table:0];
    v14 = [v10 localizedStringWithFormat:v13, v6];

    goto LABEL_27;
  }

  if (reason <= 8)
  {
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    if (reason == 7)
    {
      v8 = mainBundle;
      v9 = @"SUBSCRIPTION_REQUIRED_LICENSE_ERROR";
    }

    else
    {
      v8 = mainBundle;
      v9 = @"LICENSE_SLOT_ERROR_TITLE";
    }

    goto LABEL_26;
  }

  if (reason == 9)
  {
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    v8 = mainBundle;
    v9 = @"LICENSE_DEVICES_ERROR_TITLE";
    goto LABEL_26;
  }

  if (reason == 10)
  {
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    v8 = mainBundle;
    v9 = @"WATCH_CANNOT_PLAY_VIDEOS_TITLE";
    goto LABEL_26;
  }

  if (reason != 12)
  {
LABEL_23:
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    v8 = mainBundle;
    v9 = @"EPISODE_UNAVAILABLE";
    goto LABEL_26;
  }

  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v8 = mainBundle;
  v9 = @"SUBSCRIBE_TO_LISTEN";
LABEL_26:
  v14 = [mainBundle localizedStringForKey:v9 value:&stru_2870B1390 table:0];
LABEL_27:

  return v14;
}

+ (id)stringForUnavailableReason:(int64_t)reason
{
  v3 = 0;
  if (reason <= 0xD)
  {
    if (((1 << reason) & 0x33F8) != 0)
    {
      mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
      v5 = mainBundle;
      v6 = @"Unavailable";
LABEL_4:
      reasonTextForNoInternet = [mainBundle localizedStringForKey:v6 value:&stru_2870B1390 table:0];
LABEL_5:
      v3 = reasonTextForNoInternet;

      goto LABEL_6;
    }

    if (reason == 1)
    {
      mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
      v5 = mainBundle;
      v6 = @"Restricted";
      goto LABEL_4;
    }

    if (reason == 2)
    {
      v5 = +[MTReachability sharedInstance];
      reasonTextForNoInternet = [v5 reasonTextForNoInternet];
      goto LABEL_5;
    }
  }

LABEL_6:

  return v3;
}

+ (id)longStringForUnavailableReason:(int64_t)reason podcastTitle:(id)title
{
  titleCopy = title;
  longReasonTextForNoInternet = 0;
  if (reason > 8)
  {
    if (reason <= 11)
    {
      if (reason == 9)
      {
        mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
        v9 = mainBundle;
        v10 = @"LICENSE_DEVICES_ERROR";
      }

      else
      {
        if (reason != 10)
        {
          goto LABEL_19;
        }

        mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
        v9 = mainBundle;
        v10 = @"WATCH_CANNOT_PLAY_VIDEOS_MESSAGE";
      }

      goto LABEL_18;
    }

    if (reason != 12)
    {
      if (reason == 13)
      {
        v11 = MGGetBoolAnswer();
        v12 = @"WIFI_LICENSE_CORRUPTION_ERROR";
        if (v11)
        {
          v12 = @"WLAN_LICENSE_CORRUPTION_ERROR";
        }

        v13 = MEMORY[0x277CCA8D8];
        v14 = v12;
        mainBundle2 = [v13 mainBundle];
        longReasonTextForNoInternet = [mainBundle2 localizedStringForKey:v14 value:&stru_2870B1390 table:0];
      }

      goto LABEL_19;
    }

    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    v9 = mainBundle;
    v10 = @"SUBSCRIPTION_REQUIRED";
LABEL_18:
    longReasonTextForNoInternet = [mainBundle localizedStringForKey:v10 value:&stru_2870B1390 table:0];

    goto LABEL_19;
  }

  if (reason == 1)
  {
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    v9 = mainBundle;
    v10 = @"ALERT_MESSAGE_RESTRICTED";
    goto LABEL_18;
  }

  if (reason != 2)
  {
    if (reason != 8)
    {
      goto LABEL_19;
    }

    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    v9 = mainBundle;
    v10 = @"LICENSE_SLOT_ERROR";
    goto LABEL_18;
  }

  longReasonTextForNoInternet = [self longReasonTextForNoInternet];
LABEL_19:

  return longReasonTextForNoInternet;
}

+ (id)longReasonTextForNoInternet
{
  v2 = +[MTReachability sharedInstance];
  reasonForNoInternet = [v2 reasonForNoInternet];

  switch(reasonForNoInternet)
  {
    case 1:
      v6 = MGGetBoolAnswer();
      v7 = @"EPISODE_AIRPLANE_MODE_WIFI";
      v8 = @"EPISODE_AIRPLANE_MODE_WLAN";
      goto LABEL_7;
    case 2:
      v6 = MGGetBoolAnswer();
      v7 = @"EPISODE_SYSTEM_CELLULAR_DISABLED_WIFI";
      v8 = @"EPISODE_SYSTEM_CELLULAR_DISABLED_WLAN";
LABEL_7:
      if (v6)
      {
        v7 = v8;
      }

      v9 = MEMORY[0x277CCA8D8];
      v10 = v7;
      mainBundle = [v9 mainBundle];
      v5 = [mainBundle localizedStringForKey:v10 value:&stru_2870B1390 table:0];

      goto LABEL_10;
    case 3:
      mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
      v5 = [mainBundle localizedStringForKey:@"EPISODE_NO_INTERNET" value:&stru_2870B1390 table:0];
LABEL_10:

      goto LABEL_12;
  }

  v5 = 0;
LABEL_12:

  return v5;
}

- (BOOL)showDialogForReason:(int64_t)reason podcastTitle:(id)title completion:(id)completion
{
  v28 = *MEMORY[0x277D85DE8];
  titleCopy = title;
  completionCopy = completion;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __72__MTEpisodeUnavailableUtil_showDialogForReason_podcastTitle_completion___block_invoke;
  aBlock[3] = &unk_279A44790;
  v10 = completionCopy;
  v24 = v10;
  reasonCopy = reason;
  v11 = _Block_copy(aBlock);
  if ((reason - 3) >= 8)
  {
    v13 = 0;
    v14 = 0;
    if (!reason)
    {
      goto LABEL_10;
    }

    if (reason == 2)
    {
      v19 = +[MTReachability sharedInstance];
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __72__MTEpisodeUnavailableUtil_showDialogForReason_podcastTitle_completion___block_invoke_2;
      v20[3] = &unk_279A447B8;
      v21 = v10;
      v22 = 2;
      v14 = [v19 showInternetUnreachableDialogWithAcknowledmentBlock:v20];

      v13 = 0;
      v12 = v21;
      goto LABEL_3;
    }

    if (reason != 13)
    {
      goto LABEL_4;
    }
  }

  v12 = [objc_opt_class() alertTitleForUnavailableReason:reason podcastTitle:titleCopy];
  v13 = [objc_opt_class() longStringForUnavailableReason:reason podcastTitle:titleCopy];
  [(MTEpisodeUnavailableUtil *)self _presentErrorDialogWithTitle:v12 message:v13 handler:v11];
  v14 = 1;
LABEL_3:

LABEL_4:
  v15 = _MTLogCategoryPlayback();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    v16 = v13;
    if (!v13)
    {
      v16 = [objc_opt_class() longStringForUnavailableReason:reason podcastTitle:titleCopy];
    }

    *buf = 138412290;
    v27 = v16;
    _os_log_impl(&dword_25E9F0000, v15, OS_LOG_TYPE_ERROR, "Episode Unavailable (%@)", buf, 0xCu);
    if (!v13)
    {
    }
  }

LABEL_10:
  v17 = *MEMORY[0x277D85DE8];
  return v14;
}

uint64_t __72__MTEpisodeUnavailableUtil_showDialogForReason_podcastTitle_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 40));
  }

  return result;
}

uint64_t __72__MTEpisodeUnavailableUtil_showDialogForReason_podcastTitle_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 40));
  }

  return result;
}

- (void)_presentErrorDialogWithTitle:(id)title message:(id)message handler:(id)handler
{
  v14 = *MEMORY[0x277D85DE8];
  titleCopy = title;
  messageCopy = message;
  v8 = _MTLogCategoryPlayback();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v10 = 138412546;
    v11 = titleCopy;
    v12 = 2112;
    v13 = messageCopy;
    _os_log_impl(&dword_25E9F0000, v8, OS_LOG_TYPE_ERROR, "Unable to show Episode Unavailable dialog. Title = [%@], Message = [%@]", &v10, 0x16u);
  }

  v9 = *MEMORY[0x277D85DE8];
}

@end