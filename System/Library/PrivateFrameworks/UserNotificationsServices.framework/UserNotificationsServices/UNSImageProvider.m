@interface UNSImageProvider
+ (id)_contactForImageRenderingFromContentURLWithContext:(id)a3 bundleIdentifier:(id)a4;
+ (id)_contactsForImageRenderingFromRecipientsWithContext:(id)a3 bundleIdentifier:(id)a4 descriptorForRequiredKeys:(id)a5;
+ (id)_imageDataFromFileSystemForContactURL:(id)a3;
+ (id)_imageDataFromIntentsForContentURL:(id)a3;
+ (id)generateEphemeralContactsForImageRenderingWithContext:(id)a3 bundleIdentifier:(id)a4 descriptorForRequiredKeys:(id)a5;
+ (id)imageDataForContentURL:(id)a3;
@end

@implementation UNSImageProvider

+ (id)imageDataForContentURL:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    v12 = UNSLogImageProvider();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 136446210;
      v16 = "+[UNSImageProvider imageDataForContentURL:]";
      _os_log_impl(&dword_270B08000, v12, OS_LOG_TYPE_DEFAULT, "%{public}s: contentURL:nil", &v15, 0xCu);
    }

    v7 = 0;
    goto LABEL_19;
  }

  v6 = [v4 isFileURL];
  if (!v6)
  {
    goto LABEL_13;
  }

  v7 = [a1 _imageDataFromFileSystemForContactURL:v5];
  v8 = UNSLogImageProvider();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 136446722;
    v16 = "+[UNSImageProvider imageDataForContentURL:]";
    v17 = 2114;
    v18 = v5;
    v19 = 1026;
    LODWORD(v20) = v7 != 0;
    _os_log_impl(&dword_270B08000, v8, OS_LOG_TYPE_DEFAULT, "%{public}s: contentURL:%{public}@ Trying to fetch from file system FIRST. Success:%{public}d", &v15, 0x1Cu);
  }

  if (!v7)
  {
LABEL_13:
    v7 = [a1 _imageDataFromIntentsForContentURL:v5];
    v9 = UNSLogImageProvider();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = @"FIRST";
      v15 = 136446978;
      v16 = "+[UNSImageProvider imageDataForContentURL:]";
      if (v6)
      {
        v10 = @"SECOND";
      }

      v17 = 2114;
      v18 = v5;
      v19 = 2114;
      v20 = v10;
      v21 = 1026;
      v22 = v7 != 0;
      _os_log_impl(&dword_270B08000, v9, OS_LOG_TYPE_DEFAULT, "%{public}s: contentURL:%{public}@ Trying to fetch from intents %{public}@. Success:%{public}d", &v15, 0x26u);
    }

    v11 = v7 ? 1 : v6;
    if ((v11 & 1) == 0)
    {
      v7 = [a1 _imageDataFromFileSystemForContactURL:v5];
      v12 = UNSLogImageProvider();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v15 = 136446722;
        v16 = "+[UNSImageProvider imageDataForContentURL:]";
        v17 = 2114;
        v18 = v5;
        v19 = 1026;
        LODWORD(v20) = v7 != 0;
        _os_log_impl(&dword_270B08000, v12, OS_LOG_TYPE_DEFAULT, "%{public}s: contentURL:%{public}@ Trying to fetch from file system SECOND. Success:%{public}d", &v15, 0x1Cu);
      }

