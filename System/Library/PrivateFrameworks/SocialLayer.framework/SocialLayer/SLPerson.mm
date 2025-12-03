@interface SLPerson
+ (id)createMutableContactWithHandle:(id)handle;
+ (id)errorForPersonDomain:(id)domain andCode:(int64_t)code;
+ (id)fetchMeContact;
+ (id)keysForCNContact;
+ (id)predicateForHandle:(id)handle;
- (BOOL)isEqual:(id)equal;
- (CNContact)contact;
- (NSData)thumbnailImageData;
- (NSString)displayName;
- (NSString)shortDisplayName;
- (SLPerson)initWithCSPerson:(id)person error:(id *)error;
- (SLPerson)initWithCoder:(id)coder;
- (SLPerson)initWithDictionary:(id)dictionary;
- (SLPerson)initWithHandle:(id)handle displayName:(id)name;
- (SLPerson)initWithPortraitPerson:(id)person error:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)fetchCNContactWithHandle:(id)handle;
- (unint64_t)hash;
- (void)dictionaryRepresentation;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SLPerson

- (SLPerson)initWithPortraitPerson:(id)person error:(id *)error
{
  personCopy = person;
  v21.receiver = self;
  v21.super_class = SLPerson;
  v7 = [(SLPerson *)&v21 init];
  if (!v7)
  {
    goto LABEL_16;
  }

  if (personCopy)
  {
    handle = [personCopy handle];
    v9 = [handle length];

    if (v9)
    {
      handle2 = [personCopy handle];
      handle = v7->_handle;
      v7->_handle = handle2;

      displayName = [personCopy displayName];
      v13 = [displayName length];

      if (v13)
      {
        displayName2 = [personCopy displayName];
LABEL_15:
        displayName = v7->_displayName;
        v7->_displayName = displayName2;

LABEL_16:
        v17 = v7;
        goto LABEL_20;
      }

      if ([(NSString *)v7->_handle length])
      {
        v18 = SLFrameworkLogHandle();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          [SLPerson initWithPortraitPerson:error:];
        }

        displayName2 = v7->_handle;
        goto LABEL_15;
      }

      if (error)
      {
        v15 = objc_opt_class();
        v16 = 3;
        goto LABEL_10;
      }

LABEL_19:
      v17 = 0;
      goto LABEL_20;
    }

    if (!error)
    {
      goto LABEL_19;
    }

    v15 = objc_opt_class();
    v16 = 2;
  }

  else
  {
    if (!error)
    {
      goto LABEL_19;
    }

    v15 = objc_opt_class();
    v16 = 1;
  }

LABEL_10:
  [v15 errorForPersonDomain:@"com.apple.SocialLayer.SLPerson" andCode:v16];
  *error = v17 = 0;
LABEL_20:

  return v17;
}

- (SLPerson)initWithCSPerson:(id)person error:(id *)error
{
  personCopy = person;
  v16.receiver = self;
  v16.super_class = SLPerson;
  v7 = [(SLPerson *)&v16 init];
  if (!v7)
  {
    goto LABEL_9;
  }

  handles = [personCopy handles];
  firstObject = [handles firstObject];

  if (![firstObject length])
  {
    if (error)
    {
      *error = [objc_opt_class() errorForPersonDomain:@"com.apple.SocialLayer.SLPerson" andCode:2];
    }

    goto LABEL_15;
  }

  objc_storeStrong(&v7->_handle, firstObject);
  displayName = [personCopy displayName];
  v11 = [displayName length];
  handle = displayName;
  if (!v11)
  {
    if ([(NSString *)v7->_handle length])
    {
      v13 = SLFrameworkLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        [SLPerson initWithPortraitPerson:error:];
      }

      handle = v7->_handle;
      goto LABEL_8;
    }

    if (error)
    {
      *error = [objc_opt_class() errorForPersonDomain:@"com.apple.SocialLayer.SLPerson" andCode:3];
    }

LABEL_15:
    v14 = 0;
    goto LABEL_16;
  }

LABEL_8:
  objc_storeStrong(&v7->_displayName, handle);

