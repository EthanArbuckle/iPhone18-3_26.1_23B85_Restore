@interface BBSectionIcon(UserNotificationsUIKit)
- (BOOL)nc_iconWouldUseApplicationIdentifierForFormat:()UserNotificationsUIKit;
- (id)nc_imageForFormat:()UserNotificationsUIKit scale:userInterfaceStyle:usedUserInterfaceStyle:;
- (void)nc_imageForFormat:()UserNotificationsUIKit scale:userInterfaceStyle:completionOnMain:;
@end

@implementation BBSectionIcon(UserNotificationsUIKit)

- (BOOL)nc_iconWouldUseApplicationIdentifierForFormat:()UserNotificationsUIKit
{
  v1 = [self _bestVariantForFormat:?];
  imageData = [v1 imageData];
  imagePath = [v1 imagePath];
  imageName = [v1 imageName];
  bundlePath = [v1 bundlePath];
  applicationIdentifier = [v1 applicationIdentifier];
  v7 = ![imageData length] && (!imageName || !bundlePath) && !objc_msgSend(imagePath, "length") && objc_msgSend(applicationIdentifier, "length") != 0;

  return v7;
}

- (void)nc_imageForFormat:()UserNotificationsUIKit scale:userInterfaceStyle:completionOnMain:
{
  v10 = a6;
  v11 = _NCImageGenerationQueue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __101__BBSectionIcon_UserNotificationsUIKit__nc_imageForFormat_scale_userInterfaceStyle_completionOnMain___block_invoke;
  block[3] = &unk_2783712D8;
  v14 = v10;
  v15 = a4;
  v16 = a2;
  v17 = a5;
  block[4] = self;
  v12 = v10;
  dispatch_async(v11, block);
}