LABEL_19:
    }
  }

  v13 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)generateEphemeralContactsForImageRenderingWithContext:(id)a3 bundleIdentifier:(id)a4 descriptorForRequiredKeys:(id)a5
{
  v36 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = UNSLogImageProvider();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [v8 identifier];
    v13 = [v12 un_logDigest];
    *buf = 138543874;
    v31 = v9;
    v32 = 2082;
    v33 = "+[UNSImageProvider generateEphemeralContactsForImageRenderingWithContext:bundleIdentifier:descriptorForRequiredKeys:]";
    v34 = 2114;
    v35 = v13;
    _os_log_impl(&dword_270B08000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ %{public}s: Context identifier:%{public}@ Start getting contacts", buf, 0x20u);
  }

  if (!v8)
  {
    v19 = MEMORY[0x277CBEBF8];
    goto LABEL_15;
  }

  v14 = [a1 _contactForImageRenderingFromContentURLWithContext:v8 bundleIdentifier:v9];
  if (v14)
  {
    v15 = UNSLogImageProvider();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [v8 identifier];
      v17 = [v16 un_logDigest];
      *buf = 138543874;
      v31 = v9;
      v32 = 2082;
      v33 = "+[UNSImageProvider generateEphemeralContactsForImageRenderingWithContext:bundleIdentifier:descriptorForRequiredKeys:]";
      v34 = 2114;
      v35 = v17;
      _os_log_impl(&dword_270B08000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ %{public}s: Context identifier:%{public}@ Contact created from content URL", buf, 0x20u);
    }

    v29 = v14;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v29 count:1];
  }

  else
  {
    v20 = [v9 un_isFirstPartyIdentifier];
    v21 = UNSLogImageProvider();
    v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
    if (!v20)
    {
      if (v22)
      {
        v27 = [v8 identifier];
        v28 = [v27 un_logDigest];
        *buf = 138543874;
        v31 = v9;
        v32 = 2082;
        v33 = "+[UNSImageProvider generateEphemeralContactsForImageRenderingWithContext:bundleIdentifier:descriptorForRequiredKeys:]";
        v34 = 2114;
        v35 = v28;
        _os_log_impl(&dword_270B08000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@ %{public}s: Context identifier:%{public}@ No contact created because no data found content URL provided", buf, 0x20u);
      }

      v19 = MEMORY[0x277CBEBF8];
      goto LABEL_14;
    }

    if (v22)
    {
      v23 = [v8 identifier];
      v24 = [v23 un_logDigest];
      *buf = 138543874;
      v31 = v9;
      v32 = 2082;
      v33 = "+[UNSImageProvider generateEphemeralContactsForImageRenderingWithContext:bundleIdentifier:descriptorForRequiredKeys:]";
      v34 = 2114;
      v35 = v24;
      _os_log_impl(&dword_270B08000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@ %{public}s: Context identifier:%{public}@ Contacts created from recipients for snowglobe (1st party only)", buf, 0x20u);
    }

    v18 = [a1 _contactsForImageRenderingFromRecipientsWithContext:v8 bundleIdentifier:v9 descriptorForRequiredKeys:v10];
  }

  v19 = v18;
LABEL_14:

LABEL_15:
  v25 = *MEMORY[0x277D85DE8];

  return v19;
}

+ (id)_imageDataFromIntentsForContentURL:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEAA8] now];
  v5 = UNSLogImageProvider();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v26 = "+[UNSImageProvider _imageDataFromIntentsForContentURL:]";
    v27 = 2114;
    v28 = v3;
    _os_log_impl(&dword_270B08000, v5, OS_LOG_TYPE_DEFAULT, "%{public}s: contentURL:%{public}@ Starting Read", buf, 0x16u);
  }

  v6 = [MEMORY[0x277CD3D10] imageWithURL:v3];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 _imageData];
    if (v8)
    {
LABEL_20:
      v18 = [MEMORY[0x277CBEAA8] now];
      [v18 timeIntervalSinceDate:v4];
      v20 = v19;
      v21 = UNSLogImageProvider();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446978;
        v26 = "+[UNSImageProvider _imageDataFromIntentsForContentURL:]";
        v27 = 2114;
        v28 = v3;
        v29 = 1026;
        *v30 = v8 != 0;
        *&v30[4] = 2050;
        *&v30[6] = v20;
        _os_log_impl(&dword_270B08000, v21, OS_LOG_TYPE_DEFAULT, "%{public}s: contentURL:%{public}@ Ending Read. Success:%{public}d. Finished in:%{public}f milliseconds", buf, 0x26u);
      }

      goto LABEL_23;
    }

    v9 = [v7 _uri];
    if ([v9 isFileURL])
    {
      v10 = *MEMORY[0x277D861B8];
      [v9 fileSystemRepresentation];
      v11 = sandbox_extension_issue_file();
      if (!v11)
      {
        v15 = UNSLogImageProvider();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          [(UNSImageProvider *)v3 _imageDataFromIntentsForContentURL:v9, v15];
        }

        v8 = 0;
        goto LABEL_19;
      }

      v12 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:v11 length:strlen(v11) + 1 freeWhenDone:1];
      [v7 _setSandboxExtensionData:v12];
    }

    v13 = [MEMORY[0x277CD3D20] sharedConnection];
    v24 = 0;
    v14 = [v13 loadDataImageFromImage:v7 scaledSize:&v24 error:{*MEMORY[0x277CD3840], *(MEMORY[0x277CD3840] + 8)}];
    v15 = v24;

    if (!v14 || v15)
    {
      v16 = UNSLogImageProvider();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446978;
        v26 = "+[UNSImageProvider _imageDataFromIntentsForContentURL:]";
        v27 = 2114;
        v28 = v3;
        v29 = 2114;
        *v30 = v7;
        *&v30[8] = 2114;
        *&v30[10] = v15;
        _os_log_error_impl(&dword_270B08000, v16, OS_LOG_TYPE_ERROR, "%{public}s: contentURL:%{public}@ Failed to fetch icon data from INImage %{public}@ with error %{public}@", buf, 0x2Au);
      }

      v8 = 0;
    }

    else
    {
      v8 = [v14 _imageData];
      v16 = UNSLogImageProvider();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = [v7 _identifier];
        *buf = 136446722;
        v26 = "+[UNSImageProvider _imageDataFromIntentsForContentURL:]";
        v27 = 2114;
        v28 = v3;
        v29 = 2114;
        *v30 = v17;
        _os_log_impl(&dword_270B08000, v16, OS_LOG_TYPE_DEFAULT, "%{public}s: contentURL:%{public}@ Successfully fetched identity image with identifier '%{public}@'", buf, 0x20u);
      }
    }