LABEL_9:
  v14 = v7;
LABEL_16:

  return v14;
}

- (SLPerson)initWithHandle:(id)handle displayName:(id)name
{
  handleCopy = handle;
  nameCopy = name;
  v12.receiver = self;
  v12.super_class = SLPerson;
  v8 = [(SLPerson *)&v12 init];
  v9 = v8;
  if (v8)
  {
    if (handleCopy)
    {
      v10 = handleCopy;
    }

    else
    {
      v10 = &stru_28468DAB8;
    }

    objc_storeStrong(&v8->_handle, v10);
    objc_storeStrong(&v9->_displayName, name);
  }

  return v9;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  handle = [(SLPerson *)self handle];
  displayName = [(SLPerson *)self displayName];
  shortDisplayName = [(SLPerson *)self shortDisplayName];
  contact = [(SLPerson *)self contact];
  v10 = [v3 stringWithFormat:@"[%@: handle: %@  displayName: %@  shortDisplayName: %@ contact: %@]", v5, handle, displayName, shortDisplayName, contact];

  return v10;
}

- (NSString)displayName
{
  v3 = self->_displayName;
  if (![(NSString *)v3 length])
  {
    shortDisplayName = [(SLPerson *)self shortDisplayName];

    v3 = shortDisplayName;
  }

  if (![(NSString *)v3 length])
  {
    handle = [(SLPerson *)self handle];

    v3 = handle;
  }

  return v3;
}

- (SLPerson)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v15.receiver = self;
  v15.super_class = SLPerson;
  v5 = [(SLPerson *)&v15 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKey:@"h"];
    handle = v5->_handle;
    v5->_handle = v6;

    v8 = [dictionaryCopy objectForKey:@"dn"];
    displayName = v5->_displayName;
    v5->_displayName = v8;

    v10 = [dictionaryCopy objectForKey:@"sdn"];
    shortDisplayName = v5->_shortDisplayName;
    v5->_shortDisplayName = v10;

    v12 = [dictionaryCopy objectForKey:@"c"];
    contact = v5->_contact;
    v5->_contact = v12;
  }

  return v5;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  handle = [(SLPerson *)self handle];

  if (handle)
  {
    handle2 = [(SLPerson *)self handle];
    [dictionary setObject:handle2 forKey:@"h"];

    displayName = [(SLPerson *)self displayName];

    if (displayName)
    {
      displayName2 = [(SLPerson *)self displayName];
      [dictionary setObject:displayName2 forKey:@"dn"];

      shortDisplayName = [(SLPerson *)self shortDisplayName];

      if (shortDisplayName)
      {
        shortDisplayName2 = [(SLPerson *)self shortDisplayName];
        [dictionary setObject:shortDisplayName2 forKey:@"sdn"];

        contact = [(SLPerson *)self contact];

        if (contact)
        {
          contact2 = [(SLPerson *)self contact];
          [dictionary setObject:contact2 forKey:@"c"];

          v12 = dictionary;
          goto LABEL_15;
        }

        v13 = SLFrameworkLogHandle();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          [SLPerson dictionaryRepresentation];
        }
      }

      else
      {
        v13 = SLFrameworkLogHandle();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          [SLPerson dictionaryRepresentation];
        }
      }
    }

    else
    {
      v13 = SLFrameworkLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [SLPerson dictionaryRepresentation];
      }
    }
  }

  else
  {
    v13 = SLFrameworkLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [SLPerson dictionaryRepresentation];
    }
  }

  v12 = 0;
LABEL_15:

  return v12;
}

