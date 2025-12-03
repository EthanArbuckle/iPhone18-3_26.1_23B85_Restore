@interface PXSharedAlbumsActivityEntryContributor
- (BOOL)isEqual:(id)equal;
- (PXSharedAlbumsActivityEntryContributor)initWithAvatarConfiguration:(id)configuration;
- (PXSharedAlbumsActivityEntryContributor)initWithDisplayName:(id)name email:(id)email;
@end

@implementation PXSharedAlbumsActivityEntryContributor

- (PXSharedAlbumsActivityEntryContributor)initWithAvatarConfiguration:(id)configuration
{
  configurationCopy = configuration;
  firstName = [configurationCopy firstName];
  lastName = [configurationCopy lastName];
  v7 = PLLocalizedNameWithFirstAndLastName();

  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = &stru_1F1741150;
  }

  email = [configurationCopy email];

  v10 = [(PXSharedAlbumsActivityEntryContributor *)self initWithDisplayName:v8 email:email];
  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v12.receiver = self;
  v12.super_class = PXSharedAlbumsActivityEntryContributor;
  if (![(PXSharedAlbumsActivityEntryContributor *)&v12 isEqual:equalCopy])
  {
    displayName = equalCopy;
    if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v7 = displayName;

      if (!v7)
      {
        v5 = 0;
LABEL_17:

        goto LABEL_18;
      }

      displayName = [(PXSharedAlbumsActivityEntryContributor *)self displayName];
      displayName2 = [v7 displayName];
      if (displayName == displayName2 || [displayName isEqualToString:displayName2])
      {
        email = [(PXSharedAlbumsActivityEntryContributor *)self email];
        email2 = [v7 email];
        if (email == email2)
        {
          v5 = 1;
        }

        else
        {
          v5 = [email isEqualToString:email2];
        }
      }

      else
      {
        v5 = 0;
      }
    }

    else
    {
      v7 = 0;
      v5 = 0;
    }

    goto LABEL_17;
  }

  v5 = 1;
LABEL_18:

  return v5;
}

- (PXSharedAlbumsActivityEntryContributor)initWithDisplayName:(id)name email:(id)email
{
  v19 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  emailCopy = email;
  v16.receiver = self;
  v16.super_class = PXSharedAlbumsActivityEntryContributor;
  v8 = [(PXSharedAlbumsActivityEntryContributor *)&v16 init];
  if (v8)
  {
    v9 = [nameCopy copy];
    v10 = v9;
    v11 = v9 ? v9 : &stru_1F1741150;
    objc_storeStrong(&v8->_displayName, v11);

    v12 = [emailCopy copy];
    email = v8->_email;
    v8->_email = v12;

    if (![(NSString *)v8->_displayName length])
    {
      v14 = PLSharingGetLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v18 = emailCopy;
        _os_log_impl(&dword_1A3C1C000, v14, OS_LOG_TYPE_DEFAULT, "Display name is empty for activity entry contributor. Email: %@", buf, 0xCu);
      }
    }
  }

  return v8;
}

@end