LABEL_19:
    goto LABEL_20;
  }

  v18 = UNSLogImageProvider();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    [(UNSImageProvider *)v3 _imageDataFromIntentsForContentURL:v18];
  }

  v8 = 0;
LABEL_23:

  v22 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (id)_imageDataFromFileSystemForContactURL:(id)a3
{
  v21[2] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEAA8] now];
  v5 = UNSLogImageProvider();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v17 = "+[UNSImageProvider _imageDataFromFileSystemForContactURL:]";
    v18 = 2114;
    v19 = v3;
    _os_log_impl(&dword_270B08000, v5, OS_LOG_TYPE_DEFAULT, "%{public}s: contentURL:%{public}@ Starting Read", buf, 0x16u);
  }

  v15 = 0;
  v6 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v3 options:1 error:&v15];
  v7 = v15;
  if (v7)
  {
    v8 = UNSLogImageProvider();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446722;
      v17 = "+[UNSImageProvider _imageDataFromFileSystemForContactURL:]";
      v18 = 2114;
      v19 = v3;
      v20 = 2114;
      v21[0] = v7;
      _os_log_impl(&dword_270B08000, v8, OS_LOG_TYPE_DEFAULT, "%{public}s: contentURL:%{public}@ Error reading image data %{public}@", buf, 0x20u);
    }
  }

  v9 = [MEMORY[0x277CBEAA8] now];
  [v9 timeIntervalSinceDate:v4];
  v11 = v10;
  v12 = UNSLogImageProvider();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446978;
    v17 = "+[UNSImageProvider _imageDataFromFileSystemForContactURL:]";
    v18 = 2114;
    v19 = v3;
    v20 = 1026;
    LODWORD(v21[0]) = v6 != 0;
    WORD2(v21[0]) = 2050;
    *(v21 + 6) = v11;
    _os_log_impl(&dword_270B08000, v12, OS_LOG_TYPE_DEFAULT, "%{public}s: contentURL:%{public}@ Ending Read. Success:%{public}d. Finished in:%{public}f milliseconds", buf, 0x26u);
  }

  v13 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)_contactForImageRenderingFromContentURLWithContext:(id)a3 bundleIdentifier:(id)a4
{
  v31 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = UNSLogImageProvider();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v6 identifier];
    v10 = [v9 un_logDigest];
    v11 = [v6 contentURL];
    v12 = [v6 contentURL];
    v21 = 138544386;
    v22 = v7;
    v23 = 2082;
    v24 = "+[UNSImageProvider _contactForImageRenderingFromContentURLWithContext:bundleIdentifier:]";
    v25 = 2114;
    v26 = v10;
    v27 = 1026;
    v28 = v11 != 0;
    v29 = 2114;
    v30 = v12;
    _os_log_impl(&dword_270B08000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ %{public}s: Context identifier:%{public}@ Will attempt to get image data:%{public}d withURL:%{public}@", &v21, 0x30u);
  }

  v13 = [v6 contentURL];
  if (v13 && ([a1 imageDataForContentURL:v13], (v14 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v15 = v14;
    v16 = objc_alloc_init(MEMORY[0x277CBDB38]);
    [v16 setImageData:v15];
    v17 = [v13 absoluteString];
    if (v17)
    {
      [v16 setGivenName:v17];
    }

    [v16 setFamilyName:v7];
  }

  else if ([v6 isBusinessCorrespondence])
  {
    v16 = objc_alloc_init(MEMORY[0x277CBDB38]);
    [v16 setContactType:1];
    v15 = 0;
  }

  else
  {
    v15 = 0;
    v16 = 0;
  }

  v18 = v16;

  v19 = *MEMORY[0x277D85DE8];
  return v16;
}

+ (id)_contactsForImageRenderingFromRecipientsWithContext:(id)a3 bundleIdentifier:(id)a4 descriptorForRequiredKeys:(id)a5
{
  v35 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v28 = a4;
  v8 = a5;
  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v26 = v7;
  obj = [v7 allContacts];
  v10 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v30;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v30 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v29 + 1) + 8 * i);
        v15 = [v14 cnContactIdentifier];
        if (!v15)
        {
          goto LABEL_8;
        }

        v16 = +[UNSNotificationContactService sharedInstance];
        v33 = v8;
        v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v33 count:1];
        v18 = [v16 curatedContactForContact:v14 bundleIdentifier:v28 keysToFetch:v17];

        if (!v18)
        {
LABEL_8:
          v19 = [v14 displayName];
          v20 = [v19 rangeOfString:@" "];
          v18 = objc_alloc_init(MEMORY[0x277CBDB38]);
          v21 = [v19 length] < 3 || v20 == 0;
          if (v21 || v20 >= [v19 length] - 1)
          {
            [v18 setGivenName:v19];
          }

          else
          {
            v22 = [v19 substringWithRange:{0, v20}];
            v23 = [v19 substringWithRange:{v20 + 1, objc_msgSend(v19, "length") + ~v20}];
            [v18 setGivenName:v22];
            [v18 setFamilyName:v23];
          }
        }

        [v9 addObject:v18];
      }

      v11 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v11);
  }

  v24 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (void)_imageDataFromIntentsForContentURL:(NSObject *)a3 .cold.1(uint64_t a1, id a2, NSObject *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = [a2 fileSystemRepresentation];
  v8 = *__error();
  v10 = 136446978;
  v11 = "+[UNSImageProvider _imageDataFromIntentsForContentURL:]";
  v12 = 2114;
  v13 = a1;
  v14 = 2080;
  v15 = v7;
  v16 = 1026;
  v17 = v8;
  _os_log_error_impl(&dword_270B08000, a3, OS_LOG_TYPE_ERROR, "%{public}s: contentURL:%{public}@ Failed to issue sandbox extension for '%s' with error %{public}d", &v10, 0x26u);
  v9 = *MEMORY[0x277D85DE8];
}

+ (void)_imageDataFromIntentsForContentURL:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 136446466;
  v4 = "+[UNSImageProvider _imageDataFromIntentsForContentURL:]";
  v5 = 2114;
  v6 = a1;
  _os_log_error_impl(&dword_270B08000, a2, OS_LOG_TYPE_ERROR, "%{public}s: contentURL:%{public}@ Failed to create an INIntent from url. Cannot proceed with loading data from INImageServiceConnection.", &v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

@end