- (SLPerson)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = SLPerson;
  v5 = [(SLPerson *)&v15 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"h"];
    handle = v5->_handle;
    v5->_handle = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dn"];
    displayName = v5->_displayName;
    v5->_displayName = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sdn"];
    shortDisplayName = v5->_shortDisplayName;
    v5->_shortDisplayName = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"c"];
    contact = v5->_contact;
    v5->_contact = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  handle = self->_handle;
  coderCopy = coder;
  [coderCopy encodeObject:handle forKey:@"h"];
  [coderCopy encodeObject:self->_displayName forKey:@"dn"];
  shortDisplayName = [(SLPerson *)self shortDisplayName];
  [coderCopy encodeObject:shortDisplayName forKey:@"sdn"];

  contact = [(SLPerson *)self contact];
  [coderCopy encodeObject:contact forKey:@"c"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [SLPerson alloc];
  dictionaryRepresentation = [(SLPerson *)self dictionaryRepresentation];
  v6 = [(SLPerson *)v4 initWithDictionary:dictionaryRepresentation];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = equalCopy;
    handle = [(SLPerson *)self handle];
    if (handle || ([v7 handle], (contact4 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      handle2 = [(SLPerson *)self handle];
      handle3 = [v7 handle];
      v10 = [handle2 isEqualToString:handle3];

      if (handle)
      {

        if (!v10)
        {
          goto LABEL_35;
        }
      }

      else
      {

        if ((v10 & 1) == 0)
        {
          goto LABEL_35;
        }
      }
    }

    contact = [(SLPerson *)self contact];
    if (contact || ([v7 contact], (v26 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      contact2 = [(SLPerson *)self contact];
      contact4 = 0x277CBD000;
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if ((isKindOfClass & 1) == 0 || ([v7 contact], handle2 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        contact3 = [(SLPerson *)self contact];
        contact4 = [v7 contact];
        v17 = [contact3 isEqual:contact4];

        if (isKindOfClass)
        {

          if (!contact)
          {

            if ((v17 & 1) == 0)
            {
              goto LABEL_35;
            }

            goto LABEL_26;
          }
        }

        else
        {

          if (!contact)
          {
          }
        }

        if ((v17 & 1) == 0)
        {
          goto LABEL_35;
        }

LABEL_26:
        displayName = [(SLPerson *)self displayName];
        if (!displayName)
        {
          contact4 = [v7 displayName];
          if (!contact4)
          {
LABEL_30:
            shortDisplayName = [(SLPerson *)self shortDisplayName];
            if (shortDisplayName || ([v7 shortDisplayName], (contact4 = objc_claimAutoreleasedReturnValue()) != 0))
            {
              shortDisplayName2 = [(SLPerson *)self shortDisplayName];
              shortDisplayName3 = [v7 shortDisplayName];
              v11 = [shortDisplayName2 isEqualToString:shortDisplayName3];

              if (shortDisplayName)
              {
LABEL_38:

                goto LABEL_39;
              }
            }

            else
            {
              v11 = 1;
            }

            goto LABEL_38;
          }
        }

        displayName2 = [(SLPerson *)self displayName];
        displayName3 = [v7 displayName];
        v21 = [displayName2 isEqualToString:displayName3];

        if (displayName)
        {

          if (v21)
          {
            goto LABEL_30;
          }
        }

        else
        {

          if (v21)
          {
            goto LABEL_30;
          }
        }

LABEL_35:
        v11 = 0;
LABEL_39:

        goto LABEL_40;
      }

      v15 = v26;
      if (contact)
      {
LABEL_25:

        goto LABEL_26;
      }
    }

    else
    {
      v15 = 0;
    }

    contact = v15;
    goto LABEL_25;
  }

  v11 = 0;
LABEL_40:

  return v11;
}

+ (id)errorForPersonDomain:(id)domain andCode:(int64_t)code
{
  v22[2] = *MEMORY[0x277D85DE8];
  domainCopy = domain;
  switch(code)
  {
    case 3:
      v17[0] = *MEMORY[0x277CCA450];
      mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
      v7 = [mainBundle localizedStringForKey:@"SLPerson Init failed." value:&stru_28468DAB8 table:0];
      v18[0] = v7;
      v17[1] = *MEMORY[0x277CCA470];
      mainBundle2 = [MEMORY[0x277CCA8D8] mainBundle];
      v9 = [mainBundle2 localizedStringForKey:@"PPSocialPerson contains an invalid or nil Display Name." value:&stru_28468DAB8 table:0];
      v18[1] = v9;
      v10 = MEMORY[0x277CBEAC0];
      v11 = v18;
      v12 = v17;
      goto LABEL_7;
    case 2:
      v19[0] = *MEMORY[0x277CCA450];
      mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
      v7 = [mainBundle localizedStringForKey:@"SLPerson Init failed." value:&stru_28468DAB8 table:0];
      v20[0] = v7;
      v19[1] = *MEMORY[0x277CCA470];
      mainBundle2 = [MEMORY[0x277CCA8D8] mainBundle];
      v9 = [mainBundle2 localizedStringForKey:@"PPSocialPerson contains an invalid or nil handle." value:&stru_28468DAB8 table:0];
      v20[1] = v9;
      v10 = MEMORY[0x277CBEAC0];
      v11 = v20;
      v12 = v19;
      goto LABEL_7;
    case 1:
      v21[0] = *MEMORY[0x277CCA450];
      mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
      v7 = [mainBundle localizedStringForKey:@"SLPerson Init failed." value:&stru_28468DAB8 table:0];
      v22[0] = v7;
      v21[1] = *MEMORY[0x277CCA470];
      mainBundle2 = [MEMORY[0x277CCA8D8] mainBundle];
      v9 = [mainBundle2 localizedStringForKey:@"Invalid or nil PPSocialPerson." value:&stru_28468DAB8 table:0];
      v22[1] = v9;
      v10 = MEMORY[0x277CBEAC0];
      v11 = v22;
      v12 = v21;
LABEL_7:
      v13 = [v10 dictionaryWithObjects:v11 forKeys:v12 count:2];

      goto LABEL_9;
  }

  v13 = 0;
LABEL_9:
  v14 = [MEMORY[0x277CCA9B8] errorWithDomain:domainCopy code:code userInfo:v13];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (NSString)shortDisplayName
{
  if (!self->_shortDisplayName)
  {
    contact = [(SLPerson *)self contact];

    if (contact)
    {
      v4 = MEMORY[0x277CBDA78];
      contact2 = [(SLPerson *)self contact];
      v6 = [v4 stringFromContact:contact2 style:1000];
      shortDisplayName = self->_shortDisplayName;
      self->_shortDisplayName = v6;
    }
  }

  v8 = self->_shortDisplayName;

  return v8;
}

- (CNContact)contact
{
  contact = self->_contact;
  if (!contact)
  {
    handle = [(SLPerson *)self handle];
    v5 = [(SLPerson *)self fetchCNContactWithHandle:handle];

    if (v5)
    {
      v6 = v5;
      v7 = 0;
      handle2 = self->_contact;
      self->_contact = v6;
    }

    else
    {
      v9 = objc_opt_class();
      handle2 = [(SLPerson *)self handle];
      v10 = [v9 createMutableContactWithHandle:handle2];
      v11 = self->_contact;
      self->_contact = v10;

      v7 = 1;
    }

    self->_hasMutableContact = v7;
    contact = self->_contact;
  }

  return contact;
}

- (NSData)thumbnailImageData
{
  thumbnailImageData = self->_thumbnailImageData;
  if (!thumbnailImageData)
  {
    contact = [(SLPerson *)self contact];
    if ([MEMORY[0x277CBDAE8] croppedImageDataAvailableForContact:contact])
    {
      v5 = objc_alloc(MEMORY[0x277CBDAE8]);
      contactStore = [(SLPerson *)self contactStore];
      v7 = [v5 initWithContactStore:contactStore];

      v8 = [v7 croppedImageDataForContact:contact];
      v9 = self->_thumbnailImageData;
      self->_thumbnailImageData = v8;
    }

    thumbnailImageData = self->_thumbnailImageData;
  }

  return thumbnailImageData;
}

- (id)fetchCNContactWithHandle:(id)handle
{
  v27 = *MEMORY[0x277D85DE8];
  handleCopy = handle;
  if ([handleCopy length])
  {
    v5 = SLGeneralTelemetryLogHandle();
    v6 = os_signpost_id_generate(v5);

    v7 = SLGeneralTelemetryLogHandle();
    v8 = v7;
    if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_231772000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "SLPersonFetchCNContact", "", buf, 2u);
    }

    v9 = [SLPerson predicateForHandle:handleCopy];
    v10 = +[SLPerson keysForCNContact];
    if (!self->_contactStore)
    {
      v11 = objc_alloc_init(MEMORY[0x277CBDAB8]);
      contactStore = self->_contactStore;
      self->_contactStore = v11;
    }

    v13 = SLFrameworkLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v26 = handleCopy;
      _os_log_impl(&dword_231772000, v13, OS_LOG_TYPE_DEFAULT, "Fetching CNContact for handle %@.", buf, 0xCu);
    }

    v14 = self->_contactStore;
    v24 = 0;
    v15 = [(CNContactStore *)v14 unifiedContactsMatchingPredicate:v9 keysToFetch:v10 error:&v24];
    v16 = v24;
    firstObject = [v15 firstObject];

    v18 = SLFrameworkLogHandle();
    v19 = v18;
    if (v16)
    {
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [(SLPerson *)v16 fetchCNContactWithHandle:v19];
      }
    }

    else if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v26 = firstObject;
      _os_log_impl(&dword_231772000, v19, OS_LOG_TYPE_DEFAULT, "Fetched CNContact %@.", buf, 0xCu);
    }

    if (!firstObject)
    {
      firstObject = [objc_opt_class() createMutableContactWithHandle:handleCopy];
    }

    v20 = SLGeneralTelemetryLogHandle();
    v21 = v20;
    if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_231772000, v21, OS_SIGNPOST_INTERVAL_END, v6, "SLPersonFetchCNContact", "", buf, 2u);
    }
  }

  else
  {
    v16 = SLFrameworkLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [SLPerson fetchCNContactWithHandle:];
    }

    firstObject = 0;
  }

  v22 = *MEMORY[0x277D85DE8];

  return firstObject;
}

