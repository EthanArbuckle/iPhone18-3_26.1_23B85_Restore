@interface UNSImageProvider
+ (id)_contactForImageRenderingFromContentURLWithContext:(id)context bundleIdentifier:(id)identifier;
+ (id)_contactsForImageRenderingFromRecipientsWithContext:(id)context bundleIdentifier:(id)identifier descriptorForRequiredKeys:(id)keys;
+ (id)_imageDataFromFileSystemForContactURL:(id)l;
+ (id)_imageDataFromIntentsForContentURL:(id)l;
+ (id)generateEphemeralContactsForImageRenderingWithContext:(id)context bundleIdentifier:(id)identifier descriptorForRequiredKeys:(id)keys;
+ (id)imageDataForContentURL:(id)l;
@end

@implementation UNSImageProvider

+ (id)imageDataForContentURL:(id)l
{
  v23 = *MEMORY[0x277D85DE8];
  lCopy = l;
  v5 = lCopy;
  if (!lCopy)
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

  isFileURL = [lCopy isFileURL];
  if (!isFileURL)
  {
    goto LABEL_13;
  }

  v7 = [self _imageDataFromFileSystemForContactURL:v5];
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
    v7 = [self _imageDataFromIntentsForContentURL:v5];
    v9 = UNSLogImageProvider();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = @"FIRST";
      v15 = 136446978;
      v16 = "+[UNSImageProvider imageDataForContentURL:]";
      if (isFileURL)
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

    v11 = v7 ? 1 : isFileURL;
    if ((v11 & 1) == 0)
    {
      v7 = [self _imageDataFromFileSystemForContactURL:v5];
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

+ (id)generateEphemeralContactsForImageRenderingWithContext:(id)context bundleIdentifier:(id)identifier descriptorForRequiredKeys:(id)keys
{
  v36 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  identifierCopy = identifier;
  keysCopy = keys;
  v11 = UNSLogImageProvider();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [contextCopy identifier];
    un_logDigest = [identifier un_logDigest];
    *buf = 138543874;
    v31 = identifierCopy;
    v32 = 2082;
    v33 = "+[UNSImageProvider generateEphemeralContactsForImageRenderingWithContext:bundleIdentifier:descriptorForRequiredKeys:]";
    v34 = 2114;
    v35 = un_logDigest;
    _os_log_impl(&dword_270B08000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ %{public}s: Context identifier:%{public}@ Start getting contacts", buf, 0x20u);
  }

  if (!contextCopy)
  {
    v19 = MEMORY[0x277CBEBF8];
    goto LABEL_15;
  }

  v14 = [self _contactForImageRenderingFromContentURLWithContext:contextCopy bundleIdentifier:identifierCopy];
  if (v14)
  {
    v15 = UNSLogImageProvider();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      identifier2 = [contextCopy identifier];
      un_logDigest2 = [identifier2 un_logDigest];
      *buf = 138543874;
      v31 = identifierCopy;
      v32 = 2082;
      v33 = "+[UNSImageProvider generateEphemeralContactsForImageRenderingWithContext:bundleIdentifier:descriptorForRequiredKeys:]";
      v34 = 2114;
      v35 = un_logDigest2;
      _os_log_impl(&dword_270B08000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ %{public}s: Context identifier:%{public}@ Contact created from content URL", buf, 0x20u);
    }

    v29 = v14;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v29 count:1];
  }

  else
  {
    un_isFirstPartyIdentifier = [identifierCopy un_isFirstPartyIdentifier];
    v21 = UNSLogImageProvider();
    v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
    if (!un_isFirstPartyIdentifier)
    {
      if (v22)
      {
        identifier3 = [contextCopy identifier];
        un_logDigest3 = [identifier3 un_logDigest];
        *buf = 138543874;
        v31 = identifierCopy;
        v32 = 2082;
        v33 = "+[UNSImageProvider generateEphemeralContactsForImageRenderingWithContext:bundleIdentifier:descriptorForRequiredKeys:]";
        v34 = 2114;
        v35 = un_logDigest3;
        _os_log_impl(&dword_270B08000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@ %{public}s: Context identifier:%{public}@ No contact created because no data found content URL provided", buf, 0x20u);
      }

      v19 = MEMORY[0x277CBEBF8];
      goto LABEL_14;
    }

    if (v22)
    {
      identifier4 = [contextCopy identifier];
      un_logDigest4 = [identifier4 un_logDigest];
      *buf = 138543874;
      v31 = identifierCopy;
      v32 = 2082;
      v33 = "+[UNSImageProvider generateEphemeralContactsForImageRenderingWithContext:bundleIdentifier:descriptorForRequiredKeys:]";
      v34 = 2114;
      v35 = un_logDigest4;
      _os_log_impl(&dword_270B08000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@ %{public}s: Context identifier:%{public}@ Contacts created from recipients for snowglobe (1st party only)", buf, 0x20u);
    }

    v18 = [self _contactsForImageRenderingFromRecipientsWithContext:contextCopy bundleIdentifier:identifierCopy descriptorForRequiredKeys:keysCopy];
  }

  v19 = v18;
LABEL_14:

LABEL_15:
  v25 = *MEMORY[0x277D85DE8];

  return v19;
}

+ (id)_imageDataFromIntentsForContentURL:(id)l
{
  v31 = *MEMORY[0x277D85DE8];
  lCopy = l;
  v4 = [MEMORY[0x277CBEAA8] now];
  v5 = UNSLogImageProvider();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v26 = "+[UNSImageProvider _imageDataFromIntentsForContentURL:]";
    v27 = 2114;
    v28 = lCopy;
    _os_log_impl(&dword_270B08000, v5, OS_LOG_TYPE_DEFAULT, "%{public}s: contentURL:%{public}@ Starting Read", buf, 0x16u);
  }

  v6 = [MEMORY[0x277CD3D10] imageWithURL:lCopy];
  v7 = v6;
  if (v6)
  {
    _imageData = [v6 _imageData];
    if (_imageData)
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
        v28 = lCopy;
        v29 = 1026;
        *v30 = _imageData != 0;
        *&v30[4] = 2050;
        *&v30[6] = v20;
        _os_log_impl(&dword_270B08000, v21, OS_LOG_TYPE_DEFAULT, "%{public}s: contentURL:%{public}@ Ending Read. Success:%{public}d. Finished in:%{public}f milliseconds", buf, 0x26u);
      }

      goto LABEL_23;
    }

    _uri = [v7 _uri];
    if ([_uri isFileURL])
    {
      v10 = *MEMORY[0x277D861B8];
      [_uri fileSystemRepresentation];
      v11 = sandbox_extension_issue_file();
      if (!v11)
      {
        v15 = UNSLogImageProvider();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          [(UNSImageProvider *)lCopy _imageDataFromIntentsForContentURL:_uri, v15];
        }

        _imageData = 0;
        goto LABEL_19;
      }

      v12 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:v11 length:strlen(v11) + 1 freeWhenDone:1];
      [v7 _setSandboxExtensionData:v12];
    }

    mEMORY[0x277CD3D20] = [MEMORY[0x277CD3D20] sharedConnection];
    v24 = 0;
    v14 = [mEMORY[0x277CD3D20] loadDataImageFromImage:v7 scaledSize:&v24 error:{*MEMORY[0x277CD3840], *(MEMORY[0x277CD3840] + 8)}];
    v15 = v24;

    if (!v14 || v15)
    {
      v16 = UNSLogImageProvider();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446978;
        v26 = "+[UNSImageProvider _imageDataFromIntentsForContentURL:]";
        v27 = 2114;
        v28 = lCopy;
        v29 = 2114;
        *v30 = v7;
        *&v30[8] = 2114;
        *&v30[10] = v15;
        _os_log_error_impl(&dword_270B08000, v16, OS_LOG_TYPE_ERROR, "%{public}s: contentURL:%{public}@ Failed to fetch icon data from INImage %{public}@ with error %{public}@", buf, 0x2Au);
      }

      _imageData = 0;
    }

    else
    {
      _imageData = [v14 _imageData];
      v16 = UNSLogImageProvider();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        _identifier = [v7 _identifier];
        *buf = 136446722;
        v26 = "+[UNSImageProvider _imageDataFromIntentsForContentURL:]";
        v27 = 2114;
        v28 = lCopy;
        v29 = 2114;
        *v30 = _identifier;
        _os_log_impl(&dword_270B08000, v16, OS_LOG_TYPE_DEFAULT, "%{public}s: contentURL:%{public}@ Successfully fetched identity image with identifier '%{public}@'", buf, 0x20u);
      }
    }

