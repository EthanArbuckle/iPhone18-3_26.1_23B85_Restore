@interface WLTips
+ (BOOL)download;
+ (id)tips;
- (WLTips)initWithTitle:(id)title desc:(id)desc thumbnail:(id)thumbnail image:(id)image video:(id)video;
@end

@implementation WLTips

- (WLTips)initWithTitle:(id)title desc:(id)desc thumbnail:(id)thumbnail image:(id)image video:(id)video
{
  titleCopy = title;
  descCopy = desc;
  thumbnailCopy = thumbnail;
  imageCopy = image;
  videoCopy = video;
  v20.receiver = self;
  v20.super_class = WLTips;
  v17 = [(WLTips *)&v20 init];
  v18 = v17;
  if (v17)
  {
    [(WLTips *)v17 setTitle:titleCopy];
    [(WLTips *)v18 setDesc:descCopy];
    [(WLTips *)v18 setThumbnail:thumbnailCopy];
    [(WLTips *)v18 setImage:imageCopy];
    [(WLTips *)v18 setVideo:videoCopy];
  }

  return v18;
}

+ (id)tips
{
  v67 = *MEMORY[0x277D85DE8];
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  v4 = +[WLDeviceCapability hasHomeButton];
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = v5;
  if (userInterfaceIdiom)
  {
    if (v4)
    {
      v7 = @"IPAD_HOME_BUTTON";
    }

    else
    {
      v7 = @"IPAD_NO_HOME_BUTTON";
    }

    v8 = @"3Z";
    if (v4)
    {
      v8 = @"4Z";
    }

    v38 = v8;
    v39 = v7;
    [v5 addObject:@"GoHome"];
    [v6 addObject:@"AppSwitcher"];
    [v6 addObject:@"ControlCenter"];
    [v6 addObject:@"TouchAndHold"];
    [v6 addObject:@"NotificationCenter"];
  }

  else
  {
    if (v4)
    {
      v9 = @"IPHONE_HOME_BUTTON";
    }

    else
    {
      v9 = @"IPHONE_NO_HOME_BUTTON";
    }

    v10 = @"1V";
    if (v4)
    {
      v10 = @"2Y";
    }

    v38 = v10;
    v39 = v9;
    if (!+[WLDeviceCapability hasHomeButton])
    {
      [v6 addObject:@"GoHome"];
    }

    if (+[WLDeviceCapability hasDynamicIsland])
    {
      [v6 addObject:@"DynamicIsland"];
    }

    [v6 addObject:@"AppSwitcher"];
    [v6 addObject:@"ControlCenter"];
    [v6 addObject:@"TouchAndHold"];
    [v6 addObject:@"NotificationCenter"];
    if (+[WLDeviceCapability hasActionButton])
    {
      v11 = @"SilentModeActionButton";
      goto LABEL_20;
    }
  }

  v11 = @"SilentMode";
LABEL_20:
  [v6 addObject:v11];
  [v6 addObject:@"Screenshot"];
  v40 = +[WLTipAssetRemoteDocumentIdentifier documentIDs];
  v41 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  obj = v6;
  v42 = [obj countByEnumeratingWithState:&v62 objects:v66 count:16];
  if (v42)
  {
    v37 = *v63;
    do
    {
      v12 = 0;
      do
      {
        if (*v63 != v37)
        {
          objc_enumerationMutation(obj);
        }

        v61 = v12;
        v13 = *(*(&v62 + 1) + 8 * v12);
        v14 = MEMORY[0x277CCACA8];
        uppercaseString = [v13 uppercaseString];
        v16 = [v14 stringWithFormat:@"TIPS_%@_TITLE", uppercaseString];
        v60 = WLLocalizedString();

        v17 = MEMORY[0x277CCACA8];
        uppercaseString2 = [v13 uppercaseString];
        v19 = [v17 stringWithFormat:@"TIPS_%@_DESCRIPTION_%@", uppercaseString2, v39];
        v53 = WLLocalizedString();

        v59 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@~%@_T.png", v13, v38, @"L"];
        v55 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@~%@.jpg", v13, v38, @"L"];
        v54 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@~%@.mp4", v13, v38, @"L"];
        v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@~%@_T.png", v13, v38, @"D"];
        v58 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@~%@.jpg", v13, v38, @"D"];
        v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@~%@.mp4", v13, v38, @"D"];
        v22 = [v40 objectForKeyedSubscript:v59];
        v51 = [WLTipAssetRemoteDocumentIdentifier url:v22];

        v52 = v20;
        v23 = [v40 objectForKeyedSubscript:v20];
        v50 = [WLTipAssetRemoteDocumentIdentifier url:v23];

        v24 = [v40 objectForKeyedSubscript:v55];
        v57 = [WLTipAssetRemoteDocumentIdentifier url:v24];

        v25 = [v40 objectForKeyedSubscript:v58];
        v56 = [WLTipAssetRemoteDocumentIdentifier url:v25];

        v26 = [v40 objectForKeyedSubscript:v54];
        v47 = [WLTipAssetRemoteDocumentIdentifier url:v26];

        v45 = v21;
        v27 = [v40 objectForKeyedSubscript:v21];
        v46 = [WLTipAssetRemoteDocumentIdentifier url:v27];

        v49 = [[WLAsset alloc] initWithName:v59 remoteURL:v51];
        v48 = [[WLAsset alloc] initWithName:v20 remoteURL:v50];
        v43 = [[WLInterfaceStyleAsset alloc] initWithLight:v49 dark:v48];
        v44 = [[WLAsset alloc] initWithName:v55 remoteURL:v57];
        v28 = [[WLAsset alloc] initWithName:v58 remoteURL:v56];
        v29 = [[WLInterfaceStyleAsset alloc] initWithLight:v44 dark:v28];
        v30 = [[WLAsset alloc] initWithName:v54 remoteURL:v47];
        v31 = [[WLAsset alloc] initWithName:v21 remoteURL:v46];
        v32 = [[WLInterfaceStyleAsset alloc] initWithLight:v30 dark:v31];
        v33 = [[WLTips alloc] initWithTitle:v60 desc:v53 thumbnail:v43 image:v29 video:v32];
        [v41 addObject:v33];

        v12 = v61 + 1;
      }

      while (v42 != v61 + 1);
      v42 = [obj countByEnumeratingWithState:&v62 objects:v66 count:16];
    }

    while (v42);
  }

  v34 = *MEMORY[0x277D85DE8];

  return v41;
}