+ (id)createMutableContactWithHandle:(id)handle
{
  v20 = *MEMORY[0x277D85DE8];
  handleCopy = handle;
  if (![handleCopy length])
  {
    v6 = SLFrameworkLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SLPerson fetchCNContactWithHandle:];
    }

    goto LABEL_11;
  }

  v4 = handleCopy;
  if ([v4 length])
  {
    lowercaseString = [v4 lowercaseString];
    if ([lowercaseString hasPrefix:@"urn:biz:"])
    {

      goto LABEL_9;
    }

    v7 = [lowercaseString hasPrefix:@"biz:"];

    if (v7)
    {
LABEL_9:
      v6 = SLFrameworkLogHandle();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        +[SLPerson createMutableContactWithHandle:];
      }

LABEL_11:
      v8 = 0;
      goto LABEL_12;
    }
  }

  else
  {
  }

  v11 = SLFrameworkLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v19 = v4;
    _os_log_impl(&dword_231772000, v11, OS_LOG_TYPE_DEFAULT, "Creating a CNContact for handle %@.", buf, 0xCu);
  }

  if (SLHandleIsEmail(v4))
  {
    v8 = objc_alloc_init(MEMORY[0x277CBDB38]);
    v12 = [MEMORY[0x277CBDB20] labeledValueWithLabel:0 value:v4];
    v17 = v12;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v17 count:1];
    [v8 setEmailAddresses:v13];
