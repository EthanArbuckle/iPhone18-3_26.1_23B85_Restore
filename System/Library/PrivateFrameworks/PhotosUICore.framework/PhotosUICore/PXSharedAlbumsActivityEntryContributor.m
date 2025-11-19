@interface PXSharedAlbumsActivityEntryContributor
- (BOOL)isEqual:(id)a3;
- (PXSharedAlbumsActivityEntryContributor)initWithAvatarConfiguration:(id)a3;
- (PXSharedAlbumsActivityEntryContributor)initWithDisplayName:(id)a3 email:(id)a4;
@end

@implementation PXSharedAlbumsActivityEntryContributor

- (PXSharedAlbumsActivityEntryContributor)initWithAvatarConfiguration:(id)a3
{
  v4 = a3;
  v5 = [v4 firstName];
  v6 = [v4 lastName];
  v7 = PLLocalizedNameWithFirstAndLastName();

  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = &stru_1F1741150;
  }

  v9 = [v4 email];

  v10 = [(PXSharedAlbumsActivityEntryContributor *)self initWithDisplayName:v8 email:v9];
  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = PXSharedAlbumsActivityEntryContributor;
  if (![(PXSharedAlbumsActivityEntryContributor *)&v12 isEqual:v4])
  {
    v6 = v4;
    if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v7 = v6;

      if (!v7)
      {
        v5 = 0;
LABEL_17:

        goto LABEL_18;
      }

      v6 = [(PXSharedAlbumsActivityEntryContributor *)self displayName];
      v8 = [v7 displayName];
      if (v6 == v8 || [v6 isEqualToString:v8])
      {
        v9 = [(PXSharedAlbumsActivityEntryContributor *)self email];
        v10 = [v7 email];
        if (v9 == v10)
        {
          v5 = 1;
        }

        else
        {
          v5 = [v9 isEqualToString:v10];
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

- (PXSharedAlbumsActivityEntryContributor)initWithDisplayName:(id)a3 email:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v16.receiver = self;
  v16.super_class = PXSharedAlbumsActivityEntryContributor;
  v8 = [(PXSharedAlbumsActivityEntryContributor *)&v16 init];
  if (v8)
  {
    v9 = [v6 copy];
    v10 = v9;
    v11 = v9 ? v9 : &stru_1F1741150;
    objc_storeStrong(&v8->_displayName, v11);

    v12 = [v7 copy];
    email = v8->_email;
    v8->_email = v12;

    if (![(NSString *)v8->_displayName length])
    {
      v14 = PLSharingGetLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v18 = v7;
        _os_log_impl(&dword_1A3C1C000, v14, OS_LOG_TYPE_DEFAULT, "Display name is empty for activity entry contributor. Email: %@", buf, 0xCu);
      }
    }
  }

  return v8;
}

@end