+ (BOOL)download
{
  v63 = *MEMORY[0x277D85DE8];
  +[WLTips tips];
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v2 = v57 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v54 objects:v62 count:16];
  if (v3)
  {
    v4 = 0;
    v5 = *v55;
    v6 = 0x277CBE000uLL;
    do
    {
      v7 = 0;
      v41 = v3;
      do
      {
        if (*v55 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v43 = v7;
        v8 = *(*(&v54 + 1) + 8 * v7);
        v50 = 0u;
        v51 = 0u;
        v52 = 0u;
        v53 = 0u;
        thumbnail = [v8 thumbnail];
        v60[0] = thumbnail;
        image = [v8 image];
        v60[1] = image;
        video = [v8 video];
        v60[2] = video;
        v12 = [*(v6 + 2656) arrayWithObjects:v60 count:3];

        v13 = [v12 countByEnumeratingWithState:&v50 objects:v61 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v51;
          v42 = v2;
          v38 = *v51;
          v39 = v5;
          v45 = v12;
          while (2)
          {
            v16 = 0;
            do
            {
              if (*v51 != v15)
              {
                objc_enumerationMutation(v12);
              }

              v44 = v16;
              v17 = *(*(&v50 + 1) + 8 * v16);
              v46 = 0u;
              v47 = 0u;
              v48 = 0u;
              v49 = 0u;
              light = [v17 light];
              v58[0] = light;
              dark = [v17 dark];
              v58[1] = dark;
              v20 = [*(v6 + 2656) arrayWithObjects:v58 count:2];

              v21 = [v20 countByEnumeratingWithState:&v46 objects:v59 count:16];
              if (v21)
              {
                v22 = v21;
                v40 = v14;
                v23 = *v47;
                while (2)
                {
                  for (i = 0; i != v22; ++i)
                  {
                    if (*v47 != v23)
                    {
                      objc_enumerationMutation(v20);
                    }

                    v25 = *(*(&v46 + 1) + 8 * i);
                    name = [v25 name];
                    remoteURL = [v25 remoteURL];
                    localFile = [v25 localFile];
                    _WLLog();

                    download = [v25 download];
                    name2 = [v25 name];
                    remoteURL2 = [v25 remoteURL];
                    localFile2 = [v25 localFile];
                    v37 = download;
                    v33 = name2;
                    v34 = remoteURL2;
                    _WLLog();

                    if ((download & 1) == 0)
                    {

                      v2 = v42;
                      goto LABEL_29;
                    }
                  }

                  v22 = [v20 countByEnumeratingWithState:&v46 objects:v59 count:{16, name2, remoteURL2, localFile2, download}];
                  if (v22)
                  {
                    continue;
                  }

                  break;
                }

                v2 = v42;
                v15 = v38;
                v5 = v39;
                v6 = 0x277CBE000;
                v14 = v40;
              }

              else
              {

                if (!v4)
                {
LABEL_29:

                  goto LABEL_30;
                }
              }

              v12 = v45;
              v16 = v44 + 1;
              v4 = 1;
            }

            while (v44 + 1 != v14);
            v14 = [v45 countByEnumeratingWithState:&v50 objects:v61 count:16];
            if (v14)
            {
              continue;
            }

            break;
          }
        }

        else
        {

          if (!v4)
          {
            goto LABEL_30;
          }
        }

        v7 = v43 + 1;
        v4 = 1;
      }

      while (v43 + 1 != v41);
      v3 = [v2 countByEnumeratingWithState:&v54 objects:v62 count:16];
    }

    while (v3);
  }

  else
  {
LABEL_30:
    v4 = 0;
  }

  v31 = *MEMORY[0x277D85DE8];
  return v4;
}

@end