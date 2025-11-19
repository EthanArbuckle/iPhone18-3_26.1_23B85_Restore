@interface MTEpisodeUnavailableUtil
+ (id)alertTitleForUnavailableReason:(int64_t)a3 podcastTitle:(id)a4;
+ (id)longReasonTextForNoInternet;
+ (id)longStringForUnavailableReason:(int64_t)a3 podcastTitle:(id)a4;
+ (id)stringForUnavailableReason:(int64_t)a3;
+ (int64_t)unavailableReasonForEpisode:(id)a3;
- (BOOL)showDialogForReason:(int64_t)a3 podcastTitle:(id)a4 completion:(id)a5;
- (void)_presentErrorDialogWithTitle:(id)a3 message:(id)a4 handler:(id)a5;
@end

@implementation MTEpisodeUnavailableUtil

+ (int64_t)unavailableReasonForEpisode:(id)a3
{
  v3 = a3;
  if ([v3 isRestricted])
  {
    v4 = 1;
  }

  else if ([v3 feedDeleted] && !objc_msgSend(v3, "isDownloaded"))
  {
    v4 = 3;
  }

  else if (([v3 isDownloaded] & 1) != 0 || (+[MTReachability sharedInstance](MTReachability, "sharedInstance"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "isReachable"), v5, v6))
  {
    if ([v3 isEntitled])
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

+ (id)alertTitleForUnavailableReason:(int64_t)a3 podcastTitle:(id)a4
{
  v5 = a4;
  v6 = v5;
  if (a3 <= 6)
  {
    if (a3 > 4)
    {
      v7 = [MEMORY[0x277CCA8D8] mainBundle];
      if (a3 == 5)
      {
        v8 = v7;
        v9 = @"CANNOT_BE_PLAYED_TITLE";
      }

      else
      {
        v8 = v7;
        v9 = @"CANT_BE_PLAYED_ON_DEVICE";
      }

      goto LABEL_26;
    }

    if (a3 == 3)
    {
      if (![v5 length])
      {
        v7 = [MEMORY[0x277CCA8D8] mainBundle];
        v8 = v7;
        v9 = @"EPISODE_FEEDDELETED_TITLE_NO_PODCAST";
        goto LABEL_26;
      }

      v10 = MEMORY[0x277CCACA8];
      v11 = [MEMORY[0x277CCA8D8] mainBundle];
      v8 = v11;
      v12 = @"EPISODE_FEEDDELETED_TITLE";
    }

    else
    {
      if (a3 != 4)
      {
        goto LABEL_23;
      }

      if (![v5 length])
      {
        v7 = [MEMORY[0x277CCA8D8] mainBundle];
        v8 = v7;
        v9 = @"EPISODE_UNAVAILABLE_TITLE_NO_PODCAST";
        goto LABEL_26;
      }

      v10 = MEMORY[0x277CCACA8];
      v11 = [MEMORY[0x277CCA8D8] mainBundle];
      v8 = v11;
      v12 = @"EPISODE_UNAVAILABLE_TITLE";
    }

    v13 = [v11 localizedStringForKey:v12 value:&stru_2870B1390 table:0];
    v14 = [v10 localizedStringWithFormat:v13, v6];

    goto LABEL_27;
  }

  if (a3 <= 8)
  {
    v7 = [MEMORY[0x277CCA8D8] mainBundle];
    if (a3 == 7)
    {
      v8 = v7;
      v9 = @"SUBSCRIPTION_REQUIRED_LICENSE_ERROR";
    }

    else
    {
      v8 = v7;
      v9 = @"LICENSE_SLOT_ERROR_TITLE";
    }

    goto LABEL_26;
  }

  if (a3 == 9)
  {
    v7 = [MEMORY[0x277CCA8D8] mainBundle];
    v8 = v7;
    v9 = @"LICENSE_DEVICES_ERROR_TITLE";
    goto LABEL_26;
  }

  if (a3 == 10)
  {
    v7 = [MEMORY[0x277CCA8D8] mainBundle];
    v8 = v7;
    v9 = @"WATCH_CANNOT_PLAY_VIDEOS_TITLE";
    goto LABEL_26;
  }

  if (a3 != 12)
  {
LABEL_23:
    v7 = [MEMORY[0x277CCA8D8] mainBundle];
    v8 = v7;
    v9 = @"EPISODE_UNAVAILABLE";
    goto LABEL_26;
  }

  v7 = [MEMORY[0x277CCA8D8] mainBundle];
  v8 = v7;
  v9 = @"SUBSCRIBE_TO_LISTEN";
LABEL_26:
  v14 = [v7 localizedStringForKey:v9 value:&stru_2870B1390 table:0];
LABEL_27:

  return v14;
}

+ (id)stringForUnavailableReason:(int64_t)a3
{
  v3 = 0;
  if (a3 <= 0xD)
  {
    if (((1 << a3) & 0x33F8) != 0)
    {
      v4 = [MEMORY[0x277CCA8D8] mainBundle];
      v5 = v4;
      v6 = @"Unavailable";
LABEL_4:
      v7 = [v4 localizedStringForKey:v6 value:&stru_2870B1390 table:0];
LABEL_5:
      v3 = v7;

      goto LABEL_6;
    }

    if (a3 == 1)
    {
      v4 = [MEMORY[0x277CCA8D8] mainBundle];
      v5 = v4;
      v6 = @"Restricted";
      goto LABEL_4;
    }

    if (a3 == 2)
    {
      v5 = +[MTReachability sharedInstance];
      v7 = [v5 reasonTextForNoInternet];
      goto LABEL_5;
    }
  }

LABEL_6:

  return v3;
}

+ (id)longStringForUnavailableReason:(int64_t)a3 podcastTitle:(id)a4
{
  v6 = a4;
  v7 = 0;
  if (a3 > 8)
  {
    if (a3 <= 11)
    {
      if (a3 == 9)
      {
        v8 = [MEMORY[0x277CCA8D8] mainBundle];
        v9 = v8;
        v10 = @"LICENSE_DEVICES_ERROR";
      }

      else
      {
        if (a3 != 10)
        {
          goto LABEL_19;
        }

        v8 = [MEMORY[0x277CCA8D8] mainBundle];
        v9 = v8;
        v10 = @"WATCH_CANNOT_PLAY_VIDEOS_MESSAGE";
      }

      goto LABEL_18;
    }

    if (a3 != 12)
    {
      if (a3 == 13)
      {
        v11 = MGGetBoolAnswer();
        v12 = @"WIFI_LICENSE_CORRUPTION_ERROR";
        if (v11)
        {
          v12 = @"WLAN_LICENSE_CORRUPTION_ERROR";
        }

        v13 = MEMORY[0x277CCA8D8];
        v14 = v12;
        v15 = [v13 mainBundle];
        v7 = [v15 localizedStringForKey:v14 value:&stru_2870B1390 table:0];
      }

      goto LABEL_19;
    }

    v8 = [MEMORY[0x277CCA8D8] mainBundle];
    v9 = v8;
    v10 = @"SUBSCRIPTION_REQUIRED";
LABEL_18:
    v7 = [v8 localizedStringForKey:v10 value:&stru_2870B1390 table:0];

    goto LABEL_19;
  }

  if (a3 == 1)
  {
    v8 = [MEMORY[0x277CCA8D8] mainBundle];
    v9 = v8;
    v10 = @"ALERT_MESSAGE_RESTRICTED";
    goto LABEL_18;
  }

  if (a3 != 2)
  {
    if (a3 != 8)
    {
      goto LABEL_19;
    }

    v8 = [MEMORY[0x277CCA8D8] mainBundle];
    v9 = v8;
    v10 = @"LICENSE_SLOT_ERROR";
    goto LABEL_18;
  }

  v7 = [a1 longReasonTextForNoInternet];
LABEL_19:

  return v7;
}

+ (id)longReasonTextForNoInternet
{
  v2 = +[MTReachability sharedInstance];
  v3 = [v2 reasonForNoInternet];

  switch(v3)
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
      v4 = [v9 mainBundle];
      v5 = [v4 localizedStringForKey:v10 value:&stru_2870B1390 table:0];

      goto LABEL_10;
    case 3:
      v4 = [MEMORY[0x277CCA8D8] mainBundle];
      v5 = [v4 localizedStringForKey:@"EPISODE_NO_INTERNET" value:&stru_2870B1390 table:0];
LABEL_10:

      goto LABEL_12;
  }

  v5 = 0;
LABEL_12:

  return v5;
}

- (BOOL)showDialogForReason:(int64_t)a3 podcastTitle:(id)a4 completion:(id)a5
{
  v28 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __72__MTEpisodeUnavailableUtil_showDialogForReason_podcastTitle_completion___block_invoke;
  aBlock[3] = &unk_279A44790;
  v10 = v9;
  v24 = v10;
  v25 = a3;
  v11 = _Block_copy(aBlock);
  if ((a3 - 3) >= 8)
  {
    v13 = 0;
    v14 = 0;
    if (!a3)
    {
      goto LABEL_10;
    }

    if (a3 == 2)
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

    if (a3 != 13)
    {
      goto LABEL_4;
    }
  }

  v12 = [objc_opt_class() alertTitleForUnavailableReason:a3 podcastTitle:v8];
  v13 = [objc_opt_class() longStringForUnavailableReason:a3 podcastTitle:v8];
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
      v16 = [objc_opt_class() longStringForUnavailableReason:a3 podcastTitle:v8];
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

- (void)_presentErrorDialogWithTitle:(id)a3 message:(id)a4 handler:(id)a5
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = _MTLogCategoryPlayback();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v10 = 138412546;
    v11 = v6;
    v12 = 2112;
    v13 = v7;
    _os_log_impl(&dword_25E9F0000, v8, OS_LOG_TYPE_ERROR, "Unable to show Episode Unavailable dialog. Title = [%@], Message = [%@]", &v10, 0x16u);
  }

  v9 = *MEMORY[0x277D85DE8];
}

@end