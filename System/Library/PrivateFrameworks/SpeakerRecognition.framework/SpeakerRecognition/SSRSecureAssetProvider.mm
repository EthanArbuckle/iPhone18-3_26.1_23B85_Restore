@interface SSRSecureAssetProvider
- (id)_fetchSecureAssetForCommunalDevice:(id)a3;
- (id)_fetchSecureAssetForNonCommunalDevice:(id)a3 withAsset:(id)a4;
- (id)_secureAssetWithAssetResourcePathURL:(id)a3 assetFileName:(id)a4 assetVersion:(id)a5;
- (id)fetchSecureAssetForLocale:(id)a3 withAsset:(id)a4;
@end

@implementation SSRSecureAssetProvider

- (id)_fetchSecureAssetForNonCommunalDevice:(id)a3 withAsset:(id)a4
{
  v41 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([MEMORY[0x277D018F8] isExclaveHardware])
  {
    v8 = objc_alloc(MEMORY[0x277D01F50]);
    v9 = [MEMORY[0x277D01F48] getBundle:0];
    v10 = [v8 init:v9];

    v11 = [v10 resourcePathURL:v6];
    v12 = [MEMORY[0x277D01F48] getAssetFileName:0];
    v13 = [v10 assetVersion:v6];
    v14 = *MEMORY[0x277D01970];
    v15 = *MEMORY[0x277D01970];
    if (v11)
    {
      v16 = v12 == 0;
    }

    else
    {
      v16 = 1;
    }

    if (v16)
    {
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315651;
        v36 = "[SSRSecureAssetProvider _fetchSecureAssetForNonCommunalDevice:withAsset:]";
        v37 = 2112;
        v38 = v12;
        v39 = 2113;
        v40 = v11;
        _os_log_error_impl(&dword_225E12000, v14, OS_LOG_TYPE_ERROR, "%s Skipping operation to fetch SpeakerRecognition asset (Preinstalled) with config file name:%@ at path: %{private}@", buf, 0x20u);
      }

      v17 = 0;
    }

    else
    {
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315651;
        v36 = "[SSRSecureAssetProvider _fetchSecureAssetForNonCommunalDevice:withAsset:]";
        v37 = 2112;
        v38 = v12;
        v39 = 2113;
        v40 = v11;
        _os_log_impl(&dword_225E12000, v14, OS_LOG_TYPE_DEFAULT, "%s Fetching preinstalled SpeakerRecognition asset (Preinstalled) with config file name:%@ at path: %{private}@", buf, 0x20u);
      }

      v17 = [(SSRSecureAssetProvider *)self _secureAssetWithAssetResourcePathURL:v11 assetFileName:v12 assetVersion:v13];
    }

    if ([v7 assetVariant] == 2 && objc_msgSend(v7, "assetProvider") == 2)
    {
      v19 = [v7 resourcePath];
      v20 = v19;
      if (v19 && v12)
      {
        v21 = [v7 configVersion];

        if (v21)
        {
          v22 = MEMORY[0x277CBEBC0];
          v23 = [v7 resourcePath];
          v24 = [v22 URLWithString:v23];

          v25 = *MEMORY[0x277D01970];
          v26 = *MEMORY[0x277D01970];
          if (v24)
          {
            if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315651;
              v36 = "[SSRSecureAssetProvider _fetchSecureAssetForNonCommunalDevice:withAsset:]";
              v37 = 2112;
              v38 = v12;
              v39 = 2113;
              v40 = v24;
              _os_log_impl(&dword_225E12000, v25, OS_LOG_TYPE_DEFAULT, "%s Fetching SpeakerRecognition asset (OTA) with config file name:%@ at path: %{private}@", buf, 0x20u);
            }

            v27 = MEMORY[0x277CBEBC0];
            v28 = [v7 resourcePath];
            v29 = [v27 URLWithString:v28];
            [v7 configVersion];
            v30 = v34 = v24;
            v31 = [(SSRSecureAssetProvider *)self _secureAssetWithAssetResourcePathURL:v29 assetFileName:v12 assetVersion:v30];

            v11 = v34;
            v17 = v31;
          }

          else
          {
            if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315651;
              v36 = "[SSRSecureAssetProvider _fetchSecureAssetForNonCommunalDevice:withAsset:]";
              v37 = 2112;
              v38 = v12;
              v39 = 2113;
              v40 = 0;
              _os_log_error_impl(&dword_225E12000, v25, OS_LOG_TYPE_ERROR, "%s Skipping operation to fetch SpeakerRecognition asset (OTA) with config file name:%@ at path: %{private}@", buf, 0x20u);
            }

            v11 = 0;
          }
        }
      }

      else
      {
      }
    }
  }

  else
  {
    v17 = 0;
  }

  v32 = *MEMORY[0x277D85DE8];

  return v17;
}

- (id)_fetchSecureAssetForCommunalDevice:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([MEMORY[0x277D018F8] supportsSecureAssetForSpeakerRecognition])
  {
    v5 = objc_alloc(MEMORY[0x277D01F50]);
    v6 = [MEMORY[0x277D01F48] getBundle:1];
    v7 = [v5 init:v6];

    v8 = [v7 resourcePathURL:v4];
    v9 = [MEMORY[0x277D01F48] getAssetFileName:1];
    v10 = [v7 assetVersion:v4];
    v11 = *MEMORY[0x277D01970];
    v12 = *MEMORY[0x277D01970];
    if (v8)
    {
      v13 = v9 == 0;
    }

    else
    {
      v13 = 1;
    }

    if (v13)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v18 = 136315651;
        v19 = "[SSRSecureAssetProvider _fetchSecureAssetForCommunalDevice:]";
        v20 = 2112;
        v21 = v9;
        v22 = 2113;
        v23 = v8;
        _os_log_error_impl(&dword_225E12000, v11, OS_LOG_TYPE_ERROR, "%s Skipping operation to fetch SpeakerRecognition asset with config file name:%@ at path: %{private}@", &v18, 0x20u);
      }

      v14 = 0;
    }

    else
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v18 = 136315651;
        v19 = "[SSRSecureAssetProvider _fetchSecureAssetForCommunalDevice:]";
        v20 = 2112;
        v21 = v9;
        v22 = 2113;
        v23 = v8;
        _os_log_impl(&dword_225E12000, v11, OS_LOG_TYPE_DEFAULT, "%s Fetching SpeakerRecognition asset with config file name:%@ at path: %{private}@", &v18, 0x20u);
      }

      v14 = [(SSRSecureAssetProvider *)self _secureAssetWithAssetResourcePathURL:v8 assetFileName:v9 assetVersion:v10];
    }
  }

  else
  {
    v14 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];

  return v14;
}

- (id)_secureAssetWithAssetResourcePathURL:(id)a3 assetFileName:(id)a4 assetVersion:(id)a5
{
  v5 = 0;
  if (a3 && a4)
  {
    v8 = MEMORY[0x277D01F40];
    v9 = a5;
    v10 = a4;
    v11 = a3;
    v5 = [[v8 alloc] initWithResourcePath:v11 assetFileName:v10 assetVersion:v9 assetHash:0];
  }

  return v5;
}

- (id)fetchSecureAssetForLocale:(id)a3 withAsset:(id)a4
{
  v6 = a4;
  v7 = a3;
  if (CSIsCommunalDevice())
  {
    [(SSRSecureAssetProvider *)self _fetchSecureAssetForCommunalDevice:v7];
  }

  else
  {
    [(SSRSecureAssetProvider *)self _fetchSecureAssetForNonCommunalDevice:v7 withAsset:v6];
  }
  v8 = ;

  return v8;
}

@end