LABEL_21:

    goto LABEL_23;
  }

  if (SLHandleIsPhoneNumber(v4))
  {
    v8 = objc_alloc_init(MEMORY[0x277CBDB38]);
    v14 = MEMORY[0x277CBDB20];
    v15 = [MEMORY[0x277CBDB70] phoneNumberWithStringValue:v4];
    v12 = [v14 labeledValueWithLabel:0 value:v15];

    v16 = v12;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v16 count:1];
    [v8 setPhoneNumbers:v13];
    goto LABEL_21;
  }

  v8 = 0;
LABEL_23:
  v6 = SLFrameworkLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v19 = v8;
    _os_log_impl(&dword_231772000, v6, OS_LOG_TYPE_DEFAULT, "Created contact: %@.", buf, 0xCu);
  }

LABEL_12:

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (id)fetchMeContact
{
  if (fetchMeContact_oncePredicate != -1)
  {
    +[SLPerson fetchMeContact];
  }

  v3 = fetchMeContact_meContact;

  return v3;
}

void __26__SLPerson_fetchMeContact__block_invoke()
{
  v0 = +[SLPerson keysForCNContact];
  v1 = [objc_alloc(MEMORY[0x277CBDA70]) initWithKeysToFetch:v0];
  v2 = [MEMORY[0x277CBDA58] predicateForMeContact];
  [v1 setPredicate:v2];

  v3 = objc_alloc_init(MEMORY[0x277CBDAB8]);
  v10 = 0;
  v4 = [v3 executeFetchRequest:v1 error:&v10];
  v5 = v10;

  v6 = [v4 value];
  if (v5)
  {
    v7 = SLFrameworkLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __26__SLPerson_fetchMeContact__block_invoke_cold_1();
    }
  }

  v8 = [v6 firstObject];
  v9 = fetchMeContact_meContact;
  fetchMeContact_meContact = v8;
}