- (id)nc_imageForFormat:()UserNotificationsUIKit scale:userInterfaceStyle:usedUserInterfaceStyle:
{
  v77 = *MEMORY[0x277D85DE8];
  v9 = [self _bestVariantForFormat:?];
  imageData = [v9 imageData];
  imagePath = [v9 imagePath];
  imageName = [v9 imageName];
  bundlePath = [v9 bundlePath];
  applicationIdentifier = [v9 applicationIdentifier];
  systemImageName = [v9 systemImageName];
  v67 = [v9 uti];
  dateComponentDetails = [v9 dateComponentDetails];
  isPrecomposed = [v9 isPrecomposed];
  v68 = systemImageName;
  v69 = applicationIdentifier;
  if (imageName)
  {
    v17 = imageName;
  }

  else
  {
    v17 = systemImageName;
  }

  v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"sectionInfoIcon.%@.%@.%@.%@.%ld.%d", v17, bundlePath, imagePath, applicationIdentifier, a4, isPrecomposed];
  v19 = [imageData length];
  v70 = v18;
  if (v19)
  {
    v20 = [MEMORY[0x277D755B8] imageWithData:imageData scale:a2];
    if (isPrecomposed)
    {
LABEL_7:
      v22 = 0;
LABEL_63:
      v36 = a6;
      v35 = v69;
      goto LABEL_64;
    }

LABEL_6:
    v21 = v20;
    v20 = _NCIconImageForImageWithFormat(v20, a4, 0);

    if (v19)
    {
      goto LABEL_7;
    }

LABEL_62:
    v48 = +[NCUIMappedImageCache sharedCache];
    [v48 setImage:v20 forKey:v70];

    v49 = +[NCUIMappedImageCache sharedCache];
    v50 = [v49 imageForKey:v70];

    v22 = 0;
    v20 = v50;
    goto LABEL_63;
  }

  v64 = imagePath;
  v23 = +[NCUIMappedImageCache sharedCache];
  v20 = [v23 imageForKey:v18];

  if (v20)
  {
    v22 = 0;
    imagePath = v64;
    goto LABEL_63;
  }

  if (imageName && bundlePath)
  {
    v24 = [MEMORY[0x277CCA8D8] bundleWithPath:bundlePath];
    imagePath = v64;
    if (v24)
    {
      v25 = [MEMORY[0x277D755B8] imageNamed:imageName inBundle:v24];
      if (v25)
      {
        v20 = v25;
        [v25 size];
        v27 = v26;
        [v20 size];
        if (v27 != v28)
        {
          v62 = v24;
          v29 = *MEMORY[0x277D77DC0];
          if (os_log_type_enabled(*MEMORY[0x277D77DC0], OS_LOG_TYPE_ERROR))
          {
            v30 = v29;
            v24 = v62;
            [BBSectionIcon(UserNotificationsUIKit) nc_imageForFormat:imageName scale:v30 userInterfaceStyle:v62 usedUserInterfaceStyle:?];
LABEL_60:

            goto LABEL_61;
          }

LABEL_59:
          v24 = v62;
          goto LABEL_60;
        }

        [v20 size];
        if (a4 > 32)
        {
          if (a4 == 34)
          {
            *&v44 = 56.0;
            goto LABEL_56;
          }

          if (a4 == 33)
          {
            *&v44 = 176.0;
LABEL_56:
            v41 = *&v44;
            goto LABEL_57;
          }
        }

        else
        {
          v41 = 40.0;
          if (a4 == 14 || a4 == 17)
          {
LABEL_57:
            if (v40 >= v41)
            {
              goto LABEL_60;
            }

            v62 = v24;
            v47 = *MEMORY[0x277D77DC0];
            if (!os_log_type_enabled(*MEMORY[0x277D77DC0], OS_LOG_TYPE_ERROR))
            {
              goto LABEL_59;
            }

            if (a4 > 32)
            {
              if (a4 == 34)
              {
                v58 = 0x404C000000000000;
                goto LABEL_83;
              }

              if (a4 == 33)
              {
                v58 = 0x4066000000000000;
LABEL_83:
                v61 = v58;
                goto LABEL_84;
              }
            }

            else
            {
              if (a4 == 14)
              {
                v58 = 0x4044000000000000;
                goto LABEL_83;
              }

              v61 = 0x4044000000000000;
              if (a4 == 17)
              {
LABEL_84:
                v59 = v47;
                bundlePath2 = [v62 bundlePath];
                *buf = 134218498;
                v72 = v61;
                v73 = 2114;
                v74 = imageName;
                v75 = 2114;
                v76 = bundlePath2;
                _os_log_error_impl(&dword_21E77E000, v59, OS_LOG_TYPE_ERROR, "Notification icon is smaller than expanded size of %lf: %{public}@ in bundle %{public}@", buf, 0x20u);

                v24 = v62;
                imagePath = v64;
                goto LABEL_60;
              }
            }

            v58 = 0x4043000000000000;
            goto LABEL_83;
          }
        }

        *&v44 = 38.0;
        goto LABEL_56;
      }

      v37 = *MEMORY[0x277D77DC0];
      if (os_log_type_enabled(*MEMORY[0x277D77DC0], OS_LOG_TYPE_ERROR))
      {
        [BBSectionIcon(UserNotificationsUIKit) nc_imageForFormat:imageName scale:v37 userInterfaceStyle:v24 usedUserInterfaceStyle:?];
      }
    }

    v20 = 0;
    goto LABEL_60;
  }

  imagePath = v64;
  if ([v64 length])
  {
    v31 = [MEMORY[0x277D755B8] imageWithContentsOfFile:v64];
    if (v31)
    {
      v20 = v31;
      [v31 size];
      v33 = v32;
      [v20 size];
      if (v33 != v34)
      {
        if (os_log_type_enabled(*MEMORY[0x277D77DC0], OS_LOG_TYPE_ERROR))
        {
          [BBSectionIcon(UserNotificationsUIKit) nc_imageForFormat:scale:userInterfaceStyle:usedUserInterfaceStyle:];
        }

        goto LABEL_61;
      }

      [v20 size];
      if (a4 > 32)
      {
        if (a4 == 34)
        {
          *&v43 = 56.0;
          goto LABEL_51;
        }

        if (a4 == 33)
        {
          *&v43 = 176.0;
LABEL_51:
          v39 = *&v43;
          goto LABEL_52;
        }
      }

      else
      {
        v39 = 40.0;
        if (a4 == 14 || a4 == 17)
        {
LABEL_52:
          if (v38 < v39)
          {
            v46 = *MEMORY[0x277D77DC0];
            if (os_log_type_enabled(*MEMORY[0x277D77DC0], OS_LOG_TYPE_ERROR))
            {
              [BBSectionIcon(UserNotificationsUIKit) nc_imageForFormat:a4 scale:v64 userInterfaceStyle:v46 usedUserInterfaceStyle:?];
            }
          }

LABEL_61:
          if (isPrecomposed)
          {
            goto LABEL_62;
          }

          goto LABEL_6;
        }
      }

      *&v43 = 38.0;
      goto LABEL_51;
    }

    if (os_log_type_enabled(*MEMORY[0x277D77DC0], OS_LOG_TYPE_ERROR))
    {
      [BBSectionIcon(UserNotificationsUIKit) nc_imageForFormat:scale:userInterfaceStyle:usedUserInterfaceStyle:];
    }

LABEL_26:
    v20 = 0;
    goto LABEL_61;
  }

  if ([v69 length])
  {
    NCIconImageForApplicationIdentifierWithFormat(v69, a4, a5);
    v20 = v35 = v69;
    v22 = 1;
    v36 = a6;
LABEL_64:
    v42 = v68;
    goto LABEL_65;
  }

  if (![v68 length])
  {
    if ([v67 length])
    {
      NCIconImageForUTIWithFormat(v67, a4, a5);
      v20 = v45 = v67;
      v22 = 1;
      v36 = a6;
      v42 = v68;
      v35 = v69;
      goto LABEL_66;
    }

    if ([dateComponentDetails count])
    {
      v63 = [dateComponentDetails objectForKey:*MEMORY[0x277CE2108]];
      v52 = [dateComponentDetails objectForKey:*MEMORY[0x277CE2100]];
      v53 = [dateComponentDetails objectForKey:*MEMORY[0x277CE2110]];
      integerValue = [v53 integerValue];

      v55 = [MEMORY[0x277CBEA80] calendarWithIdentifier:v52];
      autoupdatingCurrentLocale = [MEMORY[0x277CBEAF8] autoupdatingCurrentLocale];
      [v55 setLocale:autoupdatingCurrentLocale];

      v57 = integerValue;
      imagePath = v64;
      v20 = _NCDateIconImageForDateComponentsWithFormat(a4, a5, v63, v55, v57);

      goto LABEL_7;
    }

    goto LABEL_26;
  }

  [MEMORY[0x277D755B8] _systemImageNamed:v68];
  v20 = v42 = v68;
  v22 = 0;
  v36 = a6;
  v35 = v69;