LABEL_19:
    goto LABEL_20;
  }

  v18 = UNSLogImageProvider();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    [(UNSImageProvider *)lCopy _imageDataFromIntentsForContentURL:v18];
  }

  _imageData = 0;
LABEL_23:

  v22 = *MEMORY[0x277D85DE8];

  return _imageData;
}

+ (id)_imageDataFromFileSystemForContactURL:(id)l
{
  v21[2] = *MEMORY[0x277D85DE8];
  lCopy = l;
  v4 = [MEMORY[0x277CBEAA8] now];
  v5 = UNSLogImageProvider();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v17 = "+[UNSImageProvider _imageDataFromFileSystemForContactURL:]";
    v18 = 2114;
    v19 = lCopy;
    _os_log_impl(&dword_270B08000, v5, OS_LOG_TYPE_DEFAULT, "%{public}s: contentURL:%{public}@ Starting Read", buf, 0x16u);
  }

  v15 = 0;
  v6 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:lCopy options:1 error:&v15];
  v7 = v15;
  if (v7)
  {
    v8 = UNSLogImageProvider();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446722;
      v17 = "+[UNSImageProvider _imageDataFromFileSystemForContactURL:]";
      v18 = 2114;
      v19 = lCopy;
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
    v19 = lCopy;
    v20 = 1026;
    LODWORD(v21[0]) = v6 != 0;
    WORD2(v21[0]) = 2050;
    *(v21 + 6) = v11;
    _os_log_impl(&dword_270B08000, v12, OS_LOG_TYPE_DEFAULT, "%{public}s: contentURL:%{public}@ Ending Read. Success:%{public}d. Finished in:%{public}f milliseconds", buf, 0x26u);
  }

  v13 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)_contactForImageRenderingFromContentURLWithContext:(id)context bundleIdentifier:(id)identifier
{
  v31 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  identifierCopy = identifier;
  v8 = UNSLogImageProvider();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [contextCopy identifier];
    un_logDigest = [identifier un_logDigest];
    contentURL = [contextCopy contentURL];
    contentURL2 = [contextCopy contentURL];
    v21 = 138544386;
    v22 = identifierCopy;
    v23 = 2082;
    v24 = "+[UNSImageProvider _contactForImageRenderingFromContentURLWithContext:bundleIdentifier:]";
    v25 = 2114;
    v26 = un_logDigest;
    v27 = 1026;
    v28 = contentURL != 0;
    v29 = 2114;
    v30 = contentURL2;
    _os_log_impl(&dword_270B08000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ %{public}s: Context identifier:%{public}@ Will attempt to get image data:%{public}d withURL:%{public}@", &v21, 0x30u);
  }

  contentURL3 = [contextCopy contentURL];
  if (contentURL3 && ([self imageDataForContentURL:contentURL3], (v14 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v15 = v14;
    v16 = objc_alloc_init(MEMORY[0x277CBDB38]);
    [v16 setImageData:v15];
    absoluteString = [contentURL3 absoluteString];
    if (absoluteString)
    {
      [v16 setGivenName:absoluteString];
    }

    [v16 setFamilyName:identifierCopy];
  }

  else if ([contextCopy isBusinessCorrespondence])
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

+ (id)_contactsForImageRenderingFromRecipientsWithContext:(id)context bundleIdentifier:(id)identifier descriptorForRequiredKeys:(id)keys
{
  v35 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  identifierCopy = identifier;
  keysCopy = keys;
  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v26 = contextCopy;
  obj = [contextCopy allContacts];
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
        cnContactIdentifier = [v14 cnContactIdentifier];
        if (!cnContactIdentifier)
        {
          goto LABEL_8;
        }

        v16 = +[UNSNotificationContactService sharedInstance];
        v33 = keysCopy;
        v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v33 count:1];
        v18 = [v16 curatedContactForContact:v14 bundleIdentifier:identifierCopy keysToFetch:v17];

        if (!v18)
        {
LABEL_8:
          displayName = [v14 displayName];
          v20 = [displayName rangeOfString:@" "];
          v18 = objc_alloc_init(MEMORY[0x277CBDB38]);
          v21 = [displayName length] < 3 || v20 == 0;
          if (v21 || v20 >= [displayName length] - 1)
          {
            [v18 setGivenName:displayName];
          }

          else
          {
            v22 = [displayName substringWithRange:{0, v20}];
            v23 = [displayName substringWithRange:{v20 + 1, objc_msgSend(displayName, "length") + ~v20}];
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