+ (id)predicateForHandle:(id)handle
{
  handleCopy = handle;
  if ([handleCopy length])
  {
    if (SLHandleIsPhoneNumber(handleCopy))
    {
      v4 = MEMORY[0x277CBDA58];
      v5 = [MEMORY[0x277CBDB70] phoneNumberWithStringValue:handleCopy];
      v6 = [v4 predicateForContactsMatchingPhoneNumber:v5];

      goto LABEL_10;
    }

    if (SLHandleIsEmail(handleCopy))
    {
      v6 = [MEMORY[0x277CBDA58] predicateForContactsMatchingEmailAddress:handleCopy];
      goto LABEL_10;
    }

    v7 = SLFrameworkLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      +[SLPerson predicateForHandle:];
    }
  }

  v6 = 0;
LABEL_10:

  return v6;
}

+ (id)keysForCNContact
{
  if (keysForCNContact_onceToken != -1)
  {
    +[SLPerson keysForCNContact];
  }

  v3 = keysForCNContact_keys;

  return v3;
}

void __28__SLPerson_keysForCNContact__block_invoke()
{
  v10[6] = *MEMORY[0x277D85DE8];
  v0 = SLIsRunningInDaemon();
  v1 = *MEMORY[0x277CBD018];
  if (v0)
  {
    v10[0] = *MEMORY[0x277CBD018];
    v2 = v10;
  }

  else
  {
    v9 = *MEMORY[0x277CBD018];
    v2 = &v9;
  }

  v3 = *MEMORY[0x277CBD098];
  v2[1] = *MEMORY[0x277CBCFC0];
  v2[2] = v3;
  v4 = *MEMORY[0x277CBD020];
  v2[3] = *MEMORY[0x277CBD158];
  v2[4] = v4;
  v5 = [MEMORY[0x277CBDA78] descriptorForRequiredKeysForStyle:0];
  v2[5] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v2 count:6];
  v7 = keysForCNContact_keys;
  keysForCNContact_keys = v6;

  v8 = *MEMORY[0x277D85DE8];
}

- (unint64_t)hash
{
  handle = [(SLPerson *)self handle];
  v4 = [handle hash];
  displayName = [(SLPerson *)self displayName];
  v6 = [displayName hash] ^ v4;
  shortDisplayName = [(SLPerson *)self shortDisplayName];
  v8 = v6 ^ [shortDisplayName hash];

  if (![(SLPerson *)self hasMutableContact])
  {
    contact = [(SLPerson *)self contact];
    v8 ^= [contact hash];
  }

  return v8;
}

- (void)dictionaryRepresentation
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)fetchCNContactWithHandle:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [a1 localizedDescription];
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(&dword_231772000, a2, OS_LOG_TYPE_ERROR, "Failed to fetch a CNContact. Error: %@", v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

- (void)fetchCNContactWithHandle:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)createMutableContactWithHandle:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __26__SLPerson_fetchMeContact__block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)predicateForHandle:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end