LABEL_65:
  v45 = v67;
LABEL_66:
  if (v36)
  {
    *v36 = v22;
  }

  return v20;
}

- (void)nc_imageForFormat:()UserNotificationsUIKit scale:userInterfaceStyle:usedUserInterfaceStyle:.cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v3 = 0x4044000000000000;
  v4 = 0x404C000000000000;
  v5 = 0x4043000000000000;
  if (a1 == 33)
  {
    v5 = 0x4066000000000000;
  }

  if (a1 != 34)
  {
    v4 = v5;
  }

  if (a1 != 14 && a1 != 17)
  {
    v3 = v4;
  }

  *v7 = 134218242;
  *&v7[4] = v3;
  *&v7[12] = 2114;
  *&v7[14] = a2;
  OUTLINED_FUNCTION_3_0(&dword_21E77E000, a2, a3, "Notification icon is smaller than expanded size of %lf: %{public}@", *v7, *&v7[8], *&v7[16], *MEMORY[0x277D85DE8]);
}

- (void)nc_imageForFormat:()UserNotificationsUIKit scale:userInterfaceStyle:usedUserInterfaceStyle:.cold.4(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = [a3 bundlePath];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_0(&dword_21E77E000, v6, v7, "Notification icon width does not match height: %{public}@ in bundle %{public}@", v8, v9, v10, v11, v12);
}

- (void)nc_imageForFormat:()UserNotificationsUIKit scale:userInterfaceStyle:usedUserInterfaceStyle:.cold.5(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = [a3 bundlePath];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_0(&dword_21E77E000, v6, v7, "Notification icon is not found: %{public}@ in bundle %{public}@", v8, v9, v10, v11, v12